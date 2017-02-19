; ModuleID = 'Output/test_2.clang.trans.bc'
source_filename = "Output/test_2.clang.bc"
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

@data_0xea = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"d\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, 24, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  %6 = load i32, i32* %5, !mcsema_real_eip !4
  %7 = zext i32 %6 to i64, !mcsema_real_eip !4
  store i64 %7, i64* %XAX, !mcsema_real_eip !4
  %8 = add i64 %1, 16, !mcsema_real_eip !5
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !5
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !5
  %11 = load i32, i32* %10, !mcsema_real_eip !5
  %12 = zext i32 %11 to i64, !mcsema_real_eip !5
  store i64 %12, i64* %R10, !mcsema_real_eip !5
  %13 = add i64 %1, -4, !mcsema_real_eip !6
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %15, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %16 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %18, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.11, -12, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %21, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %22 = add i64 %RBP_val.14, -16, !mcsema_real_eip !9
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %24, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !10
  %25 = add i64 %RBP_val.17, -20, !mcsema_real_eip !10
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %27, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !11
  %28 = add i64 %RBP_val.20, -24, !mcsema_real_eip !11
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %30, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %31 = add i64 %RBP_val.23, -28, !mcsema_real_eip !12
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !12
  %R10D.24 = bitcast i64* %R10 to i32*, !mcsema_real_eip !12
  %R10D_val.25 = load i32, i32* %R10D.24, !mcsema_real_eip !12
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !12
  store i32 %R10D_val.25, i32* %33, !mcsema_real_eip !12
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !13
  %34 = add i64 %RBP_val.26, -32, !mcsema_real_eip !13
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !13
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !13
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.28, i32* %36, !mcsema_real_eip !13
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !14
  %37 = add i64 %RBP_val.29, -4, !mcsema_real_eip !14
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !14
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !14
  %40 = load i32, i32* %39, !mcsema_real_eip !14
  %41 = zext i32 %40 to i64, !mcsema_real_eip !14
  store i64 %41, i64* %XAX, !mcsema_real_eip !14
  %42 = add i64 %RBP_val.29, -8, !mcsema_real_eip !15
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !15
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !15
  %45 = load i32, i32* %44, !mcsema_real_eip !15
  %EAX_val.32 = load i32, i32* %EAX.27, !mcsema_real_eip !15
  %46 = add i32 %EAX_val.32, %45, !mcsema_real_eip !15
  %47 = xor i32 %46, %45, !mcsema_real_eip !15
  %48 = xor i32 %47, %EAX_val.32, !mcsema_real_eip !15
  %49 = and i32 %48, 16, !mcsema_real_eip !15
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !15
  store i1 %50, i1* %AF, !mcsema_real_eip !15
  %51 = lshr i32 %46, 31, !mcsema_real_eip !15
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !15
  store i1 %52, i1* %SF, !mcsema_real_eip !15
  %53 = icmp eq i32 %46, 0, !mcsema_real_eip !15
  store i1 %53, i1* %ZF, !mcsema_real_eip !15
  %54 = xor i32 %45, %EAX_val.32, !mcsema_real_eip !15
  %55 = xor i32 %54, -1, !mcsema_real_eip !15
  %56 = and i32 %55, %47, !mcsema_real_eip !15
  %57 = lshr i32 %56, 31, !mcsema_real_eip !15
  %58 = and i32 %57, 1, !mcsema_real_eip !15
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !15
  store i1 %59, i1* %OF, !mcsema_real_eip !15
  %60 = trunc i32 %46 to i8, !mcsema_real_eip !15
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !15
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !15
  %63 = xor i1 %62, true, !mcsema_real_eip !15
  store i1 %63, i1* %PF, !mcsema_real_eip !15
  %64 = icmp ult i32 %46, %45, !mcsema_real_eip !15
  store i1 %64, i1* %CF, !mcsema_real_eip !15
  %65 = zext i32 %46 to i64, !mcsema_real_eip !15
  store i64 %65, i64* %XAX, !mcsema_real_eip !15
  %66 = add i64 %RBP_val.29, -12, !mcsema_real_eip !16
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !16
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !16
  %69 = load i32, i32* %68, !mcsema_real_eip !16
  %EAX_val.35 = load i32, i32* %EAX.27, !mcsema_real_eip !16
  %70 = add i32 %EAX_val.35, %69, !mcsema_real_eip !16
  %71 = xor i32 %70, %69, !mcsema_real_eip !16
  %72 = xor i32 %71, %EAX_val.35, !mcsema_real_eip !16
  %73 = and i32 %72, 16, !mcsema_real_eip !16
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !16
  store i1 %74, i1* %AF, !mcsema_real_eip !16
  %75 = lshr i32 %70, 31, !mcsema_real_eip !16
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !16
  store i1 %76, i1* %SF, !mcsema_real_eip !16
  %77 = icmp eq i32 %70, 0, !mcsema_real_eip !16
  store i1 %77, i1* %ZF, !mcsema_real_eip !16
  %78 = xor i32 %69, %EAX_val.35, !mcsema_real_eip !16
  %79 = xor i32 %78, -1, !mcsema_real_eip !16
  %80 = and i32 %79, %71, !mcsema_real_eip !16
  %81 = lshr i32 %80, 31, !mcsema_real_eip !16
  %82 = and i32 %81, 1, !mcsema_real_eip !16
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !16
  store i1 %83, i1* %OF, !mcsema_real_eip !16
  %84 = trunc i32 %70 to i8, !mcsema_real_eip !16
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !16
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !16
  %87 = xor i1 %86, true, !mcsema_real_eip !16
  store i1 %87, i1* %PF, !mcsema_real_eip !16
  %88 = icmp ult i32 %70, %69, !mcsema_real_eip !16
  store i1 %88, i1* %CF, !mcsema_real_eip !16
  %89 = zext i32 %70 to i64, !mcsema_real_eip !16
  store i64 %89, i64* %XAX, !mcsema_real_eip !16
  %90 = add i64 %RBP_val.29, -16, !mcsema_real_eip !17
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !17
  %92 = inttoptr i64 %90 to i32*, !mcsema_real_eip !17
  %93 = load i32, i32* %92, !mcsema_real_eip !17
  %EAX_val.38 = load i32, i32* %EAX.27, !mcsema_real_eip !17
  %94 = add i32 %EAX_val.38, %93, !mcsema_real_eip !17
  %95 = xor i32 %94, %93, !mcsema_real_eip !17
  %96 = xor i32 %95, %EAX_val.38, !mcsema_real_eip !17
  %97 = and i32 %96, 16, !mcsema_real_eip !17
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !17
  store i1 %98, i1* %AF, !mcsema_real_eip !17
  %99 = lshr i32 %94, 31, !mcsema_real_eip !17
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !17
  store i1 %100, i1* %SF, !mcsema_real_eip !17
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !17
  store i1 %101, i1* %ZF, !mcsema_real_eip !17
  %102 = xor i32 %93, %EAX_val.38, !mcsema_real_eip !17
  %103 = xor i32 %102, -1, !mcsema_real_eip !17
  %104 = and i32 %103, %95, !mcsema_real_eip !17
  %105 = lshr i32 %104, 31, !mcsema_real_eip !17
  %106 = and i32 %105, 1, !mcsema_real_eip !17
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !17
  store i1 %107, i1* %OF, !mcsema_real_eip !17
  %108 = trunc i32 %94 to i8, !mcsema_real_eip !17
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !17
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !17
  %111 = xor i1 %110, true, !mcsema_real_eip !17
  store i1 %111, i1* %PF, !mcsema_real_eip !17
  %112 = icmp ult i32 %94, %93, !mcsema_real_eip !17
  store i1 %112, i1* %CF, !mcsema_real_eip !17
  %113 = zext i32 %94 to i64, !mcsema_real_eip !17
  store i64 %113, i64* %XAX, !mcsema_real_eip !17
  %114 = add i64 %RBP_val.29, -20, !mcsema_real_eip !18
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !18
  %116 = inttoptr i64 %114 to i32*, !mcsema_real_eip !18
  %117 = load i32, i32* %116, !mcsema_real_eip !18
  %EAX_val.41 = load i32, i32* %EAX.27, !mcsema_real_eip !18
  %118 = add i32 %EAX_val.41, %117, !mcsema_real_eip !18
  %119 = xor i32 %118, %117, !mcsema_real_eip !18
  %120 = xor i32 %119, %EAX_val.41, !mcsema_real_eip !18
  %121 = and i32 %120, 16, !mcsema_real_eip !18
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !18
  store i1 %122, i1* %AF, !mcsema_real_eip !18
  %123 = lshr i32 %118, 31, !mcsema_real_eip !18
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !18
  store i1 %124, i1* %SF, !mcsema_real_eip !18
  %125 = icmp eq i32 %118, 0, !mcsema_real_eip !18
  store i1 %125, i1* %ZF, !mcsema_real_eip !18
  %126 = xor i32 %117, %EAX_val.41, !mcsema_real_eip !18
  %127 = xor i32 %126, -1, !mcsema_real_eip !18
  %128 = and i32 %127, %119, !mcsema_real_eip !18
  %129 = lshr i32 %128, 31, !mcsema_real_eip !18
  %130 = and i32 %129, 1, !mcsema_real_eip !18
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !18
  store i1 %131, i1* %OF, !mcsema_real_eip !18
  %132 = trunc i32 %118 to i8, !mcsema_real_eip !18
  %133 = call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !18
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !18
  %135 = xor i1 %134, true, !mcsema_real_eip !18
  store i1 %135, i1* %PF, !mcsema_real_eip !18
  %136 = icmp ult i32 %118, %117, !mcsema_real_eip !18
  store i1 %136, i1* %CF, !mcsema_real_eip !18
  %137 = zext i32 %118 to i64, !mcsema_real_eip !18
  store i64 %137, i64* %XAX, !mcsema_real_eip !18
  %138 = add i64 %RBP_val.29, -24, !mcsema_real_eip !19
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !19
  %140 = inttoptr i64 %138 to i32*, !mcsema_real_eip !19
  %141 = load i32, i32* %140, !mcsema_real_eip !19
  %EAX_val.44 = load i32, i32* %EAX.27, !mcsema_real_eip !19
  %142 = add i32 %EAX_val.44, %141, !mcsema_real_eip !19
  %143 = xor i32 %142, %141, !mcsema_real_eip !19
  %144 = xor i32 %143, %EAX_val.44, !mcsema_real_eip !19
  %145 = and i32 %144, 16, !mcsema_real_eip !19
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !19
  store i1 %146, i1* %AF, !mcsema_real_eip !19
  %147 = lshr i32 %142, 31, !mcsema_real_eip !19
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !19
  store i1 %148, i1* %SF, !mcsema_real_eip !19
  %149 = icmp eq i32 %142, 0, !mcsema_real_eip !19
  store i1 %149, i1* %ZF, !mcsema_real_eip !19
  %150 = xor i32 %141, %EAX_val.44, !mcsema_real_eip !19
  %151 = xor i32 %150, -1, !mcsema_real_eip !19
  %152 = and i32 %151, %143, !mcsema_real_eip !19
  %153 = lshr i32 %152, 31, !mcsema_real_eip !19
  %154 = and i32 %153, 1, !mcsema_real_eip !19
  %155 = trunc i32 %154 to i1, !mcsema_real_eip !19
  store i1 %155, i1* %OF, !mcsema_real_eip !19
  %156 = trunc i32 %142 to i8, !mcsema_real_eip !19
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !19
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !19
  %159 = xor i1 %158, true, !mcsema_real_eip !19
  store i1 %159, i1* %PF, !mcsema_real_eip !19
  %160 = icmp ult i32 %142, %141, !mcsema_real_eip !19
  store i1 %160, i1* %CF, !mcsema_real_eip !19
  %161 = zext i32 %142 to i64, !mcsema_real_eip !19
  store i64 %161, i64* %XAX, !mcsema_real_eip !19
  %162 = add i64 %RBP_val.29, -28, !mcsema_real_eip !20
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !20
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !20
  %165 = load i32, i32* %164, !mcsema_real_eip !20
  %EAX_val.47 = load i32, i32* %EAX.27, !mcsema_real_eip !20
  %166 = add i32 %EAX_val.47, %165, !mcsema_real_eip !20
  %167 = xor i32 %166, %165, !mcsema_real_eip !20
  %168 = xor i32 %167, %EAX_val.47, !mcsema_real_eip !20
  %169 = and i32 %168, 16, !mcsema_real_eip !20
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !20
  store i1 %170, i1* %AF, !mcsema_real_eip !20
  %171 = lshr i32 %166, 31, !mcsema_real_eip !20
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !20
  store i1 %172, i1* %SF, !mcsema_real_eip !20
  %173 = icmp eq i32 %166, 0, !mcsema_real_eip !20
  store i1 %173, i1* %ZF, !mcsema_real_eip !20
  %174 = xor i32 %165, %EAX_val.47, !mcsema_real_eip !20
  %175 = xor i32 %174, -1, !mcsema_real_eip !20
  %176 = and i32 %175, %167, !mcsema_real_eip !20
  %177 = lshr i32 %176, 31, !mcsema_real_eip !20
  %178 = and i32 %177, 1, !mcsema_real_eip !20
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !20
  store i1 %179, i1* %OF, !mcsema_real_eip !20
  %180 = trunc i32 %166 to i8, !mcsema_real_eip !20
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !20
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !20
  %183 = xor i1 %182, true, !mcsema_real_eip !20
  store i1 %183, i1* %PF, !mcsema_real_eip !20
  %184 = icmp ult i32 %166, %165, !mcsema_real_eip !20
  store i1 %184, i1* %CF, !mcsema_real_eip !20
  %185 = zext i32 %166 to i64, !mcsema_real_eip !20
  store i64 %185, i64* %XAX, !mcsema_real_eip !20
  %186 = add i64 %RBP_val.29, -36, !mcsema_real_eip !21
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !21
  %EAX_val.50 = load i32, i32* %EAX.27, !mcsema_real_eip !21
  %188 = inttoptr i64 %186 to i32*, !mcsema_real_eip !21
  store i32 %EAX_val.50, i32* %188, !mcsema_real_eip !21
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !22
  %189 = add i64 %RBP_val.51, -36, !mcsema_real_eip !22
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !22
  %191 = inttoptr i64 %189 to i32*, !mcsema_real_eip !22
  %192 = load i32, i32* %191, !mcsema_real_eip !22
  %193 = sub i32 %192, 40, !mcsema_real_eip !22
  %194 = xor i32 %193, %192, !mcsema_real_eip !22
  %195 = xor i32 %194, 40, !mcsema_real_eip !22
  %196 = and i32 %195, 16, !mcsema_real_eip !22
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !22
  store i1 %197, i1* %AF, !mcsema_real_eip !22
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !22
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !22
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !22
  %201 = xor i1 %200, true, !mcsema_real_eip !22
  store i1 %201, i1* %PF, !mcsema_real_eip !22
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !22
  store i1 %202, i1* %ZF, !mcsema_real_eip !22
  %203 = lshr i32 %193, 31, !mcsema_real_eip !22
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !22
  store i1 %204, i1* %SF, !mcsema_real_eip !22
  %205 = icmp ult i32 %192, 40, !mcsema_real_eip !22
  store i1 %205, i1* %CF, !mcsema_real_eip !22
  %206 = xor i32 %192, 40, !mcsema_real_eip !22
  %207 = and i32 %206, %194, !mcsema_real_eip !22
  %208 = lshr i32 %207, 31, !mcsema_real_eip !22
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !22
  store i1 %209, i1* %OF, !mcsema_real_eip !22
  %210 = icmp eq i1 %204, %209, !mcsema_real_eip !23
  %211 = icmp eq i1 %210, false, !mcsema_real_eip !23
  %212 = or i1 %202, %211, !mcsema_real_eip !23
  br i1 %212, label %block_0x56, label %block_0x48, !mcsema_real_eip !23

