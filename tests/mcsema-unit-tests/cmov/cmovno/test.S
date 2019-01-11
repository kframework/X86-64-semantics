TEST_BEGIN(CMOVNOr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnow %ax, %bx
TEST_END

TEST_BEGIN(CMOVNOr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnol %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNOr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnoq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNOr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnow -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNOr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnol  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNOr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnoq  -8(%rsp), %rbx
TEST_END_64
