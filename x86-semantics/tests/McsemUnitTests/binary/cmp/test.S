TEST_BEGIN(CMPr8r8, 2)
TEST_INPUTS(
    0, 0,
    0, 1,
    1, 0,
    1, 1,
    0, 0xFF,
    0x10, 0, /* AF */
    0xFF, 0x11 /* PF */)

    movw ARG1_16, %ax
    movw ARG2_16, %bx
    cmpb %al, %bl
TEST_END

TEST_BEGIN(CMPr16r16, 2)
TEST_INPUTS(
    0, 0,
    0, 1,
    1, 0,
    1, 1,
    0, 0xFFFF,
    0x10, 0, /* AF */
    0xFF, 0x11 /* PF */)

    movw ARG1_16, %ax
    movw ARG2_16, %bx
    cmpw %bx, %ax
TEST_END

TEST_BEGIN(CMPr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %ax
    cmpw 0xFFFF, %ax
TEST_END

TEST_BEGIN(CMPr32r32, 2)
TEST_INPUTS(
    0, 0,
    0, 1,
    1, 0,
    1, 1,
    0, 0xFFFFFFFF,
    0x10, 0, /* AF */
    0xFF, 0x11 /* PF */)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx
    cmpl %ebx, %eax
TEST_END



TEST_BEGIN_64(CMPr64r64_64, 2)
TEST_INPUTS(
    0, 0,
    0, 1,
    1, 0,
    1, 1,
    0, 0xFFFFFFFFFFFFFFFF,
    1, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 1,
    0xFFFFFFFFFFFFFFFF, 0x7FFFFFFFFFFFFFFF,
    0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    movq ARG2_64, %rbx
    cmpq %rax, %rbx
TEST_END_64
