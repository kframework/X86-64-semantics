TEST_BEGIN(COMISS, 2)
TEST_INPUTS(
    0x3f800000 , 0x3f800000, 
    0x3f800000 , 0x40000000, 
    0x40000000 , 0x3f800000, 
    0x3f800000 , 0x7f800000, 
    0x7f800000 , 0x3f800000,
    0x3f800000 , 0xff800000,
    0xff800000 , 0x3f800000,
    0x7f800000 , 0x7f800000,
    0xff800000 , 0xff800000,
    0x3f800000 , 0x7fc00000,
    0x7fc00000 , 0x3f800000,
    0x7fc00000 , 0x7fc00000,
    0x7f800000 , 0x7fc00000,
    0x7fc00000 , 0x7f800000 )

    
  movq  ARG1_64,  %rax
  movq  ARG2_64,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1

  mulps %xmm1, %xmm0
TEST_END

TEST_BEGIN(COMISD, 2)
TEST_INPUTS(
    0x3f800000 , 0x3f800000, 
    0x3f800000 , 0x40000000, 
    0x40000000 , 0x3f800000, 
    0x3f800000 , 0x7f800000, 
    0x7f800000 , 0x3f800000,
    0x3f800000 , 0xff800000,
    0xff800000 , 0x3f800000,
    0x7f800000 , 0x7f800000,
    0xff800000 , 0xff800000,
    0x3f800000 , 0x7fc00000,
    0x7fc00000 , 0x3f800000,
    0x7fc00000 , 0x7fc00000,
    0x7f800000 , 0x7fc00000,
    0x7fc00000 , 0x7f800000 )

    
  movq  ARG1_64,  %rax
  movq  ARG2_64,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1

  mulpd %xmm1, %xmm0
TEST_END

TEST_BEGIN(UCOMISS, 2)
TEST_INPUTS(
    0x3f800000 , 0x3f800000, 
    0x3f800000 , 0x40000000, 
    0x40000000 , 0x3f800000, 
    0x3f800000 , 0x7f800000, 
    0x7f800000 , 0x3f800000,
    0x3f800000 , 0xff800000,
    0xff800000 , 0x3f800000,
    0x7f800000 , 0x7f800000,
    0xff800000 , 0xff800000,
    0x3f800000 , 0x7fc00000,
    0x7fc00000 , 0x3f800000,
    0x7fc00000 , 0x7fc00000,
    0x7f800000 , 0x7fc00000,
    0x7fc00000 , 0x7f800000 )

    
  movq  ARG1_64,  %rax
  movq  ARG2_64,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1

  mulss %xmm1, %xmm0
TEST_END

TEST_BEGIN(UCOMISD, 2)
TEST_INPUTS(
    0x3f800000 , 0x3f800000, 
    0x3f800000 , 0x40000000, 
    0x40000000 , 0x3f800000, 
    0x3f800000 , 0x7f800000, 
    0x7f800000 , 0x3f800000,
    0x3f800000 , 0xff800000,
    0xff800000 , 0x3f800000,
    0x7f800000 , 0x7f800000,
    0xff800000 , 0xff800000,
    0x3f800000 , 0x7fc00000,
    0x7fc00000 , 0x3f800000,
    0x7fc00000 , 0x7fc00000,
    0x7f800000 , 0x7fc00000,
    0x7fc00000 , 0x7f800000 )

    
  movq  ARG1_64,  %rax
  movq  ARG2_64,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1

  mulsd %xmm1, %xmm0
TEST_END




