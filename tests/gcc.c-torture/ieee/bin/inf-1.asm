    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl $LC0(%rip), %eax
    movl	%eax, -56(%rbp)
    movabsq	$9218868437227405312, %rax
    movq	%rax, -48(%rbp)
    movabsq	$-9223372036854775808, %rax
    movl	$32767, %edx
    movq	%rax, -32(%rbp)
    movl	%edx, -24(%rbp)
    movl $LC0(%rip), %eax
    movl	%eax, -52(%rbp)
    movabsq	$9218868437227405312, %rax
    movq	%rax, -40(%rbp)
    movabsq	$-9223372036854775808, %rax
    movl	$32767, %edx
    movq	%rax, -16(%rbp)
    movl	%edx, -8(%rbp)
    movl	-56(%rbp), %eax
    vmovd	%eax, %xmm1
    vaddss	%xmm1, %xmm1, %xmm0
    vmovd	%xmm0, %eax
    vmovd	%eax, %xmm2
    vucomiss	-56(%rbp), %xmm2
    jp	L21
    vmovd	%eax, %xmm3
    vucomiss	-56(%rbp), %xmm3
    je	L30
L21:
    call	abort
L30:
    movq	-48(%rbp), %rax
    vmovq	%rax, %xmm5
    vaddsd	%xmm5, %xmm5, %xmm4
    vmovq	%xmm4, %rax
    vmovq	%rax, %xmm6
    vucomisd	-48(%rbp), %xmm6
    jp	L22
    vmovq	%rax, %xmm7
    vucomisd	-48(%rbp), %xmm7
    je	L31
L22:
    call	abort
L31:
    fldt	-32(%rbp)
    fadd	%st(0), %st
    fldt	-32(%rbp)
    fucomip	%st(1), %st
    jp	L39
    fldt	-32(%rbp)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L32
    jmp	L23
L39:
    fstp	%st(0)
L23:
    call	abort
L32:
    movl	-56(%rbp), %eax
    vmovd	%eax, %xmm0
    vucomiss	-52(%rbp), %xmm0
    jp	L24
    movl	-56(%rbp), %eax
    vmovd	%eax, %xmm1
    vucomiss	-52(%rbp), %xmm1
    je	L33
L24:
    call	abort
L33:
    movq	-48(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-40(%rbp), %xmm2
    jp	L25
    movq	-48(%rbp), %rax
    vmovq	%rax, %xmm3
    vucomisd	-40(%rbp), %xmm3
    je	L34
L25:
    call	abort
L34:
    fldt	-32(%rbp)
    fldt	-16(%rbp)
    fucomip	%st(1), %st
    fstp	%st(0)
    jp	L26
    fldt	-32(%rbp)
    fldt	-16(%rbp)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L35
L26:
    call	abort
L35:
    movl $LC3(%rip), %eax
    vmovd	%eax, %xmm4
    vucomiss	-56(%rbp), %xmm4
    jb	L36
    call	abort
L36:
    movl	$0, %eax
    vmovq	%rax, %xmm5
    vucomisd	-48(%rbp), %xmm5
    jb	L37
    call	abort
L37:
    fldz
    fldt	-32(%rbp)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jb	L38
    call	abort
L38:
    movl	$0, %eax
    leave
    ret
LC0:
    .long	2139095040
LC3:
    .long	0
