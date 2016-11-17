	.text
	.file	"test_1.c"
	.globl	foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jge	.LBB0_2
# BB#1:                                 # %if.then
	leaq	-8(%rbp), %rdi
	callq	fooA
	movabsq	$.L.str, %rdi
	movl	-8(%rbp), %esi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	leaq	-10(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	callq	fooB
	movabsq	$.L.str.1, %rdi
	movswl	-10(%rbp), %esi
	movswl	-12(%rbp), %edx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB0_3:                                # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%hd %hd"
	.size	.L.str.1, 8


	.ident	"clang version 4.0.0 (git@github.com:llvm-mirror/clang.git 147b50f9a6934437647b4ba021697b9d83ec5644) (https://github.com/llvm-mirror/llvm.git 0d8c32f076b2366e7c9690044dc8f833d6ed0841)"
	.section	".note.GNU-stack","",@progbits
