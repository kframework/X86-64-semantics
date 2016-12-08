; ModuleID = 'Output/test_13.clang.trans.bc'
source_filename = "Output/test_13.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x180 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\83\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"l\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00T\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %20 = add i64 %1, -8, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !6
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !6
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.8, i32* %24, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %25 = add i64 %RBP_val.9, -16, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %27, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, -12, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  %31 = load i32, i32* %30, !mcsema_real_eip !8
  %32 = sext i32 %31 to i64, !mcsema_real_eip !8
  store i64 %32, i64* %XDI, !mcsema_real_eip !8
  %33 = shl i64 %32, 2, !mcsema_real_eip !9
  %34 = and i64 %33, -9223372036854775808, !mcsema_real_eip !9
  %35 = icmp ne i64 %34, 0, !mcsema_real_eip !9
  %36 = load i1, i1* %CF, !mcsema_real_eip !9
  %37 = shl i64 %33, 1, !mcsema_real_eip !9
  %38 = load i1, i1* %OF, !mcsema_real_eip !9
  %39 = and i64 %37, -9223372036854775808, !mcsema_real_eip !9
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !9
  %41 = xor i1 %40, %35, !mcsema_real_eip !9
  store i1 %35, i1* %CF, !mcsema_real_eip !9
  %42 = load i1, i1* %ZF, !mcsema_real_eip !9
  %43 = icmp eq i64 %37, 0, !mcsema_real_eip !9
  store i1 %43, i1* %ZF, !mcsema_real_eip !9
  %44 = load i1, i1* %SF, !mcsema_real_eip !9
  %45 = icmp slt i64 %37, 0, !mcsema_real_eip !9
  store i1 %45, i1* %SF, !mcsema_real_eip !9
  %46 = load i1, i1* %PF, !mcsema_real_eip !9
  %47 = trunc i64 %37 to i8, !mcsema_real_eip !9
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !9
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !9
  %50 = xor i1 %49, true, !mcsema_real_eip !9
  store i1 %50, i1* %PF, !mcsema_real_eip !9
  store i64 %37, i64* %XDI, !mcsema_real_eip !9
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %51 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %52, !mcsema_real_eip !10
  store i64 %51, i64* %XSP, !mcsema_real_eip !10
  %53 = call x86_64_sysvcc i64 @_malloc(i64 %37), !mcsema_real_eip !10
  store i64 %53, i64* %XAX, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %54 = add i64 %RBP_val.14, -24, !mcsema_real_eip !11
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !11
  store i64 %53, i64* %55, !mcsema_real_eip !11
  br label %block_0x27, !mcsema_real_eip !12

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %56 = add i64 %RBP_val.16, -16, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !12
  %58 = inttoptr i64 %56 to i32*, !mcsema_real_eip !12
  %59 = load i32, i32* %58, !mcsema_real_eip !12
  %60 = zext i32 %59 to i64, !mcsema_real_eip !12
  store i64 %60, i64* %XAX, !mcsema_real_eip !12
  %61 = add i64 %RBP_val.16, -12, !mcsema_real_eip !13
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !13
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !13
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !13
  %64 = load i32, i32* %63, !mcsema_real_eip !13
  %65 = sub i32 %EAX_val.19, %64, !mcsema_real_eip !13
  %66 = xor i32 %65, %EAX_val.19, !mcsema_real_eip !13
  %67 = xor i32 %66, %64, !mcsema_real_eip !13
  %68 = and i32 %67, 16, !mcsema_real_eip !13
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !13
  store i1 %69, i1* %AF, !mcsema_real_eip !13
  %70 = trunc i32 %65 to i8, !mcsema_real_eip !13
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !13
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !13
  %73 = xor i1 %72, true, !mcsema_real_eip !13
  store i1 %73, i1* %PF, !mcsema_real_eip !13
  %74 = icmp eq i32 %65, 0, !mcsema_real_eip !13
  store i1 %74, i1* %ZF, !mcsema_real_eip !13
  %75 = lshr i32 %65, 31, !mcsema_real_eip !13
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !13
  store i1 %76, i1* %SF, !mcsema_real_eip !13
  %77 = icmp ult i32 %EAX_val.19, %64, !mcsema_real_eip !13
  store i1 %77, i1* %CF, !mcsema_real_eip !13
  %78 = xor i32 %EAX_val.19, %64, !mcsema_real_eip !13
  %79 = and i32 %78, %66, !mcsema_real_eip !13
  %80 = lshr i32 %79, 31, !mcsema_real_eip !13
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !13
  store i1 %81, i1* %OF, !mcsema_real_eip !13
  %82 = icmp eq i1 %76, %81, !mcsema_real_eip !14
  br i1 %82, label %block_0x75, label %block_0x33, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %83 = add i64 %RBP_val.16, -8, !mcsema_real_eip !15
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !15
  %85 = load i64, i64* %84, !mcsema_real_eip !15
  store i64 %85, i64* %XAX, !mcsema_real_eip !15
  %86 = load i32, i32* %58, !mcsema_real_eip !16
  %87 = sext i32 %86 to i64, !mcsema_real_eip !16
  store i64 %87, i64* %XCX, !mcsema_real_eip !16
  %88 = mul i64 %87, 8, !mcsema_real_eip !17
  %89 = add i64 %85, %88, !mcsema_real_eip !17
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !17
  %91 = load i64, i64* %90, !mcsema_real_eip !17
  store i64 %91, i64* %XAX, !mcsema_real_eip !17
  %92 = add i64 %RBP_val.16, -32, !mcsema_real_eip !18
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !18
  store i64 %91, i64* %93, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !19
  %94 = add i64 %RBP_val.31, -32, !mcsema_real_eip !19
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !19
  %96 = load i64, i64* %95, !mcsema_real_eip !19
  store i64 %96, i64* %XDI, !mcsema_real_eip !19
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %97 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !20
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %98, !mcsema_real_eip !20
  store i64 %97, i64* %XSP, !mcsema_real_eip !20
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !20
  %EAX_val.34 = load i32, i32* %EAX.18, !mcsema_real_eip !21
  store i1 false, i1* %AF, !mcsema_real_eip !21
  %99 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !21
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !21
  %102 = xor i1 %101, true, !mcsema_real_eip !21
  store i1 %102, i1* %PF, !mcsema_real_eip !21
  %103 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %103, i1* %ZF, !mcsema_real_eip !21
  %104 = lshr i32 %EAX_val.34, 31, !mcsema_real_eip !21
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !21
  store i1 %105, i1* %SF, !mcsema_real_eip !21
  store i1 false, i1* %CF, !mcsema_real_eip !21
  store i1 false, i1* %OF, !mcsema_real_eip !21
  %106 = icmp eq i1 %103, false, !mcsema_real_eip !22
  br i1 %106, label %block_0x62, label %block_0x55, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %107 = add i64 %RBP_val.16, -24, !mcsema_real_eip !23
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !23
  %109 = load i64, i64* %108, !mcsema_real_eip !23
  store i64 %109, i64* %XAX, !mcsema_real_eip !23
  %110 = add i64 %109, 1, !mcsema_real_eip !24
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !24
  %112 = inttoptr i64 %110 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %112, !mcsema_real_eip !24
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !25
  %113 = add i64 32, %RSP_val.22, !mcsema_real_eip !25
  %114 = xor i64 %113, %RSP_val.22, !mcsema_real_eip !25
  %115 = xor i64 %114, 32, !mcsema_real_eip !25
  %116 = and i64 %115, 16, !mcsema_real_eip !25
  %117 = icmp ne i64 %116, 0, !mcsema_real_eip !25
  store i1 %117, i1* %AF, !mcsema_real_eip !25
  %118 = lshr i64 %113, 63, !mcsema_real_eip !25
  %119 = trunc i64 %118 to i1, !mcsema_real_eip !25
  store i1 %119, i1* %SF, !mcsema_real_eip !25
  %120 = icmp eq i64 %113, 0, !mcsema_real_eip !25
  store i1 %120, i1* %ZF, !mcsema_real_eip !25
  %121 = xor i64 %RSP_val.22, 32, !mcsema_real_eip !25
  %122 = xor i64 %121, -1, !mcsema_real_eip !25
  %123 = and i64 %122, %114, !mcsema_real_eip !25
  %124 = lshr i64 %123, 63, !mcsema_real_eip !25
  %125 = and i64 %124, 1, !mcsema_real_eip !25
  %126 = trunc i64 %125 to i1, !mcsema_real_eip !25
  store i1 %126, i1* %OF, !mcsema_real_eip !25
  %127 = trunc i64 %113 to i8, !mcsema_real_eip !25
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !25
  %129 = trunc i8 %128 to i1, !mcsema_real_eip !25
  %130 = xor i1 %129, true, !mcsema_real_eip !25
  store i1 %130, i1* %PF, !mcsema_real_eip !25
  %131 = icmp ult i64 %113, %RSP_val.22, !mcsema_real_eip !25
  store i1 %131, i1* %CF, !mcsema_real_eip !25
  store i64 %113, i64* %XSP, !mcsema_real_eip !25
  %132 = inttoptr i64 %113 to i64*, !mcsema_real_eip !26
  %133 = load i64, i64* %132, !mcsema_real_eip !26
  store i64 %133, i64* %XBP, !mcsema_real_eip !26
  %134 = add i64 %113, 8, !mcsema_real_eip !26
  store i64 %134, i64* %XSP, !mcsema_real_eip !26
  %135 = add i64 %134, 8, !mcsema_real_eip !27
  %136 = inttoptr i64 %134 to i64*, !mcsema_real_eip !27
  %137 = load i64, i64* %136, !mcsema_real_eip !27
  store i64 %137, i64* %XIP, !mcsema_real_eip !27
  store i64 %135, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !28
  %138 = add i64 %RBP_val.35, -32, !mcsema_real_eip !28
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !28
  %140 = load i64, i64* %139, !mcsema_real_eip !28
  store i64 %140, i64* %XDI, !mcsema_real_eip !28
  %141 = load i64, i64* %139, !mcsema_real_eip !29
  store i64 %141, i64* %XSI, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %142 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %143, !mcsema_real_eip !30
  store i64 %142, i64* %XSP, !mcsema_real_eip !30
  call x86_64_sysvcc void @doStuff(%RegState* %0), !mcsema_real_eip !30
  br label %block_0x62, !mcsema_real_eip !31

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !32

