; ModuleID = 'Output/test_32.clang.trans.bc'
source_filename = "Output/test_32.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"Z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sub i64 %1, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 32, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -16, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !6
  %24 = load i64, i64* %23, !mcsema_real_eip !6
  %25 = sub i64 %24, 2, !mcsema_real_eip !6
  %26 = xor i64 %25, %24, !mcsema_real_eip !6
  %27 = xor i64 %26, 2, !mcsema_real_eip !6
  %28 = and i64 %27, 16, !mcsema_real_eip !6
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !6
  store i1 %29, i1* %AF, !mcsema_real_eip !6
  %30 = trunc i64 %25 to i8, !mcsema_real_eip !6
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !6
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !6
  %33 = xor i1 %32, true, !mcsema_real_eip !6
  store i1 %33, i1* %PF, !mcsema_real_eip !6
  %34 = icmp eq i64 %25, 0, !mcsema_real_eip !6
  store i1 %34, i1* %ZF, !mcsema_real_eip !6
  %35 = lshr i64 %25, 63, !mcsema_real_eip !6
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !6
  store i1 %36, i1* %SF, !mcsema_real_eip !6
  %37 = icmp ult i64 %24, 2, !mcsema_real_eip !6
  store i1 %37, i1* %CF, !mcsema_real_eip !6
  %38 = xor i64 %24, 2, !mcsema_real_eip !6
  %39 = and i64 %38, %26, !mcsema_real_eip !6
  %40 = lshr i64 %39, 63, !mcsema_real_eip !6
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !6
  store i1 %41, i1* %OF, !mcsema_real_eip !6
  %42 = icmp eq i1 %37, false, !mcsema_real_eip !7
  br i1 %42, label %block_0x24, label %block_0x17, !mcsema_real_eip !7

block_0x17:                                       ; preds = %block_0x0
  %43 = add i64 %RBP_val.6, -8, !mcsema_real_eip !8
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !8
  store i64 1, i64* %44, !mcsema_real_eip !8
  br label %block_0x50, !mcsema_real_eip !9

