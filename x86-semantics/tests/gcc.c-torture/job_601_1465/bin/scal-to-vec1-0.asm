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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .globl	one
    .data
one:
    .long	1
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$312, %rsp
    movl	%edi, -308(%rbp)
    movq	%rsi, -320(%rbp)
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movl	one(%rip), %eax
    vmovdqa	LC0(%rip), %xmm0
    vpinsrw	$0, %eax, %xmm0, %xmm0
    vmovaps	%xmm0, -160(%rbp)
    vmovaps	LC1(%rip), %xmm0
    vmovaps	%xmm0, -64(%rbp)
    vmovapd	LC2(%rip), %xmm0
    vmovaps	%xmm0, -48(%rbp)
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpaddw	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -296(%rbp)
    jmp	L54
L56:
    movl	-296(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-296(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    addl	$2, %edx
    cmpl	%edx, %eax
    je	L55
    call	abort
L55:
    addl	$1, -296(%rbp)
L54:
    cmpl	$7, -296(%rbp)
    jle	L56
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpsubw	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -292(%rbp)
    jmp	L57
L59:
    movl	-292(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-292(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    movl	$2, %ecx
    subl	%edx, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %eax
    je	L58
    call	abort
L58:
    addl	$1, -292(%rbp)
L57:
    cmpl	$7, -292(%rbp)
    jle	L59
    vmovdqa	-160(%rbp), %xmm0
    vpsllw	$1, %xmm0, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -288(%rbp)
    jmp	L60
L62:
    movl	-288(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-288(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    addl	%edx, %edx
    cmpl	%edx, %eax
    je	L61
    call	abort
L61:
    addl	$1, -288(%rbp)
L60:
    cmpl	$7, -288(%rbp)
    jle	L62
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %edi
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%di
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %esi
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%si
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %ebx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%bx
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -284(%rbp)
    jmp	L63
L65:
    movl	-284(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    movl	-284(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-160(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ebx
    movl	$2, %eax
    cltd
    idivl	%ebx
    cmpl	%eax, %ecx
    je	L64
    call	abort
L64:
    addl	$1, -284(%rbp)
L63:
    cmpl	$7, -284(%rbp)
    jle	L65
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %r9d
    vpextrw	$1, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %ebx
    vpextrw	$2, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %r8d
    vpextrw	$3, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %r11d
    vpextrw	$4, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %edi
    vpextrw	$5, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %r10d
    vpextrw	$6, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %esi
    vpextrw	$7, %xmm0, %ecx
    movl	$2, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    idivw	%cx
    movl	%edx, %eax
    movl	%r9d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %ebx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -280(%rbp)
    jmp	L66
L68:
    movl	-280(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    movl	-280(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-160(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %esi
    movl	$2, %eax
    cltd
    idivl	%esi
    movl	%edx, %eax
    cmpl	%eax, %ecx
    je	L67
    call	abort
L67:
    addl	$1, -280(%rbp)
L66:
    cmpl	$7, -280(%rbp)
    jle	L68
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpxor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -276(%rbp)
    jmp	L69
L71:
    movl	-276(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	-276(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    xorl	$2, %edx
    cmpw	%dx, %ax
    je	L70
    call	abort
L70:
    addl	$1, -276(%rbp)
L69:
    cmpl	$7, -276(%rbp)
    jle	L71
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpand	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -272(%rbp)
    jmp	L72
L74:
    movl	-272(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	-272(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    andl	$2, %edx
    cmpw	%dx, %ax
    je	L73
    call	abort
L73:
    addl	$1, -272(%rbp)
L72:
    cmpl	$7, -272(%rbp)
    jle	L74
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -268(%rbp)
    jmp	L75
L77:
    movl	-268(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	-268(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    orl	$2, %edx
    cmpw	%dx, %ax
    je	L76
    call	abort
L76:
    addl	$1, -268(%rbp)
L75:
    cmpl	$7, -268(%rbp)
    jle	L77
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    shlx	%ecx, %edx, %edx
    movl	%edx, %r8d
    vpextrw	$1, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    shlx	%ecx, %edx, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%edx, %edi
    movl	%eax, %ecx
    shlx	%ecx, %edi, %edi
    vpextrw	$3, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    shlx	%ecx, %edx, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%edx, %esi
    movl	%eax, %ecx
    shlx	%ecx, %esi, %esi
    vpextrw	$5, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    shlx	%ecx, %edx, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    shlx	%ecx, %edx, %edx
    vpextrw	$7, %xmm0, %eax
    cwtl
    movl	$2, %ebx
    movl	%eax, %ecx
    shlx	%ecx, %ebx, %ebx
    movl	%ebx, %eax
    movl	%r8d, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -264(%rbp)
    jmp	L78
L80:
    movl	-264(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %edx
    movl	-264(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    leaq	-160(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	$2, %ecx
    shlx	%eax, %ecx, %eax
    cmpl	%eax, %edx
    je	L79
    call	abort
L79:
    addl	$1, -264(%rbp)
L78:
    cmpl	$7, -264(%rbp)
    jle	L80
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    sarw	%cl, %dx
    movl	%edx, %r8d
    vpextrw	$1, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    sarw	%cl, %dx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%edx, %edi
    movl	%eax, %ecx
    sarw	%cl, %di
    vpextrw	$3, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    sarw	%cl, %dx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%edx, %esi
    movl	%eax, %ecx
    sarw	%cl, %si
    vpextrw	$5, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    sarw	%cl, %dx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %eax
    cwtl
    movl	$2, %edx
    movl	%eax, %ecx
    sarw	%cl, %dx
    vpextrw	$7, %xmm0, %eax
    cwtl
    movl	$2, %ebx
    movl	%eax, %ecx
    sarw	%cl, %bx
    movl	%ebx, %eax
    movl	%r8d, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -260(%rbp)
    jmp	L81
L83:
    movl	-260(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %edx
    movl	-260(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    leaq	-160(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	$2, %ecx
    sarx	%eax, %ecx, %eax
    cmpl	%eax, %edx
    je	L82
    call	abort
L82:
    addl	$1, -260(%rbp)
L81:
    cmpl	$7, -260(%rbp)
    jle	L83
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpaddw	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -256(%rbp)
    jmp	L84
L86:
    movl	-256(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-256(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    addl	$2, %edx
    cmpl	%edx, %eax
    je	L85
    call	abort
L85:
    addl	$1, -256(%rbp)
L84:
    cmpl	$7, -256(%rbp)
    jle	L86
    vmovdqa	-160(%rbp), %xmm0
    vmovdqa	LC3(%rip), %xmm1
    vpsubw	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -252(%rbp)
    jmp	L87
L89:
    movl	-252(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-252(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    subl	$2, %edx
    cmpl	%edx, %eax
    je	L88
    call	abort
L88:
    addl	$1, -252(%rbp)
L87:
    cmpl	$7, -252(%rbp)
    jle	L89
    vmovdqa	-160(%rbp), %xmm0
    vpsllw	$1, %xmm0, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -248(%rbp)
    jmp	L90
L92:
    movl	-248(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-248(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    addl	%edx, %edx
    cmpl	%edx, %eax
    je	L91
    call	abort
L91:
    addl	$1, -248(%rbp)
L90:
    cmpl	$7, -248(%rbp)
    jle	L92
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movl	%eax, %edx
    shrw	$15, %dx
    addl	%edx, %eax
    sarw	%ax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -244(%rbp)
    jmp	L93
L95:
    movl	-244(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %edx
    movl	-244(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    leaq	-160(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    movl	%eax, %ecx
    shrw	$15, %cx
    addl	%ecx, %eax
    sarw	%ax
    cmpw	%ax, %dx
    je	L94
    call	abort
L94:
    addl	$1, -244(%rbp)
L93:
    cmpl	$7, -244(%rbp)
    jle	L95
    vmovdqa	-160(%rbp), %xmm0
    vpextrw	$0, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -240(%rbp)
    jmp	L96
L98:
    movl	-240(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %ecx
    movl	-240(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-160(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L97
    call	abort
L97:
    addl	$1, -240(%rbp)
L96:
    cmpl	$7, -240(%rbp)
    jle	L98
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpxor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -236(%rbp)
    jmp	L99
L101:
    movl	-236(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	-236(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    xorl	$2, %edx
    cmpw	%dx, %ax
    je	L100
    call	abort
L100:
    addl	$1, -236(%rbp)
L99:
    cmpl	$7, -236(%rbp)
    jle	L101
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpand	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -232(%rbp)
    jmp	L102
L104:
    movl	-232(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    cwtl
    movl	-232(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    movswl	%dx, %edx
    andl	$2, %edx
    cmpl	%edx, %eax
    je	L103
    call	abort
L103:
    addl	$1, -232(%rbp)
L102:
    cmpl	$7, -232(%rbp)
    jle	L104
    vmovdqa	-160(%rbp), %xmm1
    vmovdqa	LC3(%rip), %xmm0
    vpor	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -228(%rbp)
    jmp	L105
L107:
    movl	-228(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-144(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movl	-228(%rbp), %edx
    movslq	%edx, %rdx
    leaq	(%rdx,%rdx), %rcx
    leaq	-160(%rbp), %rdx
    addq	%rcx, %rdx
    movzwl	(%rdx), %edx
    orl	$2, %edx
    cmpw	%dx, %ax
    je	L106
    call	abort
L106:
    addl	$1, -228(%rbp)
L105:
    cmpl	$7, -228(%rbp)
    jle	L107
    vmovaps	LC4(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	LC4(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -224(%rbp)
    jmp	L108
L111:
    movl	-224(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-224(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L174
    vucomiss	%xmm1, %xmm0
    je	L190
L174:
    call	abort
L190:
    addl	$1, -224(%rbp)
L108:
    cmpl	$3, -224(%rbp)
    jle	L111
    vmovaps	LC4(%rip), %xmm0
    vsubps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	LC4(%rip), %xmm0
    vsubps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -220(%rbp)
    jmp	L112
L115:
    movl	-220(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-220(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L175
    vucomiss	%xmm1, %xmm0
    je	L191
L175:
    call	abort
L191:
    addl	$1, -220(%rbp)
L112:
    cmpl	$3, -220(%rbp)
    jle	L115
    vmovaps	-64(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	-64(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -216(%rbp)
    jmp	L116
L119:
    movl	-216(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-216(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L176
    vucomiss	%xmm1, %xmm0
    je	L192
L176:
    call	abort
L192:
    addl	$1, -216(%rbp)
L116:
    cmpl	$3, -216(%rbp)
    jle	L119
    vmovaps	LC4(%rip), %xmm0
    vdivps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	LC4(%rip), %xmm0
    vdivps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -212(%rbp)
    jmp	L120
L123:
    movl	-212(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-212(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L177
    vucomiss	%xmm1, %xmm0
    je	L193
L177:
    call	abort
L193:
    addl	$1, -212(%rbp)
L120:
    cmpl	$3, -212(%rbp)
    jle	L123
    vmovaps	LC4(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	LC4(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -208(%rbp)
    jmp	L124
L127:
    movl	-208(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-208(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L178
    vucomiss	%xmm1, %xmm0
    je	L194
L178:
    call	abort
L194:
    addl	$1, -208(%rbp)
L124:
    cmpl	$3, -208(%rbp)
    jle	L127
    vmovaps	LC5(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	LC5(%rip), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -204(%rbp)
    jmp	L128
L131:
    movl	-204(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-204(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L179
    vucomiss	%xmm1, %xmm0
    je	L195
L179:
    call	abort
L195:
    addl	$1, -204(%rbp)
L128:
    cmpl	$3, -204(%rbp)
    jle	L131
    vmovaps	-64(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	-64(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -200(%rbp)
    jmp	L132
L135:
    movl	-200(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-200(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L180
    vucomiss	%xmm1, %xmm0
    je	L196
L180:
    call	abort
L196:
    addl	$1, -200(%rbp)
L132:
    cmpl	$3, -200(%rbp)
    jle	L135
    vmovaps	-64(%rbp), %xmm0
    vmovaps	LC4(%rip), %xmm1
    vdivps	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	-64(%rbp), %xmm0
    vmovaps	LC4(%rip), %xmm1
    vdivps	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -196(%rbp)
    jmp	L136
L139:
    movl	-196(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-128(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-196(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L181
    vucomiss	%xmm1, %xmm0
    je	L197
L181:
    call	abort
L197:
    addl	$1, -196(%rbp)
L136:
    cmpl	$3, -196(%rbp)
    jle	L139
    vmovapd	LC6(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	LC6(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -192(%rbp)
    jmp	L140
L143:
    movl	-192(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-192(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L182
    vucomisd	%xmm1, %xmm0
    je	L198
L182:
    call	abort
L198:
    addl	$1, -192(%rbp)
L140:
    cmpl	$1, -192(%rbp)
    jle	L143
    vmovapd	LC6(%rip), %xmm0
    vsubpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	LC6(%rip), %xmm0
    vsubpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -188(%rbp)
    jmp	L144
L147:
    movl	-188(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-188(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L183
    vucomisd	%xmm1, %xmm0
    je	L199
L183:
    call	abort
L199:
    addl	$1, -188(%rbp)
L144:
    cmpl	$1, -188(%rbp)
    jle	L147
    vmovapd	-48(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	-48(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -184(%rbp)
    jmp	L148
L151:
    movl	-184(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-184(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L184
    vucomisd	%xmm1, %xmm0
    je	L200
L184:
    call	abort
L200:
    addl	$1, -184(%rbp)
L148:
    cmpl	$1, -184(%rbp)
    jle	L151
    vmovapd	LC6(%rip), %xmm0
    vdivpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	LC6(%rip), %xmm0
    vdivpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -180(%rbp)
    jmp	L152
L155:
    movl	-180(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-180(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L185
    vucomisd	%xmm1, %xmm0
    je	L201
L185:
    call	abort
L201:
    addl	$1, -180(%rbp)
L152:
    cmpl	$1, -180(%rbp)
    jle	L155
    vmovapd	LC6(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	LC6(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -176(%rbp)
    jmp	L156
L159:
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L186
    vucomisd	%xmm1, %xmm0
    je	L202
L186:
    call	abort
L202:
    addl	$1, -176(%rbp)
L156:
    cmpl	$1, -176(%rbp)
    jle	L159
    vmovapd	LC7(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	LC7(%rip), %xmm0
    vaddpd	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -172(%rbp)
    jmp	L160
L163:
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L187
    vucomisd	%xmm1, %xmm0
    je	L203
L187:
    call	abort
L203:
    addl	$1, -172(%rbp)
L160:
    cmpl	$1, -172(%rbp)
    jle	L163
    vmovapd	-48(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	-48(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -168(%rbp)
    jmp	L164
L167:
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L188
    vucomisd	%xmm1, %xmm0
    je	L204
L188:
    call	abort
L204:
    addl	$1, -168(%rbp)
L164:
    cmpl	$1, -168(%rbp)
    jle	L167
    vmovapd	-48(%rbp), %xmm0
    vmovapd	LC6(%rip), %xmm1
    vdivpd	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    vmovapd	-48(%rbp), %xmm0
    vmovapd	LC6(%rip), %xmm1
    vdivpd	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -164(%rbp)
    jmp	L168
L171:
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L189
    vucomisd	%xmm1, %xmm0
    je	L205
L189:
    call	abort
L205:
    addl	$1, -164(%rbp)
L168:
    cmpl	$1, -164(%rbp)
    jle	L171
    movl	$0, %eax
    movq	-24(%rbp), %rbx
    xorq	$40, %rbx
    je	L173
    call	__stack_chk_fail
L173:
    addq	$312, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .value	0
    .value	1
    .value	2
    .value	3
    .value	4
    .value	5
    .value	6
    .value	7
LC1:
    .long	1065353216
    .long	1073741824
    .long	1077936128
    .long	1082130432
LC2:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
LC3:
    .value	2
    .value	2
    .value	2
    .value	2
    .value	2
    .value	2
    .value	2
    .value	2
LC4:
    .long	1073741824
    .long	1073741824
    .long	1073741824
    .long	1073741824
LC5:
    .long	3221225472
    .long	3221225472
    .long	3221225472
    .long	3221225472
LC6:
    .long	0
    .long	1073741824
    .long	0
    .long	1073741824
LC7:
    .long	0
    .long	-1073741824
    .long	0
    .long	-1073741824
