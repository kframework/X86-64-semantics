/* NOTE:
 * YMM0 - YMM3 are filled will 0xFF.
 * YMM4 and on are filled with 0x0. */

TEST_BEGIN_64(MOVQv128r64_64, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0xFFFF,
    0xFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    movq %rax, %xmm0
    movq %xmm0, -16(%rsp)
    movq -16(%rsp), %xmm0

    vmovq %rax, %xmm1
    vmovq %xmm1, %rbx
    vmovq %xmm1, %xmm0
    vmovq %xmm0, -16(%rsp)
    vmovq -16(%rsp), %xmm0
TEST_END_64
