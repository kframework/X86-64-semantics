TEST_BEGIN(XORal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    xorb $1, %al
TEST_END

TEST_BEGIN(XORax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %eax
    xorw $1, %ax
TEST_END

TEST_BEGIN(XOReax, 1)
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
    xorl $1, %eax
TEST_END

TEST_BEGIN(XORr8i8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %ebx
    xorb $1, %bl
TEST_END

TEST_BEGIN_64(XORr8u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    xorb $0x7F, %r8b
TEST_END_64

TEST_BEGIN_64(XORr8s8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    xorb $0xFF /* Sign-extended to $64-bits */, %r8b
TEST_END_64

TEST_BEGIN(XORr8r8, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movl ARG1_32, %ebx
    movl ARG2_32, %eax
    xorb %al, %bl
TEST_END

TEST_BEGIN_64(XORr8r8_64, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movb  ARG1_8, %al
    movb  ARG2_8, %bl
    xorb %bl, %al
TEST_END_64

TEST_BEGIN(XORr16u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    xorw $0x7F, %ax
TEST_END

TEST_BEGIN(XORr16s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    xorw $0xFF /* Sign-extended to $16-bits */, %ax
TEST_END

TEST_BEGIN(XORr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    xorw $0xFFFF, %ax
TEST_END

TEST_BEGIN(XORr16r16, 2)
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

    movw  ARG1_16, %ax
    movw  ARG2_16, %bx
    xorw %bx, %ax
TEST_END

TEST_BEGIN(XORr32u8, 1)
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
    xorl $0x7F, %eax
TEST_END

TEST_BEGIN(XORr32s8, 1)
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
    xorl $0xFF, %eax
TEST_END

TEST_BEGIN(XORr32i32, 1)
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
    xorl $0x7FFFFFFF, %eax
TEST_END

TEST_BEGIN(XORr32r32, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFFFFFFFF, 1,
    0xFFFFFFFF, 0xFFFFFFFF,
    0x7FFFFFFF, 1,
    0, 0x10,
    0x7F, 0x10)

    movl ARG1_32, %eax
    movl ARG1_32, %ebx
    xorl %ebx, %eax
TEST_END

TEST_BEGIN_64(XORr64u8_64, 1)
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

    movq ARG1_64, %rax
    xorq $0x7F, %rax
TEST_END_64

TEST_BEGIN_64(XORr64s8_64, 1)
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

    movq ARG1_64, %rax
    xorq $0xFF /* Sign-extended */, %rax
TEST_END_64

TEST_BEGIN_64(XORr64u32_64, 1)
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

    movq ARG1_64, %rax
    xorq $0x7FFFFFFF, %rax
TEST_END_64


TEST_BEGIN_64(XORr64r64_64, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFFFFFFFF, 1,
    0xFFFFFFFF, 0xFFFFFFFF,
    0x7FFFFFFF, 1,
    0, 0x10,
    0x7F, 0x10,
    0x7FFFFFFFFFFFFFFF, 1,
    0x7FFFFFFFFFFFFFFF, 0x7FFFFFFFFFFFFFFF,
    0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    movq ARG1_64, %rbx
    xorq %rbx, %rax
TEST_END_64
