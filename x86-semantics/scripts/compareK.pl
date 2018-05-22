#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

#use File::chdir;
use Cwd;
use File::Path qw(make_path remove_tree);
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;
use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use File::Find;

#use File::chdir;
use Cwd;
use threads;

# Using GetOPtions
my @kfile      = ();
my $help       = "";
my $debugprint = 0;
GetOptions(
    "help"    => \$help,
    "kfile:s" => \@kfile,
) or die("Error in command line arguments\n");

if ( scalar(@kfile) > 2 ) {
    print("--opcode --kfile --kfile \n");
    exit(0);
}

open( my $fp0, "<", $kfile[0] ) or die "Can't open $kfile[0]: $!";
open( my $fp1, "<", $kfile[1] ) or die "Can't open $kfile[1]: $!";

my @lines0   = <$fp0>;
my @lines1   = <$fp1>;
my $map0_ref = parseKFile( \@lines0, $debugprint );
my $map1_ref = parseKFile( \@lines1, $debugprint );
my %map0     = %{$map0_ref};
my %map1     = %{$map1_ref};

if ( scalar( keys %map0 ) != scalar( keys %map1 ) ) {
    failInfo("DIff number of rules");
    exit(1);
}

for my $key0 ( keys %map0 ) {
    if ( exists $map1{$key0} ) {

        if ( $key0 eq "\"AF\"" ) {
            next;
        }
        my $rule0 = $map0{$key0};
        my $rule1 = $map1{$key0};

        my $mod0 = $rule0 =~ s/\s//gr;
        $mod0 =~ s/\(//g;
        $mod0 =~ s/\)//g;

        my $mod1 = $rule1 =~ s/\s//gr;
        $mod1 =~ s/\(//g;
        $mod1 =~ s/\)//g;

        #my ( $result, $str0, $str1 ) =
        #print "\n\nCheck $key0:\n";
        utils::printStringDiff( $mod0, $mod1, $key0 );

        #if ( 1 == $result ) {
        #    print "$key0: Diff::" . "\n" . $str0 . "\n" . $str1 . "\n\n";
        #}
    }
    else {
        print "$key0: Does not exists \n";
        failInfo("Key does not exist");
    }
}
