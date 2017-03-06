; ModuleID = 'Output/test_31.clang.trans.bc'
source_filename = "Output/test_31.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xa0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 1, i64* %XAX, !mcsema_real_eip !5
  %20 = add i64 %1, -8, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %23 = add i64 %RBP_val.7, -8, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !7
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !7
  %26 = load i32, i32* %25, !mcsema_real_eip !7
  %27 = sub i32 %EAX_val.9, %26, !mcsema_real_eip !7
  %28 = xor i32 %27, %EAX_val.9, !mcsema_real_eip !7
  %29 = xor i32 %28, %26, !mcsema_real_eip !7
  %30 = and i32 %29, 16, !mcsema_real_eip !7
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !7
  store i1 %31, i1* %AF, !mcsema_real_eip !7
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !7
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !7
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !7
  %35 = xor i1 %34, true, !mcsema_real_eip !7
  store i1 %35, i1* %PF, !mcsema_real_eip !7
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !7
  store i1 %36, i1* %ZF, !mcsema_real_eip !7
  %37 = lshr i32 %27, 31, !mcsema_real_eip !7
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !7
  store i1 %38, i1* %SF, !mcsema_real_eip !7
  %39 = icmp ult i32 %EAX_val.9, %26, !mcsema_real_eip !7
  store i1 %39, i1* %CF, !mcsema_real_eip !7
  %40 = xor i32 %EAX_val.9, %26, !mcsema_real_eip !7
  %41 = and i32 %40, %28, !mcsema_real_eip !7
  %42 = lshr i32 %41, 31, !mcsema_real_eip !7
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !7
  store i1 %43, i1* %OF, !mcsema_real_eip !7
  br i1 %36, label %block_0x24, label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x0
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  store i1 false, i1* %SF, !mcsema_real_eip !9
  store i1 true, i1* %ZF, !mcsema_real_eip !9
  store i1 true, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  store i64 0, i64* %XAX, !mcsema_real_eip !9
  %EAX_val.16 = load i32, i32* %EAX.8, !mcsema_real_eip !10
  %44 = load i32, i32* %25, !mcsema_real_eip !10
  %45 = sub i32 %EAX_val.16, %44, !mcsema_real_eip !10
  %46 = xor i32 %45, %EAX_val.16, !mcsema_real_eip !10
  %47 = xor i32 %46, %44, !mcsema_real_eip !10
  %48 = and i32 %47, 16, !mcsema_real_eip !10
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !10
  store i1 %49, i1* %AF, !mcsema_real_eip !10
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !10
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !10
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !10
  %53 = xor i1 %52, true, !mcsema_real_eip !10
  store i1 %53, i1* %PF, !mcsema_real_eip !10
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !10
  store i1 %54, i1* %ZF, !mcsema_real_eip !10
  %55 = lshr i32 %45, 31, !mcsema_real_eip !10
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !10
  store i1 %56, i1* %SF, !mcsema_real_eip !10
  %57 = icmp ult i32 %EAX_val.16, %44, !mcsema_real_eip !10
  store i1 %57, i1* %CF, !mcsema_real_eip !10
  %58 = xor i32 %EAX_val.16, %44, !mcsema_real_eip !10
  %59 = and i32 %58, %46, !mcsema_real_eip !10
  %60 = lshr i32 %59, 31, !mcsema_real_eip !10
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !10
  store i1 %61, i1* %OF, !mcsema_real_eip !10
  %62 = icmp eq i1 %54, false, !mcsema_real_eip !11
  br i1 %62, label %block_0x30, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %63 = add i64 %RBP_val.7, -4, !mcsema_real_eip !12
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !12
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !12
  store i32 1, i32* %65, !mcsema_real_eip !12
  br label %block_0x53, !mcsema_real_eip !13

