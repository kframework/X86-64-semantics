; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, -4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %5, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.8, i32* %8, !mcsema_real_eip !5
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.9, -4, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  %12 = load i32, i32* %11, !mcsema_real_eip !6
  %13 = zext i32 %12 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %XSI, !mcsema_real_eip !6
  %14 = add i64 %RBP_val.9, -8, !mcsema_real_eip !7
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !7
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !7
  %17 = load i32, i32* %16, !mcsema_real_eip !7
  %ESI_val.12 = load i32, i32* %ESI.7, !mcsema_real_eip !7
  %18 = add i32 %ESI_val.12, %17, !mcsema_real_eip !7
  %19 = xor i32 %18, %17, !mcsema_real_eip !7
  %20 = xor i32 %19, %ESI_val.12, !mcsema_real_eip !7
  %21 = and i32 %20, 16, !mcsema_real_eip !7
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !7
  store i1 %22, i1* %AF, !mcsema_real_eip !7
  %23 = lshr i32 %18, 31, !mcsema_real_eip !7
  %24 = trunc i32 %23 to i1, !mcsema_real_eip !7
  store i1 %24, i1* %SF, !mcsema_real_eip !7
  %25 = icmp eq i32 %18, 0, !mcsema_real_eip !7
  store i1 %25, i1* %ZF, !mcsema_real_eip !7
  %26 = xor i32 %17, %ESI_val.12, !mcsema_real_eip !7
  %27 = xor i32 %26, -1, !mcsema_real_eip !7
  %28 = and i32 %27, %19, !mcsema_real_eip !7
  %29 = lshr i32 %28, 31, !mcsema_real_eip !7
  %30 = and i32 %29, 1, !mcsema_real_eip !7
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !7
  store i1 %31, i1* %OF, !mcsema_real_eip !7
  %32 = trunc i32 %18 to i8, !mcsema_real_eip !7
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !7
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !7
  %35 = xor i1 %34, true, !mcsema_real_eip !7
  store i1 %35, i1* %PF, !mcsema_real_eip !7
  %36 = icmp ult i32 %18, %17, !mcsema_real_eip !7
  store i1 %36, i1* %CF, !mcsema_real_eip !7
  %37 = zext i32 %18 to i64, !mcsema_real_eip !7
  store i64 %37, i64* %XSI, !mcsema_real_eip !7
  %38 = add i64 %RBP_val.9, -12, !mcsema_real_eip !8
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !8
  %ESI_val.15 = load i32, i32* %ESI.7, !mcsema_real_eip !8
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !8
  store i32 %ESI_val.15, i32* %40, !mcsema_real_eip !8
  br label %block_0x13, !mcsema_real_eip !9

block_0x13:                                       ; preds = %block_0x50, %block_0x0
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !9
  %41 = add i64 %RBP_val.16, -4, !mcsema_real_eip !9
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !9
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !9
  %44 = load i32, i32* %43, !mcsema_real_eip !9
  store i1 false, i1* %AF, !mcsema_real_eip !9
  %45 = trunc i32 %44 to i8, !mcsema_real_eip !9
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !9
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !9
  %48 = xor i1 %47, true, !mcsema_real_eip !9
  store i1 %48, i1* %PF, !mcsema_real_eip !9
  %49 = icmp eq i32 %44, 0, !mcsema_real_eip !9
  store i1 %49, i1* %ZF, !mcsema_real_eip !9
  %50 = lshr i32 %44, 31, !mcsema_real_eip !9
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !9
  store i1 %51, i1* %SF, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  %52 = icmp eq i1 %51, false, !mcsema_real_eip !10
  %53 = icmp eq i1 %52, false, !mcsema_real_eip !10
  br i1 %53, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !10

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, !mcsema_real_eip !11
  %54 = load i32, i32* %43, !mcsema_real_eip !12
  %55 = zext i32 %54 to i64, !mcsema_real_eip !12
  store i64 %55, i64* %XCX, !mcsema_real_eip !12
  %56 = add i64 %RBP_val.16, -20, !mcsema_real_eip !13
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %58 = inttoptr i64 %56 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %58, !mcsema_real_eip !13
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !14
  %59 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !14
  store i64 %59, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.24 = load i32, i32* %EAX.19, !mcsema_real_eip !15
  %60 = and i32 %EAX_val.24, -2147483648, !mcsema_real_eip !15
  %61 = icmp eq i32 %60, 0, !mcsema_real_eip !15
  %62 = select i1 %61, i32 0, i32 -1, !mcsema_real_eip !15
  %63 = zext i32 %62 to i64, !mcsema_real_eip !15
  store i64 %63, i64* %XDX, !mcsema_real_eip !15
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !16
  %64 = add i64 %RBP_val.25, -20, !mcsema_real_eip !16
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !16
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !16
  %67 = load i32, i32* %66, !mcsema_real_eip !16
  %68 = zext i32 %67 to i64, !mcsema_real_eip !16
  store i64 %68, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.21, !mcsema_real_eip !17
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !17
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !17
  %69 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !17
  %70 = shl i64 %69, 32, !mcsema_real_eip !17
  %71 = sext i32 %EAX_val.24 to i64, !mcsema_real_eip !17
  %72 = or i64 %70, %71, !mcsema_real_eip !17
  %73 = sext i32 %ECX_val.27 to i64, !mcsema_real_eip !17
  %74 = sdiv i64 %72, %73, !mcsema_real_eip !17
  %75 = srem i64 %72, %73, !mcsema_real_eip !17
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !17
  %77 = trunc i64 %74 to i32, !mcsema_real_eip !17
  %78 = zext i32 %76 to i64, !mcsema_real_eip !17
  store i64 %78, i64* %XDX, !mcsema_real_eip !17
  %79 = zext i32 %77 to i64, !mcsema_real_eip !17
  store i64 %79, i64* %XAX, !mcsema_real_eip !17
  %EDX_val.33 = load i32, i32* %EDX.30, !mcsema_real_eip !18
  store i1 false, i1* %AF, !mcsema_real_eip !18
  %80 = trunc i32 %EDX_val.33 to i8, !mcsema_real_eip !18
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !18
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !18
  %83 = xor i1 %82, true, !mcsema_real_eip !18
  store i1 %83, i1* %PF, !mcsema_real_eip !18
  %84 = icmp eq i32 %EDX_val.33, 0, !mcsema_real_eip !18
  store i1 %84, i1* %ZF, !mcsema_real_eip !18
  %85 = lshr i32 %EDX_val.33, 31, !mcsema_real_eip !18
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !18
  store i1 %86, i1* %SF, !mcsema_real_eip !18
  store i1 false, i1* %CF, !mcsema_real_eip !18
  store i1 false, i1* %OF, !mcsema_real_eip !18
  %87 = icmp eq i1 %84, false, !mcsema_real_eip !19
  br i1 %87, label %block_0x47, label %block_0x39, !mcsema_real_eip !19

