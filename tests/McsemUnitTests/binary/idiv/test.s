.section .text
.globl _start

_start:
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

  // IDIVax  
  mov eax, $0
  mov ebx, $0
  
  idiv bl
  
  mov eax, $1
  mov ebx, $0
  
  idiv bl
  
  mov eax, $0
  mov ebx, $1
  
  idiv bl
  
  mov eax, $1
  mov ebx, $1
  
  idiv bl
  
  mov eax, $1
  mov ebx, $2
  
  idiv bl
  
  mov eax, $0xFFFF
  mov ebx, $1
  
  idiv bl
  
  mov eax, $0xFFFF
  mov ebx, $2
  
  idiv bl
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  
  idiv bl
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  
  idiv bl
  
  mov eax, $0x7FFF
  mov ebx, $1
  
  idiv bl
  
  mov eax, $0x7FFF
  mov ebx, $2
  
  idiv bl
  
  mov eax, $0x7FFF
  mov ebx, $0xFF
  
  idiv bl
  
  mov eax, $0x7FFF
  mov ebx, $0xF7
  
  idiv bl

  // IDIVax_64  
  mov rax, $0
  mov r8, $0
  
  idiv r8b
  
  mov rax, $1
  mov r8, $0
  
  idiv r8b
  
  mov rax, $0
  mov r8, $1
  
  idiv r8b
  
  mov rax, $1
  mov r8, $1
  
  idiv r8b
  
  mov rax, $1
  mov r8, $2
  
  idiv r8b
  
  mov rax, $0xFFFF
  mov r8, $1
  
  idiv r8b
  
  mov rax, $0xFFFF
  mov r8, $2
  
  idiv r8b
  
  mov rax, $0xFFFF
  mov r8, $0xFF
  
  idiv r8b
  
  mov rax, $0xFFFF
  mov r8, $0xF7
  
  idiv r8b
  
  mov rax, $0x7FFF
  mov r8, $1
  
  idiv r8b
  
  mov rax, $0x7FFF
  mov r8, $2
  
  idiv r8b
  
  mov rax, $0x7FFF
  mov r8, $0xFF
  
  idiv r8b
  
  mov rax, $0x7FFF
  mov r8, $0xF7
  
  idiv r8b

  // IDIVdxax  
  mov eax, $0
  mov ebx, $0
  mov edx, $0
  
  idiv bx
  
  mov eax, $1
  mov ebx, $0
  mov edx, $0
  
  idiv bx
  
  mov eax, $0
  mov ebx, $1
  mov edx, $0
  
  idiv bx
  
  mov eax, $1
  mov ebx, $1
  mov edx, $0
  
  idiv bx
  
  mov eax, $1
  mov ebx, $2
  mov edx, $0
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $1
  mov edx, $0
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $2
  mov edx, $0
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $1
  mov edx, $0xFFFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $2
  mov edx, $0xFFFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $1
  mov edx, $0x7FFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $2
  mov edx, $0x7FFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFF
  
  idiv bx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFF
  
  idiv bx

  // IDIVedxeax  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFFFFFF
  
  idiv ebx
  
  mov eax, $0xffffffff
  mov ebx, $32
  mov edx, $0xffffffff
  
  idiv ebx

  // IDIVrdxrax_64  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFF
  
  idiv ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFFFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0xFFFFFFFFFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFFFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0xFFFFFFFFFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFFFFFFFFFF
  mov ebx, $0xFF
  mov edx, $0x7FFFFFFFFFFFFFFF
  
  idiv ebx
  
  mov eax, $0xFFFFFFFFFFFFFFFF
  mov ebx, $0xF7
  mov edx, $0x7FFFFFFFFFFFFFFF
  
  idiv ebx

  nop
