; ModuleID = 'Output/test_3.clang.trans.opt.bc'
source_filename = "Output/test_3.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [40 x i8] }>
%1 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc0 = internal constant %0 <{ [40 x i8] c"\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0xe8 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %10, align 4, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %11 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !8
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
  %tmp = xor i1 %28, %32
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
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %63 = add i64 %RBP_val.24, -20, !mcsema_real_eip !16
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
  store i32 %66, i32* %64, align 4, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %81 = load i32, i32* %34, align 4, !mcsema_real_eip !20
  %82 = zext i32 %81 to i64, !mcsema_real_eip !20
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !20
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %83 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !21
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !21
  store i64 %84, i64* %XBP, align 8, !mcsema_real_eip !21
  %85 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !21
  %86 = add i64 %RSP_val.31, 16, !mcsema_real_eip !22
  %87 = inttoptr i64 %85 to i64*, !mcsema_real_eip !22
  %88 = load i64, i64* %87, align 8, !mcsema_real_eip !22
  store i64 %88, i64* %XIP, align 8, !mcsema_real_eip !22
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !23
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !23
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !23
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !23
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !23
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !23
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !23
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !23
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !23
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !23
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !23
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !23
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !23
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !23
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !23
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !23
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !23
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !23
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !23
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !23
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !23
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !23
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !24
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.34, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !25
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !25
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !25
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !25
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !25
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !25
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !25
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %13 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !26
  %14 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0xc0 to i64), i64 40>, <2 x i64>* %14, align 8
  %_new_gep_17 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 84
  %15 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !27
  store i64 %13, i64* %XDI, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !29
  %16 = bitcast i8* %_new_gep_20 to i32*
  store i32 10, i32* %16, align 8, !mcsema_real_eip !29
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XSI, align 8, !mcsema_real_eip !30
  %_new_gep_23 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %13, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !31
  %_new_gep_26 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %17 = add i64 %RSP_val.34, -96
  %_allin_new_bt_27 = bitcast [96 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !32
  %18 = call x86_64_sysvcc i64 @_memcpy(i64 %13, i64 ptrtoint (%0* @data_0xc0 to i64), i64 40)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286, i64 -64
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %19 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !33
  store i64 %19, i64* %XDI, align 8, !mcsema_real_eip !33
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286, i64 -56
  %20 = bitcast i8* %_new_gep_32 to i32*
  %21 = load i32, i32* %20, align 4, !mcsema_real_eip !34
  %22 = zext i32 %21 to i64, !mcsema_real_eip !34
  store i64 %22, i64* %XSI, align 8, !mcsema_real_eip !34
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %23 = add i64 %RSP_val.52, -8
  %_allin_new_bt_36 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !35
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_867 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_867)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_88, i64 8
  store i8* %_gep_fix_89, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378, i64 -52
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.55 = load i32, i32* %EAX.54, align 4, !mcsema_real_eip !37
  %24 = bitcast i8* %_new_gep_38 to i32*
  store i32 %EAX_val.55, i32* %24, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_409 = load i8*, i8** %12, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_409, i64 -52
  %25 = bitcast i8* %_new_gep_41 to i32*
  %26 = load i32, i32* %25, align 4, !mcsema_real_eip !38
  %27 = zext i32 %26 to i64, !mcsema_real_eip !38
  store i64 %27, i64* %XSI, align 8, !mcsema_real_eip !38
  %AL.57 = bitcast i64* %XAX to i8*, !mcsema_real_eip !39
  store i8 0, i8* %AL.57, align 1, !mcsema_real_eip !39
  %RDI_val.58 = load i64, i64* %XDI, align 8, !mcsema_real_eip !40
  %RDX_val.60 = load i64, i64* %XDX, align 8, !mcsema_real_eip !40
  %RCX_val.61 = load i64, i64* %XCX, align 8, !mcsema_real_eip !40
  %R8_val.62 = load i64, i64* %R8, align 8, !mcsema_real_eip !40
  %R9_val.63 = load i64, i64* %R9, align 8, !mcsema_real_eip !40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_44 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43 to i64*
  %28 = load i64, i64* %_allin_new_bt_44, align 8, !mcsema_real_eip !40
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %29 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !40
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 16
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %30 = load i64, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !40
  %_new_gep_49 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 24
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %31 = load i64, i64* %_allin_new_bt_50, align 8, !mcsema_real_eip !40
  %_new_gep_51 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 32
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %32 = load i64, i64* %_allin_new_bt_52, align 8, !mcsema_real_eip !40
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 40
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %33 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !40
  %RSP_val.65 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 -8
  %34 = add i64 %RSP_val.65, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !40
  %35 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.58, i64 %27, i64 %RDX_val.60, i64 %RCX_val.61, i64 %R8_val.62, i64 %R9_val.63, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_90 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_91 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_90, i64 8
  store i8* %_gep_fix_91, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5810 = load i8*, i8** %12, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5810, i64 -52
  %36 = bitcast i8* %_new_gep_59 to i32*
  %37 = load i32, i32* %36, align 4, !mcsema_real_eip !41
  %38 = zext i32 %37 to i64, !mcsema_real_eip !41
  store i64 %38, i64* %XSI, align 8, !mcsema_real_eip !41
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5810, i64 -68
  %39 = trunc i64 %35 to i32
  %40 = bitcast i8* %_new_gep_62 to i32*
  store i32 %39, i32* %40, align 4, !mcsema_real_eip !42
  %ESI_val.71 = load i32, i32* %ESI.41, align 4, !mcsema_real_eip !43
  %41 = zext i32 %ESI_val.71 to i64, !mcsema_real_eip !43
  store i64 %41, i64* %XAX, align 8, !mcsema_real_eip !43
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 80
  %42 = add i64 %RSP_val.72, 80, !mcsema_real_eip !44
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %43 = and i64 %_trans_xor_68, 16
  %44 = icmp eq i64 %43, 0
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !44
  %45 = icmp slt i64 %42, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !44
  %_trans_icmp_eq_70 = icmp eq i8* %_new_gep_65, null
  store i1 %_trans_icmp_eq_70, i1* %ZF, align 1, !mcsema_real_eip !44
  %46 = xor i64 %_trans_p2i_67, -9223372036854775808, !mcsema_real_eip !44
  %47 = and i64 %_trans_xor_68, %46, !mcsema_real_eip !44
  %48 = icmp slt i64 %47, 0
  store i1 %48, i1* %OF, align 1, !mcsema_real_eip !44
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %49 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !44
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !44
  %_trans_icmp_ne_79 = icmp ne i64 %RSP_val.72, %_trans_p2i_66
  store i1 %_trans_icmp_ne_79, i1* %CF, align 1, !mcsema_real_eip !44
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !44
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %52 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !45
  store volatile i64 %52, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %52, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 88
  %53 = add i64 %RSP_val.72, 88, !mcsema_real_eip !45
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 96
  %54 = add i64 %RSP_val.72, 96, !mcsema_real_eip !46
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %55 = load i64, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !46
  store i64 %55, i64* %XIP, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [28 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, align 4, !mcsema_real_eip !5
  %2 = bitcast i8* %_new_gep_6 to i32*
  store i32 %ESI_val.7, i32* %2, align 4, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %3 = bitcast i8* %_new_gep_9 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !6
  %4 = bitcast [28 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 0, i32* %4, align 4, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14.pre, %block_0x25 ], [ %_new_gep_, %entry ]
  %_new_gep_15 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -20
  %5 = ptrtoint i8* %_new_gep_15 to i64
  %_offset_above_rbp_ = sub i64 %5, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_15
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %6 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %6, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -12
  %7 = ptrtoint i8* %_new_gep_18 to i64
  %_offset_above_rbp_50 = sub i64 %7, %_local_end_to_int_
  %_pot_address_in_parent_stack_51 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_50
  %_cond1_52 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_53 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_54 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_55 = or i1 %_cond2_1_53, %_cond2_2_54
  %_cond4_56 = icmp ule i8* %_pot_address_in_parent_stack_51, %_parent_stack_end_ptr_
  %_cond1_n_cond2_57 = and i1 %_cond1_52, %_cond2_55
  %_cond1_n_cond2_cond3_58 = and i1 %_cond1_n_cond2_57, %_cond4_56
  %.v = select i1 %_cond1_n_cond2_cond3_58, i8* %_pot_address_in_parent_stack_51, i8* %_new_gep_18
  %8 = bitcast i8* %.v to i32*
  %_new_load_61 = load i32, i32* %8, align 4
  %9 = sub i32 %_new_load_, %_new_load_61, !mcsema_real_eip !9
  %10 = xor i32 %9, %_new_load_, !mcsema_real_eip !9
  %11 = xor i32 %10, %_new_load_61, !mcsema_real_eip !9
  %12 = and i32 %11, 16, !mcsema_real_eip !9
  %13 = icmp ne i32 %12, 0, !mcsema_real_eip !9
  store i1 %13, i1* %AF, align 1, !mcsema_real_eip !9
  %14 = trunc i32 %9 to i8, !mcsema_real_eip !9
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !9
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !9
  %18 = icmp eq i32 %9, 0, !mcsema_real_eip !9
  store i1 %18, i1* %ZF, align 1, !mcsema_real_eip !9
  %19 = icmp slt i32 %9, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !9
  %20 = icmp ult i32 %_new_load_, %_new_load_61, !mcsema_real_eip !9
  store i1 %20, i1* %CF, align 1, !mcsema_real_eip !9
  %21 = xor i32 %_new_load_61, %_new_load_, !mcsema_real_eip !9
  %22 = and i32 %10, %21, !mcsema_real_eip !9
  %23 = icmp slt i32 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp = xor i1 %19, %23
  br i1 %tmp, label %block_0x25, label %block_0x44, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -8
  %_ptr_to_int_62 = ptrtoint i8* %_new_gep_21 to i64
  %_offset_above_rbp_65 = sub i64 %_ptr_to_int_62, %_local_end_to_int_
  %_pot_address_in_parent_stack_66 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_65
  %_cond1_67 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_68 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_69 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_70 = or i1 %_cond2_1_68, %_cond2_2_69
  %_cond4_71 = icmp ule i8* %_pot_address_in_parent_stack_66, %_parent_stack_end_ptr_
  %_cond1_n_cond2_72 = and i1 %_cond1_67, %_cond2_70
  %_cond1_n_cond2_cond3_73 = and i1 %_cond1_n_cond2_72, %_cond4_71
  %_address_in_parent_stack_bt_75._allin_new_bt_22.v = select i1 %_cond1_n_cond2_cond3_73, i8* %_pot_address_in_parent_stack_66, i8* %_new_gep_21
  %_address_in_parent_stack_bt_75._allin_new_bt_22 = bitcast i8* %_address_in_parent_stack_bt_75._allin_new_bt_22.v to i64*
  %_new_load_76 = load i64, i64* %_address_in_parent_stack_bt_75._allin_new_bt_22, align 8
  store i64 %_new_load_76, i64* %XAX, align 8, !mcsema_real_eip !11
  %_new_load_91 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %24 = sext i32 %_new_load_91 to i64, !mcsema_real_eip !12
  store i64 %24, i64* %XCX, align 8, !mcsema_real_eip !12
  %25 = shl nsw i64 %24, 2
  %26 = add i64 %25, %_new_load_76, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !13
  %_ptr_bt_94 = inttoptr i64 %26 to i8*
  %_offset_above_rbp_95 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_94
  %_cond2_1_98 = icmp ugt i8* %_ptr_bt_94, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_ptr_bt_94, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond4_101, %_cond1_n_cond2_102
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i32*
  %_address_in_parent_stack_bt_105. = select i1 %_cond1_n_cond2_cond3_103, i32* %_address_in_parent_stack_bt_105, i32* %27
  %_new_load_106 = load i32, i32* %_address_in_parent_stack_bt_105., align 4
  %28 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !13
  store i64 %28, i64* %XDX, align 8, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -16
  %29 = ptrtoint i8* %_new_gep_27 to i64
  %30 = bitcast i8* %_new_gep_27 to i32*
  %_offset_above_rbp_110 = sub i64 %29, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i32*
  %31 = select i1 %_cond1_n_cond2_cond3_118, i32* %_address_in_parent_stack_bt_120, i32* %30
  %_new_load_121 = load i32, i32* %31, align 4
  %32 = add i32 %_new_load_106, %_new_load_121, !mcsema_real_eip !14
  %33 = xor i32 %32, %_new_load_121, !mcsema_real_eip !14
  %34 = xor i32 %33, %_new_load_106, !mcsema_real_eip !14
  %35 = and i32 %34, 16, !mcsema_real_eip !14
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !14
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !14
  %37 = icmp slt i32 %32, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !14
  %38 = icmp eq i32 %32, 0, !mcsema_real_eip !14
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !14
  %39 = xor i32 %_new_load_121, -2147483648, !mcsema_real_eip !14
  %40 = xor i32 %39, %_new_load_106, !mcsema_real_eip !14
  %41 = and i32 %33, %40, !mcsema_real_eip !14
  %42 = icmp slt i32 %41, 0
  store i1 %42, i1* %OF, align 1, !mcsema_real_eip !14
  %43 = trunc i32 %32 to i8, !mcsema_real_eip !14
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !14
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !14
  %47 = icmp ult i32 %32, %_new_load_121, !mcsema_real_eip !14
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !14
  %48 = zext i32 %32 to i64, !mcsema_real_eip !14
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !14
  store i32 %32, i32* %30, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_32, i64 -20
  %49 = ptrtoint i8* %_new_gep_33 to i64
  %50 = bitcast i8* %_new_gep_33 to i32*
  %_offset_above_rbp_125 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i32*
  %_address_in_parent_stack_bt_135. = select i1 %_cond1_n_cond2_cond3_133, i32* %_address_in_parent_stack_bt_135, i32* %50
  %_new_load_136 = load i32, i32* %_address_in_parent_stack_bt_135., align 4
  %51 = add i32 %_new_load_136, 1, !mcsema_real_eip !17
  %52 = xor i32 %51, %_new_load_136, !mcsema_real_eip !17
  %53 = and i32 %52, 16, !mcsema_real_eip !17
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !17
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !17
  %55 = icmp slt i32 %51, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !17
  %56 = icmp eq i32 %51, 0, !mcsema_real_eip !17
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !17
  %57 = xor i32 %_new_load_136, -2147483648, !mcsema_real_eip !17
  %58 = and i32 %52, %57, !mcsema_real_eip !17
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !17
  %60 = trunc i32 %51 to i8, !mcsema_real_eip !17
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !17
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !17
  %64 = icmp eq i32 %_new_load_136, -1
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !17
  %65 = zext i32 %51 to i64, !mcsema_real_eip !17
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %51, i32* %50, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -16
  %66 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_140 = sub i64 %66, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  %_address_in_parent_stack_bt_150..v = select i1 %_cond1_n_cond2_cond3_148, i8* %_pot_address_in_parent_stack_141, i8* %_new_gep_39
  %_address_in_parent_stack_bt_150. = bitcast i8* %_address_in_parent_stack_bt_150..v to i32*
  %_new_load_151 = load i32, i32* %_address_in_parent_stack_bt_150., align 4
  %67 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !20
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_ptr_to_int_152 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %.v2 = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41
  %68 = bitcast i8* %.v2 to i64*
  %_new_load_166 = load i64, i64* %68, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_166 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_166, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 8
  %69 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 16
  %70 = add i64 %RSP_val.31, 16, !mcsema_real_eip !22
  %_ptr_to_int_167 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %_address_in_parent_stack_bt_180._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_43
  %_address_in_parent_stack_bt_180._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_180._allin_new_bt_46.v to i64*
  %_new_load_181 = load i64, i64* %_address_in_parent_stack_bt_180._allin_new_bt_46, align 8
  store i64 %_new_load_181, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !23
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !23
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !23
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !23
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !23
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !23
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !23
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !23
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !23
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !23
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !23
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !23
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !23
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !23
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !23
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !23
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !23
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !23
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !23
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !23
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !23
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !23
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !24
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.34, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !25
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !25
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !25
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !25
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !25
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !25
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !25
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %11 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %11, i64* %XAX, align 8, !mcsema_real_eip !26
  %12 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0xc0 to i64), i64 40>, <2 x i64>* %12, align 8
  %_new_gep_17 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 84
  %13 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !27
  store i64 %11, i64* %XDI, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !29
  %14 = bitcast i8* %_new_gep_20 to i32*
  store i32 10, i32* %14, align 8, !mcsema_real_eip !29
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XSI, align 8, !mcsema_real_eip !30
  %_new_gep_23 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %11, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !31
  %_new_gep_26 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %15 = add i64 %RSP_val.34, -96
  %_allin_new_bt_27 = bitcast [96 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !32
  %16 = call x86_64_sysvcc i64 @_memcpy(i64 %11, i64 ptrtoint (%0* @data_0xc0 to i64), i64 40)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -64
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_29 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_29
  %17 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %17, align 8
  store i64 %_new_load_, i64* %XDI, align 8, !mcsema_real_eip !33
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -56
  %18 = ptrtoint i8* %_new_gep_32 to i64
  %_offset_above_rbp_95 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  %_address_in_parent_stack_bt_105..v = select i1 %_cond1_n_cond2_cond3_103, i8* %_pot_address_in_parent_stack_96, i8* %_new_gep_32
  %_address_in_parent_stack_bt_105. = bitcast i8* %_address_in_parent_stack_bt_105..v to i32*
  %_new_load_106 = load i32, i32* %_address_in_parent_stack_bt_105., align 4
  %19 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !34
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !34
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %20 = add i64 %RSP_val.52, -8
  %_allin_new_bt_36 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !35
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_88, i64 8
  store i8* %_gep_fix_89, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -52
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.55 = load i32, i32* %EAX.54, align 4, !mcsema_real_eip !37
  %21 = bitcast i8* %_new_gep_38 to i32*
  store i32 %EAX_val.55, i32* %21, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -52
  %22 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_110 = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %.v2 = select i1 %_cond1_n_cond2_cond3_118, i8* %_pot_address_in_parent_stack_111, i8* %_new_gep_41
  %23 = bitcast i8* %.v2 to i32*
  %_new_load_121 = load i32, i32* %23, align 4
  %24 = zext i32 %_new_load_121 to i64, !mcsema_real_eip !38
  store i64 %24, i64* %XSI, align 8, !mcsema_real_eip !38
  %AL.57 = bitcast i64* %XAX to i8*, !mcsema_real_eip !39
  store i8 0, i8* %AL.57, align 1, !mcsema_real_eip !39
  %RDI_val.58 = load i64, i64* %XDI, align 8, !mcsema_real_eip !40
  %RDX_val.60 = load i64, i64* %XDX, align 8, !mcsema_real_eip !40
  %RCX_val.61 = load i64, i64* %XCX, align 8, !mcsema_real_eip !40
  %R8_val.62 = load i64, i64* %R8, align 8, !mcsema_real_eip !40
  %R9_val.63 = load i64, i64* %R9, align 8, !mcsema_real_eip !40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_122 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43 to i64
  %_offset_above_rbp_125 = sub i64 %_ptr_to_int_122, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135._allin_new_bt_44.v = select i1 %_cond1_n_cond2_cond3_133, i8* %_pot_address_in_parent_stack_126, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43
  %_address_in_parent_stack_bt_135._allin_new_bt_44 = bitcast i8* %_address_in_parent_stack_bt_135._allin_new_bt_44.v to i64*
  %_new_load_136 = load i64, i64* %_address_in_parent_stack_bt_135._allin_new_bt_44, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 8
  %_ptr_to_int_137 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_140 = sub i64 %_ptr_to_int_137, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  %.v3 = select i1 %_cond1_n_cond2_cond3_148, i8* %_pot_address_in_parent_stack_141, i8* %_new_gep_45
  %25 = bitcast i8* %.v3 to i64*
  %_new_load_151 = load i64, i64* %25, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 16
  %_ptr_to_int_152 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %_address_in_parent_stack_bt_165._allin_new_bt_48.v = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_new_gep_47
  %_address_in_parent_stack_bt_165._allin_new_bt_48 = bitcast i8* %_address_in_parent_stack_bt_165._allin_new_bt_48.v to i64*
  %_new_load_166 = load i64, i64* %_address_in_parent_stack_bt_165._allin_new_bt_48, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 24
  %_ptr_to_int_167 = ptrtoint i8* %_new_gep_49 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_49, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_49, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_49, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %.v4 = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_49
  %26 = bitcast i8* %.v4 to i64*
  %_new_load_181 = load i64, i64* %26, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 32
  %_ptr_to_int_182 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  %_address_in_parent_stack_bt_195._allin_new_bt_52.v = select i1 %_cond1_n_cond2_cond3_193, i8* %_pot_address_in_parent_stack_186, i8* %_new_gep_51
  %_address_in_parent_stack_bt_195._allin_new_bt_52 = bitcast i8* %_address_in_parent_stack_bt_195._allin_new_bt_52.v to i64*
  %_new_load_196 = load i64, i64* %_address_in_parent_stack_bt_195._allin_new_bt_52, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 40
  %_ptr_to_int_197 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  %.v5 = select i1 %_cond1_n_cond2_cond3_208, i8* %_pot_address_in_parent_stack_201, i8* %_new_gep_53
  %27 = bitcast i8* %.v5 to i64*
  %_new_load_211 = load i64, i64* %27, align 8
  %RSP_val.65 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 -8
  %28 = add i64 %RSP_val.65, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XSP, align 8, !mcsema_real_eip !40
  %29 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.58, i64 %24, i64 %RDX_val.60, i64 %RCX_val.61, i64 %R8_val.62, i64 %R9_val.63, i64 %_new_load_136, i64 %_new_load_151, i64 %_new_load_166, i64 %_new_load_181, i64 %_new_load_196, i64 %_new_load_211)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_90 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_91 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_90, i64 8
  store i8* %_gep_fix_91, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -52
  %30 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_215 = sub i64 %30, %_local_end_to_int_
  %_pot_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_cond1_217 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_218 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_219 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_220 = or i1 %_cond2_1_218, %_cond2_2_219
  %_cond4_221 = icmp ule i8* %_pot_address_in_parent_stack_216, %_parent_stack_end_ptr_
  %_cond1_n_cond2_222 = and i1 %_cond1_217, %_cond2_220
  %_cond1_n_cond2_cond3_223 = and i1 %_cond1_n_cond2_222, %_cond4_221
  %_address_in_parent_stack_bt_225..v = select i1 %_cond1_n_cond2_cond3_223, i8* %_pot_address_in_parent_stack_216, i8* %_new_gep_59
  %_address_in_parent_stack_bt_225. = bitcast i8* %_address_in_parent_stack_bt_225..v to i32*
  %_new_load_226 = load i32, i32* %_address_in_parent_stack_bt_225., align 4
  %31 = zext i32 %_new_load_226 to i64, !mcsema_real_eip !41
  store i64 %31, i64* %XSI, align 8, !mcsema_real_eip !41
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -68
  %32 = trunc i64 %29 to i32
  %33 = bitcast i8* %_new_gep_62 to i32*
  store i32 %32, i32* %33, align 4, !mcsema_real_eip !42
  %ESI_val.71 = load i32, i32* %ESI.41, align 4, !mcsema_real_eip !43
  %34 = zext i32 %ESI_val.71 to i64, !mcsema_real_eip !43
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !43
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 80
  %35 = add i64 %RSP_val.72, 80, !mcsema_real_eip !44
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %36 = and i64 %_trans_xor_68, 16
  %37 = icmp eq i64 %36, 0
  store i1 %37, i1* %AF, align 1, !mcsema_real_eip !44
  %38 = icmp slt i64 %35, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !44
  %_trans_icmp_eq_70 = icmp eq i8* %_new_gep_65, null
  store i1 %_trans_icmp_eq_70, i1* %ZF, align 1, !mcsema_real_eip !44
  %39 = xor i64 %_trans_p2i_67, -9223372036854775808, !mcsema_real_eip !44
  %40 = and i64 %_trans_xor_68, %39, !mcsema_real_eip !44
  %41 = icmp slt i64 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !44
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %42 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !44
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !44
  %_trans_icmp_ne_79 = icmp ne i64 %RSP_val.72, %_trans_p2i_66
  store i1 %_trans_icmp_ne_79, i1* %CF, align 1, !mcsema_real_eip !44
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !44
  %_offset_above_rbp_230 = sub i64 %_trans_p2i_66, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  %.v6 = select i1 %_cond1_n_cond2_cond3_238, i8* %_pot_address_in_parent_stack_231, i8* %_new_gep_65
  %45 = bitcast i8* %.v6 to i64*
  %_new_load_241 = load i64, i64* %45, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_241 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_241, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 88
  %46 = add i64 %RSP_val.72, 88, !mcsema_real_eip !45
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 96
  %47 = add i64 %RSP_val.72, 96, !mcsema_real_eip !46
  %_ptr_to_int_242 = ptrtoint i8* %_new_gep_82 to i64
  %_offset_above_rbp_245 = sub i64 %_ptr_to_int_242, %_local_end_to_int_
  %_pot_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_cond1_247 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_248 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_249 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_250 = or i1 %_cond2_1_248, %_cond2_2_249
  %_cond4_251 = icmp ule i8* %_pot_address_in_parent_stack_246, %_parent_stack_end_ptr_
  %_cond1_n_cond2_252 = and i1 %_cond1_247, %_cond2_250
  %_cond1_n_cond2_cond3_253 = and i1 %_cond1_n_cond2_252, %_cond4_251
  %_address_in_parent_stack_bt_255._allin_new_bt_85.v = select i1 %_cond1_n_cond2_cond3_253, i8* %_pot_address_in_parent_stack_246, i8* %_new_gep_82
  %_address_in_parent_stack_bt_255._allin_new_bt_85 = bitcast i8* %_address_in_parent_stack_bt_255._allin_new_bt_85.v to i64*
  %_new_load_256 = load i64, i64* %_address_in_parent_stack_bt_255._allin_new_bt_85, align 8
  store i64 %_new_load_256, i64* %XIP, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %47, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

attributes #0 = { noinline nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

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
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 68}
!21 = !{i64 71}
!22 = !{i64 72}
!23 = !{i64 80}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 93}
!27 = !{i64 112}
!28 = !{i64 119}
!29 = !{i64 122}
!30 = !{i64 125}
!31 = !{i64 128}
!32 = !{i64 132}
!33 = !{i64 137}
!34 = !{i64 141}
!35 = !{i64 144}
!36 = !{i64 149}
!37 = !{i64 159}
!38 = !{i64 162}
!39 = !{i64 165}
!40 = !{i64 167}
!41 = !{i64 172}
!42 = !{i64 175}
!43 = !{i64 178}
!44 = !{i64 180}
!45 = !{i64 184}
!46 = !{i64 185}
