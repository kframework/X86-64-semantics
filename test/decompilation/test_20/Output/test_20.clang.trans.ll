; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl switches;"
module asm "  .type switches,@function"
module asm "switches:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size switches,0b-switches;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d0 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\CD\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %8, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.7, -4, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  %12 = load i32, i32* %11, !mcsema_real_eip !6
  %13 = zext i32 %12 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %XDI, !mcsema_real_eip !6
  %EDI_val.9 = load i32, i32* %EDI.4, !mcsema_real_eip !7
  %14 = icmp eq i32 %EDI_val.9, 0, !mcsema_real_eip !7
  store i1 %14, i1* %ZF, !mcsema_real_eip !7
  %15 = lshr i32 %EDI_val.9, 31, !mcsema_real_eip !7
  %16 = trunc i32 %15 to i1, !mcsema_real_eip !7
  store i1 %16, i1* %SF, !mcsema_real_eip !7
  %17 = trunc i32 %EDI_val.9 to i8, !mcsema_real_eip !7
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !7
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !7
  %20 = xor i1 %19, true, !mcsema_real_eip !7
  store i1 %20, i1* %PF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %21 = add i64 %RBP_val.7, -12, !mcsema_real_eip !8
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !8
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %23, !mcsema_real_eip !8
  %24 = load i1, i1* %ZF, !mcsema_real_eip !9
  br i1 %24, label %block_0x19f, label %block_0x1c, !mcsema_real_eip !9

block_0x1c:                                       ; preds = %block_0x0
  br label %block_0x21, !mcsema_real_eip !10

block_0x19f:                                      ; preds = %block_0x0
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %25 = add i64 %RBP_val.15, -8, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !11
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !11
  %28 = load i32, i32* %27, !mcsema_real_eip !11
  %29 = zext i32 %28 to i64, !mcsema_real_eip !11
  store i64 %29, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  store i1 false, i1* %AF, !mcsema_real_eip !12
  %30 = lshr i32 %EAX_val.17, 31, !mcsema_real_eip !12
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !12
  store i1 %31, i1* %SF, !mcsema_real_eip !12
  %32 = icmp eq i32 %EAX_val.17, 0, !mcsema_real_eip !12
  store i1 %32, i1* %ZF, !mcsema_real_eip !12
  %33 = xor i32 %EAX_val.17, -1, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  %34 = trunc i32 %EAX_val.17 to i8, !mcsema_real_eip !12
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !12
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !12
  %37 = xor i1 %36, true, !mcsema_real_eip !12
  store i1 %37, i1* %PF, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  %38 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !12
  store i64 %38, i64* %XAX, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %27, !mcsema_real_eip !13
  br label %block_0x2c8, !mcsema_real_eip !14

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %39 = add i64 %RBP_val.21, -8, !mcsema_real_eip !15
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !15
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !15
  %42 = load i32, i32* %41, !mcsema_real_eip !15
  %43 = zext i32 %42 to i64, !mcsema_real_eip !15
  store i64 %43, i64* %XAX, !mcsema_real_eip !15
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %44 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !16
  %45 = load i64, i64* %44, !mcsema_real_eip !16
  store i64 %45, i64* %XBP, !mcsema_real_eip !16
  %46 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store i64 %46, i64* %XSP, !mcsema_real_eip !16
  %47 = add i64 %46, 8, !mcsema_real_eip !17
  %48 = inttoptr i64 %46 to i64*, !mcsema_real_eip !17
  %49 = load i64, i64* %48, !mcsema_real_eip !17
  store i64 %49, i64* %XIP, !mcsema_real_eip !17
  store i64 %47, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x21:                                       ; preds = %block_0x1c
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %50 = add i64 %RBP_val.24, -12, !mcsema_real_eip !18
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !18
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !18
  %53 = load i32, i32* %52, !mcsema_real_eip !18
  %54 = zext i32 %53 to i64, !mcsema_real_eip !18
  store i64 %54, i64* %XAX, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !19
  %55 = sub i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %56 = xor i32 %55, %EAX_val.26, !mcsema_real_eip !19
  %57 = xor i32 %56, 1, !mcsema_real_eip !19
  %58 = and i32 %57, 16, !mcsema_real_eip !19
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !19
  store i1 %59, i1* %AF, !mcsema_real_eip !19
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !19
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !19
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !19
  %63 = xor i1 %62, true, !mcsema_real_eip !19
  store i1 %63, i1* %PF, !mcsema_real_eip !19
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !19
  store i1 %64, i1* %ZF, !mcsema_real_eip !19
  %65 = lshr i32 %55, 31, !mcsema_real_eip !19
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !19
  store i1 %66, i1* %SF, !mcsema_real_eip !19
  %67 = icmp ult i32 %EAX_val.26, 1, !mcsema_real_eip !19
  store i1 %67, i1* %CF, !mcsema_real_eip !19
  %68 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %69 = and i32 %68, %56, !mcsema_real_eip !19
  %70 = lshr i32 %69, 31, !mcsema_real_eip !19
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !19
  store i1 %71, i1* %OF, !mcsema_real_eip !19
  %72 = zext i32 %55 to i64, !mcsema_real_eip !19
  store i64 %72, i64* %XAX, !mcsema_real_eip !19
  %73 = add i64 %RBP_val.24, -16, !mcsema_real_eip !20
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !20
  %EAX_val.29 = load i32, i32* %EAX.25, !mcsema_real_eip !20
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %75, !mcsema_real_eip !20
  %76 = load i1, i1* %ZF, !mcsema_real_eip !21
  br i1 %76, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !21

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !22

block_0x1ad:                                      ; preds = %block_0x21
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !23
  %77 = add i64 %RBP_val.30, -8, !mcsema_real_eip !23
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !23
  %79 = inttoptr i64 %77 to i32*, !mcsema_real_eip !23
  %80 = load i32, i32* %79, !mcsema_real_eip !23
  %81 = zext i32 %80 to i64, !mcsema_real_eip !23
  store i64 %81, i64* %XAX, !mcsema_real_eip !23
  %EAX_val.32 = load i32, i32* %EAX.25, !mcsema_real_eip !24
  %82 = add i32 1, %EAX_val.32, !mcsema_real_eip !24
  %83 = xor i32 %82, %EAX_val.32, !mcsema_real_eip !24
  %84 = xor i32 %83, 1, !mcsema_real_eip !24
  %85 = and i32 %84, 16, !mcsema_real_eip !24
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !24
  store i1 %86, i1* %AF, !mcsema_real_eip !24
  %87 = lshr i32 %82, 31, !mcsema_real_eip !24
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !24
  store i1 %88, i1* %SF, !mcsema_real_eip !24
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !24
  store i1 %89, i1* %ZF, !mcsema_real_eip !24
  %90 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !24
  %91 = xor i32 %90, -1, !mcsema_real_eip !24
  %92 = and i32 %91, %83, !mcsema_real_eip !24
  %93 = lshr i32 %92, 31, !mcsema_real_eip !24
  %94 = and i32 %93, 1, !mcsema_real_eip !24
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !24
  store i1 %95, i1* %OF, !mcsema_real_eip !24
  %96 = trunc i32 %82 to i8, !mcsema_real_eip !24
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !24
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !24
  %99 = xor i1 %98, true, !mcsema_real_eip !24
  store i1 %99, i1* %PF, !mcsema_real_eip !24
  %100 = icmp ult i32 %82, %EAX_val.32, !mcsema_real_eip !24
  store i1 %100, i1* %CF, !mcsema_real_eip !24
  %101 = zext i32 %82 to i64, !mcsema_real_eip !24
  store i64 %101, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.35 = load i32, i32* %EAX.25, !mcsema_real_eip !25
  store i32 %EAX_val.35, i32* %79, !mcsema_real_eip !25
  br label %block_0x2c8, !mcsema_real_eip !26

block_0x35:                                       ; preds = %block_0x30
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !27
  %102 = add i64 %RBP_val.36, -12, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !27
  %105 = load i32, i32* %104, !mcsema_real_eip !27
  %106 = zext i32 %105 to i64, !mcsema_real_eip !27
  store i64 %106, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.38 = load i32, i32* %EAX.25, !mcsema_real_eip !28
  %107 = sub i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %108 = xor i32 %107, %EAX_val.38, !mcsema_real_eip !28
  %109 = xor i32 %108, 2, !mcsema_real_eip !28
  %110 = and i32 %109, 16, !mcsema_real_eip !28
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !28
  store i1 %111, i1* %AF, !mcsema_real_eip !28
  %112 = trunc i32 %107 to i8, !mcsema_real_eip !28
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !28
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !28
  %115 = xor i1 %114, true, !mcsema_real_eip !28
  store i1 %115, i1* %PF, !mcsema_real_eip !28
  %116 = icmp eq i32 %107, 0, !mcsema_real_eip !28
  store i1 %116, i1* %ZF, !mcsema_real_eip !28
  %117 = lshr i32 %107, 31, !mcsema_real_eip !28
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !28
  store i1 %118, i1* %SF, !mcsema_real_eip !28
  %119 = icmp ult i32 %EAX_val.38, 2, !mcsema_real_eip !28
  store i1 %119, i1* %CF, !mcsema_real_eip !28
  %120 = xor i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %121 = and i32 %120, %108, !mcsema_real_eip !28
  %122 = lshr i32 %121, 31, !mcsema_real_eip !28
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !28
  store i1 %123, i1* %OF, !mcsema_real_eip !28
  %124 = zext i32 %107 to i64, !mcsema_real_eip !28
  store i64 %124, i64* %XAX, !mcsema_real_eip !28
  %125 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !29
  %EAX_val.41 = load i32, i32* %EAX.25, !mcsema_real_eip !29
  %127 = inttoptr i64 %125 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.41, i32* %127, !mcsema_real_eip !29
  %128 = load i1, i1* %ZF, !mcsema_real_eip !30
  br i1 %128, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !30

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !31

block_0x1bb:                                      ; preds = %block_0x35
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !32
  %129 = add i64 %RBP_val.42, -8, !mcsema_real_eip !32
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !32
  %131 = inttoptr i64 %129 to i32*, !mcsema_real_eip !32
  %132 = load i32, i32* %131, !mcsema_real_eip !32
  %133 = zext i32 %132 to i64, !mcsema_real_eip !32
  store i64 %133, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.44 = load i32, i32* %EAX.25, !mcsema_real_eip !33
  %134 = add i32 2, %EAX_val.44, !mcsema_real_eip !33
  %135 = xor i32 %134, %EAX_val.44, !mcsema_real_eip !33
  %136 = xor i32 %135, 2, !mcsema_real_eip !33
  %137 = and i32 %136, 16, !mcsema_real_eip !33
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !33
  store i1 %138, i1* %AF, !mcsema_real_eip !33
  %139 = lshr i32 %134, 31, !mcsema_real_eip !33
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !33
  store i1 %140, i1* %SF, !mcsema_real_eip !33
  %141 = icmp eq i32 %134, 0, !mcsema_real_eip !33
  store i1 %141, i1* %ZF, !mcsema_real_eip !33
  %142 = xor i32 %EAX_val.44, 2, !mcsema_real_eip !33
  %143 = xor i32 %142, -1, !mcsema_real_eip !33
  %144 = and i32 %143, %135, !mcsema_real_eip !33
  %145 = lshr i32 %144, 31, !mcsema_real_eip !33
  %146 = and i32 %145, 1, !mcsema_real_eip !33
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !33
  store i1 %147, i1* %OF, !mcsema_real_eip !33
  %148 = trunc i32 %134 to i8, !mcsema_real_eip !33
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !33
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !33
  %151 = xor i1 %150, true, !mcsema_real_eip !33
  store i1 %151, i1* %PF, !mcsema_real_eip !33
  %152 = icmp ult i32 %134, %EAX_val.44, !mcsema_real_eip !33
  store i1 %152, i1* %CF, !mcsema_real_eip !33
  %153 = zext i32 %134 to i64, !mcsema_real_eip !33
  store i64 %153, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.47 = load i32, i32* %EAX.25, !mcsema_real_eip !34
  store i32 %EAX_val.47, i32* %131, !mcsema_real_eip !34
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x49:                                       ; preds = %block_0x44
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !36
  %154 = add i64 %RBP_val.48, -12, !mcsema_real_eip !36
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !36
  %156 = inttoptr i64 %154 to i32*, !mcsema_real_eip !36
  %157 = load i32, i32* %156, !mcsema_real_eip !36
  %158 = zext i32 %157 to i64, !mcsema_real_eip !36
  store i64 %158, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.25, !mcsema_real_eip !37
  %159 = sub i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %160 = xor i32 %159, %EAX_val.50, !mcsema_real_eip !37
  %161 = xor i32 %160, 4, !mcsema_real_eip !37
  %162 = and i32 %161, 16, !mcsema_real_eip !37
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !37
  store i1 %163, i1* %AF, !mcsema_real_eip !37
  %164 = trunc i32 %159 to i8, !mcsema_real_eip !37
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !37
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !37
  %167 = xor i1 %166, true, !mcsema_real_eip !37
  store i1 %167, i1* %PF, !mcsema_real_eip !37
  %168 = icmp eq i32 %159, 0, !mcsema_real_eip !37
  store i1 %168, i1* %ZF, !mcsema_real_eip !37
  %169 = lshr i32 %159, 31, !mcsema_real_eip !37
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !37
  store i1 %170, i1* %SF, !mcsema_real_eip !37
  %171 = icmp ult i32 %EAX_val.50, 4, !mcsema_real_eip !37
  store i1 %171, i1* %CF, !mcsema_real_eip !37
  %172 = xor i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %173 = and i32 %172, %160, !mcsema_real_eip !37
  %174 = lshr i32 %173, 31, !mcsema_real_eip !37
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !37
  store i1 %175, i1* %OF, !mcsema_real_eip !37
  %176 = zext i32 %159 to i64, !mcsema_real_eip !37
  store i64 %176, i64* %XAX, !mcsema_real_eip !37
  %177 = add i64 %RBP_val.48, -24, !mcsema_real_eip !38
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !38
  %EAX_val.53 = load i32, i32* %EAX.25, !mcsema_real_eip !38
  %179 = inttoptr i64 %177 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.53, i32* %179, !mcsema_real_eip !38
  %180 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %180, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !39

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !40

