; ModuleID = 'Output/test_26.clang.opt.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x228 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\16\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\01\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %5 = add i64 %RBP_val.5, 48, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 40, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %R10, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  store i64 %11, i64* %R11, !mcsema_real_eip !7
  %13 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !8
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !8
  %16 = load i32, i32* %15, !mcsema_real_eip !8
  %17 = zext i32 %16 to i64, !mcsema_real_eip !8
  store i64 %17, i64* %XBX, !mcsema_real_eip !8
  %18 = add i64 %RBP_val.5, -56, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !9
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !9
  store i64 %RDI_val.10, i64* %19, !mcsema_real_eip !9
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %20 = add i64 %RBP_val.11, -48, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !10
  %ESI.12 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.13 = load i32, i32* %ESI.12, !mcsema_real_eip !10
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.13, i32* %22, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %23 = add i64 %RBP_val.14, -48, !mcsema_real_eip !11
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !11
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !11
  %26 = load i32, i32* %25, !mcsema_real_eip !11
  %27 = zext i32 %26 to i64, !mcsema_real_eip !11
  store i64 %27, i64* %XSI, !mcsema_real_eip !11
  %28 = add i64 %RBP_val.14, -32, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !12
  %ESI_val.17 = load i32, i32* %ESI.12, !mcsema_real_eip !12
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !12
  store i32 %ESI_val.17, i32* %30, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %31 = add i64 %RBP_val.18, -56, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !13
  %33 = load i64, i64* %32, !mcsema_real_eip !13
  store i64 %33, i64* %XDI, !mcsema_real_eip !13
  %34 = add i64 %RBP_val.18, -40, !mcsema_real_eip !14
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !14
  store i64 %33, i64* %35, !mcsema_real_eip !14
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %36 = add i64 %RBP_val.21, -64, !mcsema_real_eip !15
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !15
  %RDX_val.22 = load i64, i64* %XDX, !mcsema_real_eip !15
  store i64 %RDX_val.22, i64* %37, !mcsema_real_eip !15
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !16
  %38 = add i64 %RBP_val.23, -72, !mcsema_real_eip !16
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !16
  %RCX_val.24 = load i64, i64* %XCX, !mcsema_real_eip !16
  store i64 %RCX_val.24, i64* %39, !mcsema_real_eip !16
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !17
  %40 = add i64 %RBP_val.25, -76, !mcsema_real_eip !17
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !17
  %R8D.26 = bitcast i64* %R8 to i32*, !mcsema_real_eip !17
  %R8D_val.27 = load i32, i32* %R8D.26, !mcsema_real_eip !17
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !17
  store i32 %R8D_val.27, i32* %42, !mcsema_real_eip !17
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !18
  %43 = add i64 %RBP_val.28, -80, !mcsema_real_eip !18
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !18
  %R9D.29 = bitcast i64* %R9 to i32*, !mcsema_real_eip !18
  %R9D_val.30 = load i32, i32* %R9D.29, !mcsema_real_eip !18
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !18
  store i32 %R9D_val.30, i32* %45, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !19
  %46 = add i64 %RBP_val.31, -84, !mcsema_real_eip !19
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !19
  %EBX.32 = bitcast i64* %XBX to i32*, !mcsema_real_eip !19
  %EBX_val.33 = load i32, i32* %EBX.32, !mcsema_real_eip !19
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !19
  store i32 %EBX_val.33, i32* %48, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %49 = add i64 %RBP_val.34, -96, !mcsema_real_eip !20
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !20
  %R10_val.35 = load i64, i64* %R10, !mcsema_real_eip !20
  store i64 %R10_val.35, i64* %50, !mcsema_real_eip !20
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !21
  %51 = add i64 %RBP_val.36, -104, !mcsema_real_eip !21
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !21
  %RAX_val.37 = load i64, i64* %XAX, !mcsema_real_eip !21
  store i64 %RAX_val.37, i64* %52, !mcsema_real_eip !21
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !22
  %53 = add i64 %RBP_val.38, -40, !mcsema_real_eip !22
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !22
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !22
  %56 = load i32, i32* %55, !mcsema_real_eip !22
  %57 = zext i32 %56 to i64, !mcsema_real_eip !22
  store i64 %57, i64* %XSI, !mcsema_real_eip !22
  %58 = add i64 %RBP_val.38, -64, !mcsema_real_eip !23
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !23
  %60 = load i64, i64* %59, !mcsema_real_eip !23
  store i64 %60, i64* %XAX, !mcsema_real_eip !23
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !24
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !24
  %63 = load i32, i32* %62, !mcsema_real_eip !24
  %64 = zext i32 %63 to i64, !mcsema_real_eip !24
  store i64 %64, i64* %R8, !mcsema_real_eip !24
  %ESI_val.42 = load i32, i32* %ESI.12, !mcsema_real_eip !25
  %R8D_val.44 = load i32, i32* %R8D.26, !mcsema_real_eip !25
  %65 = add i32 %R8D_val.44, %ESI_val.42, !mcsema_real_eip !25
  %66 = xor i32 %65, %ESI_val.42, !mcsema_real_eip !25
  %67 = xor i32 %66, %R8D_val.44, !mcsema_real_eip !25
  %68 = and i32 %67, 16, !mcsema_real_eip !25
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !25
  store i1 %69, i1* %AF, !mcsema_real_eip !25
  %70 = lshr i32 %65, 31, !mcsema_real_eip !25
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !25
  store i1 %71, i1* %SF, !mcsema_real_eip !25
  %72 = icmp eq i32 %65, 0, !mcsema_real_eip !25
  store i1 %72, i1* %ZF, !mcsema_real_eip !25
  %73 = xor i32 %ESI_val.42, %R8D_val.44, !mcsema_real_eip !25
  %74 = xor i32 %73, -1, !mcsema_real_eip !25
  %75 = and i32 %74, %66, !mcsema_real_eip !25
  %76 = lshr i32 %75, 31, !mcsema_real_eip !25
  %77 = and i32 %76, 1, !mcsema_real_eip !25
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !25
  store i1 %78, i1* %OF, !mcsema_real_eip !25
  %79 = trunc i32 %65 to i8, !mcsema_real_eip !25
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !25
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !25
  %82 = xor i1 %81, true, !mcsema_real_eip !25
  store i1 %82, i1* %PF, !mcsema_real_eip !25
  %83 = icmp ult i32 %65, %ESI_val.42, !mcsema_real_eip !25
  store i1 %83, i1* %CF, !mcsema_real_eip !25
  %84 = zext i32 %65 to i64, !mcsema_real_eip !25
  store i64 %84, i64* %XSI, !mcsema_real_eip !25
  %85 = add i64 %RBP_val.38, -72, !mcsema_real_eip !26
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !26
  %87 = load i64, i64* %86, !mcsema_real_eip !26
  store i64 %87, i64* %XAX, !mcsema_real_eip !26
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !27
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !27
  %90 = load i32, i32* %89, !mcsema_real_eip !27
  %91 = zext i32 %90 to i64, !mcsema_real_eip !27
  store i64 %91, i64* %R8, !mcsema_real_eip !27
  %ESI_val.48 = load i32, i32* %ESI.12, !mcsema_real_eip !28
  %R8D_val.50 = load i32, i32* %R8D.26, !mcsema_real_eip !28
  %92 = add i32 %R8D_val.50, %ESI_val.48, !mcsema_real_eip !28
  %93 = xor i32 %92, %ESI_val.48, !mcsema_real_eip !28
  %94 = xor i32 %93, %R8D_val.50, !mcsema_real_eip !28
  %95 = and i32 %94, 16, !mcsema_real_eip !28
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !28
  store i1 %96, i1* %AF, !mcsema_real_eip !28
  %97 = lshr i32 %92, 31, !mcsema_real_eip !28
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !28
  store i1 %98, i1* %SF, !mcsema_real_eip !28
  %99 = icmp eq i32 %92, 0, !mcsema_real_eip !28
  store i1 %99, i1* %ZF, !mcsema_real_eip !28
  %100 = xor i32 %ESI_val.48, %R8D_val.50, !mcsema_real_eip !28
  %101 = xor i32 %100, -1, !mcsema_real_eip !28
  %102 = and i32 %101, %93, !mcsema_real_eip !28
  %103 = lshr i32 %102, 31, !mcsema_real_eip !28
  %104 = and i32 %103, 1, !mcsema_real_eip !28
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !28
  store i1 %105, i1* %OF, !mcsema_real_eip !28
  %106 = trunc i32 %92 to i8, !mcsema_real_eip !28
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !28
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !28
  %109 = xor i1 %108, true, !mcsema_real_eip !28
  store i1 %109, i1* %PF, !mcsema_real_eip !28
  %110 = icmp ult i32 %92, %ESI_val.48, !mcsema_real_eip !28
  store i1 %110, i1* %CF, !mcsema_real_eip !28
  %111 = zext i32 %92 to i64, !mcsema_real_eip !28
  store i64 %111, i64* %XSI, !mcsema_real_eip !28
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !29
  %112 = inttoptr i64 %R11_val.51 to i64*, !mcsema_real_eip !29
  %113 = inttoptr i64 %R11_val.51 to i32*, !mcsema_real_eip !29
  %114 = load i32, i32* %113, !mcsema_real_eip !29
  %115 = zext i32 %114 to i64, !mcsema_real_eip !29
  store i64 %115, i64* %R8, !mcsema_real_eip !29
  %116 = add i64 %RBP_val.38, -96, !mcsema_real_eip !30
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !30
  %118 = load i64, i64* %117, !mcsema_real_eip !30
  store i64 %118, i64* %XAX, !mcsema_real_eip !30
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !31
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !31
  %121 = load i32, i32* %120, !mcsema_real_eip !31
  %122 = zext i32 %121 to i64, !mcsema_real_eip !31
  store i64 %122, i64* %R9, !mcsema_real_eip !31
  %R8D_val.55 = load i32, i32* %R8D.26, !mcsema_real_eip !32
  %R9D_val.57 = load i32, i32* %R9D.29, !mcsema_real_eip !32
  %123 = add i32 %R9D_val.57, %R8D_val.55, !mcsema_real_eip !32
  %124 = xor i32 %123, %R8D_val.55, !mcsema_real_eip !32
  %125 = xor i32 %124, %R9D_val.57, !mcsema_real_eip !32
  %126 = and i32 %125, 16, !mcsema_real_eip !32
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !32
  store i1 %127, i1* %AF, !mcsema_real_eip !32
  %128 = lshr i32 %123, 31, !mcsema_real_eip !32
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !32
  store i1 %129, i1* %SF, !mcsema_real_eip !32
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !32
  store i1 %130, i1* %ZF, !mcsema_real_eip !32
  %131 = xor i32 %R8D_val.55, %R9D_val.57, !mcsema_real_eip !32
  %132 = xor i32 %131, -1, !mcsema_real_eip !32
  %133 = and i32 %132, %124, !mcsema_real_eip !32
  %134 = lshr i32 %133, 31, !mcsema_real_eip !32
  %135 = and i32 %134, 1, !mcsema_real_eip !32
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !32
  store i1 %136, i1* %OF, !mcsema_real_eip !32
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !32
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !32
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !32
  %140 = xor i1 %139, true, !mcsema_real_eip !32
  store i1 %140, i1* %PF, !mcsema_real_eip !32
  %141 = icmp ult i32 %123, %R8D_val.55, !mcsema_real_eip !32
  store i1 %141, i1* %CF, !mcsema_real_eip !32
  %142 = zext i32 %123 to i64, !mcsema_real_eip !32
  store i64 %142, i64* %R8, !mcsema_real_eip !32
  %143 = add i64 %RBP_val.38, -104, !mcsema_real_eip !33
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !33
  %145 = load i64, i64* %144, !mcsema_real_eip !33
  store i64 %145, i64* %XAX, !mcsema_real_eip !33
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !34
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !34
  %148 = load i32, i32* %147, !mcsema_real_eip !34
  %149 = zext i32 %148 to i64, !mcsema_real_eip !34
  store i64 %149, i64* %R9, !mcsema_real_eip !34
  %R8D_val.61 = load i32, i32* %R8D.26, !mcsema_real_eip !35
  %R9D_val.63 = load i32, i32* %R9D.29, !mcsema_real_eip !35
  %150 = add i32 %R9D_val.63, %R8D_val.61, !mcsema_real_eip !35
  %151 = xor i32 %150, %R8D_val.61, !mcsema_real_eip !35
  %152 = xor i32 %151, %R9D_val.63, !mcsema_real_eip !35
  %153 = and i32 %152, 16, !mcsema_real_eip !35
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !35
  store i1 %154, i1* %AF, !mcsema_real_eip !35
  %155 = lshr i32 %150, 31, !mcsema_real_eip !35
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !35
  store i1 %156, i1* %SF, !mcsema_real_eip !35
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !35
  store i1 %157, i1* %ZF, !mcsema_real_eip !35
  %158 = xor i32 %R8D_val.61, %R9D_val.63, !mcsema_real_eip !35
  %159 = xor i32 %158, -1, !mcsema_real_eip !35
  %160 = and i32 %159, %151, !mcsema_real_eip !35
  %161 = lshr i32 %160, 31, !mcsema_real_eip !35
  %162 = and i32 %161, 1, !mcsema_real_eip !35
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !35
  store i1 %163, i1* %OF, !mcsema_real_eip !35
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !35
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !35
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !35
  %167 = xor i1 %166, true, !mcsema_real_eip !35
  store i1 %167, i1* %PF, !mcsema_real_eip !35
  %168 = icmp ult i32 %150, %R8D_val.61, !mcsema_real_eip !35
  store i1 %168, i1* %CF, !mcsema_real_eip !35
  %169 = zext i32 %150 to i64, !mcsema_real_eip !35
  store i64 %169, i64* %R8, !mcsema_real_eip !35
  %ESI_val.65 = load i32, i32* %ESI.12, !mcsema_real_eip !36
  %R8D_val.67 = load i32, i32* %R8D.26, !mcsema_real_eip !36
  %170 = add i32 %R8D_val.67, %ESI_val.65, !mcsema_real_eip !36
  %171 = xor i32 %170, %ESI_val.65, !mcsema_real_eip !36
  %172 = xor i32 %171, %R8D_val.67, !mcsema_real_eip !36
  %173 = and i32 %172, 16, !mcsema_real_eip !36
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !36
  store i1 %174, i1* %AF, !mcsema_real_eip !36
  %175 = lshr i32 %170, 31, !mcsema_real_eip !36
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !36
  store i1 %176, i1* %SF, !mcsema_real_eip !36
  %177 = icmp eq i32 %170, 0, !mcsema_real_eip !36
  store i1 %177, i1* %ZF, !mcsema_real_eip !36
  %178 = xor i32 %ESI_val.65, %R8D_val.67, !mcsema_real_eip !36
  %179 = xor i32 %178, -1, !mcsema_real_eip !36
  %180 = and i32 %179, %171, !mcsema_real_eip !36
  %181 = lshr i32 %180, 31, !mcsema_real_eip !36
  %182 = and i32 %181, 1, !mcsema_real_eip !36
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !36
  store i1 %183, i1* %OF, !mcsema_real_eip !36
  %184 = trunc i32 %170 to i8, !mcsema_real_eip !36
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !36
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !36
  %187 = xor i1 %186, true, !mcsema_real_eip !36
  store i1 %187, i1* %PF, !mcsema_real_eip !36
  %188 = icmp ult i32 %170, %ESI_val.65, !mcsema_real_eip !36
  store i1 %188, i1* %CF, !mcsema_real_eip !36
  %189 = zext i32 %170 to i64, !mcsema_real_eip !36
  store i64 %189, i64* %XSI, !mcsema_real_eip !36
  %190 = add i64 %RBP_val.38, -120, !mcsema_real_eip !37
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !37
  %ESI_val.70 = load i32, i32* %ESI.12, !mcsema_real_eip !37
  %192 = inttoptr i64 %190 to i32*, !mcsema_real_eip !37
  store i32 %ESI_val.70, i32* %192, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !38
  %193 = add i64 %RBP_val.71, -36, !mcsema_real_eip !38
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !38
  %195 = inttoptr i64 %193 to i32*, !mcsema_real_eip !38
  %196 = load i32, i32* %195, !mcsema_real_eip !38
  %197 = zext i32 %196 to i64, !mcsema_real_eip !38
  store i64 %197, i64* %XSI, !mcsema_real_eip !38
  %198 = add i64 %RBP_val.71, -64, !mcsema_real_eip !39
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !39
  %200 = load i64, i64* %199, !mcsema_real_eip !39
  store i64 %200, i64* %XAX, !mcsema_real_eip !39
  %201 = add i64 %200, 4, !mcsema_real_eip !40
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !40
  %203 = inttoptr i64 %201 to i32*, !mcsema_real_eip !40
  %204 = load i32, i32* %203, !mcsema_real_eip !40
  %205 = zext i32 %204 to i64, !mcsema_real_eip !40
  store i64 %205, i64* %R8, !mcsema_real_eip !40
  %ESI_val.75 = load i32, i32* %ESI.12, !mcsema_real_eip !41
  %R8D_val.77 = load i32, i32* %R8D.26, !mcsema_real_eip !41
  %206 = add i32 %R8D_val.77, %ESI_val.75, !mcsema_real_eip !41
  %207 = xor i32 %206, %ESI_val.75, !mcsema_real_eip !41
  %208 = xor i32 %207, %R8D_val.77, !mcsema_real_eip !41
  %209 = and i32 %208, 16, !mcsema_real_eip !41
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !41
  store i1 %210, i1* %AF, !mcsema_real_eip !41
  %211 = lshr i32 %206, 31, !mcsema_real_eip !41
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !41
  store i1 %212, i1* %SF, !mcsema_real_eip !41
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !41
  store i1 %213, i1* %ZF, !mcsema_real_eip !41
  %214 = xor i32 %ESI_val.75, %R8D_val.77, !mcsema_real_eip !41
  %215 = xor i32 %214, -1, !mcsema_real_eip !41
  %216 = and i32 %215, %207, !mcsema_real_eip !41
  %217 = lshr i32 %216, 31, !mcsema_real_eip !41
  %218 = and i32 %217, 1, !mcsema_real_eip !41
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !41
  store i1 %219, i1* %OF, !mcsema_real_eip !41
  %220 = trunc i32 %206 to i8, !mcsema_real_eip !41
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !41
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !41
  %223 = xor i1 %222, true, !mcsema_real_eip !41
  store i1 %223, i1* %PF, !mcsema_real_eip !41
  %224 = icmp ult i32 %206, %ESI_val.75, !mcsema_real_eip !41
  store i1 %224, i1* %CF, !mcsema_real_eip !41
  %225 = zext i32 %206 to i64, !mcsema_real_eip !41
  store i64 %225, i64* %XSI, !mcsema_real_eip !41
  %226 = add i64 %RBP_val.71, -72, !mcsema_real_eip !42
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !42
  %228 = load i64, i64* %227, !mcsema_real_eip !42
  store i64 %228, i64* %XAX, !mcsema_real_eip !42
  %229 = add i64 %228, 4, !mcsema_real_eip !43
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !43
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !43
  %232 = load i32, i32* %231, !mcsema_real_eip !43
  %233 = zext i32 %232 to i64, !mcsema_real_eip !43
  store i64 %233, i64* %R8, !mcsema_real_eip !43
  %ESI_val.81 = load i32, i32* %ESI.12, !mcsema_real_eip !44
  %R8D_val.83 = load i32, i32* %R8D.26, !mcsema_real_eip !44
  %234 = add i32 %R8D_val.83, %ESI_val.81, !mcsema_real_eip !44
  %235 = xor i32 %234, %ESI_val.81, !mcsema_real_eip !44
  %236 = xor i32 %235, %R8D_val.83, !mcsema_real_eip !44
  %237 = and i32 %236, 16, !mcsema_real_eip !44
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !44
  store i1 %238, i1* %AF, !mcsema_real_eip !44
  %239 = lshr i32 %234, 31, !mcsema_real_eip !44
  %240 = trunc i32 %239 to i1, !mcsema_real_eip !44
  store i1 %240, i1* %SF, !mcsema_real_eip !44
  %241 = icmp eq i32 %234, 0, !mcsema_real_eip !44
  store i1 %241, i1* %ZF, !mcsema_real_eip !44
  %242 = xor i32 %ESI_val.81, %R8D_val.83, !mcsema_real_eip !44
  %243 = xor i32 %242, -1, !mcsema_real_eip !44
  %244 = and i32 %243, %235, !mcsema_real_eip !44
  %245 = lshr i32 %244, 31, !mcsema_real_eip !44
  %246 = and i32 %245, 1, !mcsema_real_eip !44
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !44
  store i1 %247, i1* %OF, !mcsema_real_eip !44
  %248 = trunc i32 %234 to i8, !mcsema_real_eip !44
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !44
  %250 = trunc i8 %249 to i1, !mcsema_real_eip !44
  %251 = xor i1 %250, true, !mcsema_real_eip !44
  store i1 %251, i1* %PF, !mcsema_real_eip !44
  %252 = icmp ult i32 %234, %ESI_val.81, !mcsema_real_eip !44
  store i1 %252, i1* %CF, !mcsema_real_eip !44
  %253 = zext i32 %234 to i64, !mcsema_real_eip !44
  store i64 %253, i64* %XSI, !mcsema_real_eip !44
  %R11_val.84 = load i64, i64* %R11, !mcsema_real_eip !45
  %254 = add i64 %R11_val.84, 4, !mcsema_real_eip !45
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !45
  %256 = inttoptr i64 %254 to i32*, !mcsema_real_eip !45
  %257 = load i32, i32* %256, !mcsema_real_eip !45
  %258 = zext i32 %257 to i64, !mcsema_real_eip !45
  store i64 %258, i64* %R8, !mcsema_real_eip !45
  %259 = add i64 %RBP_val.71, -96, !mcsema_real_eip !46
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !46
  %261 = load i64, i64* %260, !mcsema_real_eip !46
  store i64 %261, i64* %XAX, !mcsema_real_eip !46
  %262 = add i64 %261, 4, !mcsema_real_eip !47
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !47
  %264 = inttoptr i64 %262 to i32*, !mcsema_real_eip !47
  %265 = load i32, i32* %264, !mcsema_real_eip !47
  %266 = zext i32 %265 to i64, !mcsema_real_eip !47
  store i64 %266, i64* %R9, !mcsema_real_eip !47
  %R8D_val.88 = load i32, i32* %R8D.26, !mcsema_real_eip !48
  %R9D_val.90 = load i32, i32* %R9D.29, !mcsema_real_eip !48
  %267 = add i32 %R9D_val.90, %R8D_val.88, !mcsema_real_eip !48
  %268 = xor i32 %267, %R8D_val.88, !mcsema_real_eip !48
  %269 = xor i32 %268, %R9D_val.90, !mcsema_real_eip !48
  %270 = and i32 %269, 16, !mcsema_real_eip !48
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !48
  store i1 %271, i1* %AF, !mcsema_real_eip !48
  %272 = lshr i32 %267, 31, !mcsema_real_eip !48
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !48
  store i1 %273, i1* %SF, !mcsema_real_eip !48
  %274 = icmp eq i32 %267, 0, !mcsema_real_eip !48
  store i1 %274, i1* %ZF, !mcsema_real_eip !48
  %275 = xor i32 %R8D_val.88, %R9D_val.90, !mcsema_real_eip !48
  %276 = xor i32 %275, -1, !mcsema_real_eip !48
  %277 = and i32 %276, %268, !mcsema_real_eip !48
  %278 = lshr i32 %277, 31, !mcsema_real_eip !48
  %279 = and i32 %278, 1, !mcsema_real_eip !48
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !48
  store i1 %280, i1* %OF, !mcsema_real_eip !48
  %281 = trunc i32 %267 to i8, !mcsema_real_eip !48
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !48
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !48
  %284 = xor i1 %283, true, !mcsema_real_eip !48
  store i1 %284, i1* %PF, !mcsema_real_eip !48
  %285 = icmp ult i32 %267, %R8D_val.88, !mcsema_real_eip !48
  store i1 %285, i1* %CF, !mcsema_real_eip !48
  %286 = zext i32 %267 to i64, !mcsema_real_eip !48
  store i64 %286, i64* %R8, !mcsema_real_eip !48
  %287 = add i64 %RBP_val.71, -104, !mcsema_real_eip !49
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !49
  %289 = load i64, i64* %288, !mcsema_real_eip !49
  store i64 %289, i64* %XAX, !mcsema_real_eip !49
  %290 = add i64 %289, 4, !mcsema_real_eip !50
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !50
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !50
  %293 = load i32, i32* %292, !mcsema_real_eip !50
  %294 = zext i32 %293 to i64, !mcsema_real_eip !50
  store i64 %294, i64* %R9, !mcsema_real_eip !50
  %R8D_val.94 = load i32, i32* %R8D.26, !mcsema_real_eip !51
  %R9D_val.96 = load i32, i32* %R9D.29, !mcsema_real_eip !51
  %295 = add i32 %R9D_val.96, %R8D_val.94, !mcsema_real_eip !51
  %296 = xor i32 %295, %R8D_val.94, !mcsema_real_eip !51
  %297 = xor i32 %296, %R9D_val.96, !mcsema_real_eip !51
  %298 = and i32 %297, 16, !mcsema_real_eip !51
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !51
  store i1 %299, i1* %AF, !mcsema_real_eip !51
  %300 = lshr i32 %295, 31, !mcsema_real_eip !51
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !51
  store i1 %301, i1* %SF, !mcsema_real_eip !51
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !51
  store i1 %302, i1* %ZF, !mcsema_real_eip !51
  %303 = xor i32 %R8D_val.94, %R9D_val.96, !mcsema_real_eip !51
  %304 = xor i32 %303, -1, !mcsema_real_eip !51
  %305 = and i32 %304, %296, !mcsema_real_eip !51
  %306 = lshr i32 %305, 31, !mcsema_real_eip !51
  %307 = and i32 %306, 1, !mcsema_real_eip !51
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !51
  store i1 %308, i1* %OF, !mcsema_real_eip !51
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !51
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !51
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !51
  %312 = xor i1 %311, true, !mcsema_real_eip !51
  store i1 %312, i1* %PF, !mcsema_real_eip !51
  %313 = icmp ult i32 %295, %R8D_val.94, !mcsema_real_eip !51
  store i1 %313, i1* %CF, !mcsema_real_eip !51
  %314 = zext i32 %295 to i64, !mcsema_real_eip !51
  store i64 %314, i64* %R8, !mcsema_real_eip !51
  %ESI_val.98 = load i32, i32* %ESI.12, !mcsema_real_eip !52
  %R8D_val.100 = load i32, i32* %R8D.26, !mcsema_real_eip !52
  %315 = add i32 %R8D_val.100, %ESI_val.98, !mcsema_real_eip !52
  %316 = xor i32 %315, %ESI_val.98, !mcsema_real_eip !52
  %317 = xor i32 %316, %R8D_val.100, !mcsema_real_eip !52
  %318 = and i32 %317, 16, !mcsema_real_eip !52
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !52
  store i1 %319, i1* %AF, !mcsema_real_eip !52
  %320 = lshr i32 %315, 31, !mcsema_real_eip !52
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !52
  store i1 %321, i1* %SF, !mcsema_real_eip !52
  %322 = icmp eq i32 %315, 0, !mcsema_real_eip !52
  store i1 %322, i1* %ZF, !mcsema_real_eip !52
  %323 = xor i32 %ESI_val.98, %R8D_val.100, !mcsema_real_eip !52
  %324 = xor i32 %323, -1, !mcsema_real_eip !52
  %325 = and i32 %324, %316, !mcsema_real_eip !52
  %326 = lshr i32 %325, 31, !mcsema_real_eip !52
  %327 = and i32 %326, 1, !mcsema_real_eip !52
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !52
  store i1 %328, i1* %OF, !mcsema_real_eip !52
  %329 = trunc i32 %315 to i8, !mcsema_real_eip !52
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !52
  %331 = trunc i8 %330 to i1, !mcsema_real_eip !52
  %332 = xor i1 %331, true, !mcsema_real_eip !52
  store i1 %332, i1* %PF, !mcsema_real_eip !52
  %333 = icmp ult i32 %315, %ESI_val.98, !mcsema_real_eip !52
  store i1 %333, i1* %CF, !mcsema_real_eip !52
  %334 = zext i32 %315 to i64, !mcsema_real_eip !52
  store i64 %334, i64* %XSI, !mcsema_real_eip !52
  %335 = add i64 %RBP_val.71, -116, !mcsema_real_eip !53
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !53
  %ESI_val.103 = load i32, i32* %ESI.12, !mcsema_real_eip !53
  %337 = inttoptr i64 %335 to i32*, !mcsema_real_eip !53
  store i32 %ESI_val.103, i32* %337, !mcsema_real_eip !53
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !54
  %338 = add i64 %RBP_val.104, -32, !mcsema_real_eip !54
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !54
  %340 = inttoptr i64 %338 to i32*, !mcsema_real_eip !54
  %341 = load i32, i32* %340, !mcsema_real_eip !54
  %342 = zext i32 %341 to i64, !mcsema_real_eip !54
  store i64 %342, i64* %XSI, !mcsema_real_eip !54
  %343 = add i64 %RBP_val.104, -64, !mcsema_real_eip !55
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !55
  %345 = load i64, i64* %344, !mcsema_real_eip !55
  store i64 %345, i64* %XAX, !mcsema_real_eip !55
  %346 = add i64 %345, 8, !mcsema_real_eip !56
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !56
  %348 = inttoptr i64 %346 to i32*, !mcsema_real_eip !56
  %349 = load i32, i32* %348, !mcsema_real_eip !56
  %350 = zext i32 %349 to i64, !mcsema_real_eip !56
  store i64 %350, i64* %R8, !mcsema_real_eip !56
  %ESI_val.108 = load i32, i32* %ESI.12, !mcsema_real_eip !57
  %R8D_val.110 = load i32, i32* %R8D.26, !mcsema_real_eip !57
  %351 = add i32 %R8D_val.110, %ESI_val.108, !mcsema_real_eip !57
  %352 = xor i32 %351, %ESI_val.108, !mcsema_real_eip !57
  %353 = xor i32 %352, %R8D_val.110, !mcsema_real_eip !57
  %354 = and i32 %353, 16, !mcsema_real_eip !57
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !57
  store i1 %355, i1* %AF, !mcsema_real_eip !57
  %356 = lshr i32 %351, 31, !mcsema_real_eip !57
  %357 = trunc i32 %356 to i1, !mcsema_real_eip !57
  store i1 %357, i1* %SF, !mcsema_real_eip !57
  %358 = icmp eq i32 %351, 0, !mcsema_real_eip !57
  store i1 %358, i1* %ZF, !mcsema_real_eip !57
  %359 = xor i32 %ESI_val.108, %R8D_val.110, !mcsema_real_eip !57
  %360 = xor i32 %359, -1, !mcsema_real_eip !57
  %361 = and i32 %360, %352, !mcsema_real_eip !57
  %362 = lshr i32 %361, 31, !mcsema_real_eip !57
  %363 = and i32 %362, 1, !mcsema_real_eip !57
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !57
  store i1 %364, i1* %OF, !mcsema_real_eip !57
  %365 = trunc i32 %351 to i8, !mcsema_real_eip !57
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !57
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !57
  %368 = xor i1 %367, true, !mcsema_real_eip !57
  store i1 %368, i1* %PF, !mcsema_real_eip !57
  %369 = icmp ult i32 %351, %ESI_val.108, !mcsema_real_eip !57
  store i1 %369, i1* %CF, !mcsema_real_eip !57
  %370 = zext i32 %351 to i64, !mcsema_real_eip !57
  store i64 %370, i64* %XSI, !mcsema_real_eip !57
  %371 = add i64 %RBP_val.104, -72, !mcsema_real_eip !58
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !58
  %373 = load i64, i64* %372, !mcsema_real_eip !58
  store i64 %373, i64* %XAX, !mcsema_real_eip !58
  %374 = add i64 %373, 8, !mcsema_real_eip !59
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !59
  %376 = inttoptr i64 %374 to i32*, !mcsema_real_eip !59
  %377 = load i32, i32* %376, !mcsema_real_eip !59
  %378 = zext i32 %377 to i64, !mcsema_real_eip !59
  store i64 %378, i64* %R8, !mcsema_real_eip !59
  %ESI_val.114 = load i32, i32* %ESI.12, !mcsema_real_eip !60
  %R8D_val.116 = load i32, i32* %R8D.26, !mcsema_real_eip !60
  %379 = add i32 %R8D_val.116, %ESI_val.114, !mcsema_real_eip !60
  %380 = xor i32 %379, %ESI_val.114, !mcsema_real_eip !60
  %381 = xor i32 %380, %R8D_val.116, !mcsema_real_eip !60
  %382 = and i32 %381, 16, !mcsema_real_eip !60
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !60
  store i1 %383, i1* %AF, !mcsema_real_eip !60
  %384 = lshr i32 %379, 31, !mcsema_real_eip !60
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !60
  store i1 %385, i1* %SF, !mcsema_real_eip !60
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !60
  store i1 %386, i1* %ZF, !mcsema_real_eip !60
  %387 = xor i32 %ESI_val.114, %R8D_val.116, !mcsema_real_eip !60
  %388 = xor i32 %387, -1, !mcsema_real_eip !60
  %389 = and i32 %388, %380, !mcsema_real_eip !60
  %390 = lshr i32 %389, 31, !mcsema_real_eip !60
  %391 = and i32 %390, 1, !mcsema_real_eip !60
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !60
  store i1 %392, i1* %OF, !mcsema_real_eip !60
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !60
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !60
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !60
  %396 = xor i1 %395, true, !mcsema_real_eip !60
  store i1 %396, i1* %PF, !mcsema_real_eip !60
  %397 = icmp ult i32 %379, %ESI_val.114, !mcsema_real_eip !60
  store i1 %397, i1* %CF, !mcsema_real_eip !60
  %398 = zext i32 %379 to i64, !mcsema_real_eip !60
  store i64 %398, i64* %XSI, !mcsema_real_eip !60
  %R11_val.117 = load i64, i64* %R11, !mcsema_real_eip !61
  %399 = add i64 %R11_val.117, 8, !mcsema_real_eip !61
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !61
  %401 = inttoptr i64 %399 to i32*, !mcsema_real_eip !61
  %402 = load i32, i32* %401, !mcsema_real_eip !61
  %403 = zext i32 %402 to i64, !mcsema_real_eip !61
  store i64 %403, i64* %R8, !mcsema_real_eip !61
  %404 = add i64 %RBP_val.104, -96, !mcsema_real_eip !62
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !62
  %406 = load i64, i64* %405, !mcsema_real_eip !62
  store i64 %406, i64* %XAX, !mcsema_real_eip !62
  %407 = add i64 %406, 8, !mcsema_real_eip !63
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !63
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !63
  %410 = load i32, i32* %409, !mcsema_real_eip !63
  %411 = zext i32 %410 to i64, !mcsema_real_eip !63
  store i64 %411, i64* %R9, !mcsema_real_eip !63
  %R8D_val.121 = load i32, i32* %R8D.26, !mcsema_real_eip !64
  %R9D_val.123 = load i32, i32* %R9D.29, !mcsema_real_eip !64
  %412 = add i32 %R9D_val.123, %R8D_val.121, !mcsema_real_eip !64
  %413 = xor i32 %412, %R8D_val.121, !mcsema_real_eip !64
  %414 = xor i32 %413, %R9D_val.123, !mcsema_real_eip !64
  %415 = and i32 %414, 16, !mcsema_real_eip !64
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !64
  store i1 %416, i1* %AF, !mcsema_real_eip !64
  %417 = lshr i32 %412, 31, !mcsema_real_eip !64
  %418 = trunc i32 %417 to i1, !mcsema_real_eip !64
  store i1 %418, i1* %SF, !mcsema_real_eip !64
  %419 = icmp eq i32 %412, 0, !mcsema_real_eip !64
  store i1 %419, i1* %ZF, !mcsema_real_eip !64
  %420 = xor i32 %R8D_val.121, %R9D_val.123, !mcsema_real_eip !64
  %421 = xor i32 %420, -1, !mcsema_real_eip !64
  %422 = and i32 %421, %413, !mcsema_real_eip !64
  %423 = lshr i32 %422, 31, !mcsema_real_eip !64
  %424 = and i32 %423, 1, !mcsema_real_eip !64
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !64
  store i1 %425, i1* %OF, !mcsema_real_eip !64
  %426 = trunc i32 %412 to i8, !mcsema_real_eip !64
  %427 = call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !64
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !64
  %429 = xor i1 %428, true, !mcsema_real_eip !64
  store i1 %429, i1* %PF, !mcsema_real_eip !64
  %430 = icmp ult i32 %412, %R8D_val.121, !mcsema_real_eip !64
  store i1 %430, i1* %CF, !mcsema_real_eip !64
  %431 = zext i32 %412 to i64, !mcsema_real_eip !64
  store i64 %431, i64* %R8, !mcsema_real_eip !64
  %432 = add i64 %RBP_val.104, -104, !mcsema_real_eip !65
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !65
  %434 = load i64, i64* %433, !mcsema_real_eip !65
  store i64 %434, i64* %XAX, !mcsema_real_eip !65
  %435 = add i64 %434, 8, !mcsema_real_eip !66
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !66
  %437 = inttoptr i64 %435 to i32*, !mcsema_real_eip !66
  %438 = load i32, i32* %437, !mcsema_real_eip !66
  %439 = zext i32 %438 to i64, !mcsema_real_eip !66
  store i64 %439, i64* %R9, !mcsema_real_eip !66
  %R8D_val.127 = load i32, i32* %R8D.26, !mcsema_real_eip !67
  %R9D_val.129 = load i32, i32* %R9D.29, !mcsema_real_eip !67
  %440 = add i32 %R9D_val.129, %R8D_val.127, !mcsema_real_eip !67
  %441 = xor i32 %440, %R8D_val.127, !mcsema_real_eip !67
  %442 = xor i32 %441, %R9D_val.129, !mcsema_real_eip !67
  %443 = and i32 %442, 16, !mcsema_real_eip !67
  %444 = icmp ne i32 %443, 0, !mcsema_real_eip !67
  store i1 %444, i1* %AF, !mcsema_real_eip !67
  %445 = lshr i32 %440, 31, !mcsema_real_eip !67
  %446 = trunc i32 %445 to i1, !mcsema_real_eip !67
  store i1 %446, i1* %SF, !mcsema_real_eip !67
  %447 = icmp eq i32 %440, 0, !mcsema_real_eip !67
  store i1 %447, i1* %ZF, !mcsema_real_eip !67
  %448 = xor i32 %R8D_val.127, %R9D_val.129, !mcsema_real_eip !67
  %449 = xor i32 %448, -1, !mcsema_real_eip !67
  %450 = and i32 %449, %441, !mcsema_real_eip !67
  %451 = lshr i32 %450, 31, !mcsema_real_eip !67
  %452 = and i32 %451, 1, !mcsema_real_eip !67
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !67
  store i1 %453, i1* %OF, !mcsema_real_eip !67
  %454 = trunc i32 %440 to i8, !mcsema_real_eip !67
  %455 = call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !67
  %456 = trunc i8 %455 to i1, !mcsema_real_eip !67
  %457 = xor i1 %456, true, !mcsema_real_eip !67
  store i1 %457, i1* %PF, !mcsema_real_eip !67
  %458 = icmp ult i32 %440, %R8D_val.127, !mcsema_real_eip !67
  store i1 %458, i1* %CF, !mcsema_real_eip !67
  %459 = zext i32 %440 to i64, !mcsema_real_eip !67
  store i64 %459, i64* %R8, !mcsema_real_eip !67
  %ESI_val.131 = load i32, i32* %ESI.12, !mcsema_real_eip !68
  %R8D_val.133 = load i32, i32* %R8D.26, !mcsema_real_eip !68
  %460 = add i32 %R8D_val.133, %ESI_val.131, !mcsema_real_eip !68
  %461 = xor i32 %460, %ESI_val.131, !mcsema_real_eip !68
  %462 = xor i32 %461, %R8D_val.133, !mcsema_real_eip !68
  %463 = and i32 %462, 16, !mcsema_real_eip !68
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !68
  store i1 %464, i1* %AF, !mcsema_real_eip !68
  %465 = lshr i32 %460, 31, !mcsema_real_eip !68
  %466 = trunc i32 %465 to i1, !mcsema_real_eip !68
  store i1 %466, i1* %SF, !mcsema_real_eip !68
  %467 = icmp eq i32 %460, 0, !mcsema_real_eip !68
  store i1 %467, i1* %ZF, !mcsema_real_eip !68
  %468 = xor i32 %ESI_val.131, %R8D_val.133, !mcsema_real_eip !68
  %469 = xor i32 %468, -1, !mcsema_real_eip !68
  %470 = and i32 %469, %461, !mcsema_real_eip !68
  %471 = lshr i32 %470, 31, !mcsema_real_eip !68
  %472 = and i32 %471, 1, !mcsema_real_eip !68
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !68
  store i1 %473, i1* %OF, !mcsema_real_eip !68
  %474 = trunc i32 %460 to i8, !mcsema_real_eip !68
  %475 = call i8 @llvm.ctpop.i8(i8 %474), !mcsema_real_eip !68
  %476 = trunc i8 %475 to i1, !mcsema_real_eip !68
  %477 = xor i1 %476, true, !mcsema_real_eip !68
  store i1 %477, i1* %PF, !mcsema_real_eip !68
  %478 = icmp ult i32 %460, %ESI_val.131, !mcsema_real_eip !68
  store i1 %478, i1* %CF, !mcsema_real_eip !68
  %479 = zext i32 %460 to i64, !mcsema_real_eip !68
  store i64 %479, i64* %XSI, !mcsema_real_eip !68
  %480 = add i64 %RBP_val.104, -112, !mcsema_real_eip !69
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !69
  %ESI_val.136 = load i32, i32* %ESI.12, !mcsema_real_eip !69
  %482 = inttoptr i64 %480 to i32*, !mcsema_real_eip !69
  store i32 %ESI_val.136, i32* %482, !mcsema_real_eip !69
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !70
  %483 = add i64 %RBP_val.137, -112, !mcsema_real_eip !70
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !70
  %485 = inttoptr i64 %483 to i32*, !mcsema_real_eip !70
  %486 = load i32, i32* %485, !mcsema_real_eip !70
  %487 = zext i32 %486 to i64, !mcsema_real_eip !70
  store i64 %487, i64* %XSI, !mcsema_real_eip !70
  %488 = add i64 %RBP_val.137, -16, !mcsema_real_eip !71
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !71
  %ESI_val.140 = load i32, i32* %ESI.12, !mcsema_real_eip !71
  %490 = inttoptr i64 %488 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.140, i32* %490, !mcsema_real_eip !71
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !72
  %491 = add i64 %RBP_val.141, -120, !mcsema_real_eip !72
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !72
  %493 = load i64, i64* %492, !mcsema_real_eip !72
  store i64 %493, i64* %XAX, !mcsema_real_eip !72
  %494 = add i64 %RBP_val.141, -24, !mcsema_real_eip !73
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !73
  store i64 %493, i64* %495, !mcsema_real_eip !73
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !74
  %496 = add i64 %RBP_val.144, -16, !mcsema_real_eip !74
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !74
  %498 = inttoptr i64 %496 to i32*, !mcsema_real_eip !74
  %499 = load i32, i32* %498, !mcsema_real_eip !74
  %500 = zext i32 %499 to i64, !mcsema_real_eip !74
  store i64 %500, i64* %XSI, !mcsema_real_eip !74
  %501 = add i64 %RBP_val.144, -128, !mcsema_real_eip !75
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !75
  %ESI_val.147 = load i32, i32* %ESI.12, !mcsema_real_eip !75
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.147, i32* %503, !mcsema_real_eip !75
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !76
  %504 = add i64 %RBP_val.148, -24, !mcsema_real_eip !76
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !76
  %506 = load i64, i64* %505, !mcsema_real_eip !76
  store i64 %506, i64* %XAX, !mcsema_real_eip !76
  %507 = add i64 %RBP_val.148, -136, !mcsema_real_eip !77
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !77
  store i64 %506, i64* %508, !mcsema_real_eip !77
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !78
  %509 = add i64 %RBP_val.151, -136, !mcsema_real_eip !78
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !78
  %511 = load i64, i64* %510, !mcsema_real_eip !78
  store i64 %511, i64* %XAX, !mcsema_real_eip !78
  %512 = add i64 %RBP_val.151, -128, !mcsema_real_eip !79
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !79
  %514 = inttoptr i64 %512 to i32*, !mcsema_real_eip !79
  %515 = load i32, i32* %514, !mcsema_real_eip !79
  %516 = zext i32 %515 to i64, !mcsema_real_eip !79
  store i64 %516, i64* %XDX, !mcsema_real_eip !79
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !80
  %517 = inttoptr i64 %RSP_val.153 to i64*, !mcsema_real_eip !80
  %518 = load i64, i64* %517, !mcsema_real_eip !80
  store i64 %518, i64* %XBX, !mcsema_real_eip !80
  %519 = add i64 %RSP_val.153, 8, !mcsema_real_eip !80
  store i64 %519, i64* %XSP, !mcsema_real_eip !80
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !81
  %521 = load i64, i64* %520, !mcsema_real_eip !81
  store i64 %521, i64* %XBP, !mcsema_real_eip !81
  %522 = add i64 %519, 8, !mcsema_real_eip !81
  store i64 %522, i64* %XSP, !mcsema_real_eip !81
  %523 = add i64 %522, 8, !mcsema_real_eip !82
  %524 = inttoptr i64 %522 to i64*, !mcsema_real_eip !82
  %525 = load i64, i64* %524, !mcsema_real_eip !82
  store i64 %525, i64* %XIP, !mcsema_real_eip !82
  store i64 %523, i64* %XSP, !mcsema_real_eip !82
  ret void, !mcsema_real_eip !82
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_120(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !83
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !83
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !83
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !83
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !83
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !83
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !83
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !83
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !83
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !83
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !83
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !83
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !83
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !83
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !83
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !83
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !83
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !83
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !83
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !83
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !83
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !83
  br label %block_0x120, !mcsema_real_eip !83

block_0x120:                                      ; preds = %entry
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !83
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !83
  %1 = sub i64 %RSP_val.157, 8, !mcsema_real_eip !83
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !83
  store i64 %RBP_val.156, i64* %2, !mcsema_real_eip !83
  store i64 %1, i64* %XSP, !mcsema_real_eip !83
  store i64 %1, i64* %XBP, !mcsema_real_eip !84
  %3 = sub i64 %1, 144, !mcsema_real_eip !85
  %4 = xor i64 %3, %1, !mcsema_real_eip !85
  %5 = xor i64 %4, 144, !mcsema_real_eip !85
  %6 = and i64 %5, 16, !mcsema_real_eip !85
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !85
  store i1 %7, i1* %AF, !mcsema_real_eip !85
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !85
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !85
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !85
  %11 = xor i1 %10, true, !mcsema_real_eip !85
  store i1 %11, i1* %PF, !mcsema_real_eip !85
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !85
  store i1 %12, i1* %ZF, !mcsema_real_eip !85
  %13 = lshr i64 %3, 63, !mcsema_real_eip !85
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !85
  store i1 %14, i1* %SF, !mcsema_real_eip !85
  %15 = icmp ult i64 %1, 144, !mcsema_real_eip !85
  store i1 %15, i1* %CF, !mcsema_real_eip !85
  %16 = xor i64 %1, 144, !mcsema_real_eip !85
  %17 = and i64 %16, %4, !mcsema_real_eip !85
  %18 = lshr i64 %17, 63, !mcsema_real_eip !85
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !85
  store i1 %19, i1* %OF, !mcsema_real_eip !85
  store i64 %3, i64* %XSP, !mcsema_real_eip !85
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %XDI, !mcsema_real_eip !86
  %20 = add i64 %1, -4, !mcsema_real_eip !87
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !87
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !87
  store i32 0, i32* %22, !mcsema_real_eip !87
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !88
  %23 = add i64 %RBP_val.161, -16, !mcsema_real_eip !88
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !88
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !88
  store i32 10, i32* %25, !mcsema_real_eip !88
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !89
  %26 = add i64 %RBP_val.162, -12, !mcsema_real_eip !89
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !89
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !89
  store i32 10, i32* %28, !mcsema_real_eip !89
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !90
  %29 = add i64 %RBP_val.163, -8, !mcsema_real_eip !90
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !90
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !90
  store i32 10, i32* %31, !mcsema_real_eip !90
  store i64 24, i64* %XAX, !mcsema_real_eip !91
  %EAX.164 = bitcast i64* %XAX to i32*, !mcsema_real_eip !92
  %EAX_val.165 = load i32, i32* %EAX.164, !mcsema_real_eip !92
  %32 = zext i32 %EAX_val.165 to i64, !mcsema_real_eip !92
  store i64 %32, i64* %XCX, !mcsema_real_eip !92
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !93
  %33 = add i64 %RBP_val.166, -88, !mcsema_real_eip !93
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !93
  %RDI_val.167 = load i64, i64* %XDI, !mcsema_real_eip !93
  store i64 %RDI_val.167, i64* %34, !mcsema_real_eip !93
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !94
  store i64 %RCX_val.168, i64* %XDI, !mcsema_real_eip !94
  %RSP_val.170 = load i64, i64* %XSP, !mcsema_real_eip !95
  %35 = sub i64 %RSP_val.170, 8, !mcsema_real_eip !95
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !95
  store i64 %35, i64* %XSP, !mcsema_real_eip !95
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.168), !mcsema_real_eip !95
  store i64 %37, i64* %XAX, !mcsema_real_eip !95
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !96
  %38 = add i64 %RBP_val.171, -24, !mcsema_real_eip !96
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !96
  store i64 %37, i64* %39, !mcsema_real_eip !96
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !97
  %40 = add i64 %RBP_val.173, -24, !mcsema_real_eip !97
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !97
  %42 = load i64, i64* %41, !mcsema_real_eip !97
  store i64 %42, i64* %XAX, !mcsema_real_eip !97
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !98
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %44, !mcsema_real_eip !98
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !99
  %45 = add i64 %RBP_val.175, -24, !mcsema_real_eip !99
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !99
  %47 = load i64, i64* %46, !mcsema_real_eip !99
  store i64 %47, i64* %XAX, !mcsema_real_eip !99
  %48 = add i64 %47, 4, !mcsema_real_eip !100
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !100
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !100
  store i32 5, i32* %50, !mcsema_real_eip !100
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !101
  %51 = add i64 %RBP_val.177, -24, !mcsema_real_eip !101
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !101
  %53 = load i64, i64* %52, !mcsema_real_eip !101
  store i64 %53, i64* %XAX, !mcsema_real_eip !101
  %54 = add i64 %53, 8, !mcsema_real_eip !102
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !102
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !102
  store i32 5, i32* %56, !mcsema_real_eip !102
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !103
  %57 = add i64 %RBP_val.179, -24, !mcsema_real_eip !103
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !103
  %59 = load i64, i64* %58, !mcsema_real_eip !103
  store i64 %59, i64* %XAX, !mcsema_real_eip !103
  %60 = add i64 %RBP_val.179, -8, !mcsema_real_eip !104
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !104
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !104
  %63 = load i32, i32* %62, !mcsema_real_eip !104
  %64 = zext i32 %63 to i64, !mcsema_real_eip !104
  store i64 %64, i64* %XDX, !mcsema_real_eip !104
  %65 = add i64 %RBP_val.179, -48, !mcsema_real_eip !105
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !105
  %EDX.182 = bitcast i64* %XDX to i32*, !mcsema_real_eip !105
  %EDX_val.183 = load i32, i32* %EDX.182, !mcsema_real_eip !105
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !105
  store i32 %EDX_val.183, i32* %67, !mcsema_real_eip !105
  %RBP_val.184 = load i64, i64* %XBP, !mcsema_real_eip !106
  %68 = add i64 %RBP_val.184, -16, !mcsema_real_eip !106
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !106
  %70 = load i64, i64* %69, !mcsema_real_eip !106
  store i64 %70, i64* %XCX, !mcsema_real_eip !106
  %71 = add i64 %RBP_val.184, -56, !mcsema_real_eip !107
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !107
  store i64 %70, i64* %72, !mcsema_real_eip !107
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !108
  %73 = add i64 %RBP_val.187, -56, !mcsema_real_eip !108
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !108
  %75 = load i64, i64* %74, !mcsema_real_eip !108
  store i64 %75, i64* %XDI, !mcsema_real_eip !108
  %76 = add i64 %RBP_val.187, -48, !mcsema_real_eip !109
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !109
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !109
  %79 = load i32, i32* %78, !mcsema_real_eip !109
  %80 = zext i32 %79 to i64, !mcsema_real_eip !109
  store i64 %80, i64* %XSI, !mcsema_real_eip !109
  %81 = add i64 %RBP_val.187, -8, !mcsema_real_eip !110
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !110
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !110
  %84 = load i32, i32* %83, !mcsema_real_eip !110
  %85 = zext i32 %84 to i64, !mcsema_real_eip !110
  store i64 %85, i64* %XDX, !mcsema_real_eip !110
  %RSP_val.190 = load i64, i64* %XSP, !mcsema_real_eip !111
  store i64 %RSP_val.190, i64* %XCX, !mcsema_real_eip !111
  %86 = add i64 %RSP_val.190, 16, !mcsema_real_eip !112
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !112
  %EDX_val.193 = load i32, i32* %EDX.182, !mcsema_real_eip !112
  %88 = inttoptr i64 %86 to i32*, !mcsema_real_eip !112
  store i32 %EDX_val.193, i32* %88, !mcsema_real_eip !112
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !113
  %89 = add i64 %RBP_val.194, -16, !mcsema_real_eip !113
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !113
  %91 = load i64, i64* %90, !mcsema_real_eip !113
  store i64 %91, i64* %R8, !mcsema_real_eip !113
  %RCX_val.195 = load i64, i64* %XCX, !mcsema_real_eip !114
  %92 = add i64 %RCX_val.195, 8, !mcsema_real_eip !114
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !114
  store i64 %91, i64* %93, !mcsema_real_eip !114
  %RCX_val.197 = load i64, i64* %XCX, !mcsema_real_eip !115
  %94 = add i64 %RCX_val.197, 32, !mcsema_real_eip !115
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !115
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !115
  store i64 %RAX_val.198, i64* %95, !mcsema_real_eip !115
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !116
  %96 = add i64 %RBP_val.199, -16, !mcsema_real_eip !116
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !116
  store i64 %96, i64* %R8, !mcsema_real_eip !116
  %RCX_val.200 = load i64, i64* %XCX, !mcsema_real_eip !117
  %98 = add i64 %RCX_val.200, 24, !mcsema_real_eip !117
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !117
  store i64 %96, i64* %99, !mcsema_real_eip !117
  %RCX_val.202 = load i64, i64* %XCX, !mcsema_real_eip !118
  %100 = inttoptr i64 %RCX_val.202 to i64*, !mcsema_real_eip !118
  %101 = inttoptr i64 %RCX_val.202 to i32*, !mcsema_real_eip !118
  store i32 3, i32* %101, !mcsema_real_eip !118
  store i64 1, i64* %XDX, !mcsema_real_eip !119
  store i64 2, i64* %R9, !mcsema_real_eip !120
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !121
  %102 = add i64 %RBP_val.203, -92, !mcsema_real_eip !121
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !121
  %EDX_val.205 = load i32, i32* %EDX.182, !mcsema_real_eip !121
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !121
  store i32 %EDX_val.205, i32* %104, !mcsema_real_eip !121
  %R8_val.206 = load i64, i64* %R8, !mcsema_real_eip !122
  store i64 %R8_val.206, i64* %XDX, !mcsema_real_eip !122
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !123
  store i64 %RAX_val.207, i64* %XCX, !mcsema_real_eip !123
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !124
  %105 = add i64 %RBP_val.208, -92, !mcsema_real_eip !124
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !124
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !124
  %108 = load i32, i32* %107, !mcsema_real_eip !124
  %109 = zext i32 %108 to i64, !mcsema_real_eip !124
  store i64 %109, i64* %R8, !mcsema_real_eip !124
  %RSP_val.209 = load i64, i64* %XSP, !mcsema_real_eip !125
  %110 = sub i64 %RSP_val.209, 8, !mcsema_real_eip !125
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !125
  store i64 -4981261766360305936, i64* %111, !mcsema_real_eip !125
  store i64 %110, i64* %XSP, !mcsema_real_eip !125
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !125
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !126
  %112 = add i64 %RBP_val.210, -64, !mcsema_real_eip !126
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !126
  %EDX_val.212 = load i32, i32* %EDX.182, !mcsema_real_eip !126
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !126
  store i32 %EDX_val.212, i32* %114, !mcsema_real_eip !126
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !127
  %115 = add i64 %RBP_val.213, -72, !mcsema_real_eip !127
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !127
  %RAX_val.214 = load i64, i64* %XAX, !mcsema_real_eip !127
  store i64 %RAX_val.214, i64* %116, !mcsema_real_eip !127
  %RBP_val.215 = load i64, i64* %XBP, !mcsema_real_eip !128
  %117 = add i64 %RBP_val.215, -72, !mcsema_real_eip !128
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !128
  %119 = load i64, i64* %118, !mcsema_real_eip !128
  store i64 %119, i64* %XAX, !mcsema_real_eip !128
  %120 = add i64 %RBP_val.215, -40, !mcsema_real_eip !129
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !129
  store i64 %119, i64* %121, !mcsema_real_eip !129
  %RBP_val.218 = load i64, i64* %XBP, !mcsema_real_eip !130
  %122 = add i64 %RBP_val.218, -64, !mcsema_real_eip !130
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !130
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !130
  %125 = load i32, i32* %124, !mcsema_real_eip !130
  %126 = zext i32 %125 to i64, !mcsema_real_eip !130
  store i64 %126, i64* %XDX, !mcsema_real_eip !130
  %127 = add i64 %RBP_val.218, -32, !mcsema_real_eip !131
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !131
  %EDX_val.221 = load i32, i32* %EDX.182, !mcsema_real_eip !131
  %129 = inttoptr i64 %127 to i32*, !mcsema_real_eip !131
  store i32 %EDX_val.221, i32* %129, !mcsema_real_eip !131
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !132
  %130 = add i64 %RBP_val.222, -40, !mcsema_real_eip !132
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !132
  %132 = inttoptr i64 %130 to i32*, !mcsema_real_eip !132
  %133 = load i32, i32* %132, !mcsema_real_eip !132
  %134 = zext i32 %133 to i64, !mcsema_real_eip !132
  store i64 %134, i64* %XDX, !mcsema_real_eip !132
  %135 = add i64 %RBP_val.222, -36, !mcsema_real_eip !133
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !133
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !133
  %138 = load i32, i32* %137, !mcsema_real_eip !133
  %EDX_val.225 = load i32, i32* %EDX.182, !mcsema_real_eip !133
  %139 = add i32 %EDX_val.225, %138, !mcsema_real_eip !133
  %140 = xor i32 %139, %138, !mcsema_real_eip !133
  %141 = xor i32 %140, %EDX_val.225, !mcsema_real_eip !133
  %142 = and i32 %141, 16, !mcsema_real_eip !133
  %143 = icmp ne i32 %142, 0, !mcsema_real_eip !133
  store i1 %143, i1* %AF, !mcsema_real_eip !133
  %144 = lshr i32 %139, 31, !mcsema_real_eip !133
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !133
  store i1 %145, i1* %SF, !mcsema_real_eip !133
  %146 = icmp eq i32 %139, 0, !mcsema_real_eip !133
  store i1 %146, i1* %ZF, !mcsema_real_eip !133
  %147 = xor i32 %138, %EDX_val.225, !mcsema_real_eip !133
  %148 = xor i32 %147, -1, !mcsema_real_eip !133
  %149 = and i32 %148, %140, !mcsema_real_eip !133
  %150 = lshr i32 %149, 31, !mcsema_real_eip !133
  %151 = and i32 %150, 1, !mcsema_real_eip !133
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !133
  store i1 %152, i1* %OF, !mcsema_real_eip !133
  %153 = trunc i32 %139 to i8, !mcsema_real_eip !133
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !133
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !133
  %156 = xor i1 %155, true, !mcsema_real_eip !133
  store i1 %156, i1* %PF, !mcsema_real_eip !133
  %157 = icmp ult i32 %139, %138, !mcsema_real_eip !133
  store i1 %157, i1* %CF, !mcsema_real_eip !133
  %158 = zext i32 %139 to i64, !mcsema_real_eip !133
  store i64 %158, i64* %XDX, !mcsema_real_eip !133
  %159 = add i64 %RBP_val.222, -32, !mcsema_real_eip !134
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !134
  %161 = inttoptr i64 %159 to i32*, !mcsema_real_eip !134
  %162 = load i32, i32* %161, !mcsema_real_eip !134
  %EDX_val.228 = load i32, i32* %EDX.182, !mcsema_real_eip !134
  %163 = add i32 %EDX_val.228, %162, !mcsema_real_eip !134
  %164 = xor i32 %163, %162, !mcsema_real_eip !134
  %165 = xor i32 %164, %EDX_val.228, !mcsema_real_eip !134
  %166 = and i32 %165, 16, !mcsema_real_eip !134
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !134
  store i1 %167, i1* %AF, !mcsema_real_eip !134
  %168 = lshr i32 %163, 31, !mcsema_real_eip !134
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !134
  store i1 %169, i1* %SF, !mcsema_real_eip !134
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !134
  store i1 %170, i1* %ZF, !mcsema_real_eip !134
  %171 = xor i32 %162, %EDX_val.228, !mcsema_real_eip !134
  %172 = xor i32 %171, -1, !mcsema_real_eip !134
  %173 = and i32 %172, %164, !mcsema_real_eip !134
  %174 = lshr i32 %173, 31, !mcsema_real_eip !134
  %175 = and i32 %174, 1, !mcsema_real_eip !134
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !134
  store i1 %176, i1* %OF, !mcsema_real_eip !134
  %177 = trunc i32 %163 to i8, !mcsema_real_eip !134
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !134
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !134
  %180 = xor i1 %179, true, !mcsema_real_eip !134
  store i1 %180, i1* %PF, !mcsema_real_eip !134
  %181 = icmp ult i32 %163, %162, !mcsema_real_eip !134
  store i1 %181, i1* %CF, !mcsema_real_eip !134
  %182 = zext i32 %163 to i64, !mcsema_real_eip !134
  store i64 %182, i64* %XDX, !mcsema_real_eip !134
  %183 = add i64 %RBP_val.222, -76, !mcsema_real_eip !135
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !135
  %EDX_val.231 = load i32, i32* %EDX.182, !mcsema_real_eip !135
  %185 = inttoptr i64 %183 to i32*, !mcsema_real_eip !135
  store i32 %EDX_val.231, i32* %185, !mcsema_real_eip !135
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !136
  %186 = add i64 %RBP_val.232, -76, !mcsema_real_eip !136
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !136
  %188 = inttoptr i64 %186 to i32*, !mcsema_real_eip !136
  %189 = load i32, i32* %188, !mcsema_real_eip !136
  %190 = zext i32 %189 to i64, !mcsema_real_eip !136
  store i64 %190, i64* %XSI, !mcsema_real_eip !136
  %191 = add i64 %RBP_val.232, -88, !mcsema_real_eip !137
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !137
  %193 = load i64, i64* %192, !mcsema_real_eip !137
  store i64 %193, i64* %XDI, !mcsema_real_eip !137
  %AL.234 = bitcast i64* %XAX to i8*, !mcsema_real_eip !138
  store i8 0, i8* %AL.234, !mcsema_real_eip !138
  %RDX_val.237 = load i64, i64* %XDX, !mcsema_real_eip !139
  %RCX_val.238 = load i64, i64* %XCX, !mcsema_real_eip !139
  %R8_val.239 = load i64, i64* %R8, !mcsema_real_eip !139
  %R9_val.240 = load i64, i64* %R9, !mcsema_real_eip !139
  %RSP_val.241 = load i64, i64* %XSP, !mcsema_real_eip !139
  %194 = inttoptr i64 %RSP_val.241 to i64*, !mcsema_real_eip !139
  %195 = load i64, i64* %194, !mcsema_real_eip !139
  %196 = add i64 %RSP_val.241, 8, !mcsema_real_eip !139
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !139
  %198 = load i64, i64* %197, !mcsema_real_eip !139
  %199 = add i64 %196, 8, !mcsema_real_eip !139
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !139
  %201 = load i64, i64* %200, !mcsema_real_eip !139
  %202 = add i64 %199, 8, !mcsema_real_eip !139
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !139
  %204 = load i64, i64* %203, !mcsema_real_eip !139
  %205 = add i64 %202, 8, !mcsema_real_eip !139
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !139
  %207 = load i64, i64* %206, !mcsema_real_eip !139
  %208 = add i64 %205, 8, !mcsema_real_eip !139
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !139
  %210 = load i64, i64* %209, !mcsema_real_eip !139
  %211 = add i64 %208, 8, !mcsema_real_eip !139
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !139
  %213 = load i64, i64* %212, !mcsema_real_eip !139
  %214 = add i64 %211, 8, !mcsema_real_eip !139
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !139
  %216 = load i64, i64* %215, !mcsema_real_eip !139
  %217 = add i64 %214, 8, !mcsema_real_eip !139
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !139
  %219 = load i64, i64* %218, !mcsema_real_eip !139
  %220 = add i64 %217, 8, !mcsema_real_eip !139
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !139
  %222 = load i64, i64* %221, !mcsema_real_eip !139
  %223 = sub i64 %RSP_val.241, 8, !mcsema_real_eip !139
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !139
  store i64 -2415393069852865332, i64* %224, !mcsema_real_eip !139
  store i64 %223, i64* %XSP, !mcsema_real_eip !139
  %225 = call x86_64_sysvcc i64 @_printf(i64 %193, i64 %190, i64 %RDX_val.237, i64 %RCX_val.238, i64 %R8_val.239, i64 %R9_val.240, i64 %195, i64 %198, i64 %201, i64 %204, i64 %207, i64 %210, i64 %213, i64 %216, i64 %219, i64 %222), !mcsema_real_eip !139
  store i64 %225, i64* %XAX, !mcsema_real_eip !139
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !140
  %226 = add i64 %RBP_val.243, -76, !mcsema_real_eip !140
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !140
  %228 = inttoptr i64 %226 to i32*, !mcsema_real_eip !140
  %229 = load i32, i32* %228, !mcsema_real_eip !140
  %230 = zext i32 %229 to i64, !mcsema_real_eip !140
  store i64 %230, i64* %XDX, !mcsema_real_eip !140
  %231 = add i64 %RBP_val.243, -96, !mcsema_real_eip !141
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !141
  %EAX_val.246 = load i32, i32* %EAX.164, !mcsema_real_eip !141
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !141
  store i32 %EAX_val.246, i32* %233, !mcsema_real_eip !141
  %EDX_val.248 = load i32, i32* %EDX.182, !mcsema_real_eip !142
  %234 = zext i32 %EDX_val.248 to i64, !mcsema_real_eip !142
  store i64 %234, i64* %XAX, !mcsema_real_eip !142
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !143
  %235 = add i64 144, %RSP_val.249, !mcsema_real_eip !143
  %236 = xor i64 %235, %RSP_val.249, !mcsema_real_eip !143
  %237 = xor i64 %236, 144, !mcsema_real_eip !143
  %238 = and i64 %237, 16, !mcsema_real_eip !143
  %239 = icmp ne i64 %238, 0, !mcsema_real_eip !143
  store i1 %239, i1* %AF, !mcsema_real_eip !143
  %240 = lshr i64 %235, 63, !mcsema_real_eip !143
  %241 = trunc i64 %240 to i1, !mcsema_real_eip !143
  store i1 %241, i1* %SF, !mcsema_real_eip !143
  %242 = icmp eq i64 %235, 0, !mcsema_real_eip !143
  store i1 %242, i1* %ZF, !mcsema_real_eip !143
  %243 = xor i64 %RSP_val.249, 144, !mcsema_real_eip !143
  %244 = xor i64 %243, -1, !mcsema_real_eip !143
  %245 = and i64 %244, %236, !mcsema_real_eip !143
  %246 = lshr i64 %245, 63, !mcsema_real_eip !143
  %247 = and i64 %246, 1, !mcsema_real_eip !143
  %248 = trunc i64 %247 to i1, !mcsema_real_eip !143
  store i1 %248, i1* %OF, !mcsema_real_eip !143
  %249 = trunc i64 %235 to i8, !mcsema_real_eip !143
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !143
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !143
  %252 = xor i1 %251, true, !mcsema_real_eip !143
  store i1 %252, i1* %PF, !mcsema_real_eip !143
  %253 = icmp ult i64 %235, %RSP_val.249, !mcsema_real_eip !143
  store i1 %253, i1* %CF, !mcsema_real_eip !143
  store i64 %235, i64* %XSP, !mcsema_real_eip !143
  %254 = inttoptr i64 %235 to i64*, !mcsema_real_eip !144
  %255 = load i64, i64* %254, !mcsema_real_eip !144
  store i64 %255, i64* %XBP, !mcsema_real_eip !144
  %256 = add i64 %235, 8, !mcsema_real_eip !144
  store i64 %256, i64* %XSP, !mcsema_real_eip !144
  %257 = add i64 %256, 8, !mcsema_real_eip !145
  %258 = inttoptr i64 %256 to i64*, !mcsema_real_eip !145
  %259 = load i64, i64* %258, !mcsema_real_eip !145
  store i64 %259, i64* %XIP, !mcsema_real_eip !145
  store i64 %257, i64* %XSP, !mcsema_real_eip !145
  ret void, !mcsema_real_eip !145
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
!10 = !{i64 24}
!11 = !{i64 27}
!12 = !{i64 30}
!13 = !{i64 33}
!14 = !{i64 37}
!15 = !{i64 41}
!16 = !{i64 45}
!17 = !{i64 49}
!18 = !{i64 53}
!19 = !{i64 57}
!20 = !{i64 60}
!21 = !{i64 64}
!22 = !{i64 68}
!23 = !{i64 71}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 81}
!27 = !{i64 85}
!28 = !{i64 88}
!29 = !{i64 91}
!30 = !{i64 94}
!31 = !{i64 98}
!32 = !{i64 101}
!33 = !{i64 104}
!34 = !{i64 108}
!35 = !{i64 111}
!36 = !{i64 114}
!37 = !{i64 117}
!38 = !{i64 120}
!39 = !{i64 123}
!40 = !{i64 127}
!41 = !{i64 131}
!42 = !{i64 134}
!43 = !{i64 138}
!44 = !{i64 142}
!45 = !{i64 145}
!46 = !{i64 149}
!47 = !{i64 153}
!48 = !{i64 157}
!49 = !{i64 160}
!50 = !{i64 164}
!51 = !{i64 168}
!52 = !{i64 171}
!53 = !{i64 174}
!54 = !{i64 177}
!55 = !{i64 180}
!56 = !{i64 184}
!57 = !{i64 188}
!58 = !{i64 191}
!59 = !{i64 195}
!60 = !{i64 199}
!61 = !{i64 202}
!62 = !{i64 206}
!63 = !{i64 210}
!64 = !{i64 214}
!65 = !{i64 217}
!66 = !{i64 221}
!67 = !{i64 225}
!68 = !{i64 228}
!69 = !{i64 231}
!70 = !{i64 234}
!71 = !{i64 237}
!72 = !{i64 240}
!73 = !{i64 244}
!74 = !{i64 248}
!75 = !{i64 251}
!76 = !{i64 254}
!77 = !{i64 258}
!78 = !{i64 265}
!79 = !{i64 272}
!80 = !{i64 275}
!81 = !{i64 276}
!82 = !{i64 277}
!83 = !{i64 288}
!84 = !{i64 289}
!85 = !{i64 292}
!86 = !{i64 299}
!87 = !{i64 309}
!88 = !{i64 316}
!89 = !{i64 323}
!90 = !{i64 330}
!91 = !{i64 337}
!92 = !{i64 342}
!93 = !{i64 344}
!94 = !{i64 348}
!95 = !{i64 351}
!96 = !{i64 356}
!97 = !{i64 360}
!98 = !{i64 364}
!99 = !{i64 370}
!100 = !{i64 374}
!101 = !{i64 381}
!102 = !{i64 385}
!103 = !{i64 392}
!104 = !{i64 396}
!105 = !{i64 399}
!106 = !{i64 402}
!107 = !{i64 406}
!108 = !{i64 410}
!109 = !{i64 414}
!110 = !{i64 417}
!111 = !{i64 420}
!112 = !{i64 423}
!113 = !{i64 426}
!114 = !{i64 430}
!115 = !{i64 434}
!116 = !{i64 438}
!117 = !{i64 442}
!118 = !{i64 446}
!119 = !{i64 452}
!120 = !{i64 457}
!121 = !{i64 463}
!122 = !{i64 466}
!123 = !{i64 469}
!124 = !{i64 472}
!125 = !{i64 476}
!126 = !{i64 481}
!127 = !{i64 484}
!128 = !{i64 488}
!129 = !{i64 492}
!130 = !{i64 496}
!131 = !{i64 499}
!132 = !{i64 502}
!133 = !{i64 505}
!134 = !{i64 508}
!135 = !{i64 511}
!136 = !{i64 514}
!137 = !{i64 517}
!138 = !{i64 521}
!139 = !{i64 523}
!140 = !{i64 528}
!141 = !{i64 531}
!142 = !{i64 534}
!143 = !{i64 536}
!144 = !{i64 543}
!145 = !{i64 544}