block_0x30:                                       ; preds = %block_0x19
  %66 = load i32, i32* %25, !mcsema_real_eip !14
  %67 = zext i32 %66 to i64, !mcsema_real_eip !14
  store i64 %67, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.20 = load i32, i32* %EAX.8, !mcsema_real_eip !15
  %68 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %69 = xor i32 %68, %EAX_val.20, !mcsema_real_eip !15
  %70 = xor i32 %69, 1, !mcsema_real_eip !15
  %71 = and i32 %70, 16, !mcsema_real_eip !15
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !15
  store i1 %72, i1* %AF, !mcsema_real_eip !15
  %73 = trunc i32 %68 to i8, !mcsema_real_eip !15
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !15
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !15
  %76 = xor i1 %75, true, !mcsema_real_eip !15
  store i1 %76, i1* %PF, !mcsema_real_eip !15
  %77 = icmp eq i32 %68, 0, !mcsema_real_eip !15
  store i1 %77, i1* %ZF, !mcsema_real_eip !15
  %78 = lshr i32 %68, 31, !mcsema_real_eip !15
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !15
  store i1 %79, i1* %SF, !mcsema_real_eip !15
  %80 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !15
  store i1 %80, i1* %CF, !mcsema_real_eip !15
  %81 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %82 = and i32 %81, %69, !mcsema_real_eip !15
  %83 = lshr i32 %82, 31, !mcsema_real_eip !15
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !15
  store i1 %84, i1* %OF, !mcsema_real_eip !15
  %85 = zext i32 %68 to i64, !mcsema_real_eip !15
  store i64 %85, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.22 = load i32, i32* %EAX.8, !mcsema_real_eip !16
  %86 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !16
  store i64 %86, i64* %XDI, !mcsema_real_eip !16
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !17
  %87 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !17
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %88, !mcsema_real_eip !17
  store i64 %87, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %89 = add i64 %RBP_val.24, -8, !mcsema_real_eip !18
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !18
  %91 = inttoptr i64 %89 to i32*, !mcsema_real_eip !18
  %92 = load i32, i32* %91, !mcsema_real_eip !18
  %93 = zext i32 %92 to i64, !mcsema_real_eip !18
  store i64 %93, i64* %XDI, !mcsema_real_eip !18
  %EDI_val.26 = load i32, i32* %EDI.5, !mcsema_real_eip !19
  %94 = sub i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %95 = xor i32 %94, %EDI_val.26, !mcsema_real_eip !19
  %96 = xor i32 %95, 2, !mcsema_real_eip !19
  %97 = and i32 %96, 16, !mcsema_real_eip !19
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !19
  store i1 %98, i1* %AF, !mcsema_real_eip !19
  %99 = trunc i32 %94 to i8, !mcsema_real_eip !19
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !19
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !19
  %102 = xor i1 %101, true, !mcsema_real_eip !19
  store i1 %102, i1* %PF, !mcsema_real_eip !19
  %103 = icmp eq i32 %94, 0, !mcsema_real_eip !19
  store i1 %103, i1* %ZF, !mcsema_real_eip !19
  %104 = lshr i32 %94, 31, !mcsema_real_eip !19
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !19
  store i1 %105, i1* %SF, !mcsema_real_eip !19
  %106 = icmp ult i32 %EDI_val.26, 2, !mcsema_real_eip !19
  store i1 %106, i1* %CF, !mcsema_real_eip !19
  %107 = xor i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %108 = and i32 %107, %95, !mcsema_real_eip !19
  %109 = lshr i32 %108, 31, !mcsema_real_eip !19
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !19
  store i1 %110, i1* %OF, !mcsema_real_eip !19
  %111 = zext i32 %94 to i64, !mcsema_real_eip !19
  store i64 %111, i64* %XDI, !mcsema_real_eip !19
  %112 = add i64 %RBP_val.24, -12, !mcsema_real_eip !20
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !20
  %EAX_val.29 = load i32, i32* %EAX.8, !mcsema_real_eip !20
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %114, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %115 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !21
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %116, !mcsema_real_eip !21
  store i64 %115, i64* %XSP, !mcsema_real_eip !21
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !21
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !22
  %117 = add i64 %RBP_val.31, -12, !mcsema_real_eip !22
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !22
  %119 = inttoptr i64 %117 to i32*, !mcsema_real_eip !22
  %120 = load i32, i32* %119, !mcsema_real_eip !22
  %121 = zext i32 %120 to i64, !mcsema_real_eip !22
  store i64 %121, i64* %XDI, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.5, !mcsema_real_eip !23
  %EAX_val.35 = load i32, i32* %EAX.8, !mcsema_real_eip !23
  %122 = add i32 %EAX_val.35, %EDI_val.33, !mcsema_real_eip !23
  %123 = xor i32 %122, %EDI_val.33, !mcsema_real_eip !23
  %124 = xor i32 %123, %EAX_val.35, !mcsema_real_eip !23
  %125 = and i32 %124, 16, !mcsema_real_eip !23
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !23
  store i1 %126, i1* %AF, !mcsema_real_eip !23
  %127 = lshr i32 %122, 31, !mcsema_real_eip !23
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !23
  store i1 %128, i1* %SF, !mcsema_real_eip !23
  %129 = icmp eq i32 %122, 0, !mcsema_real_eip !23
  store i1 %129, i1* %ZF, !mcsema_real_eip !23
  %130 = xor i32 %EDI_val.33, %EAX_val.35, !mcsema_real_eip !23
  %131 = xor i32 %130, -1, !mcsema_real_eip !23
  %132 = and i32 %131, %123, !mcsema_real_eip !23
  %133 = lshr i32 %132, 31, !mcsema_real_eip !23
  %134 = and i32 %133, 1, !mcsema_real_eip !23
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !23
  store i1 %135, i1* %OF, !mcsema_real_eip !23
  %136 = trunc i32 %122 to i8, !mcsema_real_eip !23
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !23
  %138 = trunc i8 %137 to i1, !mcsema_real_eip !23
  %139 = xor i1 %138, true, !mcsema_real_eip !23
  store i1 %139, i1* %PF, !mcsema_real_eip !23
  %140 = icmp ult i32 %122, %EDI_val.33, !mcsema_real_eip !23
  store i1 %140, i1* %CF, !mcsema_real_eip !23
  %141 = zext i32 %122 to i64, !mcsema_real_eip !23
  store i64 %141, i64* %XDI, !mcsema_real_eip !23
  %142 = add i64 %RBP_val.31, -4, !mcsema_real_eip !24
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !24
  %EDI_val.38 = load i32, i32* %EDI.5, !mcsema_real_eip !24
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !24
  store i32 %EDI_val.38, i32* %144, !mcsema_real_eip !24
  br label %block_0x53, !mcsema_real_eip !25

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !25
  %145 = add i64 %RBP_val.39, -4, !mcsema_real_eip !25
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !25
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !25
  %148 = load i32, i32* %147, !mcsema_real_eip !25
  %149 = zext i32 %148 to i64, !mcsema_real_eip !25
  store i64 %149, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !26
  %150 = add i64 16, %RSP_val.40, !mcsema_real_eip !26
  %151 = xor i64 %150, %RSP_val.40, !mcsema_real_eip !26
  %152 = xor i64 %151, 16, !mcsema_real_eip !26
  %153 = and i64 %152, 16, !mcsema_real_eip !26
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !26
  store i1 %154, i1* %AF, !mcsema_real_eip !26
  %155 = lshr i64 %150, 63, !mcsema_real_eip !26
  %156 = trunc i64 %155 to i1, !mcsema_real_eip !26
  store i1 %156, i1* %SF, !mcsema_real_eip !26
  %157 = icmp eq i64 %150, 0, !mcsema_real_eip !26
  store i1 %157, i1* %ZF, !mcsema_real_eip !26
  %158 = xor i64 %RSP_val.40, 16, !mcsema_real_eip !26
  %159 = xor i64 %158, -1, !mcsema_real_eip !26
  %160 = and i64 %159, %151, !mcsema_real_eip !26
  %161 = lshr i64 %160, 63, !mcsema_real_eip !26
  %162 = and i64 %161, 1, !mcsema_real_eip !26
  %163 = trunc i64 %162 to i1, !mcsema_real_eip !26
  store i1 %163, i1* %OF, !mcsema_real_eip !26
  %164 = trunc i64 %150 to i8, !mcsema_real_eip !26
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !26
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !26
  %167 = xor i1 %166, true, !mcsema_real_eip !26
  store i1 %167, i1* %PF, !mcsema_real_eip !26
  %168 = icmp ult i64 %150, %RSP_val.40, !mcsema_real_eip !26
  store i1 %168, i1* %CF, !mcsema_real_eip !26
  store i64 %150, i64* %XSP, !mcsema_real_eip !26
  %169 = inttoptr i64 %150 to i64*, !mcsema_real_eip !27
  %170 = load i64, i64* %169, !mcsema_real_eip !27
  store i64 %170, i64* %XBP, !mcsema_real_eip !27
  %171 = add i64 %150, 8, !mcsema_real_eip !27
  store i64 %171, i64* %XSP, !mcsema_real_eip !27
  %172 = add i64 %171, 8, !mcsema_real_eip !28
  %173 = inttoptr i64 %171 to i64*, !mcsema_real_eip !28
  %174 = load i64, i64* %173, !mcsema_real_eip !28
  store i64 %174, i64* %XIP, !mcsema_real_eip !28
  store i64 %172, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !29
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !29
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !29
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !29
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !29
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !29
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !29
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !29
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !29
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !29
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !29
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !29
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !29
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !29
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !29
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !29
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !29
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !29
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !29
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !29
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !29
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !29
  br label %block_0x60, !mcsema_real_eip !29