block_0x1c9:                                      ; preds = %block_0x49
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !41
  %181 = add i64 %RBP_val.54, -8, !mcsema_real_eip !41
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !41
  %183 = inttoptr i64 %181 to i32*, !mcsema_real_eip !41
  %184 = load i32, i32* %183, !mcsema_real_eip !41
  %185 = zext i32 %184 to i64, !mcsema_real_eip !41
  store i64 %185, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.56 = load i32, i32* %EAX.25, !mcsema_real_eip !42
  %186 = add i32 4, %EAX_val.56, !mcsema_real_eip !42
  %187 = xor i32 %186, %EAX_val.56, !mcsema_real_eip !42
  %188 = xor i32 %187, 4, !mcsema_real_eip !42
  %189 = and i32 %188, 16, !mcsema_real_eip !42
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !42
  store i1 %190, i1* %AF, !mcsema_real_eip !42
  %191 = lshr i32 %186, 31, !mcsema_real_eip !42
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !42
  store i1 %192, i1* %SF, !mcsema_real_eip !42
  %193 = icmp eq i32 %186, 0, !mcsema_real_eip !42
  store i1 %193, i1* %ZF, !mcsema_real_eip !42
  %194 = xor i32 %EAX_val.56, 4, !mcsema_real_eip !42
  %195 = xor i32 %194, -1, !mcsema_real_eip !42
  %196 = and i32 %195, %187, !mcsema_real_eip !42
  %197 = lshr i32 %196, 31, !mcsema_real_eip !42
  %198 = and i32 %197, 1, !mcsema_real_eip !42
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !42
  store i1 %199, i1* %OF, !mcsema_real_eip !42
  %200 = trunc i32 %186 to i8, !mcsema_real_eip !42
  %201 = call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !42
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !42
  %203 = xor i1 %202, true, !mcsema_real_eip !42
  store i1 %203, i1* %PF, !mcsema_real_eip !42
  %204 = icmp ult i32 %186, %EAX_val.56, !mcsema_real_eip !42
  store i1 %204, i1* %CF, !mcsema_real_eip !42
  %205 = zext i32 %186 to i64, !mcsema_real_eip !42
  store i64 %205, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.25, !mcsema_real_eip !43
  store i32 %EAX_val.59, i32* %183, !mcsema_real_eip !43
  br label %block_0x2c8, !mcsema_real_eip !44

block_0x5d:                                       ; preds = %block_0x58
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !45
  %206 = add i64 %RBP_val.60, -12, !mcsema_real_eip !45
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !45
  %208 = inttoptr i64 %206 to i32*, !mcsema_real_eip !45
  %209 = load i32, i32* %208, !mcsema_real_eip !45
  %210 = zext i32 %209 to i64, !mcsema_real_eip !45
  store i64 %210, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.62 = load i32, i32* %EAX.25, !mcsema_real_eip !46
  %211 = sub i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %212 = xor i32 %211, %EAX_val.62, !mcsema_real_eip !46
  %213 = xor i32 %212, 6, !mcsema_real_eip !46
  %214 = and i32 %213, 16, !mcsema_real_eip !46
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !46
  store i1 %215, i1* %AF, !mcsema_real_eip !46
  %216 = trunc i32 %211 to i8, !mcsema_real_eip !46
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !46
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !46
  %219 = xor i1 %218, true, !mcsema_real_eip !46
  store i1 %219, i1* %PF, !mcsema_real_eip !46
  %220 = icmp eq i32 %211, 0, !mcsema_real_eip !46
  store i1 %220, i1* %ZF, !mcsema_real_eip !46
  %221 = lshr i32 %211, 31, !mcsema_real_eip !46
  %222 = trunc i32 %221 to i1, !mcsema_real_eip !46
  store i1 %222, i1* %SF, !mcsema_real_eip !46
  %223 = icmp ult i32 %EAX_val.62, 6, !mcsema_real_eip !46
  store i1 %223, i1* %CF, !mcsema_real_eip !46
  %224 = xor i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %225 = and i32 %224, %212, !mcsema_real_eip !46
  %226 = lshr i32 %225, 31, !mcsema_real_eip !46
  %227 = trunc i32 %226 to i1, !mcsema_real_eip !46
  store i1 %227, i1* %OF, !mcsema_real_eip !46
  %228 = zext i32 %211 to i64, !mcsema_real_eip !46
  store i64 %228, i64* %XAX, !mcsema_real_eip !46
  %229 = add i64 %RBP_val.60, -28, !mcsema_real_eip !47
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !47
  %EAX_val.65 = load i32, i32* %EAX.25, !mcsema_real_eip !47
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.65, i32* %231, !mcsema_real_eip !47
  %232 = load i1, i1* %ZF, !mcsema_real_eip !48
  br i1 %232, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !48

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !49

block_0x1d7:                                      ; preds = %block_0x5d
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !50
  %233 = add i64 %RBP_val.66, -8, !mcsema_real_eip !50
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !50
  %235 = inttoptr i64 %233 to i32*, !mcsema_real_eip !50
  %236 = load i32, i32* %235, !mcsema_real_eip !50
  %237 = zext i32 %236 to i64, !mcsema_real_eip !50
  store i64 %237, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.68 = load i32, i32* %EAX.25, !mcsema_real_eip !51
  %238 = add i32 6, %EAX_val.68, !mcsema_real_eip !51
  %239 = xor i32 %238, %EAX_val.68, !mcsema_real_eip !51
  %240 = xor i32 %239, 6, !mcsema_real_eip !51
  %241 = and i32 %240, 16, !mcsema_real_eip !51
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !51
  store i1 %242, i1* %AF, !mcsema_real_eip !51
  %243 = lshr i32 %238, 31, !mcsema_real_eip !51
  %244 = trunc i32 %243 to i1, !mcsema_real_eip !51
  store i1 %244, i1* %SF, !mcsema_real_eip !51
  %245 = icmp eq i32 %238, 0, !mcsema_real_eip !51
  store i1 %245, i1* %ZF, !mcsema_real_eip !51
  %246 = xor i32 %EAX_val.68, 6, !mcsema_real_eip !51
  %247 = xor i32 %246, -1, !mcsema_real_eip !51
  %248 = and i32 %247, %239, !mcsema_real_eip !51
  %249 = lshr i32 %248, 31, !mcsema_real_eip !51
  %250 = and i32 %249, 1, !mcsema_real_eip !51
  %251 = trunc i32 %250 to i1, !mcsema_real_eip !51
  store i1 %251, i1* %OF, !mcsema_real_eip !51
  %252 = trunc i32 %238 to i8, !mcsema_real_eip !51
  %253 = call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !51
  %254 = trunc i8 %253 to i1, !mcsema_real_eip !51
  %255 = xor i1 %254, true, !mcsema_real_eip !51
  store i1 %255, i1* %PF, !mcsema_real_eip !51
  %256 = icmp ult i32 %238, %EAX_val.68, !mcsema_real_eip !51
  store i1 %256, i1* %CF, !mcsema_real_eip !51
  %257 = zext i32 %238 to i64, !mcsema_real_eip !51
  store i64 %257, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.71 = load i32, i32* %EAX.25, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %235, !mcsema_real_eip !52
  br label %block_0x2c8, !mcsema_real_eip !53

block_0x71:                                       ; preds = %block_0x6c
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !54
  %258 = add i64 %RBP_val.72, -12, !mcsema_real_eip !54
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !54
  %260 = inttoptr i64 %258 to i32*, !mcsema_real_eip !54
  %261 = load i32, i32* %260, !mcsema_real_eip !54
  %262 = zext i32 %261 to i64, !mcsema_real_eip !54
  store i64 %262, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.25, !mcsema_real_eip !55
  %263 = sub i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %264 = xor i32 %263, %EAX_val.74, !mcsema_real_eip !55
  %265 = xor i32 %264, 12, !mcsema_real_eip !55
  %266 = and i32 %265, 16, !mcsema_real_eip !55
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !55
  store i1 %267, i1* %AF, !mcsema_real_eip !55
  %268 = trunc i32 %263 to i8, !mcsema_real_eip !55
  %269 = call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !55
  %270 = trunc i8 %269 to i1, !mcsema_real_eip !55
  %271 = xor i1 %270, true, !mcsema_real_eip !55
  store i1 %271, i1* %PF, !mcsema_real_eip !55
  %272 = icmp eq i32 %263, 0, !mcsema_real_eip !55
  store i1 %272, i1* %ZF, !mcsema_real_eip !55
  %273 = lshr i32 %263, 31, !mcsema_real_eip !55
  %274 = trunc i32 %273 to i1, !mcsema_real_eip !55
  store i1 %274, i1* %SF, !mcsema_real_eip !55
  %275 = icmp ult i32 %EAX_val.74, 12, !mcsema_real_eip !55
  store i1 %275, i1* %CF, !mcsema_real_eip !55
  %276 = xor i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %277 = and i32 %276, %264, !mcsema_real_eip !55
  %278 = lshr i32 %277, 31, !mcsema_real_eip !55
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !55
  store i1 %279, i1* %OF, !mcsema_real_eip !55
  %280 = zext i32 %263 to i64, !mcsema_real_eip !55
  store i64 %280, i64* %XAX, !mcsema_real_eip !55
  %281 = add i64 %RBP_val.72, -32, !mcsema_real_eip !56
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !56
  %EAX_val.77 = load i32, i32* %EAX.25, !mcsema_real_eip !56
  %283 = inttoptr i64 %281 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.77, i32* %283, !mcsema_real_eip !56
  %284 = load i1, i1* %ZF, !mcsema_real_eip !57
  br i1 %284, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !57

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !58

block_0x1e5:                                      ; preds = %block_0x71
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !59
  %285 = add i64 %RBP_val.78, -8, !mcsema_real_eip !59
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !59
  %287 = inttoptr i64 %285 to i32*, !mcsema_real_eip !59
  %288 = load i32, i32* %287, !mcsema_real_eip !59
  %289 = zext i32 %288 to i64, !mcsema_real_eip !59
  store i64 %289, i64* %XAX, !mcsema_real_eip !59
  %EAX_val.80 = load i32, i32* %EAX.25, !mcsema_real_eip !60
  %290 = add i32 12, %EAX_val.80, !mcsema_real_eip !60
  %291 = xor i32 %290, %EAX_val.80, !mcsema_real_eip !60
  %292 = xor i32 %291, 12, !mcsema_real_eip !60
  %293 = and i32 %292, 16, !mcsema_real_eip !60
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !60
  store i1 %294, i1* %AF, !mcsema_real_eip !60
  %295 = lshr i32 %290, 31, !mcsema_real_eip !60
  %296 = trunc i32 %295 to i1, !mcsema_real_eip !60
  store i1 %296, i1* %SF, !mcsema_real_eip !60
  %297 = icmp eq i32 %290, 0, !mcsema_real_eip !60
  store i1 %297, i1* %ZF, !mcsema_real_eip !60
  %298 = xor i32 %EAX_val.80, 12, !mcsema_real_eip !60
  %299 = xor i32 %298, -1, !mcsema_real_eip !60
  %300 = and i32 %299, %291, !mcsema_real_eip !60
  %301 = lshr i32 %300, 31, !mcsema_real_eip !60
  %302 = and i32 %301, 1, !mcsema_real_eip !60
  %303 = trunc i32 %302 to i1, !mcsema_real_eip !60
  store i1 %303, i1* %OF, !mcsema_real_eip !60
  %304 = trunc i32 %290 to i8, !mcsema_real_eip !60
  %305 = call i8 @llvm.ctpop.i8(i8 %304), !mcsema_real_eip !60
  %306 = trunc i8 %305 to i1, !mcsema_real_eip !60
  %307 = xor i1 %306, true, !mcsema_real_eip !60
  store i1 %307, i1* %PF, !mcsema_real_eip !60
  %308 = icmp ult i32 %290, %EAX_val.80, !mcsema_real_eip !60
  store i1 %308, i1* %CF, !mcsema_real_eip !60
  %309 = zext i32 %290 to i64, !mcsema_real_eip !60
  store i64 %309, i64* %XAX, !mcsema_real_eip !60
  %EAX_val.83 = load i32, i32* %EAX.25, !mcsema_real_eip !61
  store i32 %EAX_val.83, i32* %287, !mcsema_real_eip !61
  br label %block_0x2c8, !mcsema_real_eip !62

