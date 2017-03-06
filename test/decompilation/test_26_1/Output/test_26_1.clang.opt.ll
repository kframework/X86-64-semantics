; ModuleID = 'Output/test_26_1.clang.opt.bc'
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
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !44
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !44
  %1 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !44
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !44
  store i64 %RBP_val.78, i64* %2, !mcsema_real_eip !44
  store i64 %1, i64* %XSP, !mcsema_real_eip !44
  store i64 %1, i64* %XBP, !mcsema_real_eip !45
  %3 = sub i64 %1, 112, !mcsema_real_eip !46
  %4 = xor i64 %3, %1, !mcsema_real_eip !46
  %5 = xor i64 %4, 112, !mcsema_real_eip !46
  %6 = and i64 %5, 16, !mcsema_real_eip !46
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !46
  store i1 %7, i1* %AF, !mcsema_real_eip !46
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !46
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !46
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !46
  %11 = xor i1 %10, true, !mcsema_real_eip !46
  store i1 %11, i1* %PF, !mcsema_real_eip !46
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !46
  store i1 %12, i1* %ZF, !mcsema_real_eip !46
  %13 = lshr i64 %3, 63, !mcsema_real_eip !46
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !46
  store i1 %14, i1* %SF, !mcsema_real_eip !46
  %15 = icmp ult i64 %1, 112, !mcsema_real_eip !46
  store i1 %15, i1* %CF, !mcsema_real_eip !46
  %16 = xor i64 %1, 112, !mcsema_real_eip !46
  %17 = and i64 %16, %4, !mcsema_real_eip !46
  %18 = lshr i64 %17, 63, !mcsema_real_eip !46
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !46
  store i1 %19, i1* %OF, !mcsema_real_eip !46
  store i64 %3, i64* %XSP, !mcsema_real_eip !46
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !47
  %20 = add i64 %1, -4, !mcsema_real_eip !48
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !48
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %22, !mcsema_real_eip !48
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !49
  %23 = add i64 %RBP_val.83, -16, !mcsema_real_eip !49
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !49
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !49
  store i32 10, i32* %25, !mcsema_real_eip !49
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !50
  %26 = add i64 %RBP_val.84, -12, !mcsema_real_eip !50
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !50
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !50
  store i32 10, i32* %28, !mcsema_real_eip !50
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !51
  %29 = add i64 %RBP_val.85, -8, !mcsema_real_eip !51
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !51
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %31, !mcsema_real_eip !51
  store i64 24, i64* %XAX, !mcsema_real_eip !52
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !53
  %32 = zext i32 %EAX_val.87 to i64, !mcsema_real_eip !53
  store i64 %32, i64* %XCX, !mcsema_real_eip !53
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !54
  %33 = add i64 %RBP_val.88, -72, !mcsema_real_eip !54
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !54
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !54
  store i64 %RDI_val.89, i64* %34, !mcsema_real_eip !54
  %RCX_val.90 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.90, i64* %XDI, !mcsema_real_eip !55
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %35 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !56
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !56
  store i64 %35, i64* %XSP, !mcsema_real_eip !56
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.90), !mcsema_real_eip !56
  store i64 %37, i64* %XAX, !mcsema_real_eip !56
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !57
  %38 = add i64 %RBP_val.93, -24, !mcsema_real_eip !57
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !57
  store i64 %37, i64* %39, !mcsema_real_eip !57
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !58
  %40 = add i64 %RBP_val.95, -24, !mcsema_real_eip !58
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !58
  %42 = load i64, i64* %41, !mcsema_real_eip !58
  store i64 %42, i64* %XAX, !mcsema_real_eip !58
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !59
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !59
  store i32 5, i32* %44, !mcsema_real_eip !59
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !60
  %45 = add i64 %RBP_val.97, -24, !mcsema_real_eip !60
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !60
  %47 = load i64, i64* %46, !mcsema_real_eip !60
  store i64 %47, i64* %XAX, !mcsema_real_eip !60
  %48 = add i64 %47, 4, !mcsema_real_eip !61
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !61
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !61
  store i32 5, i32* %50, !mcsema_real_eip !61
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !62
  %51 = add i64 %RBP_val.99, -24, !mcsema_real_eip !62
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !62
  %53 = load i64, i64* %52, !mcsema_real_eip !62
  store i64 %53, i64* %XAX, !mcsema_real_eip !62
  %54 = add i64 %53, 8, !mcsema_real_eip !63
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !63
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !63
  store i32 5, i32* %56, !mcsema_real_eip !63
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !64
  %57 = add i64 %RBP_val.101, -24, !mcsema_real_eip !64
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !64
  %59 = load i64, i64* %58, !mcsema_real_eip !64
  store i64 %59, i64* %XAX, !mcsema_real_eip !64
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !65
  store i64 %RSP_val.102, i64* %XCX, !mcsema_real_eip !65
  %60 = add i64 %RSP_val.102, 8, !mcsema_real_eip !66
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !66
  store i64 %59, i64* %61, !mcsema_real_eip !66
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !67
  %62 = add i64 %RBP_val.105, -16, !mcsema_real_eip !67
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !67
  store i64 %62, i64* %XAX, !mcsema_real_eip !67
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !68
  %64 = inttoptr i64 %RCX_val.106 to i64*, !mcsema_real_eip !68
  store i64 %62, i64* %64, !mcsema_real_eip !68
  store i64 1, i64* %XDX, !mcsema_real_eip !69
  store i64 2, i64* %XSI, !mcsema_real_eip !70
  store i64 3, i64* %R8, !mcsema_real_eip !71
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !72
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !72
  %65 = zext i32 %EDX_val.109 to i64, !mcsema_real_eip !72
  store i64 %65, i64* %XDI, !mcsema_real_eip !72
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !73
  %66 = add i64 %RBP_val.110, -76, !mcsema_real_eip !73
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !73
  %ESI.111 = bitcast i64* %XSI to i32*, !mcsema_real_eip !73
  %ESI_val.112 = load i32, i32* %ESI.111, !mcsema_real_eip !73
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !73
  store i32 %ESI_val.112, i32* %68, !mcsema_real_eip !73
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !74
  %69 = add i64 %RBP_val.113, -80, !mcsema_real_eip !74
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !74
  %EDX_val.115 = load i32, i32* %EDX.108, !mcsema_real_eip !74
  %71 = inttoptr i64 %69 to i32*, !mcsema_real_eip !74
  store i32 %EDX_val.115, i32* %71, !mcsema_real_eip !74
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !75
  %R8D_val.117 = load i32, i32* %R8D.116, !mcsema_real_eip !75
  %72 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !75
  store i64 %72, i64* %XDX, !mcsema_real_eip !75
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !76
  %73 = add i64 %RBP_val.118, -80, !mcsema_real_eip !76
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !76
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !76
  %76 = load i32, i32* %75, !mcsema_real_eip !76
  %77 = zext i32 %76 to i64, !mcsema_real_eip !76
  store i64 %77, i64* %XCX, !mcsema_real_eip !76
  %78 = add i64 %RBP_val.118, -76, !mcsema_real_eip !77
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !77
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !77
  %81 = load i32, i32* %80, !mcsema_real_eip !77
  %82 = zext i32 %81 to i64, !mcsema_real_eip !77
  store i64 %82, i64* %R9, !mcsema_real_eip !77
  %83 = add i64 %RBP_val.118, -84, !mcsema_real_eip !78
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !78
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !78
  store i32 %R8D_val.117, i32* %85, !mcsema_real_eip !78
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !79
  %R9D_val.124 = load i32, i32* %R9D.123, !mcsema_real_eip !79
  %86 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !79
  store i64 %86, i64* %R8, !mcsema_real_eip !79
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !80
  %87 = add i64 %RBP_val.125, -84, !mcsema_real_eip !80
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !80
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !80
  %90 = load i32, i32* %89, !mcsema_real_eip !80
  %91 = zext i32 %90 to i64, !mcsema_real_eip !80
  store i64 %91, i64* %R9, !mcsema_real_eip !80
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !81
  %92 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !81
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !81
  store i64 -4981261766360305936, i64* %93, !mcsema_real_eip !81
  store i64 %92, i64* %XSP, !mcsema_real_eip !81
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !81
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !82
  %94 = add i64 %RBP_val.127, -48, !mcsema_real_eip !82
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !82
  %EDX_val.129 = load i32, i32* %EDX.108, !mcsema_real_eip !82
  %96 = inttoptr i64 %94 to i32*, !mcsema_real_eip !82
  store i32 %EDX_val.129, i32* %96, !mcsema_real_eip !82
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !83
  %97 = add i64 %RBP_val.130, -56, !mcsema_real_eip !83
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !83
  %RAX_val.131 = load i64, i64* %XAX, !mcsema_real_eip !83
  store i64 %RAX_val.131, i64* %98, !mcsema_real_eip !83
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !84
  %99 = add i64 %RBP_val.132, -56, !mcsema_real_eip !84
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !84
  %101 = load i64, i64* %100, !mcsema_real_eip !84
  store i64 %101, i64* %XAX, !mcsema_real_eip !84
  %102 = add i64 %RBP_val.132, -40, !mcsema_real_eip !85
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !85
  store i64 %101, i64* %103, !mcsema_real_eip !85
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !86
  %104 = add i64 %RBP_val.135, -48, !mcsema_real_eip !86
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !86
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !86
  %107 = load i32, i32* %106, !mcsema_real_eip !86
  %108 = zext i32 %107 to i64, !mcsema_real_eip !86
  store i64 %108, i64* %XCX, !mcsema_real_eip !86
  %109 = add i64 %RBP_val.135, -32, !mcsema_real_eip !87
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !87
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !87
  %ECX_val.138 = load i32, i32* %ECX.137, !mcsema_real_eip !87
  %111 = inttoptr i64 %109 to i32*, !mcsema_real_eip !87
  store i32 %ECX_val.138, i32* %111, !mcsema_real_eip !87
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !88
  %112 = add i64 %RBP_val.139, -40, !mcsema_real_eip !88
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !88
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !88
  %115 = load i32, i32* %114, !mcsema_real_eip !88
  %116 = zext i32 %115 to i64, !mcsema_real_eip !88
  store i64 %116, i64* %XCX, !mcsema_real_eip !88
  %117 = add i64 %RBP_val.139, -36, !mcsema_real_eip !89
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !89
  %119 = inttoptr i64 %117 to i32*, !mcsema_real_eip !89
  %120 = load i32, i32* %119, !mcsema_real_eip !89
  %ECX_val.142 = load i32, i32* %ECX.137, !mcsema_real_eip !89
  %121 = add i32 %ECX_val.142, %120, !mcsema_real_eip !89
  %122 = xor i32 %121, %120, !mcsema_real_eip !89
  %123 = xor i32 %122, %ECX_val.142, !mcsema_real_eip !89
  %124 = and i32 %123, 16, !mcsema_real_eip !89
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !89
  store i1 %125, i1* %AF, !mcsema_real_eip !89
  %126 = lshr i32 %121, 31, !mcsema_real_eip !89
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !89
  store i1 %127, i1* %SF, !mcsema_real_eip !89
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !89
  store i1 %128, i1* %ZF, !mcsema_real_eip !89
  %129 = xor i32 %120, %ECX_val.142, !mcsema_real_eip !89
  %130 = xor i32 %129, -1, !mcsema_real_eip !89
  %131 = and i32 %130, %122, !mcsema_real_eip !89
  %132 = lshr i32 %131, 31, !mcsema_real_eip !89
  %133 = and i32 %132, 1, !mcsema_real_eip !89
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !89
  store i1 %134, i1* %OF, !mcsema_real_eip !89
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !89
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !89
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !89
  %138 = xor i1 %137, true, !mcsema_real_eip !89
  store i1 %138, i1* %PF, !mcsema_real_eip !89
  %139 = icmp ult i32 %121, %120, !mcsema_real_eip !89
  store i1 %139, i1* %CF, !mcsema_real_eip !89
  %140 = zext i32 %121 to i64, !mcsema_real_eip !89
  store i64 %140, i64* %XCX, !mcsema_real_eip !89
  %141 = add i64 %RBP_val.139, -32, !mcsema_real_eip !90
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !90
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !90
  %144 = load i32, i32* %143, !mcsema_real_eip !90
  %ECX_val.145 = load i32, i32* %ECX.137, !mcsema_real_eip !90
  %145 = add i32 %ECX_val.145, %144, !mcsema_real_eip !90
  %146 = xor i32 %145, %144, !mcsema_real_eip !90
  %147 = xor i32 %146, %ECX_val.145, !mcsema_real_eip !90
  %148 = and i32 %147, 16, !mcsema_real_eip !90
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !90
  store i1 %149, i1* %AF, !mcsema_real_eip !90
  %150 = lshr i32 %145, 31, !mcsema_real_eip !90
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !90
  store i1 %151, i1* %SF, !mcsema_real_eip !90
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !90
  store i1 %152, i1* %ZF, !mcsema_real_eip !90
  %153 = xor i32 %144, %ECX_val.145, !mcsema_real_eip !90
  %154 = xor i32 %153, -1, !mcsema_real_eip !90
  %155 = and i32 %154, %146, !mcsema_real_eip !90
  %156 = lshr i32 %155, 31, !mcsema_real_eip !90
  %157 = and i32 %156, 1, !mcsema_real_eip !90
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !90
  store i1 %158, i1* %OF, !mcsema_real_eip !90
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !90
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !90
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !90
  %162 = xor i1 %161, true, !mcsema_real_eip !90
  store i1 %162, i1* %PF, !mcsema_real_eip !90
  %163 = icmp ult i32 %145, %144, !mcsema_real_eip !90
  store i1 %163, i1* %CF, !mcsema_real_eip !90
  %164 = zext i32 %145 to i64, !mcsema_real_eip !90
  store i64 %164, i64* %XCX, !mcsema_real_eip !90
  %165 = add i64 %RBP_val.139, -60, !mcsema_real_eip !91
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !91
  %ECX_val.148 = load i32, i32* %ECX.137, !mcsema_real_eip !91
  %167 = inttoptr i64 %165 to i32*, !mcsema_real_eip !91
  store i32 %ECX_val.148, i32* %167, !mcsema_real_eip !91
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !92
  %168 = add i64 %RBP_val.149, -60, !mcsema_real_eip !92
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !92
  %170 = inttoptr i64 %168 to i32*, !mcsema_real_eip !92
  %171 = load i32, i32* %170, !mcsema_real_eip !92
  %172 = zext i32 %171 to i64, !mcsema_real_eip !92
  store i64 %172, i64* %XSI, !mcsema_real_eip !92
  %173 = add i64 %RBP_val.149, -72, !mcsema_real_eip !93
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !93
  %175 = load i64, i64* %174, !mcsema_real_eip !93
  store i64 %175, i64* %XDI, !mcsema_real_eip !93
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  store i8 0, i8* %AL.151, !mcsema_real_eip !94
  %RDX_val.154 = load i64, i64* %XDX, !mcsema_real_eip !95
  %RCX_val.155 = load i64, i64* %XCX, !mcsema_real_eip !95
  %R8_val.156 = load i64, i64* %R8, !mcsema_real_eip !95
  %R9_val.157 = load i64, i64* %R9, !mcsema_real_eip !95
  %RSP_val.158 = load i64, i64* %XSP, !mcsema_real_eip !95
  %176 = inttoptr i64 %RSP_val.158 to i64*, !mcsema_real_eip !95
  %177 = load i64, i64* %176, !mcsema_real_eip !95
  %178 = add i64 %RSP_val.158, 8, !mcsema_real_eip !95
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !95
  %180 = load i64, i64* %179, !mcsema_real_eip !95
  %181 = add i64 %178, 8, !mcsema_real_eip !95
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !95
  %183 = load i64, i64* %182, !mcsema_real_eip !95
  %184 = add i64 %181, 8, !mcsema_real_eip !95
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !95
  %186 = load i64, i64* %185, !mcsema_real_eip !95
  %187 = add i64 %184, 8, !mcsema_real_eip !95
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !95
  %189 = load i64, i64* %188, !mcsema_real_eip !95
  %190 = add i64 %187, 8, !mcsema_real_eip !95
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !95
  %192 = load i64, i64* %191, !mcsema_real_eip !95
  %193 = add i64 %190, 8, !mcsema_real_eip !95
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !95
  %195 = load i64, i64* %194, !mcsema_real_eip !95
  %196 = add i64 %193, 8, !mcsema_real_eip !95
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !95
  %198 = load i64, i64* %197, !mcsema_real_eip !95
  %199 = add i64 %196, 8, !mcsema_real_eip !95
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !95
  %201 = load i64, i64* %200, !mcsema_real_eip !95
  %202 = add i64 %199, 8, !mcsema_real_eip !95
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !95
  %204 = load i64, i64* %203, !mcsema_real_eip !95
  %205 = sub i64 %RSP_val.158, 8, !mcsema_real_eip !95
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %206, !mcsema_real_eip !95
  store i64 %205, i64* %XSP, !mcsema_real_eip !95
  %207 = call x86_64_sysvcc i64 @_printf(i64 %175, i64 %172, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204), !mcsema_real_eip !95
  store i64 %207, i64* %XAX, !mcsema_real_eip !95
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !96
  %208 = add i64 %RBP_val.160, -60, !mcsema_real_eip !96
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !96
  %210 = inttoptr i64 %208 to i32*, !mcsema_real_eip !96
  %211 = load i32, i32* %210, !mcsema_real_eip !96
  %212 = zext i32 %211 to i64, !mcsema_real_eip !96
  store i64 %212, i64* %XCX, !mcsema_real_eip !96
  %213 = add i64 %RBP_val.160, -88, !mcsema_real_eip !97
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !97
  %EAX_val.163 = load i32, i32* %EAX.86, !mcsema_real_eip !97
  %215 = inttoptr i64 %213 to i32*, !mcsema_real_eip !97
  store i32 %EAX_val.163, i32* %215, !mcsema_real_eip !97
  %ECX_val.165 = load i32, i32* %ECX.137, !mcsema_real_eip !98
  %216 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !98
  store i64 %216, i64* %XAX, !mcsema_real_eip !98
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !99
  %217 = add i64 112, %RSP_val.166, !mcsema_real_eip !99
  %218 = xor i64 %217, %RSP_val.166, !mcsema_real_eip !99
  %219 = xor i64 %218, 112, !mcsema_real_eip !99
  %220 = and i64 %219, 16, !mcsema_real_eip !99
  %221 = icmp ne i64 %220, 0, !mcsema_real_eip !99
  store i1 %221, i1* %AF, !mcsema_real_eip !99
  %222 = lshr i64 %217, 63, !mcsema_real_eip !99
  %223 = trunc i64 %222 to i1, !mcsema_real_eip !99
  store i1 %223, i1* %SF, !mcsema_real_eip !99
  %224 = icmp eq i64 %217, 0, !mcsema_real_eip !99
  store i1 %224, i1* %ZF, !mcsema_real_eip !99
  %225 = xor i64 %RSP_val.166, 112, !mcsema_real_eip !99
  %226 = xor i64 %225, -1, !mcsema_real_eip !99
  %227 = and i64 %226, %218, !mcsema_real_eip !99
  %228 = lshr i64 %227, 63, !mcsema_real_eip !99
  %229 = and i64 %228, 1, !mcsema_real_eip !99
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !99
  store i1 %230, i1* %OF, !mcsema_real_eip !99
  %231 = trunc i64 %217 to i8, !mcsema_real_eip !99
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !99
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !99
  %234 = xor i1 %233, true, !mcsema_real_eip !99
  store i1 %234, i1* %PF, !mcsema_real_eip !99
  %235 = icmp ult i64 %217, %RSP_val.166, !mcsema_real_eip !99
  store i1 %235, i1* %CF, !mcsema_real_eip !99
  store i64 %217, i64* %XSP, !mcsema_real_eip !99
  %236 = inttoptr i64 %217 to i64*, !mcsema_real_eip !100
  %237 = load i64, i64* %236, !mcsema_real_eip !100
  store i64 %237, i64* %XBP, !mcsema_real_eip !100
  %238 = add i64 %217, 8, !mcsema_real_eip !100
  store i64 %238, i64* %XSP, !mcsema_real_eip !100
  %239 = add i64 %238, 8, !mcsema_real_eip !101
  %240 = inttoptr i64 %238 to i64*, !mcsema_real_eip !101
  %241 = load i64, i64* %240, !mcsema_real_eip !101
  store i64 %241, i64* %XIP, !mcsema_real_eip !101
  store i64 %239, i64* %XSP, !mcsema_real_eip !101
  ret void, !mcsema_real_eip !101
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
!65 = !{i64 249}
!66 = !{i64 252}
!67 = !{i64 256}
!68 = !{i64 260}
!69 = !{i64 263}
!70 = !{i64 268}
!71 = !{i64 273}
!72 = !{i64 279}
!73 = !{i64 281}
!74 = !{i64 284}
!75 = !{i64 287}
!76 = !{i64 290}
!77 = !{i64 293}
!78 = !{i64 297}
!79 = !{i64 301}
!80 = !{i64 304}
!81 = !{i64 308}
!82 = !{i64 313}
!83 = !{i64 316}
!84 = !{i64 320}
!85 = !{i64 324}
!86 = !{i64 328}
!87 = !{i64 331}
!88 = !{i64 334}
!89 = !{i64 337}
!90 = !{i64 340}
!91 = !{i64 343}
!92 = !{i64 346}
!93 = !{i64 349}
!94 = !{i64 353}
!95 = !{i64 355}
!96 = !{i64 360}
!97 = !{i64 363}
!98 = !{i64 366}
!99 = !{i64 368}
!100 = !{i64 372}
!101 = !{i64 373}
