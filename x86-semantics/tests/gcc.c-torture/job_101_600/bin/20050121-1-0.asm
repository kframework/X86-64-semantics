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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .globl	foo_float
foo_float:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	-20(%rbp), %eax
    addl	$1, %eax
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	%eax, %xmm0, %xmm0
    vmovss	%xmm0, -16(%rbp)
    vmovss	-12(%rbp), %xmm0
    vmovss	-16(%rbp), %xmm1
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm0, -4(%rbp)
    movl	-20(%rbp), %eax
    subl	$1, %eax
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	%eax, %xmm0, %xmm0
    vmovss	%xmm0, -12(%rbp)
    vmovss	-12(%rbp), %xmm0
    vmovss	-16(%rbp), %xmm1
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm0, -4(%rbp)
    vmovss	-16(%rbp), %xmm1
    vmovss	-12(%rbp), %xmm0
    vmovss	%xmm1, -28(%rbp)
    vmovss	%xmm0, -24(%rbp)
    movq	-28(%rbp), %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	bar_float
bar_float:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_float
    vmovq	%xmm0, %rax
    movq	%rax, -16(%rbp)
    vmovss	-16(%rbp), %xmm0
    movq	-8(%rbp), %rax
    vmovss	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	baz_float
baz_float:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_float
    vmovq	%xmm0, %rax
    movq	%rax, -16(%rbp)
    vmovss	-12(%rbp), %xmm0
    movq	-8(%rbp), %rax
    vmovss	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	foo_double
foo_double:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movl	-36(%rbp), %eax
    addl	$1, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    movl	-36(%rbp), %eax
    subl	$1, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    popq	%rbp
    ret
    .globl	bar_double
bar_double:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_double
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    vmovsd	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	baz_double
baz_double:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_double
    vmovq	%xmm1, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    vmovsd	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	foo_ldouble_t
foo_ldouble_t:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movl	-36(%rbp), %eax
    addl	$1, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    movl	-36(%rbp), %eax
    subl	$1, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    popq	%rbp
    ret
    .globl	bar_ldouble_t
bar_ldouble_t:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_ldouble_t
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    vmovsd	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	baz_ldouble_t
baz_ldouble_t:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_ldouble_t
    vmovq	%xmm1, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    vmovsd	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	foo_char
foo_char:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	-20(%rbp), %eax
    addl	$1, %eax
    movb	%al, -4(%rbp)
    movzbl	-3(%rbp), %eax
    movzbl	-4(%rbp), %edx
    movb	%dl, -2(%rbp)
    movb	%al, -1(%rbp)
    movl	-20(%rbp), %eax
    subl	$1, %eax
    movb	%al, -3(%rbp)
    movzbl	-3(%rbp), %eax
    movzbl	-4(%rbp), %edx
    movb	%dl, -2(%rbp)
    movb	%al, -1(%rbp)
    movzbl	-4(%rbp), %edx
    movzbl	-3(%rbp), %eax
    movl	%eax, %ecx
    movzbl	%dl, %edx
    movb	$0, %al
    orl	%edx, %eax
    movb	%cl, %ah
    popq	%rbp
    ret
    .globl	bar_char
bar_char:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_char
    movl	%eax, %edx
    movzbl	%ah, %eax
    movq	-8(%rbp), %rax
    movb	%dl, (%rax)
    nop
    leave
    ret
    .globl	baz_char
baz_char:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_char
    movzbl	%ah, %eax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movb	%dl, (%rax)
    nop
    leave
    ret
    .globl	foo_short
foo_short:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	-20(%rbp), %eax
    addl	$1, %eax
    movw	%ax, -8(%rbp)
    movzwl	-6(%rbp), %eax
    movzwl	-8(%rbp), %edx
    movw	%dx, -4(%rbp)
    movw	%ax, -2(%rbp)
    movl	-20(%rbp), %eax
    subl	$1, %eax
    movw	%ax, -6(%rbp)
    movzwl	-6(%rbp), %eax
    movzwl	-8(%rbp), %edx
    movw	%dx, -4(%rbp)
    movw	%ax, -2(%rbp)
    movzwl	-8(%rbp), %edx
    movzwl	-6(%rbp), %eax
    movl	%eax, %ecx
    movzwl	%dx, %edx
    movw	$0, %ax
    orl	%edx, %eax
    movzwl	%cx, %edx
    sall	$16, %edx
    movzwl	%ax, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	bar_short
bar_short:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_short
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movw	%dx, (%rax)
    nop
    leave
    ret
    .globl	baz_short
baz_short:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_short
    shrl	$16, %eax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movw	%dx, (%rax)
    nop
    leave
    ret
    .globl	foo_int
