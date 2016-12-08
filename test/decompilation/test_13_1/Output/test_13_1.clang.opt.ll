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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_10(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !4
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !4
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !4
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  br label %block_0x1f, !mcsema_real_eip !5

block_0x1f:                                       ; preds = %block_0x29, %entry
  %.sink.in.in = phi i64 [ %RBP_val.10, %block_0x29 ], [ %1, %entry ]
  %EAX_val.15.sink = phi i32 [ %38, %block_0x29 ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -4
  %16 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.15.sink, i32* %16, align 4
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %17 = add i64 %RBP_val.5, -4, !mcsema_real_eip !5
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !5
  %19 = load i32, i32* %18, align 4, !mcsema_real_eip !5
  %20 = add i32 %19, -2
  %21 = xor i32 %20, %19, !mcsema_real_eip !5
  %22 = and i32 %21, 16, !mcsema_real_eip !5
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !5
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !5
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !5
  %25 = tail call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !5
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !5
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !5
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !5
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !5
  %30 = icmp ult i32 %19, 2, !mcsema_real_eip !5
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !5
  %31 = and i32 %21, %19, !mcsema_real_eip !5
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !5
  %tmp = xor i1 %29, %32
  %RSP_val.6 = load i64, i64* %XSP, align 8
  br i1 %tmp, label %block_0x29, label %block_0x3c, !mcsema_real_eip !6

block_0x29:                                       ; preds = %block_0x1f
  %33 = add i64 %RSP_val.6, -8
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %34, align 8, !mcsema_real_eip !7
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !7
  tail call x86_64_sysvcc void @checkFn(%RegState* nonnull %0), !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %35 = add i64 %RBP_val.10, -4, !mcsema_real_eip !8
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !8
  %37 = load i32, i32* %36, align 4, !mcsema_real_eip !8
  %38 = add i32 %37, 1, !mcsema_real_eip !9
  %39 = xor i32 %38, %37, !mcsema_real_eip !9
  %40 = and i32 %39, 16, !mcsema_real_eip !9
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !9
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !9
  %42 = icmp slt i32 %38, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !9
  %43 = icmp eq i32 %38, 0, !mcsema_real_eip !9
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !9
  %44 = xor i32 %37, -2147483648, !mcsema_real_eip !9
  %45 = and i32 %39, %44, !mcsema_real_eip !9
  %46 = icmp slt i32 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !9
  %47 = trunc i32 %38 to i8, !mcsema_real_eip !9
  %48 = tail call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !9
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !9
  %51 = icmp eq i32 %37, -1
  store i1 %51, i1* %CF, align 1, !mcsema_real_eip !9
  %52 = zext i32 %38 to i64, !mcsema_real_eip !9
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !9
  br label %block_0x1f, !mcsema_real_eip !10

block_0x3c:                                       ; preds = %block_0x1f
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %53 = add i64 %RSP_val.6, 16, !mcsema_real_eip !11
  %54 = xor i64 %53, %RSP_val.6, !mcsema_real_eip !11
  %55 = and i64 %54, 16
  %56 = icmp eq i64 %55, 0
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !11
  %57 = icmp slt i64 %53, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !11
  %58 = icmp eq i64 %53, 0, !mcsema_real_eip !11
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !11
  %59 = xor i64 %RSP_val.6, -9223372036854775808, !mcsema_real_eip !11
  %60 = and i64 %54, %59, !mcsema_real_eip !11
  %61 = icmp slt i64 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !11
  %62 = trunc i64 %53 to i8, !mcsema_real_eip !11
  %63 = tail call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !11
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !11
  %66 = icmp ugt i64 %RSP_val.6, -17
  store i1 %66, i1* %CF, align 1, !mcsema_real_eip !11
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !11
  %67 = inttoptr i64 %53 to i64*, !mcsema_real_eip !12
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !12
  store i64 %68, i64* %XBP, align 8, !mcsema_real_eip !12
  %69 = add i64 %RSP_val.6, 24, !mcsema_real_eip !12
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !12
  %70 = add i64 %RSP_val.6, 32, !mcsema_real_eip !13
  %71 = inttoptr i64 %69 to i64*, !mcsema_real_eip !13
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !13
  store i64 %72, i64* %XIP, align 8, !mcsema_real_eip !13
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: noinline norecurse nounwind
define internal x86_64_sysvcc void @checkFn(%RegState* nocapture) unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !14
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !14
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !14
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %RSP_val.17 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %1 = add i64 %RSP_val.17, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !14
  store i64 %RBP_val.16, i64* %2, align 8, !mcsema_real_eip !14
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !14
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !15
  %3 = load i64, i64* %2, align 8, !mcsema_real_eip !16
  store i64 %3, i64* %XBP, align 8, !mcsema_real_eip !16
  store i64 %RSP_val.17, i64* %XSP, align 8, !mcsema_real_eip !16
  %4 = add i64 %RSP_val.17, 8, !mcsema_real_eip !17
  %5 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !17
  %6 = load i64, i64* %5, align 8, !mcsema_real_eip !17
  store i64 %6, i64* %XIP, align 8, !mcsema_real_eip !17
  store i64 %4, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

attributes #0 = { noinline nounwind }
attributes #1 = { noinline norecurse nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 17}
!4 = !{i64 20}
!5 = !{i64 31}
!6 = !{i64 35}
!7 = !{i64 41}
!8 = !{i64 46}
!9 = !{i64 49}
!10 = !{i64 55}
!11 = !{i64 60}
!12 = !{i64 64}
!13 = !{i64 65}
!14 = !{i64 0}
!15 = !{i64 1}
!16 = !{i64 4}
!17 = !{i64 5}
