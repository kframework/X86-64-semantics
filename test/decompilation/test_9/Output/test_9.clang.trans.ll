; ModuleID = 'Output/test_9.clang.trans.bc'
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

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 0
  store i8* %_local_stack_start_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !2
  %1 = zext i32 %EAX_val.1 to i64, !mcsema_real_eip !2
  store i64 %1, i64* %XCX, !mcsema_real_eip !2
  store i1 false, i1* %CF, !mcsema_real_eip !3
  store i1 false, i1* %OF, !mcsema_real_eip !3
  store i1 false, i1* %SF, !mcsema_real_eip !3
  store i1 true, i1* %ZF, !mcsema_real_eip !3
  store i1 true, i1* %PF, !mcsema_real_eip !3
  store i1 undef, i1* %AF, !mcsema_real_eip !3
  store i64 0, i64* %XAX, !mcsema_real_eip !3
  %EAX_val.7 = load i32, i32* %EAX.0, !mcsema_real_eip !4
  %EAX_val.7.zext = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !4
  %2 = add i32 %EAX_val.7, 1, !mcsema_real_eip !4
  %3 = icmp eq i32 %2, 0, !mcsema_real_eip !4
  store i1 %3, i1* %ZF, !mcsema_real_eip !4
  %4 = trunc i32 %2 to i8, !mcsema_real_eip !4
  %5 = call i8 @llvm.ctpop.i8(i8 %4), !mcsema_real_eip !4
  %6 = trunc i8 %5 to i1, !mcsema_real_eip !4
  %7 = xor i1 %6, true, !mcsema_real_eip !4
  store i1 %7, i1* %PF, !mcsema_real_eip !4
  %8 = lshr i32 %2, 31, !mcsema_real_eip !4
  %9 = trunc i32 %8 to i1, !mcsema_real_eip !4
  store i1 %9, i1* %SF, !mcsema_real_eip !4
  %10 = xor i32 %EAX_val.7, 1, !mcsema_real_eip !4
  %11 = xor i32 %10, -1, !mcsema_real_eip !4
  %12 = xor i32 %EAX_val.7, %2, !mcsema_real_eip !4
  %13 = and i32 %11, %12, !mcsema_real_eip !4
  %14 = lshr i32 %13, 31, !mcsema_real_eip !4
  %15 = and i32 %14, 1, !mcsema_real_eip !4
  %16 = trunc i32 %15 to i1, !mcsema_real_eip !4
  store i1 %16, i1* %OF, !mcsema_real_eip !4
  %17 = zext i32 %2 to i64, !mcsema_real_eip !4
  store i64 %17, i64* %XAX, !mcsema_real_eip !4
  %EAX_val.11 = load i32, i32* %EAX.0, !mcsema_real_eip !4
  %EAX_val.11.zext = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !4
  %18 = xor i64 %EAX_val.7.zext, %EAX_val.11.zext, !mcsema_real_eip !4
  %19 = xor i64 %18, 1, !mcsema_real_eip !4
  %20 = and i64 %19, 16, !mcsema_real_eip !4
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !4
  store i1 %21, i1* %AF, !mcsema_real_eip !4
  %EBX.12 = bitcast i64* %XBX to i32*, !mcsema_real_eip !5
  %EBX_val.13 = load i32, i32* %EBX.12, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XBX, !mcsema_real_eip !5
  br label %block_0x9, !mcsema_real_eip !6

block_0x9:                                        ; preds = %block_0xd, %block_0x1
  %EBX_val.17 = load i32, i32* %EBX.12, !mcsema_real_eip !6
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !6
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !6
  %22 = sub i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %23 = xor i32 %22, %EBX_val.17, !mcsema_real_eip !6
  %24 = xor i32 %23, %ECX_val.19, !mcsema_real_eip !6
  %25 = and i32 %24, 16, !mcsema_real_eip !6
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !6
  store i1 %26, i1* %AF, !mcsema_real_eip !6
  %27 = trunc i32 %22 to i8, !mcsema_real_eip !6
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !6
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !6
  %30 = xor i1 %29, true, !mcsema_real_eip !6
  store i1 %30, i1* %PF, !mcsema_real_eip !6
  %31 = icmp eq i32 %22, 0, !mcsema_real_eip !6
  store i1 %31, i1* %ZF, !mcsema_real_eip !6
  %32 = lshr i32 %22, 31, !mcsema_real_eip !6
  %33 = trunc i32 %32 to i1, !mcsema_real_eip !6
  store i1 %33, i1* %SF, !mcsema_real_eip !6
  %34 = icmp ult i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  store i1 %34, i1* %CF, !mcsema_real_eip !6
  %35 = xor i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %36 = and i32 %35, %23, !mcsema_real_eip !6
  %37 = lshr i32 %36, 31, !mcsema_real_eip !6
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !6
  store i1 %38, i1* %OF, !mcsema_real_eip !6
  br i1 %31, label %block_0x13, label %block_0xd, !mcsema_real_eip !7

