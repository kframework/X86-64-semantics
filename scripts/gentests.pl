#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Find;

use lib qw( ../../scripts/ );
use kutils;

my $help = "";
my $emittests = "";
my $arg2 = "";
my $home = $ENV{'HOME'};

GetOptions( 
    "help" => \$help, 
    "emittests" => \$emittests, 
    "arg2" => \$arg2, 
    )
  or die("Error in command line arguments\n");

if ($help) {
    print("perl gentests.pl");
    exit(1);
}

my @corpus = (
       "0",
       "1", 

    "0x41",
    "0x51",
    "0x80",
    "0x55",
    "0xAA",
    "0x0F",
    "0xF7",
    "0xFE",
    "0xEF",
    "0x7F",
    "0xFF",

    "0x4141",
    "0x5151",
    "0x8000",
    "0x5500",
    "0x5555",
    "0xAA00",
    "0xAAAA",
    "0x0F0F",
    "0xF7F7",
    "0xFEFE",
    "0xEFEF",
    "0x7FFF",
    "0xFFFF",

    "0x41414141",
    "0x51515151",
    "0x55000000",
    "0x55555555",
    "0xAAFFFFFF",
    "0xAAAAAAAA",
    "0x0F0F0F0F",
    "0xF7F7F7F7",
    "0xFEFEFEFE",
    "0xEFEFEFEF",
    "0x7FFFFFFF",
    "0xFFFFFFFF",

    "0x4141414141414141",
    "0x5115151515115151",
    "0x8000000000000000",
    "0x5500000000000000",
    "0x5555555555555555",
    "0xAA00000000000000",
    "0xAAAAAAAAAAAAAAAA",
    "0x0F0F0F0F0F0F0F0F",
    "0xF7F7F7F7F7F7F7F7",
    "0xEFEFEFEFEFEFEFEF",
    "0xFEFEFEFEFEFEFEFE",
    "0x7FFFFFFFFFFFFFFF",
    "0xFFFFFFFFFFFFFFFF",
    );


if ("" ne $emittests) {
  if("" ne $arg2) {
    my $len = scalar(@corpus);
    for (my $i = 0; $i < scalar(@corpus); $i++) {
      print $corpus[$i] . ", " . $corpus[$len - 1 - $i], "\n"; 
    }
  }

}


my $myydir = ".";
find( \&process_file, $myydir );

sub process_file {
    my $tmpl = $_;

    if ( !( -f $tmpl ) or ( $tmpl !~ m/\.S$/ ) ) {
        return;
    }

    print "Process file: $tmpl \n";

    # Read the content from template file.
    open( my $fd1, "<", "$tmpl" ) or die "cannot open $tmpl: $!";
    my @lines = <$fd1>;
    close $fd1;

    # The test file to be geerated.
    my ( $dir, $basename, $ext ) = utils::split_filename($tmpl);
    my $generatedfile = $dir . $basename . ".s";

    print "Generating file: " . $generatedfile . "\n";

    open( my $fd2, ">", $generatedfile )
      or die "cannot open $generatedfile: $!";

    process( \$fd2, \@lines );

}

sub process {
    my $fd_ref    = shift @_;
    my $lines_ref = shift @_;
    my $fd        = ${$fd_ref};
    my @lines     = @{$lines_ref};

    add_pre($fd_ref);
    my $count = scalar @lines;

    for ( my $i = 0 ; $i < $count ; $i++ ) {
        my $line = $lines[$i];

        if ( $line =~ m/^TEST_BEGIN.*\((\w+), (\d+)\)/ ) {
            my $name = $1;
            my $args = $2;
            print "TEST_BEGIN($name, $args)\n";
            $i = $i + 1;
            $i = unroll( \$fd, \$i, \$name, \$args, \@lines );
            print "TEST_END\n";
            next;
        }

        print $fd "$line";

    }

    add_post($fd_ref);
}

