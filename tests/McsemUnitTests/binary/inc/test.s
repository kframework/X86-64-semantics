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

  // INCr8  
  mov eax, $0
  inc al
  
  mov eax, $1
  inc al
  
  mov eax, $0x7F
  inc al
  
  mov eax, $0xFF
  inc al

  // INCr8_64  
  inc $0
  
  inc $1
  
  inc $0x7F
  
  inc $0xFF

  // INCr16  
  inc $0
  
  inc $1
  
  inc $0x7F
  
  inc $0xFF
  
  inc $0x7FFF
  
  inc $0xFFFF

  // INCr32  
  inc $0
  
  inc $1
  
  inc $0x7F
  
  inc $0xFF
  
  inc $0x7FFF
  
  inc $0xFFFF
  
  inc $0x7FFFFFFF
  
  inc $0xFFFFFFFF

  // INCr64_64  
  inc $0
  
  inc $1
  
  inc $0x7F
  
  inc $0xFF
  
  inc $0x7FFF
  
  inc $0xFFFF
  
  inc $0x7FFFFFFF
  
  inc $0xFFFFFFFF
  
  inc $0x7FFFFFFFFFFFFFFF
  
  inc $0xFFFFFFFFFFFFFFFF

  nop
