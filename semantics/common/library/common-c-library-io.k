module COMMON-C-LIBRARY-IO-SORTS
  syntax FD
  syntax FauxFD
  syntax FPos
  syntax Str
endmodule


module COMMON-C-LIBRARY-IO-SYNTAX
  imports COMMON-C-LIBRARY-IO-SORTS

  imports INT
  imports K-IO

  syntax KItem ::= writeFD(FD, Int)
  syntax KItem ::= writeFD(FD, String)
  syntax KItem ::= unget(FD, String)
  syntax KItem ::= readFD(FauxFD, Int)
  syntax KItem ::= flush(FD)
  syntax KItem ::= "flushAll"
  syntax KItem ::= tell(FD)
  syntax KItem ::= seek(FD, Int, SeekWhence)
  syntax KItem ::= close(FauxFD)
  syntax KItem ::= setBuf(FD, BufMode, Int)

  syntax SeekWhence ::= "seekSet" | "seekCur" | "seekEnd"
  syntax BufMode ::= "fullBuf" | "lineBuf" | "noBuf"
  syntax LastFileOp ::=
    "noLastOp" | "outputOp" | "flushOp" | "seekOp" | "inputOp"

  syntax FD ::= Int
  syntax FauxFD ::= FD | String
  syntax FPos ::= fpos(/*file path*/ String, /* position */ Int)
  syntax Str ::= str(String)

  // Various KResult subsorts
  syntax KResult ::= FauxFD | FPos | Str

  // The following functions reflect various IO related os settings.
  // TODO: maybe move to their own module.
  syntax Int ::= "bufSiz" [function]
  syntax Int ::= getErrno(IOError) [function]
endmodule


