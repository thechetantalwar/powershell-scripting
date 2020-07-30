function list([string]$dir){
    Get-ChildItem $dir
}


for($i = 0;$i -lt $Args.Length; $i++){
    list $Args[$i]
}