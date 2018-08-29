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
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	%xmm1, -56(%rbp)
    movl	%ecx, -60(%rbp)
    movl	$1, -4(%rbp)
    jmp	L54
L55:
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    leaq	0(,%rdx,8), %rcx
    movq	-32(%rbp), %rdx
    addq	%rcx, %rdx
    vmovsd	(%rdx), %xmm1
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    leaq	0(,%rdx,8), %rcx
    movq	-40(%rbp), %rdx
    addq	%rcx, %rdx
    vmovsd	(%rdx), %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rdx
    leaq	-8(%rdx), %rcx
    movq	-24(%rbp), %rdx
    addq	%rcx, %rdx
    vmovsd	(%rdx), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    addq	$1, %rdx
    leaq	0(,%rdx,8), %rcx
    movq	-24(%rbp), %rdx
    addq	%rcx, %rdx
    vmovsd	(%rdx), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-48(%rbp), %xmm0, %xmm1
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    leaq	0(,%rdx,8), %rcx
    movq	-24(%rbp), %rdx
    addq	%rcx, %rdx
    vmovsd	(%rdx), %xmm0
    vmulsd	-56(%rbp), %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, (%rax)
    addl	$1, -4(%rbp)
L54:
    movl	-60(%rbp), %eax
    subl	$1, %eax
    cmpl	-4(%rbp), %eax
    jg	L55
    nop
    popq	%rbp
    ret
    .globl	expected
    .data
expected:
    .long	0
    .long	0
    .long	0
    .long	1076101120
    .long	0
    .long	1078329344
    .long	0
    .long	1079738368
    .long	0
    .long	1080885248
    .long	0
    .long	1082040320
    .long	0
    .long	1083170816
    .long	0
    .long	1084242944
    .long	0
    .long	1085290496
    .long	0
    .long	1086340352
    .long	0
    .long	1087390464
    .long	0
    .long	1088439744
    .long	0
    .long	1089488512
    .long	0
    .long	1090537296
    .long	0
    .long	1091586032
    .long	0
    .long	1092634684
    .long	0
    .long	1093683256
    .long	0
    .long	1094731837
    .long	0
    .long	1095780419
    .long	3221225472
    .long	1096828997
    .long	2147483648
    .long	1097877574
    .long	1342177280
    .long	1098926151
    .long	4026531840
    .long	1099974727
    .long	1006632960
    .long	1101023304
    .long	939524096
    .long	1102071880
    .long	1023410176
    .long	1103120456
    .long	1124073472
    .long	1104169032
    .long	1170210816
    .long	1105217608
    .long	1182793728
    .long	1106266184
    .long	1196425216
    .long	1107314760
    .long	1206910976
    .long	1108363336
    .long	0
    .long	1075314688
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$800, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -788(%rbp)
    jmp	L57
L58:
    movl	-788(%rbp), %eax
    andl	$3, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    movl	-788(%rbp), %eax
    cltq
    vmovsd	%xmm0, -784(%rbp,%rax,8)
    movl	-788(%rbp), %eax
    andl	$7, %eax
    subl	$4, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    movl	-788(%rbp), %eax
    cltq
    vmovsd	%xmm0, -528(%rbp,%rax,8)
    movl	-788(%rbp), %eax
    andl	$7, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    movl	-788(%rbp), %eax
    cltq
    vmovsd	%xmm0, -272(%rbp,%rax,8)
    addl	$1, -788(%rbp)
L57:
    cmpl	$31, -788(%rbp)
    jle	L58
    vmovsd	LC0(%rip), %xmm0
    movabsq	$4611686018427387904, %rdi
    leaq	-272(%rbp), %rdx
    leaq	-528(%rbp), %rsi
    leaq	-784(%rbp), %rax
    movl	$32, %ecx
    vmovapd	%xmm0, %xmm1
    vmovq	%rdi, %xmm0
    movq	%rax, %rdi
    call	foo
    movl	$0, -788(%rbp)
    jmp	L59
L62:
    movl	-788(%rbp), %eax
    cltq
    vmovsd	-784(%rbp,%rax,8), %xmm0
    movl	-788(%rbp), %eax
    cltq
    vmovsd	expected(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L65
    vucomisd	%xmm1, %xmm0
    je	L66
L65:
    call	abort
L66:
    addl	$1, -788(%rbp)
L59:
    cmpl	$31, -788(%rbp)
    jle	L62
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L64
    call	__stack_chk_fail
L64:
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1074266112
