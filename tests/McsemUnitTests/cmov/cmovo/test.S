TEST_BEGIN(CMOVOr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovow %ax, %bx
TEST_END

TEST_BEGIN(CMOVOr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovol %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVOr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovoq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVOr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovow -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVOr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovol  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVOr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovoq  -8(%rsp), %rbx
TEST_END_64
