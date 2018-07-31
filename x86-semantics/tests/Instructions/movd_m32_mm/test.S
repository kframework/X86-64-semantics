TEST_BEGIN(ADCal, 1)
TEST_INPUTS(
    0,
    1,
    0x7F,
    0xFF)

    movq ARG1_32, %rax
    movq %rax, %mm0
TEST_END

