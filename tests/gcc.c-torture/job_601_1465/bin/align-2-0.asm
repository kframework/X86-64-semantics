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
    .globl	s_c_s
    .data
s_c_s:
    .byte	97
    .zero	1
    .value	13
    .globl	s_c_i
s_c_i:
    .byte	98
    .zero	3
    .long	14
    .globl	s_s_i
s_s_i:
    .value	15
    .zero	2
    .long	16
    .globl	s_c_f
s_c_f:
    .byte	99
    .zero	3
    .long	1099431936
    .globl	s_s_f
s_s_f:
    .value	18
    .zero	2
    .long	1100480512
    .globl	s_c_d
s_c_d:
    .byte	100
    .zero	7
    .long	0
    .long	1077149696
    .globl	s_s_d
s_s_d:
    .value	21
    .zero	6
    .long	0
    .long	1077280768
    .globl	s_i_d
s_i_d:
    .long	23
    .zero	4
    .long	0
    .long	1077411840
    .globl	s_f_d
s_f_d:
    .long	1103626240
    .zero	4
    .long	0
    .long	1077542912
    .globl	s_c_ld
s_c_ld:
    .byte	101
    .zero	7
    .long	0
    .long	1077608448
    .globl	s_s_ld
s_s_ld:
    .value	28
    .zero	6
    .long	0
    .long	1077739520
    .globl	s_i_ld
s_i_ld:
    .long	30
    .zero	4
    .long	0
    .long	1077870592
    .globl	s_f_ld
s_f_ld:
    .long	1107296256
    .zero	4
    .long	0
    .long	1077968896
    .globl	s_d_ld
s_d_ld:
    .long	0
    .long	1078001664
    .long	0
    .long	1078034432
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	s_c_s(%rip), %eax
    cmpb	$97, %al
    je	L54
    call	abort
L54:
    movzwl	s_c_s + 2(%rip), %eax
    cmpw	$13, %ax
    je	L55
    call	abort
L55:
    movzbl	s_c_i(%rip), %eax
    cmpb	$98, %al
    je	L56
    call	abort
L56:
    movl	s_c_i + 4(%rip), %eax
    cmpl	$14, %eax
    je	L57
    call	abort
L57:
    movzwl	s_s_i(%rip), %eax
    cmpw	$15, %ax
    je	L58
    call	abort
L58:
    movl	s_s_i + 4(%rip), %eax
    cmpl	$16, %eax
    je	L59
    call	abort
L59:
    movzbl	s_c_f(%rip), %eax
    cmpb	$99, %al
    je	L60
    call	abort
L60:
    vmovss	s_c_f + 4(%rip), %xmm0
    vmovss	LC0(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L97
    vmovss	LC0(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L111
L97:
    call	abort
L111:
    movzwl	s_s_f(%rip), %eax
    cmpw	$18, %ax
    je	L63
    call	abort
L63:
    vmovss	s_s_f + 4(%rip), %xmm0
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L98
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L112
L98:
    call	abort
L112:
    movzbl	s_c_d(%rip), %eax
    cmpb	$100, %al
    je	L66
    call	abort
L66:
    vmovsd	s_c_d + 8(%rip), %xmm0
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L99
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L113
L99:
    call	abort
L113:
    movzwl	s_s_d(%rip), %eax
    cmpw	$21, %ax
    je	L69
    call	abort
L69:
    vmovsd	s_s_d + 8(%rip), %xmm0
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L100
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L114
L100:
    call	abort
L114:
    movl	s_i_d(%rip), %eax
    cmpl	$23, %eax
    je	L72
    call	abort
L72:
    vmovsd	s_i_d + 8(%rip), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L101
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L115
L101:
    call	abort
L115:
    vmovss	s_f_d(%rip), %xmm0
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L102
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L116
L102:
    call	abort
L116:
    vmovsd	s_f_d + 8(%rip), %xmm0
    vmovsd	LC6(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L103
    vmovsd	LC6(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L117
L103:
    call	abort
L117:
    movzbl	s_c_ld(%rip), %eax
    cmpb	$101, %al
    je	L79
    call	abort
L79:
    vmovsd	s_c_ld + 8(%rip), %xmm0
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L104
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L118
L104:
    call	abort
L118:
    movzwl	s_s_ld(%rip), %eax
    cmpw	$28, %ax
    je	L82
    call	abort
L82:
    vmovsd	s_s_ld + 8(%rip), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L105
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L119
L105:
    call	abort
L119:
    movl	s_i_ld(%rip), %eax
    cmpl	$30, %eax
    je	L85
    call	abort
L85:
    vmovsd	s_i_ld + 8(%rip), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L106
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L120
L106:
    call	abort
L120:
    vmovss	s_f_ld(%rip), %xmm0
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L107
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L121
L107:
    call	abort
L121:
    vmovsd	s_f_ld + 8(%rip), %xmm0
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L108
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L122
L108:
    call	abort
L122:
    vmovsd	s_d_ld(%rip), %xmm0
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L109
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L123
L109:
    call	abort
L123:
    vmovsd	s_d_ld + 8(%rip), %xmm0
    vmovsd	LC13(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L110
    vmovsd	LC13(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L124
L110:
    call	abort
L124:
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	1099431936
LC1:
    .long	1100480512
LC2:
    .long	0
    .long	1077149696
LC3:
    .long	0
    .long	1077280768
LC4:
    .long	0
    .long	1077411840
LC5:
    .long	1103626240
LC6:
    .long	0
    .long	1077542912
LC7:
    .long	0
    .long	1077608448
LC8:
    .long	0
    .long	1077739520
LC9:
    .long	0
    .long	1077870592
LC10:
    .long	1107296256
LC11:
    .long	0
    .long	1077968896
LC12:
    .long	0
    .long	1078001664
LC13:
    .long	0
    .long	1078034432
