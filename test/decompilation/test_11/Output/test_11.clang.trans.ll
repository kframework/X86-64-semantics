; ModuleID = 'Output/test_11.clang.trans.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc8 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
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
  %20 = add i64 %1, -16, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !6
  %24 = load i64, i64* %23, !mcsema_real_eip !6
  store i64 %24, i64* %XDI, !mcsema_real_eip !6
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %25 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %26, !mcsema_real_eip !7
  store i64 %25, i64* %XSP, !mcsema_real_eip !7
  %27 = call x86_64_sysvcc i64 @_strlen(i64 %24), !mcsema_real_eip !7
  store i64 %27, i64* %XAX, !mcsema_real_eip !7
  %28 = add i64 1, %27, !mcsema_real_eip !8
  %29 = xor i64 %28, %27, !mcsema_real_eip !8
  %30 = xor i64 %29, 1, !mcsema_real_eip !8
  %31 = and i64 %30, 16, !mcsema_real_eip !8
  %32 = icmp ne i64 %31, 0, !mcsema_real_eip !8
  store i1 %32, i1* %AF, !mcsema_real_eip !8
  %33 = lshr i64 %28, 63, !mcsema_real_eip !8
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !8
  store i1 %34, i1* %SF, !mcsema_real_eip !8
  %35 = icmp eq i64 %28, 0, !mcsema_real_eip !8
  store i1 %35, i1* %ZF, !mcsema_real_eip !8
  %36 = xor i64 %27, 1, !mcsema_real_eip !8
  %37 = xor i64 %36, -1, !mcsema_real_eip !8
  %38 = and i64 %37, %29, !mcsema_real_eip !8
  %39 = lshr i64 %38, 63, !mcsema_real_eip !8
  %40 = and i64 %39, 1, !mcsema_real_eip !8
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !8
  store i1 %41, i1* %OF, !mcsema_real_eip !8
  %42 = trunc i64 %28 to i8, !mcsema_real_eip !8
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !8
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !8
  %45 = xor i1 %44, true, !mcsema_real_eip !8
  store i1 %45, i1* %PF, !mcsema_real_eip !8
  %46 = icmp ult i64 %28, %27, !mcsema_real_eip !8
  store i1 %46, i1* %CF, !mcsema_real_eip !8
  store i64 %28, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %47 = add i64 %RBP_val.10, -24, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  store i64 %28, i64* %48, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %49 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !10
  %51 = load i64, i64* %50, !mcsema_real_eip !10
  store i64 %51, i64* %XDI, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %52 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %53, !mcsema_real_eip !11
  store i64 %52, i64* %XSP, !mcsema_real_eip !11
  %54 = call x86_64_sysvcc i64 @_malloc(i64 %51), !mcsema_real_eip !11
  store i64 %54, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %55 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !12
  store i64 %54, i64* %56, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %57 = add i64 %RBP_val.17, -32, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %59 = load i64, i64* %58, !mcsema_real_eip !13
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %60 = trunc i64 %59 to i8, !mcsema_real_eip !13
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !13
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !13
  %63 = xor i1 %62, true, !mcsema_real_eip !13
  store i1 %63, i1* %PF, !mcsema_real_eip !13
  %64 = icmp eq i64 %59, 0, !mcsema_real_eip !13
  store i1 %64, i1* %ZF, !mcsema_real_eip !13
  %65 = lshr i64 %59, 63, !mcsema_real_eip !13
  %66 = trunc i64 %65 to i1, !mcsema_real_eip !13
  store i1 %66, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  br i1 %64, label %block_0xb6, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %block_0x0
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
  store i1 false, i1* %CF, !mcsema_real_eip !15
  store i1 false, i1* %OF, !mcsema_real_eip !15
  store i1 false, i1* %SF, !mcsema_real_eip !15
  store i1 true, i1* %ZF, !mcsema_real_eip !15
  store i1 true, i1* %PF, !mcsema_real_eip !15
  store i1 undef, i1* %AF, !mcsema_real_eip !15
  store i64 0, i64* %XSI, !mcsema_real_eip !15
  %67 = add i64 %RBP_val.17, -16, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !16
  %69 = load i64, i64* %68, !mcsema_real_eip !16
  store i64 %69, i64* %XAX, !mcsema_real_eip !16
  %70 = add i64 %RBP_val.17, -40, !mcsema_real_eip !17
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !17
  store i64 %69, i64* %71, !mcsema_real_eip !17
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !18
  %72 = add i64 %RBP_val.26, -32, !mcsema_real_eip !18
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !18
  %74 = load i64, i64* %73, !mcsema_real_eip !18
  store i64 %74, i64* %XAX, !mcsema_real_eip !18
  %75 = add i64 %RBP_val.26, -48, !mcsema_real_eip !19
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !19
  store i64 %74, i64* %76, !mcsema_real_eip !19
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !20
  %77 = add i64 %RBP_val.29, -32, !mcsema_real_eip !20
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !20
  %79 = load i64, i64* %78, !mcsema_real_eip !20
  store i64 %79, i64* %XDI, !mcsema_real_eip !20
  %80 = add i64 %RBP_val.29, -24, !mcsema_real_eip !21
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !21
  %82 = load i64, i64* %81, !mcsema_real_eip !21
  store i64 %82, i64* %XDX, !mcsema_real_eip !21
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !22
  %83 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !22
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %84, !mcsema_real_eip !22
  store i64 %83, i64* %XSP, !mcsema_real_eip !22
  %85 = call x86_64_sysvcc i64 @_memset(i64 %79, i64 %RSI_val.32, i64 %82), !mcsema_real_eip !22
  store i64 %85, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0xb6:                                       ; preds = %block_0x0
  %86 = add i64 %RBP_val.17, -8, !mcsema_real_eip !24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !24
  store i64 0, i64* %87, !mcsema_real_eip !24
  br label %block_0xbe, !mcsema_real_eip !15

