; ModuleID = 'Output/test_29.clang.trans.bc'
source_filename = "Output/test_29.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64
@data_0x100 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"^\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !2
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !2
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !2
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !2
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !2
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !2
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !2
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !2
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !2
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !2
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !2
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !2
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !2
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !2
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !2
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !2
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !2
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !2
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !2
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !2
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !2
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %23 = add i64 %RBP_val.5, -36, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %25, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.6, -36, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  %29 = load i32, i32* %28, !mcsema_real_eip !7
  %30 = sub i32 %29, 5, !mcsema_real_eip !7
  %31 = xor i32 %30, %29, !mcsema_real_eip !7
  %32 = xor i32 %31, 5, !mcsema_real_eip !7
  %33 = and i32 %32, 16, !mcsema_real_eip !7
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !7
  store i1 %34, i1* %AF, !mcsema_real_eip !7
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !7
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !7
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !7
  %38 = xor i1 %37, true, !mcsema_real_eip !7
  store i1 %38, i1* %PF, !mcsema_real_eip !7
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !7
  store i1 %39, i1* %ZF, !mcsema_real_eip !7
  %40 = lshr i32 %30, 31, !mcsema_real_eip !7
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !7
  store i1 %41, i1* %SF, !mcsema_real_eip !7
  %42 = icmp ult i32 %29, 5, !mcsema_real_eip !7
  store i1 %42, i1* %CF, !mcsema_real_eip !7
  %43 = xor i32 %29, 5, !mcsema_real_eip !7
  %44 = and i32 %43, %31, !mcsema_real_eip !7
  %45 = lshr i32 %44, 31, !mcsema_real_eip !7
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !7
  store i1 %46, i1* %OF, !mcsema_real_eip !7
  %47 = icmp eq i1 %41, %46, !mcsema_real_eip !8
  br i1 %47, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %48 = add i64 %RBP_val.6, -32, !mcsema_real_eip !9
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !9
  store i64 %48, i64* %XSI, !mcsema_real_eip !9
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %50, !mcsema_real_eip !10
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !11
  %51 = add i64 %RBP_val.16, -28, !mcsema_real_eip !11
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !11
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %53, !mcsema_real_eip !11
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !12
  %54 = add i64 %RBP_val.17, -24, !mcsema_real_eip !12
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !12
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %56, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %57 = add i64 %RBP_val.18, -20, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %59 = inttoptr i64 %57 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %59, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %60 = add i64 %RBP_val.19, -36, !mcsema_real_eip !14
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !14
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !14
  %63 = load i32, i32* %62, !mcsema_real_eip !14
  %64 = zext i32 %63 to i64, !mcsema_real_eip !14
  store i64 %64, i64* %XDI, !mcsema_real_eip !14
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %65 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %66, !mcsema_real_eip !15
  store i64 %65, i64* %XSP, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %67 = add i64 %RBP_val.21, -36, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !16
  %69 = inttoptr i64 %67 to i32*, !mcsema_real_eip !16
  %70 = load i32, i32* %69, !mcsema_real_eip !16
  %71 = zext i32 %70 to i64, !mcsema_real_eip !16
  store i64 %71, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %72 = add i32 1, %EAX_val.23, !mcsema_real_eip !17
  %73 = xor i32 %72, %EAX_val.23, !mcsema_real_eip !17
  %74 = xor i32 %73, 1, !mcsema_real_eip !17
  %75 = and i32 %74, 16, !mcsema_real_eip !17
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !17
  store i1 %76, i1* %AF, !mcsema_real_eip !17
  %77 = lshr i32 %72, 31, !mcsema_real_eip !17
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !17
  store i1 %78, i1* %SF, !mcsema_real_eip !17
  %79 = icmp eq i32 %72, 0, !mcsema_real_eip !17
  store i1 %79, i1* %ZF, !mcsema_real_eip !17
  %80 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !17
  %81 = xor i32 %80, -1, !mcsema_real_eip !17
  %82 = and i32 %81, %73, !mcsema_real_eip !17
  %83 = lshr i32 %82, 31, !mcsema_real_eip !17
  %84 = and i32 %83, 1, !mcsema_real_eip !17
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !17
  store i1 %85, i1* %OF, !mcsema_real_eip !17
  %86 = trunc i32 %72 to i8, !mcsema_real_eip !17
  %87 = call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !17
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !17
  %89 = xor i1 %88, true, !mcsema_real_eip !17
  store i1 %89, i1* %PF, !mcsema_real_eip !17
  %90 = icmp ult i32 %72, %EAX_val.23, !mcsema_real_eip !17
  store i1 %90, i1* %CF, !mcsema_real_eip !17
  %91 = zext i32 %72 to i64, !mcsema_real_eip !17
  store i64 %91, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %69, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  store i1 false, i1* %SF, !mcsema_real_eip !20
  store i1 true, i1* %ZF, !mcsema_real_eip !20
  store i1 true, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  store i64 0, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !21
  %92 = add i64 48, %RSP_val.11, !mcsema_real_eip !21
  %93 = xor i64 %92, %RSP_val.11, !mcsema_real_eip !21
  %94 = xor i64 %93, 48, !mcsema_real_eip !21
  %95 = and i64 %94, 16, !mcsema_real_eip !21
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !21
  store i1 %96, i1* %AF, !mcsema_real_eip !21
  %97 = lshr i64 %92, 63, !mcsema_real_eip !21
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !21
  store i1 %98, i1* %SF, !mcsema_real_eip !21
  %99 = icmp eq i64 %92, 0, !mcsema_real_eip !21
  store i1 %99, i1* %ZF, !mcsema_real_eip !21
  %100 = xor i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %101 = xor i64 %100, -1, !mcsema_real_eip !21
  %102 = and i64 %101, %93, !mcsema_real_eip !21
  %103 = lshr i64 %102, 63, !mcsema_real_eip !21
  %104 = and i64 %103, 1, !mcsema_real_eip !21
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !21
  store i1 %105, i1* %OF, !mcsema_real_eip !21
  %106 = trunc i64 %92 to i8, !mcsema_real_eip !21
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !21
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !21
  %109 = xor i1 %108, true, !mcsema_real_eip !21
  store i1 %109, i1* %PF, !mcsema_real_eip !21
  %110 = icmp ult i64 %92, %RSP_val.11, !mcsema_real_eip !21
  store i1 %110, i1* %CF, !mcsema_real_eip !21
  store i64 %92, i64* %XSP, !mcsema_real_eip !21
  %111 = inttoptr i64 %92 to i64*, !mcsema_real_eip !22
  %112 = load i64, i64* %111, !mcsema_real_eip !22
  store i64 %112, i64* %XBP, !mcsema_real_eip !22
  %113 = add i64 %92, 8, !mcsema_real_eip !22
  store i64 %113, i64* %XSP, !mcsema_real_eip !22
  %114 = add i64 %113, 8, !mcsema_real_eip !23
  %115 = inttoptr i64 %113 to i64*, !mcsema_real_eip !23
  %116 = load i64, i64* %115, !mcsema_real_eip !23
  store i64 %116, i64* %XIP, !mcsema_real_eip !23
  store i64 %114, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !24
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !24
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !24
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !24
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !24
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !24
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !24
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !24
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !24
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !24
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !24
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !24
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !24
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !24
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !24
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !24
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !24
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !24
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !24
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !24
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !24
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !24
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !24
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !24
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !24
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !24
  br label %block_0x0, !mcsema_real_eip !24

