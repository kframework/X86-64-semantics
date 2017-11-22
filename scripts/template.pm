package template;
use strict;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = qw(generate );

#our SUBST = "";
our @TMPLS = (); 


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




sub generate {
  my $arg_ref  = shift @_;
  my @args1 = @{$arg_ref};

  for my $TMPL (@TMPLS) {
    for my $arg1 (@args1) {
      my $MODTMPL = $TMPL =~ s/SUBST/$arg1/gr;
      print $MODTMPL;
    }
    print "\n\n";
  }
}
