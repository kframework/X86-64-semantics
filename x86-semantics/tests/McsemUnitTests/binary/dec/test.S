TEST_BEGIN(DECr8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    decb %al
TEST_END

TEST_BEGIN_64(DECr8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movb ARG1_8, %al
    decb %al
TEST_END_64

TEST_BEGIN(DECr16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %ax
    decw %ax
TEST_END

TEST_BEGIN(DECr32, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl  ARG1_32, %eax    
    decl %eax
TEST_END

TEST_BEGIN_64(DECr64_64, 1)
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
    decq %rax
TEST_END_64
