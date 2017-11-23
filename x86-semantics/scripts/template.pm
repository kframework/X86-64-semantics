package template;
use strict;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = qw(generate );

#our SUBST = "";
our @TMPLS = (); 
our @TMPLS2 = (); 


my $T = <<"T1";
  rule <k> %SUBST => MI ...</k> <SUBST> MI </SUBST>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> updateReg(MI:MInt, %SUBST) => . ...</k> <SUBST> _ => MI </SUBST>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractR8(%SUBST) => truncate64to8(MI) ...</k>
  <SUBST> MI </SUBST>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractR16(%SUBST) => truncate64to16(MI) ...</k>
  <SUBST> MI </SUBST>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> extractR32(%SUBST) => truncate64to32(MI) ...</k>
  <SUBST> MI </SUBST>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> 
    plugin8(MId:MInt, %SUBST) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %SUBST) ...</k>
  <SUBST> MIs </SUBST>
T1
push @TMPLS, $T;


$T = <<"T1";
  rule <k> execinstr ( adcb , (%REG18 ,  (%REG28 , .Typedoperands)) ) =>
  execinstr(adcb, (%REG2, extractR8(%REG1), extractR8(%REG2), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
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
      my $MODTMPL = $TMPL =~ s/SUBST/$arg1/gr;
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




















