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
    jmp	L27
L28:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L27:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
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
    jmp	L31
L32:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L31:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L32
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
    jle	L40
    cmpl	$122, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L41
L40:
    cmpl	$64, -4(%rbp)
    jle	L42
    cmpl	$90, -4(%rbp)
    jg	L42
    movl	$1, %eax
    jmp	L41
L42:
    cmpl	$47, -4(%rbp)
    jle	L43
    cmpl	$57, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L41
L43:
    movl	$0, %eax
L41:
    popq	%rbp
    ret
    .globl	cf
cf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm2
    vmovss	-8(%rbp), %xmm3
    vmovss	$LC0(%rip), %xmm0
    vmovss	$LC1(%rip), %xmm1
    vmovaps	%xmm3, %xmm4
    vandps	%xmm1, %xmm4, %xmm4
    vandps	%xmm2, %xmm0, %xmm0
    vorps	%xmm4, %xmm0, %xmm0
    popq	%rbp
    ret
    .section	.rodata
Tf:
    .long	1065353216
    .long	1073741824
    .long	1065353216
    .long	1065353216
    .long	3221225472
    .long	3212836864
    .long	3212836864
    .long	3221225472
    .long	3212836864
    .long	0
    .long	3221225472
    .long	2147483648
    .long	2147483648
    .long	3221225472
    .long	2147483648
    .long	2147483648
    .long	1073741824
    .long	0
    .long	2139095040
    .long	2147483648
    .long	4286578688
    .long	4290772992
    .long	2139095040
    .long	2143289344
    .text
    .globl	testf
testf:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8, -12(%rbp)
    movl	$0, -16(%rbp)
    jmp	L47
L49:
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf + 4, %rax
    vmovss	(%rax), %xmm0
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf, %rax
    movl	(%rax), %eax
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	cf
    vmovd	%xmm0, %eax
    movl	%eax, -20(%rbp)
    movl	-16(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$2, %rax
    addq	$Tf, %rax
    leaq	8(%rax), %rcx
    leaq	-20(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L48
    call	abort
L48:
    addl	$1, -16(%rbp)
L47:
    movl	-16(%rbp), %eax
    cmpl	-12(%rbp), %eax
    jl	L49
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L50
    call	__stack_chk_fail
L50:
    leave
    ret
    .globl	c
c:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm2
    vmovsd	-16(%rbp), %xmm3
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	$LC3(%rip), %xmm1
    vmovapd	%xmm3, %xmm4
    vandpd	%xmm1, %xmm4, %xmm4
    vandpd	%xmm2, %xmm0, %xmm0
    vorpd	%xmm4, %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .section	.rodata
T:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .long	0
    .long	1072693248
    .long	0
    .long	1072693248
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	0
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	1073741824
    .long	0
    .long	0
    .long	0
    .long	2146435072
    .long	0
    .long	-2147483648
    .long	0
    .long	-1048576
    .long	0
    .long	-524288
    .long	0
    .long	2146435072
    .long	0
    .long	2146959360
    .text
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8, -20(%rbp)
    movl	$0, -24(%rbp)
    jmp	L54
L56:
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T + 8, %rax
    vmovsd	(%rax), %xmm0
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T, %rax
    movq	(%rax), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	c
    vmovq	%xmm0, %rax
    movq	%rax, -16(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$T, %rax
    leaq	16(%rax), %rcx
    leaq	-16(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L55
    call	abort
L55:
    addl	$1, -24(%rbp)
L54:
    movl	-24(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L56
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L57
    call	__stack_chk_fail
L57:
    leave
    ret
    .globl	cl
cl:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm2
    vmovsd	-16(%rbp), %xmm3
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	$LC3(%rip), %xmm1
    vmovapd	%xmm3, %xmm4
    vandpd	%xmm1, %xmm4, %xmm4
    vandpd	%xmm2, %xmm0, %xmm0
    vorpd	%xmm4, %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .section	.rodata
Tl:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .long	0
    .long	1072693248
    .long	0
    .long	1072693248
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1073741824
    .long	0
    .long	-1074790400
    .long	0
    .long	0
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	-1073741824
    .long	0
    .long	-2147483648
    .long	0
    .long	-2147483648
    .long	0
    .long	1073741824
    .long	0
    .long	0
    .long	0
    .long	2146435072
    .long	0
    .long	-2147483648
    .long	0
    .long	-1048576
    .long	0
    .long	-524288
    .long	0
    .long	2146435072
    .long	0
    .long	2146959360
    .text
    .globl	testl
testl:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8, -20(%rbp)
    movl	$0, -24(%rbp)
    jmp	L61
L63:
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$Tl + 8, %rax
    vmovsd	(%rax), %xmm0
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$Tl, %rax
    movq	(%rax), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	cl
    vmovq	%xmm0, %rax
    movq	%rax, -16(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$Tl, %rax
    leaq	16(%rax), %rcx
    leaq	-16(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L62
    call	abort
L62:
    addl	$1, -24(%rbp)
L61:
    movl	-24(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L63
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L64
    call	__stack_chk_fail
L64:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	testf
    call	test
    call	testl
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	2147483647
    .long	0
    .long	0
    .long	0
LC1:
    .long	2147483648
    .long	0
    .long	0
    .long	0
LC2:
    .long	4294967295
    .long	2147483647
    .long	0
    .long	0
LC3:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
