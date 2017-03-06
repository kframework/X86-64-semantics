; ModuleID = 'Output/test_31.clang.opt.bc'
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
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !29
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !29
  %1 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !29
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !29
  store i64 %RBP_val.43, i64* %2, !mcsema_real_eip !29
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  store i64 %1, i64* %XBP, !mcsema_real_eip !30
  %3 = sub i64 %1, 16, !mcsema_real_eip !31
  %4 = xor i64 %3, %1, !mcsema_real_eip !31
  %5 = xor i64 %4, 16, !mcsema_real_eip !31
  %6 = and i64 %5, 16, !mcsema_real_eip !31
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !31
  store i1 %7, i1* %AF, !mcsema_real_eip !31
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !31
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !31
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !31
  %11 = xor i1 %10, true, !mcsema_real_eip !31
  store i1 %11, i1* %PF, !mcsema_real_eip !31
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !31
  store i1 %12, i1* %ZF, !mcsema_real_eip !31
  %13 = lshr i64 %3, 63, !mcsema_real_eip !31
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !31
  store i1 %14, i1* %SF, !mcsema_real_eip !31
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !31
  store i1 %15, i1* %CF, !mcsema_real_eip !31
  %16 = xor i64 %1, 16, !mcsema_real_eip !31
  %17 = and i64 %16, %4, !mcsema_real_eip !31
  %18 = lshr i64 %17, 63, !mcsema_real_eip !31
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !31
  store i1 %19, i1* %OF, !mcsema_real_eip !31
  store i64 %3, i64* %XSP, !mcsema_real_eip !31
  store i64 5, i64* %XDI, !mcsema_real_eip !32
  %20 = add i64 %1, -4, !mcsema_real_eip !33
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !33
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %22, !mcsema_real_eip !33
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !34
  %23 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !34
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !34
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !34
  store i64 %23, i64* %XSP, !mcsema_real_eip !34
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !34
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !35
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !36
  %25 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !36
  store i64 %25, i64* %XSI, !mcsema_real_eip !36
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !37
  store i8 0, i8* %AL.51, !mcsema_real_eip !37
  %RDX_val.54 = load i64, i64* %XDX, !mcsema_real_eip !38
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !38
  %R8_val.56 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !38
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !38
  %26 = inttoptr i64 %RSP_val.58 to i64*, !mcsema_real_eip !38
  %27 = load i64, i64* %26, !mcsema_real_eip !38
  %28 = add i64 %RSP_val.58, 8, !mcsema_real_eip !38
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !38
  %30 = load i64, i64* %29, !mcsema_real_eip !38
  %31 = add i64 %28, 8, !mcsema_real_eip !38
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !38
  %33 = load i64, i64* %32, !mcsema_real_eip !38
  %34 = add i64 %31, 8, !mcsema_real_eip !38
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !38
  %36 = load i64, i64* %35, !mcsema_real_eip !38
  %37 = add i64 %34, 8, !mcsema_real_eip !38
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !38
  %39 = load i64, i64* %38, !mcsema_real_eip !38
  %40 = add i64 %37, 8, !mcsema_real_eip !38
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !38
  %42 = load i64, i64* %41, !mcsema_real_eip !38
  %43 = add i64 %40, 8, !mcsema_real_eip !38
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !38
  %45 = load i64, i64* %44, !mcsema_real_eip !38
  %46 = add i64 %43, 8, !mcsema_real_eip !38
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !38
  %48 = load i64, i64* %47, !mcsema_real_eip !38
  %49 = add i64 %46, 8, !mcsema_real_eip !38
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !38
  %51 = load i64, i64* %50, !mcsema_real_eip !38
  %52 = add i64 %49, 8, !mcsema_real_eip !38
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !38
  %54 = load i64, i64* %53, !mcsema_real_eip !38
  %55 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !38
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !38
  store i64 -2415393069852865332, i64* %56, !mcsema_real_eip !38
  store i64 %55, i64* %XSP, !mcsema_real_eip !38
  %57 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %25, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42, i64 %45, i64 %48, i64 %51, i64 %54), !mcsema_real_eip !38
  store i64 %57, i64* %XAX, !mcsema_real_eip !38
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !39
  store i1 false, i1* %CF, !mcsema_real_eip !39
  store i1 false, i1* %OF, !mcsema_real_eip !39
  store i1 false, i1* %SF, !mcsema_real_eip !39
  store i1 true, i1* %ZF, !mcsema_real_eip !39
  store i1 true, i1* %PF, !mcsema_real_eip !39
  store i1 undef, i1* %AF, !mcsema_real_eip !39
  store i64 0, i64* %XSI, !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !40
  %58 = add i64 %RBP_val.64, -8, !mcsema_real_eip !40
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !40
  %EAX_val.66 = load i32, i32* %EAX.49, !mcsema_real_eip !40
  %60 = inttoptr i64 %58 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.66, i32* %60, !mcsema_real_eip !40
  %ESI_val.68 = load i32, i32* %ESI.60, !mcsema_real_eip !41
  %61 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !41
  store i64 %61, i64* %XAX, !mcsema_real_eip !41
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !42
  %62 = add i64 16, %RSP_val.69, !mcsema_real_eip !42
  %63 = xor i64 %62, %RSP_val.69, !mcsema_real_eip !42
  %64 = xor i64 %63, 16, !mcsema_real_eip !42
  %65 = and i64 %64, 16, !mcsema_real_eip !42
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !42
  store i1 %66, i1* %AF, !mcsema_real_eip !42
  %67 = lshr i64 %62, 63, !mcsema_real_eip !42
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !42
  store i1 %68, i1* %SF, !mcsema_real_eip !42
  %69 = icmp eq i64 %62, 0, !mcsema_real_eip !42
  store i1 %69, i1* %ZF, !mcsema_real_eip !42
  %70 = xor i64 %RSP_val.69, 16, !mcsema_real_eip !42
  %71 = xor i64 %70, -1, !mcsema_real_eip !42
  %72 = and i64 %71, %63, !mcsema_real_eip !42
  %73 = lshr i64 %72, 63, !mcsema_real_eip !42
  %74 = and i64 %73, 1, !mcsema_real_eip !42
  %75 = trunc i64 %74 to i1, !mcsema_real_eip !42
  store i1 %75, i1* %OF, !mcsema_real_eip !42
  %76 = trunc i64 %62 to i8, !mcsema_real_eip !42
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !42
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !42
  %79 = xor i1 %78, true, !mcsema_real_eip !42
  store i1 %79, i1* %PF, !mcsema_real_eip !42
  %80 = icmp ult i64 %62, %RSP_val.69, !mcsema_real_eip !42
  store i1 %80, i1* %CF, !mcsema_real_eip !42
  store i64 %62, i64* %XSP, !mcsema_real_eip !42
  %81 = inttoptr i64 %62 to i64*, !mcsema_real_eip !43
  %82 = load i64, i64* %81, !mcsema_real_eip !43
  store i64 %82, i64* %XBP, !mcsema_real_eip !43
  %83 = add i64 %62, 8, !mcsema_real_eip !43
  store i64 %83, i64* %XSP, !mcsema_real_eip !43
  %84 = add i64 %83, 8, !mcsema_real_eip !44
  %85 = inttoptr i64 %83 to i64*, !mcsema_real_eip !44
  %86 = load i64, i64* %85, !mcsema_real_eip !44
  store i64 %86, i64* %XIP, !mcsema_real_eip !44
  store i64 %84, i64* %XSP, !mcsema_real_eip !44
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
