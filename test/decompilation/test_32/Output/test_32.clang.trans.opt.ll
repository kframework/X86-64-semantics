; ModuleID = 'Output/test_32.clang.trans.opt.bc'
source_filename = "Output/test_32.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
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
  %16 = add i64 %RSP_val.1, -24, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %17, align 8, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !6
  %20 = load i64, i64* %19, align 8, !mcsema_real_eip !6
  %21 = add i64 %20, -2
  %22 = xor i64 %21, %20, !mcsema_real_eip !6
  %23 = and i64 %22, 16, !mcsema_real_eip !6
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !6
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !6
  %25 = trunc i64 %21 to i8, !mcsema_real_eip !6
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !6
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !6
  %29 = icmp eq i64 %21, 0, !mcsema_real_eip !6
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !6
  %30 = icmp slt i64 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !6
  %31 = icmp ult i64 %20, 2, !mcsema_real_eip !6
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !6
  %32 = and i64 %22, %20, !mcsema_real_eip !6
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !6
  br i1 %31, label %block_0x50, label %block_0x24, !mcsema_real_eip !7

block_0x24:                                       ; preds = %entry
  %34 = load i64, i64* %19, align 8, !mcsema_real_eip !8
  %35 = add i64 %34, -2
  %36 = xor i64 %35, %34, !mcsema_real_eip !9
  %37 = and i64 %36, 16, !mcsema_real_eip !9
  %38 = icmp ne i64 %37, 0, !mcsema_real_eip !9
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !9
  %39 = trunc i64 %35 to i8, !mcsema_real_eip !9
  %40 = tail call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !9
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  store i1 %42, i1* %PF, align 1, !mcsema_real_eip !9
  %43 = icmp eq i64 %35, 0, !mcsema_real_eip !9
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !9
  %44 = icmp slt i64 %35, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !9
  %45 = icmp ult i64 %34, 2, !mcsema_real_eip !9
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !9
  %46 = and i64 %36, %34, !mcsema_real_eip !9
  %47 = icmp slt i64 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !9
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !9
  store i64 %35, i64* %XDI, align 8, !mcsema_real_eip !10
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %48 = add i64 %RSP_val.11, -8
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !11
  store i64 -4981261766360305936, i64* %49, align 8, !mcsema_real_eip !11
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !11
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !11
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %50 = add i64 %RBP_val.12, -16, !mcsema_real_eip !12
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !12
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !12
  %53 = add i64 %52, -1
  %54 = xor i64 %53, %52, !mcsema_real_eip !13
  %55 = and i64 %54, 16, !mcsema_real_eip !13
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !13
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !13
  %57 = trunc i64 %53 to i8, !mcsema_real_eip !13
  %58 = tail call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !13
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !13
  %61 = icmp eq i64 %53, 0, !mcsema_real_eip !13
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !13
  %62 = icmp slt i64 %53, 0
  store i1 %62, i1* %SF, align 1, !mcsema_real_eip !13
  %63 = icmp eq i64 %52, 0
  store i1 %63, i1* %CF, align 1, !mcsema_real_eip !13
  %64 = and i64 %54, %52, !mcsema_real_eip !13
  %65 = icmp slt i64 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !13
  store i64 %53, i64* %XDI, align 8, !mcsema_real_eip !13
  %66 = add i64 %RBP_val.12, -24, !mcsema_real_eip !14
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !14
  %RAX_val.15 = load i64, i64* %XAX, align 8, !mcsema_real_eip !14
  store i64 %RAX_val.15, i64* %67, align 8, !mcsema_real_eip !14
  %RSP_val.16 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %68 = add i64 %RSP_val.16, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !15
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !15
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %70 = add i64 %RBP_val.17, -24, !mcsema_real_eip !16
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !16
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !16
  %RAX_val.19 = load i64, i64* %XAX, align 8, !mcsema_real_eip !17
  %73 = add i64 %RAX_val.19, %72, !mcsema_real_eip !17
  %74 = xor i64 %73, %72, !mcsema_real_eip !17
  %75 = xor i64 %74, %RAX_val.19, !mcsema_real_eip !17
  %76 = and i64 %75, 16, !mcsema_real_eip !17
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !17
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !17
  %78 = icmp slt i64 %73, 0
  store i1 %78, i1* %SF, align 1, !mcsema_real_eip !17
  %79 = icmp eq i64 %73, 0, !mcsema_real_eip !17
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !17
  %80 = xor i64 %72, -9223372036854775808, !mcsema_real_eip !17
  %81 = xor i64 %80, %RAX_val.19, !mcsema_real_eip !17
  %82 = and i64 %74, %81, !mcsema_real_eip !17
  %83 = icmp slt i64 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !17
  %84 = trunc i64 %73 to i8, !mcsema_real_eip !17
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !17
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  store i1 %87, i1* %PF, align 1, !mcsema_real_eip !17
  %88 = icmp ult i64 %73, %72, !mcsema_real_eip !17
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !17
  store i64 %73, i64* %XDI, align 8, !mcsema_real_eip !17
  br label %block_0x50, !mcsema_real_eip !18

