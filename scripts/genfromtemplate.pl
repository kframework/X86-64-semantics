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


my @regs = ( "rax", "rbx", "rcx",);# "rdx", "rsi", "rdi", "rsp", "rbp", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", ); 

my @r8s = ( "al", "bl", "cl",);# "dl", "sil", "dil", "spl", "bpl", "r8b", "r9b", "r10b", "r11b", "r12b", "r13b", "r14b", "r15b",); 

my @r16s = ( "ax", "bx", "cx",);# "dx", "si", "di", "sp", "bp", "r8w", "r9w", "r10w", "r11w", "r12w", "r13w", "r14w", "r15w",); 

my @r32s = ( "eax", "ebx", "ecx",);# "edx", "esi", "edi", "esp", "ebp", "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d");

my %subReg8ToReg = ( "al" => "rax", "bl" => "rbx", "cl" => "rcx", "dl" => "rdx", "sil" => "rsi", "dil" => "rdi", "spl" => "rsp", "bpl" => "rbp", "r8b" => "r8", "r9b" => "r9", "r10b" => "r10", "r11b" => "r11", "r12b" => "r12", "r13b" => "r13", "r14b" => "r14", "r15b" => "r15",);

my %subReg16ToReg = ( "ax" => "rax", "bx" => "rbx", "cx" => "rcx", "dx" => "rdx", "si" => "rsi", "di" => "rdi", "sp" => "rsp", "bp" => "rbp", "r8w" => "r8", "r9w" => "r9", "r10w" => "r10", "r11w" => "r11", "r12w" => "r12", "r13w" => "r13", "r14w" => "r14", "r15w" => "r15",);

my %subReg32ToReg = ( "eax" => "rax", "ebx" => "rbx", "ecx" => "rcx", "edx" => "rdx", "esi" => "rsi", "edi" => "rdi", "esp" => "rsp", "ebp" => "rbp", "r8d" => "r8", "r9d" => "r9", "r10d" => "r10", "r11d" => "r11", "r12d" => "r12", "r13d" => "r13", "r14d" => "r14", "r15d" => "r15",);


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
    
    if($line =~ m/^Unroll START PATTERN-(\d+)/) {
      my $pattern = $1;
      print "Unroll Start Pattern-$pattern\n";
      $i = $i + 1;
      $i = unroll(\$fd, \$i, \$pattern, \@lines);  
      print "Unroll End\n";
      next;
    }

    print $fd "$line";

  }

}

sub unroll {
  my $fd_ref = shift @_;
  my $start_ref = shift @_;
  my $pattern_ref = shift @_;
  my $lines_ref  = shift @_;
  my $fd = ${$fd_ref};
  my $start = ${$start_ref};
  my $pattern = ${$pattern_ref};
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

  if("1" eq $pattern) {
    for my $reg (@regs) {
        my $mod = $masterline =~ s/REG64/$reg/gr;
        print $fd "$mod";
    }
  }

  if("2" eq $pattern) {
    for my $subreg2 (@r8s) {
      for my $subreg1 (@r8s) {
        my $mod1 = $masterline =~ s/REG8_1/$subreg1/gr;
        my $mod2 = $mod1 =~ s/REG8_2/$subreg2/gr;
        my $mod3 = $mod2 =~ s/REG64_2/$subReg8ToReg{$subreg2}/gr;
        my $mod4 = $mod3 =~ s/REG64_1/$subReg8ToReg{$subreg1}/gr;
        print $fd "$mod4";
      }
    }
  }

  if("3" eq $pattern) {
    for my $subreg2 (@r16s) {
      for my $subreg1 (@r16s) {
        my $mod1 = $masterline =~ s/REG64_16_1/$subreg1/gr;
        my $mod2 = $mod1 =~ s/REG64_16_2/$subreg2/gr;
        my $mod3 = $mod2 =~ s/REG64_2/$subReg16ToReg{$subreg2}/gr;
        my $mod4 = $mod3 =~ s/REG64_1/$subReg16ToReg{$subreg1}/gr;
        print $fd "$mod4";
      }
    }
  }

  if("4" eq $pattern) {
    for my $subreg2 (@r32s) {
      for my $subreg1 (@r32s) {
        my $mod1 = $masterline =~ s/REG32_1/$subreg1/gr;
        my $mod2 = $mod1 =~ s/REG32_2/$subreg2/gr;
        my $mod3 = $mod2 =~ s/REG64_2/$subReg32ToReg{$subreg2}/gr;
        my $mod4 = $mod3 =~ s/REG64_1/$subReg32ToReg{$subreg1}/gr;
        print $fd "$mod4";
      }
    }
  }

  if("5" eq $pattern) {
    for my $subreg2 (@regs) {
      for my $subreg1 (@regs) {
        if($subreg2 ne $subreg1) {
          my $mod1 = $masterline =~ s/REG64_1/$subreg1/gr;
          my $mod2 = $mod1 =~ s/REG64_2/$subreg2/gr;
          print $fd "$mod2";
        }
      }
    }
  }

  return $retcounter;
}

#generate(\@regs, \@r8s, \%subRegToReg);
















































