    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl $LC0(%rip), %eax
    movl	%eax, -12(%rbp)
    movl	$0, -8(%rbp)
L5:
    movl	-12(%rbp), %edx
    movl $LC0(%rip), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm2
    vaddss	%xmm2, %xmm1, %xmm0
    vmovd	%xmm0, %eax
    movl	%eax, -4(%rbp)
    movl $LC0(%rip), %eax
    vmovd	%eax, %xmm3
    vucomiss	-4(%rbp), %xmm3
    jp	L2
    movl $LC0(%rip), %eax
    vmovd	%eax, %xmm4
    vucomiss	-4(%rbp), %xmm4
    jne	L2
    nop
    cmpl	$24, -8(%rbp)
    je	L6
    jmp	L8
L2:
    movl	-12(%rbp), %eax
    movl $LC1(%rip), %edx
    vmovd	%eax, %xmm6
    vmovd	%edx, %xmm7
    vdivss	%xmm7, %xmm6, %xmm5
    vmovd	%xmm5, %eax
    movl	%eax, -12(%rbp)
    addl	$1, -8(%rbp)
    jmp	L5
L8:
    call	abort
L6:
    movl	$0, %edi
    call	exit
LC0:
    .long	1065353216
LC1:
    .long	1073741824
