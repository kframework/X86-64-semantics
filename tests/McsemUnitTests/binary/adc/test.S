TEST_BEGIN(ADCal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, eax
    adcb 1, al
TEST_END

TEST_BEGIN(ADCax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movl ARG1_32, eax
    adcaw 1, ax
TEST_END

TEST_BEGIN(ADCeax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl  ARG1_32, eax
    adcl 1, eax
TEST_END

TEST_BEGIN(ADCr8i8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, eax
    adcb 1, bl
TEST_END

TEST_BEGIN_64(ADCr8u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    mov  ARG1_64, r8
    adcb 0x7F, r8b
TEST_END_64

TEST_BEGIN_64(ADCr8s8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_64, r8
    adcb 0xFF, r8b /* Sign-extended to 64-bits */
TEST_END_64

TEST_BEGIN(ADCr8r8, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movl  ARG1_32, ebx
    movl  ARG2_32, eax
    adcb  al, bl
TEST_END

TEST_BEGIN_64(ADCr8r8_64, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movb ARG1_8, %al
    movb ARG2_8, %bl
    adcb %al, %bl
TEST_END_64

TEST_BEGIN(ADCr16u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movb ARG1_16, %ax
    adcw 0x7F, %ax
TEST_END

TEST_BEGIN(ADCr16s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw  ARG1_16, %ax
    adcw 0xFF, %ax /* Sign-extended to 16-bits */
TEST_END

TEST_BEGIN(ADCr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    adc ARG1_16, 0xFFFF
TEST_END

TEST_BEGIN(ADCr16r16, 2)
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

    adc ARG1_16, ARG2_16
TEST_END

TEST_BEGIN(ADCr32u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    adc ARG1_32, 0x7F
TEST_END

TEST_BEGIN(ADCr32s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    adc ARG1_32, 0xFF
TEST_END

TEST_BEGIN(ADCr32i32, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    adc ARG1_32, 0x7FFFFFFF
TEST_END

TEST_BEGIN(ADCr32r32, 2)
TEST_INPUTS(
    0, 0, /* ZF */
    1, 0,
    0xFFFFFFFF, 1, /* OF, CF */
    0xFFFFFFFF, 0xFFFFFFFF, /* OF */
    0x7FFFFFFF, 1, /* SF */
    0, 0x10, /* AF */
    0x7F, 0x10 /* PF */)

    adc ARG1_32, ARG2_32
TEST_END

TEST_BEGIN_64(ADCr64u8_64, 1)
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

    adc ARG1_64, 0x7F
TEST_END_64

TEST_BEGIN_64(ADCr64s8_64, 1)
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

    adc ARG1_64, 0xFF /* Sign-extended */
TEST_END_64

TEST_BEGIN_64(ADCr64u32_64, 1)
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

    adc ARG1_64, 0x7FFFFFFF
TEST_END_64

TEST_BEGIN_64(ADCr64s32_64, 1)
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

    .byte 0x48;  /* REX.W */
    adc ARG1_32, 0xFFFFFFFF /* Sign-extended */
TEST_END_64

TEST_BEGIN_64(ADCr64r64_64, 2)
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

    adc ARG1_64, ARG2_64
TEST_END_64
