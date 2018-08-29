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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .globl	q1
    .data
q1:
    .value	1
    .value	2
    .value	0
    .value	0
    .globl	q2
q2:
    .value	3
    .value	4
    .value	0
    .value	0
    .globl	q3
q3:
    .value	5
    .value	6
    .value	0
    .value	0
    .globl	q4
q4:
    .value	7
    .value	8
    .value	0
    .value	0
    .comm	w1,8,8
    .comm	w2,8,8
    .comm	w3,8,8
    .comm	w4,8,8
    .comm	z1,8,8
    .comm	z2,8,8
    .comm	z3,8,8
    .comm	z4,8,8
    .comm	dummy,4,4
    .text
    .globl	func0
func0:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, dummy(%rip)
    nop
    popq	%rbp
    ret
    .globl	func1
func1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$144, %rsp
    movq	q1(%rip), %rdx
    movq	q2(%rip), %rax
    movq	%rdx, -24(%rbp)
    movzwl	-24(%rbp), %esi
    movq	%rax, -32(%rbp)
    movzwl	-32(%rbp), %ecx
    imull	%esi, %ecx
    movq	%rdx, -40(%rbp)
    movzwl	-38(%rbp), %edi
    movq	%rax, -48(%rbp)
    movzwl	-46(%rbp), %esi
    imull	%edi, %esi
    movq	%rdx, -56(%rbp)
    movzwl	-52(%rbp), %r8d
    movq	%rax, -64(%rbp)
    movzwl	-60(%rbp), %edi
    imull	%r8d, %edi
    movq	%rdx, -72(%rbp)
    movzwl	-66(%rbp), %edx
    movq	%rax, -80(%rbp)
    movzwl	-74(%rbp), %eax
    imull	%edx, %eax
    movzwl	%ax, %eax
    movzwl	%di, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movzwl	%si, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movzwl	%cx, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	q3(%rip), %rdx
    movq	q4(%rip), %rax
    movq	%rdx, -88(%rbp)
    movzwl	-88(%rbp), %esi
    movq	%rax, -96(%rbp)
    movzwl	-96(%rbp), %ecx
    imull	%esi, %ecx
    movq	%rdx, -104(%rbp)
    movzwl	-102(%rbp), %edi
    movq	%rax, -112(%rbp)
    movzwl	-110(%rbp), %esi
    imull	%edi, %esi
    movq	%rdx, -120(%rbp)
    movzwl	-116(%rbp), %r8d
    movq	%rax, -128(%rbp)
    movzwl	-124(%rbp), %edi
    imull	%r8d, %edi
    movq	%rdx, -136(%rbp)
    movzwl	-130(%rbp), %edx
    movq	%rax, -144(%rbp)
    movzwl	-138(%rbp), %eax
    imull	%edx, %eax
    movzwl	%ax, %eax
    movzwl	%di, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movzwl	%si, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movzwl	%cx, %edx
    salq	$16, %rax
    orq	%rdx, %rax
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, w1(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, w2(%rip)
    call	func0
    movq	-16(%rbp), %rax
    movq	%rax, w3(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, w4(%rip)
    nop
    leave
    ret
    .globl	func2
func2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	q1(%rip), %rdx
    movq	q2(%rip), %rax
    movq	%rax, %rcx
    movq	%rdx, %rdi
    xorq	%rcx, %rdi
    movabsq	$9223231297218904063, %rax
    movq	%rcx, %rsi
    andq	%rax, %rsi
    movabsq	$9223231297218904063, %rax
    movq	%rdx, %rcx
    andq	%rax, %rcx
    movabsq	$-9223231297218904064, %rax
    andq	%rax, %rdi
    movq	%rdi, %rdx
    leaq	(%rsi,%rcx), %rax
    xorq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	q3(%rip), %rdx
    movq	q4(%rip), %rax
    movq	%rax, %rcx
    movq	%rdx, %rdi
    xorq	%rcx, %rdi
    movabsq	$9223231297218904063, %rax
    andq	%rax, %rcx
    movabsq	$-9223231297218904064, %rax
    movq	%rdx, %rsi
    orq	%rax, %rsi
    notq	%rdi
    movq	%rdi, %rdx
    movabsq	$-9223231297218904064, %rax
    andq	%rax, %rdx
    movq	%rsi, %rax
    subq	%rcx, %rax
    xorq	%rdx, %rax
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, z1(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, z2(%rip)
    call	func1
    movq	-16(%rbp), %rax
    movq	%rax, z3(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, z4(%rip)
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	func2
    movl	$8, %edx
    movl	$w3, %esi
    movl	$w1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L61
    call	abort
L61:
    movl	$8, %edx
    movl	$w4, %esi
    movl	$w2, %edi
    call	memcmp
    testl	%eax, %eax
    je	L62
    call	abort
L62:
    movl	$8, %edx
    movl	$z3, %esi
    movl	$z1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L63
    call	abort
L63:
    movl	$8, %edx
    movl	$z4, %esi
    movl	$z2, %edi
    call	memcmp
    testl	%eax, %eax
    je	L64
    call	abort
L64:
    movl	$0, %eax
    popq	%rbp
    ret