block_0x39:                                       ; preds = %block_0x1d
  %88 = add i64 %RBP_val.25, -12, !mcsema_real_eip !20
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !20
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !20
  %91 = load i32, i32* %90, !mcsema_real_eip !20
  %92 = zext i32 %91 to i64, !mcsema_real_eip !20
  store i64 %92, i64* %XAX, !mcsema_real_eip !20
  %EAX_val.36 = load i32, i32* %EAX.19, !mcsema_real_eip !21
  %93 = add i32 10, %EAX_val.36, !mcsema_real_eip !21
  %94 = xor i32 %93, %EAX_val.36, !mcsema_real_eip !21
  %95 = xor i32 %94, 10, !mcsema_real_eip !21
  %96 = and i32 %95, 16, !mcsema_real_eip !21
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !21
  store i1 %97, i1* %AF, !mcsema_real_eip !21
  %98 = lshr i32 %93, 31, !mcsema_real_eip !21
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !21
  store i1 %99, i1* %SF, !mcsema_real_eip !21
  %100 = icmp eq i32 %93, 0, !mcsema_real_eip !21
  store i1 %100, i1* %ZF, !mcsema_real_eip !21
  %101 = xor i32 %EAX_val.36, 10, !mcsema_real_eip !21
  %102 = xor i32 %101, -1, !mcsema_real_eip !21
  %103 = and i32 %102, %94, !mcsema_real_eip !21
  %104 = lshr i32 %103, 31, !mcsema_real_eip !21
  %105 = and i32 %104, 1, !mcsema_real_eip !21
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !21
  store i1 %106, i1* %OF, !mcsema_real_eip !21
  %107 = trunc i32 %93 to i8, !mcsema_real_eip !21
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !21
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !21
  %110 = xor i1 %109, true, !mcsema_real_eip !21
  store i1 %110, i1* %PF, !mcsema_real_eip !21
  %111 = icmp ult i32 %93, %EAX_val.36, !mcsema_real_eip !21
  store i1 %111, i1* %CF, !mcsema_real_eip !21
  %112 = zext i32 %93 to i64, !mcsema_real_eip !21
  store i64 %112, i64* %XAX, !mcsema_real_eip !21
  %113 = add i64 %RBP_val.25, -16, !mcsema_real_eip !22
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !22
  %EAX_val.39 = load i32, i32* %EAX.19, !mcsema_real_eip !22
  %115 = inttoptr i64 %113 to i32*, !mcsema_real_eip !22
  store i32 %EAX_val.39, i32* %115, !mcsema_real_eip !22
  br label %block_0x50, !mcsema_real_eip !23

block_0x47:                                       ; preds = %block_0x1d
  %116 = add i64 %RBP_val.25, -12, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !24
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !24
  %119 = load i32, i32* %118, !mcsema_real_eip !24
  %120 = zext i32 %119 to i64, !mcsema_real_eip !24
  store i64 %120, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.42 = load i32, i32* %EAX.19, !mcsema_real_eip !25
  %121 = sub i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %122 = xor i32 %121, %EAX_val.42, !mcsema_real_eip !25
  %123 = xor i32 %122, 10, !mcsema_real_eip !25
  %124 = and i32 %123, 16, !mcsema_real_eip !25
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !25
  store i1 %125, i1* %AF, !mcsema_real_eip !25
  %126 = trunc i32 %121 to i8, !mcsema_real_eip !25
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !25
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !25
  %129 = xor i1 %128, true, !mcsema_real_eip !25
  store i1 %129, i1* %PF, !mcsema_real_eip !25
  %130 = icmp eq i32 %121, 0, !mcsema_real_eip !25
  store i1 %130, i1* %ZF, !mcsema_real_eip !25
  %131 = lshr i32 %121, 31, !mcsema_real_eip !25
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !25
  store i1 %132, i1* %SF, !mcsema_real_eip !25
  %133 = icmp ult i32 %EAX_val.42, 10, !mcsema_real_eip !25
  store i1 %133, i1* %CF, !mcsema_real_eip !25
  %134 = xor i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %135 = and i32 %134, %122, !mcsema_real_eip !25
  %136 = lshr i32 %135, 31, !mcsema_real_eip !25
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !25
  store i1 %137, i1* %OF, !mcsema_real_eip !25
  %138 = zext i32 %121 to i64, !mcsema_real_eip !25
  store i64 %138, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.19, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %118, !mcsema_real_eip !26
  br label %block_0x50, !mcsema_real_eip !27

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !27
  %139 = add i64 %RBP_val.46, -4, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !27
  %141 = inttoptr i64 %139 to i32*, !mcsema_real_eip !27
  %142 = load i32, i32* %141, !mcsema_real_eip !27
  %143 = zext i32 %142 to i64, !mcsema_real_eip !27
  store i64 %143, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.48 = load i32, i32* %EAX.19, !mcsema_real_eip !28
  %144 = add i32 -1, %EAX_val.48, !mcsema_real_eip !28
  %145 = xor i32 %144, %EAX_val.48, !mcsema_real_eip !28
  %146 = xor i32 %145, -1, !mcsema_real_eip !28
  %147 = and i32 %146, 16, !mcsema_real_eip !28
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !28
  store i1 %148, i1* %AF, !mcsema_real_eip !28
  %149 = lshr i32 %144, 31, !mcsema_real_eip !28
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !28
  store i1 %150, i1* %SF, !mcsema_real_eip !28
  %151 = icmp eq i32 %144, 0, !mcsema_real_eip !28
  store i1 %151, i1* %ZF, !mcsema_real_eip !28
  %152 = xor i32 %EAX_val.48, -1, !mcsema_real_eip !28
  %153 = and i32 %EAX_val.48, %145, !mcsema_real_eip !28
  %154 = lshr i32 %153, 31, !mcsema_real_eip !28
  %155 = and i32 %154, 1, !mcsema_real_eip !28
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !28
  store i1 %156, i1* %OF, !mcsema_real_eip !28
  %157 = trunc i32 %144 to i8, !mcsema_real_eip !28
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !28
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !28
  %160 = xor i1 %159, true, !mcsema_real_eip !28
  store i1 %160, i1* %PF, !mcsema_real_eip !28
  %161 = icmp ult i32 %144, %EAX_val.48, !mcsema_real_eip !28
  store i1 %161, i1* %CF, !mcsema_real_eip !28
  %162 = zext i32 %144 to i64, !mcsema_real_eip !28
  store i64 %162, i64* %XAX, !mcsema_real_eip !28
  %EAX_val.51 = load i32, i32* %EAX.19, !mcsema_real_eip !29
  store i32 %EAX_val.51, i32* %141, !mcsema_real_eip !29
  br label %block_0x13, !mcsema_real_eip !30

