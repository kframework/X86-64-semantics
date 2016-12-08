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
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
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
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
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
  %20 = add i64 %1, -4, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %22, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %25, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %27, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, -8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  %31 = load i32, i32* %30, !mcsema_real_eip !8
  %32 = sub i32 %31, 2, !mcsema_real_eip !8
  %33 = xor i32 %32, %31, !mcsema_real_eip !8
  %34 = xor i32 %33, 2, !mcsema_real_eip !8
  %35 = and i32 %34, 16, !mcsema_real_eip !8
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !8
  store i1 %36, i1* %AF, !mcsema_real_eip !8
  %37 = trunc i32 %32 to i8, !mcsema_real_eip !8
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !8
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !8
  %40 = xor i1 %39, true, !mcsema_real_eip !8
  store i1 %40, i1* %PF, !mcsema_real_eip !8
  %41 = icmp eq i32 %32, 0, !mcsema_real_eip !8
  store i1 %41, i1* %ZF, !mcsema_real_eip !8
  %42 = lshr i32 %32, 31, !mcsema_real_eip !8
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !8
  store i1 %43, i1* %SF, !mcsema_real_eip !8
  %44 = icmp ult i32 %31, 2, !mcsema_real_eip !8
  store i1 %44, i1* %CF, !mcsema_real_eip !8
  %45 = xor i32 %31, 2, !mcsema_real_eip !8
  %46 = and i32 %45, %33, !mcsema_real_eip !8
  %47 = lshr i32 %46, 31, !mcsema_real_eip !8
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !8
  store i1 %48, i1* %OF, !mcsema_real_eip !8
  %49 = icmp eq i1 %41, false, !mcsema_real_eip !9
  br i1 %49, label %block_0x95, label %block_0x80, !mcsema_real_eip !9

