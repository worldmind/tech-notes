#!/usr/bin/perl -w

use strict;
use Test::More tests => 1;
use Test::LectroTest::Compat;

my $prop_nonnegative = Property {
    ##[ x <- Int ]##
    cmp_ok( abs( $x ), '>=', 0);
}, name => "abs output must be non-negative" ;

holds( $prop_nonnegative );

