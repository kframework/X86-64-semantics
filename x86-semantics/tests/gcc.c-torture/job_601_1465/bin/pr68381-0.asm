    .text
    .globl	strlen
strlen:
    cmpb	$0, (%rdi)
    je	L4
    movl	$0, %eax
L3:
    addq	$1, %rax
    cmpb	$0, (%rdi,%rax)
    jne	L3
    ret
L4:
    movl	$0, %eax
    ret
    .globl	strcpy
strcpy:
    movq	%rdi, %rax
    movq	%rdi, %rdx
L9:
    addq	$1, %rdx
    addq	$1, %rsi
    movzbl	-1(%rsi), %ecx
    movb	%cl, -1(%rdx)
    testb	%cl, %cl
    jne	L9
    ret
    .globl	strcmp
strcmp:
    movzbl	(%rdi), %eax
    testb	%al, %al
    je	L12
    cmpb	(%rsi), %al
    jne	L12
L14:
    addq	$1, %rdi
    addq	$1, %rsi
    movzbl	(%rdi), %eax
    testb	%al, %al
    je	L12
    cmpb	(%rsi), %al
    je	L14
L12:
    movzbl	%al, %eax
    movzbl	(%rsi), %edx
    subl	%edx, %eax
    ret
    .globl	strchr
strchr:
    jmp	L17
L19:
    addq	$1, %rdi
    testb	%al, %al
    je	L20
L17:
    movzbl	(%rdi), %eax
    cmpb	%sil, %al
    jne	L19
    movq	%rdi, %rax
    ret
L20:
    movl	$0, %eax
    ret
    .globl	strncpy
strncpy:
    movq	%rdi, %rax
    leaq	(%rdi,%rdx), %r10
    movq	%rdi, %rcx
    jmp	L24
L26:
    movq	%r9, %rdx
L24:
    leaq	-1(%rdx), %r9
    cmpq	%r10, %rcx
    je	L28
    addq	$1, %rcx
    addq	$1, %rsi
    movzbl	-1(%rsi), %r8d
    movb	%r8b, -1(%rcx)
    testb	%r8b, %r8b
    jne	L26
    testq	%r9, %r9
    je	L28
    leaq	-1(%rcx,%rdx), %rdx
L25:
    addq	$1, %rcx
    movb	$0, -1(%rcx)
    cmpq	%rdx, %rcx
    jne	L25
L28:
    ret
    .globl	strncmp
strncmp:
    addq	%rsi, %rdx
    jmp	L30
L32:
    addq	$1, %rdi
    movzbl	-1(%rdi), %eax
    addq	$1, %rsi
    movzbl	-1(%rsi), %ecx
    cmpb	%cl, %al
    je	L30
    movzbl	%al, %eax
    movzbl	%cl, %ecx
    subl	%ecx, %eax
    ret
L30:
    cmpq	%rdx, %rsi
    jne	L32
    movl	$0, %eax
    ret
    .globl	memcmp
memcmp:
    leaq	-1(%rdx), %r8
    testq	%rdx, %rdx
    je	L40
    movzbl	(%rdi), %edx
    movzbl	(%rsi), %ecx
    cmpb	%cl, %dl
    jne	L37
    movl	$0, %eax
    jmp	L38
L39:
    movzbl	1(%rdi,%rax), %edx
    addq	$1, %rax
    movzbl	(%rsi,%rax), %ecx
    cmpb	%cl, %dl
    je	L38
L37:
    movzbl	%dl, %eax
    movzbl	%cl, %ecx
    subl	%ecx, %eax
    ret
L38:
    cmpq	%r8, %rax
    jne	L39
    movl	$0, %eax
    ret
L40:
    movl	$0, %eax
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    movq $-1, %rax
    jmp %rax
    
    ret
    .globl	exit
exit:
    movq $-1, %rax
    jmp %rax
    
    ret
    .globl	abort
abort:
    movq $-1, %rax
    jmp %rax
    
    ret
    .globl	memset
memset:
    movq	%rdi, %rax
    testq	%rdx, %rdx
    je	L50
    addq	%rdi, %rdx
    movq	%rdi, %rcx
L48:
    addq	$1, %rcx
    movb	%sil, -1(%rcx)
    cmpq	%rcx, %rdx
    jne	L48
L50:
    ret
    .globl	memcpy
memcpy:
    movq	%rdi, %rax
    testq	%rdx, %rdx
    je	L55
    movl	$0, %ecx
L53:
    movzbl	(%rsi,%rcx), %r8d
    movb	%r8b, (%rax,%rcx)
    addq	$1, %rcx
    cmpq	%rdx, %rcx
    jne	L53
L55:
    ret
    .globl	malloc
malloc:
    movl	$1000, %eax
    ret
    .globl	calloc
calloc:
    movl	$1000, %eax
    ret
    .globl	free
free:
    ret
    .globl	isprint
isprint:
    movl	%edi, %edx
    andl	$-33, %edx
    subl	$65, %edx
    movl	$1, %eax
    cmpl	$25, %edx
    jbe	L62
    subl	$48, %edi
    cmpl	$9, %edi
    setbe	%al
    movzbl	%al, %eax
L62:
    ret
    .globl	foo
foo:
    movzwl	%di, %eax
    movzwl	%si, %esi
    mull	%esi
    seto	%dl
    movzbl	%dl, %edx
    testl	%eax, %eax
    movl	$1, %ecx
    cmovs	%ecx, %edx
    testl	%edx, %edx
    je	L70
    subq	$8, %rsp
    call	abort
L70:
    ret
    .globl	main
.globl _start
_start:
    subq	$8, %rsp
    movl	$2, %esi
    movl	$1, %edi
    call	foo
    cmpl	$2, %eax
    je	L73
    call	abort
L73:
    movl	$0, %eax
    addq	$8, %rsp
    ret
