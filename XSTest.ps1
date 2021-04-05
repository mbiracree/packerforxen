import-module XenServerPSModule
connect-XenServer -url https://xenfuji.pchpmd.com -username root -password pchp1admin -nowarnnewcertificates -nowarncertificates -setdefaultsession
$list = Get-XenVM | Where {$_.is_a_template -eq $False -and $_.is_a_snapshot -eq $False -and $_.domid -ne 0} | select name_label 
$list | Out-File c:\packer\vmlist.txt