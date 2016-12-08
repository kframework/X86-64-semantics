; ModuleID = 'Output/test_13_1.clang.trans.opt.bc'
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
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %17, align 4, !mcsema_real_eip !5
  br label %block_0x1f, !mcsema_real_eip !6

block_0x1f:                                       ; preds = %block_0x29, %entry
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !6
  %21 = add i32 %20, -2
  %22 = xor i32 %21, %20, !mcsema_real_eip !6
  %23 = and i32 %22, 16, !mcsema_real_eip !6
  %24 = icmp ne i32 %23, 0, !mcsema_real_eip !6
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !6
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !6
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !6
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !6
  %29 = icmp eq i32 %21, 0, !mcsema_real_eip !6
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !6
  %30 = icmp slt i32 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !6
  %31 = icmp ult i32 %20, 2, !mcsema_real_eip !6
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !6
  %32 = and i32 %22, %20, !mcsema_real_eip !6
  %33 = icmp slt i32 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !6
  %tmp = xor i1 %30, %33
  %RSP_val.6 = load i64, i64* %XSP, align 8
  br i1 %tmp, label %block_0x29, label %block_0x3c, !mcsema_real_eip !7

block_0x29:                                       ; preds = %block_0x1f
  %34 = add i64 %RSP_val.6, -8
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %35, align 8, !mcsema_real_eip !8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !8
  tail call x86_64_sysvcc void @checkFn(%RegState* nonnull %0), !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %36 = add i64 %RBP_val.10, -4, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !9
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !9
  %39 = add i32 %38, 1, !mcsema_real_eip !10
  %40 = xor i32 %39, %38, !mcsema_real_eip !10
  %41 = and i32 %40, 16, !mcsema_real_eip !10
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !10
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !10
  %43 = icmp slt i32 %39, 0
  store i1 %43, i1* %SF, align 1, !mcsema_real_eip !10
  %44 = icmp eq i32 %39, 0, !mcsema_real_eip !10
  store i1 %44, i1* %ZF, align 1, !mcsema_real_eip !10
  %45 = xor i32 %38, -2147483648, !mcsema_real_eip !10
  %46 = and i32 %40, %45, !mcsema_real_eip !10
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !10
  %48 = trunc i32 %39 to i8, !mcsema_real_eip !10
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !10
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !10
  %52 = icmp eq i32 %38, -1
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !10
  %53 = zext i32 %39 to i64, !mcsema_real_eip !10
  store i64 %53, i64* %XAX, align 8, !mcsema_real_eip !10
  store i32 %39, i32* %37, align 4, !mcsema_real_eip !11
  br label %block_0x1f, !mcsema_real_eip !12

block_0x3c:                                       ; preds = %block_0x1f
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %54 = add i64 %RSP_val.6, 16, !mcsema_real_eip !13
  %55 = xor i64 %54, %RSP_val.6, !mcsema_real_eip !13
  %56 = and i64 %55, 16
  %57 = icmp eq i64 %56, 0
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !13
  %58 = icmp slt i64 %54, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !13
  %59 = icmp eq i64 %54, 0, !mcsema_real_eip !13
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !13
  %60 = xor i64 %RSP_val.6, -9223372036854775808, !mcsema_real_eip !13
  %61 = and i64 %55, %60, !mcsema_real_eip !13
  %62 = icmp slt i64 %61, 0
  store i1 %62, i1* %OF, align 1, !mcsema_real_eip !13
  %63 = trunc i64 %54 to i8, !mcsema_real_eip !13
  %64 = tail call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !13
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  store i1 %66, i1* %PF, align 1, !mcsema_real_eip !13
  %67 = icmp ugt i64 %RSP_val.6, -17
  store i1 %67, i1* %CF, align 1, !mcsema_real_eip !13
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !13
  %68 = inttoptr i64 %54 to i64*, !mcsema_real_eip !14
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !14
  store i64 %69, i64* %XBP, align 8, !mcsema_real_eip !14
  %70 = add i64 %RSP_val.6, 24, !mcsema_real_eip !14
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !14
  %71 = add i64 %RSP_val.6, 32, !mcsema_real_eip !15
  %72 = inttoptr i64 %70 to i64*, !mcsema_real_eip !15
  %73 = load i64, i64* %72, align 8, !mcsema_real_eip !15
  store i64 %73, i64* %XIP, align 8, !mcsema_real_eip !15
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: noinline norecurse nounwind
define internal x86_64_sysvcc void @checkFn(%RegState* nocapture) unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !16
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !16
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !16
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %RSP_val.17 = load i64, i64* %XSP, align 8, !mcsema_real_eip !16
  %1 = add i64 %RSP_val.17, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !16
  store i64 %RBP_val.16, i64* %2, align 8, !mcsema_real_eip !16
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !16
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !17
  %3 = load i64, i64* %2, align 8, !mcsema_real_eip !18
  store i64 %3, i64* %XBP, align 8, !mcsema_real_eip !18
  store i64 %RSP_val.17, i64* %XSP, align 8, !mcsema_real_eip !18
  %4 = add i64 %RSP_val.17, 8, !mcsema_real_eip !19
  %5 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !19
  %6 = load i64, i64* %5, align 8, !mcsema_real_eip !19
  store i64 %6, i64* %XIP, align 8, !mcsema_real_eip !19
  store i64 %4, i64* %XSP, align 8, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
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
!5 = !{i64 24}
!6 = !{i64 31}
!7 = !{i64 35}
!8 = !{i64 41}
!9 = !{i64 46}
!10 = !{i64 49}
!11 = !{i64 52}
!12 = !{i64 55}
!13 = !{i64 60}
!14 = !{i64 64}
!15 = !{i64 65}
!16 = !{i64 0}
!17 = !{i64 1}
!18 = !{i64 4}
!19 = !{i64 5}