block_0x48:                                       ; preds = %block_0x0
  %213 = load i32, i32* %191, !mcsema_real_eip !24
  %214 = zext i32 %213 to i64, !mcsema_real_eip !24
  store i64 %214, i64* %XAX, !mcsema_real_eip !24
  %215 = add i64 %RBP_val.51, -32, !mcsema_real_eip !25
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !25
  %217 = inttoptr i64 %215 to i32*, !mcsema_real_eip !25
  %218 = load i32, i32* %217, !mcsema_real_eip !25
  %EAX_val.55 = load i32, i32* %EAX.27, !mcsema_real_eip !25
  %219 = add i32 %EAX_val.55, %218, !mcsema_real_eip !25
  %220 = xor i32 %219, %218, !mcsema_real_eip !25
  %221 = xor i32 %220, %EAX_val.55, !mcsema_real_eip !25
  %222 = and i32 %221, 16, !mcsema_real_eip !25
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !25
  store i1 %223, i1* %AF, !mcsema_real_eip !25
  %224 = lshr i32 %219, 31, !mcsema_real_eip !25
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !25
  store i1 %225, i1* %SF, !mcsema_real_eip !25
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !25
  store i1 %226, i1* %ZF, !mcsema_real_eip !25
  %227 = xor i32 %218, %EAX_val.55, !mcsema_real_eip !25
  %228 = xor i32 %227, -1, !mcsema_real_eip !25
  %229 = and i32 %228, %220, !mcsema_real_eip !25
  %230 = lshr i32 %229, 31, !mcsema_real_eip !25
  %231 = and i32 %230, 1, !mcsema_real_eip !25
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !25
  store i1 %232, i1* %OF, !mcsema_real_eip !25
  %233 = trunc i32 %219 to i8, !mcsema_real_eip !25
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !25
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !25
  %236 = xor i1 %235, true, !mcsema_real_eip !25
  store i1 %236, i1* %PF, !mcsema_real_eip !25
  %237 = icmp ult i32 %219, %218, !mcsema_real_eip !25
  store i1 %237, i1* %CF, !mcsema_real_eip !25
  %238 = zext i32 %219 to i64, !mcsema_real_eip !25
  store i64 %238, i64* %XAX, !mcsema_real_eip !25
  %239 = add i64 %RBP_val.51, -40, !mcsema_real_eip !26
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !26
  %EAX_val.58 = load i32, i32* %EAX.27, !mcsema_real_eip !26
  %241 = inttoptr i64 %239 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.58, i32* %241, !mcsema_real_eip !26
  br label %block_0x5f, !mcsema_real_eip !27

