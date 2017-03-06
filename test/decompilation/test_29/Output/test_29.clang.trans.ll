; ModuleID = 'Output/test_29.clang.trans.bc'
source_filename = "Output/test_29.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64
@data_0x100 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"^\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sub i64 %1, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 32, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -4, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.7, -16, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %RSI_val.8 = load i64, i64* %XSI, !mcsema_real_eip !6
  store i64 %RSI_val.8, i64* %24, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %25 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !7
  store i32 3, i32* %27, !mcsema_real_eip !7
  br label %block_0x16, !mcsema_real_eip !8

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  %31 = load i32, i32* %30, !mcsema_real_eip !8
  %32 = zext i32 %31 to i64, !mcsema_real_eip !8
  store i64 %32, i64* %XAX, !mcsema_real_eip !8
  %33 = add i64 %RBP_val.10, -4, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !9
  %36 = load i32, i32* %35, !mcsema_real_eip !9
  %37 = sub i32 %EAX_val.13, %36, !mcsema_real_eip !9
  %38 = xor i32 %37, %EAX_val.13, !mcsema_real_eip !9
  %39 = xor i32 %38, %36, !mcsema_real_eip !9
  %40 = and i32 %39, 16, !mcsema_real_eip !9
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !9
  store i1 %41, i1* %AF, !mcsema_real_eip !9
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !9
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !9
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !9
  %45 = xor i1 %44, true, !mcsema_real_eip !9
  store i1 %45, i1* %PF, !mcsema_real_eip !9
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !9
  store i1 %46, i1* %ZF, !mcsema_real_eip !9
  %47 = lshr i32 %37, 31, !mcsema_real_eip !9
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !9
  store i1 %48, i1* %SF, !mcsema_real_eip !9
  %49 = icmp ult i32 %EAX_val.13, %36, !mcsema_real_eip !9
  store i1 %49, i1* %CF, !mcsema_real_eip !9
  %50 = xor i32 %EAX_val.13, %36, !mcsema_real_eip !9
  %51 = and i32 %50, %38, !mcsema_real_eip !9
  %52 = lshr i32 %51, 31, !mcsema_real_eip !9
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !9
  store i1 %53, i1* %OF, !mcsema_real_eip !9
  %54 = or i1 %49, %46, !mcsema_real_eip !10
  br i1 %54, label %block_0x4d, label %block_0x22, !mcsema_real_eip !10

block_0x22:                                       ; preds = %block_0x16
  %55 = add i64 %RBP_val.10, -16, !mcsema_real_eip !11
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !11
  %57 = load i64, i64* %56, !mcsema_real_eip !11
  store i64 %57, i64* %XAX, !mcsema_real_eip !11
  %58 = load i32, i32* %30, !mcsema_real_eip !12
  %59 = zext i32 %58 to i64, !mcsema_real_eip !12
  store i64 %59, i64* %XCX, !mcsema_real_eip !12
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !13
  %60 = sub i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %61 = xor i32 %60, %ECX_val.17, !mcsema_real_eip !13
  %62 = xor i32 %61, 1, !mcsema_real_eip !13
  %63 = and i32 %62, 16, !mcsema_real_eip !13
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !13
  store i1 %64, i1* %AF, !mcsema_real_eip !13
  %65 = trunc i32 %60 to i8, !mcsema_real_eip !13
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !13
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !13
  %68 = xor i1 %67, true, !mcsema_real_eip !13
  store i1 %68, i1* %PF, !mcsema_real_eip !13
  %69 = icmp eq i32 %60, 0, !mcsema_real_eip !13
  store i1 %69, i1* %ZF, !mcsema_real_eip !13
  %70 = lshr i32 %60, 31, !mcsema_real_eip !13
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !13
  store i1 %71, i1* %SF, !mcsema_real_eip !13
  %72 = icmp ult i32 %ECX_val.17, 1, !mcsema_real_eip !13
  store i1 %72, i1* %CF, !mcsema_real_eip !13
  %73 = xor i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %74 = and i32 %73, %61, !mcsema_real_eip !13
  %75 = lshr i32 %74, 31, !mcsema_real_eip !13
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !13
  store i1 %76, i1* %OF, !mcsema_real_eip !13
  %77 = zext i32 %60 to i64, !mcsema_real_eip !13
  store i64 %77, i64* %XCX, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.16, !mcsema_real_eip !14
  %78 = zext i32 %ECX_val.19 to i64, !mcsema_real_eip !14
  store i64 %78, i64* %XCX, !mcsema_real_eip !14
  %ECX_val.21 = load i32, i32* %ECX.16, !mcsema_real_eip !15
  %79 = zext i32 %ECX_val.21 to i64, !mcsema_real_eip !15
  store i64 %79, i64* %XDX, !mcsema_real_eip !15
  %80 = mul i64 %79, 4, !mcsema_real_eip !16
  %81 = add i64 %57, %80, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !16
  %84 = load i32, i32* %83, !mcsema_real_eip !16
  %85 = zext i32 %84 to i64, !mcsema_real_eip !16
  store i64 %85, i64* %XCX, !mcsema_real_eip !16
  %86 = load i64, i64* %56, !mcsema_real_eip !17
  store i64 %86, i64* %XAX, !mcsema_real_eip !17
  %87 = load i32, i32* %30, !mcsema_real_eip !18
  %88 = zext i32 %87 to i64, !mcsema_real_eip !18
  store i64 %88, i64* %XSI, !mcsema_real_eip !18
  %ESI.26 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.27 = load i32, i32* %ESI.26, !mcsema_real_eip !19
  %89 = zext i32 %ESI_val.27 to i64, !mcsema_real_eip !19
  store i64 %89, i64* %XDX, !mcsema_real_eip !19
  %90 = mul i64 %89, 4, !mcsema_real_eip !20
  %91 = add i64 %86, %90, !mcsema_real_eip !20
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !20
  %ECX_val.31 = load i32, i32* %ECX.16, !mcsema_real_eip !20
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.31, i32* %93, !mcsema_real_eip !20
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !21
  %94 = add i64 %RBP_val.32, -20, !mcsema_real_eip !21
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !21
  %96 = inttoptr i64 %94 to i32*, !mcsema_real_eip !21
  %97 = load i32, i32* %96, !mcsema_real_eip !21
  %98 = zext i32 %97 to i64, !mcsema_real_eip !21
  store i64 %98, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.34 = load i32, i32* %EAX.12, !mcsema_real_eip !22
  %99 = add i32 -1, %EAX_val.34, !mcsema_real_eip !22
  %100 = xor i32 %99, %EAX_val.34, !mcsema_real_eip !22
  %101 = xor i32 %100, -1, !mcsema_real_eip !22
  %102 = and i32 %101, 16, !mcsema_real_eip !22
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !22
  store i1 %103, i1* %AF, !mcsema_real_eip !22
  %104 = lshr i32 %99, 31, !mcsema_real_eip !22
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !22
  store i1 %105, i1* %SF, !mcsema_real_eip !22
  %106 = icmp eq i32 %99, 0, !mcsema_real_eip !22
  store i1 %106, i1* %ZF, !mcsema_real_eip !22
  %107 = xor i32 %EAX_val.34, -1, !mcsema_real_eip !22
  %108 = and i32 %EAX_val.34, %100, !mcsema_real_eip !22
  %109 = lshr i32 %108, 31, !mcsema_real_eip !22
  %110 = and i32 %109, 1, !mcsema_real_eip !22
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !22
  store i1 %111, i1* %OF, !mcsema_real_eip !22
  %112 = trunc i32 %99 to i8, !mcsema_real_eip !22
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !22
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !22
  %115 = xor i1 %114, true, !mcsema_real_eip !22
  store i1 %115, i1* %PF, !mcsema_real_eip !22
  %116 = icmp ult i32 %99, %EAX_val.34, !mcsema_real_eip !22
  store i1 %116, i1* %CF, !mcsema_real_eip !22
  %117 = zext i32 %99 to i64, !mcsema_real_eip !22
  store i64 %117, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.37 = load i32, i32* %EAX.12, !mcsema_real_eip !23
  store i32 %EAX_val.37, i32* %96, !mcsema_real_eip !23
  br label %block_0x16, !mcsema_real_eip !24

