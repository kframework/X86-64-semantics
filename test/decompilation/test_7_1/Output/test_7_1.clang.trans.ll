; ModuleID = 'Output/test_7_1.clang.trans.bc'
source_filename = "Output/test_7_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c".\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  br label %block_0x30, !mcsema_real_eip !2

block_0x30:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 80, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 80, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 80, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 80, !mcsema_real_eip !4
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
  %23 = add i64 %RBP_val.5, -52, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %25, !mcsema_real_eip !6
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x50, %block_0x30
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.6, -52, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  %29 = load i32, i32* %28, !mcsema_real_eip !7
  %30 = sub i32 %29, 10, !mcsema_real_eip !7
  %31 = xor i32 %30, %29, !mcsema_real_eip !7
  %32 = xor i32 %31, 10, !mcsema_real_eip !7
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
  %42 = icmp ult i32 %29, 10, !mcsema_real_eip !7
  store i1 %42, i1* %CF, !mcsema_real_eip !7
  %43 = xor i32 %29, 10, !mcsema_real_eip !7
  %44 = and i32 %43, %31, !mcsema_real_eip !7
  %45 = lshr i32 %44, 31, !mcsema_real_eip !7
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !7
  store i1 %46, i1* %OF, !mcsema_real_eip !7
  %47 = icmp eq i1 %41, %46, !mcsema_real_eip !8
  br i1 %47, label %block_0x6a, label %block_0x50, !mcsema_real_eip !8

block_0x50:                                       ; preds = %block_0x46
  %48 = load i32, i32* %28, !mcsema_real_eip !9
  %49 = sext i32 %48 to i64, !mcsema_real_eip !9
  store i64 %49, i64* %XAX, !mcsema_real_eip !9
  %50 = add i64 %RBP_val.6, -48, !mcsema_real_eip !10
  %51 = mul i64 %49, 4, !mcsema_real_eip !10
  %52 = add i64 %50, %51, !mcsema_real_eip !10
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !10
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !10
  store i32 21, i32* %54, !mcsema_real_eip !10
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !11
  %55 = add i64 %RBP_val.51, -52, !mcsema_real_eip !11
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !11
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !11
  %58 = load i32, i32* %57, !mcsema_real_eip !11
  %59 = zext i32 %58 to i64, !mcsema_real_eip !11
  store i64 %59, i64* %XAX, !mcsema_real_eip !11
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !12
  %60 = add i32 1, %EAX_val.53, !mcsema_real_eip !12
  %61 = xor i32 %60, %EAX_val.53, !mcsema_real_eip !12
  %62 = xor i32 %61, 1, !mcsema_real_eip !12
  %63 = and i32 %62, 16, !mcsema_real_eip !12
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !12
  store i1 %64, i1* %AF, !mcsema_real_eip !12
  %65 = lshr i32 %60, 31, !mcsema_real_eip !12
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !12
  store i1 %66, i1* %SF, !mcsema_real_eip !12
  %67 = icmp eq i32 %60, 0, !mcsema_real_eip !12
  store i1 %67, i1* %ZF, !mcsema_real_eip !12
  %68 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !12
  %69 = xor i32 %68, -1, !mcsema_real_eip !12
  %70 = and i32 %69, %61, !mcsema_real_eip !12
  %71 = lshr i32 %70, 31, !mcsema_real_eip !12
  %72 = and i32 %71, 1, !mcsema_real_eip !12
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !12
  store i1 %73, i1* %OF, !mcsema_real_eip !12
  %74 = trunc i32 %60 to i8, !mcsema_real_eip !12
  %75 = call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !12
  %76 = trunc i8 %75 to i1, !mcsema_real_eip !12
  %77 = xor i1 %76, true, !mcsema_real_eip !12
  store i1 %77, i1* %PF, !mcsema_real_eip !12
  %78 = icmp ult i32 %60, %EAX_val.53, !mcsema_real_eip !12
  store i1 %78, i1* %CF, !mcsema_real_eip !12
  %79 = zext i32 %60 to i64, !mcsema_real_eip !12
  store i64 %79, i64* %XAX, !mcsema_real_eip !12
  %EAX_val.56 = load i32, i32* %EAX.52, !mcsema_real_eip !13
  store i32 %EAX_val.56, i32* %57, !mcsema_real_eip !13
  br label %block_0x46, !mcsema_real_eip !14

