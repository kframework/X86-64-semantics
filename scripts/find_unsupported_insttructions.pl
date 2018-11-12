#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;
use Cwd 'abs_path';

## REPLACE THIS PATH WITH YOUR OWN
my $home = "";
BEGIN{
	$home = $ENV{"HOME"};
	unshift @INC, "$home/Github/binary-decompilation/x86-semantics/scripts/";
}
use kutils;
use utils;

my $help       = "";
my $file       = "";
my $script_path =  dirname(abs_path($0));
my $baseDir = "$script_path/../semantics";
my $regDir = $baseDir . "/registerInstructions/";
my $immDir = $baseDir . "/immediateInstructions/";
my $memDir = $baseDir . "/memoryInstructions/";
my $sysDir = $baseDir . "/systemInstructions/";
my $extraDir = $baseDir . "/extras/";
my $target   = $baseDir . "/underTestInstructions/";

GetOptions(
    "help"         => \$help,
    "file:s"       => \$file,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

open( my $fp, "<", $file ) or die "Can't open $file: $!";
my @lines   = <$fp>;
my %opcodeMap = ();

for my $line (@lines) {
  chomp $line;
  $line = utils::trim($line);

  if($line =~ m/:/) {
    next;
  } 

  if($line =~ m/_start|\.type|\.size|\.ident|\.align|\.weak|\.local|\.file|\.p2align|\.cfi\_|\.text|\.file|\.section|\.quad|\.value|\.long|\.zero|\.globl|\.comm|\.string|\.data|\.byte|\.bss|\.ascii|\.asciz|\.set/) {
    next;  
  }

  if($line =~ m/rep\s*(.*)/g) {
    $opcodeMap{"rep_". $1} = "";
    $opcodeMap{$1} = "";
    next;
  }

  my $opcode = $line =~ s/\s.*//gr; 
  if("" eq $opcode) {
    next;
  }

#print "check $opcode\n";

  $opcodeMap{$opcode} = "";

}

for my $opcode (sort keys %opcodeMap) {
#print $opcode ."\n";
  if(0 == is_supported($opcode)) {
    print "$file: $opcode\n";
  }

}

sub is_supported {
  my $opcode = shift @_;
  my $doit = shift @_;

  my @locs = (
    $regDir, $immDir, $memDir, $sysDir,
  );

  my $varb = $opcode . "b";
  my $varw = $opcode . "w";
  my $varl = $opcode . "l";
  my $varq = $opcode . "q";

  for my $loc (@locs) {
    my $patt = "$loc/$opcode". "*";
#print $patt . "\n";
    my @file = glob("$patt");
    if (scalar(@file)) {
#print "\nFound\n";
      return 1;
    }
  }
  
  return 0;

}

exit;
