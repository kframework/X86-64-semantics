#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;

use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my $help       = "";
my $file       = "";

GetOptions(
    "help"         => \$help,
    "file:s"       => \$file,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}



exit;
