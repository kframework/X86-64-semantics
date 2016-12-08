; ModuleID = 'Output/test_19.clang.opt.bc'
source_filename = "Output/test_19.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2c = internal global %0 zeroinitializer, align 64

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_1(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %DF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 15, !mcsema_real_eip !2
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !2
  store i32 35, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 7) to i32*), align 4, !mcsema_real_eip !2
  store i32 27, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 17) to i32*), align 4, !mcsema_real_eip !3
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 23) to i32*), align 4, !mcsema_real_eip !4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !5
  store i64 35, i64* %XAX, align 8, !mcsema_real_eip !6
  %1 = load i1, i1* %AF, align 1, !mcsema_real_eip !7
  %2 = zext i1 %1 to i64, !mcsema_real_eip !7
  %3 = load i1, i1* %DF, align 1, !mcsema_real_eip !7
  %4 = zext i1 %3 to i64, !mcsema_real_eip !7
  %5 = shl nuw nsw i64 %2, 4, !mcsema_real_eip !7
  %6 = shl nuw nsw i64 %4, 10, !mcsema_real_eip !7
  %7 = or i64 %5, %6
  %8 = or i64 %7, 582
  %RSP_val.4 = load i64, i64* %XSP, align 8, !mcsema_real_eip !7
  %9 = add i64 %RSP_val.4, -8
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  store i64 %8, i64* %10, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %XSP, align 8, !mcsema_real_eip !7
  %11 = load i64, i64* %10, align 8, !mcsema_real_eip !8
  store i64 %11, i64* %XAX, align 8, !mcsema_real_eip !8
  store i64 %RSP_val.4, i64* %XSP, align 8, !mcsema_real_eip !8
  %12 = add i64 %RSP_val.4, 8, !mcsema_real_eip !9
  %13 = inttoptr i64 %RSP_val.4 to i64*, !mcsema_real_eip !9
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !9
  store i64 %14, i64* %XIP, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

attributes #0 = { noinline norecurse nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 7}
!4 = !{i64 31}
!5 = !{i64 37}
!6 = !{i64 39}
!7 = !{i64 41}
!8 = !{i64 42}
!9 = !{i64 43}
