//requires "x86-base-instruction-semantics.k"
requires "x86-loader.k"
requires "x86-fetch-execute.k"
requires "x86-abstract-semantics.k"
requires "x86-flag-checks.k"
requires "x86-base-instructions-semantics.k"

module X86-SEMANTICS
  imports X86-LOADER
  imports X86-FETCH-EXECUTE
  imports X86-ABSTRACT-SEMANTICS
  imports X86-FLAG-CHECKS
  imports X86-BASE-INSTRUCTIONS-SEMANTICS
endmodule