block_0x80:                                       ; preds = %block_0x60
  %50 = add i64 %RBP_val.10, -16, !mcsema_real_eip !10
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !10
  %52 = load i64, i64* %51, !mcsema_real_eip !10
  store i64 %52, i64* %XAX, !mcsema_real_eip !10
  %53 = add i64 %52, 8, !mcsema_real_eip !11
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !11
  %55 = load i64, i64* %54, !mcsema_real_eip !11
  store i64 %55, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %56 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %57, !mcsema_real_eip !12
  store i64 %56, i64* %XSP, !mcsema_real_eip !12
  %58 = call x86_64_sysvcc i64 @_atoi(i64 %55), !mcsema_real_eip !12
  store i64 %58, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %59 = add i64 %RBP_val.18, -24, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %61, !mcsema_real_eip !13
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %block_0x60
  store i64 20, i64* %XAX, !mcsema_real_eip !15
  %62 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %64, !mcsema_real_eip !16
  br label %block_0xa2, !mcsema_real_eip !17

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !18
  %65 = add i64 %RBP_val.21, -24, !mcsema_real_eip !18
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !18
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !18
  %68 = load i32, i32* %67, !mcsema_real_eip !18
  %69 = zext i32 %68 to i64, !mcsema_real_eip !18
  store i64 %69, i64* %XAX, !mcsema_real_eip !18
  %70 = add i64 %RBP_val.21, -20, !mcsema_real_eip !19
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !19
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !19
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.24, i32* %72, !mcsema_real_eip !19
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !20
  %73 = add i64 %RBP_val.25, -20, !mcsema_real_eip !20
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !20
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !20
  %76 = load i32, i32* %75, !mcsema_real_eip !20
  %77 = sext i32 %76 to i64, !mcsema_real_eip !20
  store i64 %77, i64* %XDI, !mcsema_real_eip !20
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !21
  %78 = sub i64 %RSP_val.26, 8, !mcsema_real_eip !21
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %79, !mcsema_real_eip !21
  store i64 %78, i64* %XSP, !mcsema_real_eip !21
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !21
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !22
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.27, i64* %XSI, !mcsema_real_eip !23
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.28, !mcsema_real_eip !24
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !25
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !25
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !25
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !25
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !25
  %80 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !25
  %81 = load i64, i64* %80, !mcsema_real_eip !25
  %82 = add i64 %RSP_val.35, 8, !mcsema_real_eip !25
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !25
  %84 = load i64, i64* %83, !mcsema_real_eip !25
  %85 = add i64 %82, 8, !mcsema_real_eip !25
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !25
  %87 = load i64, i64* %86, !mcsema_real_eip !25
  %88 = add i64 %85, 8, !mcsema_real_eip !25
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !25
  %90 = load i64, i64* %89, !mcsema_real_eip !25
  %91 = add i64 %88, 8, !mcsema_real_eip !25
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !25
  %93 = load i64, i64* %92, !mcsema_real_eip !25
  %94 = add i64 %91, 8, !mcsema_real_eip !25
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !25
  %96 = load i64, i64* %95, !mcsema_real_eip !25
  %97 = sub i64 %RSP_val.35, 8, !mcsema_real_eip !25
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !25
  store i64 -2415393069852865332, i64* %98, !mcsema_real_eip !25
  store i64 %97, i64* %XSP, !mcsema_real_eip !25
  %99 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.27, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93, i64 %96), !mcsema_real_eip !25
  store i64 %99, i64* %XAX, !mcsema_real_eip !25
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.38 = load i32, i32* %ECX.37, !mcsema_real_eip !26
  store i1 false, i1* %CF, !mcsema_real_eip !26
  store i1 false, i1* %OF, !mcsema_real_eip !26
  store i1 false, i1* %SF, !mcsema_real_eip !26
  store i1 true, i1* %ZF, !mcsema_real_eip !26
  store i1 true, i1* %PF, !mcsema_real_eip !26
  store i1 undef, i1* %AF, !mcsema_real_eip !26
  store i64 0, i64* %XCX, !mcsema_real_eip !26
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !27
  %100 = add i64 %RBP_val.41, -28, !mcsema_real_eip !27
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !27
  %EAX_val.43 = load i32, i32* %EAX.23, !mcsema_real_eip !27
  %102 = inttoptr i64 %100 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.43, i32* %102, !mcsema_real_eip !27
  %ECX_val.45 = load i32, i32* %ECX.37, !mcsema_real_eip !28
  %103 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !28
  store i64 %103, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !29
  %104 = add i64 32, %RSP_val.46, !mcsema_real_eip !29
  %105 = xor i64 %104, %RSP_val.46, !mcsema_real_eip !29
  %106 = xor i64 %105, 32, !mcsema_real_eip !29
  %107 = and i64 %106, 16, !mcsema_real_eip !29
  %108 = icmp ne i64 %107, 0, !mcsema_real_eip !29
  store i1 %108, i1* %AF, !mcsema_real_eip !29
  %109 = lshr i64 %104, 63, !mcsema_real_eip !29
  %110 = trunc i64 %109 to i1, !mcsema_real_eip !29
  store i1 %110, i1* %SF, !mcsema_real_eip !29
  %111 = icmp eq i64 %104, 0, !mcsema_real_eip !29
  store i1 %111, i1* %ZF, !mcsema_real_eip !29
  %112 = xor i64 %RSP_val.46, 32, !mcsema_real_eip !29
  %113 = xor i64 %112, -1, !mcsema_real_eip !29
  %114 = and i64 %113, %105, !mcsema_real_eip !29
  %115 = lshr i64 %114, 63, !mcsema_real_eip !29
  %116 = and i64 %115, 1, !mcsema_real_eip !29
  %117 = trunc i64 %116 to i1, !mcsema_real_eip !29
  store i1 %117, i1* %OF, !mcsema_real_eip !29
  %118 = trunc i64 %104 to i8, !mcsema_real_eip !29
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !29
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !29
  %121 = xor i1 %120, true, !mcsema_real_eip !29
  store i1 %121, i1* %PF, !mcsema_real_eip !29
  %122 = icmp ult i64 %104, %RSP_val.46, !mcsema_real_eip !29
  store i1 %122, i1* %CF, !mcsema_real_eip !29
  store i64 %104, i64* %XSP, !mcsema_real_eip !29
  %123 = inttoptr i64 %104 to i64*, !mcsema_real_eip !30
  %124 = load i64, i64* %123, !mcsema_real_eip !30
  store i64 %124, i64* %XBP, !mcsema_real_eip !30
  %125 = add i64 %104, 8, !mcsema_real_eip !30
  store i64 %125, i64* %XSP, !mcsema_real_eip !30
  %126 = add i64 %125, 8, !mcsema_real_eip !31
  %127 = inttoptr i64 %125 to i64*, !mcsema_real_eip !31
  %128 = load i64, i64* %127, !mcsema_real_eip !31
  store i64 %128, i64* %XIP, !mcsema_real_eip !31
  store i64 %126, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !32
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !32
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !32
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !32
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !32
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !32
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !32
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !32
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !32
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !32
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !32
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !32
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !32
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !32
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !32
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !32
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !32
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !32
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !32
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !32
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !32
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !32
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !32
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !32
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !32
  br label %block_0x0, !mcsema_real_eip !32

