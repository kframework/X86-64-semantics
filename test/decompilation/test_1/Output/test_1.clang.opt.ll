; ModuleID = 'Output/test_1.clang.opt.bc'
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
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !34
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !34
  %1 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !34
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !34
  store i64 %RBP_val.55, i64* %2, !mcsema_real_eip !34
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %3 = sub i64 %1, 16, !mcsema_real_eip !36
  %4 = xor i64 %3, %1, !mcsema_real_eip !36
  %5 = xor i64 %4, 16, !mcsema_real_eip !36
  %6 = and i64 %5, 16, !mcsema_real_eip !36
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !36
  store i1 %7, i1* %AF, !mcsema_real_eip !36
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !36
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !36
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !36
  %11 = xor i1 %10, true, !mcsema_real_eip !36
  store i1 %11, i1* %PF, !mcsema_real_eip !36
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !36
  store i1 %12, i1* %ZF, !mcsema_real_eip !36
  %13 = lshr i64 %3, 63, !mcsema_real_eip !36
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !36
  store i1 %14, i1* %SF, !mcsema_real_eip !36
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !36
  store i1 %15, i1* %CF, !mcsema_real_eip !36
  %16 = xor i64 %1, 16, !mcsema_real_eip !36
  %17 = and i64 %16, %4, !mcsema_real_eip !36
  %18 = lshr i64 %17, 63, !mcsema_real_eip !36
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !36
  store i1 %19, i1* %OF, !mcsema_real_eip !36
  store i64 %3, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  %20 = add i64 %1, -4, !mcsema_real_eip !39
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !39
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !39
  store i32 0, i32* %22, !mcsema_real_eip !39
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !40
  %23 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !40
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !40
  store i64 %23, i64* %XSP, !mcsema_real_eip !40
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !40
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %25 = add i64 %RBP_val.61, -8, !mcsema_real_eip !42
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !42
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %27, !mcsema_real_eip !42
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %28 = add i64 %RBP_val.64, -8, !mcsema_real_eip !43
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !43
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !43
  %31 = load i32, i32* %30, !mcsema_real_eip !43
  %32 = zext i32 %31 to i64, !mcsema_real_eip !43
  store i64 %32, i64* %XSI, !mcsema_real_eip !43
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.65, !mcsema_real_eip !44
  %RDI_val.66 = load i64, i64* %XDI, !mcsema_real_eip !45
  %RDX_val.68 = load i64, i64* %XDX, !mcsema_real_eip !45
  %RCX_val.69 = load i64, i64* %XCX, !mcsema_real_eip !45
  %R8_val.70 = load i64, i64* %R8, !mcsema_real_eip !45
  %R9_val.71 = load i64, i64* %R9, !mcsema_real_eip !45
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !45
  %33 = inttoptr i64 %RSP_val.72 to i64*, !mcsema_real_eip !45
  %34 = load i64, i64* %33, !mcsema_real_eip !45
  %35 = add i64 %RSP_val.72, 8, !mcsema_real_eip !45
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !45
  %37 = load i64, i64* %36, !mcsema_real_eip !45
  %38 = add i64 %35, 8, !mcsema_real_eip !45
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !45
  %40 = load i64, i64* %39, !mcsema_real_eip !45
  %41 = add i64 %38, 8, !mcsema_real_eip !45
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !45
  %43 = load i64, i64* %42, !mcsema_real_eip !45
  %44 = add i64 %41, 8, !mcsema_real_eip !45
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !45
  %46 = load i64, i64* %45, !mcsema_real_eip !45
  %47 = add i64 %44, 8, !mcsema_real_eip !45
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !45
  %49 = load i64, i64* %48, !mcsema_real_eip !45
  %50 = add i64 %47, 8, !mcsema_real_eip !45
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !45
  %52 = load i64, i64* %51, !mcsema_real_eip !45
  %53 = add i64 %50, 8, !mcsema_real_eip !45
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !45
  %55 = load i64, i64* %54, !mcsema_real_eip !45
  %56 = add i64 %53, 8, !mcsema_real_eip !45
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !45
  %58 = load i64, i64* %57, !mcsema_real_eip !45
  %59 = add i64 %56, 8, !mcsema_real_eip !45
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !45
  %61 = load i64, i64* %60, !mcsema_real_eip !45
  %62 = sub i64 %RSP_val.72, 8, !mcsema_real_eip !45
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !45
  store i64 -2415393069852865332, i64* %63, !mcsema_real_eip !45
  store i64 %62, i64* %XSP, !mcsema_real_eip !45
  %64 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %32, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58, i64 %61), !mcsema_real_eip !45
  store i64 %64, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !46
  %65 = add i64 %RBP_val.74, -8, !mcsema_real_eip !46
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !46
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !46
  %68 = load i32, i32* %67, !mcsema_real_eip !46
  %69 = zext i32 %68 to i64, !mcsema_real_eip !46
  store i64 %69, i64* %XSI, !mcsema_real_eip !46
  %70 = add i64 %RBP_val.74, -12, !mcsema_real_eip !47
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !47
  %EAX_val.77 = load i32, i32* %EAX.62, !mcsema_real_eip !47
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.77, i32* %72, !mcsema_real_eip !47
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !48
  %ESI_val.79 = load i32, i32* %ESI.78, !mcsema_real_eip !48
  %73 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !48
  store i64 %73, i64* %XAX, !mcsema_real_eip !48
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !49
  %74 = add i64 16, %RSP_val.80, !mcsema_real_eip !49
  %75 = xor i64 %74, %RSP_val.80, !mcsema_real_eip !49
  %76 = xor i64 %75, 16, !mcsema_real_eip !49
  %77 = and i64 %76, 16, !mcsema_real_eip !49
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !49
  store i1 %78, i1* %AF, !mcsema_real_eip !49
  %79 = lshr i64 %74, 63, !mcsema_real_eip !49
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !49
  store i1 %80, i1* %SF, !mcsema_real_eip !49
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !49
  store i1 %81, i1* %ZF, !mcsema_real_eip !49
  %82 = xor i64 %RSP_val.80, 16, !mcsema_real_eip !49
  %83 = xor i64 %82, -1, !mcsema_real_eip !49
  %84 = and i64 %83, %75, !mcsema_real_eip !49
  %85 = lshr i64 %84, 63, !mcsema_real_eip !49
  %86 = and i64 %85, 1, !mcsema_real_eip !49
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !49
  store i1 %87, i1* %OF, !mcsema_real_eip !49
  %88 = trunc i64 %74 to i8, !mcsema_real_eip !49
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !49
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !49
  %91 = xor i1 %90, true, !mcsema_real_eip !49
  store i1 %91, i1* %PF, !mcsema_real_eip !49
  %92 = icmp ult i64 %74, %RSP_val.80, !mcsema_real_eip !49
  store i1 %92, i1* %CF, !mcsema_real_eip !49
  store i64 %74, i64* %XSP, !mcsema_real_eip !49
  %93 = inttoptr i64 %74 to i64*, !mcsema_real_eip !50
  %94 = load i64, i64* %93, !mcsema_real_eip !50
  store i64 %94, i64* %XBP, !mcsema_real_eip !50
  %95 = add i64 %74, 8, !mcsema_real_eip !50
  store i64 %95, i64* %XSP, !mcsema_real_eip !50
  %96 = add i64 %95, 8, !mcsema_real_eip !51
  %97 = inttoptr i64 %95 to i64*, !mcsema_real_eip !51
  %98 = load i64, i64* %97, !mcsema_real_eip !51
  store i64 %98, i64* %XIP, !mcsema_real_eip !51
  store i64 %96, i64* %XSP, !mcsema_real_eip !51
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
