package template;
use strict;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT  = qw(generate );

our $SUB = "";
our @TMPLS = (); 


my $T = <<"T1";
  rule <k> 
    plugin8(MId:MInt, %$SUB) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %$SUB) ...</k>
  <$SUB> MIs </$SUB>
T1
push @TMPLS, $T;

$T = <<"T1";
  rule <k> updateReg(MI:MInt, %${SUB}) => . ...</k> <${SUB}> _ => MI </${SUB}>
T1
push @TMPLS, $T;



sub generate {
  my $arg_ref  = shift @_;
  my @args1 = @{$arg_ref};

  for my $TMPL (@TMPLS) {
    for my $arg1 (@args1) {
      $SUB = $arg1;
      print $TMPL;
    }
  }
}
