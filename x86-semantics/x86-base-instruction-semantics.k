requires "x86-semantic-utilities.k"

/*@ This file defines the semantics of following 51 base instructions.
  - adcw_r16_r16, adcl_r32_r32, adcq_r64_r64, adcb_r8_r8,
  - cmoveq_r64_r64,
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,
  - orq_r64_r64,
  - popcntq_r64_r64,
  - salq_r64_cl, sarq_r64_cl, shrq_r64_cl,
  - vaddpd_ymm_ymm_ymm, vaddps_ymm_ymm_ymm,
  - vcvtdq2pd_ymm_ymm, vcvtdq2ps_ymm_ymm, vcvtpd2dq_xmm_ymm, vcvtpd2ps_xmm_ymm, vcvtps2dq_ymm_ymm, vcvtps2pd_ymm_xmm, vcvttpd2dq_xmm_ymm, vcvttps2dq_ymm_ymm,
  - vdivpd_ymm_ymm_ymm, vdivps_ymm_ymm_ymm,
  - vfmadd132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm, vfmsub132pd_ymm_ymm_ymm, vfmsub132ps_ymm_ymm_ymm, vfnmadd132pd_ymm_ymm_ymm, vfnmadd132ps_ymm_ymm_ymm, vfnmsub132pd_ymm_ymm_ymm, vfnmsub132ps_ymm_ymm_ymm,
  - vmaxpd_ymm_ymm_ymm, vmaxps_ymm_ymm_ymm, vminpd_ymm_ymm_ymm, vminps_ymm_ymm_ymm,
  - vmulpd_ymm_ymm_ymm, vmulps_ymm_ymm_ymm, vrcpps_ymm_ymm,
  - vrsqrtps_ymm_ymm, vsqrtpd_ymm_ymm, vsqrtps_ymm_ymm,
  - vsubpd_ymm_ymm_ymm, vsubps_ymm_ymm_ymm, vzeroall,
  - xorq_r64_r64,
*/

module ADC-R8-R8
  imports X86-SEMANTIC-UTILITIES
  rule <k> execinstr ( adcb , (%al ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%rax), extractR8(%rax), .Typedoperands)) ...</k>

  //MI,m2 type chaeck
  context execinstr(adcb, (_:Typeoperand, HOLE:Typeoperand, _:Typeoperand, .Typedoperands))
  context execinstr(adcb, (_:Typeoperand, MInt, HOLE:Typeoperand, .Typedoperands))

  rule
  <k> execinstr(adcb, ( DestR:R64, MI1:MInt, MI2:MInt, .Typedoperands )) => plugin8(addMInt(addMInt(MI1, MI2), zeroExtend1to8(MI3)), DestR) ...</k>
  <cf> MI3 </cf>

endmodule

module ADD-IMM-R8
  imports X86-SEMANTIC-UTILITIES
  syntax Int ::= handleImmediate(Imm) [function]
  rule handleImmediate($ I:Int) => I

  rule <k> execinstr ( addq , (I:Imm ,  (%rax , .Typedoperands)) ) => updateReg(addMInt(mi(64, handleImmediate(I)), MI), %rax) ...</k>  <rax> MI </rax>
endmodule

module ADC-SEMANTICS
  imports ADC-R8-R8
endmodule

module ADD-SEMANTICS
  imports ADD-IMM-R8
endmodule



module X86-BASE-INSTRUCTIONS-SEMANTICS
  imports ADC-SEMANTICS
  imports ADD-SEMANTICS
endmodule
