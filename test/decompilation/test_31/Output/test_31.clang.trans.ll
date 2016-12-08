; ModuleID = 'Output/test_31.clang.trans.bc'
source_filename = "Output/test_31.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xa0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  store i64 5, i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %22, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %23 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !7
  store i64 %23, i64* %XSP, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !9
  %25 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %25, i64* %XSI, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !11
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %26 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %27 = load i64, i64* %26, !mcsema_real_eip !11
  %28 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !11
  %30 = load i64, i64* %29, !mcsema_real_eip !11
  %31 = add i64 %28, 8, !mcsema_real_eip !11
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !11
  %33 = load i64, i64* %32, !mcsema_real_eip !11
  %34 = add i64 %31, 8, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  %36 = load i64, i64* %35, !mcsema_real_eip !11
  %37 = add i64 %34, 8, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !11
  %39 = load i64, i64* %38, !mcsema_real_eip !11
  %40 = add i64 %37, 8, !mcsema_real_eip !11
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !11
  %42 = load i64, i64* %41, !mcsema_real_eip !11
  %43 = sub i64 %RSP_val.15, 8, !mcsema_real_eip !11
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %44, !mcsema_real_eip !11
  store i64 %43, i64* %XSP, !mcsema_real_eip !11
  %45 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %25, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42), !mcsema_real_eip !11
  store i64 %45, i64* %XAX, !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.18 = load i32, i32* %ESI.17, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  store i1 false, i1* %SF, !mcsema_real_eip !12
  store i1 true, i1* %ZF, !mcsema_real_eip !12
  store i1 true, i1* %PF, !mcsema_real_eip !12
  store i1 undef, i1* %AF, !mcsema_real_eip !12
  store i64 0, i64* %XSI, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %46 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.6, !mcsema_real_eip !13
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %48, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, !mcsema_real_eip !14
  %49 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %49, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !15
  %50 = add i64 16, %RSP_val.26, !mcsema_real_eip !15
  %51 = xor i64 %50, %RSP_val.26, !mcsema_real_eip !15
  %52 = xor i64 %51, 16, !mcsema_real_eip !15
  %53 = and i64 %52, 16, !mcsema_real_eip !15
  %54 = icmp ne i64 %53, 0, !mcsema_real_eip !15
  store i1 %54, i1* %AF, !mcsema_real_eip !15
  %55 = lshr i64 %50, 63, !mcsema_real_eip !15
  %56 = trunc i64 %55 to i1, !mcsema_real_eip !15
  store i1 %56, i1* %SF, !mcsema_real_eip !15
  %57 = icmp eq i64 %50, 0, !mcsema_real_eip !15
  store i1 %57, i1* %ZF, !mcsema_real_eip !15
  %58 = xor i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %59 = xor i64 %58, -1, !mcsema_real_eip !15
  %60 = and i64 %59, %51, !mcsema_real_eip !15
  %61 = lshr i64 %60, 63, !mcsema_real_eip !15
  %62 = and i64 %61, 1, !mcsema_real_eip !15
  %63 = trunc i64 %62 to i1, !mcsema_real_eip !15
  store i1 %63, i1* %OF, !mcsema_real_eip !15
  %64 = trunc i64 %50 to i8, !mcsema_real_eip !15
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !15
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !15
  %67 = xor i1 %66, true, !mcsema_real_eip !15
  store i1 %67, i1* %PF, !mcsema_real_eip !15
  %68 = icmp ult i64 %50, %RSP_val.26, !mcsema_real_eip !15
  store i1 %68, i1* %CF, !mcsema_real_eip !15
  store i64 %50, i64* %XSP, !mcsema_real_eip !15
  %69 = inttoptr i64 %50 to i64*, !mcsema_real_eip !16
  %70 = load i64, i64* %69, !mcsema_real_eip !16
  store i64 %70, i64* %XBP, !mcsema_real_eip !16
  %71 = add i64 %50, 8, !mcsema_real_eip !16
  store i64 %71, i64* %XSP, !mcsema_real_eip !16
  %72 = add i64 %71, 8, !mcsema_real_eip !17
  %73 = inttoptr i64 %71 to i64*, !mcsema_real_eip !17
  %74 = load i64, i64* %73, !mcsema_real_eip !17
  store i64 %74, i64* %XIP, !mcsema_real_eip !17
  store i64 %72, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !18
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !18
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !18
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !18
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !18
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !18
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !18
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !18
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !18
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !18
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !18
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !18
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !18
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !18
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !18
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !18
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !18
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !18
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !18
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !18
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !18
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !18
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !18
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !18
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !18
  br label %block_0x0, !mcsema_real_eip !18

