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
data:
	.quad	81985529216486895
	.quad	163971058432973790
	.quad	327942116865947580
	.quad	655884233731895160
	.quad	1311768467463790320
	.quad	2623536934927580640
	.quad	5247073869855161280
	.quad	-7952596333999229056
	.quad	2541551405711093504
	.quad	5083102811422187008
	.quad	-8280538450865177600
	.quad	1885667171979196416
	.quad	3771334343958392832
	.quad	7542668687916785664
	.quad	-3361406697875980288
	.quad	-6722813395751960576
	.quad	5001117282205630464
	.quad	-8444509509298290688
	.quad	1557725055112970240
	.quad	3115450110225940480
	.quad	6230900220451880960
	.quad	-5984943632805789696
	.quad	6476856808097972224
	.quad	-5493030457513607168
	.quad	7460683158682337280
	.quad	-3525377756344877056
	.quad	-7050755512689754112
	.quad	4345233048330043392
	.quad	8690466096660086784
	.quad	-1065811880389378048
	.quad	-2131623760778756096
	.quad	-4263247521557512192
	.quad	-8526495043115024384
	.quad	1393753987479502848
	.quad	2787507974959005696
	.quad	5575015949918011392
	.quad	-7296712173873528832
	.quad	3853319725962493952
	.quad	7706639451924987904
	.quad	-3033465169859575808
	.quad	-6066930339719151616
	.quad	6312883394271248384
	.quad	-5820977285167054848
	.quad	6804789503375441920
	.quad	-4837165066958667776
	.quad	8772413939792216064
	.quad	-901916194125119488
	.quad	-1803832388250238976
	.quad	-3607664776500477952
	.quad	-7215329553000955904
	.quad	4016084967707639808
	.quad	8032169935415279616
	.quad	-2382404202878992384
	.quad	-4764808405757984768
	.quad	8917127262193582080
	.quad	-612489549322387456
	.quad	-1224979098644774912
	.quad	-2449958197289549824
	.quad	-4899916394579099648
	.quad	8646911284551352320
	.quad	-1152921504606846976
	.quad	-2305843009213693952
	.quad	-4611686018427387904
	.quad	-9223372036854775808
variable_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	popq	%rbp
	ret
constant_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$63, -12(%rbp)
	ja	L12
	movl	-12(%rbp), %eax
	movq	L14(,%rax,8), %rax
	jmp	*%rax
L14:
	.quad	L80
	.quad	L15
	.quad	L16
	.quad	L17
	.quad	L18
	.quad	L19
	.quad	L20
	.quad	L21
	.quad	L22
	.quad	L23
	.quad	L24
	.quad	L25
	.quad	L26
	.quad	L27
	.quad	L28
	.quad	L29
	.quad	L30
	.quad	L31
	.quad	L32
	.quad	L33
	.quad	L34
	.quad	L35
	.quad	L36
	.quad	L37
	.quad	L38
	.quad	L39
	.quad	L40
	.quad	L41
	.quad	L42
	.quad	L43
	.quad	L44
	.quad	L45
	.quad	L46
	.quad	L47
	.quad	L48
	.quad	L49
	.quad	L50
	.quad	L51
	.quad	L52
	.quad	L53
	.quad	L54
	.quad	L55
	.quad	L56
	.quad	L57
	.quad	L58
	.quad	L59
	.quad	L60
	.quad	L61
	.quad	L62
	.quad	L63
	.quad	L64
	.quad	L65
	.quad	L66
	.quad	L67
	.quad	L68
	.quad	L69
	.quad	L70
	.quad	L71
	.quad	L72
	.quad	L73
	.quad	L74
	.quad	L75
	.quad	L76
	.quad	L77
L15:
	salq	-8(%rbp)
	jmp	L78
L16:
	salq	$2, -8(%rbp)
	jmp	L78
L17:
	salq	$3, -8(%rbp)
	jmp	L78
L18:
	salq	$4, -8(%rbp)
	jmp	L78
L19:
	salq	$5, -8(%rbp)
	jmp	L78
L20:
	salq	$6, -8(%rbp)
	jmp	L78
L21:
	salq	$7, -8(%rbp)
	jmp	L78
L22:
	salq	$8, -8(%rbp)
	jmp	L78
L23:
	salq	$9, -8(%rbp)
	jmp	L78
L24:
	salq	$10, -8(%rbp)
	jmp	L78