block_0x24:                                       ; preds = %block_0x0
  %45 = load i64, i64* %23, !mcsema_real_eip !10
  store i64 %45, i64* %XAX, !mcsema_real_eip !10
  %46 = sub i64 %45, 2, !mcsema_real_eip !11
  %47 = xor i64 %46, %45, !mcsema_real_eip !11
  %48 = xor i64 %47, 2, !mcsema_real_eip !11
  %49 = and i64 %48, 16, !mcsema_real_eip !11
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !11
  store i1 %50, i1* %AF, !mcsema_real_eip !11
  %51 = trunc i64 %46 to i8, !mcsema_real_eip !11
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !11
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !11
  %54 = xor i1 %53, true, !mcsema_real_eip !11
  store i1 %54, i1* %PF, !mcsema_real_eip !11
  %55 = icmp eq i64 %46, 0, !mcsema_real_eip !11
  store i1 %55, i1* %ZF, !mcsema_real_eip !11
  %56 = lshr i64 %46, 63, !mcsema_real_eip !11
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !11
  store i1 %57, i1* %SF, !mcsema_real_eip !11
  %58 = icmp ult i64 %45, 2, !mcsema_real_eip !11
  store i1 %58, i1* %CF, !mcsema_real_eip !11
  %59 = xor i64 %45, 2, !mcsema_real_eip !11
  %60 = and i64 %59, %47, !mcsema_real_eip !11
  %61 = lshr i64 %60, 63, !mcsema_real_eip !11
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !11
  store i1 %62, i1* %OF, !mcsema_real_eip !11
  store i64 %46, i64* %XAX, !mcsema_real_eip !11
  store i64 %46, i64* %XDI, !mcsema_real_eip !12
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !13
  %63 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !13
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %64, !mcsema_real_eip !13
  store i64 %63, i64* %XSP, !mcsema_real_eip !13
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !13
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !14
  %65 = add i64 %RBP_val.12, -16, !mcsema_real_eip !14
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !14
  %67 = load i64, i64* %66, !mcsema_real_eip !14
  store i64 %67, i64* %XDI, !mcsema_real_eip !14
  %68 = sub i64 %67, 1, !mcsema_real_eip !15
  %69 = xor i64 %68, %67, !mcsema_real_eip !15
  %70 = xor i64 %69, 1, !mcsema_real_eip !15
  %71 = and i64 %70, 16, !mcsema_real_eip !15
  %72 = icmp ne i64 %71, 0, !mcsema_real_eip !15
  store i1 %72, i1* %AF, !mcsema_real_eip !15
  %73 = trunc i64 %68 to i8, !mcsema_real_eip !15
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !15
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !15
  %76 = xor i1 %75, true, !mcsema_real_eip !15
  store i1 %76, i1* %PF, !mcsema_real_eip !15
  %77 = icmp eq i64 %68, 0, !mcsema_real_eip !15
  store i1 %77, i1* %ZF, !mcsema_real_eip !15
  %78 = lshr i64 %68, 63, !mcsema_real_eip !15
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !15
  store i1 %79, i1* %SF, !mcsema_real_eip !15
  %80 = icmp ult i64 %67, 1, !mcsema_real_eip !15
  store i1 %80, i1* %CF, !mcsema_real_eip !15
  %81 = xor i64 %67, 1, !mcsema_real_eip !15
  %82 = and i64 %81, %69, !mcsema_real_eip !15
  %83 = lshr i64 %82, 63, !mcsema_real_eip !15
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !15
  store i1 %84, i1* %OF, !mcsema_real_eip !15
  store i64 %68, i64* %XDI, !mcsema_real_eip !15
  %85 = add i64 %RBP_val.12, -24, !mcsema_real_eip !16
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !16
  %RAX_val.15 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.15, i64* %86, !mcsema_real_eip !16
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !17
  %87 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !17
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %88, !mcsema_real_eip !17
  store i64 %87, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !18
  %89 = add i64 %RBP_val.17, -24, !mcsema_real_eip !18
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !18
  %91 = load i64, i64* %90, !mcsema_real_eip !18
  store i64 %91, i64* %XDI, !mcsema_real_eip !18
  %RAX_val.19 = load i64, i64* %XAX, !mcsema_real_eip !19
  %92 = add i64 %RAX_val.19, %91, !mcsema_real_eip !19
  %93 = xor i64 %92, %91, !mcsema_real_eip !19
  %94 = xor i64 %93, %RAX_val.19, !mcsema_real_eip !19
  %95 = and i64 %94, 16, !mcsema_real_eip !19
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !19
  store i1 %96, i1* %AF, !mcsema_real_eip !19
  %97 = lshr i64 %92, 63, !mcsema_real_eip !19
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !19
  store i1 %98, i1* %SF, !mcsema_real_eip !19
  %99 = icmp eq i64 %92, 0, !mcsema_real_eip !19
  store i1 %99, i1* %ZF, !mcsema_real_eip !19
  %100 = xor i64 %91, %RAX_val.19, !mcsema_real_eip !19
  %101 = xor i64 %100, -1, !mcsema_real_eip !19
  %102 = and i64 %101, %93, !mcsema_real_eip !19
  %103 = lshr i64 %102, 63, !mcsema_real_eip !19
  %104 = and i64 %103, 1, !mcsema_real_eip !19
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !19
  store i1 %105, i1* %OF, !mcsema_real_eip !19
  %106 = trunc i64 %92 to i8, !mcsema_real_eip !19
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !19
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !19
  %109 = xor i1 %108, true, !mcsema_real_eip !19
  store i1 %109, i1* %PF, !mcsema_real_eip !19
  %110 = icmp ult i64 %92, %91, !mcsema_real_eip !19
  store i1 %110, i1* %CF, !mcsema_real_eip !19
  store i64 %92, i64* %XDI, !mcsema_real_eip !19
  %111 = add i64 %RBP_val.17, -8, !mcsema_real_eip !20
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !20
  store i64 %92, i64* %112, !mcsema_real_eip !20
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !21
  %113 = add i64 %RBP_val.22, -8, !mcsema_real_eip !21
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !21
  %115 = load i64, i64* %114, !mcsema_real_eip !21
  store i64 %115, i64* %XAX, !mcsema_real_eip !21
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !22
  %116 = add i64 32, %RSP_val.23, !mcsema_real_eip !22
  %117 = xor i64 %116, %RSP_val.23, !mcsema_real_eip !22
  %118 = xor i64 %117, 32, !mcsema_real_eip !22
  %119 = and i64 %118, 16, !mcsema_real_eip !22
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !22
  store i1 %120, i1* %AF, !mcsema_real_eip !22
  %121 = lshr i64 %116, 63, !mcsema_real_eip !22
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !22
  store i1 %122, i1* %SF, !mcsema_real_eip !22
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !22
  store i1 %123, i1* %ZF, !mcsema_real_eip !22
  %124 = xor i64 %RSP_val.23, 32, !mcsema_real_eip !22
  %125 = xor i64 %124, -1, !mcsema_real_eip !22
  %126 = and i64 %125, %117, !mcsema_real_eip !22
  %127 = lshr i64 %126, 63, !mcsema_real_eip !22
  %128 = and i64 %127, 1, !mcsema_real_eip !22
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !22
  store i1 %129, i1* %OF, !mcsema_real_eip !22
  %130 = trunc i64 %116 to i8, !mcsema_real_eip !22
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !22
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !22
  %133 = xor i1 %132, true, !mcsema_real_eip !22
  store i1 %133, i1* %PF, !mcsema_real_eip !22
  %134 = icmp ult i64 %116, %RSP_val.23, !mcsema_real_eip !22
  store i1 %134, i1* %CF, !mcsema_real_eip !22
  store i64 %116, i64* %XSP, !mcsema_real_eip !22
  %135 = inttoptr i64 %116 to i64*, !mcsema_real_eip !23
  %136 = load i64, i64* %135, !mcsema_real_eip !23
  store i64 %136, i64* %XBP, !mcsema_real_eip !23
  %137 = add i64 %116, 8, !mcsema_real_eip !23
  store i64 %137, i64* %XSP, !mcsema_real_eip !23
  %138 = add i64 %137, 8, !mcsema_real_eip !24
  %139 = inttoptr i64 %137 to i64*, !mcsema_real_eip !24
  %140 = load i64, i64* %139, !mcsema_real_eip !24
  store i64 %140, i64* %XIP, !mcsema_real_eip !24
  store i64 %138, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !25
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !25
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !25
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !25
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !25
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !25
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !25
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !25
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !25
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !25
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !25
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !25
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !25
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !25
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !25
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !25
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !25
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !25
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !25
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !25
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !25
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !25
  br label %block_0x60, !mcsema_real_eip !25

