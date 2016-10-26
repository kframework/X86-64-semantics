#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;

#Global constants
my $home =  $ENV{'HOME'};
my $MCSEMA_HOME="${home}/Github/mcsema";
my $ALLIN_HOME="${home}/Github/binary-decompilation/";
my $CC="clang";
my $CXX="clang++";
my $OPT="opt";
my $LLVMDIS="llvm-dis";
my $LLVMAS="llvm-as";
my $LLVMAS35="${home}/Install/llvm-3.5.0.release.install/bin/llvm-as";
my $LLC="llc";
my $outdir="Output/";
my $CC_OPTIONS="";
#"-fomit-frame-pointer";

#Derived paths
my $BIN_DESCEND_PATH="${MCSEMA_HOME}/build/mc-sema/bin_descend";
my $CFG_TO_BC_PATH="${MCSEMA_HOME}/build/mc-sema/bitcode_from_cfg/";
my $GCC_ARCH="";
my $BIN_ARCH="";
my $CFGBC_ARCH="";

# Customizable inputs
my $help = "";
my $entry="main";
my $incdir="${home}/Github/binary-decompilation/test/utils/";

# Status
my $diffcount = 0;
my $cfgerror = 0;
my $total = 0;

GetOptions (
            "help"          => \$help, 
            "entry:s"       => \$entry, 
            ) or die("Error in command line arguments\n");



if($help) {
  print ("run.pl   \n");
  exit(1);
}
$GCC_ARCH="-m64";
$BIN_ARCH="-march=x86-64";
$CFGBC_ARCH="-mtriple=x86_64-pc-linux-gnu";

my $driver = "${home}/Github/binary-decompilation/test/utils/driver_64.c";
my $libnone = "${home}/allvm-umbrella/allvm/build/lib/libnone.a";

open(my $fp, "<", "filelist.txt") or die "cannot open: $!";
my @files = <$fp>;
for my $file (@files) {
  chomp $file;
  my $orig_exec = $file;
  my $trans_exec = $file.".lifted";

  $total =  $total  + 1;

  print "=============================\n";
  print $orig_exec . "\n";

  if(!(-e $trans_exec)) {
    print $trans_exec. "?\n";
    my $cfg = $file . ".cfg";
    my $bc = $file . ".bc";
    my $optbc = $file . ".opt.bc";
    my $o = $file . ".o";
    my $lifted = $file . ".lifted";
    my $else = $file . ".*";

    if(!(-e $cfg)) {
      print $cfg. "?\n";
    } else {
      execute("${CFG_TO_BC_PATH}/cfg_to_bc -ignore-unsupported ${CFGBC_ARCH}  -i $cfg  -o $bc  -driver=mcsema_main,${entry},raw,return,C > /dev/null");
      execute("${OPT} -O3    $bc  -o=$optbc"); 
      execute("${LLC} ${BIN_ARCH} -filetype=obj -o $o $optbc");
      execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o $lifted $driver $o ${libnone}");
      execute("ls $else");
      if(-e $lifted) {

      } else {
        $cfgerror = $cfgerror +1;
      
      }
    }
  } else {
    execute("$orig_exec 2>&1  1>out1");
    execute("$trans_exec 2>&1  1>out2");
    if (compare("out1","out2") == 0) {
      #print "They're equal\n";
    } else {
      print "Diff Output\n";
      $diffcount  = $diffcount + 1;
    }
    execute("rm -rf  out1 out 2");
  }

}

print "Total: " . $total . "\n";
print "Diff Error " . $diffcount . "\n";
print "CFG  Error " . $cfgerror . "\n";

# Utilities
sub execute {
  my $args = shift @_;
  print "$args \n";
  system("$args");
}