block_0x67:                                       ; preds = %block_0x62
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !31
  %144 = add i64 %RBP_val.38, -16, !mcsema_real_eip !31
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !31
  %146 = inttoptr i64 %144 to i32*, !mcsema_real_eip !31
  %147 = load i32, i32* %146, !mcsema_real_eip !31
  %148 = zext i32 %147 to i64, !mcsema_real_eip !31
  store i64 %148, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.18, !mcsema_real_eip !33
  %149 = add i32 1, %EAX_val.40, !mcsema_real_eip !33
  %150 = xor i32 %149, %EAX_val.40, !mcsema_real_eip !33
  %151 = xor i32 %150, 1, !mcsema_real_eip !33
  %152 = and i32 %151, 16, !mcsema_real_eip !33
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !33
  store i1 %153, i1* %AF, !mcsema_real_eip !33
  %154 = lshr i32 %149, 31, !mcsema_real_eip !33
  %155 = trunc i32 %154 to i1, !mcsema_real_eip !33
  store i1 %155, i1* %SF, !mcsema_real_eip !33
  %156 = icmp eq i32 %149, 0, !mcsema_real_eip !33
  store i1 %156, i1* %ZF, !mcsema_real_eip !33
  %157 = xor i32 %EAX_val.40, 1, !mcsema_real_eip !33
  %158 = xor i32 %157, -1, !mcsema_real_eip !33
  %159 = and i32 %158, %150, !mcsema_real_eip !33
  %160 = lshr i32 %159, 31, !mcsema_real_eip !33
  %161 = and i32 %160, 1, !mcsema_real_eip !33
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !33
  store i1 %162, i1* %OF, !mcsema_real_eip !33
  %163 = trunc i32 %149 to i8, !mcsema_real_eip !33
  %164 = call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !33
  %165 = trunc i8 %164 to i1, !mcsema_real_eip !33
  %166 = xor i1 %165, true, !mcsema_real_eip !33
  store i1 %166, i1* %PF, !mcsema_real_eip !33
  %167 = icmp ult i32 %149, %EAX_val.40, !mcsema_real_eip !33
  store i1 %167, i1* %CF, !mcsema_real_eip !33
  %168 = zext i32 %149 to i64, !mcsema_real_eip !33
  store i64 %168, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.43 = load i32, i32* %EAX.18, !mcsema_real_eip !34
  store i32 %EAX_val.43, i32* %146, !mcsema_real_eip !34
  br label %block_0x27, !mcsema_real_eip !35
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !36
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !36
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !36
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !36
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !36
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !36
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !36
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !36
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !36
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !36
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !36
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !36
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !36
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !36
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !36
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !36
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !36
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !36
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !36
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !36
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !36
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !36
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !36
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !36
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !36
  br label %block_0x100, !mcsema_real_eip !36

