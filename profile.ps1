Import-Module oh-my-posh
Import-Module Get-ChildItemColor

Set-Variable -Name "CONFIG_PATH" -Value "~/.config/powershell"

oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/pure.omp.json | Invoke-Expression
Enable-PoshTransientPrompt

Set-Alias l Get-ChildItem -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function la { Get-ChildItem $args -Force }

