###Perl script to loop over all Subtree files and determine which subtree is present (N+V, N+E or E+V)
use experimental 'switch';
@noct=("HLnocLep2",   "HLthyTri1", "HLfurHor1", "HLmorMeg1", "HLmysTub2","HLartInt1A","HLartLit1A","HLbraCav1A","HLcarPer2","HLcenSen1A","HLchoMin1A","HLdesRot15A","HLdiaYou3A","HLdipEca2A","HLectAlb1A","HLeroBom1A","HLgloMut1A","HLgloSor2","HLglyDav1A","HLlepYer2A","HLlioSpu1A","HLlonInu1A","HLmacMac1A","HLmacWat1A","HLmicMeg1","HLphyDis3","HLphyHas1","HLplaGui1A","HLrhiPum1A","HLtraCir4A","HLtriNic1A","HLuroBil1","HLvamThy1A");

@vesp=("HLantPal2","HLcorMex1","HLcorTow1A","HLeptFus3","HLeptNil3","HLlasEga1A","HLmyoAui1","HLmyoCal2","HLmyoDau2","HLmyoEvo1","HLmyoLuc2","HLmyoMyo6","HLmyoMys2A","HLmyoNig1","HLmyoOcc1","HLmyoPil1","HLmyoThy2","HLmyoVel1","HLmyoViv2","HLmyoVol2","HLmyoYum1A","HLnycAvi1","HLpipKuh2","HLpipNat1A","HLpipPyg1","HLpleAur1","HLvesMur1",   "HLcisSea1A", "HLminAus1", "HLminNat2B", "HLminSch2A","HLeumNan1A","HLmolAlv2A","HLmolMol2","HLmolNig2A","HLmopCon1","HLtadBra3","HLnatTum1", "HLmyzAur1");

@emb=("HLrhyNas2A", "HLsacBil1","HLsacLep1", "HLtapMel1",   "HLnycThe1A");

@noct_and_vesp=("HLnocLep2","HLantPal2","HLcorMex1","HLcorTow1A","HLeptFus3","HLeptNil3","HLlasEga1A","HLmyoAui1","HLmyoCal2","HLmyoDau2","HLmyoEvo1","HLmyoLuc2","HLmyoMyo6","HLmyoMys2A","HLmyoNig1","HLmyoOcc1","HLmyoPil1","HLmyoThy2","HLmyoVel1","HLmyoViv2","HLmyoVol2","HLmyoYum1A","HLnycAvi1","HLpipKuh2","HLpipNat1A","HLpipPyg1","HLpleAur1","HLvesMur1",  "HLcisSea1A", "HLminAus1", "HLminNat2B","HLminSch2A","HLeumNan1A","HLmolAlv2A","HLmolMol2","HLmolNig2A","HLmopCon1","HLtadBra3","HLnatTum1", "HLmyzAur1", "HLthyTri1", "HLfurHor1", "HLmorMeg1", "HLmysTub2","HLartInt1A","HLartLit1A","HLbraCav1A","HLcarPer2","HLcenSen1A","HLchoMin1A","HLdesRot15A","HLdiaYou3A","HLdipEca2A","HLectAlb1A","HLeroBom1A","HLgloMut1A","HLgloSor2","HLglyDav1A","HLlepYer2A","HLlioSpu1A","HLlonInu1A","HLmacMac1A","HLmacWat1A","HLmicMeg1","HLphyDis3","HLphyHas1","HLplaGui1A","HLrhiPum1A","HLtraCir4A","HLtriNic1A","HLuroBil1","HLvamThy1A");

@emb_and_vesp=("HLrhyNas2A", "HLsacBil1","HLsacLep1", "HLtapMel1","HLantPal2","HLcorMex1","HLcorTow1A","HLeptFus3","HLeptNil3","HLlasEga1A","HLmyoAui1","HLmyoCal2","HLmyoDau2","HLmyoEvo1","HLmyoLuc2","HLmyoMyo6","HLmyoMys2A","HLmyoNig1","HLmyoOcc1","HLmyoPil1","HLmyoThy2","HLmyoVel1","HLmyoViv2","HLmyoVol2","HLmyoYum1A","HLnycAvi1","HLpipKuh2","HLpipNat1A","HLpipPyg1","HLpleAur1","HLvesMur1",    "HLnycThe1A","HLcisSea1A", "HLminAus1", "HLminNat2B","HLminSch2A","HLeumNan1A","HLmolAlv2A","HLmolMol2","HLmolNig2A","HLmopCon1","HLtadBra3","HLnatTum1", "HLmyzAur1");

