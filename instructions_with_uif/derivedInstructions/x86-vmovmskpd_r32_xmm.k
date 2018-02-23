// Manually generated using stratification.
requires "x86-configuration.k"

module VMOVMSKPD-R32-XMM
  imports X86-CONFIGURATION

  rule <k>
    execinstr (vmovmskpd R1:Xmm, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |->   
  concatenateMInt(
    extractMInt(getParentValue(R2, RSMap), 0, 32), 
    concatenateMInt(mi(30, 0), 
      concatenateMInt(
        extractMInt(getParentValue(R1, RSMap), 128, 129), 
        extractMInt(getParentValue(R1, RSMap), 192, 193) 
      )))
)

    </regstate>
endmodule

module VMOVMSKPD-R32-XMM-SEMANTICS
  imports VMOVMSKPD-R32-XMM
endmodule
/*
TargetInstr:
vmovmskpd %xmm1, %ebx
RWSet:
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

Circuit:
circuit:callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label
circuit:roll $0x1, %r9d                           #  2     0x5   3      OPC=roll_r32_one
circuit:callq .read_cf_into_rbx                   #  3     0x8   5      OPC=callq_label
circuit:roll $0x1, %edx                           #  4     0xd   2      OPC=roll_r32_one
circuit:rcll $0x1, %ebx                           #  5     0xf   2      OPC=rcll_r32_one
BVF:
WARNING: No live out values provided, assuming { }
WARNING: No def in values provided; assuming { %mxcsr::rc[0] }
Target

vmovmskpd %xmm1, %ebx

  maybe read:      { %xmm1 }
  must read:       { %xmm1 }
  maybe write:     { %rbx }
  must write:      { %rbx }
  maybe undef:     { }
  must undef:      { }
  required flags:  { avx }

Circuits:

%rbx   : (concat <0x0|32> (plus (if (== (plus (if (== (plus (concat <0x0|1> <%ymm1|256>[63:32]) (concat <0x0|1> <%ymm1|256>[63:32]))[32:32] <0x1|1>) then (plus (concat <0x0|1> <%ymm1|256>[63:32]) <0x1|33>) else (concat <0x0|1> <%ymm1|256>[63:32])) (concat <0x0|1> <%ymm1|256>[63:32]))[32:32] <0x1|1>) then (if (== (plus (if (== (plus (concat <0x0|1> <%ymm1|256>[127:96]) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then (plus (concat <0x0|1> <%ymm1|256>[127:96]) <0x1|33>) else (concat <0x0|1> <%ymm1|256>[127:96])) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then <0x2|33> else <0x1|33>) else (if (== (plus (if (== (plus (concat <0x0|1> <%ymm1|256>[127:96]) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then (plus (concat <0x0|1> <%ymm1|256>[127:96]) <0x1|33>) else (concat <0x0|1> <%ymm1|256>[127:96])) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then <0x1|33> else <0x0|33>)) (if (== (plus (if (== (plus (concat <0x0|1> <%ymm1|256>[127:96]) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then (plus (concat <0x0|1> <%ymm1|256>[127:96]) <0x1|33>) else (concat <0x0|1> <%ymm1|256>[127:96])) (concat <0x0|1> <%ymm1|256>[127:96]))[32:32] <0x1|1>) then <0x1|33> else <0x0|33>))[31:0])

sigfpe  : <sigfpe>
sigbus  : <sigbus>
sigsegv : <sigsegv>
*/