block_0xbe:                                       ; preds = %block_0xa9, %block_0xb6
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %88 = add i64 %RBP_val.35, -8, !mcsema_real_eip !23
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !23
  %90 = load i64, i64* %89, !mcsema_real_eip !23
  store i64 %90, i64* %XAX, !mcsema_real_eip !23
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %91 = add i64 48, %RSP_val.36, !mcsema_real_eip !25
  %92 = xor i64 %91, %RSP_val.36, !mcsema_real_eip !25
  %93 = xor i64 %92, 48, !mcsema_real_eip !25
  %94 = and i64 %93, 16, !mcsema_real_eip !25
  %95 = icmp ne i64 %94, 0, !mcsema_real_eip !25
  store i1 %95, i1* %AF, !mcsema_real_eip !25
  %96 = lshr i64 %91, 63, !mcsema_real_eip !25
  %97 = trunc i64 %96 to i1, !mcsema_real_eip !25
  store i1 %97, i1* %SF, !mcsema_real_eip !25
  %98 = icmp eq i64 %91, 0, !mcsema_real_eip !25
  store i1 %98, i1* %ZF, !mcsema_real_eip !25
  %99 = xor i64 %RSP_val.36, 48, !mcsema_real_eip !25
  %100 = xor i64 %99, -1, !mcsema_real_eip !25
  %101 = and i64 %100, %92, !mcsema_real_eip !25
  %102 = lshr i64 %101, 63, !mcsema_real_eip !25
  %103 = and i64 %102, 1, !mcsema_real_eip !25
  %104 = trunc i64 %103 to i1, !mcsema_real_eip !25
  store i1 %104, i1* %OF, !mcsema_real_eip !25
  %105 = trunc i64 %91 to i8, !mcsema_real_eip !25
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !25
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !25
  %108 = xor i1 %107, true, !mcsema_real_eip !25
  store i1 %108, i1* %PF, !mcsema_real_eip !25
  %109 = icmp ult i64 %91, %RSP_val.36, !mcsema_real_eip !25
  store i1 %109, i1* %CF, !mcsema_real_eip !25
  store i64 %91, i64* %XSP, !mcsema_real_eip !25
  %110 = inttoptr i64 %91 to i64*, !mcsema_real_eip !26
  %111 = load i64, i64* %110, !mcsema_real_eip !26
  store i64 %111, i64* %XBP, !mcsema_real_eip !26
  %112 = add i64 %91, 8, !mcsema_real_eip !26
  store i64 %112, i64* %XSP, !mcsema_real_eip !26
  %113 = add i64 %112, 8, !mcsema_real_eip !27
  %114 = inttoptr i64 %112 to i64*, !mcsema_real_eip !27
  %115 = load i64, i64* %114, !mcsema_real_eip !27
  store i64 %115, i64* %XIP, !mcsema_real_eip !27
  store i64 %113, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !28
  %116 = add i64 %RBP_val.39, -40, !mcsema_real_eip !28
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !28
  %118 = load i64, i64* %117, !mcsema_real_eip !28
  store i64 %118, i64* %XAX, !mcsema_real_eip !28
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !29
  %120 = inttoptr i64 %118 to i8*, !mcsema_real_eip !29
  %121 = load i8, i8* %120, !mcsema_real_eip !29
  %122 = sext i8 %121 to i32, !mcsema_real_eip !29
  %123 = zext i32 %122 to i64, !mcsema_real_eip !29
  store i64 %123, i64* %XCX, !mcsema_real_eip !29
  %ECX.41 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.42 = load i32, i32* %ECX.41, !mcsema_real_eip !30
  store i1 false, i1* %AF, !mcsema_real_eip !30
  %124 = trunc i32 %ECX_val.42 to i8, !mcsema_real_eip !30
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !30
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !30
  %127 = xor i1 %126, true, !mcsema_real_eip !30
  store i1 %127, i1* %PF, !mcsema_real_eip !30
  %128 = icmp eq i32 %ECX_val.42, 0, !mcsema_real_eip !30
  store i1 %128, i1* %ZF, !mcsema_real_eip !30
  %129 = lshr i32 %ECX_val.42, 31, !mcsema_real_eip !30
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !30
  store i1 %130, i1* %SF, !mcsema_real_eip !30
  store i1 false, i1* %CF, !mcsema_real_eip !30
  store i1 false, i1* %OF, !mcsema_real_eip !30
  br i1 %128, label %block_0xa9, label %block_0x64, !mcsema_real_eip !31