@noct_and_emb=("HLnocLep2", "HLrhyNas2A", "HLsacBil1","HLsacLep1", "HLtapMel1",   "HLnycThe1A","HLthyTri1", "HLfurHor1", "HLmorMeg1", "HLmysTub2","HLartInt1A","HLartLit1A","HLbraCav1A","HLcarPer2","HLcenSen1A","HLchoMin1A","HLdesRot15A","HLdiaYou3A","HLdipEca2A","HLectAlb1A","HLeroBom1A","HLgloMut1A","HLgloSor2","HLglyDav1A","HLlepYer2A","HLlioSpu1A","HLlonInu1A","HLmacMac1A","HLmacWat1A","HLmicMeg1","HLphyDis3","HLphyHas1","HLplaGui1A","HLrhiPum1A","HLtraCir4A","HLtriNic1A","HLuroBil1","HLvamThy1A");
#all combinations of topologies recorded as arrays

$file=$ARGV[0];
chomp $file;
@target_node=();
open(IN, "$file");
@subtrees=<IN>;
@sorted = sort { length $a <=> length $b } @subtrees; #arrange subtrees by smallest to largest, then loop over them
$found=0;
foreach $subtree(@sorted){
    $x=$subtree;
    $embcount=0;
    $noctcount=0;
    $vespcount=0;
    $otherbat=0;
    if($x=~m/hg38\:/ || $x=~m/mm39\:/ || $x=~m/HLeleMax2\:/ || $x=~m/HLequAsi3\:/ || $x=~m/HLbosTau10\:/ || $x=~m/HLneoVis2\:/ || $x=~m/HLmanPen4\:/ || $x=~/HLsorFum1\:/){
    }#ignore subtrees with non-bats
    else{
	while($x=~s/(HL[A-Za-z0-9]+)//){#get all bats
	    $bat=$1;
	    if($bat~~@noct){
		$noctcount++;
	    }
	    elsif($bat~~@emb){
		$embcount++;
	    }
	    elsif($bat~~@vesp){
		$vespcount++;
	    }
	    else{
		$otherbat++;
	    }
	}
	if($otherbat==0 && ($noctcount+$embcount+$vespcount)>1){#if subtree contains a species not in our arrays, ignore
	    #print "#########################################################################\n";                                                                                               
            #print $subtree;                                                                         
	    $noctemb=$noctcount+$embcount;
	    $noctvesp=$noctcount+$vespcount;
	    $embvesp=$embcount+$vespcount;
	    #print $noctemb."\n".$noctvesp."\n".$embvesp."\n";
	    #print scalar(@noct_and_emb)."\n".scalar(@noct_and_vesp)."\n".scalar(@emb_and_vesp)."\n\n";


	    if($noctcount==scalar(@noct) && $embcount==scalar(@emb)&& $found==0 && $vespcount==0){
	    #if($noctemb eq scalar(@noct_and_emb)){#if number of bats counted in each superfamily matches species in dataset for array
		print "N+E found in ".$file.":\n".$subtree."\n";
		$found++;
	    }

	    elsif($noctcount==scalar(@noct) && $vespcount==scalar(@vesp) && $found==0 && $embcount==0){
		###$noctvesp eq scalar(@noct_and_vesp)){
		 print "N+V found in ".$file.":\n".$subtree."\n";
		 print $noctcount."=".scalar(@noct)." and ".$vespcount." equals ".scalar(@vesp)." found is ".$found." and embcount is ".$embcount."\n";
		 $found++;
	    }
	    elsif($embcount==scalar(@emb) && $vespcount==scalar(@vesp) && $found==0 && $noctcount==0){
		#$embvesp eq scalar(@emb_and_vesp)){
		 print "E+V found in ".$file.":\n".$subtree."\n";
		 $found++;
	    }
	    else{
	    }
	}
	#print "Emb: ".$embcount."\nVesp: ".$vespcount."\n Noct: ".$noctcount."\n";
    }
}

