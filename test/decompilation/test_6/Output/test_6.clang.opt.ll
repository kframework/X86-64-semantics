; ModuleID = 'Output/test_6.clang.opt.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
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
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  %11 = load i32, i32* %10, !mcsema_real_eip !6
  %12 = zext i32 %11 to i64, !mcsema_real_eip !6
  store i64 %12, i64* %R10, !mcsema_real_eip !6
  %13 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !7
  %15 = load i64, i64* %14, !mcsema_real_eip !7
  store i64 %15, i64* %R11, !mcsema_real_eip !7
  %16 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !8
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !8
  %19 = load i32, i32* %18, !mcsema_real_eip !8
  %20 = zext i32 %19 to i64, !mcsema_real_eip !8
  store i64 %20, i64* %XBX, !mcsema_real_eip !8
  %21 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %23, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %24 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !10
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, !mcsema_real_eip !10
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %26, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %27 = add i64 %RBP_val.15, -20, !mcsema_real_eip !11
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !11
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, !mcsema_real_eip !11
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %29, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %30 = add i64 %RBP_val.18, -24, !mcsema_real_eip !12
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !12
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !12
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %32, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.21, -28, !mcsema_real_eip !13
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !13
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, !mcsema_real_eip !13
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %35, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %36 = add i64 %RBP_val.24, -32, !mcsema_real_eip !14
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !14
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, !mcsema_real_eip !14
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %38, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %39 = add i64 %RBP_val.27, -36, !mcsema_real_eip !15
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !15
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !15
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %41, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.30, -48, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !16
  %R11_val.31 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %43, !mcsema_real_eip !16
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !17
  %44 = add i64 %RBP_val.32, -52, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, !mcsema_real_eip !17
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %46, !mcsema_real_eip !17
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !18
  %47 = add i64 %RBP_val.35, -64, !mcsema_real_eip !18
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !18
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %48, !mcsema_real_eip !18
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !19
  %49 = add i64 %RBP_val.37, -68, !mcsema_real_eip !19
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !19
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %51, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %52 = add i64 %RBP_val.38, -72, !mcsema_real_eip !20
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !20
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %54, !mcsema_real_eip !20
  br label %block_0x45, !mcsema_real_eip !21

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !21
  %55 = add i64 %RBP_val.39, -72, !mcsema_real_eip !21
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !21
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !21
  %58 = load i32, i32* %57, !mcsema_real_eip !21
  %59 = zext i32 %58 to i64, !mcsema_real_eip !21
  store i64 %59, i64* %XAX, !mcsema_real_eip !21
  %60 = add i64 %RBP_val.39, -36, !mcsema_real_eip !22
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !22
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !22
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !22
  %63 = load i32, i32* %62, !mcsema_real_eip !22
  %64 = sub i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %65 = xor i32 %64, %EAX_val.42, !mcsema_real_eip !22
  %66 = xor i32 %65, %63, !mcsema_real_eip !22
  %67 = and i32 %66, 16, !mcsema_real_eip !22
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !22
  store i1 %68, i1* %AF, !mcsema_real_eip !22
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !22
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !22
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !22
  %72 = xor i1 %71, true, !mcsema_real_eip !22
  store i1 %72, i1* %PF, !mcsema_real_eip !22
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !22
  store i1 %73, i1* %ZF, !mcsema_real_eip !22
  %74 = lshr i32 %64, 31, !mcsema_real_eip !22
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !22
  store i1 %75, i1* %SF, !mcsema_real_eip !22
  %76 = icmp ult i32 %EAX_val.42, %63, !mcsema_real_eip !22
  store i1 %76, i1* %CF, !mcsema_real_eip !22
  %77 = xor i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %78 = and i32 %77, %65, !mcsema_real_eip !22
  %79 = lshr i32 %78, 31, !mcsema_real_eip !22
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !22
  store i1 %80, i1* %OF, !mcsema_real_eip !22
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !23
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.39, -48, !mcsema_real_eip !24
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !24
  %84 = load i64, i64* %83, !mcsema_real_eip !24
  store i64 %84, i64* %XAX, !mcsema_real_eip !24
  %85 = load i32, i32* %57, !mcsema_real_eip !25
  %86 = sext i32 %85 to i64, !mcsema_real_eip !25
  store i64 %86, i64* %XCX, !mcsema_real_eip !25
  %87 = mul i64 %86, 4, !mcsema_real_eip !26
  %88 = add i64 %84, %87, !mcsema_real_eip !26
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !26
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !26
  %91 = load i32, i32* %90, !mcsema_real_eip !26
  %92 = zext i32 %91 to i64, !mcsema_real_eip !26
  store i64 %92, i64* %XDX, !mcsema_real_eip !26
  %93 = add i64 %RBP_val.39, -64, !mcsema_real_eip !27
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !27
  %95 = load i64, i64* %94, !mcsema_real_eip !27
  store i64 %95, i64* %XAX, !mcsema_real_eip !27
  %96 = load i32, i32* %57, !mcsema_real_eip !28
  %97 = sext i32 %96 to i64, !mcsema_real_eip !28
  store i64 %97, i64* %XCX, !mcsema_real_eip !28
  %98 = mul i64 %97, 4, !mcsema_real_eip !29
  %99 = add i64 %95, %98, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !29
  %EDX_val.52 = load i32, i32* %EDX.16, !mcsema_real_eip !29
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  %102 = load i32, i32* %101, !mcsema_real_eip !29
  %103 = sub i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %104 = xor i32 %103, %EDX_val.52, !mcsema_real_eip !29
  %105 = xor i32 %104, %102, !mcsema_real_eip !29
  %106 = and i32 %105, 16, !mcsema_real_eip !29
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !29
  store i1 %107, i1* %AF, !mcsema_real_eip !29
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !29
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !29
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !29
  %111 = xor i1 %110, true, !mcsema_real_eip !29
  store i1 %111, i1* %PF, !mcsema_real_eip !29
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !29
  store i1 %112, i1* %ZF, !mcsema_real_eip !29
  %113 = lshr i32 %103, 31, !mcsema_real_eip !29
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !29
  store i1 %114, i1* %SF, !mcsema_real_eip !29
  %115 = icmp ult i32 %EDX_val.52, %102, !mcsema_real_eip !29
  store i1 %115, i1* %CF, !mcsema_real_eip !29
  %116 = xor i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %117 = and i32 %116, %104, !mcsema_real_eip !29
  %118 = lshr i32 %117, 31, !mcsema_real_eip !29
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !29
  store i1 %119, i1* %OF, !mcsema_real_eip !29
  %120 = zext i32 %103 to i64, !mcsema_real_eip !29
  store i64 %120, i64* %XDX, !mcsema_real_eip !29
  %121 = add i64 %RBP_val.39, -68, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !30
  %124 = load i32, i32* %123, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.16, !mcsema_real_eip !30
  %125 = add i32 %EDX_val.55, %124, !mcsema_real_eip !30
  %126 = xor i32 %125, %124, !mcsema_real_eip !30
  %127 = xor i32 %126, %EDX_val.55, !mcsema_real_eip !30
  %128 = and i32 %127, 16, !mcsema_real_eip !30
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !30
  store i1 %129, i1* %AF, !mcsema_real_eip !30
  %130 = lshr i32 %125, 31, !mcsema_real_eip !30
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !30
  store i1 %131, i1* %SF, !mcsema_real_eip !30
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !30
  store i1 %132, i1* %ZF, !mcsema_real_eip !30
  %133 = xor i32 %124, %EDX_val.55, !mcsema_real_eip !30
  %134 = xor i32 %133, -1, !mcsema_real_eip !30
  %135 = and i32 %134, %126, !mcsema_real_eip !30
  %136 = lshr i32 %135, 31, !mcsema_real_eip !30
  %137 = and i32 %136, 1, !mcsema_real_eip !30
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !30
  store i1 %138, i1* %OF, !mcsema_real_eip !30
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !30
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !30
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !30
  %142 = xor i1 %141, true, !mcsema_real_eip !30
  store i1 %142, i1* %PF, !mcsema_real_eip !30
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !30
  store i1 %143, i1* %CF, !mcsema_real_eip !30
  %144 = zext i32 %125 to i64, !mcsema_real_eip !30
  store i64 %144, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.58 = load i32, i32* %EDX.16, !mcsema_real_eip !31
  store i32 %EDX_val.58, i32* %123, !mcsema_real_eip !31
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !32
  %145 = add i64 %RBP_val.59, -72, !mcsema_real_eip !32
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !32
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !32
  %148 = load i32, i32* %147, !mcsema_real_eip !32
  %149 = zext i32 %148 to i64, !mcsema_real_eip !32
  store i64 %149, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.61 = load i32, i32* %EAX.41, !mcsema_real_eip !33
  %150 = add i32 1, %EAX_val.61, !mcsema_real_eip !33
  %151 = xor i32 %150, %EAX_val.61, !mcsema_real_eip !33
  %152 = xor i32 %151, 1, !mcsema_real_eip !33
  %153 = and i32 %152, 16, !mcsema_real_eip !33
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !33
  store i1 %154, i1* %AF, !mcsema_real_eip !33
  %155 = lshr i32 %150, 31, !mcsema_real_eip !33
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !33
  store i1 %156, i1* %SF, !mcsema_real_eip !33
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !33
  store i1 %157, i1* %ZF, !mcsema_real_eip !33
  %158 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !33
  %159 = xor i32 %158, -1, !mcsema_real_eip !33
  %160 = and i32 %159, %151, !mcsema_real_eip !33
  %161 = lshr i32 %160, 31, !mcsema_real_eip !33
  %162 = and i32 %161, 1, !mcsema_real_eip !33
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !33
  store i1 %163, i1* %OF, !mcsema_real_eip !33
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !33
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !33
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !33
  %167 = xor i1 %166, true, !mcsema_real_eip !33
  store i1 %167, i1* %PF, !mcsema_real_eip !33
  %168 = icmp ult i32 %150, %EAX_val.61, !mcsema_real_eip !33
  store i1 %168, i1* %CF, !mcsema_real_eip !33
  %169 = zext i32 %150 to i64, !mcsema_real_eip !33
  store i64 %169, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.64 = load i32, i32* %EAX.41, !mcsema_real_eip !34
  store i32 %EAX_val.64, i32* %147, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.39, -68, !mcsema_real_eip !36
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !36
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !36
  %173 = load i32, i32* %172, !mcsema_real_eip !36
  %174 = zext i32 %173 to i64, !mcsema_real_eip !36
  store i64 %174, i64* %XAX, !mcsema_real_eip !36
  %175 = add i64 %RBP_val.39, -12, !mcsema_real_eip !37
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !37
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !37
  %178 = load i32, i32* %177, !mcsema_real_eip !37
  %179 = zext i32 %178 to i64, !mcsema_real_eip !37
  store i64 %179, i64* %XCX, !mcsema_real_eip !37
  %180 = add i64 %RBP_val.39, -16, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !38
  %183 = load i32, i32* %182, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.19, !mcsema_real_eip !38
  %184 = add i32 %ECX_val.69, %183, !mcsema_real_eip !38
  %185 = xor i32 %184, %183, !mcsema_real_eip !38
  %186 = xor i32 %185, %ECX_val.69, !mcsema_real_eip !38
  %187 = and i32 %186, 16, !mcsema_real_eip !38
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !38
  store i1 %188, i1* %AF, !mcsema_real_eip !38
  %189 = lshr i32 %184, 31, !mcsema_real_eip !38
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !38
  store i1 %190, i1* %SF, !mcsema_real_eip !38
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !38
  store i1 %191, i1* %ZF, !mcsema_real_eip !38
  %192 = xor i32 %183, %ECX_val.69, !mcsema_real_eip !38
  %193 = xor i32 %192, -1, !mcsema_real_eip !38
  %194 = and i32 %193, %185, !mcsema_real_eip !38
  %195 = lshr i32 %194, 31, !mcsema_real_eip !38
  %196 = and i32 %195, 1, !mcsema_real_eip !38
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !38
  store i1 %197, i1* %OF, !mcsema_real_eip !38
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !38
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !38
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !38
  %201 = xor i1 %200, true, !mcsema_real_eip !38
  store i1 %201, i1* %PF, !mcsema_real_eip !38
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !38
  store i1 %202, i1* %CF, !mcsema_real_eip !38
  %203 = zext i32 %184 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %XCX, !mcsema_real_eip !38
  %204 = add i64 %RBP_val.39, -20, !mcsema_real_eip !39
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !39
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !39
  %207 = load i32, i32* %206, !mcsema_real_eip !39
  %ECX_val.72 = load i32, i32* %ECX.19, !mcsema_real_eip !39
  %208 = add i32 %ECX_val.72, %207, !mcsema_real_eip !39
  %209 = xor i32 %208, %207, !mcsema_real_eip !39
  %210 = xor i32 %209, %ECX_val.72, !mcsema_real_eip !39
  %211 = and i32 %210, 16, !mcsema_real_eip !39
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !39
  store i1 %212, i1* %AF, !mcsema_real_eip !39
  %213 = lshr i32 %208, 31, !mcsema_real_eip !39
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !39
  store i1 %214, i1* %SF, !mcsema_real_eip !39
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !39
  store i1 %215, i1* %ZF, !mcsema_real_eip !39
  %216 = xor i32 %207, %ECX_val.72, !mcsema_real_eip !39
  %217 = xor i32 %216, -1, !mcsema_real_eip !39
  %218 = and i32 %217, %209, !mcsema_real_eip !39
  %219 = lshr i32 %218, 31, !mcsema_real_eip !39
  %220 = and i32 %219, 1, !mcsema_real_eip !39
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !39
  store i1 %221, i1* %OF, !mcsema_real_eip !39
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !39
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !39
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !39
  %225 = xor i1 %224, true, !mcsema_real_eip !39
  store i1 %225, i1* %PF, !mcsema_real_eip !39
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !39
  store i1 %226, i1* %CF, !mcsema_real_eip !39
  %227 = zext i32 %208 to i64, !mcsema_real_eip !39
  store i64 %227, i64* %XCX, !mcsema_real_eip !39
  %228 = add i64 %RBP_val.39, -24, !mcsema_real_eip !40
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !40
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !40
  %231 = load i32, i32* %230, !mcsema_real_eip !40
  %ECX_val.75 = load i32, i32* %ECX.19, !mcsema_real_eip !40
  %232 = add i32 %ECX_val.75, %231, !mcsema_real_eip !40
  %233 = xor i32 %232, %231, !mcsema_real_eip !40
  %234 = xor i32 %233, %ECX_val.75, !mcsema_real_eip !40
  %235 = and i32 %234, 16, !mcsema_real_eip !40
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !40
  store i1 %236, i1* %AF, !mcsema_real_eip !40
  %237 = lshr i32 %232, 31, !mcsema_real_eip !40
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !40
  store i1 %238, i1* %SF, !mcsema_real_eip !40
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !40
  store i1 %239, i1* %ZF, !mcsema_real_eip !40
  %240 = xor i32 %231, %ECX_val.75, !mcsema_real_eip !40
  %241 = xor i32 %240, -1, !mcsema_real_eip !40
  %242 = and i32 %241, %233, !mcsema_real_eip !40
  %243 = lshr i32 %242, 31, !mcsema_real_eip !40
  %244 = and i32 %243, 1, !mcsema_real_eip !40
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !40
  store i1 %245, i1* %OF, !mcsema_real_eip !40
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !40
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !40
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !40
  %249 = xor i1 %248, true, !mcsema_real_eip !40
  store i1 %249, i1* %PF, !mcsema_real_eip !40
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !40
  store i1 %250, i1* %CF, !mcsema_real_eip !40
  %251 = zext i32 %232 to i64, !mcsema_real_eip !40
  store i64 %251, i64* %XCX, !mcsema_real_eip !40
  %252 = add i64 %RBP_val.39, -28, !mcsema_real_eip !41
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !41
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !41
  %255 = load i32, i32* %254, !mcsema_real_eip !41
  %ECX_val.78 = load i32, i32* %ECX.19, !mcsema_real_eip !41
  %256 = add i32 %ECX_val.78, %255, !mcsema_real_eip !41
  %257 = xor i32 %256, %255, !mcsema_real_eip !41
  %258 = xor i32 %257, %ECX_val.78, !mcsema_real_eip !41
  %259 = and i32 %258, 16, !mcsema_real_eip !41
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !41
  store i1 %260, i1* %AF, !mcsema_real_eip !41
  %261 = lshr i32 %256, 31, !mcsema_real_eip !41
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !41
  store i1 %262, i1* %SF, !mcsema_real_eip !41
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !41
  store i1 %263, i1* %ZF, !mcsema_real_eip !41
  %264 = xor i32 %255, %ECX_val.78, !mcsema_real_eip !41
  %265 = xor i32 %264, -1, !mcsema_real_eip !41
  %266 = and i32 %265, %257, !mcsema_real_eip !41
  %267 = lshr i32 %266, 31, !mcsema_real_eip !41
  %268 = and i32 %267, 1, !mcsema_real_eip !41
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !41
  store i1 %269, i1* %OF, !mcsema_real_eip !41
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !41
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !41
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !41
  %273 = xor i1 %272, true, !mcsema_real_eip !41
  store i1 %273, i1* %PF, !mcsema_real_eip !41
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !41
  store i1 %274, i1* %CF, !mcsema_real_eip !41
  %275 = zext i32 %256 to i64, !mcsema_real_eip !41
  store i64 %275, i64* %XCX, !mcsema_real_eip !41
  %276 = add i64 %RBP_val.39, -32, !mcsema_real_eip !42
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !42
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !42
  %279 = load i32, i32* %278, !mcsema_real_eip !42
  %ECX_val.81 = load i32, i32* %ECX.19, !mcsema_real_eip !42
  %280 = add i32 %ECX_val.81, %279, !mcsema_real_eip !42
  %281 = xor i32 %280, %279, !mcsema_real_eip !42
  %282 = xor i32 %281, %ECX_val.81, !mcsema_real_eip !42
  %283 = and i32 %282, 16, !mcsema_real_eip !42
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !42
  store i1 %284, i1* %AF, !mcsema_real_eip !42
  %285 = lshr i32 %280, 31, !mcsema_real_eip !42
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !42
  store i1 %286, i1* %SF, !mcsema_real_eip !42
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !42
  store i1 %287, i1* %ZF, !mcsema_real_eip !42
  %288 = xor i32 %279, %ECX_val.81, !mcsema_real_eip !42
  %289 = xor i32 %288, -1, !mcsema_real_eip !42
  %290 = and i32 %289, %281, !mcsema_real_eip !42
  %291 = lshr i32 %290, 31, !mcsema_real_eip !42
  %292 = and i32 %291, 1, !mcsema_real_eip !42
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !42
  store i1 %293, i1* %OF, !mcsema_real_eip !42
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !42
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !42
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !42
  %297 = xor i1 %296, true, !mcsema_real_eip !42
  store i1 %297, i1* %PF, !mcsema_real_eip !42
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !42
  store i1 %298, i1* %CF, !mcsema_real_eip !42
  %299 = zext i32 %280 to i64, !mcsema_real_eip !42
  store i64 %299, i64* %XCX, !mcsema_real_eip !42
  %ECX_val.83 = load i32, i32* %ECX.19, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.41, !mcsema_real_eip !43
  %300 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %301 = sext i32 %ECX_val.83 to i64, !mcsema_real_eip !43
  %302 = mul i64 %300, %301, !mcsema_real_eip !43
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !43
  %304 = sext i32 %303 to i64, !mcsema_real_eip !43
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !43
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !43
  store i1 %306, i1* %SF, !mcsema_real_eip !43
  store i1 %305, i1* %OF, !mcsema_real_eip !43
  store i1 %305, i1* %CF, !mcsema_real_eip !43
  %307 = zext i32 %303 to i64, !mcsema_real_eip !43
  store i64 %307, i64* %XAX, !mcsema_real_eip !43
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !44
  %308 = inttoptr i64 %RSP_val.86 to i64*, !mcsema_real_eip !44
  %309 = load i64, i64* %308, !mcsema_real_eip !44
  store i64 %309, i64* %XBX, !mcsema_real_eip !44
  %310 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store i64 %310, i64* %XSP, !mcsema_real_eip !44
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !45
  %312 = load i64, i64* %311, !mcsema_real_eip !45
  store i64 %312, i64* %XBP, !mcsema_real_eip !45
  %313 = add i64 %310, 8, !mcsema_real_eip !45
  store i64 %313, i64* %XSP, !mcsema_real_eip !45
  %314 = add i64 %313, 8, !mcsema_real_eip !46
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !46
  %316 = load i64, i64* %315, !mcsema_real_eip !46
  store i64 %316, i64* %XIP, !mcsema_real_eip !46
  store i64 %314, i64* %XSP, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !47
  br label %block_0xa0, !mcsema_real_eip !47

