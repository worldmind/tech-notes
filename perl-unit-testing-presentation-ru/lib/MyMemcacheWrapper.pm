package MyMemcacheWrapper;
=head1 NAME

MyMemcacheWrapper - wrapper over Cache::Memcached::Fast

=head1 SYNOPSIS

  provide functions for write to memcache

=head1 DESCRIPTION

  This module provide functions for write to memcache

=head2 Methods

=cut

use strict;
use warnings;

use Cache::Memcached::Fast;

our $VERSION = '0.9';

=over 12

=item C<new>

  Returns a new MyMemcacheWrapper object
  connected to storage

=cut

sub new {
  my ( $class, %params ) = @_; 

  my $memcached = new Cache::Memcached::Fast({
    servers => [ { address => $params{server} },],
  });

  return bless {
    memcached => $memcached,
  }, $class;
}

=item C<set_value>

  Set value in memcache

=back
=cut

sub set_value {
  my ($this, $key, $value) = @_;
  # Do something before set, for example - some checking
  $this->{memcached}->set( $key, $value );
}

1;

=head1 LICENSE

GNU GPL v.3

=head1 AUTHOR

Alexey Shrub - L<mailto:ashrub@yandex.ru>

=head1 SEE ALSO


=cut