block_0x60:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !29
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !30
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.46, 16, !mcsema_real_eip !31
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !31
  %4 = and i64 %3, 16, !mcsema_real_eip !31
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !31
  store i1 %5, i1* %AF, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !31
  %8 = xor i1 %7, true, !mcsema_real_eip !31
  store i1 %8, i1* %PF, !mcsema_real_eip !31
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !31
  %9 = lshr i64 %2, 63, !mcsema_real_eip !31
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !31
  store i1 %10, i1* %SF, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !31
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !31
  %12 = lshr i64 %11, 63, !mcsema_real_eip !31
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !31
  store i1 %13, i1* %OF, !mcsema_real_eip !31
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !31
  store i64 5, i64* %XDI, !mcsema_real_eip !32
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !33
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %15, !mcsema_real_eip !33
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !34
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !34
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !34
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_67)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !35
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !36
  %17 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !36
  store i64 %17, i64* %XSI, !mcsema_real_eip !36
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !37
  store i8 0, i8* %AL.51, !mcsema_real_eip !37
  %RDX_val.54 = load i64, i64* %XDX, !mcsema_real_eip !38
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !38
  %R8_val.56 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !38
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %18 = load i64, i64* %_allin_new_bt_20, !mcsema_real_eip !38
  %_new_gep_21 = getelementptr i8, i8* %_gep_fix_, i64 8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %19 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !38
  %_new_gep_23 = getelementptr i8, i8* %_new_gep_21, i64 8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !38
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_23, i64 8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %21 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !38
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %22 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !38
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %23 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !38
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %24 = load i64, i64* %_allin_new_bt_32, !mcsema_real_eip !38
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %25 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !38
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !38
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %27 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !38
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_40 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %28 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !38
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_41, !mcsema_real_eip !38
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %28, i64* %XSP, !mcsema_real_eip !38
  %29 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %17, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27)
  %_rsp_fix_69 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_70 = getelementptr i8, i8* %_rsp_fix_69, i64 8
  store i8* %_gep_fix_70, i8** %_RSP_ptr_
  store i64 %29, i64* %XAX, !mcsema_real_eip !38
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !39
  store i1 false, i1* %CF, !mcsema_real_eip !39
  store i1 false, i1* %OF, !mcsema_real_eip !39
  store i1 false, i1* %SF, !mcsema_real_eip !39
  store i1 true, i1* %ZF, !mcsema_real_eip !39
  store i1 true, i1* %PF, !mcsema_real_eip !39
  store i1 undef, i1* %AF, !mcsema_real_eip !39
  store i64 0, i64* %XSI, !mcsema_real_eip !39
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %EAX_val.66 = load i32, i32* %EAX.49, !mcsema_real_eip !40
  %30 = ptrtoint i64* %_allin_new_bt_44 to i64, !mcsema_real_eip !40
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.66, i32* %31, !mcsema_real_eip !40
  %ESI_val.68 = load i32, i32* %ESI.60, !mcsema_real_eip !41
  %32 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !41
  store i64 %32, i64* %XAX, !mcsema_real_eip !41
  %_load_rsp_ptr_45 = load i8*, i8** %_RSP_ptr_
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_45, i64 16
  %33 = add i64 16, %RSP_val.69, !mcsema_real_eip !42
  %_trans_p2i_47 = ptrtoint i8* %_new_gep_46 to i64
  %_trans_p2i_48 = ptrtoint i8* %_load_rsp_ptr_45 to i64
  %_trans_xor_49 = xor i64 %_trans_p2i_47, %_trans_p2i_48
  %34 = xor i64 %_trans_xor_49, 16, !mcsema_real_eip !42
  %35 = and i64 %34, 16, !mcsema_real_eip !42
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !42
  store i1 %36, i1* %AF, !mcsema_real_eip !42
  %37 = lshr i64 %33, 63, !mcsema_real_eip !42
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !42
  store i1 %38, i1* %SF, !mcsema_real_eip !42
  %_trans_icmp_eq_51 = icmp eq i64 %_trans_p2i_47, 0
  store i1 %_trans_icmp_eq_51, i1* %ZF, !mcsema_real_eip !42
  %_trans_xor_53 = xor i64 %_trans_p2i_48, 16
  %39 = xor i64 %_trans_xor_53, -1, !mcsema_real_eip !42
  %40 = and i64 %39, %_trans_xor_49, !mcsema_real_eip !42
  %41 = lshr i64 %40, 63, !mcsema_real_eip !42
  %42 = and i64 %41, 1, !mcsema_real_eip !42
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !42
  store i1 %43, i1* %OF, !mcsema_real_eip !42
  %_trans_trunc_58 = trunc i64 %_trans_p2i_47 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_58), !mcsema_real_eip !42
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !42
  %46 = xor i1 %45, true, !mcsema_real_eip !42
  store i1 %46, i1* %PF, !mcsema_real_eip !42
  %_trans_icmp_ne_60 = icmp ne i64 %_trans_p2i_47, %RSP_val.69
  store i1 %_trans_icmp_ne_60, i1* %CF, !mcsema_real_eip !42
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !42
  %_allin_new_bt_62 = bitcast i8* %_new_gep_46 to i64*
  %47 = load i64, i64* %_allin_new_bt_62, !mcsema_real_eip !43
  %_new_int2ptr_ = inttoptr i64 %47 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %47, i64* %XBP, !mcsema_real_eip !43
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_46, i64 8
  %48 = add i64 %33, 8, !mcsema_real_eip !43
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_63, i64 8
  %49 = add i64 %48, 8, !mcsema_real_eip !44
  %_allin_new_bt_66 = bitcast i8* %_new_gep_63 to i64*
  %50 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !44
  store i64 %50, i64* %XIP, !mcsema_real_eip !44
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 1, i64* %XAX, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !6
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !7
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %17 to i8*
  %_offset_above_rbp_ = sub i64 %16, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %19

