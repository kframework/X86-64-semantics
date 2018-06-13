TEST_BEGIN(ADDSDv128v128_04, 1)
TEST_INPUTS(
    0)
    addsd xmm0, xmm4
TEST_END

TEST_BEGIN(ADDSDv128v128_40, 1)
TEST_INPUTS(
    0)
    addsd xmm4, xmm0
TEST_END

TEST_BEGIN(ADDSDv128m128_04, 1)
TEST_INPUTS(
    0)
    movdqu [rsp - 16], xmm4
    addsd xmm0, [rsp - 16]
TEST_END

TEST_BEGIN(ADDSDv128m128_40, 1)
TEST_INPUTS(
    0)
    movdqu [rsp - 16], xmm0
    addsd xmm4, [rsp - 16]
TEST_END

TEST_BEGIN(VADDSDv128v128_04, 1)
TEST_INPUTS(
    0)
    vaddsd xmm0, xmm1, xmm4
TEST_END

TEST_BEGIN(VADDSDv128v128_40, 1)
TEST_INPUTS(
    0)
    vaddsd xmm1, xmm4, xmm0
TEST_END

TEST_BEGIN_64(VADDSDv128m32_40, 1)
TEST_INPUTS(
    0x3ff0000000000000,
    0x400921fb54442d18,
    0x40f869f000000000)

    mov QWORD PTR [rsp - 16], ARG1_64
    vaddsd xmm1, xmm4, QWORD PTR [rsp - 16]
TEST_END_64
