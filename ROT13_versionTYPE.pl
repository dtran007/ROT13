#!/usr/bin/env perl

use strict; 
use warnings;
use autodie;
use 5.010; #To use say

my @aArr = (0 .. 9);
my @bArr = (' ','!','"','#','$','%','&','\'','(',')','*','+','-','.','/','~');
my @cArr = (':',';','<','=','>','?','@','[','\\',']','^','_','`','{','|','}');
my @dArr = 'a' .. 'm';
my @eArr = 'n' .. 'z';
my @fArr = 'A' .. 'M';
my @gArr = 'N' .. 'Z';

my @flip = (@aArr, @bArr, @cArr, @dArr, @eArr, @fArr, @gArr);
my @flop = (@aArr, @bArr, @cArr, @eArr, @dArr, @gArr, @fArr);

#print "Number of flip ",$#flip,"\n";
#print "Number of flop ",$#flop,"\n";

print "~ROT13~\n";
print "Enter your input:\n";
my $userInput = <STDIN>;
chomp $userInput;
#print "User input: $userInput\n";

my $myScalar = "";
for my $c (split //, $userInput) {
	for(my $i=0; $i<$#flip;$i++) {
		if($c eq $flip[$i]) {
			#	print "$flop[$i]";
			$myScalar = $myScalar . $flop[$i];	
		} 
	}
}

print "\nROT13 Output:\n$myScalar\n";
