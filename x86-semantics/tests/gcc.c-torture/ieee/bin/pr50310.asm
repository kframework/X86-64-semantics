    .comm	s1,32,32
    .comm	s2,32,32
    .comm	s3,512,64
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L2
L5:
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L3
    movabsq	$-4616189618054758400, %rax
    jmp	L4
L3:
    movl	$0, %eax
L4:
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L2:
    cmpl	$3, -4(%rbp)
    jle	L5
    movl	$0, -4(%rbp)
    jmp	L6
L10:
    movl	-4(%rbp), %eax
    leal	4(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    ja	L84
    movabsq	$-4616189618054758400, %rax
    jmp	L9
L84:
    movl	$0, %eax
L9:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L6:
    cmpl	$3, -4(%rbp)
    jle	L10
    movl	$0, -4(%rbp)
    jmp	L11
L14:
    movl	-4(%rbp), %eax
    leal	8(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L12
    movabsq	$-4616189618054758400, %rax
    jmp	L13
L12:
    movl	$0, %eax
L13:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L11:
    cmpl	$3, -4(%rbp)
    jle	L14
    movl	$0, -4(%rbp)
    jmp	L15
L19:
    movl	-4(%rbp), %eax
    leal	12(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    jnb	L85
    movabsq	$-4616189618054758400, %rax
    jmp	L18
L85:
    movl	$0, %eax
L18:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L15:
    cmpl	$3, -4(%rbp)
    jle	L19
    movl	$0, -4(%rbp)
    jmp	L20
L23:
    movl	-4(%rbp), %eax
    leal	16(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L21
    movabsq	$-4616189618054758400, %rax
    jmp	L22
L21:
    movl	$0, %eax
L22:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L20:
    cmpl	$3, -4(%rbp)
    jle	L23
    movl	$0, -4(%rbp)
    jmp	L24
L28:
    movl	-4(%rbp), %eax
    leal	20(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    ja	L86
    movabsq	$-4616189618054758400, %rax
    jmp	L27
L86:
    movl	$0, %eax
L27:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L24:
    cmpl	$3, -4(%rbp)
    jle	L28
    movl	$0, -4(%rbp)
    jmp	L29
L32:
    movl	-4(%rbp), %eax
    leal	24(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L30
    movabsq	$-4616189618054758400, %rax
    jmp	L31
L30:
    movl	$0, %eax
L31:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L29:
    cmpl	$3, -4(%rbp)
    jle	L32
    movl	$0, -4(%rbp)
    jmp	L33
L37:
    movl	-4(%rbp), %eax
    leal	28(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    jnb	L87
    movabsq	$-4616189618054758400, %rax
    jmp	L36
L87:
    movl	$0, %eax
L36:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L33:
    cmpl	$3, -4(%rbp)
    jle	L37
    movl	$0, -4(%rbp)
    jmp	L38
L41:
    movl	-4(%rbp), %eax
    leal	32(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    sete	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L39
    movabsq	$-4616189618054758400, %rax
    jmp	L40
L39:
    movl	$0, %eax
L40:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L38:
    cmpl	$3, -4(%rbp)
    jle	L41
    movl	$0, -4(%rbp)
    jmp	L42
L46:
    movl	-4(%rbp), %eax
    leal	36(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jne	L88
    movabsq	$-4616189618054758400, %rax
    jmp	L45
L88:
    movl	$0, %eax
L45:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L42:
    cmpl	$3, -4(%rbp)
    jle	L46
    movl	$0, -4(%rbp)
    jmp	L47
L50:
    movl	-4(%rbp), %eax
    leal	40(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    jnp	L48
    movabsq	$-4616189618054758400, %rax
    jmp	L49
L48:
    movl	$0, %eax
L49:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L47:
    cmpl	$3, -4(%rbp)
    jle	L50
    movl	$0, -4(%rbp)
    jmp	L51
L54:
    movl	-4(%rbp), %eax
    leal	44(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    jp	L52
    movabsq	$-4616189618054758400, %rax
    jmp	L53
L52:
    movl	$0, %eax
L53:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L51:
    cmpl	$3, -4(%rbp)
    jle	L54
    movl	$0, -4(%rbp)
    jmp	L55
L59:
    movl	-4(%rbp), %eax
    leal	48(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L89
    movabsq	$-4616189618054758400, %rax
    jmp	L58
L89:
    movl	$0, %eax
L58:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L55:
    cmpl	$3, -4(%rbp)
    jle	L59
    movl	$0, -4(%rbp)
    jmp	L60
L64:
    movl	-4(%rbp), %eax
    leal	52(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jb	L90
    movabsq	$-4616189618054758400, %rax
    jmp	L63
L90:
    movl	$0, %eax
L63:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L60:
    cmpl	$3, -4(%rbp)
    jle	L64
    movl	$0, -4(%rbp)
    jmp	L65
L69:
    movl	-4(%rbp), %eax
    leal	56(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	s2(,%rax,8), %rax
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    jbe	L91
    movabsq	$-4616189618054758400, %rax
    jmp	L68
L91:
    movl	$0, %eax
L68:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L65:
    cmpl	$3, -4(%rbp)
    jle	L69
    movl	$0, -4(%rbp)
    jmp	L70
L74:
    movl	-4(%rbp), %eax
    leal	60(%rax), %ecx
    movl	-4(%rbp), %eax
    cltq
    movq	s1(,%rax,8), %rax
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    movq	s2(,%rdx,8), %rdx
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    jb	L92
    movabsq	$-4616189618054758400, %rax
    jmp	L73
L92:
    movl	$0, %eax
L73:
    movslq	%ecx, %rdx
    movq	%rax, s3(,%rdx,8)
    addl	$1, -4(%rbp)
L70:
    cmpl	$3, -4(%rbp)
    jle	L74
    popq	%rbp
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movabsq	$4617315517961601024, %rax
    movq	%rax, $s1(%rip)
    movabsq	$4618441417868443648, %rax
    movq	%rax, $s1     +     8(%rip)
    movabsq	$4617315517961601024, %rax
    movq	%rax, $s1     +     16(%rip)
    movabsq	$9221120237041090560, %rax
    movq	%rax, $s1     +     24(%rip)
    movabsq	$4618441417868443648, %rax
    movq	%rax, $s2(%rip)
    movabsq	$4617315517961601024, %rax
    movq	%rax, $s2     +     8(%rip)
    movabsq	$4617315517961601024, %rax
    movq	%rax, $s2     +     16(%rip)
    movabsq	$4617315517961601024, %rax
    movq	%rax, $s2     +     24(%rip)
    call	foo
    movl	$0, -4(%rbp)
    jmp	L94
L104:
    cmpl	$47, -4(%rbp)
    jle	L95
    movl	-4(%rbp), %eax
    andl	$3, %eax
    cmpl	$3, %eax
    jne	L95
    movl	-4(%rbp), %eax
    cltq
    movq	s3(,%rax,8), %rax
    movl	$0, %edx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L106
    movl	$0, %edx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    je	L98
L106:
    call	abort
L95:
    movl	-4(%rbp), %eax
    cltq
    movq	s3(,%rax,8), %rdx
    movl	-4(%rbp), %eax
    andl	$4, %eax
    testl	%eax, %eax
    je	L99
    movl	-4(%rbp), %eax
    leal	7(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$3, %eax
    cltq
    movl	masks.2296(,%rax,4), %eax
    notl	%eax
    jmp	L100
L99:
    movl	-4(%rbp), %eax
    leal	7(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$3, %eax
    cltq
    movl	masks.2296(,%rax,4), %eax
L100:
    movl	-4(%rbp), %ecx
    andl	$3, %ecx
    sarx	%ecx, %eax, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L101
    movabsq	$-4616189618054758400, %rax
    jmp	L102
L101:
    movl	$0, %eax
L102:
    vmovq	%rdx, %xmm4
    vmovq	%rax, %xmm5
    vucomisd	%xmm5, %xmm4
    jp	L107
    vmovq	%rdx, %xmm6
    vmovq	%rax, %xmm7
    vucomisd	%xmm7, %xmm6
    je	L98
L107:
    call	abort
L98:
    addl	$1, -4(%rbp)
L94:
    cmpl	$63, -4(%rbp)
    jle	L104
    movl	$0, %eax
    leave
    ret
masks.2296:
    .long	2
    .long	6
    .long	1
    .long	5
    .long	3
    .long	8
    .long	2
    .long	1
