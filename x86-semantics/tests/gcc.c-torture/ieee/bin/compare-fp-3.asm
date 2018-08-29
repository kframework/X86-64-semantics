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
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L51
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L49
    jmp	L51
L49:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L50
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L50
    jmp	L51
L50:
    movl	$0, %eax
    call	link_error0
L51:
    nop
    leave
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L56
    jmp	L58
L56:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L57
    jmp	L58
L57:
    movl	$0, %eax
    call	link_error0
L58:
    nop
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L63
    jmp	L65
L63:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L64
    jmp	L65
L64:
    movl	$0, %eax
    call	link_error0
L65:
    nop
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L69
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L70
L69:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L70
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L70
    movl	$0, %eax
    call	link_error1
L70:
    nop
    leave
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L73
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnb	L73
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L73
    movl	$0, %eax
    call	link_error1
L73:
    nop
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L76
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jnb	L76
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L76
    movl	$0, %eax
    call	link_error1
L76:
    nop
    leave
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L79
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L79
    movl	$0, %eax
    call	link_error1
L79:
    nop
    leave
    ret
    .globl	all_tests
all_tests:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test1
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test2
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test3
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test4
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test5
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test6
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	test7
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm1, %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	all_tests
    vmovss	LC1(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	all_tests
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	all_tests
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	link_error0
link_error0:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
    .globl	link_error1
link_error1:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
    .section	.rodata
LC1:
    .long	1073741824
LC2:
    .long	1065353216
LC3:
    .long	1077936128
LC4:
    .long	1082130432