block_0x64:                                       ; preds = %block_0x54
  %131 = load i64, i64* %117, !mcsema_real_eip !32
  store i64 %131, i64* %XAX, !mcsema_real_eip !32
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !33
  %133 = inttoptr i64 %131 to i8*, !mcsema_real_eip !33
  %134 = load i8, i8* %133, !mcsema_real_eip !33
  %135 = sext i8 %134 to i32, !mcsema_real_eip !33
  %136 = zext i32 %135 to i64, !mcsema_real_eip !33
  store i64 %136, i64* %XCX, !mcsema_real_eip !33
  %ECX_val.49 = load i32, i32* %ECX.41, !mcsema_real_eip !34
  %137 = sub i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %138 = xor i32 %137, %ECX_val.49, !mcsema_real_eip !34
  %139 = xor i32 %138, 47, !mcsema_real_eip !34
  %140 = and i32 %139, 16, !mcsema_real_eip !34
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !34
  store i1 %141, i1* %AF, !mcsema_real_eip !34
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !34
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !34
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !34
  %145 = xor i1 %144, true, !mcsema_real_eip !34
  store i1 %145, i1* %PF, !mcsema_real_eip !34
  %146 = icmp eq i32 %137, 0, !mcsema_real_eip !34
  store i1 %146, i1* %ZF, !mcsema_real_eip !34
  %147 = lshr i32 %137, 31, !mcsema_real_eip !34
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !34
  store i1 %148, i1* %SF, !mcsema_real_eip !34
  %149 = icmp ult i32 %ECX_val.49, 47, !mcsema_real_eip !34
  store i1 %149, i1* %CF, !mcsema_real_eip !34
  %150 = xor i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %151 = and i32 %150, %138, !mcsema_real_eip !34
  %152 = lshr i32 %151, 31, !mcsema_real_eip !34
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !34
  store i1 %153, i1* %OF, !mcsema_real_eip !34
  %154 = icmp eq i1 %146, false, !mcsema_real_eip !35
  br i1 %154, label %block_0x80, label %block_0x74, !mcsema_real_eip !35

