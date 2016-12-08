; ModuleID = 'Output/test_24.clang.trans.bc'
source_filename = "Output/test_24.clang.bc"
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
module asm "  .globl to_byte;"
module asm "  .globl _to_byte;"
module asm "  .type _to_byte,@function"
module asm "_to_byte:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq to_byte@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _to_byte,0b-_to_byte;"
module asm "  .cfi_endproc;"
module asm "  .globl read_bytes;"
module asm "  .globl _read_bytes;"
module asm "  .type _read_bytes,@function"
module asm "_read_bytes:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read_bytes@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read_bytes,0b-_read_bytes;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl keycomp;"
module asm "  .type keycomp,@function"
module asm "keycomp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size keycomp,0b-keycomp;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x420 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c" \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %28 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %28, i64* %XCX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %29 = add i64 %RBP_val.11, -32, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %31, !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %32 = add i64 %RBP_val.14, -32, !mcsema_real_eip !10
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !10
  %34 = inttoptr i64 %32 to i32*, !mcsema_real_eip !10
  %35 = load i32, i32* %34, !mcsema_real_eip !10
  %36 = sub i32 %35, 37, !mcsema_real_eip !10
  %37 = xor i32 %36, %35, !mcsema_real_eip !10
  %38 = xor i32 %37, 37, !mcsema_real_eip !10
  %39 = and i32 %38, 16, !mcsema_real_eip !10
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !10
  store i1 %40, i1* %AF, !mcsema_real_eip !10
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !10
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !10
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !10
  %44 = xor i1 %43, true, !mcsema_real_eip !10
  store i1 %44, i1* %PF, !mcsema_real_eip !10
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !10
  store i1 %45, i1* %ZF, !mcsema_real_eip !10
  %46 = lshr i32 %36, 31, !mcsema_real_eip !10
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !10
  store i1 %47, i1* %SF, !mcsema_real_eip !10
  %48 = icmp ult i32 %35, 37, !mcsema_real_eip !10
  store i1 %48, i1* %CF, !mcsema_real_eip !10
  %49 = xor i32 %35, 37, !mcsema_real_eip !10
  %50 = and i32 %49, %37, !mcsema_real_eip !10
  %51 = lshr i32 %50, 31, !mcsema_real_eip !10
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !10
  store i1 %52, i1* %OF, !mcsema_real_eip !10
  br i1 %45, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x0
  %53 = load i32, i32* %34, !mcsema_real_eip !12
  %54 = zext i32 %53 to i64, !mcsema_real_eip !12
  store i64 %54, i64* %XAX, !mcsema_real_eip !12
  %55 = add i64 %RBP_val.14, -4, !mcsema_real_eip !13
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !13
  %EAX_val.26 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.26, i32* %57, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %58 = add i64 %RBP_val.14, -16, !mcsema_real_eip !15
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !15
  %60 = load i64, i64* %59, !mcsema_real_eip !15
  store i64 %60, i64* %XAX, !mcsema_real_eip !15
  %61 = add i64 4, %60, !mcsema_real_eip !16
  %62 = xor i64 %61, %60, !mcsema_real_eip !16
  %63 = xor i64 %62, 4, !mcsema_real_eip !16
  %64 = and i64 %63, 16, !mcsema_real_eip !16
  %65 = icmp ne i64 %64, 0, !mcsema_real_eip !16
  store i1 %65, i1* %AF, !mcsema_real_eip !16
  %66 = lshr i64 %61, 63, !mcsema_real_eip !16
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !16
  store i1 %67, i1* %SF, !mcsema_real_eip !16
  %68 = icmp eq i64 %61, 0, !mcsema_real_eip !16
  store i1 %68, i1* %ZF, !mcsema_real_eip !16
  %69 = xor i64 %60, 4, !mcsema_real_eip !16
  %70 = xor i64 %69, -1, !mcsema_real_eip !16
  %71 = and i64 %70, %62, !mcsema_real_eip !16
  %72 = lshr i64 %71, 63, !mcsema_real_eip !16
  %73 = and i64 %72, 1, !mcsema_real_eip !16
  %74 = trunc i64 %73 to i1, !mcsema_real_eip !16
  store i1 %74, i1* %OF, !mcsema_real_eip !16
  %75 = trunc i64 %61 to i8, !mcsema_real_eip !16
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !16
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !16
  %78 = xor i1 %77, true, !mcsema_real_eip !16
  store i1 %78, i1* %PF, !mcsema_real_eip !16
  %79 = icmp ult i64 %61, %60, !mcsema_real_eip !16
  store i1 %79, i1* %CF, !mcsema_real_eip !16
  store i64 %61, i64* %XAX, !mcsema_real_eip !16
  store i64 %61, i64* %59, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %80 = add i64 %RBP_val.19, -16, !mcsema_real_eip !18
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !18
  %82 = load i64, i64* %81, !mcsema_real_eip !18
  store i64 %82, i64* %XAX, !mcsema_real_eip !18
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !19
  %84 = inttoptr i64 %82 to i8*, !mcsema_real_eip !19
  %85 = load i8, i8* %84, !mcsema_real_eip !19
  %86 = sext i8 %85 to i32, !mcsema_real_eip !19
  %87 = zext i32 %86 to i64, !mcsema_real_eip !19
  store i64 %87, i64* %XCX, !mcsema_real_eip !19
  %ECX_val.22 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %88 = sub i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %89 = xor i32 %88, %ECX_val.22, !mcsema_real_eip !20
  %90 = xor i32 %89, 100, !mcsema_real_eip !20
  %91 = and i32 %90, 16, !mcsema_real_eip !20
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !20
  store i1 %92, i1* %AF, !mcsema_real_eip !20
  %93 = trunc i32 %88 to i8, !mcsema_real_eip !20
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !20
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !20
  %96 = xor i1 %95, true, !mcsema_real_eip !20
  store i1 %96, i1* %PF, !mcsema_real_eip !20
  %97 = icmp eq i32 %88, 0, !mcsema_real_eip !20
  store i1 %97, i1* %ZF, !mcsema_real_eip !20
  %98 = lshr i32 %88, 31, !mcsema_real_eip !20
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !20
  store i1 %99, i1* %SF, !mcsema_real_eip !20
  %100 = icmp ult i32 %ECX_val.22, 100, !mcsema_real_eip !20
  store i1 %100, i1* %CF, !mcsema_real_eip !20
  %101 = xor i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %102 = and i32 %101, %89, !mcsema_real_eip !20
  %103 = lshr i32 %102, 31, !mcsema_real_eip !20
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !20
  store i1 %104, i1* %OF, !mcsema_real_eip !20
  br i1 %97, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %105 = add i64 %RBP_val.19, -4, !mcsema_real_eip !22
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !22
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %107, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %108 = load i64, i64* %81, !mcsema_real_eip !24
  store i64 %108, i64* %XAX, !mcsema_real_eip !24
  %109 = add i64 %108, 1, !mcsema_real_eip !25
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !25
  %111 = inttoptr i64 %109 to i8*, !mcsema_real_eip !25
  %112 = load i8, i8* %111, !mcsema_real_eip !25
  %113 = zext i8 %112 to i32, !mcsema_real_eip !25
  %114 = zext i32 %113 to i64, !mcsema_real_eip !25
  store i64 %114, i64* %XDI, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %115 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %116, !mcsema_real_eip !26
  store i64 %115, i64* %XSP, !mcsema_real_eip !26
  %117 = call x86_64_sysvcc i64 @_to_byte(i64 %114), !mcsema_real_eip !26
  store i64 %117, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.32 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %118 = sub i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %119 = xor i32 %118, %EAX_val.32, !mcsema_real_eip !27
  %120 = xor i32 %119, 9, !mcsema_real_eip !27
  %121 = and i32 %120, 16, !mcsema_real_eip !27
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !27
  store i1 %122, i1* %AF, !mcsema_real_eip !27
  %123 = trunc i32 %118 to i8, !mcsema_real_eip !27
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !27
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !27
  %126 = xor i1 %125, true, !mcsema_real_eip !27
  store i1 %126, i1* %PF, !mcsema_real_eip !27
  %127 = icmp eq i32 %118, 0, !mcsema_real_eip !27
  store i1 %127, i1* %ZF, !mcsema_real_eip !27
  %128 = lshr i32 %118, 31, !mcsema_real_eip !27
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !27
  store i1 %129, i1* %SF, !mcsema_real_eip !27
  %130 = icmp ult i32 %EAX_val.32, 9, !mcsema_real_eip !27
  store i1 %130, i1* %CF, !mcsema_real_eip !27
  %131 = xor i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %132 = and i32 %131, %119, !mcsema_real_eip !27
  %133 = lshr i32 %132, 31, !mcsema_real_eip !27
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !27
  store i1 %134, i1* %OF, !mcsema_real_eip !27
  br i1 %127, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !29
  %135 = add i64 %RBP_val.34, -4, !mcsema_real_eip !29
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !29
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !29
  %138 = load i32, i32* %137, !mcsema_real_eip !29
  %139 = zext i32 %138 to i64, !mcsema_real_eip !29
  store i64 %139, i64* %XAX, !mcsema_real_eip !29
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !30
  %140 = add i64 80, %RSP_val.35, !mcsema_real_eip !30
  %141 = xor i64 %140, %RSP_val.35, !mcsema_real_eip !30
  %142 = xor i64 %141, 80, !mcsema_real_eip !30
  %143 = and i64 %142, 16, !mcsema_real_eip !30
  %144 = icmp ne i64 %143, 0, !mcsema_real_eip !30
  store i1 %144, i1* %AF, !mcsema_real_eip !30
  %145 = lshr i64 %140, 63, !mcsema_real_eip !30
  %146 = trunc i64 %145 to i1, !mcsema_real_eip !30
  store i1 %146, i1* %SF, !mcsema_real_eip !30
  %147 = icmp eq i64 %140, 0, !mcsema_real_eip !30
  store i1 %147, i1* %ZF, !mcsema_real_eip !30
  %148 = xor i64 %RSP_val.35, 80, !mcsema_real_eip !30
  %149 = xor i64 %148, -1, !mcsema_real_eip !30
  %150 = and i64 %149, %141, !mcsema_real_eip !30
  %151 = lshr i64 %150, 63, !mcsema_real_eip !30
  %152 = and i64 %151, 1, !mcsema_real_eip !30
  %153 = trunc i64 %152 to i1, !mcsema_real_eip !30
  store i1 %153, i1* %OF, !mcsema_real_eip !30
  %154 = trunc i64 %140 to i8, !mcsema_real_eip !30
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !30
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !30
  %157 = xor i1 %156, true, !mcsema_real_eip !30
  store i1 %157, i1* %PF, !mcsema_real_eip !30
  %158 = icmp ult i64 %140, %RSP_val.35, !mcsema_real_eip !30
  store i1 %158, i1* %CF, !mcsema_real_eip !30
  store i64 %140, i64* %XSP, !mcsema_real_eip !30
  %159 = inttoptr i64 %140 to i64*, !mcsema_real_eip !31
  %160 = load i64, i64* %159, !mcsema_real_eip !31
  store i64 %160, i64* %XBP, !mcsema_real_eip !31
  %161 = add i64 %140, 8, !mcsema_real_eip !31
  store i64 %161, i64* %XSP, !mcsema_real_eip !31
  %162 = add i64 %161, 8, !mcsema_real_eip !32
  %163 = inttoptr i64 %161 to i64*, !mcsema_real_eip !32
  %164 = load i64, i64* %163, !mcsema_real_eip !32
  store i64 %164, i64* %XIP, !mcsema_real_eip !32
  store i64 %162, i64* %XSP, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x6d:                                       ; preds = %block_0x57
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !33
  %165 = add i64 %RBP_val.50, -4, !mcsema_real_eip !33
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !33
  %167 = inttoptr i64 %165 to i32*, !mcsema_real_eip !33
  store i32 -3, i32* %167, !mcsema_real_eip !33
  br label %block_0x417, !mcsema_real_eip !34

block_0x79:                                       ; preds = %block_0x57
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !35
  %168 = add i64 %RBP_val.38, -16, !mcsema_real_eip !35
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !35
  %170 = load i64, i64* %169, !mcsema_real_eip !35
  store i64 %170, i64* %XAX, !mcsema_real_eip !35
  %171 = add i64 %170, 2, !mcsema_real_eip !36
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !36
  %173 = inttoptr i64 %171 to i8*, !mcsema_real_eip !36
  %174 = load i8, i8* %173, !mcsema_real_eip !36
  %175 = zext i8 %174 to i32, !mcsema_real_eip !36
  %176 = zext i32 %175 to i64, !mcsema_real_eip !36
  store i64 %176, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !37
  %177 = sub i64 %RSP_val.41, 8, !mcsema_real_eip !37
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %178, !mcsema_real_eip !37
  store i64 %177, i64* %XSP, !mcsema_real_eip !37
  %179 = call x86_64_sysvcc i64 @_to_byte(i64 %176), !mcsema_real_eip !37
  store i64 %179, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !38
  %180 = add i64 %RBP_val.42, -24, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !38
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.44, i32* %182, !mcsema_real_eip !38
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !39
  %183 = add i64 %RBP_val.45, -24, !mcsema_real_eip !39
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !39
  %185 = inttoptr i64 %183 to i32*, !mcsema_real_eip !39
  %186 = load i32, i32* %185, !mcsema_real_eip !39
  %187 = zext i32 %186 to i64, !mcsema_real_eip !39
  store i64 %187, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.47 = load i32, i32* %EAX.9, !mcsema_real_eip !40
  %188 = and i32 %EAX_val.47, -2147483648, !mcsema_real_eip !40
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !40
  %190 = load i1, i1* %CF, !mcsema_real_eip !40
  %191 = shl i32 %EAX_val.47, 1, !mcsema_real_eip !40
  %192 = load i1, i1* %OF, !mcsema_real_eip !40
  %193 = and i32 %191, -2147483648, !mcsema_real_eip !40
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !40
  %195 = xor i1 %194, %189, !mcsema_real_eip !40
  store i1 %195, i1* %OF, !mcsema_real_eip !40
  store i1 %189, i1* %CF, !mcsema_real_eip !40
  %196 = load i1, i1* %ZF, !mcsema_real_eip !40
  %197 = icmp eq i32 %191, 0, !mcsema_real_eip !40
  store i1 %197, i1* %ZF, !mcsema_real_eip !40
  %198 = load i1, i1* %SF, !mcsema_real_eip !40
  %199 = icmp slt i32 %191, 0, !mcsema_real_eip !40
  store i1 %199, i1* %SF, !mcsema_real_eip !40
  %200 = load i1, i1* %PF, !mcsema_real_eip !40
  %201 = trunc i32 %191 to i8, !mcsema_real_eip !40
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !40
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !40
  %204 = xor i1 %203, true, !mcsema_real_eip !40
  store i1 %204, i1* %PF, !mcsema_real_eip !40
  %205 = zext i32 %191 to i64, !mcsema_real_eip !40
  store i64 %205, i64* %XAX, !mcsema_real_eip !40
  %EAX_val.49 = load i32, i32* %EAX.9, !mcsema_real_eip !41
  %206 = sub i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %207 = xor i32 %206, %EAX_val.49, !mcsema_real_eip !41
  %208 = xor i32 %207, 26, !mcsema_real_eip !41
  %209 = and i32 %208, 16, !mcsema_real_eip !41
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !41
  store i1 %210, i1* %AF, !mcsema_real_eip !41
  %211 = trunc i32 %206 to i8, !mcsema_real_eip !41
  %212 = call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !41
  %213 = trunc i8 %212 to i1, !mcsema_real_eip !41
  %214 = xor i1 %213, true, !mcsema_real_eip !41
  store i1 %214, i1* %PF, !mcsema_real_eip !41
  %215 = icmp eq i32 %206, 0, !mcsema_real_eip !41
  store i1 %215, i1* %ZF, !mcsema_real_eip !41
  %216 = lshr i32 %206, 31, !mcsema_real_eip !41
  %217 = trunc i32 %216 to i1, !mcsema_real_eip !41
  store i1 %217, i1* %SF, !mcsema_real_eip !41
  %218 = icmp ult i32 %EAX_val.49, 26, !mcsema_real_eip !41
  store i1 %218, i1* %CF, !mcsema_real_eip !41
  %219 = xor i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %220 = and i32 %219, %207, !mcsema_real_eip !41
  %221 = lshr i32 %220, 31, !mcsema_real_eip !41
  %222 = trunc i32 %221 to i1, !mcsema_real_eip !41
  store i1 %222, i1* %OF, !mcsema_real_eip !41
  br i1 %215, label %block_0xa4, label %block_0x98, !mcsema_real_eip !42

block_0x98:                                       ; preds = %block_0x79
  %223 = add i64 %RBP_val.45, -4, !mcsema_real_eip !43
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !43
  %225 = inttoptr i64 %223 to i32*, !mcsema_real_eip !43
  store i32 -4, i32* %225, !mcsema_real_eip !43
  br label %block_0x417, !mcsema_real_eip !44

