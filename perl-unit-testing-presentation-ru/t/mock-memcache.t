#!/usr/bin/perl -w
use strict;
use Test::More tests => 3;
use Test::MockObject;
use Cache::Memcached::Fast;
use lib qw(lib);

my $server   = 'localhost:11211';
my $key      = 'mykey';
my $value    = 'value';
my $newvalue = 'newvalue';

BEGIN {
  $_ = 'MyMemcacheWrapper';
  use_ok( $_ );
}

# moking Cache::Memcached::Fast
my $memc_mock = Test::MockObject->new();
Test::MockObject->fake_module( 'Cache::Memcached::Fast',
    new => sub { $memc_mock } );

my $memcache = {
    $key, $value,
};

$memc_mock->mock(
    'get',
    sub {
        my ( $self, $key ) = @_;
        return $memcache->{$key};
    }
);

$memc_mock->mock(
    'set',
    sub {
        my ( $self, $key, $value ) = @_;
        $memcache->{$key} = $value;
    }
);

# get our wrapper object and memcached connection
my $mem_wrap = new_ok( $_, [ server => $server ] );
my $memcached =  new Cache::Memcached::Fast(
    { servers => [ { address => $server }, ], } );

# check set
$mem_wrap->set_value( $key, $newvalue );
is( $memcached->get( $key ), $newvalue,
    'set_value must set value in memcache' );

