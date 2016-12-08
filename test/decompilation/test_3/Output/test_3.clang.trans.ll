; ModuleID = 'Output/test_3.clang.trans.bc'
source_filename = "Output/test_3.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [40 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc0 = internal constant %0 <{ [40 x i8] c"\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0xe8 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"j\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
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
  br label %block_0x50, !mcsema_real_eip !2

block_0x50:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 80, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 80, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 80, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 80, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 10, i64* %XSI, !mcsema_real_eip !5
  %20 = add i64 %1, -48, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  store i64 %20, i64* %XAX, !mcsema_real_eip !6
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XCX, !mcsema_real_eip !7
  store i64 40, i64* %XDX, !mcsema_real_eip !8
  %22 = add i64 %1, -4, !mcsema_real_eip !9
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !9
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %24, !mcsema_real_eip !9
  %RAX_val.6 = load i64, i64* %XAX, !mcsema_real_eip !10
  store i64 %RAX_val.6, i64* %XDI, !mcsema_real_eip !10
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !11
  %25 = add i64 %RBP_val.7, -56, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !11
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !11
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !11
  store i32 %ESI_val.9, i32* %27, !mcsema_real_eip !11
  %RCX_val.10 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.10, i64* %XSI, !mcsema_real_eip !12
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !13
  %28 = add i64 %RBP_val.11, -64, !mcsema_real_eip !13
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %RAX_val.12 = load i64, i64* %XAX, !mcsema_real_eip !13
  store i64 %RAX_val.12, i64* %29, !mcsema_real_eip !13
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !14
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !14
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !14
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !14
  %30 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !14
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %31, !mcsema_real_eip !14
  store i64 %30, i64* %XSP, !mcsema_real_eip !14
  %32 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.13, i64 %RSI_val.14, i64 %RDX_val.15), !mcsema_real_eip !14
  store i64 %32, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !15
  %33 = add i64 %RBP_val.17, -64, !mcsema_real_eip !15
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !15
  %35 = load i64, i64* %34, !mcsema_real_eip !15
  store i64 %35, i64* %XDI, !mcsema_real_eip !15
  %36 = add i64 %RBP_val.17, -56, !mcsema_real_eip !16
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !16
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !16
  %39 = load i32, i32* %38, !mcsema_real_eip !16
  %40 = zext i32 %39 to i64, !mcsema_real_eip !16
  store i64 %40, i64* %XSI, !mcsema_real_eip !16
  %RSP_val.19 = load i64, i64* %XSP, !mcsema_real_eip !17
  %41 = sub i64 %RSP_val.19, 8, !mcsema_real_eip !17
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %42, !mcsema_real_eip !17
  store i64 %41, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, !mcsema_real_eip !18
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !19
  %43 = add i64 %RBP_val.20, -52, !mcsema_real_eip !19
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !19
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !19
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.22, i32* %45, !mcsema_real_eip !19
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !20
  %46 = add i64 %RBP_val.23, -52, !mcsema_real_eip !20
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !20
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !20
  %49 = load i32, i32* %48, !mcsema_real_eip !20
  %50 = zext i32 %49 to i64, !mcsema_real_eip !20
  store i64 %50, i64* %XSI, !mcsema_real_eip !20
  %AL.24 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.24, !mcsema_real_eip !21
  %RDI_val.25 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RDX_val.27 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !22
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  %R9_val.30 = load i64, i64* %R9, !mcsema_real_eip !22
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !22
  %51 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !22
  %52 = load i64, i64* %51, !mcsema_real_eip !22
  %53 = add i64 %RSP_val.31, 8, !mcsema_real_eip !22
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !22
  %55 = load i64, i64* %54, !mcsema_real_eip !22
  %56 = add i64 %53, 8, !mcsema_real_eip !22
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !22
  %58 = load i64, i64* %57, !mcsema_real_eip !22
  %59 = add i64 %56, 8, !mcsema_real_eip !22
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !22
  %61 = load i64, i64* %60, !mcsema_real_eip !22
  %62 = add i64 %59, 8, !mcsema_real_eip !22
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !22
  %64 = load i64, i64* %63, !mcsema_real_eip !22
  %65 = add i64 %62, 8, !mcsema_real_eip !22
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !22
  %67 = load i64, i64* %66, !mcsema_real_eip !22
  %68 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !22
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %69, !mcsema_real_eip !22
  store i64 %68, i64* %XSP, !mcsema_real_eip !22
  %70 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.25, i64 %50, i64 %RDX_val.27, i64 %RCX_val.28, i64 %R8_val.29, i64 %R9_val.30, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67), !mcsema_real_eip !22
  store i64 %70, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !23
  %71 = add i64 %RBP_val.33, -52, !mcsema_real_eip !23
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !23
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !23
  %74 = load i32, i32* %73, !mcsema_real_eip !23
  %75 = zext i32 %74 to i64, !mcsema_real_eip !23
  store i64 %75, i64* %XSI, !mcsema_real_eip !23
  %76 = add i64 %RBP_val.33, -68, !mcsema_real_eip !24
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !24
  %EAX_val.36 = load i32, i32* %EAX.21, !mcsema_real_eip !24
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.36, i32* %78, !mcsema_real_eip !24
  %ESI_val.38 = load i32, i32* %ESI.8, !mcsema_real_eip !25
  %79 = zext i32 %ESI_val.38 to i64, !mcsema_real_eip !25
  store i64 %79, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !26
  %80 = add i64 80, %RSP_val.39, !mcsema_real_eip !26
  %81 = xor i64 %80, %RSP_val.39, !mcsema_real_eip !26
  %82 = xor i64 %81, 80, !mcsema_real_eip !26
  %83 = and i64 %82, 16, !mcsema_real_eip !26
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !26
  store i1 %84, i1* %AF, !mcsema_real_eip !26
  %85 = lshr i64 %80, 63, !mcsema_real_eip !26
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !26
  store i1 %86, i1* %SF, !mcsema_real_eip !26
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !26
  store i1 %87, i1* %ZF, !mcsema_real_eip !26
  %88 = xor i64 %RSP_val.39, 80, !mcsema_real_eip !26
  %89 = xor i64 %88, -1, !mcsema_real_eip !26
  %90 = and i64 %89, %81, !mcsema_real_eip !26
  %91 = lshr i64 %90, 63, !mcsema_real_eip !26
  %92 = and i64 %91, 1, !mcsema_real_eip !26
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !26
  store i1 %93, i1* %OF, !mcsema_real_eip !26
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !26
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !26
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !26
  %97 = xor i1 %96, true, !mcsema_real_eip !26
  store i1 %97, i1* %PF, !mcsema_real_eip !26
  %98 = icmp ult i64 %80, %RSP_val.39, !mcsema_real_eip !26
  store i1 %98, i1* %CF, !mcsema_real_eip !26
  store i64 %80, i64* %XSP, !mcsema_real_eip !26
  %99 = inttoptr i64 %80 to i64*, !mcsema_real_eip !27
  %100 = load i64, i64* %99, !mcsema_real_eip !27
  store i64 %100, i64* %XBP, !mcsema_real_eip !27
  %101 = add i64 %80, 8, !mcsema_real_eip !27
  store i64 %101, i64* %XSP, !mcsema_real_eip !27
  %102 = add i64 %101, 8, !mcsema_real_eip !28
  %103 = inttoptr i64 %101 to i64*, !mcsema_real_eip !28
  %104 = load i64, i64* %103, !mcsema_real_eip !28
  store i64 %104, i64* %XIP, !mcsema_real_eip !28
  store i64 %102, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !29
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !29
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !29
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !29
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !29
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !29
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !29
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !29
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !29
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !29
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !29
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !29
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !29
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !29
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !29
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !29
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !29
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !29
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !29
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !29
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !29
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !29
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !29
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !29
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !29
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !29
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !29
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !29
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !29
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !29
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !29
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !29
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !29
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !29
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !29
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !29
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !29
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !29
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !29
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !29
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !29
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !29
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !29
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !29
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !29
  br label %block_0x0, !mcsema_real_eip !29

