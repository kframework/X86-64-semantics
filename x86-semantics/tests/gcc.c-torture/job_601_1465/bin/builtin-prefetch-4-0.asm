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
    .comm	arr,400,32
    .globl	ptr
    .data
ptr:
    .quad	arr + 80
    .globl	arrindex
arrindex:
    .long	4
    .text
    .globl	assign_arg_ptr
assign_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    prefetchnta	(%rax)
    movq	-8(%rbp), %rax
    cmpq	-24(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	assign_glob_ptr
assign_glob_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    prefetchnta	(%rax)
    movq	ptr(%rip), %rax
    cmpq	%rax, -8(%rbp)
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	assign_arg_idx
assign_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	-28(%rbp), %eax
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	-4(%rbp), %eax
    cmpl	-28(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	assign_glob_idx
assign_glob_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rdx
    movl	arrindex(%rip), %eax
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	arrindex(%rip), %eax
    cmpl	%eax, -4(%rbp)
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	preinc_arg_ptr
preinc_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    addq	$4, -24(%rbp)
    movq	-24(%rbp), %rax
    prefetchnta	(%rax)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	preinc_glob_ptr
preinc_glob_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	ptr(%rip), %rax
    addq	$4, %rax
    movq	%rax, ptr(%rip)
    movq	ptr(%rip), %rax
    prefetchnta	(%rax)
    movq	ptr(%rip), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postinc_arg_ptr
postinc_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    prefetchnta	(%rax)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postinc_glob_ptr
postinc_glob_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	ptr(%rip), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, ptr(%rip)
    prefetchnta	(%rax)
    movq	ptr(%rip), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	predec_arg_ptr
predec_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    subq	$4, %rax
    movq	%rax, -8(%rbp)
    subq	$4, -24(%rbp)
    movq	-24(%rbp), %rax
    prefetchnta	(%rax)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	predec_glob_ptr
predec_glob_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    subq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	ptr(%rip), %rax
    subq	$4, %rax
    movq	%rax, ptr(%rip)
    movq	ptr(%rip), %rax
    prefetchnta	(%rax)
    movq	ptr(%rip), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postdec_arg_ptr
postdec_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    subq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	-24(%rbp), %rax
    leaq	-4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    prefetchnta	(%rax)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postdec_glob_ptr
postdec_glob_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    subq	$4, %rax
    movq	%rax, -8(%rbp)
    movq	ptr(%rip), %rax
    leaq	-4(%rax), %rdx
    movq	%rdx, ptr(%rip)
    prefetchnta	(%rax)
    movq	ptr(%rip), %rax
    cmpq	-8(%rbp), %rax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	preinc_arg_idx
preinc_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	-28(%rbp), %eax
    addl	$1, %eax
    movl	%eax, -4(%rbp)
    addl	$1, -28(%rbp)
    movl	-28(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	-28(%rbp), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	preinc_glob_idx
preinc_glob_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	arrindex(%rip), %eax
    addl	$1, %eax
    movl	%eax, -4(%rbp)
    movq	ptr(%rip), %rax
    movl	arrindex(%rip), %edx
    addl	$1, %edx
    movl	%edx, arrindex(%rip)
    movl	arrindex(%rip), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	arrindex(%rip), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postinc_arg_idx
postinc_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	-28(%rbp), %eax
    addl	$1, %eax
    movl	%eax, -4(%rbp)
    movl	-28(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -28(%rbp)
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	-28(%rbp), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postinc_glob_idx
postinc_glob_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	arrindex(%rip), %eax
    addl	$1, %eax
    movl	%eax, -4(%rbp)
    movq	ptr(%rip), %rcx
    movl	arrindex(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, arrindex(%rip)
    cltq
    salq	$2, %rax
    addq	%rcx, %rax
    prefetchnta	(%rax)
    movl	arrindex(%rip), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	predec_arg_idx
predec_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	-28(%rbp), %eax
    subl	$1, %eax
    movl	%eax, -4(%rbp)
    subl	$1, -28(%rbp)
    movl	-28(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	-28(%rbp), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	predec_glob_idx
predec_glob_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	arrindex(%rip), %eax
    subl	$1, %eax
    movl	%eax, -4(%rbp)
    movq	ptr(%rip), %rax
    movl	arrindex(%rip), %edx
    subl	$1, %edx
    movl	%edx, arrindex(%rip)
    movl	arrindex(%rip), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	arrindex(%rip), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postdec_arg_idx
postdec_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	-28(%rbp), %eax
    subl	$1, %eax
    movl	%eax, -4(%rbp)
    movl	-28(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -28(%rbp)
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	-28(%rbp), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	postdec_glob_idx
postdec_glob_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	arrindex(%rip), %eax
    subl	$1, %eax
    movl	%eax, -4(%rbp)
    movq	ptr(%rip), %rcx
    movl	arrindex(%rip), %eax
    leal	-1(%rax), %edx
    movl	%edx, arrindex(%rip)
    cltq
    salq	$2, %rax
    addq	%rcx, %rax
    prefetchnta	(%rax)
    movl	arrindex(%rip), %eax
    cmpl	-4(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	getptrcnt
    .bss
getptrcnt:
    .zero	4
    .text
    .globl	getptr
getptr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	getptrcnt(%rip), %eax
    addl	$1, %eax
    movl	%eax, getptrcnt(%rip)
    movq	-8(%rbp), %rax
    addq	$4, %rax
    popq	%rbp
    ret
    .globl	funccall_arg_ptr
funccall_arg_ptr:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rdi
    call	getptr
    prefetchnta	(%rax)
    movl	getptrcnt(%rip), %eax
    cmpl	$1, %eax
    sete	%al
    movzbl	%al, %eax
    leave
    ret
    .globl	getintcnt
    .bss
getintcnt:
    .zero	4
    .text
    .globl	getint
getint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	getintcnt(%rip), %eax
    addl	$1, %eax
    movl	%eax, getintcnt(%rip)
    movl	-4(%rbp), %eax
    addl	$1, %eax
    popq	%rbp
    ret
    .globl	funccall_arg_idx
funccall_arg_idx:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movl	-12(%rbp), %eax
    movl	%eax, %edi
    call	getint
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movl	getintcnt(%rip), %eax
    cmpl	$1, %eax
    sete	%al
    movzbl	%al, %eax
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	assign_arg_ptr
    testl	%eax, %eax
    jne	L106
    call	abort
L106:
    call	assign_glob_ptr
    testl	%eax, %eax
    jne	L107
    call	abort
L107:
    movq	ptr(%rip), %rax
    movl	$4, %esi
    movq	%rax, %rdi
    call	assign_arg_idx
    testl	%eax, %eax
    jne	L108
    call	abort
L108:
    call	assign_glob_idx
    testl	%eax, %eax
    jne	L109
    call	abort
L109:
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	preinc_arg_ptr
    testl	%eax, %eax
    jne	L110
    call	abort
L110:
    call	preinc_glob_ptr
    testl	%eax, %eax
    jne	L111
    call	abort
L111:
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	postinc_arg_ptr
    testl	%eax, %eax
    jne	L112
    call	abort
L112:
    call	postinc_glob_ptr
    testl	%eax, %eax
    jne	L113
    call	abort
L113:
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	predec_arg_ptr
    testl	%eax, %eax
    jne	L114
    call	abort
L114:
    call	predec_glob_ptr
    testl	%eax, %eax
    jne	L115
    call	abort
L115:
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	postdec_arg_ptr
    testl	%eax, %eax
    jne	L116
    call	abort
L116:
    call	postdec_glob_ptr
    testl	%eax, %eax
    jne	L117
    call	abort
L117:
    movq	ptr(%rip), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	preinc_arg_idx
    testl	%eax, %eax
    jne	L118
    call	abort
L118:
    call	preinc_glob_idx
    testl	%eax, %eax
    jne	L119
    call	abort
L119:
    movq	ptr(%rip), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	postinc_arg_idx
    testl	%eax, %eax
    jne	L120
    call	abort
L120:
    call	postinc_glob_idx
    testl	%eax, %eax
    jne	L121
    call	abort
L121:
    movq	ptr(%rip), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	predec_arg_idx
    testl	%eax, %eax
    jne	L122
    call	abort
L122:
    call	predec_glob_idx
    testl	%eax, %eax
    jne	L123
    call	abort
L123:
    movq	ptr(%rip), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	postdec_arg_idx
    testl	%eax, %eax
    jne	L124
    call	abort
L124:
    call	postdec_glob_idx
    testl	%eax, %eax
    jne	L125
    call	abort
L125:
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	funccall_arg_ptr
    testl	%eax, %eax
    jne	L126
    call	abort
L126:
    movq	ptr(%rip), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	funccall_arg_idx
    testl	%eax, %eax
    jne	L127
    call	abort
L127:
    movl	$0, %edi
    call	exit
