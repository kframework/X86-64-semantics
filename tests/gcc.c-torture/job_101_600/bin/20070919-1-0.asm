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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"zyxwvut"
LC1:
    .string	"abcdefg"
LC2:
    .string	"ABCDEFG"
    .text
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    movl	$8, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L40
    call	abort
L40:
    movq	-8(%rbp), %rax
    movl	$8, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L41
    call	abort
L41:
    movq	-8(%rbp), %rax
    addq	$8, %rax
    movl	$8, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L42
    call	abort
L42:
    movq	-8(%rbp), %rax
    addq	$16, %rax
    movl	$8, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L43
    call	abort
L43:
    movq	-8(%rbp), %rax
    addq	$24, %rax
    movl	$8, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L45
    call	abort
L45:
    nop
    leave
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$96, %rsp
    movq	%rdi, -88(%rbp)
    movl	%esi, -92(%rbp)
    movq	$40, %rax
    movq	%rax, -40(%rbp)
    xorl	%eax, %eax
    movq	%rsp, %rax
    movq	%rax, %r14
    movl	-92(%rbp), %ebx
    movslq	%ebx, %rax
    movq	%rax, -112(%rbp)
    movq	$0, -104(%rbp)
    movslq	%ebx, %rax
    subq	$1, %rax
    movq	%rax, -80(%rbp)
    movslq	%ebx, %rax
    movq	%rax, -128(%rbp)
    movq	$0, -120(%rbp)
    movslq	%ebx, %rax
    movq	%rax, %r12
    movl	$0, %r13d
    movslq	%ebx, %r12
    movq	-88(%rbp), %rax
    movq	%rax, -72(%rbp)
    movslq	%ebx, %rax
    movq	%rax, %rdx
    movl	$0, %ecx
    movslq	%ebx, %rax
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -64(%rbp)
    movslq	%ebx, %rax
    movq	%rax, %r10
    movl	$0, %r11d
    movslq	%ebx, %rax
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %edi
    movl	$0, %edx
    divq	%rdi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -56(%rbp)
    movq	%rsp, %rax
    movq	%rax, %r13
    movslq	%ebx, %rax
    movq	%rax, %r8
    movl	$0, %r9d
    movslq	%ebx, %rax
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %ecx
    movl	$0, %edx
    divq	%rcx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -48(%rbp)
    movslq	%ebx, %rax
    leaq	(%rax,%rax), %rdx
    movq	-72(%rbp), %rax
    addq	%rax, %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rcx
    movq	%r12, %rdx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    movslq	%ebx, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rax, %rdx
    movq	-72(%rbp), %rax
    addq	%rax, %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rcx
    movq	%r12, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movq	%rax, %rdx
    movq	-56(%rbp), %rax
    movq	%rdx, %rcx
    movq	%r12, %rdx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    movq	%r13, %rsp
    movq	-64(%rbp), %rdx
    movq	-56(%rbp), %rax
    movq	%rdx, %rcx
    movq	%r12, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movq	-64(%rbp), %rax
    movq	-88(%rbp), %rdx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	bar
    movq	%r14, %rsp
    nop
    movq	-40(%rbp), %rax
    xorq	$40, %rax
    je	L47
    call	__stack_chk_fail
L47:
    leaq	-32(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movabsq	$29104508263162465, %rax
    movq	%rax, -48(%rbp)
    movabsq	$20061986658402881, %rax
    movq	%rax, -40(%rbp)
    movabsq	$32780248969410938, %rax
    movq	%rax, -32(%rbp)
    movabsq	$23737727364651354, %rax
    movq	%rax, -24(%rbp)
    leaq	-48(%rbp), %rax
    movl	$8, %esi
    movq	%rax, %rdi
    call	foo
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L50
    call	__stack_chk_fail
L50:
    leave
    ret
