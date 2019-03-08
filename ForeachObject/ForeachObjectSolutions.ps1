"wuauserv","bits" | Out-File C:\Users\kordi\Desktop\services.txt
Get-Content C:\Users\kordi\Desktop\services.txt | % { Stop-Service $_ }
Get-Content C:\Users\kordi\Desktop\services.txt | % -Begin { Write-Host "STARTING SERVICES" }`
                                                  -Process { Write-Host "Starting $_"; Start-Service -Name $_ }`
                                                  -End { Write-Host "DONE" }