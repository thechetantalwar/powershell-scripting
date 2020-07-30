$heading1 = "<h1>This is list of processes</h1>"
$processes = Get-Process | Select-Object -Last 10 -Property ProcessName,CPU | ConvertTo-Html
$heading2 = "<h1>This is the end of process list</h1>"
$break =  "<br>"

$htmlcode = ConvertTo-Html -Body "$heading1 $processes $heading2 $break" -Title "This is our Powershell generated Report"
$htmlcode | Out-File index.html

Move-Item index.html C:\inetpub\wwwroot\