block_0xa4:                                       ; preds = %block_0x79
  %226 = add i64 %RBP_val.45, -16, !mcsema_real_eip !45
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !45
  %228 = load i64, i64* %227, !mcsema_real_eip !45
  store i64 %228, i64* %XAX, !mcsema_real_eip !45
  %229 = add i64 %228, 3, !mcsema_real_eip !46
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !46
  %231 = inttoptr i64 %229 to i8*, !mcsema_real_eip !46
  %232 = load i8, i8* %231, !mcsema_real_eip !46
  %233 = zext i8 %232 to i32, !mcsema_real_eip !46
  %234 = zext i32 %233 to i64, !mcsema_real_eip !46
  store i64 %234, i64* %XDI, !mcsema_real_eip !46
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !47
  %235 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !47
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !47
  store i64 -2415393069852865332, i64* %236, !mcsema_real_eip !47
  store i64 %235, i64* %XSP, !mcsema_real_eip !47
  %237 = call x86_64_sysvcc i64 @_to_byte(i64 %234), !mcsema_real_eip !47
  store i64 %237, i64* %XAX, !mcsema_real_eip !47
  store i64 2, i64* %XDI, !mcsema_real_eip !48
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !49
  %238 = add i64 %RBP_val.55, -28, !mcsema_real_eip !49
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !49
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !49
  %240 = inttoptr i64 %238 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.57, i32* %240, !mcsema_real_eip !49
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !50
  %241 = add i64 %RBP_val.58, -28, !mcsema_real_eip !50
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !50
  %243 = inttoptr i64 %241 to i32*, !mcsema_real_eip !50
  %244 = load i32, i32* %243, !mcsema_real_eip !50
  %245 = zext i32 %244 to i64, !mcsema_real_eip !50
  store i64 %245, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.60 = load i32, i32* %EAX.9, !mcsema_real_eip !51
  %246 = add i32 1, %EAX_val.60, !mcsema_real_eip !51
  %247 = xor i32 %246, %EAX_val.60, !mcsema_real_eip !51
  %248 = xor i32 %247, 1, !mcsema_real_eip !51
  %249 = and i32 %248, 16, !mcsema_real_eip !51
  %250 = icmp ne i32 %249, 0, !mcsema_real_eip !51
  store i1 %250, i1* %AF, !mcsema_real_eip !51
  %251 = lshr i32 %246, 31, !mcsema_real_eip !51
  %252 = trunc i32 %251 to i1, !mcsema_real_eip !51
  store i1 %252, i1* %SF, !mcsema_real_eip !51
  %253 = icmp eq i32 %246, 0, !mcsema_real_eip !51
  store i1 %253, i1* %ZF, !mcsema_real_eip !51
  %254 = xor i32 %EAX_val.60, 1, !mcsema_real_eip !51
  %255 = xor i32 %254, -1, !mcsema_real_eip !51
  %256 = and i32 %255, %247, !mcsema_real_eip !51
  %257 = lshr i32 %256, 31, !mcsema_real_eip !51
  %258 = and i32 %257, 1, !mcsema_real_eip !51
  %259 = trunc i32 %258 to i1, !mcsema_real_eip !51
  store i1 %259, i1* %OF, !mcsema_real_eip !51
  %260 = trunc i32 %246 to i8, !mcsema_real_eip !51
  %261 = call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !51
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !51
  %263 = xor i1 %262, true, !mcsema_real_eip !51
  store i1 %263, i1* %PF, !mcsema_real_eip !51
  %264 = icmp ult i32 %246, %EAX_val.60, !mcsema_real_eip !51
  store i1 %264, i1* %CF, !mcsema_real_eip !51
  %265 = zext i32 %246 to i64, !mcsema_real_eip !51
  store i64 %265, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.62 = load i32, i32* %EAX.9, !mcsema_real_eip !52
  %266 = and i32 %EAX_val.62, -2147483648, !mcsema_real_eip !52
  %267 = icmp eq i32 %266, 0, !mcsema_real_eip !52
  %268 = select i1 %267, i32 0, i32 -1, !mcsema_real_eip !52
  %269 = zext i32 %268 to i64, !mcsema_real_eip !52
  store i64 %269, i64* %XDX, !mcsema_real_eip !52
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.64 = load i32, i32* %EDI.63, !mcsema_real_eip !53
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !53
  %270 = zext i32 %EDX_val.68 to i64, !mcsema_real_eip !53
  %271 = shl i64 %270, 32, !mcsema_real_eip !53
  %272 = sext i32 %EAX_val.62 to i64, !mcsema_real_eip !53
  %273 = or i64 %271, %272, !mcsema_real_eip !53
  %274 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !53
  %275 = sdiv i64 %273, %274, !mcsema_real_eip !53
  %276 = srem i64 %273, %274, !mcsema_real_eip !53
  %277 = trunc i64 %276 to i32, !mcsema_real_eip !53
  %278 = trunc i64 %275 to i32, !mcsema_real_eip !53
  %279 = zext i32 %277 to i64, !mcsema_real_eip !53
  store i64 %279, i64* %XDX, !mcsema_real_eip !53
  %280 = zext i32 %278 to i64, !mcsema_real_eip !53
  store i64 %280, i64* %XAX, !mcsema_real_eip !53
  %EAX_val.70 = load i32, i32* %EAX.9, !mcsema_real_eip !54
  %281 = sub i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %282 = xor i32 %281, %EAX_val.70, !mcsema_real_eip !54
  %283 = xor i32 %282, 7, !mcsema_real_eip !54
  %284 = and i32 %283, 16, !mcsema_real_eip !54
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !54
  store i1 %285, i1* %AF, !mcsema_real_eip !54
  %286 = trunc i32 %281 to i8, !mcsema_real_eip !54
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !54
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !54
  %289 = xor i1 %288, true, !mcsema_real_eip !54
  store i1 %289, i1* %PF, !mcsema_real_eip !54
  %290 = icmp eq i32 %281, 0, !mcsema_real_eip !54
  store i1 %290, i1* %ZF, !mcsema_real_eip !54
  %291 = lshr i32 %281, 31, !mcsema_real_eip !54
  %292 = trunc i32 %291 to i1, !mcsema_real_eip !54
  store i1 %292, i1* %SF, !mcsema_real_eip !54
  %293 = icmp ult i32 %EAX_val.70, 7, !mcsema_real_eip !54
  store i1 %293, i1* %CF, !mcsema_real_eip !54
  %294 = xor i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %295 = and i32 %294, %282, !mcsema_real_eip !54
  %296 = lshr i32 %295, 31, !mcsema_real_eip !54
  %297 = trunc i32 %296 to i1, !mcsema_real_eip !54
  store i1 %297, i1* %OF, !mcsema_real_eip !54
  br i1 %290, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !55

block_0xcb:                                       ; preds = %block_0xa4
  %298 = add i64 %RBP_val.58, -4, !mcsema_real_eip !56
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !56
  %300 = inttoptr i64 %298 to i32*, !mcsema_real_eip !56
  store i32 -5, i32* %300, !mcsema_real_eip !56
  br label %block_0x417, !mcsema_real_eip !57

block_0xd7:                                       ; preds = %block_0xa4
  %301 = add i64 %RBP_val.58, -16, !mcsema_real_eip !58
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !58
  %303 = load i64, i64* %302, !mcsema_real_eip !58
  store i64 %303, i64* %XAX, !mcsema_real_eip !58
  %304 = add i64 %303, 4, !mcsema_real_eip !59
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !59
  %306 = inttoptr i64 %304 to i8*, !mcsema_real_eip !59
  %307 = load i8, i8* %306, !mcsema_real_eip !59
  %308 = sext i8 %307 to i32, !mcsema_real_eip !59
  %309 = zext i32 %308 to i64, !mcsema_real_eip !59
  store i64 %309, i64* %XCX, !mcsema_real_eip !59
  %ECX_val.75 = load i32, i32* %ECX.12, !mcsema_real_eip !60
  %310 = and i32 %ECX_val.75, 15, !mcsema_real_eip !60
  store i1 false, i1* %SF, !mcsema_real_eip !60
  %311 = icmp eq i32 %310, 0, !mcsema_real_eip !60
  store i1 %311, i1* %ZF, !mcsema_real_eip !60
  %312 = trunc i32 %310 to i8, !mcsema_real_eip !60
  %313 = call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !60
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !60
  %315 = xor i1 %314, true, !mcsema_real_eip !60
  store i1 %315, i1* %PF, !mcsema_real_eip !60
  store i1 false, i1* %OF, !mcsema_real_eip !60
  store i1 false, i1* %CF, !mcsema_real_eip !60
  store i1 undef, i1* %AF, !mcsema_real_eip !60
  %316 = zext i32 %310 to i64, !mcsema_real_eip !60
  store i64 %316, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.77 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %317 = sub i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %318 = xor i32 %317, %ECX_val.77, !mcsema_real_eip !61
  %319 = xor i32 %318, 1, !mcsema_real_eip !61
  %320 = and i32 %319, 16, !mcsema_real_eip !61
  %321 = icmp ne i32 %320, 0, !mcsema_real_eip !61
  store i1 %321, i1* %AF, !mcsema_real_eip !61
  %322 = trunc i32 %317 to i8, !mcsema_real_eip !61
  %323 = call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !61
  %324 = trunc i8 %323 to i1, !mcsema_real_eip !61
  %325 = xor i1 %324, true, !mcsema_real_eip !61
  store i1 %325, i1* %PF, !mcsema_real_eip !61
  %326 = icmp eq i32 %317, 0, !mcsema_real_eip !61
  store i1 %326, i1* %ZF, !mcsema_real_eip !61
  %327 = lshr i32 %317, 31, !mcsema_real_eip !61
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !61
  store i1 %328, i1* %SF, !mcsema_real_eip !61
  %329 = icmp ult i32 %ECX_val.77, 1, !mcsema_real_eip !61
  store i1 %329, i1* %CF, !mcsema_real_eip !61
  %330 = xor i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %331 = and i32 %330, %318, !mcsema_real_eip !61
  %332 = lshr i32 %331, 31, !mcsema_real_eip !61
  %333 = trunc i32 %332 to i1, !mcsema_real_eip !61
  store i1 %333, i1* %OF, !mcsema_real_eip !61
  %334 = icmp eq i1 %326, false, !mcsema_real_eip !62
  br i1 %334, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !62

block_0xeb:                                       ; preds = %block_0xd7
  %335 = load i64, i64* %302, !mcsema_real_eip !63
  store i64 %335, i64* %XAX, !mcsema_real_eip !63
  %336 = add i64 %335, 4, !mcsema_real_eip !64
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !64
  %338 = inttoptr i64 %336 to i8*, !mcsema_real_eip !64
  %339 = load i8, i8* %338, !mcsema_real_eip !64
  %340 = sext i8 %339 to i32, !mcsema_real_eip !64
  %341 = zext i32 %340 to i64, !mcsema_real_eip !64
  store i64 %341, i64* %XCX, !mcsema_real_eip !64
  %ECX_val.83 = load i32, i32* %ECX.12, !mcsema_real_eip !65
  %342 = and i32 %ECX_val.83, 240, !mcsema_real_eip !65
  store i1 false, i1* %SF, !mcsema_real_eip !65
  %343 = icmp eq i32 %342, 0, !mcsema_real_eip !65
  store i1 %343, i1* %ZF, !mcsema_real_eip !65
  %344 = trunc i32 %342 to i8, !mcsema_real_eip !65
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !65
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !65
  %347 = xor i1 %346, true, !mcsema_real_eip !65
  store i1 %347, i1* %PF, !mcsema_real_eip !65
  store i1 false, i1* %OF, !mcsema_real_eip !65
  store i1 false, i1* %CF, !mcsema_real_eip !65
  store i1 undef, i1* %AF, !mcsema_real_eip !65
  %348 = zext i32 %342 to i64, !mcsema_real_eip !65
  store i64 %348, i64* %XCX, !mcsema_real_eip !65
  %ECX_val.85 = load i32, i32* %ECX.12, !mcsema_real_eip !66
  %349 = sub i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %350 = xor i32 %349, %ECX_val.85, !mcsema_real_eip !66
  %351 = xor i32 %350, 48, !mcsema_real_eip !66
  %352 = and i32 %351, 16, !mcsema_real_eip !66
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !66
  store i1 %353, i1* %AF, !mcsema_real_eip !66
  %354 = trunc i32 %349 to i8, !mcsema_real_eip !66
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !66
  %356 = trunc i8 %355 to i1, !mcsema_real_eip !66
  %357 = xor i1 %356, true, !mcsema_real_eip !66
  store i1 %357, i1* %PF, !mcsema_real_eip !66
  %358 = icmp eq i32 %349, 0, !mcsema_real_eip !66
  store i1 %358, i1* %ZF, !mcsema_real_eip !66
  %359 = lshr i32 %349, 31, !mcsema_real_eip !66
  %360 = trunc i32 %359 to i1, !mcsema_real_eip !66
  store i1 %360, i1* %SF, !mcsema_real_eip !66
  %361 = icmp ult i32 %ECX_val.85, 48, !mcsema_real_eip !66
  store i1 %361, i1* %CF, !mcsema_real_eip !66
  %362 = xor i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %363 = and i32 %362, %350, !mcsema_real_eip !66
  %364 = lshr i32 %363, 31, !mcsema_real_eip !66
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !66
  store i1 %365, i1* %OF, !mcsema_real_eip !66
  %366 = icmp eq i1 %358, false, !mcsema_real_eip !67
  br i1 %366, label %block_0x10e, label %block_0x102, !mcsema_real_eip !67

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %367 = add i64 %RBP_val.58, -4, !mcsema_real_eip !68
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !68
  %369 = inttoptr i64 %367 to i32*, !mcsema_real_eip !68
  store i32 -6, i32* %369, !mcsema_real_eip !68
  br label %block_0x417, !mcsema_real_eip !69

block_0x102:                                      ; preds = %block_0xeb
  %370 = add i64 %RBP_val.58, -20, !mcsema_real_eip !70
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !70
  %372 = inttoptr i64 %370 to i32*, !mcsema_real_eip !70
  store i32 -4, i32* %372, !mcsema_real_eip !70
  br label %block_0x11a, !mcsema_real_eip !71

block_0x11a:                                      ; preds = %block_0x102
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !72
  %373 = add i64 %RBP_val.87, -16, !mcsema_real_eip !72
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !72
  %375 = load i64, i64* %374, !mcsema_real_eip !72
  store i64 %375, i64* %XAX, !mcsema_real_eip !72
  %376 = add i64 %375, 5, !mcsema_real_eip !73
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !73
  %378 = inttoptr i64 %376 to i8*, !mcsema_real_eip !73
  %379 = load i8, i8* %378, !mcsema_real_eip !73
  %380 = sext i8 %379 to i32, !mcsema_real_eip !73
  %381 = zext i32 %380 to i64, !mcsema_real_eip !73
  store i64 %381, i64* %XCX, !mcsema_real_eip !73
  %ECX_val.90 = load i32, i32* %ECX.12, !mcsema_real_eip !74
  %382 = and i32 %ECX_val.90, 15, !mcsema_real_eip !74
  store i1 false, i1* %SF, !mcsema_real_eip !74
  %383 = icmp eq i32 %382, 0, !mcsema_real_eip !74
  store i1 %383, i1* %ZF, !mcsema_real_eip !74
  %384 = trunc i32 %382 to i8, !mcsema_real_eip !74
  %385 = call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !74
  %386 = trunc i8 %385 to i1, !mcsema_real_eip !74
  %387 = xor i1 %386, true, !mcsema_real_eip !74
  store i1 %387, i1* %PF, !mcsema_real_eip !74
  store i1 false, i1* %OF, !mcsema_real_eip !74
  store i1 false, i1* %CF, !mcsema_real_eip !74
  store i1 undef, i1* %AF, !mcsema_real_eip !74
  %388 = zext i32 %382 to i64, !mcsema_real_eip !74
  store i64 %388, i64* %XCX, !mcsema_real_eip !74
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !75
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !75
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !75
  store i8 %CL_val.92, i8* %DL.93, !mcsema_real_eip !75
  %389 = add i64 %RBP_val.87, -33, !mcsema_real_eip !76
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !76
  %391 = inttoptr i64 %389 to i8*, !mcsema_real_eip !76
  store i8 %CL_val.92, i8* %391, !mcsema_real_eip !76
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !77
  %392 = add i64 %RBP_val.97, -16, !mcsema_real_eip !77
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !77
  %394 = load i64, i64* %393, !mcsema_real_eip !77
  store i64 %394, i64* %XAX, !mcsema_real_eip !77
  %395 = add i64 %394, 5, !mcsema_real_eip !78
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !78
  %397 = inttoptr i64 %395 to i8*, !mcsema_real_eip !78
  %398 = load i8, i8* %397, !mcsema_real_eip !78
  %399 = sext i8 %398 to i32, !mcsema_real_eip !78
  %400 = zext i32 %399 to i64, !mcsema_real_eip !78
  store i64 %400, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.100 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %401 = and i32 %ECX_val.100, 240, !mcsema_real_eip !79
  store i1 false, i1* %SF, !mcsema_real_eip !79
  %402 = icmp eq i32 %401, 0, !mcsema_real_eip !79
  store i1 %402, i1* %ZF, !mcsema_real_eip !79
  %403 = trunc i32 %401 to i8, !mcsema_real_eip !79
  %404 = call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !79
  %405 = trunc i8 %404 to i1, !mcsema_real_eip !79
  %406 = xor i1 %405, true, !mcsema_real_eip !79
  store i1 %406, i1* %PF, !mcsema_real_eip !79
  store i1 false, i1* %OF, !mcsema_real_eip !79
  store i1 false, i1* %CF, !mcsema_real_eip !79
  store i1 undef, i1* %AF, !mcsema_real_eip !79
  %407 = zext i32 %401 to i64, !mcsema_real_eip !79
  store i64 %407, i64* %XCX, !mcsema_real_eip !79
  %CL_val.102 = load i8, i8* %CL.91, !mcsema_real_eip !80
  store i8 %CL_val.102, i8* %DL.93, !mcsema_real_eip !80
  %408 = add i64 %RBP_val.97, -34, !mcsema_real_eip !81
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !81
  %410 = inttoptr i64 %408 to i8*, !mcsema_real_eip !81
  store i8 %CL_val.102, i8* %410, !mcsema_real_eip !81
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !82
  %411 = add i64 %RBP_val.107, -33, !mcsema_real_eip !82
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !82
  %413 = inttoptr i64 %411 to i8*, !mcsema_real_eip !82
  %414 = load i8, i8* %413, !mcsema_real_eip !82
  %415 = zext i8 %414 to i32, !mcsema_real_eip !82
  %416 = zext i32 %415 to i64, !mcsema_real_eip !82
  store i64 %416, i64* %XCX, !mcsema_real_eip !82
  %ECX_val.109 = load i32, i32* %ECX.12, !mcsema_real_eip !83
  %417 = sub i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %418 = xor i32 %417, %ECX_val.109, !mcsema_real_eip !83
  %419 = xor i32 %418, 3, !mcsema_real_eip !83
  %420 = and i32 %419, 16, !mcsema_real_eip !83
  %421 = icmp ne i32 %420, 0, !mcsema_real_eip !83
  store i1 %421, i1* %AF, !mcsema_real_eip !83
  %422 = trunc i32 %417 to i8, !mcsema_real_eip !83
  %423 = call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !83
  %424 = trunc i8 %423 to i1, !mcsema_real_eip !83
  %425 = xor i1 %424, true, !mcsema_real_eip !83
  store i1 %425, i1* %PF, !mcsema_real_eip !83
  %426 = icmp eq i32 %417, 0, !mcsema_real_eip !83
  store i1 %426, i1* %ZF, !mcsema_real_eip !83
  %427 = lshr i32 %417, 31, !mcsema_real_eip !83
  %428 = trunc i32 %427 to i1, !mcsema_real_eip !83
  store i1 %428, i1* %SF, !mcsema_real_eip !83
  %429 = icmp ult i32 %ECX_val.109, 3, !mcsema_real_eip !83
  store i1 %429, i1* %CF, !mcsema_real_eip !83
  %430 = xor i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %431 = and i32 %430, %418, !mcsema_real_eip !83
  %432 = lshr i32 %431, 31, !mcsema_real_eip !83
  %433 = trunc i32 %432 to i1, !mcsema_real_eip !83
  store i1 %433, i1* %OF, !mcsema_real_eip !83
  %434 = icmp eq i1 %426, false, !mcsema_real_eip !84
  br i1 %434, label %block_0x165, label %block_0x14a, !mcsema_real_eip !84

