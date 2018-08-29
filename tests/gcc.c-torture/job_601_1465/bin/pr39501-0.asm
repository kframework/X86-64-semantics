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
    .globl	float_min1
float_min1:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm2
    vminss	-4(%rbp), %xmm2, %xmm0
    popq	%rbp
    ret
    .globl	float_min2
float_min2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm2
    vminss	-8(%rbp), %xmm2, %xmm0
    popq	%rbp
    ret
    .globl	float_max1
float_max1:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-8(%rbp), %xmm2
    vmaxss	-4(%rbp), %xmm2, %xmm0
    popq	%rbp
    ret
    .globl	float_max2
float_max2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm2
    vmaxss	-8(%rbp), %xmm2, %xmm0
    popq	%rbp
    ret
    .globl	double_min1
double_min1:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm2
    vminsd	-8(%rbp), %xmm2, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	double_min2
double_min2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm2
    vminsd	-16(%rbp), %xmm2, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	double_max1
double_max1:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm2
    vmaxsd	-8(%rbp), %xmm2, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	double_max2
double_max2:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm2
    vmaxsd	-16(%rbp), %xmm2, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	LC0(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L218
    call	abort
L218:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L219
    call	abort
L219:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L220
    call	abort
L220:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L221
    call	abort
L221:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L222
    call	abort
L222:
    vmovss	LC0(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_min1
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L223
    call	abort
L223:
    vmovss	LC0(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L224
    call	abort
L224:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L225
    call	abort
L225:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L226
    call	abort
L226:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L227
    call	abort
L227:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L228
    call	abort
L228:
    vmovss	LC0(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_max1
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L229
    call	abort
L229:
    vmovss	LC0(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L230
    call	abort
L230:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L231
    call	abort
L231:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L232
    call	abort
L232:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L233
    call	abort
L233:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L234
    call	abort
L234:
    vmovss	LC0(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_min2
    vmovaps	%xmm0, %xmm1
    vmovss	LC0(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L235
    call	abort
L235:
    vmovss	LC0(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L236
    call	abort
L236:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcomiss	%xmm0, %xmm1
    je	L237
    call	abort
L237:
    vmovss	LC2(%rip), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L238
    call	abort
L238:
    vxorps	%xmm1, %xmm1, %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L239
    call	abort
L239:
    vmovss	LC2(%rip), %xmm1
    vmovss	LC0(%rip), %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L240
    call	abort
L240:
    vmovss	LC0(%rip), %xmm1
    vmovss	LC2(%rip), %xmm0
    call	float_max2
    vmovaps	%xmm0, %xmm1
    vmovss	LC2(%rip), %xmm0
    vcomiss	%xmm0, %xmm1
    je	L241
    call	abort
L241:
    vmovsd	LC3(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm2
    vcomisd	%xmm0, %xmm2
    je	L242
    call	abort
L242:
    movabsq	$-4616189618054758400, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm3
    vcomisd	%xmm0, %xmm3
    je	L243
    call	abort
L243:
    vmovsd	LC5(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vcomisd	%xmm0, %xmm4
    je	L244
    call	abort
L244:
    movabsq	$4607182418800017408, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vcomisd	%xmm0, %xmm5
    je	L245
    call	abort
L245:
    vmovsd	LC5(%rip), %xmm0
    movabsq	$-4616189618054758400, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm6
    vcomisd	%xmm0, %xmm6
    je	L246
    call	abort
L246:
    vmovsd	LC3(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_min1
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm7
    vcomisd	%xmm0, %xmm7
    je	L247
    call	abort
L247:
    vmovsd	LC3(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vcomisd	%xmm0, %xmm2
    je	L248
    call	abort
L248:
    movabsq	$-4616189618054758400, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vcomisd	%xmm0, %xmm3
    je	L249
    call	abort
L249:
    vmovsd	LC5(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm4
    vcomisd	%xmm0, %xmm4
    je	L250
    call	abort
L250:
    movabsq	$4607182418800017408, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm5
    vcomisd	%xmm0, %xmm5
    je	L251
    call	abort
L251:
    vmovsd	LC5(%rip), %xmm0
    movabsq	$-4616189618054758400, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm6
    vcomisd	%xmm0, %xmm6
    je	L252
    call	abort
L252:
    vmovsd	LC3(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_max1
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm7
    vcomisd	%xmm0, %xmm7
    je	L253
    call	abort
L253:
    vmovsd	LC3(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm2
    vcomisd	%xmm0, %xmm2
    je	L254
    call	abort
L254:
    movabsq	$-4616189618054758400, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm3
    vcomisd	%xmm0, %xmm3
    je	L255
    call	abort
L255:
    vmovsd	LC5(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vcomisd	%xmm0, %xmm4
    je	L256
    call	abort
L256:
    movabsq	$4607182418800017408, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vcomisd	%xmm0, %xmm5
    je	L257
    call	abort
L257:
    vmovsd	LC5(%rip), %xmm0
    movabsq	$-4616189618054758400, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm6
    vcomisd	%xmm0, %xmm6
    je	L258
    call	abort
L258:
    vmovsd	LC3(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_min2
    vmovq	%xmm0, %rax
    vmovsd	LC3(%rip), %xmm0
    vmovq	%rax, %xmm7
    vcomisd	%xmm0, %xmm7
    je	L259
    call	abort
L259:
    vmovsd	LC3(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vcomisd	%xmm0, %xmm2
    je	L260
    call	abort
L260:
    movabsq	$-4616189618054758400, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vcomisd	%xmm0, %xmm3
    je	L261
    call	abort
L261:
    vmovsd	LC5(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vxorpd	%xmm0, %xmm0, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm4
    vcomisd	%xmm0, %xmm4
    je	L262
    call	abort
L262:
    movabsq	$4607182418800017408, %rax
    vxorpd	%xmm1, %xmm1, %xmm1
    vmovq	%rax, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm5
    vcomisd	%xmm0, %xmm5
    je	L263
    call	abort
L263:
    vmovsd	LC5(%rip), %xmm0
    movabsq	$-4616189618054758400, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm6
    vcomisd	%xmm0, %xmm6
    je	L264
    call	abort
L264:
    vmovsd	LC3(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	double_max2
    vmovq	%xmm0, %rax
    vmovsd	LC5(%rip), %xmm0
    vmovq	%rax, %xmm7
    vcomisd	%xmm0, %xmm7
    je	L265
    call	abort
L265:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	3212836864
LC2:
    .long	1065353216
LC3:
    .long	0
    .long	-1074790400
LC5:
    .long	0
    .long	1072693248
