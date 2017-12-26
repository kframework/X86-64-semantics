TEST_BEGIN_64(CMOVZr64r64, 1)
TEST_INPUTS(
    0x4141414141414141)

    addq $65535, %rax
    addq $1, %rbx
    adcw %bx, %ax
    cmoveq %rax, %rbx
    adcw %bx, %ax
    cmoveq %rax, %rbx

    movq ARG1_64, %rax
    cmoveq %rax, %rbx
TEST_END_64