block_0x14a:                                      ; preds = %block_0x11a
  %435 = add i64 %RBP_val.107, -34, !mcsema_real_eip !85
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !85
  %437 = inttoptr i64 %435 to i8*, !mcsema_real_eip !85
  %438 = load i8, i8* %437, !mcsema_real_eip !85
  %439 = zext i8 %438 to i32, !mcsema_real_eip !85
  %440 = zext i32 %439 to i64, !mcsema_real_eip !85
  store i64 %440, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.118 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  %441 = sub i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %442 = xor i32 %441, %EAX_val.118, !mcsema_real_eip !86
  %443 = xor i32 %442, 96, !mcsema_real_eip !86
  %444 = and i32 %443, 16, !mcsema_real_eip !86
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !86
  store i1 %445, i1* %AF, !mcsema_real_eip !86
  %446 = trunc i32 %441 to i8, !mcsema_real_eip !86
  %447 = call i8 @llvm.ctpop.i8(i8 %446), !mcsema_real_eip !86
  %448 = trunc i8 %447 to i1, !mcsema_real_eip !86
  %449 = xor i1 %448, true, !mcsema_real_eip !86
  store i1 %449, i1* %PF, !mcsema_real_eip !86
  %450 = icmp eq i32 %441, 0, !mcsema_real_eip !86
  store i1 %450, i1* %ZF, !mcsema_real_eip !86
  %451 = lshr i32 %441, 31, !mcsema_real_eip !86
  %452 = trunc i32 %451 to i1, !mcsema_real_eip !86
  store i1 %452, i1* %SF, !mcsema_real_eip !86
  %453 = icmp ult i32 %EAX_val.118, 96, !mcsema_real_eip !86
  store i1 %453, i1* %CF, !mcsema_real_eip !86
  %454 = xor i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %455 = and i32 %454, %442, !mcsema_real_eip !86
  %456 = lshr i32 %455, 31, !mcsema_real_eip !86
  %457 = trunc i32 %456 to i1, !mcsema_real_eip !86
  store i1 %457, i1* %OF, !mcsema_real_eip !86
  %458 = icmp eq i1 %450, false, !mcsema_real_eip !87
  br i1 %458, label %block_0x165, label %block_0x157, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %459 = add i64 %RBP_val.107, -20, !mcsema_real_eip !88
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !88
  %461 = inttoptr i64 %459 to i32*, !mcsema_real_eip !88
  %462 = load i32, i32* %461, !mcsema_real_eip !88
  %463 = zext i32 %462 to i64, !mcsema_real_eip !88
  store i64 %463, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.112 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %464 = add i32 5, %EAX_val.112, !mcsema_real_eip !89
  %465 = xor i32 %464, %EAX_val.112, !mcsema_real_eip !89
  %466 = xor i32 %465, 5, !mcsema_real_eip !89
  %467 = and i32 %466, 16, !mcsema_real_eip !89
  %468 = icmp ne i32 %467, 0, !mcsema_real_eip !89
  store i1 %468, i1* %AF, !mcsema_real_eip !89
  %469 = lshr i32 %464, 31, !mcsema_real_eip !89
  %470 = trunc i32 %469 to i1, !mcsema_real_eip !89
  store i1 %470, i1* %SF, !mcsema_real_eip !89
  %471 = icmp eq i32 %464, 0, !mcsema_real_eip !89
  store i1 %471, i1* %ZF, !mcsema_real_eip !89
  %472 = xor i32 %EAX_val.112, 5, !mcsema_real_eip !89
  %473 = xor i32 %472, -1, !mcsema_real_eip !89
  %474 = and i32 %473, %465, !mcsema_real_eip !89
  %475 = lshr i32 %474, 31, !mcsema_real_eip !89
  %476 = and i32 %475, 1, !mcsema_real_eip !89
  %477 = trunc i32 %476 to i1, !mcsema_real_eip !89
  store i1 %477, i1* %OF, !mcsema_real_eip !89
  %478 = trunc i32 %464 to i8, !mcsema_real_eip !89
  %479 = call i8 @llvm.ctpop.i8(i8 %478), !mcsema_real_eip !89
  %480 = trunc i8 %479 to i1, !mcsema_real_eip !89
  %481 = xor i1 %480, true, !mcsema_real_eip !89
  store i1 %481, i1* %PF, !mcsema_real_eip !89
  %482 = icmp ult i32 %464, %EAX_val.112, !mcsema_real_eip !89
  store i1 %482, i1* %CF, !mcsema_real_eip !89
  %483 = zext i32 %464 to i64, !mcsema_real_eip !89
  store i64 %483, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.115 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.115, i32* %461, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !85

block_0x16e:                                      ; preds = %block_0x157, %block_0x165
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !91
  %484 = add i64 %RBP_val.119, -16, !mcsema_real_eip !91
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !91
  %486 = load i64, i64* %485, !mcsema_real_eip !91
  store i64 %486, i64* %XAX, !mcsema_real_eip !91
  %487 = add i64 %486, 6, !mcsema_real_eip !92
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !92
  %489 = inttoptr i64 %487 to i8*, !mcsema_real_eip !92
  %490 = load i8, i8* %489, !mcsema_real_eip !92
  %491 = zext i8 %490 to i32, !mcsema_real_eip !92
  %492 = zext i32 %491 to i64, !mcsema_real_eip !92
  store i64 %492, i64* %XDI, !mcsema_real_eip !92
  %RSP_val.122 = load i64, i64* %XSP, !mcsema_real_eip !93
  %493 = sub i64 %RSP_val.122, 8, !mcsema_real_eip !93
  %494 = inttoptr i64 %493 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %494, !mcsema_real_eip !93
  store i64 %493, i64* %XSP, !mcsema_real_eip !93
  %495 = call x86_64_sysvcc i64 @_to_byte(i64 %492), !mcsema_real_eip !93
  store i64 %495, i64* %XAX, !mcsema_real_eip !93
  %AL.123 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.124 = load i8, i8* %AL.123, !mcsema_real_eip !94
  store i8 %AL_val.124, i8* %CL.91, !mcsema_real_eip !94
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !95
  %496 = add i64 %RBP_val.126, -35, !mcsema_real_eip !95
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !95
  %498 = inttoptr i64 %496 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.124, i8* %498, !mcsema_real_eip !95
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !96
  %499 = add i64 %RBP_val.129, -16, !mcsema_real_eip !96
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !96
  %501 = load i64, i64* %500, !mcsema_real_eip !96
  store i64 %501, i64* %XDX, !mcsema_real_eip !96
  %502 = add i64 %501, 7, !mcsema_real_eip !97
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !97
  %504 = inttoptr i64 %502 to i8*, !mcsema_real_eip !97
  %505 = load i8, i8* %504, !mcsema_real_eip !97
  %506 = zext i8 %505 to i32, !mcsema_real_eip !97
  %507 = zext i32 %506 to i64, !mcsema_real_eip !97
  store i64 %507, i64* %XDI, !mcsema_real_eip !97
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !98
  %508 = sub i64 %RSP_val.132, 8, !mcsema_real_eip !98
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %509, !mcsema_real_eip !98
  store i64 %508, i64* %XSP, !mcsema_real_eip !98
  %510 = call x86_64_sysvcc i64 @_to_byte(i64 %507), !mcsema_real_eip !98
  store i64 %510, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !99
  %511 = add i64 %RBP_val.133, -35, !mcsema_real_eip !99
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !99
  %513 = inttoptr i64 %511 to i8*, !mcsema_real_eip !99
  %514 = load i8, i8* %513, !mcsema_real_eip !99
  %515 = zext i8 %514 to i32, !mcsema_real_eip !99
  %516 = zext i32 %515 to i64, !mcsema_real_eip !99
  store i64 %516, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.135 = load i32, i32* %EDI.63, !mcsema_real_eip !100
  %EAX_val.137 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %517 = or i32 %EDI_val.135, %EAX_val.137, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %518 = lshr i32 %517, 31, !mcsema_real_eip !100
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !100
  store i1 %519, i1* %SF, !mcsema_real_eip !100
  %520 = icmp eq i32 %517, 0, !mcsema_real_eip !100
  store i1 %520, i1* %ZF, !mcsema_real_eip !100
  %521 = trunc i32 %517 to i8, !mcsema_real_eip !100
  %522 = call i8 @llvm.ctpop.i8(i8 %521), !mcsema_real_eip !100
  %523 = trunc i8 %522 to i1, !mcsema_real_eip !100
  %524 = xor i1 %523, true, !mcsema_real_eip !100
  store i1 %524, i1* %PF, !mcsema_real_eip !100
  %525 = zext i32 %517 to i64, !mcsema_real_eip !100
  store i64 %525, i64* %XDI, !mcsema_real_eip !100
  %DIL.138 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.139 = load i8, i8* %DIL.138, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %CL.91, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %513, !mcsema_real_eip !102
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !103
  %526 = add i64 %RBP_val.144, -35, !mcsema_real_eip !103
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !103
  %528 = inttoptr i64 %526 to i8*, !mcsema_real_eip !103
  %529 = load i8, i8* %528, !mcsema_real_eip !103
  %530 = zext i8 %529 to i32, !mcsema_real_eip !103
  %531 = zext i32 %530 to i64, !mcsema_real_eip !103
  store i64 %531, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.146 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %532 = xor i32 %EAX_val.146, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %533 = lshr i32 %532, 31, !mcsema_real_eip !104
  %534 = trunc i32 %533 to i1, !mcsema_real_eip !104
  store i1 %534, i1* %SF, !mcsema_real_eip !104
  %535 = icmp eq i32 %532, 0, !mcsema_real_eip !104
  store i1 %535, i1* %ZF, !mcsema_real_eip !104
  %536 = trunc i32 %532 to i8, !mcsema_real_eip !104
  %537 = call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !104
  %538 = trunc i8 %537 to i1, !mcsema_real_eip !104
  %539 = xor i1 %538, true, !mcsema_real_eip !104
  store i1 %539, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %540 = zext i32 %532 to i64, !mcsema_real_eip !104
  store i64 %540, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %541 = sub i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %542 = xor i32 %541, %EAX_val.148, !mcsema_real_eip !105
  %543 = xor i32 %542, 70, !mcsema_real_eip !105
  %544 = and i32 %543, 16, !mcsema_real_eip !105
  %545 = icmp ne i32 %544, 0, !mcsema_real_eip !105
  store i1 %545, i1* %AF, !mcsema_real_eip !105
  %546 = trunc i32 %541 to i8, !mcsema_real_eip !105
  %547 = call i8 @llvm.ctpop.i8(i8 %546), !mcsema_real_eip !105
  %548 = trunc i8 %547 to i1, !mcsema_real_eip !105
  %549 = xor i1 %548, true, !mcsema_real_eip !105
  store i1 %549, i1* %PF, !mcsema_real_eip !105
  %550 = icmp eq i32 %541, 0, !mcsema_real_eip !105
  store i1 %550, i1* %ZF, !mcsema_real_eip !105
  %551 = lshr i32 %541, 31, !mcsema_real_eip !105
  %552 = trunc i32 %551 to i1, !mcsema_real_eip !105
  store i1 %552, i1* %SF, !mcsema_real_eip !105
  %553 = icmp ult i32 %EAX_val.148, 70, !mcsema_real_eip !105
  store i1 %553, i1* %CF, !mcsema_real_eip !105
  %554 = xor i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %555 = and i32 %554, %542, !mcsema_real_eip !105
  %556 = lshr i32 %555, 31, !mcsema_real_eip !105
  %557 = trunc i32 %556 to i1, !mcsema_real_eip !105
  store i1 %557, i1* %OF, !mcsema_real_eip !105
  %558 = icmp eq i1 %550, false, !mcsema_real_eip !106
  br i1 %558, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x157:                                      ; preds = %block_0x14a
  %559 = add i64 %RBP_val.107, -20, !mcsema_real_eip !107
  %560 = inttoptr i64 %559 to i64*, !mcsema_real_eip !107
  %561 = inttoptr i64 %559 to i32*, !mcsema_real_eip !107
  %562 = load i32, i32* %561, !mcsema_real_eip !107
  %563 = zext i32 %562 to i64, !mcsema_real_eip !107
  store i64 %563, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.151 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %564 = add i32 4, %EAX_val.151, !mcsema_real_eip !108
  %565 = xor i32 %564, %EAX_val.151, !mcsema_real_eip !108
  %566 = xor i32 %565, 4, !mcsema_real_eip !108
  %567 = and i32 %566, 16, !mcsema_real_eip !108
  %568 = icmp ne i32 %567, 0, !mcsema_real_eip !108
  store i1 %568, i1* %AF, !mcsema_real_eip !108
  %569 = lshr i32 %564, 31, !mcsema_real_eip !108
  %570 = trunc i32 %569 to i1, !mcsema_real_eip !108
  store i1 %570, i1* %SF, !mcsema_real_eip !108
  %571 = icmp eq i32 %564, 0, !mcsema_real_eip !108
  store i1 %571, i1* %ZF, !mcsema_real_eip !108
  %572 = xor i32 %EAX_val.151, 4, !mcsema_real_eip !108
  %573 = xor i32 %572, -1, !mcsema_real_eip !108
  %574 = and i32 %573, %565, !mcsema_real_eip !108
  %575 = lshr i32 %574, 31, !mcsema_real_eip !108
  %576 = and i32 %575, 1, !mcsema_real_eip !108
  %577 = trunc i32 %576 to i1, !mcsema_real_eip !108
  store i1 %577, i1* %OF, !mcsema_real_eip !108
  %578 = trunc i32 %564 to i8, !mcsema_real_eip !108
  %579 = call i8 @llvm.ctpop.i8(i8 %578), !mcsema_real_eip !108
  %580 = trunc i8 %579 to i1, !mcsema_real_eip !108
  %581 = xor i1 %580, true, !mcsema_real_eip !108
  store i1 %581, i1* %PF, !mcsema_real_eip !108
  %582 = icmp ult i32 %564, %EAX_val.151, !mcsema_real_eip !108
  store i1 %582, i1* %CF, !mcsema_real_eip !108
  %583 = zext i32 %564 to i64, !mcsema_real_eip !108
  store i64 %583, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.154 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.154, i32* %561, !mcsema_real_eip !109
  br label %block_0x16e, !mcsema_real_eip !110

block_0x1a9:                                      ; preds = %block_0x16e
  %584 = add i64 %RBP_val.144, -20, !mcsema_real_eip !111
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !111
  %586 = inttoptr i64 %584 to i32*, !mcsema_real_eip !111
  %587 = load i32, i32* %586, !mcsema_real_eip !111
  %588 = zext i32 %587 to i64, !mcsema_real_eip !111
  store i64 %588, i64* %XAX, !mcsema_real_eip !111
  %EAX_val.166 = load i32, i32* %EAX.9, !mcsema_real_eip !112
  %589 = sub i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %590 = xor i32 %589, %EAX_val.166, !mcsema_real_eip !112
  %591 = xor i32 %590, 1, !mcsema_real_eip !112
  %592 = and i32 %591, 16, !mcsema_real_eip !112
  %593 = icmp ne i32 %592, 0, !mcsema_real_eip !112
  store i1 %593, i1* %AF, !mcsema_real_eip !112
  %594 = trunc i32 %589 to i8, !mcsema_real_eip !112
  %595 = call i8 @llvm.ctpop.i8(i8 %594), !mcsema_real_eip !112
  %596 = trunc i8 %595 to i1, !mcsema_real_eip !112
  %597 = xor i1 %596, true, !mcsema_real_eip !112
  store i1 %597, i1* %PF, !mcsema_real_eip !112
  %598 = icmp eq i32 %589, 0, !mcsema_real_eip !112
  store i1 %598, i1* %ZF, !mcsema_real_eip !112
  %599 = lshr i32 %589, 31, !mcsema_real_eip !112
  %600 = trunc i32 %599 to i1, !mcsema_real_eip !112
  store i1 %600, i1* %SF, !mcsema_real_eip !112
  %601 = icmp ult i32 %EAX_val.166, 1, !mcsema_real_eip !112
  store i1 %601, i1* %CF, !mcsema_real_eip !112
  %602 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %603 = and i32 %602, %590, !mcsema_real_eip !112
  %604 = lshr i32 %603, 31, !mcsema_real_eip !112
  %605 = trunc i32 %604 to i1, !mcsema_real_eip !112
  store i1 %605, i1* %OF, !mcsema_real_eip !112
  %606 = zext i32 %589 to i64, !mcsema_real_eip !112
  store i64 %606, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.169 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  store i32 %EAX_val.169, i32* %586, !mcsema_real_eip !113
  br label %block_0x1c2, !mcsema_real_eip !114

block_0x1b7:                                      ; preds = %block_0x16e
  %607 = add i64 %RBP_val.144, -20, !mcsema_real_eip !115
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !115
  %609 = inttoptr i64 %607 to i32*, !mcsema_real_eip !115
  %610 = load i32, i32* %609, !mcsema_real_eip !115
  %611 = zext i32 %610 to i64, !mcsema_real_eip !115
  store i64 %611, i64* %XCX, !mcsema_real_eip !115
  %612 = load i32, i32* %609, !mcsema_real_eip !116
  %613 = zext i32 %612 to i64, !mcsema_real_eip !116
  store i64 %613, i64* %XAX, !mcsema_real_eip !116
  %EAX_val.158 = load i32, i32* %EAX.9, !mcsema_real_eip !117
  %CL_val.160 = load i8, i8* %CL.91, !mcsema_real_eip !117
  %CL_val.160.zext = zext i8 %CL_val.160 to i32, !mcsema_real_eip !117
  %614 = and i32 %CL_val.160.zext, 31, !mcsema_real_eip !117
  %615 = sub i32 %CL_val.160.zext, 1, !mcsema_real_eip !117
  %616 = icmp ne i32 %614, 0, !mcsema_real_eip !117
  %617 = select i1 %616, i32 %615, i32 0, !mcsema_real_eip !117
  %618 = select i1 %616, i32 1, i32 0, !mcsema_real_eip !117
  %619 = shl i32 %EAX_val.158, %617, !mcsema_real_eip !117
  %620 = and i32 %619, -2147483648, !mcsema_real_eip !117
  %621 = icmp ne i32 %620, 0, !mcsema_real_eip !117
  %622 = select i1 %616, i1 %621, i1 %553, !mcsema_real_eip !117
  %623 = shl i32 %619, %618, !mcsema_real_eip !117
  %624 = icmp eq i32 %614, 1, !mcsema_real_eip !117
  %625 = and i32 %623, -2147483648, !mcsema_real_eip !117
  %626 = icmp ne i32 %625, 0, !mcsema_real_eip !117
  %627 = xor i1 %626, %622, !mcsema_real_eip !117
  %628 = select i1 %624, i1 %627, i1 %557, !mcsema_real_eip !117
  store i1 %628, i1* %OF, !mcsema_real_eip !117
  store i1 %622, i1* %CF, !mcsema_real_eip !117
  %629 = icmp eq i32 %623, 0, !mcsema_real_eip !117
  %630 = select i1 %616, i1 %629, i1 %550, !mcsema_real_eip !117
  store i1 %630, i1* %ZF, !mcsema_real_eip !117
  %631 = icmp slt i32 %623, 0, !mcsema_real_eip !117
  %632 = select i1 %616, i1 %631, i1 %552, !mcsema_real_eip !117
  store i1 %632, i1* %SF, !mcsema_real_eip !117
  %633 = trunc i32 %623 to i8, !mcsema_real_eip !117
  %634 = call i8 @llvm.ctpop.i8(i8 %633), !mcsema_real_eip !117
  %635 = trunc i8 %634 to i1, !mcsema_real_eip !117
  %636 = xor i1 %635, true, !mcsema_real_eip !117
  %637 = select i1 %616, i1 %636, i1 %549, !mcsema_real_eip !117
  store i1 %637, i1* %PF, !mcsema_real_eip !117
  %638 = zext i32 %623 to i64, !mcsema_real_eip !117
  store i64 %638, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.163 = load i32, i32* %EAX.9, !mcsema_real_eip !118
  store i32 %EAX_val.163, i32* %609, !mcsema_real_eip !118
  br label %block_0x1c2, !mcsema_real_eip !111

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %RBP_val.170 = load i64, i64* %XBP, !mcsema_real_eip !119
  %639 = add i64 %RBP_val.170, -20, !mcsema_real_eip !119
  %640 = inttoptr i64 %639 to i64*, !mcsema_real_eip !119
  %641 = inttoptr i64 %639 to i32*, !mcsema_real_eip !119
  %642 = load i32, i32* %641, !mcsema_real_eip !119
  store i1 false, i1* %AF, !mcsema_real_eip !119
  %643 = trunc i32 %642 to i8, !mcsema_real_eip !119
  %644 = call i8 @llvm.ctpop.i8(i8 %643), !mcsema_real_eip !119
  %645 = trunc i8 %644 to i1, !mcsema_real_eip !119
  %646 = xor i1 %645, true, !mcsema_real_eip !119
  store i1 %646, i1* %PF, !mcsema_real_eip !119
  %647 = icmp eq i32 %642, 0, !mcsema_real_eip !119
  store i1 %647, i1* %ZF, !mcsema_real_eip !119
  %648 = lshr i32 %642, 31, !mcsema_real_eip !119
  %649 = trunc i32 %648 to i1, !mcsema_real_eip !119
  store i1 %649, i1* %SF, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  br i1 %647, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !120

