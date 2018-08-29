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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    .globl	f1
    .data
f1:
    .long	1066192077
    .long	1074580685
    .globl	f2
f2:
    .long	1079194419
    .long	1082969293
    .globl	f3
f3:
    .long	1085276160
    .long	1087583027
    .globl	f4
f4:
    .long	1089889894
    .long	1091357901
    .globl	f5
f5:
    .long	1092511334
    .long	1092721050
    .globl	d1
d1:
    .long	2576980378
    .long	1072798105
    .long	2576980378
    .long	1073846681
    .globl	d2
d2:
    .long	1717986918
    .long	1074423398
    .long	2576980378
    .long	1074895257
    .globl	d3
d3:
    .long	0
    .long	1075183616
    .long	1717986918
    .long	1075471974
    .globl	d4
d4:
    .long	3435973837
    .long	1075760332
    .long	2576980378
    .long	1075943833
    .globl	d5
d5:
    .long	3435973837
    .long	1076088012
    .long	858993459
    .long	1076114227
    .globl	ld1
ld1:
    .long	3435973837
    .long	2362232012
    .long	16383
    .long	0
    .long	3435973837
    .long	2362232012
    .long	16384
    .long	0
    .globl	ld2
ld2:
    .long	858993459
    .long	3543348019
    .long	16384
    .long	0
    .long	3435973837
    .long	2362232012
    .long	16385
    .long	0
    .globl	ld3
ld3:
    .long	0
    .long	2952790016
    .long	16385
    .long	0
    .long	858993459
    .long	3543348019
    .long	16385
    .long	0
    .globl	ld4
ld4:
    .long	1717986918
    .long	4133906022
    .long	16385
    .long	0
    .long	3435973837
    .long	2362232012
    .long	16386
    .long	0
    .globl	ld5
ld5:
    .long	1717986918
    .long	2657511014
    .long	16386
    .long	0
    .long	2576980378
    .long	2711198105
    .long	16386
    .long	0
    .text
    .globl	check_float
