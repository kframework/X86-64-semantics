TEST_BEGIN(CMOVNLr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnlw %ax, %bx
TEST_END

TEST_BEGIN(CMOVNLr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnll %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNLr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnlq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNLr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnlw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNLr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnll  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNLr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnlq  -8(%rsp), %rbx
TEST_END_64
