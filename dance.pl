#!/usr/bin/perl

use Term::ANSIScreen qw(cls);
use Time::HiRes qw(usleep);

my $clear_screen = cls();

sub choose
{
    my $first = $_[0];
    my $second = $_[1];
    my $choice = int(rand(2));

    if ($choice eq 0) {
        return $first;
    } else {
        return $second;
    }
}

while (1) {
    $left = choose("\\", "_");
    $middle = choose("o", "O");
    $right = choose("/", "_");
    $body = choose("(", ")");
    $leftLeg = choose("/", "⅃");
    $rightLeg = choose("\\", "L");

    print "\n${left}${middle}${right}\n ${body}\n${leftLeg} ${rightLeg}\n";

    usleep(200000);

    print $clear_screen;
}