block_0x0:                                        ; preds = %entry
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !32
  %1 = sub i64 %RSP_val.50, 8, !mcsema_real_eip !32
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !32
  store i64 %RBP_val.49, i64* %2, !mcsema_real_eip !32
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  store i64 %1, i64* %XBP, !mcsema_real_eip !33
  %3 = sub i64 %1, 32, !mcsema_real_eip !34
  %4 = xor i64 %3, %1, !mcsema_real_eip !34
  %5 = xor i64 %4, 32, !mcsema_real_eip !34
  %6 = and i64 %5, 16, !mcsema_real_eip !34
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !34
  store i1 %7, i1* %AF, !mcsema_real_eip !34
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !34
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !34
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !34
  %11 = xor i1 %10, true, !mcsema_real_eip !34
  store i1 %11, i1* %PF, !mcsema_real_eip !34
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !34
  store i1 %12, i1* %ZF, !mcsema_real_eip !34
  %13 = lshr i64 %3, 63, !mcsema_real_eip !34
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !34
  store i1 %14, i1* %SF, !mcsema_real_eip !34
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !34
  store i1 %15, i1* %CF, !mcsema_real_eip !34
  %16 = xor i64 %1, 32, !mcsema_real_eip !34
  %17 = and i64 %16, %4, !mcsema_real_eip !34
  %18 = lshr i64 %17, 63, !mcsema_real_eip !34
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !34
  store i1 %19, i1* %OF, !mcsema_real_eip !34
  store i64 %3, i64* %XSP, !mcsema_real_eip !34
  %20 = add i64 %1, -16, !mcsema_real_eip !35
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !35
  %RDI_val.54 = load i64, i64* %XDI, !mcsema_real_eip !35
  store i64 %RDI_val.54, i64* %21, !mcsema_real_eip !35
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !36
  %22 = add i64 %RBP_val.55, -16, !mcsema_real_eip !36
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !36
  %24 = load i64, i64* %23, !mcsema_real_eip !36
  %25 = sub i64 %24, 2, !mcsema_real_eip !36
  %26 = xor i64 %25, %24, !mcsema_real_eip !36
  %27 = xor i64 %26, 2, !mcsema_real_eip !36
  %28 = and i64 %27, 16, !mcsema_real_eip !36
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !36
  store i1 %29, i1* %AF, !mcsema_real_eip !36
  %30 = trunc i64 %25 to i8, !mcsema_real_eip !36
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !36
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !36
  %33 = xor i1 %32, true, !mcsema_real_eip !36
  store i1 %33, i1* %PF, !mcsema_real_eip !36
  %34 = icmp eq i64 %25, 0, !mcsema_real_eip !36
  store i1 %34, i1* %ZF, !mcsema_real_eip !36
  %35 = lshr i64 %25, 63, !mcsema_real_eip !36
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !36
  store i1 %36, i1* %SF, !mcsema_real_eip !36
  %37 = icmp ult i64 %24, 2, !mcsema_real_eip !36
  store i1 %37, i1* %CF, !mcsema_real_eip !36
  %38 = xor i64 %24, 2, !mcsema_real_eip !36
  %39 = and i64 %38, %26, !mcsema_real_eip !36
  %40 = lshr i64 %39, 63, !mcsema_real_eip !36
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !36
  store i1 %41, i1* %OF, !mcsema_real_eip !36
  %42 = icmp eq i1 %37, false, !mcsema_real_eip !37
  br i1 %42, label %block_0x24, label %block_0x17, !mcsema_real_eip !37

block_0x17:                                       ; preds = %block_0x0
  %43 = add i64 %RBP_val.55, -8, !mcsema_real_eip !38
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !38
  store i64 1, i64* %44, !mcsema_real_eip !38
  br label %block_0x50, !mcsema_real_eip !39

