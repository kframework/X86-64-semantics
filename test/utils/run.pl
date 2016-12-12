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
my $CC_35="${home}/Install/llvm-3.5.0.release.install/bin/clang-3.5";
my $libnone=$ENV{'LIBNONE'};
#"-fomit-frame-pointer";
#my $redirect = " &> ";


# Customizable inputs
my $help = "";
my $compiler="clang";
my $suffix="clang";
my $arch="64";
my $file="";
my $skip_mcsema="";
my $print="";
my $map="";
my $entry="";
my $incdir="";
my $cfg="";
my $bind="";
my $extract_bc="";
my $reg_assign="";
my $runpass="";
my $stdin_args="";
my $cmd_args="";
my $driver="";

GetOptions (
            "help"          => \$help, 
            "print"         => \$print, 
            "skip_mcsema"   => \$skip_mcsema, 
            "cfg"           => \$cfg, 
            "extract_bc"    => \$extract_bc, 
            "reg_assign"    => \$reg_assign, 
            "bind"           => \$bind, 
            "runpass"      => \$runpass, 
            "compiler:s"    => \$compiler, 
            "home:s"       => \$MCSEMA_HOME, 
            "arch:s"        => \$arch, 
            "map:s"         => \$map, 
            "file:s"        => \$file, 
            "suffix:s"      => \$suffix, 
            "entry:s"       => \$entry, 
            "incdir:s"      => \$incdir, 
            "stdin_args:s"      => \$stdin_args, 
            "driver:s"      => \$driver, 
            "cmd_args:s"      => \$cmd_args, 
            ) or die("Error in command line arguments\n");

if($help) {
  print ("~/Github/binary-decompilation/test/utils/run.pl -home ~/Github/mcsema_new_reg_assign/build/ -file test_28.c -extract_bc -reg_assign -entry main -print -incdir ~/Github/binary-decompilation/test/utils/ \n");
  exit(1);
}

if ("" eq $file) {
  die "ERROR: Provide source file name\n";
}

#Derived paths
my $BIN_DESCEND_PATH="${MCSEMA_HOME}/mc-sema/bin_descend";
my $CFG_TO_BC_PATH="${MCSEMA_HOME}/mc-sema/bitcode_from_cfg/";
my $GCC_ARCH="";
my $BIN_ARCH="";
my $CFGBC_ARCH="";
my $loadso="${ALLIN_HOME}/build/lib/LLVMstack_deconstructor.so";
my $OPTSWITCH="-constprop -ssh" ;
#my $OPTSWITCH="-stack-decons -mem2reg -dce  -early-cse-memssa";
#my $OPTSWITCH="-stack-decons -debug-only=\"stack_deconstructor\"";




if($arch eq "32") {
  $GCC_ARCH="-m32";
  $BIN_ARCH="-march=x86";
  $CFGBC_ARCH="-mtriple=i686-pc-linux-gnu";
} else {
  $GCC_ARCH="-m64";
  $BIN_ARCH="-march=x86-64";
  $CFGBC_ARCH="-mtriple=x86_64-unknown-linux-gnu";
}

my $cfgext=".ida";
if("" ne $bind) {
  $cfgext="";
}

my ($basename, $ext) = split_filename($file);

### Drivers
if("" ne $extract_bc) {
  extract_bc_from_cfg();
  generate_linked_binary("${outdir}${basename}.${suffix}.bc", "${outdir}${basename}.${suffix}.lifted.exe");
  cleanup();
  exit;
}

if("" ne $runpass) {
  run_custom_pass();
  exit;
}

if ("" ne $cfg) {
  generate_binary_from_source();
  generate_cfg();
} else {
  extract_bc_from_cfg();
  generate_linked_binary("${outdir}${basename}.${suffix}.bc", "${outdir}${basename}.${suffix}.lifted.exe");
  cleanup();
}


# Functions
sub generate_binary_from_source {
  print("\nGenerate source binary\n");
  execute("rm -rf ${outdir}${basename}.${suffix}.o ${outdir}${basename}.${suffix}.objdump");
  if("asm" eq $ext) {
    execute("nasm -f elf64 -o ${outdir}${basename}.${suffix}.o $file ;");
  } 
  if("c" eq $ext) {
    execute("${compiler} -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o");
  } 
  if("o" eq $ext) {
    execute("cp  $file  ${outdir}${basename}.${suffix}.o");
  } 
  if("ll" eq $ext) {
    execute("${compiler} -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o");
  } 
  execute("objdump -d ${outdir}${basename}.${suffix}.o 1>${outdir}${basename}.${suffix}.objdump 2>&1");
}


