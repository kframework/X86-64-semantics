TEST_BEGIN(CMOVNBr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnbw %ax, %bx
TEST_END

TEST_BEGIN(CMOVNBr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnbl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNBr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnbq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNBr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNBr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNBr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbq  -8(%rsp), %rbx
TEST_END_64
