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
null:
    .string	"(null)"
    .text
    .globl	g
g:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L56
L40:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -17(%rbp)
    movq	step0_jumps2422 + 16(%rip), %rax
    jmp	L42
L43:
    addq	$1, -16(%rbp)
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L44
    jmp	L55
L42:
    jmp	%rax
L55:
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    leal	8(%rax), %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
    jmp	L46
L44:
    movq	-56(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rdx
    movq	-56(%rbp), %rax
    movq	%rdx, 8(%rax)
L46:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -17(%rbp)
    movq	step0_jumps2422 + 16(%rip), %rax
    jmp	L42
L47:
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L48
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    leal	8(%rax), %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
    jmp	L50
L48:
    movq	-56(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rdx
    movq	-56(%rbp), %rax
    movq	%rdx, 8(%rax)
    jmp	L50
L51:
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L52
    movq	-56(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-56(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-56(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L53
L52:
    movq	-56(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-56(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L53:
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rdx
    movq	-40(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
L50:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L40
    jmp	L41
L56:
    nop
L41:
    movl	$0, %eax
    leave
    ret
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movq	%rdi, -216(%rbp)
    movq	%rsi, -224(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L58
    vmovaps	%xmm0, -128(%rbp)
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
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    leaq	-208(%rbp), %rdx
    movq	-224(%rbp), %rcx
    movq	-216(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	g
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L59
    call	__stack_chk_fail
L59:
    leave
    ret
    .section	.rodata
LC0:
    .string	"asdf"
LC1:
    .string	"%s"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-32(%rbp), %rax
    movl	$0, %ecx
    movl	$LC0, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	f
    leaq	-32(%rbp), %rax
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L61
    call	abort
L61:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L63
    call	__stack_chk_fail
L63:
    leave
    ret
    .data
step0_jumps2422:
    .quad	L43
    .quad	L47
    .quad	L51
