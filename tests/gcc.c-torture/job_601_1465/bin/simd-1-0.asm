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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    .globl	i
    .data
i:
    .long	150
    .long	100
    .long	150
    .long	200
    .globl	j
j:
    .long	10
    .long	13
    .long	20
    .long	30
    .comm	k,16,16
    .comm	res,16,16
    .text
    .globl	verify
verify:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	%edx, -12(%rbp)
    movl	%ecx, -16(%rbp)
    movl	%r8d, -20(%rbp)
    movl	%r9d, -24(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jne	L54
    movl	-8(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jne	L54
    movl	-12(%rbp), %eax
    cmpl	16(%rbp), %eax
    jne	L54
    movl	-16(%rbp), %eax
    cmpl	24(%rbp), %eax
    je	L56
L54:
    call	abort
L56:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vpaddd	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$230
    pushq	$170
    movl	$113, %r9d
    movl	$160, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vpmulld	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$6000
    pushq	$3000
    movl	$1300, %r9d
    movl	$1500, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vmovd	%xmm1, %eax
    vmovd	%xmm0, %edi
    cltd
    idivl	%edi
    movl	%eax, %edi
    vpextrd	$1, %xmm1, %eax
    vpextrd	$1, %xmm0, %esi
    cltd
    idivl	%esi
    movl	%eax, %ecx
    vpextrd	$2, %xmm1, %eax
    vpextrd	$2, %xmm0, %esi
    cltd
    idivl	%esi
    movl	%eax, %r8d
    vpextrd	$3, %xmm1, %eax
    vpextrd	$3, %xmm0, %esi
    cltd
    idivl	%esi
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$6
    pushq	$7
    movl	$7, %r9d
    movl	$15, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vpand	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$8
    pushq	$20
    movl	$4, %r9d
    movl	$2, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vpor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$222
    pushq	$150
    movl	$109, %r9d
    movl	$158, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vmovdqa	j(%rip), %xmm0
    vpxor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$214
    pushq	$130
    movl	$105, %r9d
    movl	$156, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm0
    vpxor	%xmm1, %xmm1, %xmm1
    vpsubd	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$-200
    pushq	$-150
    movl	$-100, %r9d
    movl	$-150, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    vmovdqa	i(%rip), %xmm1
    vpcmpeqd	%xmm0, %xmm0, %xmm0
    vpxor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, k(%rip)
    vmovdqa	k(%rip), %xmm0
    vmovaps	%xmm0, res(%rip)
    movl	res + 12(%rip), %ecx
    movl	res + 8(%rip), %edx
    movl	res + 4(%rip), %esi
    movl	res(%rip), %eax
    pushq	$-201
    pushq	$-151
    movl	$-101, %r9d
    movl	$-151, %r8d
    movl	%eax, %edi
    call	verify
    addq	$16, %rsp
    movl	$0, %edi
    call	exit
