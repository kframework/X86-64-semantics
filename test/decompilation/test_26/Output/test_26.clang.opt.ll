; ModuleID = 'Output/test_26.clang.opt.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x228 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\16\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\01\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_120(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x120, !mcsema_real_eip !2

block_0x120:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 144, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 144, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 144, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 144, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %22, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %23 = add i64 %RBP_val.5, -16, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %25, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.6, -12, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %28, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %29 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %31, !mcsema_real_eip !9
  store i64 24, i64* %XAX, !mcsema_real_eip !10
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !11
  %32 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XCX, !mcsema_real_eip !11
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !12
  %33 = add i64 %RBP_val.10, -88, !mcsema_real_eip !12
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %34, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !13
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !14
  %35 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !14
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !14
  store i64 %35, i64* %XSP, !mcsema_real_eip !14
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12), !mcsema_real_eip !14
  store i64 %37, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.15, -24, !mcsema_real_eip !15
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !15
  store i64 %37, i64* %39, !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !16
  %40 = add i64 %RBP_val.17, -24, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !16
  %42 = load i64, i64* %41, !mcsema_real_eip !16
  store i64 %42, i64* %XAX, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !17
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !17
  store i32 5, i32* %44, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %45 = add i64 %RBP_val.19, -24, !mcsema_real_eip !18
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !18
  %47 = load i64, i64* %46, !mcsema_real_eip !18
  store i64 %47, i64* %XAX, !mcsema_real_eip !18
  %48 = add i64 %47, 4, !mcsema_real_eip !19
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !19
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %50, !mcsema_real_eip !19
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %51 = add i64 %RBP_val.21, -24, !mcsema_real_eip !20
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !20
  %53 = load i64, i64* %52, !mcsema_real_eip !20
  store i64 %53, i64* %XAX, !mcsema_real_eip !20
  %54 = add i64 %53, 8, !mcsema_real_eip !21
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !21
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %56, !mcsema_real_eip !21
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !22
  %57 = add i64 %RBP_val.23, -24, !mcsema_real_eip !22
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !22
  %59 = load i64, i64* %58, !mcsema_real_eip !22
  store i64 %59, i64* %XAX, !mcsema_real_eip !22
  %60 = add i64 %RBP_val.23, -8, !mcsema_real_eip !23
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !23
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !23
  %63 = load i32, i32* %62, !mcsema_real_eip !23
  %64 = zext i32 %63 to i64, !mcsema_real_eip !23
  store i64 %64, i64* %XDX, !mcsema_real_eip !23
  %65 = add i64 %RBP_val.23, -48, !mcsema_real_eip !24
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !24
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.27 = load i32, i32* %EDX.26, !mcsema_real_eip !24
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !24
  store i32 %EDX_val.27, i32* %67, !mcsema_real_eip !24
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !25
  %68 = add i64 %RBP_val.28, -16, !mcsema_real_eip !25
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !25
  %70 = load i64, i64* %69, !mcsema_real_eip !25
  store i64 %70, i64* %XCX, !mcsema_real_eip !25
  %71 = add i64 %RBP_val.28, -56, !mcsema_real_eip !26
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !26
  store i64 %70, i64* %72, !mcsema_real_eip !26
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !27
  %73 = add i64 %RBP_val.31, -56, !mcsema_real_eip !27
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !27
  %75 = load i64, i64* %74, !mcsema_real_eip !27
  store i64 %75, i64* %XDI, !mcsema_real_eip !27
  %76 = add i64 %RBP_val.31, -48, !mcsema_real_eip !28
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !28
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !28
  %79 = load i32, i32* %78, !mcsema_real_eip !28
  %80 = zext i32 %79 to i64, !mcsema_real_eip !28
  store i64 %80, i64* %XSI, !mcsema_real_eip !28
  %81 = add i64 %RBP_val.31, -8, !mcsema_real_eip !29
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !29
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !29
  %84 = load i32, i32* %83, !mcsema_real_eip !29
  %85 = zext i32 %84 to i64, !mcsema_real_eip !29
  store i64 %85, i64* %XDX, !mcsema_real_eip !29
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !30
  store i64 %RSP_val.34, i64* %XCX, !mcsema_real_eip !30
  %86 = add i64 %RSP_val.34, 16, !mcsema_real_eip !31
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !31
  %EDX_val.37 = load i32, i32* %EDX.26, !mcsema_real_eip !31
  %88 = inttoptr i64 %86 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.37, i32* %88, !mcsema_real_eip !31
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !32
  %89 = add i64 %RBP_val.38, -16, !mcsema_real_eip !32
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !32
  %91 = load i64, i64* %90, !mcsema_real_eip !32
  store i64 %91, i64* %R8, !mcsema_real_eip !32
  %RCX_val.39 = load i64, i64* %XCX, !mcsema_real_eip !33
  %92 = add i64 %RCX_val.39, 8, !mcsema_real_eip !33
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !33
  store i64 %91, i64* %93, !mcsema_real_eip !33
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !34
  %94 = add i64 %RCX_val.41, 32, !mcsema_real_eip !34
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !34
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !34
  store i64 %RAX_val.42, i64* %95, !mcsema_real_eip !34
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !35
  %96 = add i64 %RBP_val.43, -16, !mcsema_real_eip !35
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !35
  store i64 %96, i64* %R8, !mcsema_real_eip !35
  %RCX_val.44 = load i64, i64* %XCX, !mcsema_real_eip !36
  %98 = add i64 %RCX_val.44, 24, !mcsema_real_eip !36
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !36
  store i64 %96, i64* %99, !mcsema_real_eip !36
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !37
  %100 = inttoptr i64 %RCX_val.46 to i64*, !mcsema_real_eip !37
  %101 = inttoptr i64 %RCX_val.46 to i32*, !mcsema_real_eip !37
  store i32 3, i32* %101, !mcsema_real_eip !37
  store i64 1, i64* %XDX, !mcsema_real_eip !38
  store i64 2, i64* %R9, !mcsema_real_eip !39
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !40
  %102 = add i64 %RBP_val.47, -92, !mcsema_real_eip !40
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !40
  %EDX_val.49 = load i32, i32* %EDX.26, !mcsema_real_eip !40
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !40
  store i32 %EDX_val.49, i32* %104, !mcsema_real_eip !40
  %R8_val.50 = load i64, i64* %R8, !mcsema_real_eip !41
  store i64 %R8_val.50, i64* %XDX, !mcsema_real_eip !41
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !42
  store i64 %RAX_val.51, i64* %XCX, !mcsema_real_eip !42
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !43
  %105 = add i64 %RBP_val.52, -92, !mcsema_real_eip !43
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !43
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !43
  %108 = load i32, i32* %107, !mcsema_real_eip !43
  %109 = zext i32 %108 to i64, !mcsema_real_eip !43
  store i64 %109, i64* %R8, !mcsema_real_eip !43
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !44
  %110 = sub i64 %RSP_val.53, 8, !mcsema_real_eip !44
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %111, !mcsema_real_eip !44
  store i64 %110, i64* %XSP, !mcsema_real_eip !44
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !44
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !45
  %112 = add i64 %RBP_val.54, -64, !mcsema_real_eip !45
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !45
  %EDX_val.56 = load i32, i32* %EDX.26, !mcsema_real_eip !45
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !45
  store i32 %EDX_val.56, i32* %114, !mcsema_real_eip !45
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !46
  %115 = add i64 %RBP_val.57, -72, !mcsema_real_eip !46
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !46
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.58, i64* %116, !mcsema_real_eip !46
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !47
  %117 = add i64 %RBP_val.59, -72, !mcsema_real_eip !47
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !47
  %119 = load i64, i64* %118, !mcsema_real_eip !47
  store i64 %119, i64* %XAX, !mcsema_real_eip !47
  %120 = add i64 %RBP_val.59, -40, !mcsema_real_eip !48
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !48
  store i64 %119, i64* %121, !mcsema_real_eip !48
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !49
  %122 = add i64 %RBP_val.62, -64, !mcsema_real_eip !49
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !49
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !49
  %125 = load i32, i32* %124, !mcsema_real_eip !49
  %126 = zext i32 %125 to i64, !mcsema_real_eip !49
  store i64 %126, i64* %XDX, !mcsema_real_eip !49
  %127 = add i64 %RBP_val.62, -32, !mcsema_real_eip !50
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !50
  %EDX_val.65 = load i32, i32* %EDX.26, !mcsema_real_eip !50
  %129 = inttoptr i64 %127 to i32*, !mcsema_real_eip !50
  store i32 %EDX_val.65, i32* %129, !mcsema_real_eip !50
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !51
  %130 = add i64 %RBP_val.66, -40, !mcsema_real_eip !51
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !51
  %132 = inttoptr i64 %130 to i32*, !mcsema_real_eip !51
  %133 = load i32, i32* %132, !mcsema_real_eip !51
  %134 = zext i32 %133 to i64, !mcsema_real_eip !51
  store i64 %134, i64* %XDX, !mcsema_real_eip !51
  %135 = add i64 %RBP_val.66, -36, !mcsema_real_eip !52
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !52
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !52
  %138 = load i32, i32* %137, !mcsema_real_eip !52
  %EDX_val.69 = load i32, i32* %EDX.26, !mcsema_real_eip !52
  %139 = add i32 %EDX_val.69, %138, !mcsema_real_eip !52
  %140 = xor i32 %139, %138, !mcsema_real_eip !52
  %141 = xor i32 %140, %EDX_val.69, !mcsema_real_eip !52
  %142 = and i32 %141, 16, !mcsema_real_eip !52
  %143 = icmp ne i32 %142, 0, !mcsema_real_eip !52
  store i1 %143, i1* %AF, !mcsema_real_eip !52
  %144 = lshr i32 %139, 31, !mcsema_real_eip !52
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !52
  store i1 %145, i1* %SF, !mcsema_real_eip !52
  %146 = icmp eq i32 %139, 0, !mcsema_real_eip !52
  store i1 %146, i1* %ZF, !mcsema_real_eip !52
  %147 = xor i32 %138, %EDX_val.69, !mcsema_real_eip !52
  %148 = xor i32 %147, -1, !mcsema_real_eip !52
  %149 = and i32 %148, %140, !mcsema_real_eip !52
  %150 = lshr i32 %149, 31, !mcsema_real_eip !52
  %151 = and i32 %150, 1, !mcsema_real_eip !52
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !52
  store i1 %152, i1* %OF, !mcsema_real_eip !52
  %153 = trunc i32 %139 to i8, !mcsema_real_eip !52
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !52
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !52
  %156 = xor i1 %155, true, !mcsema_real_eip !52
  store i1 %156, i1* %PF, !mcsema_real_eip !52
  %157 = icmp ult i32 %139, %138, !mcsema_real_eip !52
  store i1 %157, i1* %CF, !mcsema_real_eip !52
  %158 = zext i32 %139 to i64, !mcsema_real_eip !52
  store i64 %158, i64* %XDX, !mcsema_real_eip !52
  %159 = add i64 %RBP_val.66, -32, !mcsema_real_eip !53
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !53
  %161 = inttoptr i64 %159 to i32*, !mcsema_real_eip !53
  %162 = load i32, i32* %161, !mcsema_real_eip !53
  %EDX_val.72 = load i32, i32* %EDX.26, !mcsema_real_eip !53
  %163 = add i32 %EDX_val.72, %162, !mcsema_real_eip !53
  %164 = xor i32 %163, %162, !mcsema_real_eip !53
  %165 = xor i32 %164, %EDX_val.72, !mcsema_real_eip !53
  %166 = and i32 %165, 16, !mcsema_real_eip !53
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !53
  store i1 %167, i1* %AF, !mcsema_real_eip !53
  %168 = lshr i32 %163, 31, !mcsema_real_eip !53
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !53
  store i1 %169, i1* %SF, !mcsema_real_eip !53
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !53
  store i1 %170, i1* %ZF, !mcsema_real_eip !53
  %171 = xor i32 %162, %EDX_val.72, !mcsema_real_eip !53
  %172 = xor i32 %171, -1, !mcsema_real_eip !53
  %173 = and i32 %172, %164, !mcsema_real_eip !53
  %174 = lshr i32 %173, 31, !mcsema_real_eip !53
  %175 = and i32 %174, 1, !mcsema_real_eip !53
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !53
  store i1 %176, i1* %OF, !mcsema_real_eip !53
  %177 = trunc i32 %163 to i8, !mcsema_real_eip !53
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !53
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !53
  %180 = xor i1 %179, true, !mcsema_real_eip !53
  store i1 %180, i1* %PF, !mcsema_real_eip !53
  %181 = icmp ult i32 %163, %162, !mcsema_real_eip !53
  store i1 %181, i1* %CF, !mcsema_real_eip !53
  %182 = zext i32 %163 to i64, !mcsema_real_eip !53
  store i64 %182, i64* %XDX, !mcsema_real_eip !53
  %183 = add i64 %RBP_val.66, -76, !mcsema_real_eip !54
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !54
  %EDX_val.75 = load i32, i32* %EDX.26, !mcsema_real_eip !54
  %185 = inttoptr i64 %183 to i32*, !mcsema_real_eip !54
  store i32 %EDX_val.75, i32* %185, !mcsema_real_eip !54
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !55
  %186 = add i64 %RBP_val.76, -76, !mcsema_real_eip !55
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !55
  %188 = inttoptr i64 %186 to i32*, !mcsema_real_eip !55
  %189 = load i32, i32* %188, !mcsema_real_eip !55
  %190 = zext i32 %189 to i64, !mcsema_real_eip !55
  store i64 %190, i64* %XSI, !mcsema_real_eip !55
  %191 = add i64 %RBP_val.76, -88, !mcsema_real_eip !56
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !56
  %193 = load i64, i64* %192, !mcsema_real_eip !56
  store i64 %193, i64* %XDI, !mcsema_real_eip !56
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.78, !mcsema_real_eip !57
  %RDX_val.81 = load i64, i64* %XDX, !mcsema_real_eip !58
  %RCX_val.82 = load i64, i64* %XCX, !mcsema_real_eip !58
  %R8_val.83 = load i64, i64* %R8, !mcsema_real_eip !58
  %R9_val.84 = load i64, i64* %R9, !mcsema_real_eip !58
  %RSP_val.85 = load i64, i64* %XSP, !mcsema_real_eip !58
  %194 = inttoptr i64 %RSP_val.85 to i64*, !mcsema_real_eip !58
  %195 = load i64, i64* %194, !mcsema_real_eip !58
  %196 = add i64 %RSP_val.85, 8, !mcsema_real_eip !58
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !58
  %198 = load i64, i64* %197, !mcsema_real_eip !58
  %199 = add i64 %196, 8, !mcsema_real_eip !58
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !58
  %201 = load i64, i64* %200, !mcsema_real_eip !58
  %202 = add i64 %199, 8, !mcsema_real_eip !58
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !58
  %204 = load i64, i64* %203, !mcsema_real_eip !58
  %205 = add i64 %202, 8, !mcsema_real_eip !58
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !58
  %207 = load i64, i64* %206, !mcsema_real_eip !58
  %208 = add i64 %205, 8, !mcsema_real_eip !58
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !58
  %210 = load i64, i64* %209, !mcsema_real_eip !58
  %211 = sub i64 %RSP_val.85, 8, !mcsema_real_eip !58
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %212, !mcsema_real_eip !58
  store i64 %211, i64* %XSP, !mcsema_real_eip !58
  %213 = call x86_64_sysvcc i64 @_printf(i64 %193, i64 %190, i64 %RDX_val.81, i64 %RCX_val.82, i64 %R8_val.83, i64 %R9_val.84, i64 %195, i64 %198, i64 %201, i64 %204, i64 %207, i64 %210), !mcsema_real_eip !58
  store i64 %213, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !59
  %214 = add i64 %RBP_val.87, -76, !mcsema_real_eip !59
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !59
  %216 = inttoptr i64 %214 to i32*, !mcsema_real_eip !59
  %217 = load i32, i32* %216, !mcsema_real_eip !59
  %218 = zext i32 %217 to i64, !mcsema_real_eip !59
  store i64 %218, i64* %XDX, !mcsema_real_eip !59
  %219 = add i64 %RBP_val.87, -96, !mcsema_real_eip !60
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !60
  %EAX_val.90 = load i32, i32* %EAX.8, !mcsema_real_eip !60
  %221 = inttoptr i64 %219 to i32*, !mcsema_real_eip !60
  store i32 %EAX_val.90, i32* %221, !mcsema_real_eip !60
  %EDX_val.92 = load i32, i32* %EDX.26, !mcsema_real_eip !61
  %222 = zext i32 %EDX_val.92 to i64, !mcsema_real_eip !61
  store i64 %222, i64* %XAX, !mcsema_real_eip !61
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !62
  %223 = add i64 144, %RSP_val.93, !mcsema_real_eip !62
  %224 = xor i64 %223, %RSP_val.93, !mcsema_real_eip !62
  %225 = xor i64 %224, 144, !mcsema_real_eip !62
  %226 = and i64 %225, 16, !mcsema_real_eip !62
  %227 = icmp ne i64 %226, 0, !mcsema_real_eip !62
  store i1 %227, i1* %AF, !mcsema_real_eip !62
  %228 = lshr i64 %223, 63, !mcsema_real_eip !62
  %229 = trunc i64 %228 to i1, !mcsema_real_eip !62
  store i1 %229, i1* %SF, !mcsema_real_eip !62
  %230 = icmp eq i64 %223, 0, !mcsema_real_eip !62
  store i1 %230, i1* %ZF, !mcsema_real_eip !62
  %231 = xor i64 %RSP_val.93, 144, !mcsema_real_eip !62
  %232 = xor i64 %231, -1, !mcsema_real_eip !62
  %233 = and i64 %232, %224, !mcsema_real_eip !62
  %234 = lshr i64 %233, 63, !mcsema_real_eip !62
  %235 = and i64 %234, 1, !mcsema_real_eip !62
  %236 = trunc i64 %235 to i1, !mcsema_real_eip !62
  store i1 %236, i1* %OF, !mcsema_real_eip !62
  %237 = trunc i64 %223 to i8, !mcsema_real_eip !62
  %238 = call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !62
  %239 = trunc i8 %238 to i1, !mcsema_real_eip !62
  %240 = xor i1 %239, true, !mcsema_real_eip !62
  store i1 %240, i1* %PF, !mcsema_real_eip !62
  %241 = icmp ult i64 %223, %RSP_val.93, !mcsema_real_eip !62
  store i1 %241, i1* %CF, !mcsema_real_eip !62
  store i64 %223, i64* %XSP, !mcsema_real_eip !62
  %242 = inttoptr i64 %223 to i64*, !mcsema_real_eip !63
  %243 = load i64, i64* %242, !mcsema_real_eip !63
  store i64 %243, i64* %XBP, !mcsema_real_eip !63
  %244 = add i64 %223, 8, !mcsema_real_eip !63
  store i64 %244, i64* %XSP, !mcsema_real_eip !63
  %245 = add i64 %244, 8, !mcsema_real_eip !64
  %246 = inttoptr i64 %244 to i64*, !mcsema_real_eip !64
  %247 = load i64, i64* %246, !mcsema_real_eip !64
  store i64 %247, i64* %XIP, !mcsema_real_eip !64
  store i64 %245, i64* %XSP, !mcsema_real_eip !64
  ret void, !mcsema_real_eip !64
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !65
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !65
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !65
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !65
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !65
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !65
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !65
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !65
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !65
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !65
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !65
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !65
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !65
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !65
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !65
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !65
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !65
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !65
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !65
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !65
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !65
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !65
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !65
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !65
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !65
  br label %block_0x0, !mcsema_real_eip !65

