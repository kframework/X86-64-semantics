    .text
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L2:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L2
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
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L12
L13:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L12:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L13
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L16
L17:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L16:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L17
    movq	-24(%rbp), %rax
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
    .globl	p
    .bss
p:
    .zero	32
    .section	.rodata
LC0:
    .string	"abcde"
LC1:
    .string	"vwxyz"
LC2:
    .string	"wxyz"
LC3:
    .string	"a"
    .string	"cde"
LC4:
    .string	"a"
    .string	"cfghij"
LC5:
    .string	"ABCDE"
LC6:
    .string	"VWX"
LC7:
    .string	"WXyz"
LC8:
    .string	""
LC9:
    .string	"A"
    .string	"CDE"
LC10:
    .string	"FGHI"
LC11:
    .string	"A"
    .string	"CFGHIj"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L23
    movl	$6, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L24
L23:
    call	abort
L24:
    movl	$LC1 + 1, %edx
    movl	$p + 16, %eax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    movl	$p + 16, %edx
    cmpq	%rdx, %rax
    jne	L25
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L26
L25:
    call	abort
L26:
    movl	$p + 1, %eax
    movb	$0, (%rax)
    movq	%rax, %rdx
    movl	$p + 1, %eax
    cmpq	%rax, %rdx
    jne	L27
    movl	$6, %edx
    movl	$LC3, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L28
L27:
    call	abort
L28:
    movl	$p + 3, %eax
    movl	$1768449894, (%rax)
    movw	$106, 4(%rax)
    movq	%rax, %rdx
    movl	$p + 3, %eax
    cmpq	%rax, %rdx
    jne	L29
    movl	$9, %edx
    movl	$LC4, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L30
L29:
    call	abort
L30:
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcpy
    cmpq	$p, %rax
    jne	L31
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L32
L31:
    call	abort
L32:
    movl	$LC6 + 1, %edx
    movl	$p + 16, %eax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    movl	$p + 16, %edx
    cmpq	%rdx, %rax
    jne	L33
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L34
L33:
    call	abort
L34:
    movl	$p + 1, %eax
    movl	$1, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
    jne	L35
    movl	$6, %edx
    movl	$LC9, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L36
L35:
    call	abort
L36:
    movl	$p + 3, %eax
    movl	$4, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 3, %edx
    cmpq	%rdx, %rax
    jne	L37
    movl	$9, %edx
    movl	$LC11, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L38
L37:
    call	abort
L38:
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L39
    movl	$6, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L40
L39:
    call	abort
L40:
    movl	$1145258561, $p(%rip)
    movw	$69, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L41
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L43
L41:
    call	abort
L43:
    nop
    popq	%rbp
    ret