block_0xa0:                                       ; preds = %entry
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !47
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !47
  %1 = sub i64 %RSP_val.90, 8, !mcsema_real_eip !47
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !47
  store i64 %RBP_val.89, i64* %2, !mcsema_real_eip !47
  store i64 %1, i64* %XSP, !mcsema_real_eip !47
  store i64 %1, i64* %XBP, !mcsema_real_eip !48
  %3 = sub i64 %1, 96, !mcsema_real_eip !49
  %4 = xor i64 %3, %1, !mcsema_real_eip !49
  %5 = xor i64 %4, 96, !mcsema_real_eip !49
  %6 = and i64 %5, 16, !mcsema_real_eip !49
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !49
  store i1 %7, i1* %AF, !mcsema_real_eip !49
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !49
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !49
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !49
  %11 = xor i1 %10, true, !mcsema_real_eip !49
  store i1 %11, i1* %PF, !mcsema_real_eip !49
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !49
  store i1 %12, i1* %ZF, !mcsema_real_eip !49
  %13 = lshr i64 %3, 63, !mcsema_real_eip !49
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !49
  store i1 %14, i1* %SF, !mcsema_real_eip !49
  %15 = icmp ult i64 %1, 96, !mcsema_real_eip !49
  store i1 %15, i1* %CF, !mcsema_real_eip !49
  %16 = xor i64 %1, 96, !mcsema_real_eip !49
  %17 = and i64 %16, %4, !mcsema_real_eip !49
  %18 = lshr i64 %17, 63, !mcsema_real_eip !49
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !49
  store i1 %19, i1* %OF, !mcsema_real_eip !49
  store i64 %3, i64* %XSP, !mcsema_real_eip !49
  store i64 40, i64* %XAX, !mcsema_real_eip !50
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !51
  %20 = zext i32 %EAX_val.94 to i64, !mcsema_real_eip !51
  store i64 %20, i64* %XCX, !mcsema_real_eip !51
  %21 = add i64 %1, -4, !mcsema_real_eip !52
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !52
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !52
  store i32 0, i32* %23, !mcsema_real_eip !52
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !53
  %24 = add i64 %RBP_val.96, -8, !mcsema_real_eip !53
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !53
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !53
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !53
  store i32 %EDI_val.98, i32* %26, !mcsema_real_eip !53
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !54
  %27 = add i64 %RBP_val.99, -16, !mcsema_real_eip !54
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !54
  %RSI_val.100 = load i64, i64* %XSI, !mcsema_real_eip !54
  store i64 %RSI_val.100, i64* %28, !mcsema_real_eip !54
  %RCX_val.101 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.101, i64* %XDI, !mcsema_real_eip !55
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !56
  %29 = sub i64 %RSP_val.103, 8, !mcsema_real_eip !56
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !56
  store i64 -2415393069852865332, i64* %30, !mcsema_real_eip !56
  store i64 %29, i64* %XSP, !mcsema_real_eip !56
  %31 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.101), !mcsema_real_eip !56
  store i64 %31, i64* %XAX, !mcsema_real_eip !56
  store i64 40, i64* %XDX, !mcsema_real_eip !57
  %EDX.104 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.105 = load i32, i32* %EDX.104, !mcsema_real_eip !58
  %32 = zext i32 %EDX_val.105 to i64, !mcsema_real_eip !58
  store i64 %32, i64* %XDI, !mcsema_real_eip !58
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !59
  %33 = add i64 %RBP_val.106, -24, !mcsema_real_eip !59
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !59
  store i64 %31, i64* %34, !mcsema_real_eip !59
  %RDI_val.108 = load i64, i64* %XDI, !mcsema_real_eip !60
  %RSP_val.109 = load i64, i64* %XSP, !mcsema_real_eip !60
  %35 = sub i64 %RSP_val.109, 8, !mcsema_real_eip !60
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !60
  store i64 %35, i64* %XSP, !mcsema_real_eip !60
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.108), !mcsema_real_eip !60
  store i64 %37, i64* %XAX, !mcsema_real_eip !60
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !61
  %38 = add i64 %RBP_val.110, -32, !mcsema_real_eip !61
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !61
  store i64 %37, i64* %39, !mcsema_real_eip !61
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !62
  %40 = add i64 %RBP_val.112, -36, !mcsema_real_eip !62
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !62
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !62
  store i32 0, i32* %42, !mcsema_real_eip !62
  br label %block_0xe0, !mcsema_real_eip !63

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !63
  %43 = add i64 %RBP_val.113, -36, !mcsema_real_eip !63
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !63
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !63
  %46 = load i32, i32* %45, !mcsema_real_eip !63
  %47 = sub i32 %46, 10, !mcsema_real_eip !63
  %48 = xor i32 %47, %46, !mcsema_real_eip !63
  %49 = xor i32 %48, 10, !mcsema_real_eip !63
  %50 = and i32 %49, 16, !mcsema_real_eip !63
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !63
  store i1 %51, i1* %AF, !mcsema_real_eip !63
  %52 = trunc i32 %47 to i8, !mcsema_real_eip !63
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !63
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !63
  %55 = xor i1 %54, true, !mcsema_real_eip !63
  store i1 %55, i1* %PF, !mcsema_real_eip !63
  %56 = icmp eq i32 %47, 0, !mcsema_real_eip !63
  store i1 %56, i1* %ZF, !mcsema_real_eip !63
  %57 = lshr i32 %47, 31, !mcsema_real_eip !63
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !63
  store i1 %58, i1* %SF, !mcsema_real_eip !63
  %59 = icmp ult i32 %46, 10, !mcsema_real_eip !63
  store i1 %59, i1* %CF, !mcsema_real_eip !63
  %60 = xor i32 %46, 10, !mcsema_real_eip !63
  %61 = and i32 %60, %48, !mcsema_real_eip !63
  %62 = lshr i32 %61, 31, !mcsema_real_eip !63
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !63
  store i1 %63, i1* %OF, !mcsema_real_eip !63
  %64 = icmp eq i1 %58, %63, !mcsema_real_eip !64
  br i1 %64, label %block_0x10c, label %block_0xea, !mcsema_real_eip !64

