; ModuleID = 'Output/test_18.clang.opt.bc'
source_filename = "Output/test_18.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [336 x i8], i64, [16 x i8], i64, [24 x i8], i64, [128 x i8], i64, [16 x i8], i64, [24 x i8], i64, [256 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %4, align 4, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %entry
  %.sink.in = phi i64 [ %75, %block_0x4c ], [ %5, %entry ]
  %EAX_val.26.sink = phi i32 [ %78, %block_0x4c ], [ 0, %entry ]
  %6 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.26.sink, i32* %6, align 4
  %RBP_val.5 = load i64, i64* %XBP, align 8
  %7 = add i64 %RBP_val.5, -4
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !6
  %10 = sext i32 %9 to i64, !mcsema_real_eip !6
  store i64 %10, i64* %XAX, align 8, !mcsema_real_eip !6
  %11 = add nsw i64 %10, -104
  %12 = xor i64 %11, %10, !mcsema_real_eip !7
  %13 = and i64 %12, 16, !mcsema_real_eip !7
  %14 = icmp ne i64 %13, 0, !mcsema_real_eip !7
  store i1 %14, i1* %AF, align 1, !mcsema_real_eip !7
  %15 = trunc i64 %11 to i8, !mcsema_real_eip !7
  %16 = tail call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !7
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  store i1 %18, i1* %PF, align 1, !mcsema_real_eip !7
  %19 = icmp eq i64 %11, 0, !mcsema_real_eip !7
  store i1 %19, i1* %ZF, align 1, !mcsema_real_eip !7
  %20 = icmp slt i32 %9, 104
  store i1 %20, i1* %SF, align 1, !mcsema_real_eip !7
  %21 = icmp ult i32 %9, 104
  store i1 %21, i1* %CF, align 1, !mcsema_real_eip !7
  %22 = and i64 %12, %10, !mcsema_real_eip !7
  %23 = icmp slt i64 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !7
  br i1 %21, label %block_0x20, label %block_0x5a, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %24 = load i32, i32* %8, align 4, !mcsema_real_eip !9
  %25 = sext i32 %24 to i64, !mcsema_real_eip !9
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !9
  %26 = shl nsw i64 %25, 3
  %27 = add i64 %26, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !10
  %29 = load i64, i64* %28, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !10
  %30 = trunc i64 %29 to i8, !mcsema_real_eip !10
  %31 = tail call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !10
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !10
  %34 = icmp eq i64 %29, 0, !mcsema_real_eip !10
  store i1 %34, i1* %ZF, align 1, !mcsema_real_eip !10
  %35 = icmp slt i64 %29, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %34, label %block_0x4c, label %block_0x33, !mcsema_real_eip !11

block_0x5a:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %36 = add i64 %RBP_val.5, -8, !mcsema_real_eip !12
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !12
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !12
  %39 = zext i32 %38 to i64, !mcsema_real_eip !12
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !12
  %RSP_val.8 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %40 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !13
  %41 = load i64, i64* %40, align 8, !mcsema_real_eip !13
  store i64 %41, i64* %XBP, align 8, !mcsema_real_eip !13
  %42 = add i64 %RSP_val.8, 8, !mcsema_real_eip !13
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !13
  %43 = add i64 %RSP_val.8, 16, !mcsema_real_eip !14
  %44 = inttoptr i64 %42 to i64*, !mcsema_real_eip !14
  %45 = load i64, i64* %44, align 8, !mcsema_real_eip !14
  store i64 %45, i64* %XIP, align 8, !mcsema_real_eip !14
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x20
  %46 = load i32, i32* %8, align 4, !mcsema_real_eip !15
  %47 = sext i32 %46 to i64, !mcsema_real_eip !15
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !15
  %48 = shl nsw i64 %47, 3
  %49 = add i64 %48, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !16
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !16
  %51 = load i64, i64* %50, align 8, !mcsema_real_eip !16
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !17
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !17
  %54 = zext i32 %53 to i64, !mcsema_real_eip !17
  store i64 %54, i64* %XCX, align 8, !mcsema_real_eip !17
  %55 = add i64 %RBP_val.5, -8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4, !mcsema_real_eip !18
  %58 = add i32 %53, %57, !mcsema_real_eip !18
  %59 = xor i32 %58, %57, !mcsema_real_eip !18
  %60 = xor i32 %59, %53, !mcsema_real_eip !18
  %61 = and i32 %60, 16, !mcsema_real_eip !18
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !18
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !18
  %63 = icmp slt i32 %58, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !18
  %64 = icmp eq i32 %58, 0, !mcsema_real_eip !18
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !18
  %65 = xor i32 %57, -2147483648, !mcsema_real_eip !18
  %66 = xor i32 %65, %53, !mcsema_real_eip !18
  %67 = and i32 %59, %66, !mcsema_real_eip !18
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !18
  %69 = trunc i32 %58 to i8, !mcsema_real_eip !18
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !18
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !18
  %73 = icmp ult i32 %58, %57, !mcsema_real_eip !18
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !18
  %74 = zext i32 %58 to i64, !mcsema_real_eip !18
  store i64 %74, i64* %XCX, align 8, !mcsema_real_eip !18
  store i32 %58, i32* %56, align 4, !mcsema_real_eip !19
  %RBP_val.21.pre = load i64, i64* %XBP, align 8
  br label %block_0x4c, !mcsema_real_eip !20

block_0x4c:                                       ; preds = %block_0x20, %block_0x33
  %RBP_val.21 = phi i64 [ %RBP_val.5, %block_0x20 ], [ %RBP_val.21.pre, %block_0x33 ]
  %75 = add i64 %RBP_val.21, -4
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !20
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !20
  %78 = add i32 %77, 1, !mcsema_real_eip !21
  %79 = xor i32 %78, %77, !mcsema_real_eip !21
  %80 = and i32 %79, 16, !mcsema_real_eip !21
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !21
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !21
  %82 = icmp slt i32 %78, 0
  store i1 %82, i1* %SF, align 1, !mcsema_real_eip !21
  %83 = icmp eq i32 %78, 0, !mcsema_real_eip !21
  store i1 %83, i1* %ZF, align 1, !mcsema_real_eip !21
  %84 = xor i32 %77, -2147483648, !mcsema_real_eip !21
  %85 = and i32 %79, %84, !mcsema_real_eip !21
  %86 = icmp slt i32 %85, 0
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !21
  %87 = trunc i32 %78 to i8, !mcsema_real_eip !21
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !21
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  store i1 %90, i1* %PF, align 1, !mcsema_real_eip !21
  %91 = icmp eq i32 %77, -1
  store i1 %91, i1* %CF, align 1, !mcsema_real_eip !21
  %92 = zext i32 %78 to i64, !mcsema_real_eip !21
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !21
  br label %block_0x12, !mcsema_real_eip !22
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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 90}
!13 = !{i64 93}
!14 = !{i64 94}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 63}
!18 = !{i64 65}
!19 = !{i64 68}
!20 = !{i64 76}
!21 = !{i64 79}
!22 = !{i64 85}
