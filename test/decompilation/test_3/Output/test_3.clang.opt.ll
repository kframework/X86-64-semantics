; ModuleID = 'Output/test_3.clang.opt.bc'
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState* nocapture) local_unnamed_addr #0 {
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
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -88
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
  %13 = icmp ult i64 %1, 80, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 10, i64* %XSI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -56, !mcsema_real_eip !6
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !6
  %17 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0xc0 to i64), i64 40>, <2 x i64>* %17, align 8
  %18 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %19, align 4, !mcsema_real_eip !7
  %RAX_val.6 = load i64, i64* %XAX, align 8, !mcsema_real_eip !8
  store i64 %RAX_val.6, i64* %XDI, align 8, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %20 = add i64 %RBP_val.7, -56, !mcsema_real_eip !9
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.9 = load i32, i32* %ESI.8, align 4, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 %ESI_val.9, i32* %21, align 4, !mcsema_real_eip !9
  %RCX_val.10 = load i64, i64* %XCX, align 8, !mcsema_real_eip !10
  store i64 %RCX_val.10, i64* %XSI, align 8, !mcsema_real_eip !10
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %22 = add i64 %RBP_val.11, -64, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !11
  %RAX_val.12 = load i64, i64* %XAX, align 8, !mcsema_real_eip !11
  store i64 %RAX_val.12, i64* %23, align 8, !mcsema_real_eip !11
  %RDI_val.13 = load i64, i64* %XDI, align 8, !mcsema_real_eip !12
  %RSI_val.14 = load i64, i64* %XSI, align 8, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !12
  %RSP_val.16 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %24 = add i64 %RSP_val.16, -8
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %25, align 8, !mcsema_real_eip !12
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !12
  %26 = tail call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.13, i64 %RSI_val.14, i64 %RDX_val.15), !mcsema_real_eip !12
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, align 8
  %27 = add i64 %RBP_val.17, -64, !mcsema_real_eip !13
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !13
  %29 = load i64, i64* %28, align 8, !mcsema_real_eip !13
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !13
  %30 = add i64 %RBP_val.17, -56, !mcsema_real_eip !14
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !14
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !14
  %33 = zext i32 %32 to i64, !mcsema_real_eip !14
  store i64 %33, i64* %XSI, align 8, !mcsema_real_eip !14
  %RSP_val.19 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %34 = add i64 %RSP_val.19, -8
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %35, align 8, !mcsema_real_eip !15
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !15
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, align 8, !mcsema_real_eip !16
  %RBP_val.20 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %36 = add i64 %RBP_val.20, -52, !mcsema_real_eip !17
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.22 = load i32, i32* %EAX.21, align 4, !mcsema_real_eip !17
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !17
  store i32 %EAX_val.22, i32* %37, align 4, !mcsema_real_eip !17
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %38 = add i64 %RBP_val.23, -52, !mcsema_real_eip !18
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !18
  %40 = load i32, i32* %39, align 4, !mcsema_real_eip !18
  %41 = zext i32 %40 to i64, !mcsema_real_eip !18
  store i64 %41, i64* %XSI, align 8, !mcsema_real_eip !18
  %AL.24 = bitcast i64* %XAX to i8*, !mcsema_real_eip !19
  store i8 0, i8* %AL.24, align 1, !mcsema_real_eip !19
  %RDI_val.25 = load i64, i64* %XDI, align 8, !mcsema_real_eip !20
  %RDX_val.27 = load i64, i64* %XDX, align 8, !mcsema_real_eip !20
  %RCX_val.28 = load i64, i64* %XCX, align 8, !mcsema_real_eip !20
  %R8_val.29 = load i64, i64* %R8, align 8, !mcsema_real_eip !20
  %R9_val.30 = load i64, i64* %R9, align 8, !mcsema_real_eip !20
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %42 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !20
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !20
  %44 = add i64 %RSP_val.31, 8, !mcsema_real_eip !20
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !20
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !20
  %47 = add i64 %RSP_val.31, 16, !mcsema_real_eip !20
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !20
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !20
  %50 = add i64 %RSP_val.31, 24, !mcsema_real_eip !20
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !20
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !20
  %53 = add i64 %RSP_val.31, 32, !mcsema_real_eip !20
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !20
  %55 = load i64, i64* %54, align 8, !mcsema_real_eip !20
  %56 = add i64 %RSP_val.31, 40, !mcsema_real_eip !20
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !20
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !20
  %59 = add i64 %RSP_val.31, -8
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !20
  store i64 -2415393069852865332, i64* %60, align 8, !mcsema_real_eip !20
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !20
  %61 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.25, i64 %41, i64 %RDX_val.27, i64 %RCX_val.28, i64 %R8_val.29, i64 %R9_val.30, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58), !mcsema_real_eip !20
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !20
  %RBP_val.33 = load i64, i64* %XBP, align 8
  %62 = add i64 %RBP_val.33, -52, !mcsema_real_eip !21
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !21
  %64 = load i32, i32* %63, align 4, !mcsema_real_eip !21
  %65 = zext i32 %64 to i64, !mcsema_real_eip !21
  store i64 %65, i64* %XSI, align 8, !mcsema_real_eip !21
  %66 = add i64 %RBP_val.33, -68, !mcsema_real_eip !22
  %67 = trunc i64 %61 to i32
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !22
  store i32 %67, i32* %68, align 4, !mcsema_real_eip !22
  %ESI_val.38 = load i32, i32* %ESI.8, align 4, !mcsema_real_eip !23
  %69 = zext i32 %ESI_val.38 to i64, !mcsema_real_eip !23
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !23
  %RSP_val.39 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %70 = add i64 %RSP_val.39, 80, !mcsema_real_eip !24
  %71 = xor i64 %70, %RSP_val.39, !mcsema_real_eip !24
  %72 = and i64 %71, 16
  %73 = icmp eq i64 %72, 0
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !24
  %74 = icmp slt i64 %70, 0
  store i1 %74, i1* %SF, align 1, !mcsema_real_eip !24
  %75 = icmp eq i64 %70, 0, !mcsema_real_eip !24
  store i1 %75, i1* %ZF, align 1, !mcsema_real_eip !24
  %76 = xor i64 %RSP_val.39, -9223372036854775808, !mcsema_real_eip !24
  %77 = and i64 %71, %76, !mcsema_real_eip !24
  %78 = icmp slt i64 %77, 0
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !24
  %79 = trunc i64 %70 to i8, !mcsema_real_eip !24
  %80 = tail call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !24
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  store i1 %82, i1* %PF, align 1, !mcsema_real_eip !24
  %83 = icmp ugt i64 %RSP_val.39, -81
  store i1 %83, i1* %CF, align 1, !mcsema_real_eip !24
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !24
  %84 = inttoptr i64 %70 to i64*, !mcsema_real_eip !25
  %85 = load i64, i64* %84, align 8, !mcsema_real_eip !25
  store i64 %85, i64* %XBP, align 8, !mcsema_real_eip !25
  %86 = add i64 %RSP_val.39, 88, !mcsema_real_eip !25
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !25
  %87 = add i64 %RSP_val.39, 96, !mcsema_real_eip !26
  %88 = inttoptr i64 %86 to i64*, !mcsema_real_eip !26
  %89 = load i64, i64* %88, align 8, !mcsema_real_eip !26
  store i64 %89, i64* %XIP, align 8, !mcsema_real_eip !26
  store i64 %87, i64* %XSP, align 8, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !27
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !27
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !27
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !27
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !27
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !27
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !27
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !27
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !27
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !27
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !27
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !27
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !27
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !27
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !27
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !27
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !27
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !27
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !27
  %RBP_val.42 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %1 = add i64 %RSP_val.43, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !27
  store i64 %RBP_val.42, i64* %2, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !28
  %3 = add i64 %RSP_val.43, -16, !mcsema_real_eip !29
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !29
  %RDI_val.46 = load i64, i64* %XDI, align 8, !mcsema_real_eip !29
  store i64 %RDI_val.46, i64* %4, align 8, !mcsema_real_eip !29
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %5 = add i64 %RBP_val.47, -12, !mcsema_real_eip !30
  %ESI.48 = bitcast i64* %XSI to i32*, !mcsema_real_eip !30
  %ESI_val.49 = load i32, i32* %ESI.48, align 4, !mcsema_real_eip !30
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !30
  store i32 %ESI_val.49, i32* %6, align 4, !mcsema_real_eip !30
  %RBP_val.50 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %7 = add i64 %RBP_val.50, -16, !mcsema_real_eip !31
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !31
  store i32 0, i32* %8, align 4, !mcsema_real_eip !31
  %RBP_val.51 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %9 = add i64 %RBP_val.51, -20, !mcsema_real_eip !32
  br label %block_0x19, !mcsema_real_eip !33

