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

TEST_BEGIN(NOTr8, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0x7F)

    movl ARG1_32, %eax
    notb %al
TEST_END

TEST_BEGIN_64(NOTr8_64, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0x7F)

    movq ARG1_64, %r8
    notb %r8b
TEST_END_64

TEST_BEGIN(NOTr16, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0x7F,
    0xFFFF,
    0x7FFF)

    movw ARG1_16, %ax
    notw %ax
TEST_END

TEST_BEGIN(NOTr32, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0x7F,
    0xFFFF,
    0x7FFF,
    0xFFFFFFFF,
    0x7FFFFFFF)

    movl ARG1_32, %eax
    notl %eax
TEST_END

TEST_BEGIN_64(NOTr64_64, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0x7F,
    0xFFFF,
    0x7FFF,
    0xFFFFFFFF,
    0x7FFFFFFF,
    0xFFFFFFFFFFFFFFFF,
    0x7FFFFFFFFFFFFFFF)

    movq ARG1_64, %rax
    notq %rax
TEST_END_64