sub generate_linked_binary {
  print("\nGenerate lifted binary\n");
  my $inputbc = shift @_;
  my $outputexe = shift @_;

  execute("rm -rf ${outputexe}");

  #execute("${LLC} ${BIN_ARCH} -filetype=obj -o ${outdir}${basename}.${suffix}.lifted.o ${outdir}${basename}.${suffix}.opt.ll");
  #execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o ${outdir}${basename}.${suffix}.lifted.exe driver_64.c ${outdir}${basename}.${suffix}.lifted.o ${libnone}");
  if("" ne $reg_assign) {
    #execute("${CC_35} -O3 ${GCC_ARCH} $inputbc $MCSEMA_HOME/../drivers/ELF_64_linux.S ${libnone}  -o $outputexe");
    execute("${CC} -O3 ${GCC_ARCH} -I${incdir} ${driver} $inputbc $MCSEMA_HOME/../drivers/ELF_64_linux.S ${libnone}  -o $outputexe");
  } else {
    execute("${CC} ${GCC_ARCH}  -o ${outdir}${basename}.${suffix}.lifted.o -c ${outdir}${basename}.${suffix}.opt.ll");
    execute("${CC}  -g ${GCC_ARCH} -I${incdir} -o ${outdir}${basename}.${suffix}.lifted.exe driver_64.c ${outdir}${basename}.${suffix}.lifted.o ${libnone}");
  }
}

sub generate_cfg {
  print("\nGenerate cfg ($cfgext)\n");

  execute("rm -rf ${outdir}${basename}.${suffix}${cfgext}.cfg ${outdir}${basename}.${suffix}.ida.log");

  #execute("IDA_PATH=${home}/ida-6.95 ${BIN_DESCEND_PATH}/bin_descend_wrapper.py -d ${BIN_ARCH} -func-map=${map} -entry-symbol=${entry} -i=${outdir}${basename}.${suffix}.o"); 
  if("" ne $bind) {
    execute("${BIN_DESCEND_PATH}/bin_descend  ${BIN_ARCH} -d -i=${outdir}${basename}.${suffix}.o -func-map=${map}  -entry-symbol=${entry} &> /tmp/bd.log ");
  } else {
    execute("${home}/ida-6.95/idal64 -B \"-S${BIN_DESCEND_PATH}/get_cfg.py --std-defs ${map} --batch --entry-symbol ${entry} --output ${outdir}${basename}.${suffix}${cfgext}.cfg --debug --debug_output ${outdir}${basename}.${suffix}.ida.log \" ${outdir}${basename}.${suffix}.o "); 
  }
}

###  Generate BC from CFG
sub extract_bc_from_cfg {
  print("\nRunning cfg to bc\n");
  if("" ne $skip_mcsema) {
    return;
  }

  if(-e "${outdir}${basename}.${suffix}${cfgext}.cfg") {
    execute("rm -rf ${outdir}${basename}.${suffix}.bc ${outdir}${basename}.${suffix}.opt.bc ${outdir}${basename}.${suffix}.ll ${outdir}${basename}.${suffix}.opt.ll");

    if("" ne "$reg_assign") {
      execute("${CFG_TO_BC_PATH}/cfg_to_bc -post-analysis=0 ${CFGBC_ARCH}  -i ${outdir}${basename}.${suffix}${cfgext}.cfg  -o ${outdir}${basename}.${suffix}.bc  -entrypoint=${entry} 1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1");
    } else {
      execute("${CFG_TO_BC_PATH}/cfg_to_bc -ignore-unsupported ${CFGBC_ARCH}  -i ${outdir}${basename}.${suffix}${cfgext}.cfg  -o ${outdir}${basename}.${suffix}.bc  -driver=mcsema_main,${entry},raw,return,C 1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1");
    }

    execute("${OPT} -O3    ${outdir}${basename}.${suffix}.bc  -o=${outdir}${basename}.${suffix}.opt.bc"); 
    execute("${LLVMDIS}   ${outdir}${basename}.${suffix}.bc -o=${outdir}${basename}.${suffix}.ll");
    execute("${LLVMDIS}   ${outdir}${basename}.${suffix}.opt.bc -o=${outdir}${basename}.${suffix}.opt.ll");
  } else {
    print "CFG Missing : ${outdir}${basename}.${suffix}${cfgext}.cfg\n\n" ;
    exit(1);
  }
}