block_0x60:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.27, 8, !mcsema_real_eip !25
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !25
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !26
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.29, 32, !mcsema_real_eip !27
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !27
  %4 = and i64 %3, 16, !mcsema_real_eip !27
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !27
  store i1 %5, i1* %AF, !mcsema_real_eip !27
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !27
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !27
  %8 = xor i1 %7, true, !mcsema_real_eip !27
  store i1 %8, i1* %PF, !mcsema_real_eip !27
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !27
  %9 = lshr i64 %2, 63, !mcsema_real_eip !27
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !27
  store i1 %10, i1* %SF, !mcsema_real_eip !27
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !27
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !27
  %12 = lshr i64 %11, 63, !mcsema_real_eip !27
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !27
  store i1 %13, i1* %OF, !mcsema_real_eip !27
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !27
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !28
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !28
  store i32 0, i32* %15, !mcsema_real_eip !28
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !29
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !29
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !29
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !29
  store i32 %EDI_val.33, i32* %17, !mcsema_real_eip !29
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !30
  store i64 %RSI_val.35, i64* %_allin_new_bt_21, !mcsema_real_eip !30
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !31
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !31
  %20 = load i32, i32* %19, !mcsema_real_eip !31
  %21 = sub i32 %20, 2, !mcsema_real_eip !31
  %22 = xor i32 %21, %20, !mcsema_real_eip !31
  %23 = xor i32 %22, 2, !mcsema_real_eip !31
  %24 = and i32 %23, 16, !mcsema_real_eip !31
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !31
  store i1 %25, i1* %AF, !mcsema_real_eip !31
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !31
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !31
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !31
  %29 = xor i1 %28, true, !mcsema_real_eip !31
  store i1 %29, i1* %PF, !mcsema_real_eip !31
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !31
  store i1 %30, i1* %ZF, !mcsema_real_eip !31
  %31 = lshr i32 %21, 31, !mcsema_real_eip !31
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !31
  store i1 %32, i1* %SF, !mcsema_real_eip !31
  %33 = icmp ult i32 %20, 2, !mcsema_real_eip !31
  store i1 %33, i1* %CF, !mcsema_real_eip !31
  %34 = xor i32 %20, 2, !mcsema_real_eip !31
  %35 = and i32 %34, %22, !mcsema_real_eip !31
  %36 = lshr i32 %35, 31, !mcsema_real_eip !31
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !31
  store i1 %37, i1* %OF, !mcsema_real_eip !31
  %38 = icmp eq i1 %30, false, !mcsema_real_eip !32
  br i1 %38, label %block_0x95, label %block_0x80, !mcsema_real_eip !32

block_0x80:                                       ; preds = %block_0x60
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %39 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !33
  store i64 %39, i64* %XAX, !mcsema_real_eip !33
  %40 = add i64 %39, 8, !mcsema_real_eip !34
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !34
  %42 = load i64, i64* %41, !mcsema_real_eip !34
  store i64 %42, i64* %XDI, !mcsema_real_eip !34
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %43 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !35
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !35
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !35
  %44 = call x86_64_sysvcc i64 @_atoi(i64 %42)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %44, i64* %XAX, !mcsema_real_eip !35
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !36
  %45 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !36
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.43, i32* %46, !mcsema_real_eip !36
  br label %block_0xa2, !mcsema_real_eip !37

block_0x95:                                       ; preds = %block_0x60
  store i64 20, i64* %XAX, !mcsema_real_eip !38
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !39
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !39
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.46, i32* %48, !mcsema_real_eip !39
  br label %block_0xa2, !mcsema_real_eip !40

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !41
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !41
  %51 = load i32, i32* %50, !mcsema_real_eip !41
  %52 = zext i32 %51 to i64, !mcsema_real_eip !41
  store i64 %52, i64* %XAX, !mcsema_real_eip !41
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !42
  %53 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !42
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.50, i32* %54, !mcsema_real_eip !42
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !43
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !43
  %57 = load i32, i32* %56, !mcsema_real_eip !43
  %58 = sext i32 %57 to i64, !mcsema_real_eip !43
  store i64 %58, i64* %XDI, !mcsema_real_eip !43
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !44
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %59 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !44
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, !mcsema_real_eip !44
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %59, i64* %XSP, !mcsema_real_eip !44
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_91 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_92 = getelementptr i8, i8* %_rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !45
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.53, i64* %XSI, !mcsema_real_eip !46
  %AL.54 = bitcast i64* %XAX to i8*, !mcsema_real_eip !47
  store i8 0, i8* %AL.54, !mcsema_real_eip !47
  %RDX_val.57 = load i64, i64* %XDX, !mcsema_real_eip !48
  %RCX_val.58 = load i64, i64* %XCX, !mcsema_real_eip !48
  %R8_val.59 = load i64, i64* %R8, !mcsema_real_eip !48
  %R9_val.60 = load i64, i64* %R9, !mcsema_real_eip !48
  %_allin_new_bt_50 = bitcast i8* %_gep_fix_92 to i64*
  %60 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !48
  %_new_gep_51 = getelementptr i8, i8* %_gep_fix_92, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %61 = load i64, i64* %_allin_new_bt_52, !mcsema_real_eip !48
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %62 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !48
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %63 = load i64, i64* %_allin_new_bt_56, !mcsema_real_eip !48
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %64 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !48
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %65 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !48
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_62 = getelementptr i8, i8* %_gep_fix_92, i64 -8
  %66 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, !mcsema_real_eip !48
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %66, i64* %XSP, !mcsema_real_eip !48
  %67 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.53, i64 %RDX_val.57, i64 %RCX_val.58, i64 %R8_val.59, i64 %R9_val.60, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  store i64 %67, i64* %XAX, !mcsema_real_eip !48
  %ECX.63 = bitcast i64* %XCX to i32*, !mcsema_real_eip !49
  %ECX_val.64 = load i32, i32* %ECX.63, !mcsema_real_eip !49
  store i1 false, i1* %CF, !mcsema_real_eip !49
  store i1 false, i1* %OF, !mcsema_real_eip !49
  store i1 false, i1* %SF, !mcsema_real_eip !49
  store i1 true, i1* %ZF, !mcsema_real_eip !49
  store i1 true, i1* %PF, !mcsema_real_eip !49
  store i1 undef, i1* %AF, !mcsema_real_eip !49
  store i64 0, i64* %XCX, !mcsema_real_eip !49
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EAX_val.69 = load i32, i32* %EAX.49, !mcsema_real_eip !50
  %68 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !50
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !50
  store i32 %EAX_val.69, i32* %69, !mcsema_real_eip !50
  %ECX_val.71 = load i32, i32* %ECX.63, !mcsema_real_eip !51
  %70 = zext i32 %ECX_val.71 to i64, !mcsema_real_eip !51
  store i64 %70, i64* %XAX, !mcsema_real_eip !51
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 32
  %71 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %72 = xor i64 %_trans_xor_71, 32, !mcsema_real_eip !52
  %73 = and i64 %72, 16, !mcsema_real_eip !52
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !52
  store i1 %74, i1* %AF, !mcsema_real_eip !52
  %75 = lshr i64 %71, 63, !mcsema_real_eip !52
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !52
  store i1 %76, i1* %SF, !mcsema_real_eip !52
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !52
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 32
  %77 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !52
  %78 = and i64 %77, %_trans_xor_71, !mcsema_real_eip !52
  %79 = lshr i64 %78, 63, !mcsema_real_eip !52
  %80 = and i64 %79, 1, !mcsema_real_eip !52
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !52
  store i1 %81, i1* %OF, !mcsema_real_eip !52
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %82 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !52
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !52
  %84 = xor i1 %83, true, !mcsema_real_eip !52
  store i1 %84, i1* %PF, !mcsema_real_eip !52
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.72
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !52
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %71, i64* %XSP, !mcsema_real_eip !52
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %85 = load i64, i64* %_allin_new_bt_84, !mcsema_real_eip !53
  %_new_int2ptr_ = inttoptr i64 %85 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %85, i64* %XBP, !mcsema_real_eip !53
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %86 = add i64 %71, 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %86, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %87 = add i64 %86, 8, !mcsema_real_eip !54
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %88 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !54
  store i64 %88, i64* %XIP, !mcsema_real_eip !54
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %87, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %14, label %15

