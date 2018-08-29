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
    .globl	cx
    .data
cx:
    .byte	7
    .globl	sx
sx:
    .value	14
    .globl	ix
ix:
    .long	21
    .globl	lx
lx:
    .quad	28
    .globl	Lx
Lx:
    .quad	35
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movzbl	cx(%rip), %eax
    movzbl	%al, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    leal	0(,%rax,8), %edx
    addl	%edx, %eax
    shrw	$8, %ax
    shrb	$2, %al
    movb	%al, -23(%rbp)
    cmpb	$1, -23(%rbp)
    je	L46
    call	abort
L46:
    movzbl	cx(%rip), %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    leal	0(,%rax,8), %edx
    addl	%edx, %eax
    shrw	$8, %ax
    shrb	$2, %al
    movb	%al, -23(%rbp)
    movzbl	-23(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movb	%al, -23(%rbp)
    cmpb	$1, -23(%rbp)
    je	L47
    call	abort
L47:
    movzwl	sx(%rip), %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    shrw	$2, %ax
    movw	%ax, -22(%rbp)
    cmpw	$2, -22(%rbp)
    je	L48
    call	abort
L48:
    movzwl	sx(%rip), %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    shrw	$2, %ax
    movw	%ax, -22(%rbp)
    movzwl	-22(%rbp), %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    addl	%eax, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movw	%ax, -22(%rbp)
    cmpw	$2, -22(%rbp)
    je	L49
    call	abort
L49:
    movl	ix(%rip), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, -20(%rbp)
    cmpl	$3, -20(%rbp)
    je	L50
    call	abort
L50:
    movl	ix(%rip), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, -20(%rbp)
    cmpl	$3, -20(%rbp)
    je	L51
    call	abort
L51:
    movq	lx(%rip), %rax
    movabsq	$-6148914691236517205, %rdx
    mulq	%rdx
    movq	%rdx, %rax
    shrq	$2, %rax
    movq	%rax, -16(%rbp)
    cmpq	$4, -16(%rbp)
    je	L52
    call	abort
L52:
    movq	lx(%rip), %rcx
    movabsq	$-6148914691236517205, %rdx
    movq	%rcx, %rax
    mulq	%rdx
    movq	%rdx, %rax
    shrq	$2, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    addq	%rax, %rax
    subq	%rax, %rcx
    movq	%rcx, %rax
    movq	%rax, -16(%rbp)
    cmpq	$4, -16(%rbp)
    je	L53
    call	abort
L53:
    movq	Lx(%rip), %rax
    movabsq	$-6148914691236517205, %rdx
    mulq	%rdx
    movq	%rdx, %rax
    shrq	$2, %rax
    movq	%rax, -8(%rbp)
    cmpq	$5, -8(%rbp)
    je	L54
    call	abort
L54:
    movq	Lx(%rip), %rcx
    movabsq	$-6148914691236517205, %rdx
    movq	%rcx, %rax
    mulq	%rdx
    movq	%rdx, %rax
    shrq	$2, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    addq	%rax, %rax
    subq	%rax, %rcx
    movq	%rcx, %rax
    movq	%rax, -8(%rbp)
    cmpq	$5, -8(%rbp)
    je	L55
    call	abort
L55:
    movl	$0, %edi
    call	exit
