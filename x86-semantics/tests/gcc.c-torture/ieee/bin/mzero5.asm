    .comm	zero,8,8
negzero_check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$0, %edx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm2
    vucomisd	%xmm2, %xmm1
    jp	L2
    movl	$0, %edx
    vmovq	%rax, %xmm3
    vmovq	%rdx, %xmm4
    vucomisd	%xmm4, %xmm3
    jne	L2
    leaq	-8(%rbp), %rax
    movl	$8, %edx
    movq	%rax, %rsi
    movl	$zero, %edi
    call	memcmp
    testl	%eax, %eax
    setne	%al
    movzbl	%al, %eax
    jmp	L4
L2:
    movl	$0, %eax
L4:
    leave
    ret
sub:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	$0, %eax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    jp	L7
    movl	$0, %eax
    vmovq	%rax, %xmm3
    vucomisd	-8(%rbp), %xmm3
    jne	L7
    movl	$0, %eax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    jp	L7
    movl	$0, %eax
    vmovq	%rax, %xmm5
    vucomisd	-16(%rbp), %xmm5
    jne	L7
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm0
    call	negzero_check
    testl	%eax, %eax
    jne	L7
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm0
    call	negzero_check
    testl	%eax, %eax
    jne	L7
    movl	$1, %eax
    jmp	L10
L7:
    movl	$0, %eax
L10:
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movabsq	$-9223372036854775808, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	sub
    testl	%eax, %eax
    je	L14
    call	abort
L14:
    movl	$0, %eax
    leave
    ret
