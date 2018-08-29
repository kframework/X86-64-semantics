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
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
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
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
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
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .comm	glob_int_arr,400,32
    .globl	glob_ptr_int
    .data
glob_ptr_int:
    .quad	glob_int_arr
    .globl	glob_int
glob_int:
    .long	4
    .comm	stat_int_arr,400,32
stat_ptr_int:
    .quad	stat_int_arr
    .comm	stat_int,4,4
    .comm	str,24,16
    .globl	ptr_str
ptr_str:
    .quad	str
    .text
    .globl	simple_global
simple_global:
    pushq	%rbp
    movq	%rsp, %rbp
    prefetchnta	glob_int_arr(%rip)
    movq	glob_ptr_int(%rip), %rax
    prefetchnta	(%rax)
    prefetchnta	glob_int(%rip)
    nop
    popq	%rbp
    ret
    .globl	simple_file
simple_file:
    pushq	%rbp
    movq	%rsp, %rbp
    prefetchnta	stat_int_arr(%rip)
    movq	stat_ptr_int(%rip), %rax
    prefetchnta	(%rax)
    prefetchnta	stat_int(%rip)
    nop
    popq	%rbp
    ret
    .globl	simple_static_local
simple_static_local:
    pushq	%rbp
    movq	%rsp, %rbp
    prefetchnta	gx2456(%rip)
    movq	hx2457(%rip), %rax
    prefetchnta	(%rax)
    prefetchnta	ix2458(%rip)
    nop
    popq	%rbp
    ret
    .globl	simple_local
simple_local:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$432, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-416(%rbp), %rax
    movq	%rax, -424(%rbp)
    leaq	-416(%rbp), %rax
    prefetchnta	(%rax)
    movq	-424(%rbp), %rax
    prefetchnta	(%rax)
    leaq	-428(%rbp), %rax
    prefetchnta	(%rax)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L61
    call	__stack_chk_fail
L61:
    leave
    ret
    .globl	simple_arg
simple_arg:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -20(%rbp)
    movq	-8(%rbp), %rax
    prefetchnta	(%rax)
    movq	-16(%rbp), %rax
    prefetchnta	(%rax)
    leaq	-20(%rbp), %rax
    prefetchnta	(%rax)
    nop
    popq	%rbp
    ret
    .globl	expr_global
expr_global:
    pushq	%rbp
    movq	%rsp, %rbp
    prefetchnta	str(%rip)
    movq	ptr_str(%rip), %rax
    prefetchnta	(%rax)
    prefetchnta	str + 4(%rip)
    movq	ptr_str(%rip), %rax
    addq	$4, %rax
    prefetchnta	(%rax)
    prefetchnta	str + 8(%rip)
    movq	ptr_str(%rip), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	str + 16(%rip), %rax
    prefetchnta	(%rax)
    movq	ptr_str(%rip), %rax
    movq	16(%rax), %rax
    prefetchnta	(%rax)
    movq	str + 16(%rip), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	ptr_str(%rip), %rax
    movq	16(%rax), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    prefetchnta	glob_int_arr(%rip)
    movq	glob_ptr_int(%rip), %rax
    prefetchnta	(%rax)
    prefetchnta	glob_int_arr + 8(%rip)
    movq	glob_ptr_int(%rip), %rax
    addq	$12, %rax
    prefetchnta	(%rax)
    movl	$glob_int_arr + 12, %eax
    prefetchnta	(%rax)
    movl	glob_int(%rip), %eax
    cltq
    salq	$2, %rax
    addq	$glob_int_arr, %rax
    prefetchnta	(%rax)
    movq	glob_ptr_int(%rip), %rax
    addq	$20, %rax
    prefetchnta	(%rax)
    movq	glob_ptr_int(%rip), %rax
    movl	glob_int(%rip), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    prefetchnta	(%rax)
    nop
    popq	%rbp
    ret
    .globl	expr_local
expr_local:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-48(%rbp), %rax
    movq	%rax, -96(%rbp)
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    movl	$4, -100(%rbp)
    leaq	-80(%rbp), %rax
    prefetchnta	(%rax)
    movq	-88(%rbp), %rax
    prefetchnta	(%rax)
    leaq	-80(%rbp), %rax
    addq	$4, %rax
    prefetchnta	(%rax)
    movq	-88(%rbp), %rax
    addq	$4, %rax
    prefetchnta	(%rax)
    leaq	-80(%rbp), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	-64(%rbp), %rax
    prefetchnta	(%rax)
    movq	-88(%rbp), %rax
    movq	16(%rax), %rax
    prefetchnta	(%rax)
    movq	-64(%rbp), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	-88(%rbp), %rax
    movq	16(%rax), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    leaq	-48(%rbp), %rax
    prefetchnta	(%rax)
    movq	-96(%rbp), %rax
    prefetchnta	(%rax)
    leaq	-48(%rbp), %rax
    addq	$8, %rax
    prefetchnta	(%rax)
    movq	-96(%rbp), %rax
    addq	$12, %rax
    prefetchnta	(%rax)
    leaq	-48(%rbp), %rax
    addq	$12, %rax
    prefetchnta	(%rax)
    movl	-100(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-48(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    movq	-96(%rbp), %rax
    addq	$20, %rax
    prefetchnta	(%rax)
    movl	-100(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-96(%rbp), %rax
    addq	%rdx, %rax
    prefetchnta	(%rax)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L65
    call	__stack_chk_fail
L65:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	simple_global
    movl	$0, %eax
    call	simple_file
    movl	$0, %eax
    call	simple_static_local
    movl	$0, %eax
    call	simple_local
    movl	glob_int(%rip), %edx
    movq	glob_ptr_int(%rip), %rax
    movq	%rax, %rsi
    movl	$glob_int_arr, %edi
    call	simple_arg
    movq	$str, str + 16(%rip)
    call	expr_global
    call	expr_local
    movl	$0, %edi
    call	exit
    .comm	gx2456,400,32
    .data
hx2457:
    .quad	gx2456
    .comm	ix2458,4,4