block_0x0:                                        ; preds = %entry
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !29
  %1 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !29
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !29
  store i64 %RBP_val.42, i64* %2, !mcsema_real_eip !29
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  store i64 %1, i64* %XBP, !mcsema_real_eip !30
  %3 = add i64 %1, -8, !mcsema_real_eip !31
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !31
  %RDI_val.46 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.46, i64* %4, !mcsema_real_eip !31
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !32
  %5 = add i64 %RBP_val.47, -12, !mcsema_real_eip !32
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !32
  %ESI.48 = bitcast i64* %XSI to i32*, !mcsema_real_eip !32
  %ESI_val.49 = load i32, i32* %ESI.48, !mcsema_real_eip !32
  %7 = inttoptr i64 %5 to i32*, !mcsema_real_eip !32
  store i32 %ESI_val.49, i32* %7, !mcsema_real_eip !32
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !33
  %8 = add i64 %RBP_val.50, -16, !mcsema_real_eip !33
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !33
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %10, !mcsema_real_eip !33
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !34
  %11 = add i64 %RBP_val.51, -20, !mcsema_real_eip !34
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !34
  %13 = inttoptr i64 %11 to i32*, !mcsema_real_eip !34
  store i32 0, i32* %13, !mcsema_real_eip !34
  br label %block_0x19, !mcsema_real_eip !35

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !35
  %14 = add i64 %RBP_val.52, -20, !mcsema_real_eip !35
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !35
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !35
  %17 = load i32, i32* %16, !mcsema_real_eip !35
  %18 = zext i32 %17 to i64, !mcsema_real_eip !35
  store i64 %18, i64* %XAX, !mcsema_real_eip !35
  %19 = add i64 %RBP_val.52, -12, !mcsema_real_eip !36
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !36
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !36
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !36
  %22 = load i32, i32* %21, !mcsema_real_eip !36
  %23 = sub i32 %EAX_val.55, %22, !mcsema_real_eip !36
  %24 = xor i32 %23, %EAX_val.55, !mcsema_real_eip !36
  %25 = xor i32 %24, %22, !mcsema_real_eip !36
  %26 = and i32 %25, 16, !mcsema_real_eip !36
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !36
  store i1 %27, i1* %AF, !mcsema_real_eip !36
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !36
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !36
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !36
  %31 = xor i1 %30, true, !mcsema_real_eip !36
  store i1 %31, i1* %PF, !mcsema_real_eip !36
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !36
  store i1 %32, i1* %ZF, !mcsema_real_eip !36
  %33 = lshr i32 %23, 31, !mcsema_real_eip !36
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !36
  store i1 %34, i1* %SF, !mcsema_real_eip !36
  %35 = icmp ult i32 %EAX_val.55, %22, !mcsema_real_eip !36
  store i1 %35, i1* %CF, !mcsema_real_eip !36
  %36 = xor i32 %EAX_val.55, %22, !mcsema_real_eip !36
  %37 = and i32 %36, %24, !mcsema_real_eip !36
  %38 = lshr i32 %37, 31, !mcsema_real_eip !36
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !36
  store i1 %39, i1* %OF, !mcsema_real_eip !36
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !37
  br i1 %40, label %block_0x44, label %block_0x25, !mcsema_real_eip !37

