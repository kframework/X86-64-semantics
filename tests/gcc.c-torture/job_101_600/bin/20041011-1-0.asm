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
    .comm	gvol,128,32
    .comm	gull,8,8
    .globl	t1
t1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L46
L47:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    subq	$2048, -144(%rbp)
L46:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L47
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t2
t2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L50
L51:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    subq	$513, -144(%rbp)
L50:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L51
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t3
t3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L54
L55:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    subq	$512, -144(%rbp)
L54:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L55
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t4
t4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L58
L59:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    subq	$511, -144(%rbp)
L58:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L59
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t5
t5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L62
L63:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    subq	$1, -144(%rbp)
L62:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L63
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t6
t6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L66
L67:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    addq	$1, -144(%rbp)
L66:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L67
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t7
t7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L70
L71:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    addq	$511, -144(%rbp)
L70:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L71
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t8
t8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L74
L75:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    addq	$512, -144(%rbp)
L74:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L75
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t9
t9:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L78
L79:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    addq	$513, -144(%rbp)
L78:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L79
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t10
t10:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L82
L83:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    movq	gull(%rip), %rax
    addq	%rax, -144(%rbp)
L82:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L83
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	t11
t11:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -132(%rbp)
    movq	%rsi, -144(%rbp)
    jmp	L86
