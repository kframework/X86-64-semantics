TEST_BEGIN(ADC1, 0)

  addq $61438, %rax
  addq $16777215, %rcx
  adcw %ax,%ax
  adcw %cx,%ax
  addq $2147483647, %rax
  addq $2, %rcx
  adcl %ecx,%eax
  addq $2147483647, %rax
  addq $1, %rcx
  adcq %rax,%rax
  adcq %rcx,%rax
  addq $61438, %rax
  addq $1, %rcx
  adcb %cl,%al
  adcb %cl,%al
TEST_END

TEST_BEGIN(ADCal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq $0x1, %rbx
    movq ARG1_32, %rax
    adcb  %bl, %al
TEST_END

TEST_BEGIN(ADCax, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movq $0x1, %rbx
    movq ARG1_32, %rax
    adcw %bx, %ax
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

    movq $0x1, %rbx
    movq ARG1_32, %rax
    adcl %ebx, %eax
TEST_END

TEST_BEGIN(ADCr8i8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq $0x1, %rax
    movq ARG1_32, %rbx
    adcb %al, %bl
TEST_END

TEST_BEGIN_64(ADCr8u8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq $0x7f, %rax
    movq ARG1_64, %r8
    adcb %al, %r8b
TEST_END_64

TEST_BEGIN_64(ADCr8s8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq $0xff, %rax
    movq ARG1_64, %r8
    adcb %al, %r8b
TEST_END_64

TEST_BEGIN(ADCr8r8, 2)
TEST_INPUTS(
    0, 0,
    1, 0,
    0xFF, 1,
    0x7F, 1,
    0x7F, 0xFF,
    0xFF, 0xFF)

    movq ARG1_32, %rbx
    movq ARG2_32, %rax
    adcb %al, %bl
TEST_END

TEST_BEGIN(ADCr16u8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movq $0x7f, %r8
    movq ARG1_16, %rax
    adcw %r8w, %ax
TEST_END

TEST_BEGIN(ADCr16s8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movq $0xff, %r8
    movq ARG1_16, %rax
    adcw %r8w, %ax
TEST_END

TEST_BEGIN(ADCr16i16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movq $0xffff, %r8
    movq ARG1_16, %rax
    adcw %r8w, %ax
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

    movq ARG2_16, %r8
    movq ARG1_16, %rax
    adcw %r8w, %ax
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

    movq $0x7f, %r8
    movq ARG1_32, %rax
    adcl %r8d, %eax
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

    movq $0xff, %r8
    movq ARG1_32, %rax
    adcl %r8d, %eax
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

    movq $0x7fffffff, %r8
    movq ARG1_32, %rax
    adcl %r8d, %eax
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

    movq ARG2_32, %r8
    movq ARG1_32, %rax
    adcl %r8d, %eax
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

    movq $0x7f, %r8
    movq ARG1_64, %rax
    adcq %r8, %rax
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

    movq $0xff, %r8
    movq ARG1_64, %rax
    adcq %r8, %rax
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

    movq $0x7fffffff, %r8
    movq ARG1_64, %rax
    adcq %r8, %rax
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

    movq $0xffffffff, %r8
    movq ARG1_32, %rax
    adcq %r8, %rax
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

    movq ARG2_64, %r8
    movq ARG1_64, %rax
    adcq %r8, %rax
TEST_END_64