block_0x56:                                       ; preds = %block_0x0
  %242 = load i32, i32* %191, !mcsema_real_eip !28
  %243 = zext i32 %242 to i64, !mcsema_real_eip !28
  store i64 %243, i64* %XAX, !mcsema_real_eip !28
  %244 = add i64 %RBP_val.51, -32, !mcsema_real_eip !29
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !29
  %EAX_val.62 = load i32, i32* %EAX.27, !mcsema_real_eip !29
  %246 = inttoptr i64 %244 to i32*, !mcsema_real_eip !29
  %247 = load i32, i32* %246, !mcsema_real_eip !29
  %248 = sub i32 %EAX_val.62, %247, !mcsema_real_eip !29
  %249 = xor i32 %248, %EAX_val.62, !mcsema_real_eip !29
  %250 = xor i32 %249, %247, !mcsema_real_eip !29
  %251 = and i32 %250, 16, !mcsema_real_eip !29
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !29
  store i1 %252, i1* %AF, !mcsema_real_eip !29
  %253 = trunc i32 %248 to i8, !mcsema_real_eip !29
  %254 = call i8 @llvm.ctpop.i8(i8 %253), !mcsema_real_eip !29
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !29
  %256 = xor i1 %255, true, !mcsema_real_eip !29
  store i1 %256, i1* %PF, !mcsema_real_eip !29
  %257 = icmp eq i32 %248, 0, !mcsema_real_eip !29
  store i1 %257, i1* %ZF, !mcsema_real_eip !29
  %258 = lshr i32 %248, 31, !mcsema_real_eip !29
  %259 = trunc i32 %258 to i1, !mcsema_real_eip !29
  store i1 %259, i1* %SF, !mcsema_real_eip !29
  %260 = icmp ult i32 %EAX_val.62, %247, !mcsema_real_eip !29
  store i1 %260, i1* %CF, !mcsema_real_eip !29
  %261 = xor i32 %EAX_val.62, %247, !mcsema_real_eip !29
  %262 = and i32 %261, %249, !mcsema_real_eip !29
  %263 = lshr i32 %262, 31, !mcsema_real_eip !29
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !29
  store i1 %264, i1* %OF, !mcsema_real_eip !29
  %265 = zext i32 %248 to i64, !mcsema_real_eip !29
  store i64 %265, i64* %XAX, !mcsema_real_eip !29
  %266 = add i64 %RBP_val.51, -40, !mcsema_real_eip !30
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !30
  %EAX_val.65 = load i32, i32* %EAX.27, !mcsema_real_eip !30
  %268 = inttoptr i64 %266 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.65, i32* %268, !mcsema_real_eip !30
  br label %block_0x5f, !mcsema_real_eip !31

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !31
  %269 = add i64 %RBP_val.66, -40, !mcsema_real_eip !31
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !31
  %271 = inttoptr i64 %269 to i32*, !mcsema_real_eip !31
  %272 = load i32, i32* %271, !mcsema_real_eip !31
  %273 = zext i32 %272 to i64, !mcsema_real_eip !31
  store i64 %273, i64* %XAX, !mcsema_real_eip !31
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !32
  %274 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !32
  %275 = load i64, i64* %274, !mcsema_real_eip !32
  store i64 %275, i64* %XBP, !mcsema_real_eip !32
  %276 = add i64 %RSP_val.67, 8, !mcsema_real_eip !32
  store i64 %276, i64* %XSP, !mcsema_real_eip !32
  %277 = add i64 %276, 8, !mcsema_real_eip !33
  %278 = inttoptr i64 %276 to i64*, !mcsema_real_eip !33
  %279 = load i64, i64* %278, !mcsema_real_eip !33
  store i64 %279, i64* %XIP, !mcsema_real_eip !33
  store i64 %277, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.70, 8, !mcsema_real_eip !34
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.72, 48, !mcsema_real_eip !36
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !36
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !36
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !36
  %12 = lshr i64 %11, 63, !mcsema_real_eip !36
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !36
  store i1 %13, i1* %OF, !mcsema_real_eip !36
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  store i64 30, i64* %XDX, !mcsema_real_eip !39
  store i64 40, i64* %XCX, !mcsema_real_eip !40
  store i64 50, i64* %R8, !mcsema_real_eip !41
  store i64 60, i64* %R9, !mcsema_real_eip !42
  store i64 70, i64* %XAX, !mcsema_real_eip !43
  store i64 80, i64* %R10, !mcsema_real_eip !44
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !45
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %15, !mcsema_real_eip !45
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !46
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !46
  store i32 70, i32* %17, !mcsema_real_eip !46
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !47
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !47
  store i32 80, i32* %19, !mcsema_real_eip !47
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !48
  %R10D_val.78 = load i32, i32* %R10D.77, !mcsema_real_eip !48
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !48
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !48
  store i32 %R10D_val.78, i32* %21, !mcsema_real_eip !48
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.81 = load i32, i32* %EAX.80, !mcsema_real_eip !49
  %22 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !49
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.81, i32* %23, !mcsema_real_eip !49
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %24 = sub i64 %RSP_val.82, 8, !mcsema_real_eip !50
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, !mcsema_real_eip !50
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %24, i64* %XSP, !mcsema_real_eip !50
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_29, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_80)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, !mcsema_real_eip !51
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX_val.85 = load i32, i32* %EAX.80, !mcsema_real_eip !52
  %25 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !52
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.85, i32* %26, !mcsema_real_eip !52
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %27 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !53
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !53
  %29 = load i32, i32* %28, !mcsema_real_eip !53
  %30 = zext i32 %29 to i64, !mcsema_real_eip !53
  store i64 %30, i64* %XSI, !mcsema_real_eip !53
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.87, !mcsema_real_eip !54
  %RDI_val.88 = load i64, i64* %XDI, !mcsema_real_eip !55
  %RDX_val.90 = load i64, i64* %XDX, !mcsema_real_eip !55
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !55
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !55
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !55
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_38 = bitcast i8* %_load_rsp_ptr_37 to i64*
  %31 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !55
  %_new_gep_39 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %32 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !55
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %33 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !55
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %34 = load i64, i64* %_allin_new_bt_44, !mcsema_real_eip !55
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %35 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !55
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %36 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !55
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %37 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !55
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !55
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %37, i64* %XSP, !mcsema_real_eip !55
  %38 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %30, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36)
  %_rsp_fix_82 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_83 = getelementptr i8, i8* %_rsp_fix_82, i64 8
  store i8* %_gep_fix_83, i8** %_RSP_ptr_
  store i64 %38, i64* %XAX, !mcsema_real_eip !55
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !56
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !56
  %41 = load i32, i32* %40, !mcsema_real_eip !56
  %42 = zext i32 %41 to i64, !mcsema_real_eip !56
  store i64 %42, i64* %XCX, !mcsema_real_eip !56
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -20
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %EAX_val.99 = load i32, i32* %EAX.80, !mcsema_real_eip !57
  %43 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !57
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !57
  store i32 %EAX_val.99, i32* %44, !mcsema_real_eip !57
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !58
  %ECX_val.101 = load i32, i32* %ECX.100, !mcsema_real_eip !58
  %45 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !58
  store i64 %45, i64* %XAX, !mcsema_real_eip !58
  %_load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !59
  %_new_gep_59 = getelementptr i8, i8* %_load_rsp_ptr_58, i64 48
  %46 = add i64 48, %RSP_val.102, !mcsema_real_eip !59
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %47 = xor i64 %_trans_xor_62, 48, !mcsema_real_eip !59
  %48 = and i64 %47, 16, !mcsema_real_eip !59
  %49 = icmp ne i64 %48, 0, !mcsema_real_eip !59
  store i1 %49, i1* %AF, !mcsema_real_eip !59
  %50 = lshr i64 %46, 63, !mcsema_real_eip !59
  %51 = trunc i64 %50 to i1, !mcsema_real_eip !59
  store i1 %51, i1* %SF, !mcsema_real_eip !59
  %_trans_icmp_eq_64 = icmp eq i64 %_trans_p2i_60, 0
  store i1 %_trans_icmp_eq_64, i1* %ZF, !mcsema_real_eip !59
  %_trans_xor_66 = xor i64 %_trans_p2i_61, 48
  %52 = xor i64 %_trans_xor_66, -1, !mcsema_real_eip !59
  %53 = and i64 %52, %_trans_xor_62, !mcsema_real_eip !59
  %54 = lshr i64 %53, 63, !mcsema_real_eip !59
  %55 = and i64 %54, 1, !mcsema_real_eip !59
  %56 = trunc i64 %55 to i1, !mcsema_real_eip !59
  store i1 %56, i1* %OF, !mcsema_real_eip !59
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %57 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !59
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !59
  %59 = xor i1 %58, true, !mcsema_real_eip !59
  store i1 %59, i1* %PF, !mcsema_real_eip !59
  %_trans_icmp_ne_73 = icmp ne i64 %_trans_p2i_60, %RSP_val.102
  store i1 %_trans_icmp_ne_73, i1* %CF, !mcsema_real_eip !59
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !59
  %_allin_new_bt_75 = bitcast i8* %_new_gep_59 to i64*
  %60 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !60
  %_new_int2ptr_ = inttoptr i64 %60 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %60, i64* %XBP, !mcsema_real_eip !60
  %_new_gep_76 = getelementptr i8, i8* %_new_gep_59, i64 8
  %61 = add i64 %46, 8, !mcsema_real_eip !60
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_
  store i64 %61, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_78 = getelementptr i8, i8* %_new_gep_76, i64 8
  %62 = add i64 %61, 8, !mcsema_real_eip !61
  %_allin_new_bt_79 = bitcast i8* %_new_gep_76 to i64*
  %63 = load i64, i64* %_allin_new_bt_79, !mcsema_real_eip !61
  store i64 %63, i64* %XIP, !mcsema_real_eip !61
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !61
  ret void, !mcsema_real_eip !61
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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %3 to i8*
  %_offset_above_rbp_ = sub i64 %2, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %4, label %5