sub unroll {
    my $fd_ref    = shift @_;
    my $start_ref = shift @_;
    my $name_ref  = shift @_;
    my $args_ref  = shift @_;
    my $lines_ref = shift @_;

    my $fd    = ${$fd_ref};
    my $start = ${$start_ref};
    my $name  = ${$name_ref};
    my $args  = ${$args_ref};
    my @lines = @{$lines_ref};

    my $masterline = "";
    my $retcounter = 0;
    my $i          = $start;

    my @arg1 = ();
    my @arg2 = ();
    my @arg3 = ();

    while (1) {
        my $line = utils::trim( $lines[$i] );

        if ( $line =~ m/^TEST_INPUTS\(/ ) {

            while (1) {
                $i++;
                $line = utils::trim( $lines[$i] );
                chomp $line;
                my @splitarr = split( /,/, $line );

                if ( $args == 1 ) {

                    # to remove a space in , 7, so that we can have $7
                    my $tmp = utils::trim( $splitarr[0] );
                    if ( $tmp =~ m/(0x[ABCDEFabcdef\d]+|\d+)/ ) {

                        #print "TEMP: " . $tmp . " " . $1 . "\n";
                        $tmp = $1;
                    }
                    push @arg1, $tmp;
                }
                elsif ( $args == 2 ) {
                    push @arg1, utils::trim( $splitarr[0] );
                    my $tmp = utils::trim( $splitarr[1] );
                    if ( $tmp =~ /(0x[ABCDEFabcdef\d]+|\d+)/ ) {
                        $tmp = $1;
                    }
                    push @arg2, $tmp;
                }
                elsif ( $args == 3 ) {
                    push @arg1, utils::trim( $splitarr[0] );
                    push @arg2, utils::trim( $splitarr[1] );
                    my $tmp = utils::trim( $splitarr[2] );
                    if ( $tmp =~ /(0x[ABCDEFabcdef\d]+|\d+)/ ) {
                        $tmp = $1;
                    }
                    push @arg3, $tmp;
                }

                if ( $line =~ m/\)/ ) {
                    last;
                }
            }
        }

        if ( $line =~ m/\)/ ) {
            $i++;
            next;
        }

        if ( $line =~ m/^TEST_END/ ) {
            $retcounter = $i;
            last;
        }

        $masterline = $masterline . "  " . "$line" . "\n";
        $i++;
    }

    print $fd "  // $name";
    my $numInputs = scalar(@arg1);

    if ( 0 == $args ) {
        print $fd "$masterline";
    }
    elsif ( 1 == $args ) {
        for ( my $i = 0 ; $i < $numInputs ; $i++ ) {
            my $mod = $masterline =~ s/ARG1_(\d+)/\$$arg1[$i]/gr;
            print $fd "$mod";
        }
    }
    elsif ( 2 == $args ) {
        for ( my $i = 0 ; $i < $numInputs ; $i++ ) {
            my $mod1 = $masterline =~ s/ARG1_(\d+)/\$$arg1[$i]/gr;
            my $mod2 = $mod1 =~ s/ARG2_(\d+)/\$$arg2[$i]/gr;
            print $fd "$mod2";
        }
    }
    elsif ( 3 == $args ) {
        for ( my $i = 0 ; $i < $numInputs ; $i++ ) {
            my $mod1 = $masterline =~ s/ARG1_(\d+)/\$$arg1[$i]/gr;
            my $mod2 = $mod1 =~ s/ARG2_(\d+)/\$$arg2[$i]/gr;
            my $mod3 = $mod2 =~ s/ARG3_(\d+)/\$$arg3[$i]/gr;
            print $fd "$mod3";
        }
    }

    return $retcounter;
}

sub add_pre {
    my $fd_ref = shift @_;
    my $fd     = ${$fd_ref};

    print $fd ".section .text\n.globl _start\n\n_start:\n";
}

sub add_post {
    my $fd_ref = shift @_;
    my $fd     = ${$fd_ref};

    print $fd "\n  nop\n";
}
