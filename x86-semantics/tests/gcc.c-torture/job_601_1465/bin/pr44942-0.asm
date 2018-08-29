    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    vmovsd	%xmm0, -256(%rbp)
    testb	%al, %al
    je	L58
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L58:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$48, -208(%rbp)
    movl	$64, -204(%rbp)
    leaq	24(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L59
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L60
L59:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L60:
    movl	(%rax), %eax
    movl	%eax, -212(%rbp)
    cmpl	$1234, -212(%rbp)
    je	L63
    call	abort
L63:
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L62
    call	__stack_chk_fail
L62:
    leave
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    vmovsd	%xmm0, -256(%rbp)
    vmovsd	%xmm1, -264(%rbp)
    vmovsd	%xmm2, -272(%rbp)
    vmovsd	%xmm3, -280(%rbp)
    testb	%al, %al
    je	L65
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L65:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$48, -208(%rbp)
    movl	$112, -204(%rbp)
    leaq	48(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L66
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L67
L66:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L67:
    movl	(%rax), %eax
    movl	%eax, -212(%rbp)
    cmpl	$1234, -212(%rbp)
    je	L70
    call	abort
L70:
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L69
    call	__stack_chk_fail
L69:
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    vmovsd	%xmm0, -232(%rbp)
    vmovsd	%xmm1, -240(%rbp)
    vmovsd	%xmm2, -248(%rbp)
    vmovsd	%xmm3, -256(%rbp)
    vmovsd	%xmm4, -264(%rbp)
    vmovsd	%xmm5, -272(%rbp)
    vmovsd	%xmm6, -280(%rbp)
    vmovsd	%xmm7, -288(%rbp)
    movq	%rdi, -176(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$0, -208(%rbp)
    movl	$176, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L73
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L74
L73:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L74:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -216(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-216(%rbp), %xmm0
    jp	L78
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-216(%rbp), %xmm0
    jne	L78
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L77
    jmp	L79
L78:
    call	abort
L79:
    call	__stack_chk_fail
L77:
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    vmovsd	%xmm0, -232(%rbp)
    vmovsd	%xmm1, -240(%rbp)
    vmovsd	%xmm2, -248(%rbp)
    vmovsd	%xmm3, -256(%rbp)
    vmovsd	%xmm4, -264(%rbp)
    vmovsd	%xmm5, -272(%rbp)
    vmovsd	%xmm6, -280(%rbp)
    vmovsd	%xmm7, -288(%rbp)
    movq	%rdi, -176(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$0, -208(%rbp)
    movl	$176, -204(%rbp)
    leaq	64(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L82
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L83
L82:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L83:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -216(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-216(%rbp), %xmm0
    jp	L87
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-216(%rbp), %xmm0
    jne	L87
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L86
    jmp	L88
L87:
    call	abort
L88:
    call	__stack_chk_fail
L86:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	$1234
    pushq	$0
    vxorpd	%xmm0, %xmm0, %xmm0
    movl	$0, %r9d
    movl	$0, %r8d
    movl	$0, %ecx
    movl	$0, %edx
    movl	$0, %esi
    movl	$0, %edi
    movl	$1, %eax
    call	test1
    addq	$16, %rsp
    subq	$8, %rsp
    pushq	$1234
    pushq	$0
    pushq	$0
    pushq	$0
    pushq	$0
    vxorpd	%xmm3, %xmm3, %xmm3
    vxorpd	%xmm2, %xmm2, %xmm2
    vxorpd	%xmm1, %xmm1, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    movl	$0, %r9d
    movl	$0, %r8d
    movl	$0, %ecx
    movl	$0, %edx
    movl	$0, %esi
    movl	$0, %edi
    movl	$4, %eax
    call	test2
    addq	$48, %rsp
    subq	$8, %rsp
    vmovsd	LC0(%rip), %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm7, %xmm7, %xmm7
    vxorpd	%xmm6, %xmm6, %xmm6
    vxorpd	%xmm5, %xmm5, %xmm5
    vxorpd	%xmm4, %xmm4, %xmm4
    vxorpd	%xmm3, %xmm3, %xmm3
    vxorpd	%xmm2, %xmm2, %xmm2
    vxorpd	%xmm1, %xmm1, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    movl	$8, %eax
    call	test3
    addq	$16, %rsp
    subq	$8, %rsp
    vmovsd	LC0(%rip), %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm0, %xmm0, %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vxorpd	%xmm7, %xmm7, %xmm7
    vxorpd	%xmm6, %xmm6, %xmm6
    vxorpd	%xmm5, %xmm5, %xmm5
    vxorpd	%xmm4, %xmm4, %xmm4
    vxorpd	%xmm3, %xmm3, %xmm3
    vxorpd	%xmm2, %xmm2, %xmm2
    vxorpd	%xmm1, %xmm1, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    movl	$8, %eax
    call	test4
    addq	$64, %rsp
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1083394048
