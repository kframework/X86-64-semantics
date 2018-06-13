TEST_BEGIN(CMOVNPr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnpw %ax, %bx
TEST_END

TEST_BEGIN(CMOVNPr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnpl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNPr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnpq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNPr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnpw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNPr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnpl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNPr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnpq  -8(%rsp), %rbx
TEST_END_64
