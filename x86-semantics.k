requires "x86-loader.k"
requires "x86-fetch-execute.k"
requires "x86-abstract-semantics.k"
requires "x86-flag-checks.k"
requires "verification-lemmas.k"
requires "x86-instructions-semantics.k"


/* Testing individual derived instructions
requires "x86-nop.k"
requires "x86-mov.k"
requires "x86-rolq_r64_one.k"
requires "x86-rolw_r16_one.k"
requires "x86-popcntw_r16_r16.k"
requires "x86-sarxq_r64_r64_r64.k"
requires "x86-popcnt.k"
module X86-TEST-SEMANTICS
  imports NOP-SEMANTICS
  imports MOV-SEMANTICS

  imports ROLQ-R64-ONE-SEMANTICS
  imports ROLW-R16-ONE-SEMANTICS
  imports POPCNT-SEMANTICS
  imports POPCNTW-R16-R16-SEMANTICS
  imports SARXQ-R64-R64-R64-SEMANTICS
endmodule
*/

module X86-SEMANTICS
  imports X86-LOADER
  imports X86-FETCH-EXECUTE
  imports X86-ABSTRACT-SEMANTICS
  imports X86-FLAG-CHECKS
  imports VERIFICATION-LEMMAS
  imports X86-INSTRUCTIONS-SEMANTICS

  //imports X86-TEST-SEMANTICS
endmodule
