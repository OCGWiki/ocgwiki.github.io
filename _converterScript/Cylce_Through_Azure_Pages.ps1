#
# PS File Created by Irene Herrero 2021
# This script will konvert the azure wiki md files to github wiki md files.
#

# --------------------------------------
# Variables

$azurePath = "C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\OCG-UI.wiki\IDABUS-Identity-Solution"
$githubRepository = "C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\ocgwiki.github.io\Idabus-UI"
# add bool to only update existing pages
$onlyUpdateExisting = $false

$copyPictures = $true
$testing = $true

# -------------------------------------
# Function

Try{
    Get-ChildItem $azurePath -Recurse -Filter *.md |
    Foreach-Object {
        $path = $_.FullName
        Write-Host $path
        & ".\Convert_Azure_To_Github_Page.ps1" -azurePath $path -githubRepository $githubRepository -onlyUpdateExisting $onlyUpdateExisting

        if($testing){
            Write-Host 'Press any key to continue...';
            $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
        }
    }

    if($copyPictures)
    {
        #Copy all images to the img folder
        [string]$sourceDirectory  = "C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\OCG-UI.wiki\.attachments\*"
        [string]$destinationDirectory = "C:\Users\Irene\OneDrive - Oxford Computer Group GmbH\Dokumente\GitHub\ocgwiki.github.io\img\"
        Copy-item -Force -Recurse -Verbose $sourceDirectory -Destination $destinationDirectory
    }
}
catch {
    $ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
    Write-Host "An error occured"
    Write-Host "Failed item: $FailedItem."
    Write-Host "The error message: $ErrorMessage"
    Write-Host "Line was" $_.InvocationInfo.ScriptLineNumber

    Write-Host 'Press any key to continue...';
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    Break
}