; <label>:14:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %15

; <label>:15:                                     ; preds = %block_0x0, %14
  %16 = phi i64* [ %_allin_new_bt_18, %block_0x0 ], [ %_address_in_parent_stack_bt_, %14 ]
  %_new_load_ = load i64, i64* %16
  %17 = sub i64 %_new_load_, 2, !mcsema_real_eip !6
  %18 = xor i64 %17, %_new_load_, !mcsema_real_eip !6
  %19 = xor i64 %18, 2, !mcsema_real_eip !6
  %20 = and i64 %19, 16, !mcsema_real_eip !6
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !6
  store i1 %21, i1* %AF, !mcsema_real_eip !6
  %22 = trunc i64 %17 to i8, !mcsema_real_eip !6
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !6
  %24 = trunc i8 %23 to i1, !mcsema_real_eip !6
  %25 = xor i1 %24, true, !mcsema_real_eip !6
  store i1 %25, i1* %PF, !mcsema_real_eip !6
  %26 = icmp eq i64 %17, 0, !mcsema_real_eip !6
  store i1 %26, i1* %ZF, !mcsema_real_eip !6
  %27 = lshr i64 %17, 63, !mcsema_real_eip !6
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !6
  store i1 %28, i1* %SF, !mcsema_real_eip !6
  %29 = icmp ult i64 %_new_load_, 2, !mcsema_real_eip !6
  store i1 %29, i1* %CF, !mcsema_real_eip !6
  %30 = xor i64 %_new_load_, 2, !mcsema_real_eip !6
  %31 = and i64 %30, %18, !mcsema_real_eip !6
  %32 = lshr i64 %31, 63, !mcsema_real_eip !6
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !6
  store i1 %33, i1* %OF, !mcsema_real_eip !6
  %34 = icmp eq i1 %29, false, !mcsema_real_eip !7
  br i1 %34, label %block_0x24, label %block_0x17, !mcsema_real_eip !7

block_0x17:                                       ; preds = %15
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 1, i64* %_allin_new_bt_21, !mcsema_real_eip !8
  br label %block_0x50, !mcsema_real_eip !9

block_0x24:                                       ; preds = %15
  br i1 %_cond1_n_cond2_cond3_, label %35, label %36

; <label>:35:                                     ; preds = %block_0x24
  %_address_in_parent_stack_bt_87 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %36

; <label>:36:                                     ; preds = %block_0x24, %35
  %37 = phi i64* [ %_allin_new_bt_18, %block_0x24 ], [ %_address_in_parent_stack_bt_87, %35 ]
  %_new_load_88 = load i64, i64* %37
  store i64 %_new_load_88, i64* %XAX, !mcsema_real_eip !10
  %38 = sub i64 %_new_load_88, 2, !mcsema_real_eip !11
  %39 = xor i64 %38, %_new_load_88, !mcsema_real_eip !11
  %40 = xor i64 %39, 2, !mcsema_real_eip !11
  %41 = and i64 %40, 16, !mcsema_real_eip !11
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !11
  store i1 %42, i1* %AF, !mcsema_real_eip !11
  %43 = trunc i64 %38 to i8, !mcsema_real_eip !11
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !11
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !11
  %46 = xor i1 %45, true, !mcsema_real_eip !11
  store i1 %46, i1* %PF, !mcsema_real_eip !11
  %47 = icmp eq i64 %38, 0, !mcsema_real_eip !11
  store i1 %47, i1* %ZF, !mcsema_real_eip !11
  %48 = lshr i64 %38, 63, !mcsema_real_eip !11
  %49 = trunc i64 %48 to i1, !mcsema_real_eip !11
  store i1 %49, i1* %SF, !mcsema_real_eip !11
  %50 = icmp ult i64 %_new_load_88, 2, !mcsema_real_eip !11
  store i1 %50, i1* %CF, !mcsema_real_eip !11
  %51 = xor i64 %_new_load_88, 2, !mcsema_real_eip !11
  %52 = and i64 %51, %39, !mcsema_real_eip !11
  %53 = lshr i64 %52, 63, !mcsema_real_eip !11
  %54 = trunc i64 %53 to i1, !mcsema_real_eip !11
  store i1 %54, i1* %OF, !mcsema_real_eip !11
  store i64 %38, i64* %XAX, !mcsema_real_eip !11
  store i64 %38, i64* %XDI, !mcsema_real_eip !12
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %55 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !13
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_27, !mcsema_real_eip !13
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !13
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_26, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_68)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_89 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_92 = sub i64 %_ptr_to_int_89, %_local_end_to_int_
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_92
  %_cond1_94 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  br i1 %_cond1_n_cond2_cond3_100, label %56, label %57