; <label>:19:                                     ; preds = %block_0x0, %18
  %20 = phi i32* [ %17, %block_0x0 ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i32, i32* %20
  %21 = sub i32 %EAX_val.9, %_new_load_, !mcsema_real_eip !7
  %22 = xor i32 %21, %EAX_val.9, !mcsema_real_eip !7
  %23 = xor i32 %22, %_new_load_, !mcsema_real_eip !7
  %24 = and i32 %23, 16, !mcsema_real_eip !7
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !7
  store i1 %25, i1* %AF, !mcsema_real_eip !7
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !7
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !7
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !7
  %29 = xor i1 %28, true, !mcsema_real_eip !7
  store i1 %29, i1* %PF, !mcsema_real_eip !7
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !7
  store i1 %30, i1* %ZF, !mcsema_real_eip !7
  %31 = lshr i32 %21, 31, !mcsema_real_eip !7
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !7
  store i1 %32, i1* %SF, !mcsema_real_eip !7
  %33 = icmp ult i32 %EAX_val.9, %_new_load_, !mcsema_real_eip !7
  store i1 %33, i1* %CF, !mcsema_real_eip !7
  %34 = xor i32 %EAX_val.9, %_new_load_, !mcsema_real_eip !7
  %35 = and i32 %34, %22, !mcsema_real_eip !7
  %36 = lshr i32 %35, 31, !mcsema_real_eip !7
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !7
  store i1 %37, i1* %OF, !mcsema_real_eip !7
  br i1 %30, label %block_0x24, label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %19
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  store i1 false, i1* %SF, !mcsema_real_eip !9
  store i1 true, i1* %ZF, !mcsema_real_eip !9
  store i1 true, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  store i64 0, i64* %XAX, !mcsema_real_eip !9
  %EAX_val.16 = load i32, i32* %EAX.8, !mcsema_real_eip !10
  br i1 %_cond1_n_cond2_cond3_, label %38, label %39

; <label>:38:                                     ; preds = %block_0x19
  %_address_in_parent_stack_bt_90 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %39

; <label>:39:                                     ; preds = %block_0x19, %38
  %40 = phi i32* [ %17, %block_0x19 ], [ %_address_in_parent_stack_bt_90, %38 ]
  %_new_load_91 = load i32, i32* %40
  %41 = sub i32 %EAX_val.16, %_new_load_91, !mcsema_real_eip !10
  %42 = xor i32 %41, %EAX_val.16, !mcsema_real_eip !10
  %43 = xor i32 %42, %_new_load_91, !mcsema_real_eip !10
  %44 = and i32 %43, 16, !mcsema_real_eip !10
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !10
  store i1 %45, i1* %AF, !mcsema_real_eip !10
  %46 = trunc i32 %41 to i8, !mcsema_real_eip !10
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !10
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !10
  %49 = xor i1 %48, true, !mcsema_real_eip !10
  store i1 %49, i1* %PF, !mcsema_real_eip !10
  %50 = icmp eq i32 %41, 0, !mcsema_real_eip !10
  store i1 %50, i1* %ZF, !mcsema_real_eip !10
  %51 = lshr i32 %41, 31, !mcsema_real_eip !10
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !10
  store i1 %52, i1* %SF, !mcsema_real_eip !10
  %53 = icmp ult i32 %EAX_val.16, %_new_load_91, !mcsema_real_eip !10
  store i1 %53, i1* %CF, !mcsema_real_eip !10
  %54 = xor i32 %EAX_val.16, %_new_load_91, !mcsema_real_eip !10
  %55 = and i32 %54, %42, !mcsema_real_eip !10
  %56 = lshr i32 %55, 31, !mcsema_real_eip !10
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !10
  store i1 %57, i1* %OF, !mcsema_real_eip !10
  %58 = icmp eq i1 %50, false, !mcsema_real_eip !11
  br i1 %58, label %block_0x30, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %39, %19
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !12
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !12
  store i32 1, i32* %60, !mcsema_real_eip !12
  br label %block_0x53, !mcsema_real_eip !13

block_0x30:                                       ; preds = %39
  br i1 %_cond1_n_cond2_cond3_, label %61, label %62

; <label>:61:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %62

; <label>:62:                                     ; preds = %block_0x30, %61
  %63 = phi i32* [ %17, %block_0x30 ], [ %_address_in_parent_stack_bt_105, %61 ]
  %_new_load_106 = load i32, i32* %63
  %64 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !14
  store i64 %64, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.20 = load i32, i32* %EAX.8, !mcsema_real_eip !15
  %65 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %66 = xor i32 %65, %EAX_val.20, !mcsema_real_eip !15
  %67 = xor i32 %66, 1, !mcsema_real_eip !15
  %68 = and i32 %67, 16, !mcsema_real_eip !15
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !15
  store i1 %69, i1* %AF, !mcsema_real_eip !15
  %70 = trunc i32 %65 to i8, !mcsema_real_eip !15
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !15
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !15
  %73 = xor i1 %72, true, !mcsema_real_eip !15
  store i1 %73, i1* %PF, !mcsema_real_eip !15
  %74 = icmp eq i32 %65, 0, !mcsema_real_eip !15
  store i1 %74, i1* %ZF, !mcsema_real_eip !15
  %75 = lshr i32 %65, 31, !mcsema_real_eip !15
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !15
  store i1 %76, i1* %SF, !mcsema_real_eip !15
  %77 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !15
  store i1 %77, i1* %CF, !mcsema_real_eip !15
  %78 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %79 = and i32 %78, %66, !mcsema_real_eip !15
  %80 = lshr i32 %79, 31, !mcsema_real_eip !15
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !15
  store i1 %81, i1* %OF, !mcsema_real_eip !15
  %82 = zext i32 %65 to i64, !mcsema_real_eip !15
  store i64 %82, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.22 = load i32, i32* %EAX.8, !mcsema_real_eip !16
  %83 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !16
  store i64 %83, i64* %XDI, !mcsema_real_eip !16
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !17
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %84 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !17
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, !mcsema_real_eip !17
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %84, i64* %XSP, !mcsema_real_eip !17
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_29, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %85 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !18
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !18
  %_ptr_bt_109 = bitcast i32* %86 to i8*
  %_offset_above_rbp_110 = sub i64 %85, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_ptr_bt_109, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_ptr_bt_109, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_ptr_bt_109, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %87, label %88

; <label>:87:                                     ; preds = %62
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i32*
  br label %88

; <label>:88:                                     ; preds = %62, %87
  %89 = phi i32* [ %86, %62 ], [ %_address_in_parent_stack_bt_120, %87 ]
  %_new_load_121 = load i32, i32* %89
  %90 = zext i32 %_new_load_121 to i64, !mcsema_real_eip !18
  store i64 %90, i64* %XDI, !mcsema_real_eip !18
  %EDI_val.26 = load i32, i32* %EDI.5, !mcsema_real_eip !19
  %91 = sub i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %92 = xor i32 %91, %EDI_val.26, !mcsema_real_eip !19
  %93 = xor i32 %92, 2, !mcsema_real_eip !19
  %94 = and i32 %93, 16, !mcsema_real_eip !19
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !19
  store i1 %95, i1* %AF, !mcsema_real_eip !19
  %96 = trunc i32 %91 to i8, !mcsema_real_eip !19
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !19
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !19
  %99 = xor i1 %98, true, !mcsema_real_eip !19
  store i1 %99, i1* %PF, !mcsema_real_eip !19
  %100 = icmp eq i32 %91, 0, !mcsema_real_eip !19
  store i1 %100, i1* %ZF, !mcsema_real_eip !19
  %101 = lshr i32 %91, 31, !mcsema_real_eip !19
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !19
  store i1 %102, i1* %SF, !mcsema_real_eip !19
  %103 = icmp ult i32 %EDI_val.26, 2, !mcsema_real_eip !19
  store i1 %103, i1* %CF, !mcsema_real_eip !19
  %104 = xor i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %105 = and i32 %104, %92, !mcsema_real_eip !19
  %106 = lshr i32 %105, 31, !mcsema_real_eip !19
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !19
  store i1 %107, i1* %OF, !mcsema_real_eip !19
  %108 = zext i32 %91 to i64, !mcsema_real_eip !19
  store i64 %108, i64* %XDI, !mcsema_real_eip !19
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX_val.29 = load i32, i32* %EAX.8, !mcsema_real_eip !20
  %109 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !20
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %110, !mcsema_real_eip !20
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %111 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !21
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, !mcsema_real_eip !21
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %111, i64* %XSP, !mcsema_real_eip !21
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_73)
  %_rsp_fix_75 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_76 = getelementptr i8, i8* %_rsp_fix_75, i64 8
  store i8* %_gep_fix_76, i8** %_RSP_ptr_
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -12
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %112 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !22
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !22
  %_ptr_bt_124 = bitcast i32* %113 to i8*
  %_offset_above_rbp_125 = sub i64 %112, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_ptr_bt_124, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_ptr_bt_124, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_ptr_bt_124, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  br i1 %_cond1_n_cond2_cond3_133, label %114, label %115

