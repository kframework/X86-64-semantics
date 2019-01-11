TEST_BEGIN(CMOVSr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovsw %ax, %bx
TEST_END

TEST_BEGIN(CMOVSr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovsl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVSr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovsq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVSr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovsw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVSr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovsl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVSr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovsq  -8(%rsp), %rbx
TEST_END_64
