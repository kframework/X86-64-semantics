#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
#use File::chdir;
use Cwd;
use File::Path qw(make_path remove_tree);
use Env;


my $home="$ENV{HOME}";
my $case="";
my $output="";
my $bin="";
my $stdin_filename="";
my $options="";
my $golden="";
my $diff="";
my $execsafely="";
my $help="";
my $fcmp = "";
my $rlimit = "";
my $alimit = "";
my $timeit = "";
my $current=getcwd();

GetOptions (
            "help"            => \$help, 
            "case:s"          => \$case, 
            "output:s"        => \$output, 
            "bin:s"           => \$bin, 
            "stdin_filename:s"    => \$stdin_filename, 
            "options:s"     => \$options, 
            "golden:s"          => \$golden, 
            "diff:s"            => \$diff, 
            "execsafely:s"         => \$execsafely, 
            "fcmp:s"              => \$fcmp, 
            "rlimit:s"            => \$rlimit, 
            "alimit:s"            => \$alimit, 
            "timeit:s"            => \$timeit, 
            ) or die("Error in command line arguments\n");
if($help) {
  print ("run.pl   \n");
  exit(1);
}

if("" ne $rlimit) {
  $rlimit = "-r $rlimit";
} 

if("" ne $alimit) {
  $alimit = "-a $rlimit";
} 

if( -e ${bin}) {
  execute("echo", 0);      
  execute("echo \"=========================================\"", 0);      
  execute("echo $current/Output/$case", 0);      
  execute("echo", 0);      
  execute("${execsafely} -t \"${timeit}\" 500 ${stdin_filename} ${current}/${output} $current/${bin} ${options}",1);      

  if(-e "${current}/${golden}") {
    execute("${fcmp} ${rlimit} ${alimit} $current/${golden} ${current}/${output} > ${current}/${diff} 2>&1", 1);      
    if(-s $diff) {
      execute("echo Diff: $case", 0);      
      execute("diff $current/${golden}  ${current}/${output} | head -n 50 ", 0);      
    }
  } else {
    execute("echo \"GOLDEN Missing\"", 0);
  }
} 

sub execute {
  my $args = shift @_;
  my $toprint = shift @_;

  if($toprint == 1) {
    print "$args \n";
  }
  system("$args");
}
