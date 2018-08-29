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
    .globl	FFmul
FFmul:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	DUPFFdeg
DUPFFdeg:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	4(%rax), %eax
    popq	%rbp
    ret
    .globl	DUPFFnew
DUPFFnew:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -20(%rbp)
    movl	$16, %edi
    call	malloc
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	$0, 8(%rax)
    cmpl	$0, -20(%rbp)
    js	L50
    movl	-20(%rbp), %eax
    addl	$1, %eax
    cltq
    movl	$4, %esi
    movq	%rax, %rdi
    call	calloc
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, 8(%rax)
L50:
    movq	-8(%rbp), %rax
    movl	-20(%rbp), %edx
    movl	%edx, (%rax)
    movq	-8(%rbp), %rax
    movl	$-1, 4(%rax)
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	DUPFFfree
DUPFFfree:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	DUPFFswap
DUPFFswap:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    nop
    popq	%rbp
    ret
    .globl	DUPFFcopy
DUPFFcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	DUPFFshift_add
DUPFFshift_add:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -20(%rbp)
    movl	%ecx, -24(%rbp)
    nop
    popq	%rbp
    ret
    .globl	DUPFFexgcd
DUPFFexgcd:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$120, %rsp
    movq	%rdi, -104(%rbp)
    movq	%rsi, -112(%rbp)
    movq	%rdx, -120(%rbp)
    movq	%rcx, -128(%rbp)
    movq	-120(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    movl	%eax, %ebx
    movq	-128(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    cmpl	%eax, %ebx
    jge	L58
    movq	-120(%rbp), %rcx
    movq	-128(%rbp), %rdx
    movq	-104(%rbp), %rsi
    movq	-112(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFexgcd
    jmp	L59
L58:
    movq	-120(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    cmpl	$2, %eax
    jne	L60
    movq	-128(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    cmpl	$1, %eax
    je	L61
L60:
    call	abort
L61:
    movq	-120(%rbp), %rax
    movq	8(%rax), %rax
    movl	(%rax), %eax
    testl	%eax, %eax
    jne	L62
    movq	-120(%rbp), %rax
    jmp	L59
L62:
    movl	$2, -88(%rbp)
    movq	-120(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    movl	%eax, -96(%rbp)
    cmpl	$0, -96(%rbp)
    jns	L63
    movl	$0, -96(%rbp)
L63:
    movq	-128(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    movl	%eax, -92(%rbp)
    cmpl	$0, -92(%rbp)
    jns	L64
    movl	$0, -92(%rbp)
L64:
    movq	-120(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFcopy
    movq	%rax, -64(%rbp)
    movq	-128(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFcopy
    movq	%rax, -56(%rbp)
    movl	-92(%rbp), %eax
    movl	%eax, %edi
    call	DUPFFnew
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    movq	8(%rax), %rax
    movl	$1, (%rax)
    movq	-48(%rbp), %rax
    movl	$0, 4(%rax)
    movl	-96(%rbp), %eax
    movl	%eax, %edi
    call	DUPFFnew
    movq	%rax, -40(%rbp)
    movl	-92(%rbp), %eax
    movl	%eax, %edi
    call	DUPFFnew
    movq	%rax, -32(%rbp)
    movl	-96(%rbp), %eax
    movl	%eax, %edi
    call	DUPFFnew
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	8(%rax), %rax
    movl	$1, (%rax)
    movq	-24(%rbp), %rax
    movl	$0, 4(%rax)
    jmp	L65
L68:
    movq	-56(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    movl	%eax, -84(%rbp)
    movq	-56(%rbp), %rax
    movq	8(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    movl	(%rax), %eax
    movl	%eax, %esi
    movl	$1, %edi
    call	FFmul
    movl	%eax, -80(%rbp)
    jmp	L66
L67:
    movq	-64(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    movl	%eax, -76(%rbp)
    movq	-64(%rbp), %rax
    movq	8(%rax), %rax
    movl	-76(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    movl	(%rax), %eax
    movl	%eax, -72(%rbp)
    movl	-80(%rbp), %edx
    movl	-72(%rbp), %eax
    movl	%edx, %esi
    movl	%eax, %edi
    call	FFmul
    movl	%eax, -68(%rbp)
    movl	-88(%rbp), %eax
    subl	-68(%rbp), %eax
    movl	%eax, %ecx
    movl	-76(%rbp), %eax
    subl	-84(%rbp), %eax
    movl	%eax, %edx
    movq	-56(%rbp), %rsi
    movq	-64(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFshift_add
    movl	-88(%rbp), %eax
    subl	-68(%rbp), %eax
    movl	%eax, %ecx
    movl	-76(%rbp), %eax
    subl	-84(%rbp), %eax
    movl	%eax, %edx
    movq	-32(%rbp), %rsi
    movq	-48(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFshift_add
    movl	-88(%rbp), %eax
    subl	-68(%rbp), %eax
    movl	%eax, %ecx
    movl	-76(%rbp), %eax
    subl	-84(%rbp), %eax
    movl	%eax, %edx
    movq	-24(%rbp), %rsi
    movq	-40(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFshift_add
L66:
    movq	-64(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    cmpl	-84(%rbp), %eax
    jge	L67
    movq	-56(%rbp), %rdx
    movq	-64(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
    movq	-32(%rbp), %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
    movq	-24(%rbp), %rdx
    movq	-40(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
L65:
    movq	-56(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    testl	%eax, %eax
    jg	L68
    movq	-56(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFdeg
    testl	%eax, %eax
    jne	L69
    movq	-56(%rbp), %rdx
    movq	-64(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
    movq	-32(%rbp), %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
    movq	-24(%rbp), %rdx
    movq	-40(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	DUPFFswap
L69:
    movq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFfree
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFfree
    movq	-56(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFfree
    movq	-104(%rbp), %rax
    movq	-48(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	-112(%rbp), %rax
    movq	-40(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	-64(%rbp), %rax
L59:
    addq	$120, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$1, %edi
    call	DUPFFnew
    movq	%rax, -32(%rbp)
    movq	-32(%rbp), %rax
    movq	8(%rax), %rax
    addq	$4, %rax
    movl	$1, (%rax)
    movq	-32(%rbp), %rax
    movl	$1, 4(%rax)
    movl	$2, %edi
    call	DUPFFnew
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	8(%rax), %rax
    addq	$8, %rax
    movl	$1, (%rax)
    movq	-24(%rbp), %rax
    movl	$2, 4(%rax)
    movq	-24(%rbp), %rcx
    movq	-32(%rbp), %rdx
    leaq	-40(%rbp), %rsi
    leaq	-48(%rbp), %rax
    movq	%rax, %rdi
    call	DUPFFexgcd
    movq	%rax, -16(%rbp)
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L72
    call	__stack_chk_fail
L72:
    leave
    ret