### Run my passes
sub run_custom_pass {
  print("\nRunning custom passes\n");

  execute("rm -rf ${outdir}${basename}.${suffix}.trans.bc ${outdir}${basename}.${suffix}.trans.opt.bc ${outdir}${basename}.${suffix}.trans.ll ${outdir}${basename}.${suffix}.trans.opt.ll");

  execute("${OPT} -load=${loadso} ${OPTSWITCH} ${outdir}${basename}.${suffix}.ll  -o ${outdir}${basename}.${suffix}.trans.bc  2>  ${outdir}${basename}.${suffix}.pass.log"); 
  #${ALLIN} ${outdir}${basename}.${ext}.ll -o ${outdir}${basename}.${ext}.trans.bc 2>  ${outdir}${basename}.${ext}.pass.log
  execute("${OPT} -O3  ${outdir}${basename}.${suffix}.trans.bc -o=${outdir}${basename}.${suffix}.trans.opt.bc");
  execute("${LLVMDIS} ${outdir}${basename}.${suffix}.trans.bc -o ${outdir}${basename}.${suffix}.trans.ll");
  execute("${LLVMDIS} ${outdir}${basename}.${suffix}.trans.opt.bc -o ${outdir}${basename}.${suffix}.trans.opt.ll");

  print("\nRunning checks on pass \n");
  if (compare("${outdir}${basename}.${suffix}.pass.log","${outdir}${basename}.${suffix}.pass.log.gold") == 0) {
    print("\t${basename}: Transformations Passed\n");
    execute("rm -rf ${outdir}${basename}.${suffix}.pass.log");
  } else {
    print("\t${basename}: Transformations Failed\n");
    execute("diff ${outdir}${basename}.${suffix}.pass.log ${outdir}${basename}.${suffix}.pass.log.gold");
  }

  generate_linked_binary("${outdir}${basename}.${suffix}.trans.bc", "${outdir}${basename}.${suffix}.trans.lifted.exe" );

  ## Check Output
  execute("echo ${stdin_args} | ./${outdir}${basename}.${suffix}.trans.lifted.exe ${cmd_args} 1>${outdir}after.trans.out 2>&1");
  execute("echo ${stdin_args} | ./${outdir}${basename}.${suffix}.lifted.exe ${cmd_args} 1>${outdir}before.trans.out 2>&1");

  if(0 == compare("${outdir}before.trans.out", "${outdir}after.trans.out")) {
    print("\t${basename}: Output Passed\n");
    #execute("rm -rf ./${outdir}${basename}.${suffix}.trans.lifted.exe");
    #execute("rm -rf ${outdir}${basename}.${suffix}.trans.opt.bc");
    execute("rm -rf ${outdir}after.trans.out");
  } else {
    print("\t${basename}: Output Failed\n");
    execute("diff ${outdir}before.trans.out ${outdir}after.trans.out");
  }

  ## Generate allexe and check output
  #execute("rm -rf 	./${outdir}*.allexe");
  #${LLVMAS} ${outdir}${PROG_PREFIX}.${ext}.trans.ll -o ${outdir}${PROG_PREFIX}.${ext}.trans.bc
  #${CC} -m64 -I${INCLUDE_DIR} -emit-llvm -c driver_64.c -o ${outdir}driver_64.bc
  #${BC2ALLVM} ${outdir}driver_64.bc ${outdir}${PROG_PREFIX}.${ext}.trans.bc -o ${outdir}${PROG_PREFIX}.${ext}.trans.allexe

  #@-echo ${STDIN_ARGS} |  ./${outdir}${PROG_PREFIX}.${ext}.trans.allexe ${CMD_ARGS} > ${outdir}after.trans.out	
  #@-echo ${STDIN_ARGS} |  ./${outdir}${PROG_PREFIX}.${ext}.lifted.exe ${CMD_ARGS} > ${outdir}before.trans.out	

  #@if diff ${outdir}before.trans.out  ${outdir}after.trans.out  > /dev/null; then \
  #echo "  ${PROG_PREFIX}: ALLEY Output Passed"; \
  #	rm -rf  ./${outdir}*.exe   ${outdir}after.trans.out ${outdir}*.allexe ; \
  #else \
  #		echo "  ${PROG_PREFIX}: ALLEY Output Failed"; \
  #	fi 
}


sub cleanup {
  print("Cleanup\n");
  return;
  # Clean Up
  execute("rm -rf  ${outdir}${basename}.${suffix}.lifted.o");  
  execute("rm -rf  ${outdir}${basename}.${suffix}.o"); 
  execute("rm -rf  ${outdir}${basename}.${suffix}.bc"); 
  execute("rm -rf  ${outdir}${basename}.${suffix}.opt.bc");
}

# Utilities
sub execute {
  my $args = shift @_;
  if("" ne $print) {
    print "$args \n";
  }
  system("$args");
}

sub display {
  my $args = shift @_;
  print "\t$args \n";
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

# Add all the variables we wanted to dump for inspect
sub printall {
  print "\n\n";
  print "\n\n";
}
