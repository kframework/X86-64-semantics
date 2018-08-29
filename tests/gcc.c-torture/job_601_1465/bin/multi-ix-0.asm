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
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$832, %rsp
    movl	%edi, -820(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -804(%rbp)
    jmp	L58
L59:
    leaq	-576(%rbp), %r8
    leaq	-592(%rbp), %rdi
    leaq	-608(%rbp), %rcx
    leaq	-624(%rbp), %rdx
    leaq	-640(%rbp), %rax
    subq	$8, %rsp
    leaq	-16(%rbp), %rsi
    pushq	%rsi
    leaq	-32(%rbp), %rsi
    pushq	%rsi
    leaq	-48(%rbp), %rsi
    pushq	%rsi
    leaq	-64(%rbp), %rsi
    pushq	%rsi
    leaq	-80(%rbp), %rsi
    pushq	%rsi
    leaq	-96(%rbp), %rsi
    pushq	%rsi
    leaq	-112(%rbp), %rsi
    pushq	%rsi
    leaq	-128(%rbp), %rsi
    pushq	%rsi
    leaq	-144(%rbp), %rsi
    pushq	%rsi
    leaq	-160(%rbp), %rsi
    pushq	%rsi
    leaq	-176(%rbp), %rsi
    pushq	%rsi
    leaq	-192(%rbp), %rsi
    pushq	%rsi
    leaq	-208(%rbp), %rsi
    pushq	%rsi
    leaq	-224(%rbp), %rsi
    pushq	%rsi
    leaq	-240(%rbp), %rsi
    pushq	%rsi
    leaq	-256(%rbp), %rsi
    pushq	%rsi
    leaq	-272(%rbp), %rsi
    pushq	%rsi
    leaq	-288(%rbp), %rsi
    pushq	%rsi
    leaq	-304(%rbp), %rsi
    pushq	%rsi
    leaq	-320(%rbp), %rsi
    pushq	%rsi
    leaq	-336(%rbp), %rsi
    pushq	%rsi
    leaq	-352(%rbp), %rsi
    pushq	%rsi
    leaq	-368(%rbp), %rsi
    pushq	%rsi
    leaq	-384(%rbp), %rsi
    pushq	%rsi
    leaq	-400(%rbp), %rsi
    pushq	%rsi
    leaq	-416(%rbp), %rsi
    pushq	%rsi
    leaq	-432(%rbp), %rsi
    pushq	%rsi
    leaq	-448(%rbp), %rsi
    pushq	%rsi
    leaq	-464(%rbp), %rsi
    pushq	%rsi
    leaq	-480(%rbp), %rsi
    pushq	%rsi
    leaq	-496(%rbp), %rsi
    pushq	%rsi
    leaq	-512(%rbp), %rsi
    pushq	%rsi
    leaq	-528(%rbp), %rsi
    pushq	%rsi
    leaq	-544(%rbp), %rsi
    pushq	%rsi
    leaq	-560(%rbp), %rsi
    pushq	%rsi
    movq	%r8, %r9
    movq	%rdi, %r8
    movq	%rax, %rsi
    movl	$40, %edi
    movl	$0, %eax
    call	s
    addq	$288, %rsp
    movl	-640(%rbp), %eax
    movl	%eax, -800(%rbp)
    movl	-624(%rbp), %eax
    movl	%eax, -796(%rbp)
    movl	-608(%rbp), %eax
    movl	%eax, -792(%rbp)
    movl	-592(%rbp), %eax
    movl	%eax, -788(%rbp)
    movl	-576(%rbp), %eax
    movl	%eax, -784(%rbp)
    movl	-560(%rbp), %eax
    movl	%eax, -780(%rbp)
    movl	-544(%rbp), %eax
    movl	%eax, -776(%rbp)
    movl	-528(%rbp), %eax
    movl	%eax, -772(%rbp)
    movl	-512(%rbp), %eax
    movl	%eax, -768(%rbp)
    movl	-496(%rbp), %eax
    movl	%eax, -764(%rbp)
    movl	-480(%rbp), %eax
    movl	%eax, -760(%rbp)
    movl	-464(%rbp), %eax
    movl	%eax, -756(%rbp)
    movl	-448(%rbp), %eax
    movl	%eax, -752(%rbp)
    movl	-432(%rbp), %eax
    movl	%eax, -748(%rbp)
    movl	-416(%rbp), %eax
    movl	%eax, -744(%rbp)
    movl	-400(%rbp), %eax
    movl	%eax, -740(%rbp)
    movl	-384(%rbp), %eax
    movl	%eax, -736(%rbp)
    movl	-368(%rbp), %eax
    movl	%eax, -732(%rbp)
    movl	-352(%rbp), %eax
    movl	%eax, -728(%rbp)
    movl	-336(%rbp), %eax
    movl	%eax, -724(%rbp)
    movl	-320(%rbp), %eax
    movl	%eax, -720(%rbp)
    movl	-304(%rbp), %eax
    movl	%eax, -716(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -712(%rbp)
    movl	-272(%rbp), %eax
    movl	%eax, -708(%rbp)
    movl	-256(%rbp), %eax
    movl	%eax, -704(%rbp)
    movl	-240(%rbp), %eax
    movl	%eax, -700(%rbp)
    movl	-224(%rbp), %eax
    movl	%eax, -696(%rbp)
    movl	-208(%rbp), %eax
    movl	%eax, -692(%rbp)
    movl	-192(%rbp), %eax
    movl	%eax, -688(%rbp)
    movl	-176(%rbp), %eax
    movl	%eax, -684(%rbp)
    movl	-160(%rbp), %eax
    movl	%eax, -680(%rbp)
    movl	-144(%rbp), %eax
    movl	%eax, -676(%rbp)
    movl	-128(%rbp), %eax
    movl	%eax, -672(%rbp)
    movl	-112(%rbp), %eax
    movl	%eax, -668(%rbp)
    movl	-96(%rbp), %eax
    movl	%eax, -664(%rbp)
    movl	-80(%rbp), %eax
    movl	%eax, -660(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, -656(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, -652(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, -648(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, -644(%rbp)
    leaq	-576(%rbp), %r8
    leaq	-592(%rbp), %rdi
    leaq	-608(%rbp), %rcx
    leaq	-624(%rbp), %rdx
    leaq	-640(%rbp), %rax
    subq	$8, %rsp
    leaq	-16(%rbp), %rsi
    pushq	%rsi
    leaq	-32(%rbp), %rsi
    pushq	%rsi
    leaq	-48(%rbp), %rsi
    pushq	%rsi
    leaq	-64(%rbp), %rsi
    pushq	%rsi
    leaq	-80(%rbp), %rsi
    pushq	%rsi
    leaq	-96(%rbp), %rsi
    pushq	%rsi
    leaq	-112(%rbp), %rsi
    pushq	%rsi
    leaq	-128(%rbp), %rsi
    pushq	%rsi
    leaq	-144(%rbp), %rsi
    pushq	%rsi
    leaq	-160(%rbp), %rsi
    pushq	%rsi
    leaq	-176(%rbp), %rsi
    pushq	%rsi
    leaq	-192(%rbp), %rsi
    pushq	%rsi
    leaq	-208(%rbp), %rsi
    pushq	%rsi
    leaq	-224(%rbp), %rsi
    pushq	%rsi
    leaq	-240(%rbp), %rsi
    pushq	%rsi
    leaq	-256(%rbp), %rsi
    pushq	%rsi
    leaq	-272(%rbp), %rsi
    pushq	%rsi
    leaq	-288(%rbp), %rsi
    pushq	%rsi
    leaq	-304(%rbp), %rsi
    pushq	%rsi
    leaq	-320(%rbp), %rsi
    pushq	%rsi
    leaq	-336(%rbp), %rsi
    pushq	%rsi
    leaq	-352(%rbp), %rsi
    pushq	%rsi
    leaq	-368(%rbp), %rsi
    pushq	%rsi
    leaq	-384(%rbp), %rsi
    pushq	%rsi
    leaq	-400(%rbp), %rsi
    pushq	%rsi
    leaq	-416(%rbp), %rsi
    pushq	%rsi
    leaq	-432(%rbp), %rsi
    pushq	%rsi
    leaq	-448(%rbp), %rsi
    pushq	%rsi
    leaq	-464(%rbp), %rsi
    pushq	%rsi
    leaq	-480(%rbp), %rsi
    pushq	%rsi
    leaq	-496(%rbp), %rsi
    pushq	%rsi
    leaq	-512(%rbp), %rsi
    pushq	%rsi
    leaq	-528(%rbp), %rsi
    pushq	%rsi
    leaq	-544(%rbp), %rsi
    pushq	%rsi
    leaq	-560(%rbp), %rsi
    pushq	%rsi
    movq	%r8, %r9
    movq	%rdi, %r8
    movq	%rax, %rsi
    movl	$40, %edi
    movl	$0, %eax
    call	z
    addq	$288, %rsp
    movl	-800(%rbp), %eax
    cltq
    movl	-800(%rbp), %edx
    movl	%edx, -640(%rbp,%rax,4)
    movl	-796(%rbp), %eax
    cltq
    movl	-796(%rbp), %edx
    movl	%edx, -624(%rbp,%rax,4)
    movl	-792(%rbp), %eax
    cltq
    movl	-792(%rbp), %edx
    movl	%edx, -608(%rbp,%rax,4)
    movl	-788(%rbp), %eax
    cltq
    movl	-788(%rbp), %edx
    movl	%edx, -592(%rbp,%rax,4)
    movl	-784(%rbp), %eax
    cltq
    movl	-784(%rbp), %edx
    movl	%edx, -576(%rbp,%rax,4)
    movl	-780(%rbp), %eax
    cltq
    movl	-780(%rbp), %edx
    movl	%edx, -560(%rbp,%rax,4)
    movl	-776(%rbp), %eax
    cltq
    movl	-776(%rbp), %edx
    movl	%edx, -544(%rbp,%rax,4)
    movl	-772(%rbp), %eax
    cltq
    movl	-772(%rbp), %edx
    movl	%edx, -528(%rbp,%rax,4)
    movl	-768(%rbp), %eax
    cltq
    movl	-768(%rbp), %edx
    movl	%edx, -512(%rbp,%rax,4)
    movl	-764(%rbp), %eax
    cltq
    movl	-764(%rbp), %edx
    movl	%edx, -496(%rbp,%rax,4)
    movl	-760(%rbp), %eax
    cltq
    movl	-760(%rbp), %edx
    movl	%edx, -480(%rbp,%rax,4)
    movl	-756(%rbp), %eax
    cltq
    movl	-756(%rbp), %edx
    movl	%edx, -464(%rbp,%rax,4)
    movl	-752(%rbp), %eax
    cltq
    movl	-752(%rbp), %edx
    movl	%edx, -448(%rbp,%rax,4)
    movl	-748(%rbp), %eax
    cltq
    movl	-748(%rbp), %edx
    movl	%edx, -432(%rbp,%rax,4)
    movl	-744(%rbp), %eax
    cltq
    movl	-744(%rbp), %edx
    movl	%edx, -416(%rbp,%rax,4)
    movl	-740(%rbp), %eax
    cltq
    movl	-740(%rbp), %edx
    movl	%edx, -400(%rbp,%rax,4)
    movl	-736(%rbp), %eax
    cltq
    movl	-736(%rbp), %edx
    movl	%edx, -384(%rbp,%rax,4)
    movl	-732(%rbp), %eax
    cltq
    movl	-732(%rbp), %edx
    movl	%edx, -368(%rbp,%rax,4)
    movl	-728(%rbp), %eax
    cltq
    movl	-728(%rbp), %edx
    movl	%edx, -352(%rbp,%rax,4)
    movl	-724(%rbp), %eax
    cltq
    movl	-724(%rbp), %edx
    movl	%edx, -336(%rbp,%rax,4)
    movl	-720(%rbp), %eax
    cltq
    movl	-720(%rbp), %edx
    movl	%edx, -320(%rbp,%rax,4)
    movl	-716(%rbp), %eax
    cltq
    movl	-716(%rbp), %edx
    movl	%edx, -304(%rbp,%rax,4)
    movl	-712(%rbp), %eax
    cltq
    movl	-712(%rbp), %edx
    movl	%edx, -288(%rbp,%rax,4)
    movl	-708(%rbp), %eax
    cltq
    movl	-708(%rbp), %edx
    movl	%edx, -272(%rbp,%rax,4)
    movl	-704(%rbp), %eax
    cltq
    movl	-704(%rbp), %edx
    movl	%edx, -256(%rbp,%rax,4)
    movl	-700(%rbp), %eax
    cltq
    movl	-700(%rbp), %edx
    movl	%edx, -240(%rbp,%rax,4)
    movl	-696(%rbp), %eax
    cltq
    movl	-696(%rbp), %edx
    movl	%edx, -224(%rbp,%rax,4)
    movl	-692(%rbp), %eax
    cltq
    movl	-692(%rbp), %edx
    movl	%edx, -208(%rbp,%rax,4)
    movl	-688(%rbp), %eax
    cltq
    movl	-688(%rbp), %edx
    movl	%edx, -192(%rbp,%rax,4)
    movl	-684(%rbp), %eax
    cltq
    movl	-684(%rbp), %edx
    movl	%edx, -176(%rbp,%rax,4)
    movl	-680(%rbp), %eax
    cltq
    movl	-680(%rbp), %edx
    movl	%edx, -160(%rbp,%rax,4)
    movl	-676(%rbp), %eax
    cltq
    movl	-676(%rbp), %edx
    movl	%edx, -144(%rbp,%rax,4)
    movl	-672(%rbp), %eax
    cltq
    movl	-672(%rbp), %edx
    movl	%edx, -128(%rbp,%rax,4)
    movl	-668(%rbp), %eax
    cltq
    movl	-668(%rbp), %edx
    movl	%edx, -112(%rbp,%rax,4)
    movl	-664(%rbp), %eax
    cltq
    movl	-664(%rbp), %edx
    movl	%edx, -96(%rbp,%rax,4)
    movl	-660(%rbp), %eax
    cltq
    movl	-660(%rbp), %edx
    movl	%edx, -80(%rbp,%rax,4)
    movl	-656(%rbp), %eax
    cltq
    movl	-656(%rbp), %edx
    movl	%edx, -64(%rbp,%rax,4)
    movl	-652(%rbp), %eax
    cltq
    movl	-652(%rbp), %edx
    movl	%edx, -48(%rbp,%rax,4)
    movl	-648(%rbp), %eax
    cltq
    movl	-648(%rbp), %edx
    movl	%edx, -32(%rbp,%rax,4)
    movl	-644(%rbp), %eax
    cltq
    movl	-644(%rbp), %edx
    movl	%edx, -16(%rbp,%rax,4)
    leaq	-576(%rbp), %r8
    leaq	-592(%rbp), %rdi
    leaq	-608(%rbp), %rcx
    leaq	-624(%rbp), %rdx
    leaq	-640(%rbp), %rax
    subq	$8, %rsp
    leaq	-16(%rbp), %rsi
    pushq	%rsi
    leaq	-32(%rbp), %rsi
    pushq	%rsi
    leaq	-48(%rbp), %rsi
    pushq	%rsi
    leaq	-64(%rbp), %rsi
    pushq	%rsi
    leaq	-80(%rbp), %rsi
    pushq	%rsi
    leaq	-96(%rbp), %rsi
    pushq	%rsi
    leaq	-112(%rbp), %rsi
    pushq	%rsi
    leaq	-128(%rbp), %rsi
    pushq	%rsi
    leaq	-144(%rbp), %rsi
    pushq	%rsi
    leaq	-160(%rbp), %rsi
    pushq	%rsi
    leaq	-176(%rbp), %rsi
    pushq	%rsi
    leaq	-192(%rbp), %rsi
    pushq	%rsi
    leaq	-208(%rbp), %rsi
    pushq	%rsi
    leaq	-224(%rbp), %rsi
    pushq	%rsi
    leaq	-240(%rbp), %rsi
    pushq	%rsi
    leaq	-256(%rbp), %rsi
    pushq	%rsi
    leaq	-272(%rbp), %rsi
    pushq	%rsi
    leaq	-288(%rbp), %rsi
    pushq	%rsi
    leaq	-304(%rbp), %rsi
    pushq	%rsi
    leaq	-320(%rbp), %rsi
    pushq	%rsi
    leaq	-336(%rbp), %rsi
    pushq	%rsi
    leaq	-352(%rbp), %rsi
    pushq	%rsi
    leaq	-368(%rbp), %rsi
    pushq	%rsi
    leaq	-384(%rbp), %rsi
    pushq	%rsi
    leaq	-400(%rbp), %rsi
    pushq	%rsi
    leaq	-416(%rbp), %rsi
    pushq	%rsi
    leaq	-432(%rbp), %rsi
    pushq	%rsi
    leaq	-448(%rbp), %rsi
    pushq	%rsi
    leaq	-464(%rbp), %rsi
    pushq	%rsi
    leaq	-480(%rbp), %rsi
    pushq	%rsi
    leaq	-496(%rbp), %rsi
    pushq	%rsi
    leaq	-512(%rbp), %rsi
    pushq	%rsi
    leaq	-528(%rbp), %rsi
    pushq	%rsi
    leaq	-544(%rbp), %rsi
    pushq	%rsi
    leaq	-560(%rbp), %rsi
    pushq	%rsi
    movq	%r8, %r9
    movq	%rdi, %r8
    movq	%rax, %rsi
    movl	$40, %edi
    movl	$0, %eax
    call	c
    addq	$288, %rsp
    addl	$1, -804(%rbp)
L58:
    movl	-804(%rbp), %eax
    cmpl	-820(%rbp), %eax
    jl	L59
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L60
    call	__stack_chk_fail
L60:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    call	exit
    .globl	s
s:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L63
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L63:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L64
L67:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L65
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L66
L65:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L66:
    movq	(%rax), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movl	-228(%rbp), %edx
    movl	%edx, (%rax)
L64:
    movl	-228(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -228(%rbp)
    testl	%eax, %eax
    jne	L67
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L68
    call	__stack_chk_fail
L68:
    leave
    ret
    .globl	z
z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L70
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L70:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L71
L74:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L72
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L73
L72:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L73:
    movq	(%rax), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movl	$4, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
L71:
    movl	-228(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -228(%rbp)
    testl	%eax, %eax
    jne	L74
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L75
    call	__stack_chk_fail
L75:
    leave
    ret
    .globl	c
c:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L77
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L77:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L78
L81:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L79
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L80
L79:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L80:
    movq	(%rax), %rax
    movq	%rax, -216(%rbp)
    movl	-228(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-216(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %eax
    cmpl	-228(%rbp), %eax
    je	L78
    call	abort
L78:
    movl	-228(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -228(%rbp)
    testl	%eax, %eax
    jne	L81
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L82
    call	__stack_chk_fail
L82:
    leave
    ret
