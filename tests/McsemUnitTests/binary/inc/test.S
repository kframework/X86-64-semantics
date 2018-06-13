TEST_BEGIN(INCr8, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movl ARG1_32, %eax
    incb %al
TEST_END

TEST_BEGIN_64(INCr8_64, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movb ARG1_8, %al
    incb %al
TEST_END_64

TEST_BEGIN(INCr16, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %ax
    incw %ax
TEST_END

TEST_BEGIN(INCr32, 1)
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
    incl %eax
TEST_END

TEST_BEGIN_64(INCr64_64, 1)
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
    incq %rax
TEST_END_64
