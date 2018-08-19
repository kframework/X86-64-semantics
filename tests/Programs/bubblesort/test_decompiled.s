.section .text
.globl main

swap:
push   %rbp
mov    %rsp,%rbp
mov    %rdi,-24(%rbp)
mov    %rsi,-32(%rbp)
mov    -24(%rbp),%rax
mov    (%rax),%eax
mov    %eax,-4(%rbp)
mov    -32(%rbp),%rax
mov    (%rax),%edx
mov    -24(%rbp),%rax
mov    %edx,(%rax)
mov    -32(%rbp),%rax
mov    -4(%rbp),%edx
mov    %edx,(%rax)
nop
pop    %rbp
retq   
bubbleSort:
push   %rbp
mov    %rsp,%rbp
sub    $32,%rsp
mov    %rdi,-24(%rbp)
mov    %esi,-28(%rbp)
movl   $0,-4(%rbp)

L7:
mov    -28(%rbp),%eax
dec    %eax
cmp    %eax,-4(%rbp)
jge     L8
movl   $0,-8(%rbp)

L6:
mov    -28(%rbp),%eax
sub    -4(%rbp),%eax
dec    %eax
cmp    %eax,-8(%rbp)
jge    L4
mov    -8(%rbp),%eax
cltq   
lea    0(,%rax,4),%rdx
mov    -24(%rbp),%rax
add    %rdx,%rax
mov    (%rax),%edx
mov    -8(%rbp),%eax
cltq   
inc    %rax
lea    0(,%rax,4),%rcx
mov    -24(%rbp),%rax
add    %rcx,%rax
mov    (%rax),%eax
cmp    %eax,%edx
jle    L5
mov    -8(%rbp),%eax
cltq   
inc    %rax
lea    0(,%rax,4),%rdx
mov    -24(%rbp),%rax
add    %rax,%rdx
mov    -8(%rbp),%eax
cltq   
lea    0(,%rax,4),%rcx
mov    -24(%rbp),%rax
add    %rcx,%rax
mov    %rdx,%rsi
mov    %rax,%rdi
callq  swap

L5:
incl   -8(%rbp)
jmp     L6

L4:
incl   -4(%rbp)
jmpq   L7

L8:
nop
leaveq 
retq   

main:
push   %rbp
mov    %rsp,%rbp
sub    $32,%rsp
movl   $4,-32(%rbp)
movl   $0x3,-28(%rbp)
movl   $0x2,-24(%rbp)
movl   $0x1,-20(%rbp)
movl   $0,-16(%rbp)
lea    -32(%rbp),%rax
mov    $0x5,%esi
mov    %rax,%rdi
callq  bubbleSort
mov    $0,%eax
leaveq 
retq   
nopw   0(%rax,%rax,1)