block_0x1cc:                                      ; preds = %block_0x1c2
  %650 = add i64 %RBP_val.170, -4, !mcsema_real_eip !121
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !121
  %652 = inttoptr i64 %650 to i32*, !mcsema_real_eip !121
  store i32 -7, i32* %652, !mcsema_real_eip !121
  br label %block_0x417, !mcsema_real_eip !122

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI_val.172 = load i32, i32* %EDI.63, !mcsema_real_eip !123
  store i1 false, i1* %CF, !mcsema_real_eip !123
  store i1 false, i1* %OF, !mcsema_real_eip !123
  store i1 false, i1* %SF, !mcsema_real_eip !123
  store i1 true, i1* %ZF, !mcsema_real_eip !123
  store i1 true, i1* %PF, !mcsema_real_eip !123
  store i1 undef, i1* %AF, !mcsema_real_eip !123
  store i64 0, i64* %XDI, !mcsema_real_eip !123
  store i64 4, i64* %XDX, !mcsema_real_eip !124
  %653 = add i64 %RBP_val.170, -16, !mcsema_real_eip !125
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !125
  %655 = load i64, i64* %654, !mcsema_real_eip !125
  store i64 %655, i64* %XAX, !mcsema_real_eip !125
  %656 = add i64 8, %655, !mcsema_real_eip !126
  %657 = xor i64 %656, %655, !mcsema_real_eip !126
  %658 = xor i64 %657, 8, !mcsema_real_eip !126
  %659 = and i64 %658, 16, !mcsema_real_eip !126
  %660 = icmp ne i64 %659, 0, !mcsema_real_eip !126
  store i1 %660, i1* %AF, !mcsema_real_eip !126
  %661 = lshr i64 %656, 63, !mcsema_real_eip !126
  %662 = trunc i64 %661 to i1, !mcsema_real_eip !126
  store i1 %662, i1* %SF, !mcsema_real_eip !126
  %663 = icmp eq i64 %656, 0, !mcsema_real_eip !126
  store i1 %663, i1* %ZF, !mcsema_real_eip !126
  %664 = xor i64 %655, 8, !mcsema_real_eip !126
  %665 = xor i64 %664, -1, !mcsema_real_eip !126
  %666 = and i64 %665, %657, !mcsema_real_eip !126
  %667 = lshr i64 %666, 63, !mcsema_real_eip !126
  %668 = and i64 %667, 1, !mcsema_real_eip !126
  %669 = trunc i64 %668 to i1, !mcsema_real_eip !126
  store i1 %669, i1* %OF, !mcsema_real_eip !126
  %670 = trunc i64 %656 to i8, !mcsema_real_eip !126
  %671 = call i8 @llvm.ctpop.i8(i8 %670), !mcsema_real_eip !126
  %672 = trunc i8 %671 to i1, !mcsema_real_eip !126
  %673 = xor i1 %672, true, !mcsema_real_eip !126
  store i1 %673, i1* %PF, !mcsema_real_eip !126
  %674 = icmp ult i64 %656, %655, !mcsema_real_eip !126
  store i1 %674, i1* %CF, !mcsema_real_eip !126
  store i64 %656, i64* %XAX, !mcsema_real_eip !126
  store i64 %656, i64* %XSI, !mcsema_real_eip !127
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !128
  %675 = sub i64 %RSP_val.181, 8, !mcsema_real_eip !128
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !128
  store i64 -2415393069852865332, i64* %676, !mcsema_real_eip !128
  store i64 %675, i64* %XSP, !mcsema_real_eip !128
  %677 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %656, i64 4), !mcsema_real_eip !128
  store i64 %677, i64* %XAX, !mcsema_real_eip !128
  %AX.182 = bitcast i64* %XAX to i16*, !mcsema_real_eip !129
  %AX_val.183 = load i16, i16* %AX.182, !mcsema_real_eip !129
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !129
  store i16 %AX_val.183, i16* %CX.184, !mcsema_real_eip !129
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !130
  %678 = add i64 %RBP_val.185, -38, !mcsema_real_eip !130
  %679 = inttoptr i64 %678 to i64*, !mcsema_real_eip !130
  %680 = inttoptr i64 %678 to i16*, !mcsema_real_eip !130
  store i16 %AX_val.183, i16* %680, !mcsema_real_eip !130
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !131
  %681 = add i64 %RBP_val.188, -38, !mcsema_real_eip !131
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !131
  %683 = inttoptr i64 %681 to i16*, !mcsema_real_eip !131
  %684 = load i16, i16* %683, !mcsema_real_eip !131
  %685 = zext i16 %684 to i32, !mcsema_real_eip !131
  %686 = zext i32 %685 to i64, !mcsema_real_eip !131
  store i64 %686, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.190 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %687 = or i32 %EAX_val.190, 21845, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %688 = lshr i32 %687, 31, !mcsema_real_eip !132
  %689 = trunc i32 %688 to i1, !mcsema_real_eip !132
  store i1 %689, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %690 = trunc i32 %687 to i8, !mcsema_real_eip !132
  %691 = call i8 @llvm.ctpop.i8(i8 %690), !mcsema_real_eip !132
  %692 = trunc i8 %691 to i1, !mcsema_real_eip !132
  %693 = xor i1 %692, true, !mcsema_real_eip !132
  store i1 %693, i1* %PF, !mcsema_real_eip !132
  %694 = zext i32 %687 to i64, !mcsema_real_eip !132
  store i64 %694, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %695 = sub i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %696 = xor i32 %695, %EAX_val.192, !mcsema_real_eip !133
  %697 = xor i32 %696, 56663, !mcsema_real_eip !133
  %698 = and i32 %697, 16, !mcsema_real_eip !133
  %699 = icmp ne i32 %698, 0, !mcsema_real_eip !133
  store i1 %699, i1* %AF, !mcsema_real_eip !133
  %700 = trunc i32 %695 to i8, !mcsema_real_eip !133
  %701 = call i8 @llvm.ctpop.i8(i8 %700), !mcsema_real_eip !133
  %702 = trunc i8 %701 to i1, !mcsema_real_eip !133
  %703 = xor i1 %702, true, !mcsema_real_eip !133
  store i1 %703, i1* %PF, !mcsema_real_eip !133
  %704 = icmp eq i32 %695, 0, !mcsema_real_eip !133
  store i1 %704, i1* %ZF, !mcsema_real_eip !133
  %705 = lshr i32 %695, 31, !mcsema_real_eip !133
  %706 = trunc i32 %705 to i1, !mcsema_real_eip !133
  store i1 %706, i1* %SF, !mcsema_real_eip !133
  %707 = icmp ult i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  store i1 %707, i1* %CF, !mcsema_real_eip !133
  %708 = xor i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %709 = and i32 %708, %696, !mcsema_real_eip !133
  %710 = lshr i32 %709, 31, !mcsema_real_eip !133
  %711 = trunc i32 %710 to i1, !mcsema_real_eip !133
  store i1 %711, i1* %OF, !mcsema_real_eip !133
  %712 = icmp eq i1 %704, false, !mcsema_real_eip !134
  br i1 %712, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !134

block_0x20a:                                      ; preds = %block_0x1d8
  %713 = load i16, i16* %683, !mcsema_real_eip !135
  %714 = zext i16 %713 to i32, !mcsema_real_eip !135
  %715 = zext i32 %714 to i64, !mcsema_real_eip !135
  store i64 %715, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.197 = load i32, i32* %EAX.9, !mcsema_real_eip !136
  %716 = or i32 %EAX_val.197, 43690, !mcsema_real_eip !136
  store i1 undef, i1* %AF, !mcsema_real_eip !136
  store i1 false, i1* %OF, !mcsema_real_eip !136
  store i1 false, i1* %CF, !mcsema_real_eip !136
  %717 = lshr i32 %716, 31, !mcsema_real_eip !136
  %718 = trunc i32 %717 to i1, !mcsema_real_eip !136
  store i1 %718, i1* %SF, !mcsema_real_eip !136
  store i1 false, i1* %ZF, !mcsema_real_eip !136
  %719 = trunc i32 %716 to i8, !mcsema_real_eip !136
  %720 = call i8 @llvm.ctpop.i8(i8 %719), !mcsema_real_eip !136
  %721 = trunc i8 %720 to i1, !mcsema_real_eip !136
  %722 = xor i1 %721, true, !mcsema_real_eip !136
  store i1 %722, i1* %PF, !mcsema_real_eip !136
  %723 = zext i32 %716 to i64, !mcsema_real_eip !136
  store i64 %723, i64* %XAX, !mcsema_real_eip !136
  %EAX_val.199 = load i32, i32* %EAX.9, !mcsema_real_eip !137
  %724 = sub i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %725 = xor i32 %724, %EAX_val.199, !mcsema_real_eip !137
  %726 = xor i32 %725, 65211, !mcsema_real_eip !137
  %727 = and i32 %726, 16, !mcsema_real_eip !137
  %728 = icmp ne i32 %727, 0, !mcsema_real_eip !137
  store i1 %728, i1* %AF, !mcsema_real_eip !137
  %729 = trunc i32 %724 to i8, !mcsema_real_eip !137
  %730 = call i8 @llvm.ctpop.i8(i8 %729), !mcsema_real_eip !137
  %731 = trunc i8 %730 to i1, !mcsema_real_eip !137
  %732 = xor i1 %731, true, !mcsema_real_eip !137
  store i1 %732, i1* %PF, !mcsema_real_eip !137
  %733 = icmp eq i32 %724, 0, !mcsema_real_eip !137
  store i1 %733, i1* %ZF, !mcsema_real_eip !137
  %734 = lshr i32 %724, 31, !mcsema_real_eip !137
  %735 = trunc i32 %734 to i1, !mcsema_real_eip !137
  store i1 %735, i1* %SF, !mcsema_real_eip !137
  %736 = icmp ult i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  store i1 %736, i1* %CF, !mcsema_real_eip !137
  %737 = xor i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %738 = and i32 %737, %725, !mcsema_real_eip !137
  %739 = lshr i32 %738, 31, !mcsema_real_eip !137
  %740 = trunc i32 %739 to i1, !mcsema_real_eip !137
  store i1 %740, i1* %OF, !mcsema_real_eip !137
  %741 = icmp eq i1 %733, false, !mcsema_real_eip !138
  br i1 %741, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !138

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %742 = add i64 %RBP_val.188, -20, !mcsema_real_eip !139
  %743 = inttoptr i64 %742 to i64*, !mcsema_real_eip !139
  %744 = inttoptr i64 %742 to i32*, !mcsema_real_eip !139
  store i32 48059, i32* %744, !mcsema_real_eip !139
  br label %block_0x231, !mcsema_real_eip !135

block_0x231:                                      ; preds = %block_0x21e, %block_0x22a
  %EDI_val.201 = load i32, i32* %EDI.63, !mcsema_real_eip !140
  store i1 false, i1* %CF, !mcsema_real_eip !140
  store i1 false, i1* %OF, !mcsema_real_eip !140
  store i1 false, i1* %SF, !mcsema_real_eip !140
  store i1 true, i1* %ZF, !mcsema_real_eip !140
  store i1 true, i1* %PF, !mcsema_real_eip !140
  store i1 undef, i1* %AF, !mcsema_real_eip !140
  store i64 0, i64* %XDI, !mcsema_real_eip !140
  store i64 8, i64* %XDX, !mcsema_real_eip !141
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !142
  %745 = add i64 %RBP_val.204, -16, !mcsema_real_eip !142
  %746 = inttoptr i64 %745 to i64*, !mcsema_real_eip !142
  %747 = load i64, i64* %746, !mcsema_real_eip !142
  store i64 %747, i64* %XAX, !mcsema_real_eip !142
  %748 = add i64 12, %747, !mcsema_real_eip !143
  %749 = xor i64 %748, %747, !mcsema_real_eip !143
  %750 = xor i64 %749, 12, !mcsema_real_eip !143
  %751 = and i64 %750, 16, !mcsema_real_eip !143
  %752 = icmp ne i64 %751, 0, !mcsema_real_eip !143
  store i1 %752, i1* %AF, !mcsema_real_eip !143
  %753 = lshr i64 %748, 63, !mcsema_real_eip !143
  %754 = trunc i64 %753 to i1, !mcsema_real_eip !143
  store i1 %754, i1* %SF, !mcsema_real_eip !143
  %755 = icmp eq i64 %748, 0, !mcsema_real_eip !143
  store i1 %755, i1* %ZF, !mcsema_real_eip !143
  %756 = xor i64 %747, 12, !mcsema_real_eip !143
  %757 = xor i64 %756, -1, !mcsema_real_eip !143
  %758 = and i64 %757, %749, !mcsema_real_eip !143
  %759 = lshr i64 %758, 63, !mcsema_real_eip !143
  %760 = and i64 %759, 1, !mcsema_real_eip !143
  %761 = trunc i64 %760 to i1, !mcsema_real_eip !143
  store i1 %761, i1* %OF, !mcsema_real_eip !143
  %762 = trunc i64 %748 to i8, !mcsema_real_eip !143
  %763 = call i8 @llvm.ctpop.i8(i8 %762), !mcsema_real_eip !143
  %764 = trunc i8 %763 to i1, !mcsema_real_eip !143
  %765 = xor i1 %764, true, !mcsema_real_eip !143
  store i1 %765, i1* %PF, !mcsema_real_eip !143
  %766 = icmp ult i64 %748, %747, !mcsema_real_eip !143
  store i1 %766, i1* %CF, !mcsema_real_eip !143
  store i64 %748, i64* %XAX, !mcsema_real_eip !143
  store i64 %748, i64* %XSI, !mcsema_real_eip !144
  %RSP_val.210 = load i64, i64* %XSP, !mcsema_real_eip !145
  %767 = sub i64 %RSP_val.210, 8, !mcsema_real_eip !145
  %768 = inttoptr i64 %767 to i64*, !mcsema_real_eip !145
  store i64 -2415393069852865332, i64* %768, !mcsema_real_eip !145
  store i64 %767, i64* %XSP, !mcsema_real_eip !145
  %769 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %748, i64 8), !mcsema_real_eip !145
  store i64 %769, i64* %XAX, !mcsema_real_eip !145
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !146
  %770 = add i64 %RBP_val.211, -44, !mcsema_real_eip !146
  %771 = inttoptr i64 %770 to i64*, !mcsema_real_eip !146
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %772 = inttoptr i64 %770 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.213, i32* %772, !mcsema_real_eip !146
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !147
  %773 = add i64 %RBP_val.214, -44, !mcsema_real_eip !147
  %774 = inttoptr i64 %773 to i64*, !mcsema_real_eip !147
  %775 = inttoptr i64 %773 to i32*, !mcsema_real_eip !147
  %776 = load i32, i32* %775, !mcsema_real_eip !147
  %777 = zext i32 %776 to i64, !mcsema_real_eip !147
  store i64 %777, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !148
  %778 = xor i32 %EAX_val.216, -1534560611, !mcsema_real_eip !148
  store i1 false, i1* %CF, !mcsema_real_eip !148
  store i1 false, i1* %OF, !mcsema_real_eip !148
  %779 = lshr i32 %778, 31, !mcsema_real_eip !148
  %780 = trunc i32 %779 to i1, !mcsema_real_eip !148
  store i1 %780, i1* %SF, !mcsema_real_eip !148
  %781 = icmp eq i32 %778, 0, !mcsema_real_eip !148
  store i1 %781, i1* %ZF, !mcsema_real_eip !148
  %782 = trunc i32 %778 to i8, !mcsema_real_eip !148
  %783 = call i8 @llvm.ctpop.i8(i8 %782), !mcsema_real_eip !148
  %784 = trunc i8 %783 to i1, !mcsema_real_eip !148
  %785 = xor i1 %784, true, !mcsema_real_eip !148
  store i1 %785, i1* %PF, !mcsema_real_eip !148
  store i1 undef, i1* %AF, !mcsema_real_eip !148
  %786 = zext i32 %778 to i64, !mcsema_real_eip !148
  store i64 %786, i64* %XAX, !mcsema_real_eip !148
  %787 = add i64 %RBP_val.214, -48, !mcsema_real_eip !149
  %788 = inttoptr i64 %787 to i64*, !mcsema_real_eip !149
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %789 = inttoptr i64 %787 to i32*, !mcsema_real_eip !149
  store i32 %EAX_val.219, i32* %789, !mcsema_real_eip !149
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !150
  %790 = add i64 %RBP_val.220, -48, !mcsema_real_eip !150
  %791 = inttoptr i64 %790 to i64*, !mcsema_real_eip !150
  %792 = inttoptr i64 %790 to i32*, !mcsema_real_eip !150
  %793 = load i32, i32* %792, !mcsema_real_eip !150
  %794 = zext i32 %793 to i64, !mcsema_real_eip !150
  store i64 %794, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !151
  %795 = lshr i32 %EAX_val.222, 15, !mcsema_real_eip !151
  %796 = and i32 %795, 1, !mcsema_real_eip !151
  %797 = icmp ne i32 %796, 0, !mcsema_real_eip !151
  %798 = load i1, i1* %CF, !mcsema_real_eip !151
  %799 = lshr i32 %795, 1, !mcsema_real_eip !151
  %800 = load i1, i1* %OF, !mcsema_real_eip !151
  %801 = and i32 %EAX_val.222, -2147483648, !mcsema_real_eip !151
  %802 = icmp ne i32 %801, 0, !mcsema_real_eip !151
  store i1 %797, i1* %CF, !mcsema_real_eip !151
  %803 = load i1, i1* %ZF, !mcsema_real_eip !151
  %804 = icmp eq i32 %799, 0, !mcsema_real_eip !151
  store i1 %804, i1* %ZF, !mcsema_real_eip !151
  %805 = load i1, i1* %SF, !mcsema_real_eip !151
  store i1 false, i1* %SF, !mcsema_real_eip !151
  %806 = load i1, i1* %PF, !mcsema_real_eip !151
  %807 = trunc i32 %799 to i8, !mcsema_real_eip !151
  %808 = call i8 @llvm.ctpop.i8(i8 %807), !mcsema_real_eip !151
  %809 = trunc i8 %808 to i1, !mcsema_real_eip !151
  %810 = xor i1 %809, true, !mcsema_real_eip !151
  store i1 %810, i1* %PF, !mcsema_real_eip !151
  %811 = zext i32 %799 to i64, !mcsema_real_eip !151
  store i64 %811, i64* %XAX, !mcsema_real_eip !151
  %812 = add i64 %RBP_val.220, -52, !mcsema_real_eip !152
  %813 = inttoptr i64 %812 to i64*, !mcsema_real_eip !152
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %814 = inttoptr i64 %812 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.225, i32* %814, !mcsema_real_eip !152
  %RBP_val.226 = load i64, i64* %XBP, !mcsema_real_eip !153
  %815 = add i64 %RBP_val.226, -48, !mcsema_real_eip !153
  %816 = inttoptr i64 %815 to i64*, !mcsema_real_eip !153
  %817 = inttoptr i64 %815 to i32*, !mcsema_real_eip !153
  %818 = load i32, i32* %817, !mcsema_real_eip !153
  %819 = zext i32 %818 to i64, !mcsema_real_eip !153
  store i64 %819, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !154
  %820 = and i32 %EAX_val.228, 65535, !mcsema_real_eip !154
  store i1 false, i1* %SF, !mcsema_real_eip !154
  %821 = icmp eq i32 %820, 0, !mcsema_real_eip !154
  store i1 %821, i1* %ZF, !mcsema_real_eip !154
  %822 = trunc i32 %820 to i8, !mcsema_real_eip !154
  %823 = call i8 @llvm.ctpop.i8(i8 %822), !mcsema_real_eip !154
  %824 = trunc i8 %823 to i1, !mcsema_real_eip !154
  %825 = xor i1 %824, true, !mcsema_real_eip !154
  store i1 %825, i1* %PF, !mcsema_real_eip !154
  store i1 false, i1* %OF, !mcsema_real_eip !154
  store i1 false, i1* %CF, !mcsema_real_eip !154
  store i1 undef, i1* %AF, !mcsema_real_eip !154
  %826 = zext i32 %820 to i64, !mcsema_real_eip !154
  store i64 %826, i64* %XAX, !mcsema_real_eip !154
  %827 = add i64 %RBP_val.226, -56, !mcsema_real_eip !155
  %828 = inttoptr i64 %827 to i64*, !mcsema_real_eip !155
  %EAX_val.231 = load i32, i32* %EAX.9, !mcsema_real_eip !155
  %829 = inttoptr i64 %827 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.231, i32* %829, !mcsema_real_eip !155
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !156
  %830 = add i64 %RBP_val.232, -52, !mcsema_real_eip !156
  %831 = inttoptr i64 %830 to i64*, !mcsema_real_eip !156
  %832 = inttoptr i64 %830 to i32*, !mcsema_real_eip !156
  %833 = load i32, i32* %832, !mcsema_real_eip !156
  %834 = sub i32 %833, 79, !mcsema_real_eip !156
  %835 = xor i32 %834, %833, !mcsema_real_eip !156
  %836 = xor i32 %835, 79, !mcsema_real_eip !156
  %837 = and i32 %836, 16, !mcsema_real_eip !156
  %838 = icmp ne i32 %837, 0, !mcsema_real_eip !156
  store i1 %838, i1* %AF, !mcsema_real_eip !156
  %839 = trunc i32 %834 to i8, !mcsema_real_eip !156
  %840 = call i8 @llvm.ctpop.i8(i8 %839), !mcsema_real_eip !156
  %841 = trunc i8 %840 to i1, !mcsema_real_eip !156
  %842 = xor i1 %841, true, !mcsema_real_eip !156
  store i1 %842, i1* %PF, !mcsema_real_eip !156
  %843 = icmp eq i32 %834, 0, !mcsema_real_eip !156
  store i1 %843, i1* %ZF, !mcsema_real_eip !156
  %844 = lshr i32 %834, 31, !mcsema_real_eip !156
  %845 = trunc i32 %844 to i1, !mcsema_real_eip !156
  store i1 %845, i1* %SF, !mcsema_real_eip !156
  %846 = icmp ult i32 %833, 79, !mcsema_real_eip !156
  store i1 %846, i1* %CF, !mcsema_real_eip !156
  %847 = xor i32 %833, 79, !mcsema_real_eip !156
  %848 = and i32 %847, %835, !mcsema_real_eip !156
  %849 = lshr i32 %848, 31, !mcsema_real_eip !156
  %850 = trunc i32 %849 to i1, !mcsema_real_eip !156
  store i1 %850, i1* %OF, !mcsema_real_eip !156
  %851 = icmp eq i1 %843, false, !mcsema_real_eip !157
  br i1 %851, label %block_0x28c, label %block_0x274, !mcsema_real_eip !157

