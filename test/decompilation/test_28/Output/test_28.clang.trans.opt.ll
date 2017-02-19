; ModuleID = 'Output/test_28.clang.trans.opt.bc'
source_filename = "Output/test_28.clang.bc"
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

%0 = type <{ [13 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64

; Function Attrs: noinline
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
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %19, align 4, !mcsema_real_eip !6
  %AL.12 = bitcast i64* %XAX to i8*
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %entry
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !7
  %23 = zext i32 %22 to i64, !mcsema_real_eip !7
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.8, -4, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  %26 = load i32, i32* %25, align 4, !mcsema_real_eip !8
  %27 = sub i32 %22, %26, !mcsema_real_eip !8
  %28 = xor i32 %27, %22, !mcsema_real_eip !8
  %29 = xor i32 %28, %26, !mcsema_real_eip !8
  %30 = and i32 %29, 16, !mcsema_real_eip !8
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !8
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !8
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !8
  %33 = tail call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  store i1 %35, i1* %PF, align 1, !mcsema_real_eip !8
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !8
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !8
  %37 = icmp slt i32 %27, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !8
  %38 = icmp ult i32 %22, %26, !mcsema_real_eip !8
  store i1 %38, i1* %CF, align 1, !mcsema_real_eip !8
  %39 = xor i32 %26, %22, !mcsema_real_eip !8
  %40 = and i32 %28, %39, !mcsema_real_eip !8
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !8
  %tmp = xor i1 %37, %41
  %RSP_val.30 = load i64, i64* %XSP, align 8
  br i1 %tmp, label %block_0x1e, label %block_0x40, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, align 8, !mcsema_real_eip !10
  store i8 0, i8* %AL.12, align 1, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, align 8, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, align 8, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, align 8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, align 8, !mcsema_real_eip !12
  %42 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !12
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !12
  %44 = add i64 %RSP_val.30, 8, !mcsema_real_eip !12
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !12
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !12
  %47 = add i64 %RSP_val.30, 16, !mcsema_real_eip !12
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !12
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !12
  %50 = add i64 %RSP_val.30, 24, !mcsema_real_eip !12
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !12
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !12
  %53 = add i64 %RSP_val.30, 32, !mcsema_real_eip !12
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !12
  %55 = load i64, i64* %54, align 8, !mcsema_real_eip !12
  %56 = add i64 %RSP_val.30, 40, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !12
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !12
  %59 = add i64 %RSP_val.30, -8
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %60, align 8, !mcsema_real_eip !12
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !12
  %61 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58), !mcsema_real_eip !12
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %62 = add i64 %RBP_val.21, -12, !mcsema_real_eip !13
  %63 = trunc i64 %61 to i32
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !13
  store i32 %63, i32* %64, align 4, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %65 = add i64 %RBP_val.24, -8, !mcsema_real_eip !14
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !14
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !14
  %68 = add i32 %67, 1, !mcsema_real_eip !15
  %69 = xor i32 %68, %67, !mcsema_real_eip !15
  %70 = and i32 %69, 16, !mcsema_real_eip !15
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !15
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !15
  %72 = icmp slt i32 %68, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !15
  %73 = icmp eq i32 %68, 0, !mcsema_real_eip !15
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !15
  %74 = xor i32 %67, -2147483648, !mcsema_real_eip !15
  %75 = and i32 %69, %74, !mcsema_real_eip !15
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !15
  %77 = trunc i32 %68 to i8, !mcsema_real_eip !15
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !15
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !15
  %81 = icmp eq i32 %67, -1
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !15
  %82 = zext i32 %68 to i64, !mcsema_real_eip !15
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !15
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %83 = add i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %84 = xor i64 %83, %RSP_val.30, !mcsema_real_eip !18
  %85 = and i64 %84, 16
  %86 = icmp eq i64 %85, 0
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !18
  %87 = icmp slt i64 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !18
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !18
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !18
  %89 = xor i64 %RSP_val.30, -9223372036854775808, !mcsema_real_eip !18
  %90 = and i64 %84, %89, !mcsema_real_eip !18
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !18
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !18
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !18
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !18
  %96 = icmp ugt i64 %RSP_val.30, -17
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !18
  store i64 %83, i64* %XSP, align 8, !mcsema_real_eip !18
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !19
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !19
  store i64 %98, i64* %XBP, align 8, !mcsema_real_eip !19
  %99 = add i64 %RSP_val.30, 24, !mcsema_real_eip !19
  store i64 %99, i64* %XSP, align 8, !mcsema_real_eip !19
  %100 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %101 = inttoptr i64 %99 to i64*, !mcsema_real_eip !20
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !20
  store i64 %102, i64* %XIP, align 8, !mcsema_real_eip !20
  store i64 %100, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.34, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !23
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !23
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !23
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !24
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %13 = add i64 %RSP_val.34, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %14 = add i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %15 = and i64 %_trans_xor_23, 16
  %16 = icmp eq i64 %15, 0
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !28
  %17 = icmp slt i64 %14, 0
  store i1 %17, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !28
  %18 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !28
  %19 = and i64 %18, %_trans_xor_23, !mcsema_real_eip !28
  %20 = icmp slt i64 %19, 0
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %21 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %RSP_val.43, %_trans_p2i_21
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %24 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !29
  store volatile i64 %24, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %24, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %25 = add i64 %RSP_val.43, 24, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %26 = add i64 %RSP_val.43, 32, !mcsema_real_eip !30
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %27 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !30
  store i64 %27, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.6, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %AL.12 = bitcast i64* %XAX to i8*
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %entry
  %RSP_val.30 = phi i64 [ %RSP_val.30.pre, %block_0x1e ], [ %2, %entry ]
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = phi i8* [ %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49.pre, %block_0x1e ], [ %_new_gep_3, %entry ]
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre, %block_0x1e ], [ %_new_gep_, %entry ]
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -8
  %13 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = zext i32 %_new_load_ to i64, !mcsema_real_eip !7
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -4
  %15 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_74 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  %.v = select i1 %_cond1_n_cond2_cond3_82, i8* %_pot_address_in_parent_stack_75, i8* %_new_gep_23
  %16 = bitcast i8* %.v to i32*
  %_new_load_85 = load i32, i32* %16, align 4
  %17 = sub i32 %_new_load_, %_new_load_85, !mcsema_real_eip !8
  %18 = xor i32 %17, %_new_load_, !mcsema_real_eip !8
  %19 = xor i32 %18, %_new_load_85, !mcsema_real_eip !8
  %20 = and i32 %19, 16, !mcsema_real_eip !8
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !8
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !8
  %22 = trunc i32 %17 to i8, !mcsema_real_eip !8
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !8
  %26 = icmp eq i32 %17, 0, !mcsema_real_eip !8
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !8
  %27 = icmp slt i32 %17, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !8
  %28 = icmp ult i32 %_new_load_, %_new_load_85, !mcsema_real_eip !8
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !8
  %29 = xor i32 %_new_load_85, %_new_load_, !mcsema_real_eip !8
  %30 = and i32 %18, %29, !mcsema_real_eip !8
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !8
  %tmp = xor i1 %27, %31
  br i1 %tmp, label %block_0x1e, label %block_0x40, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, align 8, !mcsema_real_eip !10
  store i8 0, i8* %AL.12, align 1, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, align 8, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, align 8, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, align 8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, align 8, !mcsema_real_eip !12
  %_ptr_to_int_86 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  %_address_in_parent_stack_bt_99._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_97, i8* %_pot_address_in_parent_stack_90, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49
  %_address_in_parent_stack_bt_99._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_99._allin_new_bt_26.v to i64*
  %_new_load_100 = load i64, i64* %_address_in_parent_stack_bt_99._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 8
  %_ptr_to_int_101 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %.v2 = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_27
  %32 = bitcast i8* %.v2 to i64*
  %_new_load_115 = load i64, i64* %32, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 16
  %_ptr_to_int_116 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  %_address_in_parent_stack_bt_129._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_127, i8* %_pot_address_in_parent_stack_120, i8* %_new_gep_29
  %_address_in_parent_stack_bt_129._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_129._allin_new_bt_30.v to i64*
  %_new_load_130 = load i64, i64* %_address_in_parent_stack_bt_129._allin_new_bt_30, align 8
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 24
  %_ptr_to_int_131 = ptrtoint i8* %_new_gep_31 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  %.v3 = select i1 %_cond1_n_cond2_cond3_142, i8* %_pot_address_in_parent_stack_135, i8* %_new_gep_31
  %33 = bitcast i8* %.v3 to i64*
  %_new_load_145 = load i64, i64* %33, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 32
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_33
  %_address_in_parent_stack_bt_159._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_159._allin_new_bt_34.v to i64*
  %_new_load_160 = load i64, i64* %_address_in_parent_stack_bt_159._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 40
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %.v4 = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_35
  %34 = bitcast i8* %.v4 to i64*
  %_new_load_175 = load i64, i64* %34, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %35 = add i64 %RSP_val.30, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !12
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !12
  %36 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130, i64 %_new_load_145, i64 %_new_load_160, i64 %_new_load_175)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -12
  %37 = trunc i64 %36 to i32
  %38 = bitcast i8* %_new_gep_41 to i32*
  store i32 %37, i32* %38, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -8
  %39 = ptrtoint i8* %_new_gep_44 to i64
  %40 = bitcast i8* %_new_gep_44 to i32*
  %_offset_above_rbp_179 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i32*
  %_address_in_parent_stack_bt_189. = select i1 %_cond1_n_cond2_cond3_187, i32* %_address_in_parent_stack_bt_189, i32* %40
  %_new_load_190 = load i32, i32* %_address_in_parent_stack_bt_189., align 4
  %41 = add i32 %_new_load_190, 1, !mcsema_real_eip !15
  %42 = xor i32 %41, %_new_load_190, !mcsema_real_eip !15
  %43 = and i32 %42, 16, !mcsema_real_eip !15
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !15
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !15
  %45 = icmp slt i32 %41, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !15
  %46 = icmp eq i32 %41, 0, !mcsema_real_eip !15
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !15
  %47 = xor i32 %_new_load_190, -2147483648, !mcsema_real_eip !15
  %48 = and i32 %42, %47, !mcsema_real_eip !15
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !15
  %50 = trunc i32 %41 to i8, !mcsema_real_eip !15
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !15
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !15
  %54 = icmp eq i32 %_new_load_190, -1
  store i1 %54, i1* %CF, align 1, !mcsema_real_eip !15
  %55 = zext i32 %41 to i64, !mcsema_real_eip !15
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !15
  store i32 %41, i32* %40, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre = load i8*, i8** %_RBP_ptr_, align 8
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49.pre = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30.pre = load i64, i64* %XSP, align 8
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 16
  %56 = add i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %57 = and i64 %_trans_xor_53, 16
  %58 = icmp eq i64 %57, 0
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !18
  %59 = icmp slt i64 %56, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !18
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !18
  %60 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !18
  %61 = and i64 %_trans_xor_53, %60, !mcsema_real_eip !18
  %62 = icmp slt i64 %61, 0
  store i1 %62, i1* %OF, align 1, !mcsema_real_eip !18
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %63 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !18
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !18
  %_trans_icmp_ne_64 = icmp ne i64 %RSP_val.30, %_trans_p2i_51
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !18
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !18
  %_offset_above_rbp_194 = sub i64 %_trans_p2i_51, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  %_address_in_parent_stack_bt_204._allin_new_bt_66.v = select i1 %_cond1_n_cond2_cond3_202, i8* %_pot_address_in_parent_stack_195, i8* %_new_gep_50
  %_address_in_parent_stack_bt_204._allin_new_bt_66 = bitcast i8* %_address_in_parent_stack_bt_204._allin_new_bt_66.v to i64*
  %_new_load_205 = load i64, i64* %_address_in_parent_stack_bt_204._allin_new_bt_66, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_205 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_205, i64* %XBP, align 8, !mcsema_real_eip !19
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 24
  %66 = add i64 %RSP_val.30, 24, !mcsema_real_eip !19
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 32
  %67 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_ptr_to_int_206 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  %.v5 = select i1 %_cond1_n_cond2_cond3_217, i8* %_pot_address_in_parent_stack_210, i8* %_new_gep_67
  %68 = bitcast i8* %.v5 to i64*
  %_new_load_220 = load i64, i64* %68, align 8
  store i64 %_new_load_220, i64* %XIP, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.34, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !23
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !23
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !23
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !24
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.34, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %13 = add i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %14 = and i64 %_trans_xor_23, 16
  %15 = icmp eq i64 %14, 0
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !28
  %16 = icmp slt i64 %13, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !28
  %17 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !28
  %18 = and i64 %17, %_trans_xor_23, !mcsema_real_eip !28
  %19 = icmp slt i64 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %20 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  store i1 %22, i1* %PF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %RSP_val.43, %_trans_p2i_21
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !28
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_trans_p2i_21, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %23 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %23, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %24 = add i64 %RSP_val.43, 24, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %25 = add i64 %RSP_val.43, 32, !mcsema_real_eip !30
  %_ptr_to_int_43 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_46 = sub i64 %_ptr_to_int_43, %_local_end_to_int_
  %_pot_address_in_parent_stack_47 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_46
  %_cond1_48 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_49 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_50 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_51 = or i1 %_cond2_1_49, %_cond2_2_50
  %_cond4_52 = icmp ule i8* %_pot_address_in_parent_stack_47, %_parent_stack_end_ptr_
  %_cond1_n_cond2_53 = and i1 %_cond1_48, %_cond2_51
  %_cond1_n_cond2_cond3_54 = and i1 %_cond1_n_cond2_53, %_cond4_52
  %_address_in_parent_stack_bt_56._allin_new_bt_40.v = select i1 %_cond1_n_cond2_cond3_54, i8* %_pot_address_in_parent_stack_47, i8* %_new_gep_37
  %_address_in_parent_stack_bt_56._allin_new_bt_40 = bitcast i8* %_address_in_parent_stack_bt_56._allin_new_bt_40.v to i64*
  %_new_load_57 = load i64, i64* %_address_in_parent_stack_bt_56._allin_new_bt_40, align 8
  store i64 %_new_load_57, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

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
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 21}
!9 = !{i64 24}
!10 = !{i64 30}
!11 = !{i64 40}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 50}
!15 = !{i64 53}
!16 = !{i64 56}
!17 = !{i64 59}
!18 = !{i64 64}
!19 = !{i64 68}
!20 = !{i64 69}
!21 = !{i64 80}
!22 = !{i64 81}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 93}
!26 = !{i64 100}
!27 = !{i64 105}
!28 = !{i64 107}
!29 = !{i64 111}
!30 = !{i64 112}
