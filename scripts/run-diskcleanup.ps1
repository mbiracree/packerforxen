$VolumeCachesRegDir = "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"
$CacheDirItemNames = Get-ItemProperty "$VolumeCachesRegDir\*" | select -ExpandProperty PSChildName

$CacheDirItemNames | 
    %{
        $exists = Get-ItemProperty -Path "$VolumeCachesRegDir\$_" -Name "StateFlags6553" -ErrorAction SilentlyContinue
        If (($exists -ne $null) -and ($exists.Length -ne 0))
            {
                Set-ItemProperty -Path "$VolumeCachesRegDir\$_" -Name StateFlags6553 -Value 2
            }
        else
            {
                New-ItemProperty -Path "$VolumeCachesRegDir\$_" -Name StateFlags6553 -Value 0 -PropertyType DWord
            }
     }
Start-Sleep -Seconds 3


Start-Process -FilePath CleanMgr.exe -ArgumentList '/sagerun:65535' -WindowStyle Hidden -PassThru