; <label>:56:                                     ; preds = %36
  %_address_in_parent_stack_bt_102 = bitcast i8* %_pot_address_in_parent_stack_93 to i64*
  br label %57

; <label>:57:                                     ; preds = %36, %56
  %58 = phi i64* [ %_allin_new_bt_30, %36 ], [ %_address_in_parent_stack_bt_102, %56 ]
  %_new_load_103 = load i64, i64* %58
  store i64 %_new_load_103, i64* %XDI, !mcsema_real_eip !14
  %59 = sub i64 %_new_load_103, 1, !mcsema_real_eip !15
  %60 = xor i64 %59, %_new_load_103, !mcsema_real_eip !15
  %61 = xor i64 %60, 1, !mcsema_real_eip !15
  %62 = and i64 %61, 16, !mcsema_real_eip !15
  %63 = icmp ne i64 %62, 0, !mcsema_real_eip !15
  store i1 %63, i1* %AF, !mcsema_real_eip !15
  %64 = trunc i64 %59 to i8, !mcsema_real_eip !15
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !15
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !15
  %67 = xor i1 %66, true, !mcsema_real_eip !15
  store i1 %67, i1* %PF, !mcsema_real_eip !15
  %68 = icmp eq i64 %59, 0, !mcsema_real_eip !15
  store i1 %68, i1* %ZF, !mcsema_real_eip !15
  %69 = lshr i64 %59, 63, !mcsema_real_eip !15
  %70 = trunc i64 %69 to i1, !mcsema_real_eip !15
  store i1 %70, i1* %SF, !mcsema_real_eip !15
  %71 = icmp ult i64 %_new_load_103, 1, !mcsema_real_eip !15
  store i1 %71, i1* %CF, !mcsema_real_eip !15
  %72 = xor i64 %_new_load_103, 1, !mcsema_real_eip !15
  %73 = and i64 %72, %60, !mcsema_real_eip !15
  %74 = lshr i64 %73, 63, !mcsema_real_eip !15
  %75 = trunc i64 %74 to i1, !mcsema_real_eip !15
  store i1 %75, i1* %OF, !mcsema_real_eip !15
  store i64 %59, i64* %XDI, !mcsema_real_eip !15
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %RAX_val.15 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.15, i64* %_allin_new_bt_33, !mcsema_real_eip !16
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !17
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 -8
  %76 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !17
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !17
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !17
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_70)
  %_rsp_fix_72 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_73 = getelementptr i8, i8* %_rsp_fix_72, i64 8
  store i8* %_gep_fix_73, i8** %_RSP_ptr_
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_104 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_104, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %77, label %78

; <label>:77:                                     ; preds = %57
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i64*
  br label %78

; <label>:78:                                     ; preds = %57, %77
  %79 = phi i64* [ %_allin_new_bt_39, %57 ], [ %_address_in_parent_stack_bt_117, %77 ]
  %_new_load_118 = load i64, i64* %79
  store i64 %_new_load_118, i64* %XDI, !mcsema_real_eip !18
  %RAX_val.19 = load i64, i64* %XAX, !mcsema_real_eip !19
  %80 = add i64 %RAX_val.19, %_new_load_118, !mcsema_real_eip !19
  %81 = xor i64 %80, %_new_load_118, !mcsema_real_eip !19
  %82 = xor i64 %81, %RAX_val.19, !mcsema_real_eip !19
  %83 = and i64 %82, 16, !mcsema_real_eip !19
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !19
  store i1 %84, i1* %AF, !mcsema_real_eip !19
  %85 = lshr i64 %80, 63, !mcsema_real_eip !19
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !19
  store i1 %86, i1* %SF, !mcsema_real_eip !19
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !19
  store i1 %87, i1* %ZF, !mcsema_real_eip !19
  %88 = xor i64 %_new_load_118, %RAX_val.19, !mcsema_real_eip !19
  %89 = xor i64 %88, -1, !mcsema_real_eip !19
  %90 = and i64 %89, %81, !mcsema_real_eip !19
  %91 = lshr i64 %90, 63, !mcsema_real_eip !19
  %92 = and i64 %91, 1, !mcsema_real_eip !19
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !19
  store i1 %93, i1* %OF, !mcsema_real_eip !19
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !19
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !19
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !19
  %97 = xor i1 %96, true, !mcsema_real_eip !19
  store i1 %97, i1* %PF, !mcsema_real_eip !19
  %98 = icmp ult i64 %80, %_new_load_118, !mcsema_real_eip !19
  store i1 %98, i1* %CF, !mcsema_real_eip !19
  store i64 %80, i64* %XDI, !mcsema_real_eip !19
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %80, i64* %_allin_new_bt_42, !mcsema_real_eip !20
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %78, %block_0x17
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_119 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_122 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  br i1 %_cond1_n_cond2_cond3_130, label %99, label %100

; <label>:99:                                     ; preds = %block_0x50
  %_address_in_parent_stack_bt_132 = bitcast i8* %_pot_address_in_parent_stack_123 to i64*
  br label %100

