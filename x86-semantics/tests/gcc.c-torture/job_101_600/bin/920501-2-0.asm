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
    .globl	gcd_ll
gcd_ll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
L49:
    cmpq	$0, -16(%rbp)
    jne	L46
    movq	-8(%rbp), %rax
    jmp	L47
L46:
    movq	-8(%rbp), %rax
    movl	$0, %edx
    divq	-16(%rbp)
    movq	%rdx, -8(%rbp)
    cmpq	$0, -8(%rbp)
    jne	L48
    movq	-16(%rbp), %rax
    jmp	L47
L48:
    movq	-16(%rbp), %rax
    movl	$0, %edx
    divq	-8(%rbp)
    movq	%rdx, -16(%rbp)
    jmp	L49
L47:
    popq	%rbp
    ret
    .globl	powmod_ll
powmod_ll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    cmpl	$0, -28(%rbp)
    jne	L51
    movl	$1, %eax
    jmp	L52
L51:
    movl	-28(%rbp), %eax
    movl	%eax, -16(%rbp)
    movl	$0, -12(%rbp)
    jmp	L53
L54:
    shrl	-16(%rbp)
    addl	$1, -12(%rbp)
L53:
    cmpl	$0, -16(%rbp)
    jne	L54
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    subl	$2, -12(%rbp)
    jmp	L55
L57:
    movq	-8(%rbp), %rax
    imulq	-8(%rbp), %rax
    movl	$0, %edx
    divq	-40(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-12(%rbp), %eax
    movl	$1, %edx
    shlx	%eax, %edx, %eax
    andl	-28(%rbp), %eax
    testl	%eax, %eax
    je	L56
    movq	-8(%rbp), %rax
    imulq	-24(%rbp), %rax
    movl	$0, %edx
    divq	-40(%rbp)
    movq	%rdx, -8(%rbp)
L56:
    subl	$1, -12(%rbp)
L55:
    cmpl	$0, -12(%rbp)
    jns	L57
    movq	-8(%rbp), %rax
L52:
    popq	%rbp
    ret
    .comm	factab,80,32
    .globl	facts
facts:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$104, %rsp
    movq	%rdi, -88(%rbp)
    movl	%esi, -92(%rbp)
    movl	%edx, -96(%rbp)
    movl	%ecx, -100(%rbp)
    movq	$factab, -56(%rbp)
    movq	$1, -32(%rbp)
    movl	-92(%rbp), %eax
    cltq
    movq	%rax, -16(%rbp)
    movl	$1, -64(%rbp)
    movl	$0, -60(%rbp)
    movl	-96(%rbp), %eax
    cltq
    movq	%rax, -48(%rbp)
    movl	-96(%rbp), %eax
    cltq
    movq	%rax, -40(%rbp)
    movl	$1, -68(%rbp)
    jmp	L59
L64:
    movq	-88(%rbp), %rdx
    movl	-100(%rbp), %ecx
    movq	-48(%rbp), %rax
    movl	%ecx, %esi
    movq	%rax, %rdi
    call	powmod_ll
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    addq	%rdx, %rax
    movq	%rax, -48(%rbp)
    movq	-88(%rbp), %rdx
    movl	-100(%rbp), %ecx
    movq	-40(%rbp), %rax
    movl	%ecx, %esi
    movq	%rax, %rdi
    call	powmod_ll
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    addq	%rdx, %rax
    movq	%rax, -40(%rbp)
    movq	-88(%rbp), %rdx
    movl	-100(%rbp), %ecx
    movq	-40(%rbp), %rax
    movl	%ecx, %esi
    movq	%rax, %rdi
    call	powmod_ll
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    addq	%rdx, %rax
    movq	%rax, -40(%rbp)
    movq	-48(%rbp), %rax
    cmpq	-40(%rbp), %rax
    jbe	L60
    movq	-48(%rbp), %rax
    subq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    jmp	L61
L60:
    movq	-40(%rbp), %rax
    subq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
L61:
    movq	-32(%rbp), %rax
    imulq	-24(%rbp), %rax
    movl	$0, %edx
    divq	-88(%rbp)
    movq	%rdx, -32(%rbp)
    movl	-68(%rbp), %eax
    cmpl	-64(%rbp), %eax
    jne	L62
    addl	$1, -60(%rbp)
    movl	-60(%rbp), %eax
    addl	%eax, -64(%rbp)
    movq	-88(%rbp), %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	gcd_ll
    movq	%rax, -8(%rbp)
    cmpq	$1, -8(%rbp)
    je	L62
    movq	-56(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -56(%rbp)
    movq	-8(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	-88(%rbp), %rax
    movl	$0, %edx
    divq	-8(%rbp)
    movq	%rax, -88(%rbp)
    cmpq	$1, -88(%rbp)
    je	L65
L62:
    addl	$1, -68(%rbp)
L59:
    cmpl	$9999, -68(%rbp)
    jle	L64
    jmp	L58
L65:
    nop
L58:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$27, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$1, %edx
    shlx	%rax, %rdx, %rax
    subq	$1, %rax
    movq	%rax, -8(%rbp)
    movl	$-1, -16(%rbp)
    movl	$3, -12(%rbp)
    movl	-20(%rbp), %ecx
    movl	-12(%rbp), %edx
    movl	-16(%rbp), %esi
    movq	-8(%rbp), %rax
    movq	%rax, %rdi
    movl	$0, %eax
    call	facts
    movq	factab(%rip), %rax
    cmpq	$7, %rax
    jne	L67
    movq	factab + 8(%rip), %rax
    cmpq	$73, %rax
    jne	L67
    movq	factab + 16(%rip), %rax
    cmpq	$262657, %rax
    je	L68
L67:
    call	abort
L68:
    movl	$0, %edi
    call	exit