block_0x4d:                                       ; preds = %block_0x16
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !25
  %118 = load i32, i32* %35, !mcsema_real_eip !26
  %119 = zext i32 %118 to i64, !mcsema_real_eip !26
  store i64 %119, i64* %XSI, !mcsema_real_eip !26
  %120 = add i64 %RBP_val.10, -16, !mcsema_real_eip !27
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !27
  %122 = load i64, i64* %121, !mcsema_real_eip !27
  store i64 %122, i64* %XAX, !mcsema_real_eip !27
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !28
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !28
  %125 = load i32, i32* %124, !mcsema_real_eip !28
  %126 = zext i32 %125 to i64, !mcsema_real_eip !28
  store i64 %126, i64* %XDX, !mcsema_real_eip !28
  %127 = load i64, i64* %121, !mcsema_real_eip !29
  store i64 %127, i64* %XAX, !mcsema_real_eip !29
  %128 = add i64 %127, 4, !mcsema_real_eip !30
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !30
  %130 = inttoptr i64 %128 to i32*, !mcsema_real_eip !30
  %131 = load i32, i32* %130, !mcsema_real_eip !30
  %132 = zext i32 %131 to i64, !mcsema_real_eip !30
  store i64 %132, i64* %XCX, !mcsema_real_eip !30
  %133 = load i64, i64* %121, !mcsema_real_eip !31
  store i64 %133, i64* %XAX, !mcsema_real_eip !31
  %134 = add i64 %133, 8, !mcsema_real_eip !32
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !32
  %136 = inttoptr i64 %134 to i32*, !mcsema_real_eip !32
  %137 = load i32, i32* %136, !mcsema_real_eip !32
  %138 = zext i32 %137 to i64, !mcsema_real_eip !32
  store i64 %138, i64* %R8, !mcsema_real_eip !32
  %139 = load i64, i64* %121, !mcsema_real_eip !33
  store i64 %139, i64* %XAX, !mcsema_real_eip !33
  %140 = add i64 %139, 12, !mcsema_real_eip !34
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !34
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !34
  %143 = load i32, i32* %142, !mcsema_real_eip !34
  %144 = zext i32 %143 to i64, !mcsema_real_eip !34
  store i64 %144, i64* %R9, !mcsema_real_eip !34
  %AL.47 = bitcast i64* %XAX to i8*, !mcsema_real_eip !35
  store i8 0, i8* %AL.47, !mcsema_real_eip !35
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !36
  %145 = inttoptr i64 %RSP_val.54 to i64*, !mcsema_real_eip !36
  %146 = load i64, i64* %145, !mcsema_real_eip !36
  %147 = add i64 %RSP_val.54, 8, !mcsema_real_eip !36
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !36
  %149 = load i64, i64* %148, !mcsema_real_eip !36
  %150 = add i64 %147, 8, !mcsema_real_eip !36
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !36
  %152 = load i64, i64* %151, !mcsema_real_eip !36
  %153 = add i64 %150, 8, !mcsema_real_eip !36
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !36
  %155 = load i64, i64* %154, !mcsema_real_eip !36
  %156 = add i64 %153, 8, !mcsema_real_eip !36
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !36
  %158 = load i64, i64* %157, !mcsema_real_eip !36
  %159 = add i64 %156, 8, !mcsema_real_eip !36
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !36
  %161 = load i64, i64* %160, !mcsema_real_eip !36
  %162 = add i64 %159, 8, !mcsema_real_eip !36
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !36
  %164 = load i64, i64* %163, !mcsema_real_eip !36
  %165 = add i64 %162, 8, !mcsema_real_eip !36
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !36
  %167 = load i64, i64* %166, !mcsema_real_eip !36
  %168 = add i64 %165, 8, !mcsema_real_eip !36
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !36
  %170 = load i64, i64* %169, !mcsema_real_eip !36
  %171 = add i64 %168, 8, !mcsema_real_eip !36
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !36
  %173 = load i64, i64* %172, !mcsema_real_eip !36
  %174 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !36
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !36
  store i64 -2415393069852865332, i64* %175, !mcsema_real_eip !36
  store i64 %174, i64* %XSP, !mcsema_real_eip !36
  %176 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %119, i64 %126, i64 %132, i64 %138, i64 %144, i64 %146, i64 %149, i64 %152, i64 %155, i64 %158, i64 %161, i64 %164, i64 %167, i64 %170, i64 %173), !mcsema_real_eip !36
  store i64 %176, i64* %XAX, !mcsema_real_eip !36
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !37
  %177 = add i64 %RBP_val.56, -24, !mcsema_real_eip !37
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !37
  %EAX_val.58 = load i32, i32* %EAX.12, !mcsema_real_eip !37
  %179 = inttoptr i64 %177 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.58, i32* %179, !mcsema_real_eip !37
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %180 = add i64 32, %RSP_val.59, !mcsema_real_eip !38
  %181 = xor i64 %180, %RSP_val.59, !mcsema_real_eip !38
  %182 = xor i64 %181, 32, !mcsema_real_eip !38
  %183 = and i64 %182, 16, !mcsema_real_eip !38
  %184 = icmp ne i64 %183, 0, !mcsema_real_eip !38
  store i1 %184, i1* %AF, !mcsema_real_eip !38
  %185 = lshr i64 %180, 63, !mcsema_real_eip !38
  %186 = trunc i64 %185 to i1, !mcsema_real_eip !38
  store i1 %186, i1* %SF, !mcsema_real_eip !38
  %187 = icmp eq i64 %180, 0, !mcsema_real_eip !38
  store i1 %187, i1* %ZF, !mcsema_real_eip !38
  %188 = xor i64 %RSP_val.59, 32, !mcsema_real_eip !38
  %189 = xor i64 %188, -1, !mcsema_real_eip !38
  %190 = and i64 %189, %181, !mcsema_real_eip !38
  %191 = lshr i64 %190, 63, !mcsema_real_eip !38
  %192 = and i64 %191, 1, !mcsema_real_eip !38
  %193 = trunc i64 %192 to i1, !mcsema_real_eip !38
  store i1 %193, i1* %OF, !mcsema_real_eip !38
  %194 = trunc i64 %180 to i8, !mcsema_real_eip !38
  %195 = call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !38
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !38
  %197 = xor i1 %196, true, !mcsema_real_eip !38
  store i1 %197, i1* %PF, !mcsema_real_eip !38
  %198 = icmp ult i64 %180, %RSP_val.59, !mcsema_real_eip !38
  store i1 %198, i1* %CF, !mcsema_real_eip !38
  store i64 %180, i64* %XSP, !mcsema_real_eip !38
  %199 = inttoptr i64 %180 to i64*, !mcsema_real_eip !39
  %200 = load i64, i64* %199, !mcsema_real_eip !39
  store i64 %200, i64* %XBP, !mcsema_real_eip !39
  %201 = add i64 %180, 8, !mcsema_real_eip !39
  store i64 %201, i64* %XSP, !mcsema_real_eip !39
  %202 = add i64 %201, 8, !mcsema_real_eip !40
  %203 = inttoptr i64 %201 to i64*, !mcsema_real_eip !40
  %204 = load i64, i64* %203, !mcsema_real_eip !40
  store i64 %204, i64* %XIP, !mcsema_real_eip !40
  store i64 %202, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !41
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !41
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !41
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !41
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !41
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !41
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !41
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !41
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !41
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !41
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !41
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !41
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !41
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !41
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !41
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !41
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !41
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !41
  br label %block_0x90, !mcsema_real_eip !41