block_0x85:                                       ; preds = %block_0x80
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !63
  %310 = add i64 %RBP_val.84, -12, !mcsema_real_eip !63
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !63
  %312 = inttoptr i64 %310 to i32*, !mcsema_real_eip !63
  %313 = load i32, i32* %312, !mcsema_real_eip !63
  %314 = zext i32 %313 to i64, !mcsema_real_eip !63
  store i64 %314, i64* %XAX, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.25, !mcsema_real_eip !64
  %315 = sub i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %316 = xor i32 %315, %EAX_val.86, !mcsema_real_eip !64
  %317 = xor i32 %316, 13, !mcsema_real_eip !64
  %318 = and i32 %317, 16, !mcsema_real_eip !64
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !64
  store i1 %319, i1* %AF, !mcsema_real_eip !64
  %320 = trunc i32 %315 to i8, !mcsema_real_eip !64
  %321 = call i8 @llvm.ctpop.i8(i8 %320), !mcsema_real_eip !64
  %322 = trunc i8 %321 to i1, !mcsema_real_eip !64
  %323 = xor i1 %322, true, !mcsema_real_eip !64
  store i1 %323, i1* %PF, !mcsema_real_eip !64
  %324 = icmp eq i32 %315, 0, !mcsema_real_eip !64
  store i1 %324, i1* %ZF, !mcsema_real_eip !64
  %325 = lshr i32 %315, 31, !mcsema_real_eip !64
  %326 = trunc i32 %325 to i1, !mcsema_real_eip !64
  store i1 %326, i1* %SF, !mcsema_real_eip !64
  %327 = icmp ult i32 %EAX_val.86, 13, !mcsema_real_eip !64
  store i1 %327, i1* %CF, !mcsema_real_eip !64
  %328 = xor i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %329 = and i32 %328, %316, !mcsema_real_eip !64
  %330 = lshr i32 %329, 31, !mcsema_real_eip !64
  %331 = trunc i32 %330 to i1, !mcsema_real_eip !64
  store i1 %331, i1* %OF, !mcsema_real_eip !64
  %332 = zext i32 %315 to i64, !mcsema_real_eip !64
  store i64 %332, i64* %XAX, !mcsema_real_eip !64
  %333 = add i64 %RBP_val.84, -36, !mcsema_real_eip !65
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !65
  %EAX_val.89 = load i32, i32* %EAX.25, !mcsema_real_eip !65
  %335 = inttoptr i64 %333 to i32*, !mcsema_real_eip !65
  store i32 %EAX_val.89, i32* %335, !mcsema_real_eip !65
  %336 = load i1, i1* %ZF, !mcsema_real_eip !66
  br i1 %336, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !66

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !67

block_0x1f3:                                      ; preds = %block_0x85
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !68
  %337 = add i64 %RBP_val.90, -8, !mcsema_real_eip !68
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !68
  %339 = inttoptr i64 %337 to i32*, !mcsema_real_eip !68
  %340 = load i32, i32* %339, !mcsema_real_eip !68
  %341 = zext i32 %340 to i64, !mcsema_real_eip !68
  store i64 %341, i64* %XAX, !mcsema_real_eip !68
  %EAX_val.92 = load i32, i32* %EAX.25, !mcsema_real_eip !69
  %342 = add i32 13, %EAX_val.92, !mcsema_real_eip !69
  %343 = xor i32 %342, %EAX_val.92, !mcsema_real_eip !69
  %344 = xor i32 %343, 13, !mcsema_real_eip !69
  %345 = and i32 %344, 16, !mcsema_real_eip !69
  %346 = icmp ne i32 %345, 0, !mcsema_real_eip !69
  store i1 %346, i1* %AF, !mcsema_real_eip !69
  %347 = lshr i32 %342, 31, !mcsema_real_eip !69
  %348 = trunc i32 %347 to i1, !mcsema_real_eip !69
  store i1 %348, i1* %SF, !mcsema_real_eip !69
  %349 = icmp eq i32 %342, 0, !mcsema_real_eip !69
  store i1 %349, i1* %ZF, !mcsema_real_eip !69
  %350 = xor i32 %EAX_val.92, 13, !mcsema_real_eip !69
  %351 = xor i32 %350, -1, !mcsema_real_eip !69
  %352 = and i32 %351, %343, !mcsema_real_eip !69
  %353 = lshr i32 %352, 31, !mcsema_real_eip !69
  %354 = and i32 %353, 1, !mcsema_real_eip !69
  %355 = trunc i32 %354 to i1, !mcsema_real_eip !69
  store i1 %355, i1* %OF, !mcsema_real_eip !69
  %356 = trunc i32 %342 to i8, !mcsema_real_eip !69
  %357 = call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !69
  %358 = trunc i8 %357 to i1, !mcsema_real_eip !69
  %359 = xor i1 %358, true, !mcsema_real_eip !69
  store i1 %359, i1* %PF, !mcsema_real_eip !69
  %360 = icmp ult i32 %342, %EAX_val.92, !mcsema_real_eip !69
  store i1 %360, i1* %CF, !mcsema_real_eip !69
  %361 = zext i32 %342 to i64, !mcsema_real_eip !69
  store i64 %361, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.95 = load i32, i32* %EAX.25, !mcsema_real_eip !70
  store i32 %EAX_val.95, i32* %339, !mcsema_real_eip !70
  br label %block_0x2c8, !mcsema_real_eip !71

block_0x99:                                       ; preds = %block_0x94
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !72
  %362 = add i64 %RBP_val.96, -12, !mcsema_real_eip !72
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !72
  %364 = inttoptr i64 %362 to i32*, !mcsema_real_eip !72
  %365 = load i32, i32* %364, !mcsema_real_eip !72
  %366 = zext i32 %365 to i64, !mcsema_real_eip !72
  store i64 %366, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.98 = load i32, i32* %EAX.25, !mcsema_real_eip !73
  %367 = sub i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %368 = xor i32 %367, %EAX_val.98, !mcsema_real_eip !73
  %369 = xor i32 %368, 19, !mcsema_real_eip !73
  %370 = and i32 %369, 16, !mcsema_real_eip !73
  %371 = icmp ne i32 %370, 0, !mcsema_real_eip !73
  store i1 %371, i1* %AF, !mcsema_real_eip !73
  %372 = trunc i32 %367 to i8, !mcsema_real_eip !73
  %373 = call i8 @llvm.ctpop.i8(i8 %372), !mcsema_real_eip !73
  %374 = trunc i8 %373 to i1, !mcsema_real_eip !73
  %375 = xor i1 %374, true, !mcsema_real_eip !73
  store i1 %375, i1* %PF, !mcsema_real_eip !73
  %376 = icmp eq i32 %367, 0, !mcsema_real_eip !73
  store i1 %376, i1* %ZF, !mcsema_real_eip !73
  %377 = lshr i32 %367, 31, !mcsema_real_eip !73
  %378 = trunc i32 %377 to i1, !mcsema_real_eip !73
  store i1 %378, i1* %SF, !mcsema_real_eip !73
  %379 = icmp ult i32 %EAX_val.98, 19, !mcsema_real_eip !73
  store i1 %379, i1* %CF, !mcsema_real_eip !73
  %380 = xor i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %381 = and i32 %380, %368, !mcsema_real_eip !73
  %382 = lshr i32 %381, 31, !mcsema_real_eip !73
  %383 = trunc i32 %382 to i1, !mcsema_real_eip !73
  store i1 %383, i1* %OF, !mcsema_real_eip !73
  %384 = zext i32 %367 to i64, !mcsema_real_eip !73
  store i64 %384, i64* %XAX, !mcsema_real_eip !73
  %385 = add i64 %RBP_val.96, -40, !mcsema_real_eip !74
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !74
  %EAX_val.101 = load i32, i32* %EAX.25, !mcsema_real_eip !74
  %387 = inttoptr i64 %385 to i32*, !mcsema_real_eip !74
  store i32 %EAX_val.101, i32* %387, !mcsema_real_eip !74
  %388 = load i1, i1* %ZF, !mcsema_real_eip !75
  br i1 %388, label %block_0x201, label %block_0xa8, !mcsema_real_eip !75

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !76

block_0x201:                                      ; preds = %block_0x99
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !77
  %389 = add i64 %RBP_val.102, -8, !mcsema_real_eip !77
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !77
  %391 = inttoptr i64 %389 to i32*, !mcsema_real_eip !77
  %392 = load i32, i32* %391, !mcsema_real_eip !77
  %393 = zext i32 %392 to i64, !mcsema_real_eip !77
  store i64 %393, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.104 = load i32, i32* %EAX.25, !mcsema_real_eip !78
  %394 = add i32 19, %EAX_val.104, !mcsema_real_eip !78
  %395 = xor i32 %394, %EAX_val.104, !mcsema_real_eip !78
  %396 = xor i32 %395, 19, !mcsema_real_eip !78
  %397 = and i32 %396, 16, !mcsema_real_eip !78
  %398 = icmp ne i32 %397, 0, !mcsema_real_eip !78
  store i1 %398, i1* %AF, !mcsema_real_eip !78
  %399 = lshr i32 %394, 31, !mcsema_real_eip !78
  %400 = trunc i32 %399 to i1, !mcsema_real_eip !78
  store i1 %400, i1* %SF, !mcsema_real_eip !78
  %401 = icmp eq i32 %394, 0, !mcsema_real_eip !78
  store i1 %401, i1* %ZF, !mcsema_real_eip !78
  %402 = xor i32 %EAX_val.104, 19, !mcsema_real_eip !78
  %403 = xor i32 %402, -1, !mcsema_real_eip !78
  %404 = and i32 %403, %395, !mcsema_real_eip !78
  %405 = lshr i32 %404, 31, !mcsema_real_eip !78
  %406 = and i32 %405, 1, !mcsema_real_eip !78
  %407 = trunc i32 %406 to i1, !mcsema_real_eip !78
  store i1 %407, i1* %OF, !mcsema_real_eip !78
  %408 = trunc i32 %394 to i8, !mcsema_real_eip !78
  %409 = call i8 @llvm.ctpop.i8(i8 %408), !mcsema_real_eip !78
  %410 = trunc i8 %409 to i1, !mcsema_real_eip !78
  %411 = xor i1 %410, true, !mcsema_real_eip !78
  store i1 %411, i1* %PF, !mcsema_real_eip !78
  %412 = icmp ult i32 %394, %EAX_val.104, !mcsema_real_eip !78
  store i1 %412, i1* %CF, !mcsema_real_eip !78
  %413 = zext i32 %394 to i64, !mcsema_real_eip !78
  store i64 %413, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.107 = load i32, i32* %EAX.25, !mcsema_real_eip !79
  store i32 %EAX_val.107, i32* %391, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xad:                                       ; preds = %block_0xa8
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !81
  %414 = add i64 %RBP_val.108, -12, !mcsema_real_eip !81
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !81
  %416 = inttoptr i64 %414 to i32*, !mcsema_real_eip !81
  %417 = load i32, i32* %416, !mcsema_real_eip !81
  %418 = zext i32 %417 to i64, !mcsema_real_eip !81
  store i64 %418, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.110 = load i32, i32* %EAX.25, !mcsema_real_eip !82
  %419 = sub i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %420 = xor i32 %419, %EAX_val.110, !mcsema_real_eip !82
  %421 = xor i32 %420, 255, !mcsema_real_eip !82
  %422 = and i32 %421, 16, !mcsema_real_eip !82
  %423 = icmp ne i32 %422, 0, !mcsema_real_eip !82
  store i1 %423, i1* %AF, !mcsema_real_eip !82
  %424 = trunc i32 %419 to i8, !mcsema_real_eip !82
  %425 = call i8 @llvm.ctpop.i8(i8 %424), !mcsema_real_eip !82
  %426 = trunc i8 %425 to i1, !mcsema_real_eip !82
  %427 = xor i1 %426, true, !mcsema_real_eip !82
  store i1 %427, i1* %PF, !mcsema_real_eip !82
  %428 = icmp eq i32 %419, 0, !mcsema_real_eip !82
  store i1 %428, i1* %ZF, !mcsema_real_eip !82
  %429 = lshr i32 %419, 31, !mcsema_real_eip !82
  %430 = trunc i32 %429 to i1, !mcsema_real_eip !82
  store i1 %430, i1* %SF, !mcsema_real_eip !82
  %431 = icmp ult i32 %EAX_val.110, 255, !mcsema_real_eip !82
  store i1 %431, i1* %CF, !mcsema_real_eip !82
  %432 = xor i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %433 = and i32 %432, %420, !mcsema_real_eip !82
  %434 = lshr i32 %433, 31, !mcsema_real_eip !82
  %435 = trunc i32 %434 to i1, !mcsema_real_eip !82
  store i1 %435, i1* %OF, !mcsema_real_eip !82
  %436 = zext i32 %419 to i64, !mcsema_real_eip !82
  store i64 %436, i64* %XAX, !mcsema_real_eip !82
  %437 = add i64 %RBP_val.108, -44, !mcsema_real_eip !83
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !83
  %EAX_val.113 = load i32, i32* %EAX.25, !mcsema_real_eip !83
  %439 = inttoptr i64 %437 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.113, i32* %439, !mcsema_real_eip !83
  %440 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %440, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !84

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !85

