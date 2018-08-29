    .text
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
    jmp	L2
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L4
L3:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L5
    movl	$0, %eax
L4:
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
    jmp	L10
L11:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
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
    jmp	L14
L15:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L14:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L15
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
    jle	L23
    cmpl	$122, -4(%rbp)
    jg	L23
    movl	$1, %eax
    jmp	L24
L23:
    cmpl	$64, -4(%rbp)
    jle	L25
    cmpl	$90, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L24
L25:
    cmpl	$47, -4(%rbp)
    jle	L26
    cmpl	$57, -4(%rbp)
    jg	L26
    movl	$1, %eax
    jmp	L24
L26:
    movl	$0, %eax
L24:
    popq	%rbp
    ret
conjf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    movq	%rax, -24(%rbp)
    vmovss	-24(%rbp), %xmm1
    vmovss	-20(%rbp), %xmm0
    vmovss	%xmm1, -32(%rbp)
    vmovss	%xmm0, -28(%rbp)
    vmovss	-32(%rbp), %xmm0
    vmovss	%xmm0, -8(%rbp)
    vmovss	-28(%rbp), %xmm0
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm1
    vmovss	LC0(%rip), %xmm0
    vxorps	%xmm1, %xmm0, %xmm0
    vmovss	-8(%rbp), %xmm1
    vmovss	%xmm1, -40(%rbp)
    vmovss	%xmm0, -36(%rbp)
    movq	-40(%rbp), %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
conj:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -32(%rbp)
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	-32(%rbp), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vxorpd	%xmm1, %xmm0, %xmm0
    vmovsd	-16(%rbp), %xmm1
    vmovq	%xmm0, %rdx
    vmovq	%xmm1, %rax
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    popq	%rbp
    ret
conjl:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -32(%rbp)
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	-32(%rbp), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vxorpd	%xmm1, %xmm0, %xmm0
    vmovsd	-16(%rbp), %xmm1
    vmovq	%xmm0, %rdx
    vmovq	%xmm1, %rax
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    popq	%rbp
    ret
crealf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    vmovss	-8(%rbp), %xmm1
    vmovss	-4(%rbp), %xmm0
    vmovss	%xmm1, -16(%rbp)
    vmovss	%xmm0, -12(%rbp)
    vmovss	-16(%rbp), %xmm0
    popq	%rbp
    ret
creal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
creall:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
cimagf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    vmovss	-8(%rbp), %xmm1
    vmovss	-4(%rbp), %xmm0
    vmovss	%xmm1, -16(%rbp)
    vmovss	%xmm0, -12(%rbp)
    vmovss	-12(%rbp), %xmm0
    popq	%rbp
    ret
cimag:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
cimagl:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, inside_main(%rip)
    call	main_test
    movl	$0, inside_main(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	link_error
link_error:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .section	.rodata
LC2:
    .long	1065353216
    .long	1073741824
LC3:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$88, %rsp
    vmovss	LC2(%rip), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovss	LC2 + 4(%rip), %xmm0
    vmovss	%xmm0, -36(%rbp)
    vmovsd	LC3(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	LC3 + 8(%rip), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	LC3(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	LC3 + 8(%rip), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -56(%rbp)
    vmovss	%xmm0, -52(%rbp)
    movq	-56(%rbp), %rax
    vmovq	%rax, %xmm0
    call	conjf
    vmovq	%xmm0, %rax
    movq	%rax, -64(%rbp)
    vmovss	-64(%rbp), %xmm1
    vmovss	-60(%rbp), %xmm0
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L49
    call	abort
L49:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovaps	%xmm0, %xmm2
    vmovss	LC0(%rip), %xmm0
    vxorps	%xmm2, %xmm0, %xmm0
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L50
    call	abort
L50:
    movq	LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	conjf
    vmovq	%xmm0, %rax
    movq	%rax, -72(%rbp)
    vmovss	-72(%rbp), %xmm1
    vmovss	-68(%rbp), %xmm0
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L94
    call	link_error
L94:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -80(%rbp)
    vmovss	%xmm0, -76(%rbp)
    movq	-80(%rbp), %rax
    vmovq	%rax, %xmm0
    call	crealf
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L95
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L120
L95:
    call	abort
L120:
    vmovss	-40(%rbp), %xmm0
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L96
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L121
L96:
    call	abort
L121:
    movq	LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	crealf
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L97
    vmovss	LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L98
L97:
    call	link_error
L98:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -88(%rbp)
    vmovss	%xmm0, -84(%rbp)
    movq	-88(%rbp), %rax
    vmovq	%rax, %xmm0
    call	cimagf
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L99
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L122
L99:
    call	abort
L122:
    vmovss	-36(%rbp), %xmm0
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L100
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L123
L100:
    call	abort
L123:
    movq	LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	cimagf
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L101
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L102
L101:
    call	link_error
L102:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	conj
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L64
    call	abort
L64:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovapd	%xmm0, %xmm2
    vmovsd	LC1(%rip), %xmm0
    vxorpd	%xmm2, %xmm0, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L65
    call	abort
L65:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	conj
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L103
    call	link_error
L103:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	creal
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jp	L104
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    je	L124
L104:
    call	abort
L124:
    vmovsd	-32(%rbp), %xmm0
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L105
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L125
L105:
    call	abort
L125:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	creal
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    jp	L106
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    je	L107
L106:
    call	link_error
L107:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	cimag
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    jp	L108
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L126
L108:
    call	abort
L126:
    vmovsd	-24(%rbp), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L109
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L127
L109:
    call	abort
L127:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	cimag
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L110
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L111
L110:
    call	link_error
L111:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	conjl
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L79
    call	abort
L79:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovapd	%xmm0, %xmm2
    vmovsd	LC1(%rip), %xmm0
    vxorpd	%xmm2, %xmm0, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L80
    call	abort
L80:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	conjl
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L112
    call	link_error
L112:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	creall
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L113
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L128
L113:
    call	abort
L128:
    vmovsd	-16(%rbp), %xmm0
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L114
    vmovsd	LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L129
L114:
    call	abort
L129:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	creall
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jp	L115
    vmovsd	LC7(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    je	L116
L115:
    call	link_error
L116:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	cimagl
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    jp	L117
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    je	L130
L117:
    call	abort
L130:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L118
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L131
L118:
    call	abort
L131:
    movq	LC3(%rip), %rax
    vmovsd	LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	cimagl
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    jp	L119
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jne	L119
    jmp	L132
L119:
    call	link_error
L132:
    nop
    leave
    ret
    .section	.rodata
LC0:
    .long	2147483648
    .long	0
    .long	0
    .long	0
LC1:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
LC4:
    .long	1065353216
LC5:
    .long	3221225472
LC6:
    .long	1073741824
LC7:
    .long	0
    .long	1072693248
LC8:
    .long	0
    .long	-1073741824
LC9:
    .long	0
    .long	1073741824
