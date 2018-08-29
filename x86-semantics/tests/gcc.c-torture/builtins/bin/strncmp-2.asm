    .text
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L2
L6:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    movb	%al, -18(%rbp)
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    movb	%al, -17(%rbp)
    cmpb	$0, -18(%rbp)
    je	L3
    movzbl	-18(%rbp), %eax
    cmpb	-17(%rbp), %al
    je	L4
L3:
    movzbl	-18(%rbp), %edx
    movzbl	-17(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L5
L4:
    subq	$1, -56(%rbp)
L2:
    cmpq	$0, -56(%rbp)
    jne	L6
    movzbl	-18(%rbp), %edx
    movzbl	-17(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
L5:
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
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"ello"
LC2:
    .string	"zllo"
LC3:
    .string	"allo"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$LC0, -16(%rbp)
    movl	$6, -24(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L14
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L15
L14:
    call	abort
L15:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	strncmp
    testl	%eax, %eax
    jne	L16
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L17
L16:
    call	abort
L17:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L18
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L19
L18:
    call	abort
L19:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	strncmp
    testl	%eax, %eax
    jne	L20
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L21
L20:
    call	abort
L21:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L22
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L23
L22:
    call	abort
L23:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L24
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L25
L24:
    call	abort
L25:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L26
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L27
L26:
    call	abort
L27:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L28
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L29
L28:
    call	abort
L29:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L30
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L31
L30:
    call	abort
L31:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L32
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L33
L32:
    call	abort
L33:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L34
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L35
L34:
    call	abort
L35:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L36
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L37
L36:
    call	abort
L37:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L38
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L39
L38:
    call	abort
L39:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L40
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L41
L40:
    call	abort
L41:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L42
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L43
L42:
    call	abort
L43:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L44
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L45
L44:
    call	abort
L45:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L46
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L47
L46:
    call	abort
L47:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$3, %edx
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L48
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L49
L48:
    call	abort
L49:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L50
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L51
L50:
    call	abort
L51:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$4, %edx
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L52
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L53
L52:
    call	abort
L53:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L54
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L55
L54:
    call	abort
L55:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$5, %edx
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L56
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L57
L56:
    call	abort
L57:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L58
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L59
L58:
    call	abort
L59:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$6, %edx
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L60
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    je	L61
L60:
    call	abort
L61:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L62
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L62
    cmpl	$3, -24(%rbp)
    je	L63
L62:
    call	abort
L63:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L64
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L64
    cmpl	$3, -24(%rbp)
    je	L65
L64:
    call	abort
L65:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L66
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L66
    cmpl	$4, -24(%rbp)
    je	L67
L66:
    call	abort
L67:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L68
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L68
    cmpl	$4, -24(%rbp)
    je	L69
L68:
    call	abort
L69:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L70
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L70
    cmpl	$5, -24(%rbp)
    je	L71
L70:
    call	abort
L71:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L72
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L72
    cmpl	$5, -24(%rbp)
    je	L73
L72:
    call	abort
L73:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L74
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L74
    cmpl	$6, -24(%rbp)
    je	L75
L74:
    call	abort
L75:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movl	-20(%rbp), %eax
    cltq
    andl	$3, %eax
    movq	%rax, %rcx
    movq	-16(%rbp), %rax
    addq	%rax, %rcx
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L76
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L76
    cmpl	$6, -24(%rbp)
    je	L77
L76:
    call	abort
L77:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L78
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L78
    cmpl	$3, -24(%rbp)
    je	L79
L78:
    call	abort
L79:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L80
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L80
    cmpl	$3, -24(%rbp)
    je	L81
L80:
    call	abort
L81:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L82
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L82
    cmpl	$4, -24(%rbp)
    je	L83
L82:
    call	abort
L83:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L84
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L84
    cmpl	$4, -24(%rbp)
    je	L85
L84:
    call	abort
L85:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L86
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L86
    cmpl	$5, -24(%rbp)
    je	L87
L86:
    call	abort
L87:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L88
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L88
    cmpl	$5, -24(%rbp)
    je	L89
L88:
    call	abort
L89:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jns	L90
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L90
    cmpl	$6, -24(%rbp)
    je	L91
L90:
    call	abort
L91:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	strncmp
    testl	%eax, %eax
    jle	L92
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L92
    cmpl	$6, -24(%rbp)
    je	L93
L92:
    call	abort
L93:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L94
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L94
    cmpl	$3, -24(%rbp)
    je	L95
L94:
    call	abort
L95:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$2, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L96
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L96
    cmpl	$3, -24(%rbp)
    je	L97
L96:
    call	abort
L97:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L98
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L98
    cmpl	$4, -24(%rbp)
    je	L99
L98:
    call	abort
L99:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$3, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L100
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L100
    cmpl	$4, -24(%rbp)
    je	L101
L100:
    call	abort
L101:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L102
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L102
    cmpl	$5, -24(%rbp)
    je	L103
L102:
    call	abort
L103:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$4, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L104
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L104
    cmpl	$5, -24(%rbp)
    je	L105
L104:
    call	abort
L105:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jle	L106
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L106
    cmpl	$6, -24(%rbp)
    je	L107
L106:
    call	abort
L107:
    movq	-16(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$5, -24(%rbp)
    movl	$1, -20(%rbp)
    addl	$1, -24(%rbp)
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	strncmp
    testl	%eax, %eax
    jns	L108
    movq	-16(%rbp), %rax
    addq	$1, %rax
    cmpq	-8(%rbp), %rax
    jne	L108
    cmpl	$6, -24(%rbp)
    je	L110
L108:
    call	abort
L110:
    nop
    leave
    ret
