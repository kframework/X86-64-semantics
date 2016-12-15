; ModuleID = 'Output/test_8.clang.opt.bc'
source_filename = "Output/test_8.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

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
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !2
  %1 = add i32 1, %EAX_val.1, !mcsema_real_eip !2
  %2 = xor i32 %1, %EAX_val.1, !mcsema_real_eip !2
  %3 = xor i32 %2, 1, !mcsema_real_eip !2
  %4 = and i32 %3, 16, !mcsema_real_eip !2
  %5 = icmp ne i32 %4, 0, !mcsema_real_eip !2
  store i1 %5, i1* %AF, !mcsema_real_eip !2
  %6 = lshr i32 %1, 31, !mcsema_real_eip !2
  %7 = trunc i32 %6 to i1, !mcsema_real_eip !2
  store i1 %7, i1* %SF, !mcsema_real_eip !2
  %8 = icmp eq i32 %1, 0, !mcsema_real_eip !2
  store i1 %8, i1* %ZF, !mcsema_real_eip !2
  %9 = xor i32 %EAX_val.1, 1, !mcsema_real_eip !2
  %10 = xor i32 %9, -1, !mcsema_real_eip !2
  %11 = and i32 %10, %2, !mcsema_real_eip !2
  %12 = lshr i32 %11, 31, !mcsema_real_eip !2
  %13 = and i32 %12, 1, !mcsema_real_eip !2
  %14 = trunc i32 %13 to i1, !mcsema_real_eip !2
  store i1 %14, i1* %OF, !mcsema_real_eip !2
  %15 = trunc i32 %1 to i8, !mcsema_real_eip !2
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !2
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !2
  %18 = xor i1 %17, true, !mcsema_real_eip !2
  store i1 %18, i1* %PF, !mcsema_real_eip !2
  %19 = icmp ult i32 %1, %EAX_val.1, !mcsema_real_eip !2
  store i1 %19, i1* %CF, !mcsema_real_eip !2
  %20 = zext i32 %1 to i64, !mcsema_real_eip !2
  store i64 %20, i64* %XAX, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  %21 = add i64 %RSP_val.2, 8, !mcsema_real_eip !3
  %22 = inttoptr i64 %RSP_val.2 to i64*, !mcsema_real_eip !3
  %23 = load i64, i64* %22, !mcsema_real_eip !3
  store i64 %23, i64* %XIP, !mcsema_real_eip !3
  store i64 %21, i64* %XSP, !mcsema_real_eip !3
  ret void, !mcsema_real_eip !3
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 4}
