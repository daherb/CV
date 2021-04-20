#!/usr/bin/env perl
use strict;
use warnings;

while(my $line = <>) {
    # evaluate all code between #( and )#
    $line =~ s/\#\((.*?)\)\#/$1/eeg;
    # remove all GF bind tokens and surrounding spaces
    $line =~ s/ {0,1}&\+ {0,1}//g;
    print($line);
    
}
    