block_0x0:                                        ; preds = %entry
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !65
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !65
  %1 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !65
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !65
  store i64 %RBP_val.96, i64* %2, !mcsema_real_eip !65
  store i64 %1, i64* %XSP, !mcsema_real_eip !65
  store i64 %1, i64* %XBP, !mcsema_real_eip !66
  %RBX_val.99 = load i64, i64* %XBX, !mcsema_real_eip !67
  %3 = sub i64 %1, 8, !mcsema_real_eip !67
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !67
  store i64 %RBX_val.99, i64* %4, !mcsema_real_eip !67
  store i64 %3, i64* %XSP, !mcsema_real_eip !67
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !68
  %5 = add i64 %RBP_val.101, 48, !mcsema_real_eip !68
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !68
  %7 = load i64, i64* %6, !mcsema_real_eip !68
  store i64 %7, i64* %XAX, !mcsema_real_eip !68
  %8 = add i64 %RBP_val.101, 40, !mcsema_real_eip !69
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !69
  %10 = load i64, i64* %9, !mcsema_real_eip !69
  store i64 %10, i64* %R10, !mcsema_real_eip !69
  %11 = add i64 %RBP_val.101, 24, !mcsema_real_eip !70
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !70
  store i64 %11, i64* %R11, !mcsema_real_eip !70
  %13 = add i64 %RBP_val.101, 16, !mcsema_real_eip !71
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !71
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !71
  %16 = load i32, i32* %15, !mcsema_real_eip !71
  %17 = zext i32 %16 to i64, !mcsema_real_eip !71
  store i64 %17, i64* %XBX, !mcsema_real_eip !71
  %18 = add i64 %RBP_val.101, -56, !mcsema_real_eip !72
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !72
  %RDI_val.106 = load i64, i64* %XDI, !mcsema_real_eip !72
  store i64 %RDI_val.106, i64* %19, !mcsema_real_eip !72
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !73
  %20 = add i64 %RBP_val.107, -48, !mcsema_real_eip !73
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !73
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !73
  %ESI_val.109 = load i32, i32* %ESI.108, !mcsema_real_eip !73
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !73
  store i32 %ESI_val.109, i32* %22, !mcsema_real_eip !73
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !74
  %23 = add i64 %RBP_val.110, -48, !mcsema_real_eip !74
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !74
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !74
  %26 = load i32, i32* %25, !mcsema_real_eip !74
  %27 = zext i32 %26 to i64, !mcsema_real_eip !74
  store i64 %27, i64* %XSI, !mcsema_real_eip !74
  %28 = add i64 %RBP_val.110, -32, !mcsema_real_eip !75
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !75
  %ESI_val.113 = load i32, i32* %ESI.108, !mcsema_real_eip !75
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.113, i32* %30, !mcsema_real_eip !75
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !76
  %31 = add i64 %RBP_val.114, -56, !mcsema_real_eip !76
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !76
  %33 = load i64, i64* %32, !mcsema_real_eip !76
  store i64 %33, i64* %XDI, !mcsema_real_eip !76
  %34 = add i64 %RBP_val.114, -40, !mcsema_real_eip !77
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !77
  store i64 %33, i64* %35, !mcsema_real_eip !77
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !78
  %36 = add i64 %RBP_val.117, -64, !mcsema_real_eip !78
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !78
  %RDX_val.118 = load i64, i64* %XDX, !mcsema_real_eip !78
  store i64 %RDX_val.118, i64* %37, !mcsema_real_eip !78
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !79
  %38 = add i64 %RBP_val.119, -72, !mcsema_real_eip !79
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !79
  %RCX_val.120 = load i64, i64* %XCX, !mcsema_real_eip !79
  store i64 %RCX_val.120, i64* %39, !mcsema_real_eip !79
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !80
  %40 = add i64 %RBP_val.121, -76, !mcsema_real_eip !80
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !80
  %R8D.122 = bitcast i64* %R8 to i32*, !mcsema_real_eip !80
  %R8D_val.123 = load i32, i32* %R8D.122, !mcsema_real_eip !80
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !80
  store i32 %R8D_val.123, i32* %42, !mcsema_real_eip !80
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !81
  %43 = add i64 %RBP_val.124, -80, !mcsema_real_eip !81
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !81
  %R9D.125 = bitcast i64* %R9 to i32*, !mcsema_real_eip !81
  %R9D_val.126 = load i32, i32* %R9D.125, !mcsema_real_eip !81
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !81
  store i32 %R9D_val.126, i32* %45, !mcsema_real_eip !81
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !82
  %46 = add i64 %RBP_val.127, -84, !mcsema_real_eip !82
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !82
  %EBX.128 = bitcast i64* %XBX to i32*, !mcsema_real_eip !82
  %EBX_val.129 = load i32, i32* %EBX.128, !mcsema_real_eip !82
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !82
  store i32 %EBX_val.129, i32* %48, !mcsema_real_eip !82
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !83
  %49 = add i64 %RBP_val.130, -96, !mcsema_real_eip !83
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !83
  %R10_val.131 = load i64, i64* %R10, !mcsema_real_eip !83
  store i64 %R10_val.131, i64* %50, !mcsema_real_eip !83
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !84
  %51 = add i64 %RBP_val.132, -104, !mcsema_real_eip !84
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !84
  %RAX_val.133 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.133, i64* %52, !mcsema_real_eip !84
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !85
  %53 = add i64 %RBP_val.134, -40, !mcsema_real_eip !85
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !85
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !85
  %56 = load i32, i32* %55, !mcsema_real_eip !85
  %57 = zext i32 %56 to i64, !mcsema_real_eip !85
  store i64 %57, i64* %XSI, !mcsema_real_eip !85
  %58 = add i64 %RBP_val.134, -64, !mcsema_real_eip !86
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !86
  %60 = load i64, i64* %59, !mcsema_real_eip !86
  store i64 %60, i64* %XAX, !mcsema_real_eip !86
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !87
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !87
  %63 = load i32, i32* %62, !mcsema_real_eip !87
  %64 = zext i32 %63 to i64, !mcsema_real_eip !87
  store i64 %64, i64* %R8, !mcsema_real_eip !87
  %ESI_val.138 = load i32, i32* %ESI.108, !mcsema_real_eip !88
  %R8D_val.140 = load i32, i32* %R8D.122, !mcsema_real_eip !88
  %65 = add i32 %R8D_val.140, %ESI_val.138, !mcsema_real_eip !88
  %66 = xor i32 %65, %ESI_val.138, !mcsema_real_eip !88
  %67 = xor i32 %66, %R8D_val.140, !mcsema_real_eip !88
  %68 = and i32 %67, 16, !mcsema_real_eip !88
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !88
  store i1 %69, i1* %AF, !mcsema_real_eip !88
  %70 = lshr i32 %65, 31, !mcsema_real_eip !88
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !88
  store i1 %71, i1* %SF, !mcsema_real_eip !88
  %72 = icmp eq i32 %65, 0, !mcsema_real_eip !88
  store i1 %72, i1* %ZF, !mcsema_real_eip !88
  %73 = xor i32 %ESI_val.138, %R8D_val.140, !mcsema_real_eip !88
  %74 = xor i32 %73, -1, !mcsema_real_eip !88
  %75 = and i32 %74, %66, !mcsema_real_eip !88
  %76 = lshr i32 %75, 31, !mcsema_real_eip !88
  %77 = and i32 %76, 1, !mcsema_real_eip !88
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !88
  store i1 %78, i1* %OF, !mcsema_real_eip !88
  %79 = trunc i32 %65 to i8, !mcsema_real_eip !88
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !88
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !88
  %82 = xor i1 %81, true, !mcsema_real_eip !88
  store i1 %82, i1* %PF, !mcsema_real_eip !88
  %83 = icmp ult i32 %65, %ESI_val.138, !mcsema_real_eip !88
  store i1 %83, i1* %CF, !mcsema_real_eip !88
  %84 = zext i32 %65 to i64, !mcsema_real_eip !88
  store i64 %84, i64* %XSI, !mcsema_real_eip !88
  %85 = add i64 %RBP_val.134, -72, !mcsema_real_eip !89
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !89
  %87 = load i64, i64* %86, !mcsema_real_eip !89
  store i64 %87, i64* %XAX, !mcsema_real_eip !89
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !90
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !90
  %90 = load i32, i32* %89, !mcsema_real_eip !90
  %91 = zext i32 %90 to i64, !mcsema_real_eip !90
  store i64 %91, i64* %R8, !mcsema_real_eip !90
  %ESI_val.144 = load i32, i32* %ESI.108, !mcsema_real_eip !91
  %R8D_val.146 = load i32, i32* %R8D.122, !mcsema_real_eip !91
  %92 = add i32 %R8D_val.146, %ESI_val.144, !mcsema_real_eip !91
  %93 = xor i32 %92, %ESI_val.144, !mcsema_real_eip !91
  %94 = xor i32 %93, %R8D_val.146, !mcsema_real_eip !91
  %95 = and i32 %94, 16, !mcsema_real_eip !91
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !91
  store i1 %96, i1* %AF, !mcsema_real_eip !91
  %97 = lshr i32 %92, 31, !mcsema_real_eip !91
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !91
  store i1 %98, i1* %SF, !mcsema_real_eip !91
  %99 = icmp eq i32 %92, 0, !mcsema_real_eip !91
  store i1 %99, i1* %ZF, !mcsema_real_eip !91
  %100 = xor i32 %ESI_val.144, %R8D_val.146, !mcsema_real_eip !91
  %101 = xor i32 %100, -1, !mcsema_real_eip !91
  %102 = and i32 %101, %93, !mcsema_real_eip !91
  %103 = lshr i32 %102, 31, !mcsema_real_eip !91
  %104 = and i32 %103, 1, !mcsema_real_eip !91
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !91
  store i1 %105, i1* %OF, !mcsema_real_eip !91
  %106 = trunc i32 %92 to i8, !mcsema_real_eip !91
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !91
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !91
  %109 = xor i1 %108, true, !mcsema_real_eip !91
  store i1 %109, i1* %PF, !mcsema_real_eip !91
  %110 = icmp ult i32 %92, %ESI_val.144, !mcsema_real_eip !91
  store i1 %110, i1* %CF, !mcsema_real_eip !91
  %111 = zext i32 %92 to i64, !mcsema_real_eip !91
  store i64 %111, i64* %XSI, !mcsema_real_eip !91
  %R11_val.147 = load i64, i64* %R11, !mcsema_real_eip !92
  %112 = inttoptr i64 %R11_val.147 to i64*, !mcsema_real_eip !92
  %113 = inttoptr i64 %R11_val.147 to i32*, !mcsema_real_eip !92
  %114 = load i32, i32* %113, !mcsema_real_eip !92
  %115 = zext i32 %114 to i64, !mcsema_real_eip !92
  store i64 %115, i64* %R8, !mcsema_real_eip !92
  %116 = add i64 %RBP_val.134, -96, !mcsema_real_eip !93
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !93
  %118 = load i64, i64* %117, !mcsema_real_eip !93
  store i64 %118, i64* %XAX, !mcsema_real_eip !93
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !94
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !94
  %121 = load i32, i32* %120, !mcsema_real_eip !94
  %122 = zext i32 %121 to i64, !mcsema_real_eip !94
  store i64 %122, i64* %R9, !mcsema_real_eip !94
  %R8D_val.151 = load i32, i32* %R8D.122, !mcsema_real_eip !95
  %R9D_val.153 = load i32, i32* %R9D.125, !mcsema_real_eip !95
  %123 = add i32 %R9D_val.153, %R8D_val.151, !mcsema_real_eip !95
  %124 = xor i32 %123, %R8D_val.151, !mcsema_real_eip !95
  %125 = xor i32 %124, %R9D_val.153, !mcsema_real_eip !95
  %126 = and i32 %125, 16, !mcsema_real_eip !95
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !95
  store i1 %127, i1* %AF, !mcsema_real_eip !95
  %128 = lshr i32 %123, 31, !mcsema_real_eip !95
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !95
  store i1 %129, i1* %SF, !mcsema_real_eip !95
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !95
  store i1 %130, i1* %ZF, !mcsema_real_eip !95
  %131 = xor i32 %R8D_val.151, %R9D_val.153, !mcsema_real_eip !95
  %132 = xor i32 %131, -1, !mcsema_real_eip !95
  %133 = and i32 %132, %124, !mcsema_real_eip !95
  %134 = lshr i32 %133, 31, !mcsema_real_eip !95
  %135 = and i32 %134, 1, !mcsema_real_eip !95
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !95
  store i1 %136, i1* %OF, !mcsema_real_eip !95
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !95
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !95
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !95
  %140 = xor i1 %139, true, !mcsema_real_eip !95
  store i1 %140, i1* %PF, !mcsema_real_eip !95
  %141 = icmp ult i32 %123, %R8D_val.151, !mcsema_real_eip !95
  store i1 %141, i1* %CF, !mcsema_real_eip !95
  %142 = zext i32 %123 to i64, !mcsema_real_eip !95
  store i64 %142, i64* %R8, !mcsema_real_eip !95
  %143 = add i64 %RBP_val.134, -104, !mcsema_real_eip !96
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !96
  %145 = load i64, i64* %144, !mcsema_real_eip !96
  store i64 %145, i64* %XAX, !mcsema_real_eip !96
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !97
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !97
  %148 = load i32, i32* %147, !mcsema_real_eip !97
  %149 = zext i32 %148 to i64, !mcsema_real_eip !97
  store i64 %149, i64* %R9, !mcsema_real_eip !97
  %R8D_val.157 = load i32, i32* %R8D.122, !mcsema_real_eip !98
  %R9D_val.159 = load i32, i32* %R9D.125, !mcsema_real_eip !98
  %150 = add i32 %R9D_val.159, %R8D_val.157, !mcsema_real_eip !98
  %151 = xor i32 %150, %R8D_val.157, !mcsema_real_eip !98
  %152 = xor i32 %151, %R9D_val.159, !mcsema_real_eip !98
  %153 = and i32 %152, 16, !mcsema_real_eip !98
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !98
  store i1 %154, i1* %AF, !mcsema_real_eip !98
  %155 = lshr i32 %150, 31, !mcsema_real_eip !98
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !98
  store i1 %156, i1* %SF, !mcsema_real_eip !98
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !98
  store i1 %157, i1* %ZF, !mcsema_real_eip !98
  %158 = xor i32 %R8D_val.157, %R9D_val.159, !mcsema_real_eip !98
  %159 = xor i32 %158, -1, !mcsema_real_eip !98
  %160 = and i32 %159, %151, !mcsema_real_eip !98
  %161 = lshr i32 %160, 31, !mcsema_real_eip !98
  %162 = and i32 %161, 1, !mcsema_real_eip !98
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !98
  store i1 %163, i1* %OF, !mcsema_real_eip !98
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !98
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !98
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !98
  %167 = xor i1 %166, true, !mcsema_real_eip !98
  store i1 %167, i1* %PF, !mcsema_real_eip !98
  %168 = icmp ult i32 %150, %R8D_val.157, !mcsema_real_eip !98
  store i1 %168, i1* %CF, !mcsema_real_eip !98
  %169 = zext i32 %150 to i64, !mcsema_real_eip !98
  store i64 %169, i64* %R8, !mcsema_real_eip !98
  %ESI_val.161 = load i32, i32* %ESI.108, !mcsema_real_eip !99
  %R8D_val.163 = load i32, i32* %R8D.122, !mcsema_real_eip !99
  %170 = add i32 %R8D_val.163, %ESI_val.161, !mcsema_real_eip !99
  %171 = xor i32 %170, %ESI_val.161, !mcsema_real_eip !99
  %172 = xor i32 %171, %R8D_val.163, !mcsema_real_eip !99
  %173 = and i32 %172, 16, !mcsema_real_eip !99
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !99
  store i1 %174, i1* %AF, !mcsema_real_eip !99
  %175 = lshr i32 %170, 31, !mcsema_real_eip !99
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !99
  store i1 %176, i1* %SF, !mcsema_real_eip !99
  %177 = icmp eq i32 %170, 0, !mcsema_real_eip !99
  store i1 %177, i1* %ZF, !mcsema_real_eip !99
  %178 = xor i32 %ESI_val.161, %R8D_val.163, !mcsema_real_eip !99
  %179 = xor i32 %178, -1, !mcsema_real_eip !99
  %180 = and i32 %179, %171, !mcsema_real_eip !99
  %181 = lshr i32 %180, 31, !mcsema_real_eip !99
  %182 = and i32 %181, 1, !mcsema_real_eip !99
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !99
  store i1 %183, i1* %OF, !mcsema_real_eip !99
  %184 = trunc i32 %170 to i8, !mcsema_real_eip !99
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !99
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !99
  %187 = xor i1 %186, true, !mcsema_real_eip !99
  store i1 %187, i1* %PF, !mcsema_real_eip !99
  %188 = icmp ult i32 %170, %ESI_val.161, !mcsema_real_eip !99
  store i1 %188, i1* %CF, !mcsema_real_eip !99
  %189 = zext i32 %170 to i64, !mcsema_real_eip !99
  store i64 %189, i64* %XSI, !mcsema_real_eip !99
  %190 = add i64 %RBP_val.134, -120, !mcsema_real_eip !100
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !100
  %ESI_val.166 = load i32, i32* %ESI.108, !mcsema_real_eip !100
  %192 = inttoptr i64 %190 to i32*, !mcsema_real_eip !100
  store i32 %ESI_val.166, i32* %192, !mcsema_real_eip !100
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !101
  %193 = add i64 %RBP_val.167, -36, !mcsema_real_eip !101
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !101
  %195 = inttoptr i64 %193 to i32*, !mcsema_real_eip !101
  %196 = load i32, i32* %195, !mcsema_real_eip !101
  %197 = zext i32 %196 to i64, !mcsema_real_eip !101
  store i64 %197, i64* %XSI, !mcsema_real_eip !101
  %198 = add i64 %RBP_val.167, -64, !mcsema_real_eip !102
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !102
  %200 = load i64, i64* %199, !mcsema_real_eip !102
  store i64 %200, i64* %XAX, !mcsema_real_eip !102
  %201 = add i64 %200, 4, !mcsema_real_eip !103
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !103
  %203 = inttoptr i64 %201 to i32*, !mcsema_real_eip !103
  %204 = load i32, i32* %203, !mcsema_real_eip !103
  %205 = zext i32 %204 to i64, !mcsema_real_eip !103
  store i64 %205, i64* %R8, !mcsema_real_eip !103
  %ESI_val.171 = load i32, i32* %ESI.108, !mcsema_real_eip !104
  %R8D_val.173 = load i32, i32* %R8D.122, !mcsema_real_eip !104
  %206 = add i32 %R8D_val.173, %ESI_val.171, !mcsema_real_eip !104
  %207 = xor i32 %206, %ESI_val.171, !mcsema_real_eip !104
  %208 = xor i32 %207, %R8D_val.173, !mcsema_real_eip !104
  %209 = and i32 %208, 16, !mcsema_real_eip !104
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !104
  store i1 %210, i1* %AF, !mcsema_real_eip !104
  %211 = lshr i32 %206, 31, !mcsema_real_eip !104
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !104
  store i1 %212, i1* %SF, !mcsema_real_eip !104
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !104
  store i1 %213, i1* %ZF, !mcsema_real_eip !104
  %214 = xor i32 %ESI_val.171, %R8D_val.173, !mcsema_real_eip !104
  %215 = xor i32 %214, -1, !mcsema_real_eip !104
  %216 = and i32 %215, %207, !mcsema_real_eip !104
  %217 = lshr i32 %216, 31, !mcsema_real_eip !104
  %218 = and i32 %217, 1, !mcsema_real_eip !104
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !104
  store i1 %219, i1* %OF, !mcsema_real_eip !104
  %220 = trunc i32 %206 to i8, !mcsema_real_eip !104
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !104
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !104
  %223 = xor i1 %222, true, !mcsema_real_eip !104
  store i1 %223, i1* %PF, !mcsema_real_eip !104
  %224 = icmp ult i32 %206, %ESI_val.171, !mcsema_real_eip !104
  store i1 %224, i1* %CF, !mcsema_real_eip !104
  %225 = zext i32 %206 to i64, !mcsema_real_eip !104
  store i64 %225, i64* %XSI, !mcsema_real_eip !104
  %226 = add i64 %RBP_val.167, -72, !mcsema_real_eip !105
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !105
  %228 = load i64, i64* %227, !mcsema_real_eip !105
  store i64 %228, i64* %XAX, !mcsema_real_eip !105
  %229 = add i64 %228, 4, !mcsema_real_eip !106
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !106
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !106
  %232 = load i32, i32* %231, !mcsema_real_eip !106
  %233 = zext i32 %232 to i64, !mcsema_real_eip !106
  store i64 %233, i64* %R8, !mcsema_real_eip !106
  %ESI_val.177 = load i32, i32* %ESI.108, !mcsema_real_eip !107
  %R8D_val.179 = load i32, i32* %R8D.122, !mcsema_real_eip !107
  %234 = add i32 %R8D_val.179, %ESI_val.177, !mcsema_real_eip !107
  %235 = xor i32 %234, %ESI_val.177, !mcsema_real_eip !107
  %236 = xor i32 %235, %R8D_val.179, !mcsema_real_eip !107
  %237 = and i32 %236, 16, !mcsema_real_eip !107
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !107
  store i1 %238, i1* %AF, !mcsema_real_eip !107
  %239 = lshr i32 %234, 31, !mcsema_real_eip !107
  %240 = trunc i32 %239 to i1, !mcsema_real_eip !107
  store i1 %240, i1* %SF, !mcsema_real_eip !107
  %241 = icmp eq i32 %234, 0, !mcsema_real_eip !107
  store i1 %241, i1* %ZF, !mcsema_real_eip !107
  %242 = xor i32 %ESI_val.177, %R8D_val.179, !mcsema_real_eip !107
  %243 = xor i32 %242, -1, !mcsema_real_eip !107
  %244 = and i32 %243, %235, !mcsema_real_eip !107
  %245 = lshr i32 %244, 31, !mcsema_real_eip !107
  %246 = and i32 %245, 1, !mcsema_real_eip !107
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !107
  store i1 %247, i1* %OF, !mcsema_real_eip !107
  %248 = trunc i32 %234 to i8, !mcsema_real_eip !107
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !107
  %250 = trunc i8 %249 to i1, !mcsema_real_eip !107
  %251 = xor i1 %250, true, !mcsema_real_eip !107
  store i1 %251, i1* %PF, !mcsema_real_eip !107
  %252 = icmp ult i32 %234, %ESI_val.177, !mcsema_real_eip !107
  store i1 %252, i1* %CF, !mcsema_real_eip !107
  %253 = zext i32 %234 to i64, !mcsema_real_eip !107
  store i64 %253, i64* %XSI, !mcsema_real_eip !107
  %R11_val.180 = load i64, i64* %R11, !mcsema_real_eip !108
  %254 = add i64 %R11_val.180, 4, !mcsema_real_eip !108
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !108
  %256 = inttoptr i64 %254 to i32*, !mcsema_real_eip !108
  %257 = load i32, i32* %256, !mcsema_real_eip !108
  %258 = zext i32 %257 to i64, !mcsema_real_eip !108
  store i64 %258, i64* %R8, !mcsema_real_eip !108
  %259 = add i64 %RBP_val.167, -96, !mcsema_real_eip !109
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !109
  %261 = load i64, i64* %260, !mcsema_real_eip !109
  store i64 %261, i64* %XAX, !mcsema_real_eip !109
  %262 = add i64 %261, 4, !mcsema_real_eip !110
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !110
  %264 = inttoptr i64 %262 to i32*, !mcsema_real_eip !110
  %265 = load i32, i32* %264, !mcsema_real_eip !110
  %266 = zext i32 %265 to i64, !mcsema_real_eip !110
  store i64 %266, i64* %R9, !mcsema_real_eip !110
  %R8D_val.184 = load i32, i32* %R8D.122, !mcsema_real_eip !111
  %R9D_val.186 = load i32, i32* %R9D.125, !mcsema_real_eip !111
  %267 = add i32 %R9D_val.186, %R8D_val.184, !mcsema_real_eip !111
  %268 = xor i32 %267, %R8D_val.184, !mcsema_real_eip !111
  %269 = xor i32 %268, %R9D_val.186, !mcsema_real_eip !111
  %270 = and i32 %269, 16, !mcsema_real_eip !111
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !111
  store i1 %271, i1* %AF, !mcsema_real_eip !111
  %272 = lshr i32 %267, 31, !mcsema_real_eip !111
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !111
  store i1 %273, i1* %SF, !mcsema_real_eip !111
  %274 = icmp eq i32 %267, 0, !mcsema_real_eip !111
  store i1 %274, i1* %ZF, !mcsema_real_eip !111
  %275 = xor i32 %R8D_val.184, %R9D_val.186, !mcsema_real_eip !111
  %276 = xor i32 %275, -1, !mcsema_real_eip !111
  %277 = and i32 %276, %268, !mcsema_real_eip !111
  %278 = lshr i32 %277, 31, !mcsema_real_eip !111
  %279 = and i32 %278, 1, !mcsema_real_eip !111
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !111
  store i1 %280, i1* %OF, !mcsema_real_eip !111
  %281 = trunc i32 %267 to i8, !mcsema_real_eip !111
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !111
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !111
  %284 = xor i1 %283, true, !mcsema_real_eip !111
  store i1 %284, i1* %PF, !mcsema_real_eip !111
  %285 = icmp ult i32 %267, %R8D_val.184, !mcsema_real_eip !111
  store i1 %285, i1* %CF, !mcsema_real_eip !111
  %286 = zext i32 %267 to i64, !mcsema_real_eip !111
  store i64 %286, i64* %R8, !mcsema_real_eip !111
  %287 = add i64 %RBP_val.167, -104, !mcsema_real_eip !112
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !112
  %289 = load i64, i64* %288, !mcsema_real_eip !112
  store i64 %289, i64* %XAX, !mcsema_real_eip !112
  %290 = add i64 %289, 4, !mcsema_real_eip !113
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !113
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !113
  %293 = load i32, i32* %292, !mcsema_real_eip !113
  %294 = zext i32 %293 to i64, !mcsema_real_eip !113
  store i64 %294, i64* %R9, !mcsema_real_eip !113
  %R8D_val.190 = load i32, i32* %R8D.122, !mcsema_real_eip !114
  %R9D_val.192 = load i32, i32* %R9D.125, !mcsema_real_eip !114
  %295 = add i32 %R9D_val.192, %R8D_val.190, !mcsema_real_eip !114
  %296 = xor i32 %295, %R8D_val.190, !mcsema_real_eip !114
  %297 = xor i32 %296, %R9D_val.192, !mcsema_real_eip !114
  %298 = and i32 %297, 16, !mcsema_real_eip !114
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !114
  store i1 %299, i1* %AF, !mcsema_real_eip !114
  %300 = lshr i32 %295, 31, !mcsema_real_eip !114
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !114
  store i1 %301, i1* %SF, !mcsema_real_eip !114
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !114
  store i1 %302, i1* %ZF, !mcsema_real_eip !114
  %303 = xor i32 %R8D_val.190, %R9D_val.192, !mcsema_real_eip !114
  %304 = xor i32 %303, -1, !mcsema_real_eip !114
  %305 = and i32 %304, %296, !mcsema_real_eip !114
  %306 = lshr i32 %305, 31, !mcsema_real_eip !114
  %307 = and i32 %306, 1, !mcsema_real_eip !114
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !114
  store i1 %308, i1* %OF, !mcsema_real_eip !114
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !114
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !114
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !114
  %312 = xor i1 %311, true, !mcsema_real_eip !114
  store i1 %312, i1* %PF, !mcsema_real_eip !114
  %313 = icmp ult i32 %295, %R8D_val.190, !mcsema_real_eip !114
  store i1 %313, i1* %CF, !mcsema_real_eip !114
  %314 = zext i32 %295 to i64, !mcsema_real_eip !114
  store i64 %314, i64* %R8, !mcsema_real_eip !114
  %ESI_val.194 = load i32, i32* %ESI.108, !mcsema_real_eip !115
  %R8D_val.196 = load i32, i32* %R8D.122, !mcsema_real_eip !115
  %315 = add i32 %R8D_val.196, %ESI_val.194, !mcsema_real_eip !115
  %316 = xor i32 %315, %ESI_val.194, !mcsema_real_eip !115
  %317 = xor i32 %316, %R8D_val.196, !mcsema_real_eip !115
  %318 = and i32 %317, 16, !mcsema_real_eip !115
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !115
  store i1 %319, i1* %AF, !mcsema_real_eip !115
  %320 = lshr i32 %315, 31, !mcsema_real_eip !115
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !115
  store i1 %321, i1* %SF, !mcsema_real_eip !115
  %322 = icmp eq i32 %315, 0, !mcsema_real_eip !115
  store i1 %322, i1* %ZF, !mcsema_real_eip !115
  %323 = xor i32 %ESI_val.194, %R8D_val.196, !mcsema_real_eip !115
  %324 = xor i32 %323, -1, !mcsema_real_eip !115
  %325 = and i32 %324, %316, !mcsema_real_eip !115
  %326 = lshr i32 %325, 31, !mcsema_real_eip !115
  %327 = and i32 %326, 1, !mcsema_real_eip !115
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !115
  store i1 %328, i1* %OF, !mcsema_real_eip !115
  %329 = trunc i32 %315 to i8, !mcsema_real_eip !115
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !115
  %331 = trunc i8 %330 to i1, !mcsema_real_eip !115
  %332 = xor i1 %331, true, !mcsema_real_eip !115
  store i1 %332, i1* %PF, !mcsema_real_eip !115
  %333 = icmp ult i32 %315, %ESI_val.194, !mcsema_real_eip !115
  store i1 %333, i1* %CF, !mcsema_real_eip !115
  %334 = zext i32 %315 to i64, !mcsema_real_eip !115
  store i64 %334, i64* %XSI, !mcsema_real_eip !115
  %335 = add i64 %RBP_val.167, -116, !mcsema_real_eip !116
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !116
  %ESI_val.199 = load i32, i32* %ESI.108, !mcsema_real_eip !116
  %337 = inttoptr i64 %335 to i32*, !mcsema_real_eip !116
  store i32 %ESI_val.199, i32* %337, !mcsema_real_eip !116
  %RBP_val.200 = load i64, i64* %XBP, !mcsema_real_eip !117
  %338 = add i64 %RBP_val.200, -32, !mcsema_real_eip !117
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !117
  %340 = inttoptr i64 %338 to i32*, !mcsema_real_eip !117
  %341 = load i32, i32* %340, !mcsema_real_eip !117
  %342 = zext i32 %341 to i64, !mcsema_real_eip !117
  store i64 %342, i64* %XSI, !mcsema_real_eip !117
  %343 = add i64 %RBP_val.200, -64, !mcsema_real_eip !118
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !118
  %345 = load i64, i64* %344, !mcsema_real_eip !118
  store i64 %345, i64* %XAX, !mcsema_real_eip !118
  %346 = add i64 %345, 8, !mcsema_real_eip !119
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !119
  %348 = inttoptr i64 %346 to i32*, !mcsema_real_eip !119
  %349 = load i32, i32* %348, !mcsema_real_eip !119
  %350 = zext i32 %349 to i64, !mcsema_real_eip !119
  store i64 %350, i64* %R8, !mcsema_real_eip !119
  %ESI_val.204 = load i32, i32* %ESI.108, !mcsema_real_eip !120
  %R8D_val.206 = load i32, i32* %R8D.122, !mcsema_real_eip !120
  %351 = add i32 %R8D_val.206, %ESI_val.204, !mcsema_real_eip !120
  %352 = xor i32 %351, %ESI_val.204, !mcsema_real_eip !120
  %353 = xor i32 %352, %R8D_val.206, !mcsema_real_eip !120
  %354 = and i32 %353, 16, !mcsema_real_eip !120
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !120
  store i1 %355, i1* %AF, !mcsema_real_eip !120
  %356 = lshr i32 %351, 31, !mcsema_real_eip !120
  %357 = trunc i32 %356 to i1, !mcsema_real_eip !120
  store i1 %357, i1* %SF, !mcsema_real_eip !120
  %358 = icmp eq i32 %351, 0, !mcsema_real_eip !120
  store i1 %358, i1* %ZF, !mcsema_real_eip !120
  %359 = xor i32 %ESI_val.204, %R8D_val.206, !mcsema_real_eip !120
  %360 = xor i32 %359, -1, !mcsema_real_eip !120
  %361 = and i32 %360, %352, !mcsema_real_eip !120
  %362 = lshr i32 %361, 31, !mcsema_real_eip !120
  %363 = and i32 %362, 1, !mcsema_real_eip !120
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !120
  store i1 %364, i1* %OF, !mcsema_real_eip !120
  %365 = trunc i32 %351 to i8, !mcsema_real_eip !120
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !120
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !120
  %368 = xor i1 %367, true, !mcsema_real_eip !120
  store i1 %368, i1* %PF, !mcsema_real_eip !120
  %369 = icmp ult i32 %351, %ESI_val.204, !mcsema_real_eip !120
  store i1 %369, i1* %CF, !mcsema_real_eip !120
  %370 = zext i32 %351 to i64, !mcsema_real_eip !120
  store i64 %370, i64* %XSI, !mcsema_real_eip !120
  %371 = add i64 %RBP_val.200, -72, !mcsema_real_eip !121
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !121
  %373 = load i64, i64* %372, !mcsema_real_eip !121
  store i64 %373, i64* %XAX, !mcsema_real_eip !121
  %374 = add i64 %373, 8, !mcsema_real_eip !122
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !122
  %376 = inttoptr i64 %374 to i32*, !mcsema_real_eip !122
  %377 = load i32, i32* %376, !mcsema_real_eip !122
  %378 = zext i32 %377 to i64, !mcsema_real_eip !122
  store i64 %378, i64* %R8, !mcsema_real_eip !122
  %ESI_val.210 = load i32, i32* %ESI.108, !mcsema_real_eip !123
  %R8D_val.212 = load i32, i32* %R8D.122, !mcsema_real_eip !123
  %379 = add i32 %R8D_val.212, %ESI_val.210, !mcsema_real_eip !123
  %380 = xor i32 %379, %ESI_val.210, !mcsema_real_eip !123
  %381 = xor i32 %380, %R8D_val.212, !mcsema_real_eip !123
  %382 = and i32 %381, 16, !mcsema_real_eip !123
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !123
  store i1 %383, i1* %AF, !mcsema_real_eip !123
  %384 = lshr i32 %379, 31, !mcsema_real_eip !123
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !123
  store i1 %385, i1* %SF, !mcsema_real_eip !123
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !123
  store i1 %386, i1* %ZF, !mcsema_real_eip !123
  %387 = xor i32 %ESI_val.210, %R8D_val.212, !mcsema_real_eip !123
  %388 = xor i32 %387, -1, !mcsema_real_eip !123
  %389 = and i32 %388, %380, !mcsema_real_eip !123
  %390 = lshr i32 %389, 31, !mcsema_real_eip !123
  %391 = and i32 %390, 1, !mcsema_real_eip !123
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !123
  store i1 %392, i1* %OF, !mcsema_real_eip !123
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !123
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !123
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !123
  %396 = xor i1 %395, true, !mcsema_real_eip !123
  store i1 %396, i1* %PF, !mcsema_real_eip !123
  %397 = icmp ult i32 %379, %ESI_val.210, !mcsema_real_eip !123
  store i1 %397, i1* %CF, !mcsema_real_eip !123
  %398 = zext i32 %379 to i64, !mcsema_real_eip !123
  store i64 %398, i64* %XSI, !mcsema_real_eip !123
  %R11_val.213 = load i64, i64* %R11, !mcsema_real_eip !124
  %399 = add i64 %R11_val.213, 8, !mcsema_real_eip !124
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !124
  %401 = inttoptr i64 %399 to i32*, !mcsema_real_eip !124
  %402 = load i32, i32* %401, !mcsema_real_eip !124
  %403 = zext i32 %402 to i64, !mcsema_real_eip !124
  store i64 %403, i64* %R8, !mcsema_real_eip !124
  %404 = add i64 %RBP_val.200, -96, !mcsema_real_eip !125
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !125
  %406 = load i64, i64* %405, !mcsema_real_eip !125
  store i64 %406, i64* %XAX, !mcsema_real_eip !125
  %407 = add i64 %406, 8, !mcsema_real_eip !126
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !126
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !126
  %410 = load i32, i32* %409, !mcsema_real_eip !126
  %411 = zext i32 %410 to i64, !mcsema_real_eip !126
  store i64 %411, i64* %R9, !mcsema_real_eip !126
  %R8D_val.217 = load i32, i32* %R8D.122, !mcsema_real_eip !127
  %R9D_val.219 = load i32, i32* %R9D.125, !mcsema_real_eip !127
  %412 = add i32 %R9D_val.219, %R8D_val.217, !mcsema_real_eip !127
  %413 = xor i32 %412, %R8D_val.217, !mcsema_real_eip !127
  %414 = xor i32 %413, %R9D_val.219, !mcsema_real_eip !127
  %415 = and i32 %414, 16, !mcsema_real_eip !127
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !127
  store i1 %416, i1* %AF, !mcsema_real_eip !127
  %417 = lshr i32 %412, 31, !mcsema_real_eip !127
  %418 = trunc i32 %417 to i1, !mcsema_real_eip !127
  store i1 %418, i1* %SF, !mcsema_real_eip !127
  %419 = icmp eq i32 %412, 0, !mcsema_real_eip !127
  store i1 %419, i1* %ZF, !mcsema_real_eip !127
  %420 = xor i32 %R8D_val.217, %R9D_val.219, !mcsema_real_eip !127
  %421 = xor i32 %420, -1, !mcsema_real_eip !127
  %422 = and i32 %421, %413, !mcsema_real_eip !127
  %423 = lshr i32 %422, 31, !mcsema_real_eip !127
  %424 = and i32 %423, 1, !mcsema_real_eip !127
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !127
  store i1 %425, i1* %OF, !mcsema_real_eip !127
  %426 = trunc i32 %412 to i8, !mcsema_real_eip !127
  %427 = call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !127
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !127
  %429 = xor i1 %428, true, !mcsema_real_eip !127
  store i1 %429, i1* %PF, !mcsema_real_eip !127
  %430 = icmp ult i32 %412, %R8D_val.217, !mcsema_real_eip !127
  store i1 %430, i1* %CF, !mcsema_real_eip !127
  %431 = zext i32 %412 to i64, !mcsema_real_eip !127
  store i64 %431, i64* %R8, !mcsema_real_eip !127
  %432 = add i64 %RBP_val.200, -104, !mcsema_real_eip !128
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !128
  %434 = load i64, i64* %433, !mcsema_real_eip !128
  store i64 %434, i64* %XAX, !mcsema_real_eip !128
  %435 = add i64 %434, 8, !mcsema_real_eip !129
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !129
  %437 = inttoptr i64 %435 to i32*, !mcsema_real_eip !129
  %438 = load i32, i32* %437, !mcsema_real_eip !129
  %439 = zext i32 %438 to i64, !mcsema_real_eip !129
  store i64 %439, i64* %R9, !mcsema_real_eip !129
  %R8D_val.223 = load i32, i32* %R8D.122, !mcsema_real_eip !130
  %R9D_val.225 = load i32, i32* %R9D.125, !mcsema_real_eip !130
  %440 = add i32 %R9D_val.225, %R8D_val.223, !mcsema_real_eip !130
  %441 = xor i32 %440, %R8D_val.223, !mcsema_real_eip !130
  %442 = xor i32 %441, %R9D_val.225, !mcsema_real_eip !130
  %443 = and i32 %442, 16, !mcsema_real_eip !130
  %444 = icmp ne i32 %443, 0, !mcsema_real_eip !130
  store i1 %444, i1* %AF, !mcsema_real_eip !130
  %445 = lshr i32 %440, 31, !mcsema_real_eip !130
  %446 = trunc i32 %445 to i1, !mcsema_real_eip !130
  store i1 %446, i1* %SF, !mcsema_real_eip !130
  %447 = icmp eq i32 %440, 0, !mcsema_real_eip !130
  store i1 %447, i1* %ZF, !mcsema_real_eip !130
  %448 = xor i32 %R8D_val.223, %R9D_val.225, !mcsema_real_eip !130
  %449 = xor i32 %448, -1, !mcsema_real_eip !130
  %450 = and i32 %449, %441, !mcsema_real_eip !130
  %451 = lshr i32 %450, 31, !mcsema_real_eip !130
  %452 = and i32 %451, 1, !mcsema_real_eip !130
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !130
  store i1 %453, i1* %OF, !mcsema_real_eip !130
  %454 = trunc i32 %440 to i8, !mcsema_real_eip !130
  %455 = call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !130
  %456 = trunc i8 %455 to i1, !mcsema_real_eip !130
  %457 = xor i1 %456, true, !mcsema_real_eip !130
  store i1 %457, i1* %PF, !mcsema_real_eip !130
  %458 = icmp ult i32 %440, %R8D_val.223, !mcsema_real_eip !130
  store i1 %458, i1* %CF, !mcsema_real_eip !130
  %459 = zext i32 %440 to i64, !mcsema_real_eip !130
  store i64 %459, i64* %R8, !mcsema_real_eip !130
  %ESI_val.227 = load i32, i32* %ESI.108, !mcsema_real_eip !131
  %R8D_val.229 = load i32, i32* %R8D.122, !mcsema_real_eip !131
  %460 = add i32 %R8D_val.229, %ESI_val.227, !mcsema_real_eip !131
  %461 = xor i32 %460, %ESI_val.227, !mcsema_real_eip !131
  %462 = xor i32 %461, %R8D_val.229, !mcsema_real_eip !131
  %463 = and i32 %462, 16, !mcsema_real_eip !131
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !131
  store i1 %464, i1* %AF, !mcsema_real_eip !131
  %465 = lshr i32 %460, 31, !mcsema_real_eip !131
  %466 = trunc i32 %465 to i1, !mcsema_real_eip !131
  store i1 %466, i1* %SF, !mcsema_real_eip !131
  %467 = icmp eq i32 %460, 0, !mcsema_real_eip !131
  store i1 %467, i1* %ZF, !mcsema_real_eip !131
  %468 = xor i32 %ESI_val.227, %R8D_val.229, !mcsema_real_eip !131
  %469 = xor i32 %468, -1, !mcsema_real_eip !131
  %470 = and i32 %469, %461, !mcsema_real_eip !131
  %471 = lshr i32 %470, 31, !mcsema_real_eip !131
  %472 = and i32 %471, 1, !mcsema_real_eip !131
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !131
  store i1 %473, i1* %OF, !mcsema_real_eip !131
  %474 = trunc i32 %460 to i8, !mcsema_real_eip !131
  %475 = call i8 @llvm.ctpop.i8(i8 %474), !mcsema_real_eip !131
  %476 = trunc i8 %475 to i1, !mcsema_real_eip !131
  %477 = xor i1 %476, true, !mcsema_real_eip !131
  store i1 %477, i1* %PF, !mcsema_real_eip !131
  %478 = icmp ult i32 %460, %ESI_val.227, !mcsema_real_eip !131
  store i1 %478, i1* %CF, !mcsema_real_eip !131
  %479 = zext i32 %460 to i64, !mcsema_real_eip !131
  store i64 %479, i64* %XSI, !mcsema_real_eip !131
  %480 = add i64 %RBP_val.200, -112, !mcsema_real_eip !132
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !132
  %ESI_val.232 = load i32, i32* %ESI.108, !mcsema_real_eip !132
  %482 = inttoptr i64 %480 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.232, i32* %482, !mcsema_real_eip !132
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !133
  %483 = add i64 %RBP_val.233, -112, !mcsema_real_eip !133
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !133
  %485 = inttoptr i64 %483 to i32*, !mcsema_real_eip !133
  %486 = load i32, i32* %485, !mcsema_real_eip !133
  %487 = zext i32 %486 to i64, !mcsema_real_eip !133
  store i64 %487, i64* %XSI, !mcsema_real_eip !133
  %488 = add i64 %RBP_val.233, -16, !mcsema_real_eip !134
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !134
  %ESI_val.236 = load i32, i32* %ESI.108, !mcsema_real_eip !134
  %490 = inttoptr i64 %488 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.236, i32* %490, !mcsema_real_eip !134
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !135
  %491 = add i64 %RBP_val.237, -120, !mcsema_real_eip !135
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !135
  %493 = load i64, i64* %492, !mcsema_real_eip !135
  store i64 %493, i64* %XAX, !mcsema_real_eip !135
  %494 = add i64 %RBP_val.237, -24, !mcsema_real_eip !136
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !136
  store i64 %493, i64* %495, !mcsema_real_eip !136
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !137
  %496 = add i64 %RBP_val.240, -16, !mcsema_real_eip !137
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !137
  %498 = inttoptr i64 %496 to i32*, !mcsema_real_eip !137
  %499 = load i32, i32* %498, !mcsema_real_eip !137
  %500 = zext i32 %499 to i64, !mcsema_real_eip !137
  store i64 %500, i64* %XSI, !mcsema_real_eip !137
  %501 = add i64 %RBP_val.240, -128, !mcsema_real_eip !138
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !138
  %ESI_val.243 = load i32, i32* %ESI.108, !mcsema_real_eip !138
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !138
  store i32 %ESI_val.243, i32* %503, !mcsema_real_eip !138
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !139
  %504 = add i64 %RBP_val.244, -24, !mcsema_real_eip !139
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !139
  %506 = load i64, i64* %505, !mcsema_real_eip !139
  store i64 %506, i64* %XAX, !mcsema_real_eip !139
  %507 = add i64 %RBP_val.244, -136, !mcsema_real_eip !140
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !140
  store i64 %506, i64* %508, !mcsema_real_eip !140
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !141
  %509 = add i64 %RBP_val.247, -136, !mcsema_real_eip !141
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !141
  %511 = load i64, i64* %510, !mcsema_real_eip !141
  store i64 %511, i64* %XAX, !mcsema_real_eip !141
  %512 = add i64 %RBP_val.247, -128, !mcsema_real_eip !142
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !142
  %514 = inttoptr i64 %512 to i32*, !mcsema_real_eip !142
  %515 = load i32, i32* %514, !mcsema_real_eip !142
  %516 = zext i32 %515 to i64, !mcsema_real_eip !142
  store i64 %516, i64* %XDX, !mcsema_real_eip !142
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !143
  %517 = inttoptr i64 %RSP_val.249 to i64*, !mcsema_real_eip !143
  %518 = load i64, i64* %517, !mcsema_real_eip !143
  store i64 %518, i64* %XBX, !mcsema_real_eip !143
  %519 = add i64 %RSP_val.249, 8, !mcsema_real_eip !143
  store i64 %519, i64* %XSP, !mcsema_real_eip !143
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !144
  %521 = load i64, i64* %520, !mcsema_real_eip !144
  store i64 %521, i64* %XBP, !mcsema_real_eip !144
  %522 = add i64 %519, 8, !mcsema_real_eip !144
  store i64 %522, i64* %XSP, !mcsema_real_eip !144
  %523 = add i64 %522, 8, !mcsema_real_eip !145
  %524 = inttoptr i64 %522 to i64*, !mcsema_real_eip !145
  %525 = load i64, i64* %524, !mcsema_real_eip !145
  store i64 %525, i64* %XIP, !mcsema_real_eip !145
  store i64 %523, i64* %XSP, !mcsema_real_eip !145
  ret void, !mcsema_real_eip !145
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

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
!2 = !{i64 288}
!3 = !{i64 289}
!4 = !{i64 292}
!5 = !{i64 299}
!6 = !{i64 309}
!7 = !{i64 316}
!8 = !{i64 323}
!9 = !{i64 330}
!10 = !{i64 337}
!11 = !{i64 342}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 351}
!15 = !{i64 356}
!16 = !{i64 360}
!17 = !{i64 364}
!18 = !{i64 370}
!19 = !{i64 374}
!20 = !{i64 381}
!21 = !{i64 385}
!22 = !{i64 392}
!23 = !{i64 396}
!24 = !{i64 399}
!25 = !{i64 402}
!26 = !{i64 406}
!27 = !{i64 410}
!28 = !{i64 414}
!29 = !{i64 417}
!30 = !{i64 420}
!31 = !{i64 423}
!32 = !{i64 426}
!33 = !{i64 430}
!34 = !{i64 434}
!35 = !{i64 438}
!36 = !{i64 442}
!37 = !{i64 446}
!38 = !{i64 452}
!39 = !{i64 457}
!40 = !{i64 463}
!41 = !{i64 466}
!42 = !{i64 469}
!43 = !{i64 472}
!44 = !{i64 476}
!45 = !{i64 481}
!46 = !{i64 484}
!47 = !{i64 488}
!48 = !{i64 492}
!49 = !{i64 496}
!50 = !{i64 499}
!51 = !{i64 502}
!52 = !{i64 505}
!53 = !{i64 508}
!54 = !{i64 511}
!55 = !{i64 514}
!56 = !{i64 517}
!57 = !{i64 521}
!58 = !{i64 523}
!59 = !{i64 528}
!60 = !{i64 531}
!61 = !{i64 534}
!62 = !{i64 536}
!63 = !{i64 543}
!64 = !{i64 544}
!65 = !{i64 0}
!66 = !{i64 1}
!67 = !{i64 4}
!68 = !{i64 5}
!69 = !{i64 9}
!70 = !{i64 13}
!71 = !{i64 17}
!72 = !{i64 20}
!73 = !{i64 24}
!74 = !{i64 27}
!75 = !{i64 30}
!76 = !{i64 33}
!77 = !{i64 37}
!78 = !{i64 41}
!79 = !{i64 45}
!80 = !{i64 49}
!81 = !{i64 53}
!82 = !{i64 57}
!83 = !{i64 60}
!84 = !{i64 64}
!85 = !{i64 68}
!86 = !{i64 71}
!87 = !{i64 75}
!88 = !{i64 78}
!89 = !{i64 81}
!90 = !{i64 85}
!91 = !{i64 88}
!92 = !{i64 91}
!93 = !{i64 94}
!94 = !{i64 98}
!95 = !{i64 101}
!96 = !{i64 104}
!97 = !{i64 108}
!98 = !{i64 111}
!99 = !{i64 114}
!100 = !{i64 117}
!101 = !{i64 120}
!102 = !{i64 123}
!103 = !{i64 127}
!104 = !{i64 131}
!105 = !{i64 134}
!106 = !{i64 138}
!107 = !{i64 142}
!108 = !{i64 145}
!109 = !{i64 149}
!110 = !{i64 153}
!111 = !{i64 157}
!112 = !{i64 160}
!113 = !{i64 164}
!114 = !{i64 168}
!115 = !{i64 171}
!116 = !{i64 174}
!117 = !{i64 177}
!118 = !{i64 180}
!119 = !{i64 184}
!120 = !{i64 188}
!121 = !{i64 191}
!122 = !{i64 195}
!123 = !{i64 199}
!124 = !{i64 202}
!125 = !{i64 206}
!126 = !{i64 210}
!127 = !{i64 214}
!128 = !{i64 217}
!129 = !{i64 221}
!130 = !{i64 225}
!131 = !{i64 228}
!132 = !{i64 231}
!133 = !{i64 234}
!134 = !{i64 237}
!135 = !{i64 240}
!136 = !{i64 244}
!137 = !{i64 248}
!138 = !{i64 251}
!139 = !{i64 254}
!140 = !{i64 258}
!141 = !{i64 265}
!142 = !{i64 272}
!143 = !{i64 275}
!144 = !{i64 276}
!145 = !{i64 277}
