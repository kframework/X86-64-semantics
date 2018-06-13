TEST_BEGIN(NEGr8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    negb %al
TEST_END

TEST_BEGIN_64(NEGr8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movb ARG1_8, %al
    negb %al
TEST_END_64

TEST_BEGIN(NEGr16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %ax
    negw %ax
TEST_END

TEST_BEGIN(NEGr32, 1)
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
    negl %eax
TEST_END

TEST_BEGIN_64(NEGr64_64, 1)
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
    negq %rax
TEST_END_64
