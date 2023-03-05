# Global Variables
$Global:tutorialFile = Join-Path $PSScriptRoot "tutorial.json"
$Global:tutorials = LoadLessons



# Global Functions
function LoadLessons() {
    $content = Get-Content $Global:tutorialFile -Raw
    $json = ConvertFrom-Json $content
    $json
}
function SaveLessons() {
    $content = ConvertTo-Json $Global:tutorials
    Set-Content $Global:tutorialFile $content
}