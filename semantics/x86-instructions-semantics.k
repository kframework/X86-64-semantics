requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

/*
TEMP ← SRC1;
MASK ← SRC2;
DEST ← 0 ;
m← 0, k← 0;
DO WHILE m< OperandSize
    IF MASK[ m] = 1 THEN
        DEST[ m] ← TEMP[ k];
        k ← k+ 1;
    FI
    m ← m+ 1;
OD
*/

// pdepq-r64-r64-r64

  rule <k>
    execinstr (pdepq R1:R64, R2:R64, R3:R64, .Operands) => 
      setRegisterValue(mi(64, 0), R3) ~> parallelBitDeposit64(getRegisterValue(R1,
            RSMap), R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


/*
TEMP ← SRC1;
MASK ← SRC2;
DEST ← 0 ;
m← 0, k← 0;
DO WHILE m< OperandSize
    IF MASK[ m] = 1 THEN
        DEST[ m] ← TEMP[ k];
        k ← k+ 1;
    FI
    m ← m+ 1;
OD
*/

// pdepl-r32-r32-r32

  rule <k>
    execinstr (pdepl R1:R32, R2:R32, R3:R32, .Operands) => 
      setRegisterValue(mi(32, 0), R3) ~> parallelBitDeposit32(getRegisterValue(R1,
            RSMap), R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


// nop

  rule <k>
    execinstr (nop  .Operands) => .
  ...</k>


// nop-semantics


// pdepq-r64-r64-m64


  context execinstr(pdepq:Opcode (HOLE:Mem, R2:R64, R3:R64, .Operands):Operands) [result(MemOffset)]


  rule <k> 
  execinstr (pdepq memOffset( MemOff:MInt):MemOffset, R2:R64, R3:R64,
      .Operands) => 
    loadFromMemory( MemOff, 64) ~> 
    execinstr (pdepq memOffset( MemOff), R2, R3, .Operands) 
  ...</k>


  rule <k> 
  memLoadValue(MemVal:MInt):MemLoadValue ~> 
    execinstr (pdepq memOffset( MemOff), R2, R3, .Operands) =>
      setRegisterValue(mi(64, 0), R3) ~> 
      parallelBitDeposit64(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


// movq-r64-imm64

  rule <k>
    execinstr (movq Imm64:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> handleImmediateWithSignExtend(Imm64, 64, 64)
)

    </regstate>
    


// movq-r64-imm64-semantics


// pdepl-r32-r32-m32


  context execinstr(pdepl:Opcode (HOLE:Mem, R2:R32, R3:R32, .Operands):Operands) [result(MemOffset)]


  rule <k> 
  execinstr (pdepl memOffset( MemOff:MInt):MemOffset, R2:R32, R3:R32,
      .Operands) => 
    loadFromMemory( MemOff, 32) ~> 
    execinstr (pdepl memOffset( MemOff), R2, R3, .Operands) 
  ...</k>


  rule <k> 
  memLoadValue(MemVal:MInt):MemLoadValue ~> 
    execinstr (pdepl memOffset( MemOff), R2, R3, .Operands) =>
      setRegisterValue(mi(32, 0), R3) ~> 
      parallelBitDeposit32(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>

endmodule