block_0x6a:                                       ; preds = %block_0x46
  store i64 10, i64* %XAX, !mcsema_real_eip !15
  %80 = add i64 %RBP_val.6, -48, !mcsema_real_eip !16
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !16
  store i64 %80, i64* %XCX, !mcsema_real_eip !16
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !17
  %82 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !17
  store i64 %82, i64* %XDI, !mcsema_real_eip !17
  store i64 %82, i64* %XSI, !mcsema_real_eip !18
  store i64 %82, i64* %XDX, !mcsema_real_eip !19
  %83 = add i64 %RBP_val.6, -64, !mcsema_real_eip !20
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !20
  store i64 %80, i64* %84, !mcsema_real_eip !20
  %EAX_val.17 = load i32, i32* %EAX.8, !mcsema_real_eip !21
  %85 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !21
  store i64 %85, i64* %XCX, !mcsema_real_eip !21
  store i64 %85, i64* %R8, !mcsema_real_eip !22
  store i64 %85, i64* %R9, !mcsema_real_eip !23
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !24
  %86 = add i64 %RBP_val.22, -64, !mcsema_real_eip !24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !24
  %88 = load i64, i64* %87, !mcsema_real_eip !24
  store i64 %88, i64* %R10, !mcsema_real_eip !24
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !25
  %89 = inttoptr i64 %RSP_val.23 to i64*, !mcsema_real_eip !25
  store i64 %88, i64* %89, !mcsema_real_eip !25
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !26
  %90 = sub i64 %RSP_val.25, 8, !mcsema_real_eip !26
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %91, !mcsema_real_eip !26
  store i64 %90, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, !mcsema_real_eip !27
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !28
  %92 = add i64 %RBP_val.26, -56, !mcsema_real_eip !28
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !28
  %EAX_val.28 = load i32, i32* %EAX.8, !mcsema_real_eip !28
  %94 = inttoptr i64 %92 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.28, i32* %94, !mcsema_real_eip !28
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !29
  %95 = add i64 %RBP_val.29, -56, !mcsema_real_eip !29
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !29
  %97 = inttoptr i64 %95 to i32*, !mcsema_real_eip !29
  %98 = load i32, i32* %97, !mcsema_real_eip !29
  %99 = zext i32 %98 to i64, !mcsema_real_eip !29
  store i64 %99, i64* %XSI, !mcsema_real_eip !29
  %AL.30 = bitcast i64* %XAX to i8*, !mcsema_real_eip !30
  store i8 0, i8* %AL.30, !mcsema_real_eip !30
  %RDI_val.31 = load i64, i64* %XDI, !mcsema_real_eip !31
  %RDX_val.33 = load i64, i64* %XDX, !mcsema_real_eip !31
  %RCX_val.34 = load i64, i64* %XCX, !mcsema_real_eip !31
  %R8_val.35 = load i64, i64* %R8, !mcsema_real_eip !31
  %R9_val.36 = load i64, i64* %R9, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !31
  %100 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !31
  %101 = load i64, i64* %100, !mcsema_real_eip !31
  %102 = add i64 %RSP_val.37, 8, !mcsema_real_eip !31
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !31
  %104 = load i64, i64* %103, !mcsema_real_eip !31
  %105 = add i64 %102, 8, !mcsema_real_eip !31
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !31
  %107 = load i64, i64* %106, !mcsema_real_eip !31
  %108 = add i64 %105, 8, !mcsema_real_eip !31
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !31
  %110 = load i64, i64* %109, !mcsema_real_eip !31
  %111 = add i64 %108, 8, !mcsema_real_eip !31
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !31
  %113 = load i64, i64* %112, !mcsema_real_eip !31
  %114 = add i64 %111, 8, !mcsema_real_eip !31
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !31
  %116 = load i64, i64* %115, !mcsema_real_eip !31
  %117 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !31
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !31
  store i64 -2415393069852865332, i64* %118, !mcsema_real_eip !31
  store i64 %117, i64* %XSP, !mcsema_real_eip !31
  %119 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.31, i64 %99, i64 %RDX_val.33, i64 %RCX_val.34, i64 %R8_val.35, i64 %R9_val.36, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116), !mcsema_real_eip !31
  store i64 %119, i64* %XAX, !mcsema_real_eip !31
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !32
  %120 = add i64 %RBP_val.39, -56, !mcsema_real_eip !32
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !32
  %122 = inttoptr i64 %120 to i32*, !mcsema_real_eip !32
  %123 = load i32, i32* %122, !mcsema_real_eip !32
  %124 = zext i32 %123 to i64, !mcsema_real_eip !32
  store i64 %124, i64* %XCX, !mcsema_real_eip !32
  %125 = add i64 %RBP_val.39, -68, !mcsema_real_eip !33
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !33
  %EAX_val.42 = load i32, i32* %EAX.8, !mcsema_real_eip !33
  %127 = inttoptr i64 %125 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.42, i32* %127, !mcsema_real_eip !33
  %ECX.43 = bitcast i64* %XCX to i32*, !mcsema_real_eip !34
  %ECX_val.44 = load i32, i32* %ECX.43, !mcsema_real_eip !34
  %128 = zext i32 %ECX_val.44 to i64, !mcsema_real_eip !34
  store i64 %128, i64* %XAX, !mcsema_real_eip !34
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !35
  %129 = add i64 80, %RSP_val.45, !mcsema_real_eip !35
  %130 = xor i64 %129, %RSP_val.45, !mcsema_real_eip !35
  %131 = xor i64 %130, 80, !mcsema_real_eip !35
  %132 = and i64 %131, 16, !mcsema_real_eip !35
  %133 = icmp ne i64 %132, 0, !mcsema_real_eip !35
  store i1 %133, i1* %AF, !mcsema_real_eip !35
  %134 = lshr i64 %129, 63, !mcsema_real_eip !35
  %135 = trunc i64 %134 to i1, !mcsema_real_eip !35
  store i1 %135, i1* %SF, !mcsema_real_eip !35
  %136 = icmp eq i64 %129, 0, !mcsema_real_eip !35
  store i1 %136, i1* %ZF, !mcsema_real_eip !35
  %137 = xor i64 %RSP_val.45, 80, !mcsema_real_eip !35
  %138 = xor i64 %137, -1, !mcsema_real_eip !35
  %139 = and i64 %138, %130, !mcsema_real_eip !35
  %140 = lshr i64 %139, 63, !mcsema_real_eip !35
  %141 = and i64 %140, 1, !mcsema_real_eip !35
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !35
  store i1 %142, i1* %OF, !mcsema_real_eip !35
  %143 = trunc i64 %129 to i8, !mcsema_real_eip !35
  %144 = call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !35
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !35
  %146 = xor i1 %145, true, !mcsema_real_eip !35
  store i1 %146, i1* %PF, !mcsema_real_eip !35
  %147 = icmp ult i64 %129, %RSP_val.45, !mcsema_real_eip !35
  store i1 %147, i1* %CF, !mcsema_real_eip !35
  store i64 %129, i64* %XSP, !mcsema_real_eip !35
  %148 = inttoptr i64 %129 to i64*, !mcsema_real_eip !36
  %149 = load i64, i64* %148, !mcsema_real_eip !36
  store i64 %149, i64* %XBP, !mcsema_real_eip !36
  %150 = add i64 %129, 8, !mcsema_real_eip !36
  store i64 %150, i64* %XSP, !mcsema_real_eip !36
  %151 = add i64 %150, 8, !mcsema_real_eip !37
  %152 = inttoptr i64 %150 to i64*, !mcsema_real_eip !37
  %153 = load i64, i64* %152, !mcsema_real_eip !37
  store i64 %153, i64* %XIP, !mcsema_real_eip !37
  store i64 %151, i64* %XSP, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !38
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !38
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !38
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !38
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !38
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !38
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !38
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !38
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !38
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !38
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !38
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !38
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !38
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !38
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !38
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !38
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !38
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !38
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !38
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !38
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !38
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !38
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !38
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !38
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !38
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  br label %block_0x0, !mcsema_real_eip !38

