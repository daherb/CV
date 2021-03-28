use strict;
use warnings;

while(my $line = <>) {
    $line =~ s/\#\((.*?)\)\#/$1/eeg;
    print($line);
    
}
    
