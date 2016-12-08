; ModuleID = 'Output/test_13_1.clang.trans.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_10;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [80 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x48 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\00\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\002\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_10(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x10, !mcsema_real_eip !2

block_0x10:                                       ; preds = %entry
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
  %20 = add i64 %1, -4, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %22, !mcsema_real_eip !5
  br label %block_0x1f, !mcsema_real_eip !6

block_0x1f:                                       ; preds = %block_0x29, %block_0x10
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  %26 = load i32, i32* %25, !mcsema_real_eip !6
  %27 = sub i32 %26, 2, !mcsema_real_eip !6
  %28 = xor i32 %27, %26, !mcsema_real_eip !6
  %29 = xor i32 %28, 2, !mcsema_real_eip !6
  %30 = and i32 %29, 16, !mcsema_real_eip !6
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !6
  store i1 %31, i1* %AF, !mcsema_real_eip !6
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !6
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !6
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !6
  %35 = xor i1 %34, true, !mcsema_real_eip !6
  store i1 %35, i1* %PF, !mcsema_real_eip !6
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !6
  store i1 %36, i1* %ZF, !mcsema_real_eip !6
  %37 = lshr i32 %27, 31, !mcsema_real_eip !6
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !6
  store i1 %38, i1* %SF, !mcsema_real_eip !6
  %39 = icmp ult i32 %26, 2, !mcsema_real_eip !6
  store i1 %39, i1* %CF, !mcsema_real_eip !6
  %40 = xor i32 %26, 2, !mcsema_real_eip !6
  %41 = and i32 %40, %28, !mcsema_real_eip !6
  %42 = lshr i32 %41, 31, !mcsema_real_eip !6
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !6
  store i1 %43, i1* %OF, !mcsema_real_eip !6
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !7
  br i1 %44, label %block_0x3c, label %block_0x29, !mcsema_real_eip !7

block_0x29:                                       ; preds = %block_0x1f
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !8
  %45 = sub i64 %RSP_val.9, 8, !mcsema_real_eip !8
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %46, !mcsema_real_eip !8
  store i64 %45, i64* %XSP, !mcsema_real_eip !8
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %47 = add i64 %RBP_val.10, -4, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  %49 = inttoptr i64 %47 to i32*, !mcsema_real_eip !9
  %50 = load i32, i32* %49, !mcsema_real_eip !9
  %51 = zext i32 %50 to i64, !mcsema_real_eip !9
  store i64 %51, i64* %XAX, !mcsema_real_eip !9
  %EAX.11 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.12 = load i32, i32* %EAX.11, !mcsema_real_eip !10
  %52 = add i32 1, %EAX_val.12, !mcsema_real_eip !10
  %53 = xor i32 %52, %EAX_val.12, !mcsema_real_eip !10
  %54 = xor i32 %53, 1, !mcsema_real_eip !10
  %55 = and i32 %54, 16, !mcsema_real_eip !10
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !10
  store i1 %56, i1* %AF, !mcsema_real_eip !10
  %57 = lshr i32 %52, 31, !mcsema_real_eip !10
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !10
  store i1 %58, i1* %SF, !mcsema_real_eip !10
  %59 = icmp eq i32 %52, 0, !mcsema_real_eip !10
  store i1 %59, i1* %ZF, !mcsema_real_eip !10
  %60 = xor i32 %EAX_val.12, 1, !mcsema_real_eip !10
  %61 = xor i32 %60, -1, !mcsema_real_eip !10
  %62 = and i32 %61, %53, !mcsema_real_eip !10
  %63 = lshr i32 %62, 31, !mcsema_real_eip !10
  %64 = and i32 %63, 1, !mcsema_real_eip !10
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !10
  store i1 %65, i1* %OF, !mcsema_real_eip !10
  %66 = trunc i32 %52 to i8, !mcsema_real_eip !10
  %67 = call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !10
  %68 = trunc i8 %67 to i1, !mcsema_real_eip !10
  %69 = xor i1 %68, true, !mcsema_real_eip !10
  store i1 %69, i1* %PF, !mcsema_real_eip !10
  %70 = icmp ult i32 %52, %EAX_val.12, !mcsema_real_eip !10
  store i1 %70, i1* %CF, !mcsema_real_eip !10
  %71 = zext i32 %52 to i64, !mcsema_real_eip !10
  store i64 %71, i64* %XAX, !mcsema_real_eip !10
  %EAX_val.15 = load i32, i32* %EAX.11, !mcsema_real_eip !11
  store i32 %EAX_val.15, i32* %49, !mcsema_real_eip !11
  br label %block_0x1f, !mcsema_real_eip !12

