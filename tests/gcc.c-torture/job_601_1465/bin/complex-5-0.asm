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
    .globl	p
p:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    movq	%rax, -24(%rbp)
    vmovss	-24(%rbp), %xmm2
    vmovss	-20(%rbp), %xmm0
    vmovss	%xmm2, -32(%rbp)
    vmovss	%xmm0, -28(%rbp)
    vmovq	%xmm1, %rax
    movq	%rax, -40(%rbp)
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -48(%rbp)
    vmovss	%xmm0, -44(%rbp)
    vmovss	-32(%rbp), %xmm0
    vmovss	%xmm0, -16(%rbp)
    vmovss	-28(%rbp), %xmm0
    vmovss	%xmm0, -12(%rbp)
    vmovss	-48(%rbp), %xmm0
    vmovss	%xmm0, -8(%rbp)
    vmovss	-44(%rbp), %xmm0
    vmovss	%xmm0, -4(%rbp)
    vmovss	-16(%rbp), %xmm0
    vaddss	-8(%rbp), %xmm0, %xmm1
    vmovss	-12(%rbp), %xmm0
    vaddss	-4(%rbp), %xmm0, %xmm0
    vmovss	%xmm1, -56(%rbp)
    vmovss	%xmm0, -52(%rbp)
    movq	-56(%rbp), %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	x
    .data
x:
    .long	1065353216
    .long	1096810496
    .globl	y
y:
    .long	1088421888
    .long	1084227584
    .globl	w
w:
    .long	1090519040
    .long	1100480512
    .comm	z,8,4
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    vmovss	y(%rip), %xmm1
    vmovss	y + 4(%rip), %xmm0
    vmovaps	%xmm1, %xmm5
    vmovaps	%xmm0, %xmm4
    vmovss	x(%rip), %xmm1
    vmovss	x + 4(%rip), %xmm0
    vmovaps	%xmm1, %xmm3
    vmovaps	%xmm0, %xmm2
    vmovaps	%xmm5, %xmm1
    vmovaps	%xmm4, %xmm0
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm0, -4(%rbp)
    movq	-8(%rbp), %rdx
    vmovaps	%xmm3, %xmm1
    vmovaps	%xmm2, %xmm0
    vmovss	%xmm1, -16(%rbp)
    vmovss	%xmm0, -12(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    call	p
    vmovq	%xmm0, %rax
    movq	%rax, -24(%rbp)
    vmovss	-24(%rbp), %xmm1
    vmovss	-20(%rbp), %xmm0
    vmovss	%xmm1, z(%rip)
    vmovss	%xmm0, z + 4(%rip)
    vmovss	z(%rip), %xmm0
    vmovss	z + 4(%rip), %xmm1
    vmovaps	%xmm1, %xmm3
    vmovaps	%xmm0, %xmm2
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC1(%rip), %xmm0
    call	__divsc3
    vmovq	%xmm0, %rax
    movq	%rax, -32(%rbp)
    vmovss	-32(%rbp), %xmm1
    vmovss	-28(%rbp), %xmm0
    vmovss	x(%rip), %xmm3
    vmovss	x + 4(%rip), %xmm2
    vmovss	%xmm1, -40(%rbp)
    vmovss	%xmm0, -36(%rbp)
    movq	-40(%rbp), %rdx
    vmovaps	%xmm3, %xmm1
    vmovaps	%xmm2, %xmm0
    vmovss	%xmm1, -48(%rbp)
    vmovss	%xmm0, -44(%rbp)
    movq	-48(%rbp), %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    call	p
    vmovq	%xmm0, %rax
    movq	%rax, -56(%rbp)
    vmovss	-56(%rbp), %xmm1
    vmovss	-52(%rbp), %xmm0
    vmovss	%xmm1, y(%rip)
    vmovss	%xmm0, y + 4(%rip)
    vmovss	z(%rip), %xmm1
    vmovss	z + 4(%rip), %xmm0
    vmovss	w(%rip), %xmm3
    vmovss	w + 4(%rip), %xmm2
    vucomiss	%xmm3, %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	%xmm3, %xmm1
    cmove	%eax, %edx
    vucomiss	%xmm2, %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	%xmm2, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L56
    call	abort
L56:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC1:
    .long	1065353216
