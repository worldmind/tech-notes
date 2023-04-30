#!/usr/bin/perl -w
use strict;
use Test::More tests => 1;
use Email::Valid;

my $email    = 'world.mind@yahoo.com';
my $expected = $email;
my $got      = Email::Valid->address( $email );

is( $got, $expected, "$email must be valid" );

