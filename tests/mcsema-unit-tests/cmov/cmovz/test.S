TEST_BEGIN(CMOVZr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovzw %ax, %bx
TEST_END

TEST_BEGIN(CMOVZr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovzl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVZr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovzq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVZr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovzw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVZr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovzl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVZr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovzq  -8(%rsp), %rbx
TEST_END_64
