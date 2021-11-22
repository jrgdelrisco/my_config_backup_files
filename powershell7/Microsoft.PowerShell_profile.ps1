
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

# $GitPromptSettings.AfterPath = "`n"
# $GitPromptSettings.DefaultPromptSuffix = " (o_O)> "