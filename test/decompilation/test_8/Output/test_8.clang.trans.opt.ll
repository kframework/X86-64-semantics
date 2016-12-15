; ModuleID = 'Output/test_8.clang.trans.opt.bc'
source_filename = "Output/test_8.clang.bc"
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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_1(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_local_stack_start_ptr_1 = alloca [0 x i8], align 8
  %_RSP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1.sub = getelementptr inbounds [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  store i8* %_local_stack_start_ptr_1.sub, i8** %_RSP_ptr_, align 8
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
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, align 4, !mcsema_real_eip !2
  %1 = add i32 %EAX_val.1, 1, !mcsema_real_eip !2
  %2 = xor i32 %1, %EAX_val.1, !mcsema_real_eip !2
  %3 = and i32 %2, 16, !mcsema_real_eip !2
  %4 = icmp ne i32 %3, 0, !mcsema_real_eip !2
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !2
  %5 = icmp slt i32 %1, 0
  store i1 %5, i1* %SF, align 1, !mcsema_real_eip !2
  %6 = icmp eq i32 %1, 0, !mcsema_real_eip !2
  store i1 %6, i1* %ZF, align 1, !mcsema_real_eip !2
  %7 = xor i32 %EAX_val.1, -2147483648, !mcsema_real_eip !2
  %8 = and i32 %2, %7, !mcsema_real_eip !2
  %9 = icmp slt i32 %8, 0
  store i1 %9, i1* %OF, align 1, !mcsema_real_eip !2
  %10 = trunc i32 %1 to i8, !mcsema_real_eip !2
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !2
  %14 = icmp eq i32 %EAX_val.1, -1
  store i1 %14, i1* %CF, align 1, !mcsema_real_eip !2
  %15 = zext i32 %1 to i64, !mcsema_real_eip !2
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, align 8, !mcsema_real_eip !3
  %_new_gep_ = getelementptr [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %16 = add i64 %RSP_val.2, 8, !mcsema_real_eip !3
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !3
  ret void, !mcsema_real_eip !3
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_1.1(%RegState* nocapture, i8* nocapture readnone %_parent_stack_start_ptr_, i8* nocapture readnone %_parent_stack_end_ptr_, i8* nocapture readnone %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_local_stack_start_ptr_1 = alloca [0 x i8], align 8
  %_RSP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1.sub = getelementptr inbounds [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  store i8* %_local_stack_start_ptr_1.sub, i8** %_RSP_ptr_, align 8
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
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, align 4, !mcsema_real_eip !2
  %1 = add i32 %EAX_val.1, 1, !mcsema_real_eip !2
  %2 = xor i32 %1, %EAX_val.1, !mcsema_real_eip !2
  %3 = and i32 %2, 16, !mcsema_real_eip !2
  %4 = icmp ne i32 %3, 0, !mcsema_real_eip !2
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !2
  %5 = icmp slt i32 %1, 0
  store i1 %5, i1* %SF, align 1, !mcsema_real_eip !2
  %6 = icmp eq i32 %1, 0, !mcsema_real_eip !2
  store i1 %6, i1* %ZF, align 1, !mcsema_real_eip !2
  %7 = xor i32 %EAX_val.1, -2147483648, !mcsema_real_eip !2
  %8 = and i32 %2, %7, !mcsema_real_eip !2
  %9 = icmp slt i32 %8, 0
  store i1 %9, i1* %OF, align 1, !mcsema_real_eip !2
  %10 = trunc i32 %1 to i8, !mcsema_real_eip !2
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !2
  %14 = icmp eq i32 %EAX_val.1, -1
  store i1 %14, i1* %CF, align 1, !mcsema_real_eip !2
  %15 = zext i32 %1 to i64, !mcsema_real_eip !2
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, align 8, !mcsema_real_eip !3
  %_new_gep_ = getelementptr [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %16 = add i64 %RSP_val.2, 8, !mcsema_real_eip !3
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !3
  ret void, !mcsema_real_eip !3
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 4}