block_0xd:                                        ; preds = %block_0x9
  %EAX_val.22 = load i32, i32* %EAX.0, !mcsema_real_eip !8
  %39 = add i32 %EAX_val.22, %EAX_val.22, !mcsema_real_eip !8
  %40 = xor i32 %39, %EAX_val.22, !mcsema_real_eip !8
  %41 = and i32 %39, 16, !mcsema_real_eip !8
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !8
  store i1 %42, i1* %AF, !mcsema_real_eip !8
  %43 = lshr i32 %39, 31, !mcsema_real_eip !8
  %44 = trunc i32 %43 to i1, !mcsema_real_eip !8
  store i1 %44, i1* %SF, !mcsema_real_eip !8
  %45 = icmp eq i32 %39, 0, !mcsema_real_eip !8
  store i1 %45, i1* %ZF, !mcsema_real_eip !8
  %46 = lshr i32 %40, 31, !mcsema_real_eip !8
  %47 = and i32 %46, 1, !mcsema_real_eip !8
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !8
  store i1 %48, i1* %OF, !mcsema_real_eip !8
  %49 = trunc i32 %39 to i8, !mcsema_real_eip !8
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !8
  %51 = trunc i8 %50 to i1, !mcsema_real_eip !8
  %52 = xor i1 %51, true, !mcsema_real_eip !8
  store i1 %52, i1* %PF, !mcsema_real_eip !8
  %53 = icmp ult i32 %39, %EAX_val.22, !mcsema_real_eip !8
  store i1 %53, i1* %CF, !mcsema_real_eip !8
  %54 = zext i32 %39 to i64, !mcsema_real_eip !8
  store i64 %54, i64* %XAX, !mcsema_real_eip !8
  %EBX_val.26.zext = zext i32 %EBX_val.17 to i64, !mcsema_real_eip !9
  %55 = add i32 %EBX_val.17, 1, !mcsema_real_eip !9
  %56 = icmp eq i32 %55, 0, !mcsema_real_eip !9
  store i1 %56, i1* %ZF, !mcsema_real_eip !9
  %57 = trunc i32 %55 to i8, !mcsema_real_eip !9
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !9
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !9
  %60 = xor i1 %59, true, !mcsema_real_eip !9
  store i1 %60, i1* %PF, !mcsema_real_eip !9
  %61 = lshr i32 %55, 31, !mcsema_real_eip !9
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !9
  store i1 %62, i1* %SF, !mcsema_real_eip !9
  %63 = xor i32 %EBX_val.17, 1, !mcsema_real_eip !9
  %64 = xor i32 %63, -1, !mcsema_real_eip !9
  %65 = xor i32 %EBX_val.17, %55, !mcsema_real_eip !9
  %66 = and i32 %64, %65, !mcsema_real_eip !9
  %67 = lshr i32 %66, 31, !mcsema_real_eip !9
  %68 = and i32 %67, 1, !mcsema_real_eip !9
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !9
  store i1 %69, i1* %OF, !mcsema_real_eip !9
  %70 = zext i32 %55 to i64, !mcsema_real_eip !9
  store i64 %70, i64* %XBX, !mcsema_real_eip !9
  %EBX_val.30 = load i32, i32* %EBX.12, !mcsema_real_eip !9
  %EBX_val.30.zext = zext i32 %EBX_val.30 to i64, !mcsema_real_eip !9
  %71 = xor i64 %EBX_val.26.zext, %EBX_val.30.zext, !mcsema_real_eip !9
  %72 = xor i64 %71, 1, !mcsema_real_eip !9
  %73 = and i64 %72, 16, !mcsema_real_eip !9
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !9
  store i1 %74, i1* %AF, !mcsema_real_eip !9
  br label %block_0x9, !mcsema_real_eip !10

