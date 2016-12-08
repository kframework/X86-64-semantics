; ModuleID = 'Output/test_10.clang.trans.opt.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
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
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -16, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %4, align 8, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, -16, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %RSI_val.6 = load i64, i64* %XSI, align 8, !mcsema_real_eip !5
  store i64 %RSI_val.6, i64* %6, align 8, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  %9 = load i64, i64* %8, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %XSI, align 8, !mcsema_real_eip !6
  %10 = add i64 %RBP_val.7, -24, !mcsema_real_eip !7
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !7
  store i64 %9, i64* %11, align 8, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %12 = add i64 %RBP_val.10, -16, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !8
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !8
  store i64 %14, i64* %XSI, align 8, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.10, -32, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !9
  store i64 %14, i64* %16, align 8, !mcsema_real_eip !9
  %RBP_val.13 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %17 = add i64 %RBP_val.13, -24, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !10
  %19 = load i64, i64* %18, align 8, !mcsema_real_eip !10
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !10
  %20 = inttoptr i64 %19 to i8*, !mcsema_real_eip !11
  %21 = load i8, i8* %20, align 1, !mcsema_real_eip !11
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 %21, i8* %AL.15, align 1, !mcsema_real_eip !11
  %CL.45 = bitcast i64* %XCX to i8*
  br label %block_0x25, !mcsema_real_eip !12

block_0x25:                                       ; preds = %block_0x54, %entry
  %.sink5.in = phi i64 [ %RBP_val.43, %block_0x54 ], [ %RBP_val.13, %entry ]
  %.sink3 = phi i8 [ %100, %block_0x54 ], [ %21, %entry ]
  %.sink5 = add i64 %.sink5.in, -33
  %22 = inttoptr i64 %.sink5 to i8*
  store i8 %.sink3, i8* %22, align 1
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %23 = add i64 %RBP_val.19, -33, !mcsema_real_eip !12
  %24 = inttoptr i64 %23 to i8*, !mcsema_real_eip !12
  %25 = load i8, i8* %24, align 1, !mcsema_real_eip !12
  %26 = sext i8 %25 to i64
  %27 = and i64 %26, 4294967295
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !12
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !13
  %28 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !13
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  store i1 %30, i1* %PF, align 1, !mcsema_real_eip !13
  %31 = icmp eq i8 %25, 0
  store i1 %31, i1* %ZF, align 1, !mcsema_real_eip !13
  %32 = icmp slt i8 %25, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !13
  br i1 %31, label %block_0x7a, label %block_0x32, !mcsema_real_eip !14

