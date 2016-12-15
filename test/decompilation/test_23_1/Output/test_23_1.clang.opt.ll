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
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !16
  %66 = add i32 -97, %ECX_val.27, !mcsema_real_eip !16
  %67 = xor i32 %66, %ECX_val.27, !mcsema_real_eip !16
  %68 = xor i32 %67, -97, !mcsema_real_eip !16
  %69 = and i32 %68, 16, !mcsema_real_eip !16
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !16
  store i1 %70, i1* %AF, !mcsema_real_eip !16
  %71 = lshr i32 %66, 31, !mcsema_real_eip !16
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !16
  store i1 %72, i1* %SF, !mcsema_real_eip !16
  %73 = icmp eq i32 %66, 0, !mcsema_real_eip !16
  store i1 %73, i1* %ZF, !mcsema_real_eip !16
  %74 = xor i32 %ECX_val.27, -97, !mcsema_real_eip !16
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
  %84 = icmp ult i32 %66, %ECX_val.27, !mcsema_real_eip !16
  store i1 %84, i1* %CF, !mcsema_real_eip !16
  %85 = zext i32 %66 to i64, !mcsema_real_eip !16
  store i64 %85, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.29 = load i32, i32* %ECX.26, !mcsema_real_eip !17
  %86 = zext i32 %ECX_val.29 to i64, !mcsema_real_eip !17
  store i64 %86, i64* %XAX, !mcsema_real_eip !17
  %87 = sub i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %88 = xor i32 %87, %ECX_val.29, !mcsema_real_eip !18
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
  %99 = icmp ult i32 %ECX_val.29, 22, !mcsema_real_eip !18
  store i1 %99, i1* %CF, !mcsema_real_eip !18
  %100 = xor i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %101 = and i32 %100, %88, !mcsema_real_eip !18
  %102 = lshr i32 %101, 31, !mcsema_real_eip !18
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !18
  store i1 %103, i1* %OF, !mcsema_real_eip !18
  %104 = zext i32 %87 to i64, !mcsema_real_eip !18
  store i64 %104, i64* %XCX, !mcsema_real_eip !18
  %105 = add i64 %RBP_val.13, -32, !mcsema_real_eip !19
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !19
  store i64 %86, i64* %106, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %107 = add i64 %RBP_val.34, -36, !mcsema_real_eip !20
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !20
  %ECX_val.36 = load i32, i32* %ECX.26, !mcsema_real_eip !20
  %109 = inttoptr i64 %107 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.36, i32* %109, !mcsema_real_eip !20
  %110 = load i1, i1* %ZF, !mcsema_real_eip !21
  %111 = icmp eq i1 %110, false, !mcsema_real_eip !21
  %112 = load i1, i1* %CF, !mcsema_real_eip !21
  %113 = icmp eq i1 %112, false, !mcsema_real_eip !21
  %114 = and i1 %113, %111, !mcsema_real_eip !21
  br i1 %114, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !22
  %115 = add i64 %RBP_val.13, -12, !mcsema_real_eip !23
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !23
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !23
  %118 = load i32, i32* %117, !mcsema_real_eip !23
  %119 = zext i32 %118 to i64, !mcsema_real_eip !23
  store i64 %119, i64* %XSI, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, !mcsema_real_eip !24
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !25
  %120 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !25
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !25
  store i64 -2415393069852865332, i64* %121, !mcsema_real_eip !25
  store i64 %120, i64* %XSP, !mcsema_real_eip !25
  %122 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %119), !mcsema_real_eip !25
  store i64 %122, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !26
  %123 = add i64 %RBP_val.19, -4, !mcsema_real_eip !26
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !26
  %125 = inttoptr i64 %123 to i32*, !mcsema_real_eip !26
  store i32 1, i32* %125, !mcsema_real_eip !26
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !27
  %126 = add i64 %RBP_val.20, -40, !mcsema_real_eip !27
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !27
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !27
  %128 = inttoptr i64 %126 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.22, i32* %128, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %block_0xbb
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !28
  %129 = add i64 %RBP_val.37, -4, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !28
  %131 = inttoptr i64 %129 to i32*, !mcsema_real_eip !28
  %132 = load i32, i32* %131, !mcsema_real_eip !28
  %133 = zext i32 %132 to i64, !mcsema_real_eip !28
  store i64 %133, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !29
  %134 = add i64 48, %RSP_val.38, !mcsema_real_eip !29
  %135 = xor i64 %134, %RSP_val.38, !mcsema_real_eip !29
  %136 = xor i64 %135, 48, !mcsema_real_eip !29
  %137 = and i64 %136, 16, !mcsema_real_eip !29
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !29
  store i1 %138, i1* %AF, !mcsema_real_eip !29
  %139 = lshr i64 %134, 63, !mcsema_real_eip !29
  %140 = trunc i64 %139 to i1, !mcsema_real_eip !29
  store i1 %140, i1* %SF, !mcsema_real_eip !29
  %141 = icmp eq i64 %134, 0, !mcsema_real_eip !29
  store i1 %141, i1* %ZF, !mcsema_real_eip !29
  %142 = xor i64 %RSP_val.38, 48, !mcsema_real_eip !29
  %143 = xor i64 %142, -1, !mcsema_real_eip !29
  %144 = and i64 %143, %135, !mcsema_real_eip !29
  %145 = lshr i64 %144, 63, !mcsema_real_eip !29
  %146 = and i64 %145, 1, !mcsema_real_eip !29
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !29
  store i1 %147, i1* %OF, !mcsema_real_eip !29
  %148 = trunc i64 %134 to i8, !mcsema_real_eip !29
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !29
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !29
  %151 = xor i1 %150, true, !mcsema_real_eip !29
  store i1 %151, i1* %PF, !mcsema_real_eip !29
  %152 = icmp ult i64 %134, %RSP_val.38, !mcsema_real_eip !29
  store i1 %152, i1* %CF, !mcsema_real_eip !29
  store i64 %134, i64* %XSP, !mcsema_real_eip !29
  %153 = inttoptr i64 %134 to i64*, !mcsema_real_eip !30
  %154 = load i64, i64* %153, !mcsema_real_eip !30
  store i64 %154, i64* %XBP, !mcsema_real_eip !30
  %155 = add i64 %134, 8, !mcsema_real_eip !30
  store i64 %155, i64* %XSP, !mcsema_real_eip !30
  %156 = add i64 %155, 8, !mcsema_real_eip !31
  %157 = inttoptr i64 %155 to i64*, !mcsema_real_eip !31
  %158 = load i64, i64* %157, !mcsema_real_eip !31
  store i64 %158, i64* %XIP, !mcsema_real_eip !31
  store i64 %156, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %block_0x3d
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !32
  %159 = add i64 %RBP_val.42, -32, !mcsema_real_eip !32
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !32
  %161 = load i64, i64* %160, !mcsema_real_eip !32
  store i64 %161, i64* %XAX, !mcsema_real_eip !32
  %162 = mul i64 %161, 8, !mcsema_real_eip !33
  %163 = add i64 ptrtoint (%0* @data_0xe8 to i64), %162, !mcsema_real_eip !33
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !33
  %165 = load i64, i64* %164, !mcsema_real_eip !33
  store i64 %165, i64* %XCX, !mcsema_real_eip !33
  switch i64 %165, label %265 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !35
  %166 = add i64 %RBP_val.41, -4, !mcsema_real_eip !35
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !35
  %168 = inttoptr i64 %166 to i32*, !mcsema_real_eip !35
  store i32 1, i32* %168, !mcsema_real_eip !35
  br label %block_0xd9, !mcsema_real_eip !36

