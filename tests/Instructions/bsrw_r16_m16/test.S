TEST_BEGIN(BSRQ, 1)
TEST_INPUTS(
    0,                   
    1,                   
    0x80,                
    0x55,                
    0xAA,                
    0x0F,                
    0xF7,                
    0xFE,                
    0x8000,              
    0x5500,              
    0xAA00,              
    0x0F0F,              
    0xF7F7,              
    0xFEFE,              
    0x80000000,          
    0x55000000,          
    0xAA000000,          
    0x0F0F0F0F,          
    0xF7F7F7F7,          
    0xFEFEFEFE,          
    0x8000000000000000,  
    0x5500000000000000,  
    0xAA00000000000000,  
    0x0F0F0F0F0F0F0F0F,  
    0xF7F7F7F7F7F7F7F7,  
    0xFEFEFEFEFEFEFEFE)

    movq ARG1_64, %rcx
    pushq %rcx
    bsrw (%rsp), %ax
TEST_END
