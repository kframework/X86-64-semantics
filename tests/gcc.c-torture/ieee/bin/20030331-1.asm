x:
    .long	3217031168
rintf:
    pushq	%rbp
    movq	%rsp, %rbp
    movl $x(%rip), %eax
    vmovss $LC0(%rip), %xmm0
    vmovd	%eax, %xmm1
    vandps	%xmm0, %xmm1, %xmm1
    vmovaps	%xmm1, %xmm0
    movl $LC1(%rip), %eax
    vmovd	%eax, %xmm2
    vucomiss	%xmm0, %xmm2
    jbe	L2
    movl $x(%rip), %eax
    movl $LC2(%rip), %edx
    vmovd	%eax, %xmm3
    vmovd	%edx, %xmm4
    vucomiss	%xmm4, %xmm3
    jbe	L11
    movl $x(%rip), %edx
    movl $LC1(%rip), %eax
    vmovd	%edx, %xmm6
    vmovd	%eax, %xmm7
    vaddss	%xmm7, %xmm6, %xmm5
    vmovd	%xmm5, %eax
    movl	%eax, $x(%rip)
    movl $x(%rip), %eax
    movl $LC1(%rip), %edx
    vmovd	%eax, %xmm3
    vmovd	%edx, %xmm4
    vsubss	%xmm4, %xmm3, %xmm2
    vmovd	%xmm2, %eax
    movl	%eax, $x(%rip)
    jmp	L2
L11:
    movl $x(%rip), %edx
    movl $LC2(%rip), %eax
    vmovd	%eax, %xmm5
    vmovd	%edx, %xmm6
    vucomiss	%xmm6, %xmm5
    jbe	L2
    movl $LC1(%rip), %eax
    movl $x(%rip), %edx
    vmovd	%eax, %xmm1
    vmovd	%edx, %xmm2
    vsubss	%xmm2, %xmm1, %xmm7
    vmovd	%xmm7, %eax
    movl	%eax, $x(%rip)
    movl $x(%rip), %eax
    movl $LC1(%rip), %edx
    vmovd	%eax, %xmm4
    vmovd	%edx, %xmm5
    vsubss	%xmm5, %xmm4, %xmm3
    vmovd	%xmm3, %eax
    vmovss $LC3(%rip), %xmm0
    xorl	$-2147483648, %eax
    movl	%eax, $x(%rip)
L2:
    movl $x(%rip), %eax
    vmovd	%eax, %xmm0
    popq	%rbp
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	rintf
    vucomiss $LC4(%rip), %xmm0
    jp	L15
    vucomiss $LC4(%rip), %xmm0
    je	L16
L15:
    call	abort
L16:
    movl	$0, %edi
    call	exit
TWO23.2243:
    .long	1258291200
LC0:
    .long	2147483647
    .long	0
    .long	0
    .long	0
LC1:
    .long	1258291200
LC2:
    .long	0
LC3:
    .long	2147483648
    .long	0
    .long	0
    .long	0
LC4:
    .long	3221225472