block_0x0:                                        ; preds = %entry
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %1 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !18
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.29, i64* %2, !mcsema_real_eip !18
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %3 = sub i64 %1, 16, !mcsema_real_eip !20
  %4 = xor i64 %3, %1, !mcsema_real_eip !20
  %5 = xor i64 %4, 16, !mcsema_real_eip !20
  %6 = and i64 %5, 16, !mcsema_real_eip !20
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !20
  store i1 %7, i1* %AF, !mcsema_real_eip !20
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !20
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !20
  %11 = xor i1 %10, true, !mcsema_real_eip !20
  store i1 %11, i1* %PF, !mcsema_real_eip !20
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %12, i1* %ZF, !mcsema_real_eip !20
  %13 = lshr i64 %3, 63, !mcsema_real_eip !20
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !20
  store i1 %14, i1* %SF, !mcsema_real_eip !20
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !20
  store i1 %15, i1* %CF, !mcsema_real_eip !20
  %16 = xor i64 %1, 16, !mcsema_real_eip !20
  %17 = and i64 %16, %4, !mcsema_real_eip !20
  %18 = lshr i64 %17, 63, !mcsema_real_eip !20
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !20
  store i1 %19, i1* %OF, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, !mcsema_real_eip !20
  store i64 1, i64* %XAX, !mcsema_real_eip !21
  %20 = add i64 %1, -8, !mcsema_real_eip !22
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, !mcsema_real_eip !22
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %22, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !23
  %23 = add i64 %RBP_val.36, -8, !mcsema_real_eip !23
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !23
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !23
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !23
  %26 = load i32, i32* %25, !mcsema_real_eip !23
  %27 = sub i32 %EAX_val.38, %26, !mcsema_real_eip !23
  %28 = xor i32 %27, %EAX_val.38, !mcsema_real_eip !23
  %29 = xor i32 %28, %26, !mcsema_real_eip !23
  %30 = and i32 %29, 16, !mcsema_real_eip !23
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !23
  store i1 %31, i1* %AF, !mcsema_real_eip !23
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !23
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !23
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !23
  %35 = xor i1 %34, true, !mcsema_real_eip !23
  store i1 %35, i1* %PF, !mcsema_real_eip !23
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !23
  store i1 %36, i1* %ZF, !mcsema_real_eip !23
  %37 = lshr i32 %27, 31, !mcsema_real_eip !23
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !23
  store i1 %38, i1* %SF, !mcsema_real_eip !23
  %39 = icmp ult i32 %EAX_val.38, %26, !mcsema_real_eip !23
  store i1 %39, i1* %CF, !mcsema_real_eip !23
  %40 = xor i32 %EAX_val.38, %26, !mcsema_real_eip !23
  %41 = and i32 %40, %28, !mcsema_real_eip !23
  %42 = lshr i32 %41, 31, !mcsema_real_eip !23
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !23
  store i1 %43, i1* %OF, !mcsema_real_eip !23
  br i1 %36, label %block_0x24, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %block_0x0
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  store i1 false, i1* %SF, !mcsema_real_eip !25
  store i1 true, i1* %ZF, !mcsema_real_eip !25
  store i1 true, i1* %PF, !mcsema_real_eip !25
  store i1 undef, i1* %AF, !mcsema_real_eip !25
  store i64 0, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.46 = load i32, i32* %EAX.37, !mcsema_real_eip !26
  %44 = load i32, i32* %25, !mcsema_real_eip !26
  %45 = sub i32 %EAX_val.46, %44, !mcsema_real_eip !26
  %46 = xor i32 %45, %EAX_val.46, !mcsema_real_eip !26
  %47 = xor i32 %46, %44, !mcsema_real_eip !26
  %48 = and i32 %47, 16, !mcsema_real_eip !26
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !26
  store i1 %49, i1* %AF, !mcsema_real_eip !26
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !26
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !26
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !26
  %53 = xor i1 %52, true, !mcsema_real_eip !26
  store i1 %53, i1* %PF, !mcsema_real_eip !26
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !26
  store i1 %54, i1* %ZF, !mcsema_real_eip !26
  %55 = lshr i32 %45, 31, !mcsema_real_eip !26
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !26
  store i1 %56, i1* %SF, !mcsema_real_eip !26
  %57 = icmp ult i32 %EAX_val.46, %44, !mcsema_real_eip !26
  store i1 %57, i1* %CF, !mcsema_real_eip !26
  %58 = xor i32 %EAX_val.46, %44, !mcsema_real_eip !26
  %59 = and i32 %58, %46, !mcsema_real_eip !26
  %60 = lshr i32 %59, 31, !mcsema_real_eip !26
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !26
  store i1 %61, i1* %OF, !mcsema_real_eip !26
  %62 = icmp eq i1 %54, false, !mcsema_real_eip !27
  br i1 %62, label %block_0x30, label %block_0x24, !mcsema_real_eip !27

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %63 = add i64 %RBP_val.36, -4, !mcsema_real_eip !28
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !28
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !28
  store i32 1, i32* %65, !mcsema_real_eip !28
  br label %block_0x53, !mcsema_real_eip !29

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !30
  %66 = add i64 %RBP_val.47, -4, !mcsema_real_eip !30
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !30
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !30
  %69 = load i32, i32* %68, !mcsema_real_eip !30
  %70 = zext i32 %69 to i64, !mcsema_real_eip !30
  store i64 %70, i64* %XAX, !mcsema_real_eip !30
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %71 = add i64 16, %RSP_val.48, !mcsema_real_eip !31
  %72 = xor i64 %71, %RSP_val.48, !mcsema_real_eip !31
  %73 = xor i64 %72, 16, !mcsema_real_eip !31
  %74 = and i64 %73, 16, !mcsema_real_eip !31
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !31
  store i1 %75, i1* %AF, !mcsema_real_eip !31
  %76 = lshr i64 %71, 63, !mcsema_real_eip !31
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !31
  store i1 %77, i1* %SF, !mcsema_real_eip !31
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !31
  store i1 %78, i1* %ZF, !mcsema_real_eip !31
  %79 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !31
  %80 = xor i64 %79, -1, !mcsema_real_eip !31
  %81 = and i64 %80, %72, !mcsema_real_eip !31
  %82 = lshr i64 %81, 63, !mcsema_real_eip !31
  %83 = and i64 %82, 1, !mcsema_real_eip !31
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !31
  store i1 %84, i1* %OF, !mcsema_real_eip !31
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !31
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !31
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !31
  %88 = xor i1 %87, true, !mcsema_real_eip !31
  store i1 %88, i1* %PF, !mcsema_real_eip !31
  %89 = icmp ult i64 %71, %RSP_val.48, !mcsema_real_eip !31
  store i1 %89, i1* %CF, !mcsema_real_eip !31
  store i64 %71, i64* %XSP, !mcsema_real_eip !31
  %90 = inttoptr i64 %71 to i64*, !mcsema_real_eip !32
  %91 = load i64, i64* %90, !mcsema_real_eip !32
  store i64 %91, i64* %XBP, !mcsema_real_eip !32
  %92 = add i64 %71, 8, !mcsema_real_eip !32
  store i64 %92, i64* %XSP, !mcsema_real_eip !32
  %93 = add i64 %92, 8, !mcsema_real_eip !33
  %94 = inttoptr i64 %92 to i64*, !mcsema_real_eip !33
  %95 = load i64, i64* %94, !mcsema_real_eip !33
  store i64 %95, i64* %XIP, !mcsema_real_eip !33
  store i64 %93, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x30:                                       ; preds = %block_0x19
  %96 = load i32, i32* %25, !mcsema_real_eip !34
  %97 = zext i32 %96 to i64, !mcsema_real_eip !34
  store i64 %97, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.53 = load i32, i32* %EAX.37, !mcsema_real_eip !35
  %98 = sub i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %99 = xor i32 %98, %EAX_val.53, !mcsema_real_eip !35
  %100 = xor i32 %99, 1, !mcsema_real_eip !35
  %101 = and i32 %100, 16, !mcsema_real_eip !35
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !35
  store i1 %102, i1* %AF, !mcsema_real_eip !35
  %103 = trunc i32 %98 to i8, !mcsema_real_eip !35
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !35
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !35
  %106 = xor i1 %105, true, !mcsema_real_eip !35
  store i1 %106, i1* %PF, !mcsema_real_eip !35
  %107 = icmp eq i32 %98, 0, !mcsema_real_eip !35
  store i1 %107, i1* %ZF, !mcsema_real_eip !35
  %108 = lshr i32 %98, 31, !mcsema_real_eip !35
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !35
  store i1 %109, i1* %SF, !mcsema_real_eip !35
  %110 = icmp ult i32 %EAX_val.53, 1, !mcsema_real_eip !35
  store i1 %110, i1* %CF, !mcsema_real_eip !35
  %111 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %112 = and i32 %111, %99, !mcsema_real_eip !35
  %113 = lshr i32 %112, 31, !mcsema_real_eip !35
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !35
  store i1 %114, i1* %OF, !mcsema_real_eip !35
  %115 = zext i32 %98 to i64, !mcsema_real_eip !35
  store i64 %115, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.55 = load i32, i32* %EAX.37, !mcsema_real_eip !36
  %116 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !36
  store i64 %116, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !37
  %117 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !37
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %118, !mcsema_real_eip !37
  store i64 %117, i64* %XSP, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %119 = add i64 %RBP_val.57, -8, !mcsema_real_eip !38
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !38
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !38
  %122 = load i32, i32* %121, !mcsema_real_eip !38
  %123 = zext i32 %122 to i64, !mcsema_real_eip !38
  store i64 %123, i64* %XDI, !mcsema_real_eip !38
  %EDI_val.59 = load i32, i32* %EDI.34, !mcsema_real_eip !39
  %124 = sub i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %125 = xor i32 %124, %EDI_val.59, !mcsema_real_eip !39
  %126 = xor i32 %125, 2, !mcsema_real_eip !39
  %127 = and i32 %126, 16, !mcsema_real_eip !39
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !39
  store i1 %128, i1* %AF, !mcsema_real_eip !39
  %129 = trunc i32 %124 to i8, !mcsema_real_eip !39
  %130 = call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !39
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !39
  %132 = xor i1 %131, true, !mcsema_real_eip !39
  store i1 %132, i1* %PF, !mcsema_real_eip !39
  %133 = icmp eq i32 %124, 0, !mcsema_real_eip !39
  store i1 %133, i1* %ZF, !mcsema_real_eip !39
  %134 = lshr i32 %124, 31, !mcsema_real_eip !39
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !39
  store i1 %135, i1* %SF, !mcsema_real_eip !39
  %136 = icmp ult i32 %EDI_val.59, 2, !mcsema_real_eip !39
  store i1 %136, i1* %CF, !mcsema_real_eip !39
  %137 = xor i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %138 = and i32 %137, %125, !mcsema_real_eip !39
  %139 = lshr i32 %138, 31, !mcsema_real_eip !39
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !39
  store i1 %140, i1* %OF, !mcsema_real_eip !39
  %141 = zext i32 %124 to i64, !mcsema_real_eip !39
  store i64 %141, i64* %XDI, !mcsema_real_eip !39
  %142 = add i64 %RBP_val.57, -12, !mcsema_real_eip !40
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !40
  %EAX_val.62 = load i32, i32* %EAX.37, !mcsema_real_eip !40
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.62, i32* %144, !mcsema_real_eip !40
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %145 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %146, !mcsema_real_eip !41
  store i64 %145, i64* %XSP, !mcsema_real_eip !41
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %147 = add i64 %RBP_val.64, -12, !mcsema_real_eip !42
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !42
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !42
  %150 = load i32, i32* %149, !mcsema_real_eip !42
  %151 = zext i32 %150 to i64, !mcsema_real_eip !42
  store i64 %151, i64* %XDI, !mcsema_real_eip !42
  %EDI_val.66 = load i32, i32* %EDI.34, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.37, !mcsema_real_eip !43
  %152 = add i32 %EAX_val.68, %EDI_val.66, !mcsema_real_eip !43
  %153 = xor i32 %152, %EDI_val.66, !mcsema_real_eip !43
  %154 = xor i32 %153, %EAX_val.68, !mcsema_real_eip !43
  %155 = and i32 %154, 16, !mcsema_real_eip !43
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !43
  store i1 %156, i1* %AF, !mcsema_real_eip !43
  %157 = lshr i32 %152, 31, !mcsema_real_eip !43
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !43
  store i1 %158, i1* %SF, !mcsema_real_eip !43
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !43
  store i1 %159, i1* %ZF, !mcsema_real_eip !43
  %160 = xor i32 %EDI_val.66, %EAX_val.68, !mcsema_real_eip !43
  %161 = xor i32 %160, -1, !mcsema_real_eip !43
  %162 = and i32 %161, %153, !mcsema_real_eip !43
  %163 = lshr i32 %162, 31, !mcsema_real_eip !43
  %164 = and i32 %163, 1, !mcsema_real_eip !43
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !43
  store i1 %165, i1* %OF, !mcsema_real_eip !43
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !43
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !43
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !43
  %169 = xor i1 %168, true, !mcsema_real_eip !43
  store i1 %169, i1* %PF, !mcsema_real_eip !43
  %170 = icmp ult i32 %152, %EDI_val.66, !mcsema_real_eip !43
  store i1 %170, i1* %CF, !mcsema_real_eip !43
  %171 = zext i32 %152 to i64, !mcsema_real_eip !43
  store i64 %171, i64* %XDI, !mcsema_real_eip !43
  %172 = add i64 %RBP_val.64, -4, !mcsema_real_eip !44
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !44
  %EDI_val.71 = load i32, i32* %EDI.34, !mcsema_real_eip !44
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !44
  store i32 %EDI_val.71, i32* %174, !mcsema_real_eip !44
  br label %block_0x53
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
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 109}
!7 = !{i64 116}
!8 = !{i64 121}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 140}
!13 = !{i64 142}
!14 = !{i64 145}
!15 = !{i64 147}
!16 = !{i64 151}
!17 = !{i64 152}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 27}
!27 = !{i64 30}
!28 = !{i64 36}
!29 = !{i64 43}
!30 = !{i64 83}
!31 = !{i64 86}
!32 = !{i64 90}
!33 = !{i64 91}
!34 = !{i64 48}
!35 = !{i64 51}
!36 = !{i64 54}
!37 = !{i64 56}
!38 = !{i64 61}
!39 = !{i64 64}
!40 = !{i64 67}
!41 = !{i64 70}
!42 = !{i64 75}
!43 = !{i64 78}
!44 = !{i64 80}
