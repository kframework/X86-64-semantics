; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
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
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  br label %block_0x140, !mcsema_real_eip !2

block_0x140:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %R14_val.3 = load i64, i64* %R14, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R14_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBX_val.5 = load i64, i64* %XBX, !mcsema_real_eip !5
  %5 = sub i64 %3, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %RBX_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %7 = sub i64 %5, 160, !mcsema_real_eip !6
  %8 = xor i64 %7, %5, !mcsema_real_eip !6
  %9 = xor i64 %8, 160, !mcsema_real_eip !6
  %10 = and i64 %9, 16, !mcsema_real_eip !6
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !6
  store i1 %11, i1* %AF, !mcsema_real_eip !6
  %12 = trunc i64 %7 to i8, !mcsema_real_eip !6
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !6
  %14 = trunc i8 %13 to i1, !mcsema_real_eip !6
  %15 = xor i1 %14, true, !mcsema_real_eip !6
  store i1 %15, i1* %PF, !mcsema_real_eip !6
  %16 = icmp eq i64 %7, 0, !mcsema_real_eip !6
  store i1 %16, i1* %ZF, !mcsema_real_eip !6
  %17 = lshr i64 %7, 63, !mcsema_real_eip !6
  %18 = trunc i64 %17 to i1, !mcsema_real_eip !6
  store i1 %18, i1* %SF, !mcsema_real_eip !6
  %19 = icmp ult i64 %5, 160, !mcsema_real_eip !6
  store i1 %19, i1* %CF, !mcsema_real_eip !6
  %20 = xor i64 %5, 160, !mcsema_real_eip !6
  %21 = and i64 %20, %8, !mcsema_real_eip !6
  %22 = lshr i64 %21, 63, !mcsema_real_eip !6
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !6
  store i1 %23, i1* %OF, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.8, -20, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !7
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %26, !mcsema_real_eip !7
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !8
  %27 = add i64 %RBP_val.9, -24, !mcsema_real_eip !8
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !8
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %29, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.10, -68, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %32, !mcsema_real_eip !9
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %33 = add i64 %RBP_val.11, -68, !mcsema_real_eip !10
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !10
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !10
  %36 = load i32, i32* %35, !mcsema_real_eip !10
  %37 = sub i32 %36, 10, !mcsema_real_eip !10
  %38 = xor i32 %37, %36, !mcsema_real_eip !10
  %39 = xor i32 %38, 10, !mcsema_real_eip !10
  %40 = and i32 %39, 16, !mcsema_real_eip !10
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !10
  store i1 %41, i1* %AF, !mcsema_real_eip !10
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !10
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !10
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !10
  %45 = xor i1 %44, true, !mcsema_real_eip !10
  store i1 %45, i1* %PF, !mcsema_real_eip !10
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !10
  store i1 %46, i1* %ZF, !mcsema_real_eip !10
  %47 = lshr i32 %37, 31, !mcsema_real_eip !10
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !10
  store i1 %48, i1* %SF, !mcsema_real_eip !10
  %49 = icmp ult i32 %36, 10, !mcsema_real_eip !10
  store i1 %49, i1* %CF, !mcsema_real_eip !10
  %50 = xor i32 %36, 10, !mcsema_real_eip !10
  %51 = and i32 %50, %38, !mcsema_real_eip !10
  %52 = lshr i32 %51, 31, !mcsema_real_eip !10
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !10
  store i1 %53, i1* %OF, !mcsema_real_eip !10
  %54 = icmp eq i1 %48, %53, !mcsema_real_eip !11
  br i1 %54, label %block_0x189, label %block_0x16d, !mcsema_real_eip !11

block_0x16d:                                      ; preds = %block_0x163
  %55 = load i32, i32* %35, !mcsema_real_eip !12
  %56 = zext i32 %55 to i64, !mcsema_real_eip !12
  store i64 %56, i64* %XAX, !mcsema_real_eip !12
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !13
  %57 = add i32 1, %EAX_val.24, !mcsema_real_eip !13
  %58 = xor i32 %57, %EAX_val.24, !mcsema_real_eip !13
  %59 = xor i32 %58, 1, !mcsema_real_eip !13
  %60 = and i32 %59, 16, !mcsema_real_eip !13
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !13
  store i1 %61, i1* %AF, !mcsema_real_eip !13
  %62 = lshr i32 %57, 31, !mcsema_real_eip !13
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !13
  store i1 %63, i1* %SF, !mcsema_real_eip !13
  %64 = icmp eq i32 %57, 0, !mcsema_real_eip !13
  store i1 %64, i1* %ZF, !mcsema_real_eip !13
  %65 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !13
  %66 = xor i32 %65, -1, !mcsema_real_eip !13
  %67 = and i32 %66, %58, !mcsema_real_eip !13
  %68 = lshr i32 %67, 31, !mcsema_real_eip !13
  %69 = and i32 %68, 1, !mcsema_real_eip !13
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !13
  store i1 %70, i1* %OF, !mcsema_real_eip !13
  %71 = trunc i32 %57 to i8, !mcsema_real_eip !13
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !13
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !13
  %74 = xor i1 %73, true, !mcsema_real_eip !13
  store i1 %74, i1* %PF, !mcsema_real_eip !13
  %75 = icmp ult i32 %57, %EAX_val.24, !mcsema_real_eip !13
  store i1 %75, i1* %CF, !mcsema_real_eip !13
  %76 = zext i32 %57 to i64, !mcsema_real_eip !13
  store i64 %76, i64* %XAX, !mcsema_real_eip !13
  %77 = load i32, i32* %35, !mcsema_real_eip !14
  %78 = sext i32 %77 to i64, !mcsema_real_eip !14
  store i64 %78, i64* %XCX, !mcsema_real_eip !14
  %79 = add i64 %RBP_val.11, -64, !mcsema_real_eip !15
  %80 = mul i64 %78, 4, !mcsema_real_eip !15
  %81 = add i64 %79, %80, !mcsema_real_eip !15
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.23, !mcsema_real_eip !15
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %83, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %84 = add i64 %RBP_val.30, -68, !mcsema_real_eip !16
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !16
  %86 = inttoptr i64 %84 to i32*, !mcsema_real_eip !16
  %87 = load i32, i32* %86, !mcsema_real_eip !16
  %88 = zext i32 %87 to i64, !mcsema_real_eip !16
  store i64 %88, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.32 = load i32, i32* %EAX.23, !mcsema_real_eip !17
  %89 = add i32 1, %EAX_val.32, !mcsema_real_eip !17
  %90 = xor i32 %89, %EAX_val.32, !mcsema_real_eip !17
  %91 = xor i32 %90, 1, !mcsema_real_eip !17
  %92 = and i32 %91, 16, !mcsema_real_eip !17
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !17
  store i1 %93, i1* %AF, !mcsema_real_eip !17
  %94 = lshr i32 %89, 31, !mcsema_real_eip !17
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !17
  store i1 %95, i1* %SF, !mcsema_real_eip !17
  %96 = icmp eq i32 %89, 0, !mcsema_real_eip !17
  store i1 %96, i1* %ZF, !mcsema_real_eip !17
  %97 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !17
  %98 = xor i32 %97, -1, !mcsema_real_eip !17
  %99 = and i32 %98, %90, !mcsema_real_eip !17
  %100 = lshr i32 %99, 31, !mcsema_real_eip !17
  %101 = and i32 %100, 1, !mcsema_real_eip !17
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !17
  store i1 %102, i1* %OF, !mcsema_real_eip !17
  %103 = trunc i32 %89 to i8, !mcsema_real_eip !17
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !17
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !17
  %106 = xor i1 %105, true, !mcsema_real_eip !17
  store i1 %106, i1* %PF, !mcsema_real_eip !17
  %107 = icmp ult i32 %89, %EAX_val.32, !mcsema_real_eip !17
  store i1 %107, i1* %CF, !mcsema_real_eip !17
  %108 = zext i32 %89 to i64, !mcsema_real_eip !17
  store i64 %108, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  store i32 %EAX_val.35, i32* %86, !mcsema_real_eip !18
  br label %block_0x163, !mcsema_real_eip !19

block_0x189:                                      ; preds = %block_0x163
  store i64 40, i64* %XAX, !mcsema_real_eip !20
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !21
  %109 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !21
  store i64 %109, i64* %XDI, !mcsema_real_eip !21
  %110 = add i64 %RBP_val.11, -24, !mcsema_real_eip !22
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !22
  store i64 %110, i64* %XCX, !mcsema_real_eip !22
  %112 = add i64 %RBP_val.11, -80, !mcsema_real_eip !23
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !23
  store i64 %110, i64* %113, !mcsema_real_eip !23
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !24
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !24
  %114 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !24
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !24
  store i64 -2415393069852865332, i64* %115, !mcsema_real_eip !24
  store i64 %114, i64* %XSP, !mcsema_real_eip !24
  %116 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17), !mcsema_real_eip !24
  store i64 %116, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !25
  %117 = add i64 %RBP_val.19, -88, !mcsema_real_eip !25
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !25
  store i64 %116, i64* %118, !mcsema_real_eip !25
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !26
  %119 = add i64 %RBP_val.21, -92, !mcsema_real_eip !26
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !26
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %121, !mcsema_real_eip !26
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !27
  %122 = add i64 %RBP_val.36, -92, !mcsema_real_eip !27
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !27
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !27
  %125 = load i32, i32* %124, !mcsema_real_eip !27
  %126 = sub i32 %125, 10, !mcsema_real_eip !27
  %127 = xor i32 %126, %125, !mcsema_real_eip !27
  %128 = xor i32 %127, 10, !mcsema_real_eip !27
  %129 = and i32 %128, 16, !mcsema_real_eip !27
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !27
  store i1 %130, i1* %AF, !mcsema_real_eip !27
  %131 = trunc i32 %126 to i8, !mcsema_real_eip !27
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !27
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !27
  %134 = xor i1 %133, true, !mcsema_real_eip !27
  store i1 %134, i1* %PF, !mcsema_real_eip !27
  %135 = icmp eq i32 %126, 0, !mcsema_real_eip !27
  store i1 %135, i1* %ZF, !mcsema_real_eip !27
  %136 = lshr i32 %126, 31, !mcsema_real_eip !27
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !27
  store i1 %137, i1* %SF, !mcsema_real_eip !27
  %138 = icmp ult i32 %125, 10, !mcsema_real_eip !27
  store i1 %138, i1* %CF, !mcsema_real_eip !27
  %139 = xor i32 %125, 10, !mcsema_real_eip !27
  %140 = and i32 %139, %127, !mcsema_real_eip !27
  %141 = lshr i32 %140, 31, !mcsema_real_eip !27
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !27
  store i1 %142, i1* %OF, !mcsema_real_eip !27
  %143 = icmp eq i1 %137, %142, !mcsema_real_eip !28
  br i1 %143, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !28