foo_int:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	-20(%rbp), %eax
    addl	$1, %eax
    movl	%eax, -16(%rbp)
    movl	-12(%rbp), %eax
    movl	-16(%rbp), %edx
    movl	%edx, -8(%rbp)
    movl	%eax, -4(%rbp)
    movl	-20(%rbp), %eax
    subl	$1, %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    movl	-16(%rbp), %edx
    movl	%edx, -8(%rbp)
    movl	%eax, -4(%rbp)
    movl	-16(%rbp), %edx
    movl	-12(%rbp), %eax
    movl	%eax, %esi
    movl	%edx, %edx
    movq	%rax, %rcx
    movabsq	$-4294967296, %rax
    andq	%rcx, %rax
    orq	%rdx, %rax
    movl	%esi, %edx
    salq	$32, %rdx
    movl	%eax, %eax
    orq	%rdx, %rax
    popq	%rbp
    ret
    .globl	bar_int
bar_int:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_int
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movl	%edx, (%rax)
    nop
    leave
    ret
    .globl	baz_int
baz_int:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -8(%rbp)
    movl	$5, %edi
    call	foo_int
    shrq	$32, %rax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movl	%edx, (%rax)
    nop
    leave
    ret
    .globl	foo_long
foo_long:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movl	-36(%rbp), %eax
    addl	$1, %eax
    cltq
    movq	%rax, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movl	-36(%rbp), %eax
    subl	$1, %eax
    cltq
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rcx
    movq	%rsi, %rax
    movq	%rcx, %rdx
    popq	%rbp
    ret
    .globl	bar_long
bar_long:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movq	%rdi, -16(%rbp)
    movl	$5, %edi
    call	foo_long
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rcx, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    nop
    addq	$8, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	baz_long
baz_long:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movq	%rdi, -16(%rbp)
    movl	$5, %edi
    call	foo_long
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rbx, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    nop
    addq	$8, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	foo_llong
foo_llong:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movl	-36(%rbp), %eax
    addl	$1, %eax
    cltq
    movq	%rax, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movl	-36(%rbp), %eax
    subl	$1, %eax
    cltq
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rcx
    movq	%rsi, %rax
    movq	%rcx, %rdx
    popq	%rbp
    ret
    .globl	bar_llong
bar_llong:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movq	%rdi, -16(%rbp)
    movl	$5, %edi
    call	foo_llong
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rcx, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    nop
    addq	$8, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	baz_llong
baz_llong:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movq	%rdi, -16(%rbp)
    movl	$5, %edi
    call	foo_llong
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rbx, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    nop
    addq	$8, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_float
    vmovss	-16(%rbp), %xmm0
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L98
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L104
L98:
    call	abort
L104:
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_float
    vmovss	-16(%rbp), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L99
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L105
L99:
    call	abort
L105:
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_double
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L100
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L106
L100:
    call	abort
L106:
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_double
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L101
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L107
L101:
    call	abort
L107:
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_ldouble_t
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L102
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L108
L102:
    call	abort
L108:
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_ldouble_t
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L103
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L109
L103:
    call	abort
L109:
    movb	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_char
    movzbl	-16(%rbp), %eax
    cmpb	$6, %al
    je	L86
    call	abort
L86:
    movb	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_char
    movzbl	-16(%rbp), %eax
    cmpb	$4, %al
    je	L87
    call	abort
L87:
    movw	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_short
    movzwl	-16(%rbp), %eax
    cmpw	$6, %ax
    je	L88
    call	abort
L88:
    movw	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_short
    movzwl	-16(%rbp), %eax
    cmpw	$4, %ax
    je	L89
    call	abort
L89:
    movl	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_int
    movl	-16(%rbp), %eax
    cmpl	$6, %eax
    je	L90
    call	abort
L90:
    movl	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_int
    movl	-16(%rbp), %eax
    cmpl	$4, %eax
    je	L91
    call	abort
L91:
    movq	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_long
    movq	-16(%rbp), %rax
    cmpq	$6, %rax
    je	L92
    call	abort
L92:
    movq	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_long
    movq	-16(%rbp), %rax
    cmpq	$4, %rax
    je	L93
    call	abort
L93:
    movq	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	bar_llong
    movq	-16(%rbp), %rax
    cmpq	$6, %rax
    je	L94
    call	abort
L94:
    movq	$0, -16(%rbp)
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	baz_llong
    movq	-16(%rbp), %rax
    cmpq	$4, %rax
    je	L95
    call	abort
L95:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L97
    call	__stack_chk_fail
L97:
    leave
    ret
    .section	.rodata
LC1:
    .long	1086324736
LC2:
    .long	1082130432
LC4:
    .long	0
    .long	1075314688
LC5:
    .long	0
    .long	1074790400
