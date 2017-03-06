; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x180 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\84\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\E6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %5 = load i64, i64* %4, !mcsema_real_eip !4
  store i64 %5, i64* %XAX, !mcsema_real_eip !4
  %6 = add i64 %1, 16, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = load i64, i64* %7, !mcsema_real_eip !5
  store i64 %8, i64* %R10, !mcsema_real_eip !5
  %9 = add i64 %1, -20, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %11, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %12 = add i64 %RBP_val.8, -24, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %14, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.11, -28, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %17, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %18 = add i64 %RBP_val.14, -32, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %20, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !10
  %21 = add i64 %RBP_val.17, -36, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %23, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.20, -40, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %26, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %27 = add i64 %RBP_val.23, -48, !mcsema_real_eip !12
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !12
  %R10_val.24 = load i64, i64* %R10, !mcsema_real_eip !12
  store i64 %R10_val.24, i64* %28, !mcsema_real_eip !12
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !13
  %29 = add i64 %RBP_val.25, -56, !mcsema_real_eip !13
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !13
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !13
  store i64 %RAX_val.26, i64* %30, !mcsema_real_eip !13
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !14
  %31 = add i64 %RBP_val.27, -48, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !14
  %33 = load i64, i64* %32, !mcsema_real_eip !14
  store i64 %33, i64* %XAX, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !15
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !15
  %36 = load i32, i32* %35, !mcsema_real_eip !15
  %37 = zext i32 %36 to i64, !mcsema_real_eip !15
  store i64 %37, i64* %XCX, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.27, -56, !mcsema_real_eip !16
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !16
  %40 = load i64, i64* %39, !mcsema_real_eip !16
  store i64 %40, i64* %XAX, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !17
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !17
  %43 = load i32, i32* %42, !mcsema_real_eip !17
  %44 = zext i32 %43 to i64, !mcsema_real_eip !17
  store i64 %44, i64* %XDX, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.15, !mcsema_real_eip !18
  %EDX_val.34 = load i32, i32* %EDX.12, !mcsema_real_eip !18
  %45 = add i32 %EDX_val.34, %ECX_val.32, !mcsema_real_eip !18
  %46 = xor i32 %45, %ECX_val.32, !mcsema_real_eip !18
  %47 = xor i32 %46, %EDX_val.34, !mcsema_real_eip !18
  %48 = and i32 %47, 16, !mcsema_real_eip !18
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !18
  store i1 %49, i1* %AF, !mcsema_real_eip !18
  %50 = lshr i32 %45, 31, !mcsema_real_eip !18
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !18
  store i1 %51, i1* %SF, !mcsema_real_eip !18
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !18
  store i1 %52, i1* %ZF, !mcsema_real_eip !18
  %53 = xor i32 %ECX_val.32, %EDX_val.34, !mcsema_real_eip !18
  %54 = xor i32 %53, -1, !mcsema_real_eip !18
  %55 = and i32 %54, %46, !mcsema_real_eip !18
  %56 = lshr i32 %55, 31, !mcsema_real_eip !18
  %57 = and i32 %56, 1, !mcsema_real_eip !18
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !18
  store i1 %58, i1* %OF, !mcsema_real_eip !18
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !18
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !18
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !18
  %62 = xor i1 %61, true, !mcsema_real_eip !18
  store i1 %62, i1* %PF, !mcsema_real_eip !18
  %63 = icmp ult i32 %45, %ECX_val.32, !mcsema_real_eip !18
  store i1 %63, i1* %CF, !mcsema_real_eip !18
  %64 = zext i32 %45 to i64, !mcsema_real_eip !18
  store i64 %64, i64* %XCX, !mcsema_real_eip !18
  %65 = add i64 %RBP_val.27, -72, !mcsema_real_eip !19
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !19
  %ECX_val.37 = load i32, i32* %ECX.15, !mcsema_real_eip !19
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !19
  store i32 %ECX_val.37, i32* %67, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %68 = add i64 %RBP_val.38, -48, !mcsema_real_eip !20
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !20
  %70 = load i64, i64* %69, !mcsema_real_eip !20
  store i64 %70, i64* %XAX, !mcsema_real_eip !20
  %71 = add i64 %70, 4, !mcsema_real_eip !21
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !21
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !21
  %74 = load i32, i32* %73, !mcsema_real_eip !21
  %75 = zext i32 %74 to i64, !mcsema_real_eip !21
  store i64 %75, i64* %XCX, !mcsema_real_eip !21
  %76 = add i64 %RBP_val.38, -56, !mcsema_real_eip !22
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !22
  %78 = load i64, i64* %77, !mcsema_real_eip !22
  store i64 %78, i64* %XAX, !mcsema_real_eip !22
  %79 = add i64 %78, 4, !mcsema_real_eip !23
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !23
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !23
  %82 = load i32, i32* %81, !mcsema_real_eip !23
  %83 = zext i32 %82 to i64, !mcsema_real_eip !23
  store i64 %83, i64* %XDX, !mcsema_real_eip !23
  %ECX_val.43 = load i32, i32* %ECX.15, !mcsema_real_eip !24
  %EDX_val.45 = load i32, i32* %EDX.12, !mcsema_real_eip !24
  %84 = add i32 %EDX_val.45, %ECX_val.43, !mcsema_real_eip !24
  %85 = xor i32 %84, %ECX_val.43, !mcsema_real_eip !24
  %86 = xor i32 %85, %EDX_val.45, !mcsema_real_eip !24
  %87 = and i32 %86, 16, !mcsema_real_eip !24
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !24
  store i1 %88, i1* %AF, !mcsema_real_eip !24
  %89 = lshr i32 %84, 31, !mcsema_real_eip !24
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !24
  store i1 %90, i1* %SF, !mcsema_real_eip !24
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !24
  store i1 %91, i1* %ZF, !mcsema_real_eip !24
  %92 = xor i32 %ECX_val.43, %EDX_val.45, !mcsema_real_eip !24
  %93 = xor i32 %92, -1, !mcsema_real_eip !24
  %94 = and i32 %93, %85, !mcsema_real_eip !24
  %95 = lshr i32 %94, 31, !mcsema_real_eip !24
  %96 = and i32 %95, 1, !mcsema_real_eip !24
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !24
  store i1 %97, i1* %OF, !mcsema_real_eip !24
  %98 = trunc i32 %84 to i8, !mcsema_real_eip !24
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !24
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !24
  %101 = xor i1 %100, true, !mcsema_real_eip !24
  store i1 %101, i1* %PF, !mcsema_real_eip !24
  %102 = icmp ult i32 %84, %ECX_val.43, !mcsema_real_eip !24
  store i1 %102, i1* %CF, !mcsema_real_eip !24
  %103 = zext i32 %84 to i64, !mcsema_real_eip !24
  store i64 %103, i64* %XCX, !mcsema_real_eip !24
  %104 = add i64 %RBP_val.38, -68, !mcsema_real_eip !25
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !25
  %ECX_val.48 = load i32, i32* %ECX.15, !mcsema_real_eip !25
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !25
  store i32 %ECX_val.48, i32* %106, !mcsema_real_eip !25
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !26
  %107 = add i64 %RBP_val.49, -48, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %XAX, !mcsema_real_eip !26
  %110 = add i64 %109, 8, !mcsema_real_eip !27
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !27
  %112 = inttoptr i64 %110 to i32*, !mcsema_real_eip !27
  %113 = load i32, i32* %112, !mcsema_real_eip !27
  %114 = zext i32 %113 to i64, !mcsema_real_eip !27
  store i64 %114, i64* %XCX, !mcsema_real_eip !27
  %115 = add i64 %RBP_val.49, -56, !mcsema_real_eip !28
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !28
  %117 = load i64, i64* %116, !mcsema_real_eip !28
  store i64 %117, i64* %XAX, !mcsema_real_eip !28
  %118 = add i64 %117, 8, !mcsema_real_eip !29
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !29
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !29
  %121 = load i32, i32* %120, !mcsema_real_eip !29
  %122 = zext i32 %121 to i64, !mcsema_real_eip !29
  store i64 %122, i64* %XDX, !mcsema_real_eip !29
  %ECX_val.54 = load i32, i32* %ECX.15, !mcsema_real_eip !30
  %EDX_val.56 = load i32, i32* %EDX.12, !mcsema_real_eip !30
  %123 = add i32 %EDX_val.56, %ECX_val.54, !mcsema_real_eip !30
  %124 = xor i32 %123, %ECX_val.54, !mcsema_real_eip !30
  %125 = xor i32 %124, %EDX_val.56, !mcsema_real_eip !30
  %126 = and i32 %125, 16, !mcsema_real_eip !30
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !30
  store i1 %127, i1* %AF, !mcsema_real_eip !30
  %128 = lshr i32 %123, 31, !mcsema_real_eip !30
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !30
  store i1 %129, i1* %SF, !mcsema_real_eip !30
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !30
  store i1 %130, i1* %ZF, !mcsema_real_eip !30
  %131 = xor i32 %ECX_val.54, %EDX_val.56, !mcsema_real_eip !30
  %132 = xor i32 %131, -1, !mcsema_real_eip !30
  %133 = and i32 %132, %124, !mcsema_real_eip !30
  %134 = lshr i32 %133, 31, !mcsema_real_eip !30
  %135 = and i32 %134, 1, !mcsema_real_eip !30
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !30
  store i1 %136, i1* %OF, !mcsema_real_eip !30
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !30
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !30
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !30
  %140 = xor i1 %139, true, !mcsema_real_eip !30
  store i1 %140, i1* %PF, !mcsema_real_eip !30
  %141 = icmp ult i32 %123, %ECX_val.54, !mcsema_real_eip !30
  store i1 %141, i1* %CF, !mcsema_real_eip !30
  %142 = zext i32 %123 to i64, !mcsema_real_eip !30
  store i64 %142, i64* %XCX, !mcsema_real_eip !30
  %143 = add i64 %RBP_val.49, -64, !mcsema_real_eip !31
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !31
  %ECX_val.59 = load i32, i32* %ECX.15, !mcsema_real_eip !31
  %145 = inttoptr i64 %143 to i32*, !mcsema_real_eip !31
  store i32 %ECX_val.59, i32* %145, !mcsema_real_eip !31
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !32
  %146 = add i64 %RBP_val.60, -64, !mcsema_real_eip !32
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !32
  %148 = inttoptr i64 %146 to i32*, !mcsema_real_eip !32
  %149 = load i32, i32* %148, !mcsema_real_eip !32
  %150 = zext i32 %149 to i64, !mcsema_real_eip !32
  store i64 %150, i64* %XCX, !mcsema_real_eip !32
  %151 = add i64 %RBP_val.60, -8, !mcsema_real_eip !33
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !33
  %ECX_val.63 = load i32, i32* %ECX.15, !mcsema_real_eip !33
  %153 = inttoptr i64 %151 to i32*, !mcsema_real_eip !33
  store i32 %ECX_val.63, i32* %153, !mcsema_real_eip !33
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !34
  %154 = add i64 %RBP_val.64, -72, !mcsema_real_eip !34
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !34
  %156 = load i64, i64* %155, !mcsema_real_eip !34
  store i64 %156, i64* %XAX, !mcsema_real_eip !34
  %157 = add i64 %RBP_val.64, -16, !mcsema_real_eip !35
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !35
  store i64 %156, i64* %158, !mcsema_real_eip !35
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !36
  %159 = add i64 %RBP_val.67, -8, !mcsema_real_eip !36
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !36
  %161 = inttoptr i64 %159 to i32*, !mcsema_real_eip !36
  %162 = load i32, i32* %161, !mcsema_real_eip !36
  %163 = zext i32 %162 to i64, !mcsema_real_eip !36
  store i64 %163, i64* %XCX, !mcsema_real_eip !36
  %164 = add i64 %RBP_val.67, -80, !mcsema_real_eip !37
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !37
  %ECX_val.70 = load i32, i32* %ECX.15, !mcsema_real_eip !37
  %166 = inttoptr i64 %164 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.70, i32* %166, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !38
  %167 = add i64 %RBP_val.71, -16, !mcsema_real_eip !38
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !38
  %169 = load i64, i64* %168, !mcsema_real_eip !38
  store i64 %169, i64* %XAX, !mcsema_real_eip !38
  %170 = add i64 %RBP_val.71, -88, !mcsema_real_eip !39
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !39
  store i64 %169, i64* %171, !mcsema_real_eip !39
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !40
  %172 = add i64 %RBP_val.74, -88, !mcsema_real_eip !40
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !40
  %174 = load i64, i64* %173, !mcsema_real_eip !40
  store i64 %174, i64* %XAX, !mcsema_real_eip !40
  %175 = add i64 %RBP_val.74, -80, !mcsema_real_eip !41
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !41
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !41
  %178 = load i32, i32* %177, !mcsema_real_eip !41
  %179 = zext i32 %178 to i64, !mcsema_real_eip !41
  store i64 %179, i64* %XDX, !mcsema_real_eip !41
  %RSP_val.76 = load i64, i64* %XSP, !mcsema_real_eip !42
  %180 = inttoptr i64 %RSP_val.76 to i64*, !mcsema_real_eip !42
  %181 = load i64, i64* %180, !mcsema_real_eip !42
  store i64 %181, i64* %XBP, !mcsema_real_eip !42
  %182 = add i64 %RSP_val.76, 8, !mcsema_real_eip !42
  store i64 %182, i64* %XSP, !mcsema_real_eip !42
  %183 = add i64 %182, 8, !mcsema_real_eip !43
  %184 = inttoptr i64 %182 to i64*, !mcsema_real_eip !43
  %185 = load i64, i64* %184, !mcsema_real_eip !43
  store i64 %185, i64* %XIP, !mcsema_real_eip !43
  store i64 %183, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !44
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !44
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !44
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !44
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !44
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !44
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !44
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !44
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !44
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !44
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !44
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !44
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !44
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !44
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !44
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !44
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !44
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !44
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !44
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !44
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !44
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !44
  br label %block_0x90, !mcsema_real_eip !44

