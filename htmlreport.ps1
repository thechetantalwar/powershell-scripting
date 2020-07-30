$heading1 = "<h1>System Report</h1>"
$heading2 = "<h2>List of Processes</h2>"
$processes = Get-Process -Name s*|Sort-Object CPU| Select-Object  -Property CPU,ProcessName,MachineName,Starttime | ConvertTo-Html
$heading3 = "<h2>List of Services</h2>"
$services = Get-Service |Select-Object |Sort-Object Status| ConvertTo-Html 
$time = Get-Date -DisplayHint Time
$end = "<h1> <br>Report generated at"+$time.ToString()+"</h1>"
$htmlcode = ConvertTo-Html -Body "$heading1 $heading2 $processes $heading3 $services $end" -Title "This is our Powershell generated Report"
$htmlcode | Out-File index.html

Move-Item index.html C:\inetpub\wwwroot\ 