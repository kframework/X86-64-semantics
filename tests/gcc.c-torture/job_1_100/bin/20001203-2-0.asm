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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .globl	create_array_type
create_array_type:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	%rdi, -72(%rbp)
    movq	%rsi, -80(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    cmpq	$0, -72(%rbp)
    jne	L42
    call	alloc_type
    movq	%rax, -72(%rbp)
L42:
    leaq	-48(%rbp), %rdx
    leaq	-56(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	get_discrete_bounds
    movq	-80(%rbp), %rax
    movl	(%rax), %eax
    movq	-48(%rbp), %rcx
    movq	-56(%rbp), %rdx
    subq	%rdx, %rcx
    movq	%rcx, %rdx
    addq	$1, %rdx
    imull	%eax, %edx
    movq	-72(%rbp), %rax
    movl	%edx, (%rax)
    movq	-72(%rbp), %rax
    movw	$1, 16(%rax)
    movq	-72(%rbp), %rax
    movq	8(%rax), %rax
    testq	%rax, %rax
    je	L43
    movq	-72(%rbp), %rax
    movq	8(%rax), %rax
    addq	$8, %rax
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -32(%rbp)
    movl	$32, -60(%rbp)
    movq	-32(%rbp), %rax
    movq	32(%rax), %rax
    movq	%rax, %rdx
    movq	-32(%rbp), %rax
    movq	24(%rax), %rax
    subq	%rax, %rdx
    movl	-60(%rbp), %eax
    cltq
    cmpq	%rax, %rdx
    jge	L44
    movl	-60(%rbp), %edx
    movq	-32(%rbp), %rax
    movl	%edx, %esi
    movq	%rax, %rdi
    call	_obstack_newchunk
L44:
    movq	-32(%rbp), %rax
    movq	24(%rax), %rdx
    movl	-60(%rbp), %eax
    cltq
    addq	%rax, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	16(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	24(%rax), %rax
    cmpq	-16(%rbp), %rax
    jne	L45
    movq	-24(%rbp), %rax
    movl	$1, 44(%rax)
L45:
    movq	-24(%rbp), %rax
    movq	24(%rax), %rax
    movq	%rax, %rdx
    movq	-24(%rbp), %rax
    movl	40(%rax), %eax
    cltq
    addq	%rax, %rdx
    movq	-24(%rbp), %rax
    movl	40(%rax), %eax
    notl	%eax
    cltq
    andq	%rdx, %rax
    movq	%rax, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-24(%rbp), %rax
    movq	24(%rax), %rax
    movq	%rax, %rdx
    movq	-24(%rbp), %rax
    movq	8(%rax), %rax
    subq	%rax, %rdx
    movq	-24(%rbp), %rax
    movq	32(%rax), %rax
    movq	%rax, %rcx
    movq	-24(%rbp), %rax
    movq	8(%rax), %rax
    subq	%rax, %rcx
    movq	%rcx, %rax
    cmpq	%rax, %rdx
    jle	L46
    movq	-24(%rbp), %rax
    movq	32(%rax), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, 24(%rax)
L46:
    movq	-24(%rbp), %rax
    movq	24(%rax), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, 16(%rax)
    movq	-16(%rbp), %rax
    jmp	L47
L43:
    movl	$32, %edi
    call	xmalloc
L47:
    movq	-72(%rbp), %rdx
    movq	%rax, 24(%rdx)
    movq	-72(%rbp), %rax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L49
    call	__stack_chk_fail
L49:
    leave
    ret
    .globl	alloc_type
alloc_type:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .globl	xmalloc
xmalloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	_obstack_newchunk
_obstack_newchunk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    call	abort
    .globl	get_discrete_bounds
get_discrete_bounds:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    movq	$0, (%rax)
    movq	-16(%rbp), %rax
    movq	$2, (%rax)
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-80(%rbp), %rax
    movl	$32, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-48(%rbp), %rax
    movl	$32, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movl	$4, -80(%rbp)
    leaq	-80(%rbp), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	create_array_type
    movl	-48(%rbp), %eax
    cmpl	$12, %eax
    je	L56
    call	abort
L56:
    movl	$0, %edi
    call	exit
