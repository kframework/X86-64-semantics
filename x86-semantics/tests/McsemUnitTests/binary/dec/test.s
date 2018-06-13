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

  // DECr8  
  mov eax, $0
  dec al
  
  mov eax, $1
  dec al
  
  mov eax, $0x7F
  dec al
  
  mov eax, $0xFF
  dec al

  // DECr8_64  
  dec $0
  
  dec $1
  
  dec $0x7F
  
  dec $0xFF

  // DECr16  
  dec $0
  
  dec $1
  
  dec $0x7F
  
  dec $0xFF
  
  dec $0x7FFF
  
  dec $0xFFFF

  // DECr32  
  dec $0
  
  dec $1
  
  dec $0x7F
  
  dec $0xFF
  
  dec $0x7FFF
  
  dec $0xFFFF
  
  dec $0x7FFFFFFF
  
  dec $0xFFFFFFFF

  // DECr64_64  
  dec $0
  
  dec $1
  
  dec $0x7F
  
  dec $0xFF
  
  dec $0x7FFF
  
  dec $0xFFFF
  
  dec $0x7FFFFFFF
  
  dec $0xFFFFFFFF
  
  dec $0x7FFFFFFFFFFFFFFF
  
  dec $0xFFFFFFFFFFFFFFFF

  nop
