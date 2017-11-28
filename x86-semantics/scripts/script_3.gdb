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
nstep 10
q