block_0x90:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !44
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !44
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !44
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !45
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !46
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.81, 112, !mcsema_real_eip !46
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !46
  %4 = and i64 %3, 16, !mcsema_real_eip !46
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !46
  store i1 %5, i1* %AF, !mcsema_real_eip !46
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !46
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !46
  %8 = xor i1 %7, true, !mcsema_real_eip !46
  store i1 %8, i1* %PF, !mcsema_real_eip !46
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !46
  %9 = lshr i64 %2, 63, !mcsema_real_eip !46
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !46
  store i1 %10, i1* %SF, !mcsema_real_eip !46
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !46
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !46
  %12 = lshr i64 %11, 63, !mcsema_real_eip !46
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !46
  store i1 %13, i1* %OF, !mcsema_real_eip !46
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !46
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !47
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !48
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %15, !mcsema_real_eip !48
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !49
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !49
  store i32 10, i32* %17, !mcsema_real_eip !49
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !50
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !50
  store i32 10, i32* %19, !mcsema_real_eip !50
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !51
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %21, !mcsema_real_eip !51
  store i64 24, i64* %XAX, !mcsema_real_eip !52
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !53
  %22 = zext i32 %EAX_val.87 to i64, !mcsema_real_eip !53
  store i64 %22, i64* %XCX, !mcsema_real_eip !53
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -72
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !54
  store i64 %RDI_val.89, i64* %_allin_new_bt_27, !mcsema_real_eip !54
  %RCX_val.90 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.90, i64* %XDI, !mcsema_real_eip !55
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %23 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !56
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !56
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.90)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !56
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !57
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %25 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !58
  store i64 %25, i64* %XAX, !mcsema_real_eip !58
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !59
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !59
  store i32 5, i32* %27, !mcsema_real_eip !59
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %28 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !60
  store i64 %28, i64* %XAX, !mcsema_real_eip !60
  %29 = add i64 %28, 4, !mcsema_real_eip !61
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !61
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !61
  store i32 5, i32* %31, !mcsema_real_eip !61
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %32 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !62
  store i64 %32, i64* %XAX, !mcsema_real_eip !62
  %33 = add i64 %32, 8, !mcsema_real_eip !63
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !63
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !63
  store i32 5, i32* %35, !mcsema_real_eip !63
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %36 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !64
  store i64 %36, i64* %XAX, !mcsema_real_eip !64
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %XCX
  %37 = add i64 %_new_ptr2int_47, 8, !mcsema_real_eip !65
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !65
  %RAX_val.104 = load i64, i64* %XAX, !mcsema_real_eip !65
  store i64 %RAX_val.104, i64* %38, !mcsema_real_eip !65
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -16
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !66
  store i64 %39, i64* %XAX, !mcsema_real_eip !66
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !67
  %40 = inttoptr i64 %RCX_val.106 to i64*, !mcsema_real_eip !67
  store i64 %39, i64* %40, !mcsema_real_eip !67
  store i64 1, i64* %XDX, !mcsema_real_eip !68
  store i64 2, i64* %XSI, !mcsema_real_eip !69
  store i64 3, i64* %R8, !mcsema_real_eip !70
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !71
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !71
  %41 = zext i32 %EDX_val.109 to i64, !mcsema_real_eip !71
  store i64 %41, i64* %XDI, !mcsema_real_eip !71
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -76
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %ESI.111 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.112 = load i32, i32* %ESI.111, !mcsema_real_eip !72
  %42 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !72
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.112, i32* %43, !mcsema_real_eip !72
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -80
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %EDX_val.115 = load i32, i32* %EDX.108, !mcsema_real_eip !73
  %44 = ptrtoint i64* %_allin_new_bt_56 to i64, !mcsema_real_eip !73
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !73
  store i32 %EDX_val.115, i32* %45, !mcsema_real_eip !73
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !74
  %R8D_val.117 = load i32, i32* %R8D.116, !mcsema_real_eip !74
  %46 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !74
  store i64 %46, i64* %XDX, !mcsema_real_eip !74
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !75
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !75
  %49 = load i32, i32* %48, !mcsema_real_eip !75
  %50 = zext i32 %49 to i64, !mcsema_real_eip !75
  store i64 %50, i64* %XCX, !mcsema_real_eip !75
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %51 = ptrtoint i64* %_allin_new_bt_62 to i64, !mcsema_real_eip !76
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !76
  %53 = load i32, i32* %52, !mcsema_real_eip !76
  %54 = zext i32 %53 to i64, !mcsema_real_eip !76
  store i64 %54, i64* %R9, !mcsema_real_eip !76
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -84
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_65 to i64, !mcsema_real_eip !77
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !77
  store i32 %R8D_val.117, i32* %56, !mcsema_real_eip !77
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !78
  %R9D_val.124 = load i32, i32* %R9D.123, !mcsema_real_eip !78
  %57 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !78
  store i64 %57, i64* %R8, !mcsema_real_eip !78
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -84
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %58 = ptrtoint i64* %_allin_new_bt_68 to i64, !mcsema_real_eip !79
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !79
  %60 = load i32, i32* %59, !mcsema_real_eip !79
  %61 = zext i32 %60 to i64, !mcsema_real_eip !79
  store i64 %61, i64* %R9, !mcsema_real_eip !79
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !80
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 -8
  %62 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !80
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, !mcsema_real_eip !80
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !80
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_159)
  %_rsp_fix_161 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_162 = getelementptr i8, i8* %_rsp_fix_161, i64 8
  store i8* %_gep_fix_162, i8** %_RSP_ptr_
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -48
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %EDX_val.129 = load i32, i32* %EDX.108, !mcsema_real_eip !81
  %63 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !81
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !81
  store i32 %EDX_val.129, i32* %64, !mcsema_real_eip !81
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.131 = load i64, i64* %XAX, !mcsema_real_eip !82
  store i64 %RAX_val.131, i64* %_allin_new_bt_77, !mcsema_real_eip !82
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %65 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !83
  store i64 %65, i64* %XAX, !mcsema_real_eip !83
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %65, i64* %_allin_new_bt_83, !mcsema_real_eip !84
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -48
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %66 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !85
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !85
  %68 = load i32, i32* %67, !mcsema_real_eip !85
  %69 = zext i32 %68 to i64, !mcsema_real_eip !85
  store i64 %69, i64* %XCX, !mcsema_real_eip !85
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -32
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !86
  %ECX_val.138 = load i32, i32* %ECX.137, !mcsema_real_eip !86
  %70 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !86
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !86
  store i32 %ECX_val.138, i32* %71, !mcsema_real_eip !86
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %72 = ptrtoint i64* %_allin_new_bt_92 to i64, !mcsema_real_eip !87
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !87
  %74 = load i32, i32* %73, !mcsema_real_eip !87
  %75 = zext i32 %74 to i64, !mcsema_real_eip !87
  store i64 %75, i64* %XCX, !mcsema_real_eip !87
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -36
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !88
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !88
  %78 = load i32, i32* %77, !mcsema_real_eip !88
  %ECX_val.142 = load i32, i32* %ECX.137, !mcsema_real_eip !88
  %79 = add i32 %ECX_val.142, %78, !mcsema_real_eip !88
  %80 = xor i32 %79, %78, !mcsema_real_eip !88
  %81 = xor i32 %80, %ECX_val.142, !mcsema_real_eip !88
  %82 = and i32 %81, 16, !mcsema_real_eip !88
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !88
  store i1 %83, i1* %AF, !mcsema_real_eip !88
  %84 = lshr i32 %79, 31, !mcsema_real_eip !88
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !88
  store i1 %85, i1* %SF, !mcsema_real_eip !88
  %86 = icmp eq i32 %79, 0, !mcsema_real_eip !88
  store i1 %86, i1* %ZF, !mcsema_real_eip !88
  %87 = xor i32 %78, %ECX_val.142, !mcsema_real_eip !88
  %88 = xor i32 %87, -1, !mcsema_real_eip !88
  %89 = and i32 %88, %80, !mcsema_real_eip !88
  %90 = lshr i32 %89, 31, !mcsema_real_eip !88
  %91 = and i32 %90, 1, !mcsema_real_eip !88
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !88
  store i1 %92, i1* %OF, !mcsema_real_eip !88
  %93 = trunc i32 %79 to i8, !mcsema_real_eip !88
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !88
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !88
  %96 = xor i1 %95, true, !mcsema_real_eip !88
  store i1 %96, i1* %PF, !mcsema_real_eip !88
  %97 = icmp ult i32 %79, %78, !mcsema_real_eip !88
  store i1 %97, i1* %CF, !mcsema_real_eip !88
  %98 = zext i32 %79 to i64, !mcsema_real_eip !88
  store i64 %98, i64* %XCX, !mcsema_real_eip !88
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -32
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %99 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !89
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !89
  %101 = load i32, i32* %100, !mcsema_real_eip !89
  %ECX_val.145 = load i32, i32* %ECX.137, !mcsema_real_eip !89
  %102 = add i32 %ECX_val.145, %101, !mcsema_real_eip !89
  %103 = xor i32 %102, %101, !mcsema_real_eip !89
  %104 = xor i32 %103, %ECX_val.145, !mcsema_real_eip !89
  %105 = and i32 %104, 16, !mcsema_real_eip !89
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !89
  store i1 %106, i1* %AF, !mcsema_real_eip !89
  %107 = lshr i32 %102, 31, !mcsema_real_eip !89
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !89
  store i1 %108, i1* %SF, !mcsema_real_eip !89
  %109 = icmp eq i32 %102, 0, !mcsema_real_eip !89
  store i1 %109, i1* %ZF, !mcsema_real_eip !89
  %110 = xor i32 %101, %ECX_val.145, !mcsema_real_eip !89
  %111 = xor i32 %110, -1, !mcsema_real_eip !89
  %112 = and i32 %111, %103, !mcsema_real_eip !89
  %113 = lshr i32 %112, 31, !mcsema_real_eip !89
  %114 = and i32 %113, 1, !mcsema_real_eip !89
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !89
  store i1 %115, i1* %OF, !mcsema_real_eip !89
  %116 = trunc i32 %102 to i8, !mcsema_real_eip !89
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !89
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !89
  %119 = xor i1 %118, true, !mcsema_real_eip !89
  store i1 %119, i1* %PF, !mcsema_real_eip !89
  %120 = icmp ult i32 %102, %101, !mcsema_real_eip !89
  store i1 %120, i1* %CF, !mcsema_real_eip !89
  %121 = zext i32 %102 to i64, !mcsema_real_eip !89
  store i64 %121, i64* %XCX, !mcsema_real_eip !89
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -60
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %ECX_val.148 = load i32, i32* %ECX.137, !mcsema_real_eip !90
  %122 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !90
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !90
  store i32 %ECX_val.148, i32* %123, !mcsema_real_eip !90
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -60
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %124 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !91
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !91
  %126 = load i32, i32* %125, !mcsema_real_eip !91
  %127 = zext i32 %126 to i64, !mcsema_real_eip !91
  store i64 %127, i64* %XSI, !mcsema_real_eip !91
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %128 = load i64, i64* %_allin_new_bt_107, !mcsema_real_eip !92
  store i64 %128, i64* %XDI, !mcsema_real_eip !92
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !93
  store i8 0, i8* %AL.151, !mcsema_real_eip !93
  %RDX_val.154 = load i64, i64* %XDX, !mcsema_real_eip !94
  %RCX_val.155 = load i64, i64* %XCX, !mcsema_real_eip !94
  %R8_val.156 = load i64, i64* %R8, !mcsema_real_eip !94
  %R9_val.157 = load i64, i64* %R9, !mcsema_real_eip !94
  %_load_rsp_ptr_108 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_109 = bitcast i8* %_load_rsp_ptr_108 to i64*
  %129 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !94
  %_new_gep_110 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %130 = load i64, i64* %_allin_new_bt_111, !mcsema_real_eip !94
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %131 = load i64, i64* %_allin_new_bt_113, !mcsema_real_eip !94
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %132 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !94
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %133 = load i64, i64* %_allin_new_bt_117, !mcsema_real_eip !94
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %134 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !94
  %_new_gep_120 = getelementptr i8, i8* %_new_gep_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %135 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !94
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %136 = load i64, i64* %_allin_new_bt_123, !mcsema_real_eip !94
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %137 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !94
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %138 = load i64, i64* %_allin_new_bt_127, !mcsema_real_eip !94
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !94
  %_new_gep_129 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 -8
  %139 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !94
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_130, !mcsema_real_eip !94
  store volatile i8* %_new_gep_129, i8** %_RSP_ptr_
  store i64 %139, i64* %XSP, !mcsema_real_eip !94
  %140 = call x86_64_sysvcc i64 @_printf(i64 %128, i64 %127, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 %140, i64* %XAX, !mcsema_real_eip !94
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -60
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %141 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !95
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !95
  %143 = load i32, i32* %142, !mcsema_real_eip !95
  %144 = zext i32 %143 to i64, !mcsema_real_eip !95
  store i64 %144, i64* %XCX, !mcsema_real_eip !95
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -88
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %EAX_val.163 = load i32, i32* %EAX.86, !mcsema_real_eip !96
  %145 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !96
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !96
  store i32 %EAX_val.163, i32* %146, !mcsema_real_eip !96
  %ECX_val.165 = load i32, i32* %ECX.137, !mcsema_real_eip !97
  %147 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !97
  store i64 %147, i64* %XAX, !mcsema_real_eip !97
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 112
  %148 = add i64 112, %RSP_val.166, !mcsema_real_eip !98
  %_trans_p2i_139 = ptrtoint i8* %_new_gep_138 to i64
  %_trans_p2i_140 = ptrtoint i8* %_load_rsp_ptr_137 to i64
  %_trans_xor_141 = xor i64 %_trans_p2i_139, %_trans_p2i_140
  %149 = xor i64 %_trans_xor_141, 112, !mcsema_real_eip !98
  %150 = and i64 %149, 16, !mcsema_real_eip !98
  %151 = icmp ne i64 %150, 0, !mcsema_real_eip !98
  store i1 %151, i1* %AF, !mcsema_real_eip !98
  %152 = lshr i64 %148, 63, !mcsema_real_eip !98
  %153 = trunc i64 %152 to i1, !mcsema_real_eip !98
  store i1 %153, i1* %SF, !mcsema_real_eip !98
  %_trans_icmp_eq_143 = icmp eq i64 %_trans_p2i_139, 0
  store i1 %_trans_icmp_eq_143, i1* %ZF, !mcsema_real_eip !98
  %_trans_xor_145 = xor i64 %_trans_p2i_140, 112
  %154 = xor i64 %_trans_xor_145, -1, !mcsema_real_eip !98
  %155 = and i64 %154, %_trans_xor_141, !mcsema_real_eip !98
  %156 = lshr i64 %155, 63, !mcsema_real_eip !98
  %157 = and i64 %156, 1, !mcsema_real_eip !98
  %158 = trunc i64 %157 to i1, !mcsema_real_eip !98
  store i1 %158, i1* %OF, !mcsema_real_eip !98
  %_trans_trunc_150 = trunc i64 %_trans_p2i_139 to i8
  %159 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_150), !mcsema_real_eip !98
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !98
  %161 = xor i1 %160, true, !mcsema_real_eip !98
  store i1 %161, i1* %PF, !mcsema_real_eip !98
  %_trans_icmp_ne_152 = icmp ne i64 %_trans_p2i_139, %RSP_val.166
  store i1 %_trans_icmp_ne_152, i1* %CF, !mcsema_real_eip !98
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %148, i64* %XSP, !mcsema_real_eip !98
  %_allin_new_bt_154 = bitcast i8* %_new_gep_138 to i64*
  %162 = load i64, i64* %_allin_new_bt_154, !mcsema_real_eip !99
  %_new_int2ptr_ = inttoptr i64 %162 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %162, i64* %XBP, !mcsema_real_eip !99
  %_new_gep_155 = getelementptr i8, i8* %_new_gep_138, i64 8
  %163 = add i64 %148, 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_155, i8** %_RSP_ptr_
  store i64 %163, i64* %XSP, !mcsema_real_eip !99
  %_new_gep_157 = getelementptr i8, i8* %_new_gep_155, i64 8
  %164 = add i64 %163, 8, !mcsema_real_eip !100
  %_allin_new_bt_158 = bitcast i8* %_new_gep_155 to i64*
  %165 = load i64, i64* %_allin_new_bt_158, !mcsema_real_eip !100
  store i64 %165, i64* %XIP, !mcsema_real_eip !100
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %164, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_4 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x0, %2
  %4 = phi i64* [ %_allin_new_bt_4, %block_0x0 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %5, label %6

; <label>:5:                                      ; preds = %3
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i64* [ %_allin_new_bt_7, %3 ], [ %_address_in_parent_stack_bt_108, %5 ]
  %_new_load_109 = load i64, i64* %7
  store i64 %_new_load_109, i64* %R10, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %8 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %9, !mcsema_real_eip !6
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %10 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !7
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %11, !mcsema_real_eip !7
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -28
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %12 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %13, !mcsema_real_eip !8
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %14 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %15, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -36
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %16 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !10
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %17, !mcsema_real_eip !10
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -40
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %18 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !11
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %19, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -48
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %R10_val.24 = load i64, i64* %R10, !mcsema_real_eip !12
  store i64 %R10_val.24, i64* %_allin_new_bt_28, !mcsema_real_eip !12
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -56
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !13
  store i64 %RAX_val.26, i64* %_allin_new_bt_31, !mcsema_real_eip !13
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -48
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_110 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %20, label %21

; <label>:20:                                     ; preds = %6
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %21

; <label>:21:                                     ; preds = %6, %20
  %22 = phi i64* [ %_allin_new_bt_34, %6 ], [ %_address_in_parent_stack_bt_123, %20 ]
  %_new_load_124 = load i64, i64* %22
  store i64 %_new_load_124, i64* %XAX, !mcsema_real_eip !14
  %23 = inttoptr i64 %_new_load_124 to i64*, !mcsema_real_eip !15
  %24 = inttoptr i64 %_new_load_124 to i32*, !mcsema_real_eip !15
  %_ptr_bt_127 = bitcast i32* %24 to i8*
  %_offset_above_rbp_128 = sub i64 %_new_load_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_ptr_bt_127, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %25, label %26

; <label>:25:                                     ; preds = %21
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  br label %26

; <label>:26:                                     ; preds = %21, %25
  %27 = phi i32* [ %24, %21 ], [ %_address_in_parent_stack_bt_138, %25 ]
  %_new_load_139 = load i32, i32* %27
  %28 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !15
  store i64 %28, i64* %XCX, !mcsema_real_eip !15
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -56
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %_ptr_to_int_140 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_143 = sub i64 %_ptr_to_int_140, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_new_gep_36, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_new_gep_36, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_new_gep_36, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  br i1 %_cond1_n_cond2_cond3_151, label %29, label %30

; <label>:29:                                     ; preds = %26
  %_address_in_parent_stack_bt_153 = bitcast i8* %_pot_address_in_parent_stack_144 to i64*
  br label %30

; <label>:30:                                     ; preds = %26, %29
  %31 = phi i64* [ %_allin_new_bt_37, %26 ], [ %_address_in_parent_stack_bt_153, %29 ]
  %_new_load_154 = load i64, i64* %31
  store i64 %_new_load_154, i64* %XAX, !mcsema_real_eip !16
  %32 = inttoptr i64 %_new_load_154 to i64*, !mcsema_real_eip !17
  %33 = inttoptr i64 %_new_load_154 to i32*, !mcsema_real_eip !17
  %_ptr_bt_157 = bitcast i32* %33 to i8*
  %_offset_above_rbp_158 = sub i64 %_new_load_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_ptr_bt_157, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_ptr_bt_157, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_ptr_bt_157, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %34, label %35

; <label>:34:                                     ; preds = %30
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i32*
  br label %35

; <label>:35:                                     ; preds = %30, %34
  %36 = phi i32* [ %33, %30 ], [ %_address_in_parent_stack_bt_168, %34 ]
  %_new_load_169 = load i32, i32* %36
  %37 = zext i32 %_new_load_169 to i64, !mcsema_real_eip !17
  store i64 %37, i64* %XDX, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.15, !mcsema_real_eip !18
  %EDX_val.34 = load i32, i32* %EDX.12, !mcsema_real_eip !18
  %38 = add i32 %EDX_val.34, %ECX_val.32, !mcsema_real_eip !18
  %39 = xor i32 %38, %ECX_val.32, !mcsema_real_eip !18
  %40 = xor i32 %39, %EDX_val.34, !mcsema_real_eip !18
  %41 = and i32 %40, 16, !mcsema_real_eip !18
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !18
  store i1 %42, i1* %AF, !mcsema_real_eip !18
  %43 = lshr i32 %38, 31, !mcsema_real_eip !18
  %44 = trunc i32 %43 to i1, !mcsema_real_eip !18
  store i1 %44, i1* %SF, !mcsema_real_eip !18
  %45 = icmp eq i32 %38, 0, !mcsema_real_eip !18
  store i1 %45, i1* %ZF, !mcsema_real_eip !18
  %46 = xor i32 %ECX_val.32, %EDX_val.34, !mcsema_real_eip !18
  %47 = xor i32 %46, -1, !mcsema_real_eip !18
  %48 = and i32 %47, %39, !mcsema_real_eip !18
  %49 = lshr i32 %48, 31, !mcsema_real_eip !18
  %50 = and i32 %49, 1, !mcsema_real_eip !18
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !18
  store i1 %51, i1* %OF, !mcsema_real_eip !18
  %52 = trunc i32 %38 to i8, !mcsema_real_eip !18
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !18
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !18
  %55 = xor i1 %54, true, !mcsema_real_eip !18
  store i1 %55, i1* %PF, !mcsema_real_eip !18
  %56 = icmp ult i32 %38, %ECX_val.32, !mcsema_real_eip !18
  store i1 %56, i1* %CF, !mcsema_real_eip !18
  %57 = zext i32 %38 to i64, !mcsema_real_eip !18
  store i64 %57, i64* %XCX, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -72
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %ECX_val.37 = load i32, i32* %ECX.15, !mcsema_real_eip !19
  %58 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !19
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !19
  store i32 %ECX_val.37, i32* %59, !mcsema_real_eip !19
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -48
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_170 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  br i1 %_cond1_n_cond2_cond3_181, label %60, label %61

; <label>:60:                                     ; preds = %35
  %_address_in_parent_stack_bt_183 = bitcast i8* %_pot_address_in_parent_stack_174 to i64*
  br label %61

; <label>:61:                                     ; preds = %35, %60
  %62 = phi i64* [ %_allin_new_bt_43, %35 ], [ %_address_in_parent_stack_bt_183, %60 ]
  %_new_load_184 = load i64, i64* %62
  store i64 %_new_load_184, i64* %XAX, !mcsema_real_eip !20
  %63 = add i64 %_new_load_184, 4, !mcsema_real_eip !21
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !21
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !21
  %_ptr_bt_187 = bitcast i32* %65 to i8*
  %_offset_above_rbp_188 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_ptr_bt_187, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_ptr_bt_187, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_ptr_bt_187, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  br i1 %_cond1_n_cond2_cond3_196, label %66, label %67

; <label>:66:                                     ; preds = %61
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i32*
  br label %67

; <label>:67:                                     ; preds = %61, %66
  %68 = phi i32* [ %65, %61 ], [ %_address_in_parent_stack_bt_198, %66 ]
  %_new_load_199 = load i32, i32* %68
  %69 = zext i32 %_new_load_199 to i64, !mcsema_real_eip !21
  store i64 %69, i64* %XCX, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_200 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  br i1 %_cond1_n_cond2_cond3_211, label %70, label %71

; <label>:70:                                     ; preds = %67
  %_address_in_parent_stack_bt_213 = bitcast i8* %_pot_address_in_parent_stack_204 to i64*
  br label %71

; <label>:71:                                     ; preds = %67, %70
  %72 = phi i64* [ %_allin_new_bt_46, %67 ], [ %_address_in_parent_stack_bt_213, %70 ]
  %_new_load_214 = load i64, i64* %72
  store i64 %_new_load_214, i64* %XAX, !mcsema_real_eip !22
  %73 = add i64 %_new_load_214, 4, !mcsema_real_eip !23
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !23
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !23
  %_ptr_bt_217 = bitcast i32* %75 to i8*
  %_offset_above_rbp_218 = sub i64 %73, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_ptr_bt_217, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_ptr_bt_217, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_ptr_bt_217, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  br i1 %_cond1_n_cond2_cond3_226, label %76, label %77

; <label>:76:                                     ; preds = %71
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i32*
  br label %77

; <label>:77:                                     ; preds = %71, %76
  %78 = phi i32* [ %75, %71 ], [ %_address_in_parent_stack_bt_228, %76 ]
  %_new_load_229 = load i32, i32* %78
  %79 = zext i32 %_new_load_229 to i64, !mcsema_real_eip !23
  store i64 %79, i64* %XDX, !mcsema_real_eip !23
  %ECX_val.43 = load i32, i32* %ECX.15, !mcsema_real_eip !24
  %EDX_val.45 = load i32, i32* %EDX.12, !mcsema_real_eip !24
  %80 = add i32 %EDX_val.45, %ECX_val.43, !mcsema_real_eip !24
  %81 = xor i32 %80, %ECX_val.43, !mcsema_real_eip !24
  %82 = xor i32 %81, %EDX_val.45, !mcsema_real_eip !24
  %83 = and i32 %82, 16, !mcsema_real_eip !24
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !24
  store i1 %84, i1* %AF, !mcsema_real_eip !24
  %85 = lshr i32 %80, 31, !mcsema_real_eip !24
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !24
  store i1 %86, i1* %SF, !mcsema_real_eip !24
  %87 = icmp eq i32 %80, 0, !mcsema_real_eip !24
  store i1 %87, i1* %ZF, !mcsema_real_eip !24
  %88 = xor i32 %ECX_val.43, %EDX_val.45, !mcsema_real_eip !24
  %89 = xor i32 %88, -1, !mcsema_real_eip !24
  %90 = and i32 %89, %81, !mcsema_real_eip !24
  %91 = lshr i32 %90, 31, !mcsema_real_eip !24
  %92 = and i32 %91, 1, !mcsema_real_eip !24
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !24
  store i1 %93, i1* %OF, !mcsema_real_eip !24
  %94 = trunc i32 %80 to i8, !mcsema_real_eip !24
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !24
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !24
  %97 = xor i1 %96, true, !mcsema_real_eip !24
  store i1 %97, i1* %PF, !mcsema_real_eip !24
  %98 = icmp ult i32 %80, %ECX_val.43, !mcsema_real_eip !24
  store i1 %98, i1* %CF, !mcsema_real_eip !24
  %99 = zext i32 %80 to i64, !mcsema_real_eip !24
  store i64 %99, i64* %XCX, !mcsema_real_eip !24
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %ECX_val.48 = load i32, i32* %ECX.15, !mcsema_real_eip !25
  %100 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !25
  store i32 %ECX_val.48, i32* %101, !mcsema_real_eip !25
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -48
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_230 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  br i1 %_cond1_n_cond2_cond3_241, label %102, label %103

; <label>:102:                                    ; preds = %77
  %_address_in_parent_stack_bt_243 = bitcast i8* %_pot_address_in_parent_stack_234 to i64*
  br label %103

; <label>:103:                                    ; preds = %77, %102
  %104 = phi i64* [ %_allin_new_bt_52, %77 ], [ %_address_in_parent_stack_bt_243, %102 ]
  %_new_load_244 = load i64, i64* %104
  store i64 %_new_load_244, i64* %XAX, !mcsema_real_eip !26
  %105 = add i64 %_new_load_244, 8, !mcsema_real_eip !27
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !27
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !27
  %_ptr_bt_247 = bitcast i32* %107 to i8*
  %_offset_above_rbp_248 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_ptr_bt_247, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_ptr_bt_247, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_ptr_bt_247, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  br i1 %_cond1_n_cond2_cond3_256, label %108, label %109

; <label>:108:                                    ; preds = %103
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i32*
  br label %109

; <label>:109:                                    ; preds = %103, %108
  %110 = phi i32* [ %107, %103 ], [ %_address_in_parent_stack_bt_258, %108 ]
  %_new_load_259 = load i32, i32* %110
  %111 = zext i32 %_new_load_259 to i64, !mcsema_real_eip !27
  store i64 %111, i64* %XCX, !mcsema_real_eip !27
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -56
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_260 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  br i1 %_cond1_n_cond2_cond3_271, label %112, label %113

; <label>:112:                                    ; preds = %109
  %_address_in_parent_stack_bt_273 = bitcast i8* %_pot_address_in_parent_stack_264 to i64*
  br label %113

; <label>:113:                                    ; preds = %109, %112
  %114 = phi i64* [ %_allin_new_bt_55, %109 ], [ %_address_in_parent_stack_bt_273, %112 ]
  %_new_load_274 = load i64, i64* %114
  store i64 %_new_load_274, i64* %XAX, !mcsema_real_eip !28
  %115 = add i64 %_new_load_274, 8, !mcsema_real_eip !29
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !29
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !29
  %_ptr_bt_277 = bitcast i32* %117 to i8*
  %_offset_above_rbp_278 = sub i64 %115, %_local_end_to_int_
  %_pot_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_278
  %_cond1_280 = icmp ugt i8* %_ptr_bt_277, %_local_stack_end_ptr_
  %_cond2_1_281 = icmp ugt i8* %_ptr_bt_277, %_parent_stack_end_ptr_
  %_cond2_2_282 = icmp ult i8* %_ptr_bt_277, %_parent_stack_start_ptr_
  %_cond2_283 = or i1 %_cond2_1_281, %_cond2_2_282
  %_cond4_284 = icmp ule i8* %_pot_address_in_parent_stack_279, %_parent_stack_end_ptr_
  %_cond1_n_cond2_285 = and i1 %_cond1_280, %_cond2_283
  %_cond1_n_cond2_cond3_286 = and i1 %_cond1_n_cond2_285, %_cond4_284
  br i1 %_cond1_n_cond2_cond3_286, label %118, label %119

; <label>:118:                                    ; preds = %113
  %_address_in_parent_stack_bt_288 = bitcast i8* %_pot_address_in_parent_stack_279 to i32*
  br label %119

; <label>:119:                                    ; preds = %113, %118
  %120 = phi i32* [ %117, %113 ], [ %_address_in_parent_stack_bt_288, %118 ]
  %_new_load_289 = load i32, i32* %120
  %121 = zext i32 %_new_load_289 to i64, !mcsema_real_eip !29
  store i64 %121, i64* %XDX, !mcsema_real_eip !29
  %ECX_val.54 = load i32, i32* %ECX.15, !mcsema_real_eip !30
  %EDX_val.56 = load i32, i32* %EDX.12, !mcsema_real_eip !30
  %122 = add i32 %EDX_val.56, %ECX_val.54, !mcsema_real_eip !30
  %123 = xor i32 %122, %ECX_val.54, !mcsema_real_eip !30
  %124 = xor i32 %123, %EDX_val.56, !mcsema_real_eip !30
  %125 = and i32 %124, 16, !mcsema_real_eip !30
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !30
  store i1 %126, i1* %AF, !mcsema_real_eip !30
  %127 = lshr i32 %122, 31, !mcsema_real_eip !30
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !30
  store i1 %128, i1* %SF, !mcsema_real_eip !30
  %129 = icmp eq i32 %122, 0, !mcsema_real_eip !30
  store i1 %129, i1* %ZF, !mcsema_real_eip !30
  %130 = xor i32 %ECX_val.54, %EDX_val.56, !mcsema_real_eip !30
  %131 = xor i32 %130, -1, !mcsema_real_eip !30
  %132 = and i32 %131, %123, !mcsema_real_eip !30
  %133 = lshr i32 %132, 31, !mcsema_real_eip !30
  %134 = and i32 %133, 1, !mcsema_real_eip !30
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !30
  store i1 %135, i1* %OF, !mcsema_real_eip !30
  %136 = trunc i32 %122 to i8, !mcsema_real_eip !30
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !30
  %138 = trunc i8 %137 to i1, !mcsema_real_eip !30
  %139 = xor i1 %138, true, !mcsema_real_eip !30
  store i1 %139, i1* %PF, !mcsema_real_eip !30
  %140 = icmp ult i32 %122, %ECX_val.54, !mcsema_real_eip !30
  store i1 %140, i1* %CF, !mcsema_real_eip !30
  %141 = zext i32 %122 to i64, !mcsema_real_eip !30
  store i64 %141, i64* %XCX, !mcsema_real_eip !30
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -64
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %ECX_val.59 = load i32, i32* %ECX.15, !mcsema_real_eip !31
  %142 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !31
  store i32 %ECX_val.59, i32* %143, !mcsema_real_eip !31
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -64
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %144 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !32
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !32
  %_ptr_bt_292 = bitcast i32* %145 to i8*
  %_offset_above_rbp_293 = sub i64 %144, %_local_end_to_int_
  %_pot_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_293
  %_cond1_295 = icmp ugt i8* %_ptr_bt_292, %_local_stack_end_ptr_
  %_cond2_1_296 = icmp ugt i8* %_ptr_bt_292, %_parent_stack_end_ptr_
  %_cond2_2_297 = icmp ult i8* %_ptr_bt_292, %_parent_stack_start_ptr_
  %_cond2_298 = or i1 %_cond2_1_296, %_cond2_2_297
  %_cond4_299 = icmp ule i8* %_pot_address_in_parent_stack_294, %_parent_stack_end_ptr_
  %_cond1_n_cond2_300 = and i1 %_cond1_295, %_cond2_298
  %_cond1_n_cond2_cond3_301 = and i1 %_cond1_n_cond2_300, %_cond4_299
  br i1 %_cond1_n_cond2_cond3_301, label %146, label %147

; <label>:146:                                    ; preds = %119
  %_address_in_parent_stack_bt_303 = bitcast i8* %_pot_address_in_parent_stack_294 to i32*
  br label %147

; <label>:147:                                    ; preds = %119, %146
  %148 = phi i32* [ %145, %119 ], [ %_address_in_parent_stack_bt_303, %146 ]
  %_new_load_304 = load i32, i32* %148
  %149 = zext i32 %_new_load_304 to i64, !mcsema_real_eip !32
  store i64 %149, i64* %XCX, !mcsema_real_eip !32
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %ECX_val.63 = load i32, i32* %ECX.15, !mcsema_real_eip !33
  %150 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !33
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !33
  store i32 %ECX_val.63, i32* %151, !mcsema_real_eip !33
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -72
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_305 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_308 = sub i64 %_ptr_to_int_305, %_local_end_to_int_
  %_pot_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_308
  %_cond1_310 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_311 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_312 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_313 = or i1 %_cond2_1_311, %_cond2_2_312
  %_cond4_314 = icmp ule i8* %_pot_address_in_parent_stack_309, %_parent_stack_end_ptr_
  %_cond1_n_cond2_315 = and i1 %_cond1_310, %_cond2_313
  %_cond1_n_cond2_cond3_316 = and i1 %_cond1_n_cond2_315, %_cond4_314
  br i1 %_cond1_n_cond2_cond3_316, label %152, label %153

; <label>:152:                                    ; preds = %147
  %_address_in_parent_stack_bt_318 = bitcast i8* %_pot_address_in_parent_stack_309 to i64*
  br label %153

; <label>:153:                                    ; preds = %147, %152
  %154 = phi i64* [ %_allin_new_bt_67, %147 ], [ %_address_in_parent_stack_bt_318, %152 ]
  %_new_load_319 = load i64, i64* %154
  store i64 %_new_load_319, i64* %XAX, !mcsema_real_eip !34
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -16
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %_new_load_319, i64* %_allin_new_bt_70, !mcsema_real_eip !35
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !36
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !36
  %_ptr_bt_322 = bitcast i32* %156 to i8*
  %_offset_above_rbp_323 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_323
  %_cond1_325 = icmp ugt i8* %_ptr_bt_322, %_local_stack_end_ptr_
  %_cond2_1_326 = icmp ugt i8* %_ptr_bt_322, %_parent_stack_end_ptr_
  %_cond2_2_327 = icmp ult i8* %_ptr_bt_322, %_parent_stack_start_ptr_
  %_cond2_328 = or i1 %_cond2_1_326, %_cond2_2_327
  %_cond4_329 = icmp ule i8* %_pot_address_in_parent_stack_324, %_parent_stack_end_ptr_
  %_cond1_n_cond2_330 = and i1 %_cond1_325, %_cond2_328
  %_cond1_n_cond2_cond3_331 = and i1 %_cond1_n_cond2_330, %_cond4_329
  br i1 %_cond1_n_cond2_cond3_331, label %157, label %158

; <label>:157:                                    ; preds = %153
  %_address_in_parent_stack_bt_333 = bitcast i8* %_pot_address_in_parent_stack_324 to i32*
  br label %158

; <label>:158:                                    ; preds = %153, %157
  %159 = phi i32* [ %156, %153 ], [ %_address_in_parent_stack_bt_333, %157 ]
  %_new_load_334 = load i32, i32* %159
  %160 = zext i32 %_new_load_334 to i64, !mcsema_real_eip !36
  store i64 %160, i64* %XCX, !mcsema_real_eip !36
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -80
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %ECX_val.70 = load i32, i32* %ECX.15, !mcsema_real_eip !37
  %161 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !37
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.70, i32* %162, !mcsema_real_eip !37
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -16
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_335 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_338 = sub i64 %_ptr_to_int_335, %_local_end_to_int_
  %_pot_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_338
  %_cond1_340 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_341 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_342 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_343 = or i1 %_cond2_1_341, %_cond2_2_342
  %_cond4_344 = icmp ule i8* %_pot_address_in_parent_stack_339, %_parent_stack_end_ptr_
  %_cond1_n_cond2_345 = and i1 %_cond1_340, %_cond2_343
  %_cond1_n_cond2_cond3_346 = and i1 %_cond1_n_cond2_345, %_cond4_344
  br i1 %_cond1_n_cond2_cond3_346, label %163, label %164

; <label>:163:                                    ; preds = %158
  %_address_in_parent_stack_bt_348 = bitcast i8* %_pot_address_in_parent_stack_339 to i64*
  br label %164

; <label>:164:                                    ; preds = %158, %163
  %165 = phi i64* [ %_allin_new_bt_79, %158 ], [ %_address_in_parent_stack_bt_348, %163 ]
  %_new_load_349 = load i64, i64* %165
  store i64 %_new_load_349, i64* %XAX, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  store i64 %_new_load_349, i64* %_allin_new_bt_82, !mcsema_real_eip !39
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -88
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %_ptr_to_int_350 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_353 = sub i64 %_ptr_to_int_350, %_local_end_to_int_
  %_pot_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_353
  %_cond1_355 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_356 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_357 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_358 = or i1 %_cond2_1_356, %_cond2_2_357
  %_cond4_359 = icmp ule i8* %_pot_address_in_parent_stack_354, %_parent_stack_end_ptr_
  %_cond1_n_cond2_360 = and i1 %_cond1_355, %_cond2_358
  %_cond1_n_cond2_cond3_361 = and i1 %_cond1_n_cond2_360, %_cond4_359
  br i1 %_cond1_n_cond2_cond3_361, label %166, label %167

; <label>:166:                                    ; preds = %164
  %_address_in_parent_stack_bt_363 = bitcast i8* %_pot_address_in_parent_stack_354 to i64*
  br label %167

; <label>:167:                                    ; preds = %164, %166
  %168 = phi i64* [ %_allin_new_bt_85, %164 ], [ %_address_in_parent_stack_bt_363, %166 ]
  %_new_load_364 = load i64, i64* %168
  store i64 %_new_load_364, i64* %XAX, !mcsema_real_eip !40
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %169 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !41
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !41
  %_ptr_bt_367 = bitcast i32* %170 to i8*
  %_offset_above_rbp_368 = sub i64 %169, %_local_end_to_int_
  %_pot_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_368
  %_cond1_370 = icmp ugt i8* %_ptr_bt_367, %_local_stack_end_ptr_
  %_cond2_1_371 = icmp ugt i8* %_ptr_bt_367, %_parent_stack_end_ptr_
  %_cond2_2_372 = icmp ult i8* %_ptr_bt_367, %_parent_stack_start_ptr_
  %_cond2_373 = or i1 %_cond2_1_371, %_cond2_2_372
  %_cond4_374 = icmp ule i8* %_pot_address_in_parent_stack_369, %_parent_stack_end_ptr_
  %_cond1_n_cond2_375 = and i1 %_cond1_370, %_cond2_373
  %_cond1_n_cond2_cond3_376 = and i1 %_cond1_n_cond2_375, %_cond4_374
  br i1 %_cond1_n_cond2_cond3_376, label %171, label %172

; <label>:171:                                    ; preds = %167
  %_address_in_parent_stack_bt_378 = bitcast i8* %_pot_address_in_parent_stack_369 to i32*
  br label %172

; <label>:172:                                    ; preds = %167, %171
  %173 = phi i32* [ %170, %167 ], [ %_address_in_parent_stack_bt_378, %171 ]
  %_new_load_379 = load i32, i32* %173
  %174 = zext i32 %_new_load_379 to i64, !mcsema_real_eip !41
  store i64 %174, i64* %XDX, !mcsema_real_eip !41
  %_load_rsp_ptr_89 = load i8*, i8** %_RSP_ptr_
  %RSP_val.76 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_allin_new_bt_90 = bitcast i8* %_load_rsp_ptr_89 to i64*
  %_ptr_to_int_380 = ptrtoint i64* %_allin_new_bt_90 to i64
  %_offset_above_rbp_383 = sub i64 %_ptr_to_int_380, %_local_end_to_int_
  %_pot_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_383
  %_cond1_385 = icmp ugt i8* %_load_rsp_ptr_89, %_local_stack_end_ptr_
  %_cond2_1_386 = icmp ugt i8* %_load_rsp_ptr_89, %_parent_stack_end_ptr_
  %_cond2_2_387 = icmp ult i8* %_load_rsp_ptr_89, %_parent_stack_start_ptr_
  %_cond2_388 = or i1 %_cond2_1_386, %_cond2_2_387
  %_cond4_389 = icmp ule i8* %_pot_address_in_parent_stack_384, %_parent_stack_end_ptr_
  %_cond1_n_cond2_390 = and i1 %_cond1_385, %_cond2_388
  %_cond1_n_cond2_cond3_391 = and i1 %_cond1_n_cond2_390, %_cond4_389
  br i1 %_cond1_n_cond2_cond3_391, label %175, label %176

; <label>:175:                                    ; preds = %172
  %_address_in_parent_stack_bt_393 = bitcast i8* %_pot_address_in_parent_stack_384 to i64*
  br label %176

; <label>:176:                                    ; preds = %172, %175
  %177 = phi i64* [ %_allin_new_bt_90, %172 ], [ %_address_in_parent_stack_bt_393, %175 ]
  %_new_load_394 = load i64, i64* %177
  %_new_int2ptr_ = inttoptr i64 %_new_load_394 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_394, i64* %XBP, !mcsema_real_eip !42
  %_new_gep_91 = getelementptr i8, i8* %_load_rsp_ptr_89, i64 8
  %178 = add i64 %RSP_val.76, 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_91, i8** %_RSP_ptr_
  store i64 %178, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_93 = getelementptr i8, i8* %_new_gep_91, i64 8
  %179 = add i64 %178, 8, !mcsema_real_eip !43
  %_allin_new_bt_94 = bitcast i8* %_new_gep_91 to i64*
  %_ptr_to_int_395 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_offset_above_rbp_398 = sub i64 %_ptr_to_int_395, %_local_end_to_int_
  %_pot_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_398
  %_cond1_400 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_401 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_402 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_403 = or i1 %_cond2_1_401, %_cond2_2_402
  %_cond4_404 = icmp ule i8* %_pot_address_in_parent_stack_399, %_parent_stack_end_ptr_
  %_cond1_n_cond2_405 = and i1 %_cond1_400, %_cond2_403
  %_cond1_n_cond2_cond3_406 = and i1 %_cond1_n_cond2_405, %_cond4_404
  br i1 %_cond1_n_cond2_cond3_406, label %180, label %181

; <label>:180:                                    ; preds = %176
  %_address_in_parent_stack_bt_408 = bitcast i8* %_pot_address_in_parent_stack_399 to i64*
  br label %181

; <label>:181:                                    ; preds = %176, %180
  %182 = phi i64* [ %_allin_new_bt_94, %176 ], [ %_address_in_parent_stack_bt_408, %180 ]
  %_new_load_409 = load i64, i64* %182
  store i64 %_new_load_409, i64* %XIP, !mcsema_real_eip !43
  store volatile i8* %_new_gep_93, i8** %_RSP_ptr_
  store i64 %179, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !44
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !44
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !44
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !44
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !44
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !44
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !44
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !44
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !44
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !44
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !44
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !44
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !44
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !44
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !44
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !44
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !44
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !44
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !44
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !44
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !44
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !44
  br label %block_0x90, !mcsema_real_eip !44

block_0x90:                                       ; preds = %entry
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !44
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !44
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !44
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !45
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !46
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.81, 112, !mcsema_real_eip !46
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !46
  %4 = and i64 %3, 16, !mcsema_real_eip !46
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !46
  store i1 %5, i1* %AF, !mcsema_real_eip !46
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !46
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !46
  %8 = xor i1 %7, true, !mcsema_real_eip !46
  store i1 %8, i1* %PF, !mcsema_real_eip !46
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !46
  %9 = lshr i64 %2, 63, !mcsema_real_eip !46
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !46
  store i1 %10, i1* %SF, !mcsema_real_eip !46
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !46
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !46
  %12 = lshr i64 %11, 63, !mcsema_real_eip !46
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !46
  store i1 %13, i1* %OF, !mcsema_real_eip !46
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !46
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !47
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !48
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %15, !mcsema_real_eip !48
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !49
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !49
  store i32 10, i32* %17, !mcsema_real_eip !49
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !50
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !50
  store i32 10, i32* %19, !mcsema_real_eip !50
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !51
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %21, !mcsema_real_eip !51
  store i64 24, i64* %XAX, !mcsema_real_eip !52
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !53
  %22 = zext i32 %EAX_val.87 to i64, !mcsema_real_eip !53
  store i64 %22, i64* %XCX, !mcsema_real_eip !53
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -72
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !54
  store i64 %RDI_val.89, i64* %_allin_new_bt_27, !mcsema_real_eip !54
  %RCX_val.90 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.90, i64* %XDI, !mcsema_real_eip !55
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %23 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !56
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !56
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.90)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !56
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !57
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %25, label %26

