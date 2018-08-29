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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
num_positive:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, %rax
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rsi, %rbx
    movq	%rcx, -32(%rbp)
    movq	%rbx, -24(%rbp)
    movl	%edx, -36(%rbp)
    cmpl	$32, -36(%rbp)
    jbe	L46
    subl	$32, -36(%rbp)
    movl	-32(%rbp), %eax
    movl	-36(%rbp), %edx
    subl	$1, %edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    andl	%edx, %eax
    testl	%eax, %eax
    sete	%al
    movzbl	%al, %eax
    jmp	L47
L46:
    movl	-28(%rbp), %eax
    movl	-36(%rbp), %edx
    subl	$1, %edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    andl	%edx, %eax
    testl	%eax, %eax
    sete	%al
    movzbl	%al, %eax
L47:
    popq	%rbx
    popq	%rbp
    ret
num_trim:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, %rax
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rsi, %rbx
    movq	%rcx, -32(%rbp)
    movq	%rbx, -24(%rbp)
    movl	%edx, -36(%rbp)
    cmpl	$32, -36(%rbp)
    jbe	L49
    subl	$32, -36(%rbp)
    cmpl	$31, -36(%rbp)
    ja	L51
    movl	-32(%rbp), %edx
    movl	-36(%rbp), %eax
    movl	$1, %ecx
    shlx	%eax, %ecx, %eax
    subl	$1, %eax
    andl	%edx, %eax
    movl	%eax, -32(%rbp)
    jmp	L51
L49:
    cmpl	$31, -36(%rbp)
    ja	L52
    movl	-28(%rbp), %edx
    movl	-36(%rbp), %eax
    movl	$1, %ecx
    shlx	%eax, %ecx, %eax
    subl	$1, %eax
    andl	%edx, %eax
    movl	%eax, -28(%rbp)
L52:
    movl	$0, -32(%rbp)
L51:
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    popq	%rbx
    popq	%rbp
    ret
num_rshift:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, %rax
    movq	%rsi, %r8
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movq	%r8, %rdi
    movq	%rsi, -32(%rbp)
    movq	%rdi, -24(%rbp)
    movl	%edx, -36(%rbp)
    movl	%ecx, -40(%rbp)
    movl	-36(%rbp), %edx
    movq	-32(%rbp), %rcx
    movq	-24(%rbp), %rax
    movq	%rcx, %rdi
    movq	%rax, %rsi
    call	num_positive
    movl	%eax, -4(%rbp)
    movl	-24(%rbp), %eax
    testl	%eax, %eax
    jne	L55
    cmpl	$0, -4(%rbp)
    je	L56
L55:
    movl	$0, -8(%rbp)
    jmp	L57
L56:
    movl	$-1, -8(%rbp)
L57:
    movl	-40(%rbp), %eax
    cmpl	-36(%rbp), %eax
    jb	L58
    movl	-8(%rbp), %eax
    movl	%eax, -28(%rbp)
    movl	-28(%rbp), %eax
    movl	%eax, -32(%rbp)
    jmp	L59
L58:
    cmpl	$31, -36(%rbp)
    ja	L60
    movl	-8(%rbp), %eax
    movl	%eax, -32(%rbp)
    movl	-28(%rbp), %edx
    movl	-36(%rbp), %eax
    movl	-8(%rbp), %ecx
    shlx	%eax, %ecx, %eax
    orl	%edx, %eax
    movl	%eax, -28(%rbp)
    jmp	L61
L60:
    cmpl	$63, -36(%rbp)
    ja	L61
    movl	-32(%rbp), %eax
    movl	-36(%rbp), %edx
    subl	$32, %edx
    movl	-8(%rbp), %ecx
    shlx	%edx, %ecx, %edx
    orl	%edx, %eax
    movl	%eax, -32(%rbp)
