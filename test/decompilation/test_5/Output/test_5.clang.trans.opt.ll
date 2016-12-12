; ModuleID = 'Output/test_5.clang.trans.opt.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
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
  %5 = add i64 %RBP_val.5, -12, !mcsema_real_eip !5
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, align 4, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.7, i32* %6, align 4, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %8, align 4, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %9 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %.sink.in = phi i64 [ %63, %block_0x25 ], [ %9, %entry ]
  %EAX_val.32.sink = phi i32 [ %66, %block_0x25 ], [ 0, %entry ]
  %10 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.32.sink, i32* %10, align 4
  %RBP_val.10 = load i64, i64* %XBP, align 8
  %11 = add i64 %RBP_val.10, -20
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4, !mcsema_real_eip !8
  %14 = zext i32 %13 to i64, !mcsema_real_eip !8
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.10, -12, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !9
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !9
  %18 = sub i32 %13, %17, !mcsema_real_eip !9
  %19 = xor i32 %18, %13, !mcsema_real_eip !9
  %20 = xor i32 %19, %17, !mcsema_real_eip !9
  %21 = and i32 %20, 16, !mcsema_real_eip !9
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !9
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !9
  %23 = trunc i32 %18 to i8, !mcsema_real_eip !9
  %24 = tail call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !9
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !9
  %27 = icmp eq i32 %18, 0, !mcsema_real_eip !9
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !9
  %28 = icmp slt i32 %18, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !9
  %29 = icmp ult i32 %13, %17, !mcsema_real_eip !9
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !9
  %30 = xor i32 %17, %13, !mcsema_real_eip !9
  %31 = and i32 %19, %30, !mcsema_real_eip !9
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp = xor i1 %32, %28
  %33 = add i64 %RBP_val.10, -16
  %34 = inttoptr i64 %33 to i32*
  br i1 %tmp, label %block_0x25, label %block_0x44, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %35 = add i64 %RBP_val.10, -8, !mcsema_real_eip !11
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !11
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !11
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !11
  %38 = load i32, i32* %12, align 4, !mcsema_real_eip !12
  %39 = sext i32 %38 to i64, !mcsema_real_eip !12
  store i64 %39, i64* %XCX, align 8, !mcsema_real_eip !12
  %40 = shl nsw i64 %39, 2
  %41 = add i64 %40, %37, !mcsema_real_eip !13
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !13
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !13
  %44 = zext i32 %43 to i64, !mcsema_real_eip !13
  store i64 %44, i64* %XDX, align 8, !mcsema_real_eip !13
  %45 = load i32, i32* %34, align 4, !mcsema_real_eip !14
  %46 = add i32 %43, %45, !mcsema_real_eip !14
  %47 = xor i32 %46, %45, !mcsema_real_eip !14
  %48 = xor i32 %47, %43, !mcsema_real_eip !14
  %49 = and i32 %48, 16, !mcsema_real_eip !14
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !14
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !14
  %51 = icmp slt i32 %46, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !14
  %52 = icmp eq i32 %46, 0, !mcsema_real_eip !14
  store i1 %52, i1* %ZF, align 1, !mcsema_real_eip !14
  %53 = xor i32 %45, -2147483648, !mcsema_real_eip !14
  %54 = xor i32 %53, %43, !mcsema_real_eip !14
  %55 = and i32 %47, %54, !mcsema_real_eip !14
  %56 = icmp slt i32 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !14
  %57 = trunc i32 %46 to i8, !mcsema_real_eip !14
  %58 = tail call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !14
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !14
  %61 = icmp ult i32 %46, %45, !mcsema_real_eip !14
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !14
  %62 = zext i32 %46 to i64, !mcsema_real_eip !14
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !14
  store i32 %46, i32* %34, align 4, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, align 8
  %63 = add i64 %RBP_val.27, -20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !16
  %65 = load i32, i32* %64, align 4, !mcsema_real_eip !16
  %66 = add i32 %65, 1, !mcsema_real_eip !17
  %67 = xor i32 %66, %65, !mcsema_real_eip !17
  %68 = and i32 %67, 16, !mcsema_real_eip !17
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !17
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !17
  %70 = icmp slt i32 %66, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !17
  %71 = icmp eq i32 %66, 0, !mcsema_real_eip !17
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !17
  %72 = xor i32 %65, -2147483648, !mcsema_real_eip !17
  %73 = and i32 %67, %72, !mcsema_real_eip !17
  %74 = icmp slt i32 %73, 0
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !17
  %75 = trunc i32 %66 to i8, !mcsema_real_eip !17
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !17
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !17
  %79 = icmp eq i32 %65, -1
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !17
  %80 = zext i32 %66 to i64, !mcsema_real_eip !17
  store i64 %80, i64* %XAX, align 8, !mcsema_real_eip !17
  br label %block_0x19, !mcsema_real_eip !18

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %81 = load i32, i32* %34, align 4, !mcsema_real_eip !19
  %82 = zext i32 %81 to i64, !mcsema_real_eip !19
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !19
  %RSP_val.15 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %83 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !20
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !20
  store i64 %84, i64* %XBP, align 8, !mcsema_real_eip !20
  %85 = add i64 %RSP_val.15, 8, !mcsema_real_eip !20
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !20
  %86 = add i64 %RSP_val.15, 16, !mcsema_real_eip !21
  %87 = inttoptr i64 %85 to i64*, !mcsema_real_eip !21
  %88 = load i64, i64* %87, align 8, !mcsema_real_eip !21
  store i64 %88, i64* %XIP, align 8, !mcsema_real_eip !21
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
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
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 45}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 63}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 72}
