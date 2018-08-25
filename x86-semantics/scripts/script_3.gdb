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
        p/x $ymm0.v2_int128 
        p/x $ymm1.v2_int128  
        p/x $ymm2.v2_int128  
        p/x $ymm3.v2_int128  
        p/x $ymm4.v2_int128  
        p/x $ymm5.v2_int128  
        p/x $ymm6.v2_int128  
        p/x $ymm7.v2_int128  
        p/x $ymm8.v2_int128  
        p/x $ymm9.v2_int128  
        p/x $ymm10.v2_int128 
        p/x $ymm11.v2_int128 
        p/x $ymm12.v2_int128 
        p/x $ymm13.v2_int128 
        p/x $ymm14.v2_int128 
        p/x $ymm15.v2_int128 
end

define nstep
 set $foo = $arg0
 while ($foo--)
  process_instr
  si
#  ni
 end
end

b *_start
#b *main
r
nstep 10000
q