block_0x50:                                       ; preds = %entry, %block_0x24
  %RBP_val.17.sink = phi i64 [ %RBP_val.17, %block_0x24 ], [ %RBP_val.6, %entry ]
  %.sink = phi i64 [ %73, %block_0x24 ], [ 1, %entry ]
  %89 = add i64 %RBP_val.17.sink, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %.sink, i64* %90, align 8
  %RBP_val.22 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %91 = add i64 %RBP_val.22, -8, !mcsema_real_eip !18
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !18
  %93 = load i64, i64* %92, align 8, !mcsema_real_eip !18
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !18
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %94 = add i64 %RSP_val.23, 32, !mcsema_real_eip !19
  %95 = xor i64 %94, %RSP_val.23, !mcsema_real_eip !19
  %96 = and i64 %95, 16, !mcsema_real_eip !19
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !19
  store i1 %97, i1* %AF, align 1, !mcsema_real_eip !19
  %98 = icmp slt i64 %94, 0
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !19
  %99 = icmp eq i64 %94, 0, !mcsema_real_eip !19
  store i1 %99, i1* %ZF, align 1, !mcsema_real_eip !19
  %100 = xor i64 %RSP_val.23, -9223372036854775808, !mcsema_real_eip !19
  %101 = and i64 %95, %100, !mcsema_real_eip !19
  %102 = icmp slt i64 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !19
  %103 = trunc i64 %94 to i8, !mcsema_real_eip !19
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !19
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !19
  %107 = icmp ugt i64 %RSP_val.23, -33
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !19
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !19
  %108 = inttoptr i64 %94 to i64*, !mcsema_real_eip !20
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !20
  store i64 %109, i64* %XBP, align 8, !mcsema_real_eip !20
  %110 = add i64 %RSP_val.23, 40, !mcsema_real_eip !20
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !20
  %111 = add i64 %RSP_val.23, 48, !mcsema_real_eip !21
  %112 = inttoptr i64 %110 to i64*, !mcsema_real_eip !21
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !21
  store i64 %113, i64* %XIP, align 8, !mcsema_real_eip !21
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !22
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !22
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !22
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !22
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !22
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !22
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !22
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !22
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !22
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !22
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !22
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !22
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !22
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !22
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !22
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !22
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !22
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !22
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !22
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !22
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !22
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !22
  %RSP_val.27 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 40
  %1 = add i64 %RSP_val.27, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !23
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %3 = add i64 %RSP_val.27, -40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !24
  %4 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 36
  %5 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %5, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !26
  %EDI_val.33 = load i32, i32* %EDI.32, align 4
  %6 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.33, i32* %6, align 8, !mcsema_real_eip !26
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !27
  store i64 %RSI_val.35, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !27
  %7 = add i32 %EDI_val.33, -2
  %8 = xor i32 %7, %EDI_val.33, !mcsema_real_eip !28
  %9 = and i32 %8, 16, !mcsema_real_eip !28
  %10 = icmp ne i32 %9, 0, !mcsema_real_eip !28
  store i1 %10, i1* %AF, align 1, !mcsema_real_eip !28
  %11 = trunc i32 %7 to i8, !mcsema_real_eip !28
  %12 = call i8 @llvm.ctpop.i8(i8 %11), !mcsema_real_eip !28
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  store i1 %14, i1* %PF, align 1, !mcsema_real_eip !28
  %15 = icmp eq i32 %7, 0, !mcsema_real_eip !28
  store i1 %15, i1* %ZF, align 1, !mcsema_real_eip !28
  %16 = icmp slt i32 %7, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !28
  %17 = icmp ult i32 %EDI_val.33, 2, !mcsema_real_eip !28
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !28
  %18 = and i32 %8, %EDI_val.33, !mcsema_real_eip !28
  %19 = icmp slt i32 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %15, label %block_0x80, label %block_0x95, !mcsema_real_eip !29

