TEST_BEGIN(MOVS2, 0)

    // movs_r64_r16
    addq $65535, %rax
    movswq %ax, %rax
    addq $32767, %rbx
    movswq %bx, %rcx

    // movs_r64_r32
    movq $4294967295, %rax
    movslq %eax, %rax
    addq $2147483647, %rbx
    movslq %ebx, %rcx

    // movs_r64_r8
    addq $255, %rax
    movsbq %al, %rax
    addq $127, %rbx
    movsbq %bl, %rcx

TEST_END
  
TEST_BEGIN(MOVS1, 1)
TEST_INPUTS(
    0x48, 
    0x8d, 
    0x7c, 
    0x24, 
    0xf8,  
    0x74, 
    0x24, 
    0xf8)

  movq ARG1_8, %r8
  movsbq %r8b, %rax
  
  movq ARG1_8, %r8
  movswq %r8w, %rax

  movq ARG1_8, %r8
  movslq %r8d, %rax

TEST_END
