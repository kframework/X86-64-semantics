    .text
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
    jmp	L5
L8:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L6
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L7
L6:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L5:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L8
    movl	$0, %eax
L7:
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
    jmp	L10
L11:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jb	L14
    jmp	L15
L16:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L16
    jmp	L20
L14:
    movq	-40(%rbp), %rax
    addq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    addq	%rax, -8(%rbp)
    jmp	L18
L19:
    subq	$1, -16(%rbp)
    subq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movb	%dl, (%rax)
L18:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L19
L20:
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
    jb	L22
    jmp	L23
L24:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L23:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L24
    jmp	L25
L22:
    movq	-40(%rbp), %rax
    addq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    addq	%rax, -8(%rbp)
    jmp	L26
L27:
    subq	$1, -16(%rbp)
    subq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
L25:
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
    jmp	L30
L31:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L30:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
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
    jmp	L34
L35:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movb	$0, (%rax)
L34:
    movq	-32(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -32(%rbp)
    testq	%rax, %rax
    jne	L35
    nop
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
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
    movl	inside_main(%rip), %eax
    testl	%eax, %eax
    je	L37
    call	abort
L37:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	bcopy
bcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	my_bcopy
    movl	inside_main(%rip), %eax
    testl	%eax, %eax
    je	L41
    call	abort
L41:
    nop
    leave
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
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
    movl	inside_main(%rip), %eax
    testl	%eax, %eax
    je	L43
    call	abort
L43:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	bzero
bzero:
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
    movl	inside_main(%rip), %eax
    testl	%eax, %eax
    je	L47
    call	abort
L47:
    nop
    leave
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
    movq	a(%rip), %rax
    movq	%rax, -80(%rbp)
    movq	a + 8(%rip), %rax
    movq	%rax, -72(%rbp)
    movq	a + 16(%rip), %rax
    movq	%rax, -64(%rbp)
    movq	a + 24(%rip), %rax
    movq	%rax, -56(%rbp)
    movq	$0, -48(%rbp)
    movq	$0, -40(%rbp)
    movq	$0, -32(%rbp)
    movq	$0, -24(%rbp)
    movb	$120, -48(%rbp)
    movl	$1, inside_main(%rip)
    leaq	-80(%rbp), %rax
    movl	$32, %edx
    movl	$x, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L52
    movzbl	-48(%rbp), %eax
    cmpb	$120, %al
    jne	L52
    movl	$x + 32, %ecx
    leaq	-48(%rbp), %rax
    addq	$1, %rax
    movl	$31, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L53
L52:
    call	abort
L53:
    movl	i(%rip), %eax
    cltq
    movl	$y, %ecx
    movl	$x, %esi
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	memcpy
    cmpq	$y, %rax
    jne	L54
    movl	$64, %edx
    movl	$y, %esi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    je	L55
L54:
    call	abort
L55:
    movl	j(%rip), %eax
    cltq
    movl	$y + 6, %ecx
    movq	%rax, %rdx
    movl	$x, %esi
    movq	%rcx, %rdi
    call	memcpy
    movl	$y + 6, %edx
    cmpq	%rdx, %rax
    jne	L56
    movl	$6, %edx
    movl	$y, %esi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L56
    movl	$y + 6, %eax
    movl	$58, %edx
    movq	%rax, %rsi
    movl	$x, %edi
    call	memcmp
    testl	%eax, %eax
    je	L57
L56:
    call	abort
L57:
    movl	k(%rip), %eax
    cltq
    movl	$y + 2, %ecx
    movq	%rax, %rdx
    movl	$88, %esi
    movq	%rcx, %rdi
    call	memset
    movl	$y + 2, %edx
    cmpq	%rdx, %rax
    jne	L58
    movl	$13, %edx
    movl	$LC0, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L59
L58:
    call	abort
L59:
    movl	$y + 2, %ecx
    movl	$y + 1, %eax
    movl	$6, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	bcopy
    movl	$13, %edx
    movl	$LC1, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L60
    call	abort
L60:
    movl	$y + 4, %eax
    movw	$0, (%rax)
    movl	$13, %edx
    movl	$LC2, %esi
    movl	$y, %edi
    call	memcmp
    testl	%eax, %eax
    je	L63
    call	abort
L63:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L62
    call	__stack_chk_fail
L62:
    leave
    ret