block_0x0:                                        ; preds = %entry
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !38
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !38
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !38
  store i64 %RBP_val.57, i64* %2, !mcsema_real_eip !38
  store i64 %1, i64* %XSP, !mcsema_real_eip !38
  store i64 %1, i64* %XBP, !mcsema_real_eip !39
  %3 = add i64 %1, 16, !mcsema_real_eip !40
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !40
  %5 = load i64, i64* %4, !mcsema_real_eip !40
  store i64 %5, i64* %XAX, !mcsema_real_eip !40
  %6 = add i64 %1, -4, !mcsema_real_eip !41
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !41
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !41
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.63, i32* %8, !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %9 = add i64 %RBP_val.64, -8, !mcsema_real_eip !42
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !42
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !42
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !42
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !42
  store i32 %ESI_val.66, i32* %11, !mcsema_real_eip !42
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !43
  %12 = add i64 %RBP_val.67, -12, !mcsema_real_eip !43
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !43
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !43
  %EDX_val.69 = load i32, i32* %EDX.68, !mcsema_real_eip !43
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !43
  store i32 %EDX_val.69, i32* %14, !mcsema_real_eip !43
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !44
  %15 = add i64 %RBP_val.70, -16, !mcsema_real_eip !44
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !44
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !44
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !44
  store i32 %ECX_val.72, i32* %17, !mcsema_real_eip !44
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !45
  %18 = add i64 %RBP_val.73, -20, !mcsema_real_eip !45
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !45
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !45
  store i32 %R8D_val.75, i32* %20, !mcsema_real_eip !45
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !46
  %21 = add i64 %RBP_val.76, -24, !mcsema_real_eip !46
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !46
  %R9D.77 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.78 = load i32, i32* %R9D.77, !mcsema_real_eip !46
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !46
  store i32 %R9D_val.78, i32* %23, !mcsema_real_eip !46
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !47
  %24 = add i64 %RBP_val.79, -32, !mcsema_real_eip !47
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !47
  %RAX_val.80 = load i64, i64* %XAX, !mcsema_real_eip !47
  store i64 %RAX_val.80, i64* %25, !mcsema_real_eip !47
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !48
  %26 = add i64 %RBP_val.81, -32, !mcsema_real_eip !48
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !48
  %28 = load i64, i64* %27, !mcsema_real_eip !48
  store i64 %28, i64* %XAX, !mcsema_real_eip !48
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !49
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !49
  %31 = load i32, i32* %30, !mcsema_real_eip !49
  %32 = zext i32 %31 to i64, !mcsema_real_eip !49
  store i64 %32, i64* %XCX, !mcsema_real_eip !49
  %33 = add i64 %RBP_val.81, -36, !mcsema_real_eip !50
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !50
  %ECX_val.85 = load i32, i32* %ECX.71, !mcsema_real_eip !50
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !50
  store i32 %ECX_val.85, i32* %35, !mcsema_real_eip !50
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !51
  %36 = add i64 %RBP_val.86, -36, !mcsema_real_eip !51
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !51
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !51
  %39 = load i32, i32* %38, !mcsema_real_eip !51
  %40 = zext i32 %39 to i64, !mcsema_real_eip !51
  store i64 %40, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !52
  %41 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !52
  %42 = load i64, i64* %41, !mcsema_real_eip !52
  store i64 %42, i64* %XBP, !mcsema_real_eip !52
  %43 = add i64 %RSP_val.87, 8, !mcsema_real_eip !52
  store i64 %43, i64* %XSP, !mcsema_real_eip !52
  %44 = add i64 %43, 8, !mcsema_real_eip !53
  %45 = inttoptr i64 %43 to i64*, !mcsema_real_eip !53
  %46 = load i64, i64* %45, !mcsema_real_eip !53
  store i64 %46, i64* %XIP, !mcsema_real_eip !53
  store i64 %44, i64* %XSP, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
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
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 63}
!7 = !{i64 70}
!8 = !{i64 74}
!9 = !{i64 80}
!10 = !{i64 84}
!11 = !{i64 92}
!12 = !{i64 95}
!13 = !{i64 98}
!14 = !{i64 101}
!15 = !{i64 106}
!16 = !{i64 111}
!17 = !{i64 115}
!18 = !{i64 117}
!19 = !{i64 119}
!20 = !{i64 121}
!21 = !{i64 125}
!22 = !{i64 127}
!23 = !{i64 130}
!24 = !{i64 133}
!25 = !{i64 137}
!26 = !{i64 141}
!27 = !{i64 146}
!28 = !{i64 156}
!29 = !{i64 159}
!30 = !{i64 162}
!31 = !{i64 164}
!32 = !{i64 169}
!33 = !{i64 172}
!34 = !{i64 175}
!35 = !{i64 177}
!36 = !{i64 181}
!37 = !{i64 182}
!38 = !{i64 0}
!39 = !{i64 1}
!40 = !{i64 4}
!41 = !{i64 8}
!42 = !{i64 11}
!43 = !{i64 14}
!44 = !{i64 17}
!45 = !{i64 20}
!46 = !{i64 24}
!47 = !{i64 28}
!48 = !{i64 32}
!49 = !{i64 36}
!50 = !{i64 38}
!51 = !{i64 41}
!52 = !{i64 44}
!53 = !{i64 45}
