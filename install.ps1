$link = "https://github.com/Scorncord/Installer/releases/latest/download/ScorncordInstallerCli.exe"

$outfile = "$env:TEMP\ScorncordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
