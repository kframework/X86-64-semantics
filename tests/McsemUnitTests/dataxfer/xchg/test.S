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

TEST_BEGIN(XCHGr8r8, 1)
TEST_INPUTS(
    0,
    0x4141,
    0xFFEE,
    0xEEFF)

    movl ARG1_32, %eax
    xchgb %al, %ah
TEST_END

TEST_BEGIN(XCHGr16r16, 2)
TEST_INPUTS(
    0, 0,
    0x4141, 0x5151,
    0xFFEE, 0xEEFF,
    0xEEFF, 0xFFEE)

    movw ARG1_16, %ax
    movw ARG2_16, %bx
    xchgw %bx, %ax
TEST_END

TEST_BEGIN(XCHGr32r32, 2)
TEST_INPUTS(
    0, 0,
    0x41414141, 0x51515151,
    0xFFEEFFEE, 0xEEFFEEFF,
    0xEEFFEEFF, 0xFFEEFFEE)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx
    xchgl %ebx, %eax
TEST_END

/* Want to test that the high-order bits of ARG1_64 and ARG2_64 get cleared */
TEST_BEGIN_64(XCHGr32r32_64, 2)
TEST_INPUTS(
    0xFFFFFFFFFFFFFFFF, 0xEEEEEEEEEEEEEEEE)

    movq ARG1_64, %rax
    movq ARG2_64, %rbx
    xchgl %ebx, %eax
TEST_END_64

TEST_BEGIN_64(XCHGr64r64_64, 2)
TEST_INPUTS(
    0, 1,
    1, 0,
    0xFFFFFFFFFFFFFFFF, 0xEEEEEEEEEEEEEEEE)

    movq ARG1_64, %rax
    movq ARG2_64, %rbx
    xchgq %rax, %rbx
TEST_END_64
