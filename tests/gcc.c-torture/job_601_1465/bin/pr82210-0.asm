    .text
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
    jmp	L2
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L4
L3:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L5
    movl	$0, %eax
L4:
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
    jmp	L10
L11:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
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
    jmp	L14
L15:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L14:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L15
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
    jle	L23
    cmpl	$122, -4(%rbp)
    jg	L23
    movl	$1, %eax
    jmp	L24
L23:
    cmpl	$64, -4(%rbp)
    jle	L25
    cmpl	$90, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L24
L25:
    cmpl	$47, -4(%rbp)
    jle	L26
    cmpl	$57, -4(%rbp)
    jg	L26
    movl	$1, %eax
    jmp	L24
L26:
    movl	$0, %eax
L24:
    popq	%rbp
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r15
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$120, %rsp
    movl	%edi, -100(%rbp)
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    movq	%rsp, %rax
    movq	%rax, %rbx
    movl	-100(%rbp), %esi
    movslq	%esi, %rax
    movq	%rax, %rdx
    movl	$0, %ecx
    movslq	%esi, %rax
    subq	$1, %rax
    movq	%rax, -80(%rbp)
    movslq	%esi, %rax
    movq	%rax, -128(%rbp)
    movq	$0, -120(%rbp)
    movslq	%esi, %rax
    leaq	(%rax,%rax), %rdi
    movl	-100(%rbp), %ecx
    movslq	%ecx, %rax
    movq	%rax, -144(%rbp)
    movq	$0, -136(%rbp)
    movslq	%ecx, %rax
    subq	$1, %rax
    movq	%rax, -72(%rbp)
    movslq	%ecx, %rax
    movq	%rax, -160(%rbp)
    movq	$0, -152(%rbp)
    movslq	%esi, %rax
    movslq	%ecx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    addq	%rax, %rax
    movq	%rax, %r10
    movl	$0, %r11d
    movq	%r10, %rax
    movq	%r11, %rdx
    shldq	$3, %rax, %rdx
    salq	$3, %rax
    addq	$127, %rax
    adcq	$0, %rdx
    movq	%rax, %r11
    andq	$-128, %r11
    movq	%r11, %r14
    movq	%rdx, %rax
    andb	$255, %ah
    movq	%rax, %r15
    movslq	%esi, %rax
    movslq	%ecx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    addq	%rax, %rax
    movq	%rax, %r8
    movl	$0, %r9d
    movq	%r8, %rax
    movq	%r9, %rdx
    shldq	$3, %rax, %rdx
    salq	$3, %rax
    addq	$127, %rax
    adcq	$0, %rdx
    movq	%rax, %r9
    andq	$-128, %r9
    movq	%r9, %r12
    movq	%rdx, %rax
    andb	$255, %ah
    movq	%rax, %r13
    movslq	%esi, %rax
    movslq	%ecx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    addq	%rax, %rax
    addq	$15, %rax
    andq	$-16, %rax
    leaq	15(%rax), %rdx
    movl	$16, %eax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$15, %rax
    shrq	$4, %rax
    salq	$4, %rax
    movq	%rax, -64(%rbp)
    movl	$0, -84(%rbp)
    jmp	L28
L29:
    movq	-64(%rbp), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    movw	$4660, (%rax,%rdx,2)
    addl	$1, -84(%rbp)
L28:
    movl	-84(%rbp), %eax
    cmpl	-100(%rbp), %eax
    jl	L29
    movl	$0, -84(%rbp)
    jmp	L30
L31:
    movq	%rdi, %rcx
    shrq	$4, %rcx
    movq	-64(%rbp), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rcx
    addq	%rcx, %rdx
    movl	$0, (%rax,%rdx,4)
    addl	$1, -84(%rbp)
L30:
    movl	-84(%rbp), %eax
    cmpl	-100(%rbp), %eax
    jl	L31
    movl	$0, -84(%rbp)
    jmp	L32
L35:
    movq	-64(%rbp), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    movzwl	(%rax,%rdx,2), %eax
    cmpw	$4660, %ax
    jne	L33
    movq	%rdi, %rcx
    shrq	$4, %rcx
    movq	-64(%rbp), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rcx
    addq	%rcx, %rdx
    movl	(%rax,%rdx,4), %eax
    testl	%eax, %eax
    je	L34
L33:
    call	abort
L34:
    addl	$1, -84(%rbp)
L32:
    movl	-84(%rbp), %eax
    cmpl	-100(%rbp), %eax
    jl	L35
    movq	%rbx, %rsp
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L36
    call	__stack_chk_fail
L36:
    leaq	-40(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%r15
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$15, %edi
    call	foo
    movl	$0, %eax
    popq	%rbp
    ret
