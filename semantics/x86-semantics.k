require "elf-loader.k"
require "x86-env-init.k"
require "x86-fetch-execute.k"
require "x86-abstract-semantics.k"
require "x86-flag-checks.k"
require "x86-instructions-semantics.k"
require "x86-memory.k"
require "x86-mint-wrapper.k"
require "x86-commom-memory-clib-interface.k"
require "x86-builtin.k"
require "x86-c-library.k"

module X86-SEMANTICS
  imports ELF-SYNTAX
  imports ELF-LOADER
  imports X86-INIT
  imports X86-FETCH-EXECUTE
  imports X86-ABSTRACT-SEMANTICS
  imports X86-FLAG-CHECKS
  imports X86-INSTRUCTIONS-SEMANTICS
  imports X86-MEMORY
  imports MINT-WRAPPER
  imports COMMON-MEMORY-CLIB-INTERFACE
  imports X86-BUILTIN
  imports X86-C-LIBRARY
endmodule
