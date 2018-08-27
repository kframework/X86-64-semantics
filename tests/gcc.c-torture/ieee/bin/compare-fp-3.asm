test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-8(%rbp), %xmm2
    jp	L1
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    jne	L1
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm4
    vucomiss	-8(%rbp), %xmm4
    jp	L6
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm5
    vucomiss	-8(%rbp), %xmm5
    je	L1
L6:
    movl	$0, %eax
    call	link_error0
L1:
    leave
    ret
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-8(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-4(%rbp), %xmm2
    jbe	L7
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    jbe	L7
    movl	$0, %eax
    call	link_error0
L7:
    leave
    ret
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-8(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-4(%rbp), %xmm2
    jbe	L13
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    jbe	L13
    movl	$0, %eax
    call	link_error0
L13:
    leave
    ret
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-8(%rbp), %xmm2
    jp	L22
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    je	L19
L22:
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm4
    vucomiss	-8(%rbp), %xmm4
    jp	L19
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm5
    vucomiss	-8(%rbp), %xmm5
    jne	L19
    movl	$0, %eax
    call	link_error1
L19:
    leave
    ret
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-8(%rbp), %xmm2
    jp	L23
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    jnb	L23
    movl	-8(%rbp), %eax
    vmovd	%eax, %xmm4
    vucomiss	-4(%rbp), %xmm4
    ja	L23
    movl	$0, %eax
    call	link_error1
L23:
    leave
    ret
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-8(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-4(%rbp), %xmm2
    jp	L25
    movl	-8(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-4(%rbp), %xmm3
    jnb	L25
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm4
    vucomiss	-8(%rbp), %xmm4
    ja	L25
    movl	$0, %eax
    call	link_error1
L25:
    leave
    ret
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm2
    vucomiss	-8(%rbp), %xmm2
    jp	L27
    movl	-4(%rbp), %eax
    vmovd	%eax, %xmm3
    vucomiss	-8(%rbp), %xmm3
    jnp	L27
    movl	$0, %eax
    call	link_error1
L27:
    leave
    ret
all_tests:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test1
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test2
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test3
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test4
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test5
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test6
    movl	-8(%rbp), %edx
    movl	-4(%rbp), %eax
    vmovd	%edx, %xmm1
    vmovd	%eax, %xmm0
    call	test7
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm1, %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    call	all_tests
    vmovss $LC1(%rip), %xmm1
    vmovss $LC2(%rip), %xmm0
    call	all_tests
    vmovss $LC3(%rip), %xmm1
    vmovss $LC4(%rip), %xmm0
    call	all_tests
    movl	$0, %eax
    popq	%rbp
    ret
link_error0:
    pushq	%rbp
    movq	%rsp, %rbp
    popq	%rbp
    ret
link_error1:
    pushq	%rbp
    movq	%rsp, %rbp
    popq	%rbp
    ret
LC1:
    .long	1073741824
LC2:
    .long	1065353216
LC3:
    .long	1077936128
LC4:
    .long	1082130432
