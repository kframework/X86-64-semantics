requires "common-c-library-configuration.k"
requires "common-c-library-utils.k"
requires "common-c-library-io.k"
requires "common-c-library-stdio.k"
requires "common-c-library-stdlib.k"

// The following two modules are the interface of this C library implementation.
// Users need to define the opaque sorts and give the functions/KItems rewrite
// rules in order to use the library.

module COMMON-C-LIBRARY-OPAQUE-SORTS
  // A pointer to a FILE object.
  syntax FilePointer

  // A pointer to an fpos_t object.
  syntax FPosPointer

  // A pointer to a string object (an array of chars terminated with \0,
  // corresponds to the C char * and const char * types).
  syntax StringPointer

  // A pointer to a buffer object (an array of bytes, corresponds to the C
  // void * type).
  syntax BufferPointer

  // A pointer to a void *() function.
  syntax VoidFunctionPointer

  // A general value to be passed to the vararg lists of printf and scanf
  // variants, and returned from various libc functions. It should be
  // implemented as a subsort of KResult.
  syntax LibCValue
endmodule


module COMMON-C-LIBRARY-OPAQUE-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SORTS

  imports INT
  imports LIST
  imports STRING

  // The following functions check for null.
  syntax Bool ::= isNullFDPtr(FilePointer) [function]
  syntax Bool ::= isNullFPosPtr(FPosPointer) [function]
  syntax Bool ::= isNullStrPtr(StringPointer) [function]
  syntax Bool ::= isNullBufPtr(BufferPointer) [function]

  // The following functions should perform appropriate pointer arithmetic.
  syntax StringPointer ::= StringPointer "+chars" Int [function]
  syntax BufferPointer ::= BufferPointer "+bytes" Int [function]

  // The following function should convert a pointer to an int. It should
  // return 0 in case of failure or a null pointer.
  syntax Int ::= pointerToInt(BufferPointer) [function]

  // The getters that follow should rewrite to this item in case, for any
  // reason, they cannot rewrite to a valid result, as specified for each one
  // below.
  syntax KItem ::= "invalidLibCValue"

  // The implementation of the following KItems can assume that only non-null
  // pointers will be passed to these KItems.
  syntax KItem ::= /* rewrites to an FD */ getValidFD(FilePointer)
  syntax KItem ::= /* rewrites to .K    */ setValidFD(FilePointer, Int)

  syntax KItem ::= /* rewrites to an FPos */ getValidFPos(FPosPointer)
  syntax KItem ::= /* rewrites to .K      */ setValidFPos(FPosPointer, String,
                                                          Int)

  // The implementation of the following KItems cannot assume that the pointers
  // passed to these KItems are non-null, nor that they point to buffers with
  // enough size. Appropriate null-pointer/out-of-bounds dereference behavior
  // should be part of their implementation.
  syntax KItem ::= /* rewrites to an Str */
    readBytes(BufferPointer, /* size in bytes */ Int)

  syntax KItem ::= /* rewrites to an Str that doesn't include the trailing \0 */
    readString(StringPointer)
    [klabel(readStringFull)]
  syntax KItem ::= /* rewrites to an Str that is a prefix of the given string */
    readString(StringPointer, /* size in chars */ Int)
    [klabel(readStringPrefix)]

  syntax KItem ::= /* rewrites to an Str that doesn't include the trailing \0 */
    readWString(StringPointer)
    [klabel(readWStringFull)]
  syntax KItem ::= /* rewrites to an Str that is a prefix of the given string */
    readWString(StringPointer, /* size in chars */ Int)
    [klabel(readWStringPrefix)]

  syntax KItem ::= /* rewrites to .K */
    writeTrapBytes(BufferPointer, /* size in bytes */ Int)
    [klabel(writeTrapBytesBuffer)]
  syntax KItem ::= /* rewrites to .K */
    writeTrapBytes(StringPointer, /* size in bytes */ Int)
    [klabel(writeTrapBytesString)]

  syntax KItem ::= /* rewrites to .K */ writeCharBytes(BufferPointer, String)

  syntax KItem ::= /* rewrites to .K, always adds a trailing /0 */
    writeString(StringPointer, String)

  // The implementation of the following KItems should check that the given
  // LibCValue is the appropriate representation of a C pointer and do the
  // appropriate work to write the given data to the location that it points.
  // The type of the pointer should be used to determine what should be written
  // after appropriate casts.
  syntax KItem ::= /* rewrites to .K */ writeAsChars(LibCValue, String)
  syntax KItem ::= /* rewrites to .K */ writeAsWChars(LibCValue, List)

  syntax KItem ::= /* rewrites to .K, always adds a trailing /0 */
    writeAsString(LibCValue, String)
  syntax KItem ::= /* rewrites to .K, always adds a trailing /0 */
    writeAsWString(LibCValue, List)

  syntax KItem ::= /* rewrites to .K, should handle int and ptr specifiers */
    writeAsInt(
      LibCValue,
      /* the type of the int is inferred from the following specifiers */ Int,
      /* format specifier */ String,
      /* format length sub-specifier */ String)
  // TODO: Add a similar API for floats.

  syntax KItem ::= /* rewrites to .K */ writeNullPointer(LibCValue)

  // The following function should return true when the given value is
  // type-compatible with the given format specifiers.
  syntax Bool ::=
    isTypeCompatibleWithFormat(LibCValue,
                               /* format specifier */ String,
                               /* format length sub-specifier */ String)
    [function]

  // The following KItem should rewrite to the appropriate FormatArg according
  // to the given value and the given format specifiers.
  syntax KItem ::= /* rewrites to a FormatArg */
    getValueToPrint(LibCValue,
                    /* format specifier */ String,
                    /* format length sub-specifier */ String)

  // The implementation of the following should allocate/free a FILE object. The
  // implementation can assume that only a non-null pointer will be passed to
  // freeFile.
  syntax KItem ::=  /* rewrites to a FilePointer */ "allocFile"
  syntax KItem ::=  /* rewrites to .K            */ freeFile(FilePointer)

  // The following functions should return the LibCValues corresponding to the
  // indicated C type with the given value.
  syntax LibCValue ::= asCInt(Int) [function]
  syntax LibCValue ::= asCLongInt(Int) [function]
  syntax LibCValue ::= asCSize(/* always non-negative */ Int) [function]
  syntax LibCValue ::= asCFILEPtr(FilePointer) [function]
  syntax LibCValue ::= asCCharPtr(StringPointer) [function]

  // The following function should return the LibCValue corresponding to a null
  // FilePointer.
  syntax LibCValue ::= "nullFilePointer" [function]

  // The following function should return the LibCValue corresponding to a null
  // StringPointer.
  syntax LibCValue ::= "nullStringPointer" [function]

  // The following KItem should rewrite to true if the given LibCValue (after
  // heating) is equal to one. It is safe to assume that the given LibCValue
  // represents a C int.
  syntax KItem ::= isEqToOne(K) [strict]

  // The following functions should check and extract a C int from a LibCValue.
  // The extractCInt function can assume that isCInt is true for its argument.
  syntax Bool ::= isCInt(LibCValue) [function]
  syntax Int ::= extractCInt(LibCValue) [function]

  // The following KItem should be rewritten to .K and set the errno global to
  // the given value as a side effect.
  syntax KItem ::= setErrno(Int)

  // The following KItem should be rewritten to .K and terminate execution while
  // returning the given value.
  syntax KItem ::= exitExecution(Int)

  // The following KItem should be rewritten to .K and call the given exit
  // handler.
  syntax KItem ::= callExitHandler(VoidFunctionPointer)
endmodule


module COMMON-C-LIBRARY
  imports COMMON-C-LIBRARY-UTILS
  imports COMMON-C-LIBRARY-IO
  imports COMMON-C-LIBRARY-STDIO
  imports COMMON-C-LIBRARY-STDLIB
endmodule
