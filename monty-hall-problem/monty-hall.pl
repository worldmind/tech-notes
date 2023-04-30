#!/usr/bin/perl

use strict;
use warnings;

my $iteration     = 10000;
my $change_choice = 0;

print "\n";
print modelingMontyHall($change_choice);
print "\n";

sub modelingMontyHall {
    my $change_choice   = shift;
    my $success_counter = 0;
    my ( $i, $j );
    my @doors;    # 0 - animal, 1 - car
    my $gamer_choice;
    my $showman_open_door;
    my $result = 0;
    my $success_door;

    if ($change_choice) {print "Gamer change choice\n"} else {print "Gamer NOT change choice\n"};

    for ( $i = 0 ; $i < $iteration ; $i++ ) {

        # Preparing
        @doors                = ( 0, 0, 0 );
        $success_door         = int( rand() * 3 );
        $doors[$success_door] = 1;                   # door with car

        # First step
        $gamer_choice = 0;
        for ( $j = 0 ; $j < 3 ; $j++ ) {
            if ( ( $j != $gamer_choice ) and ( $doors[$j] == 0 ) ) {
                $showman_open_door = $j;
                last;
            }
        }

        # Second step
        if ($change_choice) {
            for ( $j = 0 ; $j < 3 ; $j++ ) {
                if ( ( $j != $gamer_choice ) and ( $j != $showman_open_door ) ) {
                    $gamer_choice = $j;
                    last;
                }
            }
        }

        # Count result
        if ( $doors[$gamer_choice] ) {
            $result++;
        }
    }
    return $result;
}