block_0x90:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !41
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !42
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.65, 48, !mcsema_real_eip !43
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !43
  %4 = and i64 %3, 16, !mcsema_real_eip !43
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !43
  store i1 %5, i1* %AF, !mcsema_real_eip !43
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !43
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !43
  %8 = xor i1 %7, true, !mcsema_real_eip !43
  store i1 %8, i1* %PF, !mcsema_real_eip !43
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !43
  %9 = lshr i64 %2, 63, !mcsema_real_eip !43
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !43
  store i1 %10, i1* %SF, !mcsema_real_eip !43
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !43
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !43
  %12 = lshr i64 %11, 63, !mcsema_real_eip !43
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !43
  store i1 %13, i1* %OF, !mcsema_real_eip !43
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !43
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !44
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !44
  store i32 0, i32* %15, !mcsema_real_eip !44
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -36
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !45
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %17, !mcsema_real_eip !45
  br label %block_0xa6, !mcsema_real_eip !46

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -36
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !46
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !46
  %20 = load i32, i32* %19, !mcsema_real_eip !46
  %21 = sub i32 %20, 5, !mcsema_real_eip !46
  %22 = xor i32 %21, %20, !mcsema_real_eip !46
  %23 = xor i32 %22, 5, !mcsema_real_eip !46
  %24 = and i32 %23, 16, !mcsema_real_eip !46
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !46
  store i1 %25, i1* %AF, !mcsema_real_eip !46
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !46
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !46
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !46
  %29 = xor i1 %28, true, !mcsema_real_eip !46
  store i1 %29, i1* %PF, !mcsema_real_eip !46
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !46
  store i1 %30, i1* %ZF, !mcsema_real_eip !46
  %31 = lshr i32 %21, 31, !mcsema_real_eip !46
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !46
  store i1 %32, i1* %SF, !mcsema_real_eip !46
  %33 = icmp ult i32 %20, 5, !mcsema_real_eip !46
  store i1 %33, i1* %CF, !mcsema_real_eip !46
  %34 = xor i32 %20, 5, !mcsema_real_eip !46
  %35 = and i32 %34, %22, !mcsema_real_eip !46
  %36 = lshr i32 %35, 31, !mcsema_real_eip !46
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !46
  store i1 %37, i1* %OF, !mcsema_real_eip !46
  %38 = icmp eq i1 %32, %37, !mcsema_real_eip !47
  br i1 %38, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !47

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !48
  store i64 %39, i64* %XSI, !mcsema_real_eip !48
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !49
  store i32 5, i32* %40, !mcsema_real_eip !49
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !50
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !50
  store i32 6, i32* %42, !mcsema_real_eip !50
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %43 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !51
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !51
  store i32 7, i32* %44, !mcsema_real_eip !51
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !52
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !52
  store i32 8, i32* %46, !mcsema_real_eip !52
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !53
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !53
  %49 = load i32, i32* %48, !mcsema_real_eip !53
  %50 = zext i32 %49 to i64, !mcsema_real_eip !53
  store i64 %50, i64* %XDI, !mcsema_real_eip !53
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %51 = sub i64 %RSP_val.75, 8, !mcsema_real_eip !54
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, !mcsema_real_eip !54
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !54
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -36
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !55
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !55
  %54 = load i32, i32* %53, !mcsema_real_eip !55
  %55 = zext i32 %54 to i64, !mcsema_real_eip !55
  store i64 %55, i64* %XAX, !mcsema_real_eip !55
  %EAX.77 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.78 = load i32, i32* %EAX.77, !mcsema_real_eip !56
  %56 = add i32 1, %EAX_val.78, !mcsema_real_eip !56
  %57 = xor i32 %56, %EAX_val.78, !mcsema_real_eip !56
  %58 = xor i32 %57, 1, !mcsema_real_eip !56
  %59 = and i32 %58, 16, !mcsema_real_eip !56
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !56
  store i1 %60, i1* %AF, !mcsema_real_eip !56
  %61 = lshr i32 %56, 31, !mcsema_real_eip !56
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !56
  store i1 %62, i1* %SF, !mcsema_real_eip !56
  %63 = icmp eq i32 %56, 0, !mcsema_real_eip !56
  store i1 %63, i1* %ZF, !mcsema_real_eip !56
  %64 = xor i32 %EAX_val.78, 1, !mcsema_real_eip !56
  %65 = xor i32 %64, -1, !mcsema_real_eip !56
  %66 = and i32 %65, %57, !mcsema_real_eip !56
  %67 = lshr i32 %66, 31, !mcsema_real_eip !56
  %68 = and i32 %67, 1, !mcsema_real_eip !56
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !56
  store i1 %69, i1* %OF, !mcsema_real_eip !56
  %70 = trunc i32 %56 to i8, !mcsema_real_eip !56
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !56
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !56
  %73 = xor i1 %72, true, !mcsema_real_eip !56
  store i1 %73, i1* %PF, !mcsema_real_eip !56
  %74 = icmp ult i32 %56, %EAX_val.78, !mcsema_real_eip !56
  store i1 %74, i1* %CF, !mcsema_real_eip !56
  %75 = zext i32 %56 to i64, !mcsema_real_eip !56
  store i64 %75, i64* %XAX, !mcsema_real_eip !56
  %EAX_val.81 = load i32, i32* %EAX.77, !mcsema_real_eip !57
  store i32 %EAX_val.81, i32* %53, !mcsema_real_eip !57
  br label %block_0xa6, !mcsema_real_eip !58

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !59
  store i1 false, i1* %CF, !mcsema_real_eip !59
  store i1 false, i1* %OF, !mcsema_real_eip !59
  store i1 false, i1* %SF, !mcsema_real_eip !59
  store i1 true, i1* %ZF, !mcsema_real_eip !59
  store i1 true, i1* %PF, !mcsema_real_eip !59
  store i1 undef, i1* %AF, !mcsema_real_eip !59
  store i64 0, i64* %XAX, !mcsema_real_eip !59
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 48
  %76 = add i64 48, %RSP_val.86, !mcsema_real_eip !60
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %77 = xor i64 %_trans_xor_53, 48, !mcsema_real_eip !60
  %78 = and i64 %77, 16, !mcsema_real_eip !60
  %79 = icmp ne i64 %78, 0, !mcsema_real_eip !60
  store i1 %79, i1* %AF, !mcsema_real_eip !60
  %80 = lshr i64 %76, 63, !mcsema_real_eip !60
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !60
  store i1 %81, i1* %SF, !mcsema_real_eip !60
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !60
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 48
  %82 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !60
  %83 = and i64 %82, %_trans_xor_53, !mcsema_real_eip !60
  %84 = lshr i64 %83, 63, !mcsema_real_eip !60
  %85 = and i64 %84, 1, !mcsema_real_eip !60
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !60
  store i1 %86, i1* %OF, !mcsema_real_eip !60
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %87 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !60
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !60
  %89 = xor i1 %88, true, !mcsema_real_eip !60
  store i1 %89, i1* %PF, !mcsema_real_eip !60
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.86
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !60
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !60
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %90 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !61
  %_new_int2ptr_ = inttoptr i64 %90 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %90, i64* %XBP, !mcsema_real_eip !61
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %91 = add i64 %76, 8, !mcsema_real_eip !61
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %91, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %92 = add i64 %91, 8, !mcsema_real_eip !62
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %93 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !62
  store i64 %93, i64* %XIP, !mcsema_real_eip !62
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %92, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
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
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RSI_val.8 = load i64, i64* %XSI, !mcsema_real_eip !6
  store i64 %RSI_val.8, i64* %_allin_new_bt_18, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 3, i32* %17, !mcsema_real_eip !7
  br label %block_0x16, !mcsema_real_eip !8

block_0x16:                                       ; preds = %97, %block_0x0
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x16
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x16, %20
  %22 = phi i32* [ %19, %block_0x16 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %23, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !9
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !9
  %_ptr_bt_111 = bitcast i32* %25 to i8*
  %_offset_above_rbp_112 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_122, %26 ]
  %_new_load_123 = load i32, i32* %28
  %29 = sub i32 %EAX_val.13, %_new_load_123, !mcsema_real_eip !9
  %30 = xor i32 %29, %EAX_val.13, !mcsema_real_eip !9
  %31 = xor i32 %30, %_new_load_123, !mcsema_real_eip !9
  %32 = and i32 %31, 16, !mcsema_real_eip !9
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !9
  store i1 %33, i1* %AF, !mcsema_real_eip !9
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !9
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !9
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !9
  %37 = xor i1 %36, true, !mcsema_real_eip !9
  store i1 %37, i1* %PF, !mcsema_real_eip !9
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !9
  store i1 %38, i1* %ZF, !mcsema_real_eip !9
  %39 = lshr i32 %29, 31, !mcsema_real_eip !9
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !9
  store i1 %40, i1* %SF, !mcsema_real_eip !9
  %41 = icmp ult i32 %EAX_val.13, %_new_load_123, !mcsema_real_eip !9
  store i1 %41, i1* %CF, !mcsema_real_eip !9
  %42 = xor i32 %EAX_val.13, %_new_load_123, !mcsema_real_eip !9
  %43 = and i32 %42, %30, !mcsema_real_eip !9
  %44 = lshr i32 %43, 31, !mcsema_real_eip !9
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !9
  store i1 %45, i1* %OF, !mcsema_real_eip !9
  %46 = or i1 %41, %38, !mcsema_real_eip !10
  br i1 %46, label %block_0x4d, label %block_0x22, !mcsema_real_eip !10

block_0x22:                                       ; preds = %27
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_124 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %47, label %48

; <label>:47:                                     ; preds = %block_0x22
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x22, %47
  %49 = phi i64* [ %_allin_new_bt_30, %block_0x22 ], [ %_address_in_parent_stack_bt_137, %47 ]
  %_new_load_138 = load i64, i64* %49
  store i64 %_new_load_138, i64* %XAX, !mcsema_real_eip !11
  br i1 %_cond1_n_cond2_cond3_, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i32* [ %19, %48 ], [ %_address_in_parent_stack_bt_152, %50 ]
  %_new_load_153 = load i32, i32* %52
  %53 = zext i32 %_new_load_153 to i64, !mcsema_real_eip !12
  store i64 %53, i64* %XCX, !mcsema_real_eip !12
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !13
  %54 = sub i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %55 = xor i32 %54, %ECX_val.17, !mcsema_real_eip !13
  %56 = xor i32 %55, 1, !mcsema_real_eip !13
  %57 = and i32 %56, 16, !mcsema_real_eip !13
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !13
  store i1 %58, i1* %AF, !mcsema_real_eip !13
  %59 = trunc i32 %54 to i8, !mcsema_real_eip !13
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !13
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !13
  %62 = xor i1 %61, true, !mcsema_real_eip !13
  store i1 %62, i1* %PF, !mcsema_real_eip !13
  %63 = icmp eq i32 %54, 0, !mcsema_real_eip !13
  store i1 %63, i1* %ZF, !mcsema_real_eip !13
  %64 = lshr i32 %54, 31, !mcsema_real_eip !13
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !13
  store i1 %65, i1* %SF, !mcsema_real_eip !13
  %66 = icmp ult i32 %ECX_val.17, 1, !mcsema_real_eip !13
  store i1 %66, i1* %CF, !mcsema_real_eip !13
  %67 = xor i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %68 = and i32 %67, %55, !mcsema_real_eip !13
  %69 = lshr i32 %68, 31, !mcsema_real_eip !13
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !13
  store i1 %70, i1* %OF, !mcsema_real_eip !13
  %71 = zext i32 %54 to i64, !mcsema_real_eip !13
  store i64 %71, i64* %XCX, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.16, !mcsema_real_eip !14
  %72 = zext i32 %ECX_val.19 to i64, !mcsema_real_eip !14
  store i64 %72, i64* %XCX, !mcsema_real_eip !14
  %ECX_val.21 = load i32, i32* %ECX.16, !mcsema_real_eip !15
  %73 = zext i32 %ECX_val.21 to i64, !mcsema_real_eip !15
  store i64 %73, i64* %XDX, !mcsema_real_eip !15
  %74 = mul i64 %73, 4, !mcsema_real_eip !16
  %75 = add i64 %_new_load_138, %74, !mcsema_real_eip !16
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !16
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !16
  %_ptr_bt_156 = bitcast i32* %77 to i8*
  %_offset_above_rbp_157 = sub i64 %75, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_ptr_bt_156, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_ptr_bt_156, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_ptr_bt_156, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %78, label %79

