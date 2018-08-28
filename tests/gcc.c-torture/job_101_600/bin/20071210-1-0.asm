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
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	%esi, -24(%rbp)
    movl	%edx, -28(%rbp)
    cmpl	$10, -20(%rbp)
    jne	L40
    cmpl	$9, -24(%rbp)
    jne	L40
    cmpl	$8, -28(%rbp)
    je	L41
L40:
    call	abort
L41:
    movl	$1, -16(%rbp)
    movl	$2, -12(%rbp)
    movl	$3, -8(%rbp)
    movl	$4, -4(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rdx
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	%rdi, -72(%rbp)
    movq	%rsi, -80(%rbp)
    movq	-72(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	-80(%rbp), %rax
    movq	%rax, -40(%rbp)
    cmpq	$0, -72(%rbp)
    jne	L44
    movl	$l2425, %eax
    jmp	L51
L44:
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-32(%rbp), %rax
    jmp	L46
L47:
    movq	-32(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-40(%rbp), %rax
    movl	8(%rax), %eax
    movl	%eax, -60(%rbp)
    movq	-40(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, -56(%rbp)
    movq	-40(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, -52(%rbp)
    subq	$4, -40(%rbp)
    movl	-52(%rbp), %edx
    movl	-56(%rbp), %ecx
    movl	-60(%rbp), %eax
    movl	%ecx, %esi
    movl	%eax, %edi
    call	foo
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-40(%rbp), %rax
    leaq	12(%rax), %rdx
    movl	-16(%rbp), %eax
    movl	%eax, (%rdx)
    movq	-40(%rbp), %rax
    leaq	8(%rax), %rdx
    movl	-12(%rbp), %eax
    movl	%eax, (%rdx)
    movq	-40(%rbp), %rax
    leaq	4(%rax), %rdx
    movl	-8(%rbp), %eax
    movl	%eax, (%rdx)
    movl	-4(%rbp), %edx
    movq	-40(%rbp), %rax
    movl	%edx, (%rax)
    movq	-32(%rbp), %rax
    nop
L46:
    jmp	%rax
L48:
    movq	-32(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    addq	$4, -40(%rbp)
    movq	-40(%rbp), %rax
    movl	$23, (%rax)
L49:
    movq	-32(%rbp), %rax
    jmp	L46
L50:
    movl	$0, %eax
L51:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, %esi
    movl	$0, %edi
    call	bar
    movq	%rax, -56(%rbp)
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	%rax, -48(%rbp)
    movq	-56(%rbp), %rax
    movq	32(%rax), %rax
    movq	%rax, -40(%rbp)
    movl	$7, -32(%rbp)
    movl	$8, -28(%rbp)
    movl	$9, -24(%rbp)
    movl	$10, -20(%rbp)
    movl	$11, -16(%rbp)
    movl	$12, -12(%rbp)
    leaq	-32(%rbp), %rax
    leaq	4(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	bar
    testq	%rax, %rax
    jne	L53
    movl	-32(%rbp), %eax
    cmpl	$4, %eax
    jne	L53
    movl	-28(%rbp), %eax
    cmpl	$3, %eax
    jne	L53
    movl	-24(%rbp), %eax
    cmpl	$2, %eax
    jne	L53
    movl	-20(%rbp), %eax
    cmpl	$1, %eax
    jne	L53
    movl	-16(%rbp), %eax
    cmpl	$11, %eax
    jne	L53
    movl	-12(%rbp), %eax
    cmpl	$12, %eax
    je	L54
L53:
    call	abort
L54:
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L56
    call	__stack_chk_fail
L56:
    leave
    ret
    .data
l2425:
    .quad	L49
    .quad	L49
    .quad	L47
    .quad	L48
    .quad	L50
