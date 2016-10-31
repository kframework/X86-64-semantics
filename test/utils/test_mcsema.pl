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
my $redirect = " 2>&1 1> ";
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
my $pass = 0;
my $supported = 0;
my $unsupported = 0;
my $total = 0;
my $orig_unsupported = 0;
my $orig_supported = 0;
my @nf1 = ();
my @nf2 = ();

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

  my $old_bc = $file . ".bc";
  my $bc = $file . ".new.bc";
  my $optbc = $file . ".new.opt.bc";
  my $o = $file . ".new.o";
  my $newlifted = $file . ".new.lifted";
  my $cfg2bclog = $file . ".new.convert.txt";

  $total =  $total  + 1;

  print "\n===". $file. "===\n";

  if($check_unsupported ne "") {
    check_unsup($file);
  } else {
    if(-e $old_bc) {
      $orig_supported += 1;
    } else {
      $orig_unsupported += 1;
      push @nf1, $file;
    }
    process_cfg($file);
  }
}

print "Total: " . $total . "\n";
print "Original supported Count " . $orig_supported . "\n";
print "Original Unsupported Count " . $orig_unsupported . "\n";
print "Pass Count " . $pass . "\n";
print "Diff Error Count " . $diffcount . "\n";
print "Current supported Count" . $supported . "\n";
print "Current unsupported Count" . $unsupported . "\n";

print "\nOriginal Unsupported\n";
for my $file (@nf1) {
  print $file . "\n";
}
print "\nCurrent Unsupported\n";
for my $file (@nf2) {
  print $file . "\n";
}



# Utilities
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
    execute("${CFG_TO_BC_PATH}/cfg_to_bc  ${CFGBC_ARCH}  -i $cfg  -o $bc  -driver=mcsema_main,${entry},raw,return,C $redirect $cfg2bclog");
    if(-e $bc ) {
      $supported = $supported +1;
      execute("${OPT} -O3    $bc  -o=$optbc"); 
      execute("${LLC} ${BIN_ARCH} -filetype=obj -o $o $optbc");
      execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o $newlifted $driver $o ${libnone}");
      run_compare($file, $newlifted);
    } else {
      $unsupported = $unsupported +1;
      push @nf2, $file;
    }
  }
}

sub run_compare {
  my $orig = shift @_;
  my $lifted = shift @_;
  execute("$orig $redirect out1");
  execute("$lifted $redirect out2");
  if (compare("out1","out2") == 0) {
    $pass += 1;
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

sub check_unsup {
  my $file = shift @_;
  my $lifted = $file.".lifted";
  my $cfg = $file . ".cfg";
  my @suffixlist = (".simple");

  my $bc = $file . ".new.bc";
  my $optbc = $file . ".new.opt.bc";
  my $o = $file . ".new.o";
  my $newlifted = $file . ".new.lifted";
  my $cfg2bclog = $file . ".new.convert.txt";

  if(-e $bc) {
    $supported += 1;
    process_lifted();
  } else {
    $unsupported += 1;
    push @nf1, $file;
    process_cfg($file);
  }
}

sub process_lifted {
}
