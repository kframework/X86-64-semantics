; ModuleID = 'Output/test_23_1.clang.trans.bc'
source_filename = "Output/test_23_1.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [185 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb0 = internal constant %0 <{ [185 x i8] c"`\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00e\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00[\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00V\00\00\00\00\00\00\00w" }>, align 64
@data_0x169 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x170 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\AD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %25, !mcsema_real_eip !6
  %26 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0xb0 to i64), i64 184) to i8*), !mcsema_real_eip !7
  %AL.6 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 %26, i8* %AL.6, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %27 = add i64 %RBP_val.7, -9, !mcsema_real_eip !8
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !8
  %29 = inttoptr i64 %27 to i8*, !mcsema_real_eip !8
  store i8 %26, i8* %29, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x76, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.10, -8, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !9
  %33 = load i32, i32* %32, !mcsema_real_eip !9
  %34 = sub i32 %33, 1, !mcsema_real_eip !9
  %35 = xor i32 %34, %33, !mcsema_real_eip !9
  %36 = xor i32 %35, 1, !mcsema_real_eip !9
  %37 = and i32 %36, 16, !mcsema_real_eip !9
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !9
  store i1 %38, i1* %AF, !mcsema_real_eip !9
  %39 = trunc i32 %34 to i8, !mcsema_real_eip !9
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !9
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !9
  %42 = xor i1 %41, true, !mcsema_real_eip !9
  store i1 %42, i1* %PF, !mcsema_real_eip !9
  %43 = icmp eq i32 %34, 0, !mcsema_real_eip !9
  store i1 %43, i1* %ZF, !mcsema_real_eip !9
  %44 = lshr i32 %34, 31, !mcsema_real_eip !9
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !9
  store i1 %45, i1* %SF, !mcsema_real_eip !9
  %46 = icmp ult i32 %33, 1, !mcsema_real_eip !9
  store i1 %46, i1* %CF, !mcsema_real_eip !9
  %47 = xor i32 %33, 1, !mcsema_real_eip !9
  %48 = and i32 %47, %35, !mcsema_real_eip !9
  %49 = lshr i32 %48, 31, !mcsema_real_eip !9
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !9
  store i1 %50, i1* %OF, !mcsema_real_eip !9
  %51 = icmp eq i1 %45, %50, !mcsema_real_eip !10
  br i1 %51, label %block_0x84, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  %52 = load i32, i32* %32, !mcsema_real_eip !11
  %53 = sext i32 %52 to i64, !mcsema_real_eip !11
  store i64 %53, i64* %XAX, !mcsema_real_eip !11
  %54 = add i64 %RBP_val.10, -9, !mcsema_real_eip !12
  %55 = add i64 %54, %53, !mcsema_real_eip !12
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !12
  %57 = inttoptr i64 %55 to i8*, !mcsema_real_eip !12
  %58 = load i8, i8* %57, !mcsema_real_eip !12
  %59 = sext i8 %58 to i32, !mcsema_real_eip !12
  %60 = zext i32 %59 to i64, !mcsema_real_eip !12
  store i64 %60, i64* %XCX, !mcsema_real_eip !12
  %ECX.22 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.23 = load i32, i32* %ECX.22, !mcsema_real_eip !13
  %61 = add i32 -97, %ECX_val.23, !mcsema_real_eip !13
  %62 = xor i32 %61, %ECX_val.23, !mcsema_real_eip !13
  %63 = xor i32 %62, -97, !mcsema_real_eip !13
  %64 = and i32 %63, 16, !mcsema_real_eip !13
  %65 = icmp ne i32 %64, 0, !mcsema_real_eip !13
  store i1 %65, i1* %AF, !mcsema_real_eip !13
  %66 = lshr i32 %61, 31, !mcsema_real_eip !13
  %67 = trunc i32 %66 to i1, !mcsema_real_eip !13
  store i1 %67, i1* %SF, !mcsema_real_eip !13
  %68 = icmp eq i32 %61, 0, !mcsema_real_eip !13
  store i1 %68, i1* %ZF, !mcsema_real_eip !13
  %69 = xor i32 %ECX_val.23, -97, !mcsema_real_eip !13
  %70 = xor i32 %69, -1, !mcsema_real_eip !13
  %71 = and i32 %70, %62, !mcsema_real_eip !13
  %72 = lshr i32 %71, 31, !mcsema_real_eip !13
  %73 = and i32 %72, 1, !mcsema_real_eip !13
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !13
  store i1 %74, i1* %OF, !mcsema_real_eip !13
  %75 = trunc i32 %61 to i8, !mcsema_real_eip !13
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !13
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !13
  %78 = xor i1 %77, true, !mcsema_real_eip !13
  store i1 %78, i1* %PF, !mcsema_real_eip !13
  %79 = icmp ult i32 %61, %ECX_val.23, !mcsema_real_eip !13
  store i1 %79, i1* %CF, !mcsema_real_eip !13
  %80 = zext i32 %61 to i64, !mcsema_real_eip !13
  store i64 %80, i64* %XCX, !mcsema_real_eip !13
  %ECX_val.25 = load i32, i32* %ECX.22, !mcsema_real_eip !14
  %81 = zext i32 %ECX_val.25 to i64, !mcsema_real_eip !14
  store i64 %81, i64* %XAX, !mcsema_real_eip !14
  %82 = sub i32 %ECX_val.25, 22, !mcsema_real_eip !15
  %83 = xor i32 %82, %ECX_val.25, !mcsema_real_eip !15
  %84 = xor i32 %83, 22, !mcsema_real_eip !15
  %85 = and i32 %84, 16, !mcsema_real_eip !15
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !15
  store i1 %86, i1* %AF, !mcsema_real_eip !15
  %87 = trunc i32 %82 to i8, !mcsema_real_eip !15
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !15
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !15
  %90 = xor i1 %89, true, !mcsema_real_eip !15
  store i1 %90, i1* %PF, !mcsema_real_eip !15
  %91 = icmp eq i32 %82, 0, !mcsema_real_eip !15
  store i1 %91, i1* %ZF, !mcsema_real_eip !15
  %92 = lshr i32 %82, 31, !mcsema_real_eip !15
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !15
  store i1 %93, i1* %SF, !mcsema_real_eip !15
  %94 = icmp ult i32 %ECX_val.25, 22, !mcsema_real_eip !15
  store i1 %94, i1* %CF, !mcsema_real_eip !15
  %95 = xor i32 %ECX_val.25, 22, !mcsema_real_eip !15
  %96 = and i32 %95, %83, !mcsema_real_eip !15
  %97 = lshr i32 %96, 31, !mcsema_real_eip !15
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !15
  store i1 %98, i1* %OF, !mcsema_real_eip !15
  %99 = zext i32 %82 to i64, !mcsema_real_eip !15
  store i64 %99, i64* %XCX, !mcsema_real_eip !15
  %100 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !16
  store i64 %81, i64* %101, !mcsema_real_eip !16
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !17
  %102 = add i64 %RBP_val.30, -28, !mcsema_real_eip !17
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.22, !mcsema_real_eip !17
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !17
  store i32 %ECX_val.32, i32* %104, !mcsema_real_eip !17
  %105 = load i1, i1* %ZF, !mcsema_real_eip !18
  %106 = icmp eq i1 %105, false, !mcsema_real_eip !18
  %107 = load i1, i1* %CF, !mcsema_real_eip !18
  %108 = icmp eq i1 %107, false, !mcsema_real_eip !18
  %109 = and i1 %108, %106, !mcsema_real_eip !18
  br i1 %109, label %block_0x6a, label %block_0x48, !mcsema_real_eip !18

block_0x84:                                       ; preds = %block_0x20
  store i64 ptrtoint (%1* @data_0x169 to i64), i64* %XDI, !mcsema_real_eip !19
  store i64 1, i64* %XSI, !mcsema_real_eip !20
  store i8 0, i8* %AL.6, !mcsema_real_eip !21
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !22
  %110 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !22
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %111, !mcsema_real_eip !22
  store i64 %110, i64* %XSP, !mcsema_real_eip !22
  %112 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%1* @data_0x169 to i64), i64 1), !mcsema_real_eip !22
  store i64 %112, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !23
  %113 = add i64 %RBP_val.15, -4, !mcsema_real_eip !23
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !23
  %115 = inttoptr i64 %113 to i32*, !mcsema_real_eip !23
  store i32 1, i32* %115, !mcsema_real_eip !23
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !24
  %116 = add i64 %RBP_val.16, -32, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !24
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !24
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.18, i32* %118, !mcsema_real_eip !24
  br label %block_0xa4, !mcsema_real_eip !11

block_0xa4:                                       ; preds = %block_0x6a, %block_0x84
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %119 = add i64 %RBP_val.33, -4, !mcsema_real_eip !25
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !25
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !25
  %122 = load i32, i32* %121, !mcsema_real_eip !25
  %123 = zext i32 %122 to i64, !mcsema_real_eip !25
  store i64 %123, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !26
  %124 = add i64 32, %RSP_val.34, !mcsema_real_eip !26
  %125 = xor i64 %124, %RSP_val.34, !mcsema_real_eip !26
  %126 = xor i64 %125, 32, !mcsema_real_eip !26
  %127 = and i64 %126, 16, !mcsema_real_eip !26
  %128 = icmp ne i64 %127, 0, !mcsema_real_eip !26
  store i1 %128, i1* %AF, !mcsema_real_eip !26
  %129 = lshr i64 %124, 63, !mcsema_real_eip !26
  %130 = trunc i64 %129 to i1, !mcsema_real_eip !26
  store i1 %130, i1* %SF, !mcsema_real_eip !26
  %131 = icmp eq i64 %124, 0, !mcsema_real_eip !26
  store i1 %131, i1* %ZF, !mcsema_real_eip !26
  %132 = xor i64 %RSP_val.34, 32, !mcsema_real_eip !26
  %133 = xor i64 %132, -1, !mcsema_real_eip !26
  %134 = and i64 %133, %125, !mcsema_real_eip !26
  %135 = lshr i64 %134, 63, !mcsema_real_eip !26
  %136 = and i64 %135, 1, !mcsema_real_eip !26
  %137 = trunc i64 %136 to i1, !mcsema_real_eip !26
  store i1 %137, i1* %OF, !mcsema_real_eip !26
  %138 = trunc i64 %124 to i8, !mcsema_real_eip !26
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !26
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !26
  %141 = xor i1 %140, true, !mcsema_real_eip !26
  store i1 %141, i1* %PF, !mcsema_real_eip !26
  %142 = icmp ult i64 %124, %RSP_val.34, !mcsema_real_eip !26
  store i1 %142, i1* %CF, !mcsema_real_eip !26
  store i64 %124, i64* %XSP, !mcsema_real_eip !26
  %143 = inttoptr i64 %124 to i64*, !mcsema_real_eip !27
  %144 = load i64, i64* %143, !mcsema_real_eip !27
  store i64 %144, i64* %XBP, !mcsema_real_eip !27
  %145 = add i64 %124, 8, !mcsema_real_eip !27
  store i64 %145, i64* %XSP, !mcsema_real_eip !27
  %146 = add i64 %145, 8, !mcsema_real_eip !28
  %147 = inttoptr i64 %145 to i64*, !mcsema_real_eip !28
  %148 = load i64, i64* %147, !mcsema_real_eip !28
  store i64 %148, i64* %XIP, !mcsema_real_eip !28
  store i64 %146, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x48:                                       ; preds = %block_0x2a
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !29
  %149 = add i64 %RBP_val.38, -24, !mcsema_real_eip !29
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !29
  %151 = load i64, i64* %150, !mcsema_real_eip !29
  store i64 %151, i64* %XAX, !mcsema_real_eip !29
  %152 = mul i64 %151, 8, !mcsema_real_eip !30
  %153 = add i64 ptrtoint (%0* @data_0xb0 to i64), %152, !mcsema_real_eip !30
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !30
  %155 = load i64, i64* %154, !mcsema_real_eip !30
  store i64 %155, i64* %XCX, !mcsema_real_eip !30
  switch i64 %155, label %159 [
    i64 86, label %block_0x56
    i64 91, label %block_0x5b
    i64 101, label %block_0x65
    i64 106, label %block_0x6a
    i64 96, label %block_0x60
  ], !mcsema_real_eip !31

block_0x6a:                                       ; preds = %block_0x48, %block_0x2a
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !32
  %156 = add i64 %RBP_val.37, -4, !mcsema_real_eip !32
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !32
  %158 = inttoptr i64 %156 to i32*, !mcsema_real_eip !32
  store i32 1, i32* %158, !mcsema_real_eip !32
  br label %block_0xa4, !mcsema_real_eip !33

block_0x56:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !34

block_0x5b:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !35

block_0x60:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !36

block_0x65:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !37

; <label>:159:                                    ; preds = %block_0x48
  store i64 %155, i64* %XIP, !mcsema_real_eip !31
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x76:                                       ; preds = %block_0x65, %block_0x60, %block_0x5b, %block_0x56
  %160 = add i64 %RBP_val.38, -8, !mcsema_real_eip !38
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !38
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !38
  %163 = load i32, i32* %162, !mcsema_real_eip !38
  %164 = zext i32 %163 to i64, !mcsema_real_eip !38
  store i64 %164, i64* %XAX, !mcsema_real_eip !38
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !39
  %165 = add i32 1, %EAX_val.43, !mcsema_real_eip !39
  %166 = xor i32 %165, %EAX_val.43, !mcsema_real_eip !39
  %167 = xor i32 %166, 1, !mcsema_real_eip !39
  %168 = and i32 %167, 16, !mcsema_real_eip !39
  %169 = icmp ne i32 %168, 0, !mcsema_real_eip !39
  store i1 %169, i1* %AF, !mcsema_real_eip !39
  %170 = lshr i32 %165, 31, !mcsema_real_eip !39
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !39
  store i1 %171, i1* %SF, !mcsema_real_eip !39
  %172 = icmp eq i32 %165, 0, !mcsema_real_eip !39
  store i1 %172, i1* %ZF, !mcsema_real_eip !39
  %173 = xor i32 %EAX_val.43, 1, !mcsema_real_eip !39
  %174 = xor i32 %173, -1, !mcsema_real_eip !39
  %175 = and i32 %174, %166, !mcsema_real_eip !39
  %176 = lshr i32 %175, 31, !mcsema_real_eip !39
  %177 = and i32 %176, 1, !mcsema_real_eip !39
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !39
  store i1 %178, i1* %OF, !mcsema_real_eip !39
  %179 = trunc i32 %165 to i8, !mcsema_real_eip !39
  %180 = call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !39
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !39
  %182 = xor i1 %181, true, !mcsema_real_eip !39
  store i1 %182, i1* %PF, !mcsema_real_eip !39
  %183 = icmp ult i32 %165, %EAX_val.43, !mcsema_real_eip !39
  store i1 %183, i1* %CF, !mcsema_real_eip !39
  %184 = zext i32 %165 to i64, !mcsema_real_eip !39
  store i64 %184, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.46 = load i32, i32* %EAX.42, !mcsema_real_eip !40
  store i32 %EAX_val.46, i32* %162, !mcsema_real_eip !40
  br label %block_0x20, !mcsema_real_eip !41
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

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
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 46}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 66}
!19 = !{i64 132}
!20 = !{i64 142}
!21 = !{i64 147}
!22 = !{i64 149}
!23 = !{i64 154}
!24 = !{i64 161}
!25 = !{i64 164}
!26 = !{i64 167}
!27 = !{i64 171}
!28 = !{i64 172}
!29 = !{i64 72}
!30 = !{i64 76}
!31 = !{i64 84}
!32 = !{i64 106}
!33 = !{i64 113}
!34 = !{i64 86}
!35 = !{i64 91}
!36 = !{i64 96}
!37 = !{i64 101}
!38 = !{i64 118}
!39 = !{i64 121}
!40 = !{i64 124}
!41 = !{i64 127}
