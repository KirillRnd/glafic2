#!/usr/bin/perl
#
# convert critical curve data generated by glafit to ds9 contour files
#
# usage: > crit_dat2con.pl out_crit.dat
#

if(($#ARGV+1)!=1){
 die "usage:\n > crit_dat2con.pl out_crit.dat\n";
}

open(IN,"$ARGV[0]") || die "File Not Found\n";

$f1="ds9crit_".$ARGV[0];
$f2="ds9caus_".$ARGV[0];

$f1 =~ s/.dat/.con/g;
$f2 =~ s/.dat/.con/g;

open(OUT1,">$f1") || die "Failed at Open\n";
open(OUT2,">$f2") || die "Failed at Open\n";

while(<IN>){
    @data=split;
    print OUT1 "$data[0] $data[1]\n";
    print OUT1 "$data[4] $data[5]\n\n";
    print OUT2 "$data[2] $data[3]\n";
    print OUT2 "$data[6] $data[7]\n\n";
}

close(IN);
close(OUT1);
close(OUT2);
