strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
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
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$816, %rsp
	movl	%edi, -804(%rbp)
	movl	$0, -4(%rbp)
	jmp	L30
L31:
	subq	$8, %rsp
	leaq	-240(%rbp), %r8
	leaq	-224(%rbp), %rdi
	leaq	-208(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	-800(%rbp), %rsi
	pushq	%rsi
	leaq	-784(%rbp), %rsi
	pushq	%rsi
	leaq	-768(%rbp), %rsi
	pushq	%rsi
	leaq	-752(%rbp), %rsi
	pushq	%rsi
	leaq	-736(%rbp), %rsi
	pushq	%rsi
	leaq	-720(%rbp), %rsi
	pushq	%rsi
	leaq	-704(%rbp), %rsi
	pushq	%rsi
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	leaq	-672(%rbp), %rsi
	pushq	%rsi
	leaq	-656(%rbp), %rsi
	pushq	%rsi
	leaq	-640(%rbp), %rsi
	pushq	%rsi
	leaq	-624(%rbp), %rsi
	pushq	%rsi
	leaq	-608(%rbp), %rsi
	pushq	%rsi
	leaq	-592(%rbp), %rsi
	pushq	%rsi
	leaq	-576(%rbp), %rsi
	pushq	%rsi
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	leaq	-544(%rbp), %rsi
	pushq	%rsi
	leaq	-528(%rbp), %rsi
	pushq	%rsi
	leaq	-512(%rbp), %rsi
	pushq	%rsi
	leaq	-496(%rbp), %rsi
	pushq	%rsi
	leaq	-480(%rbp), %rsi
	pushq	%rsi
	leaq	-464(%rbp), %rsi
	pushq	%rsi
	leaq	-448(%rbp), %rsi
	pushq	%rsi
	leaq	-432(%rbp), %rsi
	pushq	%rsi
	leaq	-416(%rbp), %rsi
	pushq	%rsi
	leaq	-400(%rbp), %rsi
	pushq	%rsi
	leaq	-384(%rbp), %rsi
	pushq	%rsi
	leaq	-368(%rbp), %rsi
	pushq	%rsi
	leaq	-352(%rbp), %rsi
	pushq	%rsi
	leaq	-336(%rbp), %rsi
	pushq	%rsi
	leaq	-320(%rbp), %rsi
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	leaq	-272(%rbp), %rsi
	pushq	%rsi
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$40, %edi
	movl	$0, %eax
	call	s
	addq	$288, %rsp
	movl	-176(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-240(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-256(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-288(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-304(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-320(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-336(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-352(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-368(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-384(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-400(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-416(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-432(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-448(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-464(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-480(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-496(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-512(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-528(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-544(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-560(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-576(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-592(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-624(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-640(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-656(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-672(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-688(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-704(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-720(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-736(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-752(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-768(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-784(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-800(%rbp), %eax
	movl	%eax, -164(%rbp)
	subq	$8, %rsp
	leaq	-240(%rbp), %r8
	leaq	-224(%rbp), %rdi
	leaq	-208(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	-800(%rbp), %rsi
	pushq	%rsi
	leaq	-784(%rbp), %rsi
	pushq	%rsi
	leaq	-768(%rbp), %rsi
	pushq	%rsi
	leaq	-752(%rbp), %rsi
	pushq	%rsi
	leaq	-736(%rbp), %rsi
	pushq	%rsi
	leaq	-720(%rbp), %rsi
	pushq	%rsi
	leaq	-704(%rbp), %rsi
	pushq	%rsi
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	leaq	-672(%rbp), %rsi
	pushq	%rsi
	leaq	-656(%rbp), %rsi
	pushq	%rsi
	leaq	-640(%rbp), %rsi
	pushq	%rsi
	leaq	-624(%rbp), %rsi
	pushq	%rsi
	leaq	-608(%rbp), %rsi
	pushq	%rsi
	leaq	-592(%rbp), %rsi
	pushq	%rsi
	leaq	-576(%rbp), %rsi
	pushq	%rsi
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	leaq	-544(%rbp), %rsi
	pushq	%rsi
	leaq	-528(%rbp), %rsi
	pushq	%rsi
	leaq	-512(%rbp), %rsi
	pushq	%rsi
	leaq	-496(%rbp), %rsi
	pushq	%rsi
	leaq	-480(%rbp), %rsi
	pushq	%rsi
	leaq	-464(%rbp), %rsi
	pushq	%rsi
	leaq	-448(%rbp), %rsi
	pushq	%rsi
	leaq	-432(%rbp), %rsi
	pushq	%rsi
	leaq	-416(%rbp), %rsi
	pushq	%rsi
	leaq	-400(%rbp), %rsi
	pushq	%rsi
	leaq	-384(%rbp), %rsi
	pushq	%rsi
	leaq	-368(%rbp), %rsi
	pushq	%rsi
	leaq	-352(%rbp), %rsi
	pushq	%rsi
	leaq	-336(%rbp), %rsi
	pushq	%rsi
	leaq	-320(%rbp), %rsi
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	leaq	-272(%rbp), %rsi
	pushq	%rsi
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$40, %edi
	movl	$0, %eax
	call	z
	addq	$288, %rsp
	movl	-8(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movl	%edx, -176(%rbp,%rax,4)
	movl	-12(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, -192(%rbp,%rax,4)
	movl	-16(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movl	%edx, -208(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	movl	-20(%rbp), %edx
	movl	%edx, -224(%rbp,%rax,4)
	movl	-24(%rbp), %eax
	cltq
	movl	-24(%rbp), %edx
	movl	%edx, -240(%rbp,%rax,4)
	movl	-28(%rbp), %eax
	cltq
	movl	-28(%rbp), %edx
	movl	%edx, -256(%rbp,%rax,4)
	movl	-32(%rbp), %eax
	cltq
	movl	-32(%rbp), %edx
	movl	%edx, -272(%rbp,%rax,4)
	movl	-36(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movl	%edx, -288(%rbp,%rax,4)
	movl	-40(%rbp), %eax
	cltq
	movl	-40(%rbp), %edx
	movl	%edx, -304(%rbp,%rax,4)
	movl	-44(%rbp), %eax
	cltq
	movl	-44(%rbp), %edx
	movl	%edx, -320(%rbp,%rax,4)
	movl	-48(%rbp), %eax
	cltq
	movl	-48(%rbp), %edx
	movl	%edx, -336(%rbp,%rax,4)
	movl	-52(%rbp), %eax
	cltq
	movl	-52(%rbp), %edx
	movl	%edx, -352(%rbp,%rax,4)
	movl	-56(%rbp), %eax
	cltq
	movl	-56(%rbp), %edx
	movl	%edx, -368(%rbp,%rax,4)
	movl	-60(%rbp), %eax
	cltq
	movl	-60(%rbp), %edx
	movl	%edx, -384(%rbp,%rax,4)
	movl	-64(%rbp), %eax
	cltq
	movl	-64(%rbp), %edx
	movl	%edx, -400(%rbp,%rax,4)
	movl	-68(%rbp), %eax
	cltq
	movl	-68(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	movl	-72(%rbp), %eax
	cltq
	movl	-72(%rbp), %edx
	movl	%edx, -432(%rbp,%rax,4)
	movl	-76(%rbp), %eax
	cltq
	movl	-76(%rbp), %edx
	movl	%edx, -448(%rbp,%rax,4)
	movl	-80(%rbp), %eax
	cltq
	movl	-80(%rbp), %edx
	movl	%edx, -464(%rbp,%rax,4)
	movl	-84(%rbp), %eax
	cltq
	movl	-84(%rbp), %edx
	movl	%edx, -480(%rbp,%rax,4)
	movl	-88(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movl	%edx, -496(%rbp,%rax,4)
	movl	-92(%rbp), %eax
	cltq
	movl	-92(%rbp), %edx
	movl	%edx, -512(%rbp,%rax,4)
	movl	-96(%rbp), %eax
	cltq
	movl	-96(%rbp), %edx
	movl	%edx, -528(%rbp,%rax,4)
	movl	-100(%rbp), %eax
	cltq
	movl	-100(%rbp), %edx
	movl	%edx, -544(%rbp,%rax,4)
	movl	-104(%rbp), %eax
	cltq
	movl	-104(%rbp), %edx
	movl	%edx, -560(%rbp,%rax,4)
	movl	-108(%rbp), %eax
	cltq
	movl	-108(%rbp), %edx
	movl	%edx, -576(%rbp,%rax,4)
	movl	-112(%rbp), %eax
	cltq
	movl	-112(%rbp), %edx
	movl	%edx, -592(%rbp,%rax,4)
	movl	-116(%rbp), %eax
	cltq
	movl	-116(%rbp), %edx
	movl	%edx, -608(%rbp,%rax,4)
	movl	-120(%rbp), %eax
	cltq
	movl	-120(%rbp), %edx
	movl	%edx, -624(%rbp,%rax,4)
	movl	-124(%rbp), %eax
	cltq
	movl	-124(%rbp), %edx
	movl	%edx, -640(%rbp,%rax,4)
	movl	-128(%rbp), %eax
	cltq
	movl	-128(%rbp), %edx
	movl	%edx, -656(%rbp,%rax,4)
	movl	-132(%rbp), %eax
	cltq
	movl	-132(%rbp), %edx
	movl	%edx, -672(%rbp,%rax,4)
	movl	-136(%rbp), %eax
	cltq
	movl	-136(%rbp), %edx
	movl	%edx, -688(%rbp,%rax,4)
	movl	-140(%rbp), %eax
	cltq
	movl	-140(%rbp), %edx
	movl	%edx, -704(%rbp,%rax,4)
	movl	-144(%rbp), %eax
	cltq
	movl	-144(%rbp), %edx
	movl	%edx, -720(%rbp,%rax,4)
	movl	-148(%rbp), %eax
	cltq
	movl	-148(%rbp), %edx
	movl	%edx, -736(%rbp,%rax,4)
	movl	-152(%rbp), %eax
	cltq
	movl	-152(%rbp), %edx
	movl	%edx, -752(%rbp,%rax,4)
	movl	-156(%rbp), %eax
	cltq
	movl	-156(%rbp), %edx
	movl	%edx, -768(%rbp,%rax,4)
	movl	-160(%rbp), %eax
	cltq
	movl	-160(%rbp), %edx
	movl	%edx, -784(%rbp,%rax,4)
	movl	-164(%rbp), %eax
	cltq
	movl	-164(%rbp), %edx
	movl	%edx, -800(%rbp,%rax,4)
	subq	$8, %rsp
	leaq	-240(%rbp), %r8
	leaq	-224(%rbp), %rdi
	leaq	-208(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	-800(%rbp), %rsi
	pushq	%rsi
	leaq	-784(%rbp), %rsi
	pushq	%rsi
	leaq	-768(%rbp), %rsi
	pushq	%rsi
	leaq	-752(%rbp), %rsi
	pushq	%rsi
	leaq	-736(%rbp), %rsi
	pushq	%rsi
	leaq	-720(%rbp), %rsi
	pushq	%rsi
	leaq	-704(%rbp), %rsi
	pushq	%rsi
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	leaq	-672(%rbp), %rsi
	pushq	%rsi
	leaq	-656(%rbp), %rsi
	pushq	%rsi
	leaq	-640(%rbp), %rsi
	pushq	%rsi
	leaq	-624(%rbp), %rsi
	pushq	%rsi
	leaq	-608(%rbp), %rsi
	pushq	%rsi
	leaq	-592(%rbp), %rsi
	pushq	%rsi
	leaq	-576(%rbp), %rsi
	pushq	%rsi
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	leaq	-544(%rbp), %rsi
	pushq	%rsi
	leaq	-528(%rbp), %rsi
	pushq	%rsi
	leaq	-512(%rbp), %rsi
	pushq	%rsi
	leaq	-496(%rbp), %rsi
	pushq	%rsi
	leaq	-480(%rbp), %rsi
	pushq	%rsi
	leaq	-464(%rbp), %rsi
	pushq	%rsi
	leaq	-448(%rbp), %rsi
	pushq	%rsi
	leaq	-432(%rbp), %rsi
	pushq	%rsi
	leaq	-416(%rbp), %rsi
	pushq	%rsi
	leaq	-400(%rbp), %rsi
	pushq	%rsi
	leaq	-384(%rbp), %rsi
	pushq	%rsi
	leaq	-368(%rbp), %rsi
	pushq	%rsi
	leaq	-352(%rbp), %rsi
	pushq	%rsi
	leaq	-336(%rbp), %rsi
	pushq	%rsi
	leaq	-320(%rbp), %rsi
	pushq	%rsi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	leaq	-272(%rbp), %rsi
	pushq	%rsi
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$40, %edi
	movl	$0, %eax
	call	c
	addq	$288, %rsp
	addl	$1, -4(%rbp)
L30:
	movl	-4(%rbp), %eax
	cmpl	-804(%rbp), %eax
	jl	L31
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	exit
s:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L34
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L34:
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	L35
L38:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L36
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L37
L36:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L37:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	-212(%rbp), %edx
	movl	%edx, (%rax)
L35:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jne	L38
	leave
	ret
z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L40
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L40:
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	L41
L44:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L43
L42:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L43:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
L41:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jne	L44
	leave
	ret
c:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L46
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L46:
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	L47
L50:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L48
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L49
L48:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L49:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-212(%rbp), %eax
	je	L47
	call	abort
L47:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jne	L50
	leave
	ret