block_0x69:                                       ; preds = %block_0x5b
  %169 = add i64 %RBP_val.42, -12, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !37
  %171 = inttoptr i64 %169 to i32*, !mcsema_real_eip !37
  %172 = load i32, i32* %171, !mcsema_real_eip !37
  %173 = zext i32 %172 to i64, !mcsema_real_eip !37
  store i64 %173, i64* %XAX, !mcsema_real_eip !37
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !38
  %174 = add i32 1, %EAX_val.65, !mcsema_real_eip !38
  %175 = xor i32 %174, %EAX_val.65, !mcsema_real_eip !38
  %176 = xor i32 %175, 1, !mcsema_real_eip !38
  %177 = and i32 %176, 16, !mcsema_real_eip !38
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !38
  store i1 %178, i1* %AF, !mcsema_real_eip !38
  %179 = lshr i32 %174, 31, !mcsema_real_eip !38
  %180 = trunc i32 %179 to i1, !mcsema_real_eip !38
  store i1 %180, i1* %SF, !mcsema_real_eip !38
  %181 = icmp eq i32 %174, 0, !mcsema_real_eip !38
  store i1 %181, i1* %ZF, !mcsema_real_eip !38
  %182 = xor i32 %EAX_val.65, 1, !mcsema_real_eip !38
  %183 = xor i32 %182, -1, !mcsema_real_eip !38
  %184 = and i32 %183, %175, !mcsema_real_eip !38
  %185 = lshr i32 %184, 31, !mcsema_real_eip !38
  %186 = and i32 %185, 1, !mcsema_real_eip !38
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !38
  store i1 %187, i1* %OF, !mcsema_real_eip !38
  %188 = trunc i32 %174 to i8, !mcsema_real_eip !38
  %189 = call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !38
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !38
  %191 = xor i1 %190, true, !mcsema_real_eip !38
  store i1 %191, i1* %PF, !mcsema_real_eip !38
  %192 = icmp ult i32 %174, %EAX_val.65, !mcsema_real_eip !38
  store i1 %192, i1* %CF, !mcsema_real_eip !38
  %193 = zext i32 %174 to i64, !mcsema_real_eip !38
  store i64 %193, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.68 = load i32, i32* %EAX.64, !mcsema_real_eip !39
  store i32 %EAX_val.68, i32* %171, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0x77:                                       ; preds = %block_0x5b
  %194 = add i64 %RBP_val.42, -12, !mcsema_real_eip !41
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !41
  %196 = inttoptr i64 %194 to i32*, !mcsema_real_eip !41
  %197 = load i32, i32* %196, !mcsema_real_eip !41
  %198 = zext i32 %197 to i64, !mcsema_real_eip !41
  store i64 %198, i64* %XAX, !mcsema_real_eip !41
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !42
  %199 = add i32 2, %EAX_val.59, !mcsema_real_eip !42
  %200 = xor i32 %199, %EAX_val.59, !mcsema_real_eip !42
  %201 = xor i32 %200, 2, !mcsema_real_eip !42
  %202 = and i32 %201, 16, !mcsema_real_eip !42
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !42
  store i1 %203, i1* %AF, !mcsema_real_eip !42
  %204 = lshr i32 %199, 31, !mcsema_real_eip !42
  %205 = trunc i32 %204 to i1, !mcsema_real_eip !42
  store i1 %205, i1* %SF, !mcsema_real_eip !42
  %206 = icmp eq i32 %199, 0, !mcsema_real_eip !42
  store i1 %206, i1* %ZF, !mcsema_real_eip !42
  %207 = xor i32 %EAX_val.59, 2, !mcsema_real_eip !42
  %208 = xor i32 %207, -1, !mcsema_real_eip !42
  %209 = and i32 %208, %200, !mcsema_real_eip !42
  %210 = lshr i32 %209, 31, !mcsema_real_eip !42
  %211 = and i32 %210, 1, !mcsema_real_eip !42
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !42
  store i1 %212, i1* %OF, !mcsema_real_eip !42
  %213 = trunc i32 %199 to i8, !mcsema_real_eip !42
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !42
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !42
  %216 = xor i1 %215, true, !mcsema_real_eip !42
  store i1 %216, i1* %PF, !mcsema_real_eip !42
  %217 = icmp ult i32 %199, %EAX_val.59, !mcsema_real_eip !42
  store i1 %217, i1* %CF, !mcsema_real_eip !42
  %218 = zext i32 %199 to i64, !mcsema_real_eip !42
  store i64 %218, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.62 = load i32, i32* %EAX.58, !mcsema_real_eip !43
  store i32 %EAX_val.62, i32* %196, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x85:                                       ; preds = %block_0x5b
  %219 = add i64 %RBP_val.42, -12, !mcsema_real_eip !45
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !45
  %221 = inttoptr i64 %219 to i32*, !mcsema_real_eip !45
  %222 = load i32, i32* %221, !mcsema_real_eip !45
  %223 = zext i32 %222 to i64, !mcsema_real_eip !45
  store i64 %223, i64* %XAX, !mcsema_real_eip !45
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !46
  %224 = sub i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %225 = xor i32 %224, %EAX_val.53, !mcsema_real_eip !46
  %226 = xor i32 %225, 2, !mcsema_real_eip !46
  %227 = and i32 %226, 16, !mcsema_real_eip !46
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !46
  store i1 %228, i1* %AF, !mcsema_real_eip !46
  %229 = trunc i32 %224 to i8, !mcsema_real_eip !46
  %230 = call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !46
  %231 = trunc i8 %230 to i1, !mcsema_real_eip !46
  %232 = xor i1 %231, true, !mcsema_real_eip !46
  store i1 %232, i1* %PF, !mcsema_real_eip !46
  %233 = icmp eq i32 %224, 0, !mcsema_real_eip !46
  store i1 %233, i1* %ZF, !mcsema_real_eip !46
  %234 = lshr i32 %224, 31, !mcsema_real_eip !46
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !46
  store i1 %235, i1* %SF, !mcsema_real_eip !46
  %236 = icmp ult i32 %EAX_val.53, 2, !mcsema_real_eip !46
  store i1 %236, i1* %CF, !mcsema_real_eip !46
  %237 = xor i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %238 = and i32 %237, %225, !mcsema_real_eip !46
  %239 = lshr i32 %238, 31, !mcsema_real_eip !46
  %240 = trunc i32 %239 to i1, !mcsema_real_eip !46
  store i1 %240, i1* %OF, !mcsema_real_eip !46
  %241 = zext i32 %224 to i64, !mcsema_real_eip !46
  store i64 %241, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.56 = load i32, i32* %EAX.52, !mcsema_real_eip !47
  store i32 %EAX_val.56, i32* %221, !mcsema_real_eip !47
  br label %block_0xad, !mcsema_real_eip !48

