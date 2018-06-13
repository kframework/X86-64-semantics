TEST_BEGIN(CMOVNZr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnzw %ax, %bx
TEST_END

TEST_BEGIN(CMOVNZr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnzl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNZr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnzq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNZr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnzw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNZr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnzl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNZr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnzq  -8(%rsp), %rbx
TEST_END_64
