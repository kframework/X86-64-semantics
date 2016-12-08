; ModuleID = 'Output/test_12.clang.trans.opt.bc'
source_filename = "Output/test_12.clang.bc"
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
module asm "  .globl open;"
module asm "  .globl _open;"
module asm "  .type _open,@function"
module asm "_open:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq open@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _open,0b-_open;"
module asm "  .cfi_endproc;"
module asm "  .globl close;"
module asm "  .globl _close;"
module asm "  .type _close,@function"
module asm "_close:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq close@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _close,0b-_close;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16, !mcsema_real_eip !4
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !4
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !5
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !5
  %7 = add i64 %RSP_val.1, -24, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  %RDI_val.9 = load i64, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %8, align 8, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %9 = add i64 %RBP_val.10, -16, !mcsema_real_eip !7
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  %11 = load i64, i64* %10, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %XDI, align 8, !mcsema_real_eip !7
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.11, align 1, !mcsema_real_eip !8
  %RSI_val.13 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %12 = add i64 %RSP_val.14, -8
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %13, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !9
  %14 = tail call x86_64_sysvcc i64 @_open(i64 %11, i64 %RSI_val.13), !mcsema_real_eip !9
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %15 = add i64 %RBP_val.15, -20, !mcsema_real_eip !10
  %16 = trunc i64 %14 to i32
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !10
  store i32 %16, i32* %17, align 4, !mcsema_real_eip !10
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %18 = add i64 %RBP_val.18, -20, !mcsema_real_eip !11
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !11
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !11
  %21 = add i32 %20, 1
  %22 = xor i32 %21, %20, !mcsema_real_eip !11
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !11
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !11
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !11
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !11
  %29 = icmp eq i32 %21, 0, !mcsema_real_eip !11
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !11
  %30 = icmp slt i32 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !11
  %31 = icmp ne i32 %20, -1
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !11
  %32 = xor i32 %20, -2147483648, !mcsema_real_eip !11
  %33 = and i32 %22, %32, !mcsema_real_eip !11
  %34 = icmp slt i32 %33, 0
  store i1 %34, i1* %OF, align 1, !mcsema_real_eip !11
  br i1 %29, label %block_0x3d, label %block_0x26, !mcsema_real_eip !12

block_0x26:                                       ; preds = %entry
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %35 = load i32, i32* %19, align 4, !mcsema_real_eip !13
  %36 = zext i32 %35 to i64, !mcsema_real_eip !13
  store i64 %36, i64* %XDI, align 8, !mcsema_real_eip !13
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %37 = add i64 %RSP_val.22, -8
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %38, align 8, !mcsema_real_eip !14
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !14
  %39 = tail call x86_64_sysvcc i64 @_close(i64 %36), !mcsema_real_eip !14
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !14
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %40 = add i64 %RBP_val.23, -4, !mcsema_real_eip !15
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %41, align 4, !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.24, -24, !mcsema_real_eip !16
  %EAX_val.26 = load i32, i32* %EAX.16, align 4, !mcsema_real_eip !16
  br label %block_0x44, !mcsema_real_eip !17

block_0x3d:                                       ; preds = %entry
  %43 = add i64 %RBP_val.18, -4, !mcsema_real_eip !18
  br label %block_0x44, !mcsema_real_eip !13

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %.sink2 = phi i64 [ %43, %block_0x3d ], [ %42, %block_0x26 ]
  %.sink = phi i32 [ -1, %block_0x3d ], [ %EAX_val.26, %block_0x26 ]
  %44 = inttoptr i64 %.sink2 to i32*
  store i32 %.sink, i32* %44, align 4
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %45 = add i64 %RBP_val.27, -4, !mcsema_real_eip !19
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !19
  %47 = load i32, i32* %46, align 4, !mcsema_real_eip !19
  %48 = zext i32 %47 to i64, !mcsema_real_eip !19
  store i64 %48, i64* %XAX, align 8, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %49 = add i64 %RSP_val.28, 32, !mcsema_real_eip !20
  %50 = xor i64 %49, %RSP_val.28, !mcsema_real_eip !20
  %51 = and i64 %50, 16, !mcsema_real_eip !20
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !20
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !20
  %53 = icmp slt i64 %49, 0
  store i1 %53, i1* %SF, align 1, !mcsema_real_eip !20
  %54 = icmp eq i64 %49, 0, !mcsema_real_eip !20
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !20
  %55 = xor i64 %RSP_val.28, -9223372036854775808, !mcsema_real_eip !20
  %56 = and i64 %50, %55, !mcsema_real_eip !20
  %57 = icmp slt i64 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !20
  %58 = trunc i64 %49 to i8, !mcsema_real_eip !20
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !20
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !20
  %62 = icmp ugt i64 %RSP_val.28, -33
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !20
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !20
  %63 = inttoptr i64 %49 to i64*, !mcsema_real_eip !21
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !21
  store i64 %64, i64* %XBP, align 8, !mcsema_real_eip !21
  %65 = add i64 %RSP_val.28, 40, !mcsema_real_eip !21
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !21
  %66 = add i64 %RSP_val.28, 48, !mcsema_real_eip !22
  %67 = inttoptr i64 %65 to i64*, !mcsema_real_eip !22
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !22
  store i64 %68, i64* %XIP, align 8, !mcsema_real_eip !22
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_open(i64, i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_close(i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 10}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 20}
!10 = !{i64 25}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 38}
!14 = !{i64 41}
!15 = !{i64 46}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 76}
