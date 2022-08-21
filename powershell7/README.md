## Steps to configure
- install oh-my-posh

- install font CaskaydiaCove NF (Caskaydia Cove Nerd Font)

- set the font in powershell properties as admin

- insert the following lines in the C:\Users\<user>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 file:

    Import-Module oh-my-posh

    Set-PoshPrompt -Theme zash

- install github cli

    winget install GitHub.cli --source winget

- install teminal-icons:

    Install-Module -Name Terminal-Icons -Repository PSGallery

- insert the following line in the profile file:

    Import-Module -Name Terminal-Icons

- install PSReadLine (search for the version that supports the options set in profile file):

    Install-Module PSReadLine

- insert into the profile file:

    Import-Module PSReadLine

    Set-PSReadLineOption -PredictionSource History

    Set-PSReadLineOption -PredictionViewStyle ListView

    Set-PSReadLineOption -EditMode Windows

- install module z:

    Install-Module z -AllowClobber

- install posh-git:

    PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force

- insert in profile file:

    Import-Module posh-git