block_0x80:                                       ; preds = %entry
  store i64 %RSI_val.35, i64* %XAX, align 8, !mcsema_real_eip !30
  %20 = add i64 %RSI_val.35, 8, !mcsema_real_eip !31
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !31
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !31
  store i64 %22, i64* %XDI, align 8, !mcsema_real_eip !31
  %_new_gep_29 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %23 = add i64 %RSP_val.27, -48
  %_allin_new_bt_30 = bitcast [48 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !32
  %24 = call x86_64_sysvcc i64 @_atoi(i64 %22)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112 = load i8*, i8** %4, align 8
  %25 = trunc i64 %24 to i32
  br label %block_0xa2, !mcsema_real_eip !33

block_0x95:                                       ; preds = %entry
  store i64 20, i64* %XAX, align 8, !mcsema_real_eip !34
  br label %block_0xa2, !mcsema_real_eip !35

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %EAX_val.46 = phi i32 [ 20, %block_0x95 ], [ %25, %block_0x80 ]
  %_load_rbp_ptr_22.sink = phi i8* [ %_new_gep_, %block_0x95 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112, %block_0x80 ]
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22.sink, i64 -24
  %26 = bitcast i8* %_new_gep_35 to i32*
  store i32 %EAX_val.46, i32* %26, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378 = load i8*, i8** %4, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378, i64 -24
  %27 = bitcast i8* %_new_gep_38 to i32*
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !36
  %29 = zext i32 %28 to i64, !mcsema_real_eip !36
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !36
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378, i64 -20
  %30 = bitcast i8* %_new_gep_41 to i32*
  store i32 %28, i32* %30, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_439 = load i8*, i8** %4, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_439, i64 -20
  %31 = bitcast i8* %_new_gep_44 to i32*
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !38
  %33 = sext i32 %32 to i64, !mcsema_real_eip !38
  store i64 %33, i64* %XDI, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %34 = add i64 %RSP_val.52, -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8910 = load i8*, i8** %4, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8910)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_92 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, align 8, !mcsema_real_eip !40
  %RAX_val.53 = load i64, i64* %XAX, align 8, !mcsema_real_eip !41
  store i64 %RAX_val.53, i64* %XSI, align 8, !mcsema_real_eip !41
  %AL.54 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  store i8 0, i8* %AL.54, align 1, !mcsema_real_eip !42
  %RDX_val.57 = load i64, i64* %XDX, align 8, !mcsema_real_eip !43
  %RCX_val.58 = load i64, i64* %XCX, align 8, !mcsema_real_eip !43
  %R8_val.59 = load i64, i64* %R8, align 8, !mcsema_real_eip !43
  %R9_val.60 = load i64, i64* %R9, align 8, !mcsema_real_eip !43
  %_allin_new_bt_50 = bitcast i8* %_gep_fix_92 to i64*
  %35 = load i64, i64* %_allin_new_bt_50, align 8, !mcsema_real_eip !43
  %_new_gep_51 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 16
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %36 = load i64, i64* %_allin_new_bt_52, align 8, !mcsema_real_eip !43
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %37 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !43
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 32
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %38 = load i64, i64* %_allin_new_bt_56, align 8, !mcsema_real_eip !43
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 40
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %39 = load i64, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !43
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 48
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %40 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !43
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !43
  %41 = add i64 %RSP_val.62, -8
  %_allin_new_bt_63 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !43
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !43
  %42 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.53, i64 %RDX_val.57, i64 %RCX_val.58, i64 %R8_val.59, i64 %R9_val.60, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_94 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_, align 8
  %ECX.63 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !44
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6411 = load i8*, i8** %4, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6411, i64 -28
  %43 = trunc i64 %42 to i32
  %44 = bitcast i8* %_new_gep_65 to i32*
  store i32 %43, i32* %44, align 4, !mcsema_real_eip !45
  %ECX_val.71 = load i32, i32* %ECX.63, align 4, !mcsema_real_eip !46
  %45 = zext i32 %ECX_val.71 to i64, !mcsema_real_eip !46
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !46
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 32
  %46 = add i64 %RSP_val.72, 32, !mcsema_real_eip !47
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %47 = and i64 %_trans_xor_71, 16, !mcsema_real_eip !47
  %48 = icmp ne i64 %47, 0, !mcsema_real_eip !47
  store i1 %48, i1* %AF, align 1, !mcsema_real_eip !47
  %49 = icmp slt i64 %46, 0
  store i1 %49, i1* %SF, align 1, !mcsema_real_eip !47
  %_trans_icmp_eq_73 = icmp eq i8* %_new_gep_68, null
  store i1 %_trans_icmp_eq_73, i1* %ZF, align 1, !mcsema_real_eip !47
  %50 = xor i64 %_trans_p2i_70, -9223372036854775808, !mcsema_real_eip !47
  %51 = and i64 %_trans_xor_71, %50, !mcsema_real_eip !47
  %52 = icmp slt i64 %51, 0
  store i1 %52, i1* %OF, align 1, !mcsema_real_eip !47
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %53 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !47
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !47
  %_trans_icmp_ne_82 = icmp ne i64 %RSP_val.72, %_trans_p2i_69
  store i1 %_trans_icmp_ne_82, i1* %CF, align 1, !mcsema_real_eip !47
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !47
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %56 = load i64, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !48
  store volatile i64 %56, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %56, i64* %XBP, align 8, !mcsema_real_eip !48
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 40
  %57 = add i64 %RSP_val.72, 40, !mcsema_real_eip !48
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %57, i64* %XSP, align 8, !mcsema_real_eip !48
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 48
  %58 = add i64 %RSP_val.72, 48, !mcsema_real_eip !49
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %59 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !49
  store i64 %59, i64* %XIP, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %3 = add i64 %RDI_val.5, -2
  %4 = xor i64 %3, %RDI_val.5, !mcsema_real_eip !6
  %5 = and i64 %4, 16, !mcsema_real_eip !6
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !6
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !6
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !6
  %8 = call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !6
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !6
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !6
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !6
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !6
  %13 = icmp ult i64 %RDI_val.5, 2, !mcsema_real_eip !6
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !6
  %14 = and i64 %4, %RDI_val.5, !mcsema_real_eip !6
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !6
  br i1 %13, label %block_0x50, label %block_0x24, !mcsema_real_eip !7

