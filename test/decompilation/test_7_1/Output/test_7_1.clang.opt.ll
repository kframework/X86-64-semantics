; ModuleID = 'Output/test_7_1.clang.opt.bc'
source_filename = "Output/test_7_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c".\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, 16, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = load i64, i64* %4, !mcsema_real_eip !4
  store i64 %5, i64* %XAX, !mcsema_real_eip !4
  %6 = add i64 %1, -4, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %8, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %11, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %12 = add i64 %RBP_val.10, -12, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !7
  %EDX.11 = bitcast i64* %XDX to i32*, !mcsema_real_eip !7
  %EDX_val.12 = load i32, i32* %EDX.11, !mcsema_real_eip !7
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !7
  store i32 %EDX_val.12, i32* %14, !mcsema_real_eip !7
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.13, -16, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !8
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !8
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  store i32 %ECX_val.15, i32* %17, !mcsema_real_eip !8
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !9
  %18 = add i64 %RBP_val.16, -20, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !9
  %R8D.17 = bitcast i64* %R8 to i32*, !mcsema_real_eip !9
  %R8D_val.18 = load i32, i32* %R8D.17, !mcsema_real_eip !9
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %R8D_val.18, i32* %20, !mcsema_real_eip !9
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !10
  %21 = add i64 %RBP_val.19, -24, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !10
  %R9D.20 = bitcast i64* %R9 to i32*, !mcsema_real_eip !10
  %R9D_val.21 = load i32, i32* %R9D.20, !mcsema_real_eip !10
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 %R9D_val.21, i32* %23, !mcsema_real_eip !10
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.22, -32, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  %RAX_val.23 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.23, i64* %25, !mcsema_real_eip !11
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !12
  %26 = add i64 %RBP_val.24, -32, !mcsema_real_eip !12
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !12
  %28 = load i64, i64* %27, !mcsema_real_eip !12
  store i64 %28, i64* %XAX, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !13
  %31 = load i32, i32* %30, !mcsema_real_eip !13
  %32 = zext i32 %31 to i64, !mcsema_real_eip !13
  store i64 %32, i64* %XCX, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.24, -36, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !14
  %ECX_val.28 = load i32, i32* %ECX.14, !mcsema_real_eip !14
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !14
  store i32 %ECX_val.28, i32* %35, !mcsema_real_eip !14
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !15
  %36 = add i64 %RBP_val.29, -36, !mcsema_real_eip !15
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !15
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !15
  %39 = load i32, i32* %38, !mcsema_real_eip !15
  %40 = zext i32 %39 to i64, !mcsema_real_eip !15
  store i64 %40, i64* %XAX, !mcsema_real_eip !15
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !16
  %41 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !16
  %42 = load i64, i64* %41, !mcsema_real_eip !16
  store i64 %42, i64* %XBP, !mcsema_real_eip !16
  %43 = add i64 %RSP_val.30, 8, !mcsema_real_eip !16
  store i64 %43, i64* %XSP, !mcsema_real_eip !16
  %44 = add i64 %43, 8, !mcsema_real_eip !17
  %45 = inttoptr i64 %43 to i64*, !mcsema_real_eip !17
  %46 = load i64, i64* %45, !mcsema_real_eip !17
  store i64 %46, i64* %XIP, !mcsema_real_eip !17
  store i64 %44, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !18
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !18
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !18
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !18
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !18
  br label %block_0x30, !mcsema_real_eip !18

block_0x30:                                       ; preds = %entry
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !18
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !18
  %1 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !18
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.32, i64* %2, !mcsema_real_eip !18
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %3 = sub i64 %1, 80, !mcsema_real_eip !20
  %4 = xor i64 %3, %1, !mcsema_real_eip !20
  %5 = xor i64 %4, 80, !mcsema_real_eip !20
  %6 = and i64 %5, 16, !mcsema_real_eip !20
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !20
  store i1 %7, i1* %AF, !mcsema_real_eip !20
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !20
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !20
  %11 = xor i1 %10, true, !mcsema_real_eip !20
  store i1 %11, i1* %PF, !mcsema_real_eip !20
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %12, i1* %ZF, !mcsema_real_eip !20
  %13 = lshr i64 %3, 63, !mcsema_real_eip !20
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !20
  store i1 %14, i1* %SF, !mcsema_real_eip !20
  %15 = icmp ult i64 %1, 80, !mcsema_real_eip !20
  store i1 %15, i1* %CF, !mcsema_real_eip !20
  %16 = xor i64 %1, 80, !mcsema_real_eip !20
  %17 = and i64 %16, %4, !mcsema_real_eip !20
  %18 = lshr i64 %17, 63, !mcsema_real_eip !20
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !20
  store i1 %19, i1* %OF, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, !mcsema_real_eip !20
  %20 = add i64 %1, -4, !mcsema_real_eip !21
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !21
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !21
  store i32 0, i32* %22, !mcsema_real_eip !21
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !22
  %23 = add i64 %RBP_val.37, -52, !mcsema_real_eip !22
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !22
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !22
  store i32 0, i32* %25, !mcsema_real_eip !22
  br label %block_0x46, !mcsema_real_eip !23

