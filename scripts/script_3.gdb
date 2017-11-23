# gdb --batch --command=./script_2.gdb --args ./a.out 
set width 0
set height 0
set verbose off
set disassemble-next-line on

define process_instr
        p/d $rax 
        p/d $rbx 
        p/d $rcx 
        p/d $rdx 
        p/d $rsi 
        p/d $rdi 
        p/d $rsp 
        p/d $rbp 
        p/d $r8 
        p/d $r9 
        p/d $r10 
        p/d $r11 
        p/d $r12 
        p/d $r13 
        p/d $r14 
        p/d $r15 
        p $eflags
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
nstep 6
q
