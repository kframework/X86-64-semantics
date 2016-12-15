; ModuleID = 'Output/test_2_1.clang.opt.bc'
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
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %5 = sub i64 %3, 40, !mcsema_real_eip !5
  %6 = xor i64 %5, %3, !mcsema_real_eip !5
  %7 = xor i64 %6, 40, !mcsema_real_eip !5
  %8 = and i64 %7, 16, !mcsema_real_eip !5
  %9 = icmp ne i64 %8, 0, !mcsema_real_eip !5
  store i1 %9, i1* %AF, !mcsema_real_eip !5
  %10 = trunc i64 %5 to i8, !mcsema_real_eip !5
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !5
  %12 = trunc i8 %11 to i1, !mcsema_real_eip !5
  %13 = xor i1 %12, true, !mcsema_real_eip !5
  store i1 %13, i1* %PF, !mcsema_real_eip !5
  %14 = icmp eq i64 %5, 0, !mcsema_real_eip !5
  store i1 %14, i1* %ZF, !mcsema_real_eip !5
  %15 = lshr i64 %5, 63, !mcsema_real_eip !5
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !5
  store i1 %16, i1* %SF, !mcsema_real_eip !5
  %17 = icmp ult i64 %3, 40, !mcsema_real_eip !5
  store i1 %17, i1* %CF, !mcsema_real_eip !5
  %18 = xor i64 %3, 40, !mcsema_real_eip !5
  %19 = and i64 %18, %6, !mcsema_real_eip !5
  %20 = lshr i64 %19, 63, !mcsema_real_eip !5
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !5
  store i1 %21, i1* %OF, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  store i64 100, i64* %XAX, !mcsema_real_eip !6
  store i64 200, i64* %XCX, !mcsema_real_eip !7
  store i64 300, i64* %XDX, !mcsema_real_eip !8
  store i64 400, i64* %R8, !mcsema_real_eip !9
  store i64 500, i64* %R9, !mcsema_real_eip !10
  store i64 600, i64* %R10, !mcsema_real_eip !11
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 20, i64* %XBX, !mcsema_real_eip !13
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !14
  %22 = add i64 %RBP_val.6, -12, !mcsema_real_eip !14
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !14
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %24, !mcsema_real_eip !14
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !15
  %25 = add i64 %RBP_val.7, -16, !mcsema_real_eip !15
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !15
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %27, !mcsema_real_eip !15
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !16
  %28 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !16
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %29, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %30 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %30, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %31 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %31, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %32 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %32, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %33 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %33, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %34 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %34, i64* %R9, !mcsema_real_eip !21
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !22
  %35 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !22
  %36 = inttoptr i64 %RSP_val.22 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %36, !mcsema_real_eip !22
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !23
  %37 = add i64 %RSP_val.23, 8, !mcsema_real_eip !23
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !23
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %39, !mcsema_real_eip !23
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !24
  %40 = add i64 %RBP_val.24, -28, !mcsema_real_eip !24
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !24
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %42, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !25
  %43 = add i64 %RBP_val.27, -32, !mcsema_real_eip !25
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !25
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %45, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %46 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %47, !mcsema_real_eip !26
  store i64 %46, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %48 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %49 = xor i64 %48, %RSP_val.31, !mcsema_real_eip !27
  %50 = xor i64 %49, 40, !mcsema_real_eip !27
  %51 = and i64 %50, 16, !mcsema_real_eip !27
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !27
  store i1 %52, i1* %AF, !mcsema_real_eip !27
  %53 = lshr i64 %48, 63, !mcsema_real_eip !27
  %54 = trunc i64 %53 to i1, !mcsema_real_eip !27
  store i1 %54, i1* %SF, !mcsema_real_eip !27
  %55 = icmp eq i64 %48, 0, !mcsema_real_eip !27
  store i1 %55, i1* %ZF, !mcsema_real_eip !27
  %56 = xor i64 %RSP_val.31, 40, !mcsema_real_eip !27
  %57 = xor i64 %56, -1, !mcsema_real_eip !27
  %58 = and i64 %57, %49, !mcsema_real_eip !27
  %59 = lshr i64 %58, 63, !mcsema_real_eip !27
  %60 = and i64 %59, 1, !mcsema_real_eip !27
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !27
  store i1 %61, i1* %OF, !mcsema_real_eip !27
  %62 = trunc i64 %48 to i8, !mcsema_real_eip !27
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !27
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !27
  %65 = xor i1 %64, true, !mcsema_real_eip !27
  store i1 %65, i1* %PF, !mcsema_real_eip !27
  %66 = icmp ult i64 %48, %RSP_val.31, !mcsema_real_eip !27
  store i1 %66, i1* %CF, !mcsema_real_eip !27
  store i64 %48, i64* %XSP, !mcsema_real_eip !27
  %67 = inttoptr i64 %48 to i64*, !mcsema_real_eip !28
  %68 = load i64, i64* %67, !mcsema_real_eip !28
  store i64 %68, i64* %XBX, !mcsema_real_eip !28
  %69 = add i64 %48, 8, !mcsema_real_eip !28
  store i64 %69, i64* %XSP, !mcsema_real_eip !28
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !29
  %71 = load i64, i64* %70, !mcsema_real_eip !29
  store i64 %71, i64* %XBP, !mcsema_real_eip !29
  %72 = add i64 %69, 8, !mcsema_real_eip !29
  store i64 %72, i64* %XSP, !mcsema_real_eip !29
  %73 = add i64 %72, 8, !mcsema_real_eip !30
  %74 = inttoptr i64 %72 to i64*, !mcsema_real_eip !30
  %75 = load i64, i64* %74, !mcsema_real_eip !30
  store i64 %75, i64* %XIP, !mcsema_real_eip !30
  store i64 %73, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.35, i64* %2, !mcsema_real_eip !31
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  store i64 %1, i64* %XBP, !mcsema_real_eip !32
  %3 = sub i64 %1, 48, !mcsema_real_eip !33
  %4 = xor i64 %3, %1, !mcsema_real_eip !33
  %5 = xor i64 %4, 48, !mcsema_real_eip !33
  %6 = and i64 %5, 16, !mcsema_real_eip !33
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !33
  store i1 %7, i1* %AF, !mcsema_real_eip !33
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !33
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !33
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !33
  %11 = xor i1 %10, true, !mcsema_real_eip !33
  store i1 %11, i1* %PF, !mcsema_real_eip !33
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !33
  store i1 %12, i1* %ZF, !mcsema_real_eip !33
  %13 = lshr i64 %3, 63, !mcsema_real_eip !33
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !33
  store i1 %14, i1* %SF, !mcsema_real_eip !33
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !33
  store i1 %15, i1* %CF, !mcsema_real_eip !33
  %16 = xor i64 %1, 48, !mcsema_real_eip !33
  %17 = and i64 %16, %4, !mcsema_real_eip !33
  %18 = lshr i64 %17, 63, !mcsema_real_eip !33
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !33
  store i1 %19, i1* %OF, !mcsema_real_eip !33
  store i64 %3, i64* %XSP, !mcsema_real_eip !33
  %20 = add i64 %1, 24, !mcsema_real_eip !34
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !34
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !34
  %23 = load i32, i32* %22, !mcsema_real_eip !34
  %24 = zext i32 %23 to i64, !mcsema_real_eip !34
  store i64 %24, i64* %XAX, !mcsema_real_eip !34
  %25 = add i64 %1, 16, !mcsema_real_eip !35
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !35
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !35
  %28 = load i32, i32* %27, !mcsema_real_eip !35
  %29 = zext i32 %28 to i64, !mcsema_real_eip !35
  store i64 %29, i64* %R10, !mcsema_real_eip !35
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, !mcsema_real_eip !36
  %30 = add i64 %1, -4, !mcsema_real_eip !37
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !37
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !37
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !37
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !37
  store i32 %EDI_val.43, i32* %32, !mcsema_real_eip !37
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !38
  %33 = add i64 %RBP_val.44, -8, !mcsema_real_eip !38
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !38
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !38
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !38
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !38
  store i32 %ESI_val.46, i32* %35, !mcsema_real_eip !38
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !39
  %36 = add i64 %RBP_val.47, -12, !mcsema_real_eip !39
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !39
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !39
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !39
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %38, !mcsema_real_eip !39
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !40
  %39 = add i64 %RBP_val.50, -16, !mcsema_real_eip !40
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !40
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !40
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !40
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !40
  store i32 %ECX_val.52, i32* %41, !mcsema_real_eip !40
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !41
  %42 = add i64 %RBP_val.53, -20, !mcsema_real_eip !41
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !41
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !41
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !41
  store i32 %R8D_val.55, i32* %44, !mcsema_real_eip !41
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !42
  %45 = add i64 %RBP_val.56, -24, !mcsema_real_eip !42
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !42
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !42
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !42
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !42
  store i32 %R9D_val.58, i32* %47, !mcsema_real_eip !42
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !43
  %48 = add i64 %RBP_val.59, -28, !mcsema_real_eip !43
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !43
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !43
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.61, i32* %50, !mcsema_real_eip !43
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !44
  %51 = add i64 %RBP_val.62, -32, !mcsema_real_eip !44
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !44
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !44
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.64, i32* %53, !mcsema_real_eip !44
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !45
  %54 = add i64 %RBP_val.65, -28, !mcsema_real_eip !45
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !45
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !45
  %57 = load i32, i32* %56, !mcsema_real_eip !45
  %58 = zext i32 %57 to i64, !mcsema_real_eip !45
  store i64 %58, i64* %XAX, !mcsema_real_eip !45
  %59 = add i64 %RBP_val.65, -32, !mcsema_real_eip !46
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !46
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !46
  %62 = load i32, i32* %61, !mcsema_real_eip !46
  %EAX_val.68 = load i32, i32* %EAX.63, !mcsema_real_eip !46
  %63 = add i32 %EAX_val.68, %62, !mcsema_real_eip !46
  %64 = xor i32 %63, %62, !mcsema_real_eip !46
  %65 = xor i32 %64, %EAX_val.68, !mcsema_real_eip !46
  %66 = and i32 %65, 16, !mcsema_real_eip !46
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !46
  store i1 %67, i1* %AF, !mcsema_real_eip !46
  %68 = lshr i32 %63, 31, !mcsema_real_eip !46
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !46
  store i1 %69, i1* %SF, !mcsema_real_eip !46
  %70 = icmp eq i32 %63, 0, !mcsema_real_eip !46
  store i1 %70, i1* %ZF, !mcsema_real_eip !46
  %71 = xor i32 %62, %EAX_val.68, !mcsema_real_eip !46
  %72 = xor i32 %71, -1, !mcsema_real_eip !46
  %73 = and i32 %72, %64, !mcsema_real_eip !46
  %74 = lshr i32 %73, 31, !mcsema_real_eip !46
  %75 = and i32 %74, 1, !mcsema_real_eip !46
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !46
  store i1 %76, i1* %OF, !mcsema_real_eip !46
  %77 = trunc i32 %63 to i8, !mcsema_real_eip !46
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !46
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !46
  %80 = xor i1 %79, true, !mcsema_real_eip !46
  store i1 %80, i1* %PF, !mcsema_real_eip !46
  %81 = icmp ult i32 %63, %62, !mcsema_real_eip !46
  store i1 %81, i1* %CF, !mcsema_real_eip !46
  %82 = zext i32 %63 to i64, !mcsema_real_eip !46
  store i64 %82, i64* %XAX, !mcsema_real_eip !46
  %R11_val.69 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %R11_val.69, i64* %XDI, !mcsema_real_eip !47
  %EAX_val.71 = load i32, i32* %EAX.63, !mcsema_real_eip !48
  %83 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !48
  store i64 %83, i64* %XSI, !mcsema_real_eip !48
  %AL.72 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.72, !mcsema_real_eip !49
  %RDX_val.75 = load i64, i64* %XDX, !mcsema_real_eip !50
  %RCX_val.76 = load i64, i64* %XCX, !mcsema_real_eip !50
  %R8_val.77 = load i64, i64* %R8, !mcsema_real_eip !50
  %R9_val.78 = load i64, i64* %R9, !mcsema_real_eip !50
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !50
  %84 = inttoptr i64 %RSP_val.79 to i64*, !mcsema_real_eip !50
  %85 = load i64, i64* %84, !mcsema_real_eip !50
  %86 = add i64 %RSP_val.79, 8, !mcsema_real_eip !50
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !50
  %88 = load i64, i64* %87, !mcsema_real_eip !50
  %89 = add i64 %86, 8, !mcsema_real_eip !50
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !50
  %91 = load i64, i64* %90, !mcsema_real_eip !50
  %92 = add i64 %89, 8, !mcsema_real_eip !50
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !50
  %94 = load i64, i64* %93, !mcsema_real_eip !50
  %95 = add i64 %92, 8, !mcsema_real_eip !50
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !50
  %97 = load i64, i64* %96, !mcsema_real_eip !50
  %98 = add i64 %95, 8, !mcsema_real_eip !50
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !50
  %100 = load i64, i64* %99, !mcsema_real_eip !50
  %101 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !50
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %102, !mcsema_real_eip !50
  store i64 %101, i64* %XSP, !mcsema_real_eip !50
  %103 = call x86_64_sysvcc i64 @_printf(i64 %R11_val.69, i64 %83, i64 %RDX_val.75, i64 %RCX_val.76, i64 %R8_val.77, i64 %R9_val.78, i64 %85, i64 %88, i64 %91, i64 %94, i64 %97, i64 %100), !mcsema_real_eip !50
  store i64 %103, i64* %XAX, !mcsema_real_eip !50
  %ECX_val.82 = load i32, i32* %ECX.51, !mcsema_real_eip !51
  store i1 false, i1* %CF, !mcsema_real_eip !51
  store i1 false, i1* %OF, !mcsema_real_eip !51
  store i1 false, i1* %SF, !mcsema_real_eip !51
  store i1 true, i1* %ZF, !mcsema_real_eip !51
  store i1 true, i1* %PF, !mcsema_real_eip !51
  store i1 undef, i1* %AF, !mcsema_real_eip !51
  store i64 0, i64* %XCX, !mcsema_real_eip !51
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !52
  %104 = add i64 %RBP_val.85, -36, !mcsema_real_eip !52
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !52
  %EAX_val.87 = load i32, i32* %EAX.63, !mcsema_real_eip !52
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.87, i32* %106, !mcsema_real_eip !52
  %ECX_val.89 = load i32, i32* %ECX.51, !mcsema_real_eip !53
  %107 = zext i32 %ECX_val.89 to i64, !mcsema_real_eip !53
  store i64 %107, i64* %XAX, !mcsema_real_eip !53
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !54
  %108 = add i64 48, %RSP_val.90, !mcsema_real_eip !54
  %109 = xor i64 %108, %RSP_val.90, !mcsema_real_eip !54
  %110 = xor i64 %109, 48, !mcsema_real_eip !54
  %111 = and i64 %110, 16, !mcsema_real_eip !54
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !54
  store i1 %112, i1* %AF, !mcsema_real_eip !54
  %113 = lshr i64 %108, 63, !mcsema_real_eip !54
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !54
  store i1 %114, i1* %SF, !mcsema_real_eip !54
  %115 = icmp eq i64 %108, 0, !mcsema_real_eip !54
  store i1 %115, i1* %ZF, !mcsema_real_eip !54
  %116 = xor i64 %RSP_val.90, 48, !mcsema_real_eip !54
  %117 = xor i64 %116, -1, !mcsema_real_eip !54
  %118 = and i64 %117, %109, !mcsema_real_eip !54
  %119 = lshr i64 %118, 63, !mcsema_real_eip !54
  %120 = and i64 %119, 1, !mcsema_real_eip !54
  %121 = trunc i64 %120 to i1, !mcsema_real_eip !54
  store i1 %121, i1* %OF, !mcsema_real_eip !54
  %122 = trunc i64 %108 to i8, !mcsema_real_eip !54
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !54
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !54
  %125 = xor i1 %124, true, !mcsema_real_eip !54
  store i1 %125, i1* %PF, !mcsema_real_eip !54
  %126 = icmp ult i64 %108, %RSP_val.90, !mcsema_real_eip !54
  store i1 %126, i1* %CF, !mcsema_real_eip !54
  store i64 %108, i64* %XSP, !mcsema_real_eip !54
  %127 = inttoptr i64 %108 to i64*, !mcsema_real_eip !55
  %128 = load i64, i64* %127, !mcsema_real_eip !55
  store i64 %128, i64* %XBP, !mcsema_real_eip !55
  %129 = add i64 %108, 8, !mcsema_real_eip !55
  store i64 %129, i64* %XSP, !mcsema_real_eip !55
  %130 = add i64 %129, 8, !mcsema_real_eip !56
  %131 = inttoptr i64 %129 to i64*, !mcsema_real_eip !56
  %132 = load i64, i64* %131, !mcsema_real_eip !56
  store i64 %132, i64* %XIP, !mcsema_real_eip !56
  store i64 %130, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 101}
