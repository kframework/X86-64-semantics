; ModuleID = 'Output/test_2_1.clang.trans.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_40;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_40(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [80 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb8 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\004\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\00r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
define x86_64_sysvcc void @sub_40(%RegState*) #1 {
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
  br label %block_0x40, !mcsema_real_eip !2

block_0x40:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %5 = sub i64 %3, 40, !mcsema_real_eip !5
  %6 = xor i64 %5, %3, !mcsema_real_eip !5
  %7 = xor i64 %6, 40, !mcsema_real_eip !5
  %8 = and i64 %7, 16, !mcsema_real_eip !5
  %9 = icmp ne i64 %8, 0, !mcsema_real_eip !5
  store i1 %9, i1* %AF, !mcsema_real_eip !5
  %10 = trunc i64 %5 to i8, !mcsema_real_eip !5
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !5
  %12 = trunc i8 %11 to i1, !mcsema_real_eip !5
  %13 = xor i1 %12, true, !mcsema_real_eip !5
  store i1 %13, i1* %PF, !mcsema_real_eip !5
  %14 = icmp eq i64 %5, 0, !mcsema_real_eip !5
  store i1 %14, i1* %ZF, !mcsema_real_eip !5
  %15 = lshr i64 %5, 63, !mcsema_real_eip !5
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !5
  store i1 %16, i1* %SF, !mcsema_real_eip !5
  %17 = icmp ult i64 %3, 40, !mcsema_real_eip !5
  store i1 %17, i1* %CF, !mcsema_real_eip !5
  %18 = xor i64 %3, 40, !mcsema_real_eip !5
  %19 = and i64 %18, %6, !mcsema_real_eip !5
  %20 = lshr i64 %19, 63, !mcsema_real_eip !5
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !5
  store i1 %21, i1* %OF, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  store i64 100, i64* %XAX, !mcsema_real_eip !6
  store i64 200, i64* %XCX, !mcsema_real_eip !7
  store i64 300, i64* %XDX, !mcsema_real_eip !8
  store i64 400, i64* %R8, !mcsema_real_eip !9
  store i64 500, i64* %R9, !mcsema_real_eip !10
  store i64 600, i64* %R10, !mcsema_real_eip !11
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 20, i64* %XBX, !mcsema_real_eip !13
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !14
  %22 = add i64 %RBP_val.6, -12, !mcsema_real_eip !14
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !14
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %24, !mcsema_real_eip !14
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !15
  %25 = add i64 %RBP_val.7, -16, !mcsema_real_eip !15
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !15
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %27, !mcsema_real_eip !15
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !16
  %28 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !16
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %29, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %30 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %30, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %31 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %31, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %32 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %32, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %33 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %33, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %34 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %34, i64* %R9, !mcsema_real_eip !21
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !22
  %35 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !22
  %36 = inttoptr i64 %RSP_val.22 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %36, !mcsema_real_eip !22
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !23
  %37 = add i64 %RSP_val.23, 8, !mcsema_real_eip !23
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !23
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %39, !mcsema_real_eip !23
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !24
  %40 = add i64 %RBP_val.24, -28, !mcsema_real_eip !24
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !24
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %42, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !25
  %43 = add i64 %RBP_val.27, -32, !mcsema_real_eip !25
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !25
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %45, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %46 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %47, !mcsema_real_eip !26
  store i64 %46, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @foo(%RegState* %0), !mcsema_real_eip !26
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %48 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %49 = xor i64 %48, %RSP_val.31, !mcsema_real_eip !27
  %50 = xor i64 %49, 40, !mcsema_real_eip !27
  %51 = and i64 %50, 16, !mcsema_real_eip !27
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !27
  store i1 %52, i1* %AF, !mcsema_real_eip !27
  %53 = lshr i64 %48, 63, !mcsema_real_eip !27
  %54 = trunc i64 %53 to i1, !mcsema_real_eip !27
  store i1 %54, i1* %SF, !mcsema_real_eip !27
  %55 = icmp eq i64 %48, 0, !mcsema_real_eip !27
  store i1 %55, i1* %ZF, !mcsema_real_eip !27
  %56 = xor i64 %RSP_val.31, 40, !mcsema_real_eip !27
  %57 = xor i64 %56, -1, !mcsema_real_eip !27
  %58 = and i64 %57, %49, !mcsema_real_eip !27
  %59 = lshr i64 %58, 63, !mcsema_real_eip !27
  %60 = and i64 %59, 1, !mcsema_real_eip !27
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !27
  store i1 %61, i1* %OF, !mcsema_real_eip !27
  %62 = trunc i64 %48 to i8, !mcsema_real_eip !27
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !27
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !27
  %65 = xor i1 %64, true, !mcsema_real_eip !27
  store i1 %65, i1* %PF, !mcsema_real_eip !27
  %66 = icmp ult i64 %48, %RSP_val.31, !mcsema_real_eip !27
  store i1 %66, i1* %CF, !mcsema_real_eip !27
  store i64 %48, i64* %XSP, !mcsema_real_eip !27
  %67 = inttoptr i64 %48 to i64*, !mcsema_real_eip !28
  %68 = load i64, i64* %67, !mcsema_real_eip !28
  store i64 %68, i64* %XBX, !mcsema_real_eip !28
  %69 = add i64 %48, 8, !mcsema_real_eip !28
  store i64 %69, i64* %XSP, !mcsema_real_eip !28
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !29
  %71 = load i64, i64* %70, !mcsema_real_eip !29
  store i64 %71, i64* %XBP, !mcsema_real_eip !29
  %72 = add i64 %69, 8, !mcsema_real_eip !29
  store i64 %72, i64* %XSP, !mcsema_real_eip !29
  %73 = add i64 %72, 8, !mcsema_real_eip !30
  %74 = inttoptr i64 %72 to i64*, !mcsema_real_eip !30
  %75 = load i64, i64* %74, !mcsema_real_eip !30
  store i64 %75, i64* %XIP, !mcsema_real_eip !30
  store i64 %73, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @foo(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !31
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !31
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !31
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !31
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !31
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !31
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !31
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !31
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !31
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !31
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !31
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !31
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !31
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !31
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !31
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !31
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !31
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !31
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !31
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !31
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !31
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !31
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !31
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !31
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.35, i64* %2, !mcsema_real_eip !31
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  store i64 %1, i64* %XBP, !mcsema_real_eip !32
  %3 = add i64 %1, 24, !mcsema_real_eip !33
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !33
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !33
  %6 = load i32, i32* %5, !mcsema_real_eip !33
  %7 = zext i32 %6 to i64, !mcsema_real_eip !33
  store i64 %7, i64* %XAX, !mcsema_real_eip !33
  %8 = add i64 %1, 16, !mcsema_real_eip !34
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !34
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !34
  %11 = load i32, i32* %10, !mcsema_real_eip !34
  %12 = zext i32 %11 to i64, !mcsema_real_eip !34
  store i64 %12, i64* %R10, !mcsema_real_eip !34
  %13 = add i64 %1, -4, !mcsema_real_eip !35
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !35
  %EDI.41 = bitcast i64* %XDI to i32*, !mcsema_real_eip !35
  %EDI_val.42 = load i32, i32* %EDI.41, !mcsema_real_eip !35
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !35
  store i32 %EDI_val.42, i32* %15, !mcsema_real_eip !35
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !36
  %16 = add i64 %RBP_val.43, -8, !mcsema_real_eip !36
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !36
  %ESI.44 = bitcast i64* %XSI to i32*, !mcsema_real_eip !36
  %ESI_val.45 = load i32, i32* %ESI.44, !mcsema_real_eip !36
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !36
  store i32 %ESI_val.45, i32* %18, !mcsema_real_eip !36
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !37
  %19 = add i64 %RBP_val.46, -12, !mcsema_real_eip !37
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !37
  %EDX.47 = bitcast i64* %XDX to i32*, !mcsema_real_eip !37
  %EDX_val.48 = load i32, i32* %EDX.47, !mcsema_real_eip !37
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !37
  store i32 %EDX_val.48, i32* %21, !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !38
  %22 = add i64 %RBP_val.49, -16, !mcsema_real_eip !38
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !38
  %ECX.50 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.51 = load i32, i32* %ECX.50, !mcsema_real_eip !38
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !38
  store i32 %ECX_val.51, i32* %24, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !39
  %25 = add i64 %RBP_val.52, -20, !mcsema_real_eip !39
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !39
  %R8D.53 = bitcast i64* %R8 to i32*, !mcsema_real_eip !39
  %R8D_val.54 = load i32, i32* %R8D.53, !mcsema_real_eip !39
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !39
  store i32 %R8D_val.54, i32* %27, !mcsema_real_eip !39
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !40
  %28 = add i64 %RBP_val.55, -24, !mcsema_real_eip !40
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !40
  %R9D.56 = bitcast i64* %R9 to i32*, !mcsema_real_eip !40
  %R9D_val.57 = load i32, i32* %R9D.56, !mcsema_real_eip !40
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !40
  store i32 %R9D_val.57, i32* %30, !mcsema_real_eip !40
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !41
  %31 = add i64 %RBP_val.58, -28, !mcsema_real_eip !41
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !41
  %R10D.59 = bitcast i64* %R10 to i32*, !mcsema_real_eip !41
  %R10D_val.60 = load i32, i32* %R10D.59, !mcsema_real_eip !41
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !41
  store i32 %R10D_val.60, i32* %33, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %34 = add i64 %RBP_val.61, -32, !mcsema_real_eip !42
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !42
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %36, !mcsema_real_eip !42
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %37 = add i64 %RBP_val.64, -28, !mcsema_real_eip !43
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !43
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !43
  %40 = load i32, i32* %39, !mcsema_real_eip !43
  %41 = zext i32 %40 to i64, !mcsema_real_eip !43
  store i64 %41, i64* %XAX, !mcsema_real_eip !43
  %42 = add i64 %RBP_val.64, -32, !mcsema_real_eip !44
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !44
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !44
  %45 = load i32, i32* %44, !mcsema_real_eip !44
  %EAX_val.67 = load i32, i32* %EAX.62, !mcsema_real_eip !44
  %46 = add i32 %EAX_val.67, %45, !mcsema_real_eip !44
  %47 = xor i32 %46, %45, !mcsema_real_eip !44
  %48 = xor i32 %47, %EAX_val.67, !mcsema_real_eip !44
  %49 = and i32 %48, 16, !mcsema_real_eip !44
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !44
  store i1 %50, i1* %AF, !mcsema_real_eip !44
  %51 = lshr i32 %46, 31, !mcsema_real_eip !44
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !44
  store i1 %52, i1* %SF, !mcsema_real_eip !44
  %53 = icmp eq i32 %46, 0, !mcsema_real_eip !44
  store i1 %53, i1* %ZF, !mcsema_real_eip !44
  %54 = xor i32 %45, %EAX_val.67, !mcsema_real_eip !44
  %55 = xor i32 %54, -1, !mcsema_real_eip !44
  %56 = and i32 %55, %47, !mcsema_real_eip !44
  %57 = lshr i32 %56, 31, !mcsema_real_eip !44
  %58 = and i32 %57, 1, !mcsema_real_eip !44
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !44
  store i1 %59, i1* %OF, !mcsema_real_eip !44
  %60 = trunc i32 %46 to i8, !mcsema_real_eip !44
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !44
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !44
  %63 = xor i1 %62, true, !mcsema_real_eip !44
  store i1 %63, i1* %PF, !mcsema_real_eip !44
  %64 = icmp ult i32 %46, %45, !mcsema_real_eip !44
  store i1 %64, i1* %CF, !mcsema_real_eip !44
  %65 = zext i32 %46 to i64, !mcsema_real_eip !44
  store i64 %65, i64* %XAX, !mcsema_real_eip !44
  %66 = add i64 %RBP_val.64, -36, !mcsema_real_eip !45
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !45
  %EAX_val.70 = load i32, i32* %EAX.62, !mcsema_real_eip !45
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.70, i32* %68, !mcsema_real_eip !45
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !46
  %69 = add i64 %RBP_val.71, -36, !mcsema_real_eip !46
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !46
  %71 = inttoptr i64 %69 to i32*, !mcsema_real_eip !46
  %72 = load i32, i32* %71, !mcsema_real_eip !46
  %73 = zext i32 %72 to i64, !mcsema_real_eip !46
  store i64 %73, i64* %XAX, !mcsema_real_eip !46
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !47
  %74 = inttoptr i64 %RSP_val.72 to i64*, !mcsema_real_eip !47
  %75 = load i64, i64* %74, !mcsema_real_eip !47
  store i64 %75, i64* %XBP, !mcsema_real_eip !47
  %76 = add i64 %RSP_val.72, 8, !mcsema_real_eip !47
  store i64 %76, i64* %XSP, !mcsema_real_eip !47
  %77 = add i64 %76, 8, !mcsema_real_eip !48
  %78 = inttoptr i64 %76 to i64*, !mcsema_real_eip !48
  %79 = load i64, i64* %78, !mcsema_real_eip !48
  store i64 %79, i64* %XIP, !mcsema_real_eip !48
  store i64 %77, i64* %XSP, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @main() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64}
!3 = !{i64 65}
!4 = !{i64 68}
!5 = !{i64 69}
!6 = !{i64 73}
!7 = !{i64 78}
!8 = !{i64 83}
!9 = !{i64 88}
!10 = !{i64 94}
!11 = !{i64 100}
!12 = !{i64 106}
!13 = !{i64 112}
!14 = !{i64 117}
!15 = !{i64 124}
!16 = !{i64 127}
!17 = !{i64 131}
!18 = !{i64 133}
!19 = !{i64 135}
!20 = !{i64 138}
!21 = !{i64 141}
!22 = !{i64 144}
!23 = !{i64 151}
!24 = !{i64 159}
!25 = !{i64 162}
!26 = !{i64 166}
!27 = !{i64 171}
!28 = !{i64 175}
!29 = !{i64 176}
!30 = !{i64 177}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 7}
!35 = !{i64 11}
!36 = !{i64 14}
!37 = !{i64 17}
!38 = !{i64 20}
!39 = !{i64 23}
!40 = !{i64 27}
!41 = !{i64 31}
!42 = !{i64 35}
!43 = !{i64 38}
!44 = !{i64 41}
!45 = !{i64 44}
!46 = !{i64 47}
!47 = !{i64 50}
!48 = !{i64 51}