L61:
    cmpl	$31, -40(%rbp)
    jbe	L62
    subl	$32, -40(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, -28(%rbp)
    movl	-8(%rbp), %eax
    movl	%eax, -32(%rbp)
L62:
    cmpl	$0, -40(%rbp)
    je	L59
    movl	-28(%rbp), %edx
    movl	-40(%rbp), %eax
    shrx	%eax, %edx, %ecx
    movl	-32(%rbp), %edx
    movl	$32, %eax
    subl	-40(%rbp), %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    movl	%eax, -28(%rbp)
    movl	-32(%rbp), %edx
    movl	-40(%rbp), %eax
    shrx	%eax, %edx, %ecx
    movl	$32, %eax
    subl	-40(%rbp), %eax
    movl	-8(%rbp), %edx
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    movl	%eax, -32(%rbp)
L59:
    movl	-36(%rbp), %edx
    movq	-32(%rbp), %rcx
    movq	-24(%rbp), %rax
    movq	%rcx, %rdi
    movq	%rax, %rsi
    call	num_trim
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	$0, -20(%rbp)
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    leave
    ret
    .globl	num_lshift
num_lshift:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	%rdi, %rax
    movq	%rsi, %r8
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movq	%r8, %rdi
    movq	%rsi, -64(%rbp)
    movq	%rdi, -56(%rbp)
    movl	%edx, -68(%rbp)
    movl	%ecx, -72(%rbp)
    movl	-72(%rbp), %eax
    cmpl	-68(%rbp), %eax
    jb	L65
    movl	-56(%rbp), %eax
    testl	%eax, %eax
    jne	L66
    movl	-60(%rbp), %edx
    movl	-64(%rbp), %eax
    orl	%edx, %eax
    testl	%eax, %eax
    je	L66
    movl	$1, %eax
    jmp	L67
L66:
    movl	$0, %eax
L67:
    movl	%eax, -52(%rbp)
    movl	$0, -60(%rbp)
    movl	-60(%rbp), %eax
    movl	%eax, -64(%rbp)
    jmp	L68
L65:
    movl	-72(%rbp), %eax
    movl	%eax, -36(%rbp)
    movq	-64(%rbp), %rax
    movq	-56(%rbp), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    cmpl	$31, -36(%rbp)
    jbe	L69
    subl	$32, -36(%rbp)
    movl	-60(%rbp), %eax
    movl	%eax, -64(%rbp)
    movl	$0, -60(%rbp)
L69:
    cmpl	$0, -36(%rbp)
    je	L70
    movl	-64(%rbp), %edx
    movl	-36(%rbp), %eax
    shlx	%eax, %edx, %ecx
    movl	-60(%rbp), %edx
    movl	$32, %eax
    subl	-36(%rbp), %eax
    shrx	%eax, %edx, %eax
    orl	%ecx, %eax
    movl	%eax, -64(%rbp)
    movl	-60(%rbp), %edx
    movl	-36(%rbp), %eax
    shlx	%eax, %edx, %eax
    movl	%eax, -60(%rbp)
L70:
    movl	-68(%rbp), %edx
    movq	-64(%rbp), %rcx
    movq	-56(%rbp), %rax
    movq	%rcx, %rdi
    movq	%rax, %rsi
    call	num_trim
    movq	%rax, -64(%rbp)
    movq	%rdx, -56(%rbp)
    movl	-56(%rbp), %eax
    testl	%eax, %eax
    je	L71
    movl	$0, -52(%rbp)
    jmp	L68
L71:
    movl	-72(%rbp), %ecx
    movl	-68(%rbp), %edx
    movq	-64(%rbp), %rsi
    movq	-56(%rbp), %rax
    movq	%rsi, %rdi
    movq	%rax, %rsi
    call	num_rshift
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movl	-12(%rbp), %eax
    cmpl	%eax, %edx
    jne	L73
    movl	-32(%rbp), %edx
    movl	-16(%rbp), %eax
    cmpl	%eax, %edx
    je	L74
L73:
    movl	$1, %eax
    jmp	L75
L74:
    movl	$0, %eax
L75:
    movl	%eax, -52(%rbp)
L68:
    movq	-64(%rbp), %rax
    movq	-56(%rbp), %rdx
    leave
    ret
    .globl	precision
    .data
precision:
    .long	64
    .globl	n
n:
    .long	16
    .globl	num
num:
    .long	0
    .long	3
    .long	0
    .long	0
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	n(%rip), %edx
    movq	num(%rip), %rsi
    movq	num + 8(%rip), %rax
    movl	%edx, %ecx
    movl	$64, %edx
    movq	%rsi, %rdi
    movq	%rax, %rsi
    call	num_lshift
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-12(%rbp), %eax
    cmpl	$196608, %eax
    je	L78
    call	abort
L78:
    movl	-16(%rbp), %eax
    testl	%eax, %eax
    je	L79
    call	abort
L79:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    je	L80
    call	abort
L80:
    movl	$0, %edi
    call	exit