; <label>:114:                                    ; preds = %88
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i32*
  br label %115

; <label>:115:                                    ; preds = %88, %114
  %116 = phi i32* [ %113, %88 ], [ %_address_in_parent_stack_bt_135, %114 ]
  %_new_load_136 = load i32, i32* %116
  %117 = zext i32 %_new_load_136 to i64, !mcsema_real_eip !22
  store i64 %117, i64* %XDI, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.5, !mcsema_real_eip !23
  %EAX_val.35 = load i32, i32* %EAX.8, !mcsema_real_eip !23
  %118 = add i32 %EAX_val.35, %EDI_val.33, !mcsema_real_eip !23
  %119 = xor i32 %118, %EDI_val.33, !mcsema_real_eip !23
  %120 = xor i32 %119, %EAX_val.35, !mcsema_real_eip !23
  %121 = and i32 %120, 16, !mcsema_real_eip !23
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !23
  store i1 %122, i1* %AF, !mcsema_real_eip !23
  %123 = lshr i32 %118, 31, !mcsema_real_eip !23
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !23
  store i1 %124, i1* %SF, !mcsema_real_eip !23
  %125 = icmp eq i32 %118, 0, !mcsema_real_eip !23
  store i1 %125, i1* %ZF, !mcsema_real_eip !23
  %126 = xor i32 %EDI_val.33, %EAX_val.35, !mcsema_real_eip !23
  %127 = xor i32 %126, -1, !mcsema_real_eip !23
  %128 = and i32 %127, %119, !mcsema_real_eip !23
  %129 = lshr i32 %128, 31, !mcsema_real_eip !23
  %130 = and i32 %129, 1, !mcsema_real_eip !23
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !23
  store i1 %131, i1* %OF, !mcsema_real_eip !23
  %132 = trunc i32 %118 to i8, !mcsema_real_eip !23
  %133 = call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !23
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !23
  %135 = xor i1 %134, true, !mcsema_real_eip !23
  store i1 %135, i1* %PF, !mcsema_real_eip !23
  %136 = icmp ult i32 %118, %EDI_val.33, !mcsema_real_eip !23
  store i1 %136, i1* %CF, !mcsema_real_eip !23
  %137 = zext i32 %118 to i64, !mcsema_real_eip !23
  store i64 %137, i64* %XDI, !mcsema_real_eip !23
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -4
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %EDI_val.38 = load i32, i32* %EDI.5, !mcsema_real_eip !24
  %138 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !24
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !24
  store i32 %EDI_val.38, i32* %139, !mcsema_real_eip !24
  br label %block_0x53, !mcsema_real_eip !25