block_0x100:                                      ; preds = %entry
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !36
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !36
  %1 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !36
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !36
  store i64 %RBP_val.44, i64* %2, !mcsema_real_eip !36
  store i64 %1, i64* %XSP, !mcsema_real_eip !36
  store i64 %1, i64* %XBP, !mcsema_real_eip !37
  %3 = add i64 %1, -8, !mcsema_real_eip !38
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !38
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !38
  store i64 %RDI_val.48, i64* %4, !mcsema_real_eip !38
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !39
  %5 = add i64 %RBP_val.49, -16, !mcsema_real_eip !39
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !39
  %RSI_val.50 = load i64, i64* %XSI, !mcsema_real_eip !39
  store i64 %RSI_val.50, i64* %6, !mcsema_real_eip !39
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !40
  %7 = add i64 %RBP_val.51, -8, !mcsema_real_eip !40
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !40
  %9 = load i64, i64* %8, !mcsema_real_eip !40
  store i64 %9, i64* %XSI, !mcsema_real_eip !40
  %10 = add i64 %RBP_val.51, -24, !mcsema_real_eip !41
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !41
  store i64 %9, i64* %11, !mcsema_real_eip !41
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !42
  %12 = add i64 %RBP_val.54, -16, !mcsema_real_eip !42
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !42
  %14 = load i64, i64* %13, !mcsema_real_eip !42
  store i64 %14, i64* %XSI, !mcsema_real_eip !42
  %15 = add i64 %RBP_val.54, -32, !mcsema_real_eip !43
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !43
  store i64 %14, i64* %16, !mcsema_real_eip !43
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !44
  %17 = add i64 %RBP_val.57, -24, !mcsema_real_eip !44
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !44
  %19 = load i64, i64* %18, !mcsema_real_eip !44
  store i64 %19, i64* %XSI, !mcsema_real_eip !44
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !45
  %21 = inttoptr i64 %19 to i8*, !mcsema_real_eip !45
  %22 = load i8, i8* %21, !mcsema_real_eip !45
  %AL.59 = bitcast i64* %XAX to i8*, !mcsema_real_eip !45
  store i8 %22, i8* %AL.59, !mcsema_real_eip !45
  %23 = add i64 %RBP_val.57, -33, !mcsema_real_eip !46
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !46
  %25 = inttoptr i64 %23 to i8*, !mcsema_real_eip !46
  store i8 %22, i8* %25, !mcsema_real_eip !46
  br label %block_0x125, !mcsema_real_eip !47

