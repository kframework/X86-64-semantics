dnan:
    .long	0
    .long	3221225472
    .long	32767
    .long	0
x:
    .long	0
    .long	2147483648
    .long	16383
    .long	0
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
    fldt $dnan(%rip)
    fldt $dnan(%rip)
    fucomi	%st(1), %st
    jp	L30
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L3
    call	abort
L30:
    fstp	%st(0)
    fstp	%st(0)
L3:
    fldt $dnan(%rip)
    fldt $x(%rip)
    fucomi	%st(1), %st
    jp	L31
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L25
    jmp	L19
L31:
    fstp	%st(0)
    fstp	%st(0)
L19:
    movabsq	$-9223372036854775808, %rax
    movl	$16383, %edx
    movq	%rax, $x(%rip)
    movl	%edx, $x      +      8(%rip)
    fldt $dnan(%rip)
    fldt $x(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    ja	L20
    jmp	L26
L25:
    call	abort
L20:
    call	abort
L26:
    fldt $dnan(%rip)
    fldt $x(%rip)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jbe	L27
    call	abort
L27:
    fldt $dnan(%rip)
    fldt $x(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jb	L28
    call	abort
L28:
    fldt $dnan(%rip)
    fldt $x(%rip)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jb	L29
    call	abort
L29:
    fldt $dnan(%rip)
    fldt $x(%rip)
    fucomi	%st(1), %st
    jp	L32
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L16
    call	abort
L32:
    fstp	%st(0)
    fstp	%st(0)
L16:
    movl	$0, %edi
    call	exit
