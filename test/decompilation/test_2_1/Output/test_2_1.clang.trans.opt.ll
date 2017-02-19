; ModuleID = 'Output/test_2_1.clang.trans.opt.bc'
source_filename = "Output/test_2_1.clang.bc"
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

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -56
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
  %13 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, 16, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  %18 = load i32, i32* %17, align 4, !mcsema_real_eip !5
  %19 = zext i32 %18 to i64, !mcsema_real_eip !5
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !5
  %20 = add i64 %RSP_val.1, 8, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !6
  %23 = zext i32 %22 to i64, !mcsema_real_eip !6
  store i64 %23, i64* %R10, align 8, !mcsema_real_eip !6
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, align 8, !mcsema_real_eip !7
  %24 = add i64 %RSP_val.1, -12, !mcsema_real_eip !8
  %EDI.7 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.8 = load i32, i32* %EDI.7, align 4, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.8, i32* %25, align 4, !mcsema_real_eip !8
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %26 = add i64 %RBP_val.9, -8, !mcsema_real_eip !9
  %ESI.10 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.11 = load i32, i32* %ESI.10, align 4, !mcsema_real_eip !9
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !9
  store i32 %ESI_val.11, i32* %27, align 4, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %28 = add i64 %RBP_val.12, -12, !mcsema_real_eip !10
  %EDX.13 = bitcast i64* %XDX to i32*, !mcsema_real_eip !10
  %EDX_val.14 = load i32, i32* %EDX.13, align 4, !mcsema_real_eip !10
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !10
  store i32 %EDX_val.14, i32* %29, align 4, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %30 = add i64 %RBP_val.15, -16, !mcsema_real_eip !11
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.17 = load i32, i32* %ECX.16, align 4, !mcsema_real_eip !11
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !11
  store i32 %ECX_val.17, i32* %31, align 4, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %32 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !12
  %R8D_val.20 = load i32, i32* %R8D.19, align 4, !mcsema_real_eip !12
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !12
  store i32 %R8D_val.20, i32* %33, align 4, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %34 = add i64 %RBP_val.21, -24, !mcsema_real_eip !13
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !13
  %R9D_val.23 = load i32, i32* %R9D.22, align 4, !mcsema_real_eip !13
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !13
  store i32 %R9D_val.23, i32* %35, align 4, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %36 = add i64 %RBP_val.24, -28, !mcsema_real_eip !14
  %R10D.25 = bitcast i64* %R10 to i32*, !mcsema_real_eip !14
  %R10D_val.26 = load i32, i32* %R10D.25, align 4, !mcsema_real_eip !14
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !14
  store i32 %R10D_val.26, i32* %37, align 4, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.27, -32, !mcsema_real_eip !15
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.28, align 4, !mcsema_real_eip !15
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %39, align 4, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %40 = add i64 %RBP_val.30, -28, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !16
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !16
  %43 = zext i32 %42 to i64, !mcsema_real_eip !16
  store i64 %43, i64* %XAX, align 8, !mcsema_real_eip !16
  %44 = add i64 %RBP_val.30, -32, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !17
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !17
  %47 = add i32 %42, %46, !mcsema_real_eip !17
  %48 = xor i32 %47, %46, !mcsema_real_eip !17
  %49 = xor i32 %48, %42, !mcsema_real_eip !17
  %50 = and i32 %49, 16, !mcsema_real_eip !17
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !17
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !17
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !17
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !17
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !17
  %54 = xor i32 %46, -2147483648, !mcsema_real_eip !17
  %55 = xor i32 %54, %42, !mcsema_real_eip !17
  %56 = and i32 %48, %55, !mcsema_real_eip !17
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !17
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !17
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !17
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !17
  %62 = icmp ult i32 %47, %46, !mcsema_real_eip !17
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !17
  %63 = zext i32 %47 to i64
  store i64 %63, i64* %XAX, align 8, !mcsema_real_eip !17
  %R11_val.34 = load i64, i64* %R11, align 8, !mcsema_real_eip !18
  store i64 %R11_val.34, i64* %XDI, align 8, !mcsema_real_eip !18
  store i64 %63, i64* %XSI, align 8, !mcsema_real_eip !19
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.37, align 1, !mcsema_real_eip !20
  %RDX_val.40 = load i64, i64* %XDX, align 8, !mcsema_real_eip !21
  %RCX_val.41 = load i64, i64* %XCX, align 8, !mcsema_real_eip !21
  %R8_val.42 = load i64, i64* %R8, align 8, !mcsema_real_eip !21
  %R9_val.43 = load i64, i64* %R9, align 8, !mcsema_real_eip !21
  %RSP_val.44 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %64 = inttoptr i64 %RSP_val.44 to i64*, !mcsema_real_eip !21
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !21
  %66 = add i64 %RSP_val.44, 8, !mcsema_real_eip !21
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !21
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !21
  %69 = add i64 %RSP_val.44, 16, !mcsema_real_eip !21
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !21
  %71 = load i64, i64* %70, align 8, !mcsema_real_eip !21
  %72 = add i64 %RSP_val.44, 24, !mcsema_real_eip !21
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !21
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !21
  %75 = add i64 %RSP_val.44, 32, !mcsema_real_eip !21
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !21
  %77 = load i64, i64* %76, align 8, !mcsema_real_eip !21
  %78 = add i64 %RSP_val.44, 40, !mcsema_real_eip !21
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !21
  %80 = load i64, i64* %79, align 8, !mcsema_real_eip !21
  %81 = add i64 %RSP_val.44, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %82, align 8, !mcsema_real_eip !21
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !21
  %83 = tail call x86_64_sysvcc i64 @_printf(i64 %R11_val.34, i64 %63, i64 %RDX_val.40, i64 %RCX_val.41, i64 %R8_val.42, i64 %R9_val.43, i64 %65, i64 %68, i64 %71, i64 %74, i64 %77, i64 %80), !mcsema_real_eip !21
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !22
  %RBP_val.50 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %84 = add i64 %RBP_val.50, -36, !mcsema_real_eip !23
  %85 = trunc i64 %83 to i32
  %86 = inttoptr i64 %84 to i32*, !mcsema_real_eip !23
  store i32 %85, i32* %86, align 4, !mcsema_real_eip !23
  %ECX_val.54 = load i32, i32* %ECX.16, align 4, !mcsema_real_eip !24
  %87 = zext i32 %ECX_val.54 to i64, !mcsema_real_eip !24
  store i64 %87, i64* %XAX, align 8, !mcsema_real_eip !24
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %88 = add i64 %RSP_val.55, 48, !mcsema_real_eip !25
  %89 = xor i64 %88, %RSP_val.55, !mcsema_real_eip !25
  %90 = and i64 %89, 16
  %91 = icmp eq i64 %90, 0
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !25
  %92 = icmp slt i64 %88, 0
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !25
  %93 = icmp eq i64 %88, 0, !mcsema_real_eip !25
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !25
  %94 = xor i64 %RSP_val.55, -9223372036854775808, !mcsema_real_eip !25
  %95 = and i64 %89, %94, !mcsema_real_eip !25
  %96 = icmp slt i64 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !25
  %97 = trunc i64 %88 to i8, !mcsema_real_eip !25
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !25
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !25
  %101 = icmp ugt i64 %RSP_val.55, -49
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !25
  store i64 %88, i64* %XSP, align 8, !mcsema_real_eip !25
  %102 = inttoptr i64 %88 to i64*, !mcsema_real_eip !26
  %103 = load i64, i64* %102, align 8, !mcsema_real_eip !26
  store i64 %103, i64* %XBP, align 8, !mcsema_real_eip !26
  %104 = add i64 %RSP_val.55, 56, !mcsema_real_eip !26
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !26
  %105 = add i64 %RSP_val.55, 64, !mcsema_real_eip !27
  %106 = inttoptr i64 %104 to i64*, !mcsema_real_eip !27
  %107 = load i64, i64* %106, align 8, !mcsema_real_eip !27
  store i64 %107, i64* %XIP, align 8, !mcsema_real_eip !27
  store i64 %105, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !28
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !28
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !28
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !28
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !28
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !28
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !28
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !28
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !28
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !28
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !28
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !28
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !28
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !28
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !28
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !28
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !28
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !28
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !28
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !28
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !28
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !28
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !28
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.59, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, align 8, !mcsema_real_eip !30
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.61, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_6 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.59, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !31
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !31
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !31
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_3, inttoptr (i64 40 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !31
  %10 = and i64 %_trans_xor_, %_trans_p2i_7, !mcsema_real_eip !31
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !31
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !31
  %12 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %12, align 8
  %13 = bitcast i64* %XAX to <2 x i64>*
  store <2 x i64> <i64 100, i64 20>, <2 x i64>* %13, align 8
  %14 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  %15 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !32
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !33
  %EDI_val.67 = load i32, i32* %EDI.66, align 4, !mcsema_real_eip !33
  %16 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.67, i32* %16, align 4, !mcsema_real_eip !33
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.69 = load i64, i64* %XSI, align 8, !mcsema_real_eip !34
  store i64 %RSI_val.69, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !34
  %17 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %17, align 8
  %18 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %18, align 8
  %19 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %19, align 8
  %20 = bitcast i8* %_new_gep_6 to i32*
  store i32 10, i32* %20, align 4, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 8
  %21 = bitcast i8* %_new_gep_29 to i32*
  store i32 20, i32* %21, align 4, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3110 = load i8*, i8** %14, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3110, i64 -28
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !37
  %EBX_val.84 = load i32, i32* %EBX.83, align 4, !mcsema_real_eip !37
  %22 = bitcast i8* %_new_gep_32 to i32*
  store i32 %EBX_val.84, i32* %22, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411 = load i8*, i8** %14, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, i64 -32
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !38
  %R11D_val.87 = load i32, i32* %R11D.86, align 4, !mcsema_real_eip !38
  %23 = bitcast i8* %_new_gep_35 to i32*
  store i32 %R11D_val.87, i32* %23, align 4, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.88 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 -8
  %24 = add i64 %RSP_val.88, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6512 = load i8*, i8** %14, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6512)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %RSP_val.89 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %25 = add i64 %RSP_val.89, 40, !mcsema_real_eip !40
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %26 = and i64 %_trans_xor_44, 16, !mcsema_real_eip !40
  %27 = icmp ne i64 %26, 0, !mcsema_real_eip !40
  store i1 %27, i1* %AF, align 1, !mcsema_real_eip !40
  %28 = icmp slt i64 %25, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !40
  %_trans_icmp_eq_46 = icmp eq i8* %_new_gep_41, null
  store i1 %_trans_icmp_eq_46, i1* %ZF, align 1, !mcsema_real_eip !40
  %29 = xor i64 %_trans_p2i_43, -9223372036854775808, !mcsema_real_eip !40
  %30 = and i64 %29, %_trans_xor_44, !mcsema_real_eip !40
  %31 = icmp slt i64 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !40
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %32 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !40
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  store i1 %34, i1* %PF, align 1, !mcsema_real_eip !40
  %_trans_icmp_ne_55 = icmp ne i64 %RSP_val.89, %_trans_p2i_42
  store i1 %_trans_icmp_ne_55, i1* %CF, align 1, !mcsema_real_eip !40
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !40
  %_allin_new_bt_57 = bitcast i8* %_new_gep_41 to i64*
  %35 = load i64, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !41
  store i64 %35, i64* %XBX, align 8, !mcsema_real_eip !41
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 56
  %36 = add i64 %RSP_val.89, 48, !mcsema_real_eip !41
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_, align 8
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !41
  %_allin_new_bt_60 = bitcast i8* %_new_gep_58 to i64*
  %37 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !42
  store volatile i64 %37, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %37, i64* %XBP, align 8, !mcsema_real_eip !42
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 64
  %38 = add i64 %RSP_val.89, 56, !mcsema_real_eip !42
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 72
  %39 = add i64 %RSP_val.89, 64, !mcsema_real_eip !43
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %40 = load i64, i64* %_allin_new_bt_64, align 8, !mcsema_real_eip !43
  store i64 %40, i64* %XIP, align 8, !mcsema_real_eip !43
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
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
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -56
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_ = icmp ugt i8* %_new_gep_14, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_14, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_14, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_14
  %11 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %11, align 4
  %12 = zext i32 %_new_load_ to i64, !mcsema_real_eip !5
  store i64 %12, i64* %XAX, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 72
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_94 = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  %_address_in_parent_stack_bt_102..v = select i1 %_cond1_n_cond2_cond3_100, i8* %_pot_address_in_parent_stack_93, i8* %_new_gep_17
  %_address_in_parent_stack_bt_102. = bitcast i8* %_address_in_parent_stack_bt_102..v to i32*
  %_new_load_103 = load i32, i32* %_address_in_parent_stack_bt_102., align 4
  %13 = zext i32 %_new_load_103 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %R10, align 8, !mcsema_real_eip !6
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, align 8, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %EDI.7 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.8 = load i32, i32* %EDI.7, align 4, !mcsema_real_eip !8
  %14 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.8, i32* %14, align 4, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %ESI.10 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.11 = load i32, i32* %ESI.10, align 4, !mcsema_real_eip !9
  %15 = bitcast i8* %_new_gep_23 to i32*
  store i32 %ESI_val.11, i32* %15, align 4, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  %EDX.13 = bitcast i64* %XDX to i32*, !mcsema_real_eip !10
  %EDX_val.14 = load i32, i32* %EDX.13, align 4, !mcsema_real_eip !10
  %16 = bitcast i8* %_new_gep_26 to i32*
  store i32 %EDX_val.14, i32* %16, align 4, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.17 = load i32, i32* %ECX.16, align 4, !mcsema_real_eip !11
  %17 = bitcast i8* %_new_gep_29 to i32*
  store i32 %ECX_val.17, i32* %17, align 4, !mcsema_real_eip !11
  %_new_gep_32 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !12
  %R8D_val.20 = load i32, i32* %R8D.19, align 4, !mcsema_real_eip !12
  %18 = bitcast i8* %_new_gep_32 to i32*
  store i32 %R8D_val.20, i32* %18, align 4, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !13
  %R9D_val.23 = load i32, i32* %R9D.22, align 4, !mcsema_real_eip !13
  %19 = bitcast i8* %_new_gep_35 to i32*
  store i32 %R9D_val.23, i32* %19, align 4, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %20 = bitcast i8* %_new_gep_38 to i32*
  store i32 %_new_load_103, i32* %20, align 4, !mcsema_real_eip !14
  %_new_gep_41 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %21 = bitcast i8* %_new_gep_41 to i32*
  store i32 %_new_load_, i32* %21, align 4, !mcsema_real_eip !15
  %22 = add i32 %_new_load_103, %_new_load_, !mcsema_real_eip !17
  %23 = xor i32 %22, %_new_load_, !mcsema_real_eip !17
  %24 = xor i32 %23, %_new_load_103, !mcsema_real_eip !17
  %25 = and i32 %24, 16, !mcsema_real_eip !17
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !17
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !17
  %27 = icmp slt i32 %22, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !17
  %28 = icmp eq i32 %22, 0, !mcsema_real_eip !17
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !17
  %29 = xor i32 %_new_load_, -2147483648, !mcsema_real_eip !17
  %30 = xor i32 %29, %_new_load_103, !mcsema_real_eip !17
  %31 = and i32 %23, %30, !mcsema_real_eip !17
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !17
  %33 = trunc i32 %22 to i8, !mcsema_real_eip !17
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !17
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !17
  %37 = icmp ult i32 %22, %_new_load_, !mcsema_real_eip !17
  store i1 %37, i1* %CF, align 1, !mcsema_real_eip !17
  %38 = zext i32 %22 to i64
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !17
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, align 8, !mcsema_real_eip !18
  store i64 %38, i64* %XSI, align 8, !mcsema_real_eip !19
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.37, align 1, !mcsema_real_eip !20
  %RDX_val.40 = load i64, i64* %XDX, align 8, !mcsema_real_eip !21
  %RCX_val.41 = load i64, i64* %XCX, align 8, !mcsema_real_eip !21
  %R8_val.42 = load i64, i64* %R8, align 8, !mcsema_real_eip !21
  %R9_val.43 = load i64, i64* %R9, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_134 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  %.v3 = select i1 %_cond1_n_cond2_cond3_145, i8* %_pot_address_in_parent_stack_138, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49
  %39 = bitcast i8* %.v3 to i64*
  %_new_load_148 = load i64, i64* %39, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 8
  %_ptr_to_int_149 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  %_address_in_parent_stack_bt_162._allin_new_bt_52.v = select i1 %_cond1_n_cond2_cond3_160, i8* %_pot_address_in_parent_stack_153, i8* %_new_gep_51
  %_address_in_parent_stack_bt_162._allin_new_bt_52 = bitcast i8* %_address_in_parent_stack_bt_162._allin_new_bt_52.v to i64*
  %_new_load_163 = load i64, i64* %_address_in_parent_stack_bt_162._allin_new_bt_52, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 16
  %_ptr_to_int_164 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  %.v4 = select i1 %_cond1_n_cond2_cond3_175, i8* %_pot_address_in_parent_stack_168, i8* %_new_gep_53
  %40 = bitcast i8* %.v4 to i64*
  %_new_load_178 = load i64, i64* %40, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 24
  %_ptr_to_int_179 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_182 = sub i64 %_ptr_to_int_179, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  %_address_in_parent_stack_bt_192._allin_new_bt_56.v = select i1 %_cond1_n_cond2_cond3_190, i8* %_pot_address_in_parent_stack_183, i8* %_new_gep_55
  %_address_in_parent_stack_bt_192._allin_new_bt_56 = bitcast i8* %_address_in_parent_stack_bt_192._allin_new_bt_56.v to i64*
  %_new_load_193 = load i64, i64* %_address_in_parent_stack_bt_192._allin_new_bt_56, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 32
  %_ptr_to_int_194 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  %.v5 = select i1 %_cond1_n_cond2_cond3_205, i8* %_pot_address_in_parent_stack_198, i8* %_new_gep_57
  %41 = bitcast i8* %.v5 to i64*
  %_new_load_208 = load i64, i64* %41, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 40
  %_ptr_to_int_209 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  %_address_in_parent_stack_bt_222._allin_new_bt_60.v = select i1 %_cond1_n_cond2_cond3_220, i8* %_pot_address_in_parent_stack_213, i8* %_new_gep_59
  %_address_in_parent_stack_bt_222._allin_new_bt_60 = bitcast i8* %_address_in_parent_stack_bt_222._allin_new_bt_60.v to i64*
  %_new_load_223 = load i64, i64* %_address_in_parent_stack_bt_222._allin_new_bt_60, align 8
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %42 = add i64 %RSP_val.45, -8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !21
  %43 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %38, i64 %RDX_val.40, i64 %RCX_val.41, i64 %R8_val.42, i64 %R9_val.43, i64 %_new_load_148, i64 %_new_load_163, i64 %_new_load_178, i64 %_new_load_193, i64 %_new_load_208, i64 %_new_load_223)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -36
  %44 = trunc i64 %43 to i32
  %45 = bitcast i8* %_new_gep_65 to i32*
  store i32 %44, i32* %45, align 4, !mcsema_real_eip !23
  %ECX_val.54 = load i32, i32* %ECX.16, align 4, !mcsema_real_eip !24
  %46 = zext i32 %ECX_val.54 to i64, !mcsema_real_eip !24
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 48
  %47 = add i64 %RSP_val.55, 48, !mcsema_real_eip !25
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %48 = and i64 %_trans_xor_71, 16
  %49 = icmp eq i64 %48, 0
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !25
  %50 = icmp slt i64 %47, 0
  store i1 %50, i1* %SF, align 1, !mcsema_real_eip !25
  %_trans_icmp_eq_73 = icmp eq i8* %_new_gep_68, null
  store i1 %_trans_icmp_eq_73, i1* %ZF, align 1, !mcsema_real_eip !25
  %51 = xor i64 %_trans_p2i_70, -9223372036854775808, !mcsema_real_eip !25
  %52 = and i64 %_trans_xor_71, %51, !mcsema_real_eip !25
  %53 = icmp slt i64 %52, 0
  store i1 %53, i1* %OF, align 1, !mcsema_real_eip !25
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %54 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !25
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  store i1 %56, i1* %PF, align 1, !mcsema_real_eip !25
  %_trans_icmp_ne_82 = icmp ne i64 %RSP_val.55, %_trans_p2i_69
  store i1 %_trans_icmp_ne_82, i1* %CF, align 1, !mcsema_real_eip !25
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_, align 8
  store i64 %47, i64* %XSP, align 8, !mcsema_real_eip !25
  %_offset_above_rbp_227 = sub i64 %_trans_p2i_69, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  %.v6 = select i1 %_cond1_n_cond2_cond3_235, i8* %_pot_address_in_parent_stack_228, i8* %_new_gep_68
  %57 = bitcast i8* %.v6 to i64*
  %_new_load_238 = load i64, i64* %57, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_238 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_238, i64* %XBP, align 8, !mcsema_real_eip !26
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 56
  %58 = add i64 %RSP_val.55, 56, !mcsema_real_eip !26
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 64
  %59 = add i64 %RSP_val.55, 64, !mcsema_real_eip !27
  %_ptr_to_int_239 = ptrtoint i8* %_new_gep_85 to i64
  %_offset_above_rbp_242 = sub i64 %_ptr_to_int_239, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  %_address_in_parent_stack_bt_252._allin_new_bt_88.v = select i1 %_cond1_n_cond2_cond3_250, i8* %_pot_address_in_parent_stack_243, i8* %_new_gep_85
  %_address_in_parent_stack_bt_252._allin_new_bt_88 = bitcast i8* %_address_in_parent_stack_bt_252._allin_new_bt_88.v to i64*
  %_new_load_253 = load i64, i64* %_address_in_parent_stack_bt_252._allin_new_bt_88, align 8
  store i64 %_new_load_253, i64* %XIP, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !28
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !28
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !28
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !28
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !28
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !28
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !28
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !28
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !28
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !28
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !28
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !28
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !28
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !28
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !28
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !28
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !28
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !28
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !28
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !28
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !28
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !28
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !28
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.59, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, align 8, !mcsema_real_eip !30
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.61, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_6 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.59, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !31
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !31
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !31
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_3, inttoptr (i64 40 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !31
  %9 = and i64 %_trans_xor_, %_trans_p2i_7, !mcsema_real_eip !31
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !31
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !31
  %11 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %11, align 8
  %12 = bitcast i64* %XAX to <2 x i64>*
  store <2 x i64> <i64 100, i64 20>, <2 x i64>* %12, align 8
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  %13 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !32
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !33
  %EDI_val.67 = load i32, i32* %EDI.66, align 4, !mcsema_real_eip !33
  %14 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.67, i32* %14, align 4, !mcsema_real_eip !33
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.69 = load i64, i64* %XSI, align 8, !mcsema_real_eip !34
  store i64 %RSI_val.69, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !34
  %15 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %15, align 8
  %16 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %16, align 8
  %17 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %17, align 8
  %18 = bitcast i8* %_new_gep_6 to i32*
  store i32 10, i32* %18, align 4, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 8
  %19 = bitcast i8* %_new_gep_29 to i32*
  store i32 20, i32* %19, align 4, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -28
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !37
  %EBX_val.84 = load i32, i32* %EBX.83, align 4, !mcsema_real_eip !37
  %20 = bitcast i8* %_new_gep_32 to i32*
  store i32 %EBX_val.84, i32* %20, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -32
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !38
  %R11D_val.87 = load i32, i32* %R11D.86, align 4, !mcsema_real_eip !38
  %21 = bitcast i8* %_new_gep_35 to i32*
  store i32 %R11D_val.87, i32* %21, align 4, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.88 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 -8
  %22 = add i64 %RSP_val.88, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %RSP_val.89 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %23 = add i64 %RSP_val.89, 40, !mcsema_real_eip !40
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %24 = and i64 %_trans_xor_44, 16, !mcsema_real_eip !40
  %25 = icmp ne i64 %24, 0, !mcsema_real_eip !40
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !40
  %26 = icmp slt i64 %23, 0
  store i1 %26, i1* %SF, align 1, !mcsema_real_eip !40
  %_trans_icmp_eq_46 = icmp eq i8* %_new_gep_41, null
  store i1 %_trans_icmp_eq_46, i1* %ZF, align 1, !mcsema_real_eip !40
  %27 = xor i64 %_trans_p2i_43, -9223372036854775808, !mcsema_real_eip !40
  %28 = and i64 %27, %_trans_xor_44, !mcsema_real_eip !40
  %29 = icmp slt i64 %28, 0
  store i1 %29, i1* %OF, align 1, !mcsema_real_eip !40
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %30 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !40
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  store i1 %32, i1* %PF, align 1, !mcsema_real_eip !40
  %_trans_icmp_ne_55 = icmp ne i64 %RSP_val.89, %_trans_p2i_42
  store i1 %_trans_icmp_ne_55, i1* %CF, align 1, !mcsema_real_eip !40
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !40
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_trans_p2i_42, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_41
  %33 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %33, align 8
  store i64 %_new_load_, i64* %XBX, align 8, !mcsema_real_eip !41
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 56
  %34 = add i64 %RSP_val.89, 48, !mcsema_real_eip !41
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !41
  %_ptr_to_int_67 = ptrtoint i8* %_new_gep_58 to i64
  %_offset_above_rbp_70 = sub i64 %_ptr_to_int_67, %_local_end_to_int_
  %_pot_address_in_parent_stack_71 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_70
  %_cond1_72 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_73 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_74 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_75 = or i1 %_cond2_1_73, %_cond2_2_74
  %_cond4_76 = icmp ule i8* %_pot_address_in_parent_stack_71, %_parent_stack_end_ptr_
  %_cond1_n_cond2_77 = and i1 %_cond1_72, %_cond2_75
  %_cond1_n_cond2_cond3_78 = and i1 %_cond1_n_cond2_77, %_cond4_76
  %_address_in_parent_stack_bt_80._allin_new_bt_60.v = select i1 %_cond1_n_cond2_cond3_78, i8* %_pot_address_in_parent_stack_71, i8* %_new_gep_58
  %_address_in_parent_stack_bt_80._allin_new_bt_60 = bitcast i8* %_address_in_parent_stack_bt_80._allin_new_bt_60.v to i64*
  %_new_load_81 = load i64, i64* %_address_in_parent_stack_bt_80._allin_new_bt_60, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_81 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_81, i64* %XBP, align 8, !mcsema_real_eip !42
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 64
  %35 = add i64 %RSP_val.89, 56, !mcsema_real_eip !42
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 72
  %36 = add i64 %RSP_val.89, 64, !mcsema_real_eip !43
  %_ptr_to_int_82 = ptrtoint i8* %_new_gep_61 to i64
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  %.v5 = select i1 %_cond1_n_cond2_cond3_93, i8* %_pot_address_in_parent_stack_86, i8* %_new_gep_61
  %37 = bitcast i8* %.v5 to i64*
  %_new_load_96 = load i64, i64* %37, align 8
  store i64 %_new_load_96, i64* %XIP, align 8, !mcsema_real_eip !43
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
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
!7 = !{i64 15}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 34}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 45}
!15 = !{i64 49}
!16 = !{i64 52}
!17 = !{i64 55}
!18 = !{i64 58}
!19 = !{i64 61}
!20 = !{i64 63}
!21 = !{i64 65}
!22 = !{i64 70}
!23 = !{i64 72}
!24 = !{i64 75}
!25 = !{i64 77}
!26 = !{i64 81}
!27 = !{i64 82}
!28 = !{i64 96}
!29 = !{i64 97}
!30 = !{i64 100}
!31 = !{i64 101}
!32 = !{i64 149}
!33 = !{i64 156}
!34 = !{i64 159}
!35 = !{i64 176}
!36 = !{i64 183}
!37 = !{i64 191}
!38 = !{i64 194}
!39 = !{i64 198}
!40 = !{i64 203}
!41 = !{i64 207}
!42 = !{i64 208}
!43 = !{i64 209}