; <label>:78:                                     ; preds = %51
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i32*
  br label %79

; <label>:79:                                     ; preds = %51, %78
  %80 = phi i32* [ %77, %51 ], [ %_address_in_parent_stack_bt_167, %78 ]
  %_new_load_168 = load i32, i32* %80
  %81 = zext i32 %_new_load_168 to i64, !mcsema_real_eip !16
  store i64 %81, i64* %XCX, !mcsema_real_eip !16
  br i1 %_cond1_n_cond2_cond3_135, label %82, label %83

; <label>:82:                                     ; preds = %79
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %83

; <label>:83:                                     ; preds = %79, %82
  %84 = phi i64* [ %_allin_new_bt_30, %79 ], [ %_address_in_parent_stack_bt_182, %82 ]
  %_new_load_183 = load i64, i64* %84
  store i64 %_new_load_183, i64* %XAX, !mcsema_real_eip !17
  br i1 %_cond1_n_cond2_cond3_, label %85, label %86

; <label>:85:                                     ; preds = %83
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %86

; <label>:86:                                     ; preds = %83, %85
  %87 = phi i32* [ %19, %83 ], [ %_address_in_parent_stack_bt_197, %85 ]
  %_new_load_198 = load i32, i32* %87
  %88 = zext i32 %_new_load_198 to i64, !mcsema_real_eip !18
  store i64 %88, i64* %XSI, !mcsema_real_eip !18
  %ESI.26 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.27 = load i32, i32* %ESI.26, !mcsema_real_eip !19
  %89 = zext i32 %ESI_val.27 to i64, !mcsema_real_eip !19
  store i64 %89, i64* %XDX, !mcsema_real_eip !19
  %90 = mul i64 %89, 4, !mcsema_real_eip !20
  %91 = add i64 %_new_load_183, %90, !mcsema_real_eip !20
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !20
  %ECX_val.31 = load i32, i32* %ECX.16, !mcsema_real_eip !20
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.31, i32* %93, !mcsema_real_eip !20
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %94 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !21
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !21
  %_ptr_bt_201 = bitcast i32* %95 to i8*
  %_offset_above_rbp_202 = sub i64 %94, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_ptr_bt_201, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_ptr_bt_201, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_ptr_bt_201, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %96, label %97

; <label>:96:                                     ; preds = %86
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i32*
  br label %97

; <label>:97:                                     ; preds = %86, %96
  %98 = phi i32* [ %95, %86 ], [ %_address_in_parent_stack_bt_212, %96 ]
  %_new_load_213 = load i32, i32* %98
  %99 = zext i32 %_new_load_213 to i64, !mcsema_real_eip !21
  store i64 %99, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.34 = load i32, i32* %EAX.12, !mcsema_real_eip !22
  %100 = add i32 -1, %EAX_val.34, !mcsema_real_eip !22
  %101 = xor i32 %100, %EAX_val.34, !mcsema_real_eip !22
  %102 = xor i32 %101, -1, !mcsema_real_eip !22
  %103 = and i32 %102, 16, !mcsema_real_eip !22
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !22
  store i1 %104, i1* %AF, !mcsema_real_eip !22
  %105 = lshr i32 %100, 31, !mcsema_real_eip !22
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !22
  store i1 %106, i1* %SF, !mcsema_real_eip !22
  %107 = icmp eq i32 %100, 0, !mcsema_real_eip !22
  store i1 %107, i1* %ZF, !mcsema_real_eip !22
  %108 = xor i32 %EAX_val.34, -1, !mcsema_real_eip !22
  %109 = and i32 %EAX_val.34, %101, !mcsema_real_eip !22
  %110 = lshr i32 %109, 31, !mcsema_real_eip !22
  %111 = and i32 %110, 1, !mcsema_real_eip !22
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !22
  store i1 %112, i1* %OF, !mcsema_real_eip !22
  %113 = trunc i32 %100 to i8, !mcsema_real_eip !22
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !22
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !22
  %116 = xor i1 %115, true, !mcsema_real_eip !22
  store i1 %116, i1* %PF, !mcsema_real_eip !22
  %117 = icmp ult i32 %100, %EAX_val.34, !mcsema_real_eip !22
  store i1 %117, i1* %CF, !mcsema_real_eip !22
  %118 = zext i32 %100 to i64, !mcsema_real_eip !22
  store i64 %118, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.37 = load i32, i32* %EAX.12, !mcsema_real_eip !23
  store i32 %EAX_val.37, i32* %95, !mcsema_real_eip !23
  br label %block_0x16, !mcsema_real_eip !24

block_0x4d:                                       ; preds = %27
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !25
  br i1 %_cond1_n_cond2_cond3_120, label %119, label %120

; <label>:119:                                    ; preds = %block_0x4d
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_113 to i32*
  br label %120

; <label>:120:                                    ; preds = %block_0x4d, %119
  %121 = phi i32* [ %25, %block_0x4d ], [ %_address_in_parent_stack_bt_227, %119 ]
  %_new_load_228 = load i32, i32* %121
  %122 = zext i32 %_new_load_228 to i64, !mcsema_real_eip !26
  store i64 %122, i64* %XSI, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_229 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  br i1 %_cond1_n_cond2_cond3_240, label %123, label %124

; <label>:123:                                    ; preds = %120
  %_address_in_parent_stack_bt_242 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %124

; <label>:124:                                    ; preds = %120, %123
  %125 = phi i64* [ %_allin_new_bt_51, %120 ], [ %_address_in_parent_stack_bt_242, %123 ]
  %_new_load_243 = load i64, i64* %125
  store i64 %_new_load_243, i64* %XAX, !mcsema_real_eip !27
  %126 = inttoptr i64 %_new_load_243 to i64*, !mcsema_real_eip !28
  %127 = inttoptr i64 %_new_load_243 to i32*, !mcsema_real_eip !28
  %_ptr_bt_246 = bitcast i32* %127 to i8*
  %_offset_above_rbp_247 = sub i64 %_new_load_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_ptr_bt_246, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_ptr_bt_246, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_ptr_bt_246, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  br i1 %_cond1_n_cond2_cond3_255, label %128, label %129

; <label>:128:                                    ; preds = %124
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i32*
  br label %129

; <label>:129:                                    ; preds = %124, %128
  %130 = phi i32* [ %127, %124 ], [ %_address_in_parent_stack_bt_257, %128 ]
  %_new_load_258 = load i32, i32* %130
  %131 = zext i32 %_new_load_258 to i64, !mcsema_real_eip !28
  store i64 %131, i64* %XDX, !mcsema_real_eip !28
  br i1 %_cond1_n_cond2_cond3_240, label %132, label %133

; <label>:132:                                    ; preds = %129
  %_address_in_parent_stack_bt_272 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %133

; <label>:133:                                    ; preds = %129, %132
  %134 = phi i64* [ %_allin_new_bt_51, %129 ], [ %_address_in_parent_stack_bt_272, %132 ]
  %_new_load_273 = load i64, i64* %134
  store i64 %_new_load_273, i64* %XAX, !mcsema_real_eip !29
  %135 = add i64 %_new_load_273, 4, !mcsema_real_eip !30
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !30
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !30
  %_ptr_bt_276 = bitcast i32* %137 to i8*
  %_offset_above_rbp_277 = sub i64 %135, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_ptr_bt_276, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_ptr_bt_276, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_ptr_bt_276, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  br i1 %_cond1_n_cond2_cond3_285, label %138, label %139

; <label>:138:                                    ; preds = %133
  %_address_in_parent_stack_bt_287 = bitcast i8* %_pot_address_in_parent_stack_278 to i32*
  br label %139

; <label>:139:                                    ; preds = %133, %138
  %140 = phi i32* [ %137, %133 ], [ %_address_in_parent_stack_bt_287, %138 ]
  %_new_load_288 = load i32, i32* %140
  %141 = zext i32 %_new_load_288 to i64, !mcsema_real_eip !30
  store i64 %141, i64* %XCX, !mcsema_real_eip !30
  br i1 %_cond1_n_cond2_cond3_240, label %142, label %143

