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
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
float_min1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm3
	vminss	-4(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_min2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm3
	vminss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_max1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm3
	vmaxss	-4(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_max2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm3
	vmaxss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
double_min1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-16(%rbp), %xmm3
	vminsd	-8(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_min2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-8(%rbp), %xmm3
	vminsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_max1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-16(%rbp), %xmm3
	vmaxsd	-8(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_max2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-8(%rbp), %xmm3
	vmaxsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L200
	call	abort
L200:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L201
	call	abort
L201:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L202
	call	abort
L202:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L203
	call	abort
L203:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L204
	call	abort
L204:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L205
	call	abort
L205:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L206
	call	abort
L206:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L207
	call	abort
L207:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L208
	call	abort
L208:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L209
	call	abort
L209:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L210
	call	abort
L210:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L211
	call	abort
L211:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L212
	call	abort
L212:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L213
	call	abort
L213:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L214
	call	abort
L214:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L215
	call	abort
L215:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L216
	call	abort
L216:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L217
	call	abort
L217:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L218
	call	abort
L218:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L219
	call	abort
L219:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L220
	call	abort
L220:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L221
	call	abort
L221:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L222
	call	abort
L222:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L223
	call	abort
L223:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L224
	call	abort
L224:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L225
	call	abort
L225:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L226
	call	abort
L226:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L227
	call	abort
L227:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L228
	call	abort
L228:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L229
	call	abort
L229:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L230
	call	abort
L230:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L231
	call	abort
L231:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L232
	call	abort
L232:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L233
	call	abort
L233:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L234
	call	abort
L234:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L235
	call	abort
L235:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L236
	call	abort
L236:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L237
	call	abort
L237:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L238
	call	abort
L238:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L239
	call	abort
L239:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L240
	call	abort
L240:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L241
	call	abort
L241:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L242
	call	abort
L242:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L243
	call	abort
L243:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L244
	call	abort
L244:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L245
	call	abort
L245:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L246
	call	abort
L246:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L247
	call	abort
L247:
	movl	$0, %edi
	call	exit
LC0:
	.long	3212836864
LC1:
	.long	0
LC2:
	.long	1065353216
LC3:
	.long	0
	.long	-1074790400
LC5:
	.long	0
	.long	1072693248
