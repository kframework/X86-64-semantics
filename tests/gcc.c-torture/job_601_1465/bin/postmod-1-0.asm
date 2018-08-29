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
    .comm	array0,64,32
    .comm	array1,64,32
    .comm	array2,64,32
    .comm	array3,64,32
    .comm	array4,64,32
    .comm	array5,64,32
    .globl	counter0
    .bss
counter0:
    .zero	4
    .globl	counter1
counter1:
    .zero	4
    .globl	counter2
counter2:
    .zero	4
    .globl	counter3
counter3:
    .zero	4
    .globl	counter4
counter4:
    .zero	4
    .globl	counter5
counter5:
    .zero	4
    .globl	stop
    .data
stop:
    .long	1
    .comm	vol,4,4
    .text
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -84(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array0, %rax
    movq	%rax, -48(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array1, %rax
    movq	%rax, -40(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array2, %rax
    movq	%rax, -32(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array3, %rax
    movq	%rax, -24(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array4, %rax
    movq	%rax, -16(%rbp)
    movl	-84(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	$array5, %rax
    movq	%rax, -8(%rbp)
L60:
    movq	-48(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter0(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter0(%rip)
    addq	$12, -48(%rbp)
    movq	-40(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter1(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter1(%rip)
    addq	$12, -40(%rbp)
    movq	-32(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter2(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter2(%rip)
    addq	$12, -32(%rbp)
    movq	-24(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter3(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter3(%rip)
    addq	$12, -24(%rbp)
    movq	-16(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter4(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter4(%rip)
    addq	$12, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovss	(%rax), %xmm1
    vmovss	counter5(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter5(%rip)
    addq	$12, -8(%rbp)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-48(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter0(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter0(%rip)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter1(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter1(%rip)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter2(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter2(%rip)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter3(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter3(%rip)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-16(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter4(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter4(%rip)
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vmovss	counter5(%rip), %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, counter5(%rip)
    movl	vol(%rip), %eax
    movl	%eax, -68(%rbp)
    movl	vol(%rip), %eax
    movl	%eax, -64(%rbp)
    movl	vol(%rip), %eax
    movl	%eax, -60(%rbp)
    movl	vol(%rip), %eax
    movl	%eax, -56(%rbp)
    movl	vol(%rip), %eax
    movl	%eax, -52(%rbp)
    movl	$0, -72(%rbp)
    jmp	L58
L59:
    movl	vol(%rip), %edx
    movl	-68(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, vol(%rip)
    movl	vol(%rip), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, vol(%rip)
    movl	vol(%rip), %edx
    movl	-60(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, vol(%rip)
    movl	vol(%rip), %edx
    movl	-56(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, vol(%rip)
    movl	vol(%rip), %edx
    movl	-52(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, vol(%rip)
    addl	$1, -72(%rbp)
L58:
    cmpl	$9, -72(%rbp)
    jle	L59
    movl	stop(%rip), %eax
    testl	%eax, %eax
    je	L60
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -4(%rbp)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array0 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array0 + 20(%rip)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array1 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array1 + 20(%rip)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array2 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array2 + 20(%rip)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array3 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array3 + 20(%rip)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array4 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array4 + 20(%rip)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, array5 + 4(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, array5 + 20(%rip)
    movl	$1, %edi
    call	foo
    vmovss	counter0(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    vmovss	counter1(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    vmovss	counter2(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    vmovss	counter3(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    vmovss	counter4(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    vmovss	counter5(%rip), %xmm0
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    orl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	1065353216
LC1:
    .long	1073741824
LC2:
    .long	1077936128