; <label>:142:                                    ; preds = %139
  %_address_in_parent_stack_bt_302 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %143

; <label>:143:                                    ; preds = %139, %142
  %144 = phi i64* [ %_allin_new_bt_51, %139 ], [ %_address_in_parent_stack_bt_302, %142 ]
  %_new_load_303 = load i64, i64* %144
  store i64 %_new_load_303, i64* %XAX, !mcsema_real_eip !31
  %145 = add i64 %_new_load_303, 8, !mcsema_real_eip !32
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !32
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !32
  %_ptr_bt_306 = bitcast i32* %147 to i8*
  %_offset_above_rbp_307 = sub i64 %145, %_local_end_to_int_
  %_pot_address_in_parent_stack_308 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_307
  %_cond1_309 = icmp ugt i8* %_ptr_bt_306, %_local_stack_end_ptr_
  %_cond2_1_310 = icmp ugt i8* %_ptr_bt_306, %_parent_stack_end_ptr_
  %_cond2_2_311 = icmp ult i8* %_ptr_bt_306, %_parent_stack_start_ptr_
  %_cond2_312 = or i1 %_cond2_1_310, %_cond2_2_311
  %_cond4_313 = icmp ule i8* %_pot_address_in_parent_stack_308, %_parent_stack_end_ptr_
  %_cond1_n_cond2_314 = and i1 %_cond1_309, %_cond2_312
  %_cond1_n_cond2_cond3_315 = and i1 %_cond1_n_cond2_314, %_cond4_313
  br i1 %_cond1_n_cond2_cond3_315, label %148, label %149

; <label>:148:                                    ; preds = %143
  %_address_in_parent_stack_bt_317 = bitcast i8* %_pot_address_in_parent_stack_308 to i32*
  br label %149

; <label>:149:                                    ; preds = %143, %148
  %150 = phi i32* [ %147, %143 ], [ %_address_in_parent_stack_bt_317, %148 ]
  %_new_load_318 = load i32, i32* %150
  %151 = zext i32 %_new_load_318 to i64, !mcsema_real_eip !32
  store i64 %151, i64* %R8, !mcsema_real_eip !32
  br i1 %_cond1_n_cond2_cond3_240, label %152, label %153

; <label>:152:                                    ; preds = %149
  %_address_in_parent_stack_bt_332 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %153

; <label>:153:                                    ; preds = %149, %152
  %154 = phi i64* [ %_allin_new_bt_51, %149 ], [ %_address_in_parent_stack_bt_332, %152 ]
  %_new_load_333 = load i64, i64* %154
  store i64 %_new_load_333, i64* %XAX, !mcsema_real_eip !33
  %155 = add i64 %_new_load_333, 12, !mcsema_real_eip !34
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !34
  %157 = inttoptr i64 %155 to i32*, !mcsema_real_eip !34
  %_ptr_bt_336 = bitcast i32* %157 to i8*
  %_offset_above_rbp_337 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_338 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_337
  %_cond1_339 = icmp ugt i8* %_ptr_bt_336, %_local_stack_end_ptr_
  %_cond2_1_340 = icmp ugt i8* %_ptr_bt_336, %_parent_stack_end_ptr_
  %_cond2_2_341 = icmp ult i8* %_ptr_bt_336, %_parent_stack_start_ptr_
  %_cond2_342 = or i1 %_cond2_1_340, %_cond2_2_341
  %_cond4_343 = icmp ule i8* %_pot_address_in_parent_stack_338, %_parent_stack_end_ptr_
  %_cond1_n_cond2_344 = and i1 %_cond1_339, %_cond2_342
  %_cond1_n_cond2_cond3_345 = and i1 %_cond1_n_cond2_344, %_cond4_343
  br i1 %_cond1_n_cond2_cond3_345, label %158, label %159

; <label>:158:                                    ; preds = %153
  %_address_in_parent_stack_bt_347 = bitcast i8* %_pot_address_in_parent_stack_338 to i32*
  br label %159

; <label>:159:                                    ; preds = %153, %158
  %160 = phi i32* [ %157, %153 ], [ %_address_in_parent_stack_bt_347, %158 ]
  %_new_load_348 = load i32, i32* %160
  %161 = zext i32 %_new_load_348 to i64, !mcsema_real_eip !34
  store i64 %161, i64* %R9, !mcsema_real_eip !34
  %AL.47 = bitcast i64* %XAX to i8*, !mcsema_real_eip !35
  store i8 0, i8* %AL.47, !mcsema_real_eip !35
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_62 = bitcast i8* %_load_rsp_ptr_61 to i64*
  %_ptr_to_int_349 = ptrtoint i64* %_allin_new_bt_62 to i64
  %_offset_above_rbp_352 = sub i64 %_ptr_to_int_349, %_local_end_to_int_
  %_pot_address_in_parent_stack_353 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_352
  %_cond1_354 = icmp ugt i8* %_load_rsp_ptr_61, %_local_stack_end_ptr_
  %_cond2_1_355 = icmp ugt i8* %_load_rsp_ptr_61, %_parent_stack_end_ptr_
  %_cond2_2_356 = icmp ult i8* %_load_rsp_ptr_61, %_parent_stack_start_ptr_
  %_cond2_357 = or i1 %_cond2_1_355, %_cond2_2_356
  %_cond4_358 = icmp ule i8* %_pot_address_in_parent_stack_353, %_parent_stack_end_ptr_
  %_cond1_n_cond2_359 = and i1 %_cond1_354, %_cond2_357
  %_cond1_n_cond2_cond3_360 = and i1 %_cond1_n_cond2_359, %_cond4_358
  br i1 %_cond1_n_cond2_cond3_360, label %162, label %163

; <label>:162:                                    ; preds = %159
  %_address_in_parent_stack_bt_362 = bitcast i8* %_pot_address_in_parent_stack_353 to i64*
  br label %163

; <label>:163:                                    ; preds = %159, %162
  %164 = phi i64* [ %_allin_new_bt_62, %159 ], [ %_address_in_parent_stack_bt_362, %162 ]
  %_new_load_363 = load i64, i64* %164
  %_new_gep_63 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %_ptr_to_int_364 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_367 = sub i64 %_ptr_to_int_364, %_local_end_to_int_
  %_pot_address_in_parent_stack_368 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_367
  %_cond1_369 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_370 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_371 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_372 = or i1 %_cond2_1_370, %_cond2_2_371
  %_cond4_373 = icmp ule i8* %_pot_address_in_parent_stack_368, %_parent_stack_end_ptr_
  %_cond1_n_cond2_374 = and i1 %_cond1_369, %_cond2_372
  %_cond1_n_cond2_cond3_375 = and i1 %_cond1_n_cond2_374, %_cond4_373
  br i1 %_cond1_n_cond2_cond3_375, label %165, label %166

; <label>:165:                                    ; preds = %163
  %_address_in_parent_stack_bt_377 = bitcast i8* %_pot_address_in_parent_stack_368 to i64*
  br label %166

; <label>:166:                                    ; preds = %163, %165
  %167 = phi i64* [ %_allin_new_bt_64, %163 ], [ %_address_in_parent_stack_bt_377, %165 ]
  %_new_load_378 = load i64, i64* %167
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_63, i64 8
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_379 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_382 = sub i64 %_ptr_to_int_379, %_local_end_to_int_
  %_pot_address_in_parent_stack_383 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_382
  %_cond1_384 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_385 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_386 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_387 = or i1 %_cond2_1_385, %_cond2_2_386
  %_cond4_388 = icmp ule i8* %_pot_address_in_parent_stack_383, %_parent_stack_end_ptr_
  %_cond1_n_cond2_389 = and i1 %_cond1_384, %_cond2_387
  %_cond1_n_cond2_cond3_390 = and i1 %_cond1_n_cond2_389, %_cond4_388
  br i1 %_cond1_n_cond2_cond3_390, label %168, label %169

; <label>:168:                                    ; preds = %166
  %_address_in_parent_stack_bt_392 = bitcast i8* %_pot_address_in_parent_stack_383 to i64*
  br label %169

; <label>:169:                                    ; preds = %166, %168
  %170 = phi i64* [ %_allin_new_bt_66, %166 ], [ %_address_in_parent_stack_bt_392, %168 ]
  %_new_load_393 = load i64, i64* %170
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_65, i64 8
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_394 = ptrtoint i64* %_allin_new_bt_68 to i64
  %_offset_above_rbp_397 = sub i64 %_ptr_to_int_394, %_local_end_to_int_
  %_pot_address_in_parent_stack_398 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_397
  %_cond1_399 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_400 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_401 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_402 = or i1 %_cond2_1_400, %_cond2_2_401
  %_cond4_403 = icmp ule i8* %_pot_address_in_parent_stack_398, %_parent_stack_end_ptr_
  %_cond1_n_cond2_404 = and i1 %_cond1_399, %_cond2_402
  %_cond1_n_cond2_cond3_405 = and i1 %_cond1_n_cond2_404, %_cond4_403
  br i1 %_cond1_n_cond2_cond3_405, label %171, label %172

