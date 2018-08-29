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
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    vmovsd	-72(%rbp), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, -64(%rbp)
    vmovsd	-64(%rbp), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    movq	-32(%rbp), %rax
    vmovsd	-24(%rbp), %xmm1
    vmovq	%rax, %xmm0
    movl	$2, %eax
    call	foo
    vmovss	-80(%rbp), %xmm0
    vmovss	%xmm0, -36(%rbp)
    vmovss	LC2(%rip), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovss	LC2(%rip), %xmm0
    vmovss	%xmm0, -76(%rbp)
    vmovss	-76(%rbp), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovss	LC3(%rip), %xmm0
    vmovss	%xmm0, -36(%rbp)
    movq	-40(%rbp), %rax
    vmovq	%rax, %xmm0
    movl	$1, %eax
    call	bar
    vmovsd	-56(%rbp), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	LC4(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	LC4(%rip), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	-48(%rbp), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	LC5(%rip), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    movq	-16(%rbp), %rax
    vmovsd	-8(%rbp), %xmm1
    vmovq	%rax, %xmm0
    movl	$2, %eax
    call	baz
    movl	$0, %edi
    call	exit
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L43
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L43
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L43
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L43
    jmp	L46
L43:
    call	abort
L46:
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    vmovss	-8(%rbp), %xmm1
    vmovss	-4(%rbp), %xmm0
    vmovss	%xmm1, -16(%rbp)
    vmovss	%xmm0, -12(%rbp)
    vmovss	-16(%rbp), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L48
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jne	L48
    vmovss	-12(%rbp), %xmm0
    vmovss	LC3(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L48
    vmovss	LC3(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jne	L48
    jmp	L51
L48:
    call	abort
L51:
    leave
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L53
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L53
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L53
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L53
    jmp	L56
L53:
    call	abort
L56:
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1072693248
LC1:
    .long	0
    .long	1073741824
LC2:
    .long	1077936128
LC3:
    .long	1082130432
LC4:
    .long	0
    .long	1075052544
LC5:
    .long	0
    .long	1075314688