block_0x20f:                                      ; preds = %block_0xad
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !86
  %441 = add i64 %RBP_val.114, -8, !mcsema_real_eip !86
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !86
  %443 = inttoptr i64 %441 to i32*, !mcsema_real_eip !86
  %444 = load i32, i32* %443, !mcsema_real_eip !86
  %445 = zext i32 %444 to i64, !mcsema_real_eip !86
  store i64 %445, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.116 = load i32, i32* %EAX.25, !mcsema_real_eip !87
  %446 = add i32 255, %EAX_val.116, !mcsema_real_eip !87
  %447 = xor i32 %446, %EAX_val.116, !mcsema_real_eip !87
  %448 = xor i32 %447, 255, !mcsema_real_eip !87
  %449 = and i32 %448, 16, !mcsema_real_eip !87
  %450 = icmp ne i32 %449, 0, !mcsema_real_eip !87
  store i1 %450, i1* %AF, !mcsema_real_eip !87
  %451 = lshr i32 %446, 31, !mcsema_real_eip !87
  %452 = trunc i32 %451 to i1, !mcsema_real_eip !87
  store i1 %452, i1* %SF, !mcsema_real_eip !87
  %453 = icmp eq i32 %446, 0, !mcsema_real_eip !87
  store i1 %453, i1* %ZF, !mcsema_real_eip !87
  %454 = xor i32 %EAX_val.116, 255, !mcsema_real_eip !87
  %455 = xor i32 %454, -1, !mcsema_real_eip !87
  %456 = and i32 %455, %447, !mcsema_real_eip !87
  %457 = lshr i32 %456, 31, !mcsema_real_eip !87
  %458 = and i32 %457, 1, !mcsema_real_eip !87
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !87
  store i1 %459, i1* %OF, !mcsema_real_eip !87
  %460 = trunc i32 %446 to i8, !mcsema_real_eip !87
  %461 = call i8 @llvm.ctpop.i8(i8 %460), !mcsema_real_eip !87
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !87
  %463 = xor i1 %462, true, !mcsema_real_eip !87
  store i1 %463, i1* %PF, !mcsema_real_eip !87
  %464 = icmp ult i32 %446, %EAX_val.116, !mcsema_real_eip !87
  store i1 %464, i1* %CF, !mcsema_real_eip !87
  %465 = zext i32 %446 to i64, !mcsema_real_eip !87
  store i64 %465, i64* %XAX, !mcsema_real_eip !87
  %EAX_val.119 = load i32, i32* %EAX.25, !mcsema_real_eip !88
  store i32 %EAX_val.119, i32* %443, !mcsema_real_eip !88
  br label %block_0x2c8, !mcsema_real_eip !89

block_0xc3:                                       ; preds = %block_0xbe
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !90
  %466 = add i64 %RBP_val.120, -12, !mcsema_real_eip !90
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !90
  %468 = inttoptr i64 %466 to i32*, !mcsema_real_eip !90
  %469 = load i32, i32* %468, !mcsema_real_eip !90
  %470 = zext i32 %469 to i64, !mcsema_real_eip !90
  store i64 %470, i64* %XAX, !mcsema_real_eip !90
  %EAX_val.122 = load i32, i32* %EAX.25, !mcsema_real_eip !91
  %471 = sub i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %472 = xor i32 %471, %EAX_val.122, !mcsema_real_eip !91
  %473 = xor i32 %472, 74633, !mcsema_real_eip !91
  %474 = and i32 %473, 16, !mcsema_real_eip !91
  %475 = icmp ne i32 %474, 0, !mcsema_real_eip !91
  store i1 %475, i1* %AF, !mcsema_real_eip !91
  %476 = trunc i32 %471 to i8, !mcsema_real_eip !91
  %477 = call i8 @llvm.ctpop.i8(i8 %476), !mcsema_real_eip !91
  %478 = trunc i8 %477 to i1, !mcsema_real_eip !91
  %479 = xor i1 %478, true, !mcsema_real_eip !91
  store i1 %479, i1* %PF, !mcsema_real_eip !91
  %480 = icmp eq i32 %471, 0, !mcsema_real_eip !91
  store i1 %480, i1* %ZF, !mcsema_real_eip !91
  %481 = lshr i32 %471, 31, !mcsema_real_eip !91
  %482 = trunc i32 %481 to i1, !mcsema_real_eip !91
  store i1 %482, i1* %SF, !mcsema_real_eip !91
  %483 = icmp ult i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  store i1 %483, i1* %CF, !mcsema_real_eip !91
  %484 = xor i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %485 = and i32 %484, %472, !mcsema_real_eip !91
  %486 = lshr i32 %485, 31, !mcsema_real_eip !91
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !91
  store i1 %487, i1* %OF, !mcsema_real_eip !91
  %488 = zext i32 %471 to i64, !mcsema_real_eip !91
  store i64 %488, i64* %XAX, !mcsema_real_eip !91
  %489 = add i64 %RBP_val.120, -48, !mcsema_real_eip !92
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !92
  %EAX_val.125 = load i32, i32* %EAX.25, !mcsema_real_eip !92
  %491 = inttoptr i64 %489 to i32*, !mcsema_real_eip !92
  store i32 %EAX_val.125, i32* %491, !mcsema_real_eip !92
  %492 = load i1, i1* %ZF, !mcsema_real_eip !93
  br i1 %492, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !93

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !94

block_0x21f:                                      ; preds = %block_0xc3
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !95
  %493 = add i64 %RBP_val.126, -8, !mcsema_real_eip !95
  %494 = inttoptr i64 %493 to i64*, !mcsema_real_eip !95
  %495 = inttoptr i64 %493 to i32*, !mcsema_real_eip !95
  %496 = load i32, i32* %495, !mcsema_real_eip !95
  %497 = zext i32 %496 to i64, !mcsema_real_eip !95
  store i64 %497, i64* %XAX, !mcsema_real_eip !95
  %EAX_val.128 = load i32, i32* %EAX.25, !mcsema_real_eip !96
  %498 = add i32 74633, %EAX_val.128, !mcsema_real_eip !96
  %499 = xor i32 %498, %EAX_val.128, !mcsema_real_eip !96
  %500 = xor i32 %499, 74633, !mcsema_real_eip !96
  %501 = and i32 %500, 16, !mcsema_real_eip !96
  %502 = icmp ne i32 %501, 0, !mcsema_real_eip !96
  store i1 %502, i1* %AF, !mcsema_real_eip !96
  %503 = lshr i32 %498, 31, !mcsema_real_eip !96
  %504 = trunc i32 %503 to i1, !mcsema_real_eip !96
  store i1 %504, i1* %SF, !mcsema_real_eip !96
  %505 = icmp eq i32 %498, 0, !mcsema_real_eip !96
  store i1 %505, i1* %ZF, !mcsema_real_eip !96
  %506 = xor i32 %EAX_val.128, 74633, !mcsema_real_eip !96
  %507 = xor i32 %506, -1, !mcsema_real_eip !96
  %508 = and i32 %507, %499, !mcsema_real_eip !96
  %509 = lshr i32 %508, 31, !mcsema_real_eip !96
  %510 = and i32 %509, 1, !mcsema_real_eip !96
  %511 = trunc i32 %510 to i1, !mcsema_real_eip !96
  store i1 %511, i1* %OF, !mcsema_real_eip !96
  %512 = trunc i32 %498 to i8, !mcsema_real_eip !96
  %513 = call i8 @llvm.ctpop.i8(i8 %512), !mcsema_real_eip !96
  %514 = trunc i8 %513 to i1, !mcsema_real_eip !96
  %515 = xor i1 %514, true, !mcsema_real_eip !96
  store i1 %515, i1* %PF, !mcsema_real_eip !96
  %516 = icmp ult i32 %498, %EAX_val.128, !mcsema_real_eip !96
  store i1 %516, i1* %CF, !mcsema_real_eip !96
  %517 = zext i32 %498 to i64, !mcsema_real_eip !96
  store i64 %517, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.131 = load i32, i32* %EAX.25, !mcsema_real_eip !97
  store i32 %EAX_val.131, i32* %495, !mcsema_real_eip !97
  br label %block_0x2c8, !mcsema_real_eip !98

block_0xd9:                                       ; preds = %block_0xd4
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !99
  %518 = add i64 %RBP_val.132, -12, !mcsema_real_eip !99
  %519 = inttoptr i64 %518 to i64*, !mcsema_real_eip !99
  %520 = inttoptr i64 %518 to i32*, !mcsema_real_eip !99
  %521 = load i32, i32* %520, !mcsema_real_eip !99
  %522 = zext i32 %521 to i64, !mcsema_real_eip !99
  store i64 %522, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.134 = load i32, i32* %EAX.25, !mcsema_real_eip !100
  %523 = sub i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %524 = xor i32 %523, %EAX_val.134, !mcsema_real_eip !100
  %525 = xor i32 %524, 74634, !mcsema_real_eip !100
  %526 = and i32 %525, 16, !mcsema_real_eip !100
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !100
  store i1 %527, i1* %AF, !mcsema_real_eip !100
  %528 = trunc i32 %523 to i8, !mcsema_real_eip !100
  %529 = call i8 @llvm.ctpop.i8(i8 %528), !mcsema_real_eip !100
  %530 = trunc i8 %529 to i1, !mcsema_real_eip !100
  %531 = xor i1 %530, true, !mcsema_real_eip !100
  store i1 %531, i1* %PF, !mcsema_real_eip !100
  %532 = icmp eq i32 %523, 0, !mcsema_real_eip !100
  store i1 %532, i1* %ZF, !mcsema_real_eip !100
  %533 = lshr i32 %523, 31, !mcsema_real_eip !100
  %534 = trunc i32 %533 to i1, !mcsema_real_eip !100
  store i1 %534, i1* %SF, !mcsema_real_eip !100
  %535 = icmp ult i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  store i1 %535, i1* %CF, !mcsema_real_eip !100
  %536 = xor i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %537 = and i32 %536, %524, !mcsema_real_eip !100
  %538 = lshr i32 %537, 31, !mcsema_real_eip !100
  %539 = trunc i32 %538 to i1, !mcsema_real_eip !100
  store i1 %539, i1* %OF, !mcsema_real_eip !100
  %540 = zext i32 %523 to i64, !mcsema_real_eip !100
  store i64 %540, i64* %XAX, !mcsema_real_eip !100
  %541 = add i64 %RBP_val.132, -52, !mcsema_real_eip !101
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !101
  %EAX_val.137 = load i32, i32* %EAX.25, !mcsema_real_eip !101
  %543 = inttoptr i64 %541 to i32*, !mcsema_real_eip !101
  store i32 %EAX_val.137, i32* %543, !mcsema_real_eip !101
  %544 = load i1, i1* %ZF, !mcsema_real_eip !102
  br i1 %544, label %block_0x22f, label %block_0xea, !mcsema_real_eip !102

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !103

block_0x22f:                                      ; preds = %block_0xd9
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !104
  %545 = add i64 %RBP_val.138, -8, !mcsema_real_eip !104
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !104
  %547 = inttoptr i64 %545 to i32*, !mcsema_real_eip !104
  %548 = load i32, i32* %547, !mcsema_real_eip !104
  %549 = zext i32 %548 to i64, !mcsema_real_eip !104
  store i64 %549, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.140 = load i32, i32* %EAX.25, !mcsema_real_eip !105
  %550 = add i32 74634, %EAX_val.140, !mcsema_real_eip !105
  %551 = xor i32 %550, %EAX_val.140, !mcsema_real_eip !105
  %552 = xor i32 %551, 74634, !mcsema_real_eip !105
  %553 = and i32 %552, 16, !mcsema_real_eip !105
  %554 = icmp ne i32 %553, 0, !mcsema_real_eip !105
  store i1 %554, i1* %AF, !mcsema_real_eip !105
  %555 = lshr i32 %550, 31, !mcsema_real_eip !105
  %556 = trunc i32 %555 to i1, !mcsema_real_eip !105
  store i1 %556, i1* %SF, !mcsema_real_eip !105
  %557 = icmp eq i32 %550, 0, !mcsema_real_eip !105
  store i1 %557, i1* %ZF, !mcsema_real_eip !105
  %558 = xor i32 %EAX_val.140, 74634, !mcsema_real_eip !105
  %559 = xor i32 %558, -1, !mcsema_real_eip !105
  %560 = and i32 %559, %551, !mcsema_real_eip !105
  %561 = lshr i32 %560, 31, !mcsema_real_eip !105
  %562 = and i32 %561, 1, !mcsema_real_eip !105
  %563 = trunc i32 %562 to i1, !mcsema_real_eip !105
  store i1 %563, i1* %OF, !mcsema_real_eip !105
  %564 = trunc i32 %550 to i8, !mcsema_real_eip !105
  %565 = call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !105
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !105
  %567 = xor i1 %566, true, !mcsema_real_eip !105
  store i1 %567, i1* %PF, !mcsema_real_eip !105
  %568 = icmp ult i32 %550, %EAX_val.140, !mcsema_real_eip !105
  store i1 %568, i1* %CF, !mcsema_real_eip !105
  %569 = zext i32 %550 to i64, !mcsema_real_eip !105
  store i64 %569, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.143 = load i32, i32* %EAX.25, !mcsema_real_eip !106
  store i32 %EAX_val.143, i32* %547, !mcsema_real_eip !106
  br label %block_0x2c8, !mcsema_real_eip !107