block_0x125:                                      ; preds = %block_0x154, %block_0x100
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !47
  %26 = add i64 %RBP_val.63, -33, !mcsema_real_eip !47
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !47
  %28 = inttoptr i64 %26 to i8*, !mcsema_real_eip !47
  %29 = load i8, i8* %28, !mcsema_real_eip !47
  %30 = sext i8 %29 to i32, !mcsema_real_eip !47
  %31 = zext i32 %30 to i64, !mcsema_real_eip !47
  store i64 %31, i64* %XAX, !mcsema_real_eip !47
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !48
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %32 = trunc i32 %EAX_val.65 to i8, !mcsema_real_eip !48
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !48
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !48
  %35 = xor i1 %34, true, !mcsema_real_eip !48
  store i1 %35, i1* %PF, !mcsema_real_eip !48
  %36 = icmp eq i32 %EAX_val.65, 0, !mcsema_real_eip !48
  store i1 %36, i1* %ZF, !mcsema_real_eip !48
  %37 = lshr i32 %EAX_val.65, 31, !mcsema_real_eip !48
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !48
  store i1 %38, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  br i1 %36, label %block_0x17a, label %block_0x132, !mcsema_real_eip !49

block_0x132:                                      ; preds = %block_0x125
  %39 = load i8, i8* %28, !mcsema_real_eip !50
  %40 = sext i8 %39 to i32, !mcsema_real_eip !50
  %41 = zext i32 %40 to i64, !mcsema_real_eip !50
  store i64 %41, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.70 = load i32, i32* %EAX.64, !mcsema_real_eip !51
  %42 = sub i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %43 = xor i32 %42, %EAX_val.70, !mcsema_real_eip !51
  %44 = xor i32 %43, 47, !mcsema_real_eip !51
  %45 = and i32 %44, 16, !mcsema_real_eip !51
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !51
  store i1 %46, i1* %AF, !mcsema_real_eip !51
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !51
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !51
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !51
  %50 = xor i1 %49, true, !mcsema_real_eip !51
  store i1 %50, i1* %PF, !mcsema_real_eip !51
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !51
  store i1 %51, i1* %ZF, !mcsema_real_eip !51
  %52 = lshr i32 %42, 31, !mcsema_real_eip !51
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !51
  store i1 %53, i1* %SF, !mcsema_real_eip !51
  %54 = icmp ult i32 %EAX_val.70, 47, !mcsema_real_eip !51
  store i1 %54, i1* %CF, !mcsema_real_eip !51
  %55 = xor i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %56 = and i32 %55, %43, !mcsema_real_eip !51
  %57 = lshr i32 %56, 31, !mcsema_real_eip !51
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !51
  store i1 %58, i1* %OF, !mcsema_real_eip !51
  %59 = icmp eq i1 %51, false, !mcsema_real_eip !52
  br i1 %59, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !52

block_0x17a:                                      ; preds = %block_0x125
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !53
  %60 = inttoptr i64 %RSP_val.66 to i64*, !mcsema_real_eip !53
  %61 = load i64, i64* %60, !mcsema_real_eip !53
  store i64 %61, i64* %XBP, !mcsema_real_eip !53
  %62 = add i64 %RSP_val.66, 8, !mcsema_real_eip !53
  store i64 %62, i64* %XSP, !mcsema_real_eip !53
  %63 = add i64 %62, 8, !mcsema_real_eip !54
  %64 = inttoptr i64 %62 to i64*, !mcsema_real_eip !54
  %65 = load i64, i64* %64, !mcsema_real_eip !54
  store i64 %65, i64* %XIP, !mcsema_real_eip !54
  store i64 %63, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x13f:                                      ; preds = %block_0x132
  %66 = add i64 %RBP_val.63, -32, !mcsema_real_eip !55
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !55
  %68 = load i64, i64* %67, !mcsema_real_eip !55
  store i64 %68, i64* %XAX, !mcsema_real_eip !55
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !56
  %70 = inttoptr i64 %68 to i8*, !mcsema_real_eip !56
  store i8 92, i8* %70, !mcsema_real_eip !56
  br label %block_0x154, !mcsema_real_eip !57