; <label>:25:                                     ; preds = %block_0x90
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %26

; <label>:26:                                     ; preds = %block_0x90, %25
  %27 = phi i64* [ %_allin_new_bt_36, %block_0x90 ], [ %_address_in_parent_stack_bt_, %25 ]
  %_new_load_ = load i64, i64* %27
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !58
  %28 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !59
  %29 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !59
  store i32 5, i32* %29, !mcsema_real_eip !59
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_165 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %30, label %31

; <label>:30:                                     ; preds = %26
  %_address_in_parent_stack_bt_178 = bitcast i8* %_pot_address_in_parent_stack_169 to i64*
  br label %31

; <label>:31:                                     ; preds = %26, %30
  %32 = phi i64* [ %_allin_new_bt_39, %26 ], [ %_address_in_parent_stack_bt_178, %30 ]
  %_new_load_179 = load i64, i64* %32
  store i64 %_new_load_179, i64* %XAX, !mcsema_real_eip !60
  %33 = add i64 %_new_load_179, 4, !mcsema_real_eip !61
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !61
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !61
  store i32 5, i32* %35, !mcsema_real_eip !61
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_180 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %36, label %37

; <label>:36:                                     ; preds = %31
  %_address_in_parent_stack_bt_193 = bitcast i8* %_pot_address_in_parent_stack_184 to i64*
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i64* [ %_allin_new_bt_42, %31 ], [ %_address_in_parent_stack_bt_193, %36 ]
  %_new_load_194 = load i64, i64* %38
  store i64 %_new_load_194, i64* %XAX, !mcsema_real_eip !62
  %39 = add i64 %_new_load_194, 8, !mcsema_real_eip !63
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !63
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !63
  store i32 5, i32* %41, !mcsema_real_eip !63
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_195 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_198 = sub i64 %_ptr_to_int_195, %_local_end_to_int_
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  br i1 %_cond1_n_cond2_cond3_206, label %42, label %43

