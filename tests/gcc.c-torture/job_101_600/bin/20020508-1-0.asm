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
    .globl	uc
    .data
uc:
    .byte	52
    .globl	us
us:
    .value	-3532
    .globl	ui
ui:
    .long	62004
    .globl	ul
ul:
    .quad	4063516280
    .globl	ull
ull:
    .quad	1090791845765373680
    .globl	shift1
shift1:
    .long	4
    .globl	shift2
shift2:
    .long	60
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl $uc(%rip), %eax
    movzbl	%al, %edx
    movl $shift1(%rip), %eax
    sarx	%eax, %edx, %ecx
    movzbl $uc(%rip), %eax
    movzbl	%al, %edx
    movl $shift1(%rip), %eax
    movl	$8, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$835, %eax
    je	L40
    call	abort
L40:
    movzbl $uc(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl $uc(%rip), %edx
    movzbl	%dl, %edx
    sall	$4, %edx
    orl	%edx, %eax
    cmpl	$835, %eax
    je	L41
    call	abort
L41:
    movzwl $us(%rip), %eax
    movzwl	%ax, %edx
    movl $shift1(%rip), %eax
    sarx	%eax, %edx, %ecx
    movzwl $us(%rip), %eax
    movzwl	%ax, %edx
    movl $shift1(%rip), %eax
    movl	$16, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$253972259, %eax
    je	L42
    call	abort
L42:
    movzwl $us(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    movzwl $us(%rip), %edx
    movzwl	%dx, %edx
    sall	$12, %edx
    orl	%edx, %eax
    cmpl	$253972259, %eax
    je	L43
    call	abort
L43:
    movl $ui(%rip), %edx
    movl $shift1(%rip), %eax
    shrx	%eax, %edx, %ecx
    movl $ui(%rip), %edx
    movl $shift1(%rip), %eax
    movl	$32, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$1073745699, %eax
    je	L44
    call	abort
L44:
    movl $ui(%rip), %eax
    rorx	$4, %eax, %eax
    cmpl	$1073745699, %eax
    je	L45
    call	abort
L45:
    movq $ul(%rip), %rdx
    movl $shift1(%rip), %eax
    shrx	%rax, %rdx, %rcx
    movq $ul(%rip), %rdx
    movl $shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$-9223372036600806041, %rax
    cmpq	%rax, %rdx
    je	L46
    call	abort
L46:
    movq $ul(%rip), %rax
    rorx	$4, %rax, %rdx
    movabsq	$-9223372036600806041, %rax
    cmpq	%rax, %rdx
    je	L47
    call	abort
L47:
    movq $ull(%rip), %rdx
    movl $shift1(%rip), %eax
    shrx	%rax, %rdx, %rcx
    movq $ull(%rip), %rdx
    movl $shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$68174490360335855, %rax
    cmpq	%rax, %rdx
    je	L48
    call	abort
L48:
    movq $ull(%rip), %rax
    rorx	$4, %rax, %rdx
    movabsq	$68174490360335855, %rax
    cmpq	%rax, %rdx
    je	L49
    call	abort
L49:
    movq $ull(%rip), %rdx
    movl $shift2(%rip), %eax
    shrx	%rax, %rdx, %rcx
    movq $ull(%rip), %rdx
    movl $shift2(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shlx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$-994074541463572736, %rax
    cmpq	%rax, %rdx
    je	L50
    call	abort
L50:
    movq $ull(%rip), %rax
    rorx	$60, %rax, %rdx
    movabsq	$-994074541463572736, %rax
    cmpq	%rax, %rdx
    je	L51
    call	abort
L51:
    movzbl $uc(%rip), %eax
    movzbl	%al, %edx
    movl $shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movzbl $uc(%rip), %eax
    movzbl	%al, %edx
    movl $shift1(%rip), %eax
    movl	$8, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$835, %eax
    je	L52
    call	abort
L52:
    movzbl $uc(%rip), %eax
    movzbl	%al, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movzbl $uc(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    orl	%edx, %eax
    cmpl	$835, %eax
    je	L53
    call	abort
L53:
    movzwl $us(%rip), %eax
    movzwl	%ax, %edx
    movl $shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movzwl $us(%rip), %eax
    movzwl	%ax, %edx
    movl $shift1(%rip), %eax
    movl	$16, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sarx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$992079, %eax
    je	L54
    call	abort
L54:
    movzwl $us(%rip), %eax
    movzwl	%ax, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl $us(%rip), %eax
    shrw	$12, %ax
    movzwl	%ax, %eax
    orl	%edx, %eax
    cmpl	$992079, %eax
    je	L55
    call	abort
L55:
    movl $ui(%rip), %edx
    movl $shift1(%rip), %eax
    shlx	%eax, %edx, %ecx
    movl $ui(%rip), %edx
    movl $shift1(%rip), %eax
    movl	$32, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shrx	%eax, %edx, %eax
    orl	%ecx, %eax
    cmpl	$992064, %eax
    je	L56
    call	abort
L56:
    movl $ui(%rip), %eax
    rorx	$28, %eax, %eax
    cmpl	$992064, %eax
    je	L57
    call	abort
L57:
    movq $ul(%rip), %rdx
    movl $shift1(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq $ul(%rip), %rdx
    movl $shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shrx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$65016260480, %rax
    cmpq	%rax, %rdx
    je	L58
    call	abort
L58:
    movq $ul(%rip), %rax
    rorx	$60, %rax, %rdx
    movabsq	$65016260480, %rax
    cmpq	%rax, %rdx
    je	L59
    call	abort
L59:
    movq $ull(%rip), %rdx
    movl $shift1(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq $ull(%rip), %rdx
    movl $shift1(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shrx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$-994074541463572736, %rax
    cmpq	%rax, %rdx
    je	L60
    call	abort
L60:
    movq $ull(%rip), %rax
    rorx	$60, %rax, %rdx
    movabsq	$-994074541463572736, %rax
    cmpq	%rax, %rdx
    je	L61
    call	abort
L61:
    movq $ull(%rip), %rdx
    movl $shift2(%rip), %eax
    shlx	%rax, %rdx, %rcx
    movq $ull(%rip), %rdx
    movl $shift2(%rip), %eax
    movl	$64, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    shrx	%rax, %rdx, %rax
    orq	%rax, %rcx
    movq	%rcx, %rdx
    movabsq	$68174490360335855, %rax
    cmpq	%rax, %rdx
    je	L62
    call	abort
L62:
    movq $ull(%rip), %rax
    rorx	$4, %rax, %rdx
    movabsq	$68174490360335855, %rax
    cmpq	%rax, %rdx
    je	L63
    call	abort
L63:
    movl	$0, %edi
    call	exit
