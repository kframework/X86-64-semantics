    .file	"abs-2.c"
    .text
    .globl	abs
abs:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    cltd
    movl	%edx, %eax
    xorl	-4(%rbp), %eax
    subl	%edx, %eax
    popq	%rbp
    ret
    .globl	labs
labs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    popq	%rbp
    ret
    .globl	llabs
llabs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    popq	%rbp
    ret
    .globl	imaxabs
imaxabs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
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
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$144, %rsp
    movl	$0, -140(%rbp)
    movl	$1, -136(%rbp)
    movl	$-1, -132(%rbp)
    movl	$-2147483647, -128(%rbp)
    movl	$2147483647, -124(%rbp)
    movq	$0, -120(%rbp)
    movq	$1, -112(%rbp)
    movq	$-1, -104(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -96(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -88(%rbp)
    movq	$0, -80(%rbp)
    movq	$1, -72(%rbp)
    movq	$-1, -64(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -56(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -48(%rbp)
    movq	$0, -40(%rbp)
    movq	$1, -32(%rbp)
    movq	$-1, -24(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -16(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -8(%rbp)
    movl	-140(%rbp), %eax
    testl	%eax, %eax
    je	L13
    call	abort
L13:
    movl	-136(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$1, %eax
    je	L14
    call	abort
L14:
    movl	-132(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$1, %eax
    je	L15
    call	abort
L15:
    movl	-128(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$2147483647, %eax
    je	L16
    call	abort
L16:
    movl	-124(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$2147483647, %eax
    je	L17
    call	abort
L17:
    movq	-120(%rbp), %rax
    testq	%rax, %rax
    je	L18
    call	abort
L18:
    movq	-112(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L19
    call	abort
L19:
    movq	-104(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L20
    call	abort
L20:
    movq	-96(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L21
    call	abort
L21:
    movq	-88(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L22
    call	abort
L22:
    movq	-80(%rbp), %rax
    testq	%rax, %rax
    je	L23
    call	abort
L23:
    movq	-72(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L24
    call	abort
L24:
    movq	-64(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L25
    call	abort
L25:
    movq	-56(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L26
    call	abort
L26:
    movq	-48(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L27
    call	abort
L27:
    movq	-40(%rbp), %rax
    testq	%rax, %rax
    je	L28
    call	abort
L28:
    movq	-32(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L29
    call	abort
L29:
    movq	-24(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L30
    call	abort
L30:
    movq	-16(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L31
    call	abort
L31:
    movq	-8(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L33
    call	abort
L33:
    nop
    leave
    ret