; <label>:100:                                    ; preds = %block_0x50, %99
  %101 = phi i64* [ %_allin_new_bt_45, %block_0x50 ], [ %_address_in_parent_stack_bt_132, %99 ]
  %_new_load_133 = load i64, i64* %101
  store i64 %_new_load_133, i64* %XAX, !mcsema_real_eip !21
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 32
  %102 = add i64 32, %RSP_val.23, !mcsema_real_eip !22
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %103 = xor i64 %_trans_xor_50, 32, !mcsema_real_eip !22
  %104 = and i64 %103, 16, !mcsema_real_eip !22
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !22
  store i1 %105, i1* %AF, !mcsema_real_eip !22
  %106 = lshr i64 %102, 63, !mcsema_real_eip !22
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !22
  store i1 %107, i1* %SF, !mcsema_real_eip !22
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !22
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 32
  %108 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !22
  %109 = and i64 %108, %_trans_xor_50, !mcsema_real_eip !22
  %110 = lshr i64 %109, 63, !mcsema_real_eip !22
  %111 = and i64 %110, 1, !mcsema_real_eip !22
  %112 = trunc i64 %111 to i1, !mcsema_real_eip !22
  store i1 %112, i1* %OF, !mcsema_real_eip !22
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %113 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !22
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !22
  %115 = xor i1 %114, true, !mcsema_real_eip !22
  store i1 %115, i1* %PF, !mcsema_real_eip !22
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.23
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !22
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %102, i64* %XSP, !mcsema_real_eip !22
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %116, label %117

; <label>:116:                                    ; preds = %100
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %117

; <label>:117:                                    ; preds = %100, %116
  %118 = phi i64* [ %_allin_new_bt_63, %100 ], [ %_address_in_parent_stack_bt_147, %116 ]
  %_new_load_148 = load i64, i64* %118
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_148, i64* %XBP, !mcsema_real_eip !23
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %119 = add i64 %102, 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %119, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %120 = add i64 %119, 8, !mcsema_real_eip !24
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %121, label %122

; <label>:121:                                    ; preds = %117
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %122

; <label>:122:                                    ; preds = %117, %121
  %123 = phi i64* [ %_allin_new_bt_67, %117 ], [ %_address_in_parent_stack_bt_162, %121 ]
  %_new_load_163 = load i64, i64* %123
  store i64 %_new_load_163, i64* %XIP, !mcsema_real_eip !24
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %120, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !25
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !25
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !25
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !25
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !25
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !25
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !25
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !25
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !25
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !25
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !25
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !25
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !25
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !25
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !25
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !25
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !25
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !25
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !25
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !25
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !25
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !25
  br label %block_0x60, !mcsema_real_eip !25

block_0x60:                                       ; preds = %entry
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.27, 8, !mcsema_real_eip !25
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !25
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !26
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.29, 32, !mcsema_real_eip !27
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !27
  %4 = and i64 %3, 16, !mcsema_real_eip !27
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !27
  store i1 %5, i1* %AF, !mcsema_real_eip !27
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !27
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !27
  %8 = xor i1 %7, true, !mcsema_real_eip !27
  store i1 %8, i1* %PF, !mcsema_real_eip !27
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !27
  %9 = lshr i64 %2, 63, !mcsema_real_eip !27
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !27
  store i1 %10, i1* %SF, !mcsema_real_eip !27
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !27
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !27
  %12 = lshr i64 %11, 63, !mcsema_real_eip !27
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !27
  store i1 %13, i1* %OF, !mcsema_real_eip !27
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !27
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !28
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !28
  store i32 0, i32* %15, !mcsema_real_eip !28
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !29
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !29
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !29
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !29
  store i32 %EDI_val.33, i32* %17, !mcsema_real_eip !29
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !30
  store i64 %RSI_val.35, i64* %_allin_new_bt_21, !mcsema_real_eip !30
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !31
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !31
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x60, %20
  %22 = phi i32* [ %19, %block_0x60 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 2, !mcsema_real_eip !31
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !31
  %25 = xor i32 %24, 2, !mcsema_real_eip !31
  %26 = and i32 %25, 16, !mcsema_real_eip !31
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !31
  store i1 %27, i1* %AF, !mcsema_real_eip !31
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !31
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !31
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !31
  %31 = xor i1 %30, true, !mcsema_real_eip !31
  store i1 %31, i1* %PF, !mcsema_real_eip !31
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !31
  store i1 %32, i1* %ZF, !mcsema_real_eip !31
  %33 = lshr i32 %23, 31, !mcsema_real_eip !31
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !31
  store i1 %34, i1* %SF, !mcsema_real_eip !31
  %35 = icmp ult i32 %_new_load_, 2, !mcsema_real_eip !31
  store i1 %35, i1* %CF, !mcsema_real_eip !31
  %36 = xor i32 %_new_load_, 2, !mcsema_real_eip !31
  %37 = and i32 %36, %24, !mcsema_real_eip !31
  %38 = lshr i32 %37, 31, !mcsema_real_eip !31
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !31
  store i1 %39, i1* %OF, !mcsema_real_eip !31
  %40 = icmp eq i1 %32, false, !mcsema_real_eip !32
  br i1 %40, label %block_0x95, label %block_0x80, !mcsema_real_eip !32

block_0x80:                                       ; preds = %21
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %41, label %42

; <label>:41:                                     ; preds = %block_0x80
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %42

; <label>:42:                                     ; preds = %block_0x80, %41
  %43 = phi i64* [ %_allin_new_bt_27, %block_0x80 ], [ %_address_in_parent_stack_bt_108, %41 ]
  %_new_load_109 = load i64, i64* %43
  store i64 %_new_load_109, i64* %XAX, !mcsema_real_eip !33
  %44 = add i64 %_new_load_109, 8, !mcsema_real_eip !34
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !34
  %_ptr_bt_112 = bitcast i64* %45 to i8*
  %_offset_above_rbp_113 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_ptr_bt_112, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_ptr_bt_112, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_ptr_bt_112, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %46, label %47

; <label>:46:                                     ; preds = %42
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %47

; <label>:47:                                     ; preds = %42, %46
  %48 = phi i64* [ %45, %42 ], [ %_address_in_parent_stack_bt_123, %46 ]
  %_new_load_124 = load i64, i64* %48
  store i64 %_new_load_124, i64* %XDI, !mcsema_real_eip !34
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %49 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !35
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !35
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !35
  %50 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_124)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %50, i64* %XAX, !mcsema_real_eip !35
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !36
  %51 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !36
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.43, i32* %52, !mcsema_real_eip !36
  br label %block_0xa2, !mcsema_real_eip !37