block_0x3c:                                       ; preds = %block_0x1f
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !13
  %72 = add i64 16, %RSP_val.6, !mcsema_real_eip !13
  %73 = xor i64 %72, %RSP_val.6, !mcsema_real_eip !13
  %74 = xor i64 %73, 16, !mcsema_real_eip !13
  %75 = and i64 %74, 16, !mcsema_real_eip !13
  %76 = icmp ne i64 %75, 0, !mcsema_real_eip !13
  store i1 %76, i1* %AF, !mcsema_real_eip !13
  %77 = lshr i64 %72, 63, !mcsema_real_eip !13
  %78 = trunc i64 %77 to i1, !mcsema_real_eip !13
  store i1 %78, i1* %SF, !mcsema_real_eip !13
  %79 = icmp eq i64 %72, 0, !mcsema_real_eip !13
  store i1 %79, i1* %ZF, !mcsema_real_eip !13
  %80 = xor i64 %RSP_val.6, 16, !mcsema_real_eip !13
  %81 = xor i64 %80, -1, !mcsema_real_eip !13
  %82 = and i64 %81, %73, !mcsema_real_eip !13
  %83 = lshr i64 %82, 63, !mcsema_real_eip !13
  %84 = and i64 %83, 1, !mcsema_real_eip !13
  %85 = trunc i64 %84 to i1, !mcsema_real_eip !13
  store i1 %85, i1* %OF, !mcsema_real_eip !13
  %86 = trunc i64 %72 to i8, !mcsema_real_eip !13
  %87 = call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !13
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !13
  %89 = xor i1 %88, true, !mcsema_real_eip !13
  store i1 %89, i1* %PF, !mcsema_real_eip !13
  %90 = icmp ult i64 %72, %RSP_val.6, !mcsema_real_eip !13
  store i1 %90, i1* %CF, !mcsema_real_eip !13
  store i64 %72, i64* %XSP, !mcsema_real_eip !13
  %91 = inttoptr i64 %72 to i64*, !mcsema_real_eip !14
  %92 = load i64, i64* %91, !mcsema_real_eip !14
  store i64 %92, i64* %XBP, !mcsema_real_eip !14
  %93 = add i64 %72, 8, !mcsema_real_eip !14
  store i64 %93, i64* %XSP, !mcsema_real_eip !14
  %94 = add i64 %93, 8, !mcsema_real_eip !15
  %95 = inttoptr i64 %93 to i64*, !mcsema_real_eip !15
  %96 = load i64, i64* %95, !mcsema_real_eip !15
  store i64 %96, i64* %XIP, !mcsema_real_eip !15
  store i64 %94, i64* %XSP, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !16
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !16
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !16
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !16
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !16
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !16
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !16
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !16
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !16
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !16
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !16
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !16
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !16
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !16
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !16
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !16
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !16
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !16
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !16
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !16
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !16
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !16
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !16
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !16
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !16
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !16
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !16
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !16
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !16
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !16
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !16
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !16
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !16
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !16
  br label %block_0x0, !mcsema_real_eip !16

block_0x0:                                        ; preds = %entry
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !16
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !16
  %1 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !16
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !16
  store i64 %RBP_val.16, i64* %2, !mcsema_real_eip !16
  store i64 %1, i64* %XSP, !mcsema_real_eip !16
  store i64 %1, i64* %XBP, !mcsema_real_eip !17
  %3 = load i64, i64* %2, !mcsema_real_eip !18
  store i64 %3, i64* %XBP, !mcsema_real_eip !18
  store i64 %RSP_val.17, i64* %XSP, !mcsema_real_eip !18
  %4 = add i64 %RSP_val.17, 8, !mcsema_real_eip !19
  %5 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !19
  %6 = load i64, i64* %5, !mcsema_real_eip !19
  store i64 %6, i64* %XIP, !mcsema_real_eip !19
  store i64 %4, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @doWork() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 17}
!4 = !{i64 20}
!5 = !{i64 24}
!6 = !{i64 31}
!7 = !{i64 35}
!8 = !{i64 41}
!9 = !{i64 46}
!10 = !{i64 49}
!11 = !{i64 52}
!12 = !{i64 55}
!13 = !{i64 60}
!14 = !{i64 64}
!15 = !{i64 65}
!16 = !{i64 0}
!17 = !{i64 1}
!18 = !{i64 4}
!19 = !{i64 5}
