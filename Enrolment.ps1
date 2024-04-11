# Set execution policy to bypass
Set-ExecutionPolicy Bypass -Force

# Install the Get-WindowsAutoPilotinfo script from PowerShell Gallery
Install-Script -Name Get-WindowsAutoPilotinfo

Get-WindowsAutoPilotinfo.ps1 -Online
