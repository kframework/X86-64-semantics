    .text
    .globl	mempcpy
mempcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
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
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L3
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
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L13
L14:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L13:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L14
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
    jmp	L17
L18:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L17:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
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
    .string	"ABCDE"
LC3:
    .string	"VWX"
LC4:
    .string	"WX"
    .string	""
    .string	""
LC5:
    .string	""
LC6:
    .string	"A"
    .string	"CDE"
LC7:
    .string	"FGHI"
LC8:
    .string	"A"
    .string	"CFGHI"
LC9:
    .string	"qrstu"
LC10:
    .string	"QRSTU"
LC11:
    .string	"Q123U"
LC12:
    .string	"abcdEFG"
LC13:
    .string	"efg"
LC14:
    .string	"abcdefg"
LC15:
    .string	"ABCDEFg"
LC16:
    .string	"ABCDEF2"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	mempcpy
    movl	$p + 6, %edx
    cmpq	%rdx, %rax
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
    movl	$LC3 + 1, %edx
    movl	$p + 16, %eax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    addq	$2, %rax
    movl	$p + 18, %edx
    cmpq	%rdx, %rax
    jne	L30
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L31
L30:
    call	abort
L31:
    movl	$p + 1, %eax
    movl	$1, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$p + 2, %edx
    cmpq	%rdx, %rax
    jne	L32
    movl	$6, %edx
    movl	$LC6, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L33
L32:
    call	abort
L33:
    movl	$p + 3, %eax
    movl	$4, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$p + 7, %edx
    cmpq	%rdx, %rax
    jne	L34
    movl	$8, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L35
L34:
    call	abort
L35:
    movl	$8, -4(%rbp)
    movl	$p + 20, %eax
    movl	$6, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 25, %eax
    movl	$6, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 26, %eax
    movl	$3, %edx
    movl	$s1, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$p + 29, %edx
    cmpq	%rdx, %rax
    jne	L36
    movl	$p + 25, %eax
    movl	$6, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L37
L36:
    call	abort
L37:
    movl	$4, %edx
    movl	$LC12, %esi
    movl	$p, %edi
    call	mempcpy
    movl	$4, %edx
    movl	$LC13, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$p + 8, %edx
    cmpq	%rdx, %rax
    jne	L38
    movl	$8, %edx
    movl	$LC14, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L39
L38:
    call	abort
L39:
    movl	$1145258561, $p(%rip)
    movw	$69, $p + 4(%rip)
    movl	$p + 6, %edx
    movl	$p + 6, %eax
    cmpq	%rax, %rdx
    jne	L40
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L41
L40:
    call	abort
L41:
    movl	$1, $inside_main(%rip)
    movq $s3(%rip), %rax
    movl	$p + 5, %edx
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC15, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L42
    call	abort
L42:
    movq $l1(%rip), %rax
    movl	$s1 + 1, %esi
    movl	$p + 6, %ecx
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	mempcpy
    movl	$8, %edx
    movl	$LC16, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L44
    call	abort
L44:
    nop
    leave
    ret
