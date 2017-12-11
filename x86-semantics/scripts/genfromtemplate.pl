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

my @rhs = ( "ah", "bh", "ch", "dh");# "dl", "sil", "dil", "spl", "bpl", "r8b", "r9b", "r10b", "r11b", "r12b", "r13b", "r14b", "r15b",); 

my @r16s = ( "ax", "bx", "cx",);# "dx", "si", "di", "sp", "bp", "r8w", "r9w", "r10w", "r11w", "r12w", "r13w", "r14w", "r15w",); 

my @r32s = ( "eax", "ebx", "ecx",);# "edx", "esi", "edi", "esp", "ebp", "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d");

my @ymms = ( "ymm1", "ymm2", "ymm3",);# "ymm4", "ymm5", "ymm6", "ymm7", "ymm8", "ymm9", "ymm10", "ymm11", "ymm12", "ymm13", "ymm14", "ymm15"); 

my @xmms = ( "xmm1", "xmm2", "xmm3", "xmm4", "xmm5", "xmm6", "xmm7", "xmm8", "xmm9", "xmm10", "xmm11", "xmm12", "xmm13", "xmm14", "xmm15"); 
=pod
my @regs = ( "rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rsp", "rbp", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", ); 

my @r8s = ( "al", "bl", "cl", "dl", "sil", "dil", "spl", "bpl", "r8b", "r9b", "r10b", "r11b", "r12b", "r13b", "r14b", "r15b",); 

my @rhs = ( "ah", "bh", "ch", "dh");

my @r16s = ( "ax", "bx", "cx", "dx", "si", "di", "sp", "bp", "r8w", "r9w", "r10w", "r11w", "r12w", "r13w", "r14w", "r15w",); 

my @r32s = ( "eax", "ebx", "ecx", "edx", "esi", "edi", "esp", "ebp", "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d");
=cut


# Maps 
my %subReg8ToReg = ( "al" => "rax", "bl" => "rbx", "cl" => "rcx", "dl" => "rdx", "sil" => "rsi", "dil" => "rdi", "spl" => "rsp", "bpl" => "rbp", "r8b" => "r8", "r9b" => "r9", "r10b" => "r10", "r11b" => "r11", "r12b" => "r12", "r13b" => "r13", "r14b" => "r14", "r15b" => "r15",);

my %subReg16ToReg = ( "ax" => "rax", "bx" => "rbx", "cx" => "rcx", "dx" => "rdx", "si" => "rsi", "di" => "rdi", "sp" => "rsp", "bp" => "rbp", "r8w" => "r8", "r9w" => "r9", "r10w" => "r10", "r11w" => "r11", "r12w" => "r12", "r13w" => "r13", "r14w" => "r14", "r15w" => "r15",);

my %subReg32ToReg = ( "eax" => "rax", "ebx" => "rbx", "ecx" => "rcx", "edx" => "rdx", "esi" => "rsi", "edi" => "rdi", "esp" => "rsp", "ebp" => "rbp", "r8d" => "r8", "r9d" => "r9", "r10d" => "r10", "r11d" => "r11", "r12d" => "r12", "r13d" => "r13", "r14d" => "r14", "r15d" => "r15",);

my %subReghToReg = ( "ah" => "rax", "bh" => "rbx", "ch" => "rcx", "dh" => "rdx");

my %subReghToSubReg = ( "ah" => "al", "bh" => "bl", "ch" => "cl", "dh" => "dl");


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

  # REG64
  if("1" eq $pattern) {
    for my $reg (@regs) {
        my $mod = $masterline =~ s/REG64/$reg/gr;
        print $fd "$mod";
    }
  }

  # REG64_1 REG64_2 REG8_1 REG8_2
  if("2" eq $pattern) {
    for my $subreg2 (@r8s) {
      for my $subreg1 (@r8s) {
        if($subreg2 ne $subreg1) {
          my $mod1 = $masterline =~ s/REG8_1/$subreg1/gr;
          my $mod2 = $mod1 =~ s/REG8_2/$subreg2/gr;
          my $mod3 = $mod2 =~ s/REG64_2/$subReg8ToReg{$subreg2}/gr;
          my $mod4 = $mod3 =~ s/REG64_1/$subReg8ToReg{$subreg1}/gr;
          print $fd "$mod4";
        }
      }
    }
  }

  # REG64_1 REG64_2 REG16_1 REG16_2
  if("3" eq $pattern) {
    for my $subreg2 (@r16s) {
      for my $subreg1 (@r16s) {
        if($subreg2 ne $subreg1) {
          my $mod1 = $masterline =~ s/REG16_1/$subreg1/gr;
          my $mod2 = $mod1 =~ s/REG16_2/$subreg2/gr;
          my $mod3 = $mod2 =~ s/REG64_2/$subReg16ToReg{$subreg2}/gr;
          my $mod4 = $mod3 =~ s/REG64_1/$subReg16ToReg{$subreg1}/gr;
          print $fd "$mod4";
        }
      }
    }
  }

  # REG64_1 REG64_2 REG32_1 REG32_2
  if("4" eq $pattern) {
    for my $subreg2 (@r32s) {
      for my $subreg1 (@r32s) {
        if($subreg2 ne $subreg1) {
          my $mod1 = $masterline =~ s/REG32_1/$subreg1/gr;
          my $mod2 = $mod1 =~ s/REG32_2/$subreg2/gr;
          my $mod3 = $mod2 =~ s/REG64_2/$subReg32ToReg{$subreg2}/gr;
          my $mod4 = $mod3 =~ s/REG64_1/$subReg32ToReg{$subreg1}/gr;
          print $fd "$mod4";
        }
      }
    }
  }

  # REG64_1 REG64_2
  if("5" eq $pattern) {
    for my $reg2 (@regs) {
      for my $reg1 (@regs) {
        if($reg2 ne $reg1) {
          my $mod1 = $masterline =~ s/REG64_1/$reg1/gr;
          my $mod2 = $mod1 =~ s/REG64_2/$reg2/gr;
          print $fd "$mod2";
        }
      }
    }
  }

  # REG64_1 REG64_2 REG8_1
  if("6" eq $pattern) {
    for my $reg (@regs) {
      for my $subreg (@r8s) {
          my $mod1 = $masterline =~ s/REG64_2/$reg/gr;
          my $mod2 = $mod1 =~ s/REG8_1/$subreg/gr;
          my $mod3 = $mod2 =~ s/REG64_1/$subReg8ToReg{$subreg}/gr;
          print $fd "$mod3";
      }
    }
  }

  # REG64_1 REG64_2 REG16_1
  if("7" eq $pattern) {
    for my $reg (@regs) {
      for my $subreg (@r16s) {
          my $mod1 = $masterline =~ s/REG64_2/$reg/gr;
          my $mod2 = $mod1 =~ s/REG16_1/$subreg/gr;
          my $mod3 = $mod2 =~ s/REG64_1/$subReg16ToReg{$subreg}/gr;
          print $fd "$mod3";
      }
    }
  }

  # REG64_1 REG64_2 REG32_1
  if("8" eq $pattern) {
    for my $reg (@regs) {
      for my $subreg (@r32s) {
          my $mod1 = $masterline =~ s/REG64_2/$reg/gr;
          my $mod2 = $mod1 =~ s/REG32_1/$subreg/gr;
          my $mod3 = $mod2 =~ s/REG64_1/$subReg32ToReg{$subreg}/gr;
          print $fd "$mod3";
      }
    }
  }

  # REG64  REG8
  if("9" eq $pattern) {
    for my $subreg (@r8s) {
      my $mod1 = $masterline =~ s/REG8/$subreg/gr;
      my $mod2 = $mod1 =~ s/REG64/$subReg8ToReg{$subreg}/gr;
      print $fd "$mod2";
    }
  }

  # REG64  REG16
  if("10" eq $pattern) {
    for my $subreg (@r16s) {
      my $mod1 = $masterline =~ s/REG16/$subreg/gr;
      my $mod2 = $mod1 =~ s/REG64/$subReg16ToReg{$subreg}/gr;
      print $fd "$mod2";
    }
  }

  # REG64  REG32
  if("11" eq $pattern) {
    for my $subreg (@r32s) {
      my $mod1 = $masterline =~ s/REG32/$subreg/gr;
      my $mod2 = $mod1 =~ s/REG64/$subReg32ToReg{$subreg}/gr;
      print $fd "$mod2";
    }
  }

  # REGH  REG8 REG64 
  if("12" eq $pattern) {
    for my $subreg (@rhs) {
      my $mod1 = $masterline =~ s/REGH/$subreg/gr;
      my $mod2 = $mod1 =~ s/REG8/$subReghToSubReg{$subreg}/gr;
      my $mod3 = $mod2 =~ s/REG64/$subReghToReg{$subreg}/gr;
      print $fd "$mod3";
    }
  }

  # REGH_1  REG8_2 REG64_2 REG64_1
  if("13" eq $pattern) {
    for my $subhreg (@rhs) {
      for my $sub8reg (@r8s) {
        if($sub8reg ne $subReghToSubReg{$subhreg}) {
          my $mod1 = $masterline =~ s/REGH_1/$subhreg/gr;
          my $mod2 = $mod1 =~ s/REG8_2/$sub8reg/gr;
          my $mod3 = $mod2 =~ s/REG64_1/$subReghToReg{$subhreg}/gr;
          my $mod4 = $mod3 =~ s/REG64_2/$subReg8ToReg{$sub8reg}/gr;
          print $fd "$mod4";
        }
      }
    }
  }

  # REG64 excluding rcx
  if("14" eq $pattern) {
    for my $reg (@regs) {
        if($reg ne "rcx") {
          my $mod1 = $masterline =~ s/REG64/$reg/gr;
          print $fd "$mod1";
        }
    }
  }

  # YMM 
  if("15" eq $pattern) {
    for my $ymm (@ymms) {
      my $mod1 = $masterline =~ s/YMM/$ymm/gr;
      print $fd "$mod1";
    }
  }

  # YMM1 
  if("16" eq $pattern) {
    for my $ymm1 (@ymms) {
      for my $ymm2 (@ymms) {
        if($ymm1 ne $ymm2) {
          my $mod1 = $masterline =~ s/YMM1/$ymm1/gr;
          my $mod2 = $mod1 =~ s/YMM2/$ymm2/gr;
          print $fd "$mod2";
        }
      }
    }
  }

  return $retcounter;
}

#generate(\@regs, \@r8s, \%subRegToReg);
















































