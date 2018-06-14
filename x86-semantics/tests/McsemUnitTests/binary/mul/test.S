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

TEST_BEGIN(MULal, 2)
TEST_IGNORE_FLAGS(ZF AF PF SF)
TEST_INPUTS(
    0, 0,
    0x7F, 0x7F,
    0xFF, 0x7F,
    0xFF, 0xFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    mulb %bl
TEST_END

TEST_BEGIN_64(MULal_64, 2)
TEST_IGNORE_FLAGS(ZF AF PF SF)
TEST_INPUTS(
    0, 0,
    0x7F, 0x7F,
    0xFF, 0x7F,
    0xFF, 0xFF)

    movq ARG1_64, %rax
    movq ARG2_64, %r8

    mulb %r8b
TEST_END_64

TEST_BEGIN(MULax, 2)
TEST_IGNORE_FLAGS(ZF AF PF SF)
TEST_INPUTS(
    0, 0,
    1, 0x7FFF,
    1, 0xFFFF,
    0xFFFF, 0xFFFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    mulw %bx
TEST_END

TEST_BEGIN(MULeax, 2)
TEST_IGNORE_FLAGS(ZF AF PF SF)
TEST_INPUTS(
    0, 0,
    1, 0x7FFF,
    1, 0xFFFF,
    0xFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFF,
    0xFFFFFFFF, 0xFFFFFFFF)

    movl ARG1_32, %eax
    movl ARG2_32, %ebx

    mull %ebx
TEST_END

TEST_BEGIN_64(MULrax_64, 2)
TEST_IGNORE_FLAGS(ZF AF PF SF)
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

    mulq %rbx
TEST_END_64