block_0xef:                                       ; preds = %block_0xea
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !108
  %570 = add i64 %RBP_val.144, -12, !mcsema_real_eip !108
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !108
  %572 = inttoptr i64 %570 to i32*, !mcsema_real_eip !108
  %573 = load i32, i32* %572, !mcsema_real_eip !108
  %574 = zext i32 %573 to i64, !mcsema_real_eip !108
  store i64 %574, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.146 = load i32, i32* %EAX.25, !mcsema_real_eip !109
  %575 = sub i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %576 = xor i32 %575, %EAX_val.146, !mcsema_real_eip !109
  %577 = xor i32 %576, 74635, !mcsema_real_eip !109
  %578 = and i32 %577, 16, !mcsema_real_eip !109
  %579 = icmp ne i32 %578, 0, !mcsema_real_eip !109
  store i1 %579, i1* %AF, !mcsema_real_eip !109
  %580 = trunc i32 %575 to i8, !mcsema_real_eip !109
  %581 = call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !109
  %582 = trunc i8 %581 to i1, !mcsema_real_eip !109
  %583 = xor i1 %582, true, !mcsema_real_eip !109
  store i1 %583, i1* %PF, !mcsema_real_eip !109
  %584 = icmp eq i32 %575, 0, !mcsema_real_eip !109
  store i1 %584, i1* %ZF, !mcsema_real_eip !109
  %585 = lshr i32 %575, 31, !mcsema_real_eip !109
  %586 = trunc i32 %585 to i1, !mcsema_real_eip !109
  store i1 %586, i1* %SF, !mcsema_real_eip !109
  %587 = icmp ult i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  store i1 %587, i1* %CF, !mcsema_real_eip !109
  %588 = xor i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %589 = and i32 %588, %576, !mcsema_real_eip !109
  %590 = lshr i32 %589, 31, !mcsema_real_eip !109
  %591 = trunc i32 %590 to i1, !mcsema_real_eip !109
  store i1 %591, i1* %OF, !mcsema_real_eip !109
  %592 = zext i32 %575 to i64, !mcsema_real_eip !109
  store i64 %592, i64* %XAX, !mcsema_real_eip !109
  %593 = add i64 %RBP_val.144, -56, !mcsema_real_eip !110
  %594 = inttoptr i64 %593 to i64*, !mcsema_real_eip !110
  %EAX_val.149 = load i32, i32* %EAX.25, !mcsema_real_eip !110
  %595 = inttoptr i64 %593 to i32*, !mcsema_real_eip !110
  store i32 %EAX_val.149, i32* %595, !mcsema_real_eip !110
  %596 = load i1, i1* %ZF, !mcsema_real_eip !111
  br i1 %596, label %block_0x23f, label %block_0x100, !mcsema_real_eip !111

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !112

block_0x23f:                                      ; preds = %block_0xef
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !113
  %597 = add i64 %RBP_val.150, -8, !mcsema_real_eip !113
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !113
  %599 = inttoptr i64 %597 to i32*, !mcsema_real_eip !113
  %600 = load i32, i32* %599, !mcsema_real_eip !113
  %601 = zext i32 %600 to i64, !mcsema_real_eip !113
  store i64 %601, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.152 = load i32, i32* %EAX.25, !mcsema_real_eip !114
  %602 = add i32 74635, %EAX_val.152, !mcsema_real_eip !114
  %603 = xor i32 %602, %EAX_val.152, !mcsema_real_eip !114
  %604 = xor i32 %603, 74635, !mcsema_real_eip !114
  %605 = and i32 %604, 16, !mcsema_real_eip !114
  %606 = icmp ne i32 %605, 0, !mcsema_real_eip !114
  store i1 %606, i1* %AF, !mcsema_real_eip !114
  %607 = lshr i32 %602, 31, !mcsema_real_eip !114
  %608 = trunc i32 %607 to i1, !mcsema_real_eip !114
  store i1 %608, i1* %SF, !mcsema_real_eip !114
  %609 = icmp eq i32 %602, 0, !mcsema_real_eip !114
  store i1 %609, i1* %ZF, !mcsema_real_eip !114
  %610 = xor i32 %EAX_val.152, 74635, !mcsema_real_eip !114
  %611 = xor i32 %610, -1, !mcsema_real_eip !114
  %612 = and i32 %611, %603, !mcsema_real_eip !114
  %613 = lshr i32 %612, 31, !mcsema_real_eip !114
  %614 = and i32 %613, 1, !mcsema_real_eip !114
  %615 = trunc i32 %614 to i1, !mcsema_real_eip !114
  store i1 %615, i1* %OF, !mcsema_real_eip !114
  %616 = trunc i32 %602 to i8, !mcsema_real_eip !114
  %617 = call i8 @llvm.ctpop.i8(i8 %616), !mcsema_real_eip !114
  %618 = trunc i8 %617 to i1, !mcsema_real_eip !114
  %619 = xor i1 %618, true, !mcsema_real_eip !114
  store i1 %619, i1* %PF, !mcsema_real_eip !114
  %620 = icmp ult i32 %602, %EAX_val.152, !mcsema_real_eip !114
  store i1 %620, i1* %CF, !mcsema_real_eip !114
  %621 = zext i32 %602 to i64, !mcsema_real_eip !114
  store i64 %621, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.155 = load i32, i32* %EAX.25, !mcsema_real_eip !115
  store i32 %EAX_val.155, i32* %599, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x105:                                      ; preds = %block_0x100
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !117
  %622 = add i64 %RBP_val.156, -12, !mcsema_real_eip !117
  %623 = inttoptr i64 %622 to i64*, !mcsema_real_eip !117
  %624 = inttoptr i64 %622 to i32*, !mcsema_real_eip !117
  %625 = load i32, i32* %624, !mcsema_real_eip !117
  %626 = zext i32 %625 to i64, !mcsema_real_eip !117
  store i64 %626, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.158 = load i32, i32* %EAX.25, !mcsema_real_eip !118
  %627 = sub i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %628 = xor i32 %627, %EAX_val.158, !mcsema_real_eip !118
  %629 = xor i32 %628, 74636, !mcsema_real_eip !118
  %630 = and i32 %629, 16, !mcsema_real_eip !118
  %631 = icmp ne i32 %630, 0, !mcsema_real_eip !118
  store i1 %631, i1* %AF, !mcsema_real_eip !118
  %632 = trunc i32 %627 to i8, !mcsema_real_eip !118
  %633 = call i8 @llvm.ctpop.i8(i8 %632), !mcsema_real_eip !118
  %634 = trunc i8 %633 to i1, !mcsema_real_eip !118
  %635 = xor i1 %634, true, !mcsema_real_eip !118
  store i1 %635, i1* %PF, !mcsema_real_eip !118
  %636 = icmp eq i32 %627, 0, !mcsema_real_eip !118
  store i1 %636, i1* %ZF, !mcsema_real_eip !118
  %637 = lshr i32 %627, 31, !mcsema_real_eip !118
  %638 = trunc i32 %637 to i1, !mcsema_real_eip !118
  store i1 %638, i1* %SF, !mcsema_real_eip !118
  %639 = icmp ult i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  store i1 %639, i1* %CF, !mcsema_real_eip !118
  %640 = xor i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %641 = and i32 %640, %628, !mcsema_real_eip !118
  %642 = lshr i32 %641, 31, !mcsema_real_eip !118
  %643 = trunc i32 %642 to i1, !mcsema_real_eip !118
  store i1 %643, i1* %OF, !mcsema_real_eip !118
  %644 = zext i32 %627 to i64, !mcsema_real_eip !118
  store i64 %644, i64* %XAX, !mcsema_real_eip !118
  %645 = add i64 %RBP_val.156, -60, !mcsema_real_eip !119
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !119
  %EAX_val.161 = load i32, i32* %EAX.25, !mcsema_real_eip !119
  %647 = inttoptr i64 %645 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.161, i32* %647, !mcsema_real_eip !119
  %648 = load i1, i1* %ZF, !mcsema_real_eip !120
  br i1 %648, label %block_0x24f, label %block_0x116, !mcsema_real_eip !120

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !121

block_0x24f:                                      ; preds = %block_0x105
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !122
  %649 = add i64 %RBP_val.162, -8, !mcsema_real_eip !122
  %650 = inttoptr i64 %649 to i64*, !mcsema_real_eip !122
  %651 = inttoptr i64 %649 to i32*, !mcsema_real_eip !122
  %652 = load i32, i32* %651, !mcsema_real_eip !122
  %653 = zext i32 %652 to i64, !mcsema_real_eip !122
  store i64 %653, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.164 = load i32, i32* %EAX.25, !mcsema_real_eip !123
  %654 = add i32 74636, %EAX_val.164, !mcsema_real_eip !123
  %655 = xor i32 %654, %EAX_val.164, !mcsema_real_eip !123
  %656 = xor i32 %655, 74636, !mcsema_real_eip !123
  %657 = and i32 %656, 16, !mcsema_real_eip !123
  %658 = icmp ne i32 %657, 0, !mcsema_real_eip !123
  store i1 %658, i1* %AF, !mcsema_real_eip !123
  %659 = lshr i32 %654, 31, !mcsema_real_eip !123
  %660 = trunc i32 %659 to i1, !mcsema_real_eip !123
  store i1 %660, i1* %SF, !mcsema_real_eip !123
  %661 = icmp eq i32 %654, 0, !mcsema_real_eip !123
  store i1 %661, i1* %ZF, !mcsema_real_eip !123
  %662 = xor i32 %EAX_val.164, 74636, !mcsema_real_eip !123
  %663 = xor i32 %662, -1, !mcsema_real_eip !123
  %664 = and i32 %663, %655, !mcsema_real_eip !123
  %665 = lshr i32 %664, 31, !mcsema_real_eip !123
  %666 = and i32 %665, 1, !mcsema_real_eip !123
  %667 = trunc i32 %666 to i1, !mcsema_real_eip !123
  store i1 %667, i1* %OF, !mcsema_real_eip !123
  %668 = trunc i32 %654 to i8, !mcsema_real_eip !123
  %669 = call i8 @llvm.ctpop.i8(i8 %668), !mcsema_real_eip !123
  %670 = trunc i8 %669 to i1, !mcsema_real_eip !123
  %671 = xor i1 %670, true, !mcsema_real_eip !123
  store i1 %671, i1* %PF, !mcsema_real_eip !123
  %672 = icmp ult i32 %654, %EAX_val.164, !mcsema_real_eip !123
  store i1 %672, i1* %CF, !mcsema_real_eip !123
  %673 = zext i32 %654 to i64, !mcsema_real_eip !123
  store i64 %673, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.167 = load i32, i32* %EAX.25, !mcsema_real_eip !124
  store i32 %EAX_val.167, i32* %651, !mcsema_real_eip !124
  br label %block_0x2c8, !mcsema_real_eip !125

