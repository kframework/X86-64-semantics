TEST_BEGIN(CMOVPr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovpw %ax, %bx
TEST_END

TEST_BEGIN(CMOVPr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovpl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVPr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovpq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVPr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovpw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVPr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovpl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVPr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovpq  -8(%rsp), %rbx
TEST_END_64
