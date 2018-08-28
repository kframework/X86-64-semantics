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
    .comm	buf,50,32
    .section	.rodata
LC0:
    .string	"%d,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d"
    .text
    .globl	va
va:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    vmovsd	%xmm0, -288(%rbp)
    movl	%esi, -280(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L40
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
    movl	$16, -208(%rbp)
    movl	$64, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L41
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L42
L41:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L42:
    movl	(%rax), %eax
    movl	%eax, -260(%rbp)
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
    movl	%eax, -256(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L45
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L46
L45:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L46:
    movl	(%rax), %eax
    movl	%eax, -252(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L47
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L48
L47:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L48:
    movl	(%rax), %eax
    movl	%eax, -248(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L49
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L50
L49:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L50:
    movl	(%rax), %eax
    movl	%eax, -244(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L51
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L52
L51:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L52:
    movl	(%rax), %eax
    movl	%eax, -240(%rbp)
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
    movl	%eax, -236(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L55
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L56
L55:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L56:
    movl	(%rax), %eax
    movl	%eax, -232(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L57
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L58
L57:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L58:
    movl	(%rax), %eax
    movl	%eax, -228(%rbp)
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
    movl	%eax, -224(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L61
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L62
L61:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L62:
    movl	(%rax), %eax
    movl	%eax, -220(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L63
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L64
L63:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L64:
    movl	(%rax), %eax
    movl	%eax, -216(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L65
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L66
L65:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L66:
    movl	(%rax), %eax
    movl	%eax, -212(%rbp)
    movl	-256(%rbp), %r8d
    movl	-260(%rbp), %edi
    movl	-280(%rbp), %ecx
    movq	-288(%rbp), %rdx
    movl	-276(%rbp), %eax
    subq	$8, %rsp
    movl	-212(%rbp), %esi
    pushq	%rsi
    movl	-216(%rbp), %esi
    pushq	%rsi
    movl	-220(%rbp), %esi
    pushq	%rsi
    movl	-224(%rbp), %esi
    pushq	%rsi
    movl	-228(%rbp), %esi
    pushq	%rsi
    movl	-232(%rbp), %esi
    pushq	%rsi
    movl	-236(%rbp), %esi
    pushq	%rsi
    movl	-240(%rbp), %esi
    pushq	%rsi
    movl	-244(%rbp), %esi
    pushq	%rsi
    movl	-248(%rbp), %esi
    pushq	%rsi
    movl	-252(%rbp), %esi
    pushq	%rsi
    movl	%r8d, %r9d
    movl	%edi, %r8d
    vmovq	%rdx, %xmm0
    movl	%eax, %edx
    movl	$LC0, %esi
    movl	$buf, %edi
    movl	$1, %eax
    call	sprintf
    addq	$96, %rsp
    nop
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L67
    call	__stack_chk_fail
L67:
    leave
    ret
    .section	.rodata
LC2:
    .string	"1,1000000,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    movl	$6, %r9d
    movl	$5, %r8d
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    vmovsd	$LC1(%rip), %xmm0
    movl	$1, %edi
    movl	$1, %eax
    call	va
    addq	$80, %rsp
    movl	$buf, %esi
    movl	$LC2, %edi
    call	strcmp
    testl	%eax, %eax
    je	L69
    call	abort
L69:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC1:
    .long	0
    .long	1072693248
