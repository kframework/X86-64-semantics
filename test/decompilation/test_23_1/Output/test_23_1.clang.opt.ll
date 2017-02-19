; ModuleID = 'Output/test_23_1.clang.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
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

%0 = type <{ [184 x i8] }>
%1 = type <{ [13 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xe8 = internal constant %0 <{ [184 x i8] c"\85\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00w\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00i\00\00\00\00\00\00\00" }>, align 64
@data_0x1a0 = internal constant %1 <{ [13 x i8] c"ssssdddd\00%d\0A\00" }>, align 64
@data_0x1b0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\E2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %25, !mcsema_real_eip !6
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.6, -12, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %28, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %29 = add i64 %RBP_val.7, -21, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  store i64 7234017284060312435, i64* %30, !mcsema_real_eip !9
  %31 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), !mcsema_real_eip !10
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %31, i8* %CL.9, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !11
  %32 = add i64 %RBP_val.10, -13, !mcsema_real_eip !11
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !11
  %34 = inttoptr i64 %32 to i8*, !mcsema_real_eip !11
  store i8 %31, i8* %34, !mcsema_real_eip !11
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %block_0x0
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !12
  %35 = add i64 %RBP_val.13, -8, !mcsema_real_eip !12
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !12
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !12
  %38 = load i32, i32* %37, !mcsema_real_eip !12
  %39 = sub i32 %38, 8, !mcsema_real_eip !12
  %40 = xor i32 %39, %38, !mcsema_real_eip !12
  %41 = xor i32 %40, 8, !mcsema_real_eip !12
  %42 = and i32 %41, 16, !mcsema_real_eip !12
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !12
  store i1 %43, i1* %AF, !mcsema_real_eip !12
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !12
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !12
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !12
  %47 = xor i1 %46, true, !mcsema_real_eip !12
  store i1 %47, i1* %PF, !mcsema_real_eip !12
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !12
  store i1 %48, i1* %ZF, !mcsema_real_eip !12
  %49 = lshr i32 %39, 31, !mcsema_real_eip !12
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !12
  store i1 %50, i1* %SF, !mcsema_real_eip !12
  %51 = icmp ult i32 %38, 8, !mcsema_real_eip !12
  store i1 %51, i1* %CF, !mcsema_real_eip !12
  %52 = xor i32 %38, 8, !mcsema_real_eip !12
  %53 = and i32 %52, %40, !mcsema_real_eip !12
  %54 = lshr i32 %53, 31, !mcsema_real_eip !12
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !12
  store i1 %55, i1* %OF, !mcsema_real_eip !12
  %56 = icmp eq i1 %50, %55, !mcsema_real_eip !13
  br i1 %56, label %block_0xbb, label %block_0x3d, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %block_0x33
  %57 = load i32, i32* %37, !mcsema_real_eip !14
  %58 = sext i32 %57 to i64, !mcsema_real_eip !14
  store i64 %58, i64* %XAX, !mcsema_real_eip !14
  %59 = add i64 %RBP_val.13, -21, !mcsema_real_eip !15
  %60 = add i64 %59, %58, !mcsema_real_eip !15
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !15
  %62 = inttoptr i64 %60 to i8*, !mcsema_real_eip !15
  %63 = load i8, i8* %62, !mcsema_real_eip !15
  %64 = sext i8 %63 to i32, !mcsema_real_eip !15
  %65 = zext i32 %64 to i64, !mcsema_real_eip !15
  store i64 %65, i64* %XCX, !mcsema_real_eip !15
  %ECX.17 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.18 = load i32, i32* %ECX.17, !mcsema_real_eip !16
  %66 = add i32 -97, %ECX_val.18, !mcsema_real_eip !16
  %67 = xor i32 %66, %ECX_val.18, !mcsema_real_eip !16
  %68 = xor i32 %67, -97, !mcsema_real_eip !16
  %69 = and i32 %68, 16, !mcsema_real_eip !16
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !16
  store i1 %70, i1* %AF, !mcsema_real_eip !16
  %71 = lshr i32 %66, 31, !mcsema_real_eip !16
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !16
  store i1 %72, i1* %SF, !mcsema_real_eip !16
  %73 = icmp eq i32 %66, 0, !mcsema_real_eip !16
  store i1 %73, i1* %ZF, !mcsema_real_eip !16
  %74 = xor i32 %ECX_val.18, -97, !mcsema_real_eip !16
  %75 = xor i32 %74, -1, !mcsema_real_eip !16
  %76 = and i32 %75, %67, !mcsema_real_eip !16
  %77 = lshr i32 %76, 31, !mcsema_real_eip !16
  %78 = and i32 %77, 1, !mcsema_real_eip !16
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !16
  store i1 %79, i1* %OF, !mcsema_real_eip !16
  %80 = trunc i32 %66 to i8, !mcsema_real_eip !16
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !16
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !16
  %83 = xor i1 %82, true, !mcsema_real_eip !16
  store i1 %83, i1* %PF, !mcsema_real_eip !16
  %84 = icmp ult i32 %66, %ECX_val.18, !mcsema_real_eip !16
  store i1 %84, i1* %CF, !mcsema_real_eip !16
  %85 = zext i32 %66 to i64, !mcsema_real_eip !16
  store i64 %85, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.20 = load i32, i32* %ECX.17, !mcsema_real_eip !17
  %86 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !17
  store i64 %86, i64* %XAX, !mcsema_real_eip !17
  %87 = sub i32 %ECX_val.20, 22, !mcsema_real_eip !18
  %88 = xor i32 %87, %ECX_val.20, !mcsema_real_eip !18
  %89 = xor i32 %88, 22, !mcsema_real_eip !18
  %90 = and i32 %89, 16, !mcsema_real_eip !18
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !18
  store i1 %91, i1* %AF, !mcsema_real_eip !18
  %92 = trunc i32 %87 to i8, !mcsema_real_eip !18
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !18
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !18
  %95 = xor i1 %94, true, !mcsema_real_eip !18
  store i1 %95, i1* %PF, !mcsema_real_eip !18
  %96 = icmp eq i32 %87, 0, !mcsema_real_eip !18
  store i1 %96, i1* %ZF, !mcsema_real_eip !18
  %97 = lshr i32 %87, 31, !mcsema_real_eip !18
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !18
  store i1 %98, i1* %SF, !mcsema_real_eip !18
  %99 = icmp ult i32 %ECX_val.20, 22, !mcsema_real_eip !18
  store i1 %99, i1* %CF, !mcsema_real_eip !18
  %100 = xor i32 %ECX_val.20, 22, !mcsema_real_eip !18
  %101 = and i32 %100, %88, !mcsema_real_eip !18
  %102 = lshr i32 %101, 31, !mcsema_real_eip !18
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !18
  store i1 %103, i1* %OF, !mcsema_real_eip !18
  %104 = zext i32 %87 to i64, !mcsema_real_eip !18
  store i64 %104, i64* %XCX, !mcsema_real_eip !18
  %105 = add i64 %RBP_val.13, -32, !mcsema_real_eip !19
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !19
  store i64 %86, i64* %106, !mcsema_real_eip !19
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !20
  %107 = add i64 %RBP_val.25, -36, !mcsema_real_eip !20
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !20
  %ECX_val.27 = load i32, i32* %ECX.17, !mcsema_real_eip !20
  %109 = inttoptr i64 %107 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.27, i32* %109, !mcsema_real_eip !20
  %110 = load i1, i1* %ZF, !mcsema_real_eip !21
  %111 = icmp eq i1 %110, false, !mcsema_real_eip !21
  %112 = load i1, i1* %CF, !mcsema_real_eip !21
  %113 = icmp eq i1 %112, false, !mcsema_real_eip !21
  %114 = and i1 %113, %111, !mcsema_real_eip !21
  br i1 %114, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %block_0x3d
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !22
  %115 = add i64 %RBP_val.28, -32, !mcsema_real_eip !22
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !22
  %117 = load i64, i64* %116, !mcsema_real_eip !22
  store i64 %117, i64* %XAX, !mcsema_real_eip !22
  %118 = mul i64 %117, 8, !mcsema_real_eip !23
  %119 = add i64 ptrtoint (%0* @data_0xe8 to i64), %118, !mcsema_real_eip !23
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !23
  %121 = load i64, i64* %120, !mcsema_real_eip !23
  store i64 %121, i64* %XCX, !mcsema_real_eip !23
  switch i64 %121, label %290 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x5b
  %122 = add i64 %RBP_val.28, -12, !mcsema_real_eip !25
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !25
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !25
  %125 = load i32, i32* %124, !mcsema_real_eip !25
  %126 = zext i32 %125 to i64, !mcsema_real_eip !25
  store i64 %126, i64* %XAX, !mcsema_real_eip !25
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !26
  %127 = add i32 1, %EAX_val.33, !mcsema_real_eip !26
  %128 = xor i32 %127, %EAX_val.33, !mcsema_real_eip !26
  %129 = xor i32 %128, 1, !mcsema_real_eip !26
  %130 = and i32 %129, 16, !mcsema_real_eip !26
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !26
  store i1 %131, i1* %AF, !mcsema_real_eip !26
  %132 = lshr i32 %127, 31, !mcsema_real_eip !26
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !26
  store i1 %133, i1* %SF, !mcsema_real_eip !26
  %134 = icmp eq i32 %127, 0, !mcsema_real_eip !26
  store i1 %134, i1* %ZF, !mcsema_real_eip !26
  %135 = xor i32 %EAX_val.33, 1, !mcsema_real_eip !26
  %136 = xor i32 %135, -1, !mcsema_real_eip !26
  %137 = and i32 %136, %128, !mcsema_real_eip !26
  %138 = lshr i32 %137, 31, !mcsema_real_eip !26
  %139 = and i32 %138, 1, !mcsema_real_eip !26
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !26
  store i1 %140, i1* %OF, !mcsema_real_eip !26
  %141 = trunc i32 %127 to i8, !mcsema_real_eip !26
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !26
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !26
  %144 = xor i1 %143, true, !mcsema_real_eip !26
  store i1 %144, i1* %PF, !mcsema_real_eip !26
  %145 = icmp ult i32 %127, %EAX_val.33, !mcsema_real_eip !26
  store i1 %145, i1* %CF, !mcsema_real_eip !26
  %146 = zext i32 %127 to i64, !mcsema_real_eip !26
  store i64 %146, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.36 = load i32, i32* %EAX.32, !mcsema_real_eip !27
  store i32 %EAX_val.36, i32* %124, !mcsema_real_eip !27
  br label %block_0xad, !mcsema_real_eip !28

block_0x77:                                       ; preds = %block_0x5b
  %147 = add i64 %RBP_val.28, -12, !mcsema_real_eip !29
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !29
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !29
  %150 = load i32, i32* %149, !mcsema_real_eip !29
  %151 = zext i32 %150 to i64, !mcsema_real_eip !29
  store i64 %151, i64* %XAX, !mcsema_real_eip !29
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !30
  %152 = add i32 2, %EAX_val.39, !mcsema_real_eip !30
  %153 = xor i32 %152, %EAX_val.39, !mcsema_real_eip !30
  %154 = xor i32 %153, 2, !mcsema_real_eip !30
  %155 = and i32 %154, 16, !mcsema_real_eip !30
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !30
  store i1 %156, i1* %AF, !mcsema_real_eip !30
  %157 = lshr i32 %152, 31, !mcsema_real_eip !30
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !30
  store i1 %158, i1* %SF, !mcsema_real_eip !30
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !30
  store i1 %159, i1* %ZF, !mcsema_real_eip !30
  %160 = xor i32 %EAX_val.39, 2, !mcsema_real_eip !30
  %161 = xor i32 %160, -1, !mcsema_real_eip !30
  %162 = and i32 %161, %153, !mcsema_real_eip !30
  %163 = lshr i32 %162, 31, !mcsema_real_eip !30
  %164 = and i32 %163, 1, !mcsema_real_eip !30
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !30
  store i1 %165, i1* %OF, !mcsema_real_eip !30
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !30
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !30
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !30
  %169 = xor i1 %168, true, !mcsema_real_eip !30
  store i1 %169, i1* %PF, !mcsema_real_eip !30
  %170 = icmp ult i32 %152, %EAX_val.39, !mcsema_real_eip !30
  store i1 %170, i1* %CF, !mcsema_real_eip !30
  %171 = zext i32 %152 to i64, !mcsema_real_eip !30
  store i64 %171, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.38, !mcsema_real_eip !31
  store i32 %EAX_val.42, i32* %149, !mcsema_real_eip !31
  br label %block_0xad, !mcsema_real_eip !32

block_0x85:                                       ; preds = %block_0x5b
  %172 = add i64 %RBP_val.28, -12, !mcsema_real_eip !33
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !33
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !33
  %175 = load i32, i32* %174, !mcsema_real_eip !33
  %176 = zext i32 %175 to i64, !mcsema_real_eip !33
  store i64 %176, i64* %XAX, !mcsema_real_eip !33
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  %177 = sub i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %178 = xor i32 %177, %EAX_val.45, !mcsema_real_eip !34
  %179 = xor i32 %178, 2, !mcsema_real_eip !34
  %180 = and i32 %179, 16, !mcsema_real_eip !34
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !34
  store i1 %181, i1* %AF, !mcsema_real_eip !34
  %182 = trunc i32 %177 to i8, !mcsema_real_eip !34
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !34
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !34
  %185 = xor i1 %184, true, !mcsema_real_eip !34
  store i1 %185, i1* %PF, !mcsema_real_eip !34
  %186 = icmp eq i32 %177, 0, !mcsema_real_eip !34
  store i1 %186, i1* %ZF, !mcsema_real_eip !34
  %187 = lshr i32 %177, 31, !mcsema_real_eip !34
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !34
  store i1 %188, i1* %SF, !mcsema_real_eip !34
  %189 = icmp ult i32 %EAX_val.45, 2, !mcsema_real_eip !34
  store i1 %189, i1* %CF, !mcsema_real_eip !34
  %190 = xor i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %191 = and i32 %190, %178, !mcsema_real_eip !34
  %192 = lshr i32 %191, 31, !mcsema_real_eip !34
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !34
  store i1 %193, i1* %OF, !mcsema_real_eip !34
  %194 = zext i32 %177 to i64, !mcsema_real_eip !34
  store i64 %194, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.48 = load i32, i32* %EAX.44, !mcsema_real_eip !35
  store i32 %EAX_val.48, i32* %174, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0x93:                                       ; preds = %block_0x5b
  %195 = add i64 %RBP_val.28, -12, !mcsema_real_eip !37
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !37
  %197 = inttoptr i64 %195 to i32*, !mcsema_real_eip !37
  %198 = load i32, i32* %197, !mcsema_real_eip !37
  %199 = zext i32 %198 to i64, !mcsema_real_eip !37
  store i64 %199, i64* %XAX, !mcsema_real_eip !37
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !38
  %200 = sub i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %201 = xor i32 %200, %EAX_val.51, !mcsema_real_eip !38
  %202 = xor i32 %201, 1, !mcsema_real_eip !38
  %203 = and i32 %202, 16, !mcsema_real_eip !38
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !38
  store i1 %204, i1* %AF, !mcsema_real_eip !38
  %205 = trunc i32 %200 to i8, !mcsema_real_eip !38
  %206 = call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !38
  %207 = trunc i8 %206 to i1, !mcsema_real_eip !38
  %208 = xor i1 %207, true, !mcsema_real_eip !38
  store i1 %208, i1* %PF, !mcsema_real_eip !38
  %209 = icmp eq i32 %200, 0, !mcsema_real_eip !38
  store i1 %209, i1* %ZF, !mcsema_real_eip !38
  %210 = lshr i32 %200, 31, !mcsema_real_eip !38
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !38
  store i1 %211, i1* %SF, !mcsema_real_eip !38
  %212 = icmp ult i32 %EAX_val.51, 1, !mcsema_real_eip !38
  store i1 %212, i1* %CF, !mcsema_real_eip !38
  %213 = xor i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %214 = and i32 %213, %201, !mcsema_real_eip !38
  %215 = lshr i32 %214, 31, !mcsema_real_eip !38
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !38
  store i1 %216, i1* %OF, !mcsema_real_eip !38
  %217 = zext i32 %200 to i64, !mcsema_real_eip !38
  store i64 %217, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.54 = load i32, i32* %EAX.50, !mcsema_real_eip !39
  store i32 %EAX_val.54, i32* %197, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !41
  %218 = add i64 %RBP_val.55, -4, !mcsema_real_eip !41
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !41
  %220 = inttoptr i64 %218 to i32*, !mcsema_real_eip !41
  store i32 1, i32* %220, !mcsema_real_eip !41
  br label %block_0xd9, !mcsema_real_eip !42

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !43
  %221 = add i64 %RBP_val.56, -8, !mcsema_real_eip !43
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !43
  %223 = inttoptr i64 %221 to i32*, !mcsema_real_eip !43
  %224 = load i32, i32* %223, !mcsema_real_eip !43
  %225 = zext i32 %224 to i64, !mcsema_real_eip !43
  store i64 %225, i64* %XAX, !mcsema_real_eip !43
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !44
  %226 = add i32 1, %EAX_val.58, !mcsema_real_eip !44
  %227 = xor i32 %226, %EAX_val.58, !mcsema_real_eip !44
  %228 = xor i32 %227, 1, !mcsema_real_eip !44
  %229 = and i32 %228, 16, !mcsema_real_eip !44
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !44
  store i1 %230, i1* %AF, !mcsema_real_eip !44
  %231 = lshr i32 %226, 31, !mcsema_real_eip !44
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !44
  store i1 %232, i1* %SF, !mcsema_real_eip !44
  %233 = icmp eq i32 %226, 0, !mcsema_real_eip !44
  store i1 %233, i1* %ZF, !mcsema_real_eip !44
  %234 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !44
  %235 = xor i32 %234, -1, !mcsema_real_eip !44
  %236 = and i32 %235, %227, !mcsema_real_eip !44
  %237 = lshr i32 %236, 31, !mcsema_real_eip !44
  %238 = and i32 %237, 1, !mcsema_real_eip !44
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !44
  store i1 %239, i1* %OF, !mcsema_real_eip !44
  %240 = trunc i32 %226 to i8, !mcsema_real_eip !44
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !44
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !44
  %243 = xor i1 %242, true, !mcsema_real_eip !44
  store i1 %243, i1* %PF, !mcsema_real_eip !44
  %244 = icmp ult i32 %226, %EAX_val.58, !mcsema_real_eip !44
  store i1 %244, i1* %CF, !mcsema_real_eip !44
  %245 = zext i32 %226 to i64, !mcsema_real_eip !44
  store i64 %245, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.61 = load i32, i32* %EAX.57, !mcsema_real_eip !45
  store i32 %EAX_val.61, i32* %223, !mcsema_real_eip !45
  br label %block_0x33, !mcsema_real_eip !46

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !47
  %246 = add i64 %RBP_val.13, -12, !mcsema_real_eip !48
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !48
  %248 = inttoptr i64 %246 to i32*, !mcsema_real_eip !48
  %249 = load i32, i32* %248, !mcsema_real_eip !48
  %250 = zext i32 %249 to i64, !mcsema_real_eip !48
  store i64 %250, i64* %XSI, !mcsema_real_eip !48
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.63, !mcsema_real_eip !49
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !50
  %251 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !50
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %252, !mcsema_real_eip !50
  store i64 %251, i64* %XSP, !mcsema_real_eip !50
  %253 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %250), !mcsema_real_eip !50
  store i64 %253, i64* %XAX, !mcsema_real_eip !50
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !51
  %254 = add i64 %RBP_val.67, -4, !mcsema_real_eip !51
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !51
  %256 = inttoptr i64 %254 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %256, !mcsema_real_eip !51
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !52
  %257 = add i64 %RBP_val.68, -40, !mcsema_real_eip !52
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !52
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !52
  %259 = inttoptr i64 %257 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.70, i32* %259, !mcsema_real_eip !52
  br label %block_0xd9, !mcsema_real_eip !53

