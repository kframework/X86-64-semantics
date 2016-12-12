; ModuleID = 'Output/test_21.clang.trans.opt.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl shiftit;"
module asm "  .type shiftit,@function"
module asm "shiftit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size shiftit,0b-shiftit;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %3 = add i64 %RSP_val.1, -12, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %4, align 4, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.6, -16, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %RSI_val.7 = load i64, i64* %XSI, align 8, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %6, align 8, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, align 8
  %7 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  %9 = load i64, i64* %8, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %XSI, align 8, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  %11 = load i64, i64* %10, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %XSI, align 8, !mcsema_real_eip !7
  %12 = add i64 %RBP_val.8, -24, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !8
  store i64 %11, i64* %13, align 8, !mcsema_real_eip !8
  %RBP_val.12 = load i64, i64* %XBP, align 8
  %14 = add i64 %RBP_val.12, -4, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !9
  %16 = load i32, i32* %15, align 4, !mcsema_real_eip !9
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %XDI, align 8, !mcsema_real_eip !9
  %18 = add i64 %RBP_val.12, -24
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %17, i64* %XDI, align 8, !mcsema_real_eip !10
  store i64 %17, i64* %XCX, align 8, !mcsema_real_eip !11
  %21 = and i32 %16, 255
  %CL_val.20.zext = zext i32 %21 to i64
  %22 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !12
  %23 = add nsw i64 %CL_val.20.zext, -1
  %24 = icmp ne i64 %22, 0, !mcsema_real_eip !12
  %25 = select i1 %24, i64 %23, i64 0, !mcsema_real_eip !12
  %26 = zext i1 %24 to i64
  %27 = lshr i64 %20, %25, !mcsema_real_eip !12
  %28 = and i64 %27, 1, !mcsema_real_eip !12
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !12
  %30 = load i1, i1* %CF, align 1, !mcsema_real_eip !12
  %31 = select i1 %24, i1 %29, i1 %30, !mcsema_real_eip !12
  %32 = lshr i64 %27, %26, !mcsema_real_eip !12
  %33 = icmp eq i64 %22, 1, !mcsema_real_eip !12
  %34 = load i1, i1* %OF, align 1, !mcsema_real_eip !12
  %35 = icmp slt i64 %20, 0
  %36 = select i1 %33, i1 %35, i1 %34, !mcsema_real_eip !12
  store i1 %36, i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !12
  %37 = load i1, i1* %ZF, align 1, !mcsema_real_eip !12
  %38 = icmp eq i64 %32, 0, !mcsema_real_eip !12
  %39 = select i1 %24, i1 %38, i1 %37, !mcsema_real_eip !12
  store i1 %39, i1* %ZF, align 1, !mcsema_real_eip !12
  %40 = load i1, i1* %SF, align 1, !mcsema_real_eip !12
  %41 = icmp slt i64 %32, 0, !mcsema_real_eip !12
  %42 = select i1 %24, i1 %41, i1 %40, !mcsema_real_eip !12
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !12
  %43 = load i1, i1* %PF, align 1, !mcsema_real_eip !12
  %44 = trunc i64 %32 to i8, !mcsema_real_eip !12
  %45 = tail call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !12
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %24, i1 %47, i1 %43, !mcsema_real_eip !12
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !12
  store i64 %32, i64* %XSI, align 8, !mcsema_real_eip !12
  store i64 %32, i64* %19, align 8, !mcsema_real_eip !13
  %RBP_val.23 = load i64, i64* %XBP, align 8
  %49 = add i64 %RBP_val.23, -24, !mcsema_real_eip !14
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !14
  %51 = load i64, i64* %50, align 8, !mcsema_real_eip !14
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !14
  %52 = add i64 %RBP_val.23, -16, !mcsema_real_eip !15
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !15
  %54 = load i64, i64* %53, align 8, !mcsema_real_eip !15
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !15
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !16
  store i64 %51, i64* %55, align 8, !mcsema_real_eip !16
  %RSP_val.27 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %56 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !17
  %57 = load i64, i64* %56, align 8, !mcsema_real_eip !17
  store i64 %57, i64* %XBP, align 8, !mcsema_real_eip !17
  %58 = add i64 %RSP_val.27, 8, !mcsema_real_eip !17
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !17
  %59 = add i64 %RSP_val.27, 16, !mcsema_real_eip !18
  %60 = inttoptr i64 %58 to i64*, !mcsema_real_eip !18
  %61 = load i64, i64* %60, align 8, !mcsema_real_eip !18
  store i64 %61, i64* %XIP, align 8, !mcsema_real_eip !18
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !18
  ret void, !mcsema_real_eip !18
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
!5 = !{i64 7}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 22}
!10 = !{i64 29}
!11 = !{i64 31}
!12 = !{i64 33}
!13 = !{i64 36}
!14 = !{i64 40}
!15 = !{i64 44}
!16 = !{i64 48}
!17 = !{i64 51}
!18 = !{i64 52}