block_0xea:                                       ; preds = %block_0xe0
  %65 = load i32, i32* %45, !mcsema_real_eip !65
  %66 = zext i32 %65 to i64, !mcsema_real_eip !65
  store i64 %66, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.116 = load i32, i32* %EAX.93, !mcsema_real_eip !66
  %67 = add i32 10, %EAX_val.116, !mcsema_real_eip !66
  %68 = xor i32 %67, %EAX_val.116, !mcsema_real_eip !66
  %69 = xor i32 %68, 10, !mcsema_real_eip !66
  %70 = and i32 %69, 16, !mcsema_real_eip !66
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !66
  store i1 %71, i1* %AF, !mcsema_real_eip !66
  %72 = lshr i32 %67, 31, !mcsema_real_eip !66
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !66
  store i1 %73, i1* %SF, !mcsema_real_eip !66
  %74 = icmp eq i32 %67, 0, !mcsema_real_eip !66
  store i1 %74, i1* %ZF, !mcsema_real_eip !66
  %75 = xor i32 %EAX_val.116, 10, !mcsema_real_eip !66
  %76 = xor i32 %75, -1, !mcsema_real_eip !66
  %77 = and i32 %76, %68, !mcsema_real_eip !66
  %78 = lshr i32 %77, 31, !mcsema_real_eip !66
  %79 = and i32 %78, 1, !mcsema_real_eip !66
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !66
  store i1 %80, i1* %OF, !mcsema_real_eip !66
  %81 = trunc i32 %67 to i8, !mcsema_real_eip !66
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !66
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !66
  %84 = xor i1 %83, true, !mcsema_real_eip !66
  store i1 %84, i1* %PF, !mcsema_real_eip !66
  %85 = icmp ult i32 %67, %EAX_val.116, !mcsema_real_eip !66
  store i1 %85, i1* %CF, !mcsema_real_eip !66
  %86 = zext i32 %67 to i64, !mcsema_real_eip !66
  store i64 %86, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.93, !mcsema_real_eip !67
  %87 = add i32 1, %EAX_val.118, !mcsema_real_eip !67
  %88 = xor i32 %87, %EAX_val.118, !mcsema_real_eip !67
  %89 = xor i32 %88, 1, !mcsema_real_eip !67
  %90 = and i32 %89, 16, !mcsema_real_eip !67
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !67
  store i1 %91, i1* %AF, !mcsema_real_eip !67
  %92 = lshr i32 %87, 31, !mcsema_real_eip !67
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !67
  store i1 %93, i1* %SF, !mcsema_real_eip !67
  %94 = icmp eq i32 %87, 0, !mcsema_real_eip !67
  store i1 %94, i1* %ZF, !mcsema_real_eip !67
  %95 = xor i32 %EAX_val.118, 1, !mcsema_real_eip !67
  %96 = xor i32 %95, -1, !mcsema_real_eip !67
  %97 = and i32 %96, %88, !mcsema_real_eip !67
  %98 = lshr i32 %97, 31, !mcsema_real_eip !67
  %99 = and i32 %98, 1, !mcsema_real_eip !67
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !67
  store i1 %100, i1* %OF, !mcsema_real_eip !67
  %101 = trunc i32 %87 to i8, !mcsema_real_eip !67
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !67
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !67
  %104 = xor i1 %103, true, !mcsema_real_eip !67
  store i1 %104, i1* %PF, !mcsema_real_eip !67
  %105 = icmp ult i32 %87, %EAX_val.118, !mcsema_real_eip !67
  store i1 %105, i1* %CF, !mcsema_real_eip !67
  %106 = zext i32 %87 to i64, !mcsema_real_eip !67
  store i64 %106, i64* %XAX, !mcsema_real_eip !67
  %107 = add i64 %RBP_val.113, -24, !mcsema_real_eip !68
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !68
  %109 = load i64, i64* %108, !mcsema_real_eip !68
  store i64 %109, i64* %XCX, !mcsema_real_eip !68
  %110 = load i32, i32* %45, !mcsema_real_eip !69
  %111 = sext i32 %110 to i64, !mcsema_real_eip !69
  store i64 %111, i64* %XDX, !mcsema_real_eip !69
  %112 = mul i64 %111, 4, !mcsema_real_eip !70
  %113 = add i64 %109, %112, !mcsema_real_eip !70
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !70
  %EAX_val.124 = load i32, i32* %EAX.93, !mcsema_real_eip !70
  %115 = inttoptr i64 %113 to i32*, !mcsema_real_eip !70
  store i32 %EAX_val.124, i32* %115, !mcsema_real_eip !70
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !71
  %116 = add i64 %RBP_val.125, -36, !mcsema_real_eip !71
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !71
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !71
  %119 = load i32, i32* %118, !mcsema_real_eip !71
  %120 = zext i32 %119 to i64, !mcsema_real_eip !71
  store i64 %120, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.127 = load i32, i32* %EAX.93, !mcsema_real_eip !72
  %121 = add i32 1, %EAX_val.127, !mcsema_real_eip !72
  %122 = xor i32 %121, %EAX_val.127, !mcsema_real_eip !72
  %123 = xor i32 %122, 1, !mcsema_real_eip !72
  %124 = and i32 %123, 16, !mcsema_real_eip !72
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !72
  store i1 %125, i1* %AF, !mcsema_real_eip !72
  %126 = lshr i32 %121, 31, !mcsema_real_eip !72
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !72
  store i1 %127, i1* %SF, !mcsema_real_eip !72
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !72
  store i1 %128, i1* %ZF, !mcsema_real_eip !72
  %129 = xor i32 %EAX_val.127, 1, !mcsema_real_eip !72
  %130 = xor i32 %129, -1, !mcsema_real_eip !72
  %131 = and i32 %130, %122, !mcsema_real_eip !72
  %132 = lshr i32 %131, 31, !mcsema_real_eip !72
  %133 = and i32 %132, 1, !mcsema_real_eip !72
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !72
  store i1 %134, i1* %OF, !mcsema_real_eip !72
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !72
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !72
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !72
  %138 = xor i1 %137, true, !mcsema_real_eip !72
  store i1 %138, i1* %PF, !mcsema_real_eip !72
  %139 = icmp ult i32 %121, %EAX_val.127, !mcsema_real_eip !72
  store i1 %139, i1* %CF, !mcsema_real_eip !72
  %140 = zext i32 %121 to i64, !mcsema_real_eip !72
  store i64 %140, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.130 = load i32, i32* %EAX.93, !mcsema_real_eip !73
  store i32 %EAX_val.130, i32* %118, !mcsema_real_eip !73
  br label %block_0xe0, !mcsema_real_eip !74

