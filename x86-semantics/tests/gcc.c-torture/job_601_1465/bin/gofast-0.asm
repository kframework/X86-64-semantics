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
    .globl	fp_add
fp_add:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vaddss	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	fp_sub
fp_sub:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vsubss	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	fp_mul
fp_mul:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vmulss	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	fp_div
fp_div:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vdivss	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	fp_neg
fp_neg:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm1
    vmovss	LC0(%rip), %xmm0
    vxorps	%xmm1, %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	dp_add
dp_add:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vaddsd	-16(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	dp_sub
dp_sub:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vsubsd	-16(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	dp_mul
dp_mul:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmulsd	-16(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	dp_div
dp_div:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vdivsd	-16(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	dp_neg
dp_neg:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vxorpd	%xmm1, %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	fp_to_dp
fp_to_dp:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vcvtss2sd	-4(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	dp_to_fp
dp_to_fp:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vcvtsd2ss	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	eqsf2
eqsf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    setnp	%al
    movl	$0, %edx
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	nesf2
nesf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    setp	%al
    movl	$1, %edx
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	gtsf2
gtsf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	gesf2
gesf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    setnb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ltsf2
ltsf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	lesf2
lesf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    setnb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	eqdf2
eqdf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setnp	%al
    movl	$0, %edx
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	nedf2
nedf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setp	%al
    movl	$1, %edx
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	gtdf2
gtdf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	gedf2
gedf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setnb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ltdf2
ltdf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ledf2
ledf2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    setnb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	floatsisf
floatsisf:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	floatsidf
floatsidf:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	-4(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	fixsfsi
fixsfsi:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vcvttss2si	%xmm0, %eax
    popq	%rbp
    ret
    .globl	fixdfsi
fixdfsi:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2si	%xmm0, %eax
    popq	%rbp
    ret
    .globl	fixunssfsi
fixunssfsi:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	fixunsdfsi
fixunsdfsi:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	fail_count
    .bss
fail_count:
    .zero	4
    .text
    .globl	fail
fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	fail_count(%rip), %eax
    addl	$1, %eax
    movl	%eax, fail_count(%rip)
    nop
    popq	%rbp
    ret
    .section	.rodata
LC4:
    .string	"fp_add 1 + 1"
LC6:
    .string	"fp_sub 3-2"
LC8:
    .string	"fp_mul 2*3"
LC10:
    .string	"fp_div 3/2"
LC12:
    .string	"fp_neg 1"
LC15:
    .string	"dp_add 1 + 1"
LC17:
    .string	"dp_sub 3-2"
LC19:
    .string	"dp_mul 2*3"
LC21:
    .string	"dp_div 3/2"
LC23:
    .string	"dp_neg 1"
LC24:
    .string	"fp_to_dp 15"
LC25:
    .string	"dp_to_fp 15"
LC26:
    .string	"floatsisf 1"
LC27:
    .string	"floatsidf 1"
LC29:
    .string	"fixsfsi 142"
LC30:
    .string	"fixunssfsi 142"
LC32:
    .string	"fixdfsi 142"
LC33:
    .string	"fixunsdfsi 142"
LC34:
    .string	"eqsf2 1==1"
LC35:
    .string	"eqsf2 1==2"
LC36:
    .string	"nesf2 1!=1"
LC37:
    .string	"gtsf2 2>1"
LC38:
    .string	"gtsf2 1>1"
LC40:
    .string	"gtsf2 0>1"
LC41:
    .string	"gesf2 2>=1"
LC42:
    .string	"gesf2 1>=1"
LC43:
    .string	"gesf2 0>=1"
LC44:
    .string	"ltsf2 1<2"
LC45:
    .string	"ltsf2 1<1"
LC46:
    .string	"ltsf2 1<0"
LC47:
    .string	"lesf2 1<=2"
LC48:
    .string	"lesf2 1<=1"
LC49:
    .string	"lesf2 1<=0"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	fp_add
    vmovss	LC3(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L164
    vmovss	LC3(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L115
L164:
    movl	$LC4, %edi
    call	fail
L115:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	fp_sub
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L165
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L117
L165:
    movl	$LC6, %edi
    call	fail
L117:
    vmovss	LC5(%rip), %xmm1
    vmovss	LC3(%rip), %xmm0
    call	fp_mul
    vmovss	LC7(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L166
    vmovss	LC7(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L119
L166:
    movl	$LC8, %edi
    call	fail
L119:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	fp_div
    vmovss	LC9(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L167
    vmovss	LC9(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L121
L167:
    movl	$LC10, %edi
    call	fail
L121:
    vmovss	LC2(%rip), %xmm0
    call	fp_neg
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L168
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L123
L168:
    movl	$LC12, %edi
    call	fail
L123:
    vmovsd	LC13(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dp_add
    vmovq	%xmm0, %rax
    vmovsd	LC14(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L169
    vmovsd	LC14(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L125
L169:
    movl	$LC15, %edi
    call	fail
L125:
    vmovsd	LC14(%rip), %xmm0
    movabsq	$4613937818241073152, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dp_sub
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L170
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L127
L170:
    movl	$LC17, %edi
    call	fail
L127:
    vmovsd	LC16(%rip), %xmm0
    movabsq	$4611686018427387904, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dp_mul
    vmovq	%xmm0, %rax
    vmovsd	LC18(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L171
    vmovsd	LC18(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L129
L171:
    movl	$LC19, %edi
    call	fail
L129:
    vmovsd	LC14(%rip), %xmm0
    movabsq	$4613937818241073152, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dp_div
    vmovq	%xmm0, %rax
    vmovsd	LC20(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L172
    vmovsd	LC20(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L131
L172:
    movl	$LC21, %edi
    call	fail
L131:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	dp_neg
    vmovq	%xmm0, %rax
    vmovsd	LC22(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L173
    vmovsd	LC22(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L133
L173:
    movl	$LC23, %edi
    call	fail
L133:
    vmovss	LC9(%rip), %xmm0
    call	fp_to_dp
    vmovq	%xmm0, %rax
    vmovsd	LC20(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L174
    vmovsd	LC20(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L135
L174:
    movl	$LC24, %edi
    call	fail
L135:
    movabsq	$4609434218613702656, %rax
    vmovq	%rax, %xmm0
    call	dp_to_fp
    vmovss	LC9(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L175
    vmovss	LC9(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L137
L175:
    movl	$LC25, %edi
    call	fail
L137:
    movl	$1, %edi
    call	floatsisf
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L176
    vmovss	LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L139
L176:
    movl	$LC26, %edi
    call	fail
L139:
    movl	$1, %edi
    call	floatsidf
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L177
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L141
L177:
    movl	$LC27, %edi
    call	fail
L141:
    vmovss	LC28(%rip), %xmm0
    call	fixsfsi
    cmpl	$1, %eax
    je	L143
    movl	$LC29, %edi
    call	fail
L143:
    vmovss	LC28(%rip), %xmm0
    call	fixunssfsi
    cmpl	$1, %eax
    je	L144
    movl	$LC30, %edi
    call	fail
L144:
    movabsq	$4609073930643513016, %rax
    vmovq	%rax, %xmm0
    call	fixdfsi
    cmpl	$1, %eax
    je	L145
    movl	$LC32, %edi
    call	fail
L145:
    movabsq	$4609073930643513016, %rax
    vmovq	%rax, %xmm0
    call	fixunsdfsi
    cmpl	$1, %eax
    je	L146
    movl	$LC33, %edi
    call	fail
L146:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	eqsf2
    testl	%eax, %eax
    jne	L147
    movl	$LC34, %edi
    call	fail
L147:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	eqsf2
    testl	%eax, %eax
    je	L148
    movl	$LC35, %edi
    call	fail
L148:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	nesf2
    testl	%eax, %eax
    jne	L149
    movl	$LC36, %edi
    call	fail
L149:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	nesf2
    testl	%eax, %eax
    je	L150
    movl	$LC36, %edi
    call	fail
L150:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC3(%rip), %xmm0
    call	gtsf2
    testl	%eax, %eax
    jne	L151
    movl	$LC37, %edi
    call	fail
L151:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	gtsf2
    testl	%eax, %eax
    je	L152
    movl	$LC38, %edi
    call	fail
L152:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	gtsf2
    testl	%eax, %eax
    je	L153
    movl	$LC40, %edi
    call	fail
L153:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC3(%rip), %xmm0
    call	gesf2
    testl	%eax, %eax
    jne	L154
    movl	$LC41, %edi
    call	fail
L154:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	gesf2
    testl	%eax, %eax
    jne	L155
    movl	$LC42, %edi
    call	fail
L155:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	gesf2
    testl	%eax, %eax
    je	L156
    movl	$LC43, %edi
    call	fail
L156:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	ltsf2
    testl	%eax, %eax
    jne	L157
    movl	$LC44, %edi
    call	fail
L157:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	ltsf2
    testl	%eax, %eax
    je	L158
    movl	$LC45, %edi
    call	fail
L158:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	ltsf2
    testl	%eax, %eax
    je	L159
    movl	$LC46, %edi
    call	fail
L159:
    vmovss	LC3(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	lesf2
    testl	%eax, %eax
    jne	L160
    movl	$LC47, %edi
    call	fail
L160:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	lesf2
    testl	%eax, %eax
    jne	L161
    movl	$LC48, %edi
    call	fail
L161:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	lesf2
    testl	%eax, %eax
    je	L162
    movl	$LC49, %edi
    call	fail
L162:
    movl	fail_count(%rip), %eax
    testl	%eax, %eax
    je	L163
    call	abort
L163:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	2147483648
    .long	0
    .long	0
    .long	0
LC1:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
LC2:
    .long	1065353216
LC3:
    .long	1073741824
LC5:
    .long	1077936128
LC7:
    .long	1086324736
LC9:
    .long	1069547520
LC11:
    .long	3212836864
LC13:
    .long	0
    .long	1072693248
LC14:
    .long	0
    .long	1073741824
LC16:
    .long	0
    .long	1074266112
LC18:
    .long	0
    .long	1075314688
LC20:
    .long	0
    .long	1073217536
LC22:
    .long	0
    .long	-1074790400
LC28:
    .long	1068876431
