; ModuleID = 'Output/test_6.clang.trans.bc'
source_filename = "Output/test_6.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 96, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 96, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 96, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 96, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 40, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %20 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %20, i64* %XCX, !mcsema_real_eip !6
  %21 = add i64 %1, -4, !mcsema_real_eip !7
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !7
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %23, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %24 = add i64 %RBP_val.7, -8, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !8
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !8
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %26, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %27 = add i64 %RBP_val.10, -16, !mcsema_real_eip !9
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !9
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %28, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !10
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %29 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %30, !mcsema_real_eip !11
  store i64 %29, i64* %XSP, !mcsema_real_eip !11
  %31 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12), !mcsema_real_eip !11
  store i64 %31, i64* %XAX, !mcsema_real_eip !11
  store i64 40, i64* %XDX, !mcsema_real_eip !12
  %EDX.15 = bitcast i64* %XDX to i32*, !mcsema_real_eip !13
  %EDX_val.16 = load i32, i32* %EDX.15, !mcsema_real_eip !13
  %32 = zext i32 %EDX_val.16 to i64, !mcsema_real_eip !13
  store i64 %32, i64* %XDI, !mcsema_real_eip !13
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !14
  %33 = add i64 %RBP_val.17, -24, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !14
  store i64 %31, i64* %34, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !15
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %35 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !15
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !15
  store i64 %35, i64* %XSP, !mcsema_real_eip !15
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19), !mcsema_real_eip !15
  store i64 %37, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %38 = add i64 %RBP_val.21, -32, !mcsema_real_eip !16
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !16
  store i64 %37, i64* %39, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %40 = add i64 %RBP_val.23, -36, !mcsema_real_eip !17
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !17
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %42, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %43 = add i64 %RBP_val.24, -36, !mcsema_real_eip !18
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !18
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !18
  %46 = load i32, i32* %45, !mcsema_real_eip !18
  %47 = sub i32 %46, 10, !mcsema_real_eip !18
  %48 = xor i32 %47, %46, !mcsema_real_eip !18
  %49 = xor i32 %48, 10, !mcsema_real_eip !18
  %50 = and i32 %49, 16, !mcsema_real_eip !18
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !18
  store i1 %51, i1* %AF, !mcsema_real_eip !18
  %52 = trunc i32 %47 to i8, !mcsema_real_eip !18
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !18
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !18
  %55 = xor i1 %54, true, !mcsema_real_eip !18
  store i1 %55, i1* %PF, !mcsema_real_eip !18
  %56 = icmp eq i32 %47, 0, !mcsema_real_eip !18
  store i1 %56, i1* %ZF, !mcsema_real_eip !18
  %57 = lshr i32 %47, 31, !mcsema_real_eip !18
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !18
  store i1 %58, i1* %SF, !mcsema_real_eip !18
  %59 = icmp ult i32 %46, 10, !mcsema_real_eip !18
  store i1 %59, i1* %CF, !mcsema_real_eip !18
  %60 = xor i32 %46, 10, !mcsema_real_eip !18
  %61 = and i32 %60, %48, !mcsema_real_eip !18
  %62 = lshr i32 %61, 31, !mcsema_real_eip !18
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !18
  store i1 %63, i1* %OF, !mcsema_real_eip !18
  %64 = icmp eq i1 %58, %63, !mcsema_real_eip !19
  br i1 %64, label %block_0x10c, label %block_0xea, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %65 = load i32, i32* %45, !mcsema_real_eip !20
  %66 = zext i32 %65 to i64, !mcsema_real_eip !20
  store i64 %66, i64* %XAX, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %67 = add i32 10, %EAX_val.28, !mcsema_real_eip !21
  %68 = xor i32 %67, %EAX_val.28, !mcsema_real_eip !21
  %69 = xor i32 %68, 10, !mcsema_real_eip !21
  %70 = and i32 %69, 16, !mcsema_real_eip !21
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !21
  store i1 %71, i1* %AF, !mcsema_real_eip !21
  %72 = lshr i32 %67, 31, !mcsema_real_eip !21
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !21
  store i1 %73, i1* %SF, !mcsema_real_eip !21
  %74 = icmp eq i32 %67, 0, !mcsema_real_eip !21
  store i1 %74, i1* %ZF, !mcsema_real_eip !21
  %75 = xor i32 %EAX_val.28, 10, !mcsema_real_eip !21
  %76 = xor i32 %75, -1, !mcsema_real_eip !21
  %77 = and i32 %76, %68, !mcsema_real_eip !21
  %78 = lshr i32 %77, 31, !mcsema_real_eip !21
  %79 = and i32 %78, 1, !mcsema_real_eip !21
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !21
  store i1 %80, i1* %OF, !mcsema_real_eip !21
  %81 = trunc i32 %67 to i8, !mcsema_real_eip !21
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !21
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !21
  %84 = xor i1 %83, true, !mcsema_real_eip !21
  store i1 %84, i1* %PF, !mcsema_real_eip !21
  %85 = icmp ult i32 %67, %EAX_val.28, !mcsema_real_eip !21
  store i1 %85, i1* %CF, !mcsema_real_eip !21
  %86 = zext i32 %67 to i64, !mcsema_real_eip !21
  store i64 %86, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.30 = load i32, i32* %EAX.4, !mcsema_real_eip !22
  %87 = add i32 1, %EAX_val.30, !mcsema_real_eip !22
  %88 = xor i32 %87, %EAX_val.30, !mcsema_real_eip !22
  %89 = xor i32 %88, 1, !mcsema_real_eip !22
  %90 = and i32 %89, 16, !mcsema_real_eip !22
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !22
  store i1 %91, i1* %AF, !mcsema_real_eip !22
  %92 = lshr i32 %87, 31, !mcsema_real_eip !22
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !22
  store i1 %93, i1* %SF, !mcsema_real_eip !22
  %94 = icmp eq i32 %87, 0, !mcsema_real_eip !22
  store i1 %94, i1* %ZF, !mcsema_real_eip !22
  %95 = xor i32 %EAX_val.30, 1, !mcsema_real_eip !22
  %96 = xor i32 %95, -1, !mcsema_real_eip !22
  %97 = and i32 %96, %88, !mcsema_real_eip !22
  %98 = lshr i32 %97, 31, !mcsema_real_eip !22
  %99 = and i32 %98, 1, !mcsema_real_eip !22
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !22
  store i1 %100, i1* %OF, !mcsema_real_eip !22
  %101 = trunc i32 %87 to i8, !mcsema_real_eip !22
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !22
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !22
  %104 = xor i1 %103, true, !mcsema_real_eip !22
  store i1 %104, i1* %PF, !mcsema_real_eip !22
  %105 = icmp ult i32 %87, %EAX_val.30, !mcsema_real_eip !22
  store i1 %105, i1* %CF, !mcsema_real_eip !22
  %106 = zext i32 %87 to i64, !mcsema_real_eip !22
  store i64 %106, i64* %XAX, !mcsema_real_eip !22
  %107 = add i64 %RBP_val.24, -24, !mcsema_real_eip !23
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !23
  %109 = load i64, i64* %108, !mcsema_real_eip !23
  store i64 %109, i64* %XCX, !mcsema_real_eip !23
  %110 = load i32, i32* %45, !mcsema_real_eip !24
  %111 = sext i32 %110 to i64, !mcsema_real_eip !24
  store i64 %111, i64* %XDX, !mcsema_real_eip !24
  %112 = mul i64 %111, 4, !mcsema_real_eip !25
  %113 = add i64 %109, %112, !mcsema_real_eip !25
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !25
  %EAX_val.36 = load i32, i32* %EAX.4, !mcsema_real_eip !25
  %115 = inttoptr i64 %113 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.36, i32* %115, !mcsema_real_eip !25
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !26
  %116 = add i64 %RBP_val.37, -36, !mcsema_real_eip !26
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !26
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !26
  %119 = load i32, i32* %118, !mcsema_real_eip !26
  %120 = zext i32 %119 to i64, !mcsema_real_eip !26
  store i64 %120, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.39 = load i32, i32* %EAX.4, !mcsema_real_eip !27
  %121 = add i32 1, %EAX_val.39, !mcsema_real_eip !27
  %122 = xor i32 %121, %EAX_val.39, !mcsema_real_eip !27
  %123 = xor i32 %122, 1, !mcsema_real_eip !27
  %124 = and i32 %123, 16, !mcsema_real_eip !27
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !27
  store i1 %125, i1* %AF, !mcsema_real_eip !27
  %126 = lshr i32 %121, 31, !mcsema_real_eip !27
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !27
  store i1 %127, i1* %SF, !mcsema_real_eip !27
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !27
  store i1 %128, i1* %ZF, !mcsema_real_eip !27
  %129 = xor i32 %EAX_val.39, 1, !mcsema_real_eip !27
  %130 = xor i32 %129, -1, !mcsema_real_eip !27
  %131 = and i32 %130, %122, !mcsema_real_eip !27
  %132 = lshr i32 %131, 31, !mcsema_real_eip !27
  %133 = and i32 %132, 1, !mcsema_real_eip !27
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !27
  store i1 %134, i1* %OF, !mcsema_real_eip !27
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !27
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !27
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !27
  %138 = xor i1 %137, true, !mcsema_real_eip !27
  store i1 %138, i1* %PF, !mcsema_real_eip !27
  %139 = icmp ult i32 %121, %EAX_val.39, !mcsema_real_eip !27
  store i1 %139, i1* %CF, !mcsema_real_eip !27
  %140 = zext i32 %121 to i64, !mcsema_real_eip !27
  store i64 %140, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.42 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  store i32 %EAX_val.42, i32* %118, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %141 = add i64 %RBP_val.24, -40, !mcsema_real_eip !30
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !30
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %143, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !31
  %144 = add i64 %RBP_val.43, -40, !mcsema_real_eip !31
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !31
  %146 = inttoptr i64 %144 to i32*, !mcsema_real_eip !31
  %147 = load i32, i32* %146, !mcsema_real_eip !31
  %148 = sub i32 %147, 10, !mcsema_real_eip !31
  %149 = xor i32 %148, %147, !mcsema_real_eip !31
  %150 = xor i32 %149, 10, !mcsema_real_eip !31
  %151 = and i32 %150, 16, !mcsema_real_eip !31
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !31
  store i1 %152, i1* %AF, !mcsema_real_eip !31
  %153 = trunc i32 %148 to i8, !mcsema_real_eip !31
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !31
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !31
  %156 = xor i1 %155, true, !mcsema_real_eip !31
  store i1 %156, i1* %PF, !mcsema_real_eip !31
  %157 = icmp eq i32 %148, 0, !mcsema_real_eip !31
  store i1 %157, i1* %ZF, !mcsema_real_eip !31
  %158 = lshr i32 %148, 31, !mcsema_real_eip !31
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !31
  store i1 %159, i1* %SF, !mcsema_real_eip !31
  %160 = icmp ult i32 %147, 10, !mcsema_real_eip !31
  store i1 %160, i1* %CF, !mcsema_real_eip !31
  %161 = xor i32 %147, 10, !mcsema_real_eip !31
  %162 = and i32 %161, %149, !mcsema_real_eip !31
  %163 = lshr i32 %162, 31, !mcsema_real_eip !31
  %164 = trunc i32 %163 to i1, !mcsema_real_eip !31
  store i1 %164, i1* %OF, !mcsema_real_eip !31
  %165 = icmp eq i1 %159, %164, !mcsema_real_eip !32
  br i1 %165, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %166 = load i32, i32* %146, !mcsema_real_eip !33
  %167 = zext i32 %166 to i64, !mcsema_real_eip !33
  store i64 %167, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.80 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %168 = add i32 1, %EAX_val.80, !mcsema_real_eip !34
  %169 = xor i32 %168, %EAX_val.80, !mcsema_real_eip !34
  %170 = xor i32 %169, 1, !mcsema_real_eip !34
  %171 = and i32 %170, 16, !mcsema_real_eip !34
  %172 = icmp ne i32 %171, 0, !mcsema_real_eip !34
  store i1 %172, i1* %AF, !mcsema_real_eip !34
  %173 = lshr i32 %168, 31, !mcsema_real_eip !34
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !34
  store i1 %174, i1* %SF, !mcsema_real_eip !34
  %175 = icmp eq i32 %168, 0, !mcsema_real_eip !34
  store i1 %175, i1* %ZF, !mcsema_real_eip !34
  %176 = xor i32 %EAX_val.80, 1, !mcsema_real_eip !34
  %177 = xor i32 %176, -1, !mcsema_real_eip !34
  %178 = and i32 %177, %169, !mcsema_real_eip !34
  %179 = lshr i32 %178, 31, !mcsema_real_eip !34
  %180 = and i32 %179, 1, !mcsema_real_eip !34
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !34
  store i1 %181, i1* %OF, !mcsema_real_eip !34
  %182 = trunc i32 %168 to i8, !mcsema_real_eip !34
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !34
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !34
  %185 = xor i1 %184, true, !mcsema_real_eip !34
  store i1 %185, i1* %PF, !mcsema_real_eip !34
  %186 = icmp ult i32 %168, %EAX_val.80, !mcsema_real_eip !34
  store i1 %186, i1* %CF, !mcsema_real_eip !34
  %187 = zext i32 %168 to i64, !mcsema_real_eip !34
  store i64 %187, i64* %XAX, !mcsema_real_eip !34
  %188 = add i64 %RBP_val.43, -32, !mcsema_real_eip !35
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !35
  %190 = load i64, i64* %189, !mcsema_real_eip !35
  store i64 %190, i64* %XCX, !mcsema_real_eip !35
  %191 = load i32, i32* %146, !mcsema_real_eip !36
  %192 = sext i32 %191 to i64, !mcsema_real_eip !36
  store i64 %192, i64* %XDX, !mcsema_real_eip !36
  %193 = mul i64 %192, 4, !mcsema_real_eip !37
  %194 = add i64 %190, %193, !mcsema_real_eip !37
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !37
  %EAX_val.86 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %196 = inttoptr i64 %194 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.86, i32* %196, !mcsema_real_eip !37
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !38
  %197 = add i64 %RBP_val.87, -40, !mcsema_real_eip !38
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !38
  %199 = inttoptr i64 %197 to i32*, !mcsema_real_eip !38
  %200 = load i32, i32* %199, !mcsema_real_eip !38
  %201 = zext i32 %200 to i64, !mcsema_real_eip !38
  store i64 %201, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.89 = load i32, i32* %EAX.4, !mcsema_real_eip !39
  %202 = add i32 1, %EAX_val.89, !mcsema_real_eip !39
  %203 = xor i32 %202, %EAX_val.89, !mcsema_real_eip !39
  %204 = xor i32 %203, 1, !mcsema_real_eip !39
  %205 = and i32 %204, 16, !mcsema_real_eip !39
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !39
  store i1 %206, i1* %AF, !mcsema_real_eip !39
  %207 = lshr i32 %202, 31, !mcsema_real_eip !39
  %208 = trunc i32 %207 to i1, !mcsema_real_eip !39
  store i1 %208, i1* %SF, !mcsema_real_eip !39
  %209 = icmp eq i32 %202, 0, !mcsema_real_eip !39
  store i1 %209, i1* %ZF, !mcsema_real_eip !39
  %210 = xor i32 %EAX_val.89, 1, !mcsema_real_eip !39
  %211 = xor i32 %210, -1, !mcsema_real_eip !39
  %212 = and i32 %211, %203, !mcsema_real_eip !39
  %213 = lshr i32 %212, 31, !mcsema_real_eip !39
  %214 = and i32 %213, 1, !mcsema_real_eip !39
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !39
  store i1 %215, i1* %OF, !mcsema_real_eip !39
  %216 = trunc i32 %202 to i8, !mcsema_real_eip !39
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !39
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !39
  %219 = xor i1 %218, true, !mcsema_real_eip !39
  store i1 %219, i1* %PF, !mcsema_real_eip !39
  %220 = icmp ult i32 %202, %EAX_val.89, !mcsema_real_eip !39
  store i1 %220, i1* %CF, !mcsema_real_eip !39
  %221 = zext i32 %202 to i64, !mcsema_real_eip !39
  store i64 %221, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.92 = load i32, i32* %EAX.4, !mcsema_real_eip !40
  store i32 %EAX_val.92, i32* %199, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, !mcsema_real_eip !42
  store i64 200, i64* %XSI, !mcsema_real_eip !43
  store i64 300, i64* %XDX, !mcsema_real_eip !44
  store i64 400, i64* %XCX, !mcsema_real_eip !45
  store i64 500, i64* %R8, !mcsema_real_eip !46
  store i64 600, i64* %R9, !mcsema_real_eip !47
  store i64 10, i64* %XAX, !mcsema_real_eip !48
  %222 = add i64 %RBP_val.43, -24, !mcsema_real_eip !49
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !49
  %224 = load i64, i64* %223, !mcsema_real_eip !49
  store i64 %224, i64* %R10, !mcsema_real_eip !49
  %225 = add i64 %RBP_val.43, -32, !mcsema_real_eip !50
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !50
  %227 = load i64, i64* %226, !mcsema_real_eip !50
  store i64 %227, i64* %R11, !mcsema_real_eip !50
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !51
  %228 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !51
  %229 = inttoptr i64 %RSP_val.46 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %229, !mcsema_real_eip !51
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !52
  %230 = add i64 %RSP_val.47, 8, !mcsema_real_eip !52
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !52
  %R10_val.48 = load i64, i64* %R10, !mcsema_real_eip !52
  store i64 %R10_val.48, i64* %231, !mcsema_real_eip !52
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !53
  %232 = add i64 %RSP_val.49, 16, !mcsema_real_eip !53
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !53
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %234, !mcsema_real_eip !53
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !54
  %235 = add i64 %RSP_val.50, 24, !mcsema_real_eip !54
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !54
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %R11_val.51, i64* %236, !mcsema_real_eip !54
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !55
  %237 = add i64 %RBP_val.52, -48, !mcsema_real_eip !55
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !55
  %EAX_val.54 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.54, i32* %239, !mcsema_real_eip !55
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !56
  %240 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !56
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !56
  store i64 -4981261766360305936, i64* %241, !mcsema_real_eip !56
  store i64 %240, i64* %XSP, !mcsema_real_eip !56
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !56
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !57
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !58
  %242 = add i64 %RBP_val.56, -44, !mcsema_real_eip !58
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !58
  %EAX_val.58 = load i32, i32* %EAX.4, !mcsema_real_eip !58
  %244 = inttoptr i64 %242 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.58, i32* %244, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %245 = add i64 %RBP_val.59, -44, !mcsema_real_eip !59
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !59
  %247 = inttoptr i64 %245 to i32*, !mcsema_real_eip !59
  %248 = load i32, i32* %247, !mcsema_real_eip !59
  %249 = zext i32 %248 to i64, !mcsema_real_eip !59
  store i64 %249, i64* %XSI, !mcsema_real_eip !59
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !60
  store i8 0, i8* %AL.60, !mcsema_real_eip !60
  %RDI_val.61 = load i64, i64* %XDI, !mcsema_real_eip !61
  %RDX_val.63 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RCX_val.64 = load i64, i64* %XCX, !mcsema_real_eip !61
  %R8_val.65 = load i64, i64* %R8, !mcsema_real_eip !61
  %R9_val.66 = load i64, i64* %R9, !mcsema_real_eip !61
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !61
  %250 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !61
  %251 = load i64, i64* %250, !mcsema_real_eip !61
  %252 = add i64 %RSP_val.67, 8, !mcsema_real_eip !61
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !61
  %254 = load i64, i64* %253, !mcsema_real_eip !61
  %255 = add i64 %252, 8, !mcsema_real_eip !61
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !61
  %257 = load i64, i64* %256, !mcsema_real_eip !61
  %258 = add i64 %255, 8, !mcsema_real_eip !61
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !61
  %260 = load i64, i64* %259, !mcsema_real_eip !61
  %261 = add i64 %258, 8, !mcsema_real_eip !61
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !61
  %263 = load i64, i64* %262, !mcsema_real_eip !61
  %264 = add i64 %261, 8, !mcsema_real_eip !61
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !61
  %266 = load i64, i64* %265, !mcsema_real_eip !61
  %267 = sub i64 %RSP_val.67, 8, !mcsema_real_eip !61
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !61
  store i64 -2415393069852865332, i64* %268, !mcsema_real_eip !61
  store i64 %267, i64* %XSP, !mcsema_real_eip !61
  %269 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %249, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %251, i64 %254, i64 %257, i64 %260, i64 %263, i64 %266), !mcsema_real_eip !61
  store i64 %269, i64* %XAX, !mcsema_real_eip !61
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !62
  %270 = add i64 %RBP_val.69, -44, !mcsema_real_eip !62
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !62
  %272 = inttoptr i64 %270 to i32*, !mcsema_real_eip !62
  %273 = load i32, i32* %272, !mcsema_real_eip !62
  %274 = zext i32 %273 to i64, !mcsema_real_eip !62
  store i64 %274, i64* %XCX, !mcsema_real_eip !62
  %275 = add i64 %RBP_val.69, -52, !mcsema_real_eip !63
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !63
  %EAX_val.72 = load i32, i32* %EAX.4, !mcsema_real_eip !63
  %277 = inttoptr i64 %275 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.72, i32* %277, !mcsema_real_eip !63
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !64
  %ECX_val.74 = load i32, i32* %ECX.73, !mcsema_real_eip !64
  %278 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !64
  store i64 %278, i64* %XAX, !mcsema_real_eip !64
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !65
  %279 = add i64 96, %RSP_val.75, !mcsema_real_eip !65
  %280 = xor i64 %279, %RSP_val.75, !mcsema_real_eip !65
  %281 = xor i64 %280, 96, !mcsema_real_eip !65
  %282 = and i64 %281, 16, !mcsema_real_eip !65
  %283 = icmp ne i64 %282, 0, !mcsema_real_eip !65
  store i1 %283, i1* %AF, !mcsema_real_eip !65
  %284 = lshr i64 %279, 63, !mcsema_real_eip !65
  %285 = trunc i64 %284 to i1, !mcsema_real_eip !65
  store i1 %285, i1* %SF, !mcsema_real_eip !65
  %286 = icmp eq i64 %279, 0, !mcsema_real_eip !65
  store i1 %286, i1* %ZF, !mcsema_real_eip !65
  %287 = xor i64 %RSP_val.75, 96, !mcsema_real_eip !65
  %288 = xor i64 %287, -1, !mcsema_real_eip !65
  %289 = and i64 %288, %280, !mcsema_real_eip !65
  %290 = lshr i64 %289, 63, !mcsema_real_eip !65
  %291 = and i64 %290, 1, !mcsema_real_eip !65
  %292 = trunc i64 %291 to i1, !mcsema_real_eip !65
  store i1 %292, i1* %OF, !mcsema_real_eip !65
  %293 = trunc i64 %279 to i8, !mcsema_real_eip !65
  %294 = call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !65
  %295 = trunc i8 %294 to i1, !mcsema_real_eip !65
  %296 = xor i1 %295, true, !mcsema_real_eip !65
  store i1 %296, i1* %PF, !mcsema_real_eip !65
  %297 = icmp ult i64 %279, %RSP_val.75, !mcsema_real_eip !65
  store i1 %297, i1* %CF, !mcsema_real_eip !65
  store i64 %279, i64* %XSP, !mcsema_real_eip !65
  %298 = inttoptr i64 %279 to i64*, !mcsema_real_eip !66
  %299 = load i64, i64* %298, !mcsema_real_eip !66
  store i64 %299, i64* %XBP, !mcsema_real_eip !66
  %300 = add i64 %279, 8, !mcsema_real_eip !66
  store i64 %300, i64* %XSP, !mcsema_real_eip !66
  %301 = add i64 %300, 8, !mcsema_real_eip !67
  %302 = inttoptr i64 %300 to i64*, !mcsema_real_eip !67
  %303 = load i64, i64* %302, !mcsema_real_eip !67
  store i64 %303, i64* %XIP, !mcsema_real_eip !67
  store i64 %301, i64* %XSP, !mcsema_real_eip !67
  ret void, !mcsema_real_eip !67
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !68
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !68
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !68
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !68
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !68
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !68
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !68
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !68
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !68
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !68
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !68
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !68
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !68
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !68
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !68
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !68
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !68
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !68
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !68
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !68
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !68
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !68
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !68
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !68
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !68
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !68
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !68
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !68
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !68
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !68
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !68
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !68
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !68
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !68
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !68
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !68
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !68
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !68
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !68
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !68
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !68
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !68
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !68
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !68
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !68
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !68
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !68
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !68
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !68
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !68
  br label %block_0x0, !mcsema_real_eip !68

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !68
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !68
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !68
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !68
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !68
  store i64 %1, i64* %XSP, !mcsema_real_eip !68
  store i64 %1, i64* %XBP, !mcsema_real_eip !69
  %RBX_val.96 = load i64, i64* %XBX, !mcsema_real_eip !70
  %3 = sub i64 %1, 8, !mcsema_real_eip !70
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.96, i64* %4, !mcsema_real_eip !70
  store i64 %3, i64* %XSP, !mcsema_real_eip !70
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !71
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !71
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !71
  %7 = load i64, i64* %6, !mcsema_real_eip !71
  store i64 %7, i64* %XAX, !mcsema_real_eip !71
  %8 = add i64 %RBP_val.98, 32, !mcsema_real_eip !72
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !72
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !72
  %11 = load i32, i32* %10, !mcsema_real_eip !72
  %12 = zext i32 %11 to i64, !mcsema_real_eip !72
  store i64 %12, i64* %R10, !mcsema_real_eip !72
  %13 = add i64 %RBP_val.98, 24, !mcsema_real_eip !73
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !73
  %15 = load i64, i64* %14, !mcsema_real_eip !73
  store i64 %15, i64* %R11, !mcsema_real_eip !73
  %16 = add i64 %RBP_val.98, 16, !mcsema_real_eip !74
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !74
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !74
  %19 = load i32, i32* %18, !mcsema_real_eip !74
  %20 = zext i32 %19 to i64, !mcsema_real_eip !74
  store i64 %20, i64* %XBX, !mcsema_real_eip !74
  %21 = add i64 %RBP_val.98, -12, !mcsema_real_eip !75
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !75
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !75
  %EDI_val.104 = load i32, i32* %EDI.103, !mcsema_real_eip !75
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !75
  store i32 %EDI_val.104, i32* %23, !mcsema_real_eip !75
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !76
  %24 = add i64 %RBP_val.105, -16, !mcsema_real_eip !76
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !76
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !76
  %ESI_val.107 = load i32, i32* %ESI.106, !mcsema_real_eip !76
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !76
  store i32 %ESI_val.107, i32* %26, !mcsema_real_eip !76
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !77
  %27 = add i64 %RBP_val.108, -20, !mcsema_real_eip !77
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !77
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !77
  %EDX_val.110 = load i32, i32* %EDX.109, !mcsema_real_eip !77
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !77
  store i32 %EDX_val.110, i32* %29, !mcsema_real_eip !77
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !78
  %30 = add i64 %RBP_val.111, -24, !mcsema_real_eip !78
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !78
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !78
  %ECX_val.113 = load i32, i32* %ECX.112, !mcsema_real_eip !78
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !78
  store i32 %ECX_val.113, i32* %32, !mcsema_real_eip !78
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !79
  %33 = add i64 %RBP_val.114, -28, !mcsema_real_eip !79
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !79
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.116 = load i32, i32* %R8D.115, !mcsema_real_eip !79
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.116, i32* %35, !mcsema_real_eip !79
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !80
  %36 = add i64 %RBP_val.117, -32, !mcsema_real_eip !80
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !80
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.119 = load i32, i32* %R9D.118, !mcsema_real_eip !80
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.119, i32* %38, !mcsema_real_eip !80
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !81
  %39 = add i64 %RBP_val.120, -36, !mcsema_real_eip !81
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !81
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.122 = load i32, i32* %EBX.121, !mcsema_real_eip !81
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.122, i32* %41, !mcsema_real_eip !81
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !82
  %42 = add i64 %RBP_val.123, -48, !mcsema_real_eip !82
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !82
  %R11_val.124 = load i64, i64* %R11, !mcsema_real_eip !82
  store i64 %R11_val.124, i64* %43, !mcsema_real_eip !82
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !83
  %44 = add i64 %RBP_val.125, -52, !mcsema_real_eip !83
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !83
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.127 = load i32, i32* %R10D.126, !mcsema_real_eip !83
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.127, i32* %46, !mcsema_real_eip !83
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !84
  %47 = add i64 %RBP_val.128, -64, !mcsema_real_eip !84
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !84
  %RAX_val.129 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.129, i64* %48, !mcsema_real_eip !84
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !85
  %49 = add i64 %RBP_val.130, -68, !mcsema_real_eip !85
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !85
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !85
  store i32 0, i32* %51, !mcsema_real_eip !85
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !86
  %52 = add i64 %RBP_val.131, -72, !mcsema_real_eip !86
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !86
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !86
  store i32 0, i32* %54, !mcsema_real_eip !86
  br label %block_0x45, !mcsema_real_eip !87

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !87
  %55 = add i64 %RBP_val.132, -72, !mcsema_real_eip !87
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !87
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !87
  %58 = load i32, i32* %57, !mcsema_real_eip !87
  %59 = zext i32 %58 to i64, !mcsema_real_eip !87
  store i64 %59, i64* %XAX, !mcsema_real_eip !87
  %60 = add i64 %RBP_val.132, -36, !mcsema_real_eip !88
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !88
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.135 = load i32, i32* %EAX.134, !mcsema_real_eip !88
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !88
  %63 = load i32, i32* %62, !mcsema_real_eip !88
  %64 = sub i32 %EAX_val.135, %63, !mcsema_real_eip !88
  %65 = xor i32 %64, %EAX_val.135, !mcsema_real_eip !88
  %66 = xor i32 %65, %63, !mcsema_real_eip !88
  %67 = and i32 %66, 16, !mcsema_real_eip !88
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !88
  store i1 %68, i1* %AF, !mcsema_real_eip !88
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !88
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !88
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !88
  %72 = xor i1 %71, true, !mcsema_real_eip !88
  store i1 %72, i1* %PF, !mcsema_real_eip !88
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !88
  store i1 %73, i1* %ZF, !mcsema_real_eip !88
  %74 = lshr i32 %64, 31, !mcsema_real_eip !88
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !88
  store i1 %75, i1* %SF, !mcsema_real_eip !88
  %76 = icmp ult i32 %EAX_val.135, %63, !mcsema_real_eip !88
  store i1 %76, i1* %CF, !mcsema_real_eip !88
  %77 = xor i32 %EAX_val.135, %63, !mcsema_real_eip !88
  %78 = and i32 %77, %65, !mcsema_real_eip !88
  %79 = lshr i32 %78, 31, !mcsema_real_eip !88
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !88
  store i1 %80, i1* %OF, !mcsema_real_eip !88
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !89
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !89

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.132, -48, !mcsema_real_eip !90
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !90
  %84 = load i64, i64* %83, !mcsema_real_eip !90
  store i64 %84, i64* %XAX, !mcsema_real_eip !90
  %85 = load i32, i32* %57, !mcsema_real_eip !91
  %86 = sext i32 %85 to i64, !mcsema_real_eip !91
  store i64 %86, i64* %XCX, !mcsema_real_eip !91
  %87 = mul i64 %86, 4, !mcsema_real_eip !92
  %88 = add i64 %84, %87, !mcsema_real_eip !92
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !92
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !92
  %91 = load i32, i32* %90, !mcsema_real_eip !92
  %92 = zext i32 %91 to i64, !mcsema_real_eip !92
  store i64 %92, i64* %XDX, !mcsema_real_eip !92
  %93 = add i64 %RBP_val.132, -64, !mcsema_real_eip !93
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !93
  %95 = load i64, i64* %94, !mcsema_real_eip !93
  store i64 %95, i64* %XAX, !mcsema_real_eip !93
  %96 = load i32, i32* %57, !mcsema_real_eip !94
  %97 = sext i32 %96 to i64, !mcsema_real_eip !94
  store i64 %97, i64* %XCX, !mcsema_real_eip !94
  %98 = mul i64 %97, 4, !mcsema_real_eip !95
  %99 = add i64 %95, %98, !mcsema_real_eip !95
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !95
  %EDX_val.169 = load i32, i32* %EDX.109, !mcsema_real_eip !95
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !95
  %102 = load i32, i32* %101, !mcsema_real_eip !95
  %103 = sub i32 %EDX_val.169, %102, !mcsema_real_eip !95
  %104 = xor i32 %103, %EDX_val.169, !mcsema_real_eip !95
  %105 = xor i32 %104, %102, !mcsema_real_eip !95
  %106 = and i32 %105, 16, !mcsema_real_eip !95
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !95
  store i1 %107, i1* %AF, !mcsema_real_eip !95
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !95
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !95
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !95
  %111 = xor i1 %110, true, !mcsema_real_eip !95
  store i1 %111, i1* %PF, !mcsema_real_eip !95
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !95
  store i1 %112, i1* %ZF, !mcsema_real_eip !95
  %113 = lshr i32 %103, 31, !mcsema_real_eip !95
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !95
  store i1 %114, i1* %SF, !mcsema_real_eip !95
  %115 = icmp ult i32 %EDX_val.169, %102, !mcsema_real_eip !95
  store i1 %115, i1* %CF, !mcsema_real_eip !95
  %116 = xor i32 %EDX_val.169, %102, !mcsema_real_eip !95
  %117 = and i32 %116, %104, !mcsema_real_eip !95
  %118 = lshr i32 %117, 31, !mcsema_real_eip !95
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !95
  store i1 %119, i1* %OF, !mcsema_real_eip !95
  %120 = zext i32 %103 to i64, !mcsema_real_eip !95
  store i64 %120, i64* %XDX, !mcsema_real_eip !95
  %121 = add i64 %RBP_val.132, -68, !mcsema_real_eip !96
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !96
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !96
  %124 = load i32, i32* %123, !mcsema_real_eip !96
  %EDX_val.172 = load i32, i32* %EDX.109, !mcsema_real_eip !96
  %125 = add i32 %EDX_val.172, %124, !mcsema_real_eip !96
  %126 = xor i32 %125, %124, !mcsema_real_eip !96
  %127 = xor i32 %126, %EDX_val.172, !mcsema_real_eip !96
  %128 = and i32 %127, 16, !mcsema_real_eip !96
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !96
  store i1 %129, i1* %AF, !mcsema_real_eip !96
  %130 = lshr i32 %125, 31, !mcsema_real_eip !96
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !96
  store i1 %131, i1* %SF, !mcsema_real_eip !96
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !96
  store i1 %132, i1* %ZF, !mcsema_real_eip !96
  %133 = xor i32 %124, %EDX_val.172, !mcsema_real_eip !96
  %134 = xor i32 %133, -1, !mcsema_real_eip !96
  %135 = and i32 %134, %126, !mcsema_real_eip !96
  %136 = lshr i32 %135, 31, !mcsema_real_eip !96
  %137 = and i32 %136, 1, !mcsema_real_eip !96
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !96
  store i1 %138, i1* %OF, !mcsema_real_eip !96
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !96
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !96
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !96
  %142 = xor i1 %141, true, !mcsema_real_eip !96
  store i1 %142, i1* %PF, !mcsema_real_eip !96
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !96
  store i1 %143, i1* %CF, !mcsema_real_eip !96
  %144 = zext i32 %125 to i64, !mcsema_real_eip !96
  store i64 %144, i64* %XDX, !mcsema_real_eip !96
  %EDX_val.175 = load i32, i32* %EDX.109, !mcsema_real_eip !97
  store i32 %EDX_val.175, i32* %123, !mcsema_real_eip !97
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !98
  %145 = add i64 %RBP_val.176, -72, !mcsema_real_eip !98
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !98
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !98
  %148 = load i32, i32* %147, !mcsema_real_eip !98
  %149 = zext i32 %148 to i64, !mcsema_real_eip !98
  store i64 %149, i64* %XAX, !mcsema_real_eip !98
  %EAX_val.178 = load i32, i32* %EAX.134, !mcsema_real_eip !99
  %150 = add i32 1, %EAX_val.178, !mcsema_real_eip !99
  %151 = xor i32 %150, %EAX_val.178, !mcsema_real_eip !99
  %152 = xor i32 %151, 1, !mcsema_real_eip !99
  %153 = and i32 %152, 16, !mcsema_real_eip !99
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !99
  store i1 %154, i1* %AF, !mcsema_real_eip !99
  %155 = lshr i32 %150, 31, !mcsema_real_eip !99
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !99
  store i1 %156, i1* %SF, !mcsema_real_eip !99
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !99
  store i1 %157, i1* %ZF, !mcsema_real_eip !99
  %158 = xor i32 %EAX_val.178, 1, !mcsema_real_eip !99
  %159 = xor i32 %158, -1, !mcsema_real_eip !99
  %160 = and i32 %159, %151, !mcsema_real_eip !99
  %161 = lshr i32 %160, 31, !mcsema_real_eip !99
  %162 = and i32 %161, 1, !mcsema_real_eip !99
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !99
  store i1 %163, i1* %OF, !mcsema_real_eip !99
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !99
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !99
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !99
  %167 = xor i1 %166, true, !mcsema_real_eip !99
  store i1 %167, i1* %PF, !mcsema_real_eip !99
  %168 = icmp ult i32 %150, %EAX_val.178, !mcsema_real_eip !99
  store i1 %168, i1* %CF, !mcsema_real_eip !99
  %169 = zext i32 %150 to i64, !mcsema_real_eip !99
  store i64 %169, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.181 = load i32, i32* %EAX.134, !mcsema_real_eip !100
  store i32 %EAX_val.181, i32* %147, !mcsema_real_eip !100
  br label %block_0x45, !mcsema_real_eip !101

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.132, -68, !mcsema_real_eip !102
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !102
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !102
  %173 = load i32, i32* %172, !mcsema_real_eip !102
  %174 = zext i32 %173 to i64, !mcsema_real_eip !102
  store i64 %174, i64* %XAX, !mcsema_real_eip !102
  %175 = add i64 %RBP_val.132, -12, !mcsema_real_eip !103
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !103
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !103
  %178 = load i32, i32* %177, !mcsema_real_eip !103
  %179 = zext i32 %178 to i64, !mcsema_real_eip !103
  store i64 %179, i64* %XCX, !mcsema_real_eip !103
  %180 = add i64 %RBP_val.132, -16, !mcsema_real_eip !104
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !104
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !104
  %183 = load i32, i32* %182, !mcsema_real_eip !104
  %ECX_val.140 = load i32, i32* %ECX.112, !mcsema_real_eip !104
  %184 = add i32 %ECX_val.140, %183, !mcsema_real_eip !104
  %185 = xor i32 %184, %183, !mcsema_real_eip !104
  %186 = xor i32 %185, %ECX_val.140, !mcsema_real_eip !104
  %187 = and i32 %186, 16, !mcsema_real_eip !104
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !104
  store i1 %188, i1* %AF, !mcsema_real_eip !104
  %189 = lshr i32 %184, 31, !mcsema_real_eip !104
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !104
  store i1 %190, i1* %SF, !mcsema_real_eip !104
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !104
  store i1 %191, i1* %ZF, !mcsema_real_eip !104
  %192 = xor i32 %183, %ECX_val.140, !mcsema_real_eip !104
  %193 = xor i32 %192, -1, !mcsema_real_eip !104
  %194 = and i32 %193, %185, !mcsema_real_eip !104
  %195 = lshr i32 %194, 31, !mcsema_real_eip !104
  %196 = and i32 %195, 1, !mcsema_real_eip !104
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !104
  store i1 %197, i1* %OF, !mcsema_real_eip !104
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !104
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !104
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !104
  %201 = xor i1 %200, true, !mcsema_real_eip !104
  store i1 %201, i1* %PF, !mcsema_real_eip !104
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !104
  store i1 %202, i1* %CF, !mcsema_real_eip !104
  %203 = zext i32 %184 to i64, !mcsema_real_eip !104
  store i64 %203, i64* %XCX, !mcsema_real_eip !104
  %204 = add i64 %RBP_val.132, -20, !mcsema_real_eip !105
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !105
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !105
  %207 = load i32, i32* %206, !mcsema_real_eip !105
  %ECX_val.143 = load i32, i32* %ECX.112, !mcsema_real_eip !105
  %208 = add i32 %ECX_val.143, %207, !mcsema_real_eip !105
  %209 = xor i32 %208, %207, !mcsema_real_eip !105
  %210 = xor i32 %209, %ECX_val.143, !mcsema_real_eip !105
  %211 = and i32 %210, 16, !mcsema_real_eip !105
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !105
  store i1 %212, i1* %AF, !mcsema_real_eip !105
  %213 = lshr i32 %208, 31, !mcsema_real_eip !105
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !105
  store i1 %214, i1* %SF, !mcsema_real_eip !105
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !105
  store i1 %215, i1* %ZF, !mcsema_real_eip !105
  %216 = xor i32 %207, %ECX_val.143, !mcsema_real_eip !105
  %217 = xor i32 %216, -1, !mcsema_real_eip !105
  %218 = and i32 %217, %209, !mcsema_real_eip !105
  %219 = lshr i32 %218, 31, !mcsema_real_eip !105
  %220 = and i32 %219, 1, !mcsema_real_eip !105
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !105
  store i1 %221, i1* %OF, !mcsema_real_eip !105
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !105
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !105
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !105
  %225 = xor i1 %224, true, !mcsema_real_eip !105
  store i1 %225, i1* %PF, !mcsema_real_eip !105
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !105
  store i1 %226, i1* %CF, !mcsema_real_eip !105
  %227 = zext i32 %208 to i64, !mcsema_real_eip !105
  store i64 %227, i64* %XCX, !mcsema_real_eip !105
  %228 = add i64 %RBP_val.132, -24, !mcsema_real_eip !106
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !106
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !106
  %231 = load i32, i32* %230, !mcsema_real_eip !106
  %ECX_val.146 = load i32, i32* %ECX.112, !mcsema_real_eip !106
  %232 = add i32 %ECX_val.146, %231, !mcsema_real_eip !106
  %233 = xor i32 %232, %231, !mcsema_real_eip !106
  %234 = xor i32 %233, %ECX_val.146, !mcsema_real_eip !106
  %235 = and i32 %234, 16, !mcsema_real_eip !106
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !106
  store i1 %236, i1* %AF, !mcsema_real_eip !106
  %237 = lshr i32 %232, 31, !mcsema_real_eip !106
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !106
  store i1 %238, i1* %SF, !mcsema_real_eip !106
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !106
  store i1 %239, i1* %ZF, !mcsema_real_eip !106
  %240 = xor i32 %231, %ECX_val.146, !mcsema_real_eip !106
  %241 = xor i32 %240, -1, !mcsema_real_eip !106
  %242 = and i32 %241, %233, !mcsema_real_eip !106
  %243 = lshr i32 %242, 31, !mcsema_real_eip !106
  %244 = and i32 %243, 1, !mcsema_real_eip !106
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !106
  store i1 %245, i1* %OF, !mcsema_real_eip !106
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !106
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !106
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !106
  %249 = xor i1 %248, true, !mcsema_real_eip !106
  store i1 %249, i1* %PF, !mcsema_real_eip !106
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !106
  store i1 %250, i1* %CF, !mcsema_real_eip !106
  %251 = zext i32 %232 to i64, !mcsema_real_eip !106
  store i64 %251, i64* %XCX, !mcsema_real_eip !106
  %252 = add i64 %RBP_val.132, -28, !mcsema_real_eip !107
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !107
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !107
  %255 = load i32, i32* %254, !mcsema_real_eip !107
  %ECX_val.149 = load i32, i32* %ECX.112, !mcsema_real_eip !107
  %256 = add i32 %ECX_val.149, %255, !mcsema_real_eip !107
  %257 = xor i32 %256, %255, !mcsema_real_eip !107
  %258 = xor i32 %257, %ECX_val.149, !mcsema_real_eip !107
  %259 = and i32 %258, 16, !mcsema_real_eip !107
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !107
  store i1 %260, i1* %AF, !mcsema_real_eip !107
  %261 = lshr i32 %256, 31, !mcsema_real_eip !107
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !107
  store i1 %262, i1* %SF, !mcsema_real_eip !107
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !107
  store i1 %263, i1* %ZF, !mcsema_real_eip !107
  %264 = xor i32 %255, %ECX_val.149, !mcsema_real_eip !107
  %265 = xor i32 %264, -1, !mcsema_real_eip !107
  %266 = and i32 %265, %257, !mcsema_real_eip !107
  %267 = lshr i32 %266, 31, !mcsema_real_eip !107
  %268 = and i32 %267, 1, !mcsema_real_eip !107
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !107
  store i1 %269, i1* %OF, !mcsema_real_eip !107
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !107
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !107
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !107
  %273 = xor i1 %272, true, !mcsema_real_eip !107
  store i1 %273, i1* %PF, !mcsema_real_eip !107
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !107
  store i1 %274, i1* %CF, !mcsema_real_eip !107
  %275 = zext i32 %256 to i64, !mcsema_real_eip !107
  store i64 %275, i64* %XCX, !mcsema_real_eip !107
  %276 = add i64 %RBP_val.132, -32, !mcsema_real_eip !108
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !108
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !108
  %279 = load i32, i32* %278, !mcsema_real_eip !108
  %ECX_val.152 = load i32, i32* %ECX.112, !mcsema_real_eip !108
  %280 = add i32 %ECX_val.152, %279, !mcsema_real_eip !108
  %281 = xor i32 %280, %279, !mcsema_real_eip !108
  %282 = xor i32 %281, %ECX_val.152, !mcsema_real_eip !108
  %283 = and i32 %282, 16, !mcsema_real_eip !108
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !108
  store i1 %284, i1* %AF, !mcsema_real_eip !108
  %285 = lshr i32 %280, 31, !mcsema_real_eip !108
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !108
  store i1 %286, i1* %SF, !mcsema_real_eip !108
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !108
  store i1 %287, i1* %ZF, !mcsema_real_eip !108
  %288 = xor i32 %279, %ECX_val.152, !mcsema_real_eip !108
  %289 = xor i32 %288, -1, !mcsema_real_eip !108
  %290 = and i32 %289, %281, !mcsema_real_eip !108
  %291 = lshr i32 %290, 31, !mcsema_real_eip !108
  %292 = and i32 %291, 1, !mcsema_real_eip !108
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !108
  store i1 %293, i1* %OF, !mcsema_real_eip !108
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !108
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !108
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !108
  %297 = xor i1 %296, true, !mcsema_real_eip !108
  store i1 %297, i1* %PF, !mcsema_real_eip !108
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !108
  store i1 %298, i1* %CF, !mcsema_real_eip !108
  %299 = zext i32 %280 to i64, !mcsema_real_eip !108
  store i64 %299, i64* %XCX, !mcsema_real_eip !108
  %ECX_val.154 = load i32, i32* %ECX.112, !mcsema_real_eip !109
  %EAX_val.156 = load i32, i32* %EAX.134, !mcsema_real_eip !109
  %300 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !109
  %301 = sext i32 %ECX_val.154 to i64, !mcsema_real_eip !109
  %302 = mul i64 %300, %301, !mcsema_real_eip !109
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !109
  %304 = sext i32 %303 to i64, !mcsema_real_eip !109
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !109
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !109
  store i1 %306, i1* %SF, !mcsema_real_eip !109
  store i1 %305, i1* %OF, !mcsema_real_eip !109
  store i1 %305, i1* %CF, !mcsema_real_eip !109
  %307 = zext i32 %303 to i64, !mcsema_real_eip !109
  store i64 %307, i64* %XAX, !mcsema_real_eip !109
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !110
  %308 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !110
  %309 = load i64, i64* %308, !mcsema_real_eip !110
  store i64 %309, i64* %XBX, !mcsema_real_eip !110
  %310 = add i64 %RSP_val.157, 8, !mcsema_real_eip !110
  store i64 %310, i64* %XSP, !mcsema_real_eip !110
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !111
  %312 = load i64, i64* %311, !mcsema_real_eip !111
  store i64 %312, i64* %XBP, !mcsema_real_eip !111
  %313 = add i64 %310, 8, !mcsema_real_eip !111
  store i64 %313, i64* %XSP, !mcsema_real_eip !111
  %314 = add i64 %313, 8, !mcsema_real_eip !112
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !112
  %316 = load i64, i64* %315, !mcsema_real_eip !112
  store i64 %316, i64* %XIP, !mcsema_real_eip !112
  store i64 %314, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
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
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 173}
!7 = !{i64 175}
!8 = !{i64 182}
!9 = !{i64 185}
!10 = !{i64 189}
!11 = !{i64 192}
!12 = !{i64 197}
!13 = !{i64 202}
!14 = !{i64 204}
!15 = !{i64 208}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 224}
!19 = !{i64 228}
!20 = !{i64 234}
!21 = !{i64 237}
!22 = !{i64 240}
!23 = !{i64 243}
!24 = !{i64 247}
!25 = !{i64 251}
!26 = !{i64 254}
!27 = !{i64 257}
!28 = !{i64 260}
!29 = !{i64 263}
!30 = !{i64 268}
!31 = !{i64 275}
!32 = !{i64 279}
!33 = !{i64 285}
!34 = !{i64 288}
!35 = !{i64 291}
!36 = !{i64 295}
!37 = !{i64 299}
!38 = !{i64 302}
!39 = !{i64 305}
!40 = !{i64 308}
!41 = !{i64 311}
!42 = !{i64 316}
!43 = !{i64 321}
!44 = !{i64 326}
!45 = !{i64 331}
!46 = !{i64 336}
!47 = !{i64 342}
!48 = !{i64 348}
!49 = !{i64 353}
!50 = !{i64 357}
!51 = !{i64 361}
!52 = !{i64 368}
!53 = !{i64 373}
!54 = !{i64 381}
!55 = !{i64 386}
!56 = !{i64 389}
!57 = !{i64 394}
!58 = !{i64 404}
!59 = !{i64 407}
!60 = !{i64 410}
!61 = !{i64 412}
!62 = !{i64 417}
!63 = !{i64 420}
!64 = !{i64 423}
!65 = !{i64 425}
!66 = !{i64 429}
!67 = !{i64 430}
!68 = !{i64 0}
!69 = !{i64 1}
!70 = !{i64 4}
!71 = !{i64 5}
!72 = !{i64 9}
!73 = !{i64 13}
!74 = !{i64 17}
!75 = !{i64 20}
!76 = !{i64 23}
!77 = !{i64 26}
!78 = !{i64 29}
!79 = !{i64 32}
!80 = !{i64 36}
!81 = !{i64 40}
!82 = !{i64 43}
!83 = !{i64 47}
!84 = !{i64 51}
!85 = !{i64 55}
!86 = !{i64 62}
!87 = !{i64 69}
!88 = !{i64 72}
!89 = !{i64 75}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 89}
!93 = !{i64 92}
!94 = !{i64 96}
!95 = !{i64 100}
!96 = !{i64 103}
!97 = !{i64 106}
!98 = !{i64 109}
!99 = !{i64 112}
!100 = !{i64 115}
!101 = !{i64 118}
!102 = !{i64 123}
!103 = !{i64 126}
!104 = !{i64 129}
!105 = !{i64 132}
!106 = !{i64 135}
!107 = !{i64 138}
!108 = !{i64 141}
!109 = !{i64 144}
!110 = !{i64 147}
!111 = !{i64 148}
!112 = !{i64 149}
