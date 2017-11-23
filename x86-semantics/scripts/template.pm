package template;
use strict;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = qw(generate );

#our REG64 = "";
our @TMPLS = (); 
our @TMPLS2 = (); 

# module X86-REGISTER-SEMANTICS
my $T = <<"T1";
  rule <k> %REG64 => MI ...</k> <REG64> MI </REG64>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> updateReg(MI:MInt, %REG64) => . ...</k> <REG64> _ => MI </REG64>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractLSBitsFromRegister(%REG64, 8) => truncate(MI,64,8) ...</k>
  <REG64> MI </REG64>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractLSBitsFromRegister(%REG64, 16) => truncate(MI,64,16) ...</k>
  <REG64> MI </REG64>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractLSBitsFromRegister(%REG64, 32) => truncate(MI,64,32) ...</k>
  <REG64> MI </REG64>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> 
    pluginLSBitsToRegister(MIs:MInt, %REG64) =>
      updateReg(updateLSB(MId, MIs), %REG64) ...</k>
  <REG64> MId </REG64>
T1
push @TMPLS, $T;

# module ADD-IMM-R8
$T = <<"T1";
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%REG64 , .Typedoperands)) ) => 
      execinstr(addq, (%REG64, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <REG64> MI </REG64>
T1
push @TMPLS, $T;


# module ADC-R8-R8
$T = <<"T1";
  rule <k> 
    execinstr ( adcb , (%REG18 ,  (%REG28 , .Typedoperands)) ) =>
      execinstr(adcb, (%REG2, extractLSBitsFromRegister(%REG1, 8), extractLSBitsFromRegister(%REG2, 8), zeroExtend(MI3,8), .Typedoperands)) 
  ...</k>
  <cf> MI3 </cf>
T1
push @TMPLS2, $T;


sub generate {
  my $arg_ref1  = shift @_;
  my $arg_ref2  = shift @_;
  my $arg_ref3  = shift @_;
  my @regs = @{$arg_ref1};
  my @r8 = @{$arg_ref2};
  my %subRegToReg = %{$arg_ref3};

  for my $TMPL (@TMPLS) {
    for my $arg1 (@regs) {
      my $MODTMPL = $TMPL =~ s/REG64/$arg1/gr;
      print $MODTMPL;
    }
    print "\n\n";
  }

  for my $TMPL (@TMPLS2) {
    for my $subreg2 (@r8) {
      for my $subreg1 (@r8) {
        my $MOD1 = $TMPL =~ s/REG18/$subreg1/gr;
        my $MOD2 = $MOD1 =~ s/REG28/$subreg2/gr;
        my $MOD3 = $MOD2 =~ s/REG2/$subRegToReg{$subreg2}/gr;
        my $MOD4 = $MOD3 =~ s/REG1/$subRegToReg{$subreg1}/gr;
        print $MOD4;
      }
    }
  }
}




