block_0x1b2:                                      ; preds = %block_0x1a8
  %144 = load i32, i32* %124, !mcsema_real_eip !29
  %145 = zext i32 %144 to i64, !mcsema_real_eip !29
  store i64 %145, i64* %XAX, !mcsema_real_eip !29
  %EAX_val.99 = load i32, i32* %EAX.12, !mcsema_real_eip !30
  %146 = add i32 1, %EAX_val.99, !mcsema_real_eip !30
  %147 = xor i32 %146, %EAX_val.99, !mcsema_real_eip !30
  %148 = xor i32 %147, 1, !mcsema_real_eip !30
  %149 = and i32 %148, 16, !mcsema_real_eip !30
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !30
  store i1 %150, i1* %AF, !mcsema_real_eip !30
  %151 = lshr i32 %146, 31, !mcsema_real_eip !30
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !30
  store i1 %152, i1* %SF, !mcsema_real_eip !30
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !30
  store i1 %153, i1* %ZF, !mcsema_real_eip !30
  %154 = xor i32 %EAX_val.99, 1, !mcsema_real_eip !30
  %155 = xor i32 %154, -1, !mcsema_real_eip !30
  %156 = and i32 %155, %147, !mcsema_real_eip !30
  %157 = lshr i32 %156, 31, !mcsema_real_eip !30
  %158 = and i32 %157, 1, !mcsema_real_eip !30
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !30
  store i1 %159, i1* %OF, !mcsema_real_eip !30
  %160 = trunc i32 %146 to i8, !mcsema_real_eip !30
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !30
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !30
  %163 = xor i1 %162, true, !mcsema_real_eip !30
  store i1 %163, i1* %PF, !mcsema_real_eip !30
  %164 = icmp ult i32 %146, %EAX_val.99, !mcsema_real_eip !30
  store i1 %164, i1* %CF, !mcsema_real_eip !30
  %165 = zext i32 %146 to i64, !mcsema_real_eip !30
  store i64 %165, i64* %XAX, !mcsema_real_eip !30
  %166 = add i64 %RBP_val.36, -88, !mcsema_real_eip !31
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !31
  %168 = load i64, i64* %167, !mcsema_real_eip !31
  store i64 %168, i64* %XCX, !mcsema_real_eip !31
  %169 = load i32, i32* %124, !mcsema_real_eip !32
  %170 = sext i32 %169 to i64, !mcsema_real_eip !32
  store i64 %170, i64* %XDX, !mcsema_real_eip !32
  %171 = mul i64 %170, 4, !mcsema_real_eip !33
  %172 = add i64 %168, %171, !mcsema_real_eip !33
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !33
  %EAX_val.105 = load i32, i32* %EAX.12, !mcsema_real_eip !33
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.105, i32* %174, !mcsema_real_eip !33
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !34
  %175 = add i64 %RBP_val.106, -92, !mcsema_real_eip !34
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !34
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !34
  %178 = load i32, i32* %177, !mcsema_real_eip !34
  %179 = zext i32 %178 to i64, !mcsema_real_eip !34
  store i64 %179, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.108 = load i32, i32* %EAX.12, !mcsema_real_eip !35
  %180 = add i32 1, %EAX_val.108, !mcsema_real_eip !35
  %181 = xor i32 %180, %EAX_val.108, !mcsema_real_eip !35
  %182 = xor i32 %181, 1, !mcsema_real_eip !35
  %183 = and i32 %182, 16, !mcsema_real_eip !35
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !35
  store i1 %184, i1* %AF, !mcsema_real_eip !35
  %185 = lshr i32 %180, 31, !mcsema_real_eip !35
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !35
  store i1 %186, i1* %SF, !mcsema_real_eip !35
  %187 = icmp eq i32 %180, 0, !mcsema_real_eip !35
  store i1 %187, i1* %ZF, !mcsema_real_eip !35
  %188 = xor i32 %EAX_val.108, 1, !mcsema_real_eip !35
  %189 = xor i32 %188, -1, !mcsema_real_eip !35
  %190 = and i32 %189, %181, !mcsema_real_eip !35
  %191 = lshr i32 %190, 31, !mcsema_real_eip !35
  %192 = and i32 %191, 1, !mcsema_real_eip !35
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !35
  store i1 %193, i1* %OF, !mcsema_real_eip !35
  %194 = trunc i32 %180 to i8, !mcsema_real_eip !35
  %195 = call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !35
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !35
  %197 = xor i1 %196, true, !mcsema_real_eip !35
  store i1 %197, i1* %PF, !mcsema_real_eip !35
  %198 = icmp ult i32 %180, %EAX_val.108, !mcsema_real_eip !35
  store i1 %198, i1* %CF, !mcsema_real_eip !35
  %199 = zext i32 %180 to i64, !mcsema_real_eip !35
  store i64 %199, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.111 = load i32, i32* %EAX.12, !mcsema_real_eip !36
  store i32 %EAX_val.111, i32* %177, !mcsema_real_eip !36
  br label %block_0x1a8, !mcsema_real_eip !37

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, !mcsema_real_eip !38
  %200 = add i64 %RBP_val.36, -64, !mcsema_real_eip !39
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !39
  store i64 %200, i64* %XCX, !mcsema_real_eip !39
  %202 = add i64 %RBP_val.36, -24, !mcsema_real_eip !40
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !40
  %204 = inttoptr i64 %202 to i32*, !mcsema_real_eip !40
  %205 = load i32, i32* %204, !mcsema_real_eip !40
  %206 = zext i32 %205 to i64, !mcsema_real_eip !40
  store i64 %206, i64* %XDI, !mcsema_real_eip !40
  %207 = add i64 %RBP_val.36, -80, !mcsema_real_eip !41
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !41
  %209 = load i64, i64* %208, !mcsema_real_eip !41
  store i64 %209, i64* %XDX, !mcsema_real_eip !41
  %210 = add i64 %RBP_val.36, -88, !mcsema_real_eip !42
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !42
  %212 = load i64, i64* %211, !mcsema_real_eip !42
  store i64 %212, i64* %XSI, !mcsema_real_eip !42
  %213 = load i32, i32* %204, !mcsema_real_eip !43
  %214 = zext i32 %213 to i64, !mcsema_real_eip !43
  store i64 %214, i64* %R8, !mcsema_real_eip !43
  %215 = load i64, i64* %208, !mcsema_real_eip !44
  store i64 %215, i64* %R9, !mcsema_real_eip !44
  %216 = load i64, i64* %211, !mcsema_real_eip !45
  store i64 %216, i64* %R10, !mcsema_real_eip !45
  %217 = add i64 %RBP_val.36, -104, !mcsema_real_eip !46
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !46
  store i64 %212, i64* %218, !mcsema_real_eip !46
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %XSI, !mcsema_real_eip !47
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !48
  %219 = add i64 %RBP_val.47, -104, !mcsema_real_eip !48
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !48
  %221 = load i64, i64* %220, !mcsema_real_eip !48
  store i64 %221, i64* %R11, !mcsema_real_eip !48
  %222 = add i64 %RBP_val.47, -112, !mcsema_real_eip !49
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !49
  store i64 %RCX_val.46, i64* %223, !mcsema_real_eip !49
  %R11_val.50 = load i64, i64* %R11, !mcsema_real_eip !50
  store i64 %R11_val.50, i64* %XCX, !mcsema_real_eip !50
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !51
  %224 = add i64 %RBP_val.51, -116, !mcsema_real_eip !51
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !51
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.53 = load i32, i32* %R8D.52, !mcsema_real_eip !51
  %226 = inttoptr i64 %224 to i32*, !mcsema_real_eip !51
  store i32 %R8D_val.53, i32* %226, !mcsema_real_eip !51
  %EAX_val.55 = load i32, i32* %EAX.12, !mcsema_real_eip !52
  %227 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !52
  store i64 %227, i64* %R8, !mcsema_real_eip !52
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !53
  %228 = add i64 %RBP_val.56, -128, !mcsema_real_eip !53
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !53
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %R9_val.57, i64* %229, !mcsema_real_eip !53
  %EAX_val.59 = load i32, i32* %EAX.12, !mcsema_real_eip !54
  %230 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !54
  store i64 %230, i64* %R9, !mcsema_real_eip !54
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !55
  %231 = add i64 %RBP_val.60, -116, !mcsema_real_eip !55
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !55
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !55
  %234 = load i32, i32* %233, !mcsema_real_eip !55
  %235 = zext i32 %234 to i64, !mcsema_real_eip !55
  store i64 %235, i64* %XAX, !mcsema_real_eip !55
  %RSP_val.61 = load i64, i64* %XSP, !mcsema_real_eip !56
  %236 = inttoptr i64 %RSP_val.61 to i64*, !mcsema_real_eip !56
  %EAX_val.63 = load i32, i32* %EAX.12, !mcsema_real_eip !56
  %237 = inttoptr i64 %RSP_val.61 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.63, i32* %237, !mcsema_real_eip !56
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !57
  %238 = add i64 %RBP_val.64, -112, !mcsema_real_eip !57
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !57
  %240 = load i64, i64* %239, !mcsema_real_eip !57
  store i64 %240, i64* %XBX, !mcsema_real_eip !57
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !58
  %241 = add i64 %RSP_val.65, 8, !mcsema_real_eip !58
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !58
  store i64 %240, i64* %242, !mcsema_real_eip !58
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !59
  %243 = add i64 %RBP_val.67, -128, !mcsema_real_eip !59
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !59
  %245 = load i64, i64* %244, !mcsema_real_eip !59
  store i64 %245, i64* %R14, !mcsema_real_eip !59
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !60
  %246 = add i64 %RSP_val.68, 16, !mcsema_real_eip !60
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !60
  store i64 %245, i64* %247, !mcsema_real_eip !60
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !61
  %248 = add i64 %RSP_val.70, 24, !mcsema_real_eip !61
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !61
  %R10_val.71 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %R10_val.71, i64* %249, !mcsema_real_eip !61
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !62
  %250 = sub i64 %RSP_val.72, 8, !mcsema_real_eip !62
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !62
  store i64 -4981261766360305936, i64* %251, !mcsema_real_eip !62
  store i64 %250, i64* %XSP, !mcsema_real_eip !62
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !62
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !63
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !64
  %252 = add i64 %RBP_val.73, -96, !mcsema_real_eip !64
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !64
  %EAX_val.75 = load i32, i32* %EAX.12, !mcsema_real_eip !64
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !64
  store i32 %EAX_val.75, i32* %254, !mcsema_real_eip !64
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !65
  %255 = add i64 %RBP_val.76, -96, !mcsema_real_eip !65
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !65
  %257 = inttoptr i64 %255 to i32*, !mcsema_real_eip !65
  %258 = load i32, i32* %257, !mcsema_real_eip !65
  %259 = zext i32 %258 to i64, !mcsema_real_eip !65
  store i64 %259, i64* %XSI, !mcsema_real_eip !65
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !66
  store i8 0, i8* %AL.77, !mcsema_real_eip !66
  %RDI_val.78 = load i64, i64* %XDI, !mcsema_real_eip !67
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !67
  %RCX_val.81 = load i64, i64* %XCX, !mcsema_real_eip !67
  %R8_val.82 = load i64, i64* %R8, !mcsema_real_eip !67
  %R9_val.83 = load i64, i64* %R9, !mcsema_real_eip !67
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !67
  %260 = inttoptr i64 %RSP_val.84 to i64*, !mcsema_real_eip !67
  %261 = load i64, i64* %260, !mcsema_real_eip !67
  %262 = add i64 %RSP_val.84, 8, !mcsema_real_eip !67
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !67
  %264 = load i64, i64* %263, !mcsema_real_eip !67
  %265 = add i64 %262, 8, !mcsema_real_eip !67
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !67
  %267 = load i64, i64* %266, !mcsema_real_eip !67
  %268 = add i64 %265, 8, !mcsema_real_eip !67
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !67
  %270 = load i64, i64* %269, !mcsema_real_eip !67
  %271 = add i64 %268, 8, !mcsema_real_eip !67
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !67
  %273 = load i64, i64* %272, !mcsema_real_eip !67
  %274 = add i64 %271, 8, !mcsema_real_eip !67
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !67
  %276 = load i64, i64* %275, !mcsema_real_eip !67
  %277 = sub i64 %RSP_val.84, 8, !mcsema_real_eip !67
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !67
  store i64 -2415393069852865332, i64* %278, !mcsema_real_eip !67
  store i64 %277, i64* %XSP, !mcsema_real_eip !67
  %279 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %259, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %261, i64 %264, i64 %267, i64 %270, i64 %273, i64 %276), !mcsema_real_eip !67
  store i64 %279, i64* %XAX, !mcsema_real_eip !67
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !68
  %280 = add i64 %RBP_val.86, -96, !mcsema_real_eip !68
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !68
  %282 = inttoptr i64 %280 to i32*, !mcsema_real_eip !68
  %283 = load i32, i32* %282, !mcsema_real_eip !68
  %284 = zext i32 %283 to i64, !mcsema_real_eip !68
  store i64 %284, i64* %XSI, !mcsema_real_eip !68
  %285 = add i64 %RBP_val.86, -132, !mcsema_real_eip !69
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !69
  %EAX_val.89 = load i32, i32* %EAX.12, !mcsema_real_eip !69
  %287 = inttoptr i64 %285 to i32*, !mcsema_real_eip !69
  store i32 %EAX_val.89, i32* %287, !mcsema_real_eip !69
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.91 = load i32, i32* %ESI.90, !mcsema_real_eip !70
  %288 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !70
  store i64 %288, i64* %XAX, !mcsema_real_eip !70
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !71
  %289 = add i64 160, %RSP_val.92, !mcsema_real_eip !71
  %290 = xor i64 %289, %RSP_val.92, !mcsema_real_eip !71
  %291 = xor i64 %290, 160, !mcsema_real_eip !71
  %292 = and i64 %291, 16, !mcsema_real_eip !71
  %293 = icmp ne i64 %292, 0, !mcsema_real_eip !71
  store i1 %293, i1* %AF, !mcsema_real_eip !71
  %294 = lshr i64 %289, 63, !mcsema_real_eip !71
  %295 = trunc i64 %294 to i1, !mcsema_real_eip !71
  store i1 %295, i1* %SF, !mcsema_real_eip !71
  %296 = icmp eq i64 %289, 0, !mcsema_real_eip !71
  store i1 %296, i1* %ZF, !mcsema_real_eip !71
  %297 = xor i64 %RSP_val.92, 160, !mcsema_real_eip !71
  %298 = xor i64 %297, -1, !mcsema_real_eip !71
  %299 = and i64 %298, %290, !mcsema_real_eip !71
  %300 = lshr i64 %299, 63, !mcsema_real_eip !71
  %301 = and i64 %300, 1, !mcsema_real_eip !71
  %302 = trunc i64 %301 to i1, !mcsema_real_eip !71
  store i1 %302, i1* %OF, !mcsema_real_eip !71
  %303 = trunc i64 %289 to i8, !mcsema_real_eip !71
  %304 = call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !71
  %305 = trunc i8 %304 to i1, !mcsema_real_eip !71
  %306 = xor i1 %305, true, !mcsema_real_eip !71
  store i1 %306, i1* %PF, !mcsema_real_eip !71
  %307 = icmp ult i64 %289, %RSP_val.92, !mcsema_real_eip !71
  store i1 %307, i1* %CF, !mcsema_real_eip !71
  store i64 %289, i64* %XSP, !mcsema_real_eip !71
  %308 = inttoptr i64 %289 to i64*, !mcsema_real_eip !72
  %309 = load i64, i64* %308, !mcsema_real_eip !72
  store i64 %309, i64* %XBX, !mcsema_real_eip !72
  %310 = add i64 %289, 8, !mcsema_real_eip !72
  store i64 %310, i64* %XSP, !mcsema_real_eip !72
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !73
  %312 = load i64, i64* %311, !mcsema_real_eip !73
  store i64 %312, i64* %R14, !mcsema_real_eip !73
  %313 = add i64 %310, 8, !mcsema_real_eip !73
  store i64 %313, i64* %XSP, !mcsema_real_eip !73
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !74
  %315 = load i64, i64* %314, !mcsema_real_eip !74
  store i64 %315, i64* %XBP, !mcsema_real_eip !74
  %316 = add i64 %313, 8, !mcsema_real_eip !74
  store i64 %316, i64* %XSP, !mcsema_real_eip !74
  %317 = add i64 %316, 8, !mcsema_real_eip !75
  %318 = inttoptr i64 %316 to i64*, !mcsema_real_eip !75
  %319 = load i64, i64* %318, !mcsema_real_eip !75
  store i64 %319, i64* %XIP, !mcsema_real_eip !75
  store i64 %317, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !76
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !76
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !76
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !76
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !76
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !76
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !76
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !76
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !76
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !76
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !76
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !76
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !76
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !76
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !76
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !76
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !76
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !76
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !76
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !76
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !76
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !76
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !76
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !76
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !76
  %RSP_val.113 = load i64, i64* %XSP, !mcsema_real_eip !76
  %1 = sub i64 %RSP_val.113, 8, !mcsema_real_eip !76
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.112, i64* %2, !mcsema_real_eip !76
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  store i64 %1, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.115 = load i64, i64* %XBX, !mcsema_real_eip !78
  %3 = sub i64 %1, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.115, i64* %4, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, !mcsema_real_eip !78
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.117, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, !mcsema_real_eip !79
  %8 = add i64 %RBP_val.117, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = load i64, i64* %9, !mcsema_real_eip !80
  store i64 %10, i64* %R10, !mcsema_real_eip !80
  %11 = add i64 %RBP_val.117, 24, !mcsema_real_eip !81
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !81
  %13 = load i64, i64* %12, !mcsema_real_eip !81
  store i64 %13, i64* %R11, !mcsema_real_eip !81
  %14 = add i64 %RBP_val.117, 16, !mcsema_real_eip !82
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !82
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !82
  %17 = load i32, i32* %16, !mcsema_real_eip !82
  %18 = zext i32 %17 to i64, !mcsema_real_eip !82
  store i64 %18, i64* %XBX, !mcsema_real_eip !82
  %19 = add i64 %RBP_val.117, -12, !mcsema_real_eip !83
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !83
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.123 = load i32, i32* %EDI.122, !mcsema_real_eip !83
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.123, i32* %21, !mcsema_real_eip !83
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !84
  %22 = add i64 %RBP_val.124, -24, !mcsema_real_eip !84
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !84
  %RSI_val.125 = load i64, i64* %XSI, !mcsema_real_eip !84
  store i64 %RSI_val.125, i64* %23, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !85
  %24 = add i64 %RBP_val.126, -32, !mcsema_real_eip !85
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !85
  %RDX_val.127 = load i64, i64* %XDX, !mcsema_real_eip !85
  store i64 %RDX_val.127, i64* %25, !mcsema_real_eip !85
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !86
  %26 = add i64 %RBP_val.128, -40, !mcsema_real_eip !86
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !86
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !86
  store i64 %RCX_val.129, i64* %27, !mcsema_real_eip !86
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !87
  %28 = add i64 %RBP_val.130, -44, !mcsema_real_eip !87
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !87
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.132 = load i32, i32* %R8D.131, !mcsema_real_eip !87
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.132, i32* %30, !mcsema_real_eip !87
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !88
  %31 = add i64 %RBP_val.133, -48, !mcsema_real_eip !88
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !88
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.135 = load i32, i32* %R9D.134, !mcsema_real_eip !88
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.135, i32* %33, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %34 = add i64 %RBP_val.136, -52, !mcsema_real_eip !89
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !89
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.138 = load i32, i32* %EBX.137, !mcsema_real_eip !89
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.138, i32* %36, !mcsema_real_eip !89
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !90
  %37 = add i64 %RBP_val.139, -64, !mcsema_real_eip !90
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !90
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.140, i64* %38, !mcsema_real_eip !90
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !91
  %39 = add i64 %RBP_val.141, -72, !mcsema_real_eip !91
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !91
  %R10_val.142 = load i64, i64* %R10, !mcsema_real_eip !91
  store i64 %R10_val.142, i64* %40, !mcsema_real_eip !91
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !92
  %41 = add i64 %RBP_val.143, -80, !mcsema_real_eip !92
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !92
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.144, i64* %42, !mcsema_real_eip !92
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !93
  %43 = add i64 %RBP_val.145, -84, !mcsema_real_eip !93
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !93
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %45, !mcsema_real_eip !93
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !94
  %46 = add i64 %RBP_val.146, -12, !mcsema_real_eip !94
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !94
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !94
  %49 = load i32, i32* %48, !mcsema_real_eip !94
  %50 = zext i32 %49 to i64, !mcsema_real_eip !94
  store i64 %50, i64* %XDI, !mcsema_real_eip !94
  %51 = add i64 %RBP_val.146, -84, !mcsema_real_eip !95
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !95
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !95
  %54 = load i32, i32* %53, !mcsema_real_eip !95
  %EDI_val.149 = load i32, i32* %EDI.122, !mcsema_real_eip !95
  %55 = add i32 %EDI_val.149, %54, !mcsema_real_eip !95
  %56 = xor i32 %55, %54, !mcsema_real_eip !95
  %57 = xor i32 %56, %EDI_val.149, !mcsema_real_eip !95
  %58 = and i32 %57, 16, !mcsema_real_eip !95
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !95
  store i1 %59, i1* %AF, !mcsema_real_eip !95
  %60 = lshr i32 %55, 31, !mcsema_real_eip !95
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !95
  store i1 %61, i1* %SF, !mcsema_real_eip !95
  %62 = icmp eq i32 %55, 0, !mcsema_real_eip !95
  store i1 %62, i1* %ZF, !mcsema_real_eip !95
  %63 = xor i32 %54, %EDI_val.149, !mcsema_real_eip !95
  %64 = xor i32 %63, -1, !mcsema_real_eip !95
  %65 = and i32 %64, %56, !mcsema_real_eip !95
  %66 = lshr i32 %65, 31, !mcsema_real_eip !95
  %67 = and i32 %66, 1, !mcsema_real_eip !95
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !95
  store i1 %68, i1* %OF, !mcsema_real_eip !95
  %69 = trunc i32 %55 to i8, !mcsema_real_eip !95
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !95
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !95
  %72 = xor i1 %71, true, !mcsema_real_eip !95
  store i1 %72, i1* %PF, !mcsema_real_eip !95
  %73 = icmp ult i32 %55, %54, !mcsema_real_eip !95
  store i1 %73, i1* %CF, !mcsema_real_eip !95
  %74 = zext i32 %55 to i64, !mcsema_real_eip !95
  store i64 %74, i64* %XDI, !mcsema_real_eip !95
  %EDI_val.152 = load i32, i32* %EDI.122, !mcsema_real_eip !96
  store i32 %EDI_val.152, i32* %53, !mcsema_real_eip !96
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !97
  %75 = add i64 %RBP_val.153, -88, !mcsema_real_eip !97
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !97
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %77, !mcsema_real_eip !97
  br label %block_0x51, !mcsema_real_eip !98

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !98
  %78 = add i64 %RBP_val.154, -88, !mcsema_real_eip !98
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !98
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !98
  %81 = load i32, i32* %80, !mcsema_real_eip !98
  %82 = zext i32 %81 to i64, !mcsema_real_eip !98
  store i64 %82, i64* %XAX, !mcsema_real_eip !98
  %83 = add i64 %RBP_val.154, -44, !mcsema_real_eip !99
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !99
  %EAX.156 = bitcast i64* %XAX to i32*, !mcsema_real_eip !99
  %EAX_val.157 = load i32, i32* %EAX.156, !mcsema_real_eip !99
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !99
  %86 = load i32, i32* %85, !mcsema_real_eip !99
  %87 = sub i32 %EAX_val.157, %86, !mcsema_real_eip !99
  %88 = xor i32 %87, %EAX_val.157, !mcsema_real_eip !99
  %89 = xor i32 %88, %86, !mcsema_real_eip !99
  %90 = and i32 %89, 16, !mcsema_real_eip !99
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !99
  store i1 %91, i1* %AF, !mcsema_real_eip !99
  %92 = trunc i32 %87 to i8, !mcsema_real_eip !99
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !99
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !99
  %95 = xor i1 %94, true, !mcsema_real_eip !99
  store i1 %95, i1* %PF, !mcsema_real_eip !99
  %96 = icmp eq i32 %87, 0, !mcsema_real_eip !99
  store i1 %96, i1* %ZF, !mcsema_real_eip !99
  %97 = lshr i32 %87, 31, !mcsema_real_eip !99
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !99
  store i1 %98, i1* %SF, !mcsema_real_eip !99
  %99 = icmp ult i32 %EAX_val.157, %86, !mcsema_real_eip !99
  store i1 %99, i1* %CF, !mcsema_real_eip !99
  %100 = xor i32 %EAX_val.157, %86, !mcsema_real_eip !99
  %101 = and i32 %100, %88, !mcsema_real_eip !99
  %102 = lshr i32 %101, 31, !mcsema_real_eip !99
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !99
  store i1 %103, i1* %OF, !mcsema_real_eip !99
  %104 = icmp eq i1 %98, %103, !mcsema_real_eip !100
  br i1 %104, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !100