block_0x14b:                                      ; preds = %block_0x132
  %71 = load i8, i8* %28, !mcsema_real_eip !58
  store i8 %71, i8* %AL.59, !mcsema_real_eip !58
  %72 = add i64 %RBP_val.63, -32, !mcsema_real_eip !59
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !59
  %74 = load i64, i64* %73, !mcsema_real_eip !59
  store i64 %74, i64* %XCX, !mcsema_real_eip !59
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !60
  %76 = inttoptr i64 %74 to i8*, !mcsema_real_eip !60
  store i8 %71, i8* %76, !mcsema_real_eip !60
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !61
  %77 = add i64 %RBP_val.79, -24, !mcsema_real_eip !61
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !61
  %79 = load i64, i64* %78, !mcsema_real_eip !61
  store i64 %79, i64* %XAX, !mcsema_real_eip !61
  %80 = add i64 1, %79, !mcsema_real_eip !62
  %81 = xor i64 %80, %79, !mcsema_real_eip !62
  %82 = xor i64 %81, 1, !mcsema_real_eip !62
  %83 = and i64 %82, 16, !mcsema_real_eip !62
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !62
  store i1 %84, i1* %AF, !mcsema_real_eip !62
  %85 = lshr i64 %80, 63, !mcsema_real_eip !62
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !62
  store i1 %86, i1* %SF, !mcsema_real_eip !62
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !62
  store i1 %87, i1* %ZF, !mcsema_real_eip !62
  %88 = xor i64 %79, 1, !mcsema_real_eip !62
  %89 = xor i64 %88, -1, !mcsema_real_eip !62
  %90 = and i64 %89, %81, !mcsema_real_eip !62
  %91 = lshr i64 %90, 63, !mcsema_real_eip !62
  %92 = and i64 %91, 1, !mcsema_real_eip !62
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !62
  store i1 %93, i1* %OF, !mcsema_real_eip !62
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !62
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !62
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !62
  %97 = xor i1 %96, true, !mcsema_real_eip !62
  store i1 %97, i1* %PF, !mcsema_real_eip !62
  %98 = icmp ult i64 %80, %79, !mcsema_real_eip !62
  store i1 %98, i1* %CF, !mcsema_real_eip !62
  store i64 %80, i64* %XAX, !mcsema_real_eip !62
  store i64 %80, i64* %78, !mcsema_real_eip !63
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !64
  %99 = add i64 %RBP_val.83, -32, !mcsema_real_eip !64
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !64
  %101 = load i64, i64* %100, !mcsema_real_eip !64
  store i64 %101, i64* %XAX, !mcsema_real_eip !64
  %102 = add i64 1, %101, !mcsema_real_eip !65
  %103 = xor i64 %102, %101, !mcsema_real_eip !65
  %104 = xor i64 %103, 1, !mcsema_real_eip !65
  %105 = and i64 %104, 16, !mcsema_real_eip !65
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !65
  store i1 %106, i1* %AF, !mcsema_real_eip !65
  %107 = lshr i64 %102, 63, !mcsema_real_eip !65
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !65
  store i1 %108, i1* %SF, !mcsema_real_eip !65
  %109 = icmp eq i64 %102, 0, !mcsema_real_eip !65
  store i1 %109, i1* %ZF, !mcsema_real_eip !65
  %110 = xor i64 %101, 1, !mcsema_real_eip !65
  %111 = xor i64 %110, -1, !mcsema_real_eip !65
  %112 = and i64 %111, %103, !mcsema_real_eip !65
  %113 = lshr i64 %112, 63, !mcsema_real_eip !65
  %114 = and i64 %113, 1, !mcsema_real_eip !65
  %115 = trunc i64 %114 to i1, !mcsema_real_eip !65
  store i1 %115, i1* %OF, !mcsema_real_eip !65
  %116 = trunc i64 %102 to i8, !mcsema_real_eip !65
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !65
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !65
  %119 = xor i1 %118, true, !mcsema_real_eip !65
  store i1 %119, i1* %PF, !mcsema_real_eip !65
  %120 = icmp ult i64 %102, %101, !mcsema_real_eip !65
  store i1 %120, i1* %CF, !mcsema_real_eip !65
  store i64 %102, i64* %XAX, !mcsema_real_eip !65
  store i64 %102, i64* %100, !mcsema_real_eip !66
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !67
  %121 = add i64 %RBP_val.87, -24, !mcsema_real_eip !67
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !67
  %123 = load i64, i64* %122, !mcsema_real_eip !67
  store i64 %123, i64* %XAX, !mcsema_real_eip !67
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !68
  %125 = inttoptr i64 %123 to i8*, !mcsema_real_eip !68
  %126 = load i8, i8* %125, !mcsema_real_eip !68
  %CL.89 = bitcast i64* %XCX to i8*, !mcsema_real_eip !68
  store i8 %126, i8* %CL.89, !mcsema_real_eip !68
  %127 = add i64 %RBP_val.87, -33, !mcsema_real_eip !69
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !69
  %129 = inttoptr i64 %127 to i8*, !mcsema_real_eip !69
  store i8 %126, i8* %129, !mcsema_real_eip !69
  br label %block_0x125, !mcsema_real_eip !70
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !71
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !71
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !71
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !71
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !71
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !71
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !71
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !71
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !71
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !71
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !71
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !71
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !71
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !71
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !71
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !71
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !71
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !71
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !71
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !71
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !71
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !71
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !71
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !71
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !71
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !71
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !71
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !71
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !71
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !71
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !71
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !71
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !71
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !71
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !71
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !71
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !71
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !71
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !71
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !71
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !71
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !71
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !71
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !71
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !71
  br label %block_0x90, !mcsema_real_eip !71