block_0xd9:                                       ; preds = %block_0xbb, %block_0xa1
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !53
  %260 = add i64 %RBP_val.71, -4, !mcsema_real_eip !53
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !53
  %262 = inttoptr i64 %260 to i32*, !mcsema_real_eip !53
  %263 = load i32, i32* %262, !mcsema_real_eip !53
  %264 = zext i32 %263 to i64, !mcsema_real_eip !53
  store i64 %264, i64* %XAX, !mcsema_real_eip !53
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !54
  %265 = add i64 48, %RSP_val.72, !mcsema_real_eip !54
  %266 = xor i64 %265, %RSP_val.72, !mcsema_real_eip !54
  %267 = xor i64 %266, 48, !mcsema_real_eip !54
  %268 = and i64 %267, 16, !mcsema_real_eip !54
  %269 = icmp ne i64 %268, 0, !mcsema_real_eip !54
  store i1 %269, i1* %AF, !mcsema_real_eip !54
  %270 = lshr i64 %265, 63, !mcsema_real_eip !54
  %271 = trunc i64 %270 to i1, !mcsema_real_eip !54
  store i1 %271, i1* %SF, !mcsema_real_eip !54
  %272 = icmp eq i64 %265, 0, !mcsema_real_eip !54
  store i1 %272, i1* %ZF, !mcsema_real_eip !54
  %273 = xor i64 %RSP_val.72, 48, !mcsema_real_eip !54
  %274 = xor i64 %273, -1, !mcsema_real_eip !54
  %275 = and i64 %274, %266, !mcsema_real_eip !54
  %276 = lshr i64 %275, 63, !mcsema_real_eip !54
  %277 = and i64 %276, 1, !mcsema_real_eip !54
  %278 = trunc i64 %277 to i1, !mcsema_real_eip !54
  store i1 %278, i1* %OF, !mcsema_real_eip !54
  %279 = trunc i64 %265 to i8, !mcsema_real_eip !54
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !54
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !54
  %282 = xor i1 %281, true, !mcsema_real_eip !54
  store i1 %282, i1* %PF, !mcsema_real_eip !54
  %283 = icmp ult i64 %265, %RSP_val.72, !mcsema_real_eip !54
  store i1 %283, i1* %CF, !mcsema_real_eip !54
  store i64 %265, i64* %XSP, !mcsema_real_eip !54
  %284 = inttoptr i64 %265 to i64*, !mcsema_real_eip !55
  %285 = load i64, i64* %284, !mcsema_real_eip !55
  store i64 %285, i64* %XBP, !mcsema_real_eip !55
  %286 = add i64 %265, 8, !mcsema_real_eip !55
  store i64 %286, i64* %XSP, !mcsema_real_eip !55
  %287 = add i64 %286, 8, !mcsema_real_eip !56
  %288 = inttoptr i64 %286 to i64*, !mcsema_real_eip !56
  %289 = load i64, i64* %288, !mcsema_real_eip !56
  store i64 %289, i64* %XIP, !mcsema_real_eip !56
  store i64 %287, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56

; <label>:290:                                    ; preds = %block_0x5b
  store i64 %121, i64* %XIP, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 48}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 61}
!15 = !{i64 65}
!16 = !{i64 70}
!17 = !{i64 73}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 103}
!25 = !{i64 105}
!26 = !{i64 108}
!27 = !{i64 111}
!28 = !{i64 114}
!29 = !{i64 119}
!30 = !{i64 122}
!31 = !{i64 125}
!32 = !{i64 128}
!33 = !{i64 133}
!34 = !{i64 136}
!35 = !{i64 139}
!36 = !{i64 142}
!37 = !{i64 147}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 161}
!42 = !{i64 168}
!43 = !{i64 173}
!44 = !{i64 176}
!45 = !{i64 179}
!46 = !{i64 182}
!47 = !{i64 187}
!48 = !{i64 197}
!49 = !{i64 200}
!50 = !{i64 202}
!51 = !{i64 207}
!52 = !{i64 214}
!53 = !{i64 217}
!54 = !{i64 220}
!55 = !{i64 224}
!56 = !{i64 225}
