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
a:
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.zero	2
b:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.zero	2
c:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L10
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L10
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L10
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	L11
L10:
	call	abort
L11:
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L12
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L12
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L12
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L12
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	je	L13
L12:
	call	abort
L13:
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	addq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	L14
	call	abort
L14:
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L15
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	je	L16
L15:
	call	abort
L16:
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movabsq	$4296015872, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L17
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	je	L18
L17:
	call	abort
L18:
	movabsq	$8589934591, %rax
	andq	c(%rip), %rax
	addq	$1, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	c(%rip), %rdx
	movabsq	$-8589934592, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, c(%rip)
	movabsq	$8589934591, %rax
	andq	c(%rip), %rax
	testq	%rax, %rax
	jne	L19
	movabsq	$1099511627775, %rax
	andq	c+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	c+8(%rip), %rdx
	movabsq	$-1099511627776, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, c+8(%rip)
	movabsq	$1099511627775, %rax
	andq	c+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	cmpq	%rax, %rdx
	jne	L19
	movabsq	$2199023255551, %rax
	andq	c+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rcx
	andq	%rcx, %rax
	movl	%eax, %ecx
	movl	c+16(%rip), %esi
	andl	$0, %esi
	orl	%esi, %ecx
	movl	%ecx, c+16(%rip)
	shrq	$32, %rax
	andl	$511, %eax
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	c+20(%rip), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, c+20(%rip)
	testq	%rdx, %rdx
	je	L20
L19:
	call	abort
L20:
	movl	$0, %edi
	call	exit