; <label>:4:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %5

; <label>:5:                                      ; preds = %block_0x0, %4
  %6 = phi i32* [ %3, %block_0x0 ], [ %_address_in_parent_stack_bt_, %4 ]
  %_new_load_ = load i32, i32* %6
  %7 = zext i32 %_new_load_ to i64, !mcsema_real_eip !4
  store i64 %7, i64* %XAX, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %8 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !5
  %_ptr_bt_88 = bitcast i32* %9 to i8*
  %_offset_above_rbp_89 = sub i64 %8, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_ptr_bt_88, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_ptr_bt_88, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_ptr_bt_88, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  br i1 %_cond1_n_cond2_cond3_97, label %10, label %11

; <label>:10:                                     ; preds = %5
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i32*
  br label %11

; <label>:11:                                     ; preds = %5, %10
  %12 = phi i32* [ %9, %5 ], [ %_address_in_parent_stack_bt_99, %10 ]
  %_new_load_100 = load i32, i32* %12
  %13 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !5
  store i64 %13, i64* %R10, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %14 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %16 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -12
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %18 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %20 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %21, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -20
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %22 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %23, !mcsema_real_eip !10
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %24 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %25, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -28
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %R10D.24 = bitcast i64* %R10 to i32*, !mcsema_real_eip !12
  %R10D_val.25 = load i32, i32* %R10D.24, !mcsema_real_eip !12
  %26 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !12
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !12
  store i32 %R10D_val.25, i32* %27, !mcsema_real_eip !12
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -32
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !13
  %28 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !13
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.28, i32* %29, !mcsema_real_eip !13
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -4
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %30 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !14
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !14
  %_ptr_bt_103 = bitcast i32* %31 to i8*
  %_offset_above_rbp_104 = sub i64 %30, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %32, label %33

; <label>:32:                                     ; preds = %11
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %33

; <label>:33:                                     ; preds = %11, %32
  %34 = phi i32* [ %31, %11 ], [ %_address_in_parent_stack_bt_114, %32 ]
  %_new_load_115 = load i32, i32* %34
  %35 = zext i32 %_new_load_115 to i64, !mcsema_real_eip !14
  store i64 %35, i64* %XAX, !mcsema_real_eip !14
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -8
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %36 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !15
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !15
  %_ptr_bt_118 = bitcast i32* %37 to i8*
  %_offset_above_rbp_119 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_ptr_bt_118, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_ptr_bt_118, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_ptr_bt_118, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %38, label %39

; <label>:38:                                     ; preds = %33
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i32*
  br label %39

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i32* [ %37, %33 ], [ %_address_in_parent_stack_bt_129, %38 ]
  %_new_load_130 = load i32, i32* %40
  %EAX_val.32 = load i32, i32* %EAX.27, !mcsema_real_eip !15
  %41 = add i32 %EAX_val.32, %_new_load_130, !mcsema_real_eip !15
  %42 = xor i32 %41, %_new_load_130, !mcsema_real_eip !15
  %43 = xor i32 %42, %EAX_val.32, !mcsema_real_eip !15
  %44 = and i32 %43, 16, !mcsema_real_eip !15
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !15
  store i1 %45, i1* %AF, !mcsema_real_eip !15
  %46 = lshr i32 %41, 31, !mcsema_real_eip !15
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !15
  store i1 %47, i1* %SF, !mcsema_real_eip !15
  %48 = icmp eq i32 %41, 0, !mcsema_real_eip !15
  store i1 %48, i1* %ZF, !mcsema_real_eip !15
  %49 = xor i32 %_new_load_130, %EAX_val.32, !mcsema_real_eip !15
  %50 = xor i32 %49, -1, !mcsema_real_eip !15
  %51 = and i32 %50, %42, !mcsema_real_eip !15
  %52 = lshr i32 %51, 31, !mcsema_real_eip !15
  %53 = and i32 %52, 1, !mcsema_real_eip !15
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !15
  store i1 %54, i1* %OF, !mcsema_real_eip !15
  %55 = trunc i32 %41 to i8, !mcsema_real_eip !15
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !15
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !15
  %58 = xor i1 %57, true, !mcsema_real_eip !15
  store i1 %58, i1* %PF, !mcsema_real_eip !15
  %59 = icmp ult i32 %41, %_new_load_130, !mcsema_real_eip !15
  store i1 %59, i1* %CF, !mcsema_real_eip !15
  %60 = zext i32 %41 to i64, !mcsema_real_eip !15
  store i64 %60, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -12
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !16
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !16
  %_ptr_bt_133 = bitcast i32* %62 to i8*
  %_offset_above_rbp_134 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_ptr_bt_133, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_ptr_bt_133, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_ptr_bt_133, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %63, label %64

; <label>:63:                                     ; preds = %39
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i32*
  br label %64

