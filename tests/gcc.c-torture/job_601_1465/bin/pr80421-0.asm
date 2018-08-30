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
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$192, %rsp
    movq	%rdi, -184(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L56
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L56:
    movq	-184(%rbp), %rax
    movq	-184(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$84, %al
    jne	L57
    call	abort
L57:
    nop
    leave
    ret
    .section	.rodata
LC1:
    .string	"x %c\n"
LC2:
    .string	"case default\n"
LC3:
    .string	"This should never be reached.\n"
LC4:
    .string	"case 'D'\n"
LC5:
    .string	"case 'I'\n"
    .text
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, %eax
    movb	%al, -4(%rbp)
    movsbl	-4(%rbp), %eax
    movl	%eax, %esi
    movl	$LC1, %edi
    movl	$0, %eax
    call	baz
    movsbl	-4(%rbp), %eax
    cmpl	$68, %eax
    je	L60
    cmpl	$73, %eax
    je	L61
    movl	$LC2, %edi
    movl	$0, %eax
    call	baz
    cmpb	$68, -4(%rbp)
    je	L62
    cmpb	$73, -4(%rbp)
    jne	L63
L62:
    movl	$LC3, %edi
    movl	$0, %eax
    call	baz
L63:
    movl	$0, %eax
    jmp	L64
L60:
    movl	$LC4, %edi
    movl	$0, %eax
    call	baz
    movl	$0, %eax
    jmp	L64
L61:
    movl	$LC5, %edi
    movl	$0, %eax
    call	baz
    movl	$0, %eax
L64:
    leave
    ret
    .section	.rodata
LC0:
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	4
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	3
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	1
    .byte	0
    .byte	0
    .byte	0
    .byte	2
    .byte	4
    .byte	4
    .byte	3
    .byte	4
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	2
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	4
    .byte	2
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	4
    .byte	2
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	2
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	4
    .byte	2
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	4
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	2
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	2
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	2
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	1
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	2
    .byte	3
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	2
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	1
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	2
    .byte	5
    .byte	5
    .byte	2
    .byte	4
    .byte	2
    .byte	2
    .byte	5
    .byte	1
    .byte	3
    .byte	5
    .byte	3
    .byte	3
    .byte	5
    .byte	1
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .text
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$480, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$2, -456(%rbp)
    movl	$5, -452(%rbp)
    leaq	-432(%rbp), %rax
    movl	$LC0, %ecx
    movl	$420, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leaq	-432(%rbp), %rax
    addq	$390, %rax
    movq	%rax, -440(%rbp)
    movl	$26, -472(%rbp)
    movl	$25, -468(%rbp)
    movb	$77, -473(%rbp)
    movzbl	-473(%rbp), %eax
    movb	%al, -474(%rbp)
    movl	$2, -460(%rbp)
    jmp	L66
L75:
    movl	-472(%rbp), %eax
    subl	-456(%rbp), %eax
    movl	%eax, -448(%rbp)
    movl	$0, %eax
    cmpl	$0, -448(%rbp)
    cmovns	-448(%rbp), %eax
    movl	%eax, -448(%rbp)
    movl	-468(%rbp), %eax
    subl	-448(%rbp), %eax
    movl	%eax, -448(%rbp)
    movl	-448(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%eax, %edx
    movl	-460(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, -444(%rbp)
    movl	-444(%rbp), %eax
    movslq	%eax, %rdx
    movq	-440(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	$5, %eax
    ja	L67
    movl	%eax, %eax
    movq	L69(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L69:
    .quad	L67
    .quad	L68
    .quad	L70
    .quad	L71
    .quad	L72
    .quad	L73
    .text
L68:
    subl	$1, -472(%rbp)
    subl	$1, -468(%rbp)
    movl	$2, -460(%rbp)
    movl	-452(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    negq	%rax
    addq	%rax, -440(%rbp)
    movb	$77, -474(%rbp)
    jmp	L67
L70:
    subl	$1, -472(%rbp)
    movl	$0, -460(%rbp)
    movl	-452(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    negq	%rax
    addq	%rax, -440(%rbp)
    movb	$73, -474(%rbp)
    jmp	L67
L71:
    subl	$1, -472(%rbp)
    movl	$2, -460(%rbp)
    movl	-452(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    negq	%rax
    addq	%rax, -440(%rbp)
    movb	$73, -474(%rbp)
    jmp	L67
L72:
    subl	$1, -468(%rbp)
    movl	$1, -460(%rbp)
    movb	$68, -474(%rbp)
    jmp	L67
L73:
    subl	$1, -468(%rbp)
    movl	$2, -460(%rbp)
    movb	$68, -474(%rbp)
    nop
L67:
    movzbl	-474(%rbp), %eax
    cmpb	-473(%rbp), %al
    jne	L74
    addl	$1, -464(%rbp)
    jmp	L66
L74:
    movsbl	-473(%rbp), %eax
    movl	%eax, %edi
    call	foo
    movzbl	-474(%rbp), %eax
    movb	%al, -473(%rbp)
L66:
    cmpl	$0, -472(%rbp)
    jg	L75
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L76
    call	__stack_chk_fail
L76:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movb	$68, -1(%rbp)
    movsbl	-1(%rbp), %eax
    movl	%eax, %edi
    call	foo
    call	bar
    movl	$0, %eax
    leave
    ret
