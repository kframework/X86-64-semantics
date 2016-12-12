; ModuleID = 'Output/test_0.clang.trans.opt.bc'
source_filename = "Output/test_0.clang.bc"
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

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  %3 = add i64 %RSP_val.1, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16, !mcsema_real_eip !4
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !4
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
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -24, !mcsema_real_eip !6
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !6
  %17 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %18, align 4, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.6, -24, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !8
  %RAX_val.7 = load i64, i64* %XAX, align 8, !mcsema_real_eip !8
  store i64 %RAX_val.7, i64* %20, align 8, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %21 = add i64 %RBP_val.8, -24, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !9
  %23 = load i64, i64* %22, align 8, !mcsema_real_eip !9
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !9
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !10
  store i32 1, i32* %24, align 4, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %25 = add i64 %RBP_val.10, -24, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !11
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !11
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !11
  %28 = add i64 %27, 4, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %29, align 4, !mcsema_real_eip !12
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %30 = add i64 %RBP_val.12, -24, !mcsema_real_eip !13
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !13
  %32 = load i64, i64* %31, align 8, !mcsema_real_eip !13
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !13
  %33 = add i64 %32, 4, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !14
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !14
  %36 = zext i32 %35 to i64, !mcsema_real_eip !14
  store i64 %36, i64* %XSI, align 8, !mcsema_real_eip !14
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !15
  store i8 0, i8* %AL.14, align 1, !mcsema_real_eip !15
  %RDI_val.15 = load i64, i64* %XDI, align 8, !mcsema_real_eip !16
  %RDX_val.17 = load i64, i64* %XDX, align 8, !mcsema_real_eip !16
  %RCX_val.18 = load i64, i64* %XCX, align 8, !mcsema_real_eip !16
  %R8_val.19 = load i64, i64* %R8, align 8, !mcsema_real_eip !16
  %R9_val.20 = load i64, i64* %R9, align 8, !mcsema_real_eip !16
  %RSP_val.21 = load i64, i64* %XSP, align 8, !mcsema_real_eip !16
  %37 = inttoptr i64 %RSP_val.21 to i64*, !mcsema_real_eip !16
  %38 = load i64, i64* %37, align 8, !mcsema_real_eip !16
  %39 = add i64 %RSP_val.21, 8, !mcsema_real_eip !16
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !16
  %41 = load i64, i64* %40, align 8, !mcsema_real_eip !16
  %42 = add i64 %RSP_val.21, 16, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !16
  %44 = load i64, i64* %43, align 8, !mcsema_real_eip !16
  %45 = add i64 %RSP_val.21, 24, !mcsema_real_eip !16
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !16
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !16
  %48 = add i64 %RSP_val.21, 32, !mcsema_real_eip !16
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !16
  %50 = load i64, i64* %49, align 8, !mcsema_real_eip !16
  %51 = add i64 %RSP_val.21, 40, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !16
  %53 = load i64, i64* %52, align 8, !mcsema_real_eip !16
  %54 = add i64 %RSP_val.21, -8
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !16
  store i64 -2415393069852865332, i64* %55, align 8, !mcsema_real_eip !16
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !16
  %56 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %36, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %38, i64 %41, i64 %44, i64 %47, i64 %50, i64 %53), !mcsema_real_eip !16
  store i64 %56, i64* %XAX, align 8, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, align 8
  %57 = add i64 %RBP_val.23, -24, !mcsema_real_eip !17
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !17
  %59 = load i64, i64* %58, align 8, !mcsema_real_eip !17
  store i64 %59, i64* %XDI, align 8, !mcsema_real_eip !17
  %60 = add i64 %59, 4, !mcsema_real_eip !18
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !18
  %62 = load i32, i32* %61, align 4, !mcsema_real_eip !18
  %63 = zext i32 %62 to i64, !mcsema_real_eip !18
  store i64 %63, i64* %XSI, align 8, !mcsema_real_eip !18
  %64 = add i64 %RBP_val.23, -28, !mcsema_real_eip !19
  %65 = trunc i64 %56 to i32
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !19
  store i32 %65, i32* %66, align 4, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, align 4, !mcsema_real_eip !20
  %67 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %68 = add i64 %RSP_val.30, 32, !mcsema_real_eip !21
  %69 = xor i64 %68, %RSP_val.30, !mcsema_real_eip !21
  %70 = and i64 %69, 16, !mcsema_real_eip !21
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !21
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !21
  %72 = icmp slt i64 %68, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !21
  %73 = icmp eq i64 %68, 0, !mcsema_real_eip !21
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !21
  %74 = xor i64 %RSP_val.30, -9223372036854775808, !mcsema_real_eip !21
  %75 = and i64 %69, %74, !mcsema_real_eip !21
  %76 = icmp slt i64 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !21
  %77 = trunc i64 %68 to i8, !mcsema_real_eip !21
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !21
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !21
  %81 = icmp ugt i64 %RSP_val.30, -33
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !21
  %82 = inttoptr i64 %68 to i64*, !mcsema_real_eip !22
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !22
  store i64 %83, i64* %XBP, align 8, !mcsema_real_eip !22
  %84 = add i64 %RSP_val.30, 40, !mcsema_real_eip !22
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !22
  %85 = add i64 %RSP_val.30, 48, !mcsema_real_eip !23
  %86 = inttoptr i64 %84 to i64*, !mcsema_real_eip !23
  %87 = load i64, i64* %86, align 8, !mcsema_real_eip !23
  store i64 %87, i64* %XIP, align 8, !mcsema_real_eip !23
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 33}
!10 = !{i64 37}
!11 = !{i64 43}
!12 = !{i64 47}
!13 = !{i64 54}
!14 = !{i64 58}
!15 = !{i64 61}
!16 = !{i64 63}
!17 = !{i64 68}
!18 = !{i64 72}
!19 = !{i64 75}
!20 = !{i64 78}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 85}