; <label>:42:                                     ; preds = %37
  %_address_in_parent_stack_bt_208 = bitcast i8* %_pot_address_in_parent_stack_199 to i64*
  br label %43

; <label>:43:                                     ; preds = %37, %42
  %44 = phi i64* [ %_allin_new_bt_45, %37 ], [ %_address_in_parent_stack_bt_208, %42 ]
  %_new_load_209 = load i64, i64* %44
  store i64 %_new_load_209, i64* %XAX, !mcsema_real_eip !64
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %XCX
  %45 = add i64 %_new_ptr2int_47, 8, !mcsema_real_eip !65
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !65
  %RAX_val.104 = load i64, i64* %XAX, !mcsema_real_eip !65
  store i64 %RAX_val.104, i64* %46, !mcsema_real_eip !65
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -16
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !66
  store i64 %47, i64* %XAX, !mcsema_real_eip !66
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !67
  %48 = inttoptr i64 %RCX_val.106 to i64*, !mcsema_real_eip !67
  store i64 %47, i64* %48, !mcsema_real_eip !67
  store i64 1, i64* %XDX, !mcsema_real_eip !68
  store i64 2, i64* %XSI, !mcsema_real_eip !69
  store i64 3, i64* %R8, !mcsema_real_eip !70
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !71
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !71
  %49 = zext i32 %EDX_val.109 to i64, !mcsema_real_eip !71
  store i64 %49, i64* %XDI, !mcsema_real_eip !71
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -76
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %ESI.111 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.112 = load i32, i32* %ESI.111, !mcsema_real_eip !72
  %50 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !72
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.112, i32* %51, !mcsema_real_eip !72
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -80
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %EDX_val.115 = load i32, i32* %EDX.108, !mcsema_real_eip !73
  %52 = ptrtoint i64* %_allin_new_bt_56 to i64, !mcsema_real_eip !73
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !73
  store i32 %EDX_val.115, i32* %53, !mcsema_real_eip !73
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !74
  %R8D_val.117 = load i32, i32* %R8D.116, !mcsema_real_eip !74
  %54 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !74
  store i64 %54, i64* %XDX, !mcsema_real_eip !74
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !75
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !75
  %_ptr_bt_212 = bitcast i32* %56 to i8*
  %_offset_above_rbp_213 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_ptr_bt_212, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_ptr_bt_212, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_ptr_bt_212, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %57, label %58

