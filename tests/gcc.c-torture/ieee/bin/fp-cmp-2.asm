fnan:
    .long	2143289344
x:
    .long	1065353216
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
    movl $fnan(%rip), %eax
    movl $fnan(%rip), %edx
    vmovd	%eax, %xmm0
    vmovd	%edx, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L3
    vmovd	%eax, %xmm2
    vmovd	%edx, %xmm3
    vucomiss	%xmm3, %xmm2
    jne	L3
    call	abort
L3:
    movl $fnan(%rip), %eax
    movl $x(%rip), %edx
    vmovd	%eax, %xmm4
    vmovd	%edx, %xmm5
    vucomiss	%xmm5, %xmm4
    jp	L19
    vmovd	%eax, %xmm6
    vmovd	%edx, %xmm7
    vucomiss	%xmm7, %xmm6
    je	L25
L19:
    movl $LC0(%rip), %eax
    movl	%eax, $x(%rip)
    movl $fnan(%rip), %edx
    movl $x(%rip), %eax
    vmovd	%eax, %xmm0
    vmovd	%edx, %xmm1
    vucomiss	%xmm1, %xmm0
    ja	L20
    jmp	L26
L25:
    call	abort
L20:
    call	abort
L26:
    movl $fnan(%rip), %eax
    movl $x(%rip), %edx
    vmovd	%eax, %xmm2
    vmovd	%edx, %xmm3
    vucomiss	%xmm3, %xmm2
    jbe	L27
    call	abort
L27:
    movl $fnan(%rip), %edx
    movl $x(%rip), %eax
    vmovd	%eax, %xmm4
    vmovd	%edx, %xmm5
    vucomiss	%xmm5, %xmm4
    jb	L28
    call	abort
L28:
    movl $fnan(%rip), %eax
    movl $x(%rip), %edx
    vmovd	%eax, %xmm6
    vmovd	%edx, %xmm7
    vucomiss	%xmm7, %xmm6
    jb	L29
    call	abort
L29:
    movl $fnan(%rip), %eax
    movl $x(%rip), %edx
    vmovd	%eax, %xmm0
    vmovd	%edx, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L16
    vmovd	%eax, %xmm2
    vmovd	%edx, %xmm3
    vucomiss	%xmm3, %xmm2
    jne	L16
    call	abort
L16:
    movl	$0, %edi
    call	exit
LC0:
    .long	1065353216