block_0x24:                                       ; preds = %entry
  %16 = bitcast i8* %_new_gep_14 to i64*
  %_new_load_88 = load i64, i64* %16, align 8
  %17 = add i64 %_new_load_88, -2
  %18 = xor i64 %17, %_new_load_88, !mcsema_real_eip !9
  %19 = and i64 %18, 16, !mcsema_real_eip !9
  %20 = icmp ne i64 %19, 0, !mcsema_real_eip !9
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !9
  %21 = trunc i64 %17 to i8, !mcsema_real_eip !9
  %22 = call i8 @llvm.ctpop.i8(i8 %21), !mcsema_real_eip !9
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  store i1 %24, i1* %PF, align 1, !mcsema_real_eip !9
  %25 = icmp eq i64 %17, 0, !mcsema_real_eip !9
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !9
  %26 = icmp slt i64 %17, 0
  store i1 %26, i1* %SF, align 1, !mcsema_real_eip !9
  %27 = icmp ult i64 %_new_load_88, 2, !mcsema_real_eip !9
  store i1 %27, i1* %CF, align 1, !mcsema_real_eip !9
  %28 = and i64 %18, %_new_load_88, !mcsema_real_eip !9
  %29 = icmp slt i64 %28, 0
  store i1 %29, i1* %OF, align 1, !mcsema_real_eip !9
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !9
  store i64 %17, i64* %XDI, align 8, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %30 = add i64 %RSP_val.1, -48
  %_allin_new_bt_27 = bitcast [48 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !11
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* nonnull %_new_gep_26, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -16
  %_ptr_to_int_89 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_92 = sub i64 %_ptr_to_int_89, %_local_end_to_int_
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_92
  %_cond1_94 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  %.v3 = select i1 %_cond1_n_cond2_cond3_100, i8* %_pot_address_in_parent_stack_93, i8* %_new_gep_29
  %31 = bitcast i8* %.v3 to i64*
  %_new_load_103 = load i64, i64* %31, align 8
  %32 = add i64 %_new_load_103, -1
  %33 = xor i64 %32, %_new_load_103, !mcsema_real_eip !13
  %34 = and i64 %33, 16, !mcsema_real_eip !13
  %35 = icmp ne i64 %34, 0, !mcsema_real_eip !13
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !13
  %36 = trunc i64 %32 to i8, !mcsema_real_eip !13
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !13
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !13
  %40 = icmp eq i64 %32, 0, !mcsema_real_eip !13
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !13
  %41 = icmp slt i64 %32, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !13
  %42 = icmp eq i64 %_new_load_103, 0
  store i1 %42, i1* %CF, align 1, !mcsema_real_eip !13
  %43 = and i64 %33, %_new_load_103, !mcsema_real_eip !13
  %44 = icmp slt i64 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !13
  store i64 %32, i64* %XDI, align 8, !mcsema_real_eip !13
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %RAX_val.15 = load i64, i64* %XAX, align 8, !mcsema_real_eip !14
  store i64 %RAX_val.15, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !14
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.16 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 -8
  %45 = add i64 %RSP_val.16, -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_72 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_72, i64 8
  store i8* %_gep_fix_73, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_104 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_104, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  %_address_in_parent_stack_bt_117._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_115, i8* %_pot_address_in_parent_stack_108, i8* %_new_gep_38
  %_address_in_parent_stack_bt_117._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_117._allin_new_bt_39.v to i64*
  %_new_load_118 = load i64, i64* %_address_in_parent_stack_bt_117._allin_new_bt_39, align 8
  %RAX_val.19 = load i64, i64* %XAX, align 8, !mcsema_real_eip !17
  %46 = add i64 %RAX_val.19, %_new_load_118, !mcsema_real_eip !17
  %47 = xor i64 %46, %_new_load_118, !mcsema_real_eip !17
  %48 = xor i64 %47, %RAX_val.19, !mcsema_real_eip !17
  %49 = and i64 %48, 16, !mcsema_real_eip !17
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !17
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !17
  %51 = icmp slt i64 %46, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !17
  %52 = icmp eq i64 %46, 0, !mcsema_real_eip !17
  store i1 %52, i1* %ZF, align 1, !mcsema_real_eip !17
  %53 = xor i64 %_new_load_118, -9223372036854775808, !mcsema_real_eip !17
  %54 = xor i64 %53, %RAX_val.19, !mcsema_real_eip !17
  %55 = and i64 %47, %54, !mcsema_real_eip !17
  %56 = icmp slt i64 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !17
  %57 = trunc i64 %46 to i8, !mcsema_real_eip !17
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !17
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !17
  %61 = icmp ult i64 %46, %_new_load_118, !mcsema_real_eip !17
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !17
  store i64 %46, i64* %XDI, align 8, !mcsema_real_eip !17
  br label %block_0x50, !mcsema_real_eip !18

block_0x50:                                       ; preds = %entry, %block_0x24
  %_load_rbp_ptr_37.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, %block_0x24 ], [ %_new_gep_, %entry ]
  %.sink = phi i64 [ %46, %block_0x24 ], [ 1, %entry ]
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37.sink, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %.sink, i64* %_allin_new_bt_42, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -8
  %_ptr_to_int_119 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_122 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  %_address_in_parent_stack_bt_132._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_130, i8* %_pot_address_in_parent_stack_123, i8* %_new_gep_44
  %_address_in_parent_stack_bt_132._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_132._allin_new_bt_45.v to i64*
  %_new_load_133 = load i64, i64* %_address_in_parent_stack_bt_132._allin_new_bt_45, align 8
  store i64 %_new_load_133, i64* %XAX, align 8, !mcsema_real_eip !18
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 32
  %62 = add i64 %RSP_val.23, 32, !mcsema_real_eip !19
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %63 = and i64 %_trans_xor_50, 16, !mcsema_real_eip !19
  %64 = icmp ne i64 %63, 0, !mcsema_real_eip !19
  store i1 %64, i1* %AF, align 1, !mcsema_real_eip !19
  %65 = icmp slt i64 %62, 0
  store i1 %65, i1* %SF, align 1, !mcsema_real_eip !19
  %_trans_icmp_eq_52 = icmp eq i8* %_new_gep_47, null
  store i1 %_trans_icmp_eq_52, i1* %ZF, align 1, !mcsema_real_eip !19
  %66 = xor i64 %_trans_p2i_49, -9223372036854775808, !mcsema_real_eip !19
  %67 = and i64 %_trans_xor_50, %66, !mcsema_real_eip !19
  %68 = icmp slt i64 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !19
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %69 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !19
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !19
  %_trans_icmp_ne_61 = icmp ne i64 %RSP_val.23, %_trans_p2i_48
  store i1 %_trans_icmp_ne_61, i1* %CF, align 1, !mcsema_real_eip !19
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %62, i64* %XSP, align 8, !mcsema_real_eip !19
  %_offset_above_rbp_137 = sub i64 %_trans_p2i_48, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  %.v2 = select i1 %_cond1_n_cond2_cond3_145, i8* %_pot_address_in_parent_stack_138, i8* %_new_gep_47
  %72 = bitcast i8* %.v2 to i64*
  %_new_load_148 = load i64, i64* %72, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_148, i64* %XBP, align 8, !mcsema_real_eip !20
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 40
  %73 = add i64 %RSP_val.23, 40, !mcsema_real_eip !20
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_, align 8
  store i64 %73, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 48
  %74 = add i64 %RSP_val.23, 48, !mcsema_real_eip !21
  %_ptr_to_int_149 = ptrtoint i8* %_new_gep_64 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  %_address_in_parent_stack_bt_162._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_160, i8* %_pot_address_in_parent_stack_153, i8* %_new_gep_64
  %_address_in_parent_stack_bt_162._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_162._allin_new_bt_67.v to i64*
  %_new_load_163 = load i64, i64* %_address_in_parent_stack_bt_162._allin_new_bt_67, align 8
  store i64 %_new_load_163, i64* %XIP, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_, align 8
  store i64 %74, i64* %XSP, align 8, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !22
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !22
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !22
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !22
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !22
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !22
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !22
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !22
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !22
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !22
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !22
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !22
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !22
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !22
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !22
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !22
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !22
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !22
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !22
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !22
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !22
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !22
  %RSP_val.27 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 40
  %1 = add i64 %RSP_val.27, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !23
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.27, -40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !24
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 36
  %3 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !26
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !26
  %4 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.33, i32* %4, align 8, !mcsema_real_eip !26
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !27
  store i64 %RSI_val.35, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !27
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %5 = bitcast i8* %_new_gep_17 to i32*
  %_new_load_ = load i32, i32* %5, align 8
  %6 = add i32 %_new_load_, -2
  %7 = xor i32 %6, %_new_load_, !mcsema_real_eip !28
  %8 = and i32 %7, 16, !mcsema_real_eip !28
  %9 = icmp ne i32 %8, 0, !mcsema_real_eip !28
  store i1 %9, i1* %AF, align 1, !mcsema_real_eip !28
  %10 = trunc i32 %6 to i8, !mcsema_real_eip !28
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !28
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !28
  %14 = icmp eq i32 %6, 0, !mcsema_real_eip !28
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !28
  %15 = icmp slt i32 %6, 0
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !28
  %16 = icmp ult i32 %_new_load_, 2, !mcsema_real_eip !28
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !28
  %17 = and i32 %7, %_new_load_, !mcsema_real_eip !28
  %18 = icmp slt i32 %17, 0
  store i1 %18, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %14, label %block_0x80, label %block_0x95, !mcsema_real_eip !29

