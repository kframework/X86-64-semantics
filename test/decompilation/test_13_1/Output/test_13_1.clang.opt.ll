; ModuleID = 'Output/test_13_1.clang.opt.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_10;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [80 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x30 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\00\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\00\1D\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = load i64, i64* %2, !mcsema_real_eip !4
  store i64 %3, i64* %XBP, !mcsema_real_eip !4
  store i64 %RSP_val.1, i64* %XSP, !mcsema_real_eip !4
  %4 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %5 = inttoptr i64 %RSP_val.1 to i64*, !mcsema_real_eip !5
  %6 = load i64, i64* %5, !mcsema_real_eip !5
  store i64 %6, i64* %XIP, !mcsema_real_eip !5
  store i64 %4, i64* %XSP, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  br label %block_0x10, !mcsema_real_eip !6

block_0x10:                                       ; preds = %entry
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !6
  %1 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !6
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !6
  store i64 %RBP_val.5, i64* %2, !mcsema_real_eip !6
  store i64 %1, i64* %XSP, !mcsema_real_eip !6
  store i64 %1, i64* %XBP, !mcsema_real_eip !7
  %3 = sub i64 %1, 16, !mcsema_real_eip !8
  %4 = xor i64 %3, %1, !mcsema_real_eip !8
  %5 = xor i64 %4, 16, !mcsema_real_eip !8
  %6 = and i64 %5, 16, !mcsema_real_eip !8
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !8
  store i1 %7, i1* %AF, !mcsema_real_eip !8
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !8
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !8
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !8
  %11 = xor i1 %10, true, !mcsema_real_eip !8
  store i1 %11, i1* %PF, !mcsema_real_eip !8
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !8
  store i1 %12, i1* %ZF, !mcsema_real_eip !8
  %13 = lshr i64 %3, 63, !mcsema_real_eip !8
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !8
  store i1 %14, i1* %SF, !mcsema_real_eip !8
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !8
  store i1 %15, i1* %CF, !mcsema_real_eip !8
  %16 = xor i64 %1, 16, !mcsema_real_eip !8
  %17 = and i64 %16, %4, !mcsema_real_eip !8
  %18 = lshr i64 %17, 63, !mcsema_real_eip !8
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !8
  store i1 %19, i1* %OF, !mcsema_real_eip !8
  store i64 %3, i64* %XSP, !mcsema_real_eip !8
  %20 = add i64 %1, -4, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !9
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 2, i32* %22, !mcsema_real_eip !9
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !10
  %23 = sub i64 %RSP_val.10, 8, !mcsema_real_eip !10
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !10
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !10
  store i64 %23, i64* %XSP, !mcsema_real_eip !10
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !10
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !11
  %25 = add i64 %RBP_val.11, -4, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !11
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !11
  %28 = load i32, i32* %27, !mcsema_real_eip !11
  %29 = zext i32 %28 to i64, !mcsema_real_eip !11
  store i64 %29, i64* %XAX, !mcsema_real_eip !11
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !12
  %30 = add i64 16, %RSP_val.12, !mcsema_real_eip !12
  %31 = xor i64 %30, %RSP_val.12, !mcsema_real_eip !12
  %32 = xor i64 %31, 16, !mcsema_real_eip !12
  %33 = and i64 %32, 16, !mcsema_real_eip !12
  %34 = icmp ne i64 %33, 0, !mcsema_real_eip !12
  store i1 %34, i1* %AF, !mcsema_real_eip !12
  %35 = lshr i64 %30, 63, !mcsema_real_eip !12
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !12
  store i1 %36, i1* %SF, !mcsema_real_eip !12
  %37 = icmp eq i64 %30, 0, !mcsema_real_eip !12
  store i1 %37, i1* %ZF, !mcsema_real_eip !12
  %38 = xor i64 %RSP_val.12, 16, !mcsema_real_eip !12
  %39 = xor i64 %38, -1, !mcsema_real_eip !12
  %40 = and i64 %39, %31, !mcsema_real_eip !12
  %41 = lshr i64 %40, 63, !mcsema_real_eip !12
  %42 = and i64 %41, 1, !mcsema_real_eip !12
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !12
  store i1 %43, i1* %OF, !mcsema_real_eip !12
  %44 = trunc i64 %30 to i8, !mcsema_real_eip !12
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !12
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !12
  %47 = xor i1 %46, true, !mcsema_real_eip !12
  store i1 %47, i1* %PF, !mcsema_real_eip !12
  %48 = icmp ult i64 %30, %RSP_val.12, !mcsema_real_eip !12
  store i1 %48, i1* %CF, !mcsema_real_eip !12
  store i64 %30, i64* %XSP, !mcsema_real_eip !12
  %49 = inttoptr i64 %30 to i64*, !mcsema_real_eip !13
  %50 = load i64, i64* %49, !mcsema_real_eip !13
  store i64 %50, i64* %XBP, !mcsema_real_eip !13
  %51 = add i64 %30, 8, !mcsema_real_eip !13
  store i64 %51, i64* %XSP, !mcsema_real_eip !13
  %52 = add i64 %51, 8, !mcsema_real_eip !14
  %53 = inttoptr i64 %51 to i64*, !mcsema_real_eip !14
  %54 = load i64, i64* %53, !mcsema_real_eip !14
  store i64 %54, i64* %XIP, !mcsema_real_eip !14
  store i64 %52, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @doWork() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 5}
!6 = !{i64 16}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 31}
!11 = !{i64 36}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
