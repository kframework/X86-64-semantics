    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
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
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -8(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L54
    movabsq	$81985529216486895, %rax
    cmpq	%rax, -16(%rbp)
    jne	L54
    cmpl	$85, -8(%rbp)
    je	L56
L54:
    call	abort
L56:
    nop
    leave
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movq	%rdx, -16(%rbp)
    movl	%ecx, -20(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L58
    cmpl	$2, -8(%rbp)
    jne	L58
    movabsq	$81985529216486895, %rax
    cmpq	%rax, -16(%rbp)
    jne	L58
    cmpl	$85, -20(%rbp)
    je	L60
L58:
    call	abort
L60:
    nop
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movq	%rcx, -24(%rbp)
    movl	%r8d, -16(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L62
    cmpl	$2, -8(%rbp)
    jne	L62
    cmpl	$3, -12(%rbp)
    jne	L62
    movabsq	$81985529216486895, %rax
    cmpq	%rax, -24(%rbp)
    jne	L62
    cmpl	$85, -16(%rbp)
    je	L64
L62:
    call	abort
L64:
    nop
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movq	%r8, -24(%rbp)
    movl	%r9d, -28(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L66
    cmpl	$2, -8(%rbp)
    jne	L66
    cmpl	$3, -12(%rbp)
    jne	L66
    cmpl	$4, -16(%rbp)
    jne	L66
    movabsq	$81985529216486895, %rax
    cmpq	%rax, -24(%rbp)
    jne	L66
    cmpl	$85, -28(%rbp)
    je	L68
L66:
    call	abort
L68:
    nop
    leave
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movl	%r8d, -20(%rbp)
    movq	%r9, -32(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L70
    cmpl	$2, -8(%rbp)
    jne	L70
    cmpl	$3, -12(%rbp)
    jne	L70
    cmpl	$4, -16(%rbp)
    jne	L70
    cmpl	$5, -20(%rbp)
    jne	L70
    movabsq	$81985529216486895, %rax
    cmpq	%rax, -32(%rbp)
    jne	L70
    cmpl	$85, 16(%rbp)
    je	L72
L70:
    call	abort
L72:
    nop
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movl	%r8d, -20(%rbp)
    movl	%r9d, -24(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L74
    cmpl	$2, -8(%rbp)
    jne	L74
    cmpl	$3, -12(%rbp)
    jne	L74
    cmpl	$4, -16(%rbp)
    jne	L74
    cmpl	$5, -20(%rbp)
    jne	L74
    cmpl	$6, -24(%rbp)
    jne	L74
    movabsq	$81985529216486895, %rax
    cmpq	%rax, 16(%rbp)
    jne	L74
    cmpl	$85, 24(%rbp)
    je	L76
L74:
    call	abort
L76:
    nop
    leave
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movl	%r8d, -20(%rbp)
    movl	%r9d, -24(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L78
    cmpl	$2, -8(%rbp)
    jne	L78
    cmpl	$3, -12(%rbp)
    jne	L78
    cmpl	$4, -16(%rbp)
    jne	L78
    cmpl	$5, -20(%rbp)
    jne	L78
    cmpl	$6, -24(%rbp)
    jne	L78
    cmpl	$7, 16(%rbp)
    jne	L78
    movabsq	$81985529216486895, %rax
    cmpq	%rax, 24(%rbp)
    jne	L78
    cmpl	$85, 32(%rbp)
    je	L80
L78:
    call	abort
L80:
    nop
    leave
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movl	%r8d, -20(%rbp)
    movl	%r9d, -24(%rbp)
    cmpl	$1, -4(%rbp)
    jne	L82
    cmpl	$2, -8(%rbp)
    jne	L82
    cmpl	$3, -12(%rbp)
    jne	L82
    cmpl	$4, -16(%rbp)
    jne	L82
    cmpl	$5, -20(%rbp)
    jne	L82
    cmpl	$6, -24(%rbp)
    jne	L82
    cmpl	$7, 16(%rbp)
    jne	L82
    cmpl	$8, 24(%rbp)
    jne	L82
    movabsq	$81985529216486895, %rax
    cmpq	%rax, 32(%rbp)
    jne	L82
    cmpl	$85, 40(%rbp)
    je	L84
L82:
    call	abort
L84:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$85, %edx
    movabsq	$81985529216486895, %rsi
    movl	$1, %edi
    call	test1
    movl	$85, %ecx
    movabsq	$81985529216486895, %rdx
    movl	$2, %esi
    movl	$1, %edi
    call	test2
    movl	$85, %r8d
    movabsq	$81985529216486895, %rcx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test3
    movl	$85, %r9d
    movabsq	$81985529216486895, %r8
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test4
    pushq	$85
    movabsq	$81985529216486895, %r9
    movl	$5, %r8d
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test5
    addq	$8, %rsp
    pushq	$85
    pushq	$-1985229329
    movl	$19088743, 4(%rsp)
    movl	$6, %r9d
    movl	$5, %r8d
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test6
    addq	$16, %rsp
    pushq	$85
    pushq	$-1985229329
    movl	$19088743, 4(%rsp)
    pushq	$7
    movl	$6, %r9d
    movl	$5, %r8d
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test7
    addq	$24, %rsp
    pushq	$85
    pushq	$-1985229329
    movl	$19088743, 4(%rsp)
    pushq	$8
    pushq	$7
    movl	$6, %r9d
    movl	$5, %r8d
    movl	$4, %ecx
    movl	$3, %edx
    movl	$2, %esi
    movl	$1, %edi
    call	test8
    addq	$32, %rsp
    movl	$0, %edi
    call	exit
