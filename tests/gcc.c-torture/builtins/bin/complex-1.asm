    .file	"complex-1.c"
    .text
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
    vmovss	$LC0(%rip), %xmm0
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
    vmovsd	$LC1(%rip), %xmm0
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
    vmovsd	$LC1(%rip), %xmm0
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
    movl	$1, $inside_main(%rip)
    call	main_test
    movl	$0, $inside_main(%rip)
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
    subq	$96, %rsp
    vmovss	$LC2(%rip), %xmm0
    vmovss	%xmm0, -40(%rbp)
    vmovss	$LC2 + 4(%rip), %xmm0
    vmovss	%xmm0, -36(%rbp)
    vmovsd	$LC3(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	$LC3 + 8(%rip), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	$LC3(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	$LC3 + 8(%rip), %xmm0
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
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L23
    call	abort
L23:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovaps	%xmm0, %xmm2
    vmovss	$LC0(%rip), %xmm0
    vxorps	%xmm2, %xmm0, %xmm0
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L24
    call	abort
L24:
    movq	$LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	conjf
    vmovq	%xmm0, %rax
    movq	%rax, -72(%rbp)
    vmovss	-72(%rbp), %xmm1
    vmovss	-68(%rbp), %xmm0
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovss	$LC4(%rip), %xmm2
    vucomiss	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovss	$LC5(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L68
    call	link_error
L68:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -80(%rbp)
    vmovss	%xmm0, -76(%rbp)
    movq	-80(%rbp), %rax
    vmovq	%rax, %xmm0
    call	crealf
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L69
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L94
L69:
    call	abort
L94:
    vmovss	-40(%rbp), %xmm0
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L70
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L95
L70:
    call	abort
L95:
    movq	$LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	crealf
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L71
    vmovss	$LC4(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L72
L71:
    call	link_error
L72:
    vmovss	-40(%rbp), %xmm1
    vmovss	-36(%rbp), %xmm0
    vmovss	%xmm1, -88(%rbp)
    vmovss	%xmm0, -84(%rbp)
    movq	-88(%rbp), %rax
    vmovq	%rax, %xmm0
    call	cimagf
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L73
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L96
L73:
    call	abort
L96:
    vmovss	-36(%rbp), %xmm0
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L74
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L97
L74:
    call	abort
L97:
    movq	$LC2(%rip), %rax
    vmovq	%rax, %xmm0
    call	cimagf
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L75
    vmovss	$LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L76
L75:
    call	link_error
L76:
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
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L38
    call	abort
L38:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovapd	%xmm0, %xmm2
    vmovsd	$LC1(%rip), %xmm0
    vxorpd	%xmm2, %xmm0, %xmm0
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L39
    call	abort
L39:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	conj
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L77
    call	link_error
L77:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	creal
    vmovq	%xmm0, %rax
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jp	L78
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    je	L98
L78:
    call	abort
L98:
    vmovsd	-32(%rbp), %xmm0
    vmovsd	$LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L79
    vmovsd	$LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L99
L79:
    call	abort
L99:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	creal
    vmovq	%xmm0, %rax
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    jp	L80
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    je	L81
L80:
    call	link_error
L81:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	cimag
    vmovq	%xmm0, %rax
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    jp	L82
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L100
L82:
    call	abort
L100:
    vmovsd	-24(%rbp), %xmm0
    vmovsd	$LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L83
    vmovsd	$LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L101
L83:
    call	abort
L101:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	cimag
    vmovq	%xmm0, %rax
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L84
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L85
L84:
    call	link_error
L85:
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
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L53
    call	abort
L53:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovapd	%xmm0, %xmm2
    vmovsd	$LC1(%rip), %xmm0
    vxorpd	%xmm2, %xmm0, %xmm0
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L54
    call	abort
L54:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	conjl
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rcx
    movq	%rax, %rdx
    movq	%rcx, %rax
    vmovq	%rdx, %xmm1
    vmovq	%rax, %xmm0
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    setp	%al
    movl	$1, %edx
    vmovsd	$LC7(%rip), %xmm2
    vucomisd	%xmm2, %xmm1
    cmove	%eax, %edx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    setp	%al
    movl	$1, %ecx
    vmovsd	$LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    cmovne	%ecx, %eax
    orl	%edx, %eax
    cmpb	$1, %al
    jne	L86
    call	link_error
L86:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	creall
    vmovq	%xmm0, %rax
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L87
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L102
L87:
    call	abort
L102:
    vmovsd	-16(%rbp), %xmm0
    vmovsd	$LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L88
    vmovsd	$LC7(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L103
L88:
    call	abort
L103:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	creall
    vmovq	%xmm0, %rax
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jp	L89
    vmovsd	$LC7(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    je	L90
L89:
    call	link_error
L90:
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-8(%rbp), %xmm0
    vmovq	%xmm1, %rax
    vmovq	%xmm0, %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    call	cimagl
    vmovq	%xmm0, %rax
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    jp	L91
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    je	L104
L91:
    call	abort
L104:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	$LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L92
    vmovsd	$LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L105
L92:
    call	abort
L105:
    movq	$LC3(%rip), %rax
    vmovsd	$LC3 + 8(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	cimagl
    vmovq	%xmm0, %rax
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    jp	L93
    vmovsd	$LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    jne	L93
    jmp	L106
L93:
    call	link_error
L106:
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
