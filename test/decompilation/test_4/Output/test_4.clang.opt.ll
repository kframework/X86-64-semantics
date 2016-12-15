; ModuleID = 'Output/test_4.clang.opt.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
module asm "  .cfi_endproc;"
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x280 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"x\01\00\00\00A\0E\10\86\02C\0D\06P\83\07\8C\06\8D\05\8E\04\8F\03" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !2
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !2
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !2
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %R15_val.3 = load i64, i64* %R15, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R15_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, !mcsema_real_eip !5
  %5 = sub i64 %3, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %R14_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %R13_val.7 = load i64, i64* %R13, !mcsema_real_eip !6
  %7 = sub i64 %5, 8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %R13_val.7, i64* %8, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %R12_val.9 = load i64, i64* %R12, !mcsema_real_eip !7
  %9 = sub i64 %7, 8, !mcsema_real_eip !7
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  store i64 %R12_val.9, i64* %10, !mcsema_real_eip !7
  store i64 %9, i64* %XSP, !mcsema_real_eip !7
  %RBX_val.11 = load i64, i64* %XBX, !mcsema_real_eip !8
  %11 = sub i64 %9, 8, !mcsema_real_eip !8
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !8
  store i64 %RBX_val.11, i64* %12, !mcsema_real_eip !8
  store i64 %11, i64* %XSP, !mcsema_real_eip !8
  %13 = sub i64 %11, 216, !mcsema_real_eip !9
  %14 = xor i64 %13, %11, !mcsema_real_eip !9
  %15 = xor i64 %14, 216, !mcsema_real_eip !9
  %16 = and i64 %15, 16, !mcsema_real_eip !9
  %17 = icmp ne i64 %16, 0, !mcsema_real_eip !9
  store i1 %17, i1* %AF, !mcsema_real_eip !9
  %18 = trunc i64 %13 to i8, !mcsema_real_eip !9
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !9
  %20 = trunc i8 %19 to i1, !mcsema_real_eip !9
  %21 = xor i1 %20, true, !mcsema_real_eip !9
  store i1 %21, i1* %PF, !mcsema_real_eip !9
  %22 = icmp eq i64 %13, 0, !mcsema_real_eip !9
  store i1 %22, i1* %ZF, !mcsema_real_eip !9
  %23 = lshr i64 %13, 63, !mcsema_real_eip !9
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !9
  store i1 %24, i1* %SF, !mcsema_real_eip !9
  %25 = icmp ult i64 %11, 216, !mcsema_real_eip !9
  store i1 %25, i1* %CF, !mcsema_real_eip !9
  %26 = xor i64 %11, 216, !mcsema_real_eip !9
  %27 = and i64 %26, %14, !mcsema_real_eip !9
  %28 = lshr i64 %27, 63, !mcsema_real_eip !9
  %29 = trunc i64 %28 to i1, !mcsema_real_eip !9
  store i1 %29, i1* %OF, !mcsema_real_eip !9
  store i64 %13, i64* %XSP, !mcsema_real_eip !9
  store i64 100, i64* %XAX, !mcsema_real_eip !10
  store i64 200, i64* %XCX, !mcsema_real_eip !11
  store i64 300, i64* %XDX, !mcsema_real_eip !12
  store i64 400, i64* %R8, !mcsema_real_eip !13
  store i64 500, i64* %R9, !mcsema_real_eip !14
  store i64 600, i64* %R10, !mcsema_real_eip !15
  store i64 10, i64* %R11, !mcsema_real_eip !16
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !17
  %30 = add i64 %RBP_val.14, -144, !mcsema_real_eip !17
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !17
  store i64 %30, i64* %XBX, !mcsema_real_eip !17
  %32 = add i64 %RBP_val.14, -96, !mcsema_real_eip !18
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !18
  store i64 %32, i64* %R14, !mcsema_real_eip !18
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %R15, !mcsema_real_eip !19
  store i64 40, i64* %R12, !mcsema_real_eip !20
  %R12D.16 = bitcast i64* %R12 to i32*, !mcsema_real_eip !21
  %R12D_val.17 = load i32, i32* %R12D.16, !mcsema_real_eip !21
  %34 = zext i32 %R12D_val.17 to i64, !mcsema_real_eip !21
  store i64 %34, i64* %R13, !mcsema_real_eip !21
  store i64 ptrtoint (%0* @data_0x220 to i64), i64* %R12, !mcsema_real_eip !22
  %35 = add i64 %RBP_val.14, -44, !mcsema_real_eip !23
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !23
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %37, !mcsema_real_eip !23
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !24
  %38 = add i64 %RBP_val.19, -48, !mcsema_real_eip !24
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !24
  %EDI.20 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.21 = load i32, i32* %EDI.20, !mcsema_real_eip !24
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !24
  store i32 %EDI_val.21, i32* %40, !mcsema_real_eip !24
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !25
  %41 = add i64 %RBP_val.22, -56, !mcsema_real_eip !25
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !25
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !25
  store i64 %RSI_val.23, i64* %42, !mcsema_real_eip !25
  %R14_val.24 = load i64, i64* %R14, !mcsema_real_eip !26
  store i64 %R14_val.24, i64* %XSI, !mcsema_real_eip !26
  store i64 %R14_val.24, i64* %XDI, !mcsema_real_eip !27
  %R12_val.26 = load i64, i64* %R12, !mcsema_real_eip !28
  store i64 %R12_val.26, i64* %XSI, !mcsema_real_eip !28
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !29
  %43 = add i64 %RBP_val.27, -152, !mcsema_real_eip !29
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !29
  %EDX.28 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.29 = load i32, i32* %EDX.28, !mcsema_real_eip !29
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !29
  store i32 %EDX_val.29, i32* %45, !mcsema_real_eip !29
  %R13_val.30 = load i64, i64* %R13, !mcsema_real_eip !30
  store i64 %R13_val.30, i64* %XDX, !mcsema_real_eip !30
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !31
  %46 = add i64 %RBP_val.31, -160, !mcsema_real_eip !31
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !31
  %R15_val.32 = load i64, i64* %R15, !mcsema_real_eip !31
  store i64 %R15_val.32, i64* %47, !mcsema_real_eip !31
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !32
  %48 = add i64 %RBP_val.33, -168, !mcsema_real_eip !32
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !32
  %R13_val.34 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %R13_val.34, i64* %49, !mcsema_real_eip !32
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !33
  %50 = add i64 %RBP_val.35, -172, !mcsema_real_eip !33
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !33
  %EAX.36 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.37 = load i32, i32* %EAX.36, !mcsema_real_eip !33
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.37, i32* %52, !mcsema_real_eip !33
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !34
  %53 = add i64 %RBP_val.38, -176, !mcsema_real_eip !34
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !34
  %ECX.39 = bitcast i64* %XCX to i32*, !mcsema_real_eip !34
  %ECX_val.40 = load i32, i32* %ECX.39, !mcsema_real_eip !34
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !34
  store i32 %ECX_val.40, i32* %55, !mcsema_real_eip !34
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !35
  %56 = add i64 %RBP_val.41, -184, !mcsema_real_eip !35
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !35
  %R14_val.42 = load i64, i64* %R14, !mcsema_real_eip !35
  store i64 %R14_val.42, i64* %57, !mcsema_real_eip !35
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !36
  %58 = add i64 %RBP_val.43, -188, !mcsema_real_eip !36
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !36
  %R8D.44 = bitcast i64* %R8 to i32*, !mcsema_real_eip !36
  %R8D_val.45 = load i32, i32* %R8D.44, !mcsema_real_eip !36
  %60 = inttoptr i64 %58 to i32*, !mcsema_real_eip !36
  store i32 %R8D_val.45, i32* %60, !mcsema_real_eip !36
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !37
  %61 = add i64 %RBP_val.46, -192, !mcsema_real_eip !37
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !37
  %R9D.47 = bitcast i64* %R9 to i32*, !mcsema_real_eip !37
  %R9D_val.48 = load i32, i32* %R9D.47, !mcsema_real_eip !37
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !37
  store i32 %R9D_val.48, i32* %63, !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !38
  %64 = add i64 %RBP_val.49, -196, !mcsema_real_eip !38
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !38
  %R10D.50 = bitcast i64* %R10 to i32*, !mcsema_real_eip !38
  %R10D_val.51 = load i32, i32* %R10D.50, !mcsema_real_eip !38
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !38
  store i32 %R10D_val.51, i32* %66, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !39
  %67 = add i64 %RBP_val.52, -200, !mcsema_real_eip !39
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !39
  %R11D.53 = bitcast i64* %R11 to i32*, !mcsema_real_eip !39
  %R11D_val.54 = load i32, i32* %R11D.53, !mcsema_real_eip !39
  %69 = inttoptr i64 %67 to i32*, !mcsema_real_eip !39
  store i32 %R11D_val.54, i32* %69, !mcsema_real_eip !39
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !40
  %70 = add i64 %RBP_val.55, -208, !mcsema_real_eip !40
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !40
  %RBX_val.56 = load i64, i64* %XBX, !mcsema_real_eip !40
  store i64 %RBX_val.56, i64* %71, !mcsema_real_eip !40
  %RDI_val.57 = load i64, i64* %XDI, !mcsema_real_eip !41
  %RSI_val.58 = load i64, i64* %XSI, !mcsema_real_eip !41
  %RDX_val.59 = load i64, i64* %XDX, !mcsema_real_eip !41
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !41
  %72 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !41
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %73, !mcsema_real_eip !41
  store i64 %72, i64* %XSP, !mcsema_real_eip !41
  %74 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.57, i64 %RSI_val.58, i64 %RDX_val.59), !mcsema_real_eip !41
  store i64 %74, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %75 = add i64 %RBP_val.61, -208, !mcsema_real_eip !42
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !42
  %77 = load i64, i64* %76, !mcsema_real_eip !42
  store i64 %77, i64* %XDX, !mcsema_real_eip !42
  store i64 %77, i64* %XDI, !mcsema_real_eip !43
  %78 = add i64 %RBP_val.61, -160, !mcsema_real_eip !44
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !44
  %80 = load i64, i64* %79, !mcsema_real_eip !44
  store i64 %80, i64* %XSI, !mcsema_real_eip !44
  %81 = add i64 %RBP_val.61, -168, !mcsema_real_eip !45
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !45
  %83 = load i64, i64* %82, !mcsema_real_eip !45
  store i64 %83, i64* %XDX, !mcsema_real_eip !45
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !46
  %84 = sub i64 %RSP_val.68, 8, !mcsema_real_eip !46
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !46
  store i64 -2415393069852865332, i64* %85, !mcsema_real_eip !46
  store i64 %84, i64* %XSP, !mcsema_real_eip !46
  %86 = call x86_64_sysvcc i64 @_memcpy(i64 %77, i64 %80, i64 %83), !mcsema_real_eip !46
  store i64 %86, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !47
  %87 = add i64 %RBP_val.69, -172, !mcsema_real_eip !47
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !47
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !47
  %90 = load i32, i32* %89, !mcsema_real_eip !47
  %91 = zext i32 %90 to i64, !mcsema_real_eip !47
  store i64 %91, i64* %XDI, !mcsema_real_eip !47
  %92 = add i64 %RBP_val.69, -176, !mcsema_real_eip !48
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !48
  %94 = inttoptr i64 %92 to i32*, !mcsema_real_eip !48
  %95 = load i32, i32* %94, !mcsema_real_eip !48
  %96 = zext i32 %95 to i64, !mcsema_real_eip !48
  store i64 %96, i64* %XSI, !mcsema_real_eip !48
  %97 = add i64 %RBP_val.69, -152, !mcsema_real_eip !49
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !49
  %99 = inttoptr i64 %97 to i32*, !mcsema_real_eip !49
  %100 = load i32, i32* %99, !mcsema_real_eip !49
  %101 = zext i32 %100 to i64, !mcsema_real_eip !49
  store i64 %101, i64* %XDX, !mcsema_real_eip !49
  %102 = add i64 %RBP_val.69, -188, !mcsema_real_eip !50
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !50
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !50
  %105 = load i32, i32* %104, !mcsema_real_eip !50
  %106 = zext i32 %105 to i64, !mcsema_real_eip !50
  store i64 %106, i64* %XCX, !mcsema_real_eip !50
  %107 = add i64 %RBP_val.69, -192, !mcsema_real_eip !51
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !51
  %109 = inttoptr i64 %107 to i32*, !mcsema_real_eip !51
  %110 = load i32, i32* %109, !mcsema_real_eip !51
  %111 = zext i32 %110 to i64, !mcsema_real_eip !51
  store i64 %111, i64* %R8, !mcsema_real_eip !51
  %112 = add i64 %RBP_val.69, -196, !mcsema_real_eip !52
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !52
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !52
  %115 = load i32, i32* %114, !mcsema_real_eip !52
  %116 = zext i32 %115 to i64, !mcsema_real_eip !52
  store i64 %116, i64* %R9, !mcsema_real_eip !52
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !53
  %117 = inttoptr i64 %RSP_val.75 to i64*, !mcsema_real_eip !53
  %118 = inttoptr i64 %RSP_val.75 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %118, !mcsema_real_eip !53
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !54
  %119 = add i64 %RBP_val.76, -184, !mcsema_real_eip !54
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !54
  %121 = load i64, i64* %120, !mcsema_real_eip !54
  store i64 %121, i64* %XBX, !mcsema_real_eip !54
  %RSP_val.77 = load i64, i64* %XSP, !mcsema_real_eip !55
  %122 = add i64 %RSP_val.77, 8, !mcsema_real_eip !55
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !55
  store i64 %121, i64* %123, !mcsema_real_eip !55
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !56
  %124 = add i64 %RSP_val.79, 16, !mcsema_real_eip !56
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !56
  %126 = inttoptr i64 %124 to i32*, !mcsema_real_eip !56
  store i32 10, i32* %126, !mcsema_real_eip !56
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !57
  %127 = add i64 %RBP_val.80, -208, !mcsema_real_eip !57
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !57
  %129 = load i64, i64* %128, !mcsema_real_eip !57
  store i64 %129, i64* %R14, !mcsema_real_eip !57
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !58
  %130 = add i64 %RSP_val.81, 24, !mcsema_real_eip !58
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !58
  store i64 %129, i64* %131, !mcsema_real_eip !58
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %132 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !59
  store i64 -4981261766360305936, i64* %133, !mcsema_real_eip !59
  store i64 %132, i64* %XSP, !mcsema_real_eip !59
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !59
  store i64 ptrtoint (%1* @data_0x278 to i64), i64* %XDI, !mcsema_real_eip !60
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !61
  %134 = add i64 %RBP_val.84, -148, !mcsema_real_eip !61
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !61
  %EAX_val.86 = load i32, i32* %EAX.36, !mcsema_real_eip !61
  %136 = inttoptr i64 %134 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.86, i32* %136, !mcsema_real_eip !61
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !62
  %137 = add i64 %RBP_val.87, -148, !mcsema_real_eip !62
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !62
  %139 = inttoptr i64 %137 to i32*, !mcsema_real_eip !62
  %140 = load i32, i32* %139, !mcsema_real_eip !62
  %141 = zext i32 %140 to i64, !mcsema_real_eip !62
  store i64 %141, i64* %XSI, !mcsema_real_eip !62
  %AL.88 = bitcast i64* %XAX to i8*, !mcsema_real_eip !63
  store i8 0, i8* %AL.88, !mcsema_real_eip !63
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !64
  %RDX_val.91 = load i64, i64* %XDX, !mcsema_real_eip !64
  %RCX_val.92 = load i64, i64* %XCX, !mcsema_real_eip !64
  %R8_val.93 = load i64, i64* %R8, !mcsema_real_eip !64
  %R9_val.94 = load i64, i64* %R9, !mcsema_real_eip !64
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !64
  %142 = inttoptr i64 %RSP_val.95 to i64*, !mcsema_real_eip !64
  %143 = load i64, i64* %142, !mcsema_real_eip !64
  %144 = add i64 %RSP_val.95, 8, !mcsema_real_eip !64
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !64
  %146 = load i64, i64* %145, !mcsema_real_eip !64
  %147 = add i64 %144, 8, !mcsema_real_eip !64
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !64
  %149 = load i64, i64* %148, !mcsema_real_eip !64
  %150 = add i64 %147, 8, !mcsema_real_eip !64
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !64
  %152 = load i64, i64* %151, !mcsema_real_eip !64
  %153 = add i64 %150, 8, !mcsema_real_eip !64
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !64
  %155 = load i64, i64* %154, !mcsema_real_eip !64
  %156 = add i64 %153, 8, !mcsema_real_eip !64
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !64
  %158 = load i64, i64* %157, !mcsema_real_eip !64
  %159 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !64
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !64
  store i64 -2415393069852865332, i64* %160, !mcsema_real_eip !64
  store i64 %159, i64* %XSP, !mcsema_real_eip !64
  %161 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.89, i64 %141, i64 %RDX_val.91, i64 %RCX_val.92, i64 %R8_val.93, i64 %R9_val.94, i64 %143, i64 %146, i64 %149, i64 %152, i64 %155, i64 %158), !mcsema_real_eip !64
  store i64 %161, i64* %XAX, !mcsema_real_eip !64
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !65
  %162 = add i64 %RBP_val.97, -148, !mcsema_real_eip !65
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !65
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !65
  %165 = load i32, i32* %164, !mcsema_real_eip !65
  %166 = zext i32 %165 to i64, !mcsema_real_eip !65
  store i64 %166, i64* %XCX, !mcsema_real_eip !65
  %167 = add i64 %RBP_val.97, -212, !mcsema_real_eip !66
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !66
  %EAX_val.100 = load i32, i32* %EAX.36, !mcsema_real_eip !66
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.100, i32* %169, !mcsema_real_eip !66
  %ECX_val.102 = load i32, i32* %ECX.39, !mcsema_real_eip !67
  %170 = zext i32 %ECX_val.102 to i64, !mcsema_real_eip !67
  store i64 %170, i64* %XAX, !mcsema_real_eip !67
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !68
  %171 = add i64 216, %RSP_val.103, !mcsema_real_eip !68
  %172 = xor i64 %171, %RSP_val.103, !mcsema_real_eip !68
  %173 = xor i64 %172, 216, !mcsema_real_eip !68
  %174 = and i64 %173, 16, !mcsema_real_eip !68
  %175 = icmp ne i64 %174, 0, !mcsema_real_eip !68
  store i1 %175, i1* %AF, !mcsema_real_eip !68
  %176 = lshr i64 %171, 63, !mcsema_real_eip !68
  %177 = trunc i64 %176 to i1, !mcsema_real_eip !68
  store i1 %177, i1* %SF, !mcsema_real_eip !68
  %178 = icmp eq i64 %171, 0, !mcsema_real_eip !68
  store i1 %178, i1* %ZF, !mcsema_real_eip !68
  %179 = xor i64 %RSP_val.103, 216, !mcsema_real_eip !68
  %180 = xor i64 %179, -1, !mcsema_real_eip !68
  %181 = and i64 %180, %172, !mcsema_real_eip !68
  %182 = lshr i64 %181, 63, !mcsema_real_eip !68
  %183 = and i64 %182, 1, !mcsema_real_eip !68
  %184 = trunc i64 %183 to i1, !mcsema_real_eip !68
  store i1 %184, i1* %OF, !mcsema_real_eip !68
  %185 = trunc i64 %171 to i8, !mcsema_real_eip !68
  %186 = call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !68
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !68
  %188 = xor i1 %187, true, !mcsema_real_eip !68
  store i1 %188, i1* %PF, !mcsema_real_eip !68
  %189 = icmp ult i64 %171, %RSP_val.103, !mcsema_real_eip !68
  store i1 %189, i1* %CF, !mcsema_real_eip !68
  store i64 %171, i64* %XSP, !mcsema_real_eip !68
  %190 = inttoptr i64 %171 to i64*, !mcsema_real_eip !69
  %191 = load i64, i64* %190, !mcsema_real_eip !69
  store i64 %191, i64* %XBX, !mcsema_real_eip !69
  %192 = add i64 %171, 8, !mcsema_real_eip !69
  store i64 %192, i64* %XSP, !mcsema_real_eip !69
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !70
  %194 = load i64, i64* %193, !mcsema_real_eip !70
  store i64 %194, i64* %R12, !mcsema_real_eip !70
  %195 = add i64 %192, 8, !mcsema_real_eip !70
  store i64 %195, i64* %XSP, !mcsema_real_eip !70
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !71
  %197 = load i64, i64* %196, !mcsema_real_eip !71
  store i64 %197, i64* %R13, !mcsema_real_eip !71
  %198 = add i64 %195, 8, !mcsema_real_eip !71
  store i64 %198, i64* %XSP, !mcsema_real_eip !71
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !72
  %200 = load i64, i64* %199, !mcsema_real_eip !72
  store i64 %200, i64* %R14, !mcsema_real_eip !72
  %201 = add i64 %198, 8, !mcsema_real_eip !72
  store i64 %201, i64* %XSP, !mcsema_real_eip !72
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !73
  %203 = load i64, i64* %202, !mcsema_real_eip !73
  store i64 %203, i64* %R15, !mcsema_real_eip !73
  %204 = add i64 %201, 8, !mcsema_real_eip !73
  store i64 %204, i64* %XSP, !mcsema_real_eip !73
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !74
  %206 = load i64, i64* %205, !mcsema_real_eip !74
  store i64 %206, i64* %XBP, !mcsema_real_eip !74
  %207 = add i64 %204, 8, !mcsema_real_eip !74
  store i64 %207, i64* %XSP, !mcsema_real_eip !74
  %208 = add i64 %207, 8, !mcsema_real_eip !75
  %209 = inttoptr i64 %207 to i64*, !mcsema_real_eip !75
  %210 = load i64, i64* %209, !mcsema_real_eip !75
  store i64 %210, i64* %XIP, !mcsema_real_eip !75
  store i64 %208, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !76
  %RSP_val.112 = load i64, i64* %XSP, !mcsema_real_eip !76
  %1 = sub i64 %RSP_val.112, 8, !mcsema_real_eip !76
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.111, i64* %2, !mcsema_real_eip !76
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  store i64 %1, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.114 = load i64, i64* %XBX, !mcsema_real_eip !78
  %3 = sub i64 %1, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.114, i64* %4, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, !mcsema_real_eip !78
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.116, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, !mcsema_real_eip !79
  %8 = add i64 %RBP_val.116, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !80
  %11 = load i32, i32* %10, !mcsema_real_eip !80
  %12 = zext i32 %11 to i64, !mcsema_real_eip !80
  store i64 %12, i64* %R10, !mcsema_real_eip !80
  %13 = add i64 %RBP_val.116, 24, !mcsema_real_eip !81
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !81
  %15 = load i64, i64* %14, !mcsema_real_eip !81
  store i64 %15, i64* %R11, !mcsema_real_eip !81
  %16 = add i64 %RBP_val.116, 16, !mcsema_real_eip !82
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !82
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !82
  %19 = load i32, i32* %18, !mcsema_real_eip !82
  %20 = zext i32 %19 to i64, !mcsema_real_eip !82
  store i64 %20, i64* %XBX, !mcsema_real_eip !82
  %21 = add i64 %RBP_val.116, -12, !mcsema_real_eip !83
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !83
  %EDI.121 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.122 = load i32, i32* %EDI.121, !mcsema_real_eip !83
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.122, i32* %23, !mcsema_real_eip !83
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !84
  %24 = add i64 %RBP_val.123, -16, !mcsema_real_eip !84
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !84
  %ESI.124 = bitcast i64* %XSI to i32*, !mcsema_real_eip !84
  %ESI_val.125 = load i32, i32* %ESI.124, !mcsema_real_eip !84
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !84
  store i32 %ESI_val.125, i32* %26, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !85
  %27 = add i64 %RBP_val.126, -20, !mcsema_real_eip !85
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !85
  %EDX.127 = bitcast i64* %XDX to i32*, !mcsema_real_eip !85
  %EDX_val.128 = load i32, i32* %EDX.127, !mcsema_real_eip !85
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !85
  store i32 %EDX_val.128, i32* %29, !mcsema_real_eip !85
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !86
  %30 = add i64 %RBP_val.129, -24, !mcsema_real_eip !86
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !86
  %ECX.130 = bitcast i64* %XCX to i32*, !mcsema_real_eip !86
  %ECX_val.131 = load i32, i32* %ECX.130, !mcsema_real_eip !86
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !86
  store i32 %ECX_val.131, i32* %32, !mcsema_real_eip !86
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !87
  %33 = add i64 %RBP_val.132, -28, !mcsema_real_eip !87
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !87
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.134 = load i32, i32* %R8D.133, !mcsema_real_eip !87
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.134, i32* %35, !mcsema_real_eip !87
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !88
  %36 = add i64 %RBP_val.135, -32, !mcsema_real_eip !88
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !88
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.137 = load i32, i32* %R9D.136, !mcsema_real_eip !88
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.137, i32* %38, !mcsema_real_eip !88
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !89
  %39 = add i64 %RBP_val.138, -36, !mcsema_real_eip !89
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !89
  %EBX.139 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.140 = load i32, i32* %EBX.139, !mcsema_real_eip !89
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.140, i32* %41, !mcsema_real_eip !89
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !90
  %42 = add i64 %RBP_val.141, -48, !mcsema_real_eip !90
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !90
  %R11_val.142 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.142, i64* %43, !mcsema_real_eip !90
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !91
  %44 = add i64 %RBP_val.143, -52, !mcsema_real_eip !91
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !91
  %R10D.144 = bitcast i64* %R10 to i32*, !mcsema_real_eip !91
  %R10D_val.145 = load i32, i32* %R10D.144, !mcsema_real_eip !91
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !91
  store i32 %R10D_val.145, i32* %46, !mcsema_real_eip !91
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !92
  %47 = add i64 %RBP_val.146, -64, !mcsema_real_eip !92
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !92
  %RAX_val.147 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.147, i64* %48, !mcsema_real_eip !92
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !93
  %49 = add i64 %RBP_val.148, -68, !mcsema_real_eip !93
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !93
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %51, !mcsema_real_eip !93
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !94
  %52 = add i64 %RBP_val.149, -72, !mcsema_real_eip !94
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !94
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !94
  store i32 0, i32* %54, !mcsema_real_eip !94
  br label %block_0x45, !mcsema_real_eip !95

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !95
  %55 = add i64 %RBP_val.150, -72, !mcsema_real_eip !95
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !95
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !95
  %58 = load i32, i32* %57, !mcsema_real_eip !95
  %59 = zext i32 %58 to i64, !mcsema_real_eip !95
  store i64 %59, i64* %XAX, !mcsema_real_eip !95
  %60 = add i64 %RBP_val.150, -36, !mcsema_real_eip !96
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !96
  %EAX.152 = bitcast i64* %XAX to i32*, !mcsema_real_eip !96
  %EAX_val.153 = load i32, i32* %EAX.152, !mcsema_real_eip !96
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !96
  %63 = load i32, i32* %62, !mcsema_real_eip !96
  %64 = sub i32 %EAX_val.153, %63, !mcsema_real_eip !96
  %65 = xor i32 %64, %EAX_val.153, !mcsema_real_eip !96
  %66 = xor i32 %65, %63, !mcsema_real_eip !96
  %67 = and i32 %66, 16, !mcsema_real_eip !96
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !96
  store i1 %68, i1* %AF, !mcsema_real_eip !96
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !96
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !96
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !96
  %72 = xor i1 %71, true, !mcsema_real_eip !96
  store i1 %72, i1* %PF, !mcsema_real_eip !96
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !96
  store i1 %73, i1* %ZF, !mcsema_real_eip !96
  %74 = lshr i32 %64, 31, !mcsema_real_eip !96
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !96
  store i1 %75, i1* %SF, !mcsema_real_eip !96
  %76 = icmp ult i32 %EAX_val.153, %63, !mcsema_real_eip !96
  store i1 %76, i1* %CF, !mcsema_real_eip !96
  %77 = xor i32 %EAX_val.153, %63, !mcsema_real_eip !96
  %78 = and i32 %77, %65, !mcsema_real_eip !96
  %79 = lshr i32 %78, 31, !mcsema_real_eip !96
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !96
  store i1 %80, i1* %OF, !mcsema_real_eip !96
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !97
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !97

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.150, -48, !mcsema_real_eip !98
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !98
  %84 = load i64, i64* %83, !mcsema_real_eip !98
  store i64 %84, i64* %XAX, !mcsema_real_eip !98
  %85 = load i32, i32* %57, !mcsema_real_eip !99
  %86 = sext i32 %85 to i64, !mcsema_real_eip !99
  store i64 %86, i64* %XCX, !mcsema_real_eip !99
  %87 = mul i64 %86, 4, !mcsema_real_eip !100
  %88 = add i64 %84, %87, !mcsema_real_eip !100
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !100
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !100
  %91 = load i32, i32* %90, !mcsema_real_eip !100
  %92 = zext i32 %91 to i64, !mcsema_real_eip !100
  store i64 %92, i64* %XDX, !mcsema_real_eip !100
  %93 = add i64 %RBP_val.150, -64, !mcsema_real_eip !101
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !101
  %95 = load i64, i64* %94, !mcsema_real_eip !101
  store i64 %95, i64* %XAX, !mcsema_real_eip !101
  %96 = load i32, i32* %57, !mcsema_real_eip !102
  %97 = sext i32 %96 to i64, !mcsema_real_eip !102
  store i64 %97, i64* %XCX, !mcsema_real_eip !102
  %98 = mul i64 %97, 4, !mcsema_real_eip !103
  %99 = add i64 %95, %98, !mcsema_real_eip !103
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !103
  %EDX_val.187 = load i32, i32* %EDX.127, !mcsema_real_eip !103
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !103
  %102 = load i32, i32* %101, !mcsema_real_eip !103
  %103 = sub i32 %EDX_val.187, %102, !mcsema_real_eip !103
  %104 = xor i32 %103, %EDX_val.187, !mcsema_real_eip !103
  %105 = xor i32 %104, %102, !mcsema_real_eip !103
  %106 = and i32 %105, 16, !mcsema_real_eip !103
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !103
  store i1 %107, i1* %AF, !mcsema_real_eip !103
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !103
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !103
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !103
  %111 = xor i1 %110, true, !mcsema_real_eip !103
  store i1 %111, i1* %PF, !mcsema_real_eip !103
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !103
  store i1 %112, i1* %ZF, !mcsema_real_eip !103
  %113 = lshr i32 %103, 31, !mcsema_real_eip !103
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !103
  store i1 %114, i1* %SF, !mcsema_real_eip !103
  %115 = icmp ult i32 %EDX_val.187, %102, !mcsema_real_eip !103
  store i1 %115, i1* %CF, !mcsema_real_eip !103
  %116 = xor i32 %EDX_val.187, %102, !mcsema_real_eip !103
  %117 = and i32 %116, %104, !mcsema_real_eip !103
  %118 = lshr i32 %117, 31, !mcsema_real_eip !103
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !103
  store i1 %119, i1* %OF, !mcsema_real_eip !103
  %120 = zext i32 %103 to i64, !mcsema_real_eip !103
  store i64 %120, i64* %XDX, !mcsema_real_eip !103
  %121 = add i64 %RBP_val.150, -68, !mcsema_real_eip !104
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !104
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !104
  %124 = load i32, i32* %123, !mcsema_real_eip !104
  %EDX_val.190 = load i32, i32* %EDX.127, !mcsema_real_eip !104
  %125 = add i32 %EDX_val.190, %124, !mcsema_real_eip !104
  %126 = xor i32 %125, %124, !mcsema_real_eip !104
  %127 = xor i32 %126, %EDX_val.190, !mcsema_real_eip !104
  %128 = and i32 %127, 16, !mcsema_real_eip !104
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !104
  store i1 %129, i1* %AF, !mcsema_real_eip !104
  %130 = lshr i32 %125, 31, !mcsema_real_eip !104
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !104
  store i1 %131, i1* %SF, !mcsema_real_eip !104
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !104
  store i1 %132, i1* %ZF, !mcsema_real_eip !104
  %133 = xor i32 %124, %EDX_val.190, !mcsema_real_eip !104
  %134 = xor i32 %133, -1, !mcsema_real_eip !104
  %135 = and i32 %134, %126, !mcsema_real_eip !104
  %136 = lshr i32 %135, 31, !mcsema_real_eip !104
  %137 = and i32 %136, 1, !mcsema_real_eip !104
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !104
  store i1 %138, i1* %OF, !mcsema_real_eip !104
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !104
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !104
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !104
  %142 = xor i1 %141, true, !mcsema_real_eip !104
  store i1 %142, i1* %PF, !mcsema_real_eip !104
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !104
  store i1 %143, i1* %CF, !mcsema_real_eip !104
  %144 = zext i32 %125 to i64, !mcsema_real_eip !104
  store i64 %144, i64* %XDX, !mcsema_real_eip !104
  %EDX_val.193 = load i32, i32* %EDX.127, !mcsema_real_eip !105
  store i32 %EDX_val.193, i32* %123, !mcsema_real_eip !105
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !106
  %145 = add i64 %RBP_val.194, -72, !mcsema_real_eip !106
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !106
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !106
  %148 = load i32, i32* %147, !mcsema_real_eip !106
  %149 = zext i32 %148 to i64, !mcsema_real_eip !106
  store i64 %149, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.196 = load i32, i32* %EAX.152, !mcsema_real_eip !107
  %150 = add i32 1, %EAX_val.196, !mcsema_real_eip !107
  %151 = xor i32 %150, %EAX_val.196, !mcsema_real_eip !107
  %152 = xor i32 %151, 1, !mcsema_real_eip !107
  %153 = and i32 %152, 16, !mcsema_real_eip !107
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !107
  store i1 %154, i1* %AF, !mcsema_real_eip !107
  %155 = lshr i32 %150, 31, !mcsema_real_eip !107
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !107
  store i1 %156, i1* %SF, !mcsema_real_eip !107
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !107
  store i1 %157, i1* %ZF, !mcsema_real_eip !107
  %158 = xor i32 %EAX_val.196, 1, !mcsema_real_eip !107
  %159 = xor i32 %158, -1, !mcsema_real_eip !107
  %160 = and i32 %159, %151, !mcsema_real_eip !107
  %161 = lshr i32 %160, 31, !mcsema_real_eip !107
  %162 = and i32 %161, 1, !mcsema_real_eip !107
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !107
  store i1 %163, i1* %OF, !mcsema_real_eip !107
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !107
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !107
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !107
  %167 = xor i1 %166, true, !mcsema_real_eip !107
  store i1 %167, i1* %PF, !mcsema_real_eip !107
  %168 = icmp ult i32 %150, %EAX_val.196, !mcsema_real_eip !107
  store i1 %168, i1* %CF, !mcsema_real_eip !107
  %169 = zext i32 %150 to i64, !mcsema_real_eip !107
  store i64 %169, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.199 = load i32, i32* %EAX.152, !mcsema_real_eip !108
  store i32 %EAX_val.199, i32* %147, !mcsema_real_eip !108
  br label %block_0x45, !mcsema_real_eip !109

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.150, -68, !mcsema_real_eip !110
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !110
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !110
  %173 = load i32, i32* %172, !mcsema_real_eip !110
  %174 = zext i32 %173 to i64, !mcsema_real_eip !110
  store i64 %174, i64* %XAX, !mcsema_real_eip !110
  %175 = add i64 %RBP_val.150, -12, !mcsema_real_eip !111
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !111
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !111
  %178 = load i32, i32* %177, !mcsema_real_eip !111
  %179 = zext i32 %178 to i64, !mcsema_real_eip !111
  store i64 %179, i64* %XCX, !mcsema_real_eip !111
  %180 = add i64 %RBP_val.150, -16, !mcsema_real_eip !112
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !112
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !112
  %183 = load i32, i32* %182, !mcsema_real_eip !112
  %ECX_val.158 = load i32, i32* %ECX.130, !mcsema_real_eip !112
  %184 = add i32 %ECX_val.158, %183, !mcsema_real_eip !112
  %185 = xor i32 %184, %183, !mcsema_real_eip !112
  %186 = xor i32 %185, %ECX_val.158, !mcsema_real_eip !112
  %187 = and i32 %186, 16, !mcsema_real_eip !112
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !112
  store i1 %188, i1* %AF, !mcsema_real_eip !112
  %189 = lshr i32 %184, 31, !mcsema_real_eip !112
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !112
  store i1 %190, i1* %SF, !mcsema_real_eip !112
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !112
  store i1 %191, i1* %ZF, !mcsema_real_eip !112
  %192 = xor i32 %183, %ECX_val.158, !mcsema_real_eip !112
  %193 = xor i32 %192, -1, !mcsema_real_eip !112
  %194 = and i32 %193, %185, !mcsema_real_eip !112
  %195 = lshr i32 %194, 31, !mcsema_real_eip !112
  %196 = and i32 %195, 1, !mcsema_real_eip !112
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !112
  store i1 %197, i1* %OF, !mcsema_real_eip !112
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !112
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !112
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !112
  %201 = xor i1 %200, true, !mcsema_real_eip !112
  store i1 %201, i1* %PF, !mcsema_real_eip !112
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !112
  store i1 %202, i1* %CF, !mcsema_real_eip !112
  %203 = zext i32 %184 to i64, !mcsema_real_eip !112
  store i64 %203, i64* %XCX, !mcsema_real_eip !112
  %204 = add i64 %RBP_val.150, -20, !mcsema_real_eip !113
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !113
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !113
  %207 = load i32, i32* %206, !mcsema_real_eip !113
  %ECX_val.161 = load i32, i32* %ECX.130, !mcsema_real_eip !113
  %208 = add i32 %ECX_val.161, %207, !mcsema_real_eip !113
  %209 = xor i32 %208, %207, !mcsema_real_eip !113
  %210 = xor i32 %209, %ECX_val.161, !mcsema_real_eip !113
  %211 = and i32 %210, 16, !mcsema_real_eip !113
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !113
  store i1 %212, i1* %AF, !mcsema_real_eip !113
  %213 = lshr i32 %208, 31, !mcsema_real_eip !113
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !113
  store i1 %214, i1* %SF, !mcsema_real_eip !113
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !113
  store i1 %215, i1* %ZF, !mcsema_real_eip !113
  %216 = xor i32 %207, %ECX_val.161, !mcsema_real_eip !113
  %217 = xor i32 %216, -1, !mcsema_real_eip !113
  %218 = and i32 %217, %209, !mcsema_real_eip !113
  %219 = lshr i32 %218, 31, !mcsema_real_eip !113
  %220 = and i32 %219, 1, !mcsema_real_eip !113
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !113
  store i1 %221, i1* %OF, !mcsema_real_eip !113
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !113
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !113
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !113
  %225 = xor i1 %224, true, !mcsema_real_eip !113
  store i1 %225, i1* %PF, !mcsema_real_eip !113
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !113
  store i1 %226, i1* %CF, !mcsema_real_eip !113
  %227 = zext i32 %208 to i64, !mcsema_real_eip !113
  store i64 %227, i64* %XCX, !mcsema_real_eip !113
  %228 = add i64 %RBP_val.150, -24, !mcsema_real_eip !114
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !114
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !114
  %231 = load i32, i32* %230, !mcsema_real_eip !114
  %ECX_val.164 = load i32, i32* %ECX.130, !mcsema_real_eip !114
  %232 = add i32 %ECX_val.164, %231, !mcsema_real_eip !114
  %233 = xor i32 %232, %231, !mcsema_real_eip !114
  %234 = xor i32 %233, %ECX_val.164, !mcsema_real_eip !114
  %235 = and i32 %234, 16, !mcsema_real_eip !114
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !114
  store i1 %236, i1* %AF, !mcsema_real_eip !114
  %237 = lshr i32 %232, 31, !mcsema_real_eip !114
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !114
  store i1 %238, i1* %SF, !mcsema_real_eip !114
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !114
  store i1 %239, i1* %ZF, !mcsema_real_eip !114
  %240 = xor i32 %231, %ECX_val.164, !mcsema_real_eip !114
  %241 = xor i32 %240, -1, !mcsema_real_eip !114
  %242 = and i32 %241, %233, !mcsema_real_eip !114
  %243 = lshr i32 %242, 31, !mcsema_real_eip !114
  %244 = and i32 %243, 1, !mcsema_real_eip !114
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !114
  store i1 %245, i1* %OF, !mcsema_real_eip !114
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !114
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !114
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !114
  %249 = xor i1 %248, true, !mcsema_real_eip !114
  store i1 %249, i1* %PF, !mcsema_real_eip !114
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !114
  store i1 %250, i1* %CF, !mcsema_real_eip !114
  %251 = zext i32 %232 to i64, !mcsema_real_eip !114
  store i64 %251, i64* %XCX, !mcsema_real_eip !114
  %252 = add i64 %RBP_val.150, -28, !mcsema_real_eip !115
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !115
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !115
  %255 = load i32, i32* %254, !mcsema_real_eip !115
  %ECX_val.167 = load i32, i32* %ECX.130, !mcsema_real_eip !115
  %256 = add i32 %ECX_val.167, %255, !mcsema_real_eip !115
  %257 = xor i32 %256, %255, !mcsema_real_eip !115
  %258 = xor i32 %257, %ECX_val.167, !mcsema_real_eip !115
  %259 = and i32 %258, 16, !mcsema_real_eip !115
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !115
  store i1 %260, i1* %AF, !mcsema_real_eip !115
  %261 = lshr i32 %256, 31, !mcsema_real_eip !115
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !115
  store i1 %262, i1* %SF, !mcsema_real_eip !115
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !115
  store i1 %263, i1* %ZF, !mcsema_real_eip !115
  %264 = xor i32 %255, %ECX_val.167, !mcsema_real_eip !115
  %265 = xor i32 %264, -1, !mcsema_real_eip !115
  %266 = and i32 %265, %257, !mcsema_real_eip !115
  %267 = lshr i32 %266, 31, !mcsema_real_eip !115
  %268 = and i32 %267, 1, !mcsema_real_eip !115
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !115
  store i1 %269, i1* %OF, !mcsema_real_eip !115
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !115
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !115
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !115
  %273 = xor i1 %272, true, !mcsema_real_eip !115
  store i1 %273, i1* %PF, !mcsema_real_eip !115
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !115
  store i1 %274, i1* %CF, !mcsema_real_eip !115
  %275 = zext i32 %256 to i64, !mcsema_real_eip !115
  store i64 %275, i64* %XCX, !mcsema_real_eip !115
  %276 = add i64 %RBP_val.150, -32, !mcsema_real_eip !116
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !116
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !116
  %279 = load i32, i32* %278, !mcsema_real_eip !116
  %ECX_val.170 = load i32, i32* %ECX.130, !mcsema_real_eip !116
  %280 = add i32 %ECX_val.170, %279, !mcsema_real_eip !116
  %281 = xor i32 %280, %279, !mcsema_real_eip !116
  %282 = xor i32 %281, %ECX_val.170, !mcsema_real_eip !116
  %283 = and i32 %282, 16, !mcsema_real_eip !116
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !116
  store i1 %284, i1* %AF, !mcsema_real_eip !116
  %285 = lshr i32 %280, 31, !mcsema_real_eip !116
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !116
  store i1 %286, i1* %SF, !mcsema_real_eip !116
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !116
  store i1 %287, i1* %ZF, !mcsema_real_eip !116
  %288 = xor i32 %279, %ECX_val.170, !mcsema_real_eip !116
  %289 = xor i32 %288, -1, !mcsema_real_eip !116
  %290 = and i32 %289, %281, !mcsema_real_eip !116
  %291 = lshr i32 %290, 31, !mcsema_real_eip !116
  %292 = and i32 %291, 1, !mcsema_real_eip !116
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !116
  store i1 %293, i1* %OF, !mcsema_real_eip !116
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !116
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !116
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !116
  %297 = xor i1 %296, true, !mcsema_real_eip !116
  store i1 %297, i1* %PF, !mcsema_real_eip !116
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !116
  store i1 %298, i1* %CF, !mcsema_real_eip !116
  %299 = zext i32 %280 to i64, !mcsema_real_eip !116
  store i64 %299, i64* %XCX, !mcsema_real_eip !116
  %ECX_val.172 = load i32, i32* %ECX.130, !mcsema_real_eip !117
  %EAX_val.174 = load i32, i32* %EAX.152, !mcsema_real_eip !117
  %300 = sext i32 %EAX_val.174 to i64, !mcsema_real_eip !117
  %301 = sext i32 %ECX_val.172 to i64, !mcsema_real_eip !117
  %302 = mul i64 %300, %301, !mcsema_real_eip !117
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !117
  %304 = sext i32 %303 to i64, !mcsema_real_eip !117
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !117
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !117
  store i1 %306, i1* %SF, !mcsema_real_eip !117
  store i1 %305, i1* %OF, !mcsema_real_eip !117
  store i1 %305, i1* %CF, !mcsema_real_eip !117
  %307 = zext i32 %303 to i64, !mcsema_real_eip !117
  store i64 %307, i64* %XAX, !mcsema_real_eip !117
  %RSP_val.175 = load i64, i64* %XSP, !mcsema_real_eip !118
  %308 = inttoptr i64 %RSP_val.175 to i64*, !mcsema_real_eip !118
  %309 = load i64, i64* %308, !mcsema_real_eip !118
  store i64 %309, i64* %XBX, !mcsema_real_eip !118
  %310 = add i64 %RSP_val.175, 8, !mcsema_real_eip !118
  store i64 %310, i64* %XSP, !mcsema_real_eip !118
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !119
  %312 = load i64, i64* %311, !mcsema_real_eip !119
  store i64 %312, i64* %XBP, !mcsema_real_eip !119
  %313 = add i64 %310, 8, !mcsema_real_eip !119
  store i64 %313, i64* %XSP, !mcsema_real_eip !119
  %314 = add i64 %313, 8, !mcsema_real_eip !120
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !120
  %316 = load i64, i64* %315, !mcsema_real_eip !120
  store i64 %316, i64* %XIP, !mcsema_real_eip !120
  store i64 %314, i64* %XSP, !mcsema_real_eip !120
  ret void, !mcsema_real_eip !120
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 166}
!6 = !{i64 168}
!7 = !{i64 170}
!8 = !{i64 172}
!9 = !{i64 173}
!10 = !{i64 180}
!11 = !{i64 185}
!12 = !{i64 190}
!13 = !{i64 195}
!14 = !{i64 201}
!15 = !{i64 207}
!16 = !{i64 213}
!17 = !{i64 219}
!18 = !{i64 226}
!19 = !{i64 230}
!20 = !{i64 240}
!21 = !{i64 246}
!22 = !{i64 249}
!23 = !{i64 259}
!24 = !{i64 266}
!25 = !{i64 269}
!26 = !{i64 273}
!27 = !{i64 276}
!28 = !{i64 279}
!29 = !{i64 282}
!30 = !{i64 288}
!31 = !{i64 291}
!32 = !{i64 298}
!33 = !{i64 305}
!34 = !{i64 311}
!35 = !{i64 317}
!36 = !{i64 324}
!37 = !{i64 331}
!38 = !{i64 338}
!39 = !{i64 345}
!40 = !{i64 352}
!41 = !{i64 359}
!42 = !{i64 364}
!43 = !{i64 371}
!44 = !{i64 374}
!45 = !{i64 381}
!46 = !{i64 388}
!47 = !{i64 393}
!48 = !{i64 399}
!49 = !{i64 405}
!50 = !{i64 411}
!51 = !{i64 417}
!52 = !{i64 424}
!53 = !{i64 431}
!54 = !{i64 438}
!55 = !{i64 445}
!56 = !{i64 450}
!57 = !{i64 458}
!58 = !{i64 465}
!59 = !{i64 470}
!60 = !{i64 475}
!61 = !{i64 485}
!62 = !{i64 491}
!63 = !{i64 497}
!64 = !{i64 499}
!65 = !{i64 504}
!66 = !{i64 510}
!67 = !{i64 516}
!68 = !{i64 518}
!69 = !{i64 525}
!70 = !{i64 526}
!71 = !{i64 528}
!72 = !{i64 530}
!73 = !{i64 532}
!74 = !{i64 534}
!75 = !{i64 535}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 26}
!86 = !{i64 29}
!87 = !{i64 32}
!88 = !{i64 36}
!89 = !{i64 40}
!90 = !{i64 43}
!91 = !{i64 47}
!92 = !{i64 51}
!93 = !{i64 55}
!94 = !{i64 62}
!95 = !{i64 69}
!96 = !{i64 72}
!97 = !{i64 75}
!98 = !{i64 81}
!99 = !{i64 85}
!100 = !{i64 89}
!101 = !{i64 92}
!102 = !{i64 96}
!103 = !{i64 100}
!104 = !{i64 103}
!105 = !{i64 106}
!106 = !{i64 109}
!107 = !{i64 112}
!108 = !{i64 115}
!109 = !{i64 118}
!110 = !{i64 123}
!111 = !{i64 126}
!112 = !{i64 129}
!113 = !{i64 132}
!114 = !{i64 135}
!115 = !{i64 138}
!116 = !{i64 141}
!117 = !{i64 144}
!118 = !{i64 147}
!119 = !{i64 148}
!120 = !{i64 149}