block_0x11b:                                      ; preds = %block_0x116
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !126
  %674 = add i64 %RBP_val.168, -12, !mcsema_real_eip !126
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !126
  %676 = inttoptr i64 %674 to i32*, !mcsema_real_eip !126
  %677 = load i32, i32* %676, !mcsema_real_eip !126
  %678 = zext i32 %677 to i64, !mcsema_real_eip !126
  store i64 %678, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.170 = load i32, i32* %EAX.25, !mcsema_real_eip !127
  %679 = sub i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %680 = xor i32 %679, %EAX_val.170, !mcsema_real_eip !127
  %681 = xor i32 %680, 74637, !mcsema_real_eip !127
  %682 = and i32 %681, 16, !mcsema_real_eip !127
  %683 = icmp ne i32 %682, 0, !mcsema_real_eip !127
  store i1 %683, i1* %AF, !mcsema_real_eip !127
  %684 = trunc i32 %679 to i8, !mcsema_real_eip !127
  %685 = call i8 @llvm.ctpop.i8(i8 %684), !mcsema_real_eip !127
  %686 = trunc i8 %685 to i1, !mcsema_real_eip !127
  %687 = xor i1 %686, true, !mcsema_real_eip !127
  store i1 %687, i1* %PF, !mcsema_real_eip !127
  %688 = icmp eq i32 %679, 0, !mcsema_real_eip !127
  store i1 %688, i1* %ZF, !mcsema_real_eip !127
  %689 = lshr i32 %679, 31, !mcsema_real_eip !127
  %690 = trunc i32 %689 to i1, !mcsema_real_eip !127
  store i1 %690, i1* %SF, !mcsema_real_eip !127
  %691 = icmp ult i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  store i1 %691, i1* %CF, !mcsema_real_eip !127
  %692 = xor i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %693 = and i32 %692, %680, !mcsema_real_eip !127
  %694 = lshr i32 %693, 31, !mcsema_real_eip !127
  %695 = trunc i32 %694 to i1, !mcsema_real_eip !127
  store i1 %695, i1* %OF, !mcsema_real_eip !127
  %696 = zext i32 %679 to i64, !mcsema_real_eip !127
  store i64 %696, i64* %XAX, !mcsema_real_eip !127
  %697 = add i64 %RBP_val.168, -64, !mcsema_real_eip !128
  %698 = inttoptr i64 %697 to i64*, !mcsema_real_eip !128
  %EAX_val.173 = load i32, i32* %EAX.25, !mcsema_real_eip !128
  %699 = inttoptr i64 %697 to i32*, !mcsema_real_eip !128
  store i32 %EAX_val.173, i32* %699, !mcsema_real_eip !128
  %700 = load i1, i1* %ZF, !mcsema_real_eip !129
  br i1 %700, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !129

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !130

block_0x25f:                                      ; preds = %block_0x11b
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !131
  %701 = add i64 %RBP_val.174, -8, !mcsema_real_eip !131
  %702 = inttoptr i64 %701 to i64*, !mcsema_real_eip !131
  %703 = inttoptr i64 %701 to i32*, !mcsema_real_eip !131
  %704 = load i32, i32* %703, !mcsema_real_eip !131
  %705 = zext i32 %704 to i64, !mcsema_real_eip !131
  store i64 %705, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.176 = load i32, i32* %EAX.25, !mcsema_real_eip !132
  %706 = add i32 74637, %EAX_val.176, !mcsema_real_eip !132
  %707 = xor i32 %706, %EAX_val.176, !mcsema_real_eip !132
  %708 = xor i32 %707, 74637, !mcsema_real_eip !132
  %709 = and i32 %708, 16, !mcsema_real_eip !132
  %710 = icmp ne i32 %709, 0, !mcsema_real_eip !132
  store i1 %710, i1* %AF, !mcsema_real_eip !132
  %711 = lshr i32 %706, 31, !mcsema_real_eip !132
  %712 = trunc i32 %711 to i1, !mcsema_real_eip !132
  store i1 %712, i1* %SF, !mcsema_real_eip !132
  %713 = icmp eq i32 %706, 0, !mcsema_real_eip !132
  store i1 %713, i1* %ZF, !mcsema_real_eip !132
  %714 = xor i32 %EAX_val.176, 74637, !mcsema_real_eip !132
  %715 = xor i32 %714, -1, !mcsema_real_eip !132
  %716 = and i32 %715, %707, !mcsema_real_eip !132
  %717 = lshr i32 %716, 31, !mcsema_real_eip !132
  %718 = and i32 %717, 1, !mcsema_real_eip !132
  %719 = trunc i32 %718 to i1, !mcsema_real_eip !132
  store i1 %719, i1* %OF, !mcsema_real_eip !132
  %720 = trunc i32 %706 to i8, !mcsema_real_eip !132
  %721 = call i8 @llvm.ctpop.i8(i8 %720), !mcsema_real_eip !132
  %722 = trunc i8 %721 to i1, !mcsema_real_eip !132
  %723 = xor i1 %722, true, !mcsema_real_eip !132
  store i1 %723, i1* %PF, !mcsema_real_eip !132
  %724 = icmp ult i32 %706, %EAX_val.176, !mcsema_real_eip !132
  store i1 %724, i1* %CF, !mcsema_real_eip !132
  %725 = zext i32 %706 to i64, !mcsema_real_eip !132
  store i64 %725, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.179 = load i32, i32* %EAX.25, !mcsema_real_eip !133
  store i32 %EAX_val.179, i32* %703, !mcsema_real_eip !133
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x131:                                      ; preds = %block_0x12c
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !135
  %726 = add i64 %RBP_val.180, -12, !mcsema_real_eip !135
  %727 = inttoptr i64 %726 to i64*, !mcsema_real_eip !135
  %728 = inttoptr i64 %726 to i32*, !mcsema_real_eip !135
  %729 = load i32, i32* %728, !mcsema_real_eip !135
  %730 = zext i32 %729 to i64, !mcsema_real_eip !135
  store i64 %730, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.182 = load i32, i32* %EAX.25, !mcsema_real_eip !136
  %731 = sub i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %732 = xor i32 %731, %EAX_val.182, !mcsema_real_eip !136
  %733 = xor i32 %732, 74639, !mcsema_real_eip !136
  %734 = and i32 %733, 16, !mcsema_real_eip !136
  %735 = icmp ne i32 %734, 0, !mcsema_real_eip !136
  store i1 %735, i1* %AF, !mcsema_real_eip !136
  %736 = trunc i32 %731 to i8, !mcsema_real_eip !136
  %737 = call i8 @llvm.ctpop.i8(i8 %736), !mcsema_real_eip !136
  %738 = trunc i8 %737 to i1, !mcsema_real_eip !136
  %739 = xor i1 %738, true, !mcsema_real_eip !136
  store i1 %739, i1* %PF, !mcsema_real_eip !136
  %740 = icmp eq i32 %731, 0, !mcsema_real_eip !136
  store i1 %740, i1* %ZF, !mcsema_real_eip !136
  %741 = lshr i32 %731, 31, !mcsema_real_eip !136
  %742 = trunc i32 %741 to i1, !mcsema_real_eip !136
  store i1 %742, i1* %SF, !mcsema_real_eip !136
  %743 = icmp ult i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  store i1 %743, i1* %CF, !mcsema_real_eip !136
  %744 = xor i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %745 = and i32 %744, %732, !mcsema_real_eip !136
  %746 = lshr i32 %745, 31, !mcsema_real_eip !136
  %747 = trunc i32 %746 to i1, !mcsema_real_eip !136
  store i1 %747, i1* %OF, !mcsema_real_eip !136
  %748 = zext i32 %731 to i64, !mcsema_real_eip !136
  store i64 %748, i64* %XAX, !mcsema_real_eip !136
  %749 = add i64 %RBP_val.180, -68, !mcsema_real_eip !137
  %750 = inttoptr i64 %749 to i64*, !mcsema_real_eip !137
  %EAX_val.185 = load i32, i32* %EAX.25, !mcsema_real_eip !137
  %751 = inttoptr i64 %749 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.185, i32* %751, !mcsema_real_eip !137
  %752 = load i1, i1* %ZF, !mcsema_real_eip !138
  br i1 %752, label %block_0x26f, label %block_0x142, !mcsema_real_eip !138

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !139

block_0x26f:                                      ; preds = %block_0x131
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !140
  %753 = add i64 %RBP_val.186, -8, !mcsema_real_eip !140
  %754 = inttoptr i64 %753 to i64*, !mcsema_real_eip !140
  %755 = inttoptr i64 %753 to i32*, !mcsema_real_eip !140
  %756 = load i32, i32* %755, !mcsema_real_eip !140
  %757 = zext i32 %756 to i64, !mcsema_real_eip !140
  store i64 %757, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.188 = load i32, i32* %EAX.25, !mcsema_real_eip !141
  %758 = add i32 74639, %EAX_val.188, !mcsema_real_eip !141
  %759 = xor i32 %758, %EAX_val.188, !mcsema_real_eip !141
  %760 = xor i32 %759, 74639, !mcsema_real_eip !141
  %761 = and i32 %760, 16, !mcsema_real_eip !141
  %762 = icmp ne i32 %761, 0, !mcsema_real_eip !141
  store i1 %762, i1* %AF, !mcsema_real_eip !141
  %763 = lshr i32 %758, 31, !mcsema_real_eip !141
  %764 = trunc i32 %763 to i1, !mcsema_real_eip !141
  store i1 %764, i1* %SF, !mcsema_real_eip !141
  %765 = icmp eq i32 %758, 0, !mcsema_real_eip !141
  store i1 %765, i1* %ZF, !mcsema_real_eip !141
  %766 = xor i32 %EAX_val.188, 74639, !mcsema_real_eip !141
  %767 = xor i32 %766, -1, !mcsema_real_eip !141
  %768 = and i32 %767, %759, !mcsema_real_eip !141
  %769 = lshr i32 %768, 31, !mcsema_real_eip !141
  %770 = and i32 %769, 1, !mcsema_real_eip !141
  %771 = trunc i32 %770 to i1, !mcsema_real_eip !141
  store i1 %771, i1* %OF, !mcsema_real_eip !141
  %772 = trunc i32 %758 to i8, !mcsema_real_eip !141
  %773 = call i8 @llvm.ctpop.i8(i8 %772), !mcsema_real_eip !141
  %774 = trunc i8 %773 to i1, !mcsema_real_eip !141
  %775 = xor i1 %774, true, !mcsema_real_eip !141
  store i1 %775, i1* %PF, !mcsema_real_eip !141
  %776 = icmp ult i32 %758, %EAX_val.188, !mcsema_real_eip !141
  store i1 %776, i1* %CF, !mcsema_real_eip !141
  %777 = zext i32 %758 to i64, !mcsema_real_eip !141
  store i64 %777, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.191 = load i32, i32* %EAX.25, !mcsema_real_eip !142
  store i32 %EAX_val.191, i32* %755, !mcsema_real_eip !142
  br label %block_0x2c8, !mcsema_real_eip !143

block_0x147:                                      ; preds = %block_0x142
  %RBP_val.192 = load i64, i64* %XBP, !mcsema_real_eip !144
  %778 = add i64 %RBP_val.192, -12, !mcsema_real_eip !144
  %779 = inttoptr i64 %778 to i64*, !mcsema_real_eip !144
  %780 = inttoptr i64 %778 to i32*, !mcsema_real_eip !144
  %781 = load i32, i32* %780, !mcsema_real_eip !144
  %782 = zext i32 %781 to i64, !mcsema_real_eip !144
  store i64 %782, i64* %XAX, !mcsema_real_eip !144
  %EAX_val.194 = load i32, i32* %EAX.25, !mcsema_real_eip !145
  %783 = sub i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %784 = xor i32 %783, %EAX_val.194, !mcsema_real_eip !145
  %785 = xor i32 %784, 74640, !mcsema_real_eip !145
  %786 = and i32 %785, 16, !mcsema_real_eip !145
  %787 = icmp ne i32 %786, 0, !mcsema_real_eip !145
  store i1 %787, i1* %AF, !mcsema_real_eip !145
  %788 = trunc i32 %783 to i8, !mcsema_real_eip !145
  %789 = call i8 @llvm.ctpop.i8(i8 %788), !mcsema_real_eip !145
  %790 = trunc i8 %789 to i1, !mcsema_real_eip !145
  %791 = xor i1 %790, true, !mcsema_real_eip !145
  store i1 %791, i1* %PF, !mcsema_real_eip !145
  %792 = icmp eq i32 %783, 0, !mcsema_real_eip !145
  store i1 %792, i1* %ZF, !mcsema_real_eip !145
  %793 = lshr i32 %783, 31, !mcsema_real_eip !145
  %794 = trunc i32 %793 to i1, !mcsema_real_eip !145
  store i1 %794, i1* %SF, !mcsema_real_eip !145
  %795 = icmp ult i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  store i1 %795, i1* %CF, !mcsema_real_eip !145
  %796 = xor i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %797 = and i32 %796, %784, !mcsema_real_eip !145
  %798 = lshr i32 %797, 31, !mcsema_real_eip !145
  %799 = trunc i32 %798 to i1, !mcsema_real_eip !145
  store i1 %799, i1* %OF, !mcsema_real_eip !145
  %800 = zext i32 %783 to i64, !mcsema_real_eip !145
  store i64 %800, i64* %XAX, !mcsema_real_eip !145
  %801 = add i64 %RBP_val.192, -72, !mcsema_real_eip !146
  %802 = inttoptr i64 %801 to i64*, !mcsema_real_eip !146
  %EAX_val.197 = load i32, i32* %EAX.25, !mcsema_real_eip !146
  %803 = inttoptr i64 %801 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.197, i32* %803, !mcsema_real_eip !146
  %804 = load i1, i1* %ZF, !mcsema_real_eip !147
  br i1 %804, label %block_0x27f, label %block_0x158, !mcsema_real_eip !147

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !148

