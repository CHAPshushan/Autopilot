# Set execution policy to bypass
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

# Install the Get-WindowsAutoPilotinfo script from PowerShell Gallery
Install-Script -Name Get-WindowsAutoPilotinfo -Force -AcceptLicense

# Import the module after installation
Import-Module -Name Get-WindowsAutoPilotinfo -Force

# Define a function to simulate "Yes" response
function Select-Yes {
    return "Yes"
}

# Override Read-Host function to automatically select "Yes"
$function:Read-Host = ${function:Select-Yes}

# Run the Get-WindowsAutoPilotinfo script with online option
Get-WindowsAutoPilotinfo.ps1 -Online
