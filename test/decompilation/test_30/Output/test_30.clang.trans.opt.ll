; ModuleID = 'Output/test_30.clang.trans.opt.bc'
source_filename = "Output/test_30.clang.bc"
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
module asm "  .globl fprintf;"
module asm "  .globl _fprintf;"
module asm "  .type _fprintf,@function"
module asm "_fprintf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq fprintf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _fprintf,0b-_fprintf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl print_it;"
module asm "  .type print_it,@function"
module asm "print_it:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size print_it,0b-print_it;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@stderr = external local_unnamed_addr global [8 x i8]
@data_0x36 = internal constant %0 <{ [4 x i8] c"%s\0A\00" }>, align 64

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
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -16, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !6
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %RDI_val.5, i64* %17, align 8, !mcsema_real_eip !6
  %18 = load i64, i64* bitcast ([8 x i8]* @stderr to i64*), align 8, !mcsema_real_eip !7
  store i64 %18, i64* %XDI, align 8, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.6, -8, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !8
  %21 = load i64, i64* %20, align 8, !mcsema_real_eip !8
  store i64 %21, i64* %XDX, align 8, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, align 1, !mcsema_real_eip !9
  %RSI_val.9 = load i64, i64* %XSI, align 8, !mcsema_real_eip !10
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %22 = add i64 %RSP_val.11, -8
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %23, align 8, !mcsema_real_eip !10
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !10
  %24 = tail call x86_64_sysvcc i64 @_fprintf(i64 %18, i64 %RSI_val.9, i64 %21), !mcsema_real_eip !10
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %25 = add i64 %RBP_val.16, -12, !mcsema_real_eip !12
  %26 = trunc i64 %24 to i32
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !12
  store i32 %26, i32* %27, align 4, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !13
  %28 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !13
  %RSP_val.21 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %29 = add i64 %RSP_val.21, 16, !mcsema_real_eip !14
  %30 = xor i64 %29, %RSP_val.21, !mcsema_real_eip !14
  %31 = and i64 %30, 16
  %32 = icmp eq i64 %31, 0
  store i1 %32, i1* %AF, align 1, !mcsema_real_eip !14
  %33 = icmp slt i64 %29, 0
  store i1 %33, i1* %SF, align 1, !mcsema_real_eip !14
  %34 = icmp eq i64 %29, 0, !mcsema_real_eip !14
  store i1 %34, i1* %ZF, align 1, !mcsema_real_eip !14
  %35 = xor i64 %RSP_val.21, -9223372036854775808, !mcsema_real_eip !14
  %36 = and i64 %30, %35, !mcsema_real_eip !14
  %37 = icmp slt i64 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !14
  %38 = trunc i64 %29 to i8, !mcsema_real_eip !14
  %39 = tail call i8 @llvm.ctpop.i8(i8 %38), !mcsema_real_eip !14
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  store i1 %41, i1* %PF, align 1, !mcsema_real_eip !14
  %42 = icmp ugt i64 %RSP_val.21, -17
  store i1 %42, i1* %CF, align 1, !mcsema_real_eip !14
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !14
  %43 = inttoptr i64 %29 to i64*, !mcsema_real_eip !15
  %44 = load i64, i64* %43, align 8, !mcsema_real_eip !15
  store i64 %44, i64* %XBP, align 8, !mcsema_real_eip !15
  %45 = add i64 %RSP_val.21, 24, !mcsema_real_eip !15
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !15
  %46 = add i64 %RSP_val.21, 32, !mcsema_real_eip !16
  %47 = inttoptr i64 %45 to i64*, !mcsema_real_eip !16
  %48 = load i64, i64* %47, align 8, !mcsema_real_eip !16
  store i64 %48, i64* %XIP, align 8, !mcsema_real_eip !16
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_fprintf(i64, i64, i64) local_unnamed_addr #2

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
!8 = !{i64 30}
!9 = !{i64 34}
!10 = !{i64 36}
!11 = !{i64 41}
!12 = !{i64 43}
!13 = !{i64 46}
!14 = !{i64 48}
!15 = !{i64 52}
!16 = !{i64 53}
