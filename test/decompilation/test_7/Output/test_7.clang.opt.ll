; ModuleID = 'Output/test_7.clang.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %R10, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = load i64, i64* %12, !mcsema_real_eip !7
  store i64 %13, i64* %R11, !mcsema_real_eip !7
  %14 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !8
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !8
  %17 = load i32, i32* %16, !mcsema_real_eip !8
  %18 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %18, i64* %XBX, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %21, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %22 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !10
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %23, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.14, -32, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !11
  store i64 %RDX_val.15, i64* %25, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %26 = add i64 %RBP_val.16, -40, !mcsema_real_eip !12
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !12
  %RCX_val.17 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.17, i64* %27, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %28 = add i64 %RBP_val.18, -44, !mcsema_real_eip !13
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !13
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.20, i32* %30, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !14
  %31 = add i64 %RBP_val.21, -48, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !14
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !14
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.23, i32* %33, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !15
  %34 = add i64 %RBP_val.24, -52, !mcsema_real_eip !15
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !15
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !15
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.26, i32* %36, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %37 = add i64 %RBP_val.27, -64, !mcsema_real_eip !16
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !16
  %R11_val.28 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.28, i64* %38, !mcsema_real_eip !16
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !17
  %39 = add i64 %RBP_val.29, -72, !mcsema_real_eip !17
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !17
  %R10_val.30 = load i64, i64* %R10, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %40, !mcsema_real_eip !17
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !18
  %41 = add i64 %RBP_val.31, -80, !mcsema_real_eip !18
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !18
  %RAX_val.32 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %42, !mcsema_real_eip !18
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !19
  %43 = add i64 %RBP_val.33, -84, !mcsema_real_eip !19
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !19
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %45, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %46 = add i64 %RBP_val.34, -12, !mcsema_real_eip !20
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !20
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !20
  %49 = load i32, i32* %48, !mcsema_real_eip !20
  %50 = zext i32 %49 to i64, !mcsema_real_eip !20
  store i64 %50, i64* %XDI, !mcsema_real_eip !20
  %51 = add i64 %RBP_val.34, -84, !mcsema_real_eip !21
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !21
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !21
  %54 = load i32, i32* %53, !mcsema_real_eip !21
  %EDI_val.37 = load i32, i32* %EDI.10, !mcsema_real_eip !21
  %55 = add i32 %EDI_val.37, %54, !mcsema_real_eip !21
  %56 = xor i32 %55, %54, !mcsema_real_eip !21
  %57 = xor i32 %56, %EDI_val.37, !mcsema_real_eip !21
  %58 = and i32 %57, 16, !mcsema_real_eip !21
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !21
  store i1 %59, i1* %AF, !mcsema_real_eip !21
  %60 = lshr i32 %55, 31, !mcsema_real_eip !21
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !21
  store i1 %61, i1* %SF, !mcsema_real_eip !21
  %62 = icmp eq i32 %55, 0, !mcsema_real_eip !21
  store i1 %62, i1* %ZF, !mcsema_real_eip !21
  %63 = xor i32 %54, %EDI_val.37, !mcsema_real_eip !21
  %64 = xor i32 %63, -1, !mcsema_real_eip !21
  %65 = and i32 %64, %56, !mcsema_real_eip !21
  %66 = lshr i32 %65, 31, !mcsema_real_eip !21
  %67 = and i32 %66, 1, !mcsema_real_eip !21
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !21
  store i1 %68, i1* %OF, !mcsema_real_eip !21
  %69 = trunc i32 %55 to i8, !mcsema_real_eip !21
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !21
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !21
  %72 = xor i1 %71, true, !mcsema_real_eip !21
  store i1 %72, i1* %PF, !mcsema_real_eip !21
  %73 = icmp ult i32 %55, %54, !mcsema_real_eip !21
  store i1 %73, i1* %CF, !mcsema_real_eip !21
  %74 = zext i32 %55 to i64, !mcsema_real_eip !21
  store i64 %74, i64* %XDI, !mcsema_real_eip !21
  %EDI_val.40 = load i32, i32* %EDI.10, !mcsema_real_eip !22
  store i32 %EDI_val.40, i32* %53, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !23
  %75 = add i64 %RBP_val.41, -88, !mcsema_real_eip !23
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !23
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %77, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !24
  %78 = add i64 %RBP_val.42, -88, !mcsema_real_eip !24
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !24
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !24
  %81 = load i32, i32* %80, !mcsema_real_eip !24
  %82 = zext i32 %81 to i64, !mcsema_real_eip !24
  store i64 %82, i64* %XAX, !mcsema_real_eip !24
  %83 = add i64 %RBP_val.42, -44, !mcsema_real_eip !25
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !25
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !25
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !25
  %86 = load i32, i32* %85, !mcsema_real_eip !25
  %87 = sub i32 %EAX_val.45, %86, !mcsema_real_eip !25
  %88 = xor i32 %87, %EAX_val.45, !mcsema_real_eip !25
  %89 = xor i32 %88, %86, !mcsema_real_eip !25
  %90 = and i32 %89, 16, !mcsema_real_eip !25
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !25
  store i1 %91, i1* %AF, !mcsema_real_eip !25
  %92 = trunc i32 %87 to i8, !mcsema_real_eip !25
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !25
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !25
  %95 = xor i1 %94, true, !mcsema_real_eip !25
  store i1 %95, i1* %PF, !mcsema_real_eip !25
  %96 = icmp eq i32 %87, 0, !mcsema_real_eip !25
  store i1 %96, i1* %ZF, !mcsema_real_eip !25
  %97 = lshr i32 %87, 31, !mcsema_real_eip !25
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !25
  store i1 %98, i1* %SF, !mcsema_real_eip !25
  %99 = icmp ult i32 %EAX_val.45, %86, !mcsema_real_eip !25
  store i1 %99, i1* %CF, !mcsema_real_eip !25
  %100 = xor i32 %EAX_val.45, %86, !mcsema_real_eip !25
  %101 = and i32 %100, %88, !mcsema_real_eip !25
  %102 = lshr i32 %101, 31, !mcsema_real_eip !25
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !25
  store i1 %103, i1* %OF, !mcsema_real_eip !25
  %104 = icmp eq i1 %98, %103, !mcsema_real_eip !26
  br i1 %104, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %block_0x51
  %105 = add i64 %RBP_val.42, -24, !mcsema_real_eip !27
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !27
  %107 = load i64, i64* %106, !mcsema_real_eip !27
  store i64 %107, i64* %XAX, !mcsema_real_eip !27
  %108 = load i32, i32* %80, !mcsema_real_eip !28
  %109 = sext i32 %108 to i64, !mcsema_real_eip !28
  store i64 %109, i64* %XCX, !mcsema_real_eip !28
  %110 = mul i64 %109, 4, !mcsema_real_eip !29
  %111 = add i64 %107, %110, !mcsema_real_eip !29
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !29
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !29
  %114 = load i32, i32* %113, !mcsema_real_eip !29
  %115 = zext i32 %114 to i64, !mcsema_real_eip !29
  store i64 %115, i64* %XDX, !mcsema_real_eip !29
  %116 = add i64 %RBP_val.42, -84, !mcsema_real_eip !30
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !30
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !30
  %119 = load i32, i32* %118, !mcsema_real_eip !30
  %EDX.51 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.52 = load i32, i32* %EDX.51, !mcsema_real_eip !30
  %120 = add i32 %EDX_val.52, %119, !mcsema_real_eip !30
  %121 = xor i32 %120, %119, !mcsema_real_eip !30
  %122 = xor i32 %121, %EDX_val.52, !mcsema_real_eip !30
  %123 = and i32 %122, 16, !mcsema_real_eip !30
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !30
  store i1 %124, i1* %AF, !mcsema_real_eip !30
  %125 = lshr i32 %120, 31, !mcsema_real_eip !30
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !30
  store i1 %126, i1* %SF, !mcsema_real_eip !30
  %127 = icmp eq i32 %120, 0, !mcsema_real_eip !30
  store i1 %127, i1* %ZF, !mcsema_real_eip !30
  %128 = xor i32 %119, %EDX_val.52, !mcsema_real_eip !30
  %129 = xor i32 %128, -1, !mcsema_real_eip !30
  %130 = and i32 %129, %121, !mcsema_real_eip !30
  %131 = lshr i32 %130, 31, !mcsema_real_eip !30
  %132 = and i32 %131, 1, !mcsema_real_eip !30
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !30
  store i1 %133, i1* %OF, !mcsema_real_eip !30
  %134 = trunc i32 %120 to i8, !mcsema_real_eip !30
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !30
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !30
  %137 = xor i1 %136, true, !mcsema_real_eip !30
  store i1 %137, i1* %PF, !mcsema_real_eip !30
  %138 = icmp ult i32 %120, %119, !mcsema_real_eip !30
  store i1 %138, i1* %CF, !mcsema_real_eip !30
  %139 = zext i32 %120 to i64, !mcsema_real_eip !30
  store i64 %139, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.51, !mcsema_real_eip !31
  store i32 %EDX_val.55, i32* %118, !mcsema_real_eip !31
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !32
  %140 = add i64 %RBP_val.56, -88, !mcsema_real_eip !32
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !32
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !32
  %143 = load i32, i32* %142, !mcsema_real_eip !32
  %144 = zext i32 %143 to i64, !mcsema_real_eip !32
  store i64 %144, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.58 = load i32, i32* %EAX.44, !mcsema_real_eip !33
  %145 = add i32 1, %EAX_val.58, !mcsema_real_eip !33
  %146 = xor i32 %145, %EAX_val.58, !mcsema_real_eip !33
  %147 = xor i32 %146, 1, !mcsema_real_eip !33
  %148 = and i32 %147, 16, !mcsema_real_eip !33
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !33
  store i1 %149, i1* %AF, !mcsema_real_eip !33
  %150 = lshr i32 %145, 31, !mcsema_real_eip !33
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !33
  store i1 %151, i1* %SF, !mcsema_real_eip !33
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !33
  store i1 %152, i1* %ZF, !mcsema_real_eip !33
  %153 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !33
  %154 = xor i32 %153, -1, !mcsema_real_eip !33
  %155 = and i32 %154, %146, !mcsema_real_eip !33
  %156 = lshr i32 %155, 31, !mcsema_real_eip !33
  %157 = and i32 %156, 1, !mcsema_real_eip !33
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !33
  store i1 %158, i1* %OF, !mcsema_real_eip !33
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !33
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !33
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !33
  %162 = xor i1 %161, true, !mcsema_real_eip !33
  store i1 %162, i1* %PF, !mcsema_real_eip !33
  %163 = icmp ult i32 %145, %EAX_val.58, !mcsema_real_eip !33
  store i1 %163, i1* %CF, !mcsema_real_eip !33
  %164 = zext i32 %145 to i64, !mcsema_real_eip !33
  store i64 %164, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.61 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  store i32 %EAX_val.61, i32* %142, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %block_0x51
  %165 = add i64 %RBP_val.42, -32, !mcsema_real_eip !36
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !36
  %167 = load i64, i64* %166, !mcsema_real_eip !36
  store i64 %167, i64* %XAX, !mcsema_real_eip !36
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !37
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !37
  %170 = load i32, i32* %169, !mcsema_real_eip !37
  %171 = zext i32 %170 to i64, !mcsema_real_eip !37
  store i64 %171, i64* %XCX, !mcsema_real_eip !37
  %172 = add i64 %RBP_val.42, -84, !mcsema_real_eip !38
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !38
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !38
  %175 = load i32, i32* %174, !mcsema_real_eip !38
  %ECX.65 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.66 = load i32, i32* %ECX.65, !mcsema_real_eip !38
  %176 = add i32 %ECX_val.66, %175, !mcsema_real_eip !38
  %177 = xor i32 %176, %175, !mcsema_real_eip !38
  %178 = xor i32 %177, %ECX_val.66, !mcsema_real_eip !38
  %179 = and i32 %178, 16, !mcsema_real_eip !38
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !38
  store i1 %180, i1* %AF, !mcsema_real_eip !38
  %181 = lshr i32 %176, 31, !mcsema_real_eip !38
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !38
  store i1 %182, i1* %SF, !mcsema_real_eip !38
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !38
  store i1 %183, i1* %ZF, !mcsema_real_eip !38
  %184 = xor i32 %175, %ECX_val.66, !mcsema_real_eip !38
  %185 = xor i32 %184, -1, !mcsema_real_eip !38
  %186 = and i32 %185, %177, !mcsema_real_eip !38
  %187 = lshr i32 %186, 31, !mcsema_real_eip !38
  %188 = and i32 %187, 1, !mcsema_real_eip !38
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !38
  store i1 %189, i1* %OF, !mcsema_real_eip !38
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !38
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !38
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !38
  %193 = xor i1 %192, true, !mcsema_real_eip !38
  store i1 %193, i1* %PF, !mcsema_real_eip !38
  %194 = icmp ult i32 %176, %175, !mcsema_real_eip !38
  store i1 %194, i1* %CF, !mcsema_real_eip !38
  %195 = zext i32 %176 to i64, !mcsema_real_eip !38
  store i64 %195, i64* %XCX, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.65, !mcsema_real_eip !39
  store i32 %ECX_val.69, i32* %174, !mcsema_real_eip !39
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !40
  %196 = add i64 %RBP_val.70, -92, !mcsema_real_eip !40
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !40
  %198 = inttoptr i64 %196 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %198, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !41
  %199 = add i64 %RBP_val.71, -92, !mcsema_real_eip !41
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !41
  %201 = inttoptr i64 %199 to i32*, !mcsema_real_eip !41
  %202 = load i32, i32* %201, !mcsema_real_eip !41
  %203 = zext i32 %202 to i64, !mcsema_real_eip !41
  store i64 %203, i64* %XAX, !mcsema_real_eip !41
  %204 = add i64 %RBP_val.71, -48, !mcsema_real_eip !42
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !42
  %EAX_val.74 = load i32, i32* %EAX.44, !mcsema_real_eip !42
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !42
  %207 = load i32, i32* %206, !mcsema_real_eip !42
  %208 = sub i32 %EAX_val.74, %207, !mcsema_real_eip !42
  %209 = xor i32 %208, %EAX_val.74, !mcsema_real_eip !42
  %210 = xor i32 %209, %207, !mcsema_real_eip !42
  %211 = and i32 %210, 16, !mcsema_real_eip !42
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !42
  store i1 %212, i1* %AF, !mcsema_real_eip !42
  %213 = trunc i32 %208 to i8, !mcsema_real_eip !42
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !42
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !42
  %216 = xor i1 %215, true, !mcsema_real_eip !42
  store i1 %216, i1* %PF, !mcsema_real_eip !42
  %217 = icmp eq i32 %208, 0, !mcsema_real_eip !42
  store i1 %217, i1* %ZF, !mcsema_real_eip !42
  %218 = lshr i32 %208, 31, !mcsema_real_eip !42
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !42
  store i1 %219, i1* %SF, !mcsema_real_eip !42
  %220 = icmp ult i32 %EAX_val.74, %207, !mcsema_real_eip !42
  store i1 %220, i1* %CF, !mcsema_real_eip !42
  %221 = xor i32 %EAX_val.74, %207, !mcsema_real_eip !42
  %222 = and i32 %221, %209, !mcsema_real_eip !42
  %223 = lshr i32 %222, 31, !mcsema_real_eip !42
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !42
  store i1 %224, i1* %OF, !mcsema_real_eip !42
  %225 = icmp eq i1 %219, %224, !mcsema_real_eip !43
  br i1 %225, label %block_0xba, label %block_0x9b, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %block_0x8f
  %226 = add i64 %RBP_val.71, -40, !mcsema_real_eip !44
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !44
  %228 = load i64, i64* %227, !mcsema_real_eip !44
  store i64 %228, i64* %XAX, !mcsema_real_eip !44
  %229 = load i32, i32* %201, !mcsema_real_eip !45
  %230 = sext i32 %229 to i64, !mcsema_real_eip !45
  store i64 %230, i64* %XCX, !mcsema_real_eip !45
  %231 = mul i64 %230, 4, !mcsema_real_eip !46
  %232 = add i64 %228, %231, !mcsema_real_eip !46
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !46
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !46
  %235 = load i32, i32* %234, !mcsema_real_eip !46
  %236 = zext i32 %235 to i64, !mcsema_real_eip !46
  store i64 %236, i64* %XDX, !mcsema_real_eip !46
  %237 = add i64 %RBP_val.71, -84, !mcsema_real_eip !47
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !47
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !47
  %240 = load i32, i32* %239, !mcsema_real_eip !47
  %EDX.80 = bitcast i64* %XDX to i32*, !mcsema_real_eip !47
  %EDX_val.81 = load i32, i32* %EDX.80, !mcsema_real_eip !47
  %241 = add i32 %EDX_val.81, %240, !mcsema_real_eip !47
  %242 = xor i32 %241, %240, !mcsema_real_eip !47
  %243 = xor i32 %242, %EDX_val.81, !mcsema_real_eip !47
  %244 = and i32 %243, 16, !mcsema_real_eip !47
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !47
  store i1 %245, i1* %AF, !mcsema_real_eip !47
  %246 = lshr i32 %241, 31, !mcsema_real_eip !47
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !47
  store i1 %247, i1* %SF, !mcsema_real_eip !47
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !47
  store i1 %248, i1* %ZF, !mcsema_real_eip !47
  %249 = xor i32 %240, %EDX_val.81, !mcsema_real_eip !47
  %250 = xor i32 %249, -1, !mcsema_real_eip !47
  %251 = and i32 %250, %242, !mcsema_real_eip !47
  %252 = lshr i32 %251, 31, !mcsema_real_eip !47
  %253 = and i32 %252, 1, !mcsema_real_eip !47
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !47
  store i1 %254, i1* %OF, !mcsema_real_eip !47
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !47
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !47
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !47
  %258 = xor i1 %257, true, !mcsema_real_eip !47
  store i1 %258, i1* %PF, !mcsema_real_eip !47
  %259 = icmp ult i32 %241, %240, !mcsema_real_eip !47
  store i1 %259, i1* %CF, !mcsema_real_eip !47
  %260 = zext i32 %241 to i64, !mcsema_real_eip !47
  store i64 %260, i64* %XDX, !mcsema_real_eip !47
  %EDX_val.84 = load i32, i32* %EDX.80, !mcsema_real_eip !48
  store i32 %EDX_val.84, i32* %239, !mcsema_real_eip !48
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !49
  %261 = add i64 %RBP_val.85, -92, !mcsema_real_eip !49
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !49
  %263 = inttoptr i64 %261 to i32*, !mcsema_real_eip !49
  %264 = load i32, i32* %263, !mcsema_real_eip !49
  %265 = zext i32 %264 to i64, !mcsema_real_eip !49
  store i64 %265, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.87 = load i32, i32* %EAX.44, !mcsema_real_eip !50
  %266 = add i32 1, %EAX_val.87, !mcsema_real_eip !50
  %267 = xor i32 %266, %EAX_val.87, !mcsema_real_eip !50
  %268 = xor i32 %267, 1, !mcsema_real_eip !50
  %269 = and i32 %268, 16, !mcsema_real_eip !50
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !50
  store i1 %270, i1* %AF, !mcsema_real_eip !50
  %271 = lshr i32 %266, 31, !mcsema_real_eip !50
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !50
  store i1 %272, i1* %SF, !mcsema_real_eip !50
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !50
  store i1 %273, i1* %ZF, !mcsema_real_eip !50
  %274 = xor i32 %EAX_val.87, 1, !mcsema_real_eip !50
  %275 = xor i32 %274, -1, !mcsema_real_eip !50
  %276 = and i32 %275, %267, !mcsema_real_eip !50
  %277 = lshr i32 %276, 31, !mcsema_real_eip !50
  %278 = and i32 %277, 1, !mcsema_real_eip !50
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !50
  store i1 %279, i1* %OF, !mcsema_real_eip !50
  %280 = trunc i32 %266 to i8, !mcsema_real_eip !50
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !50
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !50
  %283 = xor i1 %282, true, !mcsema_real_eip !50
  store i1 %283, i1* %PF, !mcsema_real_eip !50
  %284 = icmp ult i32 %266, %EAX_val.87, !mcsema_real_eip !50
  store i1 %284, i1* %CF, !mcsema_real_eip !50
  %285 = zext i32 %266 to i64, !mcsema_real_eip !50
  store i64 %285, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.90 = load i32, i32* %EAX.44, !mcsema_real_eip !51
  store i32 %EAX_val.90, i32* %263, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %block_0x8f
  %286 = add i64 %RBP_val.71, -52, !mcsema_real_eip !53
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !53
  %288 = inttoptr i64 %286 to i32*, !mcsema_real_eip !53
  %289 = load i32, i32* %288, !mcsema_real_eip !53
  %290 = zext i32 %289 to i64, !mcsema_real_eip !53
  store i64 %290, i64* %XAX, !mcsema_real_eip !53
  %291 = add i64 %RBP_val.71, -84, !mcsema_real_eip !54
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !54
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !54
  %294 = load i32, i32* %293, !mcsema_real_eip !54
  %EAX_val.94 = load i32, i32* %EAX.44, !mcsema_real_eip !54
  %295 = add i32 %EAX_val.94, %294, !mcsema_real_eip !54
  %296 = xor i32 %295, %294, !mcsema_real_eip !54
  %297 = xor i32 %296, %EAX_val.94, !mcsema_real_eip !54
  %298 = and i32 %297, 16, !mcsema_real_eip !54
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !54
  store i1 %299, i1* %AF, !mcsema_real_eip !54
  %300 = lshr i32 %295, 31, !mcsema_real_eip !54
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !54
  store i1 %301, i1* %SF, !mcsema_real_eip !54
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !54
  store i1 %302, i1* %ZF, !mcsema_real_eip !54
  %303 = xor i32 %294, %EAX_val.94, !mcsema_real_eip !54
  %304 = xor i32 %303, -1, !mcsema_real_eip !54
  %305 = and i32 %304, %296, !mcsema_real_eip !54
  %306 = lshr i32 %305, 31, !mcsema_real_eip !54
  %307 = and i32 %306, 1, !mcsema_real_eip !54
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !54
  store i1 %308, i1* %OF, !mcsema_real_eip !54
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !54
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !54
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !54
  %312 = xor i1 %311, true, !mcsema_real_eip !54
  store i1 %312, i1* %PF, !mcsema_real_eip !54
  %313 = icmp ult i32 %295, %294, !mcsema_real_eip !54
  store i1 %313, i1* %CF, !mcsema_real_eip !54
  %314 = zext i32 %295 to i64, !mcsema_real_eip !54
  store i64 %314, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.97 = load i32, i32* %EAX.44, !mcsema_real_eip !55
  store i32 %EAX_val.97, i32* %293, !mcsema_real_eip !55
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !56
  %315 = add i64 %RBP_val.98, -96, !mcsema_real_eip !56
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !56
  %317 = inttoptr i64 %315 to i32*, !mcsema_real_eip !56
  store i32 0, i32* %317, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !57
  %318 = add i64 %RBP_val.99, -96, !mcsema_real_eip !57
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !57
  %320 = inttoptr i64 %318 to i32*, !mcsema_real_eip !57
  %321 = load i32, i32* %320, !mcsema_real_eip !57
  %322 = zext i32 %321 to i64, !mcsema_real_eip !57
  store i64 %322, i64* %XAX, !mcsema_real_eip !57
  %323 = add i64 %RBP_val.99, -44, !mcsema_real_eip !58
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !58
  %EAX_val.102 = load i32, i32* %EAX.44, !mcsema_real_eip !58
  %325 = inttoptr i64 %323 to i32*, !mcsema_real_eip !58
  %326 = load i32, i32* %325, !mcsema_real_eip !58
  %327 = sub i32 %EAX_val.102, %326, !mcsema_real_eip !58
  %328 = xor i32 %327, %EAX_val.102, !mcsema_real_eip !58
  %329 = xor i32 %328, %326, !mcsema_real_eip !58
  %330 = and i32 %329, 16, !mcsema_real_eip !58
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !58
  store i1 %331, i1* %AF, !mcsema_real_eip !58
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !58
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !58
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !58
  %335 = xor i1 %334, true, !mcsema_real_eip !58
  store i1 %335, i1* %PF, !mcsema_real_eip !58
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !58
  store i1 %336, i1* %ZF, !mcsema_real_eip !58
  %337 = lshr i32 %327, 31, !mcsema_real_eip !58
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !58
  store i1 %338, i1* %SF, !mcsema_real_eip !58
  %339 = icmp ult i32 %EAX_val.102, %326, !mcsema_real_eip !58
  store i1 %339, i1* %CF, !mcsema_real_eip !58
  %340 = xor i32 %EAX_val.102, %326, !mcsema_real_eip !58
  %341 = and i32 %340, %328, !mcsema_real_eip !58
  %342 = lshr i32 %341, 31, !mcsema_real_eip !58
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !58
  store i1 %343, i1* %OF, !mcsema_real_eip !58
  %344 = icmp eq i1 %338, %343, !mcsema_real_eip !59
  br i1 %344, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %block_0xca
  %345 = add i64 %RBP_val.99, -64, !mcsema_real_eip !60
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !60
  %347 = load i64, i64* %346, !mcsema_real_eip !60
  store i64 %347, i64* %XAX, !mcsema_real_eip !60
  %348 = load i32, i32* %320, !mcsema_real_eip !61
  %349 = sext i32 %348 to i64, !mcsema_real_eip !61
  store i64 %349, i64* %XCX, !mcsema_real_eip !61
  %350 = mul i64 %349, 4, !mcsema_real_eip !62
  %351 = add i64 %347, %350, !mcsema_real_eip !62
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !62
  %353 = inttoptr i64 %351 to i32*, !mcsema_real_eip !62
  %354 = load i32, i32* %353, !mcsema_real_eip !62
  %355 = zext i32 %354 to i64, !mcsema_real_eip !62
  store i64 %355, i64* %XDX, !mcsema_real_eip !62
  %356 = add i64 %RBP_val.99, -84, !mcsema_real_eip !63
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !63
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !63
  %359 = load i32, i32* %358, !mcsema_real_eip !63
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !63
  %360 = add i32 %EDX_val.109, %359, !mcsema_real_eip !63
  %361 = xor i32 %360, %359, !mcsema_real_eip !63
  %362 = xor i32 %361, %EDX_val.109, !mcsema_real_eip !63
  %363 = and i32 %362, 16, !mcsema_real_eip !63
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !63
  store i1 %364, i1* %AF, !mcsema_real_eip !63
  %365 = lshr i32 %360, 31, !mcsema_real_eip !63
  %366 = trunc i32 %365 to i1, !mcsema_real_eip !63
  store i1 %366, i1* %SF, !mcsema_real_eip !63
  %367 = icmp eq i32 %360, 0, !mcsema_real_eip !63
  store i1 %367, i1* %ZF, !mcsema_real_eip !63
  %368 = xor i32 %359, %EDX_val.109, !mcsema_real_eip !63
  %369 = xor i32 %368, -1, !mcsema_real_eip !63
  %370 = and i32 %369, %361, !mcsema_real_eip !63
  %371 = lshr i32 %370, 31, !mcsema_real_eip !63
  %372 = and i32 %371, 1, !mcsema_real_eip !63
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !63
  store i1 %373, i1* %OF, !mcsema_real_eip !63
  %374 = trunc i32 %360 to i8, !mcsema_real_eip !63
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !63
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !63
  %377 = xor i1 %376, true, !mcsema_real_eip !63
  store i1 %377, i1* %PF, !mcsema_real_eip !63
  %378 = icmp ult i32 %360, %359, !mcsema_real_eip !63
  store i1 %378, i1* %CF, !mcsema_real_eip !63
  %379 = zext i32 %360 to i64, !mcsema_real_eip !63
  store i64 %379, i64* %XDX, !mcsema_real_eip !63
  %EDX_val.112 = load i32, i32* %EDX.108, !mcsema_real_eip !64
  store i32 %EDX_val.112, i32* %358, !mcsema_real_eip !64
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !65
  %380 = add i64 %RBP_val.113, -96, !mcsema_real_eip !65
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !65
  %382 = inttoptr i64 %380 to i32*, !mcsema_real_eip !65
  %383 = load i32, i32* %382, !mcsema_real_eip !65
  %384 = zext i32 %383 to i64, !mcsema_real_eip !65
  store i64 %384, i64* %XAX, !mcsema_real_eip !65
  %EAX_val.115 = load i32, i32* %EAX.44, !mcsema_real_eip !66
  %385 = add i32 1, %EAX_val.115, !mcsema_real_eip !66
  %386 = xor i32 %385, %EAX_val.115, !mcsema_real_eip !66
  %387 = xor i32 %386, 1, !mcsema_real_eip !66
  %388 = and i32 %387, 16, !mcsema_real_eip !66
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !66
  store i1 %389, i1* %AF, !mcsema_real_eip !66
  %390 = lshr i32 %385, 31, !mcsema_real_eip !66
  %391 = trunc i32 %390 to i1, !mcsema_real_eip !66
  store i1 %391, i1* %SF, !mcsema_real_eip !66
  %392 = icmp eq i32 %385, 0, !mcsema_real_eip !66
  store i1 %392, i1* %ZF, !mcsema_real_eip !66
  %393 = xor i32 %EAX_val.115, 1, !mcsema_real_eip !66
  %394 = xor i32 %393, -1, !mcsema_real_eip !66
  %395 = and i32 %394, %386, !mcsema_real_eip !66
  %396 = lshr i32 %395, 31, !mcsema_real_eip !66
  %397 = and i32 %396, 1, !mcsema_real_eip !66
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !66
  store i1 %398, i1* %OF, !mcsema_real_eip !66
  %399 = trunc i32 %385 to i8, !mcsema_real_eip !66
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !66
  %401 = trunc i8 %400 to i1, !mcsema_real_eip !66
  %402 = xor i1 %401, true, !mcsema_real_eip !66
  store i1 %402, i1* %PF, !mcsema_real_eip !66
  %403 = icmp ult i32 %385, %EAX_val.115, !mcsema_real_eip !66
  store i1 %403, i1* %CF, !mcsema_real_eip !66
  %404 = zext i32 %385 to i64, !mcsema_real_eip !66
  store i64 %404, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.118 = load i32, i32* %EAX.44, !mcsema_real_eip !67
  store i32 %EAX_val.118, i32* %382, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %block_0xca
  %405 = add i64 %RBP_val.99, -72, !mcsema_real_eip !69
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !69
  %407 = load i64, i64* %406, !mcsema_real_eip !69
  store i64 %407, i64* %XAX, !mcsema_real_eip !69
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !70
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !70
  %410 = load i32, i32* %409, !mcsema_real_eip !70
  %411 = zext i32 %410 to i64, !mcsema_real_eip !70
  store i64 %411, i64* %XCX, !mcsema_real_eip !70
  %412 = add i64 %RBP_val.99, -84, !mcsema_real_eip !71
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !71
  %414 = inttoptr i64 %412 to i32*, !mcsema_real_eip !71
  %415 = load i32, i32* %414, !mcsema_real_eip !71
  %ECX_val.123 = load i32, i32* %ECX.65, !mcsema_real_eip !71
  %416 = add i32 %ECX_val.123, %415, !mcsema_real_eip !71
  %417 = xor i32 %416, %415, !mcsema_real_eip !71
  %418 = xor i32 %417, %ECX_val.123, !mcsema_real_eip !71
  %419 = and i32 %418, 16, !mcsema_real_eip !71
  %420 = icmp ne i32 %419, 0, !mcsema_real_eip !71
  store i1 %420, i1* %AF, !mcsema_real_eip !71
  %421 = lshr i32 %416, 31, !mcsema_real_eip !71
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !71
  store i1 %422, i1* %SF, !mcsema_real_eip !71
  %423 = icmp eq i32 %416, 0, !mcsema_real_eip !71
  store i1 %423, i1* %ZF, !mcsema_real_eip !71
  %424 = xor i32 %415, %ECX_val.123, !mcsema_real_eip !71
  %425 = xor i32 %424, -1, !mcsema_real_eip !71
  %426 = and i32 %425, %417, !mcsema_real_eip !71
  %427 = lshr i32 %426, 31, !mcsema_real_eip !71
  %428 = and i32 %427, 1, !mcsema_real_eip !71
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !71
  store i1 %429, i1* %OF, !mcsema_real_eip !71
  %430 = trunc i32 %416 to i8, !mcsema_real_eip !71
  %431 = call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !71
  %432 = trunc i8 %431 to i1, !mcsema_real_eip !71
  %433 = xor i1 %432, true, !mcsema_real_eip !71
  store i1 %433, i1* %PF, !mcsema_real_eip !71
  %434 = icmp ult i32 %416, %415, !mcsema_real_eip !71
  store i1 %434, i1* %CF, !mcsema_real_eip !71
  %435 = zext i32 %416 to i64, !mcsema_real_eip !71
  store i64 %435, i64* %XCX, !mcsema_real_eip !71
  %ECX_val.126 = load i32, i32* %ECX.65, !mcsema_real_eip !72
  store i32 %ECX_val.126, i32* %414, !mcsema_real_eip !72
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !73
  %436 = add i64 %RBP_val.127, -100, !mcsema_real_eip !73
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !73
  %438 = inttoptr i64 %436 to i32*, !mcsema_real_eip !73
  store i32 0, i32* %438, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !74
  %439 = add i64 %RBP_val.128, -100, !mcsema_real_eip !74
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !74
  %441 = inttoptr i64 %439 to i32*, !mcsema_real_eip !74
  %442 = load i32, i32* %441, !mcsema_real_eip !74
  %443 = zext i32 %442 to i64, !mcsema_real_eip !74
  store i64 %443, i64* %XAX, !mcsema_real_eip !74
  %444 = add i64 %RBP_val.128, -48, !mcsema_real_eip !75
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !75
  %EAX_val.131 = load i32, i32* %EAX.44, !mcsema_real_eip !75
  %446 = inttoptr i64 %444 to i32*, !mcsema_real_eip !75
  %447 = load i32, i32* %446, !mcsema_real_eip !75
  %448 = sub i32 %EAX_val.131, %447, !mcsema_real_eip !75
  %449 = xor i32 %448, %EAX_val.131, !mcsema_real_eip !75
  %450 = xor i32 %449, %447, !mcsema_real_eip !75
  %451 = and i32 %450, 16, !mcsema_real_eip !75
  %452 = icmp ne i32 %451, 0, !mcsema_real_eip !75
  store i1 %452, i1* %AF, !mcsema_real_eip !75
  %453 = trunc i32 %448 to i8, !mcsema_real_eip !75
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !75
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !75
  %456 = xor i1 %455, true, !mcsema_real_eip !75
  store i1 %456, i1* %PF, !mcsema_real_eip !75
  %457 = icmp eq i32 %448, 0, !mcsema_real_eip !75
  store i1 %457, i1* %ZF, !mcsema_real_eip !75
  %458 = lshr i32 %448, 31, !mcsema_real_eip !75
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !75
  store i1 %459, i1* %SF, !mcsema_real_eip !75
  %460 = icmp ult i32 %EAX_val.131, %447, !mcsema_real_eip !75
  store i1 %460, i1* %CF, !mcsema_real_eip !75
  %461 = xor i32 %EAX_val.131, %447, !mcsema_real_eip !75
  %462 = and i32 %461, %449, !mcsema_real_eip !75
  %463 = lshr i32 %462, 31, !mcsema_real_eip !75
  %464 = trunc i32 %463 to i1, !mcsema_real_eip !75
  store i1 %464, i1* %OF, !mcsema_real_eip !75
  %465 = icmp eq i1 %459, %464, !mcsema_real_eip !76
  br i1 %465, label %block_0x133, label %block_0x114, !mcsema_real_eip !76

