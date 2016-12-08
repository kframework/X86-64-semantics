; ModuleID = 'Output/test_10.clang.opt.bc'
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
  %RBP_val.7 = load i64, i64* %XBP, align 8
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
  %AL.28 = bitcast i64* %XAX to i8*
  br label %block_0x25, !mcsema_real_eip !9

block_0x25:                                       ; preds = %block_0x54, %entry
  %RAX_val.42 = phi i64 [ %83, %block_0x54 ], [ %14, %entry ]
  %RBP_val.41 = phi i64 [ %RBP_val.39, %block_0x54 ], [ %RBP_val.10, %entry ]
  %XAX.sink17 = phi i64* [ %XAX, %block_0x54 ], [ %XSI, %entry ]
  %XCX.sink7 = phi i64* [ %XCX, %block_0x54 ], [ %XAX, %entry ]
  %15 = add i64 %RBP_val.41, -32
  %16 = inttoptr i64 %15 to i64*
  store i64 %RAX_val.42, i64* %16, align 8
  %RBP_val.43 = load i64, i64* %XBP, align 8
  %17 = add i64 %RBP_val.43, -24
  %18 = inttoptr i64 %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %XAX.sink17, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i8, i8* %20, align 1
  %CL.45 = bitcast i64* %XCX.sink7 to i8*
  store i8 %21, i8* %CL.45, align 1
  %RBP_val.46 = load i64, i64* %XBP, align 8
  %22 = add i64 %RBP_val.46, -33
  %23 = inttoptr i64 %22 to i8*
  store i8 %21, i8* %23, align 1
  %RBP_val.19 = load i64, i64* %XBP, align 8
  %24 = add i64 %RBP_val.19, -33
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8, i8* %25, align 1, !mcsema_real_eip !9
  %27 = sext i8 %26 to i64
  %28 = and i64 %27, 4294967295
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !9
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !10
  %29 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !10
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  store i1 %31, i1* %PF, align 1, !mcsema_real_eip !10
  %32 = icmp eq i8 %26, 0
  store i1 %32, i1* %ZF, align 1, !mcsema_real_eip !10
  %33 = icmp slt i8 %26, 0
  store i1 %33, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %32, label %block_0x7a, label %block_0x32, !mcsema_real_eip !11

block_0x32:                                       ; preds = %block_0x25
  %34 = load i8, i8* %25, align 1, !mcsema_real_eip !12
  %35 = sext i8 %34 to i64
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !12
  %37 = sext i8 %34 to i32
  %38 = add nsw i32 %37, -47
  %39 = xor i32 %38, %37, !mcsema_real_eip !13
  %40 = and i32 %39, 16, !mcsema_real_eip !13
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !13
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !13
  %42 = trunc i32 %38 to i8, !mcsema_real_eip !13
  %43 = tail call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !13
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  store i1 %45, i1* %PF, align 1, !mcsema_real_eip !13
  %46 = icmp eq i32 %38, 0
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !13
  %47 = icmp slt i8 %34, 47
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !13
  %48 = icmp ult i8 %34, 47
  store i1 %48, i1* %CF, align 1, !mcsema_real_eip !13
  %49 = and i32 %39, %37, !mcsema_real_eip !13
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !13
  %51 = add i64 %RBP_val.19, -32
  %52 = inttoptr i64 %51 to i64*
  br i1 %46, label %block_0x3f, label %block_0x4b, !mcsema_real_eip !14

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %53 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !15
  %54 = load i64, i64* %53, align 8, !mcsema_real_eip !15
  store i64 %54, i64* %XBP, align 8, !mcsema_real_eip !15
  %55 = add i64 %RSP_val.22, 8, !mcsema_real_eip !15
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !15
  %56 = add i64 %RSP_val.22, 16, !mcsema_real_eip !16
  %57 = inttoptr i64 %55 to i64*, !mcsema_real_eip !16
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !16
  store i64 %58, i64* %XIP, align 8, !mcsema_real_eip !16
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x3f:                                       ; preds = %block_0x32
  %59 = load i64, i64* %52, align 8, !mcsema_real_eip !17
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !17
  br label %block_0x54, !mcsema_real_eip !18

block_0x4b:                                       ; preds = %block_0x32
  %60 = load i8, i8* %25, align 1, !mcsema_real_eip !19
  store i8 %60, i8* %AL.28, align 1, !mcsema_real_eip !19
  %61 = load i64, i64* %52, align 8, !mcsema_real_eip !20
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !17

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %.sink.in = phi i64 [ %61, %block_0x4b ], [ %59, %block_0x3f ]
  %AL_val.32.sink = phi i8 [ %60, %block_0x4b ], [ 92, %block_0x3f ]
  %62 = inttoptr i64 %.sink.in to i8*
  store i8 %AL_val.32.sink, i8* %62, align 1
  %RBP_val.35 = load i64, i64* %XBP, align 8
  %63 = add i64 %RBP_val.35, -24
  %64 = inttoptr i64 %63 to i64*
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !21
  %66 = add i64 %65, 1, !mcsema_real_eip !22
  %67 = xor i64 %66, %65, !mcsema_real_eip !22
  %68 = and i64 %67, 16, !mcsema_real_eip !22
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !22
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !22
  %70 = icmp slt i64 %66, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !22
  %71 = icmp eq i64 %66, 0, !mcsema_real_eip !22
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !22
  %72 = xor i64 %65, -9223372036854775808, !mcsema_real_eip !22
  %73 = and i64 %67, %72, !mcsema_real_eip !22
  %74 = icmp slt i64 %73, 0
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !22
  %75 = trunc i64 %66 to i8, !mcsema_real_eip !22
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !22
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !22
  %79 = icmp eq i64 %65, -1
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !22
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !22
  store i64 %66, i64* %64, align 8, !mcsema_real_eip !23
  %RBP_val.39 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %80 = add i64 %RBP_val.39, -32, !mcsema_real_eip !24
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !24
  %82 = load i64, i64* %81, align 8, !mcsema_real_eip !24
  %83 = add i64 %82, 1, !mcsema_real_eip !25
  %84 = xor i64 %83, %82, !mcsema_real_eip !25
  %85 = and i64 %84, 16, !mcsema_real_eip !25
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !25
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !25
  %87 = icmp slt i64 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !25
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !25
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !25
  %89 = xor i64 %82, -9223372036854775808, !mcsema_real_eip !25
  %90 = and i64 %84, %89, !mcsema_real_eip !25
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !25
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !25
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !25
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !25
  %96 = icmp eq i64 %82, -1
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !25
  store i64 %83, i64* %XAX, align 8, !mcsema_real_eip !25
  br label %block_0x25, !mcsema_real_eip !26
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
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 44}
!12 = !{i64 50}
!13 = !{i64 54}
!14 = !{i64 57}
!15 = !{i64 122}
!16 = !{i64 123}
!17 = !{i64 63}
!18 = !{i64 70}
!19 = !{i64 75}
!20 = !{i64 78}
!21 = !{i64 84}
!22 = !{i64 88}
!23 = !{i64 92}
!24 = !{i64 96}
!25 = !{i64 100}
!26 = !{i64 117}
