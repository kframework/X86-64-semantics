/*
 * Copyright (c) 2017 Trail of Bits, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * Note: older versions of the Intel manual have SF undefined for IMUL.
 */

TEST_BEGIN(IMULal, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    0xFF, 0xFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    imulb %bl
TEST_END

TEST_BEGIN(IMULax, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    1, 0x7FFF,
    1, 0xFFFF,
    0xFFFF, 0xFFFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    imulw %bx
TEST_END

TEST_BEGIN(IMULeax, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    0xFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFFFFFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    imull %ebx
TEST_END

TEST_BEGIN_64(IMULrax_64, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    0xFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    movq ARG2_64, %rbx

    imulq %rbx
TEST_END_64

TEST_BEGIN(IMULr16r16, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    1, 0x7FFF,
    1, 0xFFFF,
    0xFFFF, 0xFFFF)

    movw ARG1_16, %ax
    movw ARG2_16, %bx
    imulw %ax, %bx
TEST_END

TEST_BEGIN(IMULr32r32, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 0,
    0xFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFFFFFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx
    imul %eax, %ebx
TEST_END

TEST_BEGIN_64(IMULr64r64_64, 2)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0, 1,
    0xFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0x7FFFFFFF,
    0x7FFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    movq ARG2_64, %rbx
    imul %rax, %rbx
TEST_END_64

TEST_BEGIN(IMULr16r16i8, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %bx
    imulw $7, %bx, %ax 
TEST_END

TEST_BEGIN(IMULr16r16i16, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF)

    movw ARG1_16, %bx
    imulw $0x7FFF, %bx, %ax 
TEST_END

TEST_BEGIN(IMULr32r32i8, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    imull $7, %ebx, %eax 
TEST_END

TEST_BEGIN(IMULr32r32s32, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    imull $0x7FFF, %ebx, %eax 
TEST_END

TEST_BEGIN(IMULr32r32u32, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF)

    movl ARG1_32, %ebx
    imull $0x7FFFFFFF, %ebx, %eax 
TEST_END

TEST_BEGIN_64(IMULr64r64i8_64, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rbx
    imulq $0x7, %rbx, %rax 
TEST_END_64

TEST_BEGIN_64(IMULr64r64s32_64, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rbx
    imulq $0xFFFFFFF, %rbx, %rax 
TEST_END_64

TEST_BEGIN_64(IMULr64r64u32_64, 1)
TEST_IGNORE_FLAGS(SF ZF AF PF)
TEST_INPUTS(
    0,
    1,
    2,
    0x7FFF,
    0xFFFF,
    0x7FFFFFFF,
    0xFFFFFFFF,
    0x7FFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF)

    movq ARG1_64, %rbx
    imulq $0x7FFFFFFF, %rbx, %rax 
TEST_END_64