block_0xa9:                                       ; preds = %block_0x54
  %155 = add i64 %RBP_val.39, -32, !mcsema_real_eip !36
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !36
  %157 = load i64, i64* %156, !mcsema_real_eip !36
  store i64 %157, i64* %XAX, !mcsema_real_eip !36
  %158 = add i64 %RBP_val.39, -8, !mcsema_real_eip !37
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !37
  store i64 %157, i64* %159, !mcsema_real_eip !37
  br label %block_0xbe, !mcsema_real_eip !38

block_0x74:                                       ; preds = %block_0x64
  %160 = add i64 %RBP_val.39, -48, !mcsema_real_eip !39
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !39
  %162 = load i64, i64* %161, !mcsema_real_eip !39
  store i64 %162, i64* %XAX, !mcsema_real_eip !39
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !40
  %164 = inttoptr i64 %162 to i8*, !mcsema_real_eip !40
  store i8 92, i8* %164, !mcsema_real_eip !40
  br label %block_0x8c, !mcsema_real_eip !41

block_0x80:                                       ; preds = %block_0x64
  %165 = load i64, i64* %117, !mcsema_real_eip !42
  store i64 %165, i64* %XAX, !mcsema_real_eip !42
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !43
  %167 = inttoptr i64 %165 to i8*, !mcsema_real_eip !43
  %168 = load i8, i8* %167, !mcsema_real_eip !43
  %CL.52 = bitcast i64* %XCX to i8*, !mcsema_real_eip !43
  store i8 %168, i8* %CL.52, !mcsema_real_eip !43
  %169 = add i64 %RBP_val.39, -48, !mcsema_real_eip !44
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !44
  %171 = load i64, i64* %170, !mcsema_real_eip !44
  store i64 %171, i64* %XAX, !mcsema_real_eip !44
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !45
  %173 = inttoptr i64 %171 to i8*, !mcsema_real_eip !45
  store i8 %168, i8* %173, !mcsema_real_eip !45
  br label %block_0x8c, !mcsema_real_eip !39

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !46
  %174 = add i64 %RBP_val.59, -40, !mcsema_real_eip !46
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !46
  %176 = load i64, i64* %175, !mcsema_real_eip !46
  store i64 %176, i64* %XAX, !mcsema_real_eip !46
  %177 = add i64 1, %176, !mcsema_real_eip !47
  %178 = xor i64 %177, %176, !mcsema_real_eip !47
  %179 = xor i64 %178, 1, !mcsema_real_eip !47
  %180 = and i64 %179, 16, !mcsema_real_eip !47
  %181 = icmp ne i64 %180, 0, !mcsema_real_eip !47
  store i1 %181, i1* %AF, !mcsema_real_eip !47
  %182 = lshr i64 %177, 63, !mcsema_real_eip !47
  %183 = trunc i64 %182 to i1, !mcsema_real_eip !47
  store i1 %183, i1* %SF, !mcsema_real_eip !47
  %184 = icmp eq i64 %177, 0, !mcsema_real_eip !47
  store i1 %184, i1* %ZF, !mcsema_real_eip !47
  %185 = xor i64 %176, 1, !mcsema_real_eip !47
  %186 = xor i64 %185, -1, !mcsema_real_eip !47
  %187 = and i64 %186, %178, !mcsema_real_eip !47
  %188 = lshr i64 %187, 63, !mcsema_real_eip !47
  %189 = and i64 %188, 1, !mcsema_real_eip !47
  %190 = trunc i64 %189 to i1, !mcsema_real_eip !47
  store i1 %190, i1* %OF, !mcsema_real_eip !47
  %191 = trunc i64 %177 to i8, !mcsema_real_eip !47
  %192 = call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !47
  %193 = trunc i8 %192 to i1, !mcsema_real_eip !47
  %194 = xor i1 %193, true, !mcsema_real_eip !47
  store i1 %194, i1* %PF, !mcsema_real_eip !47
  %195 = icmp ult i64 %177, %176, !mcsema_real_eip !47
  store i1 %195, i1* %CF, !mcsema_real_eip !47
  store i64 %177, i64* %XAX, !mcsema_real_eip !47
  store i64 %177, i64* %175, !mcsema_real_eip !48
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %196 = add i64 %RBP_val.63, -48, !mcsema_real_eip !49
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !49
  %198 = load i64, i64* %197, !mcsema_real_eip !49
  store i64 %198, i64* %XAX, !mcsema_real_eip !49
  %199 = add i64 1, %198, !mcsema_real_eip !50
  %200 = xor i64 %199, %198, !mcsema_real_eip !50
  %201 = xor i64 %200, 1, !mcsema_real_eip !50
  %202 = and i64 %201, 16, !mcsema_real_eip !50
  %203 = icmp ne i64 %202, 0, !mcsema_real_eip !50
  store i1 %203, i1* %AF, !mcsema_real_eip !50
  %204 = lshr i64 %199, 63, !mcsema_real_eip !50
  %205 = trunc i64 %204 to i1, !mcsema_real_eip !50
  store i1 %205, i1* %SF, !mcsema_real_eip !50
  %206 = icmp eq i64 %199, 0, !mcsema_real_eip !50
  store i1 %206, i1* %ZF, !mcsema_real_eip !50
  %207 = xor i64 %198, 1, !mcsema_real_eip !50
  %208 = xor i64 %207, -1, !mcsema_real_eip !50
  %209 = and i64 %208, %200, !mcsema_real_eip !50
  %210 = lshr i64 %209, 63, !mcsema_real_eip !50
  %211 = and i64 %210, 1, !mcsema_real_eip !50
  %212 = trunc i64 %211 to i1, !mcsema_real_eip !50
  store i1 %212, i1* %OF, !mcsema_real_eip !50
  %213 = trunc i64 %199 to i8, !mcsema_real_eip !50
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !50
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !50
  %216 = xor i1 %215, true, !mcsema_real_eip !50
  store i1 %216, i1* %PF, !mcsema_real_eip !50
  %217 = icmp ult i64 %199, %198, !mcsema_real_eip !50
  store i1 %217, i1* %CF, !mcsema_real_eip !50
  store i64 %199, i64* %XAX, !mcsema_real_eip !50
  store i64 %199, i64* %197, !mcsema_real_eip !51
  br label %block_0x54, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @doTrans() #2

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
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 29}
!11 = !{i64 33}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 47}
!15 = !{i64 53}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 190}
!24 = !{i64 182}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 199}
!28 = !{i64 84}
!29 = !{i64 88}
!30 = !{i64 91}
!31 = !{i64 94}
!32 = !{i64 100}
!33 = !{i64 104}
!34 = !{i64 107}
!35 = !{i64 110}
!36 = !{i64 169}
!37 = !{i64 173}
!38 = !{i64 177}
!39 = !{i64 116}
!40 = !{i64 120}
!41 = !{i64 123}
!42 = !{i64 128}
!43 = !{i64 132}
!44 = !{i64 134}
!45 = !{i64 138}
!46 = !{i64 140}
!47 = !{i64 144}
!48 = !{i64 148}
!49 = !{i64 152}
!50 = !{i64 156}
!51 = !{i64 160}
!52 = !{i64 164}