block_0x90:                                       ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !71
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !71
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !71
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !71
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !71
  store i64 %1, i64* %XSP, !mcsema_real_eip !71
  store i64 %1, i64* %XBP, !mcsema_real_eip !72
  %3 = sub i64 %1, 32, !mcsema_real_eip !73
  %4 = xor i64 %3, %1, !mcsema_real_eip !73
  %5 = xor i64 %4, 32, !mcsema_real_eip !73
  %6 = and i64 %5, 16, !mcsema_real_eip !73
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !73
  store i1 %7, i1* %AF, !mcsema_real_eip !73
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !73
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !73
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !73
  %11 = xor i1 %10, true, !mcsema_real_eip !73
  store i1 %11, i1* %PF, !mcsema_real_eip !73
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !73
  store i1 %12, i1* %ZF, !mcsema_real_eip !73
  %13 = lshr i64 %3, 63, !mcsema_real_eip !73
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !73
  store i1 %14, i1* %SF, !mcsema_real_eip !73
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !73
  store i1 %15, i1* %CF, !mcsema_real_eip !73
  %16 = xor i64 %1, 32, !mcsema_real_eip !73
  %17 = and i64 %16, %4, !mcsema_real_eip !73
  %18 = lshr i64 %17, 63, !mcsema_real_eip !73
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !73
  store i1 %19, i1* %OF, !mcsema_real_eip !73
  store i64 %3, i64* %XSP, !mcsema_real_eip !73
  %20 = add i64 %1, -8, !mcsema_real_eip !74
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !74
  %RDI_val.98 = load i64, i64* %XDI, !mcsema_real_eip !74
  store i64 %RDI_val.98, i64* %21, !mcsema_real_eip !74
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !75
  %22 = add i64 %RBP_val.99, -12, !mcsema_real_eip !75
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !75
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !75
  store i32 1, i32* %24, !mcsema_real_eip !75
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !76
  %25 = add i64 %RBP_val.100, -8, !mcsema_real_eip !76
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !76
  %27 = load i64, i64* %26, !mcsema_real_eip !76
  store i64 %27, i64* %XDI, !mcsema_real_eip !76
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !77
  %28 = sub i64 %RSP_val.102, 8, !mcsema_real_eip !77
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !77
  store i64 -2415393069852865332, i64* %29, !mcsema_real_eip !77
  store i64 %28, i64* %XSP, !mcsema_real_eip !77
  %30 = call x86_64_sysvcc i64 @_strlen(i64 %27), !mcsema_real_eip !77
  store i64 %30, i64* %XAX, !mcsema_real_eip !77
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !78
  %31 = zext i32 %EAX_val.104 to i64, !mcsema_real_eip !78
  store i64 %31, i64* %XCX, !mcsema_real_eip !78
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !79
  %32 = add i64 %RBP_val.105, -16, !mcsema_real_eip !79
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !79
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !79
  %34 = inttoptr i64 %32 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.107, i32* %34, !mcsema_real_eip !79
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !80
  %35 = add i64 %RBP_val.108, -16, !mcsema_real_eip !80
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !80
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !80
  %38 = load i32, i32* %37, !mcsema_real_eip !80
  %39 = sub i32 %38, 1, !mcsema_real_eip !80
  %40 = xor i32 %39, %38, !mcsema_real_eip !80
  %41 = xor i32 %40, 1, !mcsema_real_eip !80
  %42 = and i32 %41, 16, !mcsema_real_eip !80
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !80
  store i1 %43, i1* %AF, !mcsema_real_eip !80
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !80
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !80
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !80
  %47 = xor i1 %46, true, !mcsema_real_eip !80
  store i1 %47, i1* %PF, !mcsema_real_eip !80
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !80
  store i1 %48, i1* %ZF, !mcsema_real_eip !80
  %49 = lshr i32 %39, 31, !mcsema_real_eip !80
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !80
  store i1 %50, i1* %SF, !mcsema_real_eip !80
  %51 = icmp ult i32 %38, 1, !mcsema_real_eip !80
  store i1 %51, i1* %CF, !mcsema_real_eip !80
  %52 = xor i32 %38, 1, !mcsema_real_eip !80
  %53 = and i32 %52, %40, !mcsema_real_eip !80
  %54 = lshr i32 %53, 31, !mcsema_real_eip !80
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !80
  store i1 %55, i1* %OF, !mcsema_real_eip !80
  %56 = icmp eq i1 %50, %55, !mcsema_real_eip !81
  %57 = icmp eq i1 %56, false, !mcsema_real_eip !81
  %58 = or i1 %48, %57, !mcsema_real_eip !81
  br i1 %58, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !81

