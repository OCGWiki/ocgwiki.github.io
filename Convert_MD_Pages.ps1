#### Test -------------
$yey = 'yey'
$ney = "ney"

$Path2 = 'C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\Powershell script\Installation.md'

$data = 'some text'

'test' | Out-File 'out.txt'


$data | Add-Content -Path $Path


## Variables ---------------
\
$Path = 'C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\ocgwiki.github.io\Idabus-UI\Views\Tab-View.md'
$out_file_name = 'Tab-View.md' #vllt auch automatisieren
$toc = "true"


### Functionality ------------------

$azure_md_content = Get-Content -Path $Path 
$first_line = $azure_md_content | select -First 5


foreach($line in $azure_md_content)
{
    #if the file contains a [[TOC]], we set set_toc_value to true and delete [[TOC]]
    if($null -ne ("[[_TOC_]]" | ? { $line -match $_ }))
    {
        $line.Trim("[[_TOC_]]")
        toc = "true"
    }
    
    ## replace '.attachements' with 'img'
    if($null -ne (".attachements" | ? { $line -match $_ }))
    {
        $line.Replace(".attachements", "img")
    }            
}

# Header ----------

$basic_header = 
"---
layout: docs

title: <add title here>
#desription: <add description if needed>
filename: $out_file_name
permalink: <add permalink>

nav_order: <input nav order>
status: todo
toc: $toc
--- `r`n`r`n"

$github_md_content = @()

# If there is no file header we add a basic one that needs to be adjusted. Set status to something else than todo to make the page visible
if($null -ne ("---" | ? { $github_md_content -match $_ }))  # If first line has "---" we assume it has a header
{
    #has header
    'has header'    
    $github_md_content += $azure_md_content
}
else
{
    #has no header -> gets header
    'has no header'
    $github_md_content = @($basic_header)
    $github_md_content += $azure_md_content
}



