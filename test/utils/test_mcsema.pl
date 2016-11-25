#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
  use File::Basename;

#Global constants
my $home =  $ENV{'HOME'};
my $MCSEMA_HOME="";
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
#my $redirect = " 2>&1 1> ";
#my $redirect = " &> ";
my $clang35="${home}/Install/llvm-3.5.0.release.install/bin/clang-3.5"; 
my $loadso="${home}/Github/binary-decompilation/build/lib/LLVMstack_deconstructor.so";
my $INCLUDE_DIR="${home}/Github/binary-decompilation/test/utils/";
my $LIBNONE="${home}/allvm-umbrella/allvm/build/lib/libnone.a";


# Customizable inputs
my $help = "";
my $entry="main";
my $check_unsupported="";
my $incdir="${home}/Github/binary-decompilation/test/utils/";

# Status
my $diffcount = 0;
my $passcount = 0;
my $supported = 0;
my $unsupported = 0;
my $total = 0;
my $orig_unsupported = 0;
my $orig_supported = 0;
my @nf1 = ();
my @nf2 = ();
my @sp1 = ();
my @sp2 = ();
my @pass = ();
my @diff = ();
my $infile = "";
my $norun = "";
my $entrypoint = "";
my $check_allin = "";


GetOptions (
            "help"          => \$help, 
            "entry:s"       => \$entry, 
            "file:s"       => \$infile, 
            "home:s"       => \$MCSEMA_HOME, 
            "norun"       => \$norun, 
            "entrypoint"       => \$entrypoint, 
            "check_allin"       => \$check_allin, 
            "check_unsupported"       => \$check_unsupported, 
            ) or die("Error in command line arguments\n");

print "\nMcsema Home: $MCSEMA_HOME\n";
#Derived paths
my $BIN_DESCEND_PATH="${MCSEMA_HOME}/mc-sema/bin_descend";
my $CFG_TO_BC_PATH="${MCSEMA_HOME}/mc-sema/bitcode_from_cfg/";
my $GCC_ARCH="";
my $BIN_ARCH="";
my $CFGBC_ARCH="";

if($help) {
  print ("run.pl   \n");
  exit(1);
}
$GCC_ARCH="-m64";
$BIN_ARCH="-march=x86-64";
$CFGBC_ARCH="-mtriple=x86_64-pc-linux-gnu";

my $driver = "${home}/Github/binary-decompilation/test/utils/driver_64.c";
my $libnone = "${home}/allvm-umbrella/allvm/build/lib/libnone.a";

open(my $fp, "<", "$infile") or die "cannot open: $!";
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

  if("" ne $check_allin) {
    check_analysis($file);
  } elsif ($check_unsupported ne "") {
    check_unsup($file);
  } else {
    if(-e $old_bc) {
      push @sp1, $file;
      $orig_supported += 1;
    } else {
      $orig_unsupported += 1;
      push @nf1, $file;
    }
    process_cfg($file);
  }
}

print "\nOriginal Supported\n";
for my $file (@sp1) {
  print $file . "\n";
}
print "\nOriginal Unsupported\n";
for my $file (@nf1) {
  print $file . "\n";
}
print "\nCurrent Supported\n";
for my $file (@sp2) {
  print $file . "\n";
}
print "\nCurrent Unsupported\n";
for my $file (@nf2) {
  print $file . "\n";
}

print "\nCurrent Pass\n";
for my $file (@pass) {
  print $file . "\n";
}
print "\nCurrent Diff\n";
for my $file (@diff) {
  print $file . "\n";
}

print "\nTotal: " . $total . "\n";
print "Original supported Count " . $orig_supported . "\n";
print "Original Unsupported Count " . $orig_unsupported . "\n";
print "Pass Count " . $passcount . "\n";
print "Diff Error Count " . $diffcount . "\n";
print "Current supported Count " . $supported . "\n";
print "Current unsupported Count " . $unsupported . "\n";


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
  my $unsupp_summary =  "unsupported_summary.raw";
  my ($basename,$path,$suffix) = fileparse($file,@suffixlist);

  if($check_unsupported ne "") {
    execute("grep \"Unsupported\" -A 2 $path/convert.log");
  } else {
    #-ignore-unsupported 
    execute("rm -rf  $bc");
    if("" ne $entrypoint) {
      execute("${CFG_TO_BC_PATH}/cfg_to_bc -post-analysis=0  ${CFGBC_ARCH}  -i $cfg  -entrypoint=main -o $bc   1>$cfg2bclog 2>&1");
    } else {
      execute("${CFG_TO_BC_PATH}/cfg_to_bc  ${CFGBC_ARCH}  -i $cfg  -o $bc  -driver=mcsema_main,${entry},raw,return,C 1>$cfg2bclog 2>&1");
    }
    execute("ls $bc");
    if(-e "$bc" ) {
      $supported = $supported +1;
      push @sp2, $file;
      if("" ne $entrypoint) {
        execute("$clang35 -O3 -m64 $MCSEMA_HOME/../drivers/ELF_64_linux.S $bc ${libnone} -o  $newlifted"); 
      } else {
        execute("${OPT} -O3    $bc  -o=$optbc"); 
        execute("${LLC} ${BIN_ARCH} -filetype=obj -o $o $optbc");
        execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o $newlifted $driver $o ${libnone}");
      }
      run_compare($file, $newlifted);
    } else {
      $unsupported = $unsupported +1;
      push @nf2, $file;
      print "<Unsupported>\n";
      execute("grep -i \"Unsupported\\|Error\" -A 2 $cfg2bclog");
      execute("echo  >> $unsupp_summary");
      execute("echo $file >> $unsupp_summary");
      execute("echo \"========\" >> $unsupp_summary");
      execute("grep -i \"Unsupported\\|Error\" -A 2 $cfg2bclog >> $unsupp_summary");
    }
  }
}

sub run_compare {
  my $orig = shift @_;
  my $lifted = shift @_;

  if("" ne $norun) {
    return;
  }
  execute("./$orig  1>out_1 2>&1");
  execute("./$lifted 1>out_2 2>&1");
  if (compare("out1","out2") == 0) {
    $passcount += 1;
    push @pass, $orig;
  } else {
    execute("diff out_1 out_2");
    $diffcount  = $diffcount + 1;
    push @diff, $orig;
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

sub check_analysis {
  my $file = shift @_;
  my $lifted = $file.".lifted";
  my $cfg = $file . ".cfg";
  my @suffixlist = (".simple");

  my $bc = $file . ".new.bc";
  my $transbc = $file . ".new.trans.bc";
  my $transo = $file . ".new.trans.o";
  my $translifted = $file . ".new.trans.lifted";

  execute("${OPT} -load=${loadso} -stack-decons $bc   -o ${transbc} 1>/dev/null 2>&1"); 
  execute("${LLC} -march=x86-64 -filetype=obj -o $transo ${transbc}");
  execute("${CC}   -m64 -I${INCLUDE_DIR} -o $translifted ${INCLUDE_DIR}/driver_64.c $transo ${LIBNONE}");
  run_compare($file, $translifted);
}


sub process_lifted {
}
