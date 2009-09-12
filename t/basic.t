#!/usr/bin/perl

use strict;
use warnings;

use Devel::Peek;

use Test::More 'no_plan';

use ok 'Magical::Hooker::Decorate';

my $d = Magical::Hooker::Decorate->new;

my %hash;

$d->set(\%hash, "Foo");

pass("did not die");

is( $d->get(\%hash), "Foo", "get" );
is( $d->get(\%hash), "Foo", "get" );
is( $d->get(\%hash), "Foo", "get" );

is( $d->clear(\%hash), "Foo", "clear" );

is( $d->get(\%hash), undef, "get" );

is( $d->clear(\%hash), undef, "clear" );
