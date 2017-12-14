# gdb --batch --command=./script_2.gdb --args ./a.out 
set width 0
set height 0
set verbose off
set disassemble-next-line on

define process_instr
        p/u $rax 
        p/u $rbx 
        p/u $rcx 
        p/u $rdx 
        p/u $rsi 
        p/u $rdi 
        p/u $rsp 
        p/u $rbp 
        p/u $r8 
        p/u $r9 
        p/u $r10 
        p/u $r11 
        p/u $r12 
        p/u $r13 
        p/u $r14 
        p/u $r15 
        p $eflags
        p/u $ymm0.v2_int128 
        p/u $ymm1.v2_int128  
        p/u $ymm2.v2_int128  
        p/u $ymm3.v2_int128  
        p/u $ymm4.v2_int128  
        p/u $ymm5.v2_int128  
        p/u $ymm6.v2_int128  
        p/u $ymm7.v2_int128  
        p/u $ymm8.v2_int128  
        p/u $ymm9.v2_int128  
        p/u $ymm10.v2_int128 
        p/u $ymm11.v2_int128 
        p/u $ymm12.v2_int128 
        p/u $ymm13.v2_int128 
        p/u $ymm14.v2_int128 
        p/u $ymm15.v2_int128 
end

define nstep
 set $foo = $arg0
 while ($foo--)
  process_instr
  ni
 end
end

b _start
r
nstep 20
q