block_0x27f:                                      ; preds = %block_0x147
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !149
  %805 = add i64 %RBP_val.198, -8, !mcsema_real_eip !149
  %806 = inttoptr i64 %805 to i64*, !mcsema_real_eip !149
  %807 = inttoptr i64 %805 to i32*, !mcsema_real_eip !149
  %808 = load i32, i32* %807, !mcsema_real_eip !149
  %809 = zext i32 %808 to i64, !mcsema_real_eip !149
  store i64 %809, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.200 = load i32, i32* %EAX.25, !mcsema_real_eip !150
  %810 = add i32 74640, %EAX_val.200, !mcsema_real_eip !150
  %811 = xor i32 %810, %EAX_val.200, !mcsema_real_eip !150
  %812 = xor i32 %811, 74640, !mcsema_real_eip !150
  %813 = and i32 %812, 16, !mcsema_real_eip !150
  %814 = icmp ne i32 %813, 0, !mcsema_real_eip !150
  store i1 %814, i1* %AF, !mcsema_real_eip !150
  %815 = lshr i32 %810, 31, !mcsema_real_eip !150
  %816 = trunc i32 %815 to i1, !mcsema_real_eip !150
  store i1 %816, i1* %SF, !mcsema_real_eip !150
  %817 = icmp eq i32 %810, 0, !mcsema_real_eip !150
  store i1 %817, i1* %ZF, !mcsema_real_eip !150
  %818 = xor i32 %EAX_val.200, 74640, !mcsema_real_eip !150
  %819 = xor i32 %818, -1, !mcsema_real_eip !150
  %820 = and i32 %819, %811, !mcsema_real_eip !150
  %821 = lshr i32 %820, 31, !mcsema_real_eip !150
  %822 = and i32 %821, 1, !mcsema_real_eip !150
  %823 = trunc i32 %822 to i1, !mcsema_real_eip !150
  store i1 %823, i1* %OF, !mcsema_real_eip !150
  %824 = trunc i32 %810 to i8, !mcsema_real_eip !150
  %825 = call i8 @llvm.ctpop.i8(i8 %824), !mcsema_real_eip !150
  %826 = trunc i8 %825 to i1, !mcsema_real_eip !150
  %827 = xor i1 %826, true, !mcsema_real_eip !150
  store i1 %827, i1* %PF, !mcsema_real_eip !150
  %828 = icmp ult i32 %810, %EAX_val.200, !mcsema_real_eip !150
  store i1 %828, i1* %CF, !mcsema_real_eip !150
  %829 = zext i32 %810 to i64, !mcsema_real_eip !150
  store i64 %829, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.203 = load i32, i32* %EAX.25, !mcsema_real_eip !151
  store i32 %EAX_val.203, i32* %807, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x15d:                                      ; preds = %block_0x158
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !153
  %830 = add i64 %RBP_val.204, -12, !mcsema_real_eip !153
  %831 = inttoptr i64 %830 to i64*, !mcsema_real_eip !153
  %832 = inttoptr i64 %830 to i32*, !mcsema_real_eip !153
  %833 = load i32, i32* %832, !mcsema_real_eip !153
  %834 = zext i32 %833 to i64, !mcsema_real_eip !153
  store i64 %834, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.206 = load i32, i32* %EAX.25, !mcsema_real_eip !154
  %835 = sub i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %836 = xor i32 %835, %EAX_val.206, !mcsema_real_eip !154
  %837 = xor i32 %836, 74641, !mcsema_real_eip !154
  %838 = and i32 %837, 16, !mcsema_real_eip !154
  %839 = icmp ne i32 %838, 0, !mcsema_real_eip !154
  store i1 %839, i1* %AF, !mcsema_real_eip !154
  %840 = trunc i32 %835 to i8, !mcsema_real_eip !154
  %841 = call i8 @llvm.ctpop.i8(i8 %840), !mcsema_real_eip !154
  %842 = trunc i8 %841 to i1, !mcsema_real_eip !154
  %843 = xor i1 %842, true, !mcsema_real_eip !154
  store i1 %843, i1* %PF, !mcsema_real_eip !154
  %844 = icmp eq i32 %835, 0, !mcsema_real_eip !154
  store i1 %844, i1* %ZF, !mcsema_real_eip !154
  %845 = lshr i32 %835, 31, !mcsema_real_eip !154
  %846 = trunc i32 %845 to i1, !mcsema_real_eip !154
  store i1 %846, i1* %SF, !mcsema_real_eip !154
  %847 = icmp ult i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  store i1 %847, i1* %CF, !mcsema_real_eip !154
  %848 = xor i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %849 = and i32 %848, %836, !mcsema_real_eip !154
  %850 = lshr i32 %849, 31, !mcsema_real_eip !154
  %851 = trunc i32 %850 to i1, !mcsema_real_eip !154
  store i1 %851, i1* %OF, !mcsema_real_eip !154
  %852 = zext i32 %835 to i64, !mcsema_real_eip !154
  store i64 %852, i64* %XAX, !mcsema_real_eip !154
  %853 = add i64 %RBP_val.204, -76, !mcsema_real_eip !155
  %854 = inttoptr i64 %853 to i64*, !mcsema_real_eip !155
  %EAX_val.209 = load i32, i32* %EAX.25, !mcsema_real_eip !155
  %855 = inttoptr i64 %853 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.209, i32* %855, !mcsema_real_eip !155
  %856 = load i1, i1* %ZF, !mcsema_real_eip !156
  br i1 %856, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !156

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !157

block_0x28f:                                      ; preds = %block_0x15d
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !158
  %857 = add i64 %RBP_val.210, -8, !mcsema_real_eip !158
  %858 = inttoptr i64 %857 to i64*, !mcsema_real_eip !158
  %859 = inttoptr i64 %857 to i32*, !mcsema_real_eip !158
  %860 = load i32, i32* %859, !mcsema_real_eip !158
  %861 = zext i32 %860 to i64, !mcsema_real_eip !158
  store i64 %861, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.25, !mcsema_real_eip !159
  %862 = add i32 74641, %EAX_val.212, !mcsema_real_eip !159
  %863 = xor i32 %862, %EAX_val.212, !mcsema_real_eip !159
  %864 = xor i32 %863, 74641, !mcsema_real_eip !159
  %865 = and i32 %864, 16, !mcsema_real_eip !159
  %866 = icmp ne i32 %865, 0, !mcsema_real_eip !159
  store i1 %866, i1* %AF, !mcsema_real_eip !159
  %867 = lshr i32 %862, 31, !mcsema_real_eip !159
  %868 = trunc i32 %867 to i1, !mcsema_real_eip !159
  store i1 %868, i1* %SF, !mcsema_real_eip !159
  %869 = icmp eq i32 %862, 0, !mcsema_real_eip !159
  store i1 %869, i1* %ZF, !mcsema_real_eip !159
  %870 = xor i32 %EAX_val.212, 74641, !mcsema_real_eip !159
  %871 = xor i32 %870, -1, !mcsema_real_eip !159
  %872 = and i32 %871, %863, !mcsema_real_eip !159
  %873 = lshr i32 %872, 31, !mcsema_real_eip !159
  %874 = and i32 %873, 1, !mcsema_real_eip !159
  %875 = trunc i32 %874 to i1, !mcsema_real_eip !159
  store i1 %875, i1* %OF, !mcsema_real_eip !159
  %876 = trunc i32 %862 to i8, !mcsema_real_eip !159
  %877 = call i8 @llvm.ctpop.i8(i8 %876), !mcsema_real_eip !159
  %878 = trunc i8 %877 to i1, !mcsema_real_eip !159
  %879 = xor i1 %878, true, !mcsema_real_eip !159
  store i1 %879, i1* %PF, !mcsema_real_eip !159
  %880 = icmp ult i32 %862, %EAX_val.212, !mcsema_real_eip !159
  store i1 %880, i1* %CF, !mcsema_real_eip !159
  %881 = zext i32 %862 to i64, !mcsema_real_eip !159
  store i64 %881, i64* %XAX, !mcsema_real_eip !159
  %EAX_val.215 = load i32, i32* %EAX.25, !mcsema_real_eip !160
  store i32 %EAX_val.215, i32* %859, !mcsema_real_eip !160
  br label %block_0x2c8, !mcsema_real_eip !161

block_0x173:                                      ; preds = %block_0x16e
  %RBP_val.216 = load i64, i64* %XBP, !mcsema_real_eip !162
  %882 = add i64 %RBP_val.216, -12, !mcsema_real_eip !162
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !162
  %884 = inttoptr i64 %882 to i32*, !mcsema_real_eip !162
  %885 = load i32, i32* %884, !mcsema_real_eip !162
  %886 = zext i32 %885 to i64, !mcsema_real_eip !162
  store i64 %886, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.25, !mcsema_real_eip !163
  %887 = sub i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %888 = xor i32 %887, %EAX_val.218, !mcsema_real_eip !163
  %889 = xor i32 %888, 74642, !mcsema_real_eip !163
  %890 = and i32 %889, 16, !mcsema_real_eip !163
  %891 = icmp ne i32 %890, 0, !mcsema_real_eip !163
  store i1 %891, i1* %AF, !mcsema_real_eip !163
  %892 = trunc i32 %887 to i8, !mcsema_real_eip !163
  %893 = call i8 @llvm.ctpop.i8(i8 %892), !mcsema_real_eip !163
  %894 = trunc i8 %893 to i1, !mcsema_real_eip !163
  %895 = xor i1 %894, true, !mcsema_real_eip !163
  store i1 %895, i1* %PF, !mcsema_real_eip !163
  %896 = icmp eq i32 %887, 0, !mcsema_real_eip !163
  store i1 %896, i1* %ZF, !mcsema_real_eip !163
  %897 = lshr i32 %887, 31, !mcsema_real_eip !163
  %898 = trunc i32 %897 to i1, !mcsema_real_eip !163
  store i1 %898, i1* %SF, !mcsema_real_eip !163
  %899 = icmp ult i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  store i1 %899, i1* %CF, !mcsema_real_eip !163
  %900 = xor i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %901 = and i32 %900, %888, !mcsema_real_eip !163
  %902 = lshr i32 %901, 31, !mcsema_real_eip !163
  %903 = trunc i32 %902 to i1, !mcsema_real_eip !163
  store i1 %903, i1* %OF, !mcsema_real_eip !163
  %904 = zext i32 %887 to i64, !mcsema_real_eip !163
  store i64 %904, i64* %XAX, !mcsema_real_eip !163
  %905 = add i64 %RBP_val.216, -80, !mcsema_real_eip !164
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !164
  %EAX_val.221 = load i32, i32* %EAX.25, !mcsema_real_eip !164
  %907 = inttoptr i64 %905 to i32*, !mcsema_real_eip !164
  store i32 %EAX_val.221, i32* %907, !mcsema_real_eip !164
  %908 = load i1, i1* %ZF, !mcsema_real_eip !165
  br i1 %908, label %block_0x29f, label %block_0x184, !mcsema_real_eip !165

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !166

block_0x29f:                                      ; preds = %block_0x173
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !167
  %909 = add i64 %RBP_val.222, -8, !mcsema_real_eip !167
  %910 = inttoptr i64 %909 to i64*, !mcsema_real_eip !167
  %911 = inttoptr i64 %909 to i32*, !mcsema_real_eip !167
  %912 = load i32, i32* %911, !mcsema_real_eip !167
  %913 = zext i32 %912 to i64, !mcsema_real_eip !167
  store i64 %913, i64* %XAX, !mcsema_real_eip !167
  %EAX_val.224 = load i32, i32* %EAX.25, !mcsema_real_eip !168
  %914 = add i32 74642, %EAX_val.224, !mcsema_real_eip !168
  %915 = xor i32 %914, %EAX_val.224, !mcsema_real_eip !168
  %916 = xor i32 %915, 74642, !mcsema_real_eip !168
  %917 = and i32 %916, 16, !mcsema_real_eip !168
  %918 = icmp ne i32 %917, 0, !mcsema_real_eip !168
  store i1 %918, i1* %AF, !mcsema_real_eip !168
  %919 = lshr i32 %914, 31, !mcsema_real_eip !168
  %920 = trunc i32 %919 to i1, !mcsema_real_eip !168
  store i1 %920, i1* %SF, !mcsema_real_eip !168
  %921 = icmp eq i32 %914, 0, !mcsema_real_eip !168
  store i1 %921, i1* %ZF, !mcsema_real_eip !168
  %922 = xor i32 %EAX_val.224, 74642, !mcsema_real_eip !168
  %923 = xor i32 %922, -1, !mcsema_real_eip !168
  %924 = and i32 %923, %915, !mcsema_real_eip !168
  %925 = lshr i32 %924, 31, !mcsema_real_eip !168
  %926 = and i32 %925, 1, !mcsema_real_eip !168
  %927 = trunc i32 %926 to i1, !mcsema_real_eip !168
  store i1 %927, i1* %OF, !mcsema_real_eip !168
  %928 = trunc i32 %914 to i8, !mcsema_real_eip !168
  %929 = call i8 @llvm.ctpop.i8(i8 %928), !mcsema_real_eip !168
  %930 = trunc i8 %929 to i1, !mcsema_real_eip !168
  %931 = xor i1 %930, true, !mcsema_real_eip !168
  store i1 %931, i1* %PF, !mcsema_real_eip !168
  %932 = icmp ult i32 %914, %EAX_val.224, !mcsema_real_eip !168
  store i1 %932, i1* %CF, !mcsema_real_eip !168
  %933 = zext i32 %914 to i64, !mcsema_real_eip !168
  store i64 %933, i64* %XAX, !mcsema_real_eip !168
  %EAX_val.227 = load i32, i32* %EAX.25, !mcsema_real_eip !169
  store i32 %EAX_val.227, i32* %911, !mcsema_real_eip !169
  br label %block_0x2c8, !mcsema_real_eip !170