; <label>:171:                                    ; preds = %169
  %_address_in_parent_stack_bt_407 = bitcast i8* %_pot_address_in_parent_stack_398 to i64*
  br label %172

; <label>:172:                                    ; preds = %169, %171
  %173 = phi i64* [ %_allin_new_bt_68, %169 ], [ %_address_in_parent_stack_bt_407, %171 ]
  %_new_load_408 = load i64, i64* %173
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_409 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_412 = sub i64 %_ptr_to_int_409, %_local_end_to_int_
  %_pot_address_in_parent_stack_413 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_412
  %_cond1_414 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_415 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_416 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_417 = or i1 %_cond2_1_415, %_cond2_2_416
  %_cond4_418 = icmp ule i8* %_pot_address_in_parent_stack_413, %_parent_stack_end_ptr_
  %_cond1_n_cond2_419 = and i1 %_cond1_414, %_cond2_417
  %_cond1_n_cond2_cond3_420 = and i1 %_cond1_n_cond2_419, %_cond4_418
  br i1 %_cond1_n_cond2_cond3_420, label %174, label %175

; <label>:174:                                    ; preds = %172
  %_address_in_parent_stack_bt_422 = bitcast i8* %_pot_address_in_parent_stack_413 to i64*
  br label %175

; <label>:175:                                    ; preds = %172, %174
  %176 = phi i64* [ %_allin_new_bt_70, %172 ], [ %_address_in_parent_stack_bt_422, %174 ]
  %_new_load_423 = load i64, i64* %176
  %_new_gep_71 = getelementptr i8, i8* %_new_gep_69, i64 8
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_424 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_427 = sub i64 %_ptr_to_int_424, %_local_end_to_int_
  %_pot_address_in_parent_stack_428 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_427
  %_cond1_429 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_430 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_431 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_432 = or i1 %_cond2_1_430, %_cond2_2_431
  %_cond4_433 = icmp ule i8* %_pot_address_in_parent_stack_428, %_parent_stack_end_ptr_
  %_cond1_n_cond2_434 = and i1 %_cond1_429, %_cond2_432
  %_cond1_n_cond2_cond3_435 = and i1 %_cond1_n_cond2_434, %_cond4_433
  br i1 %_cond1_n_cond2_cond3_435, label %177, label %178

; <label>:177:                                    ; preds = %175
  %_address_in_parent_stack_bt_437 = bitcast i8* %_pot_address_in_parent_stack_428 to i64*
  br label %178

; <label>:178:                                    ; preds = %175, %177
  %179 = phi i64* [ %_allin_new_bt_72, %175 ], [ %_address_in_parent_stack_bt_437, %177 ]
  %_new_load_438 = load i64, i64* %179
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_71, i64 8
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %_ptr_to_int_439 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_offset_above_rbp_442 = sub i64 %_ptr_to_int_439, %_local_end_to_int_
  %_pot_address_in_parent_stack_443 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_442
  %_cond1_444 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_445 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_446 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_447 = or i1 %_cond2_1_445, %_cond2_2_446
  %_cond4_448 = icmp ule i8* %_pot_address_in_parent_stack_443, %_parent_stack_end_ptr_
  %_cond1_n_cond2_449 = and i1 %_cond1_444, %_cond2_447
  %_cond1_n_cond2_cond3_450 = and i1 %_cond1_n_cond2_449, %_cond4_448
  br i1 %_cond1_n_cond2_cond3_450, label %180, label %181

; <label>:180:                                    ; preds = %178
  %_address_in_parent_stack_bt_452 = bitcast i8* %_pot_address_in_parent_stack_443 to i64*
  br label %181

; <label>:181:                                    ; preds = %178, %180
  %182 = phi i64* [ %_allin_new_bt_74, %178 ], [ %_address_in_parent_stack_bt_452, %180 ]
  %_new_load_453 = load i64, i64* %182
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %_ptr_to_int_454 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_457 = sub i64 %_ptr_to_int_454, %_local_end_to_int_
  %_pot_address_in_parent_stack_458 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_457
  %_cond1_459 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_460 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_461 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_462 = or i1 %_cond2_1_460, %_cond2_2_461
  %_cond4_463 = icmp ule i8* %_pot_address_in_parent_stack_458, %_parent_stack_end_ptr_
  %_cond1_n_cond2_464 = and i1 %_cond1_459, %_cond2_462
  %_cond1_n_cond2_cond3_465 = and i1 %_cond1_n_cond2_464, %_cond4_463
  br i1 %_cond1_n_cond2_cond3_465, label %183, label %184

; <label>:183:                                    ; preds = %181
  %_address_in_parent_stack_bt_467 = bitcast i8* %_pot_address_in_parent_stack_458 to i64*
  br label %184

; <label>:184:                                    ; preds = %181, %183
  %185 = phi i64* [ %_allin_new_bt_76, %181 ], [ %_address_in_parent_stack_bt_467, %183 ]
  %_new_load_468 = load i64, i64* %185
  %_new_gep_77 = getelementptr i8, i8* %_new_gep_75, i64 8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %_ptr_to_int_469 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_472 = sub i64 %_ptr_to_int_469, %_local_end_to_int_
  %_pot_address_in_parent_stack_473 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_472
  %_cond1_474 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_475 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_476 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_477 = or i1 %_cond2_1_475, %_cond2_2_476
  %_cond4_478 = icmp ule i8* %_pot_address_in_parent_stack_473, %_parent_stack_end_ptr_
  %_cond1_n_cond2_479 = and i1 %_cond1_474, %_cond2_477
  %_cond1_n_cond2_cond3_480 = and i1 %_cond1_n_cond2_479, %_cond4_478
  br i1 %_cond1_n_cond2_cond3_480, label %186, label %187

; <label>:186:                                    ; preds = %184
  %_address_in_parent_stack_bt_482 = bitcast i8* %_pot_address_in_parent_stack_473 to i64*
  br label %187

; <label>:187:                                    ; preds = %184, %186
  %188 = phi i64* [ %_allin_new_bt_78, %184 ], [ %_address_in_parent_stack_bt_482, %186 ]
  %_new_load_483 = load i64, i64* %188
  %_new_gep_79 = getelementptr i8, i8* %_new_gep_77, i64 8
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %_ptr_to_int_484 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_offset_above_rbp_487 = sub i64 %_ptr_to_int_484, %_local_end_to_int_
  %_pot_address_in_parent_stack_488 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_487
  %_cond1_489 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_490 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_491 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_492 = or i1 %_cond2_1_490, %_cond2_2_491
  %_cond4_493 = icmp ule i8* %_pot_address_in_parent_stack_488, %_parent_stack_end_ptr_
  %_cond1_n_cond2_494 = and i1 %_cond1_489, %_cond2_492
  %_cond1_n_cond2_cond3_495 = and i1 %_cond1_n_cond2_494, %_cond4_493
  br i1 %_cond1_n_cond2_cond3_495, label %189, label %190

; <label>:189:                                    ; preds = %187
  %_address_in_parent_stack_bt_497 = bitcast i8* %_pot_address_in_parent_stack_488 to i64*
  br label %190