block_0x5d:                                       ; preds = %block_0x51
  %105 = add i64 %RBP_val.154, -24, !mcsema_real_eip !101
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !101
  %107 = load i64, i64* %106, !mcsema_real_eip !101
  store i64 %107, i64* %XAX, !mcsema_real_eip !101
  %108 = load i32, i32* %80, !mcsema_real_eip !102
  %109 = sext i32 %108 to i64, !mcsema_real_eip !102
  store i64 %109, i64* %XCX, !mcsema_real_eip !102
  %110 = mul i64 %109, 4, !mcsema_real_eip !103
  %111 = add i64 %107, %110, !mcsema_real_eip !103
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !103
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !103
  %114 = load i32, i32* %113, !mcsema_real_eip !103
  %115 = zext i32 %114 to i64, !mcsema_real_eip !103
  store i64 %115, i64* %XDX, !mcsema_real_eip !103
  %116 = add i64 %RBP_val.154, -84, !mcsema_real_eip !104
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !104
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !104
  %119 = load i32, i32* %118, !mcsema_real_eip !104
  %EDX.172 = bitcast i64* %XDX to i32*, !mcsema_real_eip !104
  %EDX_val.173 = load i32, i32* %EDX.172, !mcsema_real_eip !104
  %120 = add i32 %EDX_val.173, %119, !mcsema_real_eip !104
  %121 = xor i32 %120, %119, !mcsema_real_eip !104
  %122 = xor i32 %121, %EDX_val.173, !mcsema_real_eip !104
  %123 = and i32 %122, 16, !mcsema_real_eip !104
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !104
  store i1 %124, i1* %AF, !mcsema_real_eip !104
  %125 = lshr i32 %120, 31, !mcsema_real_eip !104
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !104
  store i1 %126, i1* %SF, !mcsema_real_eip !104
  %127 = icmp eq i32 %120, 0, !mcsema_real_eip !104
  store i1 %127, i1* %ZF, !mcsema_real_eip !104
  %128 = xor i32 %119, %EDX_val.173, !mcsema_real_eip !104
  %129 = xor i32 %128, -1, !mcsema_real_eip !104
  %130 = and i32 %129, %121, !mcsema_real_eip !104
  %131 = lshr i32 %130, 31, !mcsema_real_eip !104
  %132 = and i32 %131, 1, !mcsema_real_eip !104
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !104
  store i1 %133, i1* %OF, !mcsema_real_eip !104
  %134 = trunc i32 %120 to i8, !mcsema_real_eip !104
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !104
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !104
  %137 = xor i1 %136, true, !mcsema_real_eip !104
  store i1 %137, i1* %PF, !mcsema_real_eip !104
  %138 = icmp ult i32 %120, %119, !mcsema_real_eip !104
  store i1 %138, i1* %CF, !mcsema_real_eip !104
  %139 = zext i32 %120 to i64, !mcsema_real_eip !104
  store i64 %139, i64* %XDX, !mcsema_real_eip !104
  %EDX_val.176 = load i32, i32* %EDX.172, !mcsema_real_eip !105
  store i32 %EDX_val.176, i32* %118, !mcsema_real_eip !105
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !106
  %140 = add i64 %RBP_val.177, -88, !mcsema_real_eip !106
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !106
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !106
  %143 = load i32, i32* %142, !mcsema_real_eip !106
  %144 = zext i32 %143 to i64, !mcsema_real_eip !106
  store i64 %144, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.179 = load i32, i32* %EAX.156, !mcsema_real_eip !107
  %145 = add i32 1, %EAX_val.179, !mcsema_real_eip !107
  %146 = xor i32 %145, %EAX_val.179, !mcsema_real_eip !107
  %147 = xor i32 %146, 1, !mcsema_real_eip !107
  %148 = and i32 %147, 16, !mcsema_real_eip !107
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !107
  store i1 %149, i1* %AF, !mcsema_real_eip !107
  %150 = lshr i32 %145, 31, !mcsema_real_eip !107
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !107
  store i1 %151, i1* %SF, !mcsema_real_eip !107
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !107
  store i1 %152, i1* %ZF, !mcsema_real_eip !107
  %153 = xor i32 %EAX_val.179, 1, !mcsema_real_eip !107
  %154 = xor i32 %153, -1, !mcsema_real_eip !107
  %155 = and i32 %154, %146, !mcsema_real_eip !107
  %156 = lshr i32 %155, 31, !mcsema_real_eip !107
  %157 = and i32 %156, 1, !mcsema_real_eip !107
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !107
  store i1 %158, i1* %OF, !mcsema_real_eip !107
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !107
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !107
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !107
  %162 = xor i1 %161, true, !mcsema_real_eip !107
  store i1 %162, i1* %PF, !mcsema_real_eip !107
  %163 = icmp ult i32 %145, %EAX_val.179, !mcsema_real_eip !107
  store i1 %163, i1* %CF, !mcsema_real_eip !107
  %164 = zext i32 %145 to i64, !mcsema_real_eip !107
  store i64 %164, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.182 = load i32, i32* %EAX.156, !mcsema_real_eip !108
  store i32 %EAX_val.182, i32* %142, !mcsema_real_eip !108
  br label %block_0x51, !mcsema_real_eip !109

