TEST_BEGIN(CMOVLEr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovlew %ax, %bx
TEST_END

TEST_BEGIN(CMOVLEr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovlel %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVLEr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovleq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVLEr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovlew -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVLEr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovlel  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVLEr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovleq  -8(%rsp), %rbx
TEST_END_64
