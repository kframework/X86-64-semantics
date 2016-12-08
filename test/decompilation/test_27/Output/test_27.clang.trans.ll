; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_0x218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
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
  br label %block_0x100, !mcsema_real_eip !2

block_0x100:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 128, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 128, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 128, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 128, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 12, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %20 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %20, i64* %XDI, !mcsema_real_eip !6
  %21 = add i64 %1, -4, !mcsema_real_eip !7
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !7
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %23, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %24 = add i64 %RBP_val.7, -16, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !8
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %26, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !9
  %27 = add i64 %RBP_val.8, -12, !mcsema_real_eip !9
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !9
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %29, !mcsema_real_eip !9
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !10
  %30 = add i64 %RBP_val.9, -8, !mcsema_real_eip !10
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !10
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %32, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !11
  %33 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !11
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %34, !mcsema_real_eip !11
  store i64 %33, i64* %XSP, !mcsema_real_eip !11
  %35 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10), !mcsema_real_eip !11
  store i64 %35, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !12
  %36 = add i64 %RBP_val.12, -16, !mcsema_real_eip !12
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !12
  store i64 %36, i64* %XDI, !mcsema_real_eip !12
  store i64 1, i64* %R8, !mcsema_real_eip !13
  store i64 2, i64* %R9, !mcsema_real_eip !14
  store i64 3, i64* %XCX, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.12, -24, !mcsema_real_eip !16
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !16
  store i64 %35, i64* %39, !mcsema_real_eip !16
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !17
  %40 = add i64 %RBP_val.15, -24, !mcsema_real_eip !17
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !17
  %42 = load i64, i64* %41, !mcsema_real_eip !17
  store i64 %42, i64* %XAX, !mcsema_real_eip !17
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !18
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !18
  store i32 5, i32* %44, !mcsema_real_eip !18
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !19
  %45 = add i64 %RBP_val.17, -24, !mcsema_real_eip !19
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !19
  %47 = load i64, i64* %46, !mcsema_real_eip !19
  store i64 %47, i64* %XAX, !mcsema_real_eip !19
  %48 = add i64 %47, 4, !mcsema_real_eip !20
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !20
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %50, !mcsema_real_eip !20
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !21
  %51 = add i64 %RBP_val.19, -24, !mcsema_real_eip !21
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !21
  %53 = load i64, i64* %52, !mcsema_real_eip !21
  store i64 %53, i64* %XAX, !mcsema_real_eip !21
  %54 = add i64 %53, 8, !mcsema_real_eip !22
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !22
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !22
  store i32 5, i32* %56, !mcsema_real_eip !22
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !23
  %57 = add i64 %RBP_val.21, -24, !mcsema_real_eip !23
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !23
  %59 = load i64, i64* %58, !mcsema_real_eip !23
  store i64 %59, i64* %XAX, !mcsema_real_eip !23
  %60 = load i64, i64* %58, !mcsema_real_eip !24
  store i64 %60, i64* %XDX, !mcsema_real_eip !24
  %61 = add i64 %RBP_val.21, -16, !mcsema_real_eip !25
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !25
  %63 = load i64, i64* %62, !mcsema_real_eip !25
  store i64 %63, i64* %XSI, !mcsema_real_eip !25
  %64 = add i64 %RBP_val.21, -48, !mcsema_real_eip !26
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !26
  store i64 %63, i64* %65, !mcsema_real_eip !26
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !27
  %66 = add i64 %RBP_val.26, -8, !mcsema_real_eip !27
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !27
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !27
  %69 = load i32, i32* %68, !mcsema_real_eip !27
  %70 = zext i32 %69 to i64, !mcsema_real_eip !27
  store i64 %70, i64* %R10, !mcsema_real_eip !27
  %71 = add i64 %RBP_val.26, -40, !mcsema_real_eip !28
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !28
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !28
  %R10D_val.29 = load i32, i32* %R10D.28, !mcsema_real_eip !28
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !28
  store i32 %R10D_val.29, i32* %73, !mcsema_real_eip !28
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !29
  %74 = add i64 %RBP_val.30, -48, !mcsema_real_eip !29
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !29
  %76 = load i64, i64* %75, !mcsema_real_eip !29
  store i64 %76, i64* %XSI, !mcsema_real_eip !29
  %77 = add i64 %RBP_val.30, -40, !mcsema_real_eip !30
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !30
  %79 = inttoptr i64 %77 to i32*, !mcsema_real_eip !30
  %80 = load i32, i32* %79, !mcsema_real_eip !30
  %81 = zext i32 %80 to i64, !mcsema_real_eip !30
  store i64 %81, i64* %R10, !mcsema_real_eip !30
  %82 = add i64 %RBP_val.30, -64, !mcsema_real_eip !31
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !31
  %RDI_val.33 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.33, i64* %83, !mcsema_real_eip !31
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !32
  store i64 %RSI_val.34, i64* %XDI, !mcsema_real_eip !32
  %R10D_val.36 = load i32, i32* %R10D.28, !mcsema_real_eip !33
  %84 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !33
  store i64 %84, i64* %XSI, !mcsema_real_eip !33
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !34
  %85 = add i64 %RBP_val.37, -64, !mcsema_real_eip !34
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !34
  %87 = load i64, i64* %86, !mcsema_real_eip !34
  store i64 %87, i64* %R11, !mcsema_real_eip !34
  %88 = add i64 %RBP_val.37, -72, !mcsema_real_eip !35
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !35
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !35
  store i64 %RDX_val.39, i64* %89, !mcsema_real_eip !35
  %R11_val.40 = load i64, i64* %R11, !mcsema_real_eip !36
  store i64 %R11_val.40, i64* %XDX, !mcsema_real_eip !36
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !37
  %90 = add i64 %RBP_val.41, -76, !mcsema_real_eip !37
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !37
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !37
  %92 = inttoptr i64 %90 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.43, i32* %92, !mcsema_real_eip !37
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !38
  store i64 %RAX_val.44, i64* %XCX, !mcsema_real_eip !38
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !39
  %93 = inttoptr i64 %RSP_val.45 to i64*, !mcsema_real_eip !39
  %94 = inttoptr i64 %RSP_val.45 to i32*, !mcsema_real_eip !39
  store i32 3, i32* %94, !mcsema_real_eip !39
  %R11_val.46 = load i64, i64* %R11, !mcsema_real_eip !40
  %95 = inttoptr i64 %R11_val.46 to i64*, !mcsema_real_eip !40
  %96 = load i64, i64* %95, !mcsema_real_eip !40
  store i64 %96, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !41
  %97 = add i64 %RSP_val.47, 8, !mcsema_real_eip !41
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !41
  store i64 %96, i64* %98, !mcsema_real_eip !41
  %R11_val.49 = load i64, i64* %R11, !mcsema_real_eip !42
  %99 = add i64 %R11_val.49, 8, !mcsema_real_eip !42
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !42
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !42
  %102 = load i32, i32* %101, !mcsema_real_eip !42
  %103 = zext i32 %102 to i64, !mcsema_real_eip !42
  store i64 %103, i64* %R10, !mcsema_real_eip !42
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !43
  %104 = add i64 %RSP_val.50, 16, !mcsema_real_eip !43
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !43
  %R10D_val.52 = load i32, i32* %R10D.28, !mcsema_real_eip !43
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.52, i32* %106, !mcsema_real_eip !43
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !44
  %107 = add i64 %RSP_val.53, 24, !mcsema_real_eip !44
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !44
  %R11_val.54 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %R11_val.54, i64* %108, !mcsema_real_eip !44
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !45
  %109 = add i64 %RBP_val.55, -72, !mcsema_real_eip !45
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !45
  %111 = load i64, i64* %110, !mcsema_real_eip !45
  store i64 %111, i64* %XAX, !mcsema_real_eip !45
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !46
  %112 = add i64 %RSP_val.56, 32, !mcsema_real_eip !46
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !46
  store i64 %111, i64* %113, !mcsema_real_eip !46
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !47
  %114 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !47
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %115, !mcsema_real_eip !47
  store i64 %114, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !48
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !49
  %116 = add i64 %RBP_val.59, -32, !mcsema_real_eip !49
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !49
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !49
  store i64 %RAX_val.60, i64* %117, !mcsema_real_eip !49
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !50
  %118 = add i64 %RBP_val.61, -32, !mcsema_real_eip !50
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !50
  %120 = load i64, i64* %119, !mcsema_real_eip !50
  store i64 %120, i64* %XAX, !mcsema_real_eip !50
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !51
  %122 = inttoptr i64 %120 to i32*, !mcsema_real_eip !51
  %123 = load i32, i32* %122, !mcsema_real_eip !51
  %124 = zext i32 %123 to i64, !mcsema_real_eip !51
  store i64 %124, i64* %XSI, !mcsema_real_eip !51
  %125 = load i64, i64* %119, !mcsema_real_eip !52
  store i64 %125, i64* %XAX, !mcsema_real_eip !52
  %126 = add i64 %125, 4, !mcsema_real_eip !53
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !53
  %128 = inttoptr i64 %126 to i32*, !mcsema_real_eip !53
  %129 = load i32, i32* %128, !mcsema_real_eip !53
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !53
  %130 = add i32 %ESI_val.66, %129, !mcsema_real_eip !53
  %131 = xor i32 %130, %129, !mcsema_real_eip !53
  %132 = xor i32 %131, %ESI_val.66, !mcsema_real_eip !53
  %133 = and i32 %132, 16, !mcsema_real_eip !53
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !53
  store i1 %134, i1* %AF, !mcsema_real_eip !53
  %135 = lshr i32 %130, 31, !mcsema_real_eip !53
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !53
  store i1 %136, i1* %SF, !mcsema_real_eip !53
  %137 = icmp eq i32 %130, 0, !mcsema_real_eip !53
  store i1 %137, i1* %ZF, !mcsema_real_eip !53
  %138 = xor i32 %129, %ESI_val.66, !mcsema_real_eip !53
  %139 = xor i32 %138, -1, !mcsema_real_eip !53
  %140 = and i32 %139, %131, !mcsema_real_eip !53
  %141 = lshr i32 %140, 31, !mcsema_real_eip !53
  %142 = and i32 %141, 1, !mcsema_real_eip !53
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !53
  store i1 %143, i1* %OF, !mcsema_real_eip !53
  %144 = trunc i32 %130 to i8, !mcsema_real_eip !53
  %145 = call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !53
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !53
  %147 = xor i1 %146, true, !mcsema_real_eip !53
  store i1 %147, i1* %PF, !mcsema_real_eip !53
  %148 = icmp ult i32 %130, %129, !mcsema_real_eip !53
  store i1 %148, i1* %CF, !mcsema_real_eip !53
  %149 = zext i32 %130 to i64, !mcsema_real_eip !53
  store i64 %149, i64* %XSI, !mcsema_real_eip !53
  %150 = load i64, i64* %119, !mcsema_real_eip !54
  store i64 %150, i64* %XAX, !mcsema_real_eip !54
  %151 = add i64 %150, 8, !mcsema_real_eip !55
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !55
  %153 = inttoptr i64 %151 to i32*, !mcsema_real_eip !55
  %154 = load i32, i32* %153, !mcsema_real_eip !55
  %ESI_val.70 = load i32, i32* %ESI.65, !mcsema_real_eip !55
  %155 = add i32 %ESI_val.70, %154, !mcsema_real_eip !55
  %156 = xor i32 %155, %154, !mcsema_real_eip !55
  %157 = xor i32 %156, %ESI_val.70, !mcsema_real_eip !55
  %158 = and i32 %157, 16, !mcsema_real_eip !55
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !55
  store i1 %159, i1* %AF, !mcsema_real_eip !55
  %160 = lshr i32 %155, 31, !mcsema_real_eip !55
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !55
  store i1 %161, i1* %SF, !mcsema_real_eip !55
  %162 = icmp eq i32 %155, 0, !mcsema_real_eip !55
  store i1 %162, i1* %ZF, !mcsema_real_eip !55
  %163 = xor i32 %154, %ESI_val.70, !mcsema_real_eip !55
  %164 = xor i32 %163, -1, !mcsema_real_eip !55
  %165 = and i32 %164, %156, !mcsema_real_eip !55
  %166 = lshr i32 %165, 31, !mcsema_real_eip !55
  %167 = and i32 %166, 1, !mcsema_real_eip !55
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !55
  store i1 %168, i1* %OF, !mcsema_real_eip !55
  %169 = trunc i32 %155 to i8, !mcsema_real_eip !55
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !55
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !55
  %172 = xor i1 %171, true, !mcsema_real_eip !55
  store i1 %172, i1* %PF, !mcsema_real_eip !55
  %173 = icmp ult i32 %155, %154, !mcsema_real_eip !55
  store i1 %173, i1* %CF, !mcsema_real_eip !55
  %174 = zext i32 %155 to i64, !mcsema_real_eip !55
  store i64 %174, i64* %XSI, !mcsema_real_eip !55
  %175 = add i64 %RBP_val.61, -52, !mcsema_real_eip !56
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !56
  %ESI_val.73 = load i32, i32* %ESI.65, !mcsema_real_eip !56
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !56
  store i32 %ESI_val.73, i32* %177, !mcsema_real_eip !56
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !57
  %178 = add i64 %RBP_val.74, -52, !mcsema_real_eip !57
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !57
  %180 = inttoptr i64 %178 to i32*, !mcsema_real_eip !57
  %181 = load i32, i32* %180, !mcsema_real_eip !57
  %182 = zext i32 %181 to i64, !mcsema_real_eip !57
  store i64 %182, i64* %XSI, !mcsema_real_eip !57
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 0, i8* %AL.75, !mcsema_real_eip !58
  %RDI_val.76 = load i64, i64* %XDI, !mcsema_real_eip !59
  %RDX_val.78 = load i64, i64* %XDX, !mcsema_real_eip !59
  %RCX_val.79 = load i64, i64* %XCX, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !59
  %R9_val.81 = load i64, i64* %R9, !mcsema_real_eip !59
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !59
  %183 = inttoptr i64 %RSP_val.82 to i64*, !mcsema_real_eip !59
  %184 = load i64, i64* %183, !mcsema_real_eip !59
  %185 = add i64 %RSP_val.82, 8, !mcsema_real_eip !59
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !59
  %187 = load i64, i64* %186, !mcsema_real_eip !59
  %188 = add i64 %185, 8, !mcsema_real_eip !59
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !59
  %190 = load i64, i64* %189, !mcsema_real_eip !59
  %191 = add i64 %188, 8, !mcsema_real_eip !59
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !59
  %193 = load i64, i64* %192, !mcsema_real_eip !59
  %194 = add i64 %191, 8, !mcsema_real_eip !59
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !59
  %196 = load i64, i64* %195, !mcsema_real_eip !59
  %197 = add i64 %194, 8, !mcsema_real_eip !59
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !59
  %199 = load i64, i64* %198, !mcsema_real_eip !59
  %200 = sub i64 %RSP_val.82, 8, !mcsema_real_eip !59
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !59
  store i64 -2415393069852865332, i64* %201, !mcsema_real_eip !59
  store i64 %200, i64* %XSP, !mcsema_real_eip !59
  %202 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %182, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199), !mcsema_real_eip !59
  store i64 %202, i64* %XAX, !mcsema_real_eip !59
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !60
  %203 = add i64 %RBP_val.84, -52, !mcsema_real_eip !60
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !60
  %205 = inttoptr i64 %203 to i32*, !mcsema_real_eip !60
  %206 = load i32, i32* %205, !mcsema_real_eip !60
  %207 = zext i32 %206 to i64, !mcsema_real_eip !60
  store i64 %207, i64* %XSI, !mcsema_real_eip !60
  %208 = add i64 %RBP_val.84, -80, !mcsema_real_eip !61
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !61
  %EAX_val.87 = load i32, i32* %EAX.4, !mcsema_real_eip !61
  %210 = inttoptr i64 %208 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.87, i32* %210, !mcsema_real_eip !61
  %ESI_val.89 = load i32, i32* %ESI.65, !mcsema_real_eip !62
  %211 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !62
  store i64 %211, i64* %XAX, !mcsema_real_eip !62
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !63
  %212 = add i64 128, %RSP_val.90, !mcsema_real_eip !63
  %213 = xor i64 %212, %RSP_val.90, !mcsema_real_eip !63
  %214 = xor i64 %213, 128, !mcsema_real_eip !63
  %215 = and i64 %214, 16, !mcsema_real_eip !63
  %216 = icmp ne i64 %215, 0, !mcsema_real_eip !63
  store i1 %216, i1* %AF, !mcsema_real_eip !63
  %217 = lshr i64 %212, 63, !mcsema_real_eip !63
  %218 = trunc i64 %217 to i1, !mcsema_real_eip !63
  store i1 %218, i1* %SF, !mcsema_real_eip !63
  %219 = icmp eq i64 %212, 0, !mcsema_real_eip !63
  store i1 %219, i1* %ZF, !mcsema_real_eip !63
  %220 = xor i64 %RSP_val.90, 128, !mcsema_real_eip !63
  %221 = xor i64 %220, -1, !mcsema_real_eip !63
  %222 = and i64 %221, %213, !mcsema_real_eip !63
  %223 = lshr i64 %222, 63, !mcsema_real_eip !63
  %224 = and i64 %223, 1, !mcsema_real_eip !63
  %225 = trunc i64 %224 to i1, !mcsema_real_eip !63
  store i1 %225, i1* %OF, !mcsema_real_eip !63
  %226 = trunc i64 %212 to i8, !mcsema_real_eip !63
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !63
  %228 = trunc i8 %227 to i1, !mcsema_real_eip !63
  %229 = xor i1 %228, true, !mcsema_real_eip !63
  store i1 %229, i1* %PF, !mcsema_real_eip !63
  %230 = icmp ult i64 %212, %RSP_val.90, !mcsema_real_eip !63
  store i1 %230, i1* %CF, !mcsema_real_eip !63
  store i64 %212, i64* %XSP, !mcsema_real_eip !63
  %231 = inttoptr i64 %212 to i64*, !mcsema_real_eip !64
  %232 = load i64, i64* %231, !mcsema_real_eip !64
  store i64 %232, i64* %XBP, !mcsema_real_eip !64
  %233 = add i64 %212, 8, !mcsema_real_eip !64
  store i64 %233, i64* %XSP, !mcsema_real_eip !64
  %234 = add i64 %233, 8, !mcsema_real_eip !65
  %235 = inttoptr i64 %233 to i64*, !mcsema_real_eip !65
  %236 = load i64, i64* %235, !mcsema_real_eip !65
  store i64 %236, i64* %XIP, !mcsema_real_eip !65
  store i64 %234, i64* %XSP, !mcsema_real_eip !65
  ret void, !mcsema_real_eip !65
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !66
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !66
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !66
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !66
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !66
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !66
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !66
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !66
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !66
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !66
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !66
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !66
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !66
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !66
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !66
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !66
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !66
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !66
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !66
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !66
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !66
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !66
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !66
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !66
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !66
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !66
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !66
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !66
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !66
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !66
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !66
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !66
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !66
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !66
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !66
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !66
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !66
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !66
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !66
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !66
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !66
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !66
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !66
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !66
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !66
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !66
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !66
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !66
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !66
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !66
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !66
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !66
  br label %block_0x0, !mcsema_real_eip !66

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !66
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !66
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !66
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !66
  store i64 %1, i64* %XSP, !mcsema_real_eip !66
  store i64 %1, i64* %XBP, !mcsema_real_eip !67
  %R15_val.96 = load i64, i64* %R15, !mcsema_real_eip !68
  %3 = sub i64 %1, 8, !mcsema_real_eip !68
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !68
  store i64 %R15_val.96, i64* %4, !mcsema_real_eip !68
  store i64 %3, i64* %XSP, !mcsema_real_eip !68
  %R14_val.98 = load i64, i64* %R14, !mcsema_real_eip !69
  %5 = sub i64 %3, 8, !mcsema_real_eip !69
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !69
  store i64 %R14_val.98, i64* %6, !mcsema_real_eip !69
  store i64 %5, i64* %XSP, !mcsema_real_eip !69
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !70
  %7 = sub i64 %5, 8, !mcsema_real_eip !70
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.100, i64* %8, !mcsema_real_eip !70
  store i64 %7, i64* %XSP, !mcsema_real_eip !70
  %9 = sub i64 %7, 104, !mcsema_real_eip !71
  %10 = xor i64 %9, %7, !mcsema_real_eip !71
  %11 = xor i64 %10, 104, !mcsema_real_eip !71
  %12 = and i64 %11, 16, !mcsema_real_eip !71
  %13 = icmp ne i64 %12, 0, !mcsema_real_eip !71
  store i1 %13, i1* %AF, !mcsema_real_eip !71
  %14 = trunc i64 %9 to i8, !mcsema_real_eip !71
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !71
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !71
  %17 = xor i1 %16, true, !mcsema_real_eip !71
  store i1 %17, i1* %PF, !mcsema_real_eip !71
  %18 = icmp eq i64 %9, 0, !mcsema_real_eip !71
  store i1 %18, i1* %ZF, !mcsema_real_eip !71
  %19 = lshr i64 %9, 63, !mcsema_real_eip !71
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !71
  store i1 %20, i1* %SF, !mcsema_real_eip !71
  %21 = icmp ult i64 %7, 104, !mcsema_real_eip !71
  store i1 %21, i1* %CF, !mcsema_real_eip !71
  %22 = xor i64 %7, 104, !mcsema_real_eip !71
  %23 = and i64 %22, %10, !mcsema_real_eip !71
  %24 = lshr i64 %23, 63, !mcsema_real_eip !71
  %25 = trunc i64 %24 to i1, !mcsema_real_eip !71
  store i1 %25, i1* %OF, !mcsema_real_eip !71
  store i64 %9, i64* %XSP, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %26 = add i64 %RBP_val.103, 48, !mcsema_real_eip !72
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !72
  %28 = load i64, i64* %27, !mcsema_real_eip !72
  store i64 %28, i64* %XAX, !mcsema_real_eip !72
  %29 = add i64 %RBP_val.103, 40, !mcsema_real_eip !73
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !73
  %31 = load i64, i64* %30, !mcsema_real_eip !73
  store i64 %31, i64* %R10, !mcsema_real_eip !73
  %32 = add i64 %RBP_val.103, 24, !mcsema_real_eip !74
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !74
  store i64 %32, i64* %R11, !mcsema_real_eip !74
  %34 = add i64 %RBP_val.103, 16, !mcsema_real_eip !75
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !75
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !75
  %37 = load i32, i32* %36, !mcsema_real_eip !75
  %38 = zext i32 %37 to i64, !mcsema_real_eip !75
  store i64 %38, i64* %XBX, !mcsema_real_eip !75
  store i64 12, i64* %R14, !mcsema_real_eip !76
  %R14D.107 = bitcast i64* %R14 to i32*, !mcsema_real_eip !77
  %R14D_val.108 = load i32, i32* %R14D.107, !mcsema_real_eip !77
  %39 = zext i32 %R14D_val.108 to i64, !mcsema_real_eip !77
  store i64 %39, i64* %R15, !mcsema_real_eip !77
  %40 = add i64 %RBP_val.103, -56, !mcsema_real_eip !78
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !78
  %RDI_val.110 = load i64, i64* %XDI, !mcsema_real_eip !78
  store i64 %RDI_val.110, i64* %41, !mcsema_real_eip !78
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !79
  %42 = add i64 %RBP_val.111, -48, !mcsema_real_eip !79
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !79
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !79
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !79
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !79
  store i32 %ESI_val.113, i32* %44, !mcsema_real_eip !79
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !80
  %45 = add i64 %RBP_val.114, -56, !mcsema_real_eip !80
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !80
  %47 = load i64, i64* %46, !mcsema_real_eip !80
  store i64 %47, i64* %XDI, !mcsema_real_eip !80
  %48 = add i64 %RBP_val.114, -40, !mcsema_real_eip !81
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !81
  store i64 %47, i64* %49, !mcsema_real_eip !81
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !82
  %50 = add i64 %RBP_val.117, -48, !mcsema_real_eip !82
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !82
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !82
  %53 = load i32, i32* %52, !mcsema_real_eip !82
  %54 = zext i32 %53 to i64, !mcsema_real_eip !82
  store i64 %54, i64* %XSI, !mcsema_real_eip !82
  %55 = add i64 %RBP_val.117, -32, !mcsema_real_eip !83
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !83
  %ESI_val.120 = load i32, i32* %ESI.112, !mcsema_real_eip !83
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !83
  store i32 %ESI_val.120, i32* %57, !mcsema_real_eip !83
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !84
  %58 = add i64 %RBP_val.121, -64, !mcsema_real_eip !84
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !84
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !84
  store i64 %RDX_val.122, i64* %59, !mcsema_real_eip !84
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !85
  %60 = add i64 %RBP_val.123, -72, !mcsema_real_eip !85
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !85
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !85
  store i64 %RCX_val.124, i64* %61, !mcsema_real_eip !85
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !86
  %62 = add i64 %RBP_val.125, -76, !mcsema_real_eip !86
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !86
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !86
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !86
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !86
  store i32 %R8D_val.127, i32* %64, !mcsema_real_eip !86
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !87
  %65 = add i64 %RBP_val.128, -80, !mcsema_real_eip !87
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !87
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !87
  %R9D_val.130 = load i32, i32* %R9D.129, !mcsema_real_eip !87
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !87
  store i32 %R9D_val.130, i32* %67, !mcsema_real_eip !87
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !88
  %68 = add i64 %RBP_val.131, -84, !mcsema_real_eip !88
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !88
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !88
  %EBX_val.133 = load i32, i32* %EBX.132, !mcsema_real_eip !88
  %70 = inttoptr i64 %68 to i32*, !mcsema_real_eip !88
  store i32 %EBX_val.133, i32* %70, !mcsema_real_eip !88
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !89
  %71 = add i64 %RBP_val.134, -96, !mcsema_real_eip !89
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !89
  %R10_val.135 = load i64, i64* %R10, !mcsema_real_eip !89
  store i64 %R10_val.135, i64* %72, !mcsema_real_eip !89
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !90
  %73 = add i64 %RBP_val.136, -104, !mcsema_real_eip !90
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !90
  %RAX_val.137 = load i64, i64* %XAX, !mcsema_real_eip !90
  store i64 %RAX_val.137, i64* %74, !mcsema_real_eip !90
  %R15_val.138 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %R15_val.138, i64* %XDI, !mcsema_real_eip !91
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !92
  %75 = add i64 %RBP_val.139, -120, !mcsema_real_eip !92
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !92
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !92
  store i64 %R11_val.140, i64* %76, !mcsema_real_eip !92
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.142 = load i64, i64* %XSP, !mcsema_real_eip !93
  %77 = sub i64 %RSP_val.142, 8, !mcsema_real_eip !93
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %78, !mcsema_real_eip !93
  store i64 %77, i64* %XSP, !mcsema_real_eip !93
  %79 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !93
  store i64 %79, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !94
  %80 = add i64 %RBP_val.143, -112, !mcsema_real_eip !94
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !94
  store i64 %79, i64* %81, !mcsema_real_eip !94
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !95
  %82 = add i64 %RBP_val.145, -40, !mcsema_real_eip !95
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !95
  %84 = inttoptr i64 %82 to i32*, !mcsema_real_eip !95
  %85 = load i32, i32* %84, !mcsema_real_eip !95
  %86 = zext i32 %85 to i64, !mcsema_real_eip !95
  store i64 %86, i64* %XSI, !mcsema_real_eip !95
  %87 = add i64 %RBP_val.145, -64, !mcsema_real_eip !96
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !96
  %89 = load i64, i64* %88, !mcsema_real_eip !96
  store i64 %89, i64* %XAX, !mcsema_real_eip !96
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !97
  %91 = inttoptr i64 %89 to i32*, !mcsema_real_eip !97
  %92 = load i32, i32* %91, !mcsema_real_eip !97
  %ESI_val.149 = load i32, i32* %ESI.112, !mcsema_real_eip !97
  %93 = add i32 %ESI_val.149, %92, !mcsema_real_eip !97
  %94 = xor i32 %93, %92, !mcsema_real_eip !97
  %95 = xor i32 %94, %ESI_val.149, !mcsema_real_eip !97
  %96 = and i32 %95, 16, !mcsema_real_eip !97
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !97
  store i1 %97, i1* %AF, !mcsema_real_eip !97
  %98 = lshr i32 %93, 31, !mcsema_real_eip !97
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !97
  store i1 %99, i1* %SF, !mcsema_real_eip !97
  %100 = icmp eq i32 %93, 0, !mcsema_real_eip !97
  store i1 %100, i1* %ZF, !mcsema_real_eip !97
  %101 = xor i32 %92, %ESI_val.149, !mcsema_real_eip !97
  %102 = xor i32 %101, -1, !mcsema_real_eip !97
  %103 = and i32 %102, %94, !mcsema_real_eip !97
  %104 = lshr i32 %103, 31, !mcsema_real_eip !97
  %105 = and i32 %104, 1, !mcsema_real_eip !97
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !97
  store i1 %106, i1* %OF, !mcsema_real_eip !97
  %107 = trunc i32 %93 to i8, !mcsema_real_eip !97
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !97
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !97
  %110 = xor i1 %109, true, !mcsema_real_eip !97
  store i1 %110, i1* %PF, !mcsema_real_eip !97
  %111 = icmp ult i32 %93, %92, !mcsema_real_eip !97
  store i1 %111, i1* %CF, !mcsema_real_eip !97
  %112 = zext i32 %93 to i64, !mcsema_real_eip !97
  store i64 %112, i64* %XSI, !mcsema_real_eip !97
  %113 = add i64 %RBP_val.145, -72, !mcsema_real_eip !98
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !98
  %115 = load i64, i64* %114, !mcsema_real_eip !98
  store i64 %115, i64* %XAX, !mcsema_real_eip !98
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !99
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !99
  %118 = load i32, i32* %117, !mcsema_real_eip !99
  %ESI_val.153 = load i32, i32* %ESI.112, !mcsema_real_eip !99
  %119 = add i32 %ESI_val.153, %118, !mcsema_real_eip !99
  %120 = xor i32 %119, %118, !mcsema_real_eip !99
  %121 = xor i32 %120, %ESI_val.153, !mcsema_real_eip !99
  %122 = and i32 %121, 16, !mcsema_real_eip !99
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !99
  store i1 %123, i1* %AF, !mcsema_real_eip !99
  %124 = lshr i32 %119, 31, !mcsema_real_eip !99
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !99
  store i1 %125, i1* %SF, !mcsema_real_eip !99
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !99
  store i1 %126, i1* %ZF, !mcsema_real_eip !99
  %127 = xor i32 %118, %ESI_val.153, !mcsema_real_eip !99
  %128 = xor i32 %127, -1, !mcsema_real_eip !99
  %129 = and i32 %128, %120, !mcsema_real_eip !99
  %130 = lshr i32 %129, 31, !mcsema_real_eip !99
  %131 = and i32 %130, 1, !mcsema_real_eip !99
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !99
  store i1 %132, i1* %OF, !mcsema_real_eip !99
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !99
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !99
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !99
  %136 = xor i1 %135, true, !mcsema_real_eip !99
  store i1 %136, i1* %PF, !mcsema_real_eip !99
  %137 = icmp ult i32 %119, %118, !mcsema_real_eip !99
  store i1 %137, i1* %CF, !mcsema_real_eip !99
  %138 = zext i32 %119 to i64, !mcsema_real_eip !99
  store i64 %138, i64* %XSI, !mcsema_real_eip !99
  %139 = add i64 %RBP_val.145, -120, !mcsema_real_eip !100
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !100
  %141 = load i64, i64* %140, !mcsema_real_eip !100
  store i64 %141, i64* %XAX, !mcsema_real_eip !100
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !101
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !101
  %144 = load i32, i32* %143, !mcsema_real_eip !101
  %145 = zext i32 %144 to i64, !mcsema_real_eip !101
  store i64 %145, i64* %R8, !mcsema_real_eip !101
  %146 = add i64 %RBP_val.145, -96, !mcsema_real_eip !102
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !102
  %148 = load i64, i64* %147, !mcsema_real_eip !102
  store i64 %148, i64* %XCX, !mcsema_real_eip !102
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !103
  %150 = inttoptr i64 %148 to i32*, !mcsema_real_eip !103
  %151 = load i32, i32* %150, !mcsema_real_eip !103
  %R8D_val.159 = load i32, i32* %R8D.126, !mcsema_real_eip !103
  %152 = add i32 %R8D_val.159, %151, !mcsema_real_eip !103
  %153 = xor i32 %152, %151, !mcsema_real_eip !103
  %154 = xor i32 %153, %R8D_val.159, !mcsema_real_eip !103
  %155 = and i32 %154, 16, !mcsema_real_eip !103
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !103
  store i1 %156, i1* %AF, !mcsema_real_eip !103
  %157 = lshr i32 %152, 31, !mcsema_real_eip !103
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !103
  store i1 %158, i1* %SF, !mcsema_real_eip !103
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !103
  store i1 %159, i1* %ZF, !mcsema_real_eip !103
  %160 = xor i32 %151, %R8D_val.159, !mcsema_real_eip !103
  %161 = xor i32 %160, -1, !mcsema_real_eip !103
  %162 = and i32 %161, %153, !mcsema_real_eip !103
  %163 = lshr i32 %162, 31, !mcsema_real_eip !103
  %164 = and i32 %163, 1, !mcsema_real_eip !103
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !103
  store i1 %165, i1* %OF, !mcsema_real_eip !103
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !103
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !103
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !103
  %169 = xor i1 %168, true, !mcsema_real_eip !103
  store i1 %169, i1* %PF, !mcsema_real_eip !103
  %170 = icmp ult i32 %152, %151, !mcsema_real_eip !103
  store i1 %170, i1* %CF, !mcsema_real_eip !103
  %171 = zext i32 %152 to i64, !mcsema_real_eip !103
  store i64 %171, i64* %R8, !mcsema_real_eip !103
  %172 = add i64 %RBP_val.145, -104, !mcsema_real_eip !104
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !104
  %174 = load i64, i64* %173, !mcsema_real_eip !104
  store i64 %174, i64* %XCX, !mcsema_real_eip !104
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !105
  %176 = inttoptr i64 %174 to i32*, !mcsema_real_eip !105
  %177 = load i32, i32* %176, !mcsema_real_eip !105
  %R8D_val.163 = load i32, i32* %R8D.126, !mcsema_real_eip !105
  %178 = add i32 %R8D_val.163, %177, !mcsema_real_eip !105
  %179 = xor i32 %178, %177, !mcsema_real_eip !105
  %180 = xor i32 %179, %R8D_val.163, !mcsema_real_eip !105
  %181 = and i32 %180, 16, !mcsema_real_eip !105
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !105
  store i1 %182, i1* %AF, !mcsema_real_eip !105
  %183 = lshr i32 %178, 31, !mcsema_real_eip !105
  %184 = trunc i32 %183 to i1, !mcsema_real_eip !105
  store i1 %184, i1* %SF, !mcsema_real_eip !105
  %185 = icmp eq i32 %178, 0, !mcsema_real_eip !105
  store i1 %185, i1* %ZF, !mcsema_real_eip !105
  %186 = xor i32 %177, %R8D_val.163, !mcsema_real_eip !105
  %187 = xor i32 %186, -1, !mcsema_real_eip !105
  %188 = and i32 %187, %179, !mcsema_real_eip !105
  %189 = lshr i32 %188, 31, !mcsema_real_eip !105
  %190 = and i32 %189, 1, !mcsema_real_eip !105
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !105
  store i1 %191, i1* %OF, !mcsema_real_eip !105
  %192 = trunc i32 %178 to i8, !mcsema_real_eip !105
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !105
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !105
  %195 = xor i1 %194, true, !mcsema_real_eip !105
  store i1 %195, i1* %PF, !mcsema_real_eip !105
  %196 = icmp ult i32 %178, %177, !mcsema_real_eip !105
  store i1 %196, i1* %CF, !mcsema_real_eip !105
  %197 = zext i32 %178 to i64, !mcsema_real_eip !105
  store i64 %197, i64* %R8, !mcsema_real_eip !105
  %ESI_val.165 = load i32, i32* %ESI.112, !mcsema_real_eip !106
  %R8D_val.167 = load i32, i32* %R8D.126, !mcsema_real_eip !106
  %198 = add i32 %R8D_val.167, %ESI_val.165, !mcsema_real_eip !106
  %199 = xor i32 %198, %ESI_val.165, !mcsema_real_eip !106
  %200 = xor i32 %199, %R8D_val.167, !mcsema_real_eip !106
  %201 = and i32 %200, 16, !mcsema_real_eip !106
  %202 = icmp ne i32 %201, 0, !mcsema_real_eip !106
  store i1 %202, i1* %AF, !mcsema_real_eip !106
  %203 = lshr i32 %198, 31, !mcsema_real_eip !106
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !106
  store i1 %204, i1* %SF, !mcsema_real_eip !106
  %205 = icmp eq i32 %198, 0, !mcsema_real_eip !106
  store i1 %205, i1* %ZF, !mcsema_real_eip !106
  %206 = xor i32 %ESI_val.165, %R8D_val.167, !mcsema_real_eip !106
  %207 = xor i32 %206, -1, !mcsema_real_eip !106
  %208 = and i32 %207, %199, !mcsema_real_eip !106
  %209 = lshr i32 %208, 31, !mcsema_real_eip !106
  %210 = and i32 %209, 1, !mcsema_real_eip !106
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !106
  store i1 %211, i1* %OF, !mcsema_real_eip !106
  %212 = trunc i32 %198 to i8, !mcsema_real_eip !106
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !106
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !106
  %215 = xor i1 %214, true, !mcsema_real_eip !106
  store i1 %215, i1* %PF, !mcsema_real_eip !106
  %216 = icmp ult i32 %198, %ESI_val.165, !mcsema_real_eip !106
  store i1 %216, i1* %CF, !mcsema_real_eip !106
  %217 = zext i32 %198 to i64, !mcsema_real_eip !106
  store i64 %217, i64* %XSI, !mcsema_real_eip !106
  %218 = add i64 %RBP_val.145, -112, !mcsema_real_eip !107
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !107
  %220 = load i64, i64* %219, !mcsema_real_eip !107
  store i64 %220, i64* %XCX, !mcsema_real_eip !107
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !108
  %ESI_val.171 = load i32, i32* %ESI.112, !mcsema_real_eip !108
  %222 = inttoptr i64 %220 to i32*, !mcsema_real_eip !108
  store i32 %ESI_val.171, i32* %222, !mcsema_real_eip !108
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %223 = add i64 %RBP_val.172, -36, !mcsema_real_eip !109
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !109
  %225 = inttoptr i64 %223 to i32*, !mcsema_real_eip !109
  %226 = load i32, i32* %225, !mcsema_real_eip !109
  %227 = zext i32 %226 to i64, !mcsema_real_eip !109
  store i64 %227, i64* %XSI, !mcsema_real_eip !109
  %228 = add i64 %RBP_val.172, -64, !mcsema_real_eip !110
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !110
  %230 = load i64, i64* %229, !mcsema_real_eip !110
  store i64 %230, i64* %XCX, !mcsema_real_eip !110
  %231 = add i64 %230, 4, !mcsema_real_eip !111
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !111
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !111
  %234 = load i32, i32* %233, !mcsema_real_eip !111
  %ESI_val.176 = load i32, i32* %ESI.112, !mcsema_real_eip !111
  %235 = add i32 %ESI_val.176, %234, !mcsema_real_eip !111
  %236 = xor i32 %235, %234, !mcsema_real_eip !111
  %237 = xor i32 %236, %ESI_val.176, !mcsema_real_eip !111
  %238 = and i32 %237, 16, !mcsema_real_eip !111
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !111
  store i1 %239, i1* %AF, !mcsema_real_eip !111
  %240 = lshr i32 %235, 31, !mcsema_real_eip !111
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !111
  store i1 %241, i1* %SF, !mcsema_real_eip !111
  %242 = icmp eq i32 %235, 0, !mcsema_real_eip !111
  store i1 %242, i1* %ZF, !mcsema_real_eip !111
  %243 = xor i32 %234, %ESI_val.176, !mcsema_real_eip !111
  %244 = xor i32 %243, -1, !mcsema_real_eip !111
  %245 = and i32 %244, %236, !mcsema_real_eip !111
  %246 = lshr i32 %245, 31, !mcsema_real_eip !111
  %247 = and i32 %246, 1, !mcsema_real_eip !111
  %248 = trunc i32 %247 to i1, !mcsema_real_eip !111
  store i1 %248, i1* %OF, !mcsema_real_eip !111
  %249 = trunc i32 %235 to i8, !mcsema_real_eip !111
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !111
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !111
  %252 = xor i1 %251, true, !mcsema_real_eip !111
  store i1 %252, i1* %PF, !mcsema_real_eip !111
  %253 = icmp ult i32 %235, %234, !mcsema_real_eip !111
  store i1 %253, i1* %CF, !mcsema_real_eip !111
  %254 = zext i32 %235 to i64, !mcsema_real_eip !111
  store i64 %254, i64* %XSI, !mcsema_real_eip !111
  %255 = add i64 %RBP_val.172, -72, !mcsema_real_eip !112
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !112
  %257 = load i64, i64* %256, !mcsema_real_eip !112
  store i64 %257, i64* %XCX, !mcsema_real_eip !112
  %258 = add i64 %257, 4, !mcsema_real_eip !113
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !113
  %260 = inttoptr i64 %258 to i32*, !mcsema_real_eip !113
  %261 = load i32, i32* %260, !mcsema_real_eip !113
  %ESI_val.180 = load i32, i32* %ESI.112, !mcsema_real_eip !113
  %262 = add i32 %ESI_val.180, %261, !mcsema_real_eip !113
  %263 = xor i32 %262, %261, !mcsema_real_eip !113
  %264 = xor i32 %263, %ESI_val.180, !mcsema_real_eip !113
  %265 = and i32 %264, 16, !mcsema_real_eip !113
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !113
  store i1 %266, i1* %AF, !mcsema_real_eip !113
  %267 = lshr i32 %262, 31, !mcsema_real_eip !113
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !113
  store i1 %268, i1* %SF, !mcsema_real_eip !113
  %269 = icmp eq i32 %262, 0, !mcsema_real_eip !113
  store i1 %269, i1* %ZF, !mcsema_real_eip !113
  %270 = xor i32 %261, %ESI_val.180, !mcsema_real_eip !113
  %271 = xor i32 %270, -1, !mcsema_real_eip !113
  %272 = and i32 %271, %263, !mcsema_real_eip !113
  %273 = lshr i32 %272, 31, !mcsema_real_eip !113
  %274 = and i32 %273, 1, !mcsema_real_eip !113
  %275 = trunc i32 %274 to i1, !mcsema_real_eip !113
  store i1 %275, i1* %OF, !mcsema_real_eip !113
  %276 = trunc i32 %262 to i8, !mcsema_real_eip !113
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !113
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !113
  %279 = xor i1 %278, true, !mcsema_real_eip !113
  store i1 %279, i1* %PF, !mcsema_real_eip !113
  %280 = icmp ult i32 %262, %261, !mcsema_real_eip !113
  store i1 %280, i1* %CF, !mcsema_real_eip !113
  %281 = zext i32 %262 to i64, !mcsema_real_eip !113
  store i64 %281, i64* %XSI, !mcsema_real_eip !113
  %RAX_val.181 = load i64, i64* %XAX, !mcsema_real_eip !114
  %282 = add i64 %RAX_val.181, 4, !mcsema_real_eip !114
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !114
  %284 = inttoptr i64 %282 to i32*, !mcsema_real_eip !114
  %285 = load i32, i32* %284, !mcsema_real_eip !114
  %286 = zext i32 %285 to i64, !mcsema_real_eip !114
  store i64 %286, i64* %R8, !mcsema_real_eip !114
  %287 = add i64 %RBP_val.172, -96, !mcsema_real_eip !115
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !115
  %289 = load i64, i64* %288, !mcsema_real_eip !115
  store i64 %289, i64* %XCX, !mcsema_real_eip !115
  %290 = add i64 %289, 4, !mcsema_real_eip !116
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !116
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !116
  %293 = load i32, i32* %292, !mcsema_real_eip !116
  %R8D_val.185 = load i32, i32* %R8D.126, !mcsema_real_eip !116
  %294 = add i32 %R8D_val.185, %293, !mcsema_real_eip !116
  %295 = xor i32 %294, %293, !mcsema_real_eip !116
  %296 = xor i32 %295, %R8D_val.185, !mcsema_real_eip !116
  %297 = and i32 %296, 16, !mcsema_real_eip !116
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !116
  store i1 %298, i1* %AF, !mcsema_real_eip !116
  %299 = lshr i32 %294, 31, !mcsema_real_eip !116
  %300 = trunc i32 %299 to i1, !mcsema_real_eip !116
  store i1 %300, i1* %SF, !mcsema_real_eip !116
  %301 = icmp eq i32 %294, 0, !mcsema_real_eip !116
  store i1 %301, i1* %ZF, !mcsema_real_eip !116
  %302 = xor i32 %293, %R8D_val.185, !mcsema_real_eip !116
  %303 = xor i32 %302, -1, !mcsema_real_eip !116
  %304 = and i32 %303, %295, !mcsema_real_eip !116
  %305 = lshr i32 %304, 31, !mcsema_real_eip !116
  %306 = and i32 %305, 1, !mcsema_real_eip !116
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !116
  store i1 %307, i1* %OF, !mcsema_real_eip !116
  %308 = trunc i32 %294 to i8, !mcsema_real_eip !116
  %309 = call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !116
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !116
  %311 = xor i1 %310, true, !mcsema_real_eip !116
  store i1 %311, i1* %PF, !mcsema_real_eip !116
  %312 = icmp ult i32 %294, %293, !mcsema_real_eip !116
  store i1 %312, i1* %CF, !mcsema_real_eip !116
  %313 = zext i32 %294 to i64, !mcsema_real_eip !116
  store i64 %313, i64* %R8, !mcsema_real_eip !116
  %314 = add i64 %RBP_val.172, -104, !mcsema_real_eip !117
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !117
  %316 = load i64, i64* %315, !mcsema_real_eip !117
  store i64 %316, i64* %XCX, !mcsema_real_eip !117
  %317 = add i64 %316, 4, !mcsema_real_eip !118
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !118
  %319 = inttoptr i64 %317 to i32*, !mcsema_real_eip !118
  %320 = load i32, i32* %319, !mcsema_real_eip !118
  %R8D_val.189 = load i32, i32* %R8D.126, !mcsema_real_eip !118
  %321 = add i32 %R8D_val.189, %320, !mcsema_real_eip !118
  %322 = xor i32 %321, %320, !mcsema_real_eip !118
  %323 = xor i32 %322, %R8D_val.189, !mcsema_real_eip !118
  %324 = and i32 %323, 16, !mcsema_real_eip !118
  %325 = icmp ne i32 %324, 0, !mcsema_real_eip !118
  store i1 %325, i1* %AF, !mcsema_real_eip !118
  %326 = lshr i32 %321, 31, !mcsema_real_eip !118
  %327 = trunc i32 %326 to i1, !mcsema_real_eip !118
  store i1 %327, i1* %SF, !mcsema_real_eip !118
  %328 = icmp eq i32 %321, 0, !mcsema_real_eip !118
  store i1 %328, i1* %ZF, !mcsema_real_eip !118
  %329 = xor i32 %320, %R8D_val.189, !mcsema_real_eip !118
  %330 = xor i32 %329, -1, !mcsema_real_eip !118
  %331 = and i32 %330, %322, !mcsema_real_eip !118
  %332 = lshr i32 %331, 31, !mcsema_real_eip !118
  %333 = and i32 %332, 1, !mcsema_real_eip !118
  %334 = trunc i32 %333 to i1, !mcsema_real_eip !118
  store i1 %334, i1* %OF, !mcsema_real_eip !118
  %335 = trunc i32 %321 to i8, !mcsema_real_eip !118
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !118
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !118
  %338 = xor i1 %337, true, !mcsema_real_eip !118
  store i1 %338, i1* %PF, !mcsema_real_eip !118
  %339 = icmp ult i32 %321, %320, !mcsema_real_eip !118
  store i1 %339, i1* %CF, !mcsema_real_eip !118
  %340 = zext i32 %321 to i64, !mcsema_real_eip !118
  store i64 %340, i64* %R8, !mcsema_real_eip !118
  %ESI_val.191 = load i32, i32* %ESI.112, !mcsema_real_eip !119
  %R8D_val.193 = load i32, i32* %R8D.126, !mcsema_real_eip !119
  %341 = add i32 %R8D_val.193, %ESI_val.191, !mcsema_real_eip !119
  %342 = xor i32 %341, %ESI_val.191, !mcsema_real_eip !119
  %343 = xor i32 %342, %R8D_val.193, !mcsema_real_eip !119
  %344 = and i32 %343, 16, !mcsema_real_eip !119
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !119
  store i1 %345, i1* %AF, !mcsema_real_eip !119
  %346 = lshr i32 %341, 31, !mcsema_real_eip !119
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !119
  store i1 %347, i1* %SF, !mcsema_real_eip !119
  %348 = icmp eq i32 %341, 0, !mcsema_real_eip !119
  store i1 %348, i1* %ZF, !mcsema_real_eip !119
  %349 = xor i32 %ESI_val.191, %R8D_val.193, !mcsema_real_eip !119
  %350 = xor i32 %349, -1, !mcsema_real_eip !119
  %351 = and i32 %350, %342, !mcsema_real_eip !119
  %352 = lshr i32 %351, 31, !mcsema_real_eip !119
  %353 = and i32 %352, 1, !mcsema_real_eip !119
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !119
  store i1 %354, i1* %OF, !mcsema_real_eip !119
  %355 = trunc i32 %341 to i8, !mcsema_real_eip !119
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !119
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !119
  %358 = xor i1 %357, true, !mcsema_real_eip !119
  store i1 %358, i1* %PF, !mcsema_real_eip !119
  %359 = icmp ult i32 %341, %ESI_val.191, !mcsema_real_eip !119
  store i1 %359, i1* %CF, !mcsema_real_eip !119
  %360 = zext i32 %341 to i64, !mcsema_real_eip !119
  store i64 %360, i64* %XSI, !mcsema_real_eip !119
  %361 = add i64 %RBP_val.172, -112, !mcsema_real_eip !120
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !120
  %363 = load i64, i64* %362, !mcsema_real_eip !120
  store i64 %363, i64* %XCX, !mcsema_real_eip !120
  %364 = add i64 %363, 4, !mcsema_real_eip !121
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !121
  %ESI_val.197 = load i32, i32* %ESI.112, !mcsema_real_eip !121
  %366 = inttoptr i64 %364 to i32*, !mcsema_real_eip !121
  store i32 %ESI_val.197, i32* %366, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %367 = add i64 %RBP_val.198, -32, !mcsema_real_eip !122
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !122
  %369 = inttoptr i64 %367 to i32*, !mcsema_real_eip !122
  %370 = load i32, i32* %369, !mcsema_real_eip !122
  %371 = zext i32 %370 to i64, !mcsema_real_eip !122
  store i64 %371, i64* %XSI, !mcsema_real_eip !122
  %372 = add i64 %RBP_val.198, -64, !mcsema_real_eip !123
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !123
  %374 = load i64, i64* %373, !mcsema_real_eip !123
  store i64 %374, i64* %XCX, !mcsema_real_eip !123
  %375 = add i64 %374, 8, !mcsema_real_eip !124
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !124
  %377 = inttoptr i64 %375 to i32*, !mcsema_real_eip !124
  %378 = load i32, i32* %377, !mcsema_real_eip !124
  %ESI_val.202 = load i32, i32* %ESI.112, !mcsema_real_eip !124
  %379 = add i32 %ESI_val.202, %378, !mcsema_real_eip !124
  %380 = xor i32 %379, %378, !mcsema_real_eip !124
  %381 = xor i32 %380, %ESI_val.202, !mcsema_real_eip !124
  %382 = and i32 %381, 16, !mcsema_real_eip !124
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !124
  store i1 %383, i1* %AF, !mcsema_real_eip !124
  %384 = lshr i32 %379, 31, !mcsema_real_eip !124
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !124
  store i1 %385, i1* %SF, !mcsema_real_eip !124
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !124
  store i1 %386, i1* %ZF, !mcsema_real_eip !124
  %387 = xor i32 %378, %ESI_val.202, !mcsema_real_eip !124
  %388 = xor i32 %387, -1, !mcsema_real_eip !124
  %389 = and i32 %388, %380, !mcsema_real_eip !124
  %390 = lshr i32 %389, 31, !mcsema_real_eip !124
  %391 = and i32 %390, 1, !mcsema_real_eip !124
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !124
  store i1 %392, i1* %OF, !mcsema_real_eip !124
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !124
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !124
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !124
  %396 = xor i1 %395, true, !mcsema_real_eip !124
  store i1 %396, i1* %PF, !mcsema_real_eip !124
  %397 = icmp ult i32 %379, %378, !mcsema_real_eip !124
  store i1 %397, i1* %CF, !mcsema_real_eip !124
  %398 = zext i32 %379 to i64, !mcsema_real_eip !124
  store i64 %398, i64* %XSI, !mcsema_real_eip !124
  %399 = add i64 %RBP_val.198, -72, !mcsema_real_eip !125
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !125
  %401 = load i64, i64* %400, !mcsema_real_eip !125
  store i64 %401, i64* %XCX, !mcsema_real_eip !125
  %402 = add i64 %401, 8, !mcsema_real_eip !126
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !126
  %404 = inttoptr i64 %402 to i32*, !mcsema_real_eip !126
  %405 = load i32, i32* %404, !mcsema_real_eip !126
  %ESI_val.206 = load i32, i32* %ESI.112, !mcsema_real_eip !126
  %406 = add i32 %ESI_val.206, %405, !mcsema_real_eip !126
  %407 = xor i32 %406, %405, !mcsema_real_eip !126
  %408 = xor i32 %407, %ESI_val.206, !mcsema_real_eip !126
  %409 = and i32 %408, 16, !mcsema_real_eip !126
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !126
  store i1 %410, i1* %AF, !mcsema_real_eip !126
  %411 = lshr i32 %406, 31, !mcsema_real_eip !126
  %412 = trunc i32 %411 to i1, !mcsema_real_eip !126
  store i1 %412, i1* %SF, !mcsema_real_eip !126
  %413 = icmp eq i32 %406, 0, !mcsema_real_eip !126
  store i1 %413, i1* %ZF, !mcsema_real_eip !126
  %414 = xor i32 %405, %ESI_val.206, !mcsema_real_eip !126
  %415 = xor i32 %414, -1, !mcsema_real_eip !126
  %416 = and i32 %415, %407, !mcsema_real_eip !126
  %417 = lshr i32 %416, 31, !mcsema_real_eip !126
  %418 = and i32 %417, 1, !mcsema_real_eip !126
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !126
  store i1 %419, i1* %OF, !mcsema_real_eip !126
  %420 = trunc i32 %406 to i8, !mcsema_real_eip !126
  %421 = call i8 @llvm.ctpop.i8(i8 %420), !mcsema_real_eip !126
  %422 = trunc i8 %421 to i1, !mcsema_real_eip !126
  %423 = xor i1 %422, true, !mcsema_real_eip !126
  store i1 %423, i1* %PF, !mcsema_real_eip !126
  %424 = icmp ult i32 %406, %405, !mcsema_real_eip !126
  store i1 %424, i1* %CF, !mcsema_real_eip !126
  %425 = zext i32 %406 to i64, !mcsema_real_eip !126
  store i64 %425, i64* %XSI, !mcsema_real_eip !126
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !127
  %426 = add i64 %RAX_val.207, 8, !mcsema_real_eip !127
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !127
  %428 = inttoptr i64 %426 to i32*, !mcsema_real_eip !127
  %429 = load i32, i32* %428, !mcsema_real_eip !127
  %430 = zext i32 %429 to i64, !mcsema_real_eip !127
  store i64 %430, i64* %R8, !mcsema_real_eip !127
  %431 = add i64 %RBP_val.198, -96, !mcsema_real_eip !128
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !128
  %433 = load i64, i64* %432, !mcsema_real_eip !128
  store i64 %433, i64* %XCX, !mcsema_real_eip !128
  %434 = add i64 %433, 8, !mcsema_real_eip !129
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !129
  %436 = inttoptr i64 %434 to i32*, !mcsema_real_eip !129
  %437 = load i32, i32* %436, !mcsema_real_eip !129
  %R8D_val.211 = load i32, i32* %R8D.126, !mcsema_real_eip !129
  %438 = add i32 %R8D_val.211, %437, !mcsema_real_eip !129
  %439 = xor i32 %438, %437, !mcsema_real_eip !129
  %440 = xor i32 %439, %R8D_val.211, !mcsema_real_eip !129
  %441 = and i32 %440, 16, !mcsema_real_eip !129
  %442 = icmp ne i32 %441, 0, !mcsema_real_eip !129
  store i1 %442, i1* %AF, !mcsema_real_eip !129
  %443 = lshr i32 %438, 31, !mcsema_real_eip !129
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !129
  store i1 %444, i1* %SF, !mcsema_real_eip !129
  %445 = icmp eq i32 %438, 0, !mcsema_real_eip !129
  store i1 %445, i1* %ZF, !mcsema_real_eip !129
  %446 = xor i32 %437, %R8D_val.211, !mcsema_real_eip !129
  %447 = xor i32 %446, -1, !mcsema_real_eip !129
  %448 = and i32 %447, %439, !mcsema_real_eip !129
  %449 = lshr i32 %448, 31, !mcsema_real_eip !129
  %450 = and i32 %449, 1, !mcsema_real_eip !129
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !129
  store i1 %451, i1* %OF, !mcsema_real_eip !129
  %452 = trunc i32 %438 to i8, !mcsema_real_eip !129
  %453 = call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !129
  %454 = trunc i8 %453 to i1, !mcsema_real_eip !129
  %455 = xor i1 %454, true, !mcsema_real_eip !129
  store i1 %455, i1* %PF, !mcsema_real_eip !129
  %456 = icmp ult i32 %438, %437, !mcsema_real_eip !129
  store i1 %456, i1* %CF, !mcsema_real_eip !129
  %457 = zext i32 %438 to i64, !mcsema_real_eip !129
  store i64 %457, i64* %R8, !mcsema_real_eip !129
  %458 = add i64 %RBP_val.198, -104, !mcsema_real_eip !130
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !130
  %460 = load i64, i64* %459, !mcsema_real_eip !130
  store i64 %460, i64* %XCX, !mcsema_real_eip !130
  %461 = add i64 %460, 8, !mcsema_real_eip !131
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !131
  %463 = inttoptr i64 %461 to i32*, !mcsema_real_eip !131
  %464 = load i32, i32* %463, !mcsema_real_eip !131
  %R8D_val.215 = load i32, i32* %R8D.126, !mcsema_real_eip !131
  %465 = add i32 %R8D_val.215, %464, !mcsema_real_eip !131
  %466 = xor i32 %465, %464, !mcsema_real_eip !131
  %467 = xor i32 %466, %R8D_val.215, !mcsema_real_eip !131
  %468 = and i32 %467, 16, !mcsema_real_eip !131
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !131
  store i1 %469, i1* %AF, !mcsema_real_eip !131
  %470 = lshr i32 %465, 31, !mcsema_real_eip !131
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !131
  store i1 %471, i1* %SF, !mcsema_real_eip !131
  %472 = icmp eq i32 %465, 0, !mcsema_real_eip !131
  store i1 %472, i1* %ZF, !mcsema_real_eip !131
  %473 = xor i32 %464, %R8D_val.215, !mcsema_real_eip !131
  %474 = xor i32 %473, -1, !mcsema_real_eip !131
  %475 = and i32 %474, %466, !mcsema_real_eip !131
  %476 = lshr i32 %475, 31, !mcsema_real_eip !131
  %477 = and i32 %476, 1, !mcsema_real_eip !131
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !131
  store i1 %478, i1* %OF, !mcsema_real_eip !131
  %479 = trunc i32 %465 to i8, !mcsema_real_eip !131
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !131
  %481 = trunc i8 %480 to i1, !mcsema_real_eip !131
  %482 = xor i1 %481, true, !mcsema_real_eip !131
  store i1 %482, i1* %PF, !mcsema_real_eip !131
  %483 = icmp ult i32 %465, %464, !mcsema_real_eip !131
  store i1 %483, i1* %CF, !mcsema_real_eip !131
  %484 = zext i32 %465 to i64, !mcsema_real_eip !131
  store i64 %484, i64* %R8, !mcsema_real_eip !131
  %ESI_val.217 = load i32, i32* %ESI.112, !mcsema_real_eip !132
  %R8D_val.219 = load i32, i32* %R8D.126, !mcsema_real_eip !132
  %485 = add i32 %R8D_val.219, %ESI_val.217, !mcsema_real_eip !132
  %486 = xor i32 %485, %ESI_val.217, !mcsema_real_eip !132
  %487 = xor i32 %486, %R8D_val.219, !mcsema_real_eip !132
  %488 = and i32 %487, 16, !mcsema_real_eip !132
  %489 = icmp ne i32 %488, 0, !mcsema_real_eip !132
  store i1 %489, i1* %AF, !mcsema_real_eip !132
  %490 = lshr i32 %485, 31, !mcsema_real_eip !132
  %491 = trunc i32 %490 to i1, !mcsema_real_eip !132
  store i1 %491, i1* %SF, !mcsema_real_eip !132
  %492 = icmp eq i32 %485, 0, !mcsema_real_eip !132
  store i1 %492, i1* %ZF, !mcsema_real_eip !132
  %493 = xor i32 %ESI_val.217, %R8D_val.219, !mcsema_real_eip !132
  %494 = xor i32 %493, -1, !mcsema_real_eip !132
  %495 = and i32 %494, %486, !mcsema_real_eip !132
  %496 = lshr i32 %495, 31, !mcsema_real_eip !132
  %497 = and i32 %496, 1, !mcsema_real_eip !132
  %498 = trunc i32 %497 to i1, !mcsema_real_eip !132
  store i1 %498, i1* %OF, !mcsema_real_eip !132
  %499 = trunc i32 %485 to i8, !mcsema_real_eip !132
  %500 = call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !132
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !132
  %502 = xor i1 %501, true, !mcsema_real_eip !132
  store i1 %502, i1* %PF, !mcsema_real_eip !132
  %503 = icmp ult i32 %485, %ESI_val.217, !mcsema_real_eip !132
  store i1 %503, i1* %CF, !mcsema_real_eip !132
  %504 = zext i32 %485 to i64, !mcsema_real_eip !132
  store i64 %504, i64* %XSI, !mcsema_real_eip !132
  %505 = add i64 %RBP_val.198, -112, !mcsema_real_eip !133
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !133
  %507 = load i64, i64* %506, !mcsema_real_eip !133
  store i64 %507, i64* %XCX, !mcsema_real_eip !133
  %508 = add i64 %507, 8, !mcsema_real_eip !134
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !134
  %ESI_val.223 = load i32, i32* %ESI.112, !mcsema_real_eip !134
  %510 = inttoptr i64 %508 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.223, i32* %510, !mcsema_real_eip !134
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !135
  %511 = add i64 %RBP_val.224, -112, !mcsema_real_eip !135
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !135
  %513 = load i64, i64* %512, !mcsema_real_eip !135
  store i64 %513, i64* %XAX, !mcsema_real_eip !135
  %RSP_val.225 = load i64, i64* %XSP, !mcsema_real_eip !136
  %514 = add i64 104, %RSP_val.225, !mcsema_real_eip !136
  %515 = xor i64 %514, %RSP_val.225, !mcsema_real_eip !136
  %516 = xor i64 %515, 104, !mcsema_real_eip !136
  %517 = and i64 %516, 16, !mcsema_real_eip !136
  %518 = icmp ne i64 %517, 0, !mcsema_real_eip !136
  store i1 %518, i1* %AF, !mcsema_real_eip !136
  %519 = lshr i64 %514, 63, !mcsema_real_eip !136
  %520 = trunc i64 %519 to i1, !mcsema_real_eip !136
  store i1 %520, i1* %SF, !mcsema_real_eip !136
  %521 = icmp eq i64 %514, 0, !mcsema_real_eip !136
  store i1 %521, i1* %ZF, !mcsema_real_eip !136
  %522 = xor i64 %RSP_val.225, 104, !mcsema_real_eip !136
  %523 = xor i64 %522, -1, !mcsema_real_eip !136
  %524 = and i64 %523, %515, !mcsema_real_eip !136
  %525 = lshr i64 %524, 63, !mcsema_real_eip !136
  %526 = and i64 %525, 1, !mcsema_real_eip !136
  %527 = trunc i64 %526 to i1, !mcsema_real_eip !136
  store i1 %527, i1* %OF, !mcsema_real_eip !136
  %528 = trunc i64 %514 to i8, !mcsema_real_eip !136
  %529 = call i8 @llvm.ctpop.i8(i8 %528), !mcsema_real_eip !136
  %530 = trunc i8 %529 to i1, !mcsema_real_eip !136
  %531 = xor i1 %530, true, !mcsema_real_eip !136
  store i1 %531, i1* %PF, !mcsema_real_eip !136
  %532 = icmp ult i64 %514, %RSP_val.225, !mcsema_real_eip !136
  store i1 %532, i1* %CF, !mcsema_real_eip !136
  store i64 %514, i64* %XSP, !mcsema_real_eip !136
  %533 = inttoptr i64 %514 to i64*, !mcsema_real_eip !137
  %534 = load i64, i64* %533, !mcsema_real_eip !137
  store i64 %534, i64* %XBX, !mcsema_real_eip !137
  %535 = add i64 %514, 8, !mcsema_real_eip !137
  store i64 %535, i64* %XSP, !mcsema_real_eip !137
  %536 = inttoptr i64 %535 to i64*, !mcsema_real_eip !138
  %537 = load i64, i64* %536, !mcsema_real_eip !138
  store i64 %537, i64* %R14, !mcsema_real_eip !138
  %538 = add i64 %535, 8, !mcsema_real_eip !138
  store i64 %538, i64* %XSP, !mcsema_real_eip !138
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !139
  %540 = load i64, i64* %539, !mcsema_real_eip !139
  store i64 %540, i64* %R15, !mcsema_real_eip !139
  %541 = add i64 %538, 8, !mcsema_real_eip !139
  store i64 %541, i64* %XSP, !mcsema_real_eip !139
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !140
  %543 = load i64, i64* %542, !mcsema_real_eip !140
  store i64 %543, i64* %XBP, !mcsema_real_eip !140
  %544 = add i64 %541, 8, !mcsema_real_eip !140
  store i64 %544, i64* %XSP, !mcsema_real_eip !140
  %545 = add i64 %544, 8, !mcsema_real_eip !141
  %546 = inttoptr i64 %544 to i64*, !mcsema_real_eip !141
  %547 = load i64, i64* %546, !mcsema_real_eip !141
  store i64 %547, i64* %XIP, !mcsema_real_eip !141
  store i64 %545, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
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
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 267}
!6 = !{i64 272}
!7 = !{i64 274}
!8 = !{i64 281}
!9 = !{i64 288}
!10 = !{i64 295}
!11 = !{i64 302}
!12 = !{i64 307}
!13 = !{i64 311}
!14 = !{i64 317}
!15 = !{i64 323}
!16 = !{i64 328}
!17 = !{i64 332}
!18 = !{i64 336}
!19 = !{i64 342}
!20 = !{i64 346}
!21 = !{i64 353}
!22 = !{i64 357}
!23 = !{i64 364}
!24 = !{i64 368}
!25 = !{i64 372}
!26 = !{i64 376}
!27 = !{i64 380}
!28 = !{i64 384}
!29 = !{i64 388}
!30 = !{i64 392}
!31 = !{i64 396}
!32 = !{i64 400}
!33 = !{i64 403}
!34 = !{i64 406}
!35 = !{i64 410}
!36 = !{i64 414}
!37 = !{i64 417}
!38 = !{i64 420}
!39 = !{i64 423}
!40 = !{i64 430}
!41 = !{i64 433}
!42 = !{i64 438}
!43 = !{i64 442}
!44 = !{i64 447}
!45 = !{i64 452}
!46 = !{i64 456}
!47 = !{i64 461}
!48 = !{i64 466}
!49 = !{i64 476}
!50 = !{i64 480}
!51 = !{i64 484}
!52 = !{i64 486}
!53 = !{i64 490}
!54 = !{i64 493}
!55 = !{i64 497}
!56 = !{i64 500}
!57 = !{i64 503}
!58 = !{i64 506}
!59 = !{i64 508}
!60 = !{i64 513}
!61 = !{i64 516}
!62 = !{i64 519}
!63 = !{i64 521}
!64 = !{i64 528}
!65 = !{i64 529}
!66 = !{i64 0}
!67 = !{i64 1}
!68 = !{i64 4}
!69 = !{i64 6}
!70 = !{i64 8}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 21}
!75 = !{i64 25}
!76 = !{i64 28}
!77 = !{i64 34}
!78 = !{i64 37}
!79 = !{i64 41}
!80 = !{i64 44}
!81 = !{i64 48}
!82 = !{i64 52}
!83 = !{i64 55}
!84 = !{i64 58}
!85 = !{i64 62}
!86 = !{i64 66}
!87 = !{i64 70}
!88 = !{i64 74}
!89 = !{i64 77}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 88}
!93 = !{i64 92}
!94 = !{i64 97}
!95 = !{i64 101}
!96 = !{i64 104}
!97 = !{i64 108}
!98 = !{i64 110}
!99 = !{i64 114}
!100 = !{i64 116}
!101 = !{i64 120}
!102 = !{i64 123}
!103 = !{i64 127}
!104 = !{i64 130}
!105 = !{i64 134}
!106 = !{i64 137}
!107 = !{i64 140}
!108 = !{i64 144}
!109 = !{i64 146}
!110 = !{i64 149}
!111 = !{i64 153}
!112 = !{i64 156}
!113 = !{i64 160}
!114 = !{i64 163}
!115 = !{i64 167}
!116 = !{i64 171}
!117 = !{i64 175}
!118 = !{i64 179}
!119 = !{i64 183}
!120 = !{i64 186}
!121 = !{i64 190}
!122 = !{i64 193}
!123 = !{i64 196}
!124 = !{i64 200}
!125 = !{i64 203}
!126 = !{i64 207}
!127 = !{i64 210}
!128 = !{i64 214}
!129 = !{i64 218}
!130 = !{i64 222}
!131 = !{i64 226}
!132 = !{i64 230}
!133 = !{i64 233}
!134 = !{i64 237}
!135 = !{i64 240}
!136 = !{i64 244}
!137 = !{i64 248}
!138 = !{i64 249}
!139 = !{i64 251}
!140 = !{i64 253}
!141 = !{i64 254}