block_0x7c:                                       ; preds = %block_0x51
  %165 = add i64 %RBP_val.154, -32, !mcsema_real_eip !110
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !110
  %167 = load i64, i64* %166, !mcsema_real_eip !110
  store i64 %167, i64* %XAX, !mcsema_real_eip !110
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !111
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !111
  %170 = load i32, i32* %169, !mcsema_real_eip !111
  %171 = zext i32 %170 to i64, !mcsema_real_eip !111
  store i64 %171, i64* %XCX, !mcsema_real_eip !111
  %172 = add i64 %RBP_val.154, -84, !mcsema_real_eip !112
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !112
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !112
  %175 = load i32, i32* %174, !mcsema_real_eip !112
  %ECX.161 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.162 = load i32, i32* %ECX.161, !mcsema_real_eip !112
  %176 = add i32 %ECX_val.162, %175, !mcsema_real_eip !112
  %177 = xor i32 %176, %175, !mcsema_real_eip !112
  %178 = xor i32 %177, %ECX_val.162, !mcsema_real_eip !112
  %179 = and i32 %178, 16, !mcsema_real_eip !112
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !112
  store i1 %180, i1* %AF, !mcsema_real_eip !112
  %181 = lshr i32 %176, 31, !mcsema_real_eip !112
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !112
  store i1 %182, i1* %SF, !mcsema_real_eip !112
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !112
  store i1 %183, i1* %ZF, !mcsema_real_eip !112
  %184 = xor i32 %175, %ECX_val.162, !mcsema_real_eip !112
  %185 = xor i32 %184, -1, !mcsema_real_eip !112
  %186 = and i32 %185, %177, !mcsema_real_eip !112
  %187 = lshr i32 %186, 31, !mcsema_real_eip !112
  %188 = and i32 %187, 1, !mcsema_real_eip !112
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !112
  store i1 %189, i1* %OF, !mcsema_real_eip !112
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !112
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !112
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !112
  %193 = xor i1 %192, true, !mcsema_real_eip !112
  store i1 %193, i1* %PF, !mcsema_real_eip !112
  %194 = icmp ult i32 %176, %175, !mcsema_real_eip !112
  store i1 %194, i1* %CF, !mcsema_real_eip !112
  %195 = zext i32 %176 to i64, !mcsema_real_eip !112
  store i64 %195, i64* %XCX, !mcsema_real_eip !112
  %ECX_val.165 = load i32, i32* %ECX.161, !mcsema_real_eip !113
  store i32 %ECX_val.165, i32* %174, !mcsema_real_eip !113
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !114
  %196 = add i64 %RBP_val.166, -92, !mcsema_real_eip !114
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !114
  %198 = inttoptr i64 %196 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %198, !mcsema_real_eip !114
  br label %block_0x8f, !mcsema_real_eip !101

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !115
  %199 = add i64 %RBP_val.183, -92, !mcsema_real_eip !115
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !115
  %201 = inttoptr i64 %199 to i32*, !mcsema_real_eip !115
  %202 = load i32, i32* %201, !mcsema_real_eip !115
  %203 = zext i32 %202 to i64, !mcsema_real_eip !115
  store i64 %203, i64* %XAX, !mcsema_real_eip !115
  %204 = add i64 %RBP_val.183, -48, !mcsema_real_eip !116
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !116
  %EAX_val.186 = load i32, i32* %EAX.156, !mcsema_real_eip !116
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !116
  %207 = load i32, i32* %206, !mcsema_real_eip !116
  %208 = sub i32 %EAX_val.186, %207, !mcsema_real_eip !116
  %209 = xor i32 %208, %EAX_val.186, !mcsema_real_eip !116
  %210 = xor i32 %209, %207, !mcsema_real_eip !116
  %211 = and i32 %210, 16, !mcsema_real_eip !116
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !116
  store i1 %212, i1* %AF, !mcsema_real_eip !116
  %213 = trunc i32 %208 to i8, !mcsema_real_eip !116
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !116
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !116
  %216 = xor i1 %215, true, !mcsema_real_eip !116
  store i1 %216, i1* %PF, !mcsema_real_eip !116
  %217 = icmp eq i32 %208, 0, !mcsema_real_eip !116
  store i1 %217, i1* %ZF, !mcsema_real_eip !116
  %218 = lshr i32 %208, 31, !mcsema_real_eip !116
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !116
  store i1 %219, i1* %SF, !mcsema_real_eip !116
  %220 = icmp ult i32 %EAX_val.186, %207, !mcsema_real_eip !116
  store i1 %220, i1* %CF, !mcsema_real_eip !116
  %221 = xor i32 %EAX_val.186, %207, !mcsema_real_eip !116
  %222 = and i32 %221, %209, !mcsema_real_eip !116
  %223 = lshr i32 %222, 31, !mcsema_real_eip !116
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !116
  store i1 %224, i1* %OF, !mcsema_real_eip !116
  %225 = icmp eq i1 %219, %224, !mcsema_real_eip !117
  br i1 %225, label %block_0xba, label %block_0x9b, !mcsema_real_eip !117