; <label>:190:                                    ; preds = %187, %189
  %191 = phi i64* [ %_allin_new_bt_80, %187 ], [ %_address_in_parent_stack_bt_497, %189 ]
  %_new_load_498 = load i64, i64* %191
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 -8
  %192 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !36
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_83, !mcsema_real_eip !36
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %192, i64* %XSP, !mcsema_real_eip !36
  %193 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %122, i64 %131, i64 %141, i64 %151, i64 %161, i64 %_new_load_363, i64 %_new_load_378, i64 %_new_load_393, i64 %_new_load_408, i64 %_new_load_423, i64 %_new_load_438, i64 %_new_load_453, i64 %_new_load_468, i64 %_new_load_483, i64 %_new_load_498)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %193, i64* %XAX, !mcsema_real_eip !36
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -24
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %EAX_val.58 = load i32, i32* %EAX.12, !mcsema_real_eip !37
  %194 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !37
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.58, i32* %195, !mcsema_real_eip !37
  %_load_rsp_ptr_87 = load i8*, i8** %_RSP_ptr_
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_88 = getelementptr i8, i8* %_load_rsp_ptr_87, i64 32
  %196 = add i64 32, %RSP_val.59, !mcsema_real_eip !38
  %_trans_p2i_89 = ptrtoint i8* %_new_gep_88 to i64
  %_trans_p2i_90 = ptrtoint i8* %_load_rsp_ptr_87 to i64
  %_trans_xor_91 = xor i64 %_trans_p2i_89, %_trans_p2i_90
  %197 = xor i64 %_trans_xor_91, 32, !mcsema_real_eip !38
  %198 = and i64 %197, 16, !mcsema_real_eip !38
  %199 = icmp ne i64 %198, 0, !mcsema_real_eip !38
  store i1 %199, i1* %AF, !mcsema_real_eip !38
  %200 = lshr i64 %196, 63, !mcsema_real_eip !38
  %201 = trunc i64 %200 to i1, !mcsema_real_eip !38
  store i1 %201, i1* %SF, !mcsema_real_eip !38
  %_trans_icmp_eq_93 = icmp eq i64 %_trans_p2i_89, 0
  store i1 %_trans_icmp_eq_93, i1* %ZF, !mcsema_real_eip !38
  %_trans_xor_95 = xor i64 %_trans_p2i_90, 32
  %202 = xor i64 %_trans_xor_95, -1, !mcsema_real_eip !38
  %203 = and i64 %202, %_trans_xor_91, !mcsema_real_eip !38
  %204 = lshr i64 %203, 63, !mcsema_real_eip !38
  %205 = and i64 %204, 1, !mcsema_real_eip !38
  %206 = trunc i64 %205 to i1, !mcsema_real_eip !38
  store i1 %206, i1* %OF, !mcsema_real_eip !38
  %_trans_trunc_100 = trunc i64 %_trans_p2i_89 to i8
  %207 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_100), !mcsema_real_eip !38
  %208 = trunc i8 %207 to i1, !mcsema_real_eip !38
  %209 = xor i1 %208, true, !mcsema_real_eip !38
  store i1 %209, i1* %PF, !mcsema_real_eip !38
  %_trans_icmp_ne_102 = icmp ne i64 %_trans_p2i_89, %RSP_val.59
  store i1 %_trans_icmp_ne_102, i1* %CF, !mcsema_real_eip !38
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_
  store i64 %196, i64* %XSP, !mcsema_real_eip !38
  %_allin_new_bt_104 = bitcast i8* %_new_gep_88 to i64*
  %_ptr_to_int_499 = ptrtoint i64* %_allin_new_bt_104 to i64
  %_offset_above_rbp_502 = sub i64 %_ptr_to_int_499, %_local_end_to_int_
  %_pot_address_in_parent_stack_503 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_502
  %_cond1_504 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_505 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_506 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_507 = or i1 %_cond2_1_505, %_cond2_2_506
  %_cond4_508 = icmp ule i8* %_pot_address_in_parent_stack_503, %_parent_stack_end_ptr_
  %_cond1_n_cond2_509 = and i1 %_cond1_504, %_cond2_507
  %_cond1_n_cond2_cond3_510 = and i1 %_cond1_n_cond2_509, %_cond4_508
  br i1 %_cond1_n_cond2_cond3_510, label %210, label %211

; <label>:210:                                    ; preds = %190
  %_address_in_parent_stack_bt_512 = bitcast i8* %_pot_address_in_parent_stack_503 to i64*
  br label %211

; <label>:211:                                    ; preds = %190, %210
  %212 = phi i64* [ %_allin_new_bt_104, %190 ], [ %_address_in_parent_stack_bt_512, %210 ]
  %_new_load_513 = load i64, i64* %212
  %_new_int2ptr_ = inttoptr i64 %_new_load_513 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_513, i64* %XBP, !mcsema_real_eip !39
  %_new_gep_105 = getelementptr i8, i8* %_new_gep_88, i64 8
  %213 = add i64 %196, 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_105, i8** %_RSP_ptr_
  store i64 %213, i64* %XSP, !mcsema_real_eip !39
  %_new_gep_107 = getelementptr i8, i8* %_new_gep_105, i64 8
  %214 = add i64 %213, 8, !mcsema_real_eip !40
  %_allin_new_bt_108 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_514 = ptrtoint i64* %_allin_new_bt_108 to i64
  %_offset_above_rbp_517 = sub i64 %_ptr_to_int_514, %_local_end_to_int_
  %_pot_address_in_parent_stack_518 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_517
  %_cond1_519 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_520 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_521 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_522 = or i1 %_cond2_1_520, %_cond2_2_521
  %_cond4_523 = icmp ule i8* %_pot_address_in_parent_stack_518, %_parent_stack_end_ptr_
  %_cond1_n_cond2_524 = and i1 %_cond1_519, %_cond2_522
  %_cond1_n_cond2_cond3_525 = and i1 %_cond1_n_cond2_524, %_cond4_523
  br i1 %_cond1_n_cond2_cond3_525, label %215, label %216

; <label>:215:                                    ; preds = %211
  %_address_in_parent_stack_bt_527 = bitcast i8* %_pot_address_in_parent_stack_518 to i64*
  br label %216

; <label>:216:                                    ; preds = %211, %215
  %217 = phi i64* [ %_allin_new_bt_108, %211 ], [ %_address_in_parent_stack_bt_527, %215 ]
  %_new_load_528 = load i64, i64* %217
  store i64 %_new_load_528, i64* %XIP, !mcsema_real_eip !40
  store volatile i8* %_new_gep_107, i8** %_RSP_ptr_
  store i64 %214, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !41
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !41
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !41
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !41
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !41
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !41
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !41
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !41
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !41
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !41
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !41
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !41
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !41
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !41
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !41
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !41
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !41
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !41
  br label %block_0x90, !mcsema_real_eip !41

block_0x90:                                       ; preds = %entry
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !41
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !42
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.65, 48, !mcsema_real_eip !43
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !43
  %4 = and i64 %3, 16, !mcsema_real_eip !43
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !43
  store i1 %5, i1* %AF, !mcsema_real_eip !43
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !43
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !43
  %8 = xor i1 %7, true, !mcsema_real_eip !43
  store i1 %8, i1* %PF, !mcsema_real_eip !43
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !43
  %9 = lshr i64 %2, 63, !mcsema_real_eip !43
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !43
  store i1 %10, i1* %SF, !mcsema_real_eip !43
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !43
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !43
  %12 = lshr i64 %11, 63, !mcsema_real_eip !43
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !43
  store i1 %13, i1* %OF, !mcsema_real_eip !43
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !43
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !44
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !44
  store i32 0, i32* %15, !mcsema_real_eip !44
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -36
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !45
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %17, !mcsema_real_eip !45
  br label %block_0xa6, !mcsema_real_eip !46