L87:
    movl	gvol + 4(%rip), %eax
    movl	%eax, -120(%rbp)
    movl	gvol + 8(%rip), %eax
    movl	%eax, -116(%rbp)
    movl	gvol + 12(%rip), %eax
    movl	%eax, -112(%rbp)
    movl	gvol + 16(%rip), %eax
    movl	%eax, -108(%rbp)
    movl	gvol + 20(%rip), %eax
    movl	%eax, -104(%rbp)
    movl	gvol + 24(%rip), %eax
    movl	%eax, -100(%rbp)
    movl	gvol + 28(%rip), %eax
    movl	%eax, -96(%rbp)
    movl	gvol + 32(%rip), %eax
    movl	%eax, -92(%rbp)
    movl	gvol + 36(%rip), %eax
    movl	%eax, -88(%rbp)
    movl	gvol + 40(%rip), %eax
    movl	%eax, -84(%rbp)
    movl	gvol + 44(%rip), %eax
    movl	%eax, -80(%rbp)
    movl	gvol + 48(%rip), %eax
    movl	%eax, -76(%rbp)
    movl	gvol + 52(%rip), %eax
    movl	%eax, -72(%rbp)
    movl	gvol + 56(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	gvol + 60(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	gvol + 64(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	gvol + 68(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	gvol + 72(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	gvol + 76(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	gvol + 80(%rip), %eax
    movl	%eax, -44(%rbp)
    movl	gvol + 84(%rip), %eax
    movl	%eax, -40(%rbp)
    movl	gvol + 88(%rip), %eax
    movl	%eax, -36(%rbp)
    movl	gvol + 92(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	gvol + 96(%rip), %eax
    movl	%eax, -28(%rbp)
    movl	gvol + 100(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	gvol + 104(%rip), %eax
    movl	%eax, -20(%rbp)
    movl	gvol + 108(%rip), %eax
    movl	%eax, -16(%rbp)
    movl	gvol + 112(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	gvol + 116(%rip), %eax
    movl	%eax, -8(%rbp)
    movl	gvol + 120(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-120(%rbp), %eax
    movl	%eax, gvol + 4(%rip)
    movl	-116(%rbp), %eax
    movl	%eax, gvol + 8(%rip)
    movl	-112(%rbp), %eax
    movl	%eax, gvol + 12(%rip)
    movl	-108(%rbp), %eax
    movl	%eax, gvol + 16(%rip)
    movl	-104(%rbp), %eax
    movl	%eax, gvol + 20(%rip)
    movl	-100(%rbp), %eax
    movl	%eax, gvol + 24(%rip)
    movl	-96(%rbp), %eax
    movl	%eax, gvol + 28(%rip)
    movl	-92(%rbp), %eax
    movl	%eax, gvol + 32(%rip)
    movl	-88(%rbp), %eax
    movl	%eax, gvol + 36(%rip)
    movl	-84(%rbp), %eax
    movl	%eax, gvol + 40(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, gvol + 44(%rip)
    movl	-76(%rbp), %eax
    movl	%eax, gvol + 48(%rip)
    movl	-72(%rbp), %eax
    movl	%eax, gvol + 52(%rip)
    movl	-68(%rbp), %eax
    movl	%eax, gvol + 56(%rip)
    movl	-64(%rbp), %eax
    movl	%eax, gvol + 60(%rip)
    movl	-60(%rbp), %eax
    movl	%eax, gvol + 64(%rip)
    movl	-56(%rbp), %eax
    movl	%eax, gvol + 68(%rip)
    movl	-52(%rbp), %eax
    movl	%eax, gvol + 72(%rip)
    movl	-48(%rbp), %eax
    movl	%eax, gvol + 76(%rip)
    movl	-44(%rbp), %eax
    movl	%eax, gvol + 80(%rip)
    movl	-40(%rbp), %eax
    movl	%eax, gvol + 84(%rip)
    movl	-36(%rbp), %eax
    movl	%eax, gvol + 88(%rip)
    movl	-32(%rbp), %eax
    movl	%eax, gvol + 92(%rip)
    movl	-28(%rbp), %eax
    movl	%eax, gvol + 96(%rip)
    movl	-24(%rbp), %eax
    movl	%eax, gvol + 100(%rip)
    movl	-20(%rbp), %eax
    movl	%eax, gvol + 104(%rip)
    movl	-16(%rbp), %eax
    movl	%eax, gvol + 108(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, gvol + 112(%rip)
    movl	-8(%rbp), %eax
    movl	%eax, gvol + 116(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, gvol + 120(%rip)
    movq	gull(%rip), %rax
    subq	%rax, -144(%rbp)
L86:
    movl	-132(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -132(%rbp)
    testl	%eax, %eax
    jne	L87
    movq	-144(%rbp), %rax
    leave
    ret
    .globl	neg
neg:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    negq	%rax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	$100, gull(%rip)
    movq	$-1, %rsi
    movl	$3, %edi
    call	t1
    cmpq	$-6145, %rax
    je	L92
    call	abort
L92:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t1
    movq	%rax, %rdx
    movl	$4294961151, %eax
    cmpq	%rax, %rdx
    je	L93
    call	abort
L93:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t2
    cmpq	$-1540, %rax
    je	L94
    call	abort
L94:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t2
    movq	%rax, %rdx
    movl	$4294965756, %eax
    cmpq	%rax, %rdx
    je	L95
    call	abort
L95:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t3
    cmpq	$-1537, %rax
    je	L96
    call	abort
L96:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t3
    movq	%rax, %rdx
    movl	$4294965759, %eax
    cmpq	%rax, %rdx
    je	L97
    call	abort
L97:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t4
    cmpq	$-1534, %rax
    je	L98
    call	abort
L98:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t4
    movq	%rax, %rdx
    movl	$4294965762, %eax
    cmpq	%rax, %rdx
    je	L99
    call	abort
L99:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t5
    cmpq	$-4, %rax
    je	L100
    call	abort
L100:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t5
    movq	%rax, %rdx
    movl	$4294967292, %eax
    cmpq	%rax, %rdx
    je	L101
    call	abort
L101:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t6
    cmpq	$2, %rax
    je	L102
    call	abort
L102:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t6
    movq	%rax, %rdx
    movabsq	$4294967298, %rax
    cmpq	%rax, %rdx
    je	L103
    call	abort
L103:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t7
    cmpq	$1532, %rax
    je	L104
    call	abort
L104:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t7
    movq	%rax, %rdx
    movabsq	$4294968828, %rax
    cmpq	%rax, %rdx
    je	L105
    call	abort
L105:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t8
    cmpq	$1535, %rax
    je	L106
    call	abort
L106:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t8
    movq	%rax, %rdx
    movabsq	$4294968831, %rax
    cmpq	%rax, %rdx
    je	L107
    call	abort
L107:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t9
    cmpq	$1538, %rax
    je	L108
    call	abort
L108:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t9
    movq	%rax, %rdx
    movabsq	$4294968834, %rax
    cmpq	%rax, %rdx
    je	L109
    call	abort
L109:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t10
    movq	%rax, %rcx
    movq	gull(%rip), %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    subq	$1, %rax
    cmpq	%rax, %rcx
    je	L110
    call	abort
L110:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t10
    movq	%rax, %rcx
    movq	gull(%rip), %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rax, %rdx
    movl	$4294967295, %eax
    addq	%rdx, %rax
    cmpq	%rax, %rcx
    je	L111
    call	abort
L111:
    movq	$-1, %rsi
    movl	$3, %edi
    call	t11
    movq	%rax, %rcx
    movq	gull(%rip), %rdx
    movl	$0, %eax
    subq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    subq	$1, %rax
    cmpq	%rax, %rcx
    je	L112
    call	abort
L112:
    movl	$4294967295, %esi
    movl	$3, %edi
    call	t11
    movq	%rax, %rcx
    movq	gull(%rip), %rdx
    movl	$0, %eax
    subq	%rdx, %rax
    salq	$2, %rax
    addq	%rax, %rdx
    movl	$4294967295, %eax
    addq	%rdx, %rax
    cmpq	%rax, %rcx
    je	L113
    call	abort
L113:
    movq	gull(%rip), %rax
    movq	%rax, %rdi
    call	neg
    cmpq	$-100, %rax
    je	L114
    call	abort
L114:
    movl	$0, %edi
    call	exit