block_0x9b:                                       ; preds = %block_0x8f
  %226 = add i64 %RBP_val.183, -40, !mcsema_real_eip !118
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !118
  %228 = load i64, i64* %227, !mcsema_real_eip !118
  store i64 %228, i64* %XAX, !mcsema_real_eip !118
  %229 = load i32, i32* %201, !mcsema_real_eip !119
  %230 = sext i32 %229 to i64, !mcsema_real_eip !119
  store i64 %230, i64* %XCX, !mcsema_real_eip !119
  %231 = mul i64 %230, 4, !mcsema_real_eip !120
  %232 = add i64 %228, %231, !mcsema_real_eip !120
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !120
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !120
  %235 = load i32, i32* %234, !mcsema_real_eip !120
  %236 = zext i32 %235 to i64, !mcsema_real_eip !120
  store i64 %236, i64* %XDX, !mcsema_real_eip !120
  %237 = add i64 %RBP_val.183, -84, !mcsema_real_eip !121
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !121
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !121
  %240 = load i32, i32* %239, !mcsema_real_eip !121
  %EDX.200 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.201 = load i32, i32* %EDX.200, !mcsema_real_eip !121
  %241 = add i32 %EDX_val.201, %240, !mcsema_real_eip !121
  %242 = xor i32 %241, %240, !mcsema_real_eip !121
  %243 = xor i32 %242, %EDX_val.201, !mcsema_real_eip !121
  %244 = and i32 %243, 16, !mcsema_real_eip !121
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !121
  store i1 %245, i1* %AF, !mcsema_real_eip !121
  %246 = lshr i32 %241, 31, !mcsema_real_eip !121
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !121
  store i1 %247, i1* %SF, !mcsema_real_eip !121
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !121
  store i1 %248, i1* %ZF, !mcsema_real_eip !121
  %249 = xor i32 %240, %EDX_val.201, !mcsema_real_eip !121
  %250 = xor i32 %249, -1, !mcsema_real_eip !121
  %251 = and i32 %250, %242, !mcsema_real_eip !121
  %252 = lshr i32 %251, 31, !mcsema_real_eip !121
  %253 = and i32 %252, 1, !mcsema_real_eip !121
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !121
  store i1 %254, i1* %OF, !mcsema_real_eip !121
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !121
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !121
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !121
  %258 = xor i1 %257, true, !mcsema_real_eip !121
  store i1 %258, i1* %PF, !mcsema_real_eip !121
  %259 = icmp ult i32 %241, %240, !mcsema_real_eip !121
  store i1 %259, i1* %CF, !mcsema_real_eip !121
  %260 = zext i32 %241 to i64, !mcsema_real_eip !121
  store i64 %260, i64* %XDX, !mcsema_real_eip !121
  %EDX_val.204 = load i32, i32* %EDX.200, !mcsema_real_eip !122
  store i32 %EDX_val.204, i32* %239, !mcsema_real_eip !122
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !123
  %261 = add i64 %RBP_val.205, -92, !mcsema_real_eip !123
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !123
  %263 = inttoptr i64 %261 to i32*, !mcsema_real_eip !123
  %264 = load i32, i32* %263, !mcsema_real_eip !123
  %265 = zext i32 %264 to i64, !mcsema_real_eip !123
  store i64 %265, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.207 = load i32, i32* %EAX.156, !mcsema_real_eip !124
  %266 = add i32 1, %EAX_val.207, !mcsema_real_eip !124
  %267 = xor i32 %266, %EAX_val.207, !mcsema_real_eip !124
  %268 = xor i32 %267, 1, !mcsema_real_eip !124
  %269 = and i32 %268, 16, !mcsema_real_eip !124
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !124
  store i1 %270, i1* %AF, !mcsema_real_eip !124
  %271 = lshr i32 %266, 31, !mcsema_real_eip !124
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !124
  store i1 %272, i1* %SF, !mcsema_real_eip !124
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !124
  store i1 %273, i1* %ZF, !mcsema_real_eip !124
  %274 = xor i32 %EAX_val.207, 1, !mcsema_real_eip !124
  %275 = xor i32 %274, -1, !mcsema_real_eip !124
  %276 = and i32 %275, %267, !mcsema_real_eip !124
  %277 = lshr i32 %276, 31, !mcsema_real_eip !124
  %278 = and i32 %277, 1, !mcsema_real_eip !124
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !124
  store i1 %279, i1* %OF, !mcsema_real_eip !124
  %280 = trunc i32 %266 to i8, !mcsema_real_eip !124
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !124
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !124
  %283 = xor i1 %282, true, !mcsema_real_eip !124
  store i1 %283, i1* %PF, !mcsema_real_eip !124
  %284 = icmp ult i32 %266, %EAX_val.207, !mcsema_real_eip !124
  store i1 %284, i1* %CF, !mcsema_real_eip !124
  %285 = zext i32 %266 to i64, !mcsema_real_eip !124
  store i64 %285, i64* %XAX, !mcsema_real_eip !124
  %EAX_val.210 = load i32, i32* %EAX.156, !mcsema_real_eip !125
  store i32 %EAX_val.210, i32* %263, !mcsema_real_eip !125
  br label %block_0x8f, !mcsema_real_eip !126

