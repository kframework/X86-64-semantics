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

  // NEGr8  
  mov eax, $0
  neg al
  
  mov eax, $1
  neg al
  
  mov eax, $0xFF
  neg al
  
  mov eax, $0x7F
  neg al

  // NEGr8_64  
  mov r8, $0
  neg r8b
  
  mov r8, $1
  neg r8b
  
  mov r8, $0xFF
  neg r8b
  
  mov r8, $0x7F
  neg r8b

  // NEGr16  
  neg $0
  
  neg $1
  
  neg $0xFF
  
  neg $0x7F
  
  neg $0xFFFF
  
  neg $0x7FFF

  // NEGr32  
  neg $0
  
  neg $1
  
  neg $0xFF
  
  neg $0x7F
  
  neg $0xFFFF
  
  neg $0x7FFF
  
  neg $0xFFFFFFFF
  
  neg $0x7FFFFFFF

  // NEGr64_64  
  neg $0
  
  neg $1
  
  neg $0xFF
  
  neg $0x7F
  
  neg $0xFFFF
  
  neg $0x7FFF
  
  neg $0xFFFFFFFF
  
  neg $0x7FFFFFFF
  
  neg $0xFFFFFFFFFFFFFFFF
  
  neg $0x7FFFFFFFFFFFFFFF

  nop
