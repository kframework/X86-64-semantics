cf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    movl	-8(%rbp), %edx
    vmovss $LC0(%rip), %xmm0
    vmovss $LC1(%rip), %xmm1
    vmovd	%eax, %xmm3
    vmovd	%edx, %xmm2
    vandps	%xmm1, %xmm2, %xmm2
    vandps	%xmm0, %xmm3, %xmm3
    vorps	%xmm2, %xmm3, %xmm3
    vmovaps	%xmm3, %xmm0
    popq	%rbp
    ret
Tf:
    .long	1065353216
    .long	1073741824
    .long	1065353216
    .long	1065353216
    .long	3221225472
    .long	3212836864
    .long	3212836864
    .long	3221225472
    .long	3212836864
    .long	0
    .long	3221225472
    .long	2147483648
    .long	2147483648
    .long	3221225472
    .long	2147483648
    .long	2147483648
    .long	1073741824
    .long	0
    .long	2139095040
    .long	2147483648
    .long	4286578688
    .long	4290772992
    .long	2139095040
    .long	2143289344
testf:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8, -12(%rbp)
    movl	$0, -16(%rbp)
    jmp	L4
L6:
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf, %rax
    movl	4(%rax), %ecx
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf, %rax
    movl	(%rax), %eax
    vmovd	%ecx, %xmm1
    vmovd	%eax, %xmm0
    call	cf
    vmovd	%xmm0, %eax
    movl	%eax, -20(%rbp)
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf, %rax
    leaq	8(%rax), %rcx
    leaq	-20(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L5
    call	abort
L5:
    addl	$1, -16(%rbp)
L4:
    movl	-16(%rbp), %eax
    cmpl	-12(%rbp), %eax
    jl	L6
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L7
    call	__stack_chk_fail
L7:
    leave
    ret
c:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    movq	-16(%rbp), %rdx
    vmovsd $LC2(%rip), %xmm0
    vmovsd $LC3(%rip), %xmm1
    vmovq	%rax, %xmm3
    vmovq	%rdx, %xmm2
    vandpd	%xmm1, %xmm2, %xmm2
    vandpd	%xmm0, %xmm3, %xmm3
    vorpd	%xmm2, %xmm3, %xmm3
    vmovq	%xmm3, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
T:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .long	0
    .long	1072693248
    .long	0
    .long	1072693248
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	0
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	1073741824
    .long	0
    .long	0
    .long	0
    .long	2146435072
    .long	0
    .long	-2147483648
    .long	0
    .long	-1048576
    .long	0
    .long	-524288
    .long	0
    .long	2146435072
    .long	0
    .long	2146959360
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8, -20(%rbp)
    movl	$0, -24(%rbp)
    jmp	L11
L13:
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T, %rax
    movq	8(%rax), %rcx
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T, %rax
    movq	(%rax), %rax
    vmovq	%rcx, %xmm1
    vmovq	%rax, %xmm0
    call	c
    vmovq	%xmm0, %rax
    movq	%rax, -16(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T, %rax
    leaq	16(%rax), %rcx
    leaq	-16(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L12
    call	abort
L12:
    addl	$1, -24(%rbp)
L11:
    movl	-24(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L13
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L14
    call	__stack_chk_fail
L14:
    leave
    ret
cl:
    pushq	%rbp
    movq	%rsp, %rbp
    fldt	32(%rbp)
    fxam
    fnstsw	%ax
    fstp	%st(0)
    andl	$512, %eax
    fldt	16(%rbp)
    fabs
    testl	%eax, %eax
    je	L17
    fchs
L17:
    popq	%rbp
    ret
Tl:
    .long	0
    .long	2147483648
    .long	16383
    .long	0
    .long	0
    .long	2147483648
    .long	16384
    .long	0
    .long	0
    .long	2147483648
    .long	16383
    .long	0
    .long	0
    .long	2147483648
    .long	16383
    .long	0
    .long	0
    .long	2147483648
    .long	49152
    .long	0
    .long	0
    .long	2147483648
    .long	49151
    .long	0
    .long	0
    .long	2147483648
    .long	49151
    .long	0
    .long	0
    .long	2147483648
    .long	49152
    .long	0
    .long	0
    .long	2147483648
    .long	49151
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2147483648
    .long	49152
    .long	0
    .long	0
    .long	0
    .long	32768
    .long	0
    .long	0
    .long	0
    .long	32768
    .long	0
    .long	0
    .long	2147483648
    .long	49152
    .long	0
    .long	0
    .long	0
    .long	32768
    .long	0
    .long	0
    .long	0
    .long	32768
    .long	0
    .long	0
    .long	2147483648
    .long	16384
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2147483648
    .long	32767
    .long	0
    .long	0
    .long	0
    .long	32768
    .long	0
    .long	0
    .long	2147483648
    .long	65535
    .long	0
    .long	0
    .long	3221225472
    .long	65535
    .long	0
    .long	0
    .long	2147483648
    .long	32767
    .long	0
    .long	0
    .long	3221225472
    .long	32767
    .long	0
testl:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$72, %rsp
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movl	$8, -52(%rbp)
    movl	$0, -56(%rbp)
    jmp	L19
L21:
    movl	-56(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$Tl, %rax
    movq	16(%rax), %rcx
    movl	24(%rax), %ebx
    movl	-56(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$Tl, %rax
    movl	8(%rax), %edx
    movq	(%rax), %rax
    pushq	%rbx
    pushq	%rcx
    pushq	%rdx
    pushq	%rax
    call	cl
    addq	$32, %rsp
    fstpt	-80(%rbp)
    movq	-80(%rbp), %rax
    movl	-72(%rbp), %edx
    movq	%rax, -48(%rbp)
    movl	%edx, -40(%rbp)
    movl	-56(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$32, %rax
    leaq $Tl(%rax), %rcx
    leaq	-48(%rbp), %rax
    movl	$10, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L20
    call	abort
L20:
    addl	$1, -56(%rbp)
L19:
    movl	-56(%rbp), %eax
    cmpl	-52(%rbp), %eax
    jl	L21
    movq	-24(%rbp), %rax
    xorq	$40, %rax
    je	L22
    call	__stack_chk_fail
L22:
    movq	-8(%rbp), %rbx
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	testf
    call	test
    call	testl
    movl	$0, %eax
    popq	%rbp
    ret
LC0:
    .long	2147483647
    .long	0
    .long	0
    .long	0
LC1:
    .long	2147483648
    .long	0
    .long	0
    .long	0
LC2:
    .long	4294967295
    .long	2147483647
    .long	0
    .long	0
LC3:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
