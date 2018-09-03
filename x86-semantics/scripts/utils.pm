package utils;

use File::Compare;
use File::Basename;
use strict;
use File::Path qw(make_path remove_tree);
use POSIX;
use File::Find;
use Term::ANSIColor;

use bigint;
use bigint qw/hex oct/;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT =
  qw(createDir execute info passInfo failInfo warnInfo display toHex toDec printwithspaces dec2bin signExtend float2binary bin2hex split_filename trim debugInfo removequotes joinarray printMap printArray myGrep max min scalarToArray arrayToMap printMapArray belongsTo belongsTo3 compareMaps initThreads numlines arrayAllSame diffStrings compareMaps compareMapArray);
@EXPORT_OK = qw();

our $home = $ENV{'HOME'};

sub printStringDiff {
    my ( $s1, $s2, $message ) = @_;

    if ( $s1 eq $s2 ) {
        return;
    }
    print "\n\n$message\n";
    my @s1 = split( //, $s1 );
    my @s2 = split( //, $s2 );
    while (@s1) {

        if ( defined $s1[0] and defined $s2[0] ) {
            if ( $s1[0] eq $s2[0] ) {
                print shift @s1;
            }
            else {
                print color("red"), shift @s1, color("reset");
            }
        }
        elsif ( defined $s1[0] ) {
            print color("red"), shift @s1, color("reset");
        }
        shift @s2;
    }
    print "\n";

    @s1 = split( //, $s1 );
    @s2 = split( //, $s2 );
    while (@s2) {

        if ( defined $s2[0] and defined $s1[0] ) {
            if ( $s2[0] eq $s1[0] ) {
                print shift @s2;
            }
            else {
                print color("red"), shift @s2, color("reset");
            }
        }
        elsif ( defined $s2[0] ) {
            print color("red"), shift @s2, color("reset");
        }
        shift @s1;
    }
    print "\n";
}

sub arrayAllSame {
    my $arr_ref = shift @_;
    my @arr     = @{$arr_ref};

    if ( scalar(@arr) <= 1 ) {
        return 1;
    }
    my $elem = $arr[0];
    for my $other (@arr) {
        if ( $elem != $other ) {
            return 0;
        }
    }
    return 1;
}

sub numlines {
    my $file = shift @_;

    open( my $fp, "<", "$file" ) or die "Grep: Can't open::$file:: $!";
    my @lines = <$fp>;
    close $fp;
    return scalar(@lines);
}

sub initThreads {
    my $num_of_threads = shift @_;
    my @initThreads;
    for ( my $i = 1 ; $i <= $num_of_threads ; $i++ ) {
        push( @initThreads, $i );
    }
    return @initThreads;
}

sub scalarToArray {
    my $scalar = shift @_;
    my $delim  = shift @_;

    my @arr = split( "$delim", $scalar );
    return \@arr;
}

sub compareMaps {
    my $map1_ref = shift @_;
    my $map2_ref = shift @_;
    my $debug    = shift @_;
    my $msg      = shift @_;

    my %map1 = %{$map1_ref};
    my %map2 = %{$map2_ref};

    my ( $present1, $absent1 ) = belongsTo( $map1_ref, $map2_ref, $debug );
    my ( $present2, $absent2 ) = belongsTo( $map2_ref, $map1_ref, $debug );

    if ( $present1 != $present2 ) {
        failInfo("compareMaps failed1");
    }
    if (   ( scalar( keys %{$map1_ref} ) != $absent1 + $present1 )
        or ( scalar( keys %{$map2_ref} ) != $absent2 + $present1 ) )
    {
        failInfo("compareMaps failed2");
    }

    print "|"
      . $msg . "|"
      . scalar( keys %{$map1_ref} ) . "|"
      . scalar( keys %{$map2_ref} ) . "|"
      . $absent1 . "|"
      . $absent2 . "|"
      . $present1 . "|\n";

    #print "Map1: " . scalar( keys %{$map1_ref} ) . "\n";
    #print "Map2: " . scalar( keys %{$map2_ref} ) . "\n";
    #print "Map1 - Map2: " . $absent1 . "\n";
    #print "Map2 - Map1: " . $absent2 . "\n";
    #print "Map2 & Map1: " . $present1 . "\n";
}

sub belongsTo3 {
    my $map1_ref = shift @_;
    my $map2_ref = shift @_;
    my $map3_ref = shift @_;
    my $debug    = shift @_;

    my %map1 = %{$map1_ref};
    my %map2 = %{$map2_ref};
    my %map3 = %{$map3_ref};

    my $supp   = 0;
    my $unsupp = 0;
    for my $key ( sort keys %map1 ) {
        if ( exists $map2{$key} and exists $map3{$key} ) {
            if ( defined($debug) and 1 == $debug ) {
                print "SUPP:$key\n";
            }
            $supp++;
        }
        else {
            if ( defined($debug) and 1 == $debug ) {
                print "US:$key\n";
            }
            $unsupp++;
        }
    }

    return ( $supp, $unsupp );
}

sub belongsTo {
    my $map1_ref = shift @_;
    my $map2_ref = shift @_;
    my $debug    = shift @_;

    my %map1 = %{$map1_ref};
    my %map2 = %{$map2_ref};

    my $supp   = 0;
    my $unsupp = 0;
    for my $key ( sort keys %map1 ) {
        if ( exists $map2{$key} ) {
            if ( defined($debug) and 1 == $debug ) {

                #print "SUPP:$key\n";
            }
            $supp++;
        }
        else {
            if ( defined($debug) and 1 == $debug ) {
                print "US:$key\n";
            }
            $unsupp++;
        }
    }

    if ( defined($debug) and 1 == $debug ) {
        print "======\n";
    }

    return ( $supp, $unsupp );
}

sub arrayToMap {
    my $array_ref = shift @_;
    my $keydelim  = shift @_;

    my @array = @{$array_ref};
    my %map   = ();

    for my $item (@array) {

        chomp $item;
        trim($item);

        if ( $item eq "" ) {
            next;
        }
        my @splt = split( "$keydelim", $item );

        #print $splt[0] . " %% " . $splt[1];
        $map{ trim( $splt[0] ) } = trim( $splt[1] );
    }
    return \%map;
}

sub createDir {
    my $args = shift @_;
    make_path(
        $args,
        {
            chmod => 0777,
        }
    );
}

sub execute {
    my $args     = shift @_;
    my $show_cmd = shift @_;

    if ( defined($show_cmd) ) {
        print "$args \n";
    }
    if ( defined($show_cmd) and $show_cmd == 2 ) {
    }
    else {
        system("$args");
    }
}

sub info {
    my $args = shift @_;
    system("echo  Info:\e[4m\e[1m\e[34m$args\e[0m");
}

sub passInfo {
    my $args = shift @_;
    system("echo  Passed:\e[4m\e[1m\e[92m$args\e[0m");
}

sub failInfo {
    my $args = shift @_;
    system("echo Failed:\e[4m\e[1m\e[91m$args\e[0m");
}

sub warnInfo {
    my $args = shift @_;
    system("echo Warn:  \e[4m\e[1m\e[35m$args\e[0m");
}

sub debugInfo {
    my $args  = shift @_;
    my $print = shift @_;
    if ( defined($print) and 1 == $print ) {
        print("echo Debug:  $args");
    }
}

sub display {
    my $args = shift @_;
    print "\t$args \n";
}

sub max {
    my $arg1 = shift @_;
    my $arg2 = shift @_;
    if ( $arg1 > $arg2 ) {
        return $arg1;
    }
    return $arg2;
}

sub min {
    my $arg1 = shift @_;
    my $arg2 = shift @_;
    if ( $arg1 < $arg2 ) {
        return $arg1;
    }
    return $arg2;
}

sub myGrep {
    my $pattern     = shift @_;
    my $antipattern = shift @_;
    my $filename    = shift @_;
    my $debug       = shift @_;

    if ( defined($debug) ) {
        print "$filename" . " " . $pattern . "\n";
    }
    open( my $fp, "<", "$filename" ) or die "Grep: Can't open::$filename:: $!";
    my @lines = <$fp>;
    close $fp;
    my @returnInfo = ();

    for my $line (@lines) {
        if ( $line =~ m/$pattern/ ) {
            if ( $line =~ m/$antipattern/ ) {

            }
            else {
                #print $pattern. "::" . $antipattern . "::" . $line . "\n";
                push @returnInfo, $line;
            }
        }
    }

    return \@returnInfo;
}

sub printMap {
    my $hashmap_ref = shift @_;
    my $msg         = shift @_;
    my $debug       = shift @_;

    if ( defined($debug) and $debug == 0 ) {
        return;
    }
    my %hashmap = %{$hashmap_ref};
    print "$msg" . "\n";
    for my $key ( sort keys %hashmap ) {
        print "$key" . " -> " . $hashmap{$key} . "\n";
    }

    print "\n";
}

sub printMapArray {
    my $hashmap_ref = shift @_;
    my $msg         = shift @_;
    my $keysOnly    = shift @_;
    my $debug       = shift @_;

    my %hashmap = %{$hashmap_ref};
    print "$msg" . "\n";
    for my $key ( sort keys %hashmap ) {
        print "$key" . " -> " . "\n";
        if ( defined($keysOnly) and 1 == $keysOnly ) {
        }
        else {
            printArray( \@{ $hashmap{$key} }, "", $debug );
        }
    }

    print "\n";
}

sub printArray {
    my $arr_ref = shift @_;
    my $msg     = shift @_;
    my $debug   = shift @_;

    if ( defined($debug) and $debug == 0 ) {
        return;
    }

    my @arr = @{$arr_ref};
    print "$msg" . "\n";
    my $index = 0;
    for my $elem (@arr) {
        print "\t" . $index . ":" . $elem . "\n";
        $index++;
    }

    print "\n";
}

# Sign extend a hex value.
sub signExtend {

    my $hex = shift @_;
    my $bit = shift @_;

    my @hexstr        = split( //, $hex );
    my $msb4bits      = $hexstr[0];
    my $n             = hex($msb4bits);
    my $ans           = "" . $hex;
    my $fourBitchunks = $bit / 4;
    my $tobefilled    = $fourBitchunks - scalar(@hexstr);
    my $filler        = "0";
    if ( $n >= 8 ) {
        $filler = "f";
    }

    for ( my $i = 0 ; $i < $tobefilled ; $i++ ) {
        $ans = $filler . $ans;
    }

    return $ans;
}

# convert hex to decimal
sub toDec {

    my $hex = shift @_;
    my $bit = shift @_;
    my $ans = "";

    my @hexstr = split( //, $hex );
    my $smin = pow( 2, $bit - 1 );

    my $msb4bits = $hexstr[0];
    my $n        = hex($msb4bits);
    if ( $n >= 8 ) {
        my @rest     = @hexstr[ 1 .. @hexstr - 1 ];
        my $restHex  = join( "", @rest );
        my $addend   = hex( ( $n - 8 ) . $restHex );
        my $signed   = $addend - $smin;
        my $unsigned = hex($hex);

        #print $addend."\n";
        return $addend - $smin, hex($hex);
    }
    else {
        return ( hex($hex), hex($hex) );
    }
}

# Convert a binary string to hex
# Assume length(bin) % 4 -== 0
sub bin2hex {
    my $bin = shift @_;

    #print( "Bin: " . printwithspaces( $bin, 8 ) . "\n" );
    my %hmap = (
        "0000" => "0",
        "0001" => "1",
        "0010" => "2",
        "0011" => "3",
        "0100" => "4",
        "0101" => "5",
        "0110" => "6",
        "0111" => "7",
        "1000" => "8",
        "1001" => "9",
        "1010" => "a",
        "1011" => "b",
        "1100" => "c",
        "1101" => "d",
        "1110" => "e",
        "1111" => "f",
    );

    my @arr  = split( //, $bin );
    my $len  = length($bin);
    my $temp = "";
    my $ans  = "";
    for ( my $i = 0 ; $i < $len ; $i++ ) {
        if ( $i != 0 and ( $i + 1 ) % 4 == 0 ) {
            $temp = $temp . $arr[$i];

            #print( "Temp: " . $temp . " i: " . $i . "\n" );
            $ans  = $ans . $hmap{$temp};
            $temp = "";
            next;
        }
        $temp = $temp . $arr[$i];
    }

    return $ans;
}

sub float2binary {
    my $num = shift @_;
    my $bit = shift @_;
    my $ans = "";

    my $sign = "0";

    my $offset       = 127;
    my $exponentSize = 8;
    my $mantisaSize  = 23;
    my $roundingReq  = "";
    if ( 64 == $bit ) {
        $offset       = 1023;
        $exponentSize = 11;
        $mantisaSize  = 52;
    }

    my $encoding     = "";
    my $hex          = "";
    my $E            = "";
    my $biasedoffset = "";
    my $significand  = "";

    # Handling special values.
    if ( $num eq "0.0" or $num eq "-0.0" ) {
        $sign = "0";
        if ( $num eq "-0.0" ) {
            $sign = "1";
        }
        $E            = 0;
        $biasedoffset = dec2bin( $E, $exponentSize );
        $significand  = dec2bin( 0, $mantisaSize );
        $encoding     = $sign . $biasedoffset . $significand;
        $hex          = sprintf( '%X', oct("0b$encoding") );
        return (
            $sign . " "
              . $biasedoffset . " "
              . $significand . " "
              . $roundingReq,
            $hex
        );
    }

    if ( $num eq "inf" or $num eq "-inf" ) {
        $sign = "0";
        if ( $num eq "-inf" ) {
            $sign = "1";
        }
        $E            = 255;
        $biasedoffset = dec2bin( $E, $exponentSize );
        $significand  = dec2bin( 0, $mantisaSize );
        $encoding     = $sign . $biasedoffset . $significand;
        $hex          = sprintf( '%X', oct("0b$encoding") );
        return (
            $sign . " "
              . $biasedoffset . " "
              . $significand . " "
              . $roundingReq,
            $hex
        );
    }

    if ( $num < 0 ) {
        $sign = "1";
        $num  = -1 * $num;
    }
    my @arr = split( /\./, $num );

    #print( "num: " . $num, " arr: " . @arr ."\n");
    my ( $integralpart, $fractionpart ) = ( 0, 0.0 );
    if ( $arr[0] ne "" ) {
        $integralpart = $arr[0];
    }
    if ( $arr[1] ne "" ) {
        $fractionpart = "0." . $arr[1];

    }

    print(
        "integralpart: " . $integralpart,
        " fractionpart: " . $fractionpart . "\n"
    );
    my $bin_integral = sprintf( "%b", $integralpart );
    my $bin_fraction = "";

    # Compute binary equivalent of fractional part.
    for ( my $i = 0 ; $i < $bit ; $i++ ) {

        #print("$fractionpart\n\n");

        my $temp = $fractionpart * 2;

        #print("$temp\n\n");

        if ( 0 == $temp ) {
            $bin_fraction = $bin_fraction . "0";
            last;
        }
        my $inttemp = int($temp);
        $bin_fraction = $bin_fraction . $inttemp;

        #print( "temp: " . $temp . " inttemp: ",
        #    $inttemp . "bin_fraction: " . $bin_fraction . "\n" );
        $fractionpart = $temp - $inttemp;
    }

    # Find the rightmot 1.
    my $bin = $bin_integral . "." . $bin_fraction;
    print( "De-Normalized: " . $bin . "\n" );

    @arr = split( //, $bin );

    my $foundOne = 0;
    my $locOne   = 0;
    my $locDot   = 0;

    for ( my $i = 0 ; $i < scalar(@arr) ; $i++ ) {
        if ( $foundOne == 0 and $arr[$i] == "1" ) {
            $foundOne = 1;
            $locOne   = $i;

            #$newbin   = "1.";
            next;
        }
        if ( $arr[$i] eq "." ) {
            $locDot = $i - 1;
            next;
        }
        if ( $arr[$i] ne "." and $foundOne == 1 ) {

            #$newbin      = $newbin . $arr[$i];
            $significand = $significand . $arr[$i];

        }
    }

    # Calculating exponent
    my $e = ( $locDot - $locOne );
    if ( $locOne > $locDot ) {
        $e = $e + 1;
    }
    $E = $offset + $e;

    # Calculating binary equivalent of $E
    $biasedoffset = dec2bin( $E, $exponentSize );

    # Compute significand binary shaped to to 32/64.
    #print(  $significand. " "
    #      . length($significand) . " "
    #      . $mantisaSize
    #      . "\n" );
    my $lenSig = length($significand);
    if ( $lenSig > $mantisaSize ) {
        $significand = substr( $significand, 0, $mantisaSize );
        $roundingReq = "(RR)";
    }
    else {
        for ( my $i = 0 ; $i < $mantisaSize - $lenSig ; $i++ ) {
            $significand = $significand . "0";
        }
    }

    print( "Normalized: " . "1." . $significand . " 2^(" . $e . ")" . "\n" );

    $encoding = $sign . $biasedoffset . $significand;
    $hex = sprintf( '%X', oct("0b$encoding") );

    return (
        $sign . "-"
          . $biasedoffset . "-"
          . printwithspaces( $significand, 8 ) . " "
          . $roundingReq,
        $hex
    );
}

# Convert a decimal number to `bit` width binary
sub dec2bin {
    my $num = shift @_;
    my $bit = shift @_;
    my $ans = "";

    for ( my $i = 0 ; $i < $bit ; $i++ ) {
        if ( $num & 1 ) {
            $ans = "1" . $ans;
        }
        else {
            $ans = "0" . $ans;
        }
        $num = $num >> 1;
    }
    return $ans;
}

# Convert a decimal number to `bit` width hex
sub toHex {
    my $num = shift @_;
    my $bit = shift @_;

    if ( $num !~ m/^[-]?\d+$/ ) {
        return "";
    }

    if ( 0 != $bit % 4 ) {
        return $num;
    }

    my @hmap = (
        "0", "1", "2", "3", "4", "5", "6", "7",
        "8", "9", "a", "b", "c", "d", "e", "f"
    );
    my $chunks = $bit / 4;

    my $ans = "";
    for ( my $i = 0 ; $i < $chunks ; $i++ ) {
        my $n = $num & 15;
        $ans = $hmap[$n] . $ans;
        $num = $num >> 4;
    }
    return $ans;
}

sub printwithspaces {
    my $value = shift @_;
    my $space = shift @_;

=pod
    print(  "Value: "
          . $value
          . " Length: "
          . length($value)
          . " Space:"
          . $space
          . "\n" );

=cut

    my $ans = "";
    my $len = length($value);
    if ( $len % $space != 0 ) {
        my $rem = $len % $space;
        print( "Rem: " . $rem . "\n" );
        my $leadingStr = substr( $value, 0, $rem );
        $ans = $leadingStr . " ";
        $value = substr( $value, $rem, $len - $rem );
    }

=pod
    print(  "Value: "
          . $value
          . " Length: "
          . length($value)
          . " Ans:"
          . $ans
          . "\n" );
=cut

    my @arr = split( //, $value );
    for ( my $i = 0 ; $i < scalar(@arr) ; $i++ ) {
        if ( $i != 0 and ( $i % $space ) == 0 ) {
            $ans = $ans . " " . $arr[$i];
        }
        else {
            $ans = $ans . $arr[$i];
        }
    }
    return $ans;
}

sub split_filename {
    my $arg   = shift @_;
    my $debug = shift @_;

    if ( "" eq $arg ) {
        return ( "", "" );
    }
    my @components = split( /\//, ${arg} );
    my $filename   = $components[ @components - 1 ];
    my $dir        = join "/", @components[ 0 .. @components - 2 ];
    if ( $dir ne "" ) {
        $dir = $dir . "/";
    }

    @components = split( /\./, ${filename} );
    my @slice = @components[ 0 .. @components - 2 ];
    my $file  = join ".", @slice;
    my $ext   = $components[ @components - 1 ];

    if ( defined($debug) and 1 == $debug ) {
        print(
            "\n%Dir%" . $dir . "\n%File%" . $file . "\n%Ext%" . $ext . "\n" );
    }
    return ( $dir, $file, $ext );
}

sub trim {
    my $arg   = shift @_;
    my $extra = shift @_;

    $arg =~ s/^\s+|\s+$//g;

    if ( defined($extra) ) {
        $arg =~ s/$extra//g;
    }
    return $arg;
}

sub removequotes {
    my $arg = shift @_;

    $arg =~ s/"//g;
    return $arg;
}

## Check if number of keys is same
## and keys are same
sub compareMap {
    my $map1_ref = shift @_;
    my $map2_ref = shift @_;

    my %map1 = %{$map1_ref};
    my %map2 = %{$map2_ref};

    if ( scalar( keys %map1 ) != scalar( keys %map2 ) ) {
        return 0;
    }

    for my $key ( keys %map1 ) {
        if ( !exists $map2{$key} ) {
            return 0;
        }
    }

    return 1;
}

## Moreover the array count is the same
sub compareMapArray {
    my $map1_ref = shift @_;
    my $map2_ref = shift @_;

    my %map1 = %{$map1_ref};
    my %map2 = %{$map2_ref};

    my $cmp = compareMap( $map1_ref, $map2_ref );
    if ( $cmp == 0 ) {

        return 0;
    }

    for my $key ( keys %map1 ) {
        my @arr1 = $map1{$key};
        my @arr2 = $map1{$key};
        if ( scalar(@arr1) != scalar(@arr2) ) {
            return 0;
        }
    }

    return 1;
}

1;
