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
    .globl	t1
t1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    movabsq	$4613937818241073152, %rdx
    movq	-24(%rbp), %rax
    vmovq	%rdx, %xmm0
    call	%rax
    movl	-12(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    addq	$1, %rdx
    leaq	0(,%rdx,4), %rcx
    movq	-8(%rbp), %rdx
    addq	%rcx, %rdx
    vmovss	(%rdx), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-32(%rbp), %rax
    vmovss	LC1(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	%rax
    nop
    leave
    ret
    .globl	t2
t2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    movq	%r8, -40(%rbp)
    movq	-40(%rbp), %rax
    vmovss	LC3(%rip), %xmm0
    call	%rax
    movabsq	$4613937818241073152, %rdx
    movq	-24(%rbp), %rax
    vmovq	%rdx, %xmm0
    call	%rax
    movl	-12(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    addq	$1, %rdx
    leaq	0(,%rdx,4), %rcx
    movq	-8(%rbp), %rdx
    addq	%rcx, %rdx
    vmovss	(%rdx), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-32(%rbp), %rax
    vmovss	LC1(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	%rax
    nop
    leave
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    jp	L46
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    jne	L46
    jmp	L47
L46:
    call	abort
L47:
    leave
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	LC2(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L49
    vmovss	LC2(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jne	L49
    vmovss	LC1(%rip), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L49
    vmovss	LC1(%rip), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L49
    jmp	L52
L49:
    call	abort
L52:
    leave
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	LC3(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L56
    vmovss	LC3(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jne	L56
    jmp	L57
L56:
    call	abort
L57:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovss	LC4(%rip), %xmm0
    vmovss	%xmm0, -32(%rbp)
    vmovss	LC5(%rip), %xmm0
    vmovss	%xmm0, -28(%rbp)
    vmovss	LC6(%rip), %xmm0
    vmovss	%xmm0, -24(%rbp)
    leaq	-32(%rbp), %rax
    movl	$f2, %ecx
    movl	$f1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	t1
    leaq	-32(%rbp), %rax
    movl	$f3, %r8d
    movl	$f2, %ecx
    movl	$f1, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	t2
    vmovss	-32(%rbp), %xmm0
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L63
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L59
L63:
    vmovss	-28(%rbp), %xmm0
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L64
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L59
L64:
    call	abort
L59:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	1074266112
LC1:
    .long	1080033280
LC2:
    .long	1075838976
LC3:
    .long	1086324736
LC4:
    .long	1073741824
LC5:
    .long	1077936128
LC6:
    .long	1082130432
