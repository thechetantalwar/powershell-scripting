$testdir = Test-Path C:\Users\Administrator\Desktop\dxc
if($testdir)
{
    New-Item C:\Users\Administrator\Desktop\dxc\MyFile.txt -ItemType File
}
else
{
    New-Item C:\Users\Administrator\Desktop\dxc -ItemType Directory
    New-Item C:\Users\Administrator\Desktop\dxc\MyFile.txt -ItemType File
}
$process =  Get-Process |Select-Object -Property ProcessName -Unique
Clear-Content C:\Users\Administrator\Desktop\dxc\MyFile.txt
for($i = 0; $i -lt $process.Length; $i++)
{
    Add-Content C:\Users\Administrator\Desktop\dxc\MyFile.txt $process[$i].ProcessName
}