block_0x93:                                       ; preds = %block_0x5b
  %242 = add i64 %RBP_val.42, -12, !mcsema_real_eip !49
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !49
  %244 = inttoptr i64 %242 to i32*, !mcsema_real_eip !49
  %245 = load i32, i32* %244, !mcsema_real_eip !49
  %246 = zext i32 %245 to i64, !mcsema_real_eip !49
  store i64 %246, i64* %XAX, !mcsema_real_eip !49
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !50
  %247 = sub i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %248 = xor i32 %247, %EAX_val.47, !mcsema_real_eip !50
  %249 = xor i32 %248, 1, !mcsema_real_eip !50
  %250 = and i32 %249, 16, !mcsema_real_eip !50
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !50
  store i1 %251, i1* %AF, !mcsema_real_eip !50
  %252 = trunc i32 %247 to i8, !mcsema_real_eip !50
  %253 = call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !50
  %254 = trunc i8 %253 to i1, !mcsema_real_eip !50
  %255 = xor i1 %254, true, !mcsema_real_eip !50
  store i1 %255, i1* %PF, !mcsema_real_eip !50
  %256 = icmp eq i32 %247, 0, !mcsema_real_eip !50
  store i1 %256, i1* %ZF, !mcsema_real_eip !50
  %257 = lshr i32 %247, 31, !mcsema_real_eip !50
  %258 = trunc i32 %257 to i1, !mcsema_real_eip !50
  store i1 %258, i1* %SF, !mcsema_real_eip !50
  %259 = icmp ult i32 %EAX_val.47, 1, !mcsema_real_eip !50
  store i1 %259, i1* %CF, !mcsema_real_eip !50
  %260 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %261 = and i32 %260, %248, !mcsema_real_eip !50
  %262 = lshr i32 %261, 31, !mcsema_real_eip !50
  %263 = trunc i32 %262 to i1, !mcsema_real_eip !50
  store i1 %263, i1* %OF, !mcsema_real_eip !50
  %264 = zext i32 %247 to i64, !mcsema_real_eip !50
  store i64 %264, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.50 = load i32, i32* %EAX.46, !mcsema_real_eip !51
  store i32 %EAX_val.50, i32* %244, !mcsema_real_eip !51
  br label %block_0xad, !mcsema_real_eip !52

