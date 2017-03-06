; ModuleID = 'Output/test_2.clang.opt.bc'
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
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !34
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !34
  %1 = sub i64 %RSP_val.70, 8, !mcsema_real_eip !34
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !34
  store i64 %RBP_val.69, i64* %2, !mcsema_real_eip !34
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  store i64 %1, i64* %XBP, !mcsema_real_eip !35
  %3 = sub i64 %1, 48, !mcsema_real_eip !36
  %4 = xor i64 %3, %1, !mcsema_real_eip !36
  %5 = xor i64 %4, 48, !mcsema_real_eip !36
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
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !36
  store i1 %15, i1* %CF, !mcsema_real_eip !36
  %16 = xor i64 %1, 48, !mcsema_real_eip !36
  %17 = and i64 %16, %4, !mcsema_real_eip !36
  %18 = lshr i64 %17, 63, !mcsema_real_eip !36
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !36
  store i1 %19, i1* %OF, !mcsema_real_eip !36
  store i64 %3, i64* %XSP, !mcsema_real_eip !36
  store i64 10, i64* %XDI, !mcsema_real_eip !37
  store i64 20, i64* %XSI, !mcsema_real_eip !38
  store i64 30, i64* %XDX, !mcsema_real_eip !39
  store i64 40, i64* %XCX, !mcsema_real_eip !40
  store i64 50, i64* %R8, !mcsema_real_eip !41
  store i64 60, i64* %R9, !mcsema_real_eip !42
  store i64 70, i64* %XAX, !mcsema_real_eip !43
  store i64 80, i64* %R10, !mcsema_real_eip !44
  %20 = add i64 %1, -4, !mcsema_real_eip !45
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !45
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %22, !mcsema_real_eip !45
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !46
  %23 = inttoptr i64 %RSP_val.74 to i64*, !mcsema_real_eip !46
  %24 = inttoptr i64 %RSP_val.74 to i32*, !mcsema_real_eip !46
  store i32 70, i32* %24, !mcsema_real_eip !46
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !47
  %25 = add i64 %RSP_val.75, 8, !mcsema_real_eip !47
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !47
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !47
  store i32 80, i32* %27, !mcsema_real_eip !47
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !48
  %28 = add i64 %RBP_val.76, -12, !mcsema_real_eip !48
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !48
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !48
  %R10D_val.78 = load i32, i32* %R10D.77, !mcsema_real_eip !48
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !48
  store i32 %R10D_val.78, i32* %30, !mcsema_real_eip !48
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !49
  %31 = add i64 %RBP_val.79, -16, !mcsema_real_eip !49
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !49
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.81 = load i32, i32* %EAX.80, !mcsema_real_eip !49
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.81, i32* %33, !mcsema_real_eip !49
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !50
  %34 = sub i64 %RSP_val.82, 8, !mcsema_real_eip !50
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !50
  store i64 -4981261766360305936, i64* %35, !mcsema_real_eip !50
  store i64 %34, i64* %XSP, !mcsema_real_eip !50
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !50
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, !mcsema_real_eip !51
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !52
  %36 = add i64 %RBP_val.83, -8, !mcsema_real_eip !52
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !52
  %EAX_val.85 = load i32, i32* %EAX.80, !mcsema_real_eip !52
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.85, i32* %38, !mcsema_real_eip !52
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !53
  %39 = add i64 %RBP_val.86, -8, !mcsema_real_eip !53
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !53
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !53
  %42 = load i32, i32* %41, !mcsema_real_eip !53
  %43 = zext i32 %42 to i64, !mcsema_real_eip !53
  store i64 %43, i64* %XSI, !mcsema_real_eip !53
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.87, !mcsema_real_eip !54
  %RDI_val.88 = load i64, i64* %XDI, !mcsema_real_eip !55
  %RDX_val.90 = load i64, i64* %XDX, !mcsema_real_eip !55
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !55
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !55
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !55
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !55
  %44 = inttoptr i64 %RSP_val.94 to i64*, !mcsema_real_eip !55
  %45 = load i64, i64* %44, !mcsema_real_eip !55
  %46 = add i64 %RSP_val.94, 8, !mcsema_real_eip !55
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !55
  %48 = load i64, i64* %47, !mcsema_real_eip !55
  %49 = add i64 %46, 8, !mcsema_real_eip !55
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !55
  %51 = load i64, i64* %50, !mcsema_real_eip !55
  %52 = add i64 %49, 8, !mcsema_real_eip !55
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !55
  %54 = load i64, i64* %53, !mcsema_real_eip !55
  %55 = add i64 %52, 8, !mcsema_real_eip !55
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !55
  %57 = load i64, i64* %56, !mcsema_real_eip !55
  %58 = add i64 %55, 8, !mcsema_real_eip !55
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !55
  %60 = load i64, i64* %59, !mcsema_real_eip !55
  %61 = add i64 %58, 8, !mcsema_real_eip !55
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !55
  %63 = load i64, i64* %62, !mcsema_real_eip !55
  %64 = add i64 %61, 8, !mcsema_real_eip !55
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !55
  %66 = load i64, i64* %65, !mcsema_real_eip !55
  %67 = add i64 %64, 8, !mcsema_real_eip !55
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !55
  %69 = load i64, i64* %68, !mcsema_real_eip !55
  %70 = add i64 %67, 8, !mcsema_real_eip !55
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !55
  %72 = load i64, i64* %71, !mcsema_real_eip !55
  %73 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !55
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !55
  store i64 -2415393069852865332, i64* %74, !mcsema_real_eip !55
  store i64 %73, i64* %XSP, !mcsema_real_eip !55
  %75 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %43, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %45, i64 %48, i64 %51, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69, i64 %72), !mcsema_real_eip !55
  store i64 %75, i64* %XAX, !mcsema_real_eip !55
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !56
  %76 = add i64 %RBP_val.96, -8, !mcsema_real_eip !56
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !56
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !56
  %79 = load i32, i32* %78, !mcsema_real_eip !56
  %80 = zext i32 %79 to i64, !mcsema_real_eip !56
  store i64 %80, i64* %XCX, !mcsema_real_eip !56
  %81 = add i64 %RBP_val.96, -20, !mcsema_real_eip !57
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !57
  %EAX_val.99 = load i32, i32* %EAX.80, !mcsema_real_eip !57
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !57
  store i32 %EAX_val.99, i32* %83, !mcsema_real_eip !57
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !58
  %ECX_val.101 = load i32, i32* %ECX.100, !mcsema_real_eip !58
  %84 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !58
  store i64 %84, i64* %XAX, !mcsema_real_eip !58
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !59
  %85 = add i64 48, %RSP_val.102, !mcsema_real_eip !59
  %86 = xor i64 %85, %RSP_val.102, !mcsema_real_eip !59
  %87 = xor i64 %86, 48, !mcsema_real_eip !59
  %88 = and i64 %87, 16, !mcsema_real_eip !59
  %89 = icmp ne i64 %88, 0, !mcsema_real_eip !59
  store i1 %89, i1* %AF, !mcsema_real_eip !59
  %90 = lshr i64 %85, 63, !mcsema_real_eip !59
  %91 = trunc i64 %90 to i1, !mcsema_real_eip !59
  store i1 %91, i1* %SF, !mcsema_real_eip !59
  %92 = icmp eq i64 %85, 0, !mcsema_real_eip !59
  store i1 %92, i1* %ZF, !mcsema_real_eip !59
  %93 = xor i64 %RSP_val.102, 48, !mcsema_real_eip !59
  %94 = xor i64 %93, -1, !mcsema_real_eip !59
  %95 = and i64 %94, %86, !mcsema_real_eip !59
  %96 = lshr i64 %95, 63, !mcsema_real_eip !59
  %97 = and i64 %96, 1, !mcsema_real_eip !59
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !59
  store i1 %98, i1* %OF, !mcsema_real_eip !59
  %99 = trunc i64 %85 to i8, !mcsema_real_eip !59
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !59
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !59
  %102 = xor i1 %101, true, !mcsema_real_eip !59
  store i1 %102, i1* %PF, !mcsema_real_eip !59
  %103 = icmp ult i64 %85, %RSP_val.102, !mcsema_real_eip !59
  store i1 %103, i1* %CF, !mcsema_real_eip !59
  store i64 %85, i64* %XSP, !mcsema_real_eip !59
  %104 = inttoptr i64 %85 to i64*, !mcsema_real_eip !60
  %105 = load i64, i64* %104, !mcsema_real_eip !60
  store i64 %105, i64* %XBP, !mcsema_real_eip !60
  %106 = add i64 %85, 8, !mcsema_real_eip !60
  store i64 %106, i64* %XSP, !mcsema_real_eip !60
  %107 = add i64 %106, 8, !mcsema_real_eip !61
  %108 = inttoptr i64 %106 to i64*, !mcsema_real_eip !61
  %109 = load i64, i64* %108, !mcsema_real_eip !61
  store i64 %109, i64* %XIP, !mcsema_real_eip !61
  store i64 %107, i64* %XSP, !mcsema_real_eip !61
  ret void, !mcsema_real_eip !61
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