block_0xbb:                                       ; preds = %block_0x90
  %59 = add i64 %RBP_val.108, -8, !mcsema_real_eip !82
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !82
  %61 = load i64, i64* %60, !mcsema_real_eip !82
  store i64 %61, i64* %XAX, !mcsema_real_eip !82
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !83
  %63 = inttoptr i64 %61 to i8*, !mcsema_real_eip !83
  %64 = load i8, i8* %63, !mcsema_real_eip !83
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !83
  store i8 %64, i8* %CL.115, !mcsema_real_eip !83
  %65 = add i64 %RBP_val.108, -17, !mcsema_real_eip !84
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !84
  %67 = inttoptr i64 %65 to i8*, !mcsema_real_eip !84
  store i8 %64, i8* %67, !mcsema_real_eip !84
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !85
  %68 = add i64 %RBP_val.119, -8, !mcsema_real_eip !85
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !85
  %70 = load i64, i64* %69, !mcsema_real_eip !85
  store i64 %70, i64* %XAX, !mcsema_real_eip !85
  %71 = add i64 %RBP_val.119, -16, !mcsema_real_eip !86
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !86
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !86
  %74 = load i32, i32* %73, !mcsema_real_eip !86
  %75 = zext i32 %74 to i64, !mcsema_real_eip !86
  store i64 %75, i64* %XDX, !mcsema_real_eip !86
  %EDX.121 = bitcast i64* %XDX to i32*, !mcsema_real_eip !87
  %EDX_val.122 = load i32, i32* %EDX.121, !mcsema_real_eip !87
  %76 = sub i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %77 = xor i32 %76, %EDX_val.122, !mcsema_real_eip !87
  %78 = xor i32 %77, 1, !mcsema_real_eip !87
  %79 = and i32 %78, 16, !mcsema_real_eip !87
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !87
  store i1 %80, i1* %AF, !mcsema_real_eip !87
  %81 = trunc i32 %76 to i8, !mcsema_real_eip !87
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !87
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !87
  %84 = xor i1 %83, true, !mcsema_real_eip !87
  store i1 %84, i1* %PF, !mcsema_real_eip !87
  %85 = icmp eq i32 %76, 0, !mcsema_real_eip !87
  store i1 %85, i1* %ZF, !mcsema_real_eip !87
  %86 = lshr i32 %76, 31, !mcsema_real_eip !87
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !87
  store i1 %87, i1* %SF, !mcsema_real_eip !87
  %88 = icmp ult i32 %EDX_val.122, 1, !mcsema_real_eip !87
  store i1 %88, i1* %CF, !mcsema_real_eip !87
  %89 = xor i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %90 = and i32 %89, %77, !mcsema_real_eip !87
  %91 = lshr i32 %90, 31, !mcsema_real_eip !87
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !87
  store i1 %92, i1* %OF, !mcsema_real_eip !87
  %93 = zext i32 %76 to i64, !mcsema_real_eip !87
  store i64 %93, i64* %XDX, !mcsema_real_eip !87
  %EDX_val.124 = load i32, i32* %EDX.121, !mcsema_real_eip !88
  %94 = sext i32 %EDX_val.124 to i64, !mcsema_real_eip !88
  store i64 %94, i64* %XSI, !mcsema_real_eip !88
  %95 = add i64 %70, %94, !mcsema_real_eip !89
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !89
  %97 = inttoptr i64 %95 to i8*, !mcsema_real_eip !89
  %98 = load i8, i8* %97, !mcsema_real_eip !89
  store i8 %98, i8* %CL.115, !mcsema_real_eip !89
  %99 = add i64 %RBP_val.119, -18, !mcsema_real_eip !90
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !90
  %101 = inttoptr i64 %99 to i8*, !mcsema_real_eip !90
  store i8 %98, i8* %101, !mcsema_real_eip !90
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !91
  %102 = add i64 %RBP_val.131, -17, !mcsema_real_eip !91
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !91
  %104 = inttoptr i64 %102 to i8*, !mcsema_real_eip !91
  %105 = load i8, i8* %104, !mcsema_real_eip !91
  %106 = sext i8 %105 to i32, !mcsema_real_eip !91
  %107 = zext i32 %106 to i64, !mcsema_real_eip !91
  store i64 %107, i64* %XDX, !mcsema_real_eip !91
  %108 = add i64 %RBP_val.131, -18, !mcsema_real_eip !92
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !92
  %110 = inttoptr i64 %108 to i8*, !mcsema_real_eip !92
  %111 = load i8, i8* %110, !mcsema_real_eip !92
  %112 = sext i8 %111 to i32, !mcsema_real_eip !92
  %113 = zext i32 %112 to i64, !mcsema_real_eip !92
  store i64 %113, i64* %XDI, !mcsema_real_eip !92
  %EDX_val.134 = load i32, i32* %EDX.121, !mcsema_real_eip !93
  %EDI.135 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.136 = load i32, i32* %EDI.135, !mcsema_real_eip !93
  %114 = sub i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %115 = xor i32 %114, %EDX_val.134, !mcsema_real_eip !93
  %116 = xor i32 %115, %EDI_val.136, !mcsema_real_eip !93
  %117 = and i32 %116, 16, !mcsema_real_eip !93
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !93
  store i1 %118, i1* %AF, !mcsema_real_eip !93
  %119 = trunc i32 %114 to i8, !mcsema_real_eip !93
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !93
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !93
  %122 = xor i1 %121, true, !mcsema_real_eip !93
  store i1 %122, i1* %PF, !mcsema_real_eip !93
  %123 = icmp eq i32 %114, 0, !mcsema_real_eip !93
  store i1 %123, i1* %ZF, !mcsema_real_eip !93
  %124 = lshr i32 %114, 31, !mcsema_real_eip !93
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !93
  store i1 %125, i1* %SF, !mcsema_real_eip !93
  %126 = icmp ult i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  store i1 %126, i1* %CF, !mcsema_real_eip !93
  %127 = xor i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %128 = and i32 %127, %115, !mcsema_real_eip !93
  %129 = lshr i32 %128, 31, !mcsema_real_eip !93
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !93
  store i1 %130, i1* %OF, !mcsema_real_eip !93
  %131 = icmp eq i1 %123, false, !mcsema_real_eip !94
  br i1 %131, label %block_0xee, label %block_0xe7, !mcsema_real_eip !94

