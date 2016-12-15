; ModuleID = 'Output/test_9.clang.trans.opt.bc'
source_filename = "Output/test_9.clang.bc"
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
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %1 = zext i32 %EAX_val.1 to i64, !mcsema_real_eip !2
  store i64 %1, i64* %XCX, align 8, !mcsema_real_eip !2
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !3
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !3
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !4
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !4
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !4
  %2 = sub i32 0, %EAX_val.1, !mcsema_real_eip !5
  %3 = icmp eq i32 %EAX_val.1, 0
  br i1 %3, label %block_0x13, label %block_0xd.preheader, !mcsema_real_eip !6

block_0xd.preheader:                              ; preds = %entry
  br label %block_0xd

block_0xd:                                        ; preds = %block_0xd.preheader, %block_0xd
  %EBX_val.1714 = phi i32 [ %6, %block_0xd ], [ 0, %block_0xd.preheader ]
  %EAX_val.2213 = phi i32 [ %4, %block_0xd ], [ 1, %block_0xd.preheader ]
  %4 = shl i32 %EAX_val.2213, 1
  %5 = zext i32 %4 to i64, !mcsema_real_eip !7
  %6 = add i32 %EBX_val.1714, 1, !mcsema_real_eip !8
  %7 = sub i32 %6, %EAX_val.1, !mcsema_real_eip !5
  %8 = icmp eq i32 %7, 0, !mcsema_real_eip !5
  br i1 %8, label %block_0x9.block_0x13_crit_edge, label %block_0xd, !mcsema_real_eip !6

block_0x9.block_0x13_crit_edge:                   ; preds = %block_0xd
  store i64 %5, i64* %XAX, align 8
  %9 = zext i32 %6 to i64, !mcsema_real_eip !8
  br label %block_0x13

block_0x13:                                       ; preds = %block_0x9.block_0x13_crit_edge, %entry
  %storemerge.lcssa = phi i64 [ %9, %block_0x9.block_0x13_crit_edge ], [ 0, %entry ]
  %EBX_val.17.lcssa = phi i32 [ %6, %block_0x9.block_0x13_crit_edge ], [ 0, %entry ]
  %.lcssa = phi i32 [ %7, %block_0x9.block_0x13_crit_edge ], [ %2, %entry ]
  store i64 %storemerge.lcssa, i64* %XBX, align 8
  %10 = xor i32 %.lcssa, %EBX_val.17.lcssa, !mcsema_real_eip !5
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %11 = xor i32 %10, %EAX_val.1, !mcsema_real_eip !5
  %12 = and i32 %11, 16, !mcsema_real_eip !5
  %13 = icmp ne i32 %12, 0, !mcsema_real_eip !5
  %14 = icmp ult i32 %EBX_val.17.lcssa, %EAX_val.1, !mcsema_real_eip !5
  %15 = xor i32 %EAX_val.1, %EBX_val.17.lcssa, !mcsema_real_eip !5
  %16 = and i32 %10, %15, !mcsema_real_eip !5
  %17 = icmp slt i32 %16, 0
  store i1 %13, i1* %AF, align 1
  store i1 true, i1* %PF, align 1
  store i1 true, i1* %ZF, align 1
  store i1 false, i1* %SF, align 1
  store i1 %14, i1* %CF, align 1
  store i1 %17, i1* %OF, align 1
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_ = getelementptr [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %18 = add i64 %RSP_val.20, 8, !mcsema_real_eip !9
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_1.1(%RegState* nocapture, i8* nocapture readnone %_parent_stack_start_ptr_, i8* nocapture readnone %_parent_stack_end_ptr_, i8* nocapture readnone %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_local_stack_start_ptr_1 = alloca [0 x i8], align 8
  %_RSP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1.sub = getelementptr inbounds [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  store i8* %_local_stack_start_ptr_1.sub, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %1 = zext i32 %EAX_val.1 to i64, !mcsema_real_eip !2
  store i64 %1, i64* %XCX, align 8, !mcsema_real_eip !2
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !3
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !3
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !4
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !4
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !4
  %2 = sub i32 0, %EAX_val.1, !mcsema_real_eip !5
  %3 = icmp eq i32 %EAX_val.1, 0
  br i1 %3, label %block_0x13, label %block_0xd.preheader, !mcsema_real_eip !6

block_0xd.preheader:                              ; preds = %entry
  br label %block_0xd

block_0xd:                                        ; preds = %block_0xd.preheader, %block_0xd
  %EBX_val.1714 = phi i32 [ %6, %block_0xd ], [ 0, %block_0xd.preheader ]
  %EAX_val.2213 = phi i32 [ %4, %block_0xd ], [ 1, %block_0xd.preheader ]
  %4 = shl i32 %EAX_val.2213, 1
  %5 = zext i32 %4 to i64, !mcsema_real_eip !7
  %6 = add i32 %EBX_val.1714, 1, !mcsema_real_eip !8
  %7 = sub i32 %6, %EAX_val.1, !mcsema_real_eip !5
  %8 = icmp eq i32 %7, 0, !mcsema_real_eip !5
  br i1 %8, label %block_0x9.block_0x13_crit_edge, label %block_0xd, !mcsema_real_eip !6

block_0x9.block_0x13_crit_edge:                   ; preds = %block_0xd
  store i64 %5, i64* %XAX, align 8
  %9 = zext i32 %6 to i64, !mcsema_real_eip !8
  br label %block_0x13

block_0x13:                                       ; preds = %block_0x9.block_0x13_crit_edge, %entry
  %storemerge.lcssa = phi i64 [ %9, %block_0x9.block_0x13_crit_edge ], [ 0, %entry ]
  %EBX_val.17.lcssa = phi i32 [ %6, %block_0x9.block_0x13_crit_edge ], [ 0, %entry ]
  %.lcssa = phi i32 [ %7, %block_0x9.block_0x13_crit_edge ], [ %2, %entry ]
  store i64 %storemerge.lcssa, i64* %XBX, align 8
  %10 = xor i32 %.lcssa, %EBX_val.17.lcssa, !mcsema_real_eip !5
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %11 = xor i32 %10, %EAX_val.1, !mcsema_real_eip !5
  %12 = and i32 %11, 16, !mcsema_real_eip !5
  %13 = icmp ne i32 %12, 0, !mcsema_real_eip !5
  %14 = icmp ult i32 %EBX_val.17.lcssa, %EAX_val.1, !mcsema_real_eip !5
  %15 = xor i32 %EAX_val.1, %EBX_val.17.lcssa, !mcsema_real_eip !5
  %16 = and i32 %10, %15, !mcsema_real_eip !5
  %17 = icmp slt i32 %16, 0
  store i1 %13, i1* %AF, align 1
  store i1 true, i1* %PF, align 1
  store i1 true, i1* %ZF, align 1
  store i1 false, i1* %SF, align 1
  store i1 %14, i1* %CF, align 1
  store i1 %17, i1* %OF, align 1
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_ = getelementptr [0 x i8], [0 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %18 = add i64 %RSP_val.20, 8, !mcsema_real_eip !9
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

attributes #0 = { noinline nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 5}
!4 = !{i64 7}
!5 = !{i64 9}
!6 = !{i64 11}
!7 = !{i64 13}
!8 = !{i64 15}
!9 = !{i64 19}
