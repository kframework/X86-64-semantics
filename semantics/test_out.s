    .text
    .section	.rodata
LC0:
    .string	"Hello World"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    leaq	LC0(%rip), %rdi
    movl	$0, %eax
    call	printf
    movl	$0, %eax
    popq	%rbp
    ret