block_0x5e:                                       ; preds = %block_0x13
  %163 = add i64 %RBP_val.16, -16, !mcsema_real_eip !31
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !31
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !31
  %166 = load i32, i32* %165, !mcsema_real_eip !31
  %167 = zext i32 %166 to i64, !mcsema_real_eip !31
  store i64 %167, i64* %XAX, !mcsema_real_eip !31
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !32
  %168 = inttoptr i64 %RSP_val.53 to i64*, !mcsema_real_eip !32
  %169 = load i64, i64* %168, !mcsema_real_eip !32
  store i64 %169, i64* %XBP, !mcsema_real_eip !32
  %170 = add i64 %RSP_val.53, 8, !mcsema_real_eip !32
  store i64 %170, i64* %XSP, !mcsema_real_eip !32
  %171 = add i64 %170, 8, !mcsema_real_eip !33
  %172 = inttoptr i64 %170 to i64*, !mcsema_real_eip !33
  %173 = load i64, i64* %172, !mcsema_real_eip !33
  store i64 %173, i64* %XIP, !mcsema_real_eip !33
  store i64 %171, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !34
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !34
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !34
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !34
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !34
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !34
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !34
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !34
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !34
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !34
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !34
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !34
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !34
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !34
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !34
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !34
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !34
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !34
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !34
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !34
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !34
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !34
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.58, 16, !mcsema_real_eip !36
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !36
  %4 = and i64 %3, 16, !mcsema_real_eip !36
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !36
  store i1 %5, i1* %AF, !mcsema_real_eip !36
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !36
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !36
  %8 = xor i1 %7, true, !mcsema_real_eip !36
  store i1 %8, i1* %PF, !mcsema_real_eip !36
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !36
  %9 = lshr i64 %2, 63, !mcsema_real_eip !36
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !36
  store i1 %10, i1* %SF, !mcsema_real_eip !36
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !36
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !36
  %12 = lshr i64 %11, 63, !mcsema_real_eip !36
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !36
  store i1 %13, i1* %OF, !mcsema_real_eip !36
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !39
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !39
  store i32 0, i32* %15, !mcsema_real_eip !39
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !40
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !40
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !40
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_76)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !41
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !42
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %18, !mcsema_real_eip !42
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !43
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !43
  %21 = load i32, i32* %20, !mcsema_real_eip !43
  %22 = zext i32 %21 to i64, !mcsema_real_eip !43
  store i64 %22, i64* %XSI, !mcsema_real_eip !43
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.65, !mcsema_real_eip !44
  %RDI_val.66 = load i64, i64* %XDI, !mcsema_real_eip !45
  %RDX_val.68 = load i64, i64* %XDX, !mcsema_real_eip !45
  %RCX_val.69 = load i64, i64* %XCX, !mcsema_real_eip !45
  %R8_val.70 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9_val.71 = load i64, i64* %R9, !mcsema_real_eip !45
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %23 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !45
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %24 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !45
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !45
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %26 = load i64, i64* %_allin_new_bt_32, !mcsema_real_eip !45
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %27 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !45
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %28 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !45
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %29 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !45
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %30 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !45
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %31 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !45
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %32 = load i64, i64* %_allin_new_bt_44, !mcsema_real_eip !45
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !45
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %33 = sub i64 %RSP_val.73, 8, !mcsema_real_eip !45
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, !mcsema_real_eip !45
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !45
  %34 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %22, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32)
  %_rsp_fix_78 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_79 = getelementptr i8, i8* %_rsp_fix_78, i64 8
  store i8* %_gep_fix_79, i8** %_RSP_ptr_
  store i64 %34, i64* %XAX, !mcsema_real_eip !45
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %35 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !46
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !46
  %37 = load i32, i32* %36, !mcsema_real_eip !46
  %38 = zext i32 %37 to i64, !mcsema_real_eip !46
  store i64 %38, i64* %XSI, !mcsema_real_eip !46
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -12
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %EAX_val.77 = load i32, i32* %EAX.62, !mcsema_real_eip !47
  %39 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !47
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.77, i32* %40, !mcsema_real_eip !47
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !48
  %ESI_val.79 = load i32, i32* %ESI.78, !mcsema_real_eip !48
  %41 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !48
  store i64 %41, i64* %XAX, !mcsema_real_eip !48
  %_load_rsp_ptr_54 = load i8*, i8** %_RSP_ptr_
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !49
  %_new_gep_55 = getelementptr i8, i8* %_load_rsp_ptr_54, i64 16
  %42 = add i64 16, %RSP_val.80, !mcsema_real_eip !49
  %_trans_p2i_56 = ptrtoint i8* %_new_gep_55 to i64
  %_trans_p2i_57 = ptrtoint i8* %_load_rsp_ptr_54 to i64
  %_trans_xor_58 = xor i64 %_trans_p2i_56, %_trans_p2i_57
  %43 = xor i64 %_trans_xor_58, 16, !mcsema_real_eip !49
  %44 = and i64 %43, 16, !mcsema_real_eip !49
  %45 = icmp ne i64 %44, 0, !mcsema_real_eip !49
  store i1 %45, i1* %AF, !mcsema_real_eip !49
  %46 = lshr i64 %42, 63, !mcsema_real_eip !49
  %47 = trunc i64 %46 to i1, !mcsema_real_eip !49
  store i1 %47, i1* %SF, !mcsema_real_eip !49
  %_trans_icmp_eq_60 = icmp eq i64 %_trans_p2i_56, 0
  store i1 %_trans_icmp_eq_60, i1* %ZF, !mcsema_real_eip !49
  %_trans_xor_62 = xor i64 %_trans_p2i_57, 16
  %48 = xor i64 %_trans_xor_62, -1, !mcsema_real_eip !49
  %49 = and i64 %48, %_trans_xor_58, !mcsema_real_eip !49
  %50 = lshr i64 %49, 63, !mcsema_real_eip !49
  %51 = and i64 %50, 1, !mcsema_real_eip !49
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !49
  store i1 %52, i1* %OF, !mcsema_real_eip !49
  %_trans_trunc_67 = trunc i64 %_trans_p2i_56 to i8
  %53 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_67), !mcsema_real_eip !49
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !49
  %55 = xor i1 %54, true, !mcsema_real_eip !49
  store i1 %55, i1* %PF, !mcsema_real_eip !49
  %_trans_icmp_ne_69 = icmp ne i64 %_trans_p2i_56, %RSP_val.80
  store i1 %_trans_icmp_ne_69, i1* %CF, !mcsema_real_eip !49
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_
  store i64 %42, i64* %XSP, !mcsema_real_eip !49
  %_allin_new_bt_71 = bitcast i8* %_new_gep_55 to i64*
  %56 = load i64, i64* %_allin_new_bt_71, !mcsema_real_eip !50
  %_new_int2ptr_ = inttoptr i64 %56 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %56, i64* %XBP, !mcsema_real_eip !50
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_55, i64 8
  %57 = add i64 %42, 8, !mcsema_real_eip !50
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_
  store i64 %57, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %58 = add i64 %57, 8, !mcsema_real_eip !51
  %_allin_new_bt_75 = bitcast i8* %_new_gep_72 to i64*
  %59 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !51
  store i64 %59, i64* %XIP, !mcsema_real_eip !51
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %58, i64* %XSP, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %3, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !5
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.8, i32* %5, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %7 to i8*
  %_offset_above_rbp_ = sub i64 %6, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %8, label %9