; <label>:64:                                     ; preds = %39, %63
  %65 = phi i32* [ %62, %39 ], [ %_address_in_parent_stack_bt_144, %63 ]
  %_new_load_145 = load i32, i32* %65
  %EAX_val.35 = load i32, i32* %EAX.27, !mcsema_real_eip !16
  %66 = add i32 %EAX_val.35, %_new_load_145, !mcsema_real_eip !16
  %67 = xor i32 %66, %_new_load_145, !mcsema_real_eip !16
  %68 = xor i32 %67, %EAX_val.35, !mcsema_real_eip !16
  %69 = and i32 %68, 16, !mcsema_real_eip !16
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !16
  store i1 %70, i1* %AF, !mcsema_real_eip !16
  %71 = lshr i32 %66, 31, !mcsema_real_eip !16
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !16
  store i1 %72, i1* %SF, !mcsema_real_eip !16
  %73 = icmp eq i32 %66, 0, !mcsema_real_eip !16
  store i1 %73, i1* %ZF, !mcsema_real_eip !16
  %74 = xor i32 %_new_load_145, %EAX_val.35, !mcsema_real_eip !16
  %75 = xor i32 %74, -1, !mcsema_real_eip !16
  %76 = and i32 %75, %67, !mcsema_real_eip !16
  %77 = lshr i32 %76, 31, !mcsema_real_eip !16
  %78 = and i32 %77, 1, !mcsema_real_eip !16
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !16
  store i1 %79, i1* %OF, !mcsema_real_eip !16
  %80 = trunc i32 %66 to i8, !mcsema_real_eip !16
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !16
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !16
  %83 = xor i1 %82, true, !mcsema_real_eip !16
  store i1 %83, i1* %PF, !mcsema_real_eip !16
  %84 = icmp ult i32 %66, %_new_load_145, !mcsema_real_eip !16
  store i1 %84, i1* %CF, !mcsema_real_eip !16
  %85 = zext i32 %66 to i64, !mcsema_real_eip !16
  store i64 %85, i64* %XAX, !mcsema_real_eip !16
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -16
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %86 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !17
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !17
  %_ptr_bt_148 = bitcast i32* %87 to i8*
  %_offset_above_rbp_149 = sub i64 %86, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_ptr_bt_148, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_ptr_bt_148, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_ptr_bt_148, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %88, label %89

; <label>:88:                                     ; preds = %64
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  br label %89

; <label>:89:                                     ; preds = %64, %88
  %90 = phi i32* [ %87, %64 ], [ %_address_in_parent_stack_bt_159, %88 ]
  %_new_load_160 = load i32, i32* %90
  %EAX_val.38 = load i32, i32* %EAX.27, !mcsema_real_eip !17
  %91 = add i32 %EAX_val.38, %_new_load_160, !mcsema_real_eip !17
  %92 = xor i32 %91, %_new_load_160, !mcsema_real_eip !17
  %93 = xor i32 %92, %EAX_val.38, !mcsema_real_eip !17
  %94 = and i32 %93, 16, !mcsema_real_eip !17
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !17
  store i1 %95, i1* %AF, !mcsema_real_eip !17
  %96 = lshr i32 %91, 31, !mcsema_real_eip !17
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !17
  store i1 %97, i1* %SF, !mcsema_real_eip !17
  %98 = icmp eq i32 %91, 0, !mcsema_real_eip !17
  store i1 %98, i1* %ZF, !mcsema_real_eip !17
  %99 = xor i32 %_new_load_160, %EAX_val.38, !mcsema_real_eip !17
  %100 = xor i32 %99, -1, !mcsema_real_eip !17
  %101 = and i32 %100, %92, !mcsema_real_eip !17
  %102 = lshr i32 %101, 31, !mcsema_real_eip !17
  %103 = and i32 %102, 1, !mcsema_real_eip !17
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !17
  store i1 %104, i1* %OF, !mcsema_real_eip !17
  %105 = trunc i32 %91 to i8, !mcsema_real_eip !17
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !17
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !17
  %108 = xor i1 %107, true, !mcsema_real_eip !17
  store i1 %108, i1* %PF, !mcsema_real_eip !17
  %109 = icmp ult i32 %91, %_new_load_160, !mcsema_real_eip !17
  store i1 %109, i1* %CF, !mcsema_real_eip !17
  %110 = zext i32 %91 to i64, !mcsema_real_eip !17
  store i64 %110, i64* %XAX, !mcsema_real_eip !17
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -20
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %111 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !18
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !18
  %_ptr_bt_163 = bitcast i32* %112 to i8*
  %_offset_above_rbp_164 = sub i64 %111, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_ptr_bt_163, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_ptr_bt_163, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_ptr_bt_163, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %113, label %114

; <label>:113:                                    ; preds = %89
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_165 to i32*
  br label %114

; <label>:114:                                    ; preds = %89, %113
  %115 = phi i32* [ %112, %89 ], [ %_address_in_parent_stack_bt_174, %113 ]
  %_new_load_175 = load i32, i32* %115
  %EAX_val.41 = load i32, i32* %EAX.27, !mcsema_real_eip !18
  %116 = add i32 %EAX_val.41, %_new_load_175, !mcsema_real_eip !18
  %117 = xor i32 %116, %_new_load_175, !mcsema_real_eip !18
  %118 = xor i32 %117, %EAX_val.41, !mcsema_real_eip !18
  %119 = and i32 %118, 16, !mcsema_real_eip !18
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !18
  store i1 %120, i1* %AF, !mcsema_real_eip !18
  %121 = lshr i32 %116, 31, !mcsema_real_eip !18
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !18
  store i1 %122, i1* %SF, !mcsema_real_eip !18
  %123 = icmp eq i32 %116, 0, !mcsema_real_eip !18
  store i1 %123, i1* %ZF, !mcsema_real_eip !18
  %124 = xor i32 %_new_load_175, %EAX_val.41, !mcsema_real_eip !18
  %125 = xor i32 %124, -1, !mcsema_real_eip !18
  %126 = and i32 %125, %117, !mcsema_real_eip !18
  %127 = lshr i32 %126, 31, !mcsema_real_eip !18
  %128 = and i32 %127, 1, !mcsema_real_eip !18
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !18
  store i1 %129, i1* %OF, !mcsema_real_eip !18
  %130 = trunc i32 %116 to i8, !mcsema_real_eip !18
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !18
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !18
  %133 = xor i1 %132, true, !mcsema_real_eip !18
  store i1 %133, i1* %PF, !mcsema_real_eip !18
  %134 = icmp ult i32 %116, %_new_load_175, !mcsema_real_eip !18
  store i1 %134, i1* %CF, !mcsema_real_eip !18
  %135 = zext i32 %116 to i64, !mcsema_real_eip !18
  store i64 %135, i64* %XAX, !mcsema_real_eip !18
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %136 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !19
  %137 = inttoptr i64 %136 to i32*, !mcsema_real_eip !19
  %_ptr_bt_178 = bitcast i32* %137 to i8*
  %_offset_above_rbp_179 = sub i64 %136, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_ptr_bt_178, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_ptr_bt_178, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_ptr_bt_178, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %138, label %139

; <label>:138:                                    ; preds = %114
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i32*
  br label %139

; <label>:139:                                    ; preds = %114, %138
  %140 = phi i32* [ %137, %114 ], [ %_address_in_parent_stack_bt_189, %138 ]
  %_new_load_190 = load i32, i32* %140
  %EAX_val.44 = load i32, i32* %EAX.27, !mcsema_real_eip !19
  %141 = add i32 %EAX_val.44, %_new_load_190, !mcsema_real_eip !19
  %142 = xor i32 %141, %_new_load_190, !mcsema_real_eip !19
  %143 = xor i32 %142, %EAX_val.44, !mcsema_real_eip !19
  %144 = and i32 %143, 16, !mcsema_real_eip !19
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !19
  store i1 %145, i1* %AF, !mcsema_real_eip !19
  %146 = lshr i32 %141, 31, !mcsema_real_eip !19
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !19
  store i1 %147, i1* %SF, !mcsema_real_eip !19
  %148 = icmp eq i32 %141, 0, !mcsema_real_eip !19
  store i1 %148, i1* %ZF, !mcsema_real_eip !19
  %149 = xor i32 %_new_load_190, %EAX_val.44, !mcsema_real_eip !19
  %150 = xor i32 %149, -1, !mcsema_real_eip !19
  %151 = and i32 %150, %142, !mcsema_real_eip !19
  %152 = lshr i32 %151, 31, !mcsema_real_eip !19
  %153 = and i32 %152, 1, !mcsema_real_eip !19
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !19
  store i1 %154, i1* %OF, !mcsema_real_eip !19
  %155 = trunc i32 %141 to i8, !mcsema_real_eip !19
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !19
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !19
  %158 = xor i1 %157, true, !mcsema_real_eip !19
  store i1 %158, i1* %PF, !mcsema_real_eip !19
  %159 = icmp ult i32 %141, %_new_load_190, !mcsema_real_eip !19
  store i1 %159, i1* %CF, !mcsema_real_eip !19
  %160 = zext i32 %141 to i64, !mcsema_real_eip !19
  store i64 %160, i64* %XAX, !mcsema_real_eip !19
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -28
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %161 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !20
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !20
  %_ptr_bt_193 = bitcast i32* %162 to i8*
  %_offset_above_rbp_194 = sub i64 %161, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_ptr_bt_193, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_ptr_bt_193, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_ptr_bt_193, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %163, label %164

