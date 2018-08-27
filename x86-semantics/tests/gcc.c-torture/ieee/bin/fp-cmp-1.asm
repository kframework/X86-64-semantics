dnan:
    .long	0
    .long	2146959360
x:
    .long	0
    .long	1072693248
leave:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    call	exit
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$leave, %esi
    movl	$8, %edi
    call	signal
    movq $dnan(%rip), %rax
    movq $dnan(%rip), %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L3
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jne	L3
    call	abort
L3:
    movq $dnan(%rip), %rax
    movq $x(%rip), %rdx
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    jp	L19
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    je	L25
L19:
    movabsq	$4607182418800017408, %rax
    movq	%rax, $x(%rip)
    movq $dnan(%rip), %rdx
    movq $x(%rip), %rax
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    ja	L20
    jmp	L26
L25:
    call	abort
L20:
    call	abort
L26:
    movq $dnan(%rip), %rax
    movq $x(%rip), %rdx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jbe	L27
    call	abort
L27:
    movq $dnan(%rip), %rdx
    movq $x(%rip), %rax
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    jb	L28
    call	abort
L28:
    movq $dnan(%rip), %rax
    movq $x(%rip), %rdx
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    jb	L29
    call	abort
L29:
    movq $dnan(%rip), %rax
    movq $x(%rip), %rdx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L16
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jne	L16
    call	abort
L16:
    movl	$0, %edi
    call	exit
