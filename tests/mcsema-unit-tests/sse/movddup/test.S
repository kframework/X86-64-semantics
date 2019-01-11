TEST_BEGIN_64(MOVDDUPv128v128, 2)
TEST_INPUTS(
    0x0000000000000000, 0x0000000000000000, 
    0xfedcba9876543210, 0x0000000000000000, 
    0xfedcba9876543210, 0xffffffffffffffff) 

    movq ARG1_64, %rax
    movq %rax, %xmm0
    movq ARG2_64, %rax
    movq %rax, %xmm1
    movddup %xmm0, %xmm1
TEST_END_64

TEST_BEGIN_64(MOVDDUPv128m64, 2)
TEST_INPUTS(
    0x0000000000000000, 0x0000000000000000, 
    0xfedcba9876543210, 0x0000000000000000, 
    0xfedcba9876543210, 0xffffffffffffffff) 

    movq ARG2_64, %rax
    pushq %rax
    movq ARG1_64, %rax
    movq %rax, %xmm0
    movddup (%rsp), %xmm0
TEST_END_64

#if HAS_FEATURE_AVX

TEST_BEGIN_64(VMOVDDUPv128v128, 2)
TEST_INPUTS(
    0x0000000000000000, 0x0000000000000000, 
    0xfedcba9876543210, 0x0000000000000000, 
    0xfedcba9876543210, 0xffffffffffffffff) 

    movq ARG1_64, %rax
    movq %rax, %xmm0
    movq ARG2_64, %rax
    movq %rax, %xmm1
    vmovddup %xmm0, %xmm1
TEST_END_64

TEST_BEGIN_64(VMOVDDUPv128m64, 2)
TEST_INPUTS(
    0x0000000000000000, 0x0000000000000000, 
    0xfedcba9876543210, 0x0000000000000000, 
    0xfedcba9876543210, 0xffffffffffffffff) 

    movq ARG2_64, %rax
    pushq %rax
    movq ARG1_64, %rax
    movq %rax, %xmm0
    vmovddup (%rsp), %xmm0
TEST_END_64