block_0x53:                                       ; preds = %115, %block_0x24
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -4
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %140 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !25
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !25
  %_ptr_bt_139 = bitcast i32* %141 to i8*
  %_offset_above_rbp_140 = sub i64 %140, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_ptr_bt_139, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_ptr_bt_139, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_ptr_bt_139, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  br i1 %_cond1_n_cond2_cond3_148, label %142, label %143

; <label>:142:                                    ; preds = %block_0x53
  %_address_in_parent_stack_bt_150 = bitcast i8* %_pot_address_in_parent_stack_141 to i32*
  br label %143

; <label>:143:                                    ; preds = %block_0x53, %142
  %144 = phi i32* [ %141, %block_0x53 ], [ %_address_in_parent_stack_bt_150, %142 ]
  %_new_load_151 = load i32, i32* %144
  %145 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !25
  store i64 %145, i64* %XAX, !mcsema_real_eip !25
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 16
  %146 = add i64 16, %RSP_val.40, !mcsema_real_eip !26
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %147 = xor i64 %_trans_xor_53, 16, !mcsema_real_eip !26
  %148 = and i64 %147, 16, !mcsema_real_eip !26
  %149 = icmp ne i64 %148, 0, !mcsema_real_eip !26
  store i1 %149, i1* %AF, !mcsema_real_eip !26
  %150 = lshr i64 %146, 63, !mcsema_real_eip !26
  %151 = trunc i64 %150 to i1, !mcsema_real_eip !26
  store i1 %151, i1* %SF, !mcsema_real_eip !26
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !26
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 16
  %152 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !26
  %153 = and i64 %152, %_trans_xor_53, !mcsema_real_eip !26
  %154 = lshr i64 %153, 63, !mcsema_real_eip !26
  %155 = and i64 %154, 1, !mcsema_real_eip !26
  %156 = trunc i64 %155 to i1, !mcsema_real_eip !26
  store i1 %156, i1* %OF, !mcsema_real_eip !26
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %157 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !26
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !26
  %159 = xor i1 %158, true, !mcsema_real_eip !26
  store i1 %159, i1* %PF, !mcsema_real_eip !26
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.40
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %146, i64* %XSP, !mcsema_real_eip !26
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_152 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %160, label %161

; <label>:160:                                    ; preds = %143
  %_address_in_parent_stack_bt_165 = bitcast i8* %_pot_address_in_parent_stack_156 to i64*
  br label %161

; <label>:161:                                    ; preds = %143, %160
  %162 = phi i64* [ %_allin_new_bt_66, %143 ], [ %_address_in_parent_stack_bt_165, %160 ]
  %_new_load_166 = load i64, i64* %162
  %_new_int2ptr_ = inttoptr i64 %_new_load_166 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_166, i64* %XBP, !mcsema_real_eip !27
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %163 = add i64 %146, 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %163, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %164 = add i64 %163, 8, !mcsema_real_eip !28
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_167 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %165, label %166