block_0x13:                                       ; preds = %block_0x9
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_ = getelementptr i8, i8* %_local_stack_start_ptr_, i64 8
  %75 = add i64 %RSP_val.20, 8, !mcsema_real_eip !11
  %_allin_new_bt_ = bitcast i8* %_local_stack_start_ptr_ to i64*
  %76 = load i64, i64* %_allin_new_bt_, !mcsema_real_eip !11
  store i64 %76, i64* %XIP, !mcsema_real_eip !11
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %75, i64* %XSP, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_1.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 0
  store i8* %_local_stack_start_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !2
  %1 = zext i32 %EAX_val.1 to i64, !mcsema_real_eip !2
  store i64 %1, i64* %XCX, !mcsema_real_eip !2
  store i1 false, i1* %CF, !mcsema_real_eip !3
  store i1 false, i1* %OF, !mcsema_real_eip !3
  store i1 false, i1* %SF, !mcsema_real_eip !3
  store i1 true, i1* %ZF, !mcsema_real_eip !3
  store i1 true, i1* %PF, !mcsema_real_eip !3
  store i1 undef, i1* %AF, !mcsema_real_eip !3
  store i64 0, i64* %XAX, !mcsema_real_eip !3
  %EAX_val.7 = load i32, i32* %EAX.0, !mcsema_real_eip !4
  %EAX_val.7.zext = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !4
  %2 = add i32 %EAX_val.7, 1, !mcsema_real_eip !4
  %3 = icmp eq i32 %2, 0, !mcsema_real_eip !4
  store i1 %3, i1* %ZF, !mcsema_real_eip !4
  %4 = trunc i32 %2 to i8, !mcsema_real_eip !4
  %5 = call i8 @llvm.ctpop.i8(i8 %4), !mcsema_real_eip !4
  %6 = trunc i8 %5 to i1, !mcsema_real_eip !4
  %7 = xor i1 %6, true, !mcsema_real_eip !4
  store i1 %7, i1* %PF, !mcsema_real_eip !4
  %8 = lshr i32 %2, 31, !mcsema_real_eip !4
  %9 = trunc i32 %8 to i1, !mcsema_real_eip !4
  store i1 %9, i1* %SF, !mcsema_real_eip !4
  %10 = xor i32 %EAX_val.7, 1, !mcsema_real_eip !4
  %11 = xor i32 %10, -1, !mcsema_real_eip !4
  %12 = xor i32 %EAX_val.7, %2, !mcsema_real_eip !4
  %13 = and i32 %11, %12, !mcsema_real_eip !4
  %14 = lshr i32 %13, 31, !mcsema_real_eip !4
  %15 = and i32 %14, 1, !mcsema_real_eip !4
  %16 = trunc i32 %15 to i1, !mcsema_real_eip !4
  store i1 %16, i1* %OF, !mcsema_real_eip !4
  %17 = zext i32 %2 to i64, !mcsema_real_eip !4
  store i64 %17, i64* %XAX, !mcsema_real_eip !4
  %EAX_val.11 = load i32, i32* %EAX.0, !mcsema_real_eip !4
  %EAX_val.11.zext = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !4
  %18 = xor i64 %EAX_val.7.zext, %EAX_val.11.zext, !mcsema_real_eip !4
  %19 = xor i64 %18, 1, !mcsema_real_eip !4
  %20 = and i64 %19, 16, !mcsema_real_eip !4
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !4
  store i1 %21, i1* %AF, !mcsema_real_eip !4
  %EBX.12 = bitcast i64* %XBX to i32*, !mcsema_real_eip !5
  %EBX_val.13 = load i32, i32* %EBX.12, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XBX, !mcsema_real_eip !5
  br label %block_0x9, !mcsema_real_eip !6

block_0x9:                                        ; preds = %block_0xd, %block_0x1
  %EBX_val.17 = load i32, i32* %EBX.12, !mcsema_real_eip !6
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !6
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !6
  %22 = sub i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %23 = xor i32 %22, %EBX_val.17, !mcsema_real_eip !6
  %24 = xor i32 %23, %ECX_val.19, !mcsema_real_eip !6
  %25 = and i32 %24, 16, !mcsema_real_eip !6
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !6
  store i1 %26, i1* %AF, !mcsema_real_eip !6
  %27 = trunc i32 %22 to i8, !mcsema_real_eip !6
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !6
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !6
  %30 = xor i1 %29, true, !mcsema_real_eip !6
  store i1 %30, i1* %PF, !mcsema_real_eip !6
  %31 = icmp eq i32 %22, 0, !mcsema_real_eip !6
  store i1 %31, i1* %ZF, !mcsema_real_eip !6
  %32 = lshr i32 %22, 31, !mcsema_real_eip !6
  %33 = trunc i32 %32 to i1, !mcsema_real_eip !6
  store i1 %33, i1* %SF, !mcsema_real_eip !6
  %34 = icmp ult i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  store i1 %34, i1* %CF, !mcsema_real_eip !6
  %35 = xor i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %36 = and i32 %35, %23, !mcsema_real_eip !6
  %37 = lshr i32 %36, 31, !mcsema_real_eip !6
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !6
  store i1 %38, i1* %OF, !mcsema_real_eip !6
  br i1 %31, label %block_0x13, label %block_0xd, !mcsema_real_eip !7

