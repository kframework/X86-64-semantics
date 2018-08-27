    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
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
    .comm	g,8,8
    .comm	h,8,8
    .comm	i,8,8
    .comm	j,8,8
    .comm	k,8,8
    .comm	l,8,8
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $l(%rip), %rax
    testq	%rax, %rax
    je	L11
    call	abort
L11:
    movq $l(%rip), %rax
    addq	$1, %rax
    movq	%rax, $l(%rip)
    movq $l(%rip), %rax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"foo"
LC1:
    .string	"bar"
LC2:
    .string	"xfoo"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $g(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $g(%rip)
    testq	%rax, %rax
    je	L14
    movl	$LC0, %eax
    jmp	L15
L14:
    movl	$LC1, %eax
L15:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L16
    movq $g(%rip), %rax
    cmpq	$1, %rax
    je	L17
L16:
    call	abort
L17:
    movq $h(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $h(%rip)
    testq	%rax, %rax
    je	L18
    movl	$LC2 + 1, %eax
    jmp	L19
L18:
    movl	$LC1, %eax
L19:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L20
    movq $h(%rip), %rax
    cmpq	$1, %rax
    je	L21
L20:
    call	abort
L21:
    movq $i(%rip), %rax
    addq	$1, %rax
    movq	%rax, $i(%rip)
    movq $i(%rip), %rax
    cmpq	$1, %rax
    je	L22
    call	abort
L22:
    movl	$0, $inside_main(%rip)
    movq $j(%rip), %rax
    testq	%rax, %rax
    je	L23
    movq $k(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $k(%rip)
    addq	$LC0, %rax
    jmp	L24
L23:
    movq $k(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $k(%rip)
    addq	$LC1, %rax
L24:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L25
    movq $k(%rip), %rax
    cmpq	$1, %rax
    je	L26
L25:
    call	abort
L26:
    call	foo
    testq	%rax, %rax
    je	L27
    movl	$LC0, %eax
    jmp	L28
L27:
    movl	$LC1, %eax
L28:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L29
    movq $l(%rip), %rax
    cmpq	$1, %rax
    je	L31
L29:
    call	abort
L31:
    nop
    popq	%rbp
    ret