block_0x21e:                                      ; preds = %block_0x20a
  %852 = add i64 %RBP_val.188, -20, !mcsema_real_eip !158
  %853 = inttoptr i64 %852 to i64*, !mcsema_real_eip !158
  %854 = inttoptr i64 %852 to i32*, !mcsema_real_eip !158
  store i32 43690, i32* %854, !mcsema_real_eip !158
  br label %block_0x231, !mcsema_real_eip !159

block_0x274:                                      ; preds = %block_0x231
  %855 = add i64 %RBP_val.232, -56, !mcsema_real_eip !160
  %856 = inttoptr i64 %855 to i64*, !mcsema_real_eip !160
  %857 = inttoptr i64 %855 to i32*, !mcsema_real_eip !160
  %858 = load i32, i32* %857, !mcsema_real_eip !160
  %859 = zext i32 %858 to i64, !mcsema_real_eip !160
  store i64 %859, i64* %XAX, !mcsema_real_eip !160
  %860 = add i64 %RBP_val.232, -20, !mcsema_real_eip !161
  %861 = inttoptr i64 %860 to i64*, !mcsema_real_eip !161
  %EAX_val.238 = load i32, i32* %EAX.9, !mcsema_real_eip !161
  %862 = inttoptr i64 %860 to i32*, !mcsema_real_eip !161
  %863 = load i32, i32* %862, !mcsema_real_eip !161
  %864 = sub i32 %EAX_val.238, %863, !mcsema_real_eip !161
  %865 = xor i32 %864, %EAX_val.238, !mcsema_real_eip !161
  %866 = xor i32 %865, %863, !mcsema_real_eip !161
  %867 = and i32 %866, 16, !mcsema_real_eip !161
  %868 = icmp ne i32 %867, 0, !mcsema_real_eip !161
  store i1 %868, i1* %AF, !mcsema_real_eip !161
  %869 = trunc i32 %864 to i8, !mcsema_real_eip !161
  %870 = call i8 @llvm.ctpop.i8(i8 %869), !mcsema_real_eip !161
  %871 = trunc i8 %870 to i1, !mcsema_real_eip !161
  %872 = xor i1 %871, true, !mcsema_real_eip !161
  store i1 %872, i1* %PF, !mcsema_real_eip !161
  %873 = icmp eq i32 %864, 0, !mcsema_real_eip !161
  store i1 %873, i1* %ZF, !mcsema_real_eip !161
  %874 = lshr i32 %864, 31, !mcsema_real_eip !161
  %875 = trunc i32 %874 to i1, !mcsema_real_eip !161
  store i1 %875, i1* %SF, !mcsema_real_eip !161
  %876 = icmp ult i32 %EAX_val.238, %863, !mcsema_real_eip !161
  store i1 %876, i1* %CF, !mcsema_real_eip !161
  %877 = xor i32 %EAX_val.238, %863, !mcsema_real_eip !161
  %878 = and i32 %877, %865, !mcsema_real_eip !161
  %879 = lshr i32 %878, 31, !mcsema_real_eip !161
  %880 = trunc i32 %879 to i1, !mcsema_real_eip !161
  store i1 %880, i1* %OF, !mcsema_real_eip !161
  %881 = icmp eq i1 %873, false, !mcsema_real_eip !162
  br i1 %881, label %block_0x28c, label %block_0x280, !mcsema_real_eip !162

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %882 = add i64 %RBP_val.232, -20, !mcsema_real_eip !163
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !163
  %884 = inttoptr i64 %882 to i32*, !mcsema_real_eip !163
  store i32 48351, i32* %884, !mcsema_real_eip !163
  br label %block_0x293, !mcsema_real_eip !160

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, !mcsema_real_eip !164
  %RBP_val.239 = load i64, i64* %XBP, !mcsema_real_eip !165
  %885 = add i64 %RBP_val.239, -20, !mcsema_real_eip !165
  %886 = inttoptr i64 %885 to i64*, !mcsema_real_eip !165
  %887 = inttoptr i64 %885 to i32*, !mcsema_real_eip !165
  %888 = load i32, i32* %887, !mcsema_real_eip !165
  %889 = zext i32 %888 to i64, !mcsema_real_eip !165
  store i64 %889, i64* %XDI, !mcsema_real_eip !165
  %890 = add i64 %RBP_val.239, -16, !mcsema_real_eip !166
  %891 = inttoptr i64 %890 to i64*, !mcsema_real_eip !166
  %892 = load i64, i64* %891, !mcsema_real_eip !166
  store i64 %892, i64* %XAX, !mcsema_real_eip !166
  %893 = add i64 20, %892, !mcsema_real_eip !167
  %894 = xor i64 %893, %892, !mcsema_real_eip !167
  %895 = xor i64 %894, 20, !mcsema_real_eip !167
  %896 = and i64 %895, 16, !mcsema_real_eip !167
  %897 = icmp ne i64 %896, 0, !mcsema_real_eip !167
  store i1 %897, i1* %AF, !mcsema_real_eip !167
  %898 = lshr i64 %893, 63, !mcsema_real_eip !167
  %899 = trunc i64 %898 to i1, !mcsema_real_eip !167
  store i1 %899, i1* %SF, !mcsema_real_eip !167
  %900 = icmp eq i64 %893, 0, !mcsema_real_eip !167
  store i1 %900, i1* %ZF, !mcsema_real_eip !167
  %901 = xor i64 %892, 20, !mcsema_real_eip !167
  %902 = xor i64 %901, -1, !mcsema_real_eip !167
  %903 = and i64 %902, %894, !mcsema_real_eip !167
  %904 = lshr i64 %903, 63, !mcsema_real_eip !167
  %905 = and i64 %904, 1, !mcsema_real_eip !167
  %906 = trunc i64 %905 to i1, !mcsema_real_eip !167
  store i1 %906, i1* %OF, !mcsema_real_eip !167
  %907 = trunc i64 %893 to i8, !mcsema_real_eip !167
  %908 = call i8 @llvm.ctpop.i8(i8 %907), !mcsema_real_eip !167
  %909 = trunc i8 %908 to i1, !mcsema_real_eip !167
  %910 = xor i1 %909, true, !mcsema_real_eip !167
  store i1 %910, i1* %PF, !mcsema_real_eip !167
  %911 = icmp ult i64 %893, %892, !mcsema_real_eip !167
  store i1 %911, i1* %CF, !mcsema_real_eip !167
  store i64 %893, i64* %XAX, !mcsema_real_eip !167
  store i64 %893, i64* %XSI, !mcsema_real_eip !168
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !169
  %912 = sub i64 %RSP_val.246, 8, !mcsema_real_eip !169
  %913 = inttoptr i64 %912 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %913, !mcsema_real_eip !169
  store i64 %912, i64* %XSP, !mcsema_real_eip !169
  %914 = call x86_64_sysvcc i64 @_read_bytes(i64 %889, i64 %893, i64 8), !mcsema_real_eip !169
  store i64 %914, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !170
  %915 = add i64 %RBP_val.247, -60, !mcsema_real_eip !170
  %916 = inttoptr i64 %915 to i64*, !mcsema_real_eip !170
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %917 = inttoptr i64 %915 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.249, i32* %917, !mcsema_real_eip !170
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !171
  %918 = add i64 %RBP_val.250, -60, !mcsema_real_eip !171
  %919 = inttoptr i64 %918 to i64*, !mcsema_real_eip !171
  %920 = inttoptr i64 %918 to i32*, !mcsema_real_eip !171
  %921 = load i32, i32* %920, !mcsema_real_eip !171
  %922 = zext i32 %921 to i64, !mcsema_real_eip !171
  store i64 %922, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !172
  %923 = sub i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %924 = xor i32 %923, %EAX_val.252, !mcsema_real_eip !172
  %925 = xor i32 %924, 3, !mcsema_real_eip !172
  %926 = and i32 %925, 16, !mcsema_real_eip !172
  %927 = icmp ne i32 %926, 0, !mcsema_real_eip !172
  store i1 %927, i1* %AF, !mcsema_real_eip !172
  %928 = trunc i32 %923 to i8, !mcsema_real_eip !172
  %929 = call i8 @llvm.ctpop.i8(i8 %928), !mcsema_real_eip !172
  %930 = trunc i8 %929 to i1, !mcsema_real_eip !172
  %931 = xor i1 %930, true, !mcsema_real_eip !172
  store i1 %931, i1* %PF, !mcsema_real_eip !172
  %932 = icmp eq i32 %923, 0, !mcsema_real_eip !172
  store i1 %932, i1* %ZF, !mcsema_real_eip !172
  %933 = lshr i32 %923, 31, !mcsema_real_eip !172
  %934 = trunc i32 %933 to i1, !mcsema_real_eip !172
  store i1 %934, i1* %SF, !mcsema_real_eip !172
  %935 = icmp ult i32 %EAX_val.252, 3, !mcsema_real_eip !172
  store i1 %935, i1* %CF, !mcsema_real_eip !172
  %936 = xor i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %937 = and i32 %936, %924, !mcsema_real_eip !172
  %938 = lshr i32 %937, 31, !mcsema_real_eip !172
  %939 = trunc i32 %938 to i1, !mcsema_real_eip !172
  store i1 %939, i1* %OF, !mcsema_real_eip !172
  %940 = zext i32 %923 to i64, !mcsema_real_eip !172
  store i64 %940, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  store i32 %EAX_val.255, i32* %920, !mcsema_real_eip !173
  %RBP_val.256 = load i64, i64* %XBP, !mcsema_real_eip !174
  %941 = add i64 %RBP_val.256, -60, !mcsema_real_eip !174
  %942 = inttoptr i64 %941 to i64*, !mcsema_real_eip !174
  %943 = inttoptr i64 %941 to i32*, !mcsema_real_eip !174
  %944 = load i32, i32* %943, !mcsema_real_eip !174
  %945 = zext i32 %944 to i64, !mcsema_real_eip !174
  store i64 %945, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.258 = load i32, i32* %EAX.9, !mcsema_real_eip !175
  %946 = and i32 %EAX_val.258, 7, !mcsema_real_eip !175
  store i1 false, i1* %SF, !mcsema_real_eip !175
  %947 = icmp eq i32 %946, 0, !mcsema_real_eip !175
  store i1 %947, i1* %ZF, !mcsema_real_eip !175
  %948 = trunc i32 %946 to i8, !mcsema_real_eip !175
  %949 = call i8 @llvm.ctpop.i8(i8 %948), !mcsema_real_eip !175
  %950 = trunc i8 %949 to i1, !mcsema_real_eip !175
  %951 = xor i1 %950, true, !mcsema_real_eip !175
  store i1 %951, i1* %PF, !mcsema_real_eip !175
  store i1 false, i1* %OF, !mcsema_real_eip !175
  store i1 false, i1* %CF, !mcsema_real_eip !175
  store i1 undef, i1* %AF, !mcsema_real_eip !175
  %952 = zext i32 %946 to i64, !mcsema_real_eip !175
  store i64 %952, i64* %XAX, !mcsema_real_eip !175
  %EAX_val.260 = load i32, i32* %EAX.9, !mcsema_real_eip !176
  store i1 false, i1* %AF, !mcsema_real_eip !176
  %953 = trunc i32 %EAX_val.260 to i8, !mcsema_real_eip !176
  %954 = call i8 @llvm.ctpop.i8(i8 %953), !mcsema_real_eip !176
  %955 = trunc i8 %954 to i1, !mcsema_real_eip !176
  %956 = xor i1 %955, true, !mcsema_real_eip !176
  store i1 %956, i1* %PF, !mcsema_real_eip !176
  %957 = icmp eq i32 %EAX_val.260, 0, !mcsema_real_eip !176
  store i1 %957, i1* %ZF, !mcsema_real_eip !176
  %958 = lshr i32 %EAX_val.260, 31, !mcsema_real_eip !176
  %959 = trunc i32 %958 to i1, !mcsema_real_eip !176
  store i1 %959, i1* %SF, !mcsema_real_eip !176
  store i1 false, i1* %CF, !mcsema_real_eip !176
  store i1 false, i1* %OF, !mcsema_real_eip !176
  br i1 %957, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !177

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %862, !mcsema_real_eip !178
  br label %block_0x293, !mcsema_real_eip !179

block_0x2c6:                                      ; preds = %block_0x293
  %960 = add i64 %RBP_val.256, -4, !mcsema_real_eip !180
  %961 = inttoptr i64 %960 to i64*, !mcsema_real_eip !180
  %962 = inttoptr i64 %960 to i32*, !mcsema_real_eip !180
  store i32 -21, i32* %962, !mcsema_real_eip !180
  br label %block_0x417, !mcsema_real_eip !181

