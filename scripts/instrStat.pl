#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my $help = "";
my $file = "";

GetOptions(
    "help"   => \$help,
    "file:s" => \$file,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

open( my $fp, "<", $file ) or die "Can't open ::$file: $!";
my @lines     = <$fp>;
my %imap      = ();
my @output    = ();
my %uimap     = ();
my %arity_map = ();

sub isSame {
    my $arg1 = shift @_;
    my $arg2 = shift @_;

    if ( !defined($arg1) or !defined($arg2) ) {
        return;
    }
    if (   ( $arg1 eq $arg2 )
        or ( $arg1 =~ m/imm/ and $arg2 =~ m/imm/ ) )
    {
        return 1;
    }

    return 0;
}

for my $line (@lines) {
    chomp $line;
    my @pieces = split( /_/, $line );

    $uimap{ $pieces[0] } = 1;
    $arity_map{ scalar(@pieces) }++;

    if ( scalar(@pieces) == 1 ) {
        next;
    }

    #print $line. "\n";

    if ( 2 == scalar(@pieces) ) {

        if ( exists $imap{ $pieces[0] } ) {
            my @contenders = @{ $imap{ $pieces[0] } };
            for my $contender (@contenders) {
                if ( isSame( $contender, $pieces[1] ) ) {
                    push @output, $pieces[0];
                }
            }
        }
        push @{ $imap{ $pieces[0] } }, $pieces[1];
        next;
    }

    if ( 3 == scalar(@pieces) ) {
        if ( exists $imap{ $pieces[0] } ) {
            my @contenders = @{ $imap{ $pieces[0] } };
            for my $contender (@contenders) {
                my @args = split( /_/, $contender );
                if (    isSame( $args[0], $pieces[1] )
                    and isSame( $args[1], $pieces[2] ) )
                {
                    push @output, $pieces[0];
                }
            }
        }
        push @{ $imap{ $pieces[0] } }, $pieces[1] . "_" . $pieces[2];
        next;
    }

}

#printMap( \%uimap, "OpCodes" );

for my $out (@output) {
    print "$out" . "->\n";
    printArray( \@{ $imap{$out} }, "IMap Array" );
}

print "Results: " . scalar(@output)."\n";

printMap( \%arity_map, "Arity Map" );
exit 0;