block_0xba:                                       ; preds = %block_0x8f
  %286 = add i64 %RBP_val.183, -52, !mcsema_real_eip !127
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !127
  %288 = inttoptr i64 %286 to i32*, !mcsema_real_eip !127
  %289 = load i32, i32* %288, !mcsema_real_eip !127
  %290 = zext i32 %289 to i64, !mcsema_real_eip !127
  store i64 %290, i64* %XAX, !mcsema_real_eip !127
  %291 = add i64 %RBP_val.183, -84, !mcsema_real_eip !128
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !128
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !128
  %294 = load i32, i32* %293, !mcsema_real_eip !128
  %EAX_val.190 = load i32, i32* %EAX.156, !mcsema_real_eip !128
  %295 = add i32 %EAX_val.190, %294, !mcsema_real_eip !128
  %296 = xor i32 %295, %294, !mcsema_real_eip !128
  %297 = xor i32 %296, %EAX_val.190, !mcsema_real_eip !128
  %298 = and i32 %297, 16, !mcsema_real_eip !128
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !128
  store i1 %299, i1* %AF, !mcsema_real_eip !128
  %300 = lshr i32 %295, 31, !mcsema_real_eip !128
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !128
  store i1 %301, i1* %SF, !mcsema_real_eip !128
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !128
  store i1 %302, i1* %ZF, !mcsema_real_eip !128
  %303 = xor i32 %294, %EAX_val.190, !mcsema_real_eip !128
  %304 = xor i32 %303, -1, !mcsema_real_eip !128
  %305 = and i32 %304, %296, !mcsema_real_eip !128
  %306 = lshr i32 %305, 31, !mcsema_real_eip !128
  %307 = and i32 %306, 1, !mcsema_real_eip !128
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !128
  store i1 %308, i1* %OF, !mcsema_real_eip !128
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !128
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !128
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !128
  %312 = xor i1 %311, true, !mcsema_real_eip !128
  store i1 %312, i1* %PF, !mcsema_real_eip !128
  %313 = icmp ult i32 %295, %294, !mcsema_real_eip !128
  store i1 %313, i1* %CF, !mcsema_real_eip !128
  %314 = zext i32 %295 to i64, !mcsema_real_eip !128
  store i64 %314, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.193 = load i32, i32* %EAX.156, !mcsema_real_eip !129
  store i32 %EAX_val.193, i32* %293, !mcsema_real_eip !129
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !130
  %315 = add i64 %RBP_val.194, -96, !mcsema_real_eip !130
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !130
  %317 = inttoptr i64 %315 to i32*, !mcsema_real_eip !130
  store i32 0, i32* %317, !mcsema_real_eip !130
  br label %block_0xca, !mcsema_real_eip !118

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !131
  %318 = add i64 %RBP_val.211, -96, !mcsema_real_eip !131
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !131
  %320 = inttoptr i64 %318 to i32*, !mcsema_real_eip !131
  %321 = load i32, i32* %320, !mcsema_real_eip !131
  %322 = zext i32 %321 to i64, !mcsema_real_eip !131
  store i64 %322, i64* %XAX, !mcsema_real_eip !131
  %323 = add i64 %RBP_val.211, -44, !mcsema_real_eip !132
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !132
  %EAX_val.214 = load i32, i32* %EAX.156, !mcsema_real_eip !132
  %325 = inttoptr i64 %323 to i32*, !mcsema_real_eip !132
  %326 = load i32, i32* %325, !mcsema_real_eip !132
  %327 = sub i32 %EAX_val.214, %326, !mcsema_real_eip !132
  %328 = xor i32 %327, %EAX_val.214, !mcsema_real_eip !132
  %329 = xor i32 %328, %326, !mcsema_real_eip !132
  %330 = and i32 %329, 16, !mcsema_real_eip !132
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !132
  store i1 %331, i1* %AF, !mcsema_real_eip !132
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !132
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !132
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !132
  %335 = xor i1 %334, true, !mcsema_real_eip !132
  store i1 %335, i1* %PF, !mcsema_real_eip !132
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !132
  store i1 %336, i1* %ZF, !mcsema_real_eip !132
  %337 = lshr i32 %327, 31, !mcsema_real_eip !132
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !132
  store i1 %338, i1* %SF, !mcsema_real_eip !132
  %339 = icmp ult i32 %EAX_val.214, %326, !mcsema_real_eip !132
  store i1 %339, i1* %CF, !mcsema_real_eip !132
  %340 = xor i32 %EAX_val.214, %326, !mcsema_real_eip !132
  %341 = and i32 %340, %328, !mcsema_real_eip !132
  %342 = lshr i32 %341, 31, !mcsema_real_eip !132
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !132
  store i1 %343, i1* %OF, !mcsema_real_eip !132
  %344 = icmp eq i1 %338, %343, !mcsema_real_eip !133
  br i1 %344, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !133

block_0xd6:                                       ; preds = %block_0xca
  %345 = add i64 %RBP_val.211, -64, !mcsema_real_eip !134
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !134
  %347 = load i64, i64* %346, !mcsema_real_eip !134
  store i64 %347, i64* %XAX, !mcsema_real_eip !134
  %348 = load i32, i32* %320, !mcsema_real_eip !135
  %349 = sext i32 %348 to i64, !mcsema_real_eip !135
  store i64 %349, i64* %XCX, !mcsema_real_eip !135
  %350 = mul i64 %349, 4, !mcsema_real_eip !136
  %351 = add i64 %347, %350, !mcsema_real_eip !136
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !136
  %353 = inttoptr i64 %351 to i32*, !mcsema_real_eip !136
  %354 = load i32, i32* %353, !mcsema_real_eip !136
  %355 = zext i32 %354 to i64, !mcsema_real_eip !136
  store i64 %355, i64* %XDX, !mcsema_real_eip !136
  %356 = add i64 %RBP_val.211, -84, !mcsema_real_eip !137
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !137
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !137
  %359 = load i32, i32* %358, !mcsema_real_eip !137
  %EDX.229 = bitcast i64* %XDX to i32*, !mcsema_real_eip !137
  %EDX_val.230 = load i32, i32* %EDX.229, !mcsema_real_eip !137
  %360 = add i32 %EDX_val.230, %359, !mcsema_real_eip !137
  %361 = xor i32 %360, %359, !mcsema_real_eip !137
  %362 = xor i32 %361, %EDX_val.230, !mcsema_real_eip !137
  %363 = and i32 %362, 16, !mcsema_real_eip !137
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !137
  store i1 %364, i1* %AF, !mcsema_real_eip !137
  %365 = lshr i32 %360, 31, !mcsema_real_eip !137
  %366 = trunc i32 %365 to i1, !mcsema_real_eip !137
  store i1 %366, i1* %SF, !mcsema_real_eip !137
  %367 = icmp eq i32 %360, 0, !mcsema_real_eip !137
  store i1 %367, i1* %ZF, !mcsema_real_eip !137
  %368 = xor i32 %359, %EDX_val.230, !mcsema_real_eip !137
  %369 = xor i32 %368, -1, !mcsema_real_eip !137
  %370 = and i32 %369, %361, !mcsema_real_eip !137
  %371 = lshr i32 %370, 31, !mcsema_real_eip !137
  %372 = and i32 %371, 1, !mcsema_real_eip !137
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !137
  store i1 %373, i1* %OF, !mcsema_real_eip !137
  %374 = trunc i32 %360 to i8, !mcsema_real_eip !137
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !137
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !137
  %377 = xor i1 %376, true, !mcsema_real_eip !137
  store i1 %377, i1* %PF, !mcsema_real_eip !137
  %378 = icmp ult i32 %360, %359, !mcsema_real_eip !137
  store i1 %378, i1* %CF, !mcsema_real_eip !137
  %379 = zext i32 %360 to i64, !mcsema_real_eip !137
  store i64 %379, i64* %XDX, !mcsema_real_eip !137
  %EDX_val.233 = load i32, i32* %EDX.229, !mcsema_real_eip !138
  store i32 %EDX_val.233, i32* %358, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !139
  %380 = add i64 %RBP_val.234, -96, !mcsema_real_eip !139
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !139
  %382 = inttoptr i64 %380 to i32*, !mcsema_real_eip !139
  %383 = load i32, i32* %382, !mcsema_real_eip !139
  %384 = zext i32 %383 to i64, !mcsema_real_eip !139
  store i64 %384, i64* %XAX, !mcsema_real_eip !139
  %EAX_val.236 = load i32, i32* %EAX.156, !mcsema_real_eip !140
  %385 = add i32 1, %EAX_val.236, !mcsema_real_eip !140
  %386 = xor i32 %385, %EAX_val.236, !mcsema_real_eip !140
  %387 = xor i32 %386, 1, !mcsema_real_eip !140
  %388 = and i32 %387, 16, !mcsema_real_eip !140
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !140
  store i1 %389, i1* %AF, !mcsema_real_eip !140
  %390 = lshr i32 %385, 31, !mcsema_real_eip !140
  %391 = trunc i32 %390 to i1, !mcsema_real_eip !140
  store i1 %391, i1* %SF, !mcsema_real_eip !140
  %392 = icmp eq i32 %385, 0, !mcsema_real_eip !140
  store i1 %392, i1* %ZF, !mcsema_real_eip !140
  %393 = xor i32 %EAX_val.236, 1, !mcsema_real_eip !140
  %394 = xor i32 %393, -1, !mcsema_real_eip !140
  %395 = and i32 %394, %386, !mcsema_real_eip !140
  %396 = lshr i32 %395, 31, !mcsema_real_eip !140
  %397 = and i32 %396, 1, !mcsema_real_eip !140
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !140
  store i1 %398, i1* %OF, !mcsema_real_eip !140
  %399 = trunc i32 %385 to i8, !mcsema_real_eip !140
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !140
  %401 = trunc i8 %400 to i1, !mcsema_real_eip !140
  %402 = xor i1 %401, true, !mcsema_real_eip !140
  store i1 %402, i1* %PF, !mcsema_real_eip !140
  %403 = icmp ult i32 %385, %EAX_val.236, !mcsema_real_eip !140
  store i1 %403, i1* %CF, !mcsema_real_eip !140
  %404 = zext i32 %385 to i64, !mcsema_real_eip !140
  store i64 %404, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.239 = load i32, i32* %EAX.156, !mcsema_real_eip !141
  store i32 %EAX_val.239, i32* %382, !mcsema_real_eip !141
  br label %block_0xca, !mcsema_real_eip !142

