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

  // MULal  
  mov eax, $0
  mov ebx, $0
  
  mul bl
  
  mov eax, $0x7F
  mov ebx, $0x7F
  
  mul bl
  
  mov eax, $0xFF
  mov ebx, $0x7F
  
  mul bl
  
  mov eax, $0xFF
  mov ebx, $0xFF
  
  mul bl

  // MULal_64  
  mov rax, $0
  mov r8, $0
  
  mul r8b
  
  mov rax, $0x7F
  mov r8, $0x7F
  
  mul r8b
  
  mov rax, $0xFF
  mov r8, $0x7F
  
  mul r8b
  
  mov rax, $0xFF
  mov r8, $0xFF
  
  mul r8b

  // MULax  
  mov eax, $0
  mov ebx, $0
  
  mul bx
  
  mov eax, $1
  mov ebx, $0x7FFF
  
  mul bx
  
  mov eax, $1
  mov ebx, $0xFFFF
  
  mul bx
  
  mov eax, $0xFFFF
  mov ebx, $0xFFFF
  
  mul bx

  // MULeax  
  mov eax, $0
  mov ebx, $0
  
  mul ebx
  
  mov eax, $1
  mov ebx, $0x7FFF
  
  mul ebx
  
  mov eax, $1
  mov ebx, $0xFFFF
  
  mul ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFFFF
  
  mul ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFFFF
  
  mul ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFFFFFFFF
  
  mul ebx

  // MULrax_64  
  mov rax, $0
  mov rbx, $1
  
  mul rbx
  
  mov rax, $0xFFFF
  mov rbx, $0xFFFF
  
  mul rbx
  
  mov rax, $0xFFFFFFFF
  mov rbx, $0xFFFF
  
  mul rbx
  
  mov rax, $0xFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mul rbx
  
  mov rax, $0xFFFFFFFF
  mov rbx, $0x7FFFFFFF
  
  mul rbx
  
  mov rax, $0x7FFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mul rbx
  
  mov rax, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mul rbx
  
  mov rax, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFFFFFFFFFF
  
  mul rbx

  nop