; <label>:57:                                     ; preds = %43
  %_address_in_parent_stack_bt_223 = bitcast i8* %_pot_address_in_parent_stack_214 to i32*
  br label %58

; <label>:58:                                     ; preds = %43, %57
  %59 = phi i32* [ %56, %43 ], [ %_address_in_parent_stack_bt_223, %57 ]
  %_new_load_224 = load i32, i32* %59
  %60 = zext i32 %_new_load_224 to i64, !mcsema_real_eip !75
  store i64 %60, i64* %XCX, !mcsema_real_eip !75
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_62 to i64, !mcsema_real_eip !76
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !76
  %_ptr_bt_227 = bitcast i32* %62 to i8*
  %_offset_above_rbp_228 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_ptr_bt_227, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_ptr_bt_227, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_ptr_bt_227, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  br i1 %_cond1_n_cond2_cond3_236, label %63, label %64

; <label>:63:                                     ; preds = %58
  %_address_in_parent_stack_bt_238 = bitcast i8* %_pot_address_in_parent_stack_229 to i32*
  br label %64

; <label>:64:                                     ; preds = %58, %63
  %65 = phi i32* [ %62, %58 ], [ %_address_in_parent_stack_bt_238, %63 ]
  %_new_load_239 = load i32, i32* %65
  %66 = zext i32 %_new_load_239 to i64, !mcsema_real_eip !76
  store i64 %66, i64* %R9, !mcsema_real_eip !76
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -84
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %67 = ptrtoint i64* %_allin_new_bt_65 to i64, !mcsema_real_eip !77
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !77
  store i32 %R8D_val.117, i32* %68, !mcsema_real_eip !77
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !78
  %R9D_val.124 = load i32, i32* %R9D.123, !mcsema_real_eip !78
  %69 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !78
  store i64 %69, i64* %R8, !mcsema_real_eip !78
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -84
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_68 to i64, !mcsema_real_eip !79
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !79
  %_ptr_bt_242 = bitcast i32* %71 to i8*
  %_offset_above_rbp_243 = sub i64 %70, %_local_end_to_int_
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_ptr_bt_242, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_ptr_bt_242, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_ptr_bt_242, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  br i1 %_cond1_n_cond2_cond3_251, label %72, label %73