block_0x2d2:                                      ; preds = %block_0x293
  %963 = load i32, i32* %943, !mcsema_real_eip !182
  %964 = zext i32 %963 to i64, !mcsema_real_eip !182
  store i64 %964, i64* %XAX, !mcsema_real_eip !182
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !183
  %965 = sub i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %966 = xor i32 %965, %EAX_val.264, !mcsema_real_eip !183
  %967 = xor i32 %966, -2147483648, !mcsema_real_eip !183
  %968 = and i32 %967, 16, !mcsema_real_eip !183
  %969 = icmp ne i32 %968, 0, !mcsema_real_eip !183
  store i1 %969, i1* %AF, !mcsema_real_eip !183
  %970 = trunc i32 %965 to i8, !mcsema_real_eip !183
  %971 = call i8 @llvm.ctpop.i8(i8 %970), !mcsema_real_eip !183
  %972 = trunc i8 %971 to i1, !mcsema_real_eip !183
  %973 = xor i1 %972, true, !mcsema_real_eip !183
  store i1 %973, i1* %PF, !mcsema_real_eip !183
  %974 = icmp eq i32 %965, 0, !mcsema_real_eip !183
  store i1 %974, i1* %ZF, !mcsema_real_eip !183
  %975 = lshr i32 %965, 31, !mcsema_real_eip !183
  %976 = trunc i32 %975 to i1, !mcsema_real_eip !183
  store i1 %976, i1* %SF, !mcsema_real_eip !183
  %977 = icmp ult i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  store i1 %977, i1* %CF, !mcsema_real_eip !183
  %978 = xor i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %979 = and i32 %978, %966, !mcsema_real_eip !183
  %980 = lshr i32 %979, 31, !mcsema_real_eip !183
  %981 = trunc i32 %980 to i1, !mcsema_real_eip !183
  store i1 %981, i1* %OF, !mcsema_real_eip !183
  %982 = zext i32 %965 to i64, !mcsema_real_eip !183
  store i64 %982, i64* %XAX, !mcsema_real_eip !183
  %EAX_val.267 = load i32, i32* %EAX.9, !mcsema_real_eip !184
  store i32 %EAX_val.267, i32* %943, !mcsema_real_eip !184
  %RBP_val.268 = load i64, i64* %XBP, !mcsema_real_eip !185
  %983 = add i64 %RBP_val.268, -60, !mcsema_real_eip !185
  %984 = inttoptr i64 %983 to i64*, !mcsema_real_eip !185
  %985 = inttoptr i64 %983 to i32*, !mcsema_real_eip !185
  %986 = load i32, i32* %985, !mcsema_real_eip !185
  %987 = sub i32 %986, 268435455, !mcsema_real_eip !185
  %988 = xor i32 %987, %986, !mcsema_real_eip !185
  %989 = xor i32 %988, 268435455, !mcsema_real_eip !185
  %990 = and i32 %989, 16, !mcsema_real_eip !185
  %991 = icmp ne i32 %990, 0, !mcsema_real_eip !185
  store i1 %991, i1* %AF, !mcsema_real_eip !185
  %992 = trunc i32 %987 to i8, !mcsema_real_eip !185
  %993 = call i8 @llvm.ctpop.i8(i8 %992), !mcsema_real_eip !185
  %994 = trunc i8 %993 to i1, !mcsema_real_eip !185
  %995 = xor i1 %994, true, !mcsema_real_eip !185
  store i1 %995, i1* %PF, !mcsema_real_eip !185
  %996 = icmp eq i32 %987, 0, !mcsema_real_eip !185
  store i1 %996, i1* %ZF, !mcsema_real_eip !185
  %997 = lshr i32 %987, 31, !mcsema_real_eip !185
  %998 = trunc i32 %997 to i1, !mcsema_real_eip !185
  store i1 %998, i1* %SF, !mcsema_real_eip !185
  %999 = icmp ult i32 %986, 268435455, !mcsema_real_eip !185
  store i1 %999, i1* %CF, !mcsema_real_eip !185
  %1000 = xor i32 %986, 268435455, !mcsema_real_eip !185
  %1001 = and i32 %1000, %988, !mcsema_real_eip !185
  %1002 = lshr i32 %1001, 31, !mcsema_real_eip !185
  %1003 = trunc i32 %1002 to i1, !mcsema_real_eip !185
  store i1 %1003, i1* %OF, !mcsema_real_eip !185
  %1004 = or i1 %999, %996, !mcsema_real_eip !186
  br i1 %1004, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !186

block_0x2ea:                                      ; preds = %block_0x2d2
  %1005 = add i64 %RBP_val.268, -4, !mcsema_real_eip !187
  %1006 = inttoptr i64 %1005 to i64*, !mcsema_real_eip !187
  %1007 = inttoptr i64 %1005 to i32*, !mcsema_real_eip !187
  store i32 -22, i32* %1007, !mcsema_real_eip !187
  br label %block_0x417, !mcsema_real_eip !188

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, !mcsema_real_eip !189
  %1008 = load i32, i32* %985, !mcsema_real_eip !190
  %1009 = zext i32 %1008 to i64, !mcsema_real_eip !190
  store i64 %1009, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  %1010 = xor i32 %ECX_val.272, 13631488, !mcsema_real_eip !191
  store i1 false, i1* %CF, !mcsema_real_eip !191
  store i1 false, i1* %OF, !mcsema_real_eip !191
  %1011 = lshr i32 %1010, 31, !mcsema_real_eip !191
  %1012 = trunc i32 %1011 to i1, !mcsema_real_eip !191
  store i1 %1012, i1* %SF, !mcsema_real_eip !191
  %1013 = icmp eq i32 %1010, 0, !mcsema_real_eip !191
  store i1 %1013, i1* %ZF, !mcsema_real_eip !191
  %1014 = trunc i32 %1010 to i8, !mcsema_real_eip !191
  %1015 = call i8 @llvm.ctpop.i8(i8 %1014), !mcsema_real_eip !191
  %1016 = trunc i8 %1015 to i1, !mcsema_real_eip !191
  %1017 = xor i1 %1016, true, !mcsema_real_eip !191
  store i1 %1017, i1* %PF, !mcsema_real_eip !191
  store i1 undef, i1* %AF, !mcsema_real_eip !191
  %1018 = zext i32 %1010 to i64, !mcsema_real_eip !191
  store i64 %1018, i64* %XCX, !mcsema_real_eip !191
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !192
  store i32 %ECX_val.275, i32* %985, !mcsema_real_eip !192
  %RBP_val.276 = load i64, i64* %XBP, !mcsema_real_eip !193
  %1019 = add i64 %RBP_val.276, -60, !mcsema_real_eip !193
  %1020 = inttoptr i64 %1019 to i64*, !mcsema_real_eip !193
  %1021 = inttoptr i64 %1019 to i32*, !mcsema_real_eip !193
  %1022 = load i32, i32* %1021, !mcsema_real_eip !193
  %1023 = zext i32 %1022 to i64, !mcsema_real_eip !193
  store i64 %1023, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  %1024 = lshr i32 %ECX_val.278, 3, !mcsema_real_eip !194
  %1025 = and i32 %1024, 1, !mcsema_real_eip !194
  %1026 = icmp ne i32 %1025, 0, !mcsema_real_eip !194
  %1027 = load i1, i1* %CF, !mcsema_real_eip !194
  %1028 = lshr i32 %1024, 1, !mcsema_real_eip !194
  %1029 = load i1, i1* %OF, !mcsema_real_eip !194
  %1030 = and i32 %ECX_val.278, -2147483648, !mcsema_real_eip !194
  %1031 = icmp ne i32 %1030, 0, !mcsema_real_eip !194
  store i1 %1026, i1* %CF, !mcsema_real_eip !194
  %1032 = load i1, i1* %ZF, !mcsema_real_eip !194
  %1033 = icmp eq i32 %1028, 0, !mcsema_real_eip !194
  store i1 %1033, i1* %ZF, !mcsema_real_eip !194
  %1034 = load i1, i1* %SF, !mcsema_real_eip !194
  store i1 false, i1* %SF, !mcsema_real_eip !194
  %1035 = load i1, i1* %PF, !mcsema_real_eip !194
  %1036 = trunc i32 %1028 to i8, !mcsema_real_eip !194
  %1037 = call i8 @llvm.ctpop.i8(i8 %1036), !mcsema_real_eip !194
  %1038 = trunc i8 %1037 to i1, !mcsema_real_eip !194
  %1039 = xor i1 %1038, true, !mcsema_real_eip !194
  store i1 %1039, i1* %PF, !mcsema_real_eip !194
  %1040 = zext i32 %1028 to i64, !mcsema_real_eip !194
  store i64 %1040, i64* %XCX, !mcsema_real_eip !194
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !195
  store i32 %ECX_val.281, i32* %1021, !mcsema_real_eip !195
  %RBP_val.282 = load i64, i64* %XBP, !mcsema_real_eip !196
  %1041 = add i64 %RBP_val.282, -60, !mcsema_real_eip !196
  %1042 = inttoptr i64 %1041 to i64*, !mcsema_real_eip !196
  %1043 = inttoptr i64 %1041 to i32*, !mcsema_real_eip !196
  %1044 = load i32, i32* %1043, !mcsema_real_eip !196
  %1045 = zext i32 %1044 to i64, !mcsema_real_eip !196
  store i64 %1045, i64* %XCX, !mcsema_real_eip !196
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %1046 = sub i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1047 = xor i32 %1046, %ECX_val.284, !mcsema_real_eip !197
  %1048 = xor i32 %1047, 226, !mcsema_real_eip !197
  %1049 = and i32 %1048, 16, !mcsema_real_eip !197
  %1050 = icmp ne i32 %1049, 0, !mcsema_real_eip !197
  store i1 %1050, i1* %AF, !mcsema_real_eip !197
  %1051 = trunc i32 %1046 to i8, !mcsema_real_eip !197
  %1052 = call i8 @llvm.ctpop.i8(i8 %1051), !mcsema_real_eip !197
  %1053 = trunc i8 %1052 to i1, !mcsema_real_eip !197
  %1054 = xor i1 %1053, true, !mcsema_real_eip !197
  store i1 %1054, i1* %PF, !mcsema_real_eip !197
  %1055 = icmp eq i32 %1046, 0, !mcsema_real_eip !197
  store i1 %1055, i1* %ZF, !mcsema_real_eip !197
  %1056 = lshr i32 %1046, 31, !mcsema_real_eip !197
  %1057 = trunc i32 %1056 to i1, !mcsema_real_eip !197
  store i1 %1057, i1* %SF, !mcsema_real_eip !197
  %1058 = icmp ult i32 %ECX_val.284, 226, !mcsema_real_eip !197
  store i1 %1058, i1* %CF, !mcsema_real_eip !197
  %1059 = xor i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1060 = and i32 %1059, %1047, !mcsema_real_eip !197
  %1061 = lshr i32 %1060, 31, !mcsema_real_eip !197
  %1062 = trunc i32 %1061 to i1, !mcsema_real_eip !197
  store i1 %1062, i1* %OF, !mcsema_real_eip !197
  %1063 = zext i32 %1046 to i64, !mcsema_real_eip !197
  store i64 %1063, i64* %XCX, !mcsema_real_eip !197
  %ECX_val.287 = load i32, i32* %ECX.12, !mcsema_real_eip !198
  store i32 %ECX_val.287, i32* %1043, !mcsema_real_eip !198
  %RBP_val.288 = load i64, i64* %XBP, !mcsema_real_eip !199
  %1064 = add i64 %RBP_val.288, -60, !mcsema_real_eip !199
  %1065 = inttoptr i64 %1064 to i64*, !mcsema_real_eip !199
  %1066 = inttoptr i64 %1064 to i32*, !mcsema_real_eip !199
  %1067 = load i32, i32* %1066, !mcsema_real_eip !199
  %1068 = zext i32 %1067 to i64, !mcsema_real_eip !199
  store i64 %1068, i64* %XCX, !mcsema_real_eip !199
  %1069 = add i64 %RBP_val.288, -68, !mcsema_real_eip !200
  %1070 = inttoptr i64 %1069 to i64*, !mcsema_real_eip !200
  %EAX_val.291 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %1071 = inttoptr i64 %1069 to i32*, !mcsema_real_eip !200
  store i32 %EAX_val.291, i32* %1071, !mcsema_real_eip !200
  %ECX_val.293 = load i32, i32* %ECX.12, !mcsema_real_eip !201
  %1072 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !201
  store i64 %1072, i64* %XAX, !mcsema_real_eip !201
  %EDX_val.295 = load i32, i32* %EDX.67, !mcsema_real_eip !202
  store i1 false, i1* %CF, !mcsema_real_eip !202
  store i1 false, i1* %OF, !mcsema_real_eip !202
  store i1 false, i1* %SF, !mcsema_real_eip !202
  store i1 true, i1* %ZF, !mcsema_real_eip !202
  store i1 true, i1* %PF, !mcsema_real_eip !202
  store i1 undef, i1* %AF, !mcsema_real_eip !202
  store i64 0, i64* %XDX, !mcsema_real_eip !202
  %RBP_val.298 = load i64, i64* %XBP, !mcsema_real_eip !203
  %1073 = add i64 %RBP_val.298, -68, !mcsema_real_eip !203
  %1074 = inttoptr i64 %1073 to i64*, !mcsema_real_eip !203
  %1075 = inttoptr i64 %1073 to i32*, !mcsema_real_eip !203
  %1076 = load i32, i32* %1075, !mcsema_real_eip !203
  %1077 = zext i32 %1076 to i64, !mcsema_real_eip !203
  store i64 %1077, i64* %XCX, !mcsema_real_eip !203
  %ECX_val.300 = load i32, i32* %ECX.12, !mcsema_real_eip !204
  %EAX_val.302 = load i32, i32* %EAX.9, !mcsema_real_eip !204
  %EDX_val.304 = load i32, i32* %EDX.67, !mcsema_real_eip !204
  %1078 = zext i32 %EDX_val.304 to i64, !mcsema_real_eip !204
  %1079 = shl i64 %1078, 32, !mcsema_real_eip !204
  %1080 = sext i32 %EAX_val.302 to i64, !mcsema_real_eip !204
  %1081 = or i64 %1079, %1080, !mcsema_real_eip !204
  %1082 = zext i32 %ECX_val.300 to i64, !mcsema_real_eip !204
  %1083 = udiv i64 %1081, %1082, !mcsema_real_eip !204
  %1084 = urem i64 %1081, %1082, !mcsema_real_eip !204
  %1085 = trunc i64 %1084 to i32, !mcsema_real_eip !204
  %1086 = trunc i64 %1083 to i32, !mcsema_real_eip !204
  %1087 = zext i32 %1085 to i64, !mcsema_real_eip !204
  store i64 %1087, i64* %XDX, !mcsema_real_eip !204
  %1088 = zext i32 %1086 to i64, !mcsema_real_eip !204
  store i64 %1088, i64* %XAX, !mcsema_real_eip !204
  %1089 = add i64 %RBP_val.298, -60, !mcsema_real_eip !205
  %1090 = inttoptr i64 %1089 to i64*, !mcsema_real_eip !205
  %EAX_val.307 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %1091 = inttoptr i64 %1089 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.307, i32* %1091, !mcsema_real_eip !205
  %RBP_val.308 = load i64, i64* %XBP, !mcsema_real_eip !206
  %1092 = add i64 %RBP_val.308, -60, !mcsema_real_eip !206
  %1093 = inttoptr i64 %1092 to i64*, !mcsema_real_eip !206
  %1094 = inttoptr i64 %1092 to i32*, !mcsema_real_eip !206
  %1095 = load i32, i32* %1094, !mcsema_real_eip !206
  %1096 = sub i32 %1095, 3, !mcsema_real_eip !206
  %1097 = xor i32 %1096, %1095, !mcsema_real_eip !206
  %1098 = xor i32 %1097, 3, !mcsema_real_eip !206
  %1099 = and i32 %1098, 16, !mcsema_real_eip !206
  %1100 = icmp ne i32 %1099, 0, !mcsema_real_eip !206
  store i1 %1100, i1* %AF, !mcsema_real_eip !206
  %1101 = trunc i32 %1096 to i8, !mcsema_real_eip !206
  %1102 = call i8 @llvm.ctpop.i8(i8 %1101), !mcsema_real_eip !206
  %1103 = trunc i8 %1102 to i1, !mcsema_real_eip !206
  %1104 = xor i1 %1103, true, !mcsema_real_eip !206
  store i1 %1104, i1* %PF, !mcsema_real_eip !206
  %1105 = icmp eq i32 %1096, 0, !mcsema_real_eip !206
  store i1 %1105, i1* %ZF, !mcsema_real_eip !206
  %1106 = lshr i32 %1096, 31, !mcsema_real_eip !206
  %1107 = trunc i32 %1106 to i1, !mcsema_real_eip !206
  store i1 %1107, i1* %SF, !mcsema_real_eip !206
  %1108 = icmp ult i32 %1095, 3, !mcsema_real_eip !206
  store i1 %1108, i1* %CF, !mcsema_real_eip !206
  %1109 = xor i32 %1095, 3, !mcsema_real_eip !206
  %1110 = and i32 %1109, %1097, !mcsema_real_eip !206
  %1111 = lshr i32 %1110, 31, !mcsema_real_eip !206
  %1112 = trunc i32 %1111 to i1, !mcsema_real_eip !206
  store i1 %1112, i1* %OF, !mcsema_real_eip !206
  br i1 %1105, label %block_0x343, label %block_0x338, !mcsema_real_eip !207

