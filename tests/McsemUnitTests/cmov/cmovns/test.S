TEST_BEGIN(CMOVNSr16r16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_16, %rax
    cmovnsw %ax, %bx
TEST_END

TEST_BEGIN(CMOVNSr32r32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_32, %rax
    cmovnsl %eax, %ebx
TEST_END

TEST_BEGIN_64(CMOVNSr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    cmovnsq %rax, %rbx
TEST_END_64

TEST_BEGIN_64(CMOVNSr16m16, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnsw -8(%rsp), %bx
TEST_END_64

TEST_BEGIN_64(CMOVNSr32m32, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnsl  -8(%rsp), %ebx
TEST_END_64

TEST_BEGIN_64(CMOVNSr64m64, 1)
TEST_INPUTS(
    0x4141414141414141)

    movq ARG1_64, %rax
    pushq %rax
    cmovnsq  -8(%rsp), %rbx
TEST_END_64