; <label>:165:                                    ; preds = %161
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i64*
  br label %166

; <label>:166:                                    ; preds = %161, %165
  %167 = phi i64* [ %_allin_new_bt_70, %161 ], [ %_address_in_parent_stack_bt_180, %165 ]
  %_new_load_181 = load i64, i64* %167
  store i64 %_new_load_181, i64* %XIP, !mcsema_real_eip !28
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %164, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !29
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !29
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !29
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !29
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !29
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !29
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !29
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !29
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !29
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !29
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !29
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !29
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !29
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !29
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !29
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !29
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !29
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !29
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !29
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !29
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !29
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !29
  br label %block_0x60, !mcsema_real_eip !29

block_0x60:                                       ; preds = %entry
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !29
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !30
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.46, 16, !mcsema_real_eip !31
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !31
  %4 = and i64 %3, 16, !mcsema_real_eip !31
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !31
  store i1 %5, i1* %AF, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !31
  %8 = xor i1 %7, true, !mcsema_real_eip !31
  store i1 %8, i1* %PF, !mcsema_real_eip !31
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !31
  %9 = lshr i64 %2, 63, !mcsema_real_eip !31
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !31
  store i1 %10, i1* %SF, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !31
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !31
  %12 = lshr i64 %11, 63, !mcsema_real_eip !31
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !31
  store i1 %13, i1* %OF, !mcsema_real_eip !31
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !31
  store i64 5, i64* %XDI, !mcsema_real_eip !32
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !33
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %15, !mcsema_real_eip !33
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !34
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !34
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !34
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_67)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !35
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !36
  %17 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !36
  store i64 %17, i64* %XSI, !mcsema_real_eip !36
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !37
  store i8 0, i8* %AL.51, !mcsema_real_eip !37
  %RDX_val.54 = load i64, i64* %XDX, !mcsema_real_eip !38
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !38
  %R8_val.56 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !38
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_20 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_gep_fix_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_gep_fix_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_gep_fix_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %19

; <label>:19:                                     ; preds = %block_0x60, %18
  %20 = phi i64* [ %_allin_new_bt_20, %block_0x60 ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i64, i64* %20
  %_new_gep_21 = getelementptr i8, i8* %_gep_fix_, i64 8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_71 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_74 = sub i64 %_ptr_to_int_71, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %21, label %22

; <label>:21:                                     ; preds = %19
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  br label %22

; <label>:22:                                     ; preds = %19, %21
  %23 = phi i64* [ %_allin_new_bt_22, %19 ], [ %_address_in_parent_stack_bt_84, %21 ]
  %_new_load_85 = load i64, i64* %23
  %_new_gep_23 = getelementptr i8, i8* %_new_gep_21, i64 8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_86 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  br i1 %_cond1_n_cond2_cond3_97, label %24, label %25

; <label>:24:                                     ; preds = %22
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i64*
  br label %25

; <label>:25:                                     ; preds = %22, %24
  %26 = phi i64* [ %_allin_new_bt_24, %22 ], [ %_address_in_parent_stack_bt_99, %24 ]
  %_new_load_100 = load i64, i64* %26
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_23, i64 8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %_ptr_to_int_101 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %27, label %28

; <label>:27:                                     ; preds = %25
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i64*
  br label %28

; <label>:28:                                     ; preds = %25, %27
  %29 = phi i64* [ %_allin_new_bt_26, %25 ], [ %_address_in_parent_stack_bt_114, %27 ]
  %_new_load_115 = load i64, i64* %29
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_116 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %30, label %31

; <label>:30:                                     ; preds = %28
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i64*
  br label %31

; <label>:31:                                     ; preds = %28, %30
  %32 = phi i64* [ %_allin_new_bt_28, %28 ], [ %_address_in_parent_stack_bt_129, %30 ]
  %_new_load_130 = load i64, i64* %32
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_131 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %33, label %34

; <label>:33:                                     ; preds = %31
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i64*
  br label %34

; <label>:34:                                     ; preds = %31, %33
  %35 = phi i64* [ %_allin_new_bt_30, %31 ], [ %_address_in_parent_stack_bt_144, %33 ]
  %_new_load_145 = load i64, i64* %35
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_146 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %36, label %37

; <label>:36:                                     ; preds = %34
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %37

; <label>:37:                                     ; preds = %34, %36
  %38 = phi i64* [ %_allin_new_bt_32, %34 ], [ %_address_in_parent_stack_bt_159, %36 ]
  %_new_load_160 = load i64, i64* %38
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_161 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %39, label %40

; <label>:39:                                     ; preds = %37
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_165 to i64*
  br label %40

; <label>:40:                                     ; preds = %37, %39
  %41 = phi i64* [ %_allin_new_bt_34, %37 ], [ %_address_in_parent_stack_bt_174, %39 ]
  %_new_load_175 = load i64, i64* %41
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_176 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %42, label %43

; <label>:42:                                     ; preds = %40
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i64*
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i64* [ %_allin_new_bt_36, %40 ], [ %_address_in_parent_stack_bt_189, %42 ]
  %_new_load_190 = load i64, i64* %44
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_191 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_191, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %45, label %46

; <label>:45:                                     ; preds = %43
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i64*
  br label %46

; <label>:46:                                     ; preds = %43, %45
  %47 = phi i64* [ %_allin_new_bt_38, %43 ], [ %_address_in_parent_stack_bt_204, %45 ]
  %_new_load_205 = load i64, i64* %47
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_40 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %48 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !38
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_41, !mcsema_real_eip !38
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !38
  %49 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %17, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %_new_load_, i64 %_new_load_85, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130, i64 %_new_load_145, i64 %_new_load_160, i64 %_new_load_175, i64 %_new_load_190, i64 %_new_load_205)
  %_rsp_fix_69 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_70 = getelementptr i8, i8* %_rsp_fix_69, i64 8
  store i8* %_gep_fix_70, i8** %_RSP_ptr_
  store i64 %49, i64* %XAX, !mcsema_real_eip !38
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !39
  store i1 false, i1* %CF, !mcsema_real_eip !39
  store i1 false, i1* %OF, !mcsema_real_eip !39
  store i1 false, i1* %SF, !mcsema_real_eip !39
  store i1 true, i1* %ZF, !mcsema_real_eip !39
  store i1 true, i1* %PF, !mcsema_real_eip !39
  store i1 undef, i1* %AF, !mcsema_real_eip !39
  store i64 0, i64* %XSI, !mcsema_real_eip !39
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %EAX_val.66 = load i32, i32* %EAX.49, !mcsema_real_eip !40
  %50 = ptrtoint i64* %_allin_new_bt_44 to i64, !mcsema_real_eip !40
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.66, i32* %51, !mcsema_real_eip !40
  %ESI_val.68 = load i32, i32* %ESI.60, !mcsema_real_eip !41
  %52 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !41
  store i64 %52, i64* %XAX, !mcsema_real_eip !41
  %_load_rsp_ptr_45 = load i8*, i8** %_RSP_ptr_
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_45, i64 16
  %53 = add i64 16, %RSP_val.69, !mcsema_real_eip !42
  %_trans_p2i_47 = ptrtoint i8* %_new_gep_46 to i64
  %_trans_p2i_48 = ptrtoint i8* %_load_rsp_ptr_45 to i64
  %_trans_xor_49 = xor i64 %_trans_p2i_47, %_trans_p2i_48
  %54 = xor i64 %_trans_xor_49, 16, !mcsema_real_eip !42
  %55 = and i64 %54, 16, !mcsema_real_eip !42
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !42
  store i1 %56, i1* %AF, !mcsema_real_eip !42
  %57 = lshr i64 %53, 63, !mcsema_real_eip !42
  %58 = trunc i64 %57 to i1, !mcsema_real_eip !42
  store i1 %58, i1* %SF, !mcsema_real_eip !42
  %_trans_icmp_eq_51 = icmp eq i64 %_trans_p2i_47, 0
  store i1 %_trans_icmp_eq_51, i1* %ZF, !mcsema_real_eip !42
  %_trans_xor_53 = xor i64 %_trans_p2i_48, 16
  %59 = xor i64 %_trans_xor_53, -1, !mcsema_real_eip !42
  %60 = and i64 %59, %_trans_xor_49, !mcsema_real_eip !42
  %61 = lshr i64 %60, 63, !mcsema_real_eip !42
  %62 = and i64 %61, 1, !mcsema_real_eip !42
  %63 = trunc i64 %62 to i1, !mcsema_real_eip !42
  store i1 %63, i1* %OF, !mcsema_real_eip !42
  %_trans_trunc_58 = trunc i64 %_trans_p2i_47 to i8
  %64 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_58), !mcsema_real_eip !42
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !42
  %66 = xor i1 %65, true, !mcsema_real_eip !42
  store i1 %66, i1* %PF, !mcsema_real_eip !42
  %_trans_icmp_ne_60 = icmp ne i64 %_trans_p2i_47, %RSP_val.69
  store i1 %_trans_icmp_ne_60, i1* %CF, !mcsema_real_eip !42
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %53, i64* %XSP, !mcsema_real_eip !42
  %_allin_new_bt_62 = bitcast i8* %_new_gep_46 to i64*
  %_ptr_to_int_206 = ptrtoint i64* %_allin_new_bt_62 to i64
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %67, label %68