; <label>:8:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %9

; <label>:9:                                      ; preds = %block_0x0, %8
  %10 = phi i32* [ %7, %block_0x0 ], [ %_address_in_parent_stack_bt_, %8 ]
  %_new_load_ = load i32, i32* %10
  %11 = zext i32 %_new_load_ to i64, !mcsema_real_eip !6
  store i64 %11, i64* %XSI, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %12 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !7
  %_ptr_bt_58 = bitcast i32* %13 to i8*
  %_offset_above_rbp_59 = sub i64 %12, %_local_end_to_int_
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_ptr_bt_58, %_local_stack_end_ptr_
  %_cond2_1_62 = icmp ugt i8* %_ptr_bt_58, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_ptr_bt_58, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond1_n_cond2_66, %_cond4_65
  br i1 %_cond1_n_cond2_cond3_67, label %14, label %15

; <label>:14:                                     ; preds = %9
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i32*
  br label %15

; <label>:15:                                     ; preds = %9, %14
  %16 = phi i32* [ %13, %9 ], [ %_address_in_parent_stack_bt_69, %14 ]
  %_new_load_70 = load i32, i32* %16
  %ESI_val.12 = load i32, i32* %ESI.7, !mcsema_real_eip !7
  %17 = add i32 %ESI_val.12, %_new_load_70, !mcsema_real_eip !7
  %18 = xor i32 %17, %_new_load_70, !mcsema_real_eip !7
  %19 = xor i32 %18, %ESI_val.12, !mcsema_real_eip !7
  %20 = and i32 %19, 16, !mcsema_real_eip !7
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !7
  store i1 %21, i1* %AF, !mcsema_real_eip !7
  %22 = lshr i32 %17, 31, !mcsema_real_eip !7
  %23 = trunc i32 %22 to i1, !mcsema_real_eip !7
  store i1 %23, i1* %SF, !mcsema_real_eip !7
  %24 = icmp eq i32 %17, 0, !mcsema_real_eip !7
  store i1 %24, i1* %ZF, !mcsema_real_eip !7
  %25 = xor i32 %_new_load_70, %ESI_val.12, !mcsema_real_eip !7
  %26 = xor i32 %25, -1, !mcsema_real_eip !7
  %27 = and i32 %26, %18, !mcsema_real_eip !7
  %28 = lshr i32 %27, 31, !mcsema_real_eip !7
  %29 = and i32 %28, 1, !mcsema_real_eip !7
  %30 = trunc i32 %29 to i1, !mcsema_real_eip !7
  store i1 %30, i1* %OF, !mcsema_real_eip !7
  %31 = trunc i32 %17 to i8, !mcsema_real_eip !7
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !7
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !7
  %34 = xor i1 %33, true, !mcsema_real_eip !7
  store i1 %34, i1* %PF, !mcsema_real_eip !7
  %35 = icmp ult i32 %17, %_new_load_70, !mcsema_real_eip !7
  store i1 %35, i1* %CF, !mcsema_real_eip !7
  %36 = zext i32 %17 to i64, !mcsema_real_eip !7
  store i64 %36, i64* %XSI, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %ESI_val.15 = load i32, i32* %ESI.7, !mcsema_real_eip !8
  %37 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !8
  store i32 %ESI_val.15, i32* %38, !mcsema_real_eip !8
  br label %block_0x13, !mcsema_real_eip !9

block_0x13:                                       ; preds = %144, %15
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -4
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !9
  %_ptr_bt_73 = bitcast i32* %40 to i8*
  %_offset_above_rbp_74 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_ptr_bt_73, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_ptr_bt_73, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_ptr_bt_73, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %41, label %42

; <label>:41:                                     ; preds = %block_0x13
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %42

; <label>:42:                                     ; preds = %block_0x13, %41
  %43 = phi i32* [ %40, %block_0x13 ], [ %_address_in_parent_stack_bt_84, %41 ]
  %_new_load_85 = load i32, i32* %43
  store i1 false, i1* %AF, !mcsema_real_eip !9
  %44 = trunc i32 %_new_load_85 to i8, !mcsema_real_eip !9
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !9
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !9
  %47 = xor i1 %46, true, !mcsema_real_eip !9
  store i1 %47, i1* %PF, !mcsema_real_eip !9
  %48 = icmp eq i32 %_new_load_85, 0, !mcsema_real_eip !9
  store i1 %48, i1* %ZF, !mcsema_real_eip !9
  %49 = lshr i32 %_new_load_85, 31, !mcsema_real_eip !9
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !9
  store i1 %50, i1* %SF, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  %51 = icmp eq i1 %50, false, !mcsema_real_eip !10
  %52 = icmp eq i1 %51, false, !mcsema_real_eip !10
  br i1 %52, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !10

block_0x1d:                                       ; preds = %42
  store i64 2, i64* %XAX, !mcsema_real_eip !11
  br i1 %_cond1_n_cond2_cond3_82, label %53, label %54

; <label>:53:                                     ; preds = %block_0x1d
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %54

