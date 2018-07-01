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
FFmul:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
DUPFFdeg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	ret
DUPFFnew:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpl	$0, -20(%rbp)
	js	L14
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
L14:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-8(%rbp), %rax
	leave
	ret
DUPFFfree:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
DUPFFswap:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	ret
DUPFFcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
DUPFFshift_add:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	popq	%rbp
	ret
LC0:
	.string	"DUPFFexgcd called on degrees %d and %d\n"
DUPFFexgcd:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	%eax, %ebx
	jge	L22
	movq	-136(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFexgcd
	jmp	L23
L22:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	$2, %eax
	jne	L24
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	$1, %eax
	je	L25
L24:
	call	abort
L25:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L26
	movq	-136(%rbp), %rax
	jmp	L23
L26:
	movl	$2, -28(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	L27
	movl	$0, -20(%rbp)
L27:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	L28
	movl	$0, -24(%rbp)
L28:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFcopy
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFcopy
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	L29
L32:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	FFmul
	movl	%eax, -88(%rbp)
	jmp	L30
L31:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
	movl	-88(%rbp), %edx
	movl	-96(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	FFmul
	movl	%eax, -100(%rbp)
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
L30:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	-84(%rbp), %eax
	jge	L31
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
L29:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	testl	%eax, %eax
	jg	L32
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	testl	%eax, %eax
	jne	L33
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
L33:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
L23:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
LC1:
	.string	"calling DUPFFexgcd on degrees %d and %d\n"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movl	$1, %edi
	call	DUPFFnew
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$4, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$2, %edi
	call	DUPFFnew
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	$LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFexgcd
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
