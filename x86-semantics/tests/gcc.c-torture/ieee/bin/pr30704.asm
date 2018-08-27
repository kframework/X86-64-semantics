f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movabsq	$4503599627370495, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L3
    call	__stack_chk_fail
L3:
    leave
    ret
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movabsq	$4483583629026627, %rax
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L6
    call	__stack_chk_fail
L6:
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    call	f1
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    vmovq	%rax, %xmm1
    vucomisd $LC0(%rip), %xmm1
    jp	L14
    vmovq	%rax, %xmm2
    vucomisd $LC0(%rip), %xmm2
    je	L15
L14:
    call	abort
L15:
    call	f2
    vmovq	%xmm0, %rax
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rdx
    movabsq	$4483583629026627, %rax
    cmpq	%rax, %rdx
    je	L10
    call	abort
L10:
    movabsq	$4642437159633027072, %rax
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    leaq	-24(%rbp), %rcx
    leaq	-16(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L11
    call	abort
L11:
    movl	$0, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L13
    call	__stack_chk_fail
L13:
    leave
    ret
LC0:
    .long	4294967295
    .long	1048575