; <label>:54:                                     ; preds = %block_0x1d, %53
  %55 = phi i32* [ %40, %block_0x1d ], [ %_address_in_parent_stack_bt_99, %53 ]
  %_new_load_100 = load i32, i32* %55
  %56 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !12
  store i64 %56, i64* %XCX, !mcsema_real_eip !12
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %57 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %58, !mcsema_real_eip !13
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !14
  %59 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !14
  store i64 %59, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.24 = load i32, i32* %EAX.19, !mcsema_real_eip !15
  %60 = and i32 %EAX_val.24, -2147483648, !mcsema_real_eip !15
  %61 = icmp eq i32 %60, 0, !mcsema_real_eip !15
  %62 = select i1 %61, i32 0, i32 -1, !mcsema_real_eip !15
  %63 = zext i32 %62 to i64, !mcsema_real_eip !15
  store i64 %63, i64* %XDX, !mcsema_real_eip !15
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -20
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %64 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !16
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !16
  %_ptr_bt_103 = bitcast i32* %65 to i8*
  %_offset_above_rbp_104 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %66, label %67

; <label>:66:                                     ; preds = %54
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %67

; <label>:67:                                     ; preds = %54, %66
  %68 = phi i32* [ %65, %54 ], [ %_address_in_parent_stack_bt_114, %66 ]
  %_new_load_115 = load i32, i32* %68
  %69 = zext i32 %_new_load_115 to i64, !mcsema_real_eip !16
  store i64 %69, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.21, !mcsema_real_eip !17
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !17
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !17
  %70 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !17
  %71 = shl i64 %70, 32, !mcsema_real_eip !17
  %72 = sext i32 %EAX_val.24 to i64, !mcsema_real_eip !17
  %73 = or i64 %71, %72, !mcsema_real_eip !17
  %74 = sext i32 %ECX_val.27 to i64, !mcsema_real_eip !17
  %75 = sdiv i64 %73, %74, !mcsema_real_eip !17
  %76 = srem i64 %73, %74, !mcsema_real_eip !17
  %77 = trunc i64 %76 to i32, !mcsema_real_eip !17
  %78 = trunc i64 %75 to i32, !mcsema_real_eip !17
  %79 = zext i32 %77 to i64, !mcsema_real_eip !17
  store i64 %79, i64* %XDX, !mcsema_real_eip !17
  %80 = zext i32 %78 to i64, !mcsema_real_eip !17
  store i64 %80, i64* %XAX, !mcsema_real_eip !17
  %EDX_val.33 = load i32, i32* %EDX.30, !mcsema_real_eip !18
  store i1 false, i1* %AF, !mcsema_real_eip !18
  %81 = trunc i32 %EDX_val.33 to i8, !mcsema_real_eip !18
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !18
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !18
  %84 = xor i1 %83, true, !mcsema_real_eip !18
  store i1 %84, i1* %PF, !mcsema_real_eip !18
  %85 = icmp eq i32 %EDX_val.33, 0, !mcsema_real_eip !18
  store i1 %85, i1* %ZF, !mcsema_real_eip !18
  %86 = lshr i32 %EDX_val.33, 31, !mcsema_real_eip !18
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !18
  store i1 %87, i1* %SF, !mcsema_real_eip !18
  store i1 false, i1* %CF, !mcsema_real_eip !18
  store i1 false, i1* %OF, !mcsema_real_eip !18
  %88 = icmp eq i1 %85, false, !mcsema_real_eip !19
  br i1 %88, label %block_0x47, label %block_0x39, !mcsema_real_eip !19

block_0x39:                                       ; preds = %67
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %89 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !20
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !20
  %_ptr_bt_118 = bitcast i32* %90 to i8*
  %_offset_above_rbp_119 = sub i64 %89, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_ptr_bt_118, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_ptr_bt_118, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_ptr_bt_118, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %91, label %92

; <label>:91:                                     ; preds = %block_0x39
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i32*
  br label %92

; <label>:92:                                     ; preds = %block_0x39, %91
  %93 = phi i32* [ %90, %block_0x39 ], [ %_address_in_parent_stack_bt_129, %91 ]
  %_new_load_130 = load i32, i32* %93
  %94 = zext i32 %_new_load_130 to i64, !mcsema_real_eip !20
  store i64 %94, i64* %XAX, !mcsema_real_eip !20
  %EAX_val.36 = load i32, i32* %EAX.19, !mcsema_real_eip !21
  %95 = add i32 10, %EAX_val.36, !mcsema_real_eip !21
  %96 = xor i32 %95, %EAX_val.36, !mcsema_real_eip !21
  %97 = xor i32 %96, 10, !mcsema_real_eip !21
  %98 = and i32 %97, 16, !mcsema_real_eip !21
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !21
  store i1 %99, i1* %AF, !mcsema_real_eip !21
  %100 = lshr i32 %95, 31, !mcsema_real_eip !21
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !21
  store i1 %101, i1* %SF, !mcsema_real_eip !21
  %102 = icmp eq i32 %95, 0, !mcsema_real_eip !21
  store i1 %102, i1* %ZF, !mcsema_real_eip !21
  %103 = xor i32 %EAX_val.36, 10, !mcsema_real_eip !21
  %104 = xor i32 %103, -1, !mcsema_real_eip !21
  %105 = and i32 %104, %96, !mcsema_real_eip !21
  %106 = lshr i32 %105, 31, !mcsema_real_eip !21
  %107 = and i32 %106, 1, !mcsema_real_eip !21
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !21
  store i1 %108, i1* %OF, !mcsema_real_eip !21
  %109 = trunc i32 %95 to i8, !mcsema_real_eip !21
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !21
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !21
  %112 = xor i1 %111, true, !mcsema_real_eip !21
  store i1 %112, i1* %PF, !mcsema_real_eip !21
  %113 = icmp ult i32 %95, %EAX_val.36, !mcsema_real_eip !21
  store i1 %113, i1* %CF, !mcsema_real_eip !21
  %114 = zext i32 %95 to i64, !mcsema_real_eip !21
  store i64 %114, i64* %XAX, !mcsema_real_eip !21
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -16
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %EAX_val.39 = load i32, i32* %EAX.19, !mcsema_real_eip !22
  %115 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !22
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !22
  store i32 %EAX_val.39, i32* %116, !mcsema_real_eip !22
  br label %block_0x50, !mcsema_real_eip !23

block_0x47:                                       ; preds = %67
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %117 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !24
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !24
  %_ptr_bt_133 = bitcast i32* %118 to i8*
  %_offset_above_rbp_134 = sub i64 %117, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_ptr_bt_133, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_ptr_bt_133, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_ptr_bt_133, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %119, label %120

; <label>:119:                                    ; preds = %block_0x47
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i32*
  br label %120

