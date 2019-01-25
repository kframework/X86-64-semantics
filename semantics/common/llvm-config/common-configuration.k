// TODO: we need to import these modules in the llvm semantics, because when KEQ
// attempts to solve constraints during matching sync nodes, it uses the llvm
// semantics definition context.

requires "../../x86-semantics/x86-semantics.k"
requires "../../x86-semantics/x86-abstract.k"

module X86-EQUIVALENCE
  imports X86-DYNAMIC-SYNTAX

  syntax MemoryCell
  syntax FramesCell
  syntax CpustateCell
  syntax LabelsCell
  syntax ProgramEndAddrCell
  syntax InstrLoadingCell
endmodule

module COMMON-CONFIGURATION
  imports LLVM-CONFIGURATION
  imports X86-EQUIVALENCE
endmodule