block_0xa6:                                       ; preds = %59, %block_0x90
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -36
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !46
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !46
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0xa6
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0xa6, %20
  %22 = phi i32* [ %19, %block_0xa6 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 5, !mcsema_real_eip !46
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !46
  %25 = xor i32 %24, 5, !mcsema_real_eip !46
  %26 = and i32 %25, 16, !mcsema_real_eip !46
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !46
  store i1 %27, i1* %AF, !mcsema_real_eip !46
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !46
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !46
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !46
  %31 = xor i1 %30, true, !mcsema_real_eip !46
  store i1 %31, i1* %PF, !mcsema_real_eip !46
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !46
  store i1 %32, i1* %ZF, !mcsema_real_eip !46
  %33 = lshr i32 %23, 31, !mcsema_real_eip !46
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !46
  store i1 %34, i1* %SF, !mcsema_real_eip !46
  %35 = icmp ult i32 %_new_load_, 5, !mcsema_real_eip !46
  store i1 %35, i1* %CF, !mcsema_real_eip !46
  %36 = xor i32 %_new_load_, 5, !mcsema_real_eip !46
  %37 = and i32 %36, %24, !mcsema_real_eip !46
  %38 = lshr i32 %37, 31, !mcsema_real_eip !46
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !46
  store i1 %39, i1* %OF, !mcsema_real_eip !46
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !47
  br i1 %40, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !47

block_0xb0:                                       ; preds = %21
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !48
  store i64 %41, i64* %XSI, !mcsema_real_eip !48
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !49
  store i32 5, i32* %42, !mcsema_real_eip !49
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %43 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !50
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !50
  store i32 6, i32* %44, !mcsema_real_eip !50
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !51
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !51
  store i32 7, i32* %46, !mcsema_real_eip !51
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !52
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !52
  store i32 8, i32* %48, !mcsema_real_eip !52
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !53
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !53
  %_ptr_bt_75 = bitcast i32* %50 to i8*
  %_offset_above_rbp_76 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_77 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_76
  %_cond1_78 = icmp ugt i8* %_ptr_bt_75, %_local_stack_end_ptr_
  %_cond2_1_79 = icmp ugt i8* %_ptr_bt_75, %_parent_stack_end_ptr_
  %_cond2_2_80 = icmp ult i8* %_ptr_bt_75, %_parent_stack_start_ptr_
  %_cond2_81 = or i1 %_cond2_1_79, %_cond2_2_80
  %_cond4_82 = icmp ule i8* %_pot_address_in_parent_stack_77, %_parent_stack_end_ptr_
  %_cond1_n_cond2_83 = and i1 %_cond1_78, %_cond2_81
  %_cond1_n_cond2_cond3_84 = and i1 %_cond1_n_cond2_83, %_cond4_82
  br i1 %_cond1_n_cond2_cond3_84, label %51, label %52

; <label>:51:                                     ; preds = %block_0xb0
  %_address_in_parent_stack_bt_86 = bitcast i8* %_pot_address_in_parent_stack_77 to i32*
  br label %52

; <label>:52:                                     ; preds = %block_0xb0, %51
  %53 = phi i32* [ %50, %block_0xb0 ], [ %_address_in_parent_stack_bt_86, %51 ]
  %_new_load_87 = load i32, i32* %53
  %54 = zext i32 %_new_load_87 to i64, !mcsema_real_eip !53
  store i64 %54, i64* %XDI, !mcsema_real_eip !53
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %55 = sub i64 %RSP_val.75, 8, !mcsema_real_eip !54
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, !mcsema_real_eip !54
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !54
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -36
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %56 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !55
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !55
  %_ptr_bt_90 = bitcast i32* %57 to i8*
  %_offset_above_rbp_91 = sub i64 %56, %_local_end_to_int_
  %_pot_address_in_parent_stack_92 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_91
  %_cond1_93 = icmp ugt i8* %_ptr_bt_90, %_local_stack_end_ptr_
  %_cond2_1_94 = icmp ugt i8* %_ptr_bt_90, %_parent_stack_end_ptr_
  %_cond2_2_95 = icmp ult i8* %_ptr_bt_90, %_parent_stack_start_ptr_
  %_cond2_96 = or i1 %_cond2_1_94, %_cond2_2_95
  %_cond4_97 = icmp ule i8* %_pot_address_in_parent_stack_92, %_parent_stack_end_ptr_
  %_cond1_n_cond2_98 = and i1 %_cond1_93, %_cond2_96
  %_cond1_n_cond2_cond3_99 = and i1 %_cond1_n_cond2_98, %_cond4_97
  br i1 %_cond1_n_cond2_cond3_99, label %58, label %59

; <label>:58:                                     ; preds = %52
  %_address_in_parent_stack_bt_101 = bitcast i8* %_pot_address_in_parent_stack_92 to i32*
  br label %59

; <label>:59:                                     ; preds = %52, %58
  %60 = phi i32* [ %57, %52 ], [ %_address_in_parent_stack_bt_101, %58 ]
  %_new_load_102 = load i32, i32* %60
  %61 = zext i32 %_new_load_102 to i64, !mcsema_real_eip !55
  store i64 %61, i64* %XAX, !mcsema_real_eip !55
  %EAX.77 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.78 = load i32, i32* %EAX.77, !mcsema_real_eip !56
  %62 = add i32 1, %EAX_val.78, !mcsema_real_eip !56
  %63 = xor i32 %62, %EAX_val.78, !mcsema_real_eip !56
  %64 = xor i32 %63, 1, !mcsema_real_eip !56
  %65 = and i32 %64, 16, !mcsema_real_eip !56
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !56
  store i1 %66, i1* %AF, !mcsema_real_eip !56
  %67 = lshr i32 %62, 31, !mcsema_real_eip !56
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !56
  store i1 %68, i1* %SF, !mcsema_real_eip !56
  %69 = icmp eq i32 %62, 0, !mcsema_real_eip !56
  store i1 %69, i1* %ZF, !mcsema_real_eip !56
  %70 = xor i32 %EAX_val.78, 1, !mcsema_real_eip !56
  %71 = xor i32 %70, -1, !mcsema_real_eip !56
  %72 = and i32 %71, %63, !mcsema_real_eip !56
  %73 = lshr i32 %72, 31, !mcsema_real_eip !56
  %74 = and i32 %73, 1, !mcsema_real_eip !56
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !56
  store i1 %75, i1* %OF, !mcsema_real_eip !56
  %76 = trunc i32 %62 to i8, !mcsema_real_eip !56
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !56
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !56
  %79 = xor i1 %78, true, !mcsema_real_eip !56
  store i1 %79, i1* %PF, !mcsema_real_eip !56
  %80 = icmp ult i32 %62, %EAX_val.78, !mcsema_real_eip !56
  store i1 %80, i1* %CF, !mcsema_real_eip !56
  %81 = zext i32 %62 to i64, !mcsema_real_eip !56
  store i64 %81, i64* %XAX, !mcsema_real_eip !56
  %EAX_val.81 = load i32, i32* %EAX.77, !mcsema_real_eip !57
  store i32 %EAX_val.81, i32* %57, !mcsema_real_eip !57
  br label %block_0xa6, !mcsema_real_eip !58

block_0xe6:                                       ; preds = %21
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !59
  store i1 false, i1* %CF, !mcsema_real_eip !59
  store i1 false, i1* %OF, !mcsema_real_eip !59
  store i1 false, i1* %SF, !mcsema_real_eip !59
  store i1 true, i1* %ZF, !mcsema_real_eip !59
  store i1 true, i1* %PF, !mcsema_real_eip !59
  store i1 undef, i1* %AF, !mcsema_real_eip !59
  store i64 0, i64* %XAX, !mcsema_real_eip !59
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 48
  %82 = add i64 48, %RSP_val.86, !mcsema_real_eip !60
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %83 = xor i64 %_trans_xor_53, 48, !mcsema_real_eip !60
  %84 = and i64 %83, 16, !mcsema_real_eip !60
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !60
  store i1 %85, i1* %AF, !mcsema_real_eip !60
  %86 = lshr i64 %82, 63, !mcsema_real_eip !60
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !60
  store i1 %87, i1* %SF, !mcsema_real_eip !60
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !60
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 48
  %88 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !60
  %89 = and i64 %88, %_trans_xor_53, !mcsema_real_eip !60
  %90 = lshr i64 %89, 63, !mcsema_real_eip !60
  %91 = and i64 %90, 1, !mcsema_real_eip !60
  %92 = trunc i64 %91 to i1, !mcsema_real_eip !60
  store i1 %92, i1* %OF, !mcsema_real_eip !60
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %93 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !60
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !60
  %95 = xor i1 %94, true, !mcsema_real_eip !60
  store i1 %95, i1* %PF, !mcsema_real_eip !60
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.86
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !60
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %82, i64* %XSP, !mcsema_real_eip !60
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_103 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_106 = sub i64 %_ptr_to_int_103, %_local_end_to_int_
  %_pot_address_in_parent_stack_107 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_106
  %_cond1_108 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_109 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_110 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_111 = or i1 %_cond2_1_109, %_cond2_2_110
  %_cond4_112 = icmp ule i8* %_pot_address_in_parent_stack_107, %_parent_stack_end_ptr_
  %_cond1_n_cond2_113 = and i1 %_cond1_108, %_cond2_111
  %_cond1_n_cond2_cond3_114 = and i1 %_cond1_n_cond2_113, %_cond4_112
  br i1 %_cond1_n_cond2_cond3_114, label %96, label %97

; <label>:96:                                     ; preds = %block_0xe6
  %_address_in_parent_stack_bt_116 = bitcast i8* %_pot_address_in_parent_stack_107 to i64*
  br label %97

; <label>:97:                                     ; preds = %block_0xe6, %96
  %98 = phi i64* [ %_allin_new_bt_66, %block_0xe6 ], [ %_address_in_parent_stack_bt_116, %96 ]
  %_new_load_117 = load i64, i64* %98
  %_new_int2ptr_ = inttoptr i64 %_new_load_117 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_117, i64* %XBP, !mcsema_real_eip !61
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %99 = add i64 %82, 8, !mcsema_real_eip !61
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %99, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %100 = add i64 %99, 8, !mcsema_real_eip !62
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_118 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %101, label %102

; <label>:101:                                    ; preds = %97
  %_address_in_parent_stack_bt_131 = bitcast i8* %_pot_address_in_parent_stack_122 to i64*
  br label %102

; <label>:102:                                    ; preds = %97, %101
  %103 = phi i64* [ %_allin_new_bt_70, %97 ], [ %_address_in_parent_stack_bt_131, %101 ]
  %_new_load_132 = load i64, i64* %103
  store i64 %_new_load_132, i64* %XIP, !mcsema_real_eip !62
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %100, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
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
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 25}
!10 = !{i64 28}
!11 = !{i64 34}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 46}
!16 = !{i64 48}
!17 = !{i64 51}
!18 = !{i64 55}
!19 = !{i64 58}
!20 = !{i64 60}
!21 = !{i64 63}
!22 = !{i64 66}
!23 = !{i64 69}
!24 = !{i64 72}
!25 = !{i64 77}
!26 = !{i64 87}
!27 = !{i64 90}
!28 = !{i64 94}
!29 = !{i64 96}
!30 = !{i64 100}
!31 = !{i64 103}
!32 = !{i64 107}
!33 = !{i64 111}
!34 = !{i64 115}
!35 = !{i64 119}
!36 = !{i64 121}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 133}
!40 = !{i64 134}
!41 = !{i64 144}
!42 = !{i64 145}
!43 = !{i64 148}
!44 = !{i64 152}
!45 = !{i64 159}
!46 = !{i64 166}
!47 = !{i64 170}
!48 = !{i64 176}
!49 = !{i64 180}
!50 = !{i64 187}
!51 = !{i64 194}
!52 = !{i64 201}
!53 = !{i64 208}
!54 = !{i64 211}
!55 = !{i64 216}
!56 = !{i64 219}
!57 = !{i64 222}
!58 = !{i64 225}
!59 = !{i64 230}
!60 = !{i64 232}
!61 = !{i64 236}
!62 = !{i64 237}