; <label>:265:                                    ; preds = %block_0x5b
  store i64 %165, i64* %XIP, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !34
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !53
  %266 = add i64 %RBP_val.69, -8, !mcsema_real_eip !53
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !53
  %268 = inttoptr i64 %266 to i32*, !mcsema_real_eip !53
  %269 = load i32, i32* %268, !mcsema_real_eip !53
  %270 = zext i32 %269 to i64, !mcsema_real_eip !53
  store i64 %270, i64* %XAX, !mcsema_real_eip !53
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !54
  %271 = add i32 1, %EAX_val.71, !mcsema_real_eip !54
  %272 = xor i32 %271, %EAX_val.71, !mcsema_real_eip !54
  %273 = xor i32 %272, 1, !mcsema_real_eip !54
  %274 = and i32 %273, 16, !mcsema_real_eip !54
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !54
  store i1 %275, i1* %AF, !mcsema_real_eip !54
  %276 = lshr i32 %271, 31, !mcsema_real_eip !54
  %277 = trunc i32 %276 to i1, !mcsema_real_eip !54
  store i1 %277, i1* %SF, !mcsema_real_eip !54
  %278 = icmp eq i32 %271, 0, !mcsema_real_eip !54
  store i1 %278, i1* %ZF, !mcsema_real_eip !54
  %279 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !54
  %280 = xor i32 %279, -1, !mcsema_real_eip !54
  %281 = and i32 %280, %272, !mcsema_real_eip !54
  %282 = lshr i32 %281, 31, !mcsema_real_eip !54
  %283 = and i32 %282, 1, !mcsema_real_eip !54
  %284 = trunc i32 %283 to i1, !mcsema_real_eip !54
  store i1 %284, i1* %OF, !mcsema_real_eip !54
  %285 = trunc i32 %271 to i8, !mcsema_real_eip !54
  %286 = call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !54
  %287 = trunc i8 %286 to i1, !mcsema_real_eip !54
  %288 = xor i1 %287, true, !mcsema_real_eip !54
  store i1 %288, i1* %PF, !mcsema_real_eip !54
  %289 = icmp ult i32 %271, %EAX_val.71, !mcsema_real_eip !54
  store i1 %289, i1* %CF, !mcsema_real_eip !54
  %290 = zext i32 %271 to i64, !mcsema_real_eip !54
  store i64 %290, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !55
  store i32 %EAX_val.74, i32* %268, !mcsema_real_eip !55
  br label %block_0x33, !mcsema_real_eip !56
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
!22 = !{i64 187}
!23 = !{i64 197}
!24 = !{i64 200}
!25 = !{i64 202}
!26 = !{i64 207}
!27 = !{i64 214}
!28 = !{i64 217}
!29 = !{i64 220}
!30 = !{i64 224}
!31 = !{i64 225}
!32 = !{i64 91}
!33 = !{i64 95}
!34 = !{i64 103}
!35 = !{i64 161}
!36 = !{i64 168}
!37 = !{i64 105}
!38 = !{i64 108}
!39 = !{i64 111}
!40 = !{i64 114}
!41 = !{i64 119}
!42 = !{i64 122}
!43 = !{i64 125}
!44 = !{i64 128}
!45 = !{i64 133}
!46 = !{i64 136}
!47 = !{i64 139}
!48 = !{i64 142}
!49 = !{i64 147}
!50 = !{i64 150}
!51 = !{i64 153}
!52 = !{i64 156}
!53 = !{i64 173}
!54 = !{i64 176}
!55 = !{i64 179}
!56 = !{i64 182}
