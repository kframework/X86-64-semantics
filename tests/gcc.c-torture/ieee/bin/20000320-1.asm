	.comm	uf,4,4
	.comm	ud,8,8
	.bss
failed:
	.zero	4
c:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, ud(%rip)
	movq	ud(%rip), %rax
	vmovq	%rax, %xmm1
	vcvtsd2ss	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, uf(%rip)
	movl	uf(%rip), %eax
	cmpl	-12(%rbp), %eax
	je	L1
	movl	failed(%rip), %eax
	addl	$1, %eax
	movl	%eax, failed(%rip)
L1:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movabsq	$3931642474694443008, %rdi
	call	c
	movl	$1, %esi
	movabsq	$3931642474694443009, %rdi
	call	c
	movl	$1, %esi
	movabsq	$3936146074321813503, %rdi
	call	c
	movl	$1, %esi
	movabsq	$3936146074321813504, %rdi
	call	c
	movl	$1, %esi
	movabsq	$3938397874135498751, %rdi
	call	c
	movl	$2, %esi
	movabsq	$3938397874135498752, %rdi
	call	c
	movl	$2, %esi
	movabsq	$3940649673949183999, %rdi
	call	c
	movl	$2, %esi
	movabsq	$3940649673949184000, %rdi
	call	c
	movl	$2, %esi
	movabsq	$3940649673949184001, %rdi
	call	c
	movl	$8388607, %esi
	movabsq	$4039728865214463999, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728865214464000, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728865214464001, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728865751334911, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728865751334912, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728865751334913, %rdi
	call	c
	movl	$8388608, %esi
	movabsq	$4039728866019770368, %rdi
	call	c
	movl	$8388609, %esi
	movabsq	$4039728866019770369, %rdi
	call	c
	movl	$8388609, %esi
	movabsq	$4039728866556641279, %rdi
	call	c
	movl	$8388610, %esi
	movabsq	$4039728866556641280, %rdi
	call	c
	movl	$8388610, %esi
	movabsq	$4039728867093512192, %rdi
	call	c
	movl	$8388611, %esi
	movabsq	$4039728867093512193, %rdi
	call	c
	movl	failed(%rip), %eax
	testl	%eax, %eax
	je	L4
	call	abort
L4:
	movl	$0, %edi
	call	exit