block_0xf3:                                       ; preds = %block_0xee, %block_0x90
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !95
  %132 = add i64 %RBP_val.109, -12, !mcsema_real_eip !95
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !95
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !95
  %135 = load i32, i32* %134, !mcsema_real_eip !95
  %136 = zext i32 %135 to i64, !mcsema_real_eip !95
  store i64 %136, i64* %XAX, !mcsema_real_eip !95
  %RSP_val.110 = load i64, i64* %XSP, !mcsema_real_eip !96
  %137 = add i64 32, %RSP_val.110, !mcsema_real_eip !96
  %138 = xor i64 %137, %RSP_val.110, !mcsema_real_eip !96
  %139 = xor i64 %138, 32, !mcsema_real_eip !96
  %140 = and i64 %139, 16, !mcsema_real_eip !96
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !96
  store i1 %141, i1* %AF, !mcsema_real_eip !96
  %142 = lshr i64 %137, 63, !mcsema_real_eip !96
  %143 = trunc i64 %142 to i1, !mcsema_real_eip !96
  store i1 %143, i1* %SF, !mcsema_real_eip !96
  %144 = icmp eq i64 %137, 0, !mcsema_real_eip !96
  store i1 %144, i1* %ZF, !mcsema_real_eip !96
  %145 = xor i64 %RSP_val.110, 32, !mcsema_real_eip !96
  %146 = xor i64 %145, -1, !mcsema_real_eip !96
  %147 = and i64 %146, %138, !mcsema_real_eip !96
  %148 = lshr i64 %147, 63, !mcsema_real_eip !96
  %149 = and i64 %148, 1, !mcsema_real_eip !96
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !96
  store i1 %150, i1* %OF, !mcsema_real_eip !96
  %151 = trunc i64 %137 to i8, !mcsema_real_eip !96
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !96
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !96
  %154 = xor i1 %153, true, !mcsema_real_eip !96
  store i1 %154, i1* %PF, !mcsema_real_eip !96
  %155 = icmp ult i64 %137, %RSP_val.110, !mcsema_real_eip !96
  store i1 %155, i1* %CF, !mcsema_real_eip !96
  store i64 %137, i64* %XSP, !mcsema_real_eip !96
  %156 = inttoptr i64 %137 to i64*, !mcsema_real_eip !97
  %157 = load i64, i64* %156, !mcsema_real_eip !97
  store i64 %157, i64* %XBP, !mcsema_real_eip !97
  %158 = add i64 %137, 8, !mcsema_real_eip !97
  store i64 %158, i64* %XSP, !mcsema_real_eip !97
  %159 = add i64 %158, 8, !mcsema_real_eip !98
  %160 = inttoptr i64 %158 to i64*, !mcsema_real_eip !98
  %161 = load i64, i64* %160, !mcsema_real_eip !98
  store i64 %161, i64* %XIP, !mcsema_real_eip !98
  store i64 %159, i64* %XSP, !mcsema_real_eip !98
  ret void, !mcsema_real_eip !98

block_0xe7:                                       ; preds = %block_0xbb
  %162 = add i64 %RBP_val.131, -12, !mcsema_real_eip !99
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !99
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !99
  store i32 0, i32* %164, !mcsema_real_eip !99
  br label %block_0xee

block_0xee:                                       ; preds = %block_0xe7, %block_0xbb
  br label %block_0xf3, !mcsema_real_eip !100
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

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
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 39}
!13 = !{i64 42}
!14 = !{i64 45}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 76}
!22 = !{i64 79}
!23 = !{i64 117}
!24 = !{i64 121}
!25 = !{i64 125}
!26 = !{i64 129}
!27 = !{i64 130}
!28 = !{i64 85}
!29 = !{i64 89}
!30 = !{i64 93}
!31 = !{i64 103}
!32 = !{i64 98}
!33 = !{i64 106}
!34 = !{i64 109}
!35 = !{i64 112}
!36 = !{i64 256}
!37 = !{i64 257}
!38 = !{i64 260}
!39 = !{i64 264}
!40 = !{i64 268}
!41 = !{i64 272}
!42 = !{i64 276}
!43 = !{i64 280}
!44 = !{i64 284}
!45 = !{i64 288}
!46 = !{i64 290}
!47 = !{i64 293}
!48 = !{i64 297}
!49 = !{i64 300}
!50 = !{i64 306}
!51 = !{i64 310}
!52 = !{i64 313}
!53 = !{i64 378}
!54 = !{i64 379}
!55 = !{i64 319}
!56 = !{i64 323}
!57 = !{i64 326}
!58 = !{i64 331}
!59 = !{i64 334}
!60 = !{i64 338}
!61 = !{i64 340}
!62 = !{i64 344}
!63 = !{i64 348}
!64 = !{i64 352}
!65 = !{i64 356}
!66 = !{i64 360}
!67 = !{i64 364}
!68 = !{i64 368}
!69 = !{i64 370}
!70 = !{i64 373}
!71 = !{i64 144}
!72 = !{i64 145}
!73 = !{i64 148}
!74 = !{i64 152}
!75 = !{i64 156}
!76 = !{i64 163}
!77 = !{i64 167}
!78 = !{i64 172}
!79 = !{i64 174}
!80 = !{i64 177}
!81 = !{i64 181}
!82 = !{i64 187}
!83 = !{i64 191}
!84 = !{i64 193}
!85 = !{i64 196}
!86 = !{i64 200}
!87 = !{i64 203}
!88 = !{i64 206}
!89 = !{i64 209}
!90 = !{i64 212}
!91 = !{i64 215}
!92 = !{i64 219}
!93 = !{i64 223}
!94 = !{i64 225}
!95 = !{i64 243}
!96 = !{i64 246}
!97 = !{i64 250}
!98 = !{i64 251}
!99 = !{i64 231}
!100 = !{i64 238}