L25:
	salq	$11, -8(%rbp)
	jmp	L78
L26:
	salq	$12, -8(%rbp)
	jmp	L78
L27:
	salq	$13, -8(%rbp)
	jmp	L78
L28:
	salq	$14, -8(%rbp)
	jmp	L78
L29:
	salq	$15, -8(%rbp)
	jmp	L78
L30:
	salq	$16, -8(%rbp)
	jmp	L78
L31:
	salq	$17, -8(%rbp)
	jmp	L78
L32:
	salq	$18, -8(%rbp)
	jmp	L78
L33:
	salq	$19, -8(%rbp)
	jmp	L78
L34:
	salq	$20, -8(%rbp)
	jmp	L78
L35:
	salq	$21, -8(%rbp)
	jmp	L78
L36:
	salq	$22, -8(%rbp)
	jmp	L78
L37:
	salq	$23, -8(%rbp)
	jmp	L78
L38:
	salq	$24, -8(%rbp)
	jmp	L78
L39:
	salq	$25, -8(%rbp)
	jmp	L78
L40:
	salq	$26, -8(%rbp)
	jmp	L78
L41:
	salq	$27, -8(%rbp)
	jmp	L78
L42:
	salq	$28, -8(%rbp)
	jmp	L78
L43:
	salq	$29, -8(%rbp)
	jmp	L78
L44:
	salq	$30, -8(%rbp)
	jmp	L78
L45:
	salq	$31, -8(%rbp)
	jmp	L78
L46:
	salq	$32, -8(%rbp)
	jmp	L78
L47:
	salq	$33, -8(%rbp)
	jmp	L78
L48:
	salq	$34, -8(%rbp)
	jmp	L78
L49:
	salq	$35, -8(%rbp)
	jmp	L78
L50:
	salq	$36, -8(%rbp)
	jmp	L78
L51:
	salq	$37, -8(%rbp)
	jmp	L78
L52:
	salq	$38, -8(%rbp)
	jmp	L78
L53:
	salq	$39, -8(%rbp)
	jmp	L78
L54:
	salq	$40, -8(%rbp)
	jmp	L78
L55:
	salq	$41, -8(%rbp)
	jmp	L78
L56:
	salq	$42, -8(%rbp)
	jmp	L78
L57:
	salq	$43, -8(%rbp)
	jmp	L78
L58:
	salq	$44, -8(%rbp)
	jmp	L78
L59:
	salq	$45, -8(%rbp)
	jmp	L78
L60:
	salq	$46, -8(%rbp)
	jmp	L78
L61:
	salq	$47, -8(%rbp)
	jmp	L78
L62:
	salq	$48, -8(%rbp)
	jmp	L78
L63:
	salq	$49, -8(%rbp)
	jmp	L78
L64:
	salq	$50, -8(%rbp)
	jmp	L78
L65:
	salq	$51, -8(%rbp)
	jmp	L78
L66:
	salq	$52, -8(%rbp)
	jmp	L78
L67:
	salq	$53, -8(%rbp)
	jmp	L78
L68:
	salq	$54, -8(%rbp)
	jmp	L78
L69:
	salq	$55, -8(%rbp)
	jmp	L78
L70:
	salq	$56, -8(%rbp)
	jmp	L78
L71:
	salq	$57, -8(%rbp)
	jmp	L78
L72:
	salq	$58, -8(%rbp)
	jmp	L78
L73:
	salq	$59, -8(%rbp)
	jmp	L78
L74:
	salq	$60, -8(%rbp)
	jmp	L78
L75:
	salq	$61, -8(%rbp)
	jmp	L78
L76:
	salq	$62, -8(%rbp)
	jmp	L78
L77:
	salq	$63, -8(%rbp)
	jmp	L78
L12:
	call	abort
L80:
	nop
L78:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L82
L84:
	movabsq	$81985529216486895, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	variable_shift
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	data(,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	je	L83
	call	abort
L83:
	addl	$1, -4(%rbp)
L82:
	cmpl	$63, -4(%rbp)
	jle	L84
	movl	$0, -4(%rbp)
	jmp	L85
L87:
	movabsq	$81985529216486895, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	constant_shift
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	data(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	je	L86
	call	abort
L86:
	addl	$1, -4(%rbp)
L85:
	cmpl	$63, -4(%rbp)
	jle	L87
	movl	$0, %edi
	call	exit
