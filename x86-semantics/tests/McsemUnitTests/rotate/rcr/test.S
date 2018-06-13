TEST_BEGIN(RCRr8i8_0, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movl ARG1_32, %eax
    rcrb $0, %al
TEST_END

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
TEST_BEGIN(RCRr8i8_255, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movl ARG1_32, %eax
    rcrb $0xFF, %al
TEST_END

/* Special encoding of RCRr8 with i8 = 1, also has special behaviour
 * with AF and OF */
TEST_BEGIN(RCRr8i8_1, 1)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movl ARG1_32, %eax
    rcrb $1, %al
TEST_END

/* REX-prefix encoded RCRr8i8 */
TEST_BEGIN_64(RCRr8i8_1_64, 1)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movq ARG1_64, %r8
    rcrb $1, %r8b
TEST_END_64

/* Special encoding with `%cl` as the reg containing the number of bits */
TEST_BEGIN(RCRr8cl, 2)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0, 2,
    1, 2,
    0x80, 2,
    0x55, 2,
    0xAA, 2,
    0x0F, 2,
    0xF7, 2,
    0xFE, 2,
    0, 7,
    1, 7,
    0x80, 7,
    0x55, 7,
    0xAA, 7,
    0x0F, 7,
    0xF7, 7,
    0xFE, 7)

    movl ARG1_32, %eax
    movl ARG2_32, %ecx
    rcrb %cl, %al
TEST_END

/* Special encoding with `%cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
TEST_BEGIN_64(RCRr8cl_1_64, 2)
TEST_INPUTS(
    0, 1,
    1, 1,
    0x80, 1,
    0x55, 1,
    0xAA, 1,
    0x0F, 1,
    0xF7, 1,
    0xFE, 1)

    movq ARG1_64, %r8
    movq ARG2_64, %rcx
    rcrb %cl, %r8b
TEST_END_64

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
TEST_BEGIN(RCRr8i8_9, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movl ARG1_32, %eax
    rcrb $9, %al
TEST_END

TEST_BEGIN(RCRr8i8_2, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80,
    0x55,
    0xAA,
    0x0F,
    0xF7,
    0xFE)

    movl ARG1_32, %eax
    rcrb $2, %al
TEST_END

TEST_BEGIN(RCRr16cl, 2)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0, 8,
    1, 8,
    0x8000, 8,
    0x5500, 8,
    0xAA00, 8,
    0x0F0F, 8,
    0xF7F7, 8,
    0xFEFE, 8,
    0, 15,
    1, 15,
    0x8000, 15,
    0x5500, 15,
    0xAA00, 15,
    0x0F0F, 15,
    0xF7F7, 15,
    0xFEFE, 15)

    movl ARG1_32, %eax
    movl ARG2_32, %ecx
    rcrw %cl, %ax
TEST_END

TEST_BEGIN(RCRr16i8_1, 1)
TEST_INPUTS(
    0,
    1,
    0x8000,
    0x5500,
    0xAA00,
    0x0F0F,
    0xF7F7,
    0xFEFE)

    movl ARG1_32, %eax
    rcrw $1, %ax
TEST_END

TEST_BEGIN(RCRr16i8_8, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000,
    0x5500,
    0xAA00,
    0x0F0F,
    0xF7F7,
    0xFEFE)

    movl ARG1_32, %eax
    rcrw $8, %ax
TEST_END

TEST_BEGIN(RCRr16i8_15, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000,
    0x5500,
    0xAA00,
    0x0F0F,
    0xF7F7,
    0xFEFE)

    movl ARG1_32, %eax
    rcrw $15, %ax
TEST_END

TEST_BEGIN(RCRr16i8_255, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000,
    0x5500,
    0xAA00,
    0x0F0F,
    0xF7F7,
    0xFEFE)

    movl ARG1_32, %eax
    rcrw $0xFF, %ax
TEST_END

TEST_BEGIN(RCRr32i8_1, 1)
TEST_INPUTS(
    0,
    1,
    0x80000000,
    0x55000000,
    0xAA000000,
    0x0F0F0F0F,
    0xF7F7F7F7,
    0xFEFEFEFE)

    movl ARG1_32, %eax
    rcrl $1, %eax
TEST_END

TEST_BEGIN(RCRr32i8_16, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80000000,
    0x55000000,
    0xAA000000,
    0x0F0F0F0F,
    0xF7F7F7F7,
    0xFEFEFEFE)

    movl ARG1_32, %eax
    rcrl $16, %eax
TEST_END

TEST_BEGIN(RCRr32i8_31, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80000000,
    0x55000000,
    0xAA000000,
    0x0F0F0F0F,
    0xF7F7F7F7,
    0xFEFEFEFE)

    movl ARG1_32, %eax
    rcrl $31, %eax
TEST_END

TEST_BEGIN(RCRr32i8_255, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x80000000,
    0x55000000,
    0xAA000000,
    0x0F0F0F0F,
    0xF7F7F7F7,
    0xFEFEFEFE)

    movl ARG1_32, %eax
    rcrl $0xFF, %eax
TEST_END

TEST_BEGIN_64(RCRr64i8_1_64, 1)
TEST_INPUTS(
    0,
    1,
    0x8000000000000000,
    0x5500000000000000,
    0xAA00000000000000,
    0x0F0F0F0F0F0F0F0F,
    0xF7F7F7F7F7F7F7F7,
    0xFEFEFEFEFEFEFEFE)

    movq ARG1_64, %rax
    rcrq $1, %rax
TEST_END_64

TEST_BEGIN_64(RCRr64i8_32_64, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000000000000000,
    0x5500000000000000,
    0xAA00000000000000,
    0x0F0F0F0F0F0F0F0F,
    0xF7F7F7F7F7F7F7F7,
    0xFEFEFEFEFEFEFEFE)

    movq ARG1_64, %rax
    rcrq $32, %rax
TEST_END_64

TEST_BEGIN_64(RCRr64i8_63_64, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000000000000000,
    0x5500000000000000,
    0xAA00000000000000,
    0x0F0F0F0F0F0F0F0F,
    0xF7F7F7F7F7F7F7F7,
    0xFEFEFEFEFEFEFEFE)

    movq ARG1_64, %rax
    rcrq $63, %rax
TEST_END_64

TEST_BEGIN_64(RCRr64i8_255_64, 1)
TEST_IGNORE_FLAGS(OF)
TEST_INPUTS(
    0,
    1,
    0x8000000000000000,
    0x5500000000000000,
    0xAA00000000000000,
    0x0F0F0F0F0F0F0F0F,
    0xF7F7F7F7F7F7F7F7,
    0xFEFEFEFEFEFEFEFE)

    movq ARG1_64, %rax
    rcrq $0xFF, %rax
TEST_END_64
