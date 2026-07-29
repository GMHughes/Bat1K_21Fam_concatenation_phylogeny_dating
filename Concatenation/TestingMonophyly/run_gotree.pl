@array=(<aLRT*treefile>);
foreach $file(@array){
    $out="Collapse_70_".$file;
    $cmd="./gotree collapse support -s 70 -i ".$file." -o ".$out."\n";
    print $cmd;
    system("$cmd");
}
    
