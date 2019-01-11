TEST_BEGIN(CMOVBEr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovbew %ax, %bx
TEST_END

TEST_BEGIN(CMOVBEr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovbel %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVBEr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovbeq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVBEr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbew -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVBEr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbel  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVBEr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovbeq  -8(%rsp), %rbx
TEST_END_64