block_0xf5:                                       ; preds = %block_0xca
  %405 = add i64 %RBP_val.211, -72, !mcsema_real_eip !143
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !143
  %407 = load i64, i64* %406, !mcsema_real_eip !143
  store i64 %407, i64* %XAX, !mcsema_real_eip !143
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !144
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !144
  %410 = load i32, i32* %409, !mcsema_real_eip !144
  %411 = zext i32 %410 to i64, !mcsema_real_eip !144
  store i64 %411, i64* %XCX, !mcsema_real_eip !144
  %412 = add i64 %RBP_val.211, -84, !mcsema_real_eip !145
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !145
  %414 = inttoptr i64 %412 to i32*, !mcsema_real_eip !145
  %415 = load i32, i32* %414, !mcsema_real_eip !145
  %ECX_val.219 = load i32, i32* %ECX.161, !mcsema_real_eip !145
  %416 = add i32 %ECX_val.219, %415, !mcsema_real_eip !145
  %417 = xor i32 %416, %415, !mcsema_real_eip !145
  %418 = xor i32 %417, %ECX_val.219, !mcsema_real_eip !145
  %419 = and i32 %418, 16, !mcsema_real_eip !145
  %420 = icmp ne i32 %419, 0, !mcsema_real_eip !145
  store i1 %420, i1* %AF, !mcsema_real_eip !145
  %421 = lshr i32 %416, 31, !mcsema_real_eip !145
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !145
  store i1 %422, i1* %SF, !mcsema_real_eip !145
  %423 = icmp eq i32 %416, 0, !mcsema_real_eip !145
  store i1 %423, i1* %ZF, !mcsema_real_eip !145
  %424 = xor i32 %415, %ECX_val.219, !mcsema_real_eip !145
  %425 = xor i32 %424, -1, !mcsema_real_eip !145
  %426 = and i32 %425, %417, !mcsema_real_eip !145
  %427 = lshr i32 %426, 31, !mcsema_real_eip !145
  %428 = and i32 %427, 1, !mcsema_real_eip !145
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !145
  store i1 %429, i1* %OF, !mcsema_real_eip !145
  %430 = trunc i32 %416 to i8, !mcsema_real_eip !145
  %431 = call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !145
  %432 = trunc i8 %431 to i1, !mcsema_real_eip !145
  %433 = xor i1 %432, true, !mcsema_real_eip !145
  store i1 %433, i1* %PF, !mcsema_real_eip !145
  %434 = icmp ult i32 %416, %415, !mcsema_real_eip !145
  store i1 %434, i1* %CF, !mcsema_real_eip !145
  %435 = zext i32 %416 to i64, !mcsema_real_eip !145
  store i64 %435, i64* %XCX, !mcsema_real_eip !145
  %ECX_val.222 = load i32, i32* %ECX.161, !mcsema_real_eip !146
  store i32 %ECX_val.222, i32* %414, !mcsema_real_eip !146
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !147
  %436 = add i64 %RBP_val.223, -100, !mcsema_real_eip !147
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !147
  %438 = inttoptr i64 %436 to i32*, !mcsema_real_eip !147
  store i32 0, i32* %438, !mcsema_real_eip !147
  br label %block_0x108, !mcsema_real_eip !134

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !148
  %439 = add i64 %RBP_val.240, -100, !mcsema_real_eip !148
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !148
  %441 = inttoptr i64 %439 to i32*, !mcsema_real_eip !148
  %442 = load i32, i32* %441, !mcsema_real_eip !148
  %443 = zext i32 %442 to i64, !mcsema_real_eip !148
  store i64 %443, i64* %XAX, !mcsema_real_eip !148
  %444 = add i64 %RBP_val.240, -48, !mcsema_real_eip !149
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !149
  %EAX_val.243 = load i32, i32* %EAX.156, !mcsema_real_eip !149
  %446 = inttoptr i64 %444 to i32*, !mcsema_real_eip !149
  %447 = load i32, i32* %446, !mcsema_real_eip !149
  %448 = sub i32 %EAX_val.243, %447, !mcsema_real_eip !149
  %449 = xor i32 %448, %EAX_val.243, !mcsema_real_eip !149
  %450 = xor i32 %449, %447, !mcsema_real_eip !149
  %451 = and i32 %450, 16, !mcsema_real_eip !149
  %452 = icmp ne i32 %451, 0, !mcsema_real_eip !149
  store i1 %452, i1* %AF, !mcsema_real_eip !149
  %453 = trunc i32 %448 to i8, !mcsema_real_eip !149
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !149
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !149
  %456 = xor i1 %455, true, !mcsema_real_eip !149
  store i1 %456, i1* %PF, !mcsema_real_eip !149
  %457 = icmp eq i32 %448, 0, !mcsema_real_eip !149
  store i1 %457, i1* %ZF, !mcsema_real_eip !149
  %458 = lshr i32 %448, 31, !mcsema_real_eip !149
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !149
  store i1 %459, i1* %SF, !mcsema_real_eip !149
  %460 = icmp ult i32 %EAX_val.243, %447, !mcsema_real_eip !149
  store i1 %460, i1* %CF, !mcsema_real_eip !149
  %461 = xor i32 %EAX_val.243, %447, !mcsema_real_eip !149
  %462 = and i32 %461, %449, !mcsema_real_eip !149
  %463 = lshr i32 %462, 31, !mcsema_real_eip !149
  %464 = trunc i32 %463 to i1, !mcsema_real_eip !149
  store i1 %464, i1* %OF, !mcsema_real_eip !149
  %465 = icmp eq i1 %459, %464, !mcsema_real_eip !150
  br i1 %465, label %block_0x133, label %block_0x114, !mcsema_real_eip !150

