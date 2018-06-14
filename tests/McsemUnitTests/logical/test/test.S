TEST_BEGIN(TESTal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    testb $1, %al
TEST_END

TEST_BEGIN(TESTax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, %eax
    testw $1, %ax
TEST_END

TEST_BEGIN(TESTeax, 1)
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
    testl $1, %eax
TEST_END

TEST_BEGIN(TESTr8i8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %ebx
    testb $1, %bl
TEST_END

TEST_BEGIN_64(TESTr8u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    testb $0x7F, %r8b
TEST_END_64

TEST_BEGIN_64(TESTr8s8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, %r8
    testb $0xFF /* Sign-extended to $64-bits */, %r8b
TEST_END_64

TEST_BEGIN(TESTr8r8, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movl ARG1_32, %ebx
    movl ARG2_32, %eax
    testb %al, %bl
TEST_END

TEST_BEGIN_64(TESTr8r8_64, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movb  ARG1_8, %al
    movb  ARG2_8, %bl
    testb %bl, %al
TEST_END_64

TEST_BEGIN(TESTr16u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    testw $0x7F, %ax
TEST_END

TEST_BEGIN(TESTr16s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    testw $0xFF /* Sign-extended to $16-bits */, %ax
TEST_END

TEST_BEGIN(TESTr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    testw $0xFFFF, %ax
TEST_END

TEST_BEGIN(TESTr16r16, 2)
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
    testw %bx, %ax
TEST_END

TEST_BEGIN(TESTr32u8, 1)
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
    testl $0x7F, %eax
TEST_END

TEST_BEGIN(TESTr32s8, 1)
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
    testl $0xFF, %eax
TEST_END

TEST_BEGIN(TESTr32i32, 1)
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
    testl $0x7FFFFFFF, %eax
TEST_END

TEST_BEGIN(TESTr32r32, 2)
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
    testl %ebx, %eax
TEST_END

TEST_BEGIN_64(TESTr64u8_64, 1)
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
    testq $0x7F, %rax
TEST_END_64

TEST_BEGIN_64(TESTr64s8_64, 1)
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
    testq $0xFF /* Sign-extended */, %rax
TEST_END_64

TEST_BEGIN_64(TESTr64u32_64, 1)
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
    testq $0x7FFFFFFF, %rax
TEST_END_64


TEST_BEGIN_64(TESTr64r64_64, 2)
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
    testq %rbx, %rax
TEST_END_64