block_0x25:                                       ; preds = %block_0x19
  %41 = add i64 %RBP_val.52, -8, !mcsema_real_eip !38
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !38
  %43 = load i64, i64* %42, !mcsema_real_eip !38
  store i64 %43, i64* %XAX, !mcsema_real_eip !38
  %44 = load i32, i32* %16, !mcsema_real_eip !39
  %45 = sext i32 %44 to i64, !mcsema_real_eip !39
  store i64 %45, i64* %XCX, !mcsema_real_eip !39
  %46 = mul i64 %45, 4, !mcsema_real_eip !40
  %47 = add i64 %43, %46, !mcsema_real_eip !40
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !40
  %49 = inttoptr i64 %47 to i32*, !mcsema_real_eip !40
  %50 = load i32, i32* %49, !mcsema_real_eip !40
  %51 = zext i32 %50 to i64, !mcsema_real_eip !40
  store i64 %51, i64* %XDX, !mcsema_real_eip !40
  %52 = add i64 %RBP_val.52, -16, !mcsema_real_eip !41
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !41
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !41
  %55 = load i32, i32* %54, !mcsema_real_eip !41
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !41
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !41
  %56 = add i32 %EDX_val.65, %55, !mcsema_real_eip !41
  %57 = xor i32 %56, %55, !mcsema_real_eip !41
  %58 = xor i32 %57, %EDX_val.65, !mcsema_real_eip !41
  %59 = and i32 %58, 16, !mcsema_real_eip !41
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !41
  store i1 %60, i1* %AF, !mcsema_real_eip !41
  %61 = lshr i32 %56, 31, !mcsema_real_eip !41
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !41
  store i1 %62, i1* %SF, !mcsema_real_eip !41
  %63 = icmp eq i32 %56, 0, !mcsema_real_eip !41
  store i1 %63, i1* %ZF, !mcsema_real_eip !41
  %64 = xor i32 %55, %EDX_val.65, !mcsema_real_eip !41
  %65 = xor i32 %64, -1, !mcsema_real_eip !41
  %66 = and i32 %65, %57, !mcsema_real_eip !41
  %67 = lshr i32 %66, 31, !mcsema_real_eip !41
  %68 = and i32 %67, 1, !mcsema_real_eip !41
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !41
  store i1 %69, i1* %OF, !mcsema_real_eip !41
  %70 = trunc i32 %56 to i8, !mcsema_real_eip !41
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !41
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !41
  %73 = xor i1 %72, true, !mcsema_real_eip !41
  store i1 %73, i1* %PF, !mcsema_real_eip !41
  %74 = icmp ult i32 %56, %55, !mcsema_real_eip !41
  store i1 %74, i1* %CF, !mcsema_real_eip !41
  %75 = zext i32 %56 to i64, !mcsema_real_eip !41
  store i64 %75, i64* %XDX, !mcsema_real_eip !41
  %EDX_val.68 = load i32, i32* %EDX.64, !mcsema_real_eip !42
  store i32 %EDX_val.68, i32* %54, !mcsema_real_eip !42
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !43
  %76 = add i64 %RBP_val.69, -20, !mcsema_real_eip !43
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !43
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !43
  %79 = load i32, i32* %78, !mcsema_real_eip !43
  %80 = zext i32 %79 to i64, !mcsema_real_eip !43
  store i64 %80, i64* %XAX, !mcsema_real_eip !43
  %EAX_val.71 = load i32, i32* %EAX.54, !mcsema_real_eip !44
  %81 = add i32 1, %EAX_val.71, !mcsema_real_eip !44
  %82 = xor i32 %81, %EAX_val.71, !mcsema_real_eip !44
  %83 = xor i32 %82, 1, !mcsema_real_eip !44
  %84 = and i32 %83, 16, !mcsema_real_eip !44
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !44
  store i1 %85, i1* %AF, !mcsema_real_eip !44
  %86 = lshr i32 %81, 31, !mcsema_real_eip !44
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !44
  store i1 %87, i1* %SF, !mcsema_real_eip !44
  %88 = icmp eq i32 %81, 0, !mcsema_real_eip !44
  store i1 %88, i1* %ZF, !mcsema_real_eip !44
  %89 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !44
  %90 = xor i32 %89, -1, !mcsema_real_eip !44
  %91 = and i32 %90, %82, !mcsema_real_eip !44
  %92 = lshr i32 %91, 31, !mcsema_real_eip !44
  %93 = and i32 %92, 1, !mcsema_real_eip !44
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !44
  store i1 %94, i1* %OF, !mcsema_real_eip !44
  %95 = trunc i32 %81 to i8, !mcsema_real_eip !44
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !44
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !44
  %98 = xor i1 %97, true, !mcsema_real_eip !44
  store i1 %98, i1* %PF, !mcsema_real_eip !44
  %99 = icmp ult i32 %81, %EAX_val.71, !mcsema_real_eip !44
  store i1 %99, i1* %CF, !mcsema_real_eip !44
  %100 = zext i32 %81 to i64, !mcsema_real_eip !44
  store i64 %100, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.74 = load i32, i32* %EAX.54, !mcsema_real_eip !45
  store i32 %EAX_val.74, i32* %78, !mcsema_real_eip !45
  br label %block_0x19, !mcsema_real_eip !46

