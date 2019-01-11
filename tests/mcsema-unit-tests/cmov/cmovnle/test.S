TEST_BEGIN(CMOVNLEr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnlew %ax, %bx
TEST_END

TEST_BEGIN(CMOVNLEr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnlel %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNLEr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnleq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNLEr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnlew -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNLEr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnlel  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNLEr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnleq  -8(%rsp), %rbx
TEST_END_64
