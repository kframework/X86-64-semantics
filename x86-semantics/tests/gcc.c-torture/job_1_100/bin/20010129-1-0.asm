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
    jmp	L27
L28:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L27:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
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
    jmp	L31
L32:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L31:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L32
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
    jle	L40
    cmpl	$122, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L41
L40:
    cmpl	$64, -4(%rbp)
    jle	L42
    cmpl	$90, -4(%rbp)
    jg	L42
    movl	$1, %eax
    jmp	L41
L42:
    cmpl	$47, -4(%rbp)
    jle	L43
    cmpl	$57, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L41
L43:
    movl	$0, %eax
L41:
    popq	%rbp
    ret
    .globl	baz1
baz1:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq $l2416(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $l2416(%rip)
    popq	%rbp
    ret
    .globl	baz2
baz2:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	baz3
baz3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    cmpl	$0, -4(%rbp)
    jne	L49
    call	abort
L49:
    movl	$1, %eax
    leave
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$336, %rsp
    movq	%rdi, -312(%rbp)
    movq	%rsi, -320(%rbp)
    movl	%edx, -324(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -304(%rbp)
    movl	$0, -292(%rbp)
    movq	-312(%rbp), %rax
    movq	%rax, -280(%rbp)
    movb	$10, -272(%rbp)
    movb	$0, -271(%rbp)
    jmp	L52
L64:
    movzbl	-272(%rbp), %eax
    cmpb	$32, %al
    je	L52
    movzbl	-272(%rbp), %eax
    cmpb	$9, %al
    je	L52
    movl	$1, -292(%rbp)
    movl	$0, -300(%rbp)
    cmpl	$0, -304(%rbp)
    jne	L53
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L53
    movl	-324(%rbp), %eax
    andl	$16, %eax
    testl	%eax, %eax
    jne	L54
    jmp	L52
L54:
    movl	$1, -304(%rbp)
    movl	-304(%rbp), %eax
    movl	%eax, -300(%rbp)
L53:
    movl	-324(%rbp), %eax
    andl	$16, %eax
    testl	%eax, %eax
    je	L55
    movl	-324(%rbp), %eax
    andl	$16384, %eax
    testl	%eax, %eax
    je	L55
    cmpl	$0, -300(%rbp)
    jne	L56
L55:
    movl	-324(%rbp), %eax
    andl	$2, %eax
    testl	%eax, %eax
    je	L56
    jmp	L52
L56:
    movl	-324(%rbp), %eax
    andl	$8192, %eax
    testl	%eax, %eax
    je	L57
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L57
    jmp	L52
L57:
    movl	-324(%rbp), %eax
    andl	$5128, %eax
    testl	%eax, %eax
    je	L58
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L58
    jmp	L52
L58:
    movl	-324(%rbp), %eax
    andl	$512, %eax
    testl	%eax, %eax
    je	L59
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L59
    jmp	L52
L59:
    movl	-324(%rbp), %eax
    andl	$128, %eax
    testl	%eax, %eax
    je	L60
    movq	-280(%rbp), %rax
    movq	%rax, -288(%rbp)
    movl	$0, -296(%rbp)
    jmp	L61
L63:
    movl	-296(%rbp), %eax
    movl	%eax, %edi
    call	baz3
    testl	%eax, %eax
    jne	L67
    movq	-288(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -288(%rbp)
    addl	$1, -296(%rbp)
L61:
    cmpq	$0, -288(%rbp)
    jne	L63
    jmp	L60
L67:
    nop
L60:
    movl	$0, -292(%rbp)
L52:
    movq	-312(%rbp), %rax
    movq	%rax, %rdi
    call	baz1
    cmpq	-320(%rbp), %rax
    jl	L64
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L66
    call	__stack_chk_fail
L66:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movl	$51217, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	foo
    movl	$0, %edi
    call	exit
    .comm	l2416,8,8