block_0x338:                                      ; preds = %block_0x2f6
  %1113 = load i32, i32* %1094, !mcsema_real_eip !208
  %1114 = zext i32 %1113 to i64, !mcsema_real_eip !208
  store i64 %1114, i64* %XAX, !mcsema_real_eip !208
  %1115 = add i64 %RBP_val.308, -4, !mcsema_real_eip !209
  %1116 = inttoptr i64 %1115 to i64*, !mcsema_real_eip !209
  %EAX_val.328 = load i32, i32* %EAX.9, !mcsema_real_eip !209
  %1117 = inttoptr i64 %1115 to i32*, !mcsema_real_eip !209
  store i32 %EAX_val.328, i32* %1117, !mcsema_real_eip !209
  br label %block_0x417, !mcsema_real_eip !210

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, !mcsema_real_eip !211
  %1118 = add i64 %RBP_val.308, -20, !mcsema_real_eip !212
  %1119 = inttoptr i64 %1118 to i64*, !mcsema_real_eip !212
  %1120 = inttoptr i64 %1118 to i32*, !mcsema_real_eip !212
  %1121 = load i32, i32* %1120, !mcsema_real_eip !212
  %1122 = zext i32 %1121 to i64, !mcsema_real_eip !212
  store i64 %1122, i64* %XDI, !mcsema_real_eip !212
  %1123 = add i64 %RBP_val.308, -16, !mcsema_real_eip !213
  %1124 = inttoptr i64 %1123 to i64*, !mcsema_real_eip !213
  %1125 = load i64, i64* %1124, !mcsema_real_eip !213
  store i64 %1125, i64* %XAX, !mcsema_real_eip !213
  %1126 = add i64 28, %1125, !mcsema_real_eip !214
  %1127 = xor i64 %1126, %1125, !mcsema_real_eip !214
  %1128 = xor i64 %1127, 28, !mcsema_real_eip !214
  %1129 = and i64 %1128, 16, !mcsema_real_eip !214
  %1130 = icmp ne i64 %1129, 0, !mcsema_real_eip !214
  store i1 %1130, i1* %AF, !mcsema_real_eip !214
  %1131 = lshr i64 %1126, 63, !mcsema_real_eip !214
  %1132 = trunc i64 %1131 to i1, !mcsema_real_eip !214
  store i1 %1132, i1* %SF, !mcsema_real_eip !214
  %1133 = icmp eq i64 %1126, 0, !mcsema_real_eip !214
  store i1 %1133, i1* %ZF, !mcsema_real_eip !214
  %1134 = xor i64 %1125, 28, !mcsema_real_eip !214
  %1135 = xor i64 %1134, -1, !mcsema_real_eip !214
  %1136 = and i64 %1135, %1127, !mcsema_real_eip !214
  %1137 = lshr i64 %1136, 63, !mcsema_real_eip !214
  %1138 = and i64 %1137, 1, !mcsema_real_eip !214
  %1139 = trunc i64 %1138 to i1, !mcsema_real_eip !214
  store i1 %1139, i1* %OF, !mcsema_real_eip !214
  %1140 = trunc i64 %1126 to i8, !mcsema_real_eip !214
  %1141 = call i8 @llvm.ctpop.i8(i8 %1140), !mcsema_real_eip !214
  %1142 = trunc i8 %1141 to i1, !mcsema_real_eip !214
  %1143 = xor i1 %1142, true, !mcsema_real_eip !214
  store i1 %1143, i1* %PF, !mcsema_real_eip !214
  %1144 = icmp ult i64 %1126, %1125, !mcsema_real_eip !214
  store i1 %1144, i1* %CF, !mcsema_real_eip !214
  store i64 %1126, i64* %XAX, !mcsema_real_eip !214
  store i64 %1126, i64* %XSI, !mcsema_real_eip !215
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !216
  %1145 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !216
  %1146 = inttoptr i64 %1145 to i64*, !mcsema_real_eip !216
  store i64 -2415393069852865332, i64* %1146, !mcsema_real_eip !216
  store i64 %1145, i64* %XSP, !mcsema_real_eip !216
  %1147 = call x86_64_sysvcc i64 @_read_bytes(i64 %1122, i64 %1126, i64 4), !mcsema_real_eip !216
  store i64 %1147, i64* %XAX, !mcsema_real_eip !216
  %RBP_val.318 = load i64, i64* %XBP, !mcsema_real_eip !217
  %1148 = add i64 %RBP_val.318, -64, !mcsema_real_eip !217
  %1149 = inttoptr i64 %1148 to i64*, !mcsema_real_eip !217
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !217
  %1150 = inttoptr i64 %1148 to i32*, !mcsema_real_eip !217
  store i32 %EAX_val.320, i32* %1150, !mcsema_real_eip !217
  %RBP_val.321 = load i64, i64* %XBP, !mcsema_real_eip !218
  %1151 = add i64 %RBP_val.321, -16, !mcsema_real_eip !218
  %1152 = inttoptr i64 %1151 to i64*, !mcsema_real_eip !218
  %1153 = load i64, i64* %1152, !mcsema_real_eip !218
  store i64 %1153, i64* %XSI, !mcsema_real_eip !218
  %1154 = add i64 %1153, 28, !mcsema_real_eip !219
  %1155 = inttoptr i64 %1154 to i64*, !mcsema_real_eip !219
  %1156 = inttoptr i64 %1154 to i8*, !mcsema_real_eip !219
  %1157 = load i8, i8* %1156, !mcsema_real_eip !219
  %1158 = sext i8 %1157 to i32, !mcsema_real_eip !219
  %1159 = zext i32 %1158 to i64, !mcsema_real_eip !219
  store i64 %1159, i64* %XAX, !mcsema_real_eip !219
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !220
  %1160 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1161 = xor i32 %1160, %EAX_val.324, !mcsema_real_eip !220
  %1162 = xor i32 %1161, 100, !mcsema_real_eip !220
  %1163 = and i32 %1162, 16, !mcsema_real_eip !220
  %1164 = icmp ne i32 %1163, 0, !mcsema_real_eip !220
  store i1 %1164, i1* %AF, !mcsema_real_eip !220
  %1165 = trunc i32 %1160 to i8, !mcsema_real_eip !220
  %1166 = call i8 @llvm.ctpop.i8(i8 %1165), !mcsema_real_eip !220
  %1167 = trunc i8 %1166 to i1, !mcsema_real_eip !220
  %1168 = xor i1 %1167, true, !mcsema_real_eip !220
  store i1 %1168, i1* %PF, !mcsema_real_eip !220
  %1169 = icmp eq i32 %1160, 0, !mcsema_real_eip !220
  store i1 %1169, i1* %ZF, !mcsema_real_eip !220
  %1170 = lshr i32 %1160, 31, !mcsema_real_eip !220
  %1171 = trunc i32 %1170 to i1, !mcsema_real_eip !220
  store i1 %1171, i1* %SF, !mcsema_real_eip !220
  %1172 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !220
  store i1 %1172, i1* %CF, !mcsema_real_eip !220
  %1173 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1174 = and i32 %1173, %1161, !mcsema_real_eip !220
  %1175 = lshr i32 %1174, 31, !mcsema_real_eip !220
  %1176 = trunc i32 %1175 to i1, !mcsema_real_eip !220
  store i1 %1176, i1* %OF, !mcsema_real_eip !220
  %1177 = icmp eq i1 %1169, false, !mcsema_real_eip !221
  br i1 %1177, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !221

block_0x36f:                                      ; preds = %block_0x343
  %1178 = load i64, i64* %1152, !mcsema_real_eip !222
  store i64 %1178, i64* %XAX, !mcsema_real_eip !222
  %1179 = add i64 %1178, 29, !mcsema_real_eip !223
  %1180 = inttoptr i64 %1179 to i64*, !mcsema_real_eip !223
  %1181 = inttoptr i64 %1179 to i8*, !mcsema_real_eip !223
  %1182 = load i8, i8* %1181, !mcsema_real_eip !223
  %1183 = sext i8 %1182 to i32, !mcsema_real_eip !223
  %1184 = zext i32 %1183 to i64, !mcsema_real_eip !223
  store i64 %1184, i64* %XCX, !mcsema_real_eip !223
  %ECX_val.340 = load i32, i32* %ECX.12, !mcsema_real_eip !224
  %1185 = sub i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1186 = xor i32 %1185, %ECX_val.340, !mcsema_real_eip !224
  %1187 = xor i32 %1186, 100, !mcsema_real_eip !224
  %1188 = and i32 %1187, 16, !mcsema_real_eip !224
  %1189 = icmp ne i32 %1188, 0, !mcsema_real_eip !224
  store i1 %1189, i1* %AF, !mcsema_real_eip !224
  %1190 = trunc i32 %1185 to i8, !mcsema_real_eip !224
  %1191 = call i8 @llvm.ctpop.i8(i8 %1190), !mcsema_real_eip !224
  %1192 = trunc i8 %1191 to i1, !mcsema_real_eip !224
  %1193 = xor i1 %1192, true, !mcsema_real_eip !224
  store i1 %1193, i1* %PF, !mcsema_real_eip !224
  %1194 = icmp eq i32 %1185, 0, !mcsema_real_eip !224
  store i1 %1194, i1* %ZF, !mcsema_real_eip !224
  %1195 = lshr i32 %1185, 31, !mcsema_real_eip !224
  %1196 = trunc i32 %1195 to i1, !mcsema_real_eip !224
  store i1 %1196, i1* %SF, !mcsema_real_eip !224
  %1197 = icmp ult i32 %ECX_val.340, 100, !mcsema_real_eip !224
  store i1 %1197, i1* %CF, !mcsema_real_eip !224
  %1198 = xor i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1199 = and i32 %1198, %1186, !mcsema_real_eip !224
  %1200 = lshr i32 %1199, 31, !mcsema_real_eip !224
  %1201 = trunc i32 %1200 to i1, !mcsema_real_eip !224
  store i1 %1201, i1* %OF, !mcsema_real_eip !224
  %1202 = icmp eq i1 %1194, false, !mcsema_real_eip !225
  br i1 %1202, label %block_0x38e, label %block_0x380, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %1203 = load i64, i64* %1152, !mcsema_real_eip !226
  store i64 %1203, i64* %XAX, !mcsema_real_eip !226
  %1204 = add i64 %1203, 28, !mcsema_real_eip !227
  %1205 = inttoptr i64 %1204 to i64*, !mcsema_real_eip !227
  %1206 = inttoptr i64 %1204 to i8*, !mcsema_real_eip !227
  %1207 = load i8, i8* %1206, !mcsema_real_eip !227
  %1208 = sext i8 %1207 to i32, !mcsema_real_eip !227
  %1209 = zext i32 %1208 to i64, !mcsema_real_eip !227
  store i64 %1209, i64* %XCX, !mcsema_real_eip !227
  %1210 = load i64, i64* %1152, !mcsema_real_eip !228
  store i64 %1210, i64* %XAX, !mcsema_real_eip !228
  %1211 = add i64 %1210, 29, !mcsema_real_eip !229
  %1212 = inttoptr i64 %1211 to i64*, !mcsema_real_eip !229
  %1213 = inttoptr i64 %1211 to i8*, !mcsema_real_eip !229
  %1214 = load i8, i8* %1213, !mcsema_real_eip !229
  %1215 = sext i8 %1214 to i32, !mcsema_real_eip !229
  %1216 = zext i32 %1215 to i64, !mcsema_real_eip !229
  store i64 %1216, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.334 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.336 = load i32, i32* %EDX.67, !mcsema_real_eip !230
  %1217 = sub i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1218 = xor i32 %1217, %ECX_val.334, !mcsema_real_eip !230
  %1219 = xor i32 %1218, %EDX_val.336, !mcsema_real_eip !230
  %1220 = and i32 %1219, 16, !mcsema_real_eip !230
  %1221 = icmp ne i32 %1220, 0, !mcsema_real_eip !230
  store i1 %1221, i1* %AF, !mcsema_real_eip !230
  %1222 = trunc i32 %1217 to i8, !mcsema_real_eip !230
  %1223 = call i8 @llvm.ctpop.i8(i8 %1222), !mcsema_real_eip !230
  %1224 = trunc i8 %1223 to i1, !mcsema_real_eip !230
  %1225 = xor i1 %1224, true, !mcsema_real_eip !230
  store i1 %1225, i1* %PF, !mcsema_real_eip !230
  %1226 = icmp eq i32 %1217, 0, !mcsema_real_eip !230
  store i1 %1226, i1* %ZF, !mcsema_real_eip !230
  %1227 = lshr i32 %1217, 31, !mcsema_real_eip !230
  %1228 = trunc i32 %1227 to i1, !mcsema_real_eip !230
  store i1 %1228, i1* %SF, !mcsema_real_eip !230
  %1229 = icmp ult i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  store i1 %1229, i1* %CF, !mcsema_real_eip !230
  %1230 = xor i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1231 = and i32 %1230, %1218, !mcsema_real_eip !230
  %1232 = lshr i32 %1231, 31, !mcsema_real_eip !230
  %1233 = trunc i32 %1232 to i1, !mcsema_real_eip !230
  store i1 %1233, i1* %OF, !mcsema_real_eip !230
  %1234 = icmp eq i1 %1226, false, !mcsema_real_eip !231
  br i1 %1234, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  %1235 = load i64, i64* %1152, !mcsema_real_eip !233
  store i64 %1235, i64* %XCX, !mcsema_real_eip !233
  %1236 = add i64 %1235, 31, !mcsema_real_eip !234
  %1237 = inttoptr i64 %1236 to i64*, !mcsema_real_eip !234
  %1238 = inttoptr i64 %1236 to i8*, !mcsema_real_eip !234
  %1239 = load i8, i8* %1238, !mcsema_real_eip !234
  %1240 = sext i8 %1239 to i32, !mcsema_real_eip !234
  %1241 = zext i32 %1240 to i64, !mcsema_real_eip !234
  store i64 %1241, i64* %XDX, !mcsema_real_eip !234
  %1242 = load i64, i64* %1152, !mcsema_real_eip !235
  store i64 %1242, i64* %XCX, !mcsema_real_eip !235
  %1243 = add i64 %1242, 30, !mcsema_real_eip !236
  %1244 = inttoptr i64 %1243 to i64*, !mcsema_real_eip !236
  %1245 = inttoptr i64 %1243 to i8*, !mcsema_real_eip !236
  %1246 = load i8, i8* %1245, !mcsema_real_eip !236
  %1247 = sext i8 %1246 to i32, !mcsema_real_eip !236
  %1248 = zext i32 %1247 to i64, !mcsema_real_eip !236
  store i64 %1248, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.350 = load i32, i32* %EDX.67, !mcsema_real_eip !237
  %ESI.351 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.352 = load i32, i32* %ESI.351, !mcsema_real_eip !237
  %1249 = sub i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1250 = xor i32 %1249, %EDX_val.350, !mcsema_real_eip !237
  %1251 = xor i32 %1250, %ESI_val.352, !mcsema_real_eip !237
  %1252 = and i32 %1251, 16, !mcsema_real_eip !237
  %1253 = icmp ne i32 %1252, 0, !mcsema_real_eip !237
  store i1 %1253, i1* %AF, !mcsema_real_eip !237
  %1254 = trunc i32 %1249 to i8, !mcsema_real_eip !237
  %1255 = call i8 @llvm.ctpop.i8(i8 %1254), !mcsema_real_eip !237
  %1256 = trunc i8 %1255 to i1, !mcsema_real_eip !237
  %1257 = xor i1 %1256, true, !mcsema_real_eip !237
  store i1 %1257, i1* %PF, !mcsema_real_eip !237
  %1258 = icmp eq i32 %1249, 0, !mcsema_real_eip !237
  store i1 %1258, i1* %ZF, !mcsema_real_eip !237
  %1259 = lshr i32 %1249, 31, !mcsema_real_eip !237
  %1260 = trunc i32 %1259 to i1, !mcsema_real_eip !237
  store i1 %1260, i1* %SF, !mcsema_real_eip !237
  %1261 = icmp ult i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  store i1 %1261, i1* %CF, !mcsema_real_eip !237
  %1262 = xor i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1263 = and i32 %1262, %1250, !mcsema_real_eip !237
  %1264 = lshr i32 %1263, 31, !mcsema_real_eip !237
  %1265 = trunc i32 %1264 to i1, !mcsema_real_eip !237
  store i1 %1265, i1* %OF, !mcsema_real_eip !237
  %1266 = zext i32 %1249 to i64, !mcsema_real_eip !237
  store i64 %1266, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.354 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.356 = load i32, i32* %EDX.67, !mcsema_real_eip !238
  %1267 = sub i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1268 = xor i32 %1267, %EAX_val.354, !mcsema_real_eip !238
  %1269 = xor i32 %1268, %EDX_val.356, !mcsema_real_eip !238
  %1270 = and i32 %1269, 16, !mcsema_real_eip !238
  %1271 = icmp ne i32 %1270, 0, !mcsema_real_eip !238
  store i1 %1271, i1* %AF, !mcsema_real_eip !238
  %1272 = trunc i32 %1267 to i8, !mcsema_real_eip !238
  %1273 = call i8 @llvm.ctpop.i8(i8 %1272), !mcsema_real_eip !238
  %1274 = trunc i8 %1273 to i1, !mcsema_real_eip !238
  %1275 = xor i1 %1274, true, !mcsema_real_eip !238
  store i1 %1275, i1* %PF, !mcsema_real_eip !238
  %1276 = icmp eq i32 %1267, 0, !mcsema_real_eip !238
  store i1 %1276, i1* %ZF, !mcsema_real_eip !238
  %1277 = lshr i32 %1267, 31, !mcsema_real_eip !238
  %1278 = trunc i32 %1277 to i1, !mcsema_real_eip !238
  store i1 %1278, i1* %SF, !mcsema_real_eip !238
  %1279 = icmp ult i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  store i1 %1279, i1* %CF, !mcsema_real_eip !238
  %1280 = xor i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1281 = and i32 %1280, %1268, !mcsema_real_eip !238
  %1282 = lshr i32 %1281, 31, !mcsema_real_eip !238
  %1283 = trunc i32 %1282 to i1, !mcsema_real_eip !238
  store i1 %1283, i1* %OF, !mcsema_real_eip !238
  %1284 = zext i32 %1267 to i64, !mcsema_real_eip !238
  store i64 %1284, i64* %XAX, !mcsema_real_eip !238
  %1285 = add i64 %RBP_val.321, -20, !mcsema_real_eip !239
  %1286 = inttoptr i64 %1285 to i64*, !mcsema_real_eip !239
  %1287 = inttoptr i64 %1285 to i32*, !mcsema_real_eip !239
  %1288 = load i32, i32* %1287, !mcsema_real_eip !239
  %EAX_val.359 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1289 = add i32 %EAX_val.359, %1288, !mcsema_real_eip !239
  %1290 = xor i32 %1289, %1288, !mcsema_real_eip !239
  %1291 = xor i32 %1290, %EAX_val.359, !mcsema_real_eip !239
  %1292 = and i32 %1291, 16, !mcsema_real_eip !239
  %1293 = icmp ne i32 %1292, 0, !mcsema_real_eip !239
  store i1 %1293, i1* %AF, !mcsema_real_eip !239
  %1294 = lshr i32 %1289, 31, !mcsema_real_eip !239
  %1295 = trunc i32 %1294 to i1, !mcsema_real_eip !239
  store i1 %1295, i1* %SF, !mcsema_real_eip !239
  %1296 = icmp eq i32 %1289, 0, !mcsema_real_eip !239
  store i1 %1296, i1* %ZF, !mcsema_real_eip !239
  %1297 = xor i32 %1288, %EAX_val.359, !mcsema_real_eip !239
  %1298 = xor i32 %1297, -1, !mcsema_real_eip !239
  %1299 = and i32 %1298, %1290, !mcsema_real_eip !239
  %1300 = lshr i32 %1299, 31, !mcsema_real_eip !239
  %1301 = and i32 %1300, 1, !mcsema_real_eip !239
  %1302 = trunc i32 %1301 to i1, !mcsema_real_eip !239
  store i1 %1302, i1* %OF, !mcsema_real_eip !239
  %1303 = trunc i32 %1289 to i8, !mcsema_real_eip !239
  %1304 = call i8 @llvm.ctpop.i8(i8 %1303), !mcsema_real_eip !239
  %1305 = trunc i8 %1304 to i1, !mcsema_real_eip !239
  %1306 = xor i1 %1305, true, !mcsema_real_eip !239
  store i1 %1306, i1* %PF, !mcsema_real_eip !239
  %1307 = icmp ult i32 %1289, %1288, !mcsema_real_eip !239
  store i1 %1307, i1* %CF, !mcsema_real_eip !239
  %1308 = zext i32 %1289 to i64, !mcsema_real_eip !239
  store i64 %1308, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.362 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.362, i32* %1287, !mcsema_real_eip !240
  %RBP_val.363 = load i64, i64* %XBP, !mcsema_real_eip !241
  %1309 = add i64 %RBP_val.363, -16, !mcsema_real_eip !241
  %1310 = inttoptr i64 %1309 to i64*, !mcsema_real_eip !241
  %1311 = load i64, i64* %1310, !mcsema_real_eip !241
  store i64 %1311, i64* %XCX, !mcsema_real_eip !241
  %1312 = add i64 %1311, 28, !mcsema_real_eip !242
  %1313 = inttoptr i64 %1312 to i64*, !mcsema_real_eip !242
  %1314 = inttoptr i64 %1312 to i8*, !mcsema_real_eip !242
  %1315 = load i8, i8* %1314, !mcsema_real_eip !242
  %1316 = zext i8 %1315 to i32, !mcsema_real_eip !242
  %1317 = zext i32 %1316 to i64, !mcsema_real_eip !242
  store i64 %1317, i64* %XDI, !mcsema_real_eip !242
  %RSP_val.366 = load i64, i64* %XSP, !mcsema_real_eip !243
  %1318 = sub i64 %RSP_val.366, 8, !mcsema_real_eip !243
  %1319 = inttoptr i64 %1318 to i64*, !mcsema_real_eip !243
  store i64 -2415393069852865332, i64* %1319, !mcsema_real_eip !243
  store i64 %1318, i64* %XSP, !mcsema_real_eip !243
  %1320 = call x86_64_sysvcc i64 @_to_byte(i64 %1317), !mcsema_real_eip !243
  store i64 %1320, i64* %XAX, !mcsema_real_eip !243
  %RBP_val.367 = load i64, i64* %XBP, !mcsema_real_eip !244
  %1321 = add i64 %RBP_val.367, -20, !mcsema_real_eip !244
  %1322 = inttoptr i64 %1321 to i64*, !mcsema_real_eip !244
  %1323 = inttoptr i64 %1321 to i32*, !mcsema_real_eip !244
  %1324 = load i32, i32* %1323, !mcsema_real_eip !244
  %1325 = zext i32 %1324 to i64, !mcsema_real_eip !244
  store i64 %1325, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.369 = load i32, i32* %EDX.67, !mcsema_real_eip !245
  %EAX_val.371 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1326 = sub i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1327 = xor i32 %1326, %EDX_val.369, !mcsema_real_eip !245
  %1328 = xor i32 %1327, %EAX_val.371, !mcsema_real_eip !245
  %1329 = and i32 %1328, 16, !mcsema_real_eip !245
  %1330 = icmp ne i32 %1329, 0, !mcsema_real_eip !245
  store i1 %1330, i1* %AF, !mcsema_real_eip !245
  %1331 = trunc i32 %1326 to i8, !mcsema_real_eip !245
  %1332 = call i8 @llvm.ctpop.i8(i8 %1331), !mcsema_real_eip !245
  %1333 = trunc i8 %1332 to i1, !mcsema_real_eip !245
  %1334 = xor i1 %1333, true, !mcsema_real_eip !245
  store i1 %1334, i1* %PF, !mcsema_real_eip !245
  %1335 = icmp eq i32 %1326, 0, !mcsema_real_eip !245
  store i1 %1335, i1* %ZF, !mcsema_real_eip !245
  %1336 = lshr i32 %1326, 31, !mcsema_real_eip !245
  %1337 = trunc i32 %1336 to i1, !mcsema_real_eip !245
  store i1 %1337, i1* %SF, !mcsema_real_eip !245
  %1338 = icmp ult i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  store i1 %1338, i1* %CF, !mcsema_real_eip !245
  %1339 = xor i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1340 = and i32 %1339, %1327, !mcsema_real_eip !245
  %1341 = lshr i32 %1340, 31, !mcsema_real_eip !245
  %1342 = trunc i32 %1341 to i1, !mcsema_real_eip !245
  store i1 %1342, i1* %OF, !mcsema_real_eip !245
  %1343 = zext i32 %1326 to i64, !mcsema_real_eip !245
  store i64 %1343, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.374 = load i32, i32* %EDX.67, !mcsema_real_eip !246
  store i32 %EDX_val.374, i32* %1323, !mcsema_real_eip !246
  %RBP_val.375 = load i64, i64* %XBP, !mcsema_real_eip !247
  %1344 = add i64 %RBP_val.375, -20, !mcsema_real_eip !247
  %1345 = inttoptr i64 %1344 to i64*, !mcsema_real_eip !247
  %1346 = inttoptr i64 %1344 to i32*, !mcsema_real_eip !247
  %1347 = load i32, i32* %1346, !mcsema_real_eip !247
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1348 = trunc i32 %1347 to i8, !mcsema_real_eip !247
  %1349 = call i8 @llvm.ctpop.i8(i8 %1348), !mcsema_real_eip !247
  %1350 = trunc i8 %1349 to i1, !mcsema_real_eip !247
  %1351 = xor i1 %1350, true, !mcsema_real_eip !247
  store i1 %1351, i1* %PF, !mcsema_real_eip !247
  %1352 = icmp eq i32 %1347, 0, !mcsema_real_eip !247
  store i1 %1352, i1* %ZF, !mcsema_real_eip !247
  %1353 = lshr i32 %1347, 31, !mcsema_real_eip !247
  %1354 = trunc i32 %1353 to i1, !mcsema_real_eip !247
  store i1 %1354, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1355 = icmp eq i1 %1352, false, !mcsema_real_eip !248
  br i1 %1355, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x406:                                      ; preds = %block_0x38e
  %1356 = add i64 %RBP_val.321, -64, !mcsema_real_eip !249
  %1357 = inttoptr i64 %1356 to i64*, !mcsema_real_eip !249
  %1358 = inttoptr i64 %1356 to i32*, !mcsema_real_eip !249
  %1359 = load i32, i32* %1358, !mcsema_real_eip !249
  %1360 = zext i32 %1359 to i64, !mcsema_real_eip !249
  store i64 %1360, i64* %XAX, !mcsema_real_eip !249
  %1361 = add i64 %RBP_val.321, -20, !mcsema_real_eip !250
  %1362 = inttoptr i64 %1361 to i64*, !mcsema_real_eip !250
  %EAX_val.344 = load i32, i32* %EAX.9, !mcsema_real_eip !250
  %1363 = inttoptr i64 %1361 to i32*, !mcsema_real_eip !250
  store i32 %EAX_val.344, i32* %1363, !mcsema_real_eip !250
  br label %block_0x40c, !mcsema_real_eip !232

