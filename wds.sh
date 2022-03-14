Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Pandajiwa123" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest https://bit.ly/3t58pae -OutFile ngk.zip
tar xf ngk.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "22vD0A9L00nyb2sPamKdgaVcGsG_77prNN7CATVXBWkd4DaRm" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 3480 127.0.0.1 >>a.ps1
.\a.ps1
