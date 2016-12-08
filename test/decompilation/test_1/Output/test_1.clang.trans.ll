; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
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
  br label %block_0x70, !mcsema_real_eip !2

block_0x70:                                       ; preds = %entry
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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  %20 = add i64 %1, -4, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !7
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %22, !mcsema_real_eip !7
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !8
  %23 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !8
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !8
  store i64 %23, i64* %XSP, !mcsema_real_eip !8
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !9
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !10
  %25 = add i64 %RBP_val.6, -8, !mcsema_real_eip !10
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !10
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !10
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %27, !mcsema_real_eip !10
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !11
  %28 = add i64 %RBP_val.9, -8, !mcsema_real_eip !11
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !11
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !11
  %31 = load i32, i32* %30, !mcsema_real_eip !11
  %32 = zext i32 %31 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XSI, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, !mcsema_real_eip !13
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !13
  %33 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !13
  %34 = load i64, i64* %33, !mcsema_real_eip !13
  %35 = add i64 %RSP_val.17, 8, !mcsema_real_eip !13
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !13
  %37 = load i64, i64* %36, !mcsema_real_eip !13
  %38 = add i64 %35, 8, !mcsema_real_eip !13
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !13
  %40 = load i64, i64* %39, !mcsema_real_eip !13
  %41 = add i64 %38, 8, !mcsema_real_eip !13
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !13
  %43 = load i64, i64* %42, !mcsema_real_eip !13
  %44 = add i64 %41, 8, !mcsema_real_eip !13
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !13
  %46 = load i64, i64* %45, !mcsema_real_eip !13
  %47 = add i64 %44, 8, !mcsema_real_eip !13
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !13
  %49 = load i64, i64* %48, !mcsema_real_eip !13
  %50 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !13
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !13
  store i64 -2415393069852865332, i64* %51, !mcsema_real_eip !13
  store i64 %50, i64* %XSP, !mcsema_real_eip !13
  %52 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %32, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49), !mcsema_real_eip !13
  store i64 %52, i64* %XAX, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %53 = add i64 %RBP_val.19, -8, !mcsema_real_eip !14
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !14
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !14
  %56 = load i32, i32* %55, !mcsema_real_eip !14
  %57 = zext i32 %56 to i64, !mcsema_real_eip !14
  store i64 %57, i64* %XSI, !mcsema_real_eip !14
  %58 = add i64 %RBP_val.19, -12, !mcsema_real_eip !15
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !15
  %EAX_val.22 = load i32, i32* %EAX.7, !mcsema_real_eip !15
  %60 = inttoptr i64 %58 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.22, i32* %60, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, !mcsema_real_eip !16
  %61 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %61, i64* %XAX, !mcsema_real_eip !16
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !17
  %62 = add i64 16, %RSP_val.25, !mcsema_real_eip !17
  %63 = xor i64 %62, %RSP_val.25, !mcsema_real_eip !17
  %64 = xor i64 %63, 16, !mcsema_real_eip !17
  %65 = and i64 %64, 16, !mcsema_real_eip !17
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !17
  store i1 %66, i1* %AF, !mcsema_real_eip !17
  %67 = lshr i64 %62, 63, !mcsema_real_eip !17
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !17
  store i1 %68, i1* %SF, !mcsema_real_eip !17
  %69 = icmp eq i64 %62, 0, !mcsema_real_eip !17
  store i1 %69, i1* %ZF, !mcsema_real_eip !17
  %70 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %71 = xor i64 %70, -1, !mcsema_real_eip !17
  %72 = and i64 %71, %63, !mcsema_real_eip !17
  %73 = lshr i64 %72, 63, !mcsema_real_eip !17
  %74 = and i64 %73, 1, !mcsema_real_eip !17
  %75 = trunc i64 %74 to i1, !mcsema_real_eip !17
  store i1 %75, i1* %OF, !mcsema_real_eip !17
  %76 = trunc i64 %62 to i8, !mcsema_real_eip !17
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !17
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !17
  %79 = xor i1 %78, true, !mcsema_real_eip !17
  store i1 %79, i1* %PF, !mcsema_real_eip !17
  %80 = icmp ult i64 %62, %RSP_val.25, !mcsema_real_eip !17
  store i1 %80, i1* %CF, !mcsema_real_eip !17
  store i64 %62, i64* %XSP, !mcsema_real_eip !17
  %81 = inttoptr i64 %62 to i64*, !mcsema_real_eip !18
  %82 = load i64, i64* %81, !mcsema_real_eip !18
  store i64 %82, i64* %XBP, !mcsema_real_eip !18
  %83 = add i64 %62, 8, !mcsema_real_eip !18
  store i64 %83, i64* %XSP, !mcsema_real_eip !18
  %84 = add i64 %83, 8, !mcsema_real_eip !19
  %85 = inttoptr i64 %83 to i64*, !mcsema_real_eip !19
  %86 = load i64, i64* %85, !mcsema_real_eip !19
  store i64 %86, i64* %XIP, !mcsema_real_eip !19
  store i64 %84, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !20
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !20
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !20
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !20
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !20
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !20
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !20
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !20
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !20
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !20
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !20
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !20
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !20
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !20
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !20
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !20
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !20
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !20
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !20
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !20
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !20
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !20
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !20
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !20
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !20
  br label %block_0x0, !mcsema_real_eip !20