block_0x114:                                      ; preds = %block_0x108
  %466 = add i64 %RBP_val.240, -80, !mcsema_real_eip !151
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !151
  %468 = load i64, i64* %467, !mcsema_real_eip !151
  store i64 %468, i64* %XAX, !mcsema_real_eip !151
  %469 = load i32, i32* %441, !mcsema_real_eip !152
  %470 = sext i32 %469 to i64, !mcsema_real_eip !152
  store i64 %470, i64* %XCX, !mcsema_real_eip !152
  %471 = mul i64 %470, 4, !mcsema_real_eip !153
  %472 = add i64 %468, %471, !mcsema_real_eip !153
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !153
  %474 = inttoptr i64 %472 to i32*, !mcsema_real_eip !153
  %475 = load i32, i32* %474, !mcsema_real_eip !153
  %476 = zext i32 %475 to i64, !mcsema_real_eip !153
  store i64 %476, i64* %XDX, !mcsema_real_eip !153
  %477 = add i64 %RBP_val.240, -84, !mcsema_real_eip !154
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !154
  %479 = inttoptr i64 %477 to i32*, !mcsema_real_eip !154
  %480 = load i32, i32* %479, !mcsema_real_eip !154
  %EDX.253 = bitcast i64* %XDX to i32*, !mcsema_real_eip !154
  %EDX_val.254 = load i32, i32* %EDX.253, !mcsema_real_eip !154
  %481 = add i32 %EDX_val.254, %480, !mcsema_real_eip !154
  %482 = xor i32 %481, %480, !mcsema_real_eip !154
  %483 = xor i32 %482, %EDX_val.254, !mcsema_real_eip !154
  %484 = and i32 %483, 16, !mcsema_real_eip !154
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !154
  store i1 %485, i1* %AF, !mcsema_real_eip !154
  %486 = lshr i32 %481, 31, !mcsema_real_eip !154
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !154
  store i1 %487, i1* %SF, !mcsema_real_eip !154
  %488 = icmp eq i32 %481, 0, !mcsema_real_eip !154
  store i1 %488, i1* %ZF, !mcsema_real_eip !154
  %489 = xor i32 %480, %EDX_val.254, !mcsema_real_eip !154
  %490 = xor i32 %489, -1, !mcsema_real_eip !154
  %491 = and i32 %490, %482, !mcsema_real_eip !154
  %492 = lshr i32 %491, 31, !mcsema_real_eip !154
  %493 = and i32 %492, 1, !mcsema_real_eip !154
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !154
  store i1 %494, i1* %OF, !mcsema_real_eip !154
  %495 = trunc i32 %481 to i8, !mcsema_real_eip !154
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !154
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !154
  %498 = xor i1 %497, true, !mcsema_real_eip !154
  store i1 %498, i1* %PF, !mcsema_real_eip !154
  %499 = icmp ult i32 %481, %480, !mcsema_real_eip !154
  store i1 %499, i1* %CF, !mcsema_real_eip !154
  %500 = zext i32 %481 to i64, !mcsema_real_eip !154
  store i64 %500, i64* %XDX, !mcsema_real_eip !154
  %EDX_val.257 = load i32, i32* %EDX.253, !mcsema_real_eip !155
  store i32 %EDX_val.257, i32* %479, !mcsema_real_eip !155
  %RBP_val.258 = load i64, i64* %XBP, !mcsema_real_eip !156
  %501 = add i64 %RBP_val.258, -100, !mcsema_real_eip !156
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !156
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !156
  %504 = load i32, i32* %503, !mcsema_real_eip !156
  %505 = zext i32 %504 to i64, !mcsema_real_eip !156
  store i64 %505, i64* %XAX, !mcsema_real_eip !156
  %EAX_val.260 = load i32, i32* %EAX.156, !mcsema_real_eip !157
  %506 = add i32 1, %EAX_val.260, !mcsema_real_eip !157
  %507 = xor i32 %506, %EAX_val.260, !mcsema_real_eip !157
  %508 = xor i32 %507, 1, !mcsema_real_eip !157
  %509 = and i32 %508, 16, !mcsema_real_eip !157
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !157
  store i1 %510, i1* %AF, !mcsema_real_eip !157
  %511 = lshr i32 %506, 31, !mcsema_real_eip !157
  %512 = trunc i32 %511 to i1, !mcsema_real_eip !157
  store i1 %512, i1* %SF, !mcsema_real_eip !157
  %513 = icmp eq i32 %506, 0, !mcsema_real_eip !157
  store i1 %513, i1* %ZF, !mcsema_real_eip !157
  %514 = xor i32 %EAX_val.260, 1, !mcsema_real_eip !157
  %515 = xor i32 %514, -1, !mcsema_real_eip !157
  %516 = and i32 %515, %507, !mcsema_real_eip !157
  %517 = lshr i32 %516, 31, !mcsema_real_eip !157
  %518 = and i32 %517, 1, !mcsema_real_eip !157
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !157
  store i1 %519, i1* %OF, !mcsema_real_eip !157
  %520 = trunc i32 %506 to i8, !mcsema_real_eip !157
  %521 = call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !157
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !157
  %523 = xor i1 %522, true, !mcsema_real_eip !157
  store i1 %523, i1* %PF, !mcsema_real_eip !157
  %524 = icmp ult i32 %506, %EAX_val.260, !mcsema_real_eip !157
  store i1 %524, i1* %CF, !mcsema_real_eip !157
  %525 = zext i32 %506 to i64, !mcsema_real_eip !157
  store i64 %525, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.263 = load i32, i32* %EAX.156, !mcsema_real_eip !158
  store i32 %EAX_val.263, i32* %503, !mcsema_real_eip !158
  br label %block_0x108, !mcsema_real_eip !159

block_0x133:                                      ; preds = %block_0x108
  %526 = add i64 %RBP_val.240, -84, !mcsema_real_eip !160
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !160
  %528 = inttoptr i64 %526 to i32*, !mcsema_real_eip !160
  %529 = load i32, i32* %528, !mcsema_real_eip !160
  %530 = zext i32 %529 to i64, !mcsema_real_eip !160
  store i64 %530, i64* %XAX, !mcsema_real_eip !160
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !161
  %531 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !161
  %532 = load i64, i64* %531, !mcsema_real_eip !161
  store i64 %532, i64* %XBX, !mcsema_real_eip !161
  %533 = add i64 %RSP_val.245, 8, !mcsema_real_eip !161
  store i64 %533, i64* %XSP, !mcsema_real_eip !161
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !162
  %535 = load i64, i64* %534, !mcsema_real_eip !162
  store i64 %535, i64* %XBP, !mcsema_real_eip !162
  %536 = add i64 %533, 8, !mcsema_real_eip !162
  store i64 %536, i64* %XSP, !mcsema_real_eip !162
  %537 = add i64 %536, 8, !mcsema_real_eip !163
  %538 = inttoptr i64 %536 to i64*, !mcsema_real_eip !163
  %539 = load i64, i64* %538, !mcsema_real_eip !163
  store i64 %539, i64* %XIP, !mcsema_real_eip !163
  store i64 %537, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
!2 = !{i64 320}
!3 = !{i64 321}
!4 = !{i64 324}
!5 = !{i64 326}
!6 = !{i64 327}
!7 = !{i64 334}
!8 = !{i64 341}
!9 = !{i64 348}
!10 = !{i64 355}
!11 = !{i64 359}
!12 = !{i64 365}
!13 = !{i64 368}
!14 = !{i64 371}
!15 = !{i64 375}
!16 = !{i64 379}
!17 = !{i64 382}
!18 = !{i64 385}
!19 = !{i64 388}
!20 = !{i64 393}
!21 = !{i64 398}
!22 = !{i64 400}
!23 = !{i64 404}
!24 = !{i64 408}
!25 = !{i64 413}
!26 = !{i64 417}
!27 = !{i64 424}
!28 = !{i64 428}
!29 = !{i64 434}
!30 = !{i64 437}
!31 = !{i64 440}
!32 = !{i64 444}
!33 = !{i64 448}
!34 = !{i64 451}
!35 = !{i64 454}
!36 = !{i64 457}
!37 = !{i64 460}
!38 = !{i64 465}
!39 = !{i64 470}
!40 = !{i64 474}
!41 = !{i64 477}
!42 = !{i64 481}
!43 = !{i64 485}
!44 = !{i64 489}
!45 = !{i64 493}
!46 = !{i64 497}
!47 = !{i64 501}
!48 = !{i64 504}
!49 = !{i64 508}
!50 = !{i64 512}
!51 = !{i64 515}
!52 = !{i64 519}
!53 = !{i64 522}
!54 = !{i64 526}
!55 = !{i64 529}
!56 = !{i64 532}
!57 = !{i64 535}
!58 = !{i64 539}
!59 = !{i64 544}
!60 = !{i64 548}
!61 = !{i64 553}
!62 = !{i64 558}
!63 = !{i64 563}
!64 = !{i64 573}
!65 = !{i64 576}
!66 = !{i64 579}
!67 = !{i64 581}
!68 = !{i64 586}
!69 = !{i64 589}
!70 = !{i64 595}
!71 = !{i64 597}
!72 = !{i64 604}
!73 = !{i64 605}
!74 = !{i64 607}
!75 = !{i64 608}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 27}
!86 = !{i64 31}
!87 = !{i64 35}
!88 = !{i64 39}
!89 = !{i64 43}
!90 = !{i64 46}
!91 = !{i64 50}
!92 = !{i64 54}
!93 = !{i64 58}
!94 = !{i64 65}
!95 = !{i64 68}
!96 = !{i64 71}
!97 = !{i64 74}
!98 = !{i64 81}
!99 = !{i64 84}
!100 = !{i64 87}
!101 = !{i64 93}
!102 = !{i64 97}
!103 = !{i64 101}
!104 = !{i64 104}
!105 = !{i64 107}
!106 = !{i64 110}
!107 = !{i64 113}
!108 = !{i64 116}
!109 = !{i64 119}
!110 = !{i64 124}
!111 = !{i64 128}
!112 = !{i64 130}
!113 = !{i64 133}
!114 = !{i64 136}
!115 = !{i64 143}
!116 = !{i64 146}
!117 = !{i64 149}
!118 = !{i64 155}
!119 = !{i64 159}
!120 = !{i64 163}
!121 = !{i64 166}
!122 = !{i64 169}
!123 = !{i64 172}
!124 = !{i64 175}
!125 = !{i64 178}
!126 = !{i64 181}
!127 = !{i64 186}
!128 = !{i64 189}
!129 = !{i64 192}
!130 = !{i64 195}
!131 = !{i64 202}
!132 = !{i64 205}
!133 = !{i64 208}
!134 = !{i64 214}
!135 = !{i64 218}
!136 = !{i64 222}
!137 = !{i64 225}
!138 = !{i64 228}
!139 = !{i64 231}
!140 = !{i64 234}
!141 = !{i64 237}
!142 = !{i64 240}
!143 = !{i64 245}
!144 = !{i64 249}
!145 = !{i64 251}
!146 = !{i64 254}
!147 = !{i64 257}
!148 = !{i64 264}
!149 = !{i64 267}
!150 = !{i64 270}
!151 = !{i64 276}
!152 = !{i64 280}
!153 = !{i64 284}
!154 = !{i64 287}
!155 = !{i64 290}
!156 = !{i64 293}
!157 = !{i64 296}
!158 = !{i64 299}
!159 = !{i64 302}
!160 = !{i64 307}
!161 = !{i64 310}
!162 = !{i64 311}
!163 = !{i64 312}