block_0x24:                                       ; preds = %block_0x0
  %45 = load i64, i64* %23, !mcsema_real_eip !40
  store i64 %45, i64* %XAX, !mcsema_real_eip !40
  %46 = sub i64 %45, 2, !mcsema_real_eip !41
  %47 = xor i64 %46, %45, !mcsema_real_eip !41
  %48 = xor i64 %47, 2, !mcsema_real_eip !41
  %49 = and i64 %48, 16, !mcsema_real_eip !41
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !41
  store i1 %50, i1* %AF, !mcsema_real_eip !41
  %51 = trunc i64 %46 to i8, !mcsema_real_eip !41
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !41
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !41
  %54 = xor i1 %53, true, !mcsema_real_eip !41
  store i1 %54, i1* %PF, !mcsema_real_eip !41
  %55 = icmp eq i64 %46, 0, !mcsema_real_eip !41
  store i1 %55, i1* %ZF, !mcsema_real_eip !41
  %56 = lshr i64 %46, 63, !mcsema_real_eip !41
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !41
  store i1 %57, i1* %SF, !mcsema_real_eip !41
  %58 = icmp ult i64 %45, 2, !mcsema_real_eip !41
  store i1 %58, i1* %CF, !mcsema_real_eip !41
  %59 = xor i64 %45, 2, !mcsema_real_eip !41
  %60 = and i64 %59, %47, !mcsema_real_eip !41
  %61 = lshr i64 %60, 63, !mcsema_real_eip !41
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !41
  store i1 %62, i1* %OF, !mcsema_real_eip !41
  store i64 %46, i64* %XAX, !mcsema_real_eip !41
  store i64 %46, i64* %XDI, !mcsema_real_eip !42
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !43
  %63 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !43
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %64, !mcsema_real_eip !43
  store i64 %63, i64* %XSP, !mcsema_real_eip !43
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !43
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !44
  %65 = add i64 %RBP_val.60, -16, !mcsema_real_eip !44
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !44
  %67 = load i64, i64* %66, !mcsema_real_eip !44
  store i64 %67, i64* %XDI, !mcsema_real_eip !44
  %68 = sub i64 %67, 1, !mcsema_real_eip !45
  %69 = xor i64 %68, %67, !mcsema_real_eip !45
  %70 = xor i64 %69, 1, !mcsema_real_eip !45
  %71 = and i64 %70, 16, !mcsema_real_eip !45
  %72 = icmp ne i64 %71, 0, !mcsema_real_eip !45
  store i1 %72, i1* %AF, !mcsema_real_eip !45
  %73 = trunc i64 %68 to i8, !mcsema_real_eip !45
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !45
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !45
  %76 = xor i1 %75, true, !mcsema_real_eip !45
  store i1 %76, i1* %PF, !mcsema_real_eip !45
  %77 = icmp eq i64 %68, 0, !mcsema_real_eip !45
  store i1 %77, i1* %ZF, !mcsema_real_eip !45
  %78 = lshr i64 %68, 63, !mcsema_real_eip !45
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !45
  store i1 %79, i1* %SF, !mcsema_real_eip !45
  %80 = icmp ult i64 %67, 1, !mcsema_real_eip !45
  store i1 %80, i1* %CF, !mcsema_real_eip !45
  %81 = xor i64 %67, 1, !mcsema_real_eip !45
  %82 = and i64 %81, %69, !mcsema_real_eip !45
  %83 = lshr i64 %82, 63, !mcsema_real_eip !45
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !45
  store i1 %84, i1* %OF, !mcsema_real_eip !45
  store i64 %68, i64* %XDI, !mcsema_real_eip !45
  %85 = add i64 %RBP_val.60, -24, !mcsema_real_eip !46
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !46
  %RAX_val.63 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.63, i64* %86, !mcsema_real_eip !46
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !47
  %87 = sub i64 %RSP_val.64, 8, !mcsema_real_eip !47
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %88, !mcsema_real_eip !47
  store i64 %87, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !48
  %89 = add i64 %RBP_val.65, -24, !mcsema_real_eip !48
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !48
  %91 = load i64, i64* %90, !mcsema_real_eip !48
  store i64 %91, i64* %XDI, !mcsema_real_eip !48
  %RAX_val.67 = load i64, i64* %XAX, !mcsema_real_eip !49
  %92 = add i64 %RAX_val.67, %91, !mcsema_real_eip !49
  %93 = xor i64 %92, %91, !mcsema_real_eip !49
  %94 = xor i64 %93, %RAX_val.67, !mcsema_real_eip !49
  %95 = and i64 %94, 16, !mcsema_real_eip !49
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !49
  store i1 %96, i1* %AF, !mcsema_real_eip !49
  %97 = lshr i64 %92, 63, !mcsema_real_eip !49
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !49
  store i1 %98, i1* %SF, !mcsema_real_eip !49
  %99 = icmp eq i64 %92, 0, !mcsema_real_eip !49
  store i1 %99, i1* %ZF, !mcsema_real_eip !49
  %100 = xor i64 %91, %RAX_val.67, !mcsema_real_eip !49
  %101 = xor i64 %100, -1, !mcsema_real_eip !49
  %102 = and i64 %101, %93, !mcsema_real_eip !49
  %103 = lshr i64 %102, 63, !mcsema_real_eip !49
  %104 = and i64 %103, 1, !mcsema_real_eip !49
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !49
  store i1 %105, i1* %OF, !mcsema_real_eip !49
  %106 = trunc i64 %92 to i8, !mcsema_real_eip !49
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !49
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !49
  %109 = xor i1 %108, true, !mcsema_real_eip !49
  store i1 %109, i1* %PF, !mcsema_real_eip !49
  %110 = icmp ult i64 %92, %91, !mcsema_real_eip !49
  store i1 %110, i1* %CF, !mcsema_real_eip !49
  store i64 %92, i64* %XDI, !mcsema_real_eip !49
  %111 = add i64 %RBP_val.65, -8, !mcsema_real_eip !50
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !50
  store i64 %92, i64* %112, !mcsema_real_eip !50
  br label %block_0x50, !mcsema_real_eip !38

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !51
  %113 = add i64 %RBP_val.71, -8, !mcsema_real_eip !51
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !51
  %115 = load i64, i64* %114, !mcsema_real_eip !51
  store i64 %115, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %116 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %117 = xor i64 %116, %RSP_val.72, !mcsema_real_eip !52
  %118 = xor i64 %117, 32, !mcsema_real_eip !52
  %119 = and i64 %118, 16, !mcsema_real_eip !52
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !52
  store i1 %120, i1* %AF, !mcsema_real_eip !52
  %121 = lshr i64 %116, 63, !mcsema_real_eip !52
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !52
  store i1 %122, i1* %SF, !mcsema_real_eip !52
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !52
  store i1 %123, i1* %ZF, !mcsema_real_eip !52
  %124 = xor i64 %RSP_val.72, 32, !mcsema_real_eip !52
  %125 = xor i64 %124, -1, !mcsema_real_eip !52
  %126 = and i64 %125, %117, !mcsema_real_eip !52
  %127 = lshr i64 %126, 63, !mcsema_real_eip !52
  %128 = and i64 %127, 1, !mcsema_real_eip !52
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !52
  store i1 %129, i1* %OF, !mcsema_real_eip !52
  %130 = trunc i64 %116 to i8, !mcsema_real_eip !52
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !52
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !52
  %133 = xor i1 %132, true, !mcsema_real_eip !52
  store i1 %133, i1* %PF, !mcsema_real_eip !52
  %134 = icmp ult i64 %116, %RSP_val.72, !mcsema_real_eip !52
  store i1 %134, i1* %CF, !mcsema_real_eip !52
  store i64 %116, i64* %XSP, !mcsema_real_eip !52
  %135 = inttoptr i64 %116 to i64*, !mcsema_real_eip !53
  %136 = load i64, i64* %135, !mcsema_real_eip !53
  store i64 %136, i64* %XBP, !mcsema_real_eip !53
  %137 = add i64 %116, 8, !mcsema_real_eip !53
  store i64 %137, i64* %XSP, !mcsema_real_eip !53
  %138 = add i64 %137, 8, !mcsema_real_eip !54
  %139 = inttoptr i64 %137 to i64*, !mcsema_real_eip !54
  %140 = load i64, i64* %139, !mcsema_real_eip !54
  store i64 %140, i64* %XIP, !mcsema_real_eip !54
  store i64 %138, i64* %XSP, !mcsema_real_eip !54
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

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 111}
!7 = !{i64 114}
!8 = !{i64 118}
!9 = !{i64 122}
!10 = !{i64 128}
!11 = !{i64 132}
!12 = !{i64 136}
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 149}
!16 = !{i64 154}
!17 = !{i64 157}
!18 = !{i64 162}
!19 = !{i64 165}
!20 = !{i64 168}
!21 = !{i64 172}
!22 = !{i64 177}
!23 = !{i64 187}
!24 = !{i64 190}
!25 = !{i64 192}
!26 = !{i64 197}
!27 = !{i64 199}
!28 = !{i64 202}
!29 = !{i64 204}
!30 = !{i64 208}
!31 = !{i64 209}
!32 = !{i64 0}
!33 = !{i64 1}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{i64 12}
!37 = !{i64 17}
!38 = !{i64 23}
!39 = !{i64 31}
!40 = !{i64 36}
!41 = !{i64 40}
!42 = !{i64 44}
!43 = !{i64 47}
!44 = !{i64 52}
!45 = !{i64 56}
!46 = !{i64 60}
!47 = !{i64 64}
!48 = !{i64 69}
!49 = !{i64 73}
!50 = !{i64 76}
!51 = !{i64 80}
!52 = !{i64 84}
!53 = !{i64 88}
!54 = !{i64 89}
