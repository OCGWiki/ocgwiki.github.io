# 
# PS File Created by Irene Herrero 2021
# This Script converts the azure wiki pages to github wiki pages
# This Script only works with Powershellcore 7!

# ------------------------------------------
# Get Filename as Input
[CmdletBinding()]
Param (
    [Parameter(Mandatory=$True,Position=0)]
    [String]$azurePath,

    [Parameter(Mandatory=$True,Position=1)]
    [String]$githubRepository,

    [Parameter(Position=2)]
    [String]$onlyUpdateExisting = $false
)

# Aliases to check filepath existence
function not-exist { -not (Test-Path $args) }
Set-Alias !exist not-exist -Option "Constant, AllScope"
Set-Alias exist Test-Path -Option "Constant, AllScope"

#Make Sure Script stops on errors
$ErrorActionPreference = "Stop"

#
# ------------------------------------------
# Import Content from Azure File

# --- Variables 
$azure_filepath = $azurePath
$azure_repository = Split-Path -Path $azure_filepath -Parent
$azure_filename = Split-Path -Path $azure_filepath -Leaf
$azure_content = ''

$github_repository = $githubRepository
$github_content = ''

# --- Import
if(not-exist $azure_filepath){
    throw "This file does not seem to exist, please check if repository and/or filename were passed correctly."
    Return
}

$azure_content = Get-Content -Path $azure_filepath
if($azure_content -eq $null)
{
    Write-Host "$azure_filename seems to be empty. Conversion will be kipped. "
    Return
}

# ------------------------------------------
# Check for azure page header and get variables
# get --- to ---
# read out all needed variables in between (ignore Header Erklärung)
# --- Variables with default values
$azure_content_index = 0
$title = ''
$status = ''
$github_filename = ''
$githubwiki = '' # true -> update or create, false -> no update, delete -> DELETE!
$updateInGithub = $true

# --- Get Header Variables
# Check if file has header
if($azure_content[0].Contains("---") -and -not($azure_content[0].Contains("----")))
{    
    for($i = 1; $i -lt $azure_content.Length; $i++)
    {
        # Bei Ende des Headers gibt es einen break
        if($azure_content[$i].Contains("---") -and -not($azure_content[$i].Contains("----")))
        {
            $azure_content_index = $i+1
            break;
        }
        # im Header lesen wir die Varibalen aus 
        else
        {
         if($azure_content[$i].Contains("title: ")){$title = $azure_content[$i].Split(": ")[1]}
         elseif($azure_content[$i].Contains("status: ")){$status = $azure_content[$i].Split(": ")[1]}   
         elseif($azure_content[$i].Contains("github_filename: ")){$github_filename = $azure_content[$i].Split(" ")[1]} #wir splitten bei " " um keine nachfolgenden Kommentare mitzunehmen
         elseif($azure_content[$i].Contains("updateInGithub: ")){$updateInGithub = $azure_content[$i].Split(" ")[1]}  #wir splitten bei " " um keine nachfolgenden Kommentare mitzunehmen
        }
    }
}

# Check if file should be updated
if($updateInGithub -ne "true"){
    Write-Host "$azure_filename is not updated due to updateInGithub being $updateInGithub"
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown'); 
    Return
}    

# ------------------------------------------
# Apply Changes
# --- Variables
$json_data = Get-Content -Path 'Data.json' -Raw | ConvertFrom-Json -AsHashtable
$filenames = $json_data.filenames
$github_filepath = ''
$result = @()

# --- Find correct github file
# falls noch nicht oben gesetzt suchen wir den filenamen hier
if($github_filename -eq ''){
    $github_filename = $azure_filename #if not listed we assume it has the same filename
    if($null -ne ($filenames.GetEnumerator() | ? { $_.Key -eq $azure_filename })){
         $github_filename = $filenames[$azure_filename ]
    }
}

# --- Find the github filepath (we assume there are no other files with the same name) & Import it's contents
Get-ChildItem -Path $github_repository -Recurse -Filter *.md | 
    Foreach-Object {
        if($github_filename -eq (Split-Path -Path $_.FullName -Leaf)){
            $github_filepath = $_.FullName
            
            Write-Host "Updating $github_filename"
            $github_content = Get-Content -Path $github_filepath            
        }
    }
    
