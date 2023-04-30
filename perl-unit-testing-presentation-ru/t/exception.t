#!/usr/bin/perl -w
use strict;
use Fatal qw(open close);
use Test::More tests => 1;
use Test::Exception;

my $filename = 'the_not_existed_file';

throws_ok { open(my $fh, "<", $filename) }
    qr/No such file/,
    'open() with bad file name must throw exception';

