#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
  use File::Basename;

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
my $check_unsupported="";
my $incdir="${home}/Github/binary-decompilation/test/utils/";

# Status
my $diffcount = 0;
my $cfg_to_bc_error = 0;
my $total = 0;
my $unsupported = 0;
my $supported = 0;
my @nf = ();

GetOptions (
            "help"          => \$help, 
            "entry:s"       => \$entry, 
            "check_unsupported"       => \$check_unsupported, 
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
  my $lifted = $file.".lifted";
  my $cfg = $file . ".cfg";

  my $bc = $file . ".new.bc";
  my $optbc = $file . ".new.opt.bc";
  my $o = $file . ".new.o";
  my $newlifted = $file . ".new.lifted";
  my $cfg2bclog = $file . ".new.convert.txt";

  $total =  $total  + 1;

  #print "\n=============================\n";
  #print $file . "\n";

  if(-e $lifted) {
    $supported += 1;
    process_lifted();
  } else {
    $unsupported += 1;
    push @nf, $file;
    process_cfg($file);
  }
}

print "Total: " . $total . "\n";
print "Diff Error " . $diffcount . "\n";
print "CFG  Error " . $cfg_to_bc_error . "\n";
print "Unsupported  " . $unsupported . "\n";
print "Supported  " . $supported . "\n";

for my $file (@nf) {
  print $file . "\n";
}



# Utilities
sub process_lifted {

}

sub process_cfg {
  my $file = shift @_;

  my $lifted = $file.".lifted";
  my $cfg = $file . ".cfg";
  my @suffixlist = (".simple");

  my $bc = $file . ".new.bc";
  my $optbc = $file . ".new.opt.bc";
  my $o = $file . ".new.o";
  my $newlifted = $file . ".new.lifted";
  my $cfg2bclog = $file . ".new.convert.txt";
  my ($basename,$path,$suffix) = fileparse($file,@suffixlist);

  if($check_unsupported ne "") {
    #execute("grep \"Unsupported\" -A 2 $cfg2bclog");
    execute("grep \"Unsupported\" -A 2 $path/convert.log");
  } else {
    #-ignore-unsupported 
    execute("${CFG_TO_BC_PATH}/cfg_to_bc  ${CFGBC_ARCH}  -i $cfg  -o $bc  -driver=mcsema_main,${entry},raw,return,C &> $cfg2bclog");
    execute("${OPT} -O3    $bc  -o=$optbc"); 
    execute("${LLC} ${BIN_ARCH} -filetype=obj -o $o $optbc");
    execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o $newlifted $driver $o ${libnone}");
    if(-e $newlifted) {
      run_compare($file, $newlifted);
    } else {
      $cfg_to_bc_error = $cfg_to_bc_error +1;
    }
  }
}

sub run_compare {
  my $orig = shift @_;
  my $lifted = shift @_;
  execute("$orig 2>&1  1>out1");
  execute("$lifted 2>&1  1>out2");
  if (compare("out1","out2") == 0) {
  } else {
    execute("diff out1 out2");
    $diffcount  = $diffcount + 1;
  }
  execute("rm -rf  out1 out 2");
}

sub execute {
  my $args = shift @_;
  print "$args \n";
  system("$args");
}

sub split_filename {
    my $arg = shift @_;

    if("" eq $arg) {
      return ("", "");
    }
    my @components = split (/\//, ${arg}); 
    my $filename = $components[@components -1];
    @components = split (/\./, ${filename}); 
    my $file = $components[0];
    my $ext = $components[1];
    return ($file,$ext);
}


