#Perl script to loop through each bin file, create a slurm submission sh file to run baseml 


@array=(<bin_*/divtime/gH/>);
foreach $file(@array){
    if($file=~m/(bin\_[0-9]+)/){
	$name=$1;
    }
    $bash_file=$name."\.sh";
    open(OUT, ">$bash_file");
    print OUT "\#!\/bin\/sh \-l\n\#SBATCH \-N 1\n\#SBATCH \-\-job-name\=".$name."\n\#SBATCH \-\-ntasks\-per\-node 1\n\#SBATCH \-t 213\:00\:00\n";
    print OUT "cd ".$file."\n";
    print OUT "../src/baseml tmp0001.ctl 2>&1\n\n\n";
    close OUT;
    $cmd="sbatch ".$bash_file."\n";
    system("$cmd");
    print $cmd;
}
