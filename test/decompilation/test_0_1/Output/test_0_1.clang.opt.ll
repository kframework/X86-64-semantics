; ModuleID = 'Output/test_0_1.clang.opt.bc'
source_filename = "Output/test_0_1.clang.bc"
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
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [6 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d = internal constant %0 <{ [6 x i8] c"test \00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
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
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, align 4, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, align 1, !mcsema_real_eip !7
  %RDI_val.6 = load i64, i64* %XDI, align 8, !mcsema_real_eip !8
  %RSI_val.7 = load i64, i64* %XSI, align 8, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, align 8, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, align 8, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, align 8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, align 8, !mcsema_real_eip !8
  %RSP_val.12 = load i64, i64* %XSP, align 8, !mcsema_real_eip !8
  %18 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !8
  %19 = load i64, i64* %18, align 8, !mcsema_real_eip !8
  %20 = add i64 %RSP_val.12, 8, !mcsema_real_eip !8
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !8
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !8
  %23 = add i64 %RSP_val.12, 16, !mcsema_real_eip !8
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !8
  %25 = load i64, i64* %24, align 8, !mcsema_real_eip !8
  %26 = add i64 %RSP_val.12, 24, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %28 = load i64, i64* %27, align 8, !mcsema_real_eip !8
  %29 = add i64 %RSP_val.12, 32, !mcsema_real_eip !8
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !8
  %31 = load i64, i64* %30, align 8, !mcsema_real_eip !8
  %32 = add i64 %RSP_val.12, 40, !mcsema_real_eip !8
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !8
  %34 = load i64, i64* %33, align 8, !mcsema_real_eip !8
  %35 = add i64 %RSP_val.12, -8
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !8
  store i64 -2415393069852865332, i64* %36, align 8, !mcsema_real_eip !8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !8
  %37 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34), !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !9
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %38 = add i64 %RBP_val.18, -8, !mcsema_real_eip !10
  %39 = trunc i64 %37 to i32
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !10
  store i32 %39, i32* %40, align 4, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, align 4, !mcsema_real_eip !11
  %41 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %41, i64* %XAX, align 8, !mcsema_real_eip !11
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %42 = add i64 %RSP_val.23, 16, !mcsema_real_eip !12
  %43 = xor i64 %42, %RSP_val.23, !mcsema_real_eip !12
  %44 = and i64 %43, 16
  %45 = icmp eq i64 %44, 0
  store i1 %45, i1* %AF, align 1, !mcsema_real_eip !12
  %46 = icmp slt i64 %42, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !12
  %47 = icmp eq i64 %42, 0, !mcsema_real_eip !12
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !12
  %48 = xor i64 %RSP_val.23, -9223372036854775808, !mcsema_real_eip !12
  %49 = and i64 %43, %48, !mcsema_real_eip !12
  %50 = icmp slt i64 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !12
  %51 = trunc i64 %42 to i8, !mcsema_real_eip !12
  %52 = tail call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !12
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !12
  %55 = icmp ugt i64 %RSP_val.23, -17
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !12
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !12
  %56 = inttoptr i64 %42 to i64*, !mcsema_real_eip !13
  %57 = load i64, i64* %56, align 8, !mcsema_real_eip !13
  store i64 %57, i64* %XBP, align 8, !mcsema_real_eip !13
  %58 = add i64 %RSP_val.23, 24, !mcsema_real_eip !13
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !13
  %59 = add i64 %RSP_val.23, 32, !mcsema_real_eip !14
  %60 = inttoptr i64 %58 to i64*, !mcsema_real_eip !14
  %61 = load i64, i64* %60, align 8, !mcsema_real_eip !14
  store i64 %61, i64* %XIP, align 8, !mcsema_real_eip !14
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

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
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