block_0x10c:                                      ; preds = %block_0xe0
  %141 = add i64 %RBP_val.113, -40, !mcsema_real_eip !75
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !75
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !75
  store i32 0, i32* %143, !mcsema_real_eip !75
  br label %block_0x113, !mcsema_real_eip !76

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !76
  %144 = add i64 %RBP_val.132, -40, !mcsema_real_eip !76
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !76
  %146 = inttoptr i64 %144 to i32*, !mcsema_real_eip !76
  %147 = load i32, i32* %146, !mcsema_real_eip !76
  %148 = sub i32 %147, 10, !mcsema_real_eip !76
  %149 = xor i32 %148, %147, !mcsema_real_eip !76
  %150 = xor i32 %149, 10, !mcsema_real_eip !76
  %151 = and i32 %150, 16, !mcsema_real_eip !76
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !76
  store i1 %152, i1* %AF, !mcsema_real_eip !76
  %153 = trunc i32 %148 to i8, !mcsema_real_eip !76
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !76
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !76
  %156 = xor i1 %155, true, !mcsema_real_eip !76
  store i1 %156, i1* %PF, !mcsema_real_eip !76
  %157 = icmp eq i32 %148, 0, !mcsema_real_eip !76
  store i1 %157, i1* %ZF, !mcsema_real_eip !76
  %158 = lshr i32 %148, 31, !mcsema_real_eip !76
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !76
  store i1 %159, i1* %SF, !mcsema_real_eip !76
  %160 = icmp ult i32 %147, 10, !mcsema_real_eip !76
  store i1 %160, i1* %CF, !mcsema_real_eip !76
  %161 = xor i32 %147, 10, !mcsema_real_eip !76
  %162 = and i32 %161, %149, !mcsema_real_eip !76
  %163 = lshr i32 %162, 31, !mcsema_real_eip !76
  %164 = trunc i32 %163 to i1, !mcsema_real_eip !76
  store i1 %164, i1* %OF, !mcsema_real_eip !76
  %165 = icmp eq i1 %159, %164, !mcsema_real_eip !77
  br i1 %165, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !77