block_0x114:                                      ; preds = %block_0x108
  %466 = add i64 %RBP_val.128, -80, !mcsema_real_eip !77
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !77
  %468 = load i64, i64* %467, !mcsema_real_eip !77
  store i64 %468, i64* %XAX, !mcsema_real_eip !77
  %469 = load i32, i32* %441, !mcsema_real_eip !78
  %470 = sext i32 %469 to i64, !mcsema_real_eip !78
  store i64 %470, i64* %XCX, !mcsema_real_eip !78
  %471 = mul i64 %470, 4, !mcsema_real_eip !79
  %472 = add i64 %468, %471, !mcsema_real_eip !79
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !79
  %474 = inttoptr i64 %472 to i32*, !mcsema_real_eip !79
  %475 = load i32, i32* %474, !mcsema_real_eip !79
  %476 = zext i32 %475 to i64, !mcsema_real_eip !79
  store i64 %476, i64* %XDX, !mcsema_real_eip !79
  %477 = add i64 %RBP_val.128, -84, !mcsema_real_eip !80
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !80
  %479 = inttoptr i64 %477 to i32*, !mcsema_real_eip !80
  %480 = load i32, i32* %479, !mcsema_real_eip !80
  %EDX.137 = bitcast i64* %XDX to i32*, !mcsema_real_eip !80
  %EDX_val.138 = load i32, i32* %EDX.137, !mcsema_real_eip !80
  %481 = add i32 %EDX_val.138, %480, !mcsema_real_eip !80
  %482 = xor i32 %481, %480, !mcsema_real_eip !80
  %483 = xor i32 %482, %EDX_val.138, !mcsema_real_eip !80
  %484 = and i32 %483, 16, !mcsema_real_eip !80
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !80
  store i1 %485, i1* %AF, !mcsema_real_eip !80
  %486 = lshr i32 %481, 31, !mcsema_real_eip !80
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !80
  store i1 %487, i1* %SF, !mcsema_real_eip !80
  %488 = icmp eq i32 %481, 0, !mcsema_real_eip !80
  store i1 %488, i1* %ZF, !mcsema_real_eip !80
  %489 = xor i32 %480, %EDX_val.138, !mcsema_real_eip !80
  %490 = xor i32 %489, -1, !mcsema_real_eip !80
  %491 = and i32 %490, %482, !mcsema_real_eip !80
  %492 = lshr i32 %491, 31, !mcsema_real_eip !80
  %493 = and i32 %492, 1, !mcsema_real_eip !80
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !80
  store i1 %494, i1* %OF, !mcsema_real_eip !80
  %495 = trunc i32 %481 to i8, !mcsema_real_eip !80
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !80
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !80
  %498 = xor i1 %497, true, !mcsema_real_eip !80
  store i1 %498, i1* %PF, !mcsema_real_eip !80
  %499 = icmp ult i32 %481, %480, !mcsema_real_eip !80
  store i1 %499, i1* %CF, !mcsema_real_eip !80
  %500 = zext i32 %481 to i64, !mcsema_real_eip !80
  store i64 %500, i64* %XDX, !mcsema_real_eip !80
  %EDX_val.141 = load i32, i32* %EDX.137, !mcsema_real_eip !81
  store i32 %EDX_val.141, i32* %479, !mcsema_real_eip !81
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !82
  %501 = add i64 %RBP_val.142, -100, !mcsema_real_eip !82
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !82
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !82
  %504 = load i32, i32* %503, !mcsema_real_eip !82
  %505 = zext i32 %504 to i64, !mcsema_real_eip !82
  store i64 %505, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.144 = load i32, i32* %EAX.44, !mcsema_real_eip !83
  %506 = add i32 1, %EAX_val.144, !mcsema_real_eip !83
  %507 = xor i32 %506, %EAX_val.144, !mcsema_real_eip !83
  %508 = xor i32 %507, 1, !mcsema_real_eip !83
  %509 = and i32 %508, 16, !mcsema_real_eip !83
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !83
  store i1 %510, i1* %AF, !mcsema_real_eip !83
  %511 = lshr i32 %506, 31, !mcsema_real_eip !83
  %512 = trunc i32 %511 to i1, !mcsema_real_eip !83
  store i1 %512, i1* %SF, !mcsema_real_eip !83
  %513 = icmp eq i32 %506, 0, !mcsema_real_eip !83
  store i1 %513, i1* %ZF, !mcsema_real_eip !83
  %514 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !83
  %515 = xor i32 %514, -1, !mcsema_real_eip !83
  %516 = and i32 %515, %507, !mcsema_real_eip !83
  %517 = lshr i32 %516, 31, !mcsema_real_eip !83
  %518 = and i32 %517, 1, !mcsema_real_eip !83
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !83
  store i1 %519, i1* %OF, !mcsema_real_eip !83
  %520 = trunc i32 %506 to i8, !mcsema_real_eip !83
  %521 = call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !83
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !83
  %523 = xor i1 %522, true, !mcsema_real_eip !83
  store i1 %523, i1* %PF, !mcsema_real_eip !83
  %524 = icmp ult i32 %506, %EAX_val.144, !mcsema_real_eip !83
  store i1 %524, i1* %CF, !mcsema_real_eip !83
  %525 = zext i32 %506 to i64, !mcsema_real_eip !83
  store i64 %525, i64* %XAX, !mcsema_real_eip !83
  %EAX_val.147 = load i32, i32* %EAX.44, !mcsema_real_eip !84
  store i32 %EAX_val.147, i32* %503, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %block_0x108
  %526 = add i64 %RBP_val.128, -84, !mcsema_real_eip !86
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !86
  %528 = inttoptr i64 %526 to i32*, !mcsema_real_eip !86
  %529 = load i32, i32* %528, !mcsema_real_eip !86
  %530 = zext i32 %529 to i64, !mcsema_real_eip !86
  store i64 %530, i64* %XAX, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %531 = inttoptr i64 %RSP_val.149 to i64*, !mcsema_real_eip !87
  %532 = load i64, i64* %531, !mcsema_real_eip !87
  store i64 %532, i64* %XBX, !mcsema_real_eip !87
  %533 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store i64 %533, i64* %XSP, !mcsema_real_eip !87
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !88
  %535 = load i64, i64* %534, !mcsema_real_eip !88
  store i64 %535, i64* %XBP, !mcsema_real_eip !88
  %536 = add i64 %533, 8, !mcsema_real_eip !88
  store i64 %536, i64* %XSP, !mcsema_real_eip !88
  %537 = add i64 %536, 8, !mcsema_real_eip !89
  %538 = inttoptr i64 %536 to i64*, !mcsema_real_eip !89
  %539 = load i64, i64* %538, !mcsema_real_eip !89
  store i64 %539, i64* %XIP, !mcsema_real_eip !89
  store i64 %537, i64* %XSP, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !90
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !90
  br label %block_0x140, !mcsema_real_eip !90

