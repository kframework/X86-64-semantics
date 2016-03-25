###About static disassembly 
    
- Undecidable
    
  1. R. N.  Horspool and N. Marovac. An approach to the problem of
    detranslation of computer programs. Comput. J., 23(3):223–229, 1980.  
                                        
  2. A. King, A.  Mycroft, T. W. Reps, and A. Simon.  Analysis of
                                         executables: Benefits and challenges
                                         (dagstuhl seminar 12051).  Dagstuhl
                                         Reports, 2(1):100– 116, 2012.***

###Motivation for executable analysis 

Traditional Traditional source-code analysis frameworks have limited
applicability in several scenarios which can be eliminated by  executable-level
tools.  Some scenarios are:
- Absence of source-code 
There are several circumstances where the original
source-code is not accessible. Some of the most prevalent reasons are listed
below: 
  - IP-protected software 
  - Third-party library and software components
  - Malicious executables 
  - Legacy executables 

All such situations require executable-level tools for distinct applications.
For example, due to a rapid rise in cyber attacks, there is an increasing need
to certify the behavior and uncover vulnerabilities in IP-protected software
and commercial off-the shelf software components. The availability of such
components only in an executable form has created a huge demand for effective
executable analysis tools to achieve this goal Further, hundreds of malware are
being uncovered almost daily which are only available in executable form.
Security researchers requires novel tools to understand the behavior of such
malware and to develop effective counter strategies. Various organizations have
critical legacy applications that have been de- veloped for older systems and
need to be ported to future versions. In many cases, the application
source-code is no longer accessible requiring these applications to continue to
run on outdated configurations.  There is a huge demand of a framework which
can recover functionally correct source-code components from such legacy
software, so that such legacy systems can be ported to secure configurations.
Source-code