module COMMON-C-LIBRARY-IO
  imports COMMON-C-LIBRARY-IO-SYNTAX
  imports COMMON-C-LIBRARY-UTILS-SYNTAX
  imports COMMON-ERROR-SYNTAX
  imports COMMON-CONFIGURATION

  rule writeFD(FD::FD, N:Int) => writeFD(FD, chrChar(N %Int 256))
       [structural]
  // Line buffered.
  rule <k> writeFD(FD::FD, S':String) => .K ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S') </pos>
       <write-buffer> S:String => S +String S' </write-buffer>
       <read-buffer> RS:String </read-buffer>
       <buffer-mode> lineBuf </buffer-mode>
       <feof> Eof:Bool </feof>
       <last-op> Op:LastFileOp => outputOp </last-op>
       requires findChar(S', "\n", 0) ==Int -1
            andBool notBool (Op ==K inputOp andBool (Eof impliesBool (RS =/=String "")))
       [observable]
  rule <k> writeFD(FD::FD, S':String) => flush(FD) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S') </pos>
       <write-buffer> S:String => S +String S' </write-buffer>
       <read-buffer> RS:String </read-buffer>
       <buffer-mode> lineBuf </buffer-mode>
       <feof> Eof:Bool </feof>
       <last-op> Op:LastFileOp => outputOp </last-op>
       requires findChar(S', "\n", 0) =/=Int -1
            andBool notBool (Op ==K inputOp andBool (Eof impliesBool (RS =/=String "")))
       [observable]
  // Fully buffered.
  rule <k> writeFD(FD::FD, S':String) => .K ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S') </pos>
       <write-buffer> S:String => S +String S' </write-buffer>
       <read-buffer> RS:String </read-buffer>
       <buffer-mode> fullBuf </buffer-mode>
       <buffer-size> N:Int </buffer-size>
       <feof> Eof:Bool </feof>
       <last-op> Op:LastFileOp => outputOp </last-op>
       requires lengthString(S +String S') <Int N
            andBool notBool (Op ==K inputOp andBool (Eof impliesBool (RS =/=String "")))
       [observable]
  rule <k> writeFD(FD::FD, S':String) => flush(FD) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S') </pos>
       <write-buffer> S:String => S +String S' </write-buffer>
       <read-buffer> RS:String </read-buffer>
       <buffer-mode> fullBuf </buffer-mode>
       <buffer-size> N:Int </buffer-size>
       <feof> Eof:Bool </feof>
       <last-op> Op:LastFileOp => outputOp </last-op>
       requires lengthString(S +String S') >=Int N
            andBool notBool (Op ==K inputOp andBool (Eof impliesBool (RS =/=String "")))
       [observable]
  // No buffer.
  rule <k> writeFD(FD::FD, S':String) => flush(FD) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S') </pos>
       <write-buffer> S:String => S +String S' </write-buffer>
       <read-buffer> RS:String </read-buffer>
       <buffer-mode> noBuf </buffer-mode>
       <feof> Eof:Bool </feof>
       <last-op> Op:LastFileOp => outputOp </last-op>
       requires notBool (Op ==K inputOp andBool (Eof impliesBool (RS =/=String "")))
       [observable]
  rule <k> (.K => error(ioError("Stream input operation followed by an output operation without an intervening call to a file positioning function.")))
            ~> writeFD(FD::FD, _:String)
       ...</k>
       <fid> FD </fid>
       <feof> Eof:Bool </feof>
       <read-buffer> RS:String </read-buffer>
       <last-op> inputOp </last-op>
       requires Eof impliesBool (RS =/=String "")
       [structural]

  // TODO(chathhorn): need separate unget buffer.
  rule <k> unget(FD::FD, S':String) => .K ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos -Int 1 </pos>
       <next-byte> _ => .K </next-byte>
       <read-buffer> S:String => S' +String S </read-buffer>
       [observable]

  rule <k> readFD(FD::FD, N::Int) => flushAll ~> readFD'(FD, N) ...</k>
       <fid> FD </fid>
       <buffer-mode> noBuf </buffer-mode>
       [structural]
  rule <k> readFD(FD::FD, N::Int) => readFD'(FD, N) ...</k>
       <fid> FD </fid>
       <buffer-mode> Mode::BufMode </buffer-mode>
       requires Mode =/=K noBuf
       [structural]

  syntax KItem ::= "readFD'" "(" FauxFD "," Int ")"
  rule <k> readFD'(FD::FD, N::Int) => str(substrString(S, 0, N)) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int N </pos>
       <read-buffer> S:String => substrString(S, N, lengthString(S)) </read-buffer>
       <last-op> Op:LastFileOp => inputOp </last-op>
       // don't compare with "" in order to only treat string sort
       requires lengthString(S) >=Int N
            andBool Op =/=K outputOp
       [observable]
  rule <k> readFD'(FD::FD, N::Int) => str(S) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S) </pos>
       <feof> Eof:Bool </feof>
       <ferror> Err:Int </ferror>
       <read-buffer> S:String => "" </read-buffer>
       <last-op> Op:LastFileOp => inputOp </last-op>
       requires lengthString(S) <Int N
            andBool (Eof orBool Err =/=Int 0)
            andBool Op =/=K outputOp
       [observable]
  rule <k> readFD'(FD:String, N::Int) => str(S) ...</k>
       <fid> FD </fid>
       <pos> Pos:Int => Pos +Int lengthString(S) </pos>
       <feof> false => true </feof>
       <ferror> 0 </ferror>
       <read-buffer> S:String => "" </read-buffer>
       <last-op> Op:LastFileOp => inputOp </last-op>
       requires lengthString(S) <Int N
            andBool Op =/=K outputOp
       [observable]
  rule <k> (.K => fillBuffer(FD)) ~> readFD'(FD:Int, N::Int) ...</k>
       <fid> FD </fid>
       <feof> false </feof>
       <ferror> 0 </ferror>
       <read-buffer> S:String </read-buffer>
       requires lengthString(S) <Int N
       [structural]
  rule <k> (.K => error(ioError("Stream output operation followed by an input operation without an intervening call to fflush or a file positioning function.")))
            ~> readFD'(FD::FD, N::Int)
       ...</k>
       <fid> FD </fid>
       <last-op> outputOp </last-op>
       [structural]

  syntax KItem ::= fillBuffer(FD)
  rule <k> fillBuffer(FD::FD) => flushAll ~> fillBuffer'(FD) ...</k>
       <fid> FD </fid>
       <buffer-mode> lineBuf </buffer-mode>
       [structural]
  rule <k> fillBuffer(FD::FD) => fillBuffer'(FD) ...</k>
       <fid> FD </fid>
       <buffer-mode> Mode::BufMode </buffer-mode>
       requires Mode =/=K lineBuf
       [structural]

  syntax KItem ::= "fillBuffer'" "(" FD ")"
  rule <k> fillBuffer'(FD:Int) ...</k>
       <fid> FD </fid>
       <next-byte> .K => #getc(FD) </next-byte>
       [structural]
  rule <k> fillBuffer'(FD:Int) ...</k>
       <fid> FD </fid>
       <next-byte> #EOF => -1 </next-byte>
       [structural]
  rule <k> fillBuffer'(FD::FD) => .K ...</k>
       <fid> FD </fid>
       <next-byte> -1 </next-byte>
       <feof> _ => true </feof>
       [structural]
  // Line buffered.
  rule <k> fillBuffer'(FD::FD) ...</k>
       <fid> FD </fid>
       <next-byte> Byte:Int => .K </next-byte>
       <read-buffer> S:String => S +String chrChar(Byte) </read-buffer>
       <buffer-mode> lineBuf </buffer-mode>
       requires Byte =/=Int ordChar("\n")
            andBool Byte =/=Int -1
       [structural]
  rule <k> fillBuffer'(FD::FD) => .K ...</k>
       <fid> FD </fid>
       <next-byte> Byte:Int => .K </next-byte>
       <read-buffer> S:String => S +String chrChar(Byte) </read-buffer>
       <buffer-mode> lineBuf </buffer-mode>
       requires Byte ==Int ordChar("\n")
       [structural]
  // Fully buffered.
  rule <k> fillBuffer'(FD::FD) ...</k>
       <fid> FD </fid>
       <next-byte> Byte:Int => .K </next-byte>
       <read-buffer> S:String => S +String chrChar(Byte) </read-buffer>
       <buffer-mode> fullBuf </buffer-mode>
       <buffer-size> N:Int </buffer-size>
       requires lengthString(S) +Int 1 <Int N
            andBool Byte =/=Int -1
       [structural]
  rule <k> fillBuffer'(FD::FD) => .K ...</k>
       <fid> FD </fid>
       <next-byte> Byte:Int => .K </next-byte>
       <read-buffer> S:String => S +String chrChar(Byte) </read-buffer>
       <buffer-mode> fullBuf </buffer-mode>
       <buffer-size> N:Int </buffer-size>
       requires lengthString(S) +Int 1 >=Int N
            andBool Byte =/=Int -1
       [structural]
  // No buffer.
  rule <k> fillBuffer'(FD::FD) => .K ...</k>
       <fid> FD </fid>
       <next-byte> Byte:Int => .K </next-byte>
       <read-buffer> S:String => S +String chrChar(Byte) </read-buffer>
       <buffer-mode> noBuf </buffer-mode>
       requires Byte =/=Int -1
       [structural]

  rule <k> setBuf(FD:Int, Mode::BufMode, Sz::Int) => .K ...</k>
       <fid> FD </fid>
       <buffer-mode> _ => Mode </buffer-mode>
       <buffer-size> _ => Sz </buffer-size>
       [structural]

  rule <k> close(FD:Int) => #close(FD) ...</k>
       <open-files>... SetItem(FD) => .Set </open-files>
       (<file>... <fid> FD </fid> ...</file> => .Bag)
       [structural]
  rule <k> close(FD:String) => .K ...</k>
       <open-files>... SetItem(FD) => .Set </open-files>
       (<file>... <fid> FD </fid> ...</file> => .Bag)
       [structural]

  rule seek(FD:Int, Offset::Int, seekSet)
       => #seek(FD, Offset) ~> seek'(FD)
       [structural]
  rule <k> seek(FD:Int, Offset::Int, seekCur)
            => #seek(FD, Pos +Int Offset)
            ~> seek'(FD)
       ...</k>
       <fid> FD </fid>
       <pos> Pos:Int </pos>
       [structural]
  rule seek(FD:Int, Offset::Int, seekEnd)
       => #seekEnd(FD, Offset)
       ~> seek'(FD)
       [structural]


  syntax KItem ::= "seek'" "(" Int ")"
  rule <k> seek'(FD:Int) => .K ...</k>
       <fid> FD </fid>
       <pos> _ => #tell(FD) </pos>
       <next-byte> _ => .K </next-byte>
       <read-buffer> _ => "" </read-buffer>
       <write-buffer> _ => "" </write-buffer>
       <last-op> _ => seekOp </last-op>
       [structural]

  rule <k> flushAll => flushAll'(OpenFiles) ...</k>
       <open-files> OpenFiles::Set </open-files>
       [structural]

  syntax KItem ::= "flushAll'" "(" Set ")"
  rule (.K => flush(FD)) ~> flushAll'((SetItem(FD::FD) => .Set) _)
       [structural]
  rule flushAll'(.Set) => .K
       [structural]

  rule <k> flush(FD:Int)
            => sendString(FD, S)
            ~> sent(FD, S)
       ...</k>
       <fid> FD </fid>
       <write-buffer> S:String => "" </write-buffer>
       <sending>... .List => ListItem(S) </sending>
       [structural]

  rule <k> tell(FD::FD) => Pos ...</k>
       <fid> FD </fid>
       <pos> Pos:Int </pos>
       [observable]

  syntax KItem ::= sendString(Int, String)
  rule <k> sendString(FD::Int, S::String)
            => #putc(FD, ordChar(firstChar(S)))
            ~> sendString(FD, butFirstChar(S))
       ...</k>
       requires lengthString(S) >Int 0
  rule <k> sendString(FD::Int, S::String) => .K ...</k>
       requires lengthString(S) <=Int 0

  syntax KItem ::= sent(Int, String)
  rule <k> sent(FD::Int, S::String) => .K ...</k>
       <fid> FD </fid>
       <sending> ListItem(S) => .List ...</sending>
       <done> Sent::String => Sent +String S </done>
       [structural]

  rule bufSiz => 8192

  rule getErrno(#EBADF) => 9
  rule getErrno(#unknownIOError(I::Int)) => I
  // TODO: More needed
endmodule