; <label>:72:                                     ; preds = %64
  %_address_in_parent_stack_bt_253 = bitcast i8* %_pot_address_in_parent_stack_244 to i32*
  br label %73

; <label>:73:                                     ; preds = %64, %72
  %74 = phi i32* [ %71, %64 ], [ %_address_in_parent_stack_bt_253, %72 ]
  %_new_load_254 = load i32, i32* %74
  %75 = zext i32 %_new_load_254 to i64, !mcsema_real_eip !79
  store i64 %75, i64* %R9, !mcsema_real_eip !79
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !80
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 -8
  %76 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !80
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, !mcsema_real_eip !80
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !80
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_159)
  %_rsp_fix_161 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_162 = getelementptr i8, i8* %_rsp_fix_161, i64 8
  store i8* %_gep_fix_162, i8** %_RSP_ptr_
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -48
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %EDX_val.129 = load i32, i32* %EDX.108, !mcsema_real_eip !81
  %77 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !81
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !81
  store i32 %EDX_val.129, i32* %78, !mcsema_real_eip !81
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.131 = load i64, i64* %XAX, !mcsema_real_eip !82
  store i64 %RAX_val.131, i64* %_allin_new_bt_77, !mcsema_real_eip !82
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %_ptr_to_int_255 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %79, label %80

; <label>:79:                                     ; preds = %73
  %_address_in_parent_stack_bt_268 = bitcast i8* %_pot_address_in_parent_stack_259 to i64*
  br label %80

; <label>:80:                                     ; preds = %73, %79
  %81 = phi i64* [ %_allin_new_bt_80, %73 ], [ %_address_in_parent_stack_bt_268, %79 ]
  %_new_load_269 = load i64, i64* %81
  store i64 %_new_load_269, i64* %XAX, !mcsema_real_eip !83
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %_new_load_269, i64* %_allin_new_bt_83, !mcsema_real_eip !84
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -48
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %82 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !85
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !85
  %_ptr_bt_272 = bitcast i32* %83 to i8*
  %_offset_above_rbp_273 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_ptr_bt_272, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_ptr_bt_272, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_ptr_bt_272, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  br i1 %_cond1_n_cond2_cond3_281, label %84, label %85

; <label>:84:                                     ; preds = %80
  %_address_in_parent_stack_bt_283 = bitcast i8* %_pot_address_in_parent_stack_274 to i32*
  br label %85

; <label>:85:                                     ; preds = %80, %84
  %86 = phi i32* [ %83, %80 ], [ %_address_in_parent_stack_bt_283, %84 ]
  %_new_load_284 = load i32, i32* %86
  %87 = zext i32 %_new_load_284 to i64, !mcsema_real_eip !85
  store i64 %87, i64* %XCX, !mcsema_real_eip !85
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -32
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !86
  %ECX_val.138 = load i32, i32* %ECX.137, !mcsema_real_eip !86
  %88 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !86
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !86
  store i32 %ECX_val.138, i32* %89, !mcsema_real_eip !86
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %90 = ptrtoint i64* %_allin_new_bt_92 to i64, !mcsema_real_eip !87
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !87
  %_ptr_bt_287 = bitcast i32* %91 to i8*
  %_offset_above_rbp_288 = sub i64 %90, %_local_end_to_int_
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_ptr_bt_287, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_ptr_bt_287, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_ptr_bt_287, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  br i1 %_cond1_n_cond2_cond3_296, label %92, label %93

; <label>:92:                                     ; preds = %85
  %_address_in_parent_stack_bt_298 = bitcast i8* %_pot_address_in_parent_stack_289 to i32*
  br label %93

; <label>:93:                                     ; preds = %85, %92
  %94 = phi i32* [ %91, %85 ], [ %_address_in_parent_stack_bt_298, %92 ]
  %_new_load_299 = load i32, i32* %94
  %95 = zext i32 %_new_load_299 to i64, !mcsema_real_eip !87
  store i64 %95, i64* %XCX, !mcsema_real_eip !87
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -36
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %96 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !88
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !88
  %_ptr_bt_302 = bitcast i32* %97 to i8*
  %_offset_above_rbp_303 = sub i64 %96, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_ptr_bt_302, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_ptr_bt_302, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_ptr_bt_302, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %98, label %99

; <label>:98:                                     ; preds = %93
  %_address_in_parent_stack_bt_313 = bitcast i8* %_pot_address_in_parent_stack_304 to i32*
  br label %99

; <label>:99:                                     ; preds = %93, %98
  %100 = phi i32* [ %97, %93 ], [ %_address_in_parent_stack_bt_313, %98 ]
  %_new_load_314 = load i32, i32* %100
  %ECX_val.142 = load i32, i32* %ECX.137, !mcsema_real_eip !88
  %101 = add i32 %ECX_val.142, %_new_load_314, !mcsema_real_eip !88
  %102 = xor i32 %101, %_new_load_314, !mcsema_real_eip !88
  %103 = xor i32 %102, %ECX_val.142, !mcsema_real_eip !88
  %104 = and i32 %103, 16, !mcsema_real_eip !88
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !88
  store i1 %105, i1* %AF, !mcsema_real_eip !88
  %106 = lshr i32 %101, 31, !mcsema_real_eip !88
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !88
  store i1 %107, i1* %SF, !mcsema_real_eip !88
  %108 = icmp eq i32 %101, 0, !mcsema_real_eip !88
  store i1 %108, i1* %ZF, !mcsema_real_eip !88
  %109 = xor i32 %_new_load_314, %ECX_val.142, !mcsema_real_eip !88
  %110 = xor i32 %109, -1, !mcsema_real_eip !88
  %111 = and i32 %110, %102, !mcsema_real_eip !88
  %112 = lshr i32 %111, 31, !mcsema_real_eip !88
  %113 = and i32 %112, 1, !mcsema_real_eip !88
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !88
  store i1 %114, i1* %OF, !mcsema_real_eip !88
  %115 = trunc i32 %101 to i8, !mcsema_real_eip !88
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !88
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !88
  %118 = xor i1 %117, true, !mcsema_real_eip !88
  store i1 %118, i1* %PF, !mcsema_real_eip !88
  %119 = icmp ult i32 %101, %_new_load_314, !mcsema_real_eip !88
  store i1 %119, i1* %CF, !mcsema_real_eip !88
  %120 = zext i32 %101 to i64, !mcsema_real_eip !88
  store i64 %120, i64* %XCX, !mcsema_real_eip !88
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -32
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %121 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !89
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !89
  %_ptr_bt_317 = bitcast i32* %122 to i8*
  %_offset_above_rbp_318 = sub i64 %121, %_local_end_to_int_
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_ptr_bt_317, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_ptr_bt_317, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_ptr_bt_317, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  br i1 %_cond1_n_cond2_cond3_326, label %123, label %124

; <label>:123:                                    ; preds = %99
  %_address_in_parent_stack_bt_328 = bitcast i8* %_pot_address_in_parent_stack_319 to i32*
  br label %124

