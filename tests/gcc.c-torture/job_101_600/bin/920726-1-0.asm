    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
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
L12:
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
    jne	L12
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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"%d"
    .text
    .globl	first
first:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movq	%rdi, -248(%rbp)
    movq	%rsi, -256(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L40
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L40:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movq	-248(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	$0, -228(%rbp)
    jmp	L41
L46:
    movl	-228(%rbp), %eax
    movslq	%eax, %rdx
    movq	-256(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    cmpb	$105, %al
    jne	L42
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L43
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L44
L43:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L44:
    movl	(%rax), %eax
    movl	%eax, -224(%rbp)
    movl	-224(%rbp), %edx
    movq	-216(%rbp), %rax
    movl	$LC0, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	sprintf
    movq	-216(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    addq	%rax, -216(%rbp)
    jmp	L45
L42:
    movq	-216(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -216(%rbp)
    movl	-228(%rbp), %edx
    movslq	%edx, %rcx
    movq	-256(%rbp), %rdx
    addq	%rcx, %rdx
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L45:
    addl	$1, -228(%rbp)
L41:
    movl	-228(%rbp), %eax
    movslq	%eax, %rdx
    movq	-256(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L46
    movq	-216(%rbp), %rax
    movb	$0, (%rax)
    movl	-220(%rbp), %eax
    movq	-184(%rbp), %rsi
    xorq	$40, %rsi
    je	L48
    call	__stack_chk_fail
L48:
    leave
    ret
    .globl	second
second:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movq	%rdi, -248(%rbp)
    movq	%rsi, -256(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L50
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L50:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movq	-248(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	$0, -224(%rbp)
    jmp	L51
L56:
    movl	-224(%rbp), %eax
    movslq	%eax, %rdx
    movq	-256(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    cmpb	$105, %al
    jne	L52
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L53
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L54
L53:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L54:
    movl	(%rax), %eax
    movl	%eax, -220(%rbp)
    movl	-220(%rbp), %edx
    movq	-216(%rbp), %rax
    movl	$LC0, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	sprintf
    movq	-216(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    addq	%rax, -216(%rbp)
    jmp	L55
L52:
    movq	-216(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -216(%rbp)
    movl	-224(%rbp), %edx
    movslq	%edx, %rcx
    movq	-256(%rbp), %rdx
    addq	%rcx, %rdx
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L55:
    addl	$1, -224(%rbp)
L51:
    movl	-224(%rbp), %eax
    movslq	%eax, %rdx
    movq	-256(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L56
    movq	-216(%rbp), %rax
    movb	$0, (%rax)
    movl	-240(%rbp), %eax
    movq	-184(%rbp), %rsi
    xorq	$40, %rsi
    je	L58
    call	__stack_chk_fail
L58:
    leave
    ret
    .section	.rodata
LC1:
    .string	"i i "
LC2:
    .string	"5 20 "
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-224(%rbp), %rax
    movl	$20, %ecx
    movl	$5, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	first
    leaq	-112(%rbp), %rax
    movl	$20, %ecx
    movl	$5, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	second
    leaq	-224(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strcmp
    testl	%eax, %eax
    jne	L60
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strcmp
    testl	%eax, %eax
    je	L61
L60:
    call	abort
L61:
    movl	$0, %edi
    call	exit
