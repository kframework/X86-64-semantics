; ModuleID = 'Output/test_15.clang.trans.opt.bc'
source_filename = "Output/test_15.clang.bc"
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
module asm "  .globl doOp;"
module asm "  .type doOp,@function"
module asm "doOp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doOp,0b-doOp;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x28 = internal unnamed_addr global %0 <{ [4 x i8] c"\01\00\00\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %3 = add i64 %RSP_val.1, -12, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %4, align 4, !mcsema_real_eip !4
  %5 = load i32, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !5
  %6 = zext i32 %5 to i64, !mcsema_real_eip !5
  store i64 %6, i64* %XDI, align 8, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.6, -8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !6
  store i32 %5, i32* %8, align 4, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, align 8
  %9 = add i64 %RBP_val.9, -4, !mcsema_real_eip !7
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !7
  %11 = load i32, i32* %10, align 4, !mcsema_real_eip !7
  %12 = load i32, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !8
  %13 = add i32 %11, %12, !mcsema_real_eip !8
  %14 = xor i32 %13, %12, !mcsema_real_eip !8
  %15 = xor i32 %14, %11, !mcsema_real_eip !8
  %16 = and i32 %15, 16, !mcsema_real_eip !8
  %17 = icmp ne i32 %16, 0, !mcsema_real_eip !8
  store i1 %17, i1* %AF, align 1, !mcsema_real_eip !8
  %18 = icmp slt i32 %13, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !8
  %19 = icmp eq i32 %13, 0, !mcsema_real_eip !8
  store i1 %19, i1* %ZF, align 1, !mcsema_real_eip !8
  %20 = xor i32 %12, -2147483648, !mcsema_real_eip !8
  %21 = xor i32 %20, %11, !mcsema_real_eip !8
  %22 = and i32 %14, %21, !mcsema_real_eip !8
  %23 = icmp slt i32 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !8
  %24 = trunc i32 %13 to i8, !mcsema_real_eip !8
  %25 = tail call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !8
  %28 = icmp ult i32 %13, %12, !mcsema_real_eip !8
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !8
  %29 = zext i32 %13 to i64, !mcsema_real_eip !8
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !8
  store i32 %13, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.9, -8, !mcsema_real_eip !10
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !10
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !10
  %33 = zext i32 %32 to i64, !mcsema_real_eip !10
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !10
  %RSP_val.15 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %34 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %35 = load i64, i64* %34, align 8, !mcsema_real_eip !11
  store i64 %35, i64* %XBP, align 8, !mcsema_real_eip !11
  %36 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !11
  %37 = add i64 %RSP_val.15, 16, !mcsema_real_eip !12
  %38 = inttoptr i64 %36 to i64*, !mcsema_real_eip !12
  %39 = load i64, i64* %38, align 8, !mcsema_real_eip !12
  store i64 %39, i64* %XIP, align 8, !mcsema_real_eip !12
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
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
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 27}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 38}