block_0x19:                                       ; preds = %block_0x25, %entry
  %.sink.in = phi i64 [ %63, %block_0x25 ], [ %9, %entry ]
  %EAX_val.74.sink = phi i32 [ %66, %block_0x25 ], [ 0, %entry ]
  %10 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.74.sink, i32* %10, align 4
  %RBP_val.52 = load i64, i64* %XBP, align 8
  %11 = add i64 %RBP_val.52, -20
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4, !mcsema_real_eip !33
  %14 = zext i32 %13 to i64, !mcsema_real_eip !33
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !33
  %15 = add i64 %RBP_val.52, -12, !mcsema_real_eip !34
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !34
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !34
  %18 = sub i32 %13, %17, !mcsema_real_eip !34
  %19 = xor i32 %18, %13, !mcsema_real_eip !34
  %20 = xor i32 %19, %17, !mcsema_real_eip !34
  %21 = and i32 %20, 16, !mcsema_real_eip !34
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !34
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !34
  %23 = trunc i32 %18 to i8, !mcsema_real_eip !34
  %24 = tail call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !34
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !34
  %27 = icmp eq i32 %18, 0, !mcsema_real_eip !34
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !34
  %28 = icmp slt i32 %18, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !34
  %29 = icmp ult i32 %13, %17, !mcsema_real_eip !34
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !34
  %30 = xor i32 %17, %13, !mcsema_real_eip !34
  %31 = and i32 %19, %30, !mcsema_real_eip !34
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !34
  %tmp = xor i1 %32, %28
  %33 = add i64 %RBP_val.52, -16
  %34 = inttoptr i64 %33 to i32*
  br i1 %tmp, label %block_0x25, label %block_0x44, !mcsema_real_eip !35

