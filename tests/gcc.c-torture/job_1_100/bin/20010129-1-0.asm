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
    .globl	baz1
baz1:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	l2411(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, l2411(%rip)
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
    jne	L46
    call	abort
L46:
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
    jmp	L49
L61:
    movzbl	-272(%rbp), %eax
    cmpb	$32, %al
    je	L49
    movzbl	-272(%rbp), %eax
    cmpb	$9, %al
    je	L49
    movl	$1, -292(%rbp)
    movl	$0, -300(%rbp)
    cmpl	$0, -304(%rbp)
    jne	L50
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L50
    movl	-324(%rbp), %eax
    andl	$16, %eax
    testl	%eax, %eax
    jne	L51
    jmp	L49
L51:
    movl	$1, -304(%rbp)
    movl	-304(%rbp), %eax
    movl	%eax, -300(%rbp)
L50:
    movl	-324(%rbp), %eax
    andl	$16, %eax
    testl	%eax, %eax
    je	L52
    movl	-324(%rbp), %eax
    andl	$16384, %eax
    testl	%eax, %eax
    je	L52
    cmpl	$0, -300(%rbp)
    jne	L53
L52:
    movl	-324(%rbp), %eax
    andl	$2, %eax
    testl	%eax, %eax
    je	L53
    jmp	L49
L53:
    movl	-324(%rbp), %eax
    andl	$8192, %eax
    testl	%eax, %eax
    je	L54
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L54
    jmp	L49
L54:
    movl	-324(%rbp), %eax
    andl	$5128, %eax
    testl	%eax, %eax
    je	L55
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L55
    jmp	L49
L55:
    movl	-324(%rbp), %eax
    andl	$512, %eax
    testl	%eax, %eax
    je	L56
    leaq	-272(%rbp), %rax
    movq	%rax, %rdi
    call	baz2
    testl	%eax, %eax
    jne	L56
    jmp	L49
L56:
    movl	-324(%rbp), %eax
    andl	$128, %eax
    testl	%eax, %eax
    je	L57
    movq	-280(%rbp), %rax
    movq	%rax, -288(%rbp)
    movl	$0, -296(%rbp)
    jmp	L58
L60:
    movl	-296(%rbp), %eax
    movl	%eax, %edi
    call	baz3
    testl	%eax, %eax
    jne	L64
    movq	-288(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -288(%rbp)
    addl	$1, -296(%rbp)
L58:
    cmpq	$0, -288(%rbp)
    jne	L60
    jmp	L57
L64:
    nop
L57:
    movl	$0, -292(%rbp)
L49:
    movq	-312(%rbp), %rax
    movq	%rax, %rdi
    call	baz1
    cmpq	-320(%rbp), %rax
    jl	L61
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L63
    call	__stack_chk_fail
L63:
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
    .comm	l2411,8,8