; <label>:67:                                     ; preds = %46
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i64*
  br label %68

; <label>:68:                                     ; preds = %46, %67
  %69 = phi i64* [ %_allin_new_bt_62, %46 ], [ %_address_in_parent_stack_bt_219, %67 ]
  %_new_load_220 = load i64, i64* %69
  %_new_int2ptr_ = inttoptr i64 %_new_load_220 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_220, i64* %XBP, !mcsema_real_eip !43
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_46, i64 8
  %70 = add i64 %53, 8, !mcsema_real_eip !43
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %70, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_63, i64 8
  %71 = add i64 %70, 8, !mcsema_real_eip !44
  %_allin_new_bt_66 = bitcast i8* %_new_gep_63 to i64*
  %_ptr_to_int_221 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %72, label %73

; <label>:72:                                     ; preds = %68
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %73

; <label>:73:                                     ; preds = %68, %72
  %74 = phi i64* [ %_allin_new_bt_66, %68 ], [ %_address_in_parent_stack_bt_234, %72 ]
  %_new_load_235 = load i64, i64* %74
  store i64 %_new_load_235, i64* %XIP, !mcsema_real_eip !44
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %71, i64* %XSP, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

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
!6 = !{i64 13}
!7 = !{i64 16}
!8 = !{i64 19}
!9 = !{i64 25}
!10 = !{i64 27}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 43}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 64}
!20 = !{i64 67}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 80}
!25 = !{i64 83}
!26 = !{i64 86}
!27 = !{i64 90}
!28 = !{i64 91}
!29 = !{i64 96}
!30 = !{i64 97}
!31 = !{i64 100}
!32 = !{i64 104}
!33 = !{i64 109}
!34 = !{i64 116}
!35 = !{i64 121}
!36 = !{i64 131}
!37 = !{i64 133}
!38 = !{i64 135}
!39 = !{i64 140}
!40 = !{i64 142}
!41 = !{i64 145}
!42 = !{i64 147}
!43 = !{i64 151}
!44 = !{i64 152}