; <label>:120:                                    ; preds = %block_0x47, %119
  %121 = phi i32* [ %118, %block_0x47 ], [ %_address_in_parent_stack_bt_144, %119 ]
  %_new_load_145 = load i32, i32* %121
  %122 = zext i32 %_new_load_145 to i64, !mcsema_real_eip !24
  store i64 %122, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.42 = load i32, i32* %EAX.19, !mcsema_real_eip !25
  %123 = sub i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %124 = xor i32 %123, %EAX_val.42, !mcsema_real_eip !25
  %125 = xor i32 %124, 10, !mcsema_real_eip !25
  %126 = and i32 %125, 16, !mcsema_real_eip !25
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !25
  store i1 %127, i1* %AF, !mcsema_real_eip !25
  %128 = trunc i32 %123 to i8, !mcsema_real_eip !25
  %129 = call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !25
  %130 = trunc i8 %129 to i1, !mcsema_real_eip !25
  %131 = xor i1 %130, true, !mcsema_real_eip !25
  store i1 %131, i1* %PF, !mcsema_real_eip !25
  %132 = icmp eq i32 %123, 0, !mcsema_real_eip !25
  store i1 %132, i1* %ZF, !mcsema_real_eip !25
  %133 = lshr i32 %123, 31, !mcsema_real_eip !25
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !25
  store i1 %134, i1* %SF, !mcsema_real_eip !25
  %135 = icmp ult i32 %EAX_val.42, 10, !mcsema_real_eip !25
  store i1 %135, i1* %CF, !mcsema_real_eip !25
  %136 = xor i32 %EAX_val.42, 10, !mcsema_real_eip !25
  %137 = and i32 %136, %124, !mcsema_real_eip !25
  %138 = lshr i32 %137, 31, !mcsema_real_eip !25
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !25
  store i1 %139, i1* %OF, !mcsema_real_eip !25
  %140 = zext i32 %123 to i64, !mcsema_real_eip !25
  store i64 %140, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.19, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %118, !mcsema_real_eip !26
  br label %block_0x50, !mcsema_real_eip !27

block_0x50:                                       ; preds = %120, %92
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -4
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %141 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !27
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !27
  %_ptr_bt_148 = bitcast i32* %142 to i8*
  %_offset_above_rbp_149 = sub i64 %141, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_ptr_bt_148, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_ptr_bt_148, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_ptr_bt_148, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %143, label %144

; <label>:143:                                    ; preds = %block_0x50
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  br label %144

; <label>:144:                                    ; preds = %block_0x50, %143
  %145 = phi i32* [ %142, %block_0x50 ], [ %_address_in_parent_stack_bt_159, %143 ]
  %_new_load_160 = load i32, i32* %145
  %146 = zext i32 %_new_load_160 to i64, !mcsema_real_eip !27
  store i64 %146, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.48 = load i32, i32* %EAX.19, !mcsema_real_eip !28
  %147 = add i32 -1, %EAX_val.48, !mcsema_real_eip !28
  %148 = xor i32 %147, %EAX_val.48, !mcsema_real_eip !28
  %149 = xor i32 %148, -1, !mcsema_real_eip !28
  %150 = and i32 %149, 16, !mcsema_real_eip !28
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !28
  store i1 %151, i1* %AF, !mcsema_real_eip !28
  %152 = lshr i32 %147, 31, !mcsema_real_eip !28
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !28
  store i1 %153, i1* %SF, !mcsema_real_eip !28
  %154 = icmp eq i32 %147, 0, !mcsema_real_eip !28
  store i1 %154, i1* %ZF, !mcsema_real_eip !28
  %155 = xor i32 %EAX_val.48, -1, !mcsema_real_eip !28
  %156 = and i32 %EAX_val.48, %148, !mcsema_real_eip !28
  %157 = lshr i32 %156, 31, !mcsema_real_eip !28
  %158 = and i32 %157, 1, !mcsema_real_eip !28
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !28
  store i1 %159, i1* %OF, !mcsema_real_eip !28
  %160 = trunc i32 %147 to i8, !mcsema_real_eip !28
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !28
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !28
  %163 = xor i1 %162, true, !mcsema_real_eip !28
  store i1 %163, i1* %PF, !mcsema_real_eip !28
  %164 = icmp ult i32 %147, %EAX_val.48, !mcsema_real_eip !28
  store i1 %164, i1* %CF, !mcsema_real_eip !28
  %165 = zext i32 %147 to i64, !mcsema_real_eip !28
  store i64 %165, i64* %XAX, !mcsema_real_eip !28
  %EAX_val.51 = load i32, i32* %EAX.19, !mcsema_real_eip !29
  store i32 %EAX_val.51, i32* %142, !mcsema_real_eip !29
  br label %block_0x13, !mcsema_real_eip !30

block_0x5e:                                       ; preds = %42
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -16
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %166 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !31
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !31
  %_ptr_bt_163 = bitcast i32* %167 to i8*
  %_offset_above_rbp_164 = sub i64 %166, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_ptr_bt_163, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_ptr_bt_163, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_ptr_bt_163, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %168, label %169

; <label>:168:                                    ; preds = %block_0x5e
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_165 to i32*
  br label %169

; <label>:169:                                    ; preds = %block_0x5e, %168
  %170 = phi i32* [ %167, %block_0x5e ], [ %_address_in_parent_stack_bt_174, %168 ]
  %_new_load_175 = load i32, i32* %170
  %171 = zext i32 %_new_load_175 to i64, !mcsema_real_eip !31
  store i64 %171, i64* %XAX, !mcsema_real_eip !31
  %_load_rsp_ptr_50 = load i8*, i8** %_RSP_ptr_
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !32
  %_allin_new_bt_51 = bitcast i8* %_load_rsp_ptr_50 to i64*
  %_ptr_to_int_176 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_load_rsp_ptr_50, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_load_rsp_ptr_50, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_load_rsp_ptr_50, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %172, label %173

; <label>:172:                                    ; preds = %169
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i64*
  br label %173

; <label>:173:                                    ; preds = %169, %172
  %174 = phi i64* [ %_allin_new_bt_51, %169 ], [ %_address_in_parent_stack_bt_189, %172 ]
  %_new_load_190 = load i64, i64* %174
  %_new_int2ptr_ = inttoptr i64 %_new_load_190 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_190, i64* %XBP, !mcsema_real_eip !32
  %_new_gep_52 = getelementptr i8, i8* %_load_rsp_ptr_50, i64 8
  %175 = add i64 %RSP_val.53, 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %175, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_54 = getelementptr i8, i8* %_new_gep_52, i64 8
  %176 = add i64 %175, 8, !mcsema_real_eip !33
  %_allin_new_bt_55 = bitcast i8* %_new_gep_52 to i64*
  %_ptr_to_int_191 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_191, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %177, label %178

; <label>:177:                                    ; preds = %173
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i64*
  br label %178

