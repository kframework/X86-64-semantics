TEST_BEGIN(SBBal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    sbbb $1, %al
TEST_END

TEST_BEGIN(SBBax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %eax
    sbbw $1, %ax
TEST_END

TEST_BEGIN(SBBeax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %eax
    sbbl $1, %eax
TEST_END

TEST_BEGIN(SBBr8i8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %ebx
    sbbb $1, %bl
TEST_END

TEST_BEGIN_64(SBBr8u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    sbbb $0x7F, %r8b
TEST_END_64

TEST_BEGIN_64(SBBr8s8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    sbbb $0xFF /* Sign-extended to 64-bits */, %r8b
TEST_END_64

TEST_BEGIN(SBBr8r8, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movl ARG1_32, %ebx
    movl ARG2_32, %eax
    sbbb %al, %bl
TEST_END

TEST_BEGIN_64(SBBr8r8_64, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movq ARG1_64, %r8
    movq ARG2_64, %r9
    sbbb %r8b, %r9b
TEST_END_64

TEST_BEGIN(SBBr16u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %ebx
    sbbw $0x7F, %bx
TEST_END

TEST_BEGIN(SBBr16s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %ebx
    sbbw $0xFF /* Sign-extended to $16-bits */, %bx
TEST_END

TEST_BEGIN(SBBr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %ebx
    sbbw $0xFFFF, %bx
TEST_END

TEST_BEGIN(SBBr16r16, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF,
    0x7FFF, 1,
    0x7FFF, 0xFFFF,
    0xFFFF, 0xFFFF)

    movl ARG1_32, %ebx
    movl ARG2_32, %edx
    sbbw %dx, %bx
TEST_END

TEST_BEGIN(SBBr32u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    sbbl $0x7F, %ebx
TEST_END

TEST_BEGIN(SBBr32s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    sbbl $0xFF, %ebx
TEST_END

TEST_BEGIN(SBBr32i32, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    sbbl $0x7FFFFFFF, %ebx
TEST_END

TEST_BEGIN(SBBr32r32, 2)
TEST_INPUTS(
    0, 0, /* ZF */
    1, 0,
    0xFFFFFFFF, 1, /* OF, CF */
    0xFFFFFFFF, 0xFFFFFFFF, /* OF */
    0x7FFFFFFF, 1, /* SF */
    0, 0x10, /* AF */
    0x7F, 0x10 /* PF */)

    movl  ARG1_32, %eax
    movl  ARG2_32, %ebx
    sbbl %ebx, %eax
TEST_END

TEST_BEGIN_64(SBBr64u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movb  ARG1_8, %al
    sbbb $0x7F, %al
TEST_END_64


TEST_BEGIN_64(SBBr64u32_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq  ARG1_64, %rax
    sbbq $0x7FFFFFFF, %rax
TEST_END_64


TEST_BEGIN_64(SBBr64r64_64, 2)
TEST_INPUTS(
    0, 0, /* ZF */
    1, 0,
    0xFFFFFFFF, 1, /* OF, CF */
    0xFFFFFFFF, 0xFFFFFFFF, /* OF */
    0x7FFFFFFF, 1, /* SF */
    0, 0x10, /* AF */
    0x7F, 0x10, /* PF */
    0x7FFFFFFFFFFFFFFF, 1,
    0x7FFFFFFFFFFFFFFF, 0x7FFFFFFFFFFFFFFF,
    0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF)

    movq  ARG1_64, %rax
    movq  ARG1_64, %rbx
    sbbq %rax, %rbx
TEST_END_64
