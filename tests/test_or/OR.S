TEST_BEGIN(OR1, 0)

    addq $0x000000007fffffff, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
TEST_END

