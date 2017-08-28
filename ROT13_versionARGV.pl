#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use autodie;
use 5.010; #need to use say

my $numArg = $#ARGV + 1;
if($numArg == 0) {
	die "Invalid number of filename arguments. Please Enter 1 filename.\n";
#	exit;
} elsif ($numArg > 1) {

print "Total num args: $numArg\n";

foreach my $x (0 .. $#ARGV) {
	print "$ARGV[$x]\n";
}
say "\nOnly First Argument will be used.\n";
}

my $filename = $ARGV[0];
open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open '$filename' $!";

my @aArr = (0 .. 9);
my @bArr = (' ','!','"','#','$','%','&','\'','(',')','*','+','-','.','/','~');
my @cArr = (':',';','<','=','>','?','@','[','\\',']','^','_','`','{','|','}');
my @dArr = 'a' .. 'm';
my @eArr = 'n' .. 'z';
my @fArr = 'A' .. 'M';
my @gArr = 'N' .. 'Z';

my @flip = (@aArr, @bArr, @cArr, @dArr, @eArr, @fArr, @gArr);
my @flop = (@aArr, @bArr, @cArr, @eArr, @dArr, @gArr, @fArr);

# print "~ROT13~\n";
while (my $row = <$fh>) {
	chomp $row;
#	print "$row\n"; #Comment/Uncomment if do/do not want with each input with output.

	for my $c (split //, $row) {
		for(my $i=0; $i<$#flip;$i++) {
			if($c eq $flip[$i]) {
				print "$flop[$i]";
				#	$myScalar = $myScalar . $flop[$i];
			}
		}
	}
	print "\n";
}
close; #Note to self: 'close' when writing to file with > but good to have regardless!
