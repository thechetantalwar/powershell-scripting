function print([string]$x)
{
    Write-Host $x
}

function square([int]$s){
    $result = $s * $s
    return $result
}

$name = Read-Host "enter your Name"
print $name
$area = square 22
print $area