; <label>:124:                                    ; preds = %99, %123
  %125 = phi i32* [ %122, %99 ], [ %_address_in_parent_stack_bt_328, %123 ]
  %_new_load_329 = load i32, i32* %125
  %ECX_val.145 = load i32, i32* %ECX.137, !mcsema_real_eip !89
  %126 = add i32 %ECX_val.145, %_new_load_329, !mcsema_real_eip !89
  %127 = xor i32 %126, %_new_load_329, !mcsema_real_eip !89
  %128 = xor i32 %127, %ECX_val.145, !mcsema_real_eip !89
  %129 = and i32 %128, 16, !mcsema_real_eip !89
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !89
  store i1 %130, i1* %AF, !mcsema_real_eip !89
  %131 = lshr i32 %126, 31, !mcsema_real_eip !89
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !89
  store i1 %132, i1* %SF, !mcsema_real_eip !89
  %133 = icmp eq i32 %126, 0, !mcsema_real_eip !89
  store i1 %133, i1* %ZF, !mcsema_real_eip !89
  %134 = xor i32 %_new_load_329, %ECX_val.145, !mcsema_real_eip !89
  %135 = xor i32 %134, -1, !mcsema_real_eip !89
  %136 = and i32 %135, %127, !mcsema_real_eip !89
  %137 = lshr i32 %136, 31, !mcsema_real_eip !89
  %138 = and i32 %137, 1, !mcsema_real_eip !89
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !89
  store i1 %139, i1* %OF, !mcsema_real_eip !89
  %140 = trunc i32 %126 to i8, !mcsema_real_eip !89
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !89
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !89
  %143 = xor i1 %142, true, !mcsema_real_eip !89
  store i1 %143, i1* %PF, !mcsema_real_eip !89
  %144 = icmp ult i32 %126, %_new_load_329, !mcsema_real_eip !89
  store i1 %144, i1* %CF, !mcsema_real_eip !89
  %145 = zext i32 %126 to i64, !mcsema_real_eip !89
  store i64 %145, i64* %XCX, !mcsema_real_eip !89
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -60
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %ECX_val.148 = load i32, i32* %ECX.137, !mcsema_real_eip !90
  %146 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !90
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !90
  store i32 %ECX_val.148, i32* %147, !mcsema_real_eip !90
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -60
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %148 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !91
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !91
  %_ptr_bt_332 = bitcast i32* %149 to i8*
  %_offset_above_rbp_333 = sub i64 %148, %_local_end_to_int_
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_ptr_bt_332, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_ptr_bt_332, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_ptr_bt_332, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  br i1 %_cond1_n_cond2_cond3_341, label %150, label %151

; <label>:150:                                    ; preds = %124
  %_address_in_parent_stack_bt_343 = bitcast i8* %_pot_address_in_parent_stack_334 to i32*
  br label %151

; <label>:151:                                    ; preds = %124, %150
  %152 = phi i32* [ %149, %124 ], [ %_address_in_parent_stack_bt_343, %150 ]
  %_new_load_344 = load i32, i32* %152
  %153 = zext i32 %_new_load_344 to i64, !mcsema_real_eip !91
  store i64 %153, i64* %XSI, !mcsema_real_eip !91
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %_ptr_to_int_345 = ptrtoint i64* %_allin_new_bt_107 to i64
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %_local_end_to_int_
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  br i1 %_cond1_n_cond2_cond3_356, label %154, label %155

; <label>:154:                                    ; preds = %151
  %_address_in_parent_stack_bt_358 = bitcast i8* %_pot_address_in_parent_stack_349 to i64*
  br label %155

; <label>:155:                                    ; preds = %151, %154
  %156 = phi i64* [ %_allin_new_bt_107, %151 ], [ %_address_in_parent_stack_bt_358, %154 ]
  %_new_load_359 = load i64, i64* %156
  store i64 %_new_load_359, i64* %XDI, !mcsema_real_eip !92
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !93
  store i8 0, i8* %AL.151, !mcsema_real_eip !93
  %RDX_val.154 = load i64, i64* %XDX, !mcsema_real_eip !94
  %RCX_val.155 = load i64, i64* %XCX, !mcsema_real_eip !94
  %R8_val.156 = load i64, i64* %R8, !mcsema_real_eip !94
  %R9_val.157 = load i64, i64* %R9, !mcsema_real_eip !94
  %_load_rsp_ptr_108 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_109 = bitcast i8* %_load_rsp_ptr_108 to i64*
  %_ptr_to_int_360 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_offset_above_rbp_363 = sub i64 %_ptr_to_int_360, %_local_end_to_int_
  %_pot_address_in_parent_stack_364 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_cond1_365 = icmp ugt i8* %_load_rsp_ptr_108, %_local_stack_end_ptr_
  %_cond2_1_366 = icmp ugt i8* %_load_rsp_ptr_108, %_parent_stack_end_ptr_
  %_cond2_2_367 = icmp ult i8* %_load_rsp_ptr_108, %_parent_stack_start_ptr_
  %_cond2_368 = or i1 %_cond2_1_366, %_cond2_2_367
  %_cond4_369 = icmp ule i8* %_pot_address_in_parent_stack_364, %_parent_stack_end_ptr_
  %_cond1_n_cond2_370 = and i1 %_cond1_365, %_cond2_368
  %_cond1_n_cond2_cond3_371 = and i1 %_cond1_n_cond2_370, %_cond4_369
  br i1 %_cond1_n_cond2_cond3_371, label %157, label %158

; <label>:157:                                    ; preds = %155
  %_address_in_parent_stack_bt_373 = bitcast i8* %_pot_address_in_parent_stack_364 to i64*
  br label %158

; <label>:158:                                    ; preds = %155, %157
  %159 = phi i64* [ %_allin_new_bt_109, %155 ], [ %_address_in_parent_stack_bt_373, %157 ]
  %_new_load_374 = load i64, i64* %159
  %_new_gep_110 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %_ptr_to_int_375 = ptrtoint i64* %_allin_new_bt_111 to i64
  %_offset_above_rbp_378 = sub i64 %_ptr_to_int_375, %_local_end_to_int_
  %_pot_address_in_parent_stack_379 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_cond1_380 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_381 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_382 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_383 = or i1 %_cond2_1_381, %_cond2_2_382
  %_cond4_384 = icmp ule i8* %_pot_address_in_parent_stack_379, %_parent_stack_end_ptr_
  %_cond1_n_cond2_385 = and i1 %_cond1_380, %_cond2_383
  %_cond1_n_cond2_cond3_386 = and i1 %_cond1_n_cond2_385, %_cond4_384
  br i1 %_cond1_n_cond2_cond3_386, label %160, label %161

; <label>:160:                                    ; preds = %158
  %_address_in_parent_stack_bt_388 = bitcast i8* %_pot_address_in_parent_stack_379 to i64*
  br label %161

; <label>:161:                                    ; preds = %158, %160
  %162 = phi i64* [ %_allin_new_bt_111, %158 ], [ %_address_in_parent_stack_bt_388, %160 ]
  %_new_load_389 = load i64, i64* %162
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %_ptr_to_int_390 = ptrtoint i64* %_allin_new_bt_113 to i64
  %_offset_above_rbp_393 = sub i64 %_ptr_to_int_390, %_local_end_to_int_
  %_pot_address_in_parent_stack_394 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_cond1_395 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_396 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_397 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_398 = or i1 %_cond2_1_396, %_cond2_2_397
  %_cond4_399 = icmp ule i8* %_pot_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond1_n_cond2_400 = and i1 %_cond1_395, %_cond2_398
  %_cond1_n_cond2_cond3_401 = and i1 %_cond1_n_cond2_400, %_cond4_399
  br i1 %_cond1_n_cond2_cond3_401, label %163, label %164

; <label>:163:                                    ; preds = %161
  %_address_in_parent_stack_bt_403 = bitcast i8* %_pot_address_in_parent_stack_394 to i64*
  br label %164

; <label>:164:                                    ; preds = %161, %163
  %165 = phi i64* [ %_allin_new_bt_113, %161 ], [ %_address_in_parent_stack_bt_403, %163 ]
  %_new_load_404 = load i64, i64* %165
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_405 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_408 = sub i64 %_ptr_to_int_405, %_local_end_to_int_
  %_pot_address_in_parent_stack_409 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_cond1_410 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_411 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_412 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_413 = or i1 %_cond2_1_411, %_cond2_2_412
  %_cond4_414 = icmp ule i8* %_pot_address_in_parent_stack_409, %_parent_stack_end_ptr_
  %_cond1_n_cond2_415 = and i1 %_cond1_410, %_cond2_413
  %_cond1_n_cond2_cond3_416 = and i1 %_cond1_n_cond2_415, %_cond4_414
  br i1 %_cond1_n_cond2_cond3_416, label %166, label %167

; <label>:166:                                    ; preds = %164
  %_address_in_parent_stack_bt_418 = bitcast i8* %_pot_address_in_parent_stack_409 to i64*
  br label %167

; <label>:167:                                    ; preds = %164, %166
  %168 = phi i64* [ %_allin_new_bt_115, %164 ], [ %_address_in_parent_stack_bt_418, %166 ]
  %_new_load_419 = load i64, i64* %168
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %_ptr_to_int_420 = ptrtoint i64* %_allin_new_bt_117 to i64
  %_offset_above_rbp_423 = sub i64 %_ptr_to_int_420, %_local_end_to_int_
  %_pot_address_in_parent_stack_424 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_423
  %_cond1_425 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_426 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_427 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_428 = or i1 %_cond2_1_426, %_cond2_2_427
  %_cond4_429 = icmp ule i8* %_pot_address_in_parent_stack_424, %_parent_stack_end_ptr_
  %_cond1_n_cond2_430 = and i1 %_cond1_425, %_cond2_428
  %_cond1_n_cond2_cond3_431 = and i1 %_cond1_n_cond2_430, %_cond4_429
  br i1 %_cond1_n_cond2_cond3_431, label %169, label %170

; <label>:169:                                    ; preds = %167
  %_address_in_parent_stack_bt_433 = bitcast i8* %_pot_address_in_parent_stack_424 to i64*
  br label %170

; <label>:170:                                    ; preds = %167, %169
  %171 = phi i64* [ %_allin_new_bt_117, %167 ], [ %_address_in_parent_stack_bt_433, %169 ]
  %_new_load_434 = load i64, i64* %171
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %_ptr_to_int_435 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_438 = sub i64 %_ptr_to_int_435, %_local_end_to_int_
  %_pot_address_in_parent_stack_439 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_438
  %_cond1_440 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_441 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_442 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_443 = or i1 %_cond2_1_441, %_cond2_2_442
  %_cond4_444 = icmp ule i8* %_pot_address_in_parent_stack_439, %_parent_stack_end_ptr_
  %_cond1_n_cond2_445 = and i1 %_cond1_440, %_cond2_443
  %_cond1_n_cond2_cond3_446 = and i1 %_cond1_n_cond2_445, %_cond4_444
  br i1 %_cond1_n_cond2_cond3_446, label %172, label %173

; <label>:172:                                    ; preds = %170
  %_address_in_parent_stack_bt_448 = bitcast i8* %_pot_address_in_parent_stack_439 to i64*
  br label %173

; <label>:173:                                    ; preds = %170, %172
  %174 = phi i64* [ %_allin_new_bt_119, %170 ], [ %_address_in_parent_stack_bt_448, %172 ]
  %_new_load_449 = load i64, i64* %174
  %_new_gep_120 = getelementptr i8, i8* %_new_gep_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %_ptr_to_int_450 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_453 = sub i64 %_ptr_to_int_450, %_local_end_to_int_
  %_pot_address_in_parent_stack_454 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_453
  %_cond1_455 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_456 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_457 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_458 = or i1 %_cond2_1_456, %_cond2_2_457
  %_cond4_459 = icmp ule i8* %_pot_address_in_parent_stack_454, %_parent_stack_end_ptr_
  %_cond1_n_cond2_460 = and i1 %_cond1_455, %_cond2_458
  %_cond1_n_cond2_cond3_461 = and i1 %_cond1_n_cond2_460, %_cond4_459
  br i1 %_cond1_n_cond2_cond3_461, label %175, label %176

; <label>:175:                                    ; preds = %173
  %_address_in_parent_stack_bt_463 = bitcast i8* %_pot_address_in_parent_stack_454 to i64*
  br label %176

; <label>:176:                                    ; preds = %173, %175
  %177 = phi i64* [ %_allin_new_bt_121, %173 ], [ %_address_in_parent_stack_bt_463, %175 ]
  %_new_load_464 = load i64, i64* %177
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %_ptr_to_int_465 = ptrtoint i64* %_allin_new_bt_123 to i64
  %_offset_above_rbp_468 = sub i64 %_ptr_to_int_465, %_local_end_to_int_
  %_pot_address_in_parent_stack_469 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_468
  %_cond1_470 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_471 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_472 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_473 = or i1 %_cond2_1_471, %_cond2_2_472
  %_cond4_474 = icmp ule i8* %_pot_address_in_parent_stack_469, %_parent_stack_end_ptr_
  %_cond1_n_cond2_475 = and i1 %_cond1_470, %_cond2_473
  %_cond1_n_cond2_cond3_476 = and i1 %_cond1_n_cond2_475, %_cond4_474
  br i1 %_cond1_n_cond2_cond3_476, label %178, label %179

; <label>:178:                                    ; preds = %176
  %_address_in_parent_stack_bt_478 = bitcast i8* %_pot_address_in_parent_stack_469 to i64*
  br label %179

