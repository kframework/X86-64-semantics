; ModuleID = 'Output/test_25.clang.opt.bc'
source_filename = "Output/test_25.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [14 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\A4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 48, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 48, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 48, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -4, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %22, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %25, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %27, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %30, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %31 = add i64 %RBP_val.11, -16, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !9
  %33 = load i64, i64* %32, !mcsema_real_eip !9
  store i64 %33, i64* %XSI, !mcsema_real_eip !9
  %34 = add i64 %33, 8, !mcsema_real_eip !10
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !10
  %36 = load i64, i64* %35, !mcsema_real_eip !10
  store i64 %36, i64* %XDI, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %37 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %38, !mcsema_real_eip !11
  store i64 %37, i64* %XSP, !mcsema_real_eip !11
  %39 = call x86_64_sysvcc i64 @_strlen(i64 %36), !mcsema_real_eip !11
  store i64 %39, i64* %XAX, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !12
  %40 = zext i32 %EAX_val.16 to i64, !mcsema_real_eip !12
  store i64 %40, i64* %XCX, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %41 = add i64 %RBP_val.17, -24, !mcsema_real_eip !13
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !13
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !13
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !13
  store i32 %ECX_val.19, i32* %43, !mcsema_real_eip !13
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !14
  %44 = add i64 %RBP_val.20, -28, !mcsema_real_eip !14
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !14
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %46, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %47 = add i64 %RBP_val.21, -28, !mcsema_real_eip !15
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !15
  %49 = inttoptr i64 %47 to i32*, !mcsema_real_eip !15
  %50 = load i32, i32* %49, !mcsema_real_eip !15
  %51 = zext i32 %50 to i64, !mcsema_real_eip !15
  store i64 %51, i64* %XAX, !mcsema_real_eip !15
  %52 = add i64 %RBP_val.21, -24, !mcsema_real_eip !16
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !16
  %EAX_val.24 = load i32, i32* %EAX.15, !mcsema_real_eip !16
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !16
  %55 = load i32, i32* %54, !mcsema_real_eip !16
  %56 = sub i32 %EAX_val.24, %55, !mcsema_real_eip !16
  %57 = xor i32 %56, %EAX_val.24, !mcsema_real_eip !16
  %58 = xor i32 %57, %55, !mcsema_real_eip !16
  %59 = and i32 %58, 16, !mcsema_real_eip !16
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !16
  store i1 %60, i1* %AF, !mcsema_real_eip !16
  %61 = trunc i32 %56 to i8, !mcsema_real_eip !16
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !16
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !16
  %64 = xor i1 %63, true, !mcsema_real_eip !16
  store i1 %64, i1* %PF, !mcsema_real_eip !16
  %65 = icmp eq i32 %56, 0, !mcsema_real_eip !16
  store i1 %65, i1* %ZF, !mcsema_real_eip !16
  %66 = lshr i32 %56, 31, !mcsema_real_eip !16
  %67 = trunc i32 %66 to i1, !mcsema_real_eip !16
  store i1 %67, i1* %SF, !mcsema_real_eip !16
  %68 = icmp ult i32 %EAX_val.24, %55, !mcsema_real_eip !16
  store i1 %68, i1* %CF, !mcsema_real_eip !16
  %69 = xor i32 %EAX_val.24, %55, !mcsema_real_eip !16
  %70 = and i32 %69, %57, !mcsema_real_eip !16
  %71 = lshr i32 %70, 31, !mcsema_real_eip !16
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !16
  store i1 %72, i1* %OF, !mcsema_real_eip !16
  %73 = icmp eq i1 %67, %72, !mcsema_real_eip !17
  br i1 %73, label %block_0x82, label %block_0x42, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, !mcsema_real_eip !18
  %74 = add i64 %RBP_val.21, -16, !mcsema_real_eip !19
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !19
  %76 = load i64, i64* %75, !mcsema_real_eip !19
  store i64 %76, i64* %XAX, !mcsema_real_eip !19
  %77 = add i64 %76, 8, !mcsema_real_eip !20
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !20
  %79 = load i64, i64* %78, !mcsema_real_eip !20
  store i64 %79, i64* %XSI, !mcsema_real_eip !20
  %AL.27 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.27, !mcsema_real_eip !21
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !22
  %80 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !22
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %81, !mcsema_real_eip !22
  store i64 %80, i64* %XSP, !mcsema_real_eip !22
  %82 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %79), !mcsema_real_eip !22
  store i64 %82, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !23
  %83 = add i64 %RBP_val.31, -16, !mcsema_real_eip !23
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !23
  %85 = load i64, i64* %84, !mcsema_real_eip !23
  store i64 %85, i64* %XSI, !mcsema_real_eip !23
  %86 = add i64 %85, 8, !mcsema_real_eip !24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !24
  %88 = load i64, i64* %87, !mcsema_real_eip !24
  store i64 %88, i64* %XSI, !mcsema_real_eip !24
  %89 = add i64 %RBP_val.31, -28, !mcsema_real_eip !25
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !25
  %91 = inttoptr i64 %89 to i32*, !mcsema_real_eip !25
  %92 = load i32, i32* %91, !mcsema_real_eip !25
  %93 = sext i32 %92 to i64, !mcsema_real_eip !25
  store i64 %93, i64* %XDI, !mcsema_real_eip !25
  %94 = add i64 %88, %93, !mcsema_real_eip !26
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !26
  %96 = inttoptr i64 %94 to i8*, !mcsema_real_eip !26
  %97 = load i8, i8* %96, !mcsema_real_eip !26
  %98 = sext i8 %97 to i32, !mcsema_real_eip !26
  %99 = zext i32 %98 to i64, !mcsema_real_eip !26
  store i64 %99, i64* %XCX, !mcsema_real_eip !26
  %100 = add i64 %RBP_val.31, -20, !mcsema_real_eip !27
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !27
  %102 = inttoptr i64 %100 to i32*, !mcsema_real_eip !27
  %103 = load i32, i32* %102, !mcsema_real_eip !27
  %ECX_val.38 = load i32, i32* %ECX.18, !mcsema_real_eip !27
  %104 = add i32 %ECX_val.38, %103, !mcsema_real_eip !27
  %105 = xor i32 %104, %103, !mcsema_real_eip !27
  %106 = xor i32 %105, %ECX_val.38, !mcsema_real_eip !27
  %107 = and i32 %106, 16, !mcsema_real_eip !27
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !27
  store i1 %108, i1* %AF, !mcsema_real_eip !27
  %109 = lshr i32 %104, 31, !mcsema_real_eip !27
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !27
  store i1 %110, i1* %SF, !mcsema_real_eip !27
  %111 = icmp eq i32 %104, 0, !mcsema_real_eip !27
  store i1 %111, i1* %ZF, !mcsema_real_eip !27
  %112 = xor i32 %103, %ECX_val.38, !mcsema_real_eip !27
  %113 = xor i32 %112, -1, !mcsema_real_eip !27
  %114 = and i32 %113, %105, !mcsema_real_eip !27
  %115 = lshr i32 %114, 31, !mcsema_real_eip !27
  %116 = and i32 %115, 1, !mcsema_real_eip !27
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !27
  store i1 %117, i1* %OF, !mcsema_real_eip !27
  %118 = trunc i32 %104 to i8, !mcsema_real_eip !27
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !27
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !27
  %121 = xor i1 %120, true, !mcsema_real_eip !27
  store i1 %121, i1* %PF, !mcsema_real_eip !27
  %122 = icmp ult i32 %104, %103, !mcsema_real_eip !27
  store i1 %122, i1* %CF, !mcsema_real_eip !27
  %123 = zext i32 %104 to i64, !mcsema_real_eip !27
  store i64 %123, i64* %XCX, !mcsema_real_eip !27
  %ECX_val.41 = load i32, i32* %ECX.18, !mcsema_real_eip !28
  store i32 %ECX_val.41, i32* %102, !mcsema_real_eip !28
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !29
  %124 = add i64 %RBP_val.42, -32, !mcsema_real_eip !29
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !29
  %EAX_val.44 = load i32, i32* %EAX.15, !mcsema_real_eip !29
  %126 = inttoptr i64 %124 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.44, i32* %126, !mcsema_real_eip !29
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !30
  %127 = add i64 %RBP_val.45, -28, !mcsema_real_eip !30
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !30
  %129 = inttoptr i64 %127 to i32*, !mcsema_real_eip !30
  %130 = load i32, i32* %129, !mcsema_real_eip !30
  %131 = zext i32 %130 to i64, !mcsema_real_eip !30
  store i64 %131, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.47 = load i32, i32* %EAX.15, !mcsema_real_eip !31
  %132 = add i32 1, %EAX_val.47, !mcsema_real_eip !31
  %133 = xor i32 %132, %EAX_val.47, !mcsema_real_eip !31
  %134 = xor i32 %133, 1, !mcsema_real_eip !31
  %135 = and i32 %134, 16, !mcsema_real_eip !31
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !31
  store i1 %136, i1* %AF, !mcsema_real_eip !31
  %137 = lshr i32 %132, 31, !mcsema_real_eip !31
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !31
  store i1 %138, i1* %SF, !mcsema_real_eip !31
  %139 = icmp eq i32 %132, 0, !mcsema_real_eip !31
  store i1 %139, i1* %ZF, !mcsema_real_eip !31
  %140 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !31
  %141 = xor i32 %140, -1, !mcsema_real_eip !31
  %142 = and i32 %141, %133, !mcsema_real_eip !31
  %143 = lshr i32 %142, 31, !mcsema_real_eip !31
  %144 = and i32 %143, 1, !mcsema_real_eip !31
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !31
  store i1 %145, i1* %OF, !mcsema_real_eip !31
  %146 = trunc i32 %132 to i8, !mcsema_real_eip !31
  %147 = call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !31
  %148 = trunc i8 %147 to i1, !mcsema_real_eip !31
  %149 = xor i1 %148, true, !mcsema_real_eip !31
  store i1 %149, i1* %PF, !mcsema_real_eip !31
  %150 = icmp ult i32 %132, %EAX_val.47, !mcsema_real_eip !31
  store i1 %150, i1* %CF, !mcsema_real_eip !31
  %151 = zext i32 %132 to i64, !mcsema_real_eip !31
  store i64 %151, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.50 = load i32, i32* %EAX.15, !mcsema_real_eip !32
  store i32 %EAX_val.50, i32* %129, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %block_0x36
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, !mcsema_real_eip !34
  %152 = load i32, i32* %54, !mcsema_real_eip !35
  %153 = zext i32 %152 to i64, !mcsema_real_eip !35
  store i64 %153, i64* %XSI, !mcsema_real_eip !35
  %AL.52 = bitcast i64* %XAX to i8*, !mcsema_real_eip !36
  store i8 0, i8* %AL.52, !mcsema_real_eip !36
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !37
  %154 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !37
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %155, !mcsema_real_eip !37
  store i64 %154, i64* %XSP, !mcsema_real_eip !37
  %156 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %153), !mcsema_real_eip !37
  store i64 %156, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !38
  %157 = add i64 %RBP_val.56, -24, !mcsema_real_eip !38
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !38
  %159 = inttoptr i64 %157 to i32*, !mcsema_real_eip !38
  %160 = load i32, i32* %159, !mcsema_real_eip !38
  %161 = zext i32 %160 to i64, !mcsema_real_eip !38
  store i64 %161, i64* %XSI, !mcsema_real_eip !38
  %162 = add i64 %RBP_val.56, -36, !mcsema_real_eip !39
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !39
  %EAX_val.59 = load i32, i32* %EAX.15, !mcsema_real_eip !39
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.59, i32* %164, !mcsema_real_eip !39
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !40
  %165 = zext i32 %ESI_val.61 to i64, !mcsema_real_eip !40
  store i64 %165, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !41
  %166 = add i64 48, %RSP_val.62, !mcsema_real_eip !41
  %167 = xor i64 %166, %RSP_val.62, !mcsema_real_eip !41
  %168 = xor i64 %167, 48, !mcsema_real_eip !41
  %169 = and i64 %168, 16, !mcsema_real_eip !41
  %170 = icmp ne i64 %169, 0, !mcsema_real_eip !41
  store i1 %170, i1* %AF, !mcsema_real_eip !41
  %171 = lshr i64 %166, 63, !mcsema_real_eip !41
  %172 = trunc i64 %171 to i1, !mcsema_real_eip !41
  store i1 %172, i1* %SF, !mcsema_real_eip !41
  %173 = icmp eq i64 %166, 0, !mcsema_real_eip !41
  store i1 %173, i1* %ZF, !mcsema_real_eip !41
  %174 = xor i64 %RSP_val.62, 48, !mcsema_real_eip !41
  %175 = xor i64 %174, -1, !mcsema_real_eip !41
  %176 = and i64 %175, %167, !mcsema_real_eip !41
  %177 = lshr i64 %176, 63, !mcsema_real_eip !41
  %178 = and i64 %177, 1, !mcsema_real_eip !41
  %179 = trunc i64 %178 to i1, !mcsema_real_eip !41
  store i1 %179, i1* %OF, !mcsema_real_eip !41
  %180 = trunc i64 %166 to i8, !mcsema_real_eip !41
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !41
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !41
  %183 = xor i1 %182, true, !mcsema_real_eip !41
  store i1 %183, i1* %PF, !mcsema_real_eip !41
  %184 = icmp ult i64 %166, %RSP_val.62, !mcsema_real_eip !41
  store i1 %184, i1* %CF, !mcsema_real_eip !41
  store i64 %166, i64* %XSP, !mcsema_real_eip !41
  %185 = inttoptr i64 %166 to i64*, !mcsema_real_eip !42
  %186 = load i64, i64* %185, !mcsema_real_eip !42
  store i64 %186, i64* %XBP, !mcsema_real_eip !42
  %187 = add i64 %166, 8, !mcsema_real_eip !42
  store i64 %187, i64* %XSP, !mcsema_real_eip !42
  %188 = add i64 %187, 8, !mcsema_real_eip !43
  %189 = inttoptr i64 %187 to i64*, !mcsema_real_eip !43
  %190 = load i64, i64* %189, !mcsema_real_eip !43
  store i64 %190, i64* %XIP, !mcsema_real_eip !43
  store i64 %188, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 66}
!19 = !{i64 76}
!20 = !{i64 80}
!21 = !{i64 84}
!22 = !{i64 86}
!23 = !{i64 91}
!24 = !{i64 95}
!25 = !{i64 99}
!26 = !{i64 103}
!27 = !{i64 107}
!28 = !{i64 110}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 125}
!34 = !{i64 130}
!35 = !{i64 140}
!36 = !{i64 143}
!37 = !{i64 145}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 158}
!42 = !{i64 162}
!43 = !{i64 163}