# --- Handle missing github filepath 
if($github_filepath -eq '')
{
    if($onlyUpdateExisting -ne $false){
        Write-Host "only update existing is" $onlyUpdateExisting
        Write-Host "No corresponding md file to updated for $azure_filepath"
        Return
    }
    else
    {        

        Write-Host "Corresponding github file could not be found!";
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');         
        $decision = $Host.UI.PromptForChoice("Missing corresponding Github md", "There is no associated Github Page .md File. Do you want to continue and create $github_filename for Github? (Remember that you will have to adapt the header)", @('&Yes'; '&No'), 1)
    
        if ($decision -eq 0) {
            Write-Host 'Confirmed'
            Write-Host "Creating $github_filename in $github_repository"
            $github_filepath = $github_repository+'\'+$github_filename

            $github_content = @()
            $github_content += "---"
            $github_content += "layout: docs"
            $github_content += ""
            $github_content += "title: $title"
            $github_content += "#desription: <add description if needed>"
            $github_content += "filename: $github_filename"
            $github_content += "permalink: <add permalink>"
            $github_content += ""
            $github_content += "nav_order: <input nav order>"
            if($status -eq ''){$github_content += "status: todo"}
            else{$github_content += "status: $status"}
            $github_content += "#parent: <add parent if is child>"
            $github_content += "toc: true"
            $github_content += "---"
        
        } else {
            Write-Host 'Cancelled'
            Write-Host "No corresponding md file will be created. Stopping Update Script."
            Return
            }   
    }
}

# --- Add and adapt Header from github file
$toc = $false
$header = 0
$header_start = 0
$header_content = @()

foreach($line in $github_content){
    if($line.Contains("---") -and -not($line.Contains("----"))){
        $header_content += "---"
        break
    }
    else{$header_start += 1}
}
   
for($i = $header_start+1; $i -lt $github_content.Length; $i++)
{
    # Bei Ende des Headers gibt es einen break
    if($github_content[$i].Contains("---") -and -not($github_content[$i].Contains("----")))
    {
        $header_content += $github_content[$i]
        break;
    }
    # im Header setzen wir die Variablen die wir übergeben bekommen haben
    else
    {
        if($github_content[$i].Contains("title:") -and $title -ne ''){$github_content[$i] = "title: $title"}
        elseif($github_content[$i].Contains("status: ") -and $status -ne ''){$github_content[$i] = "status: $status"}   
        elseif($github_content[$i].Contains("filename: ")){$github_content[$i] = "filename: $github_filename"}
        
        # wir lesen toc aus github header aus
        elseif($github_content[$i].Contains("toc: true")){$toc = $true}

        # wir setzen den file header zusammen
        $header_content += $github_content[$i]
    }
}
#---- TOC setzen nach dem header wenn true
if($toc)
{
    $header_content += ''
    $header_content += '{% include toc.md %}'
    $header_content += ''
}

# --- Cycle through the rest of the file and replace replacables (as indicated in Data.json)
# repacables 1 holds the longest keys, 2 and 3 have shorter key that are  potentially contained in the longer keys. Like this we try to avoid a shorter key replacing a longer key and creating weird things

$replacables1 = $json_data.replacables1
$replacables2 = $json_data.replacables2
$replacables3 = $json_data.replacables3

for($i = $azure_content_index; $i -lt $azure_content.Length; $i++)
{
    $line = $azure_content[$i]
    if($line -ne ""){
        foreach($key in $replacables1.Keys)
        {
            $line = $line.Replace($key, $replacables1[$key])
        } 
        foreach($key in $replacables2.Keys)
        {
            $line = $line.Replace($key, $replacables2[$key])
        }
        foreach($key in $replacables3.Keys)
        {
            $line = $line.Replace($key, $replacables3[$key])
        } 
         if($line -ne ""){    
            $result += $line
        }
    }
    else{
    $result += $line
    }
}

# ------------------------------------------
# Save Result
Write-Host "File saved in" $github_filepath
$header_content | Set-Content -Path $github_filepath
$result | Add-Content -Path $github_filepath