; <label>:178:                                    ; preds = %173, %177
  %179 = phi i64* [ %_allin_new_bt_55, %173 ], [ %_address_in_parent_stack_bt_204, %177 ]
  %_new_load_205 = load i64, i64* %179
  store i64 %_new_load_205, i64* %XIP, !mcsema_real_eip !33
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %176, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !34
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !34
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !34
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !34
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !34
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !34
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !34
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !34
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !34
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !34
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !34
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !34
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !34
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !34
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !34
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !34
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !34
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !34
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !34
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !34
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !34
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !34
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.58, 16, !mcsema_real_eip !36
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !36
  %4 = and i64 %3, 16, !mcsema_real_eip !36
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !36
  store i1 %5, i1* %AF, !mcsema_real_eip !36
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !36
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !36
  %8 = xor i1 %7, true, !mcsema_real_eip !36
  store i1 %8, i1* %PF, !mcsema_real_eip !36
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !36
  %9 = lshr i64 %2, 63, !mcsema_real_eip !36
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !36
  store i1 %10, i1* %SF, !mcsema_real_eip !36
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !36
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !36
  %12 = lshr i64 %11, 63, !mcsema_real_eip !36
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !36
  store i1 %13, i1* %OF, !mcsema_real_eip !36
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !39
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !39
  store i32 0, i32* %15, !mcsema_real_eip !39
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !40
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !40
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !40
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_76)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !41
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !42
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %18, !mcsema_real_eip !42
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !43
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !43
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %20 to i8*
  %_offset_above_rbp_ = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %21, label %22

; <label>:21:                                     ; preds = %block_0x70
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %22

; <label>:22:                                     ; preds = %block_0x70, %21
  %23 = phi i32* [ %20, %block_0x70 ], [ %_address_in_parent_stack_bt_, %21 ]
  %_new_load_ = load i32, i32* %23
  %24 = zext i32 %_new_load_ to i64, !mcsema_real_eip !43
  store i64 %24, i64* %XSI, !mcsema_real_eip !43
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.65, !mcsema_real_eip !44
  %RDI_val.66 = load i64, i64* %XDI, !mcsema_real_eip !45
  %RDX_val.68 = load i64, i64* %XDX, !mcsema_real_eip !45
  %RCX_val.69 = load i64, i64* %XCX, !mcsema_real_eip !45
  %R8_val.70 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9_val.71 = load i64, i64* %R9, !mcsema_real_eip !45
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %25, label %26

; <label>:25:                                     ; preds = %22
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %26

; <label>:26:                                     ; preds = %22, %25
  %27 = phi i64* [ %_allin_new_bt_26, %22 ], [ %_address_in_parent_stack_bt_93, %25 ]
  %_new_load_94 = load i64, i64* %27
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %28, label %29

; <label>:28:                                     ; preds = %26
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i64* [ %_allin_new_bt_28, %26 ], [ %_address_in_parent_stack_bt_108, %28 ]
  %_new_load_109 = load i64, i64* %30
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_110 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %31, label %32

; <label>:31:                                     ; preds = %29
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %32

; <label>:32:                                     ; preds = %29, %31
  %33 = phi i64* [ %_allin_new_bt_30, %29 ], [ %_address_in_parent_stack_bt_123, %31 ]
  %_new_load_124 = load i64, i64* %33
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_125 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_128 = sub i64 %_ptr_to_int_125, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %34, label %35

; <label>:34:                                     ; preds = %32
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i64*
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = phi i64* [ %_allin_new_bt_32, %32 ], [ %_address_in_parent_stack_bt_138, %34 ]
  %_new_load_139 = load i64, i64* %36
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_140 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_143 = sub i64 %_ptr_to_int_140, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  br i1 %_cond1_n_cond2_cond3_151, label %37, label %38

; <label>:37:                                     ; preds = %35
  %_address_in_parent_stack_bt_153 = bitcast i8* %_pot_address_in_parent_stack_144 to i64*
  br label %38

; <label>:38:                                     ; preds = %35, %37
  %39 = phi i64* [ %_allin_new_bt_34, %35 ], [ %_address_in_parent_stack_bt_153, %37 ]
  %_new_load_154 = load i64, i64* %39
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_155 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_158 = sub i64 %_ptr_to_int_155, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %40, label %41

; <label>:40:                                     ; preds = %38
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i64*
  br label %41

; <label>:41:                                     ; preds = %38, %40
  %42 = phi i64* [ %_allin_new_bt_36, %38 ], [ %_address_in_parent_stack_bt_168, %40 ]
  %_new_load_169 = load i64, i64* %42
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_170 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  br i1 %_cond1_n_cond2_cond3_181, label %43, label %44

; <label>:43:                                     ; preds = %41
  %_address_in_parent_stack_bt_183 = bitcast i8* %_pot_address_in_parent_stack_174 to i64*
  br label %44

; <label>:44:                                     ; preds = %41, %43
  %45 = phi i64* [ %_allin_new_bt_38, %41 ], [ %_address_in_parent_stack_bt_183, %43 ]
  %_new_load_184 = load i64, i64* %45
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_185 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_188 = sub i64 %_ptr_to_int_185, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  br i1 %_cond1_n_cond2_cond3_196, label %46, label %47

; <label>:46:                                     ; preds = %44
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i64*
  br label %47

; <label>:47:                                     ; preds = %44, %46
  %48 = phi i64* [ %_allin_new_bt_40, %44 ], [ %_address_in_parent_stack_bt_198, %46 ]
  %_new_load_199 = load i64, i64* %48
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_200 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  br i1 %_cond1_n_cond2_cond3_211, label %49, label %50

; <label>:49:                                     ; preds = %47
  %_address_in_parent_stack_bt_213 = bitcast i8* %_pot_address_in_parent_stack_204 to i64*
  br label %50

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i64* [ %_allin_new_bt_42, %47 ], [ %_address_in_parent_stack_bt_213, %49 ]
  %_new_load_214 = load i64, i64* %51
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_215 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_218 = sub i64 %_ptr_to_int_215, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  br i1 %_cond1_n_cond2_cond3_226, label %52, label %53

; <label>:52:                                     ; preds = %50
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i64*
  br label %53

