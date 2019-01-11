TEST_BEGIN(SCASB, 1)
TEST_INPUTS(
    0,
    1,
    0xAA,
    0xFF)

    leaq -8(%rsp), %rdi
    movq ARG1_64, %rax 
    scasb
TEST_END


TEST_BEGIN(SCASW, 1)
TEST_INPUTS(
    0,
    1,
    0xAA,
    0xFF,
    0x4141,
    0xFFFF,
    0xFF00,
    0xF00F)

    leaq -8(%rsp), %rdi
    movq ARG1_64, %rax 
    scasw
TEST_END

TEST_BEGIN(SCASL, 1)
TEST_INPUTS(
   0,
    1,
    0xAA,
    0xFF,
    0x4141,
    0xFFFF,
    0xFF00,
    0xF00F,
    0x41414141,
    0xFFFF0000,
    0xFFFFFFFF)


    leaq -8(%rsp), %rdi
    movq ARG1_64, %rax 
    scasl
TEST_END

TEST_BEGIN(SCASQ, 1)
TEST_INPUTS(
    0,
    1,
    0xAA,
    0xFF,
    0x4141,
    0xFFFF,
    0xFF00,
    0xF00F,
    0x41414141,
    0xFFFF0000,
    0xFFFFFFFF,
    0x4141414141414141,
    0xFFFF0000FFFF0000,
    0xFFFFFFFFFFFFFFFF)

    leaq -8(%rsp), %rdi
    movq ARG1_64, %rax 
    scasq
TEST_END