block_0x46:                                       ; preds = %block_0x50, %block_0x30
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !23
  %26 = add i64 %RBP_val.38, -52, !mcsema_real_eip !23
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !23
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !23
  %29 = load i32, i32* %28, !mcsema_real_eip !23
  %30 = sub i32 %29, 10, !mcsema_real_eip !23
  %31 = xor i32 %30, %29, !mcsema_real_eip !23
  %32 = xor i32 %31, 10, !mcsema_real_eip !23
  %33 = and i32 %32, 16, !mcsema_real_eip !23
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !23
  store i1 %34, i1* %AF, !mcsema_real_eip !23
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !23
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !23
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !23
  %38 = xor i1 %37, true, !mcsema_real_eip !23
  store i1 %38, i1* %PF, !mcsema_real_eip !23
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !23
  store i1 %39, i1* %ZF, !mcsema_real_eip !23
  %40 = lshr i32 %30, 31, !mcsema_real_eip !23
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !23
  store i1 %41, i1* %SF, !mcsema_real_eip !23
  %42 = icmp ult i32 %29, 10, !mcsema_real_eip !23
  store i1 %42, i1* %CF, !mcsema_real_eip !23
  %43 = xor i32 %29, 10, !mcsema_real_eip !23
  %44 = and i32 %43, %31, !mcsema_real_eip !23
  %45 = lshr i32 %44, 31, !mcsema_real_eip !23
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !23
  store i1 %46, i1* %OF, !mcsema_real_eip !23
  %47 = icmp eq i1 %41, %46, !mcsema_real_eip !24
  br i1 %47, label %block_0x6a, label %block_0x50, !mcsema_real_eip !24

block_0x50:                                       ; preds = %block_0x46
  %48 = load i32, i32* %28, !mcsema_real_eip !25
  %49 = sext i32 %48 to i64, !mcsema_real_eip !25
  store i64 %49, i64* %XAX, !mcsema_real_eip !25
  %50 = add i64 %RBP_val.38, -48, !mcsema_real_eip !26
  %51 = mul i64 %49, 4, !mcsema_real_eip !26
  %52 = add i64 %50, %51, !mcsema_real_eip !26
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !26
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !26
  store i32 21, i32* %54, !mcsema_real_eip !26
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !27
  %55 = add i64 %RBP_val.42, -52, !mcsema_real_eip !27
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !27
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !27
  %58 = load i32, i32* %57, !mcsema_real_eip !27
  %59 = zext i32 %58 to i64, !mcsema_real_eip !27
  store i64 %59, i64* %XAX, !mcsema_real_eip !27
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !28
  %60 = add i32 1, %EAX_val.44, !mcsema_real_eip !28
  %61 = xor i32 %60, %EAX_val.44, !mcsema_real_eip !28
  %62 = xor i32 %61, 1, !mcsema_real_eip !28
  %63 = and i32 %62, 16, !mcsema_real_eip !28
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !28
  store i1 %64, i1* %AF, !mcsema_real_eip !28
  %65 = lshr i32 %60, 31, !mcsema_real_eip !28
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !28
  store i1 %66, i1* %SF, !mcsema_real_eip !28
  %67 = icmp eq i32 %60, 0, !mcsema_real_eip !28
  store i1 %67, i1* %ZF, !mcsema_real_eip !28
  %68 = xor i32 %EAX_val.44, 1, !mcsema_real_eip !28
  %69 = xor i32 %68, -1, !mcsema_real_eip !28
  %70 = and i32 %69, %61, !mcsema_real_eip !28
  %71 = lshr i32 %70, 31, !mcsema_real_eip !28
  %72 = and i32 %71, 1, !mcsema_real_eip !28
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !28
  store i1 %73, i1* %OF, !mcsema_real_eip !28
  %74 = trunc i32 %60 to i8, !mcsema_real_eip !28
  %75 = call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !28
  %76 = trunc i8 %75 to i1, !mcsema_real_eip !28
  %77 = xor i1 %76, true, !mcsema_real_eip !28
  store i1 %77, i1* %PF, !mcsema_real_eip !28
  %78 = icmp ult i32 %60, %EAX_val.44, !mcsema_real_eip !28
  store i1 %78, i1* %CF, !mcsema_real_eip !28
  %79 = zext i32 %60 to i64, !mcsema_real_eip !28
  store i64 %79, i64* %XAX, !mcsema_real_eip !28
  %EAX_val.47 = load i32, i32* %EAX.43, !mcsema_real_eip !29
  store i32 %EAX_val.47, i32* %57, !mcsema_real_eip !29
  br label %block_0x46, !mcsema_real_eip !30