block_0xd:                                        ; preds = %block_0x9
  %EAX_val.22 = load i32, i32* %EAX.0, !mcsema_real_eip !8
  %39 = add i32 %EAX_val.22, %EAX_val.22, !mcsema_real_eip !8
  %40 = xor i32 %39, %EAX_val.22, !mcsema_real_eip !8
  %41 = and i32 %39, 16, !mcsema_real_eip !8
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !8
  store i1 %42, i1* %AF, !mcsema_real_eip !8
  %43 = lshr i32 %39, 31, !mcsema_real_eip !8
  %44 = trunc i32 %43 to i1, !mcsema_real_eip !8
  store i1 %44, i1* %SF, !mcsema_real_eip !8
  %45 = icmp eq i32 %39, 0, !mcsema_real_eip !8
  store i1 %45, i1* %ZF, !mcsema_real_eip !8
  %46 = lshr i32 %40, 31, !mcsema_real_eip !8
  %47 = and i32 %46, 1, !mcsema_real_eip !8
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !8
  store i1 %48, i1* %OF, !mcsema_real_eip !8
  %49 = trunc i32 %39 to i8, !mcsema_real_eip !8
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !8
  %51 = trunc i8 %50 to i1, !mcsema_real_eip !8
  %52 = xor i1 %51, true, !mcsema_real_eip !8
  store i1 %52, i1* %PF, !mcsema_real_eip !8
  %53 = icmp ult i32 %39, %EAX_val.22, !mcsema_real_eip !8
  store i1 %53, i1* %CF, !mcsema_real_eip !8
  %54 = zext i32 %39 to i64, !mcsema_real_eip !8
  store i64 %54, i64* %XAX, !mcsema_real_eip !8
  %EBX_val.26.zext = zext i32 %EBX_val.17 to i64, !mcsema_real_eip !9
  %55 = add i32 %EBX_val.17, 1, !mcsema_real_eip !9
  %56 = icmp eq i32 %55, 0, !mcsema_real_eip !9
  store i1 %56, i1* %ZF, !mcsema_real_eip !9
  %57 = trunc i32 %55 to i8, !mcsema_real_eip !9
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !9
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !9
  %60 = xor i1 %59, true, !mcsema_real_eip !9
  store i1 %60, i1* %PF, !mcsema_real_eip !9
  %61 = lshr i32 %55, 31, !mcsema_real_eip !9
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !9
  store i1 %62, i1* %SF, !mcsema_real_eip !9
  %63 = xor i32 %EBX_val.17, 1, !mcsema_real_eip !9
  %64 = xor i32 %63, -1, !mcsema_real_eip !9
  %65 = xor i32 %EBX_val.17, %55, !mcsema_real_eip !9
  %66 = and i32 %64, %65, !mcsema_real_eip !9
  %67 = lshr i32 %66, 31, !mcsema_real_eip !9
  %68 = and i32 %67, 1, !mcsema_real_eip !9
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !9
  store i1 %69, i1* %OF, !mcsema_real_eip !9
  %70 = zext i32 %55 to i64, !mcsema_real_eip !9
  store i64 %70, i64* %XBX, !mcsema_real_eip !9
  %EBX_val.30 = load i32, i32* %EBX.12, !mcsema_real_eip !9
  %EBX_val.30.zext = zext i32 %EBX_val.30 to i64, !mcsema_real_eip !9
  %71 = xor i64 %EBX_val.26.zext, %EBX_val.30.zext, !mcsema_real_eip !9
  %72 = xor i64 %71, 1, !mcsema_real_eip !9
  %73 = and i64 %72, 16, !mcsema_real_eip !9
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !9
  store i1 %74, i1* %AF, !mcsema_real_eip !9
  br label %block_0x9, !mcsema_real_eip !10

block_0x13:                                       ; preds = %block_0x9
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_ = getelementptr i8, i8* %_local_stack_start_ptr_, i64 8
  %75 = add i64 %RSP_val.20, 8, !mcsema_real_eip !11
  %_allin_new_bt_ = bitcast i8* %_local_stack_start_ptr_ to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_ to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_start_ptr_ to i64
  %_cond2_1_ = icmp ugt i8* %_local_stack_start_ptr_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_local_stack_start_ptr_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_parent_stack_start_ptr_, %_parent_stack_end_ptr_
  br i1 false, label %76, label %77

; <label>:76:                                     ; preds = %block_0x13
  %_address_in_parent_stack_bt_ = bitcast i8* %_parent_stack_start_ptr_ to i64*
  br label %77

; <label>:77:                                     ; preds = %block_0x13, %76
  %78 = phi i64* [ %_allin_new_bt_, %block_0x13 ], [ %_address_in_parent_stack_bt_, %76 ]
  %_new_load_ = load i64, i64* %78
  store i64 %_new_load_, i64* %XIP, !mcsema_real_eip !11
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %75, i64* %XSP, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 3}
!4 = !{i64 5}
!5 = !{i64 7}
!6 = !{i64 9}
!7 = !{i64 11}
!8 = !{i64 13}
!9 = !{i64 15}
!10 = !{i64 17}
!11 = !{i64 19}
