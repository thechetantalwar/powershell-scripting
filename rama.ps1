function DirContent($x) {

foreach($var in $x){
Get-ChildItem $var
}


}

DirContent $Args