; <label>:53:                                     ; preds = %50, %52
  %54 = phi i64* [ %_allin_new_bt_44, %50 ], [ %_address_in_parent_stack_bt_228, %52 ]
  %_new_load_229 = load i64, i64* %54
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !45
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %55 = sub i64 %RSP_val.73, 8, !mcsema_real_eip !45
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, !mcsema_real_eip !45
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !45
  %56 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %24, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %_new_load_94, i64 %_new_load_109, i64 %_new_load_124, i64 %_new_load_139, i64 %_new_load_154, i64 %_new_load_169, i64 %_new_load_184, i64 %_new_load_199, i64 %_new_load_214, i64 %_new_load_229)
  %_rsp_fix_78 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_79 = getelementptr i8, i8* %_rsp_fix_78, i64 8
  store i8* %_gep_fix_79, i8** %_RSP_ptr_
  store i64 %56, i64* %XAX, !mcsema_real_eip !45
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %57 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !46
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !46
  %_ptr_bt_232 = bitcast i32* %58 to i8*
  %_offset_above_rbp_233 = sub i64 %57, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_ptr_bt_232, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_ptr_bt_232, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_ptr_bt_232, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  br i1 %_cond1_n_cond2_cond3_241, label %59, label %60

; <label>:59:                                     ; preds = %53
  %_address_in_parent_stack_bt_243 = bitcast i8* %_pot_address_in_parent_stack_234 to i32*
  br label %60

; <label>:60:                                     ; preds = %53, %59
  %61 = phi i32* [ %58, %53 ], [ %_address_in_parent_stack_bt_243, %59 ]
  %_new_load_244 = load i32, i32* %61
  %62 = zext i32 %_new_load_244 to i64, !mcsema_real_eip !46
  store i64 %62, i64* %XSI, !mcsema_real_eip !46
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -12
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %EAX_val.77 = load i32, i32* %EAX.62, !mcsema_real_eip !47
  %63 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !47
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.77, i32* %64, !mcsema_real_eip !47
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !48
  %ESI_val.79 = load i32, i32* %ESI.78, !mcsema_real_eip !48
  %65 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !48
  store i64 %65, i64* %XAX, !mcsema_real_eip !48
  %_load_rsp_ptr_54 = load i8*, i8** %_RSP_ptr_
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !49
  %_new_gep_55 = getelementptr i8, i8* %_load_rsp_ptr_54, i64 16
  %66 = add i64 16, %RSP_val.80, !mcsema_real_eip !49
  %_trans_p2i_56 = ptrtoint i8* %_new_gep_55 to i64
  %_trans_p2i_57 = ptrtoint i8* %_load_rsp_ptr_54 to i64
  %_trans_xor_58 = xor i64 %_trans_p2i_56, %_trans_p2i_57
  %67 = xor i64 %_trans_xor_58, 16, !mcsema_real_eip !49
  %68 = and i64 %67, 16, !mcsema_real_eip !49
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !49
  store i1 %69, i1* %AF, !mcsema_real_eip !49
  %70 = lshr i64 %66, 63, !mcsema_real_eip !49
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !49
  store i1 %71, i1* %SF, !mcsema_real_eip !49
  %_trans_icmp_eq_60 = icmp eq i64 %_trans_p2i_56, 0
  store i1 %_trans_icmp_eq_60, i1* %ZF, !mcsema_real_eip !49
  %_trans_xor_62 = xor i64 %_trans_p2i_57, 16
  %72 = xor i64 %_trans_xor_62, -1, !mcsema_real_eip !49
  %73 = and i64 %72, %_trans_xor_58, !mcsema_real_eip !49
  %74 = lshr i64 %73, 63, !mcsema_real_eip !49
  %75 = and i64 %74, 1, !mcsema_real_eip !49
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !49
  store i1 %76, i1* %OF, !mcsema_real_eip !49
  %_trans_trunc_67 = trunc i64 %_trans_p2i_56 to i8
  %77 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_67), !mcsema_real_eip !49
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !49
  %79 = xor i1 %78, true, !mcsema_real_eip !49
  store i1 %79, i1* %PF, !mcsema_real_eip !49
  %_trans_icmp_ne_69 = icmp ne i64 %_trans_p2i_56, %RSP_val.80
  store i1 %_trans_icmp_ne_69, i1* %CF, !mcsema_real_eip !49
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_
  store i64 %66, i64* %XSP, !mcsema_real_eip !49
  %_allin_new_bt_71 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_245 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_248 = sub i64 %_ptr_to_int_245, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  br i1 %_cond1_n_cond2_cond3_256, label %80, label %81

; <label>:80:                                     ; preds = %60
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i64*
  br label %81

; <label>:81:                                     ; preds = %60, %80
  %82 = phi i64* [ %_allin_new_bt_71, %60 ], [ %_address_in_parent_stack_bt_258, %80 ]
  %_new_load_259 = load i64, i64* %82
  %_new_int2ptr_ = inttoptr i64 %_new_load_259 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_259, i64* %XBP, !mcsema_real_eip !50
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_55, i64 8
  %83 = add i64 %66, 8, !mcsema_real_eip !50
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_
  store i64 %83, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %84 = add i64 %83, 8, !mcsema_real_eip !51
  %_allin_new_bt_75 = bitcast i8* %_new_gep_72 to i64*
  %_ptr_to_int_260 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  br i1 %_cond1_n_cond2_cond3_271, label %85, label %86

; <label>:85:                                     ; preds = %81
  %_address_in_parent_stack_bt_273 = bitcast i8* %_pot_address_in_parent_stack_264 to i64*
  br label %86

; <label>:86:                                     ; preds = %81, %85
  %87 = phi i64* [ %_allin_new_bt_75, %81 ], [ %_address_in_parent_stack_bt_273, %85 ]
  %_new_load_274 = load i64, i64* %87
  store i64 %_new_load_274, i64* %XIP, !mcsema_real_eip !51
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %84, i64* %XSP, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

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
!5 = !{i64 7}
!6 = !{i64 10}
!7 = !{i64 13}
!8 = !{i64 16}
!9 = !{i64 19}
!10 = !{i64 23}
!11 = !{i64 29}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 40}
!15 = !{i64 42}
!16 = !{i64 43}
!17 = !{i64 46}
!18 = !{i64 48}
!19 = !{i64 51}
!20 = !{i64 57}
!21 = !{i64 60}
!22 = !{i64 63}
!23 = !{i64 66}
!24 = !{i64 71}
!25 = !{i64 74}
!26 = !{i64 77}
!27 = !{i64 80}
!28 = !{i64 83}
!29 = !{i64 86}
!30 = !{i64 89}
!31 = !{i64 94}
!32 = !{i64 97}
!33 = !{i64 98}
!34 = !{i64 112}
!35 = !{i64 113}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 125}
!39 = !{i64 130}
!40 = !{i64 137}
!41 = !{i64 142}
!42 = !{i64 152}
!43 = !{i64 155}
!44 = !{i64 158}
!45 = !{i64 160}
!46 = !{i64 165}
!47 = !{i64 168}
!48 = !{i64 171}
!49 = !{i64 173}
!50 = !{i64 177}
!51 = !{i64 178}