; <label>:163:                                    ; preds = %139
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  br label %164

; <label>:164:                                    ; preds = %139, %163
  %165 = phi i32* [ %162, %139 ], [ %_address_in_parent_stack_bt_204, %163 ]
  %_new_load_205 = load i32, i32* %165
  %EAX_val.47 = load i32, i32* %EAX.27, !mcsema_real_eip !20
  %166 = add i32 %EAX_val.47, %_new_load_205, !mcsema_real_eip !20
  %167 = xor i32 %166, %_new_load_205, !mcsema_real_eip !20
  %168 = xor i32 %167, %EAX_val.47, !mcsema_real_eip !20
  %169 = and i32 %168, 16, !mcsema_real_eip !20
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !20
  store i1 %170, i1* %AF, !mcsema_real_eip !20
  %171 = lshr i32 %166, 31, !mcsema_real_eip !20
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !20
  store i1 %172, i1* %SF, !mcsema_real_eip !20
  %173 = icmp eq i32 %166, 0, !mcsema_real_eip !20
  store i1 %173, i1* %ZF, !mcsema_real_eip !20
  %174 = xor i32 %_new_load_205, %EAX_val.47, !mcsema_real_eip !20
  %175 = xor i32 %174, -1, !mcsema_real_eip !20
  %176 = and i32 %175, %167, !mcsema_real_eip !20
  %177 = lshr i32 %176, 31, !mcsema_real_eip !20
  %178 = and i32 %177, 1, !mcsema_real_eip !20
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !20
  store i1 %179, i1* %OF, !mcsema_real_eip !20
  %180 = trunc i32 %166 to i8, !mcsema_real_eip !20
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !20
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !20
  %183 = xor i1 %182, true, !mcsema_real_eip !20
  store i1 %183, i1* %PF, !mcsema_real_eip !20
  %184 = icmp ult i32 %166, %_new_load_205, !mcsema_real_eip !20
  store i1 %184, i1* %CF, !mcsema_real_eip !20
  %185 = zext i32 %166 to i64, !mcsema_real_eip !20
  store i64 %185, i64* %XAX, !mcsema_real_eip !20
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -36
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %EAX_val.50 = load i32, i32* %EAX.27, !mcsema_real_eip !21
  %186 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !21
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !21
  store i32 %EAX_val.50, i32* %187, !mcsema_real_eip !21
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -36
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %188 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !22
  %189 = inttoptr i64 %188 to i32*, !mcsema_real_eip !22
  %_ptr_bt_208 = bitcast i32* %189 to i8*
  %_offset_above_rbp_209 = sub i64 %188, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_ptr_bt_208, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_ptr_bt_208, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_ptr_bt_208, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %190, label %191

; <label>:190:                                    ; preds = %164
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %191

; <label>:191:                                    ; preds = %164, %190
  %192 = phi i32* [ %189, %164 ], [ %_address_in_parent_stack_bt_219, %190 ]
  %_new_load_220 = load i32, i32* %192
  %193 = sub i32 %_new_load_220, 40, !mcsema_real_eip !22
  %194 = xor i32 %193, %_new_load_220, !mcsema_real_eip !22
  %195 = xor i32 %194, 40, !mcsema_real_eip !22
  %196 = and i32 %195, 16, !mcsema_real_eip !22
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !22
  store i1 %197, i1* %AF, !mcsema_real_eip !22
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !22
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !22
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !22
  %201 = xor i1 %200, true, !mcsema_real_eip !22
  store i1 %201, i1* %PF, !mcsema_real_eip !22
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !22
  store i1 %202, i1* %ZF, !mcsema_real_eip !22
  %203 = lshr i32 %193, 31, !mcsema_real_eip !22
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !22
  store i1 %204, i1* %SF, !mcsema_real_eip !22
  %205 = icmp ult i32 %_new_load_220, 40, !mcsema_real_eip !22
  store i1 %205, i1* %CF, !mcsema_real_eip !22
  %206 = xor i32 %_new_load_220, 40, !mcsema_real_eip !22
  %207 = and i32 %206, %194, !mcsema_real_eip !22
  %208 = lshr i32 %207, 31, !mcsema_real_eip !22
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !22
  store i1 %209, i1* %OF, !mcsema_real_eip !22
  %210 = icmp eq i1 %204, %209, !mcsema_real_eip !23
  %211 = icmp eq i1 %210, false, !mcsema_real_eip !23
  %212 = or i1 %202, %211, !mcsema_real_eip !23
  br i1 %212, label %block_0x56, label %block_0x48, !mcsema_real_eip !23

block_0x48:                                       ; preds = %191
  br i1 %_cond1_n_cond2_cond3_217, label %213, label %214

; <label>:213:                                    ; preds = %block_0x48
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %214

; <label>:214:                                    ; preds = %block_0x48, %213
  %215 = phi i32* [ %189, %block_0x48 ], [ %_address_in_parent_stack_bt_234, %213 ]
  %_new_load_235 = load i32, i32* %215
  %216 = zext i32 %_new_load_235 to i64, !mcsema_real_eip !24
  store i64 %216, i64* %XAX, !mcsema_real_eip !24
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -32
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %217 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !25
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !25
  %_ptr_bt_238 = bitcast i32* %218 to i8*
  %_offset_above_rbp_239 = sub i64 %217, %_local_end_to_int_
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_239
  %_cond1_241 = icmp ugt i8* %_ptr_bt_238, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_ptr_bt_238, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_ptr_bt_238, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond1_n_cond2_246, %_cond4_245
  br i1 %_cond1_n_cond2_cond3_247, label %219, label %220

; <label>:219:                                    ; preds = %214
  %_address_in_parent_stack_bt_249 = bitcast i8* %_pot_address_in_parent_stack_240 to i32*
  br label %220

; <label>:220:                                    ; preds = %214, %219
  %221 = phi i32* [ %218, %214 ], [ %_address_in_parent_stack_bt_249, %219 ]
  %_new_load_250 = load i32, i32* %221
  %EAX_val.55 = load i32, i32* %EAX.27, !mcsema_real_eip !25
  %222 = add i32 %EAX_val.55, %_new_load_250, !mcsema_real_eip !25
  %223 = xor i32 %222, %_new_load_250, !mcsema_real_eip !25
  %224 = xor i32 %223, %EAX_val.55, !mcsema_real_eip !25
  %225 = and i32 %224, 16, !mcsema_real_eip !25
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !25
  store i1 %226, i1* %AF, !mcsema_real_eip !25
  %227 = lshr i32 %222, 31, !mcsema_real_eip !25
  %228 = trunc i32 %227 to i1, !mcsema_real_eip !25
  store i1 %228, i1* %SF, !mcsema_real_eip !25
  %229 = icmp eq i32 %222, 0, !mcsema_real_eip !25
  store i1 %229, i1* %ZF, !mcsema_real_eip !25
  %230 = xor i32 %_new_load_250, %EAX_val.55, !mcsema_real_eip !25
  %231 = xor i32 %230, -1, !mcsema_real_eip !25
  %232 = and i32 %231, %223, !mcsema_real_eip !25
  %233 = lshr i32 %232, 31, !mcsema_real_eip !25
  %234 = and i32 %233, 1, !mcsema_real_eip !25
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !25
  store i1 %235, i1* %OF, !mcsema_real_eip !25
  %236 = trunc i32 %222 to i8, !mcsema_real_eip !25
  %237 = call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !25
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !25
  %239 = xor i1 %238, true, !mcsema_real_eip !25
  store i1 %239, i1* %PF, !mcsema_real_eip !25
  %240 = icmp ult i32 %222, %_new_load_250, !mcsema_real_eip !25
  store i1 %240, i1* %CF, !mcsema_real_eip !25
  %241 = zext i32 %222 to i64, !mcsema_real_eip !25
  store i64 %241, i64* %XAX, !mcsema_real_eip !25
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -40
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %EAX_val.58 = load i32, i32* %EAX.27, !mcsema_real_eip !26
  %242 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !26
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.58, i32* %243, !mcsema_real_eip !26
  br label %block_0x5f, !mcsema_real_eip !27

block_0x56:                                       ; preds = %191
  br i1 %_cond1_n_cond2_cond3_217, label %244, label %245

; <label>:244:                                    ; preds = %block_0x56
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_210 to i32*
  br label %245