block_0x0:                                        ; preds = %entry
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !20
  %1 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !20
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !20
  store i64 %RBP_val.28, i64* %2, !mcsema_real_eip !20
  store i64 %1, i64* %XSP, !mcsema_real_eip !20
  store i64 %1, i64* %XBP, !mcsema_real_eip !21
  %3 = add i64 %1, -4, !mcsema_real_eip !22
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !22
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %5, !mcsema_real_eip !22
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !23
  %6 = add i64 %RBP_val.34, -8, !mcsema_real_eip !23
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !23
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, !mcsema_real_eip !23
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %8, !mcsema_real_eip !23
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !24
  %9 = add i64 %RBP_val.37, -4, !mcsema_real_eip !24
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !24
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !24
  %12 = load i32, i32* %11, !mcsema_real_eip !24
  %13 = zext i32 %12 to i64, !mcsema_real_eip !24
  store i64 %13, i64* %XSI, !mcsema_real_eip !24
  %14 = add i64 %RBP_val.37, -8, !mcsema_real_eip !25
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !25
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !25
  %17 = load i32, i32* %16, !mcsema_real_eip !25
  %ESI_val.40 = load i32, i32* %ESI.35, !mcsema_real_eip !25
  %18 = add i32 %ESI_val.40, %17, !mcsema_real_eip !25
  %19 = xor i32 %18, %17, !mcsema_real_eip !25
  %20 = xor i32 %19, %ESI_val.40, !mcsema_real_eip !25
  %21 = and i32 %20, 16, !mcsema_real_eip !25
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !25
  store i1 %22, i1* %AF, !mcsema_real_eip !25
  %23 = lshr i32 %18, 31, !mcsema_real_eip !25
  %24 = trunc i32 %23 to i1, !mcsema_real_eip !25
  store i1 %24, i1* %SF, !mcsema_real_eip !25
  %25 = icmp eq i32 %18, 0, !mcsema_real_eip !25
  store i1 %25, i1* %ZF, !mcsema_real_eip !25
  %26 = xor i32 %17, %ESI_val.40, !mcsema_real_eip !25
  %27 = xor i32 %26, -1, !mcsema_real_eip !25
  %28 = and i32 %27, %19, !mcsema_real_eip !25
  %29 = lshr i32 %28, 31, !mcsema_real_eip !25
  %30 = and i32 %29, 1, !mcsema_real_eip !25
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !25
  store i1 %31, i1* %OF, !mcsema_real_eip !25
  %32 = trunc i32 %18 to i8, !mcsema_real_eip !25
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !25
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !25
  %35 = xor i1 %34, true, !mcsema_real_eip !25
  store i1 %35, i1* %PF, !mcsema_real_eip !25
  %36 = icmp ult i32 %18, %17, !mcsema_real_eip !25
  store i1 %36, i1* %CF, !mcsema_real_eip !25
  %37 = zext i32 %18 to i64, !mcsema_real_eip !25
  store i64 %37, i64* %XSI, !mcsema_real_eip !25
  %38 = add i64 %RBP_val.37, -12, !mcsema_real_eip !26
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !26
  %ESI_val.43 = load i32, i32* %ESI.35, !mcsema_real_eip !26
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !26
  store i32 %ESI_val.43, i32* %40, !mcsema_real_eip !26
  br label %block_0x13, !mcsema_real_eip !27

