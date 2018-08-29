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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jne	L46
    call	abort
L46:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$560, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -552(%rbp)
    jmp	L48
L61:
    movl	-552(%rbp), %eax
    movl	%eax, -548(%rbp)
    jmp	L49
L60:
    movl	$0, -544(%rbp)
    jmp	L50
L59:
    movl	$0, -540(%rbp)
    jmp	L51
L58:
    movl	-548(%rbp), %eax
    cmpl	-552(%rbp), %eax
    jne	L52
    movl	-544(%rbp), %eax
    cmpl	-540(%rbp), %eax
    jne	L52
    movl	-540(%rbp), %eax
    cltq
    movl	-544(%rbp), %edx
    movslq	%edx, %rdx
    movl	-552(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rcx, %rcx
    addq	%rdx, %rcx
    movl	-548(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rcx
    addq	%rcx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, -272(%rbp,%rax,4)
    jmp	L53
L52:
    movl	$0, -536(%rbp)
    jmp	L54
L57:
    movl	$0, -532(%rbp)
    jmp	L55
L56:
    leaq	-528(%rbp), %rax
    movl	-532(%rbp), %edx
    movslq	%edx, %rdx
    movl	-548(%rbp), %ecx
    movslq	%ecx, %rcx
    leaq	(%rcx,%rcx), %rsi
    movl	-540(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rsi, %rcx
    addq	%rcx, %rcx
    addq	%rcx, %rdx
    salq	$4, %rdx
    addq	%rdx, %rax
    leaq	16(%rax), %rdx
    leaq	-528(%rbp), %rax
    movl	-536(%rbp), %ecx
    movslq	%ecx, %rcx
    movl	-552(%rbp), %esi
    movslq	%esi, %rsi
    leaq	(%rsi,%rsi), %rdi
    movl	-544(%rbp), %esi
    movslq	%esi, %rsi
    addq	%rdi, %rsi
    addq	%rsi, %rsi
    addq	%rsi, %rcx
    salq	$4, %rcx
    addq	%rcx, %rax
    addq	$16, %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	f
    addl	$1, -532(%rbp)
L55:
    cmpl	$0, -532(%rbp)
    jle	L56
    addl	$1, -536(%rbp)
L54:
    cmpl	$0, -536(%rbp)
    jle	L57
    movl	-540(%rbp), %eax
    cltq
    movl	-544(%rbp), %edx
    movslq	%edx, %rdx
    movl	-552(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rcx, %rcx
    addq	%rdx, %rcx
    movl	-548(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rcx
    addq	%rcx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, -272(%rbp,%rax,4)
L53:
    addl	$1, -540(%rbp)
L51:
    cmpl	$1, -540(%rbp)
    jle	L58
    addl	$1, -544(%rbp)
L50:
    cmpl	$1, -544(%rbp)
    jle	L59
    addl	$1, -548(%rbp)
L49:
    cmpl	$3, -548(%rbp)
    jle	L60
    addl	$1, -552(%rbp)
L48:
    cmpl	$3, -552(%rbp)
    jle	L61
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	1148846080
