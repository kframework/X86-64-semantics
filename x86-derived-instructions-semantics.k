requires "x86-addq_r64_r64.k"  
requires "x86-andnq_r64_r64_r64.k"  
requires "x86-cbtw.k"  
requires "x86-clc.k"  
requires "x86-cltq.k"	
requires "x86-cmovzq_r64_r64.k"  
requires "x86-cmovzw_r16_r16.k"  
requires "x86-cvtss2sd_xmm_xmm.k"  
requires "x86-decb_r8.k"
requires "x86-incl_r32.k"


module X86-DERIVED-INSTRUCTIONS-SEMANTICS
  imports ADDQ-SEMANTICS
  imports ANDNQ-SEMANTICS
  imports CBTW-SEMANTICS
  imports CLC-SEMANTICS
  imports CLTQ-SEMANTICS
  imports CMOVZQ-SEMANTICS
  imports CMOVZW-SEMANTICS
  imports CVTSS2SD-SEMANTICS
  imports DECB-SEMANTICS
  imports INCL-SEMANTICS
endmodule
