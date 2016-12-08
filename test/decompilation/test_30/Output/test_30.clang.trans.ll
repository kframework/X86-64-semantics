; ModuleID = 'Output/test_30.clang.trans.bc'
source_filename = "Output/test_30.clang.bc"
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
module asm "  .globl fprintf;"
module asm "  .globl _fprintf;"
module asm "  .type _fprintf,@function"
module asm "_fprintf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq fprintf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _fprintf,0b-_fprintf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl print_it;"
module asm "  .type print_it,@function"
module asm "print_it:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size print_it,0b-print_it;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@stderr = external global [8 x i8]
@data_0x36 = internal constant %0 <{ [4 x i8] c"%s\0A\00" }>, align 64
@data_0x40 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, !mcsema_real_eip !5
  %20 = add i64 %1, -8, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !6
  %22 = load i64, i64* bitcast ([8 x i8]* @stderr to i64*), !mcsema_real_eip !7
  store i64 %22, i64* %XDI, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %23 = add i64 %RBP_val.6, -8, !mcsema_real_eip !8
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !8
  %25 = load i64, i64* %24, !mcsema_real_eip !8
  store i64 %25, i64* %XDX, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, !mcsema_real_eip !9
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !10
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !10
  %26 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !10
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %27, !mcsema_real_eip !10
  store i64 %26, i64* %XSP, !mcsema_real_eip !10
  %28 = call x86_64_sysvcc i64 @_fprintf(i64 %22, i64 %RSI_val.9, i64 %25), !mcsema_real_eip !10
  store i64 %28, i64* %XAX, !mcsema_real_eip !10
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  store i1 false, i1* %SF, !mcsema_real_eip !11
  store i1 true, i1* %ZF, !mcsema_real_eip !11
  store i1 true, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  store i64 0, i64* %XCX, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %29 = add i64 %RBP_val.16, -12, !mcsema_real_eip !12
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !12
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !12
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.18, i32* %31, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, !mcsema_real_eip !13
  %32 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %32, i64* %XAX, !mcsema_real_eip !13
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %33 = add i64 16, %RSP_val.21, !mcsema_real_eip !14
  %34 = xor i64 %33, %RSP_val.21, !mcsema_real_eip !14
  %35 = xor i64 %34, 16, !mcsema_real_eip !14
  %36 = and i64 %35, 16, !mcsema_real_eip !14
  %37 = icmp ne i64 %36, 0, !mcsema_real_eip !14
  store i1 %37, i1* %AF, !mcsema_real_eip !14
  %38 = lshr i64 %33, 63, !mcsema_real_eip !14
  %39 = trunc i64 %38 to i1, !mcsema_real_eip !14
  store i1 %39, i1* %SF, !mcsema_real_eip !14
  %40 = icmp eq i64 %33, 0, !mcsema_real_eip !14
  store i1 %40, i1* %ZF, !mcsema_real_eip !14
  %41 = xor i64 %RSP_val.21, 16, !mcsema_real_eip !14
  %42 = xor i64 %41, -1, !mcsema_real_eip !14
  %43 = and i64 %42, %34, !mcsema_real_eip !14
  %44 = lshr i64 %43, 63, !mcsema_real_eip !14
  %45 = and i64 %44, 1, !mcsema_real_eip !14
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !14
  store i1 %46, i1* %OF, !mcsema_real_eip !14
  %47 = trunc i64 %33 to i8, !mcsema_real_eip !14
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !14
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !14
  %50 = xor i1 %49, true, !mcsema_real_eip !14
  store i1 %50, i1* %PF, !mcsema_real_eip !14
  %51 = icmp ult i64 %33, %RSP_val.21, !mcsema_real_eip !14
  store i1 %51, i1* %CF, !mcsema_real_eip !14
  store i64 %33, i64* %XSP, !mcsema_real_eip !14
  %52 = inttoptr i64 %33 to i64*, !mcsema_real_eip !15
  %53 = load i64, i64* %52, !mcsema_real_eip !15
  store i64 %53, i64* %XBP, !mcsema_real_eip !15
  %54 = add i64 %33, 8, !mcsema_real_eip !15
  store i64 %54, i64* %XSP, !mcsema_real_eip !15
  %55 = add i64 %54, 8, !mcsema_real_eip !16
  %56 = inttoptr i64 %54 to i64*, !mcsema_real_eip !16
  %57 = load i64, i64* %56, !mcsema_real_eip !16
  store i64 %57, i64* %XIP, !mcsema_real_eip !16
  store i64 %55, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

declare x86_64_sysvcc i64 @fprintf(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_fprintf(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @print_it() #2

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
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 30}
!9 = !{i64 34}
!10 = !{i64 36}
!11 = !{i64 41}
!12 = !{i64 43}
!13 = !{i64 46}
!14 = !{i64 48}
!15 = !{i64 52}
!16 = !{i64 53}