block_0x380:                                      ; preds = %block_0x36f
  %1364 = add i64 %RBP_val.321, -64, !mcsema_real_eip !251
  %1365 = inttoptr i64 %1364 to i64*, !mcsema_real_eip !251
  %1366 = inttoptr i64 %1364 to i32*, !mcsema_real_eip !251
  %1367 = load i32, i32* %1366, !mcsema_real_eip !251
  %1368 = zext i32 %1367 to i64, !mcsema_real_eip !251
  store i64 %1368, i64* %XAX, !mcsema_real_eip !251
  %1369 = add i64 %RBP_val.321, -20, !mcsema_real_eip !252
  %1370 = inttoptr i64 %1369 to i64*, !mcsema_real_eip !252
  %1371 = inttoptr i64 %1369 to i32*, !mcsema_real_eip !252
  %1372 = load i32, i32* %1371, !mcsema_real_eip !252
  %EAX_val.379 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1373 = xor i32 %1372, %EAX_val.379, !mcsema_real_eip !252
  store i1 false, i1* %CF, !mcsema_real_eip !252
  store i1 false, i1* %OF, !mcsema_real_eip !252
  %1374 = lshr i32 %1373, 31, !mcsema_real_eip !252
  %1375 = trunc i32 %1374 to i1, !mcsema_real_eip !252
  store i1 %1375, i1* %SF, !mcsema_real_eip !252
  %1376 = icmp eq i32 %1373, 0, !mcsema_real_eip !252
  store i1 %1376, i1* %ZF, !mcsema_real_eip !252
  %1377 = trunc i32 %1373 to i8, !mcsema_real_eip !252
  %1378 = call i8 @llvm.ctpop.i8(i8 %1377), !mcsema_real_eip !252
  %1379 = trunc i8 %1378 to i1, !mcsema_real_eip !252
  %1380 = xor i1 %1379, true, !mcsema_real_eip !252
  store i1 %1380, i1* %PF, !mcsema_real_eip !252
  store i1 undef, i1* %AF, !mcsema_real_eip !252
  %1381 = zext i32 %1373 to i64, !mcsema_real_eip !252
  store i64 %1381, i64* %XAX, !mcsema_real_eip !252
  %EAX_val.382 = load i32, i32* %EAX.9, !mcsema_real_eip !253
  store i32 %EAX_val.382, i32* %1371, !mcsema_real_eip !253
  br label %block_0x411, !mcsema_real_eip !254

block_0x40c:                                      ; preds = %block_0x401, %block_0x406
  br label %block_0x411, !mcsema_real_eip !255

block_0x3e4:                                      ; preds = %block_0x3a6
  %1382 = add i64 %RBP_val.375, -16, !mcsema_real_eip !256
  %1383 = inttoptr i64 %1382 to i64*, !mcsema_real_eip !256
  %1384 = load i64, i64* %1383, !mcsema_real_eip !256
  store i64 %1384, i64* %XAX, !mcsema_real_eip !256
  %1385 = add i64 %1384, 31, !mcsema_real_eip !257
  %1386 = inttoptr i64 %1385 to i64*, !mcsema_real_eip !257
  %1387 = inttoptr i64 %1385 to i8*, !mcsema_real_eip !257
  %1388 = load i8, i8* %1387, !mcsema_real_eip !257
  %1389 = zext i8 %1388 to i32, !mcsema_real_eip !257
  %1390 = zext i32 %1389 to i64, !mcsema_real_eip !257
  store i64 %1390, i64* %XDI, !mcsema_real_eip !257
  %RSP_val.386 = load i64, i64* %XSP, !mcsema_real_eip !258
  %1391 = sub i64 %RSP_val.386, 8, !mcsema_real_eip !258
  %1392 = inttoptr i64 %1391 to i64*, !mcsema_real_eip !258
  store i64 -2415393069852865332, i64* %1392, !mcsema_real_eip !258
  store i64 %1391, i64* %XSP, !mcsema_real_eip !258
  %1393 = call x86_64_sysvcc i64 @_to_byte(i64 %1390), !mcsema_real_eip !258
  store i64 %1393, i64* %XAX, !mcsema_real_eip !258
  %EAX_val.388 = load i32, i32* %EAX.9, !mcsema_real_eip !259
  %1394 = sub i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1395 = xor i32 %1394, %EAX_val.388, !mcsema_real_eip !259
  %1396 = xor i32 %1395, 4, !mcsema_real_eip !259
  %1397 = and i32 %1396, 16, !mcsema_real_eip !259
  %1398 = icmp ne i32 %1397, 0, !mcsema_real_eip !259
  store i1 %1398, i1* %AF, !mcsema_real_eip !259
  %1399 = trunc i32 %1394 to i8, !mcsema_real_eip !259
  %1400 = call i8 @llvm.ctpop.i8(i8 %1399), !mcsema_real_eip !259
  %1401 = trunc i8 %1400 to i1, !mcsema_real_eip !259
  %1402 = xor i1 %1401, true, !mcsema_real_eip !259
  store i1 %1402, i1* %PF, !mcsema_real_eip !259
  %1403 = icmp eq i32 %1394, 0, !mcsema_real_eip !259
  store i1 %1403, i1* %ZF, !mcsema_real_eip !259
  %1404 = lshr i32 %1394, 31, !mcsema_real_eip !259
  %1405 = trunc i32 %1404 to i1, !mcsema_real_eip !259
  store i1 %1405, i1* %SF, !mcsema_real_eip !259
  %1406 = icmp ult i32 %EAX_val.388, 4, !mcsema_real_eip !259
  store i1 %1406, i1* %CF, !mcsema_real_eip !259
  %1407 = xor i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1408 = and i32 %1407, %1395, !mcsema_real_eip !259
  %1409 = lshr i32 %1408, 31, !mcsema_real_eip !259
  %1410 = trunc i32 %1409 to i1, !mcsema_real_eip !259
  store i1 %1410, i1* %OF, !mcsema_real_eip !259
  br i1 %1403, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !260

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !261

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %RBP_val.389 = load i64, i64* %XBP, !mcsema_real_eip !262
  %1411 = add i64 %RBP_val.389, -20, !mcsema_real_eip !262
  %1412 = inttoptr i64 %1411 to i64*, !mcsema_real_eip !262
  %1413 = inttoptr i64 %1411 to i32*, !mcsema_real_eip !262
  %1414 = load i32, i32* %1413, !mcsema_real_eip !262
  %1415 = zext i32 %1414 to i64, !mcsema_real_eip !262
  store i64 %1415, i64* %XAX, !mcsema_real_eip !262
  %1416 = add i64 %RBP_val.389, -4, !mcsema_real_eip !263
  %1417 = inttoptr i64 %1416 to i64*, !mcsema_real_eip !263
  %EAX_val.392 = load i32, i32* %EAX.9, !mcsema_real_eip !263
  %1418 = inttoptr i64 %1416 to i32*, !mcsema_real_eip !263
  store i32 %EAX_val.392, i32* %1418, !mcsema_real_eip !263
  br label %block_0x417, !mcsema_real_eip !264

block_0x3fa:                                      ; preds = %block_0x3e4
  %RBP_val.393 = load i64, i64* %XBP, !mcsema_real_eip !264
  %1419 = add i64 %RBP_val.393, -20, !mcsema_real_eip !264
  %1420 = inttoptr i64 %1419 to i64*, !mcsema_real_eip !264
  %1421 = inttoptr i64 %1419 to i32*, !mcsema_real_eip !264
  store i32 -32, i32* %1421, !mcsema_real_eip !264
  br label %block_0x401
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @keycomp() #2

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
!9 = !{i64 23}
!10 = !{i64 26}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 47}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 59}
!19 = !{i64 63}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 75}
!23 = !{i64 82}
!24 = !{i64 87}
!25 = !{i64 91}
!26 = !{i64 95}
!27 = !{i64 100}
!28 = !{i64 103}
!29 = !{i64 1047}
!30 = !{i64 1050}
!31 = !{i64 1054}
!32 = !{i64 1055}
!33 = !{i64 109}
!34 = !{i64 116}
!35 = !{i64 121}
!36 = !{i64 125}
!37 = !{i64 129}
!38 = !{i64 134}
!39 = !{i64 137}
!40 = !{i64 140}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 152}
!44 = !{i64 159}
!45 = !{i64 164}
!46 = !{i64 168}
!47 = !{i64 172}
!48 = !{i64 177}
!49 = !{i64 182}
!50 = !{i64 185}
!51 = !{i64 188}
!52 = !{i64 191}
!53 = !{i64 192}
!54 = !{i64 194}
!55 = !{i64 197}
!56 = !{i64 203}
!57 = !{i64 210}
!58 = !{i64 215}
!59 = !{i64 219}
!60 = !{i64 223}
!61 = !{i64 226}
!62 = !{i64 229}
!63 = !{i64 235}
!64 = !{i64 239}
!65 = !{i64 243}
!66 = !{i64 249}
!67 = !{i64 252}
!68 = !{i64 270}
!69 = !{i64 277}
!70 = !{i64 258}
!71 = !{i64 265}
!72 = !{i64 282}
!73 = !{i64 286}
!74 = !{i64 290}
!75 = !{i64 293}
!76 = !{i64 295}
!77 = !{i64 298}
!78 = !{i64 302}
!79 = !{i64 306}
!80 = !{i64 312}
!81 = !{i64 314}
!82 = !{i64 317}
!83 = !{i64 321}
!84 = !{i64 324}
!85 = !{i64 330}
!86 = !{i64 334}
!87 = !{i64 337}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 363}
!91 = !{i64 366}
!92 = !{i64 370}
!93 = !{i64 374}
!94 = !{i64 379}
!95 = !{i64 381}
!96 = !{i64 384}
!97 = !{i64 388}
!98 = !{i64 392}
!99 = !{i64 397}
!100 = !{i64 401}
!101 = !{i64 403}
!102 = !{i64 406}
!103 = !{i64 409}
!104 = !{i64 413}
!105 = !{i64 416}
!106 = !{i64 419}
!107 = !{i64 343}
!108 = !{i64 346}
!109 = !{i64 349}
!110 = !{i64 352}
!111 = !{i64 425}
!112 = !{i64 428}
!113 = !{i64 431}
!114 = !{i64 434}
!115 = !{i64 439}
!116 = !{i64 442}
!117 = !{i64 445}
!118 = !{i64 447}
!119 = !{i64 450}
!120 = !{i64 454}
!121 = !{i64 460}
!122 = !{i64 467}
!123 = !{i64 472}
!124 = !{i64 474}
!125 = !{i64 479}
!126 = !{i64 483}
!127 = !{i64 487}
!128 = !{i64 490}
!129 = !{i64 495}
!130 = !{i64 498}
!131 = !{i64 502}
!132 = !{i64 506}
!133 = !{i64 511}
!134 = !{i64 516}
!135 = !{i64 522}
!136 = !{i64 526}
!137 = !{i64 531}
!138 = !{i64 536}
!139 = !{i64 554}
!140 = !{i64 561}
!141 = !{i64 563}
!142 = !{i64 568}
!143 = !{i64 572}
!144 = !{i64 576}
!145 = !{i64 579}
!146 = !{i64 584}
!147 = !{i64 587}
!148 = !{i64 590}
!149 = !{i64 595}
!150 = !{i64 598}
!151 = !{i64 601}
!152 = !{i64 604}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 622}
!158 = !{i64 542}
!159 = !{i64 549}
!160 = !{i64 628}
!161 = !{i64 631}
!162 = !{i64 634}
!163 = !{i64 652}
!164 = !{i64 659}
!165 = !{i64 664}
!166 = !{i64 667}
!167 = !{i64 671}
!168 = !{i64 675}
!169 = !{i64 678}
!170 = !{i64 683}
!171 = !{i64 686}
!172 = !{i64 689}
!173 = !{i64 692}
!174 = !{i64 695}
!175 = !{i64 698}
!176 = !{i64 701}
!177 = !{i64 704}
!178 = !{i64 640}
!179 = !{i64 647}
!180 = !{i64 710}
!181 = !{i64 717}
!182 = !{i64 722}
!183 = !{i64 725}
!184 = !{i64 730}
!185 = !{i64 733}
!186 = !{i64 740}
!187 = !{i64 746}
!188 = !{i64 753}
!189 = !{i64 758}
!190 = !{i64 763}
!191 = !{i64 766}
!192 = !{i64 772}
!193 = !{i64 775}
!194 = !{i64 778}
!195 = !{i64 781}
!196 = !{i64 784}
!197 = !{i64 787}
!198 = !{i64 793}
!199 = !{i64 796}
!200 = !{i64 799}
!201 = !{i64 802}
!202 = !{i64 804}
!203 = !{i64 806}
!204 = !{i64 809}
!205 = !{i64 811}
!206 = !{i64 814}
!207 = !{i64 818}
!208 = !{i64 824}
!209 = !{i64 827}
!210 = !{i64 830}
!211 = !{i64 835}
!212 = !{i64 840}
!213 = !{i64 843}
!214 = !{i64 847}
!215 = !{i64 851}
!216 = !{i64 854}
!217 = !{i64 859}
!218 = !{i64 862}
!219 = !{i64 866}
!220 = !{i64 870}
!221 = !{i64 873}
!222 = !{i64 879}
!223 = !{i64 883}
!224 = !{i64 887}
!225 = !{i64 890}
!226 = !{i64 910}
!227 = !{i64 914}
!228 = !{i64 918}
!229 = !{i64 922}
!230 = !{i64 926}
!231 = !{i64 928}
!232 = !{i64 934}
!233 = !{i64 939}
!234 = !{i64 943}
!235 = !{i64 947}
!236 = !{i64 951}
!237 = !{i64 955}
!238 = !{i64 957}
!239 = !{i64 959}
!240 = !{i64 962}
!241 = !{i64 965}
!242 = !{i64 969}
!243 = !{i64 973}
!244 = !{i64 978}
!245 = !{i64 981}
!246 = !{i64 983}
!247 = !{i64 986}
!248 = !{i64 990}
!249 = !{i64 1030}
!250 = !{i64 1033}
!251 = !{i64 896}
!252 = !{i64 899}
!253 = !{i64 902}
!254 = !{i64 905}
!255 = !{i64 1036}
!256 = !{i64 996}
!257 = !{i64 1000}
!258 = !{i64 1004}
!259 = !{i64 1009}
!260 = !{i64 1012}
!261 = !{i64 1025}
!262 = !{i64 1041}
!263 = !{i64 1044}
!264 = !{i64 1018}
