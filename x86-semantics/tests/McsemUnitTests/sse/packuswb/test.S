TEST_BEGIN(PACKUSWBv128v128, 1)
TEST_INPUTS(0)
    packuswb %xmm0, %xmm1;
    packuswb %xmm1, %xmm2;
    packuswb %xmm2, %xmm3;
    packuswb %xmm3, %xmm4;
    vpackuswb %xmm0, %xmm0, %xmm1;
    vpackuswb %xmm1, %xmm1, %xmm2;
    vpackuswb %xmm2, %xmm2, %xmm3;
    vpackuswb %xmm3, %xmm3, %xmm4;
    vpackuswb %ymm0, %ymm1, %ymm2;
    vpackuswb %ymm1, %ymm2, %ymm3;
    vpackuswb %ymm2, %ymm3, %ymm4;
    vpackuswb %ymm3, %ymm4, %ymm5;
TEST_END

TEST_BEGIN_64(PACKUSWBv128m128, 1)
TEST_INPUTS(0)
    lea rsp, [rsp - 128]
    packuswb xmm0, xmmword ptr [rsp];
    packuswb xmm1, xmmword ptr [rsp + 16];
    packuswb xmm2, xmmword ptr [rsp + 32];
    packuswb xmm3, xmmword ptr [rsp + 48];
TEST_END_64

TEST_BEGIN_64(VPACKUSWBv128m128, 1)
TEST_INPUTS(0)
    lea rsp, [rsp - 128]
    vpackuswb xmm0, xmm0, xmmword ptr [rsp];
    vpackuswb xmm1, xmm1, xmmword ptr [rsp + 16];
    vpackuswb xmm2, xmm2, xmmword ptr [rsp + 32];
    vpackuswb xmm3, xmm3, xmmword ptr [rsp + 48];
TEST_END_64

TEST_BEGIN(VPACKUSWBv256v256v256, 1)
TEST_INPUTS(0)
TEST_END

TEST_BEGIN_64(VPACKUSWBv256v256m256, 1)
TEST_INPUTS(0)
    lea rsp, [rsp - 256]
    vpackuswb ymm0, ymm0, ymmword ptr [rsp];
    vpackuswb ymm1, ymm1, ymmword ptr [rsp + 32];
    vpackuswb ymm2, ymm2, ymmword ptr [rsp + 64];
    vpackuswb ymm3, ymm3, ymmword ptr [rsp + 96];
TEST_END_64

#endif  // HAS_FEATURE_AVX