block_0x6a:                                       ; preds = %block_0x46
  store i64 10, i64* %XAX, !mcsema_real_eip !31
  %80 = add i64 %RBP_val.38, -48, !mcsema_real_eip !32
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !32
  store i64 %80, i64* %XCX, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !33
  %82 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !33
  store i64 %82, i64* %XDI, !mcsema_real_eip !33
  store i64 %82, i64* %XSI, !mcsema_real_eip !34
  store i64 %82, i64* %XDX, !mcsema_real_eip !35
  %83 = add i64 %RBP_val.38, -64, !mcsema_real_eip !36
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !36
  store i64 %80, i64* %84, !mcsema_real_eip !36
  %EAX_val.58 = load i32, i32* %EAX.49, !mcsema_real_eip !37
  %85 = zext i32 %EAX_val.58 to i64, !mcsema_real_eip !37
  store i64 %85, i64* %XCX, !mcsema_real_eip !37
  store i64 %85, i64* %R8, !mcsema_real_eip !38
  store i64 %85, i64* %R9, !mcsema_real_eip !39
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !40
  %86 = add i64 %RBP_val.63, -64, !mcsema_real_eip !40
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !40
  %88 = load i64, i64* %87, !mcsema_real_eip !40
  store i64 %88, i64* %R10, !mcsema_real_eip !40
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !41
  %89 = inttoptr i64 %RSP_val.64 to i64*, !mcsema_real_eip !41
  store i64 %88, i64* %89, !mcsema_real_eip !41
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !42
  %90 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !42
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !42
  store i64 -4981261766360305936, i64* %91, !mcsema_real_eip !42
  store i64 %90, i64* %XSP, !mcsema_real_eip !42
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !42
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, !mcsema_real_eip !43
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !44
  %92 = add i64 %RBP_val.67, -56, !mcsema_real_eip !44
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !44
  %EAX_val.69 = load i32, i32* %EAX.49, !mcsema_real_eip !44
  %94 = inttoptr i64 %92 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.69, i32* %94, !mcsema_real_eip !44
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !45
  %95 = add i64 %RBP_val.70, -56, !mcsema_real_eip !45
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !45
  %97 = inttoptr i64 %95 to i32*, !mcsema_real_eip !45
  %98 = load i32, i32* %97, !mcsema_real_eip !45
  %99 = zext i32 %98 to i64, !mcsema_real_eip !45
  store i64 %99, i64* %XSI, !mcsema_real_eip !45
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !46
  store i8 0, i8* %AL.71, !mcsema_real_eip !46
  %RDI_val.72 = load i64, i64* %XDI, !mcsema_real_eip !47
  %RDX_val.74 = load i64, i64* %XDX, !mcsema_real_eip !47
  %RCX_val.75 = load i64, i64* %XCX, !mcsema_real_eip !47
  %R8_val.76 = load i64, i64* %R8, !mcsema_real_eip !47
  %R9_val.77 = load i64, i64* %R9, !mcsema_real_eip !47
  %RSP_val.78 = load i64, i64* %XSP, !mcsema_real_eip !47
  %100 = inttoptr i64 %RSP_val.78 to i64*, !mcsema_real_eip !47
  %101 = load i64, i64* %100, !mcsema_real_eip !47
  %102 = add i64 %RSP_val.78, 8, !mcsema_real_eip !47
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !47
  %104 = load i64, i64* %103, !mcsema_real_eip !47
  %105 = add i64 %102, 8, !mcsema_real_eip !47
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !47
  %107 = load i64, i64* %106, !mcsema_real_eip !47
  %108 = add i64 %105, 8, !mcsema_real_eip !47
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !47
  %110 = load i64, i64* %109, !mcsema_real_eip !47
  %111 = add i64 %108, 8, !mcsema_real_eip !47
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !47
  %113 = load i64, i64* %112, !mcsema_real_eip !47
  %114 = add i64 %111, 8, !mcsema_real_eip !47
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !47
  %116 = load i64, i64* %115, !mcsema_real_eip !47
  %117 = add i64 %114, 8, !mcsema_real_eip !47
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !47
  %119 = load i64, i64* %118, !mcsema_real_eip !47
  %120 = add i64 %117, 8, !mcsema_real_eip !47
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !47
  %122 = load i64, i64* %121, !mcsema_real_eip !47
  %123 = add i64 %120, 8, !mcsema_real_eip !47
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !47
  %125 = load i64, i64* %124, !mcsema_real_eip !47
  %126 = add i64 %123, 8, !mcsema_real_eip !47
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !47
  %128 = load i64, i64* %127, !mcsema_real_eip !47
  %129 = sub i64 %RSP_val.78, 8, !mcsema_real_eip !47
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !47
  store i64 -2415393069852865332, i64* %130, !mcsema_real_eip !47
  store i64 %129, i64* %XSP, !mcsema_real_eip !47
  %131 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.72, i64 %99, i64 %RDX_val.74, i64 %RCX_val.75, i64 %R8_val.76, i64 %R9_val.77, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128), !mcsema_real_eip !47
  store i64 %131, i64* %XAX, !mcsema_real_eip !47
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !48
  %132 = add i64 %RBP_val.80, -56, !mcsema_real_eip !48
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !48
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !48
  %135 = load i32, i32* %134, !mcsema_real_eip !48
  %136 = zext i32 %135 to i64, !mcsema_real_eip !48
  store i64 %136, i64* %XCX, !mcsema_real_eip !48
  %137 = add i64 %RBP_val.80, -68, !mcsema_real_eip !49
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !49
  %EAX_val.83 = load i32, i32* %EAX.49, !mcsema_real_eip !49
  %139 = inttoptr i64 %137 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.83, i32* %139, !mcsema_real_eip !49
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !50
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !50
  %140 = zext i32 %ECX_val.85 to i64, !mcsema_real_eip !50
  store i64 %140, i64* %XAX, !mcsema_real_eip !50
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !51
  %141 = add i64 80, %RSP_val.86, !mcsema_real_eip !51
  %142 = xor i64 %141, %RSP_val.86, !mcsema_real_eip !51
  %143 = xor i64 %142, 80, !mcsema_real_eip !51
  %144 = and i64 %143, 16, !mcsema_real_eip !51
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !51
  store i1 %145, i1* %AF, !mcsema_real_eip !51
  %146 = lshr i64 %141, 63, !mcsema_real_eip !51
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !51
  store i1 %147, i1* %SF, !mcsema_real_eip !51
  %148 = icmp eq i64 %141, 0, !mcsema_real_eip !51
  store i1 %148, i1* %ZF, !mcsema_real_eip !51
  %149 = xor i64 %RSP_val.86, 80, !mcsema_real_eip !51
  %150 = xor i64 %149, -1, !mcsema_real_eip !51
  %151 = and i64 %150, %142, !mcsema_real_eip !51
  %152 = lshr i64 %151, 63, !mcsema_real_eip !51
  %153 = and i64 %152, 1, !mcsema_real_eip !51
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !51
  store i1 %154, i1* %OF, !mcsema_real_eip !51
  %155 = trunc i64 %141 to i8, !mcsema_real_eip !51
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !51
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !51
  %158 = xor i1 %157, true, !mcsema_real_eip !51
  store i1 %158, i1* %PF, !mcsema_real_eip !51
  %159 = icmp ult i64 %141, %RSP_val.86, !mcsema_real_eip !51
  store i1 %159, i1* %CF, !mcsema_real_eip !51
  store i64 %141, i64* %XSP, !mcsema_real_eip !51
  %160 = inttoptr i64 %141 to i64*, !mcsema_real_eip !52
  %161 = load i64, i64* %160, !mcsema_real_eip !52
  store i64 %161, i64* %XBP, !mcsema_real_eip !52
  %162 = add i64 %141, 8, !mcsema_real_eip !52
  store i64 %162, i64* %XSP, !mcsema_real_eip !52
  %163 = add i64 %162, 8, !mcsema_real_eip !53
  %164 = inttoptr i64 %162 to i64*, !mcsema_real_eip !53
  %165 = load i64, i64* %164, !mcsema_real_eip !53
  store i64 %165, i64* %XIP, !mcsema_real_eip !53
  store i64 %163, i64* %XSP, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 24}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 36}
!14 = !{i64 38}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 45}
!18 = !{i64 48}
!19 = !{i64 49}
!20 = !{i64 52}
!21 = !{i64 56}
!22 = !{i64 63}
!23 = !{i64 70}
!24 = !{i64 74}
!25 = !{i64 80}
!26 = !{i64 84}
!27 = !{i64 92}
!28 = !{i64 95}
!29 = !{i64 98}
!30 = !{i64 101}
!31 = !{i64 106}
!32 = !{i64 111}
!33 = !{i64 115}
!34 = !{i64 117}
!35 = !{i64 119}
!36 = !{i64 121}
!37 = !{i64 125}
!38 = !{i64 127}
!39 = !{i64 130}
!40 = !{i64 133}
!41 = !{i64 137}
!42 = !{i64 141}
!43 = !{i64 146}
!44 = !{i64 156}
!45 = !{i64 159}
!46 = !{i64 162}
!47 = !{i64 164}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 177}
!52 = !{i64 181}
!53 = !{i64 182}