check_float:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$136, %rsp
    movl	%edi, -52(%rbp)
    vmovq	%xmm0, %rax
    movq	%rax, -64(%rbp)
    vmovss	-64(%rbp), %xmm5
    vmovss	-60(%rbp), %xmm0
    vmovss	%xmm5, -72(%rbp)
    vmovss	%xmm0, -68(%rbp)
    vmovq	%xmm1, %rax
    movq	%rax, -80(%rbp)
    vmovss	-80(%rbp), %xmm1
    vmovss	-76(%rbp), %xmm0
    vmovss	%xmm1, -88(%rbp)
    vmovss	%xmm0, -84(%rbp)
    vmovq	%xmm2, %rax
    movq	%rax, -96(%rbp)
    vmovss	-96(%rbp), %xmm1
    vmovss	-92(%rbp), %xmm0
    vmovss	%xmm1, -104(%rbp)
    vmovss	%xmm0, -100(%rbp)
    vmovq	%xmm3, %rax
    movq	%rax, -112(%rbp)
    vmovss	-112(%rbp), %xmm1
    vmovss	-108(%rbp), %xmm0
    vmovss	%xmm1, -120(%rbp)
    vmovss	%xmm0, -116(%rbp)
    vmovq	%xmm4, %rax
    movq	%rax, -128(%rbp)
    vmovss	-128(%rbp), %xmm1
    vmovss	-124(%rbp), %xmm0
    vmovss	%xmm1, -136(%rbp)
    vmovss	%xmm0, -132(%rbp)
    vmovss	-72(%rbp), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovss	-68(%rbp), %xmm0
    vmovss	%xmm0, -36(%rbp)
    vmovss	-88(%rbp), %xmm0
    vmovss	%xmm0, -32(%rbp)
    vmovss	-84(%rbp), %xmm0
    vmovss	%xmm0, -28(%rbp)
    vmovss	-104(%rbp), %xmm0
    vmovss	%xmm0, -24(%rbp)
    vmovss	-100(%rbp), %xmm0
    vmovss	%xmm0, -20(%rbp)
    vmovss	-120(%rbp), %xmm0
    vmovss	%xmm0, -16(%rbp)
    vmovss	-116(%rbp), %xmm0
    vmovss	%xmm0, -12(%rbp)
    vmovss	-136(%rbp), %xmm0
    vmovss	%xmm0, -8(%rbp)
    vmovss	-132(%rbp), %xmm0
    vmovss	%xmm0, -4(%rbp)
    vmovss	f1(%rip), %xmm1
    vmovss	f1 + 4(%rip), %xmm0
    vucomiss	-40(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	-40(%rbp), %xmm1
    cmove	%eax, %edx
    vucomiss	-36(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	-36(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L54
    vmovss	f2(%rip), %xmm1
    vmovss	f2 + 4(%rip), %xmm0
    vucomiss	-32(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	-32(%rbp), %xmm1
    cmove	%eax, %edx
    vucomiss	-28(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	-28(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L54
    vmovss	f3(%rip), %xmm1
    vmovss	f3 + 4(%rip), %xmm0
    vucomiss	-24(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	-24(%rbp), %xmm1
    cmove	%eax, %edx
    vucomiss	-20(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	-20(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L54
    vmovss	f4(%rip), %xmm1
    vmovss	f4 + 4(%rip), %xmm0
    vucomiss	-16(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	-16(%rbp), %xmm1
    cmove	%eax, %edx
    vucomiss	-12(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	-12(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L54
    vmovss	f5(%rip), %xmm1
    vmovss	f5 + 4(%rip), %xmm0
    vucomiss	-8(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomiss	-8(%rbp), %xmm1
    cmove	%eax, %edx
    vucomiss	-4(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomiss	-4(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L56
L54:
    call	abort
L56:
    nop
    leave
    ret
    .globl	check_double
check_double:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$152, %rsp
    movl	%edi, -84(%rbp)
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -104(%rbp)
    vmovsd	%xmm0, -96(%rbp)
    vmovq	%xmm2, %rdx
    vmovq	%xmm3, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	%xmm1, -120(%rbp)
    vmovsd	%xmm0, -112(%rbp)
    vmovq	%xmm4, %rdx
    vmovq	%xmm5, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	%xmm1, -136(%rbp)
    vmovsd	%xmm0, -128(%rbp)
    vmovq	%xmm6, %rdx
    vmovq	%xmm7, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	%xmm1, -152(%rbp)
    vmovsd	%xmm0, -144(%rbp)
    vmovsd	-104(%rbp), %xmm0
    vmovsd	%xmm0, -80(%rbp)
    vmovsd	-96(%rbp), %xmm0
    vmovsd	%xmm0, -72(%rbp)
    vmovsd	-120(%rbp), %xmm0
    vmovsd	%xmm0, -64(%rbp)
    vmovsd	-112(%rbp), %xmm0
    vmovsd	%xmm0, -56(%rbp)
    vmovsd	-136(%rbp), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	-128(%rbp), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	-152(%rbp), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	-144(%rbp), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	16(%rbp), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	24(%rbp), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	d1(%rip), %xmm1
    vmovsd	d1 + 8(%rip), %xmm0
    vucomisd	-80(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomisd	-80(%rbp), %xmm1
    cmove	%eax, %edx
    vucomisd	-72(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomisd	-72(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L58
    vmovsd	d2(%rip), %xmm1
    vmovsd	d2 + 8(%rip), %xmm0
    vucomisd	-64(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomisd	-64(%rbp), %xmm1
    cmove	%eax, %edx
    vucomisd	-56(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomisd	-56(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L58
    vmovsd	d3(%rip), %xmm1
    vmovsd	d3 + 8(%rip), %xmm0
    vucomisd	-48(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomisd	-48(%rbp), %xmm1
    cmove	%eax, %edx
    vucomisd	-40(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomisd	-40(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L58
    vmovsd	d4(%rip), %xmm1
    vmovsd	d4 + 8(%rip), %xmm0
    vucomisd	-32(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomisd	-32(%rbp), %xmm1
    cmove	%eax, %edx
    vucomisd	-24(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomisd	-24(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L58
    vmovsd	d5(%rip), %xmm1
    vmovsd	d5 + 8(%rip), %xmm0
    vucomisd	-16(%rbp), %xmm1
    setp	%al
    movl	$1, %edx
    vucomisd	-16(%rbp), %xmm1
    cmove	%eax, %edx
    vucomisd	-8(%rbp), %xmm0
    setp	%al
    movl	$1, %ecx
    vucomisd	-8(%rbp), %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L60
L58:
    call	abort
L60:
    nop
    leave
    ret
    .globl	check_long_double
check_long_double:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$176, %rsp
    movl	%edi, -164(%rbp)
    fldt	16(%rbp)
    fstpt	-160(%rbp)
    fldt	32(%rbp)
    fstpt	-144(%rbp)
    fldt	48(%rbp)
    fstpt	-128(%rbp)
    fldt	64(%rbp)
    fstpt	-112(%rbp)
    fldt	80(%rbp)
    fstpt	-96(%rbp)
    fldt	96(%rbp)
    fstpt	-80(%rbp)
    fldt	112(%rbp)
    fstpt	-64(%rbp)
    fldt	128(%rbp)
    fstpt	-48(%rbp)
    fldt	144(%rbp)
    fstpt	-32(%rbp)
    fldt	160(%rbp)
    fstpt	-16(%rbp)
    fldt	ld1(%rip)
    fldt	ld1 + 16(%rip)
    fldt	-160(%rbp)
    fucomip	%st(2), %st
    setp	%al
    fldt	-160(%rbp)
    movl	$1, %edx
    fucomip	%st(2), %st
    fstp	%st(1)
    cmove	%eax, %edx
    fldt	-144(%rbp)
    fucomip	%st(1), %st
    setp	%al
    fldt	-144(%rbp)
    movl	$1, %ecx
    fucomip	%st(1), %st
    fstp	%st(0)
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L62
    fldt	ld2(%rip)
    fldt	ld2 + 16(%rip)
    fldt	-128(%rbp)
    fucomip	%st(2), %st
    setp	%al
    fldt	-128(%rbp)
    movl	$1, %edx
    fucomip	%st(2), %st
    fstp	%st(1)
    cmove	%eax, %edx
    fldt	-112(%rbp)
    fucomip	%st(1), %st
    setp	%al
    fldt	-112(%rbp)
    movl	$1, %ecx
    fucomip	%st(1), %st
    fstp	%st(0)
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L62
    fldt	ld3(%rip)
    fldt	ld3 + 16(%rip)
    fldt	-96(%rbp)
    fucomip	%st(2), %st
    setp	%al
    fldt	-96(%rbp)
    movl	$1, %edx
    fucomip	%st(2), %st
    fstp	%st(1)
    cmove	%eax, %edx
    fldt	-80(%rbp)
    fucomip	%st(1), %st
    setp	%al
    fldt	-80(%rbp)
    movl	$1, %ecx
    fucomip	%st(1), %st
    fstp	%st(0)
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L62
    fldt	ld4(%rip)
    fldt	ld4 + 16(%rip)
    fldt	-64(%rbp)
    fucomip	%st(2), %st
    setp	%al
    fldt	-64(%rbp)
    movl	$1, %edx
    fucomip	%st(2), %st
    fstp	%st(1)
    cmove	%eax, %edx
    fldt	-48(%rbp)
    fucomip	%st(1), %st
    setp	%al
    fldt	-48(%rbp)
    movl	$1, %ecx
    fucomip	%st(1), %st
    fstp	%st(0)
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    je	L62
    fldt	ld5(%rip)
    fldt	ld5 + 16(%rip)
    fldt	-32(%rbp)
    fucomip	%st(2), %st
    setp	%al
    fldt	-32(%rbp)
    movl	$1, %edx
    fucomip	%st(2), %st
    fstp	%st(1)
    cmove	%eax, %edx
    fldt	-16(%rbp)
    fucomip	%st(1), %st
    setp	%al
    fldt	-16(%rbp)
    movl	$1, %ecx
    fucomip	%st(1), %st
    fstp	%st(0)
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L64
L62:
    call	abort
L64:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    vmovss	f5(%rip), %xmm9
    vmovss	f5 + 4(%rip), %xmm8
    vmovss	f4(%rip), %xmm7
    vmovss	f4 + 4(%rip), %xmm6
    vmovss	f3(%rip), %xmm5
    vmovss	f3 + 4(%rip), %xmm4
    vmovss	f2(%rip), %xmm3
    vmovss	f2 + 4(%rip), %xmm2
    vmovss	f1(%rip), %xmm1
    vmovss	f1 + 4(%rip), %xmm0
    vmovss	%xmm9, -8(%rbp)
    vmovss	%xmm8, -4(%rbp)
    movq	-8(%rbp), %rdi
    vmovss	%xmm7, -16(%rbp)
    vmovss	%xmm6, -12(%rbp)
    movq	-16(%rbp), %rsi
    vmovss	%xmm5, -24(%rbp)
    vmovss	%xmm4, -20(%rbp)
    movq	-24(%rbp), %rcx
    vmovss	%xmm3, -32(%rbp)
    vmovss	%xmm2, -28(%rbp)
    movq	-32(%rbp), %rdx
    vmovss	%xmm1, -40(%rbp)
    vmovss	%xmm0, -36(%rbp)
    movq	-40(%rbp), %rax
    vmovq	%rdi, %xmm4
    vmovq	%rsi, %xmm3
    vmovq	%rcx, %xmm2
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    movl	$0, %edi
    call	check_float
    vmovsd	d5(%rip), %xmm0
    vmovsd	d5 + 8(%rip), %xmm1
    vmovsd	d4(%rip), %xmm9
    vmovsd	d4 + 8(%rip), %xmm8
    vmovsd	d3(%rip), %xmm7
    vmovsd	d3 + 8(%rip), %xmm6
    vmovsd	d2(%rip), %xmm5
    vmovsd	d2 + 8(%rip), %xmm4
    vmovsd	d1(%rip), %xmm3
    vmovsd	d1 + 8(%rip), %xmm2
    vmovq	%xmm9, %r10
    vmovq	%xmm8, %r9
    vmovq	%xmm7, %r8
    vmovq	%xmm6, %rdi
    vmovq	%xmm5, %rsi
    vmovq	%xmm4, %rcx
    vmovq	%xmm3, %rax
    vmovq	%xmm2, %rdx
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm1, (%rsp)
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vmovq	%r10, %xmm6
    vmovq	%r9, %xmm7
    vmovq	%r8, %xmm4
    vmovq	%rdi, %xmm5
    vmovq	%rsi, %xmm2
    vmovq	%rcx, %xmm3
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    movl	$0, %edi
    call	check_double
    addq	$16, %rsp
    fldt	ld5(%rip)
    fstpt	-64(%rbp)
    fldt	ld5 + 16(%rip)
    fldt	ld4(%rip)
    fldt	ld4 + 16(%rip)
    fstpt	-80(%rbp)
    fldt	ld3(%rip)
    fldt	ld3 + 16(%rip)
    fldt	ld2(%rip)
    fldt	ld2 + 16(%rip)
    fldt	ld1(%rip)
    fldt	ld1 + 16(%rip)
    fxch	%st(7)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    fxch	%st(5)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-72(%rbp)
    pushq	-80(%rbp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    fxch	%st(2)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    fxch	%st(2)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    fxch	%st(1)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movl	$0, %edi
    call	check_long_double
    addq	$160, %rsp
    movl	$0, %edi
    call	exit
