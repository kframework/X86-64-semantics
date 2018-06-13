TEST_BEGIN(CMOVBr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovbw %ax, %bx
TEST_END

TEST_BEGIN(CMOVBr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovbl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVBr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovbq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVBr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVBr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVBr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbq  -8(%rsp), %rbx
TEST_END_64
