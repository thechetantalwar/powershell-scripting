$wind = Get-ChildItem C:\Windows |Select-Object
for($i =0; $i -lt $wind.Length; $i++){
if($wind[$i].Name -match "y"){
Add-Content C:\Users\Administrator\Desktop\Newfile.txt $wind[$i]
}
}

$prog = Get-ChildItem 'C:\Program Files'|Select-Object
for($i =0; $i -lt $prog.Length;$i++){
if($prog[$i].Name -match "^Wi")
{
Add-Content C:\Users\Administrator\Desktop\Newfile.txt $prog[$i]
}
}
Get-Content C:\Users\Administrator\Desktop\Newfile.txt



Get-Process -Name s* | Select-Object  -Property CPU, ProcessName, MachineName, StartTime | Out-File C:\Users\Administrator\Desktop\process.txt

Get-Content C:\Users\Administrator\Desktop\process.txt 
