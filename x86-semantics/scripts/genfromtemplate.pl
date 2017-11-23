#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( ./ );
use utils;

my $gendir = "";
my $templatedir = "";

my $help    = "";
my $home    = $ENV{'HOME'};

GetOptions(
    "help"     => \$help,
    "templatedir:s"     => \$templatedir,
    "gendir:s"     => \$gendir,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}


my @regs = (
  "rax", 
  "rbx", 
  "rcx", 
  "rdx", 
  "rsi", 
  "rdi", 
  "rsp", 
  "rbp",
  "r8", 
  "r9", 
  "r10", 
  "r11", 
  "r12", 
  "r13", 
  "r14", 
  "r15", 
); 

my %subRegToReg = (
  "al" => "rax",
  "bl" => "rbx",
  "cl" => "rcx",
  "dl" => "rdx",
  "r8b" => "r8",
  "r9b" => "r9",
  "r10b" => "r10",
  "r11b" => "r11",
  "r12b" => "r12",
  "r13b" => "r13",
  "r14b" => "r14",
  "r15b" => "r15",
);

my @r8s = (
  "al",
  "bl",
  "cl",
  "dl",
  "r8b",
  "r9b",
  "r10b",
  "r11b",
  "r12b",
  "r13b",
  "r14b",
  "r15b",
);

my @r16s = (
 "ax",
 "cx",
 "dx",
 "bx",
 "sp",
 "bp",
 "si",
 "di",
 "r8w",
 "r9w",
 "r10w",
 "r11w",
 "r12w",
 "r13w",
 "r14w",
 "r15w",
);

my $fileList = "$templatedir/fileList.txt";
if(!(-e $fileList )) {
  print "$fileList Missing\n\n";
  exit(0);
}

# Read the template files.
open( my $fp, "<", $fileList ) or die "cannot open: $!";
my @tmpls = <$fp>;

for my $tmpl (@tmpls) {
    chomp $tmpl;

    # Read the content from template file.
    open( my $fd1, "<", "$templatedir/$tmpl" ) or die "cannot open $tmpl: $!";
    my @lines = <$fd1>;
    close $fd1;

    # The k source file to be geerated.
    my ( $basename, $ext ) = utils::split_filename($tmpl);
    my $generatedfile = "$gendir/$basename.k";
    open( my $fd2, ">", $generatedfile  ) or die "cannot open: $!";

    process( \$fd2, \@lines);
}

sub process {
  my $fd_ref = shift @_;
  my  $lines_ref  = shift @_;
  my $fd = ${$fd_ref};
  my @lines  = @{$lines_ref};

  my $count = scalar @lines;

  for(my $i = 0; $i < $count; $i++ ) {
    my $line = $lines[$i];
    
    if($line =~ m/^Unroll START/) {
      print "Unroll Start\n";
      $i = $i + 1;
      $i = unroll(\$fd, \$i, \@lines);  
      print "Unroll End\n";
      next;
    }

    print $fd "$line";

  }

}

sub unroll {
  my $fd_ref = shift @_;
  my $start_ref = shift @_;
  my $lines_ref  = shift @_;
  my $fd = ${$fd_ref};
  my $start = ${$start_ref};
  my @lines  = @{$lines_ref};

  my $masterline = "";
  my $retcounter = 0;
  my $i = $start;
  while (1) {
    my $line = $lines[$i];
    if($line =~ m/^Unroll END/) {
      $retcounter = $i;
      last;
    }

    $masterline = $masterline . "$line";
    $i ++;
  }

  for my $reg (@regs) {
      my $mod = $masterline =~ s/REG64/$reg/gr;
      if ($mod ne $masterline) {
        print $fd "$mod";
      }
  }

  for my $subreg2 (@r8s) {
    for my $subreg1 (@r8s) {
      my $mod1 = $masterline =~ s/REG18/$subreg1/gr;
      my $mod2 = $mod1 =~ s/REG28/$subreg2/gr;
      my $mod3 = $mod2 =~ s/REG2/$subRegToReg{$subreg2}/gr;
      my $mod4 = $mod3 =~ s/REG1/$subRegToReg{$subreg1}/gr;
      if ($mod4 ne $masterline) {
        print $fd "$mod4";
      }
    }
  }


  return $retcounter;
}

#generate(\@regs, \@r8s, \%subRegToReg);
















































