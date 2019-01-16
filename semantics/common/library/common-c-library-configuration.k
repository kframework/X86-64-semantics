module COMMON-C-LIBRARY-CONFIGURATION
  imports COMMON-C-LIBRARY-IO-SYNTAX

  imports MAP

  configuration
    <c-library>
      // stdlib.h support
      <malloced> .Map </malloced>
      // Stderr is unbuffered by default, but it can be changed.
      <atexit> flush(#stdout) ~> flush(#stderr) </atexit>
      <at-quick-exit> .K </at-quick-exit>

      // stdarg.h support.
      <va-lists> .Map </va-lists>
      // setjmp.h support.
      <jmp-bufs> .Map </jmp-bufs>

      <open-files> .Set </open-files>

      <files>
        <file multiplicity="*">
          <fid> .K </fid>
          <uri> .K </uri>
          <pos> 0 </pos>
          <mode> "r" </mode>
          <next-byte> .K </next-byte>
          <read-buffer> "" </read-buffer>
          <write-buffer> "" </write-buffer>
          <buffer-mode> fullBuf </buffer-mode>
          <buffer-size> bufSiz </buffer-size>
          <sending> .List </sending>
          <done> "" </done>
          <feof> false </feof>
          <ferror> 0 </ferror>
          <last-op> noLastOp </last-op>
        </file>
      </files>
      <input> .List </input>
      <output> .List </output>
      // env key string |-> value ptr
      <strerror-cache> .Map </strerror-cache>
      <sig-handling-state> .K </sig-handling-state>
      // Cells to store pointers returned by these functions that are
      // invalidated by subsequent calls.
      <setlocale> .K </setlocale>
      <localeconv> .K </localeconv>
      <getenv> .K </getenv>
    </c-library>


  configuration
    <formatting multiplicity="?">
      <format> .List </format>
      <format-arg> .K </format-arg>
      <format-result> .List </format-result>
      <format-state> "normal" </format-state>
      <format-pad-zero> false </format-pad-zero>
      <format-alt-form> false </format-alt-form>
      <format-field-width> "" </format-field-width>
      <format-length> "" </format-length>
      <format-precision> "" </format-precision>
      <format-matched> 0 </format-matched>
      <format-nread> 0 </format-nread>
      <format-item> "" </format-item>
    </formatting>
endmodule