block_0x189:                                      ; preds = %block_0x184
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !171
  %934 = add i64 %RBP_val.228, -12, !mcsema_real_eip !171
  %935 = inttoptr i64 %934 to i64*, !mcsema_real_eip !171
  %936 = inttoptr i64 %934 to i32*, !mcsema_real_eip !171
  %937 = load i32, i32* %936, !mcsema_real_eip !171
  %938 = zext i32 %937 to i64, !mcsema_real_eip !171
  store i64 %938, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.230 = load i32, i32* %EAX.25, !mcsema_real_eip !172
  %939 = sub i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %940 = xor i32 %939, %EAX_val.230, !mcsema_real_eip !172
  %941 = xor i32 %940, 74643, !mcsema_real_eip !172
  %942 = and i32 %941, 16, !mcsema_real_eip !172
  %943 = icmp ne i32 %942, 0, !mcsema_real_eip !172
  store i1 %943, i1* %AF, !mcsema_real_eip !172
  %944 = trunc i32 %939 to i8, !mcsema_real_eip !172
  %945 = call i8 @llvm.ctpop.i8(i8 %944), !mcsema_real_eip !172
  %946 = trunc i8 %945 to i1, !mcsema_real_eip !172
  %947 = xor i1 %946, true, !mcsema_real_eip !172
  store i1 %947, i1* %PF, !mcsema_real_eip !172
  %948 = icmp eq i32 %939, 0, !mcsema_real_eip !172
  store i1 %948, i1* %ZF, !mcsema_real_eip !172
  %949 = lshr i32 %939, 31, !mcsema_real_eip !172
  %950 = trunc i32 %949 to i1, !mcsema_real_eip !172
  store i1 %950, i1* %SF, !mcsema_real_eip !172
  %951 = icmp ult i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  store i1 %951, i1* %CF, !mcsema_real_eip !172
  %952 = xor i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %953 = and i32 %952, %940, !mcsema_real_eip !172
  %954 = lshr i32 %953, 31, !mcsema_real_eip !172
  %955 = trunc i32 %954 to i1, !mcsema_real_eip !172
  store i1 %955, i1* %OF, !mcsema_real_eip !172
  %956 = zext i32 %939 to i64, !mcsema_real_eip !172
  store i64 %956, i64* %XAX, !mcsema_real_eip !172
  %957 = add i64 %RBP_val.228, -84, !mcsema_real_eip !173
  %958 = inttoptr i64 %957 to i64*, !mcsema_real_eip !173
  %EAX_val.233 = load i32, i32* %EAX.25, !mcsema_real_eip !173
  %959 = inttoptr i64 %957 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.233, i32* %959, !mcsema_real_eip !173
  %960 = load i1, i1* %ZF, !mcsema_real_eip !174
  br i1 %960, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !174

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !175

block_0x2af:                                      ; preds = %block_0x189
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !176
  %961 = add i64 %RBP_val.234, -8, !mcsema_real_eip !176
  %962 = inttoptr i64 %961 to i64*, !mcsema_real_eip !176
  %963 = inttoptr i64 %961 to i32*, !mcsema_real_eip !176
  %964 = load i32, i32* %963, !mcsema_real_eip !176
  %965 = zext i32 %964 to i64, !mcsema_real_eip !176
  store i64 %965, i64* %XAX, !mcsema_real_eip !176
  %EAX_val.236 = load i32, i32* %EAX.25, !mcsema_real_eip !177
  %966 = add i32 74643, %EAX_val.236, !mcsema_real_eip !177
  %967 = xor i32 %966, %EAX_val.236, !mcsema_real_eip !177
  %968 = xor i32 %967, 74643, !mcsema_real_eip !177
  %969 = and i32 %968, 16, !mcsema_real_eip !177
  %970 = icmp ne i32 %969, 0, !mcsema_real_eip !177
  store i1 %970, i1* %AF, !mcsema_real_eip !177
  %971 = lshr i32 %966, 31, !mcsema_real_eip !177
  %972 = trunc i32 %971 to i1, !mcsema_real_eip !177
  store i1 %972, i1* %SF, !mcsema_real_eip !177
  %973 = icmp eq i32 %966, 0, !mcsema_real_eip !177
  store i1 %973, i1* %ZF, !mcsema_real_eip !177
  %974 = xor i32 %EAX_val.236, 74643, !mcsema_real_eip !177
  %975 = xor i32 %974, -1, !mcsema_real_eip !177
  %976 = and i32 %975, %967, !mcsema_real_eip !177
  %977 = lshr i32 %976, 31, !mcsema_real_eip !177
  %978 = and i32 %977, 1, !mcsema_real_eip !177
  %979 = trunc i32 %978 to i1, !mcsema_real_eip !177
  store i1 %979, i1* %OF, !mcsema_real_eip !177
  %980 = trunc i32 %966 to i8, !mcsema_real_eip !177
  %981 = call i8 @llvm.ctpop.i8(i8 %980), !mcsema_real_eip !177
  %982 = trunc i8 %981 to i1, !mcsema_real_eip !177
  %983 = xor i1 %982, true, !mcsema_real_eip !177
  store i1 %983, i1* %PF, !mcsema_real_eip !177
  %984 = icmp ult i32 %966, %EAX_val.236, !mcsema_real_eip !177
  store i1 %984, i1* %CF, !mcsema_real_eip !177
  %985 = zext i32 %966 to i64, !mcsema_real_eip !177
  store i64 %985, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.25, !mcsema_real_eip !178
  store i32 %EAX_val.239, i32* %963, !mcsema_real_eip !178
  br label %block_0x2c8, !mcsema_real_eip !179

block_0x2bf:                                      ; preds = %block_0x19a
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !180
  %986 = add i64 %RBP_val.240, -8, !mcsema_real_eip !180
  %987 = inttoptr i64 %986 to i64*, !mcsema_real_eip !180
  %988 = inttoptr i64 %986 to i32*, !mcsema_real_eip !180
  %989 = load i32, i32* %988, !mcsema_real_eip !180
  %990 = zext i32 %989 to i64, !mcsema_real_eip !180
  store i64 %990, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.242 = load i32, i32* %EAX.25, !mcsema_real_eip !181
  store i1 false, i1* %AF, !mcsema_real_eip !181
  %991 = lshr i32 %EAX_val.242, 31, !mcsema_real_eip !181
  %992 = trunc i32 %991 to i1, !mcsema_real_eip !181
  store i1 %992, i1* %SF, !mcsema_real_eip !181
  %993 = icmp eq i32 %EAX_val.242, 0, !mcsema_real_eip !181
  store i1 %993, i1* %ZF, !mcsema_real_eip !181
  %994 = xor i32 %EAX_val.242, -1, !mcsema_real_eip !181
  store i1 false, i1* %OF, !mcsema_real_eip !181
  %995 = trunc i32 %EAX_val.242 to i8, !mcsema_real_eip !181
  %996 = call i8 @llvm.ctpop.i8(i8 %995), !mcsema_real_eip !181
  %997 = trunc i8 %996 to i1, !mcsema_real_eip !181
  %998 = xor i1 %997, true, !mcsema_real_eip !181
  store i1 %998, i1* %PF, !mcsema_real_eip !181
  store i1 false, i1* %CF, !mcsema_real_eip !181
  %999 = zext i32 %EAX_val.242 to i64, !mcsema_real_eip !181
  store i64 %999, i64* %XAX, !mcsema_real_eip !181
  %EAX_val.245 = load i32, i32* %EAX.25, !mcsema_real_eip !182
  store i32 %EAX_val.245, i32* %988, !mcsema_real_eip !182
  br label %block_0x2c8
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @switches() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 28}
!11 = !{i64 415}
!12 = !{i64 418}
!13 = !{i64 421}
!14 = !{i64 424}
!15 = !{i64 712}
!16 = !{i64 715}
!17 = !{i64 716}
!18 = !{i64 33}
!19 = !{i64 36}
!20 = !{i64 39}
!21 = !{i64 42}
!22 = !{i64 48}
!23 = !{i64 429}
!24 = !{i64 432}
!25 = !{i64 435}
!26 = !{i64 438}
!27 = !{i64 53}
!28 = !{i64 56}
!29 = !{i64 59}
!30 = !{i64 62}
!31 = !{i64 68}
!32 = !{i64 443}
!33 = !{i64 446}
!34 = !{i64 449}
!35 = !{i64 452}
!36 = !{i64 73}
!37 = !{i64 76}
!38 = !{i64 79}
!39 = !{i64 82}
!40 = !{i64 88}
!41 = !{i64 457}
!42 = !{i64 460}
!43 = !{i64 463}
!44 = !{i64 466}
!45 = !{i64 93}
!46 = !{i64 96}
!47 = !{i64 99}
!48 = !{i64 102}
!49 = !{i64 108}
!50 = !{i64 471}
!51 = !{i64 474}
!52 = !{i64 477}
!53 = !{i64 480}
!54 = !{i64 113}
!55 = !{i64 116}
!56 = !{i64 119}
!57 = !{i64 122}
!58 = !{i64 128}
!59 = !{i64 485}
!60 = !{i64 488}
!61 = !{i64 491}
!62 = !{i64 494}
!63 = !{i64 133}
!64 = !{i64 136}
!65 = !{i64 139}
!66 = !{i64 142}
!67 = !{i64 148}
!68 = !{i64 499}
!69 = !{i64 502}
!70 = !{i64 505}
!71 = !{i64 508}
!72 = !{i64 153}
!73 = !{i64 156}
!74 = !{i64 159}
!75 = !{i64 162}
!76 = !{i64 168}
!77 = !{i64 513}
!78 = !{i64 516}
!79 = !{i64 519}
!80 = !{i64 522}
!81 = !{i64 173}
!82 = !{i64 176}
!83 = !{i64 181}
!84 = !{i64 184}
!85 = !{i64 190}
!86 = !{i64 527}
!87 = !{i64 530}
!88 = !{i64 535}
!89 = !{i64 538}
!90 = !{i64 195}
!91 = !{i64 198}
!92 = !{i64 203}
!93 = !{i64 206}
!94 = !{i64 212}
!95 = !{i64 543}
!96 = !{i64 546}
!97 = !{i64 551}
!98 = !{i64 554}
!99 = !{i64 217}
!100 = !{i64 220}
!101 = !{i64 225}
!102 = !{i64 228}
!103 = !{i64 234}
!104 = !{i64 559}
!105 = !{i64 562}
!106 = !{i64 567}
!107 = !{i64 570}
!108 = !{i64 239}
!109 = !{i64 242}
!110 = !{i64 247}
!111 = !{i64 250}
!112 = !{i64 256}
!113 = !{i64 575}
!114 = !{i64 578}
!115 = !{i64 583}
!116 = !{i64 586}
!117 = !{i64 261}
!118 = !{i64 264}
!119 = !{i64 269}
!120 = !{i64 272}
!121 = !{i64 278}
!122 = !{i64 591}
!123 = !{i64 594}
!124 = !{i64 599}
!125 = !{i64 602}
!126 = !{i64 283}
!127 = !{i64 286}
!128 = !{i64 291}
!129 = !{i64 294}
!130 = !{i64 300}
!131 = !{i64 607}
!132 = !{i64 610}
!133 = !{i64 615}
!134 = !{i64 618}
!135 = !{i64 305}
!136 = !{i64 308}
!137 = !{i64 313}
!138 = !{i64 316}
!139 = !{i64 322}
!140 = !{i64 623}
!141 = !{i64 626}
!142 = !{i64 631}
!143 = !{i64 634}
!144 = !{i64 327}
!145 = !{i64 330}
!146 = !{i64 335}
!147 = !{i64 338}
!148 = !{i64 344}
!149 = !{i64 639}
!150 = !{i64 642}
!151 = !{i64 647}
!152 = !{i64 650}
!153 = !{i64 349}
!154 = !{i64 352}
!155 = !{i64 357}
!156 = !{i64 360}
!157 = !{i64 366}
!158 = !{i64 655}
!159 = !{i64 658}
!160 = !{i64 663}
!161 = !{i64 666}
!162 = !{i64 371}
!163 = !{i64 374}
!164 = !{i64 379}
!165 = !{i64 382}
!166 = !{i64 388}
!167 = !{i64 671}
!168 = !{i64 674}
!169 = !{i64 679}
!170 = !{i64 682}
!171 = !{i64 393}
!172 = !{i64 396}
!173 = !{i64 401}
!174 = !{i64 404}
!175 = !{i64 410}
!176 = !{i64 687}
!177 = !{i64 690}
!178 = !{i64 695}
!179 = !{i64 698}
!180 = !{i64 703}
!181 = !{i64 706}
!182 = !{i64 709}
