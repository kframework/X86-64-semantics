    .file	"memops-asm.c"
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
    .globl	my_memcpy
my_memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L7
L8:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L7:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L8
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	my_bcopy
my_bcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jb	L11
    jmp	L12
L13:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L12:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L13
    jmp	L17
L11:
    movq	-40(%rbp), %rax
    addq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    addq	%rax, -8(%rbp)
    jmp	L15
L16:
    subq	$1, -16(%rbp)
    subq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movb	%dl, (%rax)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L16
L17:
    nop
    popq	%rbp
    ret
    .globl	my_memmove
my_memmove:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jb	L19
    jmp	L20
L21:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L21
    jmp	L22
L19:
    movq	-40(%rbp), %rax
    addq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    addq	%rax, -8(%rbp)
    jmp	L23
L24:
    subq	$1, -16(%rbp)
    subq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movb	%dl, (%rax)
L23:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L24
L22:
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	my_memset
my_memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L27
L28:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L27:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	my_bzero
my_bzero:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L31
L32:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movb	$0, (%rax)
L31:
    movq	-32(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -32(%rbp)
    testq	%rax, %rax
    jne	L32
    nop
    popq	%rbp
    ret
    .globl	my_memcpy
my_memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-40(%rbp), %rdx
    movq	-32(%rbp), %rcx
    movq	-24(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	my_memcpy
    movq	%rax, -8(%rbp)
    movl $inside_main(%rip), %eax
    testl	%eax, %eax
    je	L34
    call	abort
L34:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	my_bcopy
my_bcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	my_bcopy
    movl $inside_main(%rip), %eax
    testl	%eax, %eax
    je	L38
    call	abort
L38:
    nop
    leave
    ret
    .globl	my_memset
my_memset:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-40(%rbp), %rdx
    movl	-28(%rbp), %ecx
    movq	-24(%rbp), %rax
    movl	%ecx, %esi
    movq	%rax, %rdi
    call	my_memset
    movq	%rax, -8(%rbp)
    movl $inside_main(%rip), %eax
    testl	%eax, %eax
    je	L40
    call	abort
L40:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	my_bzero
my_bzero:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	my_bzero
    movl $inside_main(%rip), %eax
    testl	%eax, %eax
    je	L44
    call	abort
L44:
    nop
    leave
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
    .globl	a
    .data
a:
    .string	"foobar"
    .zero	25
    .globl	x
x:
    .string	"foobar"
    .zero	57
    .comm	y,64,32
    .globl	i
i:
    .long	39
    .globl	j
j:
    .long	6
    .globl	k
k:
    .long	4
    .section	.rodata
LC0:
    .string	"foXXXXfoobar"
LC1:
    .string	"fooXXXXfobar"
LC2:
    .string	"fooX"
    .string	""
    .string	"Xfobar"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $a(%rip), %rax
    movq	%rax, -80(%rbp)
    movq	a + $8(%rip), %rax
    movq	%rax, -72(%rbp)
    movq	a + $16(%rip), %rax
    movq	%rax, -64(%rbp)
    movq	a + $24(%rip), %rax
    movq	%rax, -56(%rbp)
    movq	$0, -48(%rbp)
    movq	$0, -40(%rbp)
    movq	$0, -32(%rbp)
    movq	$0, -24(%rbp)
    movb	$120, -48(%rbp)
    movl	$1, $inside_main(%rip)
    leaq	-80(%rbp), %rax
    movl	$32, %edx
    movl	$x, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L49
    movzbl	-48(%rbp), %eax
    cmpb	$120, %al
    jne	L49
    movl	$x + 32, %ecx
    leaq	-48(%rbp), %rax
    addq	$1, %rax
    movl	$31, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L50
L49:
    call	abort
L50:
    movl $i(%rip), %eax
    cltq
    movl	$y, %ecx
    movl	$x, %esi
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	my_memcpy
    cmpq	$y, %rax
    jne	L51
    movl	$64, %edx
    movl	$y, %esi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    je	L52
L51:
    call	abort
L52:
    movl $j(%rip), %eax
    cltq
    movl	$y + 6, %ecx
    movq	%rax, %rdx
    movl	$x, %esi
    movq	%rcx, %rdi
    call	my_memcpy
    movl	$y + 6, %edx
    cmpq	%rdx, %rax
    jne	L53
    movl	$6, %edx
    movl	$y, %esi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L53
    movl	$y + 6, %eax
    movl	$58, %edx
    movq	%rax, %rsi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    je	L54
L53:
    call	abort
L54:
    movl $k(%rip), %eax
    cltq
    movl	$y + 2, %ecx
    movq	%rax, %rdx
    movl	$88, %esi
    movq	%rcx, %rdi
    call	my_memset
    movl	$y + 2, %edx
    cmpq	%rdx, %rax
    jne	L55
    movl	$13, %edx
    movl	$LC0, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L56
L55:
    call	abort
L56:
    movl	$y + 2, %ecx
    movl	$y + 1, %eax
    movl	$6, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	my_bcopy
    movl	$13, %edx
    movl	$LC1, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L57
    call	abort
L57:
    movl	$y + 4, %eax
    movw	$0, (%rax)
    movl	$13, %edx
    movl	$LC2, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L60
    call	abort
L60:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L59
    call	__stack_chk_fail
L59:
    leave
    ret