; <label>:245:                                    ; preds = %block_0x56, %244
  %246 = phi i32* [ %189, %block_0x56 ], [ %_address_in_parent_stack_bt_264, %244 ]
  %_new_load_265 = load i32, i32* %246
  %247 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !28
  store i64 %247, i64* %XAX, !mcsema_real_eip !28
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -32
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.62 = load i32, i32* %EAX.27, !mcsema_real_eip !29
  %248 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !29
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !29
  %_ptr_bt_268 = bitcast i32* %249 to i8*
  %_offset_above_rbp_269 = sub i64 %248, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %250, label %251

; <label>:250:                                    ; preds = %245
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %251

; <label>:251:                                    ; preds = %245, %250
  %252 = phi i32* [ %249, %245 ], [ %_address_in_parent_stack_bt_279, %250 ]
  %_new_load_280 = load i32, i32* %252
  %253 = sub i32 %EAX_val.62, %_new_load_280, !mcsema_real_eip !29
  %254 = xor i32 %253, %EAX_val.62, !mcsema_real_eip !29
  %255 = xor i32 %254, %_new_load_280, !mcsema_real_eip !29
  %256 = and i32 %255, 16, !mcsema_real_eip !29
  %257 = icmp ne i32 %256, 0, !mcsema_real_eip !29
  store i1 %257, i1* %AF, !mcsema_real_eip !29
  %258 = trunc i32 %253 to i8, !mcsema_real_eip !29
  %259 = call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !29
  %260 = trunc i8 %259 to i1, !mcsema_real_eip !29
  %261 = xor i1 %260, true, !mcsema_real_eip !29
  store i1 %261, i1* %PF, !mcsema_real_eip !29
  %262 = icmp eq i32 %253, 0, !mcsema_real_eip !29
  store i1 %262, i1* %ZF, !mcsema_real_eip !29
  %263 = lshr i32 %253, 31, !mcsema_real_eip !29
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !29
  store i1 %264, i1* %SF, !mcsema_real_eip !29
  %265 = icmp ult i32 %EAX_val.62, %_new_load_280, !mcsema_real_eip !29
  store i1 %265, i1* %CF, !mcsema_real_eip !29
  %266 = xor i32 %EAX_val.62, %_new_load_280, !mcsema_real_eip !29
  %267 = and i32 %266, %254, !mcsema_real_eip !29
  %268 = lshr i32 %267, 31, !mcsema_real_eip !29
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !29
  store i1 %269, i1* %OF, !mcsema_real_eip !29
  %270 = zext i32 %253 to i64, !mcsema_real_eip !29
  store i64 %270, i64* %XAX, !mcsema_real_eip !29
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -40
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %EAX_val.65 = load i32, i32* %EAX.27, !mcsema_real_eip !30
  %271 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !30
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.65, i32* %272, !mcsema_real_eip !30
  br label %block_0x5f, !mcsema_real_eip !31

block_0x5f:                                       ; preds = %251, %220
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -40
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %273 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !31
  %274 = inttoptr i64 %273 to i32*, !mcsema_real_eip !31
  %_ptr_bt_283 = bitcast i32* %274 to i8*
  %_offset_above_rbp_284 = sub i64 %273, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_ptr_bt_283, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_ptr_bt_283, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_ptr_bt_283, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  br i1 %_cond1_n_cond2_cond3_292, label %275, label %276

; <label>:275:                                    ; preds = %block_0x5f
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %276

; <label>:276:                                    ; preds = %block_0x5f, %275
  %277 = phi i32* [ %274, %block_0x5f ], [ %_address_in_parent_stack_bt_294, %275 ]
  %_new_load_295 = load i32, i32* %277
  %278 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !31
  store i64 %278, i64* %XAX, !mcsema_real_eip !31
  %_load_rsp_ptr_80 = load i8*, i8** %_RSP_ptr_
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !32
  %_allin_new_bt_81 = bitcast i8* %_load_rsp_ptr_80 to i64*
  %_ptr_to_int_296 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_299 = sub i64 %_ptr_to_int_296, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_load_rsp_ptr_80, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_load_rsp_ptr_80, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_load_rsp_ptr_80, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %279, label %280

; <label>:279:                                    ; preds = %276
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i64*
  br label %280

; <label>:280:                                    ; preds = %276, %279
  %281 = phi i64* [ %_allin_new_bt_81, %276 ], [ %_address_in_parent_stack_bt_309, %279 ]
  %_new_load_310 = load i64, i64* %281
  %_new_int2ptr_ = inttoptr i64 %_new_load_310 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_310, i64* %XBP, !mcsema_real_eip !32
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_80, i64 8
  %282 = add i64 %RSP_val.67, 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %282, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_84 = getelementptr i8, i8* %_new_gep_82, i64 8
  %283 = add i64 %282, 8, !mcsema_real_eip !33
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %_ptr_to_int_311 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_314 = sub i64 %_ptr_to_int_311, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  br i1 %_cond1_n_cond2_cond3_322, label %284, label %285

; <label>:284:                                    ; preds = %280
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_315 to i64*
  br label %285

; <label>:285:                                    ; preds = %280, %284
  %286 = phi i64* [ %_allin_new_bt_85, %280 ], [ %_address_in_parent_stack_bt_324, %284 ]
  %_new_load_325 = load i64, i64* %286
  store i64 %_new_load_325, i64* %XIP, !mcsema_real_eip !33
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %283, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.70, 8, !mcsema_real_eip !34
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.72, 48, !mcsema_real_eip !36
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !36
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !36
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !36
  %12 = lshr i64 %11, 63, !mcsema_real_eip !36
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !36
  store i1 %13, i1* %OF, !mcsema_real_eip !36
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  store i64 30, i64* %XDX, !mcsema_real_eip !39
  store i64 40, i64* %XCX, !mcsema_real_eip !40
  store i64 50, i64* %R8, !mcsema_real_eip !41
  store i64 60, i64* %R9, !mcsema_real_eip !42
  store i64 70, i64* %XAX, !mcsema_real_eip !43
  store i64 80, i64* %R10, !mcsema_real_eip !44
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !45
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %15, !mcsema_real_eip !45
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !46
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !46
  store i32 70, i32* %17, !mcsema_real_eip !46
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !47
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !47
  store i32 80, i32* %19, !mcsema_real_eip !47
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !48
  %R10D_val.78 = load i32, i32* %R10D.77, !mcsema_real_eip !48
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !48
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !48
  store i32 %R10D_val.78, i32* %21, !mcsema_real_eip !48
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.81 = load i32, i32* %EAX.80, !mcsema_real_eip !49
  %22 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !49
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.81, i32* %23, !mcsema_real_eip !49
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %24 = sub i64 %RSP_val.82, 8, !mcsema_real_eip !50
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, !mcsema_real_eip !50
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %24, i64* %XSP, !mcsema_real_eip !50
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_29, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_80)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, !mcsema_real_eip !51
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX_val.85 = load i32, i32* %EAX.80, !mcsema_real_eip !52
  %25 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !52
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.85, i32* %26, !mcsema_real_eip !52
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %27 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !53
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !53
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %28 to i8*
  %_offset_above_rbp_ = sub i64 %27, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %29, label %30

; <label>:29:                                     ; preds = %block_0x70
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %30

; <label>:30:                                     ; preds = %block_0x70, %29
  %31 = phi i32* [ %28, %block_0x70 ], [ %_address_in_parent_stack_bt_, %29 ]
  %_new_load_ = load i32, i32* %31
  %32 = zext i32 %_new_load_ to i64, !mcsema_real_eip !53
  store i64 %32, i64* %XSI, !mcsema_real_eip !53
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.87, !mcsema_real_eip !54
  %RDI_val.88 = load i64, i64* %XDI, !mcsema_real_eip !55
  %RDX_val.90 = load i64, i64* %XDX, !mcsema_real_eip !55
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !55
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !55
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !55
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_38 = bitcast i8* %_load_rsp_ptr_37 to i64*
  %_ptr_to_int_84 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_load_rsp_ptr_37, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_load_rsp_ptr_37, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_load_rsp_ptr_37, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %33, label %34

; <label>:33:                                     ; preds = %30
  %_address_in_parent_stack_bt_97 = bitcast i8* %_pot_address_in_parent_stack_88 to i64*
  br label %34

; <label>:34:                                     ; preds = %30, %33
  %35 = phi i64* [ %_allin_new_bt_38, %30 ], [ %_address_in_parent_stack_bt_97, %33 ]
  %_new_load_98 = load i64, i64* %35
  %_new_gep_39 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_99 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %36, label %37

