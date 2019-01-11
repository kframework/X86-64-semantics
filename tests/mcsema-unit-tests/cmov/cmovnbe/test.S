TEST_BEGIN(CMOVNBEr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnbew %ax, %bx
TEST_END

TEST_BEGIN(CMOVNBEr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnbel %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNBEr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnbeq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNBEr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbew -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNBEr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbel  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNBEr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnbeq  -8(%rsp), %rbx
TEST_END_64