block_0x13:                                       ; preds = %block_0x50, %block_0x0
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !27
  %41 = add i64 %RBP_val.44, -4, !mcsema_real_eip !27
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !27
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !27
  %44 = load i32, i32* %43, !mcsema_real_eip !27
  store i1 false, i1* %AF, !mcsema_real_eip !27
  %45 = trunc i32 %44 to i8, !mcsema_real_eip !27
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !27
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !27
  %48 = xor i1 %47, true, !mcsema_real_eip !27
  store i1 %48, i1* %PF, !mcsema_real_eip !27
  %49 = icmp eq i32 %44, 0, !mcsema_real_eip !27
  store i1 %49, i1* %ZF, !mcsema_real_eip !27
  %50 = lshr i32 %44, 31, !mcsema_real_eip !27
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !27
  store i1 %51, i1* %SF, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  %52 = icmp eq i1 %51, false, !mcsema_real_eip !28
  %53 = icmp eq i1 %52, false, !mcsema_real_eip !28
  br i1 %53, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !28

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, !mcsema_real_eip !29
  %54 = load i32, i32* %43, !mcsema_real_eip !30
  %55 = zext i32 %54 to i64, !mcsema_real_eip !30
  store i64 %55, i64* %XCX, !mcsema_real_eip !30
  %56 = add i64 %RBP_val.44, -20, !mcsema_real_eip !31
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !31
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !31
  %58 = inttoptr i64 %56 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.51, i32* %58, !mcsema_real_eip !31
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, !mcsema_real_eip !32
  %59 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !32
  store i64 %59, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.55 = load i32, i32* %EAX.50, !mcsema_real_eip !33
  %60 = and i32 %EAX_val.55, -2147483648, !mcsema_real_eip !33
  %61 = icmp eq i32 %60, 0, !mcsema_real_eip !33
  %62 = select i1 %61, i32 0, i32 -1, !mcsema_real_eip !33
  %63 = zext i32 %62 to i64, !mcsema_real_eip !33
  store i64 %63, i64* %XDX, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !34
  %64 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !34
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !34
  %67 = load i32, i32* %66, !mcsema_real_eip !34
  %68 = zext i32 %67 to i64, !mcsema_real_eip !34
  store i64 %68, i64* %XCX, !mcsema_real_eip !34
  %ECX_val.58 = load i32, i32* %ECX.52, !mcsema_real_eip !35
  %EDX.61 = bitcast i64* %XDX to i32*, !mcsema_real_eip !35
  %EDX_val.62 = load i32, i32* %EDX.61, !mcsema_real_eip !35
  %69 = zext i32 %EDX_val.62 to i64, !mcsema_real_eip !35
  %70 = shl i64 %69, 32, !mcsema_real_eip !35
  %71 = sext i32 %EAX_val.55 to i64, !mcsema_real_eip !35
  %72 = or i64 %70, %71, !mcsema_real_eip !35
  %73 = sext i32 %ECX_val.58 to i64, !mcsema_real_eip !35
  %74 = sdiv i64 %72, %73, !mcsema_real_eip !35
  %75 = srem i64 %72, %73, !mcsema_real_eip !35
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !35
  %77 = trunc i64 %74 to i32, !mcsema_real_eip !35
  %78 = zext i32 %76 to i64, !mcsema_real_eip !35
  store i64 %78, i64* %XDX, !mcsema_real_eip !35
  %79 = zext i32 %77 to i64, !mcsema_real_eip !35
  store i64 %79, i64* %XAX, !mcsema_real_eip !35
  %EDX_val.64 = load i32, i32* %EDX.61, !mcsema_real_eip !36
  store i1 false, i1* %AF, !mcsema_real_eip !36
  %80 = trunc i32 %EDX_val.64 to i8, !mcsema_real_eip !36
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !36
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !36
  %83 = xor i1 %82, true, !mcsema_real_eip !36
  store i1 %83, i1* %PF, !mcsema_real_eip !36
  %84 = icmp eq i32 %EDX_val.64, 0, !mcsema_real_eip !36
  store i1 %84, i1* %ZF, !mcsema_real_eip !36
  %85 = lshr i32 %EDX_val.64, 31, !mcsema_real_eip !36
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !36
  store i1 %86, i1* %SF, !mcsema_real_eip !36
  store i1 false, i1* %CF, !mcsema_real_eip !36
  store i1 false, i1* %OF, !mcsema_real_eip !36
  %87 = icmp eq i1 %84, false, !mcsema_real_eip !37
  br i1 %87, label %block_0x47, label %block_0x39, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %block_0x13
  %88 = add i64 %RBP_val.44, -16, !mcsema_real_eip !38
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !38
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !38
  %91 = load i32, i32* %90, !mcsema_real_eip !38
  %92 = zext i32 %91 to i64, !mcsema_real_eip !38
  store i64 %92, i64* %XAX, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !39
  %93 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %94 = load i64, i64* %93, !mcsema_real_eip !39
  store i64 %94, i64* %XBP, !mcsema_real_eip !39
  %95 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %95, i64* %XSP, !mcsema_real_eip !39
  %96 = add i64 %95, 8, !mcsema_real_eip !40
  %97 = inttoptr i64 %95 to i64*, !mcsema_real_eip !40
  %98 = load i64, i64* %97, !mcsema_real_eip !40
  store i64 %98, i64* %XIP, !mcsema_real_eip !40
  store i64 %96, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %99 = add i64 %RBP_val.56, -12, !mcsema_real_eip !41
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !41
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !41
  %102 = load i32, i32* %101, !mcsema_real_eip !41
  %103 = zext i32 %102 to i64, !mcsema_real_eip !41
  store i64 %103, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.73 = load i32, i32* %EAX.50, !mcsema_real_eip !42
  %104 = add i32 10, %EAX_val.73, !mcsema_real_eip !42
  %105 = xor i32 %104, %EAX_val.73, !mcsema_real_eip !42
  %106 = xor i32 %105, 10, !mcsema_real_eip !42
  %107 = and i32 %106, 16, !mcsema_real_eip !42
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !42
  store i1 %108, i1* %AF, !mcsema_real_eip !42
  %109 = lshr i32 %104, 31, !mcsema_real_eip !42
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !42
  store i1 %110, i1* %SF, !mcsema_real_eip !42
  %111 = icmp eq i32 %104, 0, !mcsema_real_eip !42
  store i1 %111, i1* %ZF, !mcsema_real_eip !42
  %112 = xor i32 %EAX_val.73, 10, !mcsema_real_eip !42
  %113 = xor i32 %112, -1, !mcsema_real_eip !42
  %114 = and i32 %113, %105, !mcsema_real_eip !42
  %115 = lshr i32 %114, 31, !mcsema_real_eip !42
  %116 = and i32 %115, 1, !mcsema_real_eip !42
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !42
  store i1 %117, i1* %OF, !mcsema_real_eip !42
  %118 = trunc i32 %104 to i8, !mcsema_real_eip !42
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !42
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !42
  %121 = xor i1 %120, true, !mcsema_real_eip !42
  store i1 %121, i1* %PF, !mcsema_real_eip !42
  %122 = icmp ult i32 %104, %EAX_val.73, !mcsema_real_eip !42
  store i1 %122, i1* %CF, !mcsema_real_eip !42
  %123 = zext i32 %104 to i64, !mcsema_real_eip !42
  store i64 %123, i64* %XAX, !mcsema_real_eip !42
  %124 = add i64 %RBP_val.56, -16, !mcsema_real_eip !43
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !43
  %EAX_val.76 = load i32, i32* %EAX.50, !mcsema_real_eip !43
  %126 = inttoptr i64 %124 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.76, i32* %126, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x47:                                       ; preds = %block_0x1d
  %127 = add i64 %RBP_val.56, -12, !mcsema_real_eip !45
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !45
  %129 = inttoptr i64 %127 to i32*, !mcsema_real_eip !45
  %130 = load i32, i32* %129, !mcsema_real_eip !45
  %131 = zext i32 %130 to i64, !mcsema_real_eip !45
  store i64 %131, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.67 = load i32, i32* %EAX.50, !mcsema_real_eip !46
  %132 = sub i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %133 = xor i32 %132, %EAX_val.67, !mcsema_real_eip !46
  %134 = xor i32 %133, 10, !mcsema_real_eip !46
  %135 = and i32 %134, 16, !mcsema_real_eip !46
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !46
  store i1 %136, i1* %AF, !mcsema_real_eip !46
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !46
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !46
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !46
  %140 = xor i1 %139, true, !mcsema_real_eip !46
  store i1 %140, i1* %PF, !mcsema_real_eip !46
  %141 = icmp eq i32 %132, 0, !mcsema_real_eip !46
  store i1 %141, i1* %ZF, !mcsema_real_eip !46
  %142 = lshr i32 %132, 31, !mcsema_real_eip !46
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !46
  store i1 %143, i1* %SF, !mcsema_real_eip !46
  %144 = icmp ult i32 %EAX_val.67, 10, !mcsema_real_eip !46
  store i1 %144, i1* %CF, !mcsema_real_eip !46
  %145 = xor i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %146 = and i32 %145, %133, !mcsema_real_eip !46
  %147 = lshr i32 %146, 31, !mcsema_real_eip !46
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !46
  store i1 %148, i1* %OF, !mcsema_real_eip !46
  %149 = zext i32 %132 to i64, !mcsema_real_eip !46
  store i64 %149, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.70 = load i32, i32* %EAX.50, !mcsema_real_eip !47
  store i32 %EAX_val.70, i32* %129, !mcsema_real_eip !47
  br label %block_0x50, !mcsema_real_eip !41

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !48
  %150 = add i64 %RBP_val.77, -4, !mcsema_real_eip !48
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !48
  %152 = inttoptr i64 %150 to i32*, !mcsema_real_eip !48
  %153 = load i32, i32* %152, !mcsema_real_eip !48
  %154 = zext i32 %153 to i64, !mcsema_real_eip !48
  store i64 %154, i64* %XAX, !mcsema_real_eip !48
  %EAX_val.79 = load i32, i32* %EAX.50, !mcsema_real_eip !49
  %155 = add i32 -1, %EAX_val.79, !mcsema_real_eip !49
  %156 = xor i32 %155, %EAX_val.79, !mcsema_real_eip !49
  %157 = xor i32 %156, -1, !mcsema_real_eip !49
  %158 = and i32 %157, 16, !mcsema_real_eip !49
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !49
  store i1 %159, i1* %AF, !mcsema_real_eip !49
  %160 = lshr i32 %155, 31, !mcsema_real_eip !49
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !49
  store i1 %161, i1* %SF, !mcsema_real_eip !49
  %162 = icmp eq i32 %155, 0, !mcsema_real_eip !49
  store i1 %162, i1* %ZF, !mcsema_real_eip !49
  %163 = xor i32 %EAX_val.79, -1, !mcsema_real_eip !49
  %164 = and i32 %EAX_val.79, %156, !mcsema_real_eip !49
  %165 = lshr i32 %164, 31, !mcsema_real_eip !49
  %166 = and i32 %165, 1, !mcsema_real_eip !49
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !49
  store i1 %167, i1* %OF, !mcsema_real_eip !49
  %168 = trunc i32 %155 to i8, !mcsema_real_eip !49
  %169 = call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !49
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !49
  %171 = xor i1 %170, true, !mcsema_real_eip !49
  store i1 %171, i1* %PF, !mcsema_real_eip !49
  %172 = icmp ult i32 %155, %EAX_val.79, !mcsema_real_eip !49
  store i1 %172, i1* %CF, !mcsema_real_eip !49
  %173 = zext i32 %155 to i64, !mcsema_real_eip !49
  store i64 %173, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.82 = load i32, i32* %EAX.50, !mcsema_real_eip !50
  store i32 %EAX_val.82, i32* %152, !mcsema_real_eip !50
  br label %block_0x13, !mcsema_real_eip !51
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 152}
!11 = !{i64 155}
!12 = !{i64 158}
!13 = !{i64 160}
!14 = !{i64 165}
!15 = !{i64 168}
!16 = !{i64 171}
!17 = !{i64 173}
!18 = !{i64 177}
!19 = !{i64 178}
!20 = !{i64 0}
!21 = !{i64 1}
!22 = !{i64 4}
!23 = !{i64 7}
!24 = !{i64 10}
!25 = !{i64 13}
!26 = !{i64 16}
!27 = !{i64 19}
!28 = !{i64 23}
!29 = !{i64 29}
!30 = !{i64 34}
!31 = !{i64 37}
!32 = !{i64 40}
!33 = !{i64 42}
!34 = !{i64 43}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 94}
!39 = !{i64 97}
!40 = !{i64 98}
!41 = !{i64 57}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 71}
!46 = !{i64 74}
!47 = !{i64 77}
!48 = !{i64 80}
!49 = !{i64 83}
!50 = !{i64 86}
!51 = !{i64 89}
