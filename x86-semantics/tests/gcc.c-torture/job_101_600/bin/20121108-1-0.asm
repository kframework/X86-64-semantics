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
    .globl	temp
    .data
temp:
    .string	"192168.190160"
    .globl	result
result:
    .long	-1062682976
    .text
    .globl	strtoul1
strtoul1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -20(%rbp)
    movq	-8(%rbp), %rax
    leaq	3(%rax), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    cmpq	$temp, -8(%rbp)
    jne	L40
    movl	$192, %eax
    jmp	L41
L40:
    movl	$temp + 4, %eax
    cmpq	%rax, -8(%rbp)
    jne	L42
    movl	$168, %eax
    jmp	L41
L42:
    movl	$temp + 8, %eax
    cmpq	%rax, -8(%rbp)
    jne	L43
    movl	$190, %eax
    jmp	L41
L43:
    movl	$temp + 12, %eax
    cmpq	%rax, -8(%rbp)
    jne	L44
    movl	$160, %eax
    jmp	L41
L44:
    call	abort
L41:
    leave
    ret
    .globl	string_to_ip
string_to_ip:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -40(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    cmpq	$0, -40(%rbp)
    jne	L46
    movl	$0, %eax
    jmp	L55
L46:
    movl	$0, -28(%rbp)
    movl	$0, -24(%rbp)
    jmp	L48
L54:
    cmpq	$0, -40(%rbp)
    je	L49
    leaq	-16(%rbp), %rcx
    movq	-40(%rbp), %rax
    movl	$10, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strtoul1
    jmp	L50
L49:
    movl	$0, %eax
L50:
    movl	%eax, -20(%rbp)
    sall	$8, -28(%rbp)
    movl	-20(%rbp), %eax
    movzbl	%al, %eax
    orl	%eax, -28(%rbp)
    cmpq	$0, -40(%rbp)
    je	L51
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L52
    movq	-16(%rbp), %rax
    addq	$1, %rax
    jmp	L53
L52:
    movq	-16(%rbp), %rax
L53:
    movq	%rax, -40(%rbp)
L51:
    addl	$1, -24(%rbp)
L48:
    cmpl	$3, -24(%rbp)
    jle	L54
    movl	-28(%rbp), %eax
L55:
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L56
    call	__stack_chk_fail
L56:
    leave
    ret
    .section	.rodata
LC0:
    .string	"%x\n"
LC1:
    .string	"WORKS."
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$temp, %edi
    call	string_to_ip
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    movl $result(%rip), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    movl	-4(%rbp), %edx
    movl $result(%rip), %eax
    cmpl	%eax, %edx
    je	L58
    call	abort
L58:
    movl	$LC1, %edi
    call	puts
    movl	$0, %eax
    leave
    ret
