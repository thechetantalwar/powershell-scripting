$test = Test-Path C:\Users\Administrator\Documents\dxc
if($test){
    Write-Host "Already"
    
}
else{
New-Item C:\Users\Administrator\Documents\dxc -ItemType Directory
}
#New-Item C:\Users\Administrator\Documents\dxc\testfile.txt -ItemType File
$process =  Get-Process| Select-Object -Property ProcessName
for($i = 0;$i -lt $process.length; $i++){
    Write-Host $process[$i].ProcessName
    Add-Content C:\Users\Administrator\Documents\dxc\testfile.txt $process[$i].ProcessName
}