block_0x140:                                      ; preds = %entry
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !90
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !90
  %1 = sub i64 %RSP_val.153, 8, !mcsema_real_eip !90
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !90
  store i64 %RBP_val.152, i64* %2, !mcsema_real_eip !90
  store i64 %1, i64* %XSP, !mcsema_real_eip !90
  store i64 %1, i64* %XBP, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, !mcsema_real_eip !92
  %3 = sub i64 %1, 8, !mcsema_real_eip !92
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !92
  store i64 %R14_val.155, i64* %4, !mcsema_real_eip !92
  store i64 %3, i64* %XSP, !mcsema_real_eip !92
  %RBX_val.157 = load i64, i64* %XBX, !mcsema_real_eip !93
  %5 = sub i64 %3, 8, !mcsema_real_eip !93
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !93
  store i64 %RBX_val.157, i64* %6, !mcsema_real_eip !93
  store i64 %5, i64* %XSP, !mcsema_real_eip !93
  %7 = sub i64 %5, 160, !mcsema_real_eip !94
  %8 = xor i64 %7, %5, !mcsema_real_eip !94
  %9 = xor i64 %8, 160, !mcsema_real_eip !94
  %10 = and i64 %9, 16, !mcsema_real_eip !94
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !94
  store i1 %11, i1* %AF, !mcsema_real_eip !94
  %12 = trunc i64 %7 to i8, !mcsema_real_eip !94
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !94
  %14 = trunc i8 %13 to i1, !mcsema_real_eip !94
  %15 = xor i1 %14, true, !mcsema_real_eip !94
  store i1 %15, i1* %PF, !mcsema_real_eip !94
  %16 = icmp eq i64 %7, 0, !mcsema_real_eip !94
  store i1 %16, i1* %ZF, !mcsema_real_eip !94
  %17 = lshr i64 %7, 63, !mcsema_real_eip !94
  %18 = trunc i64 %17 to i1, !mcsema_real_eip !94
  store i1 %18, i1* %SF, !mcsema_real_eip !94
  %19 = icmp ult i64 %5, 160, !mcsema_real_eip !94
  store i1 %19, i1* %CF, !mcsema_real_eip !94
  %20 = xor i64 %5, 160, !mcsema_real_eip !94
  %21 = and i64 %20, %8, !mcsema_real_eip !94
  %22 = lshr i64 %21, 63, !mcsema_real_eip !94
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !94
  store i1 %23, i1* %OF, !mcsema_real_eip !94
  store i64 %7, i64* %XSP, !mcsema_real_eip !94
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !95
  %24 = add i64 %RBP_val.160, -20, !mcsema_real_eip !95
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !95
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !95
  store i32 0, i32* %26, !mcsema_real_eip !95
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !96
  %27 = add i64 %RBP_val.161, -24, !mcsema_real_eip !96
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !96
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !96
  store i32 1, i32* %29, !mcsema_real_eip !96
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !97
  %30 = add i64 %RBP_val.162, -68, !mcsema_real_eip !97
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !97
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %32, !mcsema_real_eip !97
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !98
  %33 = add i64 %RBP_val.163, -68, !mcsema_real_eip !98
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !98
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !98
  %36 = load i32, i32* %35, !mcsema_real_eip !98
  %37 = sub i32 %36, 10, !mcsema_real_eip !98
  %38 = xor i32 %37, %36, !mcsema_real_eip !98
  %39 = xor i32 %38, 10, !mcsema_real_eip !98
  %40 = and i32 %39, 16, !mcsema_real_eip !98
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !98
  store i1 %41, i1* %AF, !mcsema_real_eip !98
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !98
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !98
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !98
  %45 = xor i1 %44, true, !mcsema_real_eip !98
  store i1 %45, i1* %PF, !mcsema_real_eip !98
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !98
  store i1 %46, i1* %ZF, !mcsema_real_eip !98
  %47 = lshr i32 %37, 31, !mcsema_real_eip !98
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !98
  store i1 %48, i1* %SF, !mcsema_real_eip !98
  %49 = icmp ult i32 %36, 10, !mcsema_real_eip !98
  store i1 %49, i1* %CF, !mcsema_real_eip !98
  %50 = xor i32 %36, 10, !mcsema_real_eip !98
  %51 = and i32 %50, %38, !mcsema_real_eip !98
  %52 = lshr i32 %51, 31, !mcsema_real_eip !98
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !98
  store i1 %53, i1* %OF, !mcsema_real_eip !98
  %54 = icmp eq i1 %48, %53, !mcsema_real_eip !99
  br i1 %54, label %block_0x189, label %block_0x16d, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %block_0x163
  %55 = load i32, i32* %35, !mcsema_real_eip !100
  %56 = zext i32 %55 to i64, !mcsema_real_eip !100
  store i64 %56, i64* %XAX, !mcsema_real_eip !100
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !101
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !101
  %57 = add i32 1, %EAX_val.166, !mcsema_real_eip !101
  %58 = xor i32 %57, %EAX_val.166, !mcsema_real_eip !101
  %59 = xor i32 %58, 1, !mcsema_real_eip !101
  %60 = and i32 %59, 16, !mcsema_real_eip !101
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !101
  store i1 %61, i1* %AF, !mcsema_real_eip !101
  %62 = lshr i32 %57, 31, !mcsema_real_eip !101
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !101
  store i1 %63, i1* %SF, !mcsema_real_eip !101
  %64 = icmp eq i32 %57, 0, !mcsema_real_eip !101
  store i1 %64, i1* %ZF, !mcsema_real_eip !101
  %65 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !101
  %66 = xor i32 %65, -1, !mcsema_real_eip !101
  %67 = and i32 %66, %58, !mcsema_real_eip !101
  %68 = lshr i32 %67, 31, !mcsema_real_eip !101
  %69 = and i32 %68, 1, !mcsema_real_eip !101
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !101
  store i1 %70, i1* %OF, !mcsema_real_eip !101
  %71 = trunc i32 %57 to i8, !mcsema_real_eip !101
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !101
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !101
  %74 = xor i1 %73, true, !mcsema_real_eip !101
  store i1 %74, i1* %PF, !mcsema_real_eip !101
  %75 = icmp ult i32 %57, %EAX_val.166, !mcsema_real_eip !101
  store i1 %75, i1* %CF, !mcsema_real_eip !101
  %76 = zext i32 %57 to i64, !mcsema_real_eip !101
  store i64 %76, i64* %XAX, !mcsema_real_eip !101
  %77 = load i32, i32* %35, !mcsema_real_eip !102
  %78 = sext i32 %77 to i64, !mcsema_real_eip !102
  store i64 %78, i64* %XCX, !mcsema_real_eip !102
  %79 = add i64 %RBP_val.163, -64, !mcsema_real_eip !103
  %80 = mul i64 %78, 4, !mcsema_real_eip !103
  %81 = add i64 %79, %80, !mcsema_real_eip !103
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !103
  %EAX_val.171 = load i32, i32* %EAX.165, !mcsema_real_eip !103
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.171, i32* %83, !mcsema_real_eip !103
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !104
  %84 = add i64 %RBP_val.172, -68, !mcsema_real_eip !104
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !104
  %86 = inttoptr i64 %84 to i32*, !mcsema_real_eip !104
  %87 = load i32, i32* %86, !mcsema_real_eip !104
  %88 = zext i32 %87 to i64, !mcsema_real_eip !104
  store i64 %88, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.174 = load i32, i32* %EAX.165, !mcsema_real_eip !105
  %89 = add i32 1, %EAX_val.174, !mcsema_real_eip !105
  %90 = xor i32 %89, %EAX_val.174, !mcsema_real_eip !105
  %91 = xor i32 %90, 1, !mcsema_real_eip !105
  %92 = and i32 %91, 16, !mcsema_real_eip !105
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !105
  store i1 %93, i1* %AF, !mcsema_real_eip !105
  %94 = lshr i32 %89, 31, !mcsema_real_eip !105
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !105
  store i1 %95, i1* %SF, !mcsema_real_eip !105
  %96 = icmp eq i32 %89, 0, !mcsema_real_eip !105
  store i1 %96, i1* %ZF, !mcsema_real_eip !105
  %97 = xor i32 %EAX_val.174, 1, !mcsema_real_eip !105
  %98 = xor i32 %97, -1, !mcsema_real_eip !105
  %99 = and i32 %98, %90, !mcsema_real_eip !105
  %100 = lshr i32 %99, 31, !mcsema_real_eip !105
  %101 = and i32 %100, 1, !mcsema_real_eip !105
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !105
  store i1 %102, i1* %OF, !mcsema_real_eip !105
  %103 = trunc i32 %89 to i8, !mcsema_real_eip !105
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !105
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !105
  %106 = xor i1 %105, true, !mcsema_real_eip !105
  store i1 %106, i1* %PF, !mcsema_real_eip !105
  %107 = icmp ult i32 %89, %EAX_val.174, !mcsema_real_eip !105
  store i1 %107, i1* %CF, !mcsema_real_eip !105
  %108 = zext i32 %89 to i64, !mcsema_real_eip !105
  store i64 %108, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.177 = load i32, i32* %EAX.165, !mcsema_real_eip !106
  store i32 %EAX_val.177, i32* %86, !mcsema_real_eip !106
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %block_0x163
  store i64 40, i64* %XAX, !mcsema_real_eip !108
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !109
  %109 = zext i32 %EAX_val.179 to i64, !mcsema_real_eip !109
  store i64 %109, i64* %XDI, !mcsema_real_eip !109
  %110 = add i64 %RBP_val.163, -24, !mcsema_real_eip !110
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !110
  store i64 %110, i64* %XCX, !mcsema_real_eip !110
  %112 = add i64 %RBP_val.163, -80, !mcsema_real_eip !111
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !111
  store i64 %110, i64* %113, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, !mcsema_real_eip !112
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !112
  %114 = sub i64 %RSP_val.184, 8, !mcsema_real_eip !112
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !112
  store i64 -2415393069852865332, i64* %115, !mcsema_real_eip !112
  store i64 %114, i64* %XSP, !mcsema_real_eip !112
  %116 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183), !mcsema_real_eip !112
  store i64 %116, i64* %XAX, !mcsema_real_eip !112
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !113
  %117 = add i64 %RBP_val.185, -88, !mcsema_real_eip !113
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !113
  store i64 %116, i64* %118, !mcsema_real_eip !113
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !114
  %119 = add i64 %RBP_val.187, -92, !mcsema_real_eip !114
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !114
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %121, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !115
  %122 = add i64 %RBP_val.188, -92, !mcsema_real_eip !115
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !115
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !115
  %125 = load i32, i32* %124, !mcsema_real_eip !115
  %126 = sub i32 %125, 10, !mcsema_real_eip !115
  %127 = xor i32 %126, %125, !mcsema_real_eip !115
  %128 = xor i32 %127, 10, !mcsema_real_eip !115
  %129 = and i32 %128, 16, !mcsema_real_eip !115
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !115
  store i1 %130, i1* %AF, !mcsema_real_eip !115
  %131 = trunc i32 %126 to i8, !mcsema_real_eip !115
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !115
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !115
  %134 = xor i1 %133, true, !mcsema_real_eip !115
  store i1 %134, i1* %PF, !mcsema_real_eip !115
  %135 = icmp eq i32 %126, 0, !mcsema_real_eip !115
  store i1 %135, i1* %ZF, !mcsema_real_eip !115
  %136 = lshr i32 %126, 31, !mcsema_real_eip !115
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !115
  store i1 %137, i1* %SF, !mcsema_real_eip !115
  %138 = icmp ult i32 %125, 10, !mcsema_real_eip !115
  store i1 %138, i1* %CF, !mcsema_real_eip !115
  %139 = xor i32 %125, 10, !mcsema_real_eip !115
  %140 = and i32 %139, %127, !mcsema_real_eip !115
  %141 = lshr i32 %140, 31, !mcsema_real_eip !115
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !115
  store i1 %142, i1* %OF, !mcsema_real_eip !115
  %143 = icmp eq i1 %137, %142, !mcsema_real_eip !116
  br i1 %143, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %block_0x1a8
  %144 = load i32, i32* %124, !mcsema_real_eip !117
  %145 = zext i32 %144 to i64, !mcsema_real_eip !117
  store i64 %145, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.191 = load i32, i32* %EAX.178, !mcsema_real_eip !118
  %146 = add i32 1, %EAX_val.191, !mcsema_real_eip !118
  %147 = xor i32 %146, %EAX_val.191, !mcsema_real_eip !118
  %148 = xor i32 %147, 1, !mcsema_real_eip !118
  %149 = and i32 %148, 16, !mcsema_real_eip !118
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !118
  store i1 %150, i1* %AF, !mcsema_real_eip !118
  %151 = lshr i32 %146, 31, !mcsema_real_eip !118
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !118
  store i1 %152, i1* %SF, !mcsema_real_eip !118
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !118
  store i1 %153, i1* %ZF, !mcsema_real_eip !118
  %154 = xor i32 %EAX_val.191, 1, !mcsema_real_eip !118
  %155 = xor i32 %154, -1, !mcsema_real_eip !118
  %156 = and i32 %155, %147, !mcsema_real_eip !118
  %157 = lshr i32 %156, 31, !mcsema_real_eip !118
  %158 = and i32 %157, 1, !mcsema_real_eip !118
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !118
  store i1 %159, i1* %OF, !mcsema_real_eip !118
  %160 = trunc i32 %146 to i8, !mcsema_real_eip !118
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !118
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !118
  %163 = xor i1 %162, true, !mcsema_real_eip !118
  store i1 %163, i1* %PF, !mcsema_real_eip !118
  %164 = icmp ult i32 %146, %EAX_val.191, !mcsema_real_eip !118
  store i1 %164, i1* %CF, !mcsema_real_eip !118
  %165 = zext i32 %146 to i64, !mcsema_real_eip !118
  store i64 %165, i64* %XAX, !mcsema_real_eip !118
  %166 = add i64 %RBP_val.188, -88, !mcsema_real_eip !119
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !119
  %168 = load i64, i64* %167, !mcsema_real_eip !119
  store i64 %168, i64* %XCX, !mcsema_real_eip !119
  %169 = load i32, i32* %124, !mcsema_real_eip !120
  %170 = sext i32 %169 to i64, !mcsema_real_eip !120
  store i64 %170, i64* %XDX, !mcsema_real_eip !120
  %171 = mul i64 %170, 4, !mcsema_real_eip !121
  %172 = add i64 %168, %171, !mcsema_real_eip !121
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !121
  %EAX_val.197 = load i32, i32* %EAX.178, !mcsema_real_eip !121
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !121
  store i32 %EAX_val.197, i32* %174, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %175 = add i64 %RBP_val.198, -92, !mcsema_real_eip !122
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !122
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !122
  %178 = load i32, i32* %177, !mcsema_real_eip !122
  %179 = zext i32 %178 to i64, !mcsema_real_eip !122
  store i64 %179, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.200 = load i32, i32* %EAX.178, !mcsema_real_eip !123
  %180 = add i32 1, %EAX_val.200, !mcsema_real_eip !123
  %181 = xor i32 %180, %EAX_val.200, !mcsema_real_eip !123
  %182 = xor i32 %181, 1, !mcsema_real_eip !123
  %183 = and i32 %182, 16, !mcsema_real_eip !123
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !123
  store i1 %184, i1* %AF, !mcsema_real_eip !123
  %185 = lshr i32 %180, 31, !mcsema_real_eip !123
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !123
  store i1 %186, i1* %SF, !mcsema_real_eip !123
  %187 = icmp eq i32 %180, 0, !mcsema_real_eip !123
  store i1 %187, i1* %ZF, !mcsema_real_eip !123
  %188 = xor i32 %EAX_val.200, 1, !mcsema_real_eip !123
  %189 = xor i32 %188, -1, !mcsema_real_eip !123
  %190 = and i32 %189, %181, !mcsema_real_eip !123
  %191 = lshr i32 %190, 31, !mcsema_real_eip !123
  %192 = and i32 %191, 1, !mcsema_real_eip !123
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !123
  store i1 %193, i1* %OF, !mcsema_real_eip !123
  %194 = trunc i32 %180 to i8, !mcsema_real_eip !123
  %195 = call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !123
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !123
  %197 = xor i1 %196, true, !mcsema_real_eip !123
  store i1 %197, i1* %PF, !mcsema_real_eip !123
  %198 = icmp ult i32 %180, %EAX_val.200, !mcsema_real_eip !123
  store i1 %198, i1* %CF, !mcsema_real_eip !123
  %199 = zext i32 %180 to i64, !mcsema_real_eip !123
  store i64 %199, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.203 = load i32, i32* %EAX.178, !mcsema_real_eip !124
  store i32 %EAX_val.203, i32* %177, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, !mcsema_real_eip !126
  %200 = add i64 %RBP_val.188, -64, !mcsema_real_eip !127
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !127
  store i64 %200, i64* %XCX, !mcsema_real_eip !127
  %202 = add i64 %RBP_val.188, -24, !mcsema_real_eip !128
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !128
  %204 = inttoptr i64 %202 to i32*, !mcsema_real_eip !128
  %205 = load i32, i32* %204, !mcsema_real_eip !128
  %206 = zext i32 %205 to i64, !mcsema_real_eip !128
  store i64 %206, i64* %XDI, !mcsema_real_eip !128
  %207 = add i64 %RBP_val.188, -80, !mcsema_real_eip !129
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !129
  %209 = load i64, i64* %208, !mcsema_real_eip !129
  store i64 %209, i64* %XDX, !mcsema_real_eip !129
  %210 = add i64 %RBP_val.188, -88, !mcsema_real_eip !130
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !130
  %212 = load i64, i64* %211, !mcsema_real_eip !130
  store i64 %212, i64* %XSI, !mcsema_real_eip !130
  %213 = load i32, i32* %204, !mcsema_real_eip !131
  %214 = zext i32 %213 to i64, !mcsema_real_eip !131
  store i64 %214, i64* %R8, !mcsema_real_eip !131
  %215 = load i64, i64* %208, !mcsema_real_eip !132
  store i64 %215, i64* %R9, !mcsema_real_eip !132
  %216 = load i64, i64* %211, !mcsema_real_eip !133
  store i64 %216, i64* %R10, !mcsema_real_eip !133
  %217 = add i64 %RBP_val.188, -104, !mcsema_real_eip !134
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !134
  store i64 %212, i64* %218, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, !mcsema_real_eip !135
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !136
  %219 = add i64 %RBP_val.214, -104, !mcsema_real_eip !136
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !136
  %221 = load i64, i64* %220, !mcsema_real_eip !136
  store i64 %221, i64* %R11, !mcsema_real_eip !136
  %222 = add i64 %RBP_val.214, -112, !mcsema_real_eip !137
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !137
  store i64 %RCX_val.213, i64* %223, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, !mcsema_real_eip !138
  %RBP_val.218 = load i64, i64* %XBP, !mcsema_real_eip !139
  %224 = add i64 %RBP_val.218, -116, !mcsema_real_eip !139
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !139
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, !mcsema_real_eip !139
  %226 = inttoptr i64 %224 to i32*, !mcsema_real_eip !139
  store i32 %R8D_val.220, i32* %226, !mcsema_real_eip !139
  %EAX_val.222 = load i32, i32* %EAX.178, !mcsema_real_eip !140
  %227 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %227, i64* %R8, !mcsema_real_eip !140
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !141
  %228 = add i64 %RBP_val.223, -128, !mcsema_real_eip !141
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !141
  %R9_val.224 = load i64, i64* %R9, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %229, !mcsema_real_eip !141
  %EAX_val.226 = load i32, i32* %EAX.178, !mcsema_real_eip !142
  %230 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %230, i64* %R9, !mcsema_real_eip !142
  %RBP_val.227 = load i64, i64* %XBP, !mcsema_real_eip !143
  %231 = add i64 %RBP_val.227, -116, !mcsema_real_eip !143
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !143
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !143
  %234 = load i32, i32* %233, !mcsema_real_eip !143
  %235 = zext i32 %234 to i64, !mcsema_real_eip !143
  store i64 %235, i64* %XAX, !mcsema_real_eip !143
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !144
  %236 = inttoptr i64 %RSP_val.228 to i64*, !mcsema_real_eip !144
  %EAX_val.230 = load i32, i32* %EAX.178, !mcsema_real_eip !144
  %237 = inttoptr i64 %RSP_val.228 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.230, i32* %237, !mcsema_real_eip !144
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !145
  %238 = add i64 %RBP_val.231, -112, !mcsema_real_eip !145
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !145
  %240 = load i64, i64* %239, !mcsema_real_eip !145
  store i64 %240, i64* %XBX, !mcsema_real_eip !145
  %RSP_val.232 = load i64, i64* %XSP, !mcsema_real_eip !146
  %241 = add i64 %RSP_val.232, 8, !mcsema_real_eip !146
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !146
  store i64 %240, i64* %242, !mcsema_real_eip !146
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !147
  %243 = add i64 %RBP_val.234, -128, !mcsema_real_eip !147
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !147
  %245 = load i64, i64* %244, !mcsema_real_eip !147
  store i64 %245, i64* %R14, !mcsema_real_eip !147
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !148
  %246 = add i64 %RSP_val.235, 16, !mcsema_real_eip !148
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !148
  store i64 %245, i64* %247, !mcsema_real_eip !148
  %RSP_val.237 = load i64, i64* %XSP, !mcsema_real_eip !149
  %248 = add i64 %RSP_val.237, 24, !mcsema_real_eip !149
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !149
  %R10_val.238 = load i64, i64* %R10, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %249, !mcsema_real_eip !149
  %RSP_val.239 = load i64, i64* %XSP, !mcsema_real_eip !150
  %250 = sub i64 %RSP_val.239, 8, !mcsema_real_eip !150
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !150
  store i64 -4981261766360305936, i64* %251, !mcsema_real_eip !150
  store i64 %250, i64* %XSP, !mcsema_real_eip !150
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !150
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !151
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !152
  %252 = add i64 %RBP_val.240, -96, !mcsema_real_eip !152
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !152
  %EAX_val.242 = load i32, i32* %EAX.178, !mcsema_real_eip !152
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.242, i32* %254, !mcsema_real_eip !152
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !153
  %255 = add i64 %RBP_val.243, -96, !mcsema_real_eip !153
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !153
  %257 = inttoptr i64 %255 to i32*, !mcsema_real_eip !153
  %258 = load i32, i32* %257, !mcsema_real_eip !153
  %259 = zext i32 %258 to i64, !mcsema_real_eip !153
  store i64 %259, i64* %XSI, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, !mcsema_real_eip !155
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !155
  %260 = inttoptr i64 %RSP_val.251 to i64*, !mcsema_real_eip !155
  %261 = load i64, i64* %260, !mcsema_real_eip !155
  %262 = add i64 %RSP_val.251, 8, !mcsema_real_eip !155
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !155
  %264 = load i64, i64* %263, !mcsema_real_eip !155
  %265 = add i64 %262, 8, !mcsema_real_eip !155
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !155
  %267 = load i64, i64* %266, !mcsema_real_eip !155
  %268 = add i64 %265, 8, !mcsema_real_eip !155
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !155
  %270 = load i64, i64* %269, !mcsema_real_eip !155
  %271 = add i64 %268, 8, !mcsema_real_eip !155
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !155
  %273 = load i64, i64* %272, !mcsema_real_eip !155
  %274 = add i64 %271, 8, !mcsema_real_eip !155
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !155
  %276 = load i64, i64* %275, !mcsema_real_eip !155
  %277 = add i64 %274, 8, !mcsema_real_eip !155
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !155
  %279 = load i64, i64* %278, !mcsema_real_eip !155
  %280 = add i64 %277, 8, !mcsema_real_eip !155
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !155
  %282 = load i64, i64* %281, !mcsema_real_eip !155
  %283 = add i64 %280, 8, !mcsema_real_eip !155
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !155
  %285 = load i64, i64* %284, !mcsema_real_eip !155
  %286 = add i64 %283, 8, !mcsema_real_eip !155
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !155
  %288 = load i64, i64* %287, !mcsema_real_eip !155
  %289 = sub i64 %RSP_val.251, 8, !mcsema_real_eip !155
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %290, !mcsema_real_eip !155
  store i64 %289, i64* %XSP, !mcsema_real_eip !155
  %291 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %259, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %261, i64 %264, i64 %267, i64 %270, i64 %273, i64 %276, i64 %279, i64 %282, i64 %285, i64 %288), !mcsema_real_eip !155
  store i64 %291, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !156
  %292 = add i64 %RBP_val.253, -96, !mcsema_real_eip !156
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !156
  %294 = inttoptr i64 %292 to i32*, !mcsema_real_eip !156
  %295 = load i32, i32* %294, !mcsema_real_eip !156
  %296 = zext i32 %295 to i64, !mcsema_real_eip !156
  store i64 %296, i64* %XSI, !mcsema_real_eip !156
  %297 = add i64 %RBP_val.253, -132, !mcsema_real_eip !157
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !157
  %EAX_val.256 = load i32, i32* %EAX.178, !mcsema_real_eip !157
  %299 = inttoptr i64 %297 to i32*, !mcsema_real_eip !157
  store i32 %EAX_val.256, i32* %299, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, !mcsema_real_eip !158
  %300 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %300, i64* %XAX, !mcsema_real_eip !158
  %RSP_val.259 = load i64, i64* %XSP, !mcsema_real_eip !159
  %301 = add i64 160, %RSP_val.259, !mcsema_real_eip !159
  %302 = xor i64 %301, %RSP_val.259, !mcsema_real_eip !159
  %303 = xor i64 %302, 160, !mcsema_real_eip !159
  %304 = and i64 %303, 16, !mcsema_real_eip !159
  %305 = icmp ne i64 %304, 0, !mcsema_real_eip !159
  store i1 %305, i1* %AF, !mcsema_real_eip !159
  %306 = lshr i64 %301, 63, !mcsema_real_eip !159
  %307 = trunc i64 %306 to i1, !mcsema_real_eip !159
  store i1 %307, i1* %SF, !mcsema_real_eip !159
  %308 = icmp eq i64 %301, 0, !mcsema_real_eip !159
  store i1 %308, i1* %ZF, !mcsema_real_eip !159
  %309 = xor i64 %RSP_val.259, 160, !mcsema_real_eip !159
  %310 = xor i64 %309, -1, !mcsema_real_eip !159
  %311 = and i64 %310, %302, !mcsema_real_eip !159
  %312 = lshr i64 %311, 63, !mcsema_real_eip !159
  %313 = and i64 %312, 1, !mcsema_real_eip !159
  %314 = trunc i64 %313 to i1, !mcsema_real_eip !159
  store i1 %314, i1* %OF, !mcsema_real_eip !159
  %315 = trunc i64 %301 to i8, !mcsema_real_eip !159
  %316 = call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !159
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !159
  %318 = xor i1 %317, true, !mcsema_real_eip !159
  store i1 %318, i1* %PF, !mcsema_real_eip !159
  %319 = icmp ult i64 %301, %RSP_val.259, !mcsema_real_eip !159
  store i1 %319, i1* %CF, !mcsema_real_eip !159
  store i64 %301, i64* %XSP, !mcsema_real_eip !159
  %320 = inttoptr i64 %301 to i64*, !mcsema_real_eip !160
  %321 = load i64, i64* %320, !mcsema_real_eip !160
  store i64 %321, i64* %XBX, !mcsema_real_eip !160
  %322 = add i64 %301, 8, !mcsema_real_eip !160
  store i64 %322, i64* %XSP, !mcsema_real_eip !160
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !161
  %324 = load i64, i64* %323, !mcsema_real_eip !161
  store i64 %324, i64* %R14, !mcsema_real_eip !161
  %325 = add i64 %322, 8, !mcsema_real_eip !161
  store i64 %325, i64* %XSP, !mcsema_real_eip !161
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !162
  %327 = load i64, i64* %326, !mcsema_real_eip !162
  store i64 %327, i64* %XBP, !mcsema_real_eip !162
  %328 = add i64 %325, 8, !mcsema_real_eip !162
  store i64 %328, i64* %XSP, !mcsema_real_eip !162
  %329 = add i64 %328, 8, !mcsema_real_eip !163
  %330 = inttoptr i64 %328 to i64*, !mcsema_real_eip !163
  %331 = load i64, i64* %330, !mcsema_real_eip !163
  store i64 %331, i64* %XIP, !mcsema_real_eip !163
  store i64 %329, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 39}
