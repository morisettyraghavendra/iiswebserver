#power shell script to install we server on vertual machine using run command in azure portal(in virtual machine options we find "run command" option )

Import-Module Servermanager
Install-WindowsFeature -Name "Web-Server" -IncludeManagementTools
Set-Content -Path "C:\inetpub\wwwroot\Default.html" -Value "This is the server: $($env:COMPUTERNAME)!"
