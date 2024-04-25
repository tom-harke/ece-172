#!/usr/bin/perl

use strict;
use warnings;

my @sources = glob "*.md";
foreach my $source (@sources) {
    open FH, '<', $source;
    while (<FH>) {
        foreach my $destination (m/\[[^]]*\]\(([^)]*\.md)\)/g) {
            next if -e $destination;
            #print "$destination\n";
            qx|touch $destination|;
        }
    }
    close FH;
}

