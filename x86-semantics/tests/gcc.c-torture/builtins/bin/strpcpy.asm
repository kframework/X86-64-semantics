    .text
    .globl	stpcpy
stpcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L2
L3:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L2:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
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
    jmp	L6
L9:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L7
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L8
L7:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L6:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L9
    movl	$0, %eax
L8:
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
    .globl	s1
    .section	.rodata
s1:
    .string	"123"
    .globl	p
    .bss
p:
    .zero	32
    .globl	s2
    .section	.rodata
LC0:
    .string	"defg"
    .data
s2:
    .quad	LC0
    .globl	s3
    .section	.rodata
LC1:
    .string	"FGH"
    .data
s3:
    .quad	LC1
    .globl	l1
l1:
    .quad	1
    .section	.rodata
LC2:
    .string	"abcde"
LC3:
    .string	"vwxyz"
LC4:
    .string	"wxyz"
LC5:
    .string	"a"
    .string	"cde"
LC6:
    .string	"a"
    .string	"cfghij"
LC7:
    .string	"z"
    .string	"23"
    .string	""
LC8:
    .string	"ABCDEFG"
LC9:
    .string	"abcFGH"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$8, -4(%rbp)
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p + 5, %edx
    movl	$p + 5, %eax
    cmpq	%rax, %rdx
    jne	L16
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L17
L16:
    call	abort
L17:
    movl	$LC3 + 1, %edx
    movl	$p + 16, %eax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	stpcpy
    movl	$p + 20, %edx
    cmpq	%rdx, %rax
    jne	L18
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L19
L18:
    call	abort
L19:
    movl	$p + 1, %eax
    movb	$0, (%rax)
    movq	%rax, %rdx
    movl	$p + 1, %eax
    cmpq	%rax, %rdx
    jne	L20
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L21
L20:
    call	abort
L21:
    movl	$p + 3, %eax
    movl	$1768449894, (%rax)
    movw	$106, 4(%rax)
    addq	$5, %rax
    movl	$p + 8, %edx
    cmpq	%rdx, %rax
    jne	L22
    movl	$9, %edx
    movl	$LC6, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L23
L22:
    call	abort
L23:
    addl	$1, -4(%rbp)
    movl	$p + 21, %eax
    movw	$13106, (%rax)
    movb	$0, 2(%rax)
    addq	$2, %rax
    movl	$p + 23, %edx
    cmpq	%rdx, %rax
    jne	L24
    cmpl	$9, -4(%rbp)
    jne	L24
    movl	$p + 19, %eax
    movl	$5, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L25
L24:
    call	abort
L25:
    movl	$1145258561, $p(%rip)
    movb	$0, $p + 4(%rip)
    movl	$p + 4, %eax
    movl	$4671045, (%rax)
    addq	$3, %rax
    movl	$p + 7, %edx
    cmpq	%rdx, %rax
    jne	L26
    movl	$8, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L27
L26:
    call	abort
L27:
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p + 5, %edx
    movl	$p + 5, %eax
    cmpq	%rax, %rdx
    jne	L28
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L29
L28:
    call	abort
L29:
    movl	$1, $inside_main(%rip)
    movq $s3(%rip), %rax
    movl	$p + 3, %edx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	strcpy
    movl	$6, %edx
    movl	$LC9, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L31
    call	abort
L31:
    nop
    leave
    ret