block_0x95:                                       ; preds = %21
  store i64 20, i64* %XAX, !mcsema_real_eip !38
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !39
  %53 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !39
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.46, i32* %54, !mcsema_real_eip !39
  br label %block_0xa2, !mcsema_real_eip !40

block_0xa2:                                       ; preds = %block_0x95, %47
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !41
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !41
  %_ptr_bt_127 = bitcast i32* %56 to i8*
  %_offset_above_rbp_128 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_ptr_bt_127, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %57, label %58

; <label>:57:                                     ; preds = %block_0xa2
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  br label %58

; <label>:58:                                     ; preds = %block_0xa2, %57
  %59 = phi i32* [ %56, %block_0xa2 ], [ %_address_in_parent_stack_bt_138, %57 ]
  %_new_load_139 = load i32, i32* %59
  %60 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !41
  store i64 %60, i64* %XAX, !mcsema_real_eip !41
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !42
  %61 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !42
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.50, i32* %62, !mcsema_real_eip !42
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !43
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !43
  %_ptr_bt_142 = bitcast i32* %64 to i8*
  %_offset_above_rbp_143 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_ptr_bt_142, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_ptr_bt_142, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_ptr_bt_142, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  br i1 %_cond1_n_cond2_cond3_151, label %65, label %66

; <label>:65:                                     ; preds = %58
  %_address_in_parent_stack_bt_153 = bitcast i8* %_pot_address_in_parent_stack_144 to i32*
  br label %66

; <label>:66:                                     ; preds = %58, %65
  %67 = phi i32* [ %64, %58 ], [ %_address_in_parent_stack_bt_153, %65 ]
  %_new_load_154 = load i32, i32* %67
  %68 = sext i32 %_new_load_154 to i64, !mcsema_real_eip !43
  store i64 %68, i64* %XDI, !mcsema_real_eip !43
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !44
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %69 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !44
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, !mcsema_real_eip !44
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %69, i64* %XSP, !mcsema_real_eip !44
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_91 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_92 = getelementptr i8, i8* %_rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !45
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.53, i64* %XSI, !mcsema_real_eip !46
  %AL.54 = bitcast i64* %XAX to i8*, !mcsema_real_eip !47
  store i8 0, i8* %AL.54, !mcsema_real_eip !47
  %RDX_val.57 = load i64, i64* %XDX, !mcsema_real_eip !48
  %RCX_val.58 = load i64, i64* %XCX, !mcsema_real_eip !48
  %R8_val.59 = load i64, i64* %R8, !mcsema_real_eip !48
  %R9_val.60 = load i64, i64* %R9, !mcsema_real_eip !48
  %_allin_new_bt_50 = bitcast i8* %_gep_fix_92 to i64*
  %_ptr_to_int_155 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_158 = sub i64 %_ptr_to_int_155, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_gep_fix_92, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_gep_fix_92, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_gep_fix_92, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %70, label %71

; <label>:70:                                     ; preds = %66
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i64*
  br label %71

; <label>:71:                                     ; preds = %66, %70
  %72 = phi i64* [ %_allin_new_bt_50, %66 ], [ %_address_in_parent_stack_bt_168, %70 ]
  %_new_load_169 = load i64, i64* %72
  %_new_gep_51 = getelementptr i8, i8* %_gep_fix_92, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_170 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  br i1 %_cond1_n_cond2_cond3_181, label %73, label %74

; <label>:73:                                     ; preds = %71
  %_address_in_parent_stack_bt_183 = bitcast i8* %_pot_address_in_parent_stack_174 to i64*
  br label %74

; <label>:74:                                     ; preds = %71, %73
  %75 = phi i64* [ %_allin_new_bt_52, %71 ], [ %_address_in_parent_stack_bt_183, %73 ]
  %_new_load_184 = load i64, i64* %75
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_185 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_188 = sub i64 %_ptr_to_int_185, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  br i1 %_cond1_n_cond2_cond3_196, label %76, label %77

; <label>:76:                                     ; preds = %74
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i64*
  br label %77

; <label>:77:                                     ; preds = %74, %76
  %78 = phi i64* [ %_allin_new_bt_54, %74 ], [ %_address_in_parent_stack_bt_198, %76 ]
  %_new_load_199 = load i64, i64* %78
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_200 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  br i1 %_cond1_n_cond2_cond3_211, label %79, label %80

; <label>:79:                                     ; preds = %77
  %_address_in_parent_stack_bt_213 = bitcast i8* %_pot_address_in_parent_stack_204 to i64*
  br label %80

; <label>:80:                                     ; preds = %77, %79
  %81 = phi i64* [ %_allin_new_bt_56, %77 ], [ %_address_in_parent_stack_bt_213, %79 ]
  %_new_load_214 = load i64, i64* %81
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %_ptr_to_int_215 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_offset_above_rbp_218 = sub i64 %_ptr_to_int_215, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  br i1 %_cond1_n_cond2_cond3_226, label %82, label %83

; <label>:82:                                     ; preds = %80
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i64*
  br label %83

; <label>:83:                                     ; preds = %80, %82
  %84 = phi i64* [ %_allin_new_bt_58, %80 ], [ %_address_in_parent_stack_bt_228, %82 ]
  %_new_load_229 = load i64, i64* %84
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_230 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  br i1 %_cond1_n_cond2_cond3_241, label %85, label %86