!15 = !{i64 43}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 54}
!19 = !{i64 58}
!20 = !{i64 65}
!21 = !{i64 68}
!22 = !{i64 71}
!23 = !{i64 74}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 87}
!27 = !{i64 93}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 107}
!32 = !{i64 110}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 119}
!36 = !{i64 124}
!37 = !{i64 128}
!38 = !{i64 130}
!39 = !{i64 133}
!40 = !{i64 136}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 149}
!44 = !{i64 155}
!45 = !{i64 159}
!46 = !{i64 163}
!47 = !{i64 166}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 178}
!52 = !{i64 181}
!53 = !{i64 186}
!54 = !{i64 189}
!55 = !{i64 192}
!56 = !{i64 195}
!57 = !{i64 202}
!58 = !{i64 205}
!59 = !{i64 208}
!60 = !{i64 214}
!61 = !{i64 218}
!62 = !{i64 222}
!63 = !{i64 225}
!64 = !{i64 228}
!65 = !{i64 231}
!66 = !{i64 234}
!67 = !{i64 237}
!68 = !{i64 240}
!69 = !{i64 245}
!70 = !{i64 249}
!71 = !{i64 251}
!72 = !{i64 254}
!73 = !{i64 257}
!74 = !{i64 264}
!75 = !{i64 267}
!76 = !{i64 270}
!77 = !{i64 276}
!78 = !{i64 280}
!79 = !{i64 284}
!80 = !{i64 287}
!81 = !{i64 290}
!82 = !{i64 293}
!83 = !{i64 296}
!84 = !{i64 299}
!85 = !{i64 302}
!86 = !{i64 307}
!87 = !{i64 310}
!88 = !{i64 311}
!89 = !{i64 312}
!90 = !{i64 320}
!91 = !{i64 321}
!92 = !{i64 324}
!93 = !{i64 326}
!94 = !{i64 327}
!95 = !{i64 334}
!96 = !{i64 341}
!97 = !{i64 348}
!98 = !{i64 355}
!99 = !{i64 359}
!100 = !{i64 365}
!101 = !{i64 368}
!102 = !{i64 371}
!103 = !{i64 375}
!104 = !{i64 379}
!105 = !{i64 382}
!106 = !{i64 385}
!107 = !{i64 388}
!108 = !{i64 393}
!109 = !{i64 398}
!110 = !{i64 400}
!111 = !{i64 404}
!112 = !{i64 408}
!113 = !{i64 413}
!114 = !{i64 417}
!115 = !{i64 424}
!116 = !{i64 428}
!117 = !{i64 434}
!118 = !{i64 437}
!119 = !{i64 440}
!120 = !{i64 444}
!121 = !{i64 448}
!122 = !{i64 451}
!123 = !{i64 454}
!124 = !{i64 457}
!125 = !{i64 460}
!126 = !{i64 465}
!127 = !{i64 470}
!128 = !{i64 474}
!129 = !{i64 477}
!130 = !{i64 481}
!131 = !{i64 485}
!132 = !{i64 489}
!133 = !{i64 493}
!134 = !{i64 497}
!135 = !{i64 501}
!136 = !{i64 504}
!137 = !{i64 508}
!138 = !{i64 512}
!139 = !{i64 515}
!140 = !{i64 519}
!141 = !{i64 522}
!142 = !{i64 526}
!143 = !{i64 529}
!144 = !{i64 532}
!145 = !{i64 535}
!146 = !{i64 539}
!147 = !{i64 544}
!148 = !{i64 548}
!149 = !{i64 553}
!150 = !{i64 558}
!151 = !{i64 563}
!152 = !{i64 573}
!153 = !{i64 576}
!154 = !{i64 579}
!155 = !{i64 581}
!156 = !{i64 586}
!157 = !{i64 589}
!158 = !{i64 595}
!159 = !{i64 597}
!160 = !{i64 604}
!161 = !{i64 605}
!162 = !{i64 607}
!163 = !{i64 608}
