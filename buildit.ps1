# Set timestamp and environment vars
$timestamp = Get-Date -Format 'MMddyyy-HHmmss'
$env:PACKER_LOG = 1
$env:PACKER_LOG_PATH = "packer-$($timestamp).log"

c:/packer/packer build -force c:/packer/windows_2019.json 