; <label>:85:                                     ; preds = %83
  %_address_in_parent_stack_bt_243 = bitcast i8* %_pot_address_in_parent_stack_234 to i64*
  br label %86

; <label>:86:                                     ; preds = %83, %85
  %87 = phi i64* [ %_allin_new_bt_60, %83 ], [ %_address_in_parent_stack_bt_243, %85 ]
  %_new_load_244 = load i64, i64* %87
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_62 = getelementptr i8, i8* %_gep_fix_92, i64 -8
  %88 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, !mcsema_real_eip !48
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %88, i64* %XSP, !mcsema_real_eip !48
  %89 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.53, i64 %RDX_val.57, i64 %RCX_val.58, i64 %R8_val.59, i64 %R9_val.60, i64 %_new_load_169, i64 %_new_load_184, i64 %_new_load_199, i64 %_new_load_214, i64 %_new_load_229, i64 %_new_load_244)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  store i64 %89, i64* %XAX, !mcsema_real_eip !48
  %ECX.63 = bitcast i64* %XCX to i32*, !mcsema_real_eip !49
  %ECX_val.64 = load i32, i32* %ECX.63, !mcsema_real_eip !49
  store i1 false, i1* %CF, !mcsema_real_eip !49
  store i1 false, i1* %OF, !mcsema_real_eip !49
  store i1 false, i1* %SF, !mcsema_real_eip !49
  store i1 true, i1* %ZF, !mcsema_real_eip !49
  store i1 true, i1* %PF, !mcsema_real_eip !49
  store i1 undef, i1* %AF, !mcsema_real_eip !49
  store i64 0, i64* %XCX, !mcsema_real_eip !49
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EAX_val.69 = load i32, i32* %EAX.49, !mcsema_real_eip !50
  %90 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !50
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !50
  store i32 %EAX_val.69, i32* %91, !mcsema_real_eip !50
  %ECX_val.71 = load i32, i32* %ECX.63, !mcsema_real_eip !51
  %92 = zext i32 %ECX_val.71 to i64, !mcsema_real_eip !51
  store i64 %92, i64* %XAX, !mcsema_real_eip !51
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 32
  %93 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %94 = xor i64 %_trans_xor_71, 32, !mcsema_real_eip !52
  %95 = and i64 %94, 16, !mcsema_real_eip !52
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !52
  store i1 %96, i1* %AF, !mcsema_real_eip !52
  %97 = lshr i64 %93, 63, !mcsema_real_eip !52
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !52
  store i1 %98, i1* %SF, !mcsema_real_eip !52
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !52
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 32
  %99 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !52
  %100 = and i64 %99, %_trans_xor_71, !mcsema_real_eip !52
  %101 = lshr i64 %100, 63, !mcsema_real_eip !52
  %102 = and i64 %101, 1, !mcsema_real_eip !52
  %103 = trunc i64 %102 to i1, !mcsema_real_eip !52
  store i1 %103, i1* %OF, !mcsema_real_eip !52
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %104 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !52
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !52
  %106 = xor i1 %105, true, !mcsema_real_eip !52
  store i1 %106, i1* %PF, !mcsema_real_eip !52
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.72
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !52
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %93, i64* %XSP, !mcsema_real_eip !52
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_245 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_offset_above_rbp_248 = sub i64 %_ptr_to_int_245, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  br i1 %_cond1_n_cond2_cond3_256, label %107, label %108

; <label>:107:                                    ; preds = %86
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i64*
  br label %108

; <label>:108:                                    ; preds = %86, %107
  %109 = phi i64* [ %_allin_new_bt_84, %86 ], [ %_address_in_parent_stack_bt_258, %107 ]
  %_new_load_259 = load i64, i64* %109
  %_new_int2ptr_ = inttoptr i64 %_new_load_259 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_259, i64* %XBP, !mcsema_real_eip !53
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %110 = add i64 %93, 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %110, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %111 = add i64 %110, 8, !mcsema_real_eip !54
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_260 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  br i1 %_cond1_n_cond2_cond3_271, label %112, label %113

; <label>:112:                                    ; preds = %108
  %_address_in_parent_stack_bt_273 = bitcast i8* %_pot_address_in_parent_stack_264 to i64*
  br label %113

; <label>:113:                                    ; preds = %108, %112
  %114 = phi i64* [ %_allin_new_bt_88, %108 ], [ %_address_in_parent_stack_bt_273, %112 ]
  %_new_load_274 = load i64, i64* %114
  store i64 %_new_load_274, i64* %XIP, !mcsema_real_eip !54
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %111, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
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
!6 = !{i64 12}
!7 = !{i64 17}
!8 = !{i64 23}
!9 = !{i64 31}
!10 = !{i64 36}
!11 = !{i64 40}
!12 = !{i64 44}
!13 = !{i64 47}
!14 = !{i64 52}
!15 = !{i64 56}
!16 = !{i64 60}
!17 = !{i64 64}
!18 = !{i64 69}
!19 = !{i64 73}
!20 = !{i64 76}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 88}
!24 = !{i64 89}
!25 = !{i64 96}
!26 = !{i64 97}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 111}
!30 = !{i64 114}
!31 = !{i64 118}
!32 = !{i64 122}
!33 = !{i64 128}
!34 = !{i64 132}
!35 = !{i64 136}
!36 = !{i64 141}
!37 = !{i64 144}
!38 = !{i64 149}
!39 = !{i64 154}
!40 = !{i64 157}
!41 = !{i64 162}
!42 = !{i64 165}
!43 = !{i64 168}
!44 = !{i64 172}
!45 = !{i64 177}
!46 = !{i64 187}
!47 = !{i64 190}
!48 = !{i64 192}
!49 = !{i64 197}
!50 = !{i64 199}
!51 = !{i64 202}
!52 = !{i64 204}
!53 = !{i64 208}
!54 = !{i64 209}