block_0x25:                                       ; preds = %block_0x19
  %35 = add i64 %RBP_val.52, -8, !mcsema_real_eip !36
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !36
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !36
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !36
  %38 = load i32, i32* %12, align 4, !mcsema_real_eip !37
  %39 = sext i32 %38 to i64, !mcsema_real_eip !37
  store i64 %39, i64* %XCX, align 8, !mcsema_real_eip !37
  %40 = shl nsw i64 %39, 2
  %41 = add i64 %40, %37, !mcsema_real_eip !38
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !38
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !38
  %44 = zext i32 %43 to i64, !mcsema_real_eip !38
  store i64 %44, i64* %XDX, align 8, !mcsema_real_eip !38
  %45 = load i32, i32* %34, align 4, !mcsema_real_eip !39
  %46 = add i32 %43, %45, !mcsema_real_eip !39
  %47 = xor i32 %46, %45, !mcsema_real_eip !39
  %48 = xor i32 %47, %43, !mcsema_real_eip !39
  %49 = and i32 %48, 16, !mcsema_real_eip !39
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !39
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !39
  %51 = icmp slt i32 %46, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !39
  %52 = icmp eq i32 %46, 0, !mcsema_real_eip !39
  store i1 %52, i1* %ZF, align 1, !mcsema_real_eip !39
  %53 = xor i32 %45, -2147483648, !mcsema_real_eip !39
  %54 = xor i32 %53, %43, !mcsema_real_eip !39
  %55 = and i32 %47, %54, !mcsema_real_eip !39
  %56 = icmp slt i32 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !39
  %57 = trunc i32 %46 to i8, !mcsema_real_eip !39
  %58 = tail call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !39
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !39
  %61 = icmp ult i32 %46, %45, !mcsema_real_eip !39
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !39
  %62 = zext i32 %46 to i64, !mcsema_real_eip !39
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !39
  store i32 %46, i32* %34, align 4, !mcsema_real_eip !40
  %RBP_val.69 = load i64, i64* %XBP, align 8
  %63 = add i64 %RBP_val.69, -20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !41
  %65 = load i32, i32* %64, align 4, !mcsema_real_eip !41
  %66 = add i32 %65, 1, !mcsema_real_eip !42
  %67 = xor i32 %66, %65, !mcsema_real_eip !42
  %68 = and i32 %67, 16, !mcsema_real_eip !42
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !42
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !42
  %70 = icmp slt i32 %66, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !42
  %71 = icmp eq i32 %66, 0, !mcsema_real_eip !42
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !42
  %72 = xor i32 %65, -2147483648, !mcsema_real_eip !42
  %73 = and i32 %67, %72, !mcsema_real_eip !42
  %74 = icmp slt i32 %73, 0
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !42
  %75 = trunc i32 %66 to i8, !mcsema_real_eip !42
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !42
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !42
  %79 = icmp eq i32 %65, -1
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !42
  %80 = zext i32 %66 to i64, !mcsema_real_eip !42
  store i64 %80, i64* %XAX, align 8, !mcsema_real_eip !42
  br label %block_0x19, !mcsema_real_eip !43

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !27
  %81 = load i32, i32* %34, align 4, !mcsema_real_eip !44
  %82 = zext i32 %81 to i64, !mcsema_real_eip !44
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !44
  %RSP_val.57 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %83 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !45
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !45
  store i64 %84, i64* %XBP, align 8, !mcsema_real_eip !45
  %85 = add i64 %RSP_val.57, 8, !mcsema_real_eip !45
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !45
  %86 = add i64 %RSP_val.57, 16, !mcsema_real_eip !46
  %87 = inttoptr i64 %85 to i64*, !mcsema_real_eip !46
  %88 = load i64, i64* %87, align 8, !mcsema_real_eip !46
  store i64 %88, i64* %XIP, align 8, !mcsema_real_eip !46
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 80}
!3 = !{i64 81}
!4 = !{i64 84}
!5 = !{i64 88}
!6 = !{i64 93}
!7 = !{i64 112}
!8 = !{i64 119}
!9 = !{i64 122}
!10 = !{i64 125}
!11 = !{i64 128}
!12 = !{i64 132}
!13 = !{i64 137}
!14 = !{i64 141}
!15 = !{i64 144}
!16 = !{i64 149}
!17 = !{i64 159}
!18 = !{i64 162}
!19 = !{i64 165}
!20 = !{i64 167}
!21 = !{i64 172}
!22 = !{i64 175}
!23 = !{i64 178}
!24 = !{i64 180}
!25 = !{i64 184}
!26 = !{i64 185}
!27 = !{i64 0}
!28 = !{i64 1}
!29 = !{i64 4}
!30 = !{i64 8}
!31 = !{i64 11}
!32 = !{i64 18}
!33 = !{i64 25}
!34 = !{i64 28}
!35 = !{i64 31}
!36 = !{i64 37}
!37 = !{i64 41}
!38 = !{i64 45}
!39 = !{i64 48}
!40 = !{i64 51}
!41 = !{i64 54}
!42 = !{i64 57}
!43 = !{i64 63}
!44 = !{i64 68}
!45 = !{i64 71}
!46 = !{i64 72}