block_0x0:                                        ; preds = %entry
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !24
  %1 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !24
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.27, i64* %2, !mcsema_real_eip !24
  store i64 %1, i64* %XSP, !mcsema_real_eip !24
  store i64 %1, i64* %XBP, !mcsema_real_eip !25
  %3 = sub i64 %1, 32, !mcsema_real_eip !26
  %4 = xor i64 %3, %1, !mcsema_real_eip !26
  %5 = xor i64 %4, 32, !mcsema_real_eip !26
  %6 = and i64 %5, 16, !mcsema_real_eip !26
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !26
  store i1 %7, i1* %AF, !mcsema_real_eip !26
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !26
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !26
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !26
  %11 = xor i1 %10, true, !mcsema_real_eip !26
  store i1 %11, i1* %PF, !mcsema_real_eip !26
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !26
  store i1 %12, i1* %ZF, !mcsema_real_eip !26
  %13 = lshr i64 %3, 63, !mcsema_real_eip !26
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !26
  store i1 %14, i1* %SF, !mcsema_real_eip !26
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !26
  store i1 %15, i1* %CF, !mcsema_real_eip !26
  %16 = xor i64 %1, 32, !mcsema_real_eip !26
  %17 = and i64 %16, %4, !mcsema_real_eip !26
  %18 = lshr i64 %17, 63, !mcsema_real_eip !26
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !26
  store i1 %19, i1* %OF, !mcsema_real_eip !26
  store i64 %3, i64* %XSP, !mcsema_real_eip !26
  %20 = add i64 %1, -4, !mcsema_real_eip !27
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !27
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %22, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !28
  %23 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %24, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !29
  %25 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !29
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %27, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !30
  %28 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !30
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !30
  %31 = load i32, i32* %30, !mcsema_real_eip !30
  %32 = zext i32 %31 to i64, !mcsema_real_eip !30
  store i64 %32, i64* %XAX, !mcsema_real_eip !30
  %33 = add i64 %RBP_val.37, -4, !mcsema_real_eip !31
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !31
  %36 = load i32, i32* %35, !mcsema_real_eip !31
  %37 = sub i32 %EAX_val.40, %36, !mcsema_real_eip !31
  %38 = xor i32 %37, %EAX_val.40, !mcsema_real_eip !31
  %39 = xor i32 %38, %36, !mcsema_real_eip !31
  %40 = and i32 %39, 16, !mcsema_real_eip !31
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !31
  store i1 %41, i1* %AF, !mcsema_real_eip !31
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !31
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !31
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !31
  %45 = xor i1 %44, true, !mcsema_real_eip !31
  store i1 %45, i1* %PF, !mcsema_real_eip !31
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !31
  store i1 %46, i1* %ZF, !mcsema_real_eip !31
  %47 = lshr i32 %37, 31, !mcsema_real_eip !31
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !31
  store i1 %48, i1* %SF, !mcsema_real_eip !31
  %49 = icmp ult i32 %EAX_val.40, %36, !mcsema_real_eip !31
  store i1 %49, i1* %CF, !mcsema_real_eip !31
  %50 = xor i32 %EAX_val.40, %36, !mcsema_real_eip !31
  %51 = and i32 %50, %38, !mcsema_real_eip !31
  %52 = lshr i32 %51, 31, !mcsema_real_eip !31
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !31
  store i1 %53, i1* %OF, !mcsema_real_eip !31
  %54 = or i1 %49, %46, !mcsema_real_eip !32
  br i1 %54, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %55 = add i64 %RBP_val.37, -16, !mcsema_real_eip !33
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !33
  %57 = load i64, i64* %56, !mcsema_real_eip !33
  store i64 %57, i64* %XAX, !mcsema_real_eip !33
  %58 = load i32, i32* %30, !mcsema_real_eip !34
  %59 = zext i32 %58 to i64, !mcsema_real_eip !34
  store i64 %59, i64* %XCX, !mcsema_real_eip !34
  %ECX.67 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.68 = load i32, i32* %ECX.67, !mcsema_real_eip !35
  %60 = sub i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %61 = xor i32 %60, %ECX_val.68, !mcsema_real_eip !35
  %62 = xor i32 %61, 1, !mcsema_real_eip !35
  %63 = and i32 %62, 16, !mcsema_real_eip !35
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !35
  store i1 %64, i1* %AF, !mcsema_real_eip !35
  %65 = trunc i32 %60 to i8, !mcsema_real_eip !35
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !35
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !35
  %68 = xor i1 %67, true, !mcsema_real_eip !35
  store i1 %68, i1* %PF, !mcsema_real_eip !35
  %69 = icmp eq i32 %60, 0, !mcsema_real_eip !35
  store i1 %69, i1* %ZF, !mcsema_real_eip !35
  %70 = lshr i32 %60, 31, !mcsema_real_eip !35
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !35
  store i1 %71, i1* %SF, !mcsema_real_eip !35
  %72 = icmp ult i32 %ECX_val.68, 1, !mcsema_real_eip !35
  store i1 %72, i1* %CF, !mcsema_real_eip !35
  %73 = xor i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %74 = and i32 %73, %61, !mcsema_real_eip !35
  %75 = lshr i32 %74, 31, !mcsema_real_eip !35
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !35
  store i1 %76, i1* %OF, !mcsema_real_eip !35
  %77 = zext i32 %60 to i64, !mcsema_real_eip !35
  store i64 %77, i64* %XCX, !mcsema_real_eip !35
  %ECX_val.70 = load i32, i32* %ECX.67, !mcsema_real_eip !36
  %78 = zext i32 %ECX_val.70 to i64, !mcsema_real_eip !36
  store i64 %78, i64* %XCX, !mcsema_real_eip !36
  %ECX_val.72 = load i32, i32* %ECX.67, !mcsema_real_eip !37
  %79 = zext i32 %ECX_val.72 to i64, !mcsema_real_eip !37
  store i64 %79, i64* %XDX, !mcsema_real_eip !37
  %80 = mul i64 %79, 4, !mcsema_real_eip !38
  %81 = add i64 %57, %80, !mcsema_real_eip !38
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !38
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !38
  %84 = load i32, i32* %83, !mcsema_real_eip !38
  %85 = zext i32 %84 to i64, !mcsema_real_eip !38
  store i64 %85, i64* %XCX, !mcsema_real_eip !38
  %86 = load i64, i64* %56, !mcsema_real_eip !39
  store i64 %86, i64* %XAX, !mcsema_real_eip !39
  %87 = load i32, i32* %30, !mcsema_real_eip !40
  %88 = zext i32 %87 to i64, !mcsema_real_eip !40
  store i64 %88, i64* %XSI, !mcsema_real_eip !40
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !41
  %89 = zext i32 %ESI_val.78 to i64, !mcsema_real_eip !41
  store i64 %89, i64* %XDX, !mcsema_real_eip !41
  %90 = mul i64 %89, 4, !mcsema_real_eip !42
  %91 = add i64 %86, %90, !mcsema_real_eip !42
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !42
  %ECX_val.82 = load i32, i32* %ECX.67, !mcsema_real_eip !42
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !42
  store i32 %ECX_val.82, i32* %93, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !43
  %94 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !43
  %96 = inttoptr i64 %94 to i32*, !mcsema_real_eip !43
  %97 = load i32, i32* %96, !mcsema_real_eip !43
  %98 = zext i32 %97 to i64, !mcsema_real_eip !43
  store i64 %98, i64* %XAX, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.39, !mcsema_real_eip !44
  %99 = add i32 -1, %EAX_val.85, !mcsema_real_eip !44
  %100 = xor i32 %99, %EAX_val.85, !mcsema_real_eip !44
  %101 = xor i32 %100, -1, !mcsema_real_eip !44
  %102 = and i32 %101, 16, !mcsema_real_eip !44
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !44
  store i1 %103, i1* %AF, !mcsema_real_eip !44
  %104 = lshr i32 %99, 31, !mcsema_real_eip !44
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !44
  store i1 %105, i1* %SF, !mcsema_real_eip !44
  %106 = icmp eq i32 %99, 0, !mcsema_real_eip !44
  store i1 %106, i1* %ZF, !mcsema_real_eip !44
  %107 = xor i32 %EAX_val.85, -1, !mcsema_real_eip !44
  %108 = and i32 %EAX_val.85, %100, !mcsema_real_eip !44
  %109 = lshr i32 %108, 31, !mcsema_real_eip !44
  %110 = and i32 %109, 1, !mcsema_real_eip !44
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !44
  store i1 %111, i1* %OF, !mcsema_real_eip !44
  %112 = trunc i32 %99 to i8, !mcsema_real_eip !44
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !44
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !44
  %115 = xor i1 %114, true, !mcsema_real_eip !44
  store i1 %115, i1* %PF, !mcsema_real_eip !44
  %116 = icmp ult i32 %99, %EAX_val.85, !mcsema_real_eip !44
  store i1 %116, i1* %CF, !mcsema_real_eip !44
  %117 = zext i32 %99 to i64, !mcsema_real_eip !44
  store i64 %117, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.88 = load i32, i32* %EAX.39, !mcsema_real_eip !45
  store i32 %EAX_val.88, i32* %96, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !47
  %118 = load i32, i32* %35, !mcsema_real_eip !48
  %119 = zext i32 %118 to i64, !mcsema_real_eip !48
  store i64 %119, i64* %XSI, !mcsema_real_eip !48
  %120 = add i64 %RBP_val.37, -16, !mcsema_real_eip !49
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !49
  %122 = load i64, i64* %121, !mcsema_real_eip !49
  store i64 %122, i64* %XAX, !mcsema_real_eip !49
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !50
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !50
  %125 = load i32, i32* %124, !mcsema_real_eip !50
  %126 = zext i32 %125 to i64, !mcsema_real_eip !50
  store i64 %126, i64* %XDX, !mcsema_real_eip !50
  %127 = load i64, i64* %121, !mcsema_real_eip !51
  store i64 %127, i64* %XAX, !mcsema_real_eip !51
  %128 = add i64 %127, 4, !mcsema_real_eip !52
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !52
  %130 = inttoptr i64 %128 to i32*, !mcsema_real_eip !52
  %131 = load i32, i32* %130, !mcsema_real_eip !52
  %132 = zext i32 %131 to i64, !mcsema_real_eip !52
  store i64 %132, i64* %XCX, !mcsema_real_eip !52
  %133 = load i64, i64* %121, !mcsema_real_eip !53
  store i64 %133, i64* %XAX, !mcsema_real_eip !53
  %134 = add i64 %133, 8, !mcsema_real_eip !54
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !54
  %136 = inttoptr i64 %134 to i32*, !mcsema_real_eip !54
  %137 = load i32, i32* %136, !mcsema_real_eip !54
  %138 = zext i32 %137 to i64, !mcsema_real_eip !54
  store i64 %138, i64* %R8, !mcsema_real_eip !54
  %139 = load i64, i64* %121, !mcsema_real_eip !55
  store i64 %139, i64* %XAX, !mcsema_real_eip !55
  %140 = add i64 %139, 12, !mcsema_real_eip !56
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !56
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !56
  %143 = load i32, i32* %142, !mcsema_real_eip !56
  %144 = zext i32 %143 to i64, !mcsema_real_eip !56
  store i64 %144, i64* %R9, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, !mcsema_real_eip !57
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !58
  %145 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %146 = load i64, i64* %145, !mcsema_real_eip !58
  %147 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !58
  %149 = load i64, i64* %148, !mcsema_real_eip !58
  %150 = add i64 %147, 8, !mcsema_real_eip !58
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !58
  %152 = load i64, i64* %151, !mcsema_real_eip !58
  %153 = add i64 %150, 8, !mcsema_real_eip !58
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !58
  %155 = load i64, i64* %154, !mcsema_real_eip !58
  %156 = add i64 %153, 8, !mcsema_real_eip !58
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !58
  %158 = load i64, i64* %157, !mcsema_real_eip !58
  %159 = add i64 %156, 8, !mcsema_real_eip !58
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !58
  %161 = load i64, i64* %160, !mcsema_real_eip !58
  %162 = sub i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %163, !mcsema_real_eip !58
  store i64 %162, i64* %XSP, !mcsema_real_eip !58
  %164 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %119, i64 %126, i64 %132, i64 %138, i64 %144, i64 %146, i64 %149, i64 %152, i64 %155, i64 %158, i64 %161), !mcsema_real_eip !58
  store i64 %164, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %165 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !59
  %EAX_val.61 = load i32, i32* %EAX.39, !mcsema_real_eip !59
  %167 = inttoptr i64 %165 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.61, i32* %167, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !60
  %168 = add i64 32, %RSP_val.62, !mcsema_real_eip !60
  %169 = xor i64 %168, %RSP_val.62, !mcsema_real_eip !60
  %170 = xor i64 %169, 32, !mcsema_real_eip !60
  %171 = and i64 %170, 16, !mcsema_real_eip !60
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !60
  store i1 %172, i1* %AF, !mcsema_real_eip !60
  %173 = lshr i64 %168, 63, !mcsema_real_eip !60
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !60
  store i1 %174, i1* %SF, !mcsema_real_eip !60
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !60
  store i1 %175, i1* %ZF, !mcsema_real_eip !60
  %176 = xor i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %177 = xor i64 %176, -1, !mcsema_real_eip !60
  %178 = and i64 %177, %169, !mcsema_real_eip !60
  %179 = lshr i64 %178, 63, !mcsema_real_eip !60
  %180 = and i64 %179, 1, !mcsema_real_eip !60
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !60
  store i1 %181, i1* %OF, !mcsema_real_eip !60
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !60
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !60
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !60
  %185 = xor i1 %184, true, !mcsema_real_eip !60
  store i1 %185, i1* %PF, !mcsema_real_eip !60
  %186 = icmp ult i64 %168, %RSP_val.62, !mcsema_real_eip !60
  store i1 %186, i1* %CF, !mcsema_real_eip !60
  store i64 %168, i64* %XSP, !mcsema_real_eip !60
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !61
  %188 = load i64, i64* %187, !mcsema_real_eip !61
  store i64 %188, i64* %XBP, !mcsema_real_eip !61
  %189 = add i64 %168, 8, !mcsema_real_eip !61
  store i64 %189, i64* %XSP, !mcsema_real_eip !61
  %190 = add i64 %189, 8, !mcsema_real_eip !62
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !62
  %192 = load i64, i64* %191, !mcsema_real_eip !62
  store i64 %192, i64* %XIP, !mcsema_real_eip !62
  store i64 %190, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 159}
!7 = !{i64 166}
!8 = !{i64 170}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 187}
!12 = !{i64 194}
!13 = !{i64 201}
!14 = !{i64 208}
!15 = !{i64 211}
!16 = !{i64 216}
!17 = !{i64 219}
!18 = !{i64 222}
!19 = !{i64 225}
!20 = !{i64 230}
!21 = !{i64 232}
!22 = !{i64 236}
!23 = !{i64 237}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 15}
!30 = !{i64 22}
!31 = !{i64 25}
!32 = !{i64 28}
!33 = !{i64 34}
!34 = !{i64 38}
!35 = !{i64 41}
!36 = !{i64 44}
!37 = !{i64 46}
!38 = !{i64 48}
!39 = !{i64 51}
!40 = !{i64 55}
!41 = !{i64 58}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 69}
!46 = !{i64 72}
!47 = !{i64 77}
!48 = !{i64 87}
!49 = !{i64 90}
!50 = !{i64 94}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 103}
!54 = !{i64 107}
!55 = !{i64 111}
!56 = !{i64 115}
!57 = !{i64 119}
!58 = !{i64 121}
!59 = !{i64 126}
!60 = !{i64 129}
!61 = !{i64 133}
!62 = !{i64 134}