block_0x80:                                       ; preds = %entry
  %_address_in_parent_stack_bt_108._allin_new_bt_27 = bitcast i8* %_new_gep_20 to i64*
  %_new_load_109 = load i64, i64* %_address_in_parent_stack_bt_108._allin_new_bt_27, align 8
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !30
  %19 = add i64 %_new_load_109, 8, !mcsema_real_eip !31
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !31
  %_ptr_bt_112 = inttoptr i64 %19 to i8*
  %_offset_above_rbp_113 = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_112
  %_cond2_1_116 = icmp ugt i8* %_ptr_bt_112, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_ptr_bt_112, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond4_119, %_cond1_n_cond2_120
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  %21 = select i1 %_cond1_n_cond2_cond3_121, i64* %_address_in_parent_stack_bt_123, i64* %20
  %_new_load_124 = load i64, i64* %21, align 8
  store i64 %_new_load_124, i64* %XDI, align 8, !mcsema_real_eip !31
  %_new_gep_29 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %22 = add i64 %RSP_val.27, -48
  %_allin_new_bt_30 = bitcast [48 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !32
  %23 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_124)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !32
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %24 = trunc i64 %23 to i32
  br label %block_0xa2, !mcsema_real_eip !33

block_0x95:                                       ; preds = %entry
  store i64 20, i64* %XAX, align 8, !mcsema_real_eip !34
  br label %block_0xa2, !mcsema_real_eip !35

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %EAX_val.46 = phi i32 [ 20, %block_0x95 ], [ %24, %block_0x80 ]
  %_load_rbp_ptr_22.sink = phi i8* [ %_new_gep_, %block_0x95 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, %block_0x80 ]
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22.sink, i64 -24
  %25 = bitcast i8* %_new_gep_35 to i32*
  store i32 %EAX_val.46, i32* %25, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %26 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_128 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  %_address_in_parent_stack_bt_138..v = select i1 %_cond1_n_cond2_cond3_136, i8* %_pot_address_in_parent_stack_129, i8* %_new_gep_38
  %_address_in_parent_stack_bt_138. = bitcast i8* %_address_in_parent_stack_bt_138..v to i32*
  %_new_load_139 = load i32, i32* %_address_in_parent_stack_bt_138., align 4
  %27 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !36
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !36
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -20
  %28 = bitcast i8* %_new_gep_41 to i32*
  store i32 %_new_load_139, i32* %28, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -20
  %29 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_143 = sub i64 %29, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  %.v3 = select i1 %_cond1_n_cond2_cond3_151, i8* %_pot_address_in_parent_stack_144, i8* %_new_gep_44
  %30 = bitcast i8* %.v3 to i32*
  %_new_load_154 = load i32, i32* %30, align 4
  %31 = sext i32 %_new_load_154 to i64, !mcsema_real_eip !38
  store i64 %31, i64* %XDI, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %32 = add i64 %RSP_val.52, -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_92 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, align 8, !mcsema_real_eip !40
  %RAX_val.53 = load i64, i64* %XAX, align 8, !mcsema_real_eip !41
  store i64 %RAX_val.53, i64* %XSI, align 8, !mcsema_real_eip !41
  %AL.54 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  store i8 0, i8* %AL.54, align 1, !mcsema_real_eip !42
  %RDX_val.57 = load i64, i64* %XDX, align 8, !mcsema_real_eip !43
  %RCX_val.58 = load i64, i64* %XCX, align 8, !mcsema_real_eip !43
  %R8_val.59 = load i64, i64* %R8, align 8, !mcsema_real_eip !43
  %R9_val.60 = load i64, i64* %R9, align 8, !mcsema_real_eip !43
  %_ptr_to_int_155 = ptrtoint i8* %_gep_fix_92 to i64
  %_offset_above_rbp_158 = sub i64 %_ptr_to_int_155, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_gep_fix_92, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_gep_fix_92, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_gep_fix_92, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  %_address_in_parent_stack_bt_168._allin_new_bt_50.v = select i1 %_cond1_n_cond2_cond3_166, i8* %_pot_address_in_parent_stack_159, i8* %_gep_fix_92
  %_address_in_parent_stack_bt_168._allin_new_bt_50 = bitcast i8* %_address_in_parent_stack_bt_168._allin_new_bt_50.v to i64*
  %_new_load_169 = load i64, i64* %_address_in_parent_stack_bt_168._allin_new_bt_50, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 16
  %_ptr_to_int_170 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  %.v4 = select i1 %_cond1_n_cond2_cond3_181, i8* %_pot_address_in_parent_stack_174, i8* %_new_gep_51
  %33 = bitcast i8* %.v4 to i64*
  %_new_load_184 = load i64, i64* %33, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 24
  %_ptr_to_int_185 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_188 = sub i64 %_ptr_to_int_185, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  %_address_in_parent_stack_bt_198._allin_new_bt_54.v = select i1 %_cond1_n_cond2_cond3_196, i8* %_pot_address_in_parent_stack_189, i8* %_new_gep_53
  %_address_in_parent_stack_bt_198._allin_new_bt_54 = bitcast i8* %_address_in_parent_stack_bt_198._allin_new_bt_54.v to i64*
  %_new_load_199 = load i64, i64* %_address_in_parent_stack_bt_198._allin_new_bt_54, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 32
  %_ptr_to_int_200 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  %.v5 = select i1 %_cond1_n_cond2_cond3_211, i8* %_pot_address_in_parent_stack_204, i8* %_new_gep_55
  %34 = bitcast i8* %.v5 to i64*
  %_new_load_214 = load i64, i64* %34, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 40
  %_ptr_to_int_215 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_218 = sub i64 %_ptr_to_int_215, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  %_address_in_parent_stack_bt_228._allin_new_bt_58.v = select i1 %_cond1_n_cond2_cond3_226, i8* %_pot_address_in_parent_stack_219, i8* %_new_gep_57
  %_address_in_parent_stack_bt_228._allin_new_bt_58 = bitcast i8* %_address_in_parent_stack_bt_228._allin_new_bt_58.v to i64*
  %_new_load_229 = load i64, i64* %_address_in_parent_stack_bt_228._allin_new_bt_58, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i64 48
  %_ptr_to_int_230 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  %.v6 = select i1 %_cond1_n_cond2_cond3_241, i8* %_pot_address_in_parent_stack_234, i8* %_new_gep_59
  %35 = bitcast i8* %.v6 to i64*
  %_new_load_244 = load i64, i64* %35, align 8
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !43
  %36 = add i64 %RSP_val.62, -8
  %_allin_new_bt_63 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !43
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_91, i8** %_RSP_ptr_, align 8
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !43
  %37 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.53, i64 %RDX_val.57, i64 %RCX_val.58, i64 %R8_val.59, i64 %R9_val.60, i64 %_new_load_169, i64 %_new_load_184, i64 %_new_load_199, i64 %_new_load_214, i64 %_new_load_229, i64 %_new_load_244)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_94 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_, align 8
  %ECX.63 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !44
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -28
  %38 = trunc i64 %37 to i32
  %39 = bitcast i8* %_new_gep_65 to i32*
  store i32 %38, i32* %39, align 4, !mcsema_real_eip !45
  %ECX_val.71 = load i32, i32* %ECX.63, align 4, !mcsema_real_eip !46
  %40 = zext i32 %ECX_val.71 to i64, !mcsema_real_eip !46
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !46
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 32
  %41 = add i64 %RSP_val.72, 32, !mcsema_real_eip !47
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %42 = and i64 %_trans_xor_71, 16, !mcsema_real_eip !47
  %43 = icmp ne i64 %42, 0, !mcsema_real_eip !47
  store i1 %43, i1* %AF, align 1, !mcsema_real_eip !47
  %44 = icmp slt i64 %41, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !47
  %_trans_icmp_eq_73 = icmp eq i8* %_new_gep_68, null
  store i1 %_trans_icmp_eq_73, i1* %ZF, align 1, !mcsema_real_eip !47
  %45 = xor i64 %_trans_p2i_70, -9223372036854775808, !mcsema_real_eip !47
  %46 = and i64 %_trans_xor_71, %45, !mcsema_real_eip !47
  %47 = icmp slt i64 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !47
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %48 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !47
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !47
  %_trans_icmp_ne_82 = icmp ne i64 %RSP_val.72, %_trans_p2i_69
  store i1 %_trans_icmp_ne_82, i1* %CF, align 1, !mcsema_real_eip !47
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !47
  %_offset_above_rbp_248 = sub i64 %_trans_p2i_69, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  %_address_in_parent_stack_bt_258._allin_new_bt_84.v = select i1 %_cond1_n_cond2_cond3_256, i8* %_pot_address_in_parent_stack_249, i8* %_new_gep_68
  %_address_in_parent_stack_bt_258._allin_new_bt_84 = bitcast i8* %_address_in_parent_stack_bt_258._allin_new_bt_84.v to i64*
  %_new_load_259 = load i64, i64* %_address_in_parent_stack_bt_258._allin_new_bt_84, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_259 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_259, i64* %XBP, align 8, !mcsema_real_eip !48
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 40
  %51 = add i64 %RSP_val.72, 40, !mcsema_real_eip !48
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !48
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 48
  %52 = add i64 %RSP_val.72, 48, !mcsema_real_eip !49
  %_ptr_to_int_260 = ptrtoint i8* %_new_gep_85 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  %.v7 = select i1 %_cond1_n_cond2_cond3_271, i8* %_pot_address_in_parent_stack_264, i8* %_new_gep_85
  %53 = bitcast i8* %.v7 to i64*
  %_new_load_274 = load i64, i64* %53, align 8
  store i64 %_new_load_274, i64* %XIP, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
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
!6 = !{i64 12}
!7 = !{i64 17}
!8 = !{i64 36}
!9 = !{i64 40}
!10 = !{i64 44}
!11 = !{i64 47}
!12 = !{i64 52}
!13 = !{i64 56}
!14 = !{i64 60}
!15 = !{i64 64}
!16 = !{i64 69}
!17 = !{i64 73}
!18 = !{i64 80}
!19 = !{i64 84}
!20 = !{i64 88}
!21 = !{i64 89}
!22 = !{i64 96}
!23 = !{i64 97}
!24 = !{i64 100}
!25 = !{i64 104}
!26 = !{i64 111}
!27 = !{i64 114}
!28 = !{i64 118}
!29 = !{i64 122}
!30 = !{i64 128}
!31 = !{i64 132}
!32 = !{i64 136}
!33 = !{i64 144}
!34 = !{i64 149}
!35 = !{i64 157}
!36 = !{i64 162}
!37 = !{i64 165}
!38 = !{i64 168}
!39 = !{i64 172}
!40 = !{i64 177}
!41 = !{i64 187}
!42 = !{i64 190}
!43 = !{i64 192}
!44 = !{i64 197}
!45 = !{i64 199}
!46 = !{i64 202}
!47 = !{i64 204}
!48 = !{i64 208}
!49 = !{i64 209}