; <label>:179:                                    ; preds = %176, %178
  %180 = phi i64* [ %_allin_new_bt_123, %176 ], [ %_address_in_parent_stack_bt_478, %178 ]
  %_new_load_479 = load i64, i64* %180
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %_ptr_to_int_480 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_offset_above_rbp_483 = sub i64 %_ptr_to_int_480, %_local_end_to_int_
  %_pot_address_in_parent_stack_484 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_483
  %_cond1_485 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_486 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_487 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_488 = or i1 %_cond2_1_486, %_cond2_2_487
  %_cond4_489 = icmp ule i8* %_pot_address_in_parent_stack_484, %_parent_stack_end_ptr_
  %_cond1_n_cond2_490 = and i1 %_cond1_485, %_cond2_488
  %_cond1_n_cond2_cond3_491 = and i1 %_cond1_n_cond2_490, %_cond4_489
  br i1 %_cond1_n_cond2_cond3_491, label %181, label %182

; <label>:181:                                    ; preds = %179
  %_address_in_parent_stack_bt_493 = bitcast i8* %_pot_address_in_parent_stack_484 to i64*
  br label %182

; <label>:182:                                    ; preds = %179, %181
  %183 = phi i64* [ %_allin_new_bt_125, %179 ], [ %_address_in_parent_stack_bt_493, %181 ]
  %_new_load_494 = load i64, i64* %183
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %_ptr_to_int_495 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_offset_above_rbp_498 = sub i64 %_ptr_to_int_495, %_local_end_to_int_
  %_pot_address_in_parent_stack_499 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_498
  %_cond1_500 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_501 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_502 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_503 = or i1 %_cond2_1_501, %_cond2_2_502
  %_cond4_504 = icmp ule i8* %_pot_address_in_parent_stack_499, %_parent_stack_end_ptr_
  %_cond1_n_cond2_505 = and i1 %_cond1_500, %_cond2_503
  %_cond1_n_cond2_cond3_506 = and i1 %_cond1_n_cond2_505, %_cond4_504
  br i1 %_cond1_n_cond2_cond3_506, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_508 = bitcast i8* %_pot_address_in_parent_stack_499 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %_allin_new_bt_127, %182 ], [ %_address_in_parent_stack_bt_508, %184 ]
  %_new_load_509 = load i64, i64* %186
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !94
  %_new_gep_129 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 -8
  %187 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !94
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_130, !mcsema_real_eip !94
  store volatile i8* %_new_gep_129, i8** %_RSP_ptr_
  store i64 %187, i64* %XSP, !mcsema_real_eip !94
  %188 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_359, i64 %153, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %_new_load_374, i64 %_new_load_389, i64 %_new_load_404, i64 %_new_load_419, i64 %_new_load_434, i64 %_new_load_449, i64 %_new_load_464, i64 %_new_load_479, i64 %_new_load_494, i64 %_new_load_509)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 %188, i64* %XAX, !mcsema_real_eip !94
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -60
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %189 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !95
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !95
  %_ptr_bt_512 = bitcast i32* %190 to i8*
  %_offset_above_rbp_513 = sub i64 %189, %_local_end_to_int_
  %_pot_address_in_parent_stack_514 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_513
  %_cond1_515 = icmp ugt i8* %_ptr_bt_512, %_local_stack_end_ptr_
  %_cond2_1_516 = icmp ugt i8* %_ptr_bt_512, %_parent_stack_end_ptr_
  %_cond2_2_517 = icmp ult i8* %_ptr_bt_512, %_parent_stack_start_ptr_
  %_cond2_518 = or i1 %_cond2_1_516, %_cond2_2_517
  %_cond4_519 = icmp ule i8* %_pot_address_in_parent_stack_514, %_parent_stack_end_ptr_
  %_cond1_n_cond2_520 = and i1 %_cond1_515, %_cond2_518
  %_cond1_n_cond2_cond3_521 = and i1 %_cond1_n_cond2_520, %_cond4_519
  br i1 %_cond1_n_cond2_cond3_521, label %191, label %192

; <label>:191:                                    ; preds = %185
  %_address_in_parent_stack_bt_523 = bitcast i8* %_pot_address_in_parent_stack_514 to i32*
  br label %192

; <label>:192:                                    ; preds = %185, %191
  %193 = phi i32* [ %190, %185 ], [ %_address_in_parent_stack_bt_523, %191 ]
  %_new_load_524 = load i32, i32* %193
  %194 = zext i32 %_new_load_524 to i64, !mcsema_real_eip !95
  store i64 %194, i64* %XCX, !mcsema_real_eip !95
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -88
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %EAX_val.163 = load i32, i32* %EAX.86, !mcsema_real_eip !96
  %195 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !96
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !96
  store i32 %EAX_val.163, i32* %196, !mcsema_real_eip !96
  %ECX_val.165 = load i32, i32* %ECX.137, !mcsema_real_eip !97
  %197 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !97
  store i64 %197, i64* %XAX, !mcsema_real_eip !97
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 112
  %198 = add i64 112, %RSP_val.166, !mcsema_real_eip !98
  %_trans_p2i_139 = ptrtoint i8* %_new_gep_138 to i64
  %_trans_p2i_140 = ptrtoint i8* %_load_rsp_ptr_137 to i64
  %_trans_xor_141 = xor i64 %_trans_p2i_139, %_trans_p2i_140
  %199 = xor i64 %_trans_xor_141, 112, !mcsema_real_eip !98
  %200 = and i64 %199, 16, !mcsema_real_eip !98
  %201 = icmp ne i64 %200, 0, !mcsema_real_eip !98
  store i1 %201, i1* %AF, !mcsema_real_eip !98
  %202 = lshr i64 %198, 63, !mcsema_real_eip !98
  %203 = trunc i64 %202 to i1, !mcsema_real_eip !98
  store i1 %203, i1* %SF, !mcsema_real_eip !98
  %_trans_icmp_eq_143 = icmp eq i64 %_trans_p2i_139, 0
  store i1 %_trans_icmp_eq_143, i1* %ZF, !mcsema_real_eip !98
  %_trans_xor_145 = xor i64 %_trans_p2i_140, 112
  %204 = xor i64 %_trans_xor_145, -1, !mcsema_real_eip !98
  %205 = and i64 %204, %_trans_xor_141, !mcsema_real_eip !98
  %206 = lshr i64 %205, 63, !mcsema_real_eip !98
  %207 = and i64 %206, 1, !mcsema_real_eip !98
  %208 = trunc i64 %207 to i1, !mcsema_real_eip !98
  store i1 %208, i1* %OF, !mcsema_real_eip !98
  %_trans_trunc_150 = trunc i64 %_trans_p2i_139 to i8
  %209 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_150), !mcsema_real_eip !98
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !98
  %211 = xor i1 %210, true, !mcsema_real_eip !98
  store i1 %211, i1* %PF, !mcsema_real_eip !98
  %_trans_icmp_ne_152 = icmp ne i64 %_trans_p2i_139, %RSP_val.166
  store i1 %_trans_icmp_ne_152, i1* %CF, !mcsema_real_eip !98
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !98
  %_allin_new_bt_154 = bitcast i8* %_new_gep_138 to i64*
  %_ptr_to_int_525 = ptrtoint i64* %_allin_new_bt_154 to i64
  %_offset_above_rbp_528 = sub i64 %_ptr_to_int_525, %_local_end_to_int_
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_531 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond1_n_cond2_535, %_cond4_534
  br i1 %_cond1_n_cond2_cond3_536, label %212, label %213

; <label>:212:                                    ; preds = %192
  %_address_in_parent_stack_bt_538 = bitcast i8* %_pot_address_in_parent_stack_529 to i64*
  br label %213

; <label>:213:                                    ; preds = %192, %212
  %214 = phi i64* [ %_allin_new_bt_154, %192 ], [ %_address_in_parent_stack_bt_538, %212 ]
  %_new_load_539 = load i64, i64* %214
  %_new_int2ptr_ = inttoptr i64 %_new_load_539 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_539, i64* %XBP, !mcsema_real_eip !99
  %_new_gep_155 = getelementptr i8, i8* %_new_gep_138, i64 8
  %215 = add i64 %198, 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_155, i8** %_RSP_ptr_
  store i64 %215, i64* %XSP, !mcsema_real_eip !99
  %_new_gep_157 = getelementptr i8, i8* %_new_gep_155, i64 8
  %216 = add i64 %215, 8, !mcsema_real_eip !100
  %_allin_new_bt_158 = bitcast i8* %_new_gep_155 to i64*
  %_ptr_to_int_540 = ptrtoint i64* %_allin_new_bt_158 to i64
  %_offset_above_rbp_543 = sub i64 %_ptr_to_int_540, %_local_end_to_int_
  %_pot_address_in_parent_stack_544 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_543
  %_cond1_545 = icmp ugt i8* %_new_gep_155, %_local_stack_end_ptr_
  %_cond2_1_546 = icmp ugt i8* %_new_gep_155, %_parent_stack_end_ptr_
  %_cond2_2_547 = icmp ult i8* %_new_gep_155, %_parent_stack_start_ptr_
  %_cond2_548 = or i1 %_cond2_1_546, %_cond2_2_547
  %_cond4_549 = icmp ule i8* %_pot_address_in_parent_stack_544, %_parent_stack_end_ptr_
  %_cond1_n_cond2_550 = and i1 %_cond1_545, %_cond2_548
  %_cond1_n_cond2_cond3_551 = and i1 %_cond1_n_cond2_550, %_cond4_549
  br i1 %_cond1_n_cond2_cond3_551, label %217, label %218

; <label>:217:                                    ; preds = %213
  %_address_in_parent_stack_bt_553 = bitcast i8* %_pot_address_in_parent_stack_544 to i64*
  br label %218

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i64* [ %_allin_new_bt_158, %213 ], [ %_address_in_parent_stack_bt_553, %217 ]
  %_new_load_554 = load i64, i64* %219
  store i64 %_new_load_554, i64* %XIP, !mcsema_real_eip !100
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %216, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
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
!6 = !{i64 12}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 21}
!10 = !{i64 24}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 36}
!14 = !{i64 40}
!15 = !{i64 44}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 52}
!19 = !{i64 54}
!20 = !{i64 57}
!21 = !{i64 61}
!22 = !{i64 64}
!23 = !{i64 68}
!24 = !{i64 71}
!25 = !{i64 73}
!26 = !{i64 76}
!27 = !{i64 80}
!28 = !{i64 83}
!29 = !{i64 87}
!30 = !{i64 90}
!31 = !{i64 92}
!32 = !{i64 95}
!33 = !{i64 98}
!34 = !{i64 101}
!35 = !{i64 105}
!36 = !{i64 109}
!37 = !{i64 112}
!38 = !{i64 115}
!39 = !{i64 119}
!40 = !{i64 123}
!41 = !{i64 127}
!42 = !{i64 130}
!43 = !{i64 131}
!44 = !{i64 144}
!45 = !{i64 145}
!46 = !{i64 148}
!47 = !{i64 152}
!48 = !{i64 162}
!49 = !{i64 169}
!50 = !{i64 176}
!51 = !{i64 183}
!52 = !{i64 190}
!53 = !{i64 195}
!54 = !{i64 197}
!55 = !{i64 201}
!56 = !{i64 204}
!57 = !{i64 209}
!58 = !{i64 213}
!59 = !{i64 217}
!60 = !{i64 223}
!61 = !{i64 227}
!62 = !{i64 234}
!63 = !{i64 238}
!64 = !{i64 245}
!65 = !{i64 252}
!66 = !{i64 256}
!67 = !{i64 260}
!68 = !{i64 263}
!69 = !{i64 268}
!70 = !{i64 273}
!71 = !{i64 279}
!72 = !{i64 281}
!73 = !{i64 284}
!74 = !{i64 287}
!75 = !{i64 290}
!76 = !{i64 293}
!77 = !{i64 297}
!78 = !{i64 301}
!79 = !{i64 304}
!80 = !{i64 308}
!81 = !{i64 313}
!82 = !{i64 316}
!83 = !{i64 320}
!84 = !{i64 324}
!85 = !{i64 328}
!86 = !{i64 331}
!87 = !{i64 334}
!88 = !{i64 337}
!89 = !{i64 340}
!90 = !{i64 343}
!91 = !{i64 346}
!92 = !{i64 349}
!93 = !{i64 353}
!94 = !{i64 355}
!95 = !{i64 360}
!96 = !{i64 363}
!97 = !{i64 366}
!98 = !{i64 368}
!99 = !{i64 372}
!100 = !{i64 373}
