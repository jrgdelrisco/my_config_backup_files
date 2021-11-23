
Import-Module posh-git
Import-Module -Name Terminal-Icons

function GotoMyGitProjectsDir {
    Set-Location("C:\<path to your projects directory>\Git")
}

function GotoMyDesktop {
    Set-Location("C:\Users\<user>\Desktop")
}

New-Alias projectsdir GotoMyGitProjectsDir

Set-PoshPrompt -Theme tonybaloney

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-PSReadLineKeyHandler -Key Ctrl+Shift+b `
                         -BriefDescription BuildCurrentDirectory `
                         -LongDescription "dotnet Build the current directory" `
                         -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("dotnet build")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

# $GitPromptSettings.AfterPath = "`n"
# $GitPromptSettings.DefaultPromptSuffix = " (o_O)> "
