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
	.comm	buf,50,32
LC0:
	.string	"%d,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d"
va:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	vmovsd	%xmm0, -272(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movl	%esi, -264(%rbp)
	movl	$16, -256(%rbp)
	movl	$64, -252(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L11
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L12
L11:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L12:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L13
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L14
L13:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L14:
	movl	(%rax), %eax
	movl	%eax, -184(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L15
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L16
L15:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L16:
	movl	(%rax), %eax
	movl	%eax, -188(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L18
L17:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L18:
	movl	(%rax), %eax
	movl	%eax, -192(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L19
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L20
L19:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L20:
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L21
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L22
L21:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L22:
	movl	(%rax), %eax
	movl	%eax, -200(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L23
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L24
L23:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L24:
	movl	(%rax), %eax
	movl	%eax, -204(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L25
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L26
L25:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L26:
	movl	(%rax), %eax
	movl	%eax, -208(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L27
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L28
L27:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L28:
	movl	(%rax), %eax
	movl	%eax, -212(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L29
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L30
L29:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L30:
	movl	(%rax), %eax
	movl	%eax, -216(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L31
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L32
L31:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L32:
	movl	(%rax), %eax
	movl	%eax, -220(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L33
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L34
L33:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L34:
	movl	(%rax), %eax
	movl	%eax, -224(%rbp)
	movl	-256(%rbp), %eax
	cmpl	$48, %eax
	jae	L35
	movq	-240(%rbp), %rdx
	movl	-256(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -256(%rbp)
	jmp	L36
L35:
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -248(%rbp)
L36:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	subq	$8, %rsp
	movl	-184(%rbp), %r8d
	movl	-180(%rbp), %edi
	movl	-264(%rbp), %ecx
	movq	-272(%rbp), %rax
	movl	-260(%rbp), %edx
	movl	-228(%rbp), %esi
	pushq	%rsi
	movl	-224(%rbp), %esi
	pushq	%rsi
	movl	-220(%rbp), %esi
	pushq	%rsi
	movl	-216(%rbp), %esi
	pushq	%rsi
	movl	-212(%rbp), %esi
	pushq	%rsi
	movl	-208(%rbp), %esi
	pushq	%rsi
	movl	-204(%rbp), %esi
	pushq	%rsi
	movl	-200(%rbp), %esi
	pushq	%rsi
	movl	-196(%rbp), %esi
	pushq	%rsi
	movl	-192(%rbp), %esi
	pushq	%rsi
	movl	-188(%rbp), %esi
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	vmovq	%rax, %xmm0
	movl	$LC0, %esi
	movl	$buf, %edi
	movl	$1, %eax
	call	sprintf
	addq	$96, %rsp
	leave
	ret
LC2:
	.string	"1,1.000000,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	vmovsd	LC1(%rip), %xmm0
	movl	$1, %edi
	movl	$1, %eax
	call	va
	addq	$80, %rsp
	movl	$buf, %esi
	movl	$LC2, %edi
	call	strcmp
	testl	%eax, %eax
	je	L38
	call	abort
L38:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	1072693248
