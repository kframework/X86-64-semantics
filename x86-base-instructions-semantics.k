requires "x86-nop.k"
requires "x86-adc.k"
requires "x86-add.k"
requires "x86-cmove.k"
requires "x86-or.k"
requires "x86-xor.k"
requires "x86-movs.k"
requires "x86-mov.k"
requires "x86-popcnt.k"
requires "x86-shr.k"
requires "x86-sar.k"
requires "x86-sal.k"
requires "x86-vadd.k"
requires "x86-vsub.k"
requires "x86-vmul.k"
requires "x86-vdiv.k"
requires "x86-vmax.k"
requires "x86-vmin.k"
requires "x86-vsqrt.k"
requires "x86-vzeroall.k"
requires "x86-vfmadd132.k"
requires "x86-vfmsub132.k"
requires "x86-vfnmadd132.k"
requires "x86-vfnmsub132.k"
requires "x86-vcvt.k"

/*@
  This file defines the semantics of following 51 base instructions.
  - Integer Variants
    - adcw_r16_r16, adcl_r32_r32, adcq_r64_r64, adcb_r8_r8,
    - cmoveq_r64_r64,
    - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
    - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,
    - orq_r64_r64,
    - popcntq_r64_r64,
    - salq_r64_cl, sarq_r64_cl, shrq_r64_cl,
    - xorq_r64_r64,

  - Float Variants
    - vaddpd_ymm_ymm_ymm, vaddps_ymm_ymm_ymm,
    - vsubpd_ymm_ymm_ymm, vsubps_ymm_ymm_ymm,
    - vmulpd_ymm_ymm_ymm, vmulps_ymm_ymm_ymm, vrcpps_ymm_ymm,
    - vdivpd_ymm_ymm_ymm, vdivps_ymm_ymm_ymm,
    - vmaxpd_ymm_ymm_ymm, vmaxps_ymm_ymm_ymm, vminpd_ymm_ymm_ymm, vminps_ymm_ymm_ymm,
    - vrsqrtps_ymm_ymm, vsqrtpd_ymm_ymm, vsqrtps_ymm_ymm,
    - vzeroall,
    - vfmadd132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm,
    vfmsub132pd_ymm_ymm_ymm, vfmsub132ps_ymm_ymm_ymm,
    vfnmadd132pd_ymm_ymm_ymm, vfnmadd132ps_ymm_ymm_ymm,
    vfnmsub132pd_ymm_ymm_ymm, vfnmsub132ps_ymm_ymm_ymm,
    - vcvtdq2pd_ymm_ymm, vcvtdq2ps_ymm_ymm, vcvtpd2dq_xmm_ymm,
    vcvtpd2ps_xmm_ymm, vcvtps2dq_ymm_ymm, vcvtps2pd_ymm_xmm,
    vcvttpd2dq_xmm_ymm, vcvttps2dq_ymm_ymm,
*/

module X86-BASE-INSTRUCTIONS-SEMANTICS
  imports NOP-SEMANTICS
  imports ADC-SEMANTICS
  imports ADD-SEMANTICS
  imports CMOVE-SEMANTICS
  imports OR-SEMANTICS
  imports XOR-SEMANTICS
  imports MOVS-SEMANTICS
  imports MOV-SEMANTICS
  imports POPCNT-SEMANTICS
  imports SHR-SEMANTICS
  imports SAR-SEMANTICS
  imports SAL-SEMANTICS
  imports VADD-SEMANTICS
  imports VSUB-SEMANTICS
  imports VMUL-SEMANTICS
  imports VDIV-SEMANTICS
  imports VMAX-SEMANTICS
  imports VMIN-SEMANTICS
  imports VSQRT-SEMANTICS
  imports VZEROALL-SEMANTICS
  imports VFMADD132-SEMANTICS
  imports VFMSUB132-SEMANTICS
  imports VFNMADD132-SEMANTICS
  imports VFNMSUB132-SEMANTICS
  imports VCVT-SEMANTICS
endmodule
