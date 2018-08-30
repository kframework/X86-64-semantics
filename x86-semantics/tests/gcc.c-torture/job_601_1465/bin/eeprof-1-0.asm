    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	%rdi, -40(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strlen, %edi
    call	__cyg_profile_func_enter
    movq	$0, -24(%rbp)
    jmp	L2
L3:
    addq	$1, -24(%rbp)
L2:
    movq	-40(%rbp), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-24(%rbp), %rbx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strlen, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strcpy, %edi
    call	__cyg_profile_func_enter
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    nop
L6:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movq	-48(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -48(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    movq	-24(%rbp), %rbx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strcpy, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$24, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strcmp, %edi
    call	__cyg_profile_func_enter
    jmp	L9
L11:
    addq	$1, -24(%rbp)
    addq	$1, -32(%rbp)
L9:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-24(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    movl	%edx, %ebx
    subl	%eax, %ebx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strcmp, %edi
    call	__cyg_profile_func_exit
    movl	%ebx, %eax
    addq	$24, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$24, %rsp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strchr, %edi
    call	__cyg_profile_func_enter
    jmp	L14
L16:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %ebx
    jmp	L15
L14:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-24(%rbp), %rbx
L15:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strchr, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$24, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strncpy, %edi
    call	__cyg_profile_func_enter
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
L21:
    movq	-56(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -56(%rbp)
    testq	%rax, %rax
    jne	L19
    movq	-24(%rbp), %rbx
    jmp	L20
L19:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movq	-48(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -48(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L21
    jmp	L22
L23:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$0, (%rax)
L22:
    movq	-56(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -56(%rbp)
    testq	%rax, %rax
    jne	L23
    movq	-24(%rbp), %rbx
L20:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strncpy, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strncmp, %edi
    call	__cyg_profile_func_enter
    jmp	L26
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %ecx
    movq	-32(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -32(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L26
    movq	-24(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-32(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    movl	%edx, %ebx
    subl	%eax, %ebx
    jmp	L27
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
    movl	$0, %ebx
L27:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strncmp, %edi
    call	__cyg_profile_func_exit
    movl	%ebx, %eax
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	%rdi, -40(%rbp)
    movl	%esi, -44(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strrchr, %edi
    call	__cyg_profile_func_enter
    movq	$0, -24(%rbp)
L32:
    movq	-40(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-44(%rbp), %edx
    cmpb	%dl, %al
    jne	L31
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
L31:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L32
    movq	-24(%rbp), %rbx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$strrchr, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memcmp, %edi
    call	__cyg_profile_func_enter
    movq	-40(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
    jmp	L35
L38:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L36
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    movl	%edx, %ebx
    subl	%eax, %ebx
    jmp	L37
L36:
    addq	$1, -32(%rbp)
    addq	$1, -24(%rbp)
L35:
    movq	-56(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -56(%rbp)
    testq	%rax, %rax
    jne	L38
    movl	$0, %ebx
L37:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memcmp, %edi
    call	__cyg_profile_func_exit
    movl	%ebx, %eax
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$__stack_chk_fail, %edi
    call	__cyg_profile_func_enter
    movq $-1, %rax
    jmp %rax
    
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$__stack_chk_fail, %edi
    call	__cyg_profile_func_exit
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, -4(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$exit, %edi
    call	__cyg_profile_func_enter
    movq $-1, %rax
    jmp %rax
    
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$exit, %edi
    call	__cyg_profile_func_exit
    nop
    leave
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$abort, %edi
    call	__cyg_profile_func_enter
    movq $-1, %rax
    jmp %rax
    
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$abort, %edi
    call	__cyg_profile_func_exit
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movl	%esi, -44(%rbp)
    movq	%rdx, -56(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memset, %edi
    call	__cyg_profile_func_enter
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    jmp	L44
L45:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	-44(%rbp), %edx
    movb	%dl, (%rax)
L44:
    movq	-56(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -56(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-40(%rbp), %rbx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memset, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memcpy, %edi
    call	__cyg_profile_func_enter
    movq	-40(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
    jmp	L48
L49:
    movq	-32(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -32(%rbp)
    movq	-24(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -24(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L48:
    movq	-56(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -56(%rbp)
    testq	%rax, %rax
    jne	L49
    movq	-40(%rbp), %rbx
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$memcpy, %edi
    call	__cyg_profile_func_exit
    movq	%rbx, %rax
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$free, %edi
    call	__cyg_profile_func_enter
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$free, %edi
    call	__cyg_profile_func_exit
    nop
    leave
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$24, %rsp
    movl	%edi, -20(%rbp)
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$isprint, %edi
    call	__cyg_profile_func_enter
    cmpl	$96, -20(%rbp)
    jle	L53
    cmpl	$122, -20(%rbp)
    jg	L53
    movl	$1, %ebx
    jmp	L54
L53:
    cmpl	$64, -20(%rbp)
    jle	L55
    cmpl	$90, -20(%rbp)
    jg	L55
    movl	$1, %ebx
    jmp	L54
L55:
    cmpl	$47, -20(%rbp)
    jle	L56
    cmpl	$57, -20(%rbp)
    jg	L56
    movl	$1, %ebx
    jmp	L54
L56:
    movl	$0, %ebx
L54:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$isprint, %edi
    call	__cyg_profile_func_exit
    movl	%ebx, %eax
    addq	$24, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	entry_calls,4,4
    .comm	exit_calls,4,4
    .comm	last_fn_entered,8,8
    .comm	last_fn_exited,8,8
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$foo, %edi
    call	__cyg_profile_func_enter
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L59
    call	abort
L59:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$foo, %edi
    call	__cyg_profile_func_exit
    nop
    popq	%rbp
    ret
foo2:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$foo2, %edi
    call	__cyg_profile_func_enter
    movl	entry_calls(%rip), %eax
    cmpl	$1, %eax
    jne	L61
    movl	exit_calls(%rip), %eax
    testl	%eax, %eax
    je	L62
L61:
    call	abort
L62:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo2, %rax
    je	L63
    call	abort
L63:
    movl	$0, %eax
    call	foo
    movl	entry_calls(%rip), %eax
    cmpl	$2, %eax
    jne	L64
    movl	exit_calls(%rip), %eax
    cmpl	$1, %eax
    je	L65
L64:
    call	abort
L65:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L66
    call	abort
L66:
    movq	last_fn_exited(%rip), %rax
    cmpq	$foo, %rax
    je	L67
    call	abort
L67:
    movq	8(%rbp), %rax
    movq	%rax, %rsi
    movl	$foo2, %edi
    call	__cyg_profile_func_exit
    nop
    popq	%rbp
    ret
    .globl	nfoo
nfoo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	entry_calls(%rip), %eax
    cmpl	$2, %eax
    jne	L69
    movl	exit_calls(%rip), %eax
    cmpl	$2, %eax
    je	L70
L69:
    call	abort
L70:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L71
    call	abort
L71:
    movq	last_fn_exited(%rip), %rax
    cmpq	$foo2, %rax
    je	L72
    call	abort
L72:
    movl	$0, %eax
    call	foo
    movl	entry_calls(%rip), %eax
    cmpl	$3, %eax
    jne	L73
    movl	exit_calls(%rip), %eax
    cmpl	$3, %eax
    je	L74
L73:
    call	abort
L74:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L75
    call	abort
L75:
    movq	last_fn_exited(%rip), %rax
    cmpq	$foo, %rax
    je	L77
    call	abort
L77:
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	entry_calls(%rip), %eax
    testl	%eax, %eax
    jne	L79
    movl	exit_calls(%rip), %eax
    testl	%eax, %eax
    je	L80
L79:
    call	abort
L80:
    movl	$0, %eax
    call	foo2
    movl	entry_calls(%rip), %eax
    cmpl	$2, %eax
    jne	L81
    movl	exit_calls(%rip), %eax
    cmpl	$2, %eax
    je	L82
L81:
    call	abort
L82:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L83
    call	abort
L83:
    movq	last_fn_exited(%rip), %rax
    cmpq	$foo2, %rax
    je	L84
    call	abort
L84:
    call	nfoo
    movl	entry_calls(%rip), %eax
    cmpl	$3, %eax
    jne	L85
    movl	exit_calls(%rip), %eax
    cmpl	$3, %eax
    je	L86
L85:
    call	abort
L86:
    movq	last_fn_entered(%rip), %rax
    cmpq	$foo, %rax
    je	L87
    call	abort
L87:
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	__cyg_profile_func_enter
__cyg_profile_func_enter:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	entry_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, entry_calls(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, last_fn_entered(%rip)
    nop
    popq	%rbp
    ret
    .globl	__cyg_profile_func_exit
__cyg_profile_func_exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	exit_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, exit_calls(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, last_fn_exited(%rip)
    nop
    popq	%rbp
    ret