; <label>:36:                                     ; preds = %34
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i64*
  br label %37

; <label>:37:                                     ; preds = %34, %36
  %38 = phi i64* [ %_allin_new_bt_40, %34 ], [ %_address_in_parent_stack_bt_112, %36 ]
  %_new_load_113 = load i64, i64* %38
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_114 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %39, label %40

; <label>:39:                                     ; preds = %37
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i64*
  br label %40

; <label>:40:                                     ; preds = %37, %39
  %41 = phi i64* [ %_allin_new_bt_42, %37 ], [ %_address_in_parent_stack_bt_127, %39 ]
  %_new_load_128 = load i64, i64* %41
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_129 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  br i1 %_cond1_n_cond2_cond3_140, label %42, label %43

; <label>:42:                                     ; preds = %40
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_133 to i64*
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i64* [ %_allin_new_bt_44, %40 ], [ %_address_in_parent_stack_bt_142, %42 ]
  %_new_load_143 = load i64, i64* %44
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_144 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_147 = sub i64 %_ptr_to_int_144, %_local_end_to_int_
  %_pot_address_in_parent_stack_148 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_cond1_149 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_150 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_151 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_152 = or i1 %_cond2_1_150, %_cond2_2_151
  %_cond4_153 = icmp ule i8* %_pot_address_in_parent_stack_148, %_parent_stack_end_ptr_
  %_cond1_n_cond2_154 = and i1 %_cond1_149, %_cond2_152
  %_cond1_n_cond2_cond3_155 = and i1 %_cond1_n_cond2_154, %_cond4_153
  br i1 %_cond1_n_cond2_cond3_155, label %45, label %46

; <label>:45:                                     ; preds = %43
  %_address_in_parent_stack_bt_157 = bitcast i8* %_pot_address_in_parent_stack_148 to i64*
  br label %46

; <label>:46:                                     ; preds = %43, %45
  %47 = phi i64* [ %_allin_new_bt_46, %43 ], [ %_address_in_parent_stack_bt_157, %45 ]
  %_new_load_158 = load i64, i64* %47
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_159 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_159, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  br i1 %_cond1_n_cond2_cond3_170, label %48, label %49

; <label>:48:                                     ; preds = %46
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_163 to i64*
  br label %49

; <label>:49:                                     ; preds = %46, %48
  %50 = phi i64* [ %_allin_new_bt_48, %46 ], [ %_address_in_parent_stack_bt_172, %48 ]
  %_new_load_173 = load i64, i64* %50
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %51 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !55
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !55
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !55
  %52 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %32, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %_new_load_98, i64 %_new_load_113, i64 %_new_load_128, i64 %_new_load_143, i64 %_new_load_158, i64 %_new_load_173)
  %_rsp_fix_82 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_83 = getelementptr i8, i8* %_rsp_fix_82, i64 8
  store i8* %_gep_fix_83, i8** %_RSP_ptr_
  store i64 %52, i64* %XAX, !mcsema_real_eip !55
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %53 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !56
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !56
  %_ptr_bt_176 = bitcast i32* %54 to i8*
  %_offset_above_rbp_177 = sub i64 %53, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %55, label %56

; <label>:55:                                     ; preds = %49
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_178 to i32*
  br label %56

; <label>:56:                                     ; preds = %49, %55
  %57 = phi i32* [ %54, %49 ], [ %_address_in_parent_stack_bt_187, %55 ]
  %_new_load_188 = load i32, i32* %57
  %58 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !56
  store i64 %58, i64* %XCX, !mcsema_real_eip !56
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -20
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %EAX_val.99 = load i32, i32* %EAX.80, !mcsema_real_eip !57
  %59 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !57
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !57
  store i32 %EAX_val.99, i32* %60, !mcsema_real_eip !57
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !58
  %ECX_val.101 = load i32, i32* %ECX.100, !mcsema_real_eip !58
  %61 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !58
  store i64 %61, i64* %XAX, !mcsema_real_eip !58
  %_load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !59
  %_new_gep_59 = getelementptr i8, i8* %_load_rsp_ptr_58, i64 48
  %62 = add i64 48, %RSP_val.102, !mcsema_real_eip !59
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %63 = xor i64 %_trans_xor_62, 48, !mcsema_real_eip !59
  %64 = and i64 %63, 16, !mcsema_real_eip !59
  %65 = icmp ne i64 %64, 0, !mcsema_real_eip !59
  store i1 %65, i1* %AF, !mcsema_real_eip !59
  %66 = lshr i64 %62, 63, !mcsema_real_eip !59
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !59
  store i1 %67, i1* %SF, !mcsema_real_eip !59
  %_trans_icmp_eq_64 = icmp eq i64 %_trans_p2i_60, 0
  store i1 %_trans_icmp_eq_64, i1* %ZF, !mcsema_real_eip !59
  %_trans_xor_66 = xor i64 %_trans_p2i_61, 48
  %68 = xor i64 %_trans_xor_66, -1, !mcsema_real_eip !59
  %69 = and i64 %68, %_trans_xor_62, !mcsema_real_eip !59
  %70 = lshr i64 %69, 63, !mcsema_real_eip !59
  %71 = and i64 %70, 1, !mcsema_real_eip !59
  %72 = trunc i64 %71 to i1, !mcsema_real_eip !59
  store i1 %72, i1* %OF, !mcsema_real_eip !59
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %73 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !59
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !59
  %75 = xor i1 %74, true, !mcsema_real_eip !59
  store i1 %75, i1* %PF, !mcsema_real_eip !59
  %_trans_icmp_ne_73 = icmp ne i64 %_trans_p2i_60, %RSP_val.102
  store i1 %_trans_icmp_ne_73, i1* %CF, !mcsema_real_eip !59
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !59
  %_allin_new_bt_75 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_189 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_192 = sub i64 %_ptr_to_int_189, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %76, label %77

; <label>:76:                                     ; preds = %56
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i64*
  br label %77

; <label>:77:                                     ; preds = %56, %76
  %78 = phi i64* [ %_allin_new_bt_75, %56 ], [ %_address_in_parent_stack_bt_202, %76 ]
  %_new_load_203 = load i64, i64* %78
  %_new_int2ptr_ = inttoptr i64 %_new_load_203 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_203, i64* %XBP, !mcsema_real_eip !60
  %_new_gep_76 = getelementptr i8, i8* %_new_gep_59, i64 8
  %79 = add i64 %62, 8, !mcsema_real_eip !60
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_
  store i64 %79, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_78 = getelementptr i8, i8* %_new_gep_76, i64 8
  %80 = add i64 %79, 8, !mcsema_real_eip !61
  %_allin_new_bt_79 = bitcast i8* %_new_gep_76 to i64*
  %_ptr_to_int_204 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %81, label %82

; <label>:81:                                     ; preds = %77
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i64*
  br label %82

; <label>:82:                                     ; preds = %77, %81
  %83 = phi i64* [ %_allin_new_bt_79, %77 ], [ %_address_in_parent_stack_bt_217, %81 ]
  %_new_load_218 = load i64, i64* %83
  store i64 %_new_load_218, i64* %XIP, !mcsema_real_eip !61
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %80, i64* %XSP, !mcsema_real_eip !61
  ret void, !mcsema_real_eip !61
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
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 38}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 47}
!18 = !{i64 50}
!19 = !{i64 53}
!20 = !{i64 56}
!21 = !{i64 59}
!22 = !{i64 62}
!23 = !{i64 66}
!24 = !{i64 72}
!25 = !{i64 75}
!26 = !{i64 78}
!27 = !{i64 81}
!28 = !{i64 86}
!29 = !{i64 89}
!30 = !{i64 92}
!31 = !{i64 95}
!32 = !{i64 98}
!33 = !{i64 99}
!34 = !{i64 112}
!35 = !{i64 113}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 125}
!39 = !{i64 130}
!40 = !{i64 135}
!41 = !{i64 140}
!42 = !{i64 146}
!43 = !{i64 152}
!44 = !{i64 157}
!45 = !{i64 163}
!46 = !{i64 170}
!47 = !{i64 177}
!48 = !{i64 185}
!49 = !{i64 189}
!50 = !{i64 192}
!51 = !{i64 197}
!52 = !{i64 207}
!53 = !{i64 210}
!54 = !{i64 213}
!55 = !{i64 215}
!56 = !{i64 220}
!57 = !{i64 223}
!58 = !{i64 226}
!59 = !{i64 228}
!60 = !{i64 232}
!61 = !{i64 233}