block_0x11d:                                      ; preds = %block_0x113
  %166 = load i32, i32* %146, !mcsema_real_eip !78
  %167 = zext i32 %166 to i64, !mcsema_real_eip !78
  store i64 %167, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.135 = load i32, i32* %EAX.93, !mcsema_real_eip !79
  %168 = add i32 1, %EAX_val.135, !mcsema_real_eip !79
  %169 = xor i32 %168, %EAX_val.135, !mcsema_real_eip !79
  %170 = xor i32 %169, 1, !mcsema_real_eip !79
  %171 = and i32 %170, 16, !mcsema_real_eip !79
  %172 = icmp ne i32 %171, 0, !mcsema_real_eip !79
  store i1 %172, i1* %AF, !mcsema_real_eip !79
  %173 = lshr i32 %168, 31, !mcsema_real_eip !79
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !79
  store i1 %174, i1* %SF, !mcsema_real_eip !79
  %175 = icmp eq i32 %168, 0, !mcsema_real_eip !79
  store i1 %175, i1* %ZF, !mcsema_real_eip !79
  %176 = xor i32 %EAX_val.135, 1, !mcsema_real_eip !79
  %177 = xor i32 %176, -1, !mcsema_real_eip !79
  %178 = and i32 %177, %169, !mcsema_real_eip !79
  %179 = lshr i32 %178, 31, !mcsema_real_eip !79
  %180 = and i32 %179, 1, !mcsema_real_eip !79
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !79
  store i1 %181, i1* %OF, !mcsema_real_eip !79
  %182 = trunc i32 %168 to i8, !mcsema_real_eip !79
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !79
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !79
  %185 = xor i1 %184, true, !mcsema_real_eip !79
  store i1 %185, i1* %PF, !mcsema_real_eip !79
  %186 = icmp ult i32 %168, %EAX_val.135, !mcsema_real_eip !79
  store i1 %186, i1* %CF, !mcsema_real_eip !79
  %187 = zext i32 %168 to i64, !mcsema_real_eip !79
  store i64 %187, i64* %XAX, !mcsema_real_eip !79
  %188 = add i64 %RBP_val.132, -32, !mcsema_real_eip !80
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !80
  %190 = load i64, i64* %189, !mcsema_real_eip !80
  store i64 %190, i64* %XCX, !mcsema_real_eip !80
  %191 = load i32, i32* %146, !mcsema_real_eip !81
  %192 = sext i32 %191 to i64, !mcsema_real_eip !81
  store i64 %192, i64* %XDX, !mcsema_real_eip !81
  %193 = mul i64 %192, 4, !mcsema_real_eip !82
  %194 = add i64 %190, %193, !mcsema_real_eip !82
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !82
  %EAX_val.141 = load i32, i32* %EAX.93, !mcsema_real_eip !82
  %196 = inttoptr i64 %194 to i32*, !mcsema_real_eip !82
  store i32 %EAX_val.141, i32* %196, !mcsema_real_eip !82
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !83
  %197 = add i64 %RBP_val.142, -40, !mcsema_real_eip !83
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !83
  %199 = inttoptr i64 %197 to i32*, !mcsema_real_eip !83
  %200 = load i32, i32* %199, !mcsema_real_eip !83
  %201 = zext i32 %200 to i64, !mcsema_real_eip !83
  store i64 %201, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.144 = load i32, i32* %EAX.93, !mcsema_real_eip !84
  %202 = add i32 1, %EAX_val.144, !mcsema_real_eip !84
  %203 = xor i32 %202, %EAX_val.144, !mcsema_real_eip !84
  %204 = xor i32 %203, 1, !mcsema_real_eip !84
  %205 = and i32 %204, 16, !mcsema_real_eip !84
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !84
  store i1 %206, i1* %AF, !mcsema_real_eip !84
  %207 = lshr i32 %202, 31, !mcsema_real_eip !84
  %208 = trunc i32 %207 to i1, !mcsema_real_eip !84
  store i1 %208, i1* %SF, !mcsema_real_eip !84
  %209 = icmp eq i32 %202, 0, !mcsema_real_eip !84
  store i1 %209, i1* %ZF, !mcsema_real_eip !84
  %210 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !84
  %211 = xor i32 %210, -1, !mcsema_real_eip !84
  %212 = and i32 %211, %203, !mcsema_real_eip !84
  %213 = lshr i32 %212, 31, !mcsema_real_eip !84
  %214 = and i32 %213, 1, !mcsema_real_eip !84
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !84
  store i1 %215, i1* %OF, !mcsema_real_eip !84
  %216 = trunc i32 %202 to i8, !mcsema_real_eip !84
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !84
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !84
  %219 = xor i1 %218, true, !mcsema_real_eip !84
  store i1 %219, i1* %PF, !mcsema_real_eip !84
  %220 = icmp ult i32 %202, %EAX_val.144, !mcsema_real_eip !84
  store i1 %220, i1* %CF, !mcsema_real_eip !84
  %221 = zext i32 %202 to i64, !mcsema_real_eip !84
  store i64 %221, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.147 = load i32, i32* %EAX.93, !mcsema_real_eip !85
  store i32 %EAX_val.147, i32* %199, !mcsema_real_eip !85
  br label %block_0x113, !mcsema_real_eip !86

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, !mcsema_real_eip !87
  store i64 200, i64* %XSI, !mcsema_real_eip !88
  store i64 300, i64* %XDX, !mcsema_real_eip !89
  store i64 400, i64* %XCX, !mcsema_real_eip !90
  store i64 500, i64* %R8, !mcsema_real_eip !91
  store i64 600, i64* %R9, !mcsema_real_eip !92
  store i64 10, i64* %XAX, !mcsema_real_eip !93
  %222 = add i64 %RBP_val.132, -24, !mcsema_real_eip !94
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !94
  %224 = load i64, i64* %223, !mcsema_real_eip !94
  store i64 %224, i64* %R10, !mcsema_real_eip !94
  %225 = add i64 %RBP_val.132, -32, !mcsema_real_eip !95
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !95
  %227 = load i64, i64* %226, !mcsema_real_eip !95
  store i64 %227, i64* %R11, !mcsema_real_eip !95
  %RSP_val.150 = load i64, i64* %XSP, !mcsema_real_eip !96
  %228 = inttoptr i64 %RSP_val.150 to i64*, !mcsema_real_eip !96
  %229 = inttoptr i64 %RSP_val.150 to i32*, !mcsema_real_eip !96
  store i32 10, i32* %229, !mcsema_real_eip !96
  %RSP_val.151 = load i64, i64* %XSP, !mcsema_real_eip !97
  %230 = add i64 %RSP_val.151, 8, !mcsema_real_eip !97
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !97
  %R10_val.152 = load i64, i64* %R10, !mcsema_real_eip !97
  store i64 %R10_val.152, i64* %231, !mcsema_real_eip !97
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !98
  %232 = add i64 %RSP_val.153, 16, !mcsema_real_eip !98
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !98
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %234, !mcsema_real_eip !98
  %RSP_val.154 = load i64, i64* %XSP, !mcsema_real_eip !99
  %235 = add i64 %RSP_val.154, 24, !mcsema_real_eip !99
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !99
  %R11_val.155 = load i64, i64* %R11, !mcsema_real_eip !99
  store i64 %R11_val.155, i64* %236, !mcsema_real_eip !99
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !100
  %237 = add i64 %RBP_val.156, -48, !mcsema_real_eip !100
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !100
  %EAX_val.158 = load i32, i32* %EAX.93, !mcsema_real_eip !100
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.158, i32* %239, !mcsema_real_eip !100
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !101
  %240 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !101
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !101
  store i64 -4981261766360305936, i64* %241, !mcsema_real_eip !101
  store i64 %240, i64* %XSP, !mcsema_real_eip !101
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !101
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !102
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !103
  %242 = add i64 %RBP_val.160, -44, !mcsema_real_eip !103
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !103
  %EAX_val.162 = load i32, i32* %EAX.93, !mcsema_real_eip !103
  %244 = inttoptr i64 %242 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.162, i32* %244, !mcsema_real_eip !103
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !104
  %245 = add i64 %RBP_val.163, -44, !mcsema_real_eip !104
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !104
  %247 = inttoptr i64 %245 to i32*, !mcsema_real_eip !104
  %248 = load i32, i32* %247, !mcsema_real_eip !104
  %249 = zext i32 %248 to i64, !mcsema_real_eip !104
  store i64 %249, i64* %XSI, !mcsema_real_eip !104
  %AL.164 = bitcast i64* %XAX to i8*, !mcsema_real_eip !105
  store i8 0, i8* %AL.164, !mcsema_real_eip !105
  %RDI_val.165 = load i64, i64* %XDI, !mcsema_real_eip !106
  %RDX_val.167 = load i64, i64* %XDX, !mcsema_real_eip !106
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !106
  %R8_val.169 = load i64, i64* %R8, !mcsema_real_eip !106
  %R9_val.170 = load i64, i64* %R9, !mcsema_real_eip !106
  %RSP_val.171 = load i64, i64* %XSP, !mcsema_real_eip !106
  %250 = inttoptr i64 %RSP_val.171 to i64*, !mcsema_real_eip !106
  %251 = load i64, i64* %250, !mcsema_real_eip !106
  %252 = add i64 %RSP_val.171, 8, !mcsema_real_eip !106
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !106
  %254 = load i64, i64* %253, !mcsema_real_eip !106
  %255 = add i64 %252, 8, !mcsema_real_eip !106
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !106
  %257 = load i64, i64* %256, !mcsema_real_eip !106
  %258 = add i64 %255, 8, !mcsema_real_eip !106
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !106
  %260 = load i64, i64* %259, !mcsema_real_eip !106
  %261 = add i64 %258, 8, !mcsema_real_eip !106
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !106
  %263 = load i64, i64* %262, !mcsema_real_eip !106
  %264 = add i64 %261, 8, !mcsema_real_eip !106
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !106
  %266 = load i64, i64* %265, !mcsema_real_eip !106
  %267 = add i64 %264, 8, !mcsema_real_eip !106
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !106
  %269 = load i64, i64* %268, !mcsema_real_eip !106
  %270 = add i64 %267, 8, !mcsema_real_eip !106
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !106
  %272 = load i64, i64* %271, !mcsema_real_eip !106
  %273 = add i64 %270, 8, !mcsema_real_eip !106
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !106
  %275 = load i64, i64* %274, !mcsema_real_eip !106
  %276 = add i64 %273, 8, !mcsema_real_eip !106
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !106
  %278 = load i64, i64* %277, !mcsema_real_eip !106
  %279 = sub i64 %RSP_val.171, 8, !mcsema_real_eip !106
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !106
  store i64 -2415393069852865332, i64* %280, !mcsema_real_eip !106
  store i64 %279, i64* %XSP, !mcsema_real_eip !106
  %281 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.165, i64 %249, i64 %RDX_val.167, i64 %RCX_val.168, i64 %R8_val.169, i64 %R9_val.170, i64 %251, i64 %254, i64 %257, i64 %260, i64 %263, i64 %266, i64 %269, i64 %272, i64 %275, i64 %278), !mcsema_real_eip !106
  store i64 %281, i64* %XAX, !mcsema_real_eip !106
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !107
  %282 = add i64 %RBP_val.173, -44, !mcsema_real_eip !107
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !107
  %284 = inttoptr i64 %282 to i32*, !mcsema_real_eip !107
  %285 = load i32, i32* %284, !mcsema_real_eip !107
  %286 = zext i32 %285 to i64, !mcsema_real_eip !107
  store i64 %286, i64* %XCX, !mcsema_real_eip !107
  %287 = add i64 %RBP_val.173, -52, !mcsema_real_eip !108
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !108
  %EAX_val.176 = load i32, i32* %EAX.93, !mcsema_real_eip !108
  %289 = inttoptr i64 %287 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.176, i32* %289, !mcsema_real_eip !108
  %ECX.177 = bitcast i64* %XCX to i32*, !mcsema_real_eip !109
  %ECX_val.178 = load i32, i32* %ECX.177, !mcsema_real_eip !109
  %290 = zext i32 %ECX_val.178 to i64, !mcsema_real_eip !109
  store i64 %290, i64* %XAX, !mcsema_real_eip !109
  %RSP_val.179 = load i64, i64* %XSP, !mcsema_real_eip !110
  %291 = add i64 96, %RSP_val.179, !mcsema_real_eip !110
  %292 = xor i64 %291, %RSP_val.179, !mcsema_real_eip !110
  %293 = xor i64 %292, 96, !mcsema_real_eip !110
  %294 = and i64 %293, 16, !mcsema_real_eip !110
  %295 = icmp ne i64 %294, 0, !mcsema_real_eip !110
  store i1 %295, i1* %AF, !mcsema_real_eip !110
  %296 = lshr i64 %291, 63, !mcsema_real_eip !110
  %297 = trunc i64 %296 to i1, !mcsema_real_eip !110
  store i1 %297, i1* %SF, !mcsema_real_eip !110
  %298 = icmp eq i64 %291, 0, !mcsema_real_eip !110
  store i1 %298, i1* %ZF, !mcsema_real_eip !110
  %299 = xor i64 %RSP_val.179, 96, !mcsema_real_eip !110
  %300 = xor i64 %299, -1, !mcsema_real_eip !110
  %301 = and i64 %300, %292, !mcsema_real_eip !110
  %302 = lshr i64 %301, 63, !mcsema_real_eip !110
  %303 = and i64 %302, 1, !mcsema_real_eip !110
  %304 = trunc i64 %303 to i1, !mcsema_real_eip !110
  store i1 %304, i1* %OF, !mcsema_real_eip !110
  %305 = trunc i64 %291 to i8, !mcsema_real_eip !110
  %306 = call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !110
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !110
  %308 = xor i1 %307, true, !mcsema_real_eip !110
  store i1 %308, i1* %PF, !mcsema_real_eip !110
  %309 = icmp ult i64 %291, %RSP_val.179, !mcsema_real_eip !110
  store i1 %309, i1* %CF, !mcsema_real_eip !110
  store i64 %291, i64* %XSP, !mcsema_real_eip !110
  %310 = inttoptr i64 %291 to i64*, !mcsema_real_eip !111
  %311 = load i64, i64* %310, !mcsema_real_eip !111
  store i64 %311, i64* %XBP, !mcsema_real_eip !111
  %312 = add i64 %291, 8, !mcsema_real_eip !111
  store i64 %312, i64* %XSP, !mcsema_real_eip !111
  %313 = add i64 %312, 8, !mcsema_real_eip !112
  %314 = inttoptr i64 %312 to i64*, !mcsema_real_eip !112
  %315 = load i64, i64* %314, !mcsema_real_eip !112
  store i64 %315, i64* %XIP, !mcsema_real_eip !112
  store i64 %313, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

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
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 26}
!12 = !{i64 29}
!13 = !{i64 32}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 43}
!17 = !{i64 47}
!18 = !{i64 51}
!19 = !{i64 55}
!20 = !{i64 62}
!21 = !{i64 69}
!22 = !{i64 72}
!23 = !{i64 75}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 89}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 103}
!31 = !{i64 106}
!32 = !{i64 109}
!33 = !{i64 112}
!34 = !{i64 115}
!35 = !{i64 118}
!36 = !{i64 123}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 132}
!40 = !{i64 135}
!41 = !{i64 138}
!42 = !{i64 141}
!43 = !{i64 144}
!44 = !{i64 147}
!45 = !{i64 148}
!46 = !{i64 149}
!47 = !{i64 160}
!48 = !{i64 161}
!49 = !{i64 164}
!50 = !{i64 168}
!51 = !{i64 173}
!52 = !{i64 175}
!53 = !{i64 182}
!54 = !{i64 185}
!55 = !{i64 189}
!56 = !{i64 192}
!57 = !{i64 197}
!58 = !{i64 202}
!59 = !{i64 204}
!60 = !{i64 208}
!61 = !{i64 213}
!62 = !{i64 217}
!63 = !{i64 224}
!64 = !{i64 228}
!65 = !{i64 234}
!66 = !{i64 237}
!67 = !{i64 240}
!68 = !{i64 243}
!69 = !{i64 247}
!70 = !{i64 251}
!71 = !{i64 254}
!72 = !{i64 257}
!73 = !{i64 260}
!74 = !{i64 263}
!75 = !{i64 268}
!76 = !{i64 275}
!77 = !{i64 279}
!78 = !{i64 285}
!79 = !{i64 288}
!80 = !{i64 291}
!81 = !{i64 295}
!82 = !{i64 299}
!83 = !{i64 302}
!84 = !{i64 305}
!85 = !{i64 308}
!86 = !{i64 311}
!87 = !{i64 316}
!88 = !{i64 321}
!89 = !{i64 326}
!90 = !{i64 331}
!91 = !{i64 336}
!92 = !{i64 342}
!93 = !{i64 348}
!94 = !{i64 353}
!95 = !{i64 357}
!96 = !{i64 361}
!97 = !{i64 368}
!98 = !{i64 373}
!99 = !{i64 381}
!100 = !{i64 386}
!101 = !{i64 389}
!102 = !{i64 394}
!103 = !{i64 404}
!104 = !{i64 407}
!105 = !{i64 410}
!106 = !{i64 412}
!107 = !{i64 417}
!108 = !{i64 420}
!109 = !{i64 423}
!110 = !{i64 425}
!111 = !{i64 429}
!112 = !{i64 430}