block_0x44:                                       ; preds = %block_0x19
  %101 = add i64 %RBP_val.52, -16, !mcsema_real_eip !47
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !47
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !47
  %104 = load i32, i32* %103, !mcsema_real_eip !47
  %105 = zext i32 %104 to i64, !mcsema_real_eip !47
  store i64 %105, i64* %XAX, !mcsema_real_eip !47
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !48
  %106 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !48
  %107 = load i64, i64* %106, !mcsema_real_eip !48
  store i64 %107, i64* %XBP, !mcsema_real_eip !48
  %108 = add i64 %RSP_val.57, 8, !mcsema_real_eip !48
  store i64 %108, i64* %XSP, !mcsema_real_eip !48
  %109 = add i64 %108, 8, !mcsema_real_eip !49
  %110 = inttoptr i64 %108 to i64*, !mcsema_real_eip !49
  %111 = load i64, i64* %110, !mcsema_real_eip !49
  store i64 %111, i64* %XIP, !mcsema_real_eip !49
  store i64 %109, i64* %XSP, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!2 = !{i64 80}
!3 = !{i64 81}
!4 = !{i64 84}
!5 = !{i64 88}
!6 = !{i64 93}
!7 = !{i64 97}
!8 = !{i64 107}
!9 = !{i64 112}
!10 = !{i64 119}
!11 = !{i64 122}
!12 = !{i64 125}
!13 = !{i64 128}
!14 = !{i64 132}
!15 = !{i64 137}
!16 = !{i64 141}
!17 = !{i64 144}
!18 = !{i64 149}
!19 = !{i64 159}
!20 = !{i64 162}
!21 = !{i64 165}
!22 = !{i64 167}
!23 = !{i64 172}
!24 = !{i64 175}
!25 = !{i64 178}
!26 = !{i64 180}
!27 = !{i64 184}
!28 = !{i64 185}
!29 = !{i64 0}
!30 = !{i64 1}
!31 = !{i64 4}
!32 = !{i64 8}
!33 = !{i64 11}
!34 = !{i64 18}
!35 = !{i64 25}
!36 = !{i64 28}
!37 = !{i64 31}
!38 = !{i64 37}
!39 = !{i64 41}
!40 = !{i64 45}
!41 = !{i64 48}
!42 = !{i64 51}
!43 = !{i64 54}
!44 = !{i64 57}
!45 = !{i64 60}
!46 = !{i64 63}
!47 = !{i64 68}
!48 = !{i64 71}
!49 = !{i64 72}
