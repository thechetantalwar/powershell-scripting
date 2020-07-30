
Function Calculate{
Param ($a, $b)
$sum = [int]$a + [int]$b
return $sum
}



$n1 = Read-Host "1st Number"
$n2 = Read-Host "2nd Number" 
Calculate $n1 $n2


Calculate $Args[0] $Args[1]