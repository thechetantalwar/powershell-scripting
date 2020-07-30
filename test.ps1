function print{
    Write-Host "hello printed from fucntion"
}

function date{
    print
    return Get-Date
}

#print

date