!6 = !{i64 105}
!7 = !{i64 110}
!8 = !{i64 115}
!9 = !{i64 120}
!10 = !{i64 126}
!11 = !{i64 132}
!12 = !{i64 138}
!13 = !{i64 144}
!14 = !{i64 149}
!15 = !{i64 156}
!16 = !{i64 159}
!17 = !{i64 163}
!18 = !{i64 165}
!19 = !{i64 167}
!20 = !{i64 170}
!21 = !{i64 173}
!22 = !{i64 176}
!23 = !{i64 183}
!24 = !{i64 191}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 203}
!28 = !{i64 207}
!29 = !{i64 208}
!30 = !{i64 209}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 8}
!35 = !{i64 11}
!36 = !{i64 15}
!37 = !{i64 25}
!38 = !{i64 28}
!39 = !{i64 31}
!40 = !{i64 34}
!41 = !{i64 37}
!42 = !{i64 41}
!43 = !{i64 45}
!44 = !{i64 49}
!45 = !{i64 52}
!46 = !{i64 55}
!47 = !{i64 58}
!48 = !{i64 61}
!49 = !{i64 63}
!50 = !{i64 65}
!51 = !{i64 70}
!52 = !{i64 72}
!53 = !{i64 75}
!54 = !{i64 77}
!55 = !{i64 81}
!56 = !{i64 82}
