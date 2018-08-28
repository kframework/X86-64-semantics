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
    .globl	proc1
proc1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, %eax
    popq	%rbp
    ret
    .globl	proc2
proc2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$305419896, %eax
    popq	%rbp
    ret
    .globl	proc3
proc3:
    pushq	%rbp
    movq	%rsp, %rbp
    movabsq	$-6144092016751651208, %rax
    popq	%rbp
    ret
    .globl	proc4
proc4:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	$-1, %rax
    popq	%rbp
    ret
    .globl	proc5
proc5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$2864434397, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"%lx%08lx"
LC1:
    .string	"%lx"
    .text
    .globl	print_longlong
print_longlong:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    shrq	$32, %rax
    movq	%rax, -8(%rbp)
    cmpq	$0, -8(%rbp)
    je	L50
    movq	-24(%rbp), %rax
    movl	%eax, %ecx
    movq	-8(%rbp), %rdx
    movq	-32(%rbp), %rax
    movl	$LC0, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	sprintf
    jmp	L51
L50:
    movq	-24(%rbp), %rax
    movl	%eax, %edx
    movq	-32(%rbp), %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	sprintf
L51:
    nop
    leave
    ret
    .section	.rodata
LC2:
    .string	"1"
LC3:
    .string	"12345678"
LC4:
    .string	"aabbccdd12345678"
LC5:
    .string	"ffffffffffffffff"
LC6:
    .string	"aabbccdd"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, %eax
    call	proc1
    movq	%rax, %rdx
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movl	$0, %eax
    call	print_longlong
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strcmp
    testl	%eax, %eax
    je	L53
    call	abort
L53:
    movl	$0, %eax
    call	proc2
    movq	%rax, %rdx
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movl	$0, %eax
    call	print_longlong
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strcmp
    testl	%eax, %eax
    je	L54
    call	abort
L54:
    movl	$0, %eax
    call	proc3
    movq	%rax, %rdx
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movl	$0, %eax
    call	print_longlong
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC4, %edi
    call	strcmp
    testl	%eax, %eax
    je	L55
    call	abort
L55:
    movl	$0, %eax
    call	proc4
    movq	%rax, %rdx
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movl	$0, %eax
    call	print_longlong
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC5, %edi
    call	strcmp
    testl	%eax, %eax
    je	L56
    call	abort
L56:
    movl	$0, %eax
    call	proc5
    movq	%rax, %rdx
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movl	$0, %eax
    call	print_longlong
    leaq	-112(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC6, %edi
    call	strcmp
    testl	%eax, %eax
    je	L57
    call	abort
L57:
    movl	$0, %edi
    call	exit
