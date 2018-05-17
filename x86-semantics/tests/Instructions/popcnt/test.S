TEST_BEGIN(POPCNT, 1)
  TEST_INPUTS(
    0x0,                
    0x1,                
    0x80,               
    0x55,               
    0xAA,               
    0x0F,               
    0xF7,               
    0xFE,               
    0x7F,               
    0xFF,               
    0x8000,             
    0x5500,             
    0xAA00,             
    0x0F0F,             
    0xF7F7,             
    0xFEFE,              
    0x7FFF,              
    0xFFFF,              
    0x80000000,         
    0x55000000,         
    0xAA000000,         
    0x0F0F0F0F,         
    0xF7F7F7F7,         
    0xFEFEFEFE,         
    0x7FFFFFFF,         
    0xFFFFFFFF,         
    0x8000000000000000, 
    0x5500000000000000, 
    0xAA00000000000000,   
    0x0F0F0F0F0F0F0F0F, 
    0xF7F7F7F7F7F7F7F7, 
    0xFEFEFEFEFEFEFEFE,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax

    movq ARG1_64, %rbx
    popcntw %ax, %bx
    popcntw %bx, %ax
    popcntw %ax, %bx
    popcntw %bx, %ax
TEST_END
