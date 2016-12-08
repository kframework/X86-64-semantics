; ModuleID = 'Output/test_15.clang.trans.bc'
source_filename = "Output/test_15.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl doOp;"
module asm "  .type doOp,@function"
module asm "doOp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doOp,0b-doOp;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x28 = internal global %0 <{ [4 x i8] c"\01\00\00\00" }>, align 64
@data_0x30 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"'\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, -4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %5, !mcsema_real_eip !4
  %6 = load i32, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !5
  %7 = zext i32 %6 to i64, !mcsema_real_eip !5
  store i64 %7, i64* %XDI, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.6, -8, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %EDI_val.8 = load i32, i32* %EDI.4, !mcsema_real_eip !6
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.8, i32* %10, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.9, -4, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = inttoptr i64 %11 to i32*, !mcsema_real_eip !7
  %14 = load i32, i32* %13, !mcsema_real_eip !7
  %15 = zext i32 %14 to i64, !mcsema_real_eip !7
  store i64 %15, i64* %XDI, !mcsema_real_eip !7
  %16 = load i32, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !8
  %EDI_val.11 = load i32, i32* %EDI.4, !mcsema_real_eip !8
  %17 = add i32 %EDI_val.11, %16, !mcsema_real_eip !8
  %18 = xor i32 %17, %16, !mcsema_real_eip !8
  %19 = xor i32 %18, %EDI_val.11, !mcsema_real_eip !8
  %20 = and i32 %19, 16, !mcsema_real_eip !8
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !8
  store i1 %21, i1* %AF, !mcsema_real_eip !8
  %22 = lshr i32 %17, 31, !mcsema_real_eip !8
  %23 = trunc i32 %22 to i1, !mcsema_real_eip !8
  store i1 %23, i1* %SF, !mcsema_real_eip !8
  %24 = icmp eq i32 %17, 0, !mcsema_real_eip !8
  store i1 %24, i1* %ZF, !mcsema_real_eip !8
  %25 = xor i32 %16, %EDI_val.11, !mcsema_real_eip !8
  %26 = xor i32 %25, -1, !mcsema_real_eip !8
  %27 = and i32 %26, %18, !mcsema_real_eip !8
  %28 = lshr i32 %27, 31, !mcsema_real_eip !8
  %29 = and i32 %28, 1, !mcsema_real_eip !8
  %30 = trunc i32 %29 to i1, !mcsema_real_eip !8
  store i1 %30, i1* %OF, !mcsema_real_eip !8
  %31 = trunc i32 %17 to i8, !mcsema_real_eip !8
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !8
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !8
  %34 = xor i1 %33, true, !mcsema_real_eip !8
  store i1 %34, i1* %PF, !mcsema_real_eip !8
  %35 = icmp ult i32 %17, %16, !mcsema_real_eip !8
  store i1 %35, i1* %CF, !mcsema_real_eip !8
  %36 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %36, i64* %XDI, !mcsema_real_eip !8
  %EDI_val.13 = load i32, i32* %EDI.4, !mcsema_real_eip !9
  store i32 %EDI_val.13, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %37 = add i64 %RBP_val.14, -8, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !10
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !10
  %40 = load i32, i32* %39, !mcsema_real_eip !10
  %41 = zext i32 %40 to i64, !mcsema_real_eip !10
  store i64 %41, i64* %XAX, !mcsema_real_eip !10
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %42 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %43 = load i64, i64* %42, !mcsema_real_eip !11
  store i64 %43, i64* %XBP, !mcsema_real_eip !11
  %44 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  store i64 %44, i64* %XSP, !mcsema_real_eip !11
  %45 = add i64 %44, 8, !mcsema_real_eip !12
  %46 = inttoptr i64 %44 to i64*, !mcsema_real_eip !12
  %47 = load i64, i64* %46, !mcsema_real_eip !12
  store i64 %47, i64* %XIP, !mcsema_real_eip !12
  store i64 %45, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @doOp() #2

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
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 27}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 38}