- Source-code analysis not sufficient 

    There are several scenarios where the source-code analysis is not
    sufficient.  An executable code might demonstrate differ- ent behavior from
    the original source code. This phenomenon is popularly known as
    What-you-see-is-not-what-you-execute [devine_2004](#devine_2004). Modifications can happen to the
    source code during compilation (optimizations) or after the compilation
    process (bad code injection). These modifications can significantly alter
    the program behavior. Con- sequently, the exact behavior of any program can
    only be uncovered by analyzing the executable code.

    Moreover, several components of a typical software might be developed in
    multiple languages (Fortran, C and C++). The presence of different
    languages complicate the task of analyzing the source-code. In such
    scenarios, a consistent representation  

###Advantages of executable analysis 

- End-user security enforcement. 

    Despite considerable research work on several computing hierarchies,
    low-level software vulnerabilities remain an important source of
    compromises and a perennial threat to system security. At the core, there
    exists a fundamental dichotomy in the capabilities and motivation of
    producers and consumers of software, vendors and end-users respectively. On
    the one hand, software producers are probably in the best position to
    prevent and mitigate such vulnerabilities: they have access to the source
    code. As a result, they can apply security mechanisms that offer high
    coverage and effectiveness at low overhead, because they are applied at the
    point where the most semantic knowledge about the program and the code is
    available. On the other hand, it is software consumers that face the risk
    and bear the costs of compromise due to software vulnerabilities and are
    the most motivated to mitigate a newly discovered vulnerability. However,
    consumers often only have access to the program binary and configuration
    files. An executable-tool can bridge the gap between incentive/motivation
    and capabilities on the con- sumer side by enabling the end-users to
    retrofit custom security schemes into untrusted binaries, to prevent them
    from taking unauthorized actions.  
    
- Platform aware optimizations 
    
    Binaries compiled for wide distribution are often targeted for one
    particular ISA and are rarely optimized for a particular processor.  Binary
    tools on an end-user platform can apply custom transforma- tions to take
    advantage of platform-specific information like exact knowledge of the
    memory hierarchy or the precise version of multimedia instructions.  
    
- Whole-program analysis/optimizations. 
    
    Development toolchains typi- cally employ separate compilation framework to
    minimize the compilation time.  Hence, even though the compilers can
    theoretically do whole-program analyses, the applicability of such analysis
    is severely limited. In contrast, executable-level tools operate on the
    merged compilation units, allowing them to performwhole-programanalyses on
    the compiled programs.  Inter-procedural link-time analyses are usually far
    less precise than compile-time optimizations since they work on low-level
    object code without the benefit of the extensive IR features available in
    the compiler.  
    
- Economic feasibility. 
    
    An executable-level tool works for the code produced from any source
    language and by any compiler. Hence, it is more efficient to implement the
    transformations once in an executable-tool than repeatedly in each
    compiler. The high expense of repeated compiler implementation often cannot
    be supported by a small fraction of the demand.



###Dynamic tools

1. C.-K. Luk and et al. Pin: building customized program analysis tools with
dynamic instrumentation. In Proceedings of the ACM conference on Program- ming
language design and implementation, pages 190–200, 2005.  

2. S. Nanda and et al. Bird: Binary interpretation using runtime disassembly.
In CGO ’06: Proceedings of the International Symposium on Code Generation and
Optimization, pages 358–370, Washington, DC, USA, 2006.  3. J. K.
Hollingsworth, B. P. Miller, and J. Cargille. Dynamic program instru- mentation
for scalable performance tools. Scalable High Performance Com- puting
Conference, May 1994.

3. D. Bruening. Efficient, Transparent, and Comprehensive Runtime
            Code Ma- nipulation. PhD thesis, MIT, 2004.

4. C.-K. Luk, R. Muth, H. Patil, R. Cohn, and G. Lowney. Ispike: A
            post-link optimizer for the Intel Itanium architecture. In In
            IEEE/ACM International Symposium on Code Generation and
            Optimization, pages 15–26, 2004.



###Extra metadata info 
            
1. B. Schwarz, S. Debray, G. Andrews, and M. Legendre.
            PLTO: A Link-Time Optimizer for the Intel IA-32 Architecture. In In
            Proc. Workshop on Binary Translation, 2001.  
            
2. L. van Put, D.
            Chanet, B. De Bus, B. De Sutler, and K. De Bosschere. DIA- BLO: a
            reliable, retargetable and extensible link-time rewriting
            framework. In Proceedings of the 2005 IEEE International Symposium
            On Signal Processing And Information Technology, pages 7–12, 2005


###Challenges

- Disassembly assumptions: 

 fer instruction requires an absolute address operand [135]. A compiled code is
 expected to adhere to this convention unless it has been generated to be
 position independent. Position-independent code (PIC) is typically generated
 only for standalone dynamically linked library code, which we currently cannot
 rewrite. Application code (with statically linked libraries or calls to
     external DLLs) is han- dled without any restrictions. However, other
 researchers in our group are looking 7 to overcome this assumption by
 rewriting PIC code as well.
- Obfuscated Code: 

In order to protect intellectual property , some commercial programs employ
obfuscation mechanisms to enhance the resistance against re- verse engineering
tools. A variety of obfuscation mechanisms have been proposed which make it
harder to precisely construct a control flow graph. This includes excessive use
of indirect control transfers and usage of non-standard procedure transfers
without using the call/return mechanism. 

- Memory assumptions 

most techniques assume that executables follow the standard compilation model
where each procedure optionally maintains a local stack frame, which grows in
only one direction and each variable resides at a fixed offset in its
corresponding region. We also assume that in x86 programs, a particular
register esp refers to the top of memory stack. This assumption is expected to
hold in all practical scenarios since x86 ISA inherently makes this assumption.
For example, call instruction moves eip to esp and return decrements esp.
Moreover, interrupt handler codes that are part of an operating system, and can
be called during an application program at any time, inherently assume a stack
that follows these restrictions. Such handler codes typically allocate their
own data on top of the stack growing in one known direction pointed to by esp.
Such mechanisms would not work in programs without such a stack. An assembly
code not adhering to this convention would be extremely hard to write.

- Self Modifying code 

 most static binary tools do not handle self mod- ifying code. 


    Challenges ============ During the assembly process some information si
    lost: 1. program data is stored in the same raw binary format as the
    machine code instructions.  This means that it can be difficult to
    determine which parts of the program are actually instructions. Notice that
    you can disassemble raw data, but the resultant assembly code will be
    nonsensical. 

    2. Textual information from the assembly source code file, such as variable
    names, label names, and code comments are all destroyed during assembly.
    When you disassemble the code, the instructions will be the same, but all
    the other helpful information will be lost. The code will be accurate, but
    more difficult to read.

###Related work
- Static  

- Dynamic
Binary rewriting research is being carried out in two directions: static and dynamic. Dynamic binary rewriters rewrite the binary during its execution. Examples are PIN [102], BIRD [107], DynInst [81], DynamoRIO [33] and Valgrind [131]. None of the dynamic binary rewriters we found employ an IR of an existing compiler. This is not surprising since dynamic rewriters construct their internal representation at run-time, and hence they would not have the time to construct a compiler IR. Dy- namic rewriters are hobbled since they do not have enough time to perform complex compiler transformations either; they have been primarily used for code instrumen- tation and simple security checks in the past. We do not discuss dynamic rewriters




###Existing decompilers

  McSema translates x86 machine code into LLVM bitcode.

  Why would we do such a crazy thing?

  Because we wanted to analyze existing binary applications, and reasoning
  about LLVM bitcode is much easier than reasoning about x86 instructions. Not
  only is it easier to reason about LLVM bitcode, but it is easier to
  manipulate and re-target bitcode to a different architecture. There are many
  program analysis tools (e.g. KLEE, PAGAI, LLBMC) written to work on LLVM
  bitcode that can now be used on existing applications. Additionally it
  becomes much simpler to transform applications in complex ways while
  maintaining original application functionality.

  There are other x86 to LLVM bitcode translators, but McSema has several
  advantages:

  McSema separates control flow recovery from translation, permitting the use
  of custom control flow recovery front-ends.  McSema supports FPU
  instructions.  McSema is open source and licensed under a permissive license.
  McSema is documented, works, and will be available soon after our REcon talk.


  dagger; libbeauty, fracture    


###Assembly basics  
Two well know taregts: amd64/x86_64/EMT64 32 bit (x86/IA-32)




  gcc -masm=intel/att -S x.c




  push arg

  This instruction decrements the stack pointer and stores the data specified
  as the argument into the location pointed to by the stack pointer.

  pop arg

  This instruction loads the data store













  To Know ========

  080482cc <__gmon_start__@plt-0x10>: 80482cc:	ff 35 ac 96 04 08    	pushl
  0x80496ac 80482d2:	ff 25 b0 96 04 08    	jmp    *0x80496b0 80482d8: 00
  00                	add    %al,(%eax) ...

  080482dc <__gmon_start__@plt>: 80482dc:	ff 25 b4 96 04 08    	jmp
  *0x80496b4 80482e2:	68 00 00 00 00       	push   $0x0 80482e7:	e9 e0
  ff ff ff jmp    80482cc <_init+0x30>

  080482ec <__libc_start_main@plt>: 80482ec:	ff 25 b8 96 04 08    	jmp
  *0x80496b8 80482f2:	68 08 00 00 00       	push   $0x8 80482f7:	e9 d0
  ff ff ff       	jmp    80482cc <_init+0x30>

  080482fc <printf@plt>: 80482fc:	ff 25 bc 96 04 08    	jmp *0x80496bc
  8048302:	68 10 00 00 00       	push   $0x10 8048307:	e9 c0 ff ff ff
  jmp    80482cc <_init+0x30>

  0804830c <atoi@plt>: 804830c:	ff 25 c0 96 04 08    	jmp    *0x80496c0
  8048312:	68 18 00 00 00       	push   $0x18 8048317:	e9 b0 ff ff ff
  jmp    80482cc <_init+0x30> ???  '

  Single Source ==============
  dsand@dsand-Inspiron-3521:~/Github/llvm-test-suite-mcsema/SingleSource$ find
  .  -name "*.simple" | wc 627     627   39545
  dsand@dsand-Inspiron-3521:~/Github/llvm-test-suite-mcsema/SingleSource$ find
  .  -name "*.simple.lifted" | wc 190     190   16520

  Dir                     Total     Pass    FAil

  Regression              49        39      10 UnitTest                94 72 22
  Benchmark               45        19      26

  long time ././Shootout/Output/fib2.simple.mcsema/fib2.simple.lifted
  Benchmarks/McGill/Output/exptree.simple.mcsema/exptree.simple.lifted

  erro 2.14 GLIBC?? on other machines are those runnable with bindescend on my
  machine why std_args does not run why somes of them re not coveting why some
  of them are chrashing

###References  
(#devine_2004) G. Balakrishnan and T. Reps. Analyzing memory accesses in x86
  executables.  In CC, pages 5–23. Springer-Verlag, 2004.