block_0x32:                                       ; preds = %block_0x25
  %33 = load i8, i8* %24, align 1, !mcsema_real_eip !15
  %34 = sext i8 %33 to i64
  %35 = and i64 %34, 4294967295
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !15
  %36 = sext i8 %33 to i32
  %37 = add nsw i32 %36, -47
  %38 = xor i32 %37, %36, !mcsema_real_eip !16
  %39 = and i32 %38, 16, !mcsema_real_eip !16
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !16
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !16
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !16
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !16
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !16
  %45 = icmp eq i32 %37, 0, !mcsema_real_eip !16
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !16
  %46 = icmp slt i8 %33, 47
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !16
  %47 = icmp ult i8 %33, 47
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !16
  %48 = and i32 %38, %36, !mcsema_real_eip !16
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !16
  %50 = add i64 %RBP_val.19, -32
  %51 = inttoptr i64 %50 to i64*
  br i1 %45, label %block_0x3f, label %block_0x4b, !mcsema_real_eip !17

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %52 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !18
  %53 = load i64, i64* %52, align 8, !mcsema_real_eip !18
  store i64 %53, i64* %XBP, align 8, !mcsema_real_eip !18
  %54 = add i64 %RSP_val.22, 8, !mcsema_real_eip !18
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !18
  %55 = add i64 %RSP_val.22, 16, !mcsema_real_eip !19
  %56 = inttoptr i64 %54 to i64*, !mcsema_real_eip !19
  %57 = load i64, i64* %56, align 8, !mcsema_real_eip !19
  store i64 %57, i64* %XIP, align 8, !mcsema_real_eip !19
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x3f:                                       ; preds = %block_0x32
  %58 = load i64, i64* %51, align 8, !mcsema_real_eip !20
  store i64 %58, i64* %XAX, align 8, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x32
  %59 = load i8, i8* %24, align 1, !mcsema_real_eip !22
  store i8 %59, i8* %AL.15, align 1, !mcsema_real_eip !22
  %60 = load i64, i64* %51, align 8, !mcsema_real_eip !23
  store i64 %60, i64* %XCX, align 8, !mcsema_real_eip !23
  br label %block_0x54, !mcsema_real_eip !20

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %.sink2 = phi i64 [ %60, %block_0x4b ], [ %58, %block_0x3f ]
  %.sink = phi i8 [ %59, %block_0x4b ], [ 92, %block_0x3f ]
  %61 = inttoptr i64 %.sink2 to i8*
  store i8 %.sink, i8* %61, align 1
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %62 = add i64 %RBP_val.35, -24, !mcsema_real_eip !24
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !24
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !24
  %65 = add i64 %64, 1, !mcsema_real_eip !25
  %66 = xor i64 %65, %64, !mcsema_real_eip !25
  %67 = and i64 %66, 16, !mcsema_real_eip !25
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !25
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !25
  %69 = icmp slt i64 %65, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !25
  %70 = icmp eq i64 %65, 0, !mcsema_real_eip !25
  store i1 %70, i1* %ZF, align 1, !mcsema_real_eip !25
  %71 = xor i64 %64, -9223372036854775808, !mcsema_real_eip !25
  %72 = and i64 %66, %71, !mcsema_real_eip !25
  %73 = icmp slt i64 %72, 0
  store i1 %73, i1* %OF, align 1, !mcsema_real_eip !25
  %74 = trunc i64 %65 to i8, !mcsema_real_eip !25
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !25
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !25
  %78 = icmp eq i64 %64, -1
  store i1 %78, i1* %CF, align 1, !mcsema_real_eip !25
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !25
  store i64 %65, i64* %63, align 8, !mcsema_real_eip !26
  %RBP_val.39 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %79 = add i64 %RBP_val.39, -32, !mcsema_real_eip !27
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !27
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !27
  %82 = add i64 %81, 1, !mcsema_real_eip !28
  %83 = xor i64 %82, %81, !mcsema_real_eip !28
  %84 = and i64 %83, 16, !mcsema_real_eip !28
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !28
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !28
  %86 = icmp slt i64 %82, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !28
  %87 = icmp eq i64 %82, 0, !mcsema_real_eip !28
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !28
  %88 = xor i64 %81, -9223372036854775808, !mcsema_real_eip !28
  %89 = and i64 %83, %88, !mcsema_real_eip !28
  %90 = icmp slt i64 %89, 0
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !28
  %91 = trunc i64 %82 to i8, !mcsema_real_eip !28
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !28
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !28
  %95 = icmp eq i64 %81, -1
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !28
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !28
  store i64 %82, i64* %80, align 8, !mcsema_real_eip !29
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %96 = add i64 %RBP_val.43, -24, !mcsema_real_eip !30
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !30
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !30
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !30
  %99 = inttoptr i64 %98 to i8*, !mcsema_real_eip !31
  %100 = load i8, i8* %99, align 1, !mcsema_real_eip !31
  store i8 %100, i8* %CL.45, align 1, !mcsema_real_eip !31
  br label %block_0x25, !mcsema_real_eip !32
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 50}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 122}
!19 = !{i64 123}
!20 = !{i64 63}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 84}
!25 = !{i64 88}
!26 = !{i64 92}
!27 = !{i64 96}
!28 = !{i64 100}
!29 = !{i64 104}
!30 = !{i64 108}
!31 = !{i64 112}
!32 = !{i64 117}
