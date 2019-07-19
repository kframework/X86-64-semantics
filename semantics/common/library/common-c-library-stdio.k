module COMMON-C-LIBRARY-STDIO-SORTS
  // Sort of items that the formatter can print as expansion of a format
  // specifier.
  syntax FormatArg
endmodule

module COMMON-C-LIBRARY-STDIO-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SORTS
  imports COMMON-C-LIBRARY-OPAQUE-SORTS

  imports FLOAT
  imports INT
  imports LIST

  // FormatArg constructors.
  syntax FormatArg ::=
    "formatUnknown"
  | formatInt(Int)
  | formatFloat(Float)
  | formatChar(Int)
  | formatString(StringPointer)
  | formatPointer(BufferPointer)

  // FormatArg is a KResult
  syntax KResult ::= FormatArg

  // The comment in the LHS of each following production shows into what value
  // each KItem rewrites. Items that rewrite to anything other than .K, rewrite
  // to the corresponding LibCValues.
  syntax KItem /* .K            */ ::= "stdio_rewind"     "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_fseek"      "(" FilePointer ","
                                                              Int ","
                                                              Int ")"
  syntax KItem /* C int         */ ::= "stdio_fsetpos"    "(" FilePointer ","
                                                              FPosPointer ")"
  syntax KItem /* C int         */ ::= "stdio_fflush"     "(" FilePointer ")"
  syntax KItem /* C long int    */ ::= "stdio_ftell"      "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_fgetpos"    "(" FilePointer ","
                                                              FPosPointer ")"
  syntax KItem /* C int         */ ::= "stdio_fputc"      "(" Int ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_putc"       "(" Int ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_putchar"    "(" Int ")"
  syntax KItem /* C int         */ ::= "stdio_fgetc"      "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_getc"       "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_getchar"
  syntax KItem /* C int         */ ::= "stdio_ungetc"     "(" Int ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_feof"       "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_ferror"     "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_fileno"     "(" FilePointer ")"
  syntax KItem /* .K            */ ::= "stdio_clearerr"   "(" FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_fclose"     "(" FilePointer ")"
  syntax KItem /* FilePointer   */ ::= "stdio_fopen"      "(" StringPointer ","
                                                              StringPointer ")"
  syntax KItem /* FilePointer   */ ::= "stdio_freopen"    "(" StringPointer ","
                                                              StringPointer ","
                                                              FilePointer ")"
  syntax KItem /* .K            */ ::= "stdio_setbuf"     "(" FilePointer ","
                                                              StringPointer ")"
  syntax KItem /* .K            */ ::= "stdio_setbuffer"  "(" FilePointer ","
                                                              StringPointer ","
                                                              Int ")"
  syntax KItem /* C int         */ ::= "stdio_setvbuf"    "(" FilePointer ","
                                                              StringPointer ","
                                                              Int ","
                                                              Int ")"
  syntax KItem /* .K            */ ::= "stdio_setlinebuf" "(" FilePointer ")"
  syntax KItem /* C size_t      */ ::= "stdio_fread"      "(" BufferPointer ","
                                                              Int ","
                                                              Int ","
                                                              FilePointer ")"
  syntax KItem /* StringPointer */ ::= "stdio_gets"       "(" StringPointer ")"
  syntax KItem /* StringPointer */ ::= "stdio_fgets"      "(" StringPointer ","
                                                              Int ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_printf"     "(" StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_fprintf"    "(" FilePointer ","
                                                              StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_fputs"      "(" StringPointer ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_puts"       "(" StringPointer ")"
  syntax KItem /* C size_t      */ ::= "stdio_fwrite"     "(" BufferPointer ","
                                                              Int ","
                                                              Int ","
                                                              FilePointer ")"
  syntax KItem /* C int         */ ::= "stdio_sprintf"    "(" StringPointer ","
                                                              StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_snprintf"   "(" StringPointer ","
                                                              Int ","
                                                              StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_scanf"      "(" StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_fscanf"     "(" FilePointer ","
                                                              StringPointer ","
                                                              List ")"
  syntax KItem /* C int         */ ::= "stdio_sscanf"     "(" StringPointer ","
                                                              StringPointer ","
                                                              List ")"
// TODO: NOT IMPLEMENTED
  syntax KItem /* StringPointer */ ::= "stdio_tmpnam"     "(" StringPointer ")"
  syntax KItem /* FilePointer   */ ::= "stdio_tmpfile"
  syntax KItem /* C int         */ ::= "stdio_remove"     "(" StringPointer ")"
  syntax KItem /* C int         */ ::= "stdio_rename"     "(" StringPointer ","
                                                              StringPointer ")"
  syntax KItem /* .K            */ ::= "stdio_perror"     "(" StringPointer ")"
// TODO: Also not implemented asprintf, vprintf, vfprintf, vsprintf, vasprintf,
// vsnprintf, vscanf, vfscanf, vsscanf.
endmodule

module COMMON-C-LIBRARY-STDIO
  imports COMMON-C-LIBRARY-STDIO-SYNTAX
  imports COMMON-C-LIBRARY-UTILS-SYNTAX
  imports COMMON-C-LIBRARY-IO-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SYNTAX
  imports COMMON-ERROR-SYNTAX
  imports COMMON-CONFIGURATION

  syntax KItem ::= getFD(FilePointer)
  rule (.K => getValidFD(FDPtr)) ~> getFD(FDPtr::FilePointer)
    requires notBool isNull(FDPtr)
  rule invalidLibCValue ~> getFD(_) => ""
  rule FD:FD ~> getFD(_) => FD
  rule getFD(FDPtr::FilePointer) => error(outOfBoundsMemoryAccess)
    requires isNull(FDPtr)

  syntax KItem ::= setFD(FilePointer, Int)
  rule setFD(FDPtr::FilePointer, FD::Int) => setValidFD(FDPtr, FD)
    requires notBool isNull(FDPtr)
  rule setFD(FDPtr::FilePointer, _::Int) => error(outOfBoundsMemoryAccess)
    requires isNull(FDPtr)

  syntax KItem ::= getFPos(FPosPointer)
  rule (.K => getValidFPos(PosPtr)) ~> getFPos(PosPtr::FPosPointer)
    requires notBool isNull(PosPtr)
  rule invalidLibCValue ~> getFPos(_) => fpos("", 0)
  rule FPos:FPos ~> getFPos(_) => FPos
  rule getFPos(PosPtr::FPosPointer) => error(outOfBoundsMemoryAccess)
    requires isNull(PosPtr)

  syntax KItem ::= setFPos(FPosPointer, String, Int)
  rule setFPos(PosPtr::FPosPointer, Path::String, Pos::Int)
       =>
       setValidFPos(PosPtr, Path, Pos)
    requires notBool isNull(PosPtr)
  rule setFPos(PosPtr::FPosPointer, _::String, _::Int)
       =>
       error(outOfBoundsMemoryAccess)
    requires isNull(PosPtr)

  syntax Bool ::= isReadWritable(String) [function]
  rule isReadWritable("r+") => true
  rule isReadWritable("w+") => true
  rule isReadWritable("w+x") => true
  rule isReadWritable("a+") => true
  rule isReadWritable("r+b") => true
  rule isReadWritable("rb+") => true
  rule isReadWritable("w+b") => true
  rule isReadWritable("wb+") => true
  rule isReadWritable("w+bx") => true
  rule isReadWritable("wb+x") => true
  rule isReadWritable("a+b") => true
  rule isReadWritable("ab+") => true
  rule isReadWritable(_) => false [owise]

  syntax Bool ::= isReadable(String) [function]
  rule isReadable("r") => true
  rule isReadable("rb") => true
  rule isReadable(M::String) => isReadWritable(M) [owise]

  syntax Bool ::= isWritable(String) [function]
  rule isWritable("w") => true
  rule isWritable("wx") => true
  rule isWritable("a") => true
  rule isWritable("wb") => true
  rule isWritable("wbx") => true
  rule isWritable("ab") => true
  rule isWritable(M::String) => isReadWritable(M) [owise]

  rule stdio_rewind(FDPtr::FilePointer)
       =>
       fseek(getFD(FDPtr), 0, 0) ~> discard ~> clearerr(getFD(FDPtr))
       [structural]

  rule stdio_fseek(FDPtr::FilePointer, Offset:Int, Whence:Int)
       =>
       fseek(getFD(FDPtr), Offset, Whence)
       [structural]

  rule stdio_fsetpos(FDPtr::FilePointer, PosPtr:FPosPointer)
       =>
       fsetpos(getFD(FDPtr), getFPos(PosPtr))
       [structural]

  rule stdio_fflush(FDPtr::FilePointer) => fflush(getFD(FDPtr))
       requires notBool isNull(FDPtr)
       [structural]
  rule stdio_fflush(FDPtr::FilePointer) => flushAll ~> success
       requires isNull(FDPtr)
       [structural]

  syntax KItem ::= fsetpos(KItem, KItem) [seqstrict(1,2)]
  rule <k>
         fsetpos(FD:Int, fpos(Path::String, Pos::Int)) => fseek(FD, Pos, 0)
       ...</k>
       <fid> FD </fid>
       <uri> Path </uri>
    [structural]
  rule <k>
         fsetpos(FD:FauxFD, _:FPos) => setErrno(getErrno(#EBADF)) ~> eof
       ...</k>
       <open-files> OpenFiles:Set </open-files>
       requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]
  rule <k>
         (.K => error(ioError("'fsetpos': called to set a position that was not returned by a previous successful call to the fgetpos function on a stream associated with the same file."))) ~>
         fsetpos(FD:Int, fpos(Path::String, _))
       ...</k>
       <fid> FD </fid>
       <uri> Path':String </uri>
       requires Path =/=String Path'
    [structural]

  syntax KItem ::= fflush(KItem) [strict]
  rule <k> fflush(FD:Int) => flush(FD) ~> success ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <last-op> Op:LastFileOp => flushOp </last-op>
       requires isWritable(Mode) andBool (Op =/=K inputOp)
    [structural]
  rule <k> fflush(FD:FauxFD) => setErrno(getErrno(#EBADF)) ~> eof ...</k>
       <open-files> OpenFiles:Set </open-files>
       requires (FD ==K "") orBool (notBool FD in OpenFiles)
  rule <k>
         (.K => error(ioError("'fflush': called on an input stream or an input/output stream on which the most recent operation was input."))) ~>
         fflush(FD:Int)
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <last-op> Op:LastFileOp </last-op>
       requires notBool (isWritable(Mode) andBool (Op =/=K inputOp))
    [structural]

  syntax KItem ::= fseek(KItem, Int, Int) [strict(1)]
  rule fseek(FD:Int, Offset::Int, 0)
       =>
       flush(FD) ~> seek(FD, Offset, seekSet) ~> cleareof(FD) ~> success
    [structural]
  rule fseek(FD:Int, Offset::Int, 1)
       =>
       flush(FD) ~> seek(FD, Offset, seekCur) ~> cleareof(FD) ~> success
    [structural]
  rule fseek(FD:Int, Offset::Int, 2)
       =>
       flush(FD) ~> seek(FD, Offset, seekEnd) ~> cleareof(FD) ~> success
    [structural]

  rule stdio_ftell(FDPtr::FilePointer) => ftell(getFD(FDPtr))
    [structural]

  rule stdio_fgetpos(FDPtr::FilePointer, PosPtr:FPosPointer)
       =>
       fgetpos(getFD(FDPtr), PosPtr)
    [structural]

  syntax KItem ::= ftell(KItem) [strict]
  rule (.K => tell(FD)) ~> ftell(FD:Int)
    [structural]
  rule Pos:Int ~> ftell(_) => asCLongInt(Pos)
    [structural]

  syntax KItem ::= fgetpos(KItem, FPosPointer) [strict(1)]
  rule <k> (.K => tell(FD)) ~> fgetpos(FD:Int, _) ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> fgetpos(FD:FauxFD, _) => setErrno(getErrno(#EBADF)) ~> eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]
  rule <k>
         Pos:Int ~> fgetpos(FD:Int, PosPtr:FPosPointer)
         =>
         setFPos(PosPtr, Path, Pos) ~> success
       ...</k>
       <fid> FD </fid>
       <uri> Path:String </uri>
    [structural]

  rule stdio_fputc(N:Int, FDPtr::FilePointer) => fputc(N, getFD(FDPtr))
    [structural]

  rule stdio_putc(N:Int, FDPtr::FilePointer) => fputc(N, getFD(FDPtr))
    [structural]

  rule stdio_putchar(N:Int) => fputc(N, #stdout)
    [structural]

  syntax KItem ::= fputc(Int, KItem) [strict(2)]
  rule <k> fputc(N::Int, FD:Int) => writeFD(FD, N) ~> asCInt(N) ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
    requires isWritable(Mode)
    [structural]
  rule <k> fputc(_, FD:FauxFD) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]
  rule <k> fputc(N::Int, FD:Int) => eof ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
     requires notBool isWritable(Mode)
     [structural]

  rule stdio_fgetc(FDPtr::FilePointer) => fgetc(getFD(FDPtr))
    [structural]

  rule stdio_getc(FDPtr::FilePointer) => fgetc(getFD(FDPtr))
    [structural]

  rule stdio_getchar => fgetc(#stdin)
    [structural]

  rule stdio_ungetc(C:Int, FDPtr::FilePointer) => ungetc(C, getFD(FDPtr))
    requires C =/=K valueOfEOF
    [structural]
  rule stdio_ungetc(C:Int, _) => eof
    requires C ==K valueOfEOF
    [structural]

  syntax KItem ::= fgetc(KItem) [strict]
  rule <k> (.K => readFD(FD, 1)) ~> fgetc(FD:Int) ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
    requires isReadable(Mode)
    [structural]
  rule <k> fgetc(FD:FauxFD) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]
  rule <k> fgetc(FD:Int) => eof ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
    requires notBool isReadable(Mode)
    [structural]
  rule str(S::String) ~> fgetc(_) => asCInt(ordChar(firstChar(S)))
    requires lengthString(S) >Int 0
    [structural]
  rule str("") ~> fgetc(_) => eof
    [structural]

  syntax KItem ::= ungetc(Int, KItem) [strict(2)]
  rule <k>
         ungetc(C::Int, FD:Int)
         =>
         unget(FD, chrChar(C)) ~> cleareof(FD) ~> asCInt(C)
       ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> ungetc(_, FD:FauxFD) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]

  rule stdio_feof(FDPtr::FilePointer) => feof(getFD(FDPtr))
    [structural]

  rule stdio_ferror(FDPtr::FilePointer) => ferror(getFD(FDPtr))
    [structural]

  rule stdio_fileno(FDPtr::FilePointer) => fileno(getFD(FDPtr))
    [structural]

  syntax KItem ::= feof(KItem) [strict]
  rule <k> feof(FD:Int) => asCInt(1) ...</k>
       <fid> FD </fid>
       <read-buffer> "" </read-buffer>
       <feof> true </feof>
    [structural]
  rule <k> feof(FD:Int) => asCInt(0) ...</k>
       <fid> FD </fid>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
    requires notBool (Buffer ==K "" andBool Eof)
    [structural]
  rule <k> feof(FD:FauxFD) => asCInt(0) ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]

  syntax KItem ::= ferror(KItem) [strict]
  rule <k> ferror(FD:Int) => asCInt(1) ...</k>
       <fid> FD </fid>
       <ferror> Err:Int </ferror>
    requires Err =/=Int 0
    [structural]
  rule <k> ferror(FD:Int) => asCInt(0) ...</k>
       <fid> FD </fid>
       <ferror> 0 </ferror>
    [structural]
  rule <k> ferror(FD:FauxFD) => asCInt(0) ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool (notBool FD in OpenFiles)
    [structural]

  syntax KItem ::= fileno(KItem) [strict]
  rule <k> fileno(FD:Int) => asCInt(FD) ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> fileno(FD:FauxFD) => setErrno(getErrno(#EBADF)) ~> eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  rule stdio_clearerr(FDPtr::FilePointer) => clearerr(getFD(FDPtr))
    [structural]

  syntax KItem ::= clearerr(KItem) [strict]
  rule <k> clearerr(FD:Int) => cleareof(FD) ...</k>
       <fid> FD </fid>
       <ferror> _ => 0 </ferror>
    [structural]
  rule <k> clearerr(FD:FauxFD) => .K ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  syntax KItem ::= cleareof(Int)
  rule <k> cleareof(FD::Int) => .K ...</k>
       <fid> FD </fid>
       <feof> _ => false </feof>
    [structural]

  rule stdio_fclose(FDPtr::FilePointer) => fclose(getFD(FDPtr), FDPtr)
    requires notBool isNull(FDPtr)
    [structural]
  rule stdio_fclose(FDPtr::FilePointer) => eof
    requires isNull(FDPtr)
    [structural]

  syntax KItem ::= fclose(KItem, FilePointer) [strict(1)]
  rule fclose(FD:Int, FDPtr::FilePointer) => freeFile(FDPtr) ~> fclose'(FD)
    [structural]

  syntax KItem ::= "fclose'" "(" Int ")"
  rule <k> fclose'(FD::Int) => flush(FD) ~> close(FD) ~> success ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> fclose'(FD::Int) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires notBool (FD in OpenFiles)
    [structural]

  rule (.K => allocFile) ~> stdio_fopen(_, _)
    [structural]
  rule FDPtr:FilePointer ~>
       stdio_fopen(Filename::StringPointer, Mode::StringPointer)
       =>
       fopen(FDPtr, readString(Filename), readString(Mode))
    [structural]

  rule stdio_freopen(Filename::StringPointer, Mode::StringPointer,
                     FDPtr::FilePointer)
       =>
       freopen(Filename, Mode, FDPtr, getFD(FDPtr))
    requires notBool isNull(FDPtr)
    [structural]
  rule stdio_freopen( _, _, FDPtr::FilePointer) => nullFilePointer
    requires isNull(FDPtr)
    [structural]

  syntax KItem ::= freopen(StringPointer, StringPointer, FilePointer, KItem)
    [strict(4)]
  rule freopen(Filename::StringPointer, Mode::StringPointer, FDPtr::FilePointer,
               FD:Int)
       =>
       fclose'(FD) ~> discard ~>
       fopen(FDPtr, readString(Filename), readString(Mode))
    requires notBool isNull(Filename)
    [structural]
  rule <k>
         freopen(Filename::StringPointer, Mode::StringPointer,
                 FDPtr::FilePointer, FD:Int)
         => fclose'(FD) ~> discard ~> fopen(FDPtr, Filename', readString(Mode))
       ...</k>
       <fid> FD </fid>
       <uri> Filename':String </uri>
       requires isNull(Filename)
       [structural]

  syntax KItem ::= fopen(FilePointer, KItem, KItem) [seqstrict(2,3)]
  rule fopen(FDPtr:FilePointer, str(Filename::String), str(Mode::String))
       =>
       fopen'(FDPtr, Filename, Mode, #open(Filename, Mode))
    requires isReadable(Mode) orBool isWritable(Mode) orBool
             isReadWritable(Mode)
    [structural]
  rule (.K => error(ioError("'fopen' or 'freopen': invalid open mode \"" +String Mode +String "\".")))
       ~> fopen(_, _, str(Mode::String))
       requires notBool (isReadable(Mode) orBool isWritable(Mode) orBool
                         isReadWritable(Mode))
       [structural]

  syntax KItem ::= "fopen'" "(" FilePointer "," String "," String "," K ")"
  rule <k>
         fopen'(FDPtr::FilePointer, Filename::String, Mode::String, FD:Int)
         =>
         setFD(FDPtr, FD) ~> asCFILEPtr(FDPtr)
       ...</k>
       <open-files>... .Set => SetItem(FD) </open-files>
       <files>... (.Bag =>
         <file>...
            <fid> FD </fid>
            <uri> Filename </uri>
            <mode> Mode </mode>
         ...</file>)
       ...</files>
    [structural]

  rule <k>
         fopen'(_, _, _, Err:IOError)
         =>
         setErrno(getErrno(Err)) ~> nullFilePointer
       ...</k>

  rule stdio_setbuf(FDPtr::FilePointer, StrPtr::StringPointer)
       =>
       trapStrBuf(StrPtr, bufSiz) ~> setbuf(getFD(FDPtr), fullBuf, bufSiz) ~>
       discard
    requires notBool isNull(StrPtr)
    [structural]
  rule stdio_setbuf(FDPtr::FilePointer, StrPtr::StringPointer)
       =>
       setbuf(getFD(FDPtr), noBuf, bufSiz) ~> discard
    requires isNull(StrPtr)
    [structural]

  rule stdio_setbuffer(FDPtr::FilePointer, StrPtr::StringPointer, Sz::Int)
       =>
       trapStrBuf(StrPtr, Sz) ~> setbuf(getFD(FDPtr), fullBuf, Sz) ~> discard
    requires notBool isNull(StrPtr)
    [structural]
  rule stdio_setbuffer(FDPtr::FilePointer, StrPtr::StringPointer, Sz::Int)
       =>
       setbuf(getFD(FDPtr), noBuf, Sz) ~> discard
    requires isNull(StrPtr)
    [structural]

  rule stdio_setvbuf(FDPtr::FilePointer, StrPtr::StringPointer, 0, Sz::Int)
       =>
       trapStrBuf(StrPtr, Sz) ~> setbuf(getFD(FDPtr), fullBuf, Sz)
    [structural]
  rule stdio_setvbuf(FDPtr::FilePointer, StrPtr::StringPointer, 1, Sz::Int)
       =>
       trapStrBuf(StrPtr, Sz) ~> setbuf(getFD(FDPtr), lineBuf, Sz)
    [structural]
  rule stdio_setvbuf(FDPtr::FilePointer, StrPtr::StringPointer, 2, Sz::Int)
       =>
       trapStrBuf(StrPtr, Sz) ~> setbuf(getFD(FDPtr), noBuf, Sz)
    [structural]

  rule stdio_setlinebuf(FDPtr::FilePointer)
       =>
       setbuf(getFD(FDPtr), lineBuf, bufSiz) ~> discard
    [structural]

  syntax KItem ::= trapBuf(BufferPointer, Int)
  rule trapBuf(BufPtr::BufferPointer, Sz::Int) => writeTrapBytes(BufPtr, Sz)
    requires notBool isNull(BufPtr) andBool Sz >Int 0
  rule trapBuf(_, _) => .K

  syntax KItem ::= trapStrBuf(StringPointer, Int)
  rule trapStrBuf(StrPtr::StringPointer, Sz::Int) => writeTrapBytes(StrPtr, Sz)
    requires notBool isNull(StrPtr) andBool Sz >Int 0
  rule trapStrBuf(_, _) => .K

  syntax KItem ::= setbuf(KItem, BufMode, Int) [strict(1)]
  rule <k>
         setbuf(FD:Int, Mode::BufMode, Sz::Int)
         =>
         setBuf(FD, Mode, Sz) ~> success
       ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> setbuf(FD:FauxFD, _, _) => setErrno(getErrno(#EBADF)) ~> eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  rule stdio_fread(BufPtr::BufferPointer, Size::Int, NMemb::Int,
       FDPtr::FilePointer)
       =>
       fread(BufPtr, Size, NMemb, getFD(FDPtr))
    [structural]

  rule (.K
         =>
         isEqToOne(
           fscanf(#stdin, str("%[^\n]"), ListItem(asCCharPtr(StrPtr))))) ~>
       stdio_gets(StrPtr::StringPointer)
    [structural]
  rule true ~> stdio_gets(StrPtr::StringPointer) => asCCharPtr(StrPtr)
    [structural]
  rule false ~> stdio_gets(StrPtr::StringPointer) => nullStringPointer
    [structural]

  rule stdio_fgets(StrPtr::StringPointer, NMemb::Int, FDPtr::FilePointer)
       =>
       fgets(StrPtr, NMemb, getFD(FDPtr))
    [structural]

  syntax KItem ::= fread(BufferPointer, Int, Int, KItem) [strict(4)]
  rule <k>
         fread(BufPtr::BufferPointer, Size::Int, NMemb::Int, FD:Int)
         =>
         fread'(BufPtr, Size, readFD(FD, Size *Int NMemb))
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
    requires isReadable(Mode)
    [structural]
  rule <k> fread(_, _, _, FD:Int) => asCSize(0) ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
    requires notBool isReadable(Mode)
    [structural]
  rule <k> fread(_, _, _, FD:FauxFD) => asCSize(0) ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  syntax KItem ::= "fread'" "(" BufferPointer "," Int "," KItem ")" [strict(3)]
  rule fread'(BufPtr::BufferPointer, Size::Int, str(Read::String))
       =>
       writeCharBytes(BufPtr, Read) ~>
       trapBuf(BufPtr +bytes lengthString(Read),
               Size -Int (lengthString(Read) %Int Size)) ~>
       asCSize(lengthString(Read) /Int Size)
    requires (lengthString(Read) %Int Size) =/=Int 0
    [structural]
  rule fread'(BufPtr:BufferPointer, Size::Int, str(Read::String))
       =>
       writeCharBytes(BufPtr, Read) ~> asCSize(lengthString(Read) /Int Size)
    requires (lengthString(Read) %Int Size) ==Int 0
    [structural]

  syntax KItem ::= fgets(StringPointer, Int, KItem) [strict(3)]
  rule fgets(StrPtr::StringPointer, NMemb::Int, _) => asCCharPtr(StrPtr)
    requires NMemb <Int 1
    [structural]
  rule fgets(StrPtr::StringPointer, NMemb::Int, _)
       =>
       writeString(StrPtr, "") ~> asCCharPtr(StrPtr)
    requires NMemb ==Int 1
    [structural]
  rule (.K
        =>
        isEqToOne(
          fscanf(FD, str("%" +String Int2String(NMemb -Int 1) +String "[^\n]"),
                 ListItem(asCCharPtr(StrPtr))))) ~>
       fgets(StrPtr::StringPointer, NMemb::Int, FD:FauxFD)
    requires NMemb >Int 1
    [structural]
  rule <k>
         false ~> fgets(StrPtr::StringPointer, NMemb::Int, FD:Int)
         =>
         trapStrBuf(StrPtr, NMemb) ~> nullStringPointer
       ...</k>
       <fid> FD </fid>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
    requires notBool (Buffer ==K "" andBool Eof)
    [structural]
  rule <k>
         false ~> fgets(StrPtr::StringPointer, NMemb::Int, FD:Int)
         =>
         asCCharPtr(StrPtr)
       ...</k>
       <fid> FD </fid>
       <read-buffer> "" </read-buffer>
       <feof> true </feof>
    [structural]
  rule (true => readString(StrPtr)) ~> fgets(StrPtr::StringPointer, _, _)
    [structural]
  rule str(S::String) ~> fgets(StrPtr::StringPointer, NMemb::Int, _)
       =>
       asCCharPtr(StrPtr)
    requires lengthString(S) >=Int NMemb -Int 1 orBool S ==K "\n"
    [structural]
  rule (str(S::String) => readNewline(StrPtr +chars lengthString(S), FD)) ~>
       fgets(StrPtr::StringPointer, NMemb::Int, FD:FauxFD)
    requires lengthString(S) <Int NMemb -Int 1
    [structural]

  syntax KItem ::= readNewline(KItem, FauxFD) [strict(1)]
  rule (.K
        =>
        isEqToOne(fscanf(FD, str("%1[\n]"), ListItem(asCCharPtr(StrPtr))))) ~>
       readNewline(StrPtr:StringPointer, FD::FauxFD)
  [structural]
  rule true ~> readNewline(StrPtr:StringPointer, _) => str("\n")
    [structural]
  rule false ~> (readNewline(_, _) => .K)
    [structural]

  rule stdio_printf(Format::StringPointer, VarArgs:List)
       =>
       fprintf(#stdout, formatter(readString(Format), VarArgs))
    [structural]

  rule stdio_fprintf(FDPtr::FilePointer, Format::StringPointer, VarArgs:List)
       =>
       fprintf(getFD(FDPtr), formatter(readString(Format), VarArgs))
    [structural]

  rule stdio_fputs(StrPtr::StringPointer, FDPtr::FilePointer)
       =>
       fprintf(getFD(FDPtr),
               formatter(str("%s"), ListItem(asCCharPtr(StrPtr))))
    [structural]

  rule stdio_puts(StrPtr::StringPointer)
       =>
       fprintf(#stdout, formatter(str("%s\n"), ListItem(asCCharPtr(StrPtr))))
    [structural]

  rule stdio_fwrite(BufPtr::BufferPointer, Size::Int, NMemb::Int,
                    FDPtr::FilePointer)
       =>
       fwrite(readBytes(BufPtr, Size *Int NMemb), Size, getFD(FDPtr))
    [structural]

  syntax KItem ::= fprintf(KItem, KItem) [seqstrict(1,2)]
  rule <k>
         fprintf(FD:Int, formattedResult(S::String))
         =>
         writeFD(FD, S) ~> asCInt(lengthString(S))
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
    requires isWritable(Mode)
    [structural]
  rule <k> fprintf(FD:Int, formattedResult(S::String)) => eof ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
    requires notBool isWritable(Mode)
    [structural]
  rule <k> fprintf(FD:FauxFD, _) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  syntax KItem ::= fwrite(KItem, Int, KItem) [seqstrict(1,3)]
  rule <k>
         fwrite(str(S::String), Size::Int, FD:Int)
         =>
         writeFD(FD, S) ~> asCSize(lengthString(S) /Int Size)
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
    requires isWritable(Mode)
    [structural]
  rule <k> fwrite(str(S::String), Size::Int, FD:Int) => eof ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
    requires notBool isWritable(Mode)
    [structural]
  rule <k> fwrite(_, _, FD:FauxFD) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]

  rule stdio_sprintf(Dest::StringPointer, Format::StringPointer, VarArgs:List)
       =>
       sprintf(formatter(readString(Format), VarArgs), Dest)
    [structural]

  syntax KItem ::= sprintf(KItem, StringPointer) [strict(1)]
  rule sprintf(formattedResult(S::String), Dest::StringPointer)
       =>
       writeString(Dest, S) ~> asCInt(lengthString(S))
    [structural]

  rule stdio_snprintf(Dest::StringPointer, Len::Int, Format::StringPointer,
                      VarArgs:List)
       =>
       snprintf(formatter(readString(Format), VarArgs), Dest, Len)
    [structural]

  syntax KItem ::= snprintf(KItem, StringPointer, Int) [strict(1)]
  rule snprintf(formattedResult(S::String), Dest::StringPointer, Len::Int)
       =>
       writeString(Dest,
                   substrString(S, 0, minInt(lengthString(S), Len -Int 1))) ~>
       asCInt(lengthString(S))
    requires Len >Int 0
    [structural]
  rule snprintf(formattedResult(S::String), _, Len::Int)
       =>
       asCInt(lengthString(S))
    requires Len ==Int 0
    [structural]

  rule stdio_scanf(Format::StringPointer, VarArgs:List)
       =>
       fscanf(#stdin, readString(Format), VarArgs)
    [structural]

  rule stdio_fscanf(FDPtr::FilePointer, Format::StringPointer, VarArgs:List)
       =>
       fscanf(getFD(FDPtr), readString(Format), VarArgs)
    [structural]

  rule stdio_sscanf(StrPtr::StringPointer, Format::StringPointer, VarArgs:List)
       =>
       fscanf(readString(StrPtr), readString(Format), VarArgs)
    [structural]

  syntax KItem ::= fscanf(KItem, KItem, List) [seqstrict(1,2)]
  rule <k>
         fscanf(FD:Int, str(S::String), VarArgs::List)
         =>
         fscanf'(FD, VarArgs, parseFormat(stringToList(S)), 0, "", 0)
       ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires FD in OpenFiles
    [structural]
  rule <k> fscanf(FD:FauxFD, _, _) => eof ...</k>
       <open-files> OpenFiles:Set </open-files>
    requires (FD ==K "") orBool notBool (FD in OpenFiles)
    [structural]
  rule <k>
         fscanf(str(FD::String), str(S::String), VarArgs::List)
         =>
         fscanf'(FD, VarArgs, parseFormat(stringToList(S)), 0, "", 0)
       ...</k>
       <open-files>... .Set => SetItem(FD) </open-files>
       <files>... (.Bag =>
         <file>...
           <fid> FD </fid>
           <read-buffer> FD </read-buffer>
         ...</file>)
       ...</files>
    [structural]

  //
  // TODO: Everything following needs to be formatted
  //

  // FD, args, parsed format string, number matched, current item, number of chars read
  syntax KItem ::= "fscanf'" "(" FauxFD "," List "," List "," Int "," String "," Int")"
  rule <k> (.K => readFD(FD, 1))
            ~> fscanf'(FD::FauxFD, _, ListItem(D::Directive) _, _, Item::String, _)
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
       <ferror> 0 </ferror>
       requires isReadable(Mode)
            andBool notBool atFieldWidth(Item, D)
            andBool notBool (Buffer ==K "" andBool Eof)
       [structural]
  rule <k> fscanf'(FD::FD, _, ListItem(D::Directive) _, Matched::Int, Item::String, _)
            => #if Matched ==Int 0 #then eof #else asCInt(Matched) #fi
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
       <ferror> Err:Int </ferror>
       requires notBool ((Buffer ==K "" andBool Eof) orBool atFieldWidth(Item, D))
            andBool Err =/=Int 0
            andBool isReadable(Mode)
       [structural]
  rule <k> fscanf'(FD::FD, _, _, Matched::Int, _, _)
            => #if Matched ==Int 0 #then eof #else asCInt(Matched) #fi
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <ferror> _ => getErrno(#EBADF) </ferror>
       requires notBool isReadable(Mode)
       [structural]
  rule <k> fscanf'(FD::FD, _,
            (ListItem(" ") => .List) _,
            _,
            _ => "",
            _)
       ...</k>
       <fid> FD </fid>
       <read-buffer> "" </read-buffer>
       <feof> true </feof>
       [structural]
  rule <k> (.K => writeItem(%(true, W, L, D), Item, Arg, NRead))
            ~> fscanf'(FD::FD, (ListItem(Arg::LibCValue) => .List) _,
                 (ListItem(%(true, W::Int, L::String, D::String)) => .List) _,
                 M::Int => {#if isReadCountDirective(%(true, W, L, D)) #then M #else M +Int 1 #fi}:>Int,
                 Item::String => "",
                 NRead::Int)
       ...</k>
       <fid> FD </fid>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
       requires ((Buffer ==K "" andBool Eof) orBool atFieldWidth(Item, %(true, W, L, D))) andBool isCompleteItem(Item, %(true, W, L, D))
       [structural]
  rule <k> fscanf'(FD::FD, _,
                 (ListItem(%(false, W::Int, L::String, D::String)) => .List) _,
                 M::Int => M +Int 1,
                 Item::String => "",
                 _)
       ...</k>
       <fid> FD </fid>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
       requires ((Buffer ==K "" andBool Eof) orBool atFieldWidth(Item, %(false, W, L, D))) andBool isCompleteItem(Item, %(false, W, L, D))
       [structural]
  rule <k> fscanf'(FD::FD, _,
                 ListItem(D::Directive) _,
                 Matched::Int,
                 Item::String,
                 _)
            => #if isString(FD) #then close(FD) #else .K #fi
            ~> #if (Matched ==Int 0) andBool notBool atFieldWidth(Item, D)
                 #then eof #else asCInt(Matched) #fi
       ...</k>
       <fid> FD </fid>
       <mode> Mode:String </mode>
       <read-buffer> Buffer::String </read-buffer>
       <feof> Eof:Bool </feof>
       <ferror> 0 </ferror>
       requires ((Buffer ==K "" andBool Eof) orBool atFieldWidth(Item, D)) andBool notBool isCompleteItem(Item, D)
            andBool isReadable(Mode)
       [structural]
  rule fscanf'(FD::FD, _,
            .List,
            Matched::Int,
            _,
            _)
       => #if isString(FD) #then close(FD) #else .K #fi
       ~> asCInt(Matched)
       [structural]

  rule (str(C::String) => .K)
       ~> fscanf'(_, _,
            ListItem(D:Directive) _,
            _,
            Item::String => Item +String C,
            N::Int => N +Int 1)
       requires inScanSet(C, D, Item)
       [structural]
  rule str(C::String)
       ~> fscanf'(_, _,
            (ListItem(D:String) => .List) _,
            _,
            Item::String => "",
            _)
       requires notBool inScanSet(C, D, Item) andBool Item =/=String ""
       [structural]
  rule str(C::String)
       ~> fscanf'(_, _,
            (ListItem(" ") => .List) _,
            _,
            _ => "",
            _)
       requires notBool isWhitespace(C)
       [structural]
  rule (.K => writeItem(%(true, W, L, D), Item, Arg, NRead))
       ~> str(C::String)
       ~> fscanf'(_, (ListItem(Arg::LibCValue) => .List) _,
            (ListItem(%(true, W::Int, L::String, D::String)) => .List) _,
            M::Int => {#if isReadCountDirective(%(true, W, L, D)) #then M #else M +Int 1 #fi}:>Int,
            Item::String => "",
            NRead::Int)
       requires notBool inScanSet(C, %(true, W, L, D), Item) andBool isCompleteItem(Item, %(true, W, L, D))
       [structural]
  rule str(C::String)
       ~> fscanf'(_, _,
            (ListItem(%(false, W::Int, L::String, D::String)) => .List) _,
            M::Int => M +Int 1,
            Item::String => "",
            _)
       requires notBool inScanSet(C, %(false, W, L, D), Item) andBool isCompleteItem(Item, %(false, W, L, D))
       [structural]
  rule str(C::String)
       ~> fscanf'(_, _,
            (ListItem(%%) => .List) _,
            _,
            Item::String => "",
            _)
       requires notBool inScanSet(C, %%, Item)
            andBool isCompleteItem(Item, %%)
       [structural]

  rule str(C::String)
       ~> fscanf'(FD::FD, _,
            ListItem(D::Directive) _,
            Matched::Int,
            Item::String,
            _)
       => #if isString(FD) #then close(FD) #else unget(FD, C) #fi
       ~> #if (Matched ==Int 0) andBool (C ==K "")
            #then eof #else asCInt(Matched) #fi
       requires notBool inScanSet(C, D, Item)
            andBool notBool isWhitespace(D)
            andBool notBool isCompleteItem(Item, D)
       [structural]
  rule str(C::String)
       ~> fscanf'(FD::FD, _,
            .List,
            Matched::Int,
            _,
            _)
       => #if isString(FD) #then close(FD) #else unget(FD, C) #fi
       ~> asCInt(Matched)
       [structural]

  syntax Bool ::= isReadCountDirective(Directive) [function]
  rule isReadCountDirective(%(_, _, _, "n")) => true
  rule isReadCountDirective(_) => false [owise]

  syntax KItem ::= writeItem(Directive, String, LibCValue, Int) [function]
  rule writeItem(%(true, _, "", "c"), Item::String, Ptr::LibCValue, _)
       => writeAsChars(Ptr, Item)
  rule writeItem(%(true, _, "l", "c"), Item::String, Ptr::LibCValue, _)
       => writeAsWChars(Ptr, stringToList(Item))

  rule writeItem(%(true, _, "", "s"), Item::String, Ptr::LibCValue, _)
       => writeAsString(Ptr, Item)
  rule writeItem(%(true, _, "l", "s"), Item::String, Ptr::LibCValue, _)
       => writeAsWString(Ptr, stringToList(Item))

  rule writeItem(%(true, _, "", D::String), Item::String, Ptr::LibCValue, _)
       => writeAsString(Ptr, Item)
       requires firstChar(D) ==String "["
  rule writeItem(%(true, _, "l", D::String), Item::String, Ptr::LibCValue, _)
       => writeAsWString(Ptr, stringToList(Item))
       requires firstChar(D) ==String "["

  rule writeItem(%(true, _, Length::String, "d"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 10), "%d", Length)
  rule writeItem(%(true, _, Length::String, "i"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 0), "%i", Length)
       requires notBool has0xPrefix(Item)
  rule writeItem(%(true, _, Length::String, "i"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(strip0xPrefix(Item), 16), "%i", Length)
       requires has0xPrefix(Item)
  rule writeItem(%(true, _, Length::String, "o"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 8), "%o", Length)
  rule writeItem(%(true, _, Length::String, "u"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 10), "%u", Length)
  rule writeItem(%(true, _, Length::String, "x"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 16), "%x", Length)
       requires notBool has0xPrefix(Item)
  rule writeItem(%(true, _, Length::String, "x"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(strip0xPrefix(Item), 16), "%x", Length)
       requires has0xPrefix(Item)

  rule writeItem(%(true, _, Length::String, "p"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(Item, 16), "%p", Length)
       requires notBool has0xPrefix(Item)
            andBool toUpperCase(Item) =/=String "(NIL)"
  rule writeItem(%(true, _, Length::String, "p"), Item::String, Ptr::LibCValue, _)
       => writeAsInt(Ptr, String2Base(strip0xPrefix(Item), 16), "%p", Length)
       requires has0xPrefix(Item)
            andBool toUpperCase(Item) =/=String "(NIL)"
  rule writeItem(%(true, _, Length::String, "p"), Item::String, Ptr::LibCValue, _)
       => writeNullPointer(Ptr)
       requires toUpperCase(Item) ==String "(NIL)" andBool Length ==String ""

  rule writeItem(%(true, W::Int, Length::String, D::String), Item::String, Ptr::LibCValue, _)
       => error(ioError("scanning of floats is not supported"))
/*
       => Computation((* Ptr) := stringToFloat(Item, utype(innerType(type(Ptr))), utype(getFormatType'("%" +String D, Length))))
*/
       requires isFloatDirective(%(true, W, Length, D))

  rule writeItem(%(true, _, Length::String, "n"), _, Ptr::LibCValue, M::Int)
       => writeAsInt(Ptr, M, "%d", "")

  //rule  writeItem(_, _, _, _) => .K [owise]

// TODO: Add scanning of floats.
/*
  syntax KItem ::= stringToFloat(String, UType, UType)
  rule stringToFloat(S::String, T::UType, ut(_, float))
       => allocString(obj(!N:Int, 1, libc), S)
       ~> stringToFloat'(obj(!N, 1, libc), T, Call(Identifier("strtof"), list(
            ListItem(tv(lnew(obj(0, 1, string(S))), utype(pointerType(type(char)))))
            ListItem(tv(NullPointer, utype(pointerType(type(pointerType(type(char))))))))))
  rule stringToFloat(S::String, T::UType, ut(_, double))
       => allocString(obj(!N:Int, 1, libc), S)
       ~> stringToFloat'(obj(!N, 1, libc), T, Call(Identifier("strtod"), list(
            ListItem(tv(lnew(obj(0, 1, string(S))), utype(pointerType(type(char)))))
            ListItem(tv(NullPointer, utype(pointerType(type(pointerType(type(char))))))))))
  rule stringToFloat(S::String, T::UType, ut(_, long-double))
       => allocString(obj(!N:Int, 1, libc), S)
       ~> stringToFloat'(obj(!N, 1, libc), T, Call(Identifier("strtold"), list(
            ListItem(tv(lnew(obj(0, 1, string(S))), utype(pointerType(type(char)))))
            ListItem(tv(NullPointer, utype(pointerType(type(pointerType(type(char))))))))))

  syntax KItem ::= "stringToFloat'" "(" SymBase "," UType "," K ")"
  context stringToFloat'(_, _, HOLE:KItem => reval(HOLE)) [result(RValue)]
  rule stringToFloat'(Base::SymBase, T::UType, V:RValue)
       => deleteObject(Base) ~> cast(T, V)
       [structural]
*/

  syntax Directive ::= "%" "(" Bool "," Int "," String "," String ")"
                     | "%%"
                     | String

  // (Input char, current directive, item read so far.)
  syntax Bool ::= inScanSet(String, Directive, String) [function]
  rule inScanSet(C::String, C, "") => true
  rule inScanSet("%", %%, "") => true
  rule inScanSet(C::String, " ", _) => isWhitespace(C)
  rule inScanSet(C::String, %(_, _, _, "c"), _) => C =/=String ""
  rule inScanSet(C::String, %(_, _, _, "s"), _) => C =/=String "" andBool notBool isWhitespace(C)

  rule inScanSet(C::String, %(_, _, _, "d"), _) => true
       requires isDigit(C, 10)
  rule inScanSet(C::String, %(_, _, _, "d"), "") => true
       requires isSign(C)

  rule inScanSet(C::String, %(_, _, _, "i"), _) => true
       requires isDigit(C, 16)
  rule inScanSet(C::String, %(_, _, _, "i"), "") => true
       requires isSign(C)
  rule inScanSet("x", %(_, _, _, "i"), I::String) => true
       requires isXPrefix(I)
  rule inScanSet("X", %(_, _, _, "i"), I::String) => true
       requires isXPrefix(I)

  rule inScanSet(C::String, %(_, _, _, "o"), _) => true
       requires isDigit(C, 8)
  rule inScanSet(C::String, %(_, _, _, "o"), "") => true
       requires isSign(C)

  rule inScanSet(C::String, %(_, _, _, "u"), _) => true
       requires isDigit(C, 10)
  rule inScanSet(C::String, %(_, _, _, "u"), "") => true
       requires isSign(C)

  rule inScanSet(C::String, %(_, _, _, "x"), _) => true
       requires isDigit(C, 16)
  rule inScanSet(C::String, %(_, _, _, "x"), "") => true
       requires isSign(C)
  rule inScanSet("x", %(_, _, _, "x"), I::String) => true
       requires isXPrefix(I)
  rule inScanSet("X", %(_, _, _, "x"), I::String) => true
       requires isXPrefix(I)

  rule inScanSet(C::String, %(_, _, _, "p"), _) => true
       requires isDigit(C, 16)
  rule inScanSet(C::String, %(_, _, _, "p"), "") => true
       requires isSign(C)
  rule inScanSet("x", %(_, _, _, "p"), I::String) => true
       requires isXPrefix(I)
  rule inScanSet("X", %(_, _, _, "p"), I::String) => true
       requires isXPrefix(I)
  rule inScanSet(C::String, %(_, _, _, "p"), I::String) => true
       requires inNil(C, I)

  // Floating point.
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool inInfinity(C, I)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool inNan(C, I)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isDigit(C, 10)
            andBool notBool has0xPrefix(I)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isDigit(C, 16)
            andBool has0xPrefix(I)
            andBool notBool hasRadix(I)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isDigit(C, 2)
            andBool has0xPrefix(I)
            andBool hasRadix(I)
  rule inScanSet(C::String, D::Directive, "") => true
       requires isFloatDirective(D)
            andBool isSign(C)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isSign(C)
            // Must both have radix & it's the last char.
            andBool hasRadix(I)
            andBool (toUpperCase(lastChar(I)) ==String "E"
                 orBool toUpperCase(lastChar(I)) ==String "P")
  rule inScanSet(".", D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool notBool hasDot(I)
            andBool notBool hasRadix(I)
  rule inScanSet("x", D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isXPrefix(I)
  rule inScanSet("X", D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool isXPrefix(I)
  rule inScanSet(C::String, D::Directive, I::String) => true
       requires isFloatDirective(D)
            andBool hasRadix(C) andBool notBool hasRadix(I)
            andBool hasDigit(I)

  // Scan list (e.g., "[^]abc]").
  rule inScanSet(C::String, %(_, _, _, D::String), _)
       => ((substrString(D, 0, 2) ==String "[^")
                 andBool (findChar(D, C, 2) ==Int -1))
            orBool ((substrString(D, 0, 2) =/=String "[^")
                 andBool (firstChar(D) ==String "[")
                 andBool (findChar(D, C, 1) =/=Int -1))
       requires lengthString(D) >Int 1

  rule inScanSet(_, _, _) => false [owise]

  syntax Bool ::= inNil(String, String) [function]
                | "inNil'" "(" String "," String ")" [function]
  rule inNil(C::String, I::String)
       => inNil'(toUpperCase(C), toUpperCase(stripSign(I)))
  rule inNil'("(", "") => true
  rule inNil'("N", "(") => true
  rule inNil'("I", "(N") => true
  rule inNil'("L", "(NI") => true
  rule inNil'(")", "(NIL") => true
  rule inNil'(_, _) => false [owise]

  syntax Bool ::= inInfinity(String, String) [function]
                | "inInfinity'" "(" String "," String ")" [function]
  rule inInfinity(C::String, I::String)
       => inInfinity'(toUpperCase(C), toUpperCase(stripSign(I)))
  rule inInfinity'("I", "") => true
  rule inInfinity'("N", "I") => true
  rule inInfinity'("F", "IN") => true
  rule inInfinity'("I", "INF") => true
  rule inInfinity'("N", "INFI") => true
  rule inInfinity'("I", "INFIN") => true
  rule inInfinity'("T", "INFINI") => true
  rule inInfinity'("Y", "INFINIT") => true
  rule inInfinity'(_, _) => false [owise]

  syntax Bool ::= inNan(String, String) [function]
                | "inNan'" "(" String "," String ")" [function]
  rule inNan(C::String, I::String) => inNan'(toUpperCase(C), toUpperCase(I))
  rule inNan'("N", "") => true
  rule inNan'("A", "N") => true
  rule inNan'("N", "NA") => true
  rule inNan'(_, _) => false [owise]

  // Given that all characters are in the scan set, is this a complete item?
  syntax Bool ::= isCompleteItem(String, Directive) [function]
  rule isCompleteItem("", D::Directive) => isReadCountDirective(D) orBool isWhitespace(D)
  rule isCompleteItem(Item::String, D::Directive) => false
       requires isNumericDirective(D) andBool notBool hasDigit(strip0xPrefix(Item))
            andBool toUpperCase(Item) =/=String "(NIL)"
  rule isCompleteItem(Item::String, D::Directive) => false
       requires isNumericDirective(D) andBool isSign(lastChar(Item))
  rule isCompleteItem(Item::String, %(_, _, _, "p")) => false
       requires toUpperCase(Item) ==String "("
            orBool toUpperCase(Item) ==String "(N"
            orBool toUpperCase(Item) ==String "(NI"
            orBool toUpperCase(Item) ==String "(NIL"
  rule isCompleteItem(Item::String, D::Directive) => false
       requires isFloatDirective(D)
            andBool (toUpperCase(stripSign(Item)) ==String "N"
                 orBool toUpperCase(stripSign(Item)) ==String "NA"
                 orBool toUpperCase(stripSign(Item)) ==String "I"
                 orBool toUpperCase(stripSign(Item)) ==String "IN"
                 orBool toUpperCase(stripSign(Item)) ==String "INFI"
                 orBool toUpperCase(stripSign(Item)) ==String "INFIN"
                 orBool toUpperCase(stripSign(Item)) ==String "INFINI"
                 orBool toUpperCase(stripSign(Item)) ==String "INFINIT")
  rule isCompleteItem(_, _) => true [owise]

  syntax Bool ::= isNumericDirective(Directive) [function]
  rule isNumericDirective(%(_, _, _, "d")) => true
  rule isNumericDirective(%(_, _, _, "i")) => true
  rule isNumericDirective(%(_, _, _, "o")) => true
  rule isNumericDirective(%(_, _, _, "u")) => true
  rule isNumericDirective(%(_, _, _, "x")) => true
  rule isNumericDirective(%(_, _, _, "p")) => true
  rule isNumericDirective(D::Directive) => isFloatDirective(D) [owise]

  syntax Bool ::= isFloatDirective(Directive) [function]
  rule isFloatDirective(%(_, _, _, "a")) => true
  rule isFloatDirective(%(_, _, _, "e")) => true
  rule isFloatDirective(%(_, _, _, "f")) => true
  rule isFloatDirective(%(_, _, _, "g")) => true
  rule isFloatDirective(_) => false [owise]

  syntax Bool ::= atFieldWidth(String, Directive) [function]
  rule atFieldWidth(S::String, %(_, Width::Int, _, _))
       => lengthString(S) ==Int Width
       requires Width >Int 0
  rule atFieldWidth(_, _) => false [owise]

  syntax Bool ::= isSign(String) [function]
  rule isSign("+") => true
  rule isSign("-") => true
  rule isSign(_) => false [owise]

  syntax Bool ::= isXPrefix(String) [function]
  rule isXPrefix(S::String) => stripSign(S) ==String "0"

  syntax Bool ::= hasDot(String) [function]
  rule hasDot(S::String) => findChar(S, ".", 0) >=Int 0

  syntax Bool ::= hasPosSign(String) [function]
  rule hasPosSign(S::String) => firstChar(S) ==String "+"
       requires lengthString(S) >=Int 1
  rule hasPosSign(_) => false [owise]

  syntax Bool ::= hasNegSign(String) [function]
  rule hasNegSign(S::String) => firstChar(S) ==String "-"
       requires lengthString(S) >=Int 1
  rule hasNegSign(_) => false [owise]

  syntax String ::= stripSign(String) [function]
  rule stripSign(S::String) => stripSign(butFirstChar(S))
       requires lengthString(S) >=Int 1
            andBool (isSign(firstChar(S)) orBool isWhitespace(firstChar(S)))
  rule stripSign(S::String) => S [owise]

  syntax Bool ::= has0xPrefix(String) [function]
  rule has0xPrefix(S::String) => toUpperCase(substrString(stripSign(S), 0, 2)) ==String "0X"
       requires lengthString(stripSign(S)) >=Int 2
  rule has0xPrefix(_) => false [owise]

  syntax String ::= strip0xPrefix(String) [function]
  rule strip0xPrefix(S::String) => "+" +String substrString(stripSign(S), 2, lengthString(S))
       requires has0xPrefix(S) andBool hasPosSign(S)
  rule strip0xPrefix(S::String) => "-" +String substrString(stripSign(S), 2, lengthString(S))
       requires has0xPrefix(S) andBool hasNegSign(S)
  rule strip0xPrefix(S::String) => substrString(stripSign(S), 2, lengthString(S))
       requires has0xPrefix(S) andBool notBool (hasPosSign(S) orBool hasNegSign(S))
  rule strip0xPrefix(S::String) => S [owise]

  syntax ParseResult ::= parseResult(Directive, List)

  syntax List ::= parseFormat(List) [function]
  rule parseFormat(L::List) => parseFormat'(parseDirective(L), false)
       requires L =/=K .List
  rule parseFormat(.List) => .List

  syntax List ::= "parseFormat'" "(" ParseResult "," Bool ")" [function]
  rule parseFormat'(parseResult(D::Directive, L::List), false)
       => ListItem(" ") ListItem(normalizeDirective(D)) parseFormat(L)
       requires isSpaceSkipDirective(D)
  rule parseFormat'(parseResult(D::Directive, L::List), true)
       => ListItem(normalizeDirective(D)) parseFormat(L)
       requires isSpaceSkipDirective(D)
  rule parseFormat'(parseResult(D::Directive, .List), _)
       => ListItem(normalizeDirective(D))
       requires notBool isSpaceSkipDirective(D)
  rule parseFormat'(parseResult(D::Directive, L::List), _)
       => ListItem(normalizeDirective(D)) parseFormat'(parseDirective(L), isWhitespace(D))
       [owise]

  // Does this directive require skipping leading whitespace?
  syntax Bool ::= isSpaceSkipDirective(Directive) [function]
  rule isSpaceSkipDirective(_:String) => false
  rule isSpaceSkipDirective(%(_, _, _, D::String)) => false
       requires firstChar(D) ==String "["
  rule isSpaceSkipDirective(%(_, _, _, "c")) => false
  rule isSpaceSkipDirective(%(_, _, _, "n")) => false
  rule isSpaceSkipDirective(_) => true [owise]

  syntax Directive ::= normalizeDirective(Directive) [function]
  rule normalizeDirective(%(Write::Bool, 0, Length::String, "c"))
       => %(Write, 1, Length, "c")
  rule normalizeDirective(%(Write::Bool, Width::Int, Length::String, "X"))
       => %(Write, Width, Length, "x")
  rule normalizeDirective(%(Write::Bool, Width::Int, Length::String, "A"))
       => %(Write, Width, Length, "a")
  rule normalizeDirective(%(Write::Bool, Width::Int, Length::String, "E"))
       => %(Write, Width, Length, "e")
  rule normalizeDirective(%(Write::Bool, Width::Int, Length::String, "F"))
       => %(Write, Width, Length, "f")
  rule normalizeDirective(%(Write::Bool, Width::Int, Length::String, "G"))
       => %(Write, Width, Length, "g")
  rule normalizeDirective(D::Directive) => D [owise]

  syntax ParseResult ::= parseDirective(List) [function]
  rule parseDirective(ListItem(C:String) L::List)
       => parseResult(" ", eatWhitespace(L))
       requires isWhitespace(C)
  rule parseDirective(ListItem(C:String) L::List)
       => parseResult(C, L)
       requires C =/=String "%" andBool notBool isWhitespace(C)
  rule parseDirective(ListItem("%") ListItem("%") L::List)
       => parseResult(%%, L)
  rule parseDirective(ListItem("%") ListItem("*") L::List)
       => parseResult(%
            ( false
            , parseDigits(L)
            , parseLengthMod(eatDigits(L))
            , parseConvSpec(eatLengthMod(eatDigits(L)))
            ), eatConvSpec(eatLengthMod(eatDigits(L))))
  rule parseDirective(ListItem("%") L::List)
       => parseResult(%
            ( true
            , parseDigits(L)
            , parseLengthMod(eatDigits(L))
            , parseConvSpec(eatLengthMod(eatDigits(L)))
            ), eatConvSpec(eatLengthMod(eatDigits(L))))
       [owise]

  syntax Bool ::= isWhitespace(Directive) [function]
  rule isWhitespace(C:String)
       => (ordChar(C) >=Int 9 andBool ordChar(C) <=Int 13)
            orBool C ==String " "
       requires C =/=String ""
  rule isWhitespace(_) => false [owise]

  syntax Bool ::= isDigit(String, Int) [function]
  rule isDigit(C::String, Base::Int)
       => ordChar(C) >=Int ordChar("0") andBool ordChar(C) <Int (ordChar("0") +Int Base)
       requires Base <=Int 10
            andBool C =/=String ""
  rule isDigit(C::String, Base::Int)
       => isDigit(C, 10)
            orBool (ordChar(C) >=Int ordChar("a")
                 andBool ordChar(C) <Int (ordChar("a") +Int (Base -Int 10)))
            orBool (ordChar(C) >=Int ordChar("A")
                 andBool ordChar(C) <Int (ordChar("A") +Int (Base -Int 10)))
       requires Base >Int 10
            andBool C =/=String ""
  rule isDigit(_, _) => false [owise]

  syntax Bool ::= hasDigit(String) [function]
  rule hasDigit(S::String)
       => findChar(S, "0", 0) =/=Int -1
            orBool findChar(S, "1", 0) =/=Int -1
            orBool findChar(S, "2", 0) =/=Int -1
            orBool findChar(S, "3", 0) =/=Int -1
            orBool findChar(S, "4", 0) =/=Int -1
            orBool findChar(S, "5", 0) =/=Int -1
            orBool findChar(S, "6", 0) =/=Int -1
            orBool findChar(S, "7", 0) =/=Int -1
            orBool findChar(S, "8", 0) =/=Int -1
            orBool findChar(S, "9", 0) =/=Int -1
            orBool findChar(S, "a", 0) =/=Int -1 orBool findChar(S, "A", 0) =/=Int -1
            orBool findChar(S, "b", 0) =/=Int -1 orBool findChar(S, "B", 0) =/=Int -1
            orBool findChar(S, "c", 0) =/=Int -1 orBool findChar(S, "C", 0) =/=Int -1
            orBool findChar(S, "d", 0) =/=Int -1 orBool findChar(S, "D", 0) =/=Int -1
            orBool findChar(S, "e", 0) =/=Int -1 orBool findChar(S, "E", 0) =/=Int -1
            orBool findChar(S, "f", 0) =/=Int -1 orBool findChar(S, "F", 0) =/=Int -1

  syntax Bool ::= hasRadix(String) [function]
  rule hasRadix(S::String)
       => findChar(S, "p", 0) =/=Int -1 orBool findChar(S, "P", 0) =/=Int -1
       requires has0xPrefix(S)
  rule hasRadix(S::String)
       => findChar(S, "e", 0) =/=Int -1 orBool findChar(S, "E", 0) =/=Int -1
       [owise]

  syntax List ::= eatWhitespace(List) [function]
  rule eatWhitespace(ListItem(C:String) L::List)
       => eatWhitespace(L)
       requires isWhitespace(C)
  rule eatWhitespace(L::List) => L [owise]

  syntax Int ::= parseDigits(List) [function]
  rule parseDigits(L::List) => String2Int(fst(parseDigits'(L)))
  syntax List ::= eatDigits(List) [function]
  rule eatDigits(L::List) => snd(parseDigits'(L))

  syntax ParseStrResult ::= parseStrResult(String, List)

  syntax ParseStrResult ::= "parseDigits'" "(" List ")" [function]
  rule parseDigits'(ListItem(C:String) L::List)
       => parseStrResult(C +String fst(parseDigits'(L)), snd(parseDigits'(L)))
       requires isDigit(C, 10)
  rule parseDigits'(L::List)
       => parseStrResult("", L) [owise]

  syntax String ::= parseString(String, List) [function]
  rule parseString(S::String, L::List) => fst(parseString'(S, L))
  syntax List ::= eatString(String, List) [function]
  rule eatString(S::String, L::List) => snd(parseString'(S, L))

  syntax ParseStrResult ::= "parseString'" "(" String "," List ")" [function]
  rule parseString'(S::String, ListItem(C:String) L::List)
       => parseStrResult(C +String fst(parseString'(S, L)), snd(parseString'(S, L)))
       requires C =/=String S
  rule parseString'(_, L::List)
       => parseStrResult("", L) [owise]

  syntax String ::= parseLengthMod(List) [function]
  rule parseLengthMod(L::List) => fst(parseLengthMod'(L))
  syntax List ::= eatLengthMod(List) [function]
  rule eatLengthMod(L::List) => snd(parseLengthMod'(L))

  syntax ParseStrResult ::= "parseLengthMod'" "(" List ")" [function]
  rule parseLengthMod'(ListItem("h") ListItem("h") L::List)
       => parseStrResult("hh", L)
  rule parseLengthMod'(ListItem("h") L::List)
       => parseStrResult("h", L)
       requires notBool atHead("h", L)
  rule parseLengthMod'(ListItem("l") L::List)
       => parseStrResult("l", L)
       requires notBool atHead("l", L)
  rule parseLengthMod'(ListItem("l") ListItem("l") L::List)
       => parseStrResult("ll", L)
  rule parseLengthMod'(ListItem(C:String) L::List)
       => parseStrResult(C, L)
       requires C ==String "j"
            orBool C ==String "z"
            orBool C ==String "t"
            orBool C ==String "L"
  rule parseLengthMod'(L::List) => parseStrResult("", L) [owise]

  syntax String ::= parseConvSpec(List) [function]
  rule parseConvSpec(L::List) => fst(parseConvSpec'(L))
  syntax List ::= eatConvSpec(List) [function]
  rule eatConvSpec(L::List) => snd(parseConvSpec'(L))

  syntax ParseStrResult ::= "parseConvSpec'" "(" List ")" [function]
  rule parseConvSpec'(ListItem(C:String) L::List)
       => parseStrResult(C, L)
       requires C ==String "d"
            orBool C ==String "i"
            orBool C ==String "o"
            orBool C ==String "u"
            orBool C ==String "x" orBool C ==String "X"
            orBool C ==String "a" orBool C ==String "A"
            orBool C ==String "e" orBool C ==String "E"
            orBool C ==String "f" orBool C ==String "F"
            orBool C ==String "g" orBool C ==String "G"
            orBool C ==String "c"
            orBool C ==String "s"
            orBool C ==String "p"
            orBool C ==String "n"
  rule parseConvSpec'(ListItem("[") ListItem("^") ListItem("]") L::List)
       => parseStrResult("[^]" +String parseString("]", L), tail(eatString("]", L)))
  rule parseConvSpec'(ListItem("[") ListItem("^") L::List)
       => parseStrResult("[^" +String parseString("]", L), tail(eatString("]", L)))
       requires notBool atHead("]", L)
  rule parseConvSpec'(ListItem("[") ListItem("]") L::List)
       => parseStrResult("[]" +String parseString("]", L), tail(eatString("]", L)))
  rule parseConvSpec'(ListItem("[") L::List)
       => parseStrResult("[" +String parseString("]", L), tail(eatString("]", L)))
       requires notBool atHead("^", L) andBool notBool atHead("]", L)
  rule parseConvSpec'(L::List) => parseStrResult("", L) [owise]

  syntax Bool ::= atHead(String, List) [function]
  rule atHead(S::String, ListItem(S) _) => true
  rule atHead(_, _) => false [owise]

  syntax List ::= tail(List) [function]
  rule tail(ListItem(_) L::List) => L
  rule tail(_) => .List [owise]

  syntax String ::= fst(ParseStrResult) [function, klabel(fstParseStr)]
  rule fst(parseStrResult(S::String, _)) => S

  syntax List ::= snd(ParseStrResult) [function, klabel(sndParseStr)]
  rule snd(parseStrResult(_, L::List)) => L

  syntax KItem ::= formatter(KItem, List) [strict(1)]
  syntax Str ::= formattedResult(String)

  syntax KItem ::= formatter(KItem, List) [strict(1)]
  rule [format-start]:
       <k> formatter(str(S::String), VarArgs::List)
            => formatter'(VarArgs)
       ...</k>
       (.Bag =>
            <formatting>...
                 <format> stringToList(S) </format>
            ...</formatting>
       )
       [structural]
  rule [format-restart]:
       <k> formatter(str(S::String), VarArgs::List)
            => formatter'(VarArgs)
       ...</k>
       <format> .List => stringToList(S) </format>
       <format-result> _ => .List </format-result>
       [structural]

  syntax KItem ::= "formatter'" "(" List ")"
  rule <k> formatter'(_)
            => formattedResult(listToString(Result))
       ...</k>
       <format> .List </format>
       <format-result> Result:List </format-result>
       <format-state> "normal" </format-state>
       [structural]

  rule [format-normal]:
       <k> formatter'(_) ...</k>
       <format> ListItem(S:String) => .List ...</format>
       <format-result>... .List => ListItem(S) </format-result>
       <format-state> "normal" </format-state>
       requires S =/=String "%"
       [structural]

  rule [format-reset]:
       <k> formatter'(_) ...</k>
       <format-pad-zero> _ => false </format-pad-zero>
       <format-alt-form> _ => false </format-alt-form>
       <format-field-width> _ => "" </format-field-width>
       <format-precision> _ => "" </format-precision>
       <format-length> _ => "" </format-length>
       <format-state> "reset" => "normal" </format-state>
       [structural]

  rule [format-%]:
       <k> formatter'(_) ...</k>
       <format> ListItem("%") => .List ...</format>
       <format-state> "normal" => "%" </format-state>
       [structural]

  // %[flags][width][.precision][length]type

  rule [format-%0]:
       <k> formatter'(_) ...</k>
       <format-pad-zero> _ => true </format-pad-zero>
       <format-field-width> "" </format-field-width>
       <format> ListItem("0") => .List ...</format>
       <format-state> "%" </format-state>
       [structural]
  rule <k> formatter'(_) ...</k>
       <format-alt-form> _ => true </format-alt-form>
       <format-field-width> "" </format-field-width>
       <format> ListItem("#") => .List ...</format>
       <format-state> "%" </format-state>
       [structural]
  rule <k> formatter'(_) ...</k>
       <format-field-width> W:String => W +String "0" </format-field-width>
       <format> ListItem("0") => .List ...</format>
       <format-state> "%" </format-state>
       requires W =/=K ""
       [structural]
  rule <k> formatter'(_) ...</k>
       <format> ListItem(C:String) => .List ...</format>
       <format-field-width> W:String => W +String C </format-field-width>
       <format-state> "%" </format-state>
       requires isSign(C) orBool (isDigit(C, 10) andBool C =/=String "0")
       [structural]
  rule <k> formatter'((ListItem(V:LibCValue) => .List) _) ...</k>
       <format> ListItem("*") ListItem(".") => .List ...</format>
       <format-field-width> "" => Int2String(extractCInt(V)) </format-field-width>
       <format-state> "%" => "%." </format-state>
       requires isCInt(V)
       [structural]
  rule <k> formatter'((ListItem(V:LibCValue) => .List) _) ...</k>
       <format> (ListItem("*") => .List) ListItem(C:String) ...</format>
       <format-field-width> "" => Int2String(extractCInt(V)) </format-field-width>
       <format-state> "%" </format-state>
       requires isCInt(V)
            andBool C =/=K "*"
            andBool notBool isDigit(C, 10)
       [structural]
  rule <k> formatter'(_) ...</k>
       <format> ListItem("*") => .List ...</format>
       <format-field-width> "" => "*" </format-field-width>
       <format-state> "%" </format-state>

  rule <k> formatter'(_) ...</k>
       <format> ListItem(".") => .List ...</format>
       <format-precision> "" </format-precision>
       <format-state> "%" => "%." </format-state>
       [structural]

  rule <k> formatter'(_) ...</k>
       <format> ListItem(C:String) => .List ...</format>
       <format-precision> P:String => P +String C </format-precision>
       <format-state> "%." </format-state>
       requires isDigit(C, 10)
       [structural]
  rule <k> formatter'(_) ...</k>
       <format> ListItem(C:String) ...</format>
       <format-precision> P:String </format-precision>
       <format-state> "%." => "%" </format-state>
       requires P =/=K ""
            andBool notBool isDigit(C, 10) andBool notBool C ==K "*"
       [structural]
  rule <k> formatter'(_) ...</k>
       <format> ListItem(C:String) ...</format>
       <format-precision> "" => "0" </format-precision>
       <format-state> "%." => "%" </format-state>
       requires notBool isDigit(C, 10) andBool C =/=K "*"
       [structural]

  rule <k> formatter'(_) ...</k>
       <format> ListItem("*") => .List ...</format>
       <format-precision> "" => "*" </format-precision>
       <format-state> "%." => "%" </format-state>

  rule <k>
         (.K
          =>
          error(ioError("'printf': Invalid conversion specifier with '#' flag."))) ~>
          formatter'(_)
       ...</k>
       <format-alt-form> true </format-alt-form>
       <format-state> State::String </format-state>
       requires State ==String "%d"
            orBool State ==String "%i"
            orBool State ==String "%u"
            orBool State ==String "%c"
            orBool State ==String "%s"
            orBool State ==String "%p"
            orBool State ==String "%n"
            orBool State ==String "%%"

  rule <k>
         (.K
          =>
          error(ioError("'printf': Invalid conversion specifier with '0' flag."))) ~>
          formatter'(_)
       ...</k>
       <format-pad-zero> true </format-pad-zero>
       <format-state> State::String </format-state>
       requires State ==String "%c"
            orBool State ==String "%s"
            orBool State ==String "%p"
            orBool State ==String "%n"
            orBool State ==String "%%"

  rule [format-%d-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem(S:String) => .List ...</format>
       <format-precision> P:String => {#if P ==String "" #then "1" #else P #fi}:>String </format-precision>
       <format-pad-zero> Z::Bool => {#if P ==String "" #then Z #else false #fi}:>Bool </format-pad-zero>
       <format-state> "%" => "%d" </format-state>
       requires S ==String "d" orBool S ==String "i"
       [structural]

  rule <k> formatter'(_) ...</k>
       <format-arg> formatString(_) => formatUnknown </format-arg>
       <format-state> State::String </format-state>
       requires (State ==String "%d" orBool State ==String "%x" orBool State ==String "%X" orBool State ==String "%u" orBool State ==String "%o")

  rule <k> formatter'(_) ...</k>
       <format-arg> formatPointer(_) => formatUnknown </format-arg>
       <format-state> State::String </format-state>
       requires (State ==String "%d" orBool State ==String "%x" orBool State ==String "%X" orBool State ==String "%u" orBool State ==String "%o")

  rule <k> (.K => error(ioError("Printing an unspecified value."))) ~> formatter'(_) ...</k>
       <format-arg> formatUnknown </format-arg>

  rule <k> formatter'(_) ...</k>
       <format-arg> formatInt(D::Int) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-alt-form> false </format-alt-form>
       <format-result>...
            .List => ListItem(
                     formatPrecisionWidth(Int2String(D),
                                          String2Int(P),
                                          Z, "",
                                          String2Int(W)))
       </format-result>
       <format-state> "%d" => "reset" </format-state>
       [structural]

  rule [format-%o-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("o") => .List ...</format>
       <format-precision> P:String => {#if P ==String "" #then "1" #else P #fi}:>String </format-precision>
       <format-pad-zero> Z::Bool => {#if P ==String "" #then Z #else false #fi}:>Bool </format-pad-zero>
       <format-state> "%" => "%o" </format-state>
       [structural]
  rule [format-%o]:
       <k> formatter'(_) ...</k>
       <format-arg> formatInt(D::Int) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-alt-form> Hash:Bool </format-alt-form>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(
                     formatPrecisionWidth(Base2String(D, 8),
                                          String2Int(P),
                                          Z, {#if Hash #then "0" #else "" #fi}:>String,
                                          String2Int(W)))
       </format-result>
       <format-state> "%o" => "reset" </format-state>
       [structural]
  rule [format-%u-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("u") => .List ...</format>
       <format-precision> P:String => {#if P ==String "" #then "1" #else P #fi}:>String </format-precision>
       <format-pad-zero> Z::Bool => {#if P ==String "" #then Z #else false #fi}:>Bool </format-pad-zero>
       <format-state> "%" => "%u" </format-state>
       [structural]
  rule [format-%u]:
       <k> formatter'(_) ...</k>
       <format-arg> formatInt(D::Int) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-alt-form> false </format-alt-form>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(
                     formatPrecisionWidth(Int2String(D),
                                          String2Int(P),
                                          Z, "",
                                          String2Int(W)))
       </format-result>
       <format-state> "%u" => "reset" </format-state>
       [structural]
  rule [format-%x-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("x") => .List ...</format>
       <format-precision> P:String => {#if P ==String "" #then "1" #else P #fi}:>String </format-precision>
       <format-pad-zero> Z::Bool => {#if P ==String "" #then Z #else false #fi}:>Bool </format-pad-zero>
       <format-state> "%" => "%x" </format-state>
       [structural]
  rule [format-%x]:
       <k> formatter'(_) ...</k>
       <format-arg> formatInt(D::Int) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-alt-form> Hash:Bool </format-alt-form>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(
                     formatPrecisionWidth(Base2String(D, 16),
                                          String2Int(P),
                                          Z, {#if Hash #then "0x" #else "" #fi}:>String,
                                          String2Int(W)))
       </format-result>
       <format-state> "%x" => "reset" </format-state>
       [structural]
  rule [format-%X-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("X") => .List ...</format>
       <format-precision> P:String => {#if P ==String "" #then "1" #else P #fi}:>String </format-precision>
       <format-pad-zero> Z::Bool => {#if P ==String "" #then Z #else false #fi}:>Bool </format-pad-zero>
       <format-state> "%" => "%X" </format-state>
       [structural]
  rule [format-%X]:
       <k> formatter'(_) ...</k>
       <format-arg> formatInt(D::Int) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-alt-form> Hash:Bool </format-alt-form>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(
                     toUpperCase(formatPrecisionWidth(Base2String(D, 16),
                                          String2Int(P),
                                          Z, {#if Hash #then "0X" #else "" #fi}:>String,
                                          String2Int(W))))
       </format-result>
       <format-state> "%X" => "reset" </format-state>
       [structural]

  //TODO(traiansf): missing formatting for long double
  //TODO(traiansf): width specs for floats are not working
  //TODO(dwightguth): support alternate form
  rule [format-%f-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("f") => .List ...</format>
       <format-state> "%" => "%f" </format-state>
       [structural]
  rule [format-%f]:
       <k> formatter'(_) ...</k>
       <format-arg> formatFloat(D::Float) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(pad(
                 Float2String(setPrecision(D, {#if P ==K "" #then 6 #else String2Int(P) #fi}:>Int)),
                 String2Int(W),
                 {#if Z #then "0" #else " " #fi}:>String))
       </format-result>
       <format-state> "%f" => "reset" </format-state>
       [structural]
  rule [format-%F-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("F") => .List ...</format>
       <format-state> "%" => "%F" </format-state>
       [structural]
  rule [format-%F]:
       <k> formatter'(_) ...</k>
       <format-arg> formatFloat(D::Float) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(pad(
                 toUpperCase(Float2String(setPrecision(D, {#if P ==K "" #then 6 #else String2Int(P) #fi}:>Int))),
                 String2Int(W),
                 {#if Z #then "0" #else " " #fi}:>String))
       </format-result>
       <format-state> "%F" => "reset" </format-state>
       [structural]

  rule [format-%g-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("g") => .List ...</format>
       <format-state> "%" => "%g" </format-state>
       [structural]
  rule [format-%g]:
       <k> formatter'(_) ...</k>
       <format-arg> formatFloat(D::Float) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(pad(
                 Float2String(setPrecision(D, String2Int(P))),
                 String2Int(W),
                 {#if Z #then "0" #else " " #fi}:>String))
       </format-result>
       <format-state> "%g" => "reset" </format-state>
       [structural]
  rule [format-%G-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("G") => .List ...</format>
       <format-state> "%" => "%G" </format-state>
       [structural]
  rule [format-%G]:
       <k> formatter'(_) ...</k>
       <format-arg> formatFloat(D::Float) => .K </format-arg>
       <format-precision> P:String </format-precision>
       <format-pad-zero> Z:Bool </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(pad(
                 toUpperCase(Float2String(setPrecision(D, String2Int(P)))),
                 String2Int(W),
                 {#if Z #then "0" #else " " #fi}:>String))
       </format-result>
       <format-state> "%G" => "reset" </format-state>
       [structural]

  rule [format-%c-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("c") => .List ...</format>
       <format-state> "%" => "%c" </format-state>
       [structural]
  rule [format-%c]:
       <k> formatter'(_) ...</k>
       <format-arg> formatChar(C::Int) => .K </format-arg>
       <format-pad-zero> false </format-pad-zero>
       <format-alt-form> false </format-alt-form>
       <format-result>...
            .List => ListItem(chrChar(((C:Int %Int 256) +Int 256)
                 %Int 256))
       </format-result>
       <format-state> "%c" => "reset" </format-state>
       [structural]

  rule [format-%s-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("s") => .List ...</format>
       <format-state> "%" => "%s" </format-state>
       [structural]
  rule [format-%s]:
       <k> (.K => #if P ==String "" #then readString(Loc) #else readString(Loc, String2Int(P)) #fi)
            ~> formatter'(_)
       ...</k>
       <format-length> Len::String </format-length>
       <format-precision> P::String </format-precision>
       <format-pad-zero> false </format-pad-zero>
       <format-alt-form> false </format-alt-form>
       <format-arg> formatString(Loc::StringPointer) => .K </format-arg>
       <format-state> "%s" => "%s-read" </format-state>
       requires Len =/=String "l"
       [structural]
  rule [format-%ls]:
       <k> (.K => #if P ==String "" #then readWString(Loc) #else readWString(Loc, String2Int(P)) #fi)
            ~> formatter'(_)
       ...</k>
       <format-length> "l" </format-length>
       <format-precision> P::String </format-precision>
       <format-pad-zero> false </format-pad-zero>
       <format-alt-form> false </format-alt-form>
       <format-arg> formatString(Loc::StringPointer) => .K </format-arg>
       <format-state> "%s" => "%s-read" </format-state>
       [structural]
  rule [format-%s-done]:
       <k> (str(S:String) => .K)
            ~> formatter'(_)
       ...</k>
       <format-result>...
            .List => ListItem(S)
       </format-result>
       <format-state> "%s-read" => "reset" </format-state>
       [structural]

  rule [format-%p-start]:
       <k> formatter'(Args:List) => formatter-next(Args) ...</k>
       <format> ListItem("p") => .List ...</format>
       <format-state> "%" => "%p" </format-state>
       [structural]
  rule [format-%p]:
       <k> formatter'(_) ...</k>
       <format-arg> formatPointer(Loc::BufferPointer) => .K </format-arg>
       <format-precision> "" </format-precision>
       <format-alt-form> false </format-alt-form>
       <format-pad-zero> false </format-pad-zero>
       <format-field-width> W:String </format-field-width>
       <format-result>...
            .List => ListItem(pad(pointerToString(Loc), String2Int(W), " "))
       </format-result>
       <format-state> "%p" => "reset" </format-state>
       [structural]

  rule [format-%%]:
       <k> formatter'(_) ...</k>
       <format> ListItem("%") => .List ...</format>
       <format-state> "%" => "%%" </format-state>
       [structural]
  rule <k> formatter'(_) ...</k>
       <format-field-width> "" </format-field-width>
       <format-alt-form> false </format-alt-form>
       <format-pad-zero> false </format-pad-zero>
       <format-length> "" </format-length>
       <format-precision> "" </format-precision>
       <format-result>...
            .List => ListItem("%")
       </format-result>
       <format-state> "%%" => "reset" </format-state>
       [structural]

  rule [format-%l]:
       <k> formatter'(_) ...</k>
       <format> ListItem(Char:String) => .List ...</format>
       <format-state> "%" </format-state>
       <format-length>
            Length:String => Length +String Char
       </format-length>
       requires Char ==String "l"
            orBool Char ==String "h"
            orBool Char ==String "j"
            orBool Char ==String "z"
            orBool Char ==String "t"
       [structural]

  syntax KItem ::= "formatter-next" "(" List ")"
  rule <k> formatter-next(ListItem(V:LibCValue) Args:List)
           => formatter-arg(nextvarg(V), Args)
       ...</k>
       <format-field-width> W::String </format-field-width>
       <format-precision> P::String </format-precision>
       requires W =/=String "*" andBool P =/=String "*"
       [structural]
  rule (.K => error(ioError("Insufficient arguments supplied for the format string."))) ~>
       formatter-next(.List)
       [structural]

  rule <k> formatter-next(ListItem(V:LibCValue) Args:List)
           => formatter-width(nextintarg(V), Args)
       ...</k>
       <format-field-width> "*" </format-field-width>
       [structural]

  rule <k> formatter-next(ListItem(V:LibCValue) Args:List)
           => formatter-prec(nextintarg(V), Args)
       ...</k>
       <format-field-width> W::String </format-field-width>
       <format-precision> "*" </format-precision>
       requires W =/=String "*"
       [structural]


  syntax KItem ::= "formatter-arg" "(" KItem "," List ")" [strict(1)]
  rule <k> formatter-arg(V::FormatArg, Args:List)
            => formatter'(Args)
       ...</k>
       <format-arg> _ => V </format-arg>
       [structural]
  syntax KItem ::= "formatter-prec" "(" KItem "," List ")" [strict(1)]
  rule <k> formatter-prec(formatInt(V::Int), Args:List)
            => formatter-next(Args)
       ...</k>
       <format-precision> _ => Int2String(V) </format-precision>
       [structural]
  syntax KItem ::= "formatter-width" "(" KItem "," List ")" [strict(1)]
  rule <k> formatter-width(formatInt(V:Int), Args:List)
            => formatter-next(Args)
       ...</k>
       <format-field-width> _ => Int2String(V) </format-field-width>
       [structural]



  syntax KItem ::= nextvarg(LibCValue)
  rule <k> nextvarg(V:LibCValue) => getValueToPrint(V, State, Length) ...</k>
       <format-state> State:String </format-state>
       <format-length> Length:String </format-length>
       requires isTypeCompatibleWithFormat(V, State, Length)
       [structural]
  rule <k>
         (.K
          =>
          error(ioError("'printf': Mismatch between the type expected by the conversion specifier "
                        +String State +String " and the type of the argument."))) ~>
          nextvarg(V:LibCValue)
       ...</k>
       <format-state> State:String </format-state>
       <format-length> Length:String </format-length>
       requires notBool isTypeCompatibleWithFormat(V, State, Length)
       [structural]

  syntax KItem ::= nextintarg(LibCValue)
  rule <k> nextintarg(V:LibCValue) => getValueToPrint(V, "%d", "") ...</k>
       requires isTypeCompatibleWithFormat(V, "%d", "")
       [structural]
  rule <k>
         (.K
          =>
          error(ioError("'printf': Mismatch between the type expected by the wildcard (*) width or precision sub-specifier and the type of the argument."))) ~>
          nextintarg(V:LibCValue)
       ...</k>
       requires notBool isTypeCompatibleWithFormat(V, "%d", "")
       [structural]

  syntax String ::= pointerToString(BufferPointer) [function]
  rule pointerToString(Loc::BufferPointer) => zeroToNil(Base2String(pointerToInt(Loc), 16))

  syntax String ::= zeroToNil(String) [function]
  rule zeroToNil("0") => "(nil)"
  rule zeroToNil(S::String) => "0x" +String S [owise]

  syntax String ::= pad(String, Int, String) [function]
                  | "pad'" "(" String "," Int "," String ")" [function]

  rule pad(X::String, W::Int, _) => X
       requires lengthString(X) >=Int absInt(W)
  rule pad(X::String, W::Int, P::String)
       => pad'(X, (absInt(W) -Int lengthString(X)) *Int signInt(W), P)
       requires lengthString(X) <Int absInt(W)

  rule pad'(X::String, W::Int, P::String) => pad'(X +String " ", W +Int 1, P)
       requires W <Int 0
  rule pad'(X::String, W::Int, P::String) => pad'(P +String X, W -Int 1, P)
       requires W >Int 0
  rule pad'(X::String, W::Int, _) => X
       requires W ==Int 0

  syntax String ::= prependZero(String) [function]
  rule prependZero(V2::String) => {#if firstChar(V2) ==String "0" #then V2 #else "0" +String V2 #fi}:>String

  syntax String ::= "formatPrecisionWidth" "(" String "," Int "," Bool "," String "," Int ")" [function]
                  | "formatPrecisionWidth'" "(" String "," Int "," Bool "," String "," Int ")" [function]
                  | "formatPrecisionWidth''" "(" String "," Int "," String "," Int ")" [function]

  rule formatPrecisionWidth(V::String, P::Int, Z::Bool, Prefix::String, W::Int)
       => formatPrecisionWidth'(V, P, {#if W <Int 0 #then false #else Z #fi}:>Bool, Prefix, W)
       requires V =/=String "0" orBool P =/=Int 0 orBool Prefix ==String "0"
  rule formatPrecisionWidth("0", 0, Z::Bool, Prefix::String, W::Int)
       => formatPrecisionWidth'("", 0, {#if W <Int 0 #then false #else Z #fi}:>Bool, Prefix, W)
       requires Prefix =/=String "0"

  rule formatPrecisionWidth'(V::String, P::Int, true, Prefix::String, W::Int)
       => formatPrecisionWidth''(V, maxInt(P, W -Int lengthString(Prefix)), Prefix, 0)
  rule formatPrecisionWidth'(V::String, P::Int, false, Prefix::String, W::Int)
       => formatPrecisionWidth''(V, P, Prefix, W)

  rule formatPrecisionWidth''(V::String, P::Int, "0", W::Int)
       => pad(prependZero(pad(V, P, "0")), W, " ")
  rule formatPrecisionWidth''(V::String, P::Int, Prefix::String, W::Int)
       => pad(pad(V, P, "0"), W, " ")
       requires ((V ==String "0" orBool V ==String "") andBool (Prefix ==String "0x" orBool Prefix ==String "0X")) orBool Prefix ==String ""
  rule formatPrecisionWidth''(V::String, P::Int, Prefix::String, W::Int)
       => pad(Prefix +String pad(V, P, "0"), W, " ")
       requires V =/=String "0" andBool V =/=String "" andBool (Prefix ==String "0x" orBool Prefix ==String "0X")

  syntax Int ::= signInt(Int) [function]
  rule signInt(X::Int) => X /Int absInt(X)

  syntax Float ::= setPrecision(Float, Int) [function]
  // TODO(chathhorn)
  rule setPrecision(F::Float, _) => F
endmodule
