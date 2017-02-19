; ModuleID = 'Output/test_11.clang.opt.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc8 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sub i64 %1, 48, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 48, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 48, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -16, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !6
  %24 = load i64, i64* %23, !mcsema_real_eip !6
  store i64 %24, i64* %XDI, !mcsema_real_eip !6
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %25 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %26, !mcsema_real_eip !7
  store i64 %25, i64* %XSP, !mcsema_real_eip !7
  %27 = call x86_64_sysvcc i64 @_strlen(i64 %24), !mcsema_real_eip !7
  store i64 %27, i64* %XAX, !mcsema_real_eip !7
  %28 = add i64 1, %27, !mcsema_real_eip !8
  %29 = xor i64 %28, %27, !mcsema_real_eip !8
  %30 = xor i64 %29, 1, !mcsema_real_eip !8
  %31 = and i64 %30, 16, !mcsema_real_eip !8
  %32 = icmp ne i64 %31, 0, !mcsema_real_eip !8
  store i1 %32, i1* %AF, !mcsema_real_eip !8
  %33 = lshr i64 %28, 63, !mcsema_real_eip !8
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !8
  store i1 %34, i1* %SF, !mcsema_real_eip !8
  %35 = icmp eq i64 %28, 0, !mcsema_real_eip !8
  store i1 %35, i1* %ZF, !mcsema_real_eip !8
  %36 = xor i64 %27, 1, !mcsema_real_eip !8
  %37 = xor i64 %36, -1, !mcsema_real_eip !8
  %38 = and i64 %37, %29, !mcsema_real_eip !8
  %39 = lshr i64 %38, 63, !mcsema_real_eip !8
  %40 = and i64 %39, 1, !mcsema_real_eip !8
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !8
  store i1 %41, i1* %OF, !mcsema_real_eip !8
  %42 = trunc i64 %28 to i8, !mcsema_real_eip !8
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !8
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !8
  %45 = xor i1 %44, true, !mcsema_real_eip !8
  store i1 %45, i1* %PF, !mcsema_real_eip !8
  %46 = icmp ult i64 %28, %27, !mcsema_real_eip !8
  store i1 %46, i1* %CF, !mcsema_real_eip !8
  store i64 %28, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %47 = add i64 %RBP_val.10, -24, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  store i64 %28, i64* %48, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %49 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !10
  %51 = load i64, i64* %50, !mcsema_real_eip !10
  store i64 %51, i64* %XDI, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %52 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %53, !mcsema_real_eip !11
  store i64 %52, i64* %XSP, !mcsema_real_eip !11
  %54 = call x86_64_sysvcc i64 @_malloc(i64 %51), !mcsema_real_eip !11
  store i64 %54, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %55 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !12
  store i64 %54, i64* %56, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %57 = add i64 %RBP_val.17, -32, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %59 = load i64, i64* %58, !mcsema_real_eip !13
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %60 = trunc i64 %59 to i8, !mcsema_real_eip !13
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !13
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !13
  %63 = xor i1 %62, true, !mcsema_real_eip !13
  store i1 %63, i1* %PF, !mcsema_real_eip !13
  %64 = icmp eq i64 %59, 0, !mcsema_real_eip !13
  store i1 %64, i1* %ZF, !mcsema_real_eip !13
  %65 = lshr i64 %59, 63, !mcsema_real_eip !13
  %66 = trunc i64 %65 to i1, !mcsema_real_eip !13
  store i1 %66, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  br i1 %64, label %block_0xb6, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %block_0x0
  %ESI.18 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.19 = load i32, i32* %ESI.18, !mcsema_real_eip !15
  store i1 false, i1* %CF, !mcsema_real_eip !15
  store i1 false, i1* %OF, !mcsema_real_eip !15
  store i1 false, i1* %SF, !mcsema_real_eip !15
  store i1 true, i1* %ZF, !mcsema_real_eip !15
  store i1 true, i1* %PF, !mcsema_real_eip !15
  store i1 undef, i1* %AF, !mcsema_real_eip !15
  store i64 0, i64* %XSI, !mcsema_real_eip !15
  %67 = add i64 %RBP_val.17, -16, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !16
  %69 = load i64, i64* %68, !mcsema_real_eip !16
  store i64 %69, i64* %XAX, !mcsema_real_eip !16
  %70 = add i64 %RBP_val.17, -40, !mcsema_real_eip !17
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !17
  store i64 %69, i64* %71, !mcsema_real_eip !17
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !18
  %72 = add i64 %RBP_val.25, -32, !mcsema_real_eip !18
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !18
  %74 = load i64, i64* %73, !mcsema_real_eip !18
  store i64 %74, i64* %XAX, !mcsema_real_eip !18
  %75 = add i64 %RBP_val.25, -48, !mcsema_real_eip !19
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !19
  store i64 %74, i64* %76, !mcsema_real_eip !19
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %77 = add i64 %RBP_val.28, -32, !mcsema_real_eip !20
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !20
  %79 = load i64, i64* %78, !mcsema_real_eip !20
  store i64 %79, i64* %XDI, !mcsema_real_eip !20
  %80 = add i64 %RBP_val.28, -24, !mcsema_real_eip !21
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !21
  %82 = load i64, i64* %81, !mcsema_real_eip !21
  store i64 %82, i64* %XDX, !mcsema_real_eip !21
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !22
  %83 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !22
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %84, !mcsema_real_eip !22
  store i64 %83, i64* %XSP, !mcsema_real_eip !22
  %85 = call x86_64_sysvcc i64 @_memset(i64 %79, i64 %RSI_val.31, i64 %82), !mcsema_real_eip !22
  store i64 %85, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !23
  %86 = add i64 %RBP_val.34, -40, !mcsema_real_eip !23
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !23
  %88 = load i64, i64* %87, !mcsema_real_eip !23
  store i64 %88, i64* %XAX, !mcsema_real_eip !23
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !24
  %90 = inttoptr i64 %88 to i8*, !mcsema_real_eip !24
  %91 = load i8, i8* %90, !mcsema_real_eip !24
  %92 = sext i8 %91 to i32, !mcsema_real_eip !24
  %93 = zext i32 %92 to i64, !mcsema_real_eip !24
  store i64 %93, i64* %XCX, !mcsema_real_eip !24
  %ECX.36 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.37 = load i32, i32* %ECX.36, !mcsema_real_eip !25
  store i1 false, i1* %AF, !mcsema_real_eip !25
  %94 = trunc i32 %ECX_val.37 to i8, !mcsema_real_eip !25
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !25
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !25
  %97 = xor i1 %96, true, !mcsema_real_eip !25
  store i1 %97, i1* %PF, !mcsema_real_eip !25
  %98 = icmp eq i32 %ECX_val.37, 0, !mcsema_real_eip !25
  store i1 %98, i1* %ZF, !mcsema_real_eip !25
  %99 = lshr i32 %ECX_val.37, 31, !mcsema_real_eip !25
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !25
  store i1 %100, i1* %SF, !mcsema_real_eip !25
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  br i1 %98, label %block_0xa9, label %block_0x64, !mcsema_real_eip !26

block_0x64:                                       ; preds = %block_0x54
  %101 = load i64, i64* %87, !mcsema_real_eip !27
  store i64 %101, i64* %XAX, !mcsema_real_eip !27
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !28
  %103 = inttoptr i64 %101 to i8*, !mcsema_real_eip !28
  %104 = load i8, i8* %103, !mcsema_real_eip !28
  %105 = sext i8 %104 to i32, !mcsema_real_eip !28
  %106 = zext i32 %105 to i64, !mcsema_real_eip !28
  store i64 %106, i64* %XCX, !mcsema_real_eip !28
  %ECX_val.41 = load i32, i32* %ECX.36, !mcsema_real_eip !29
  %107 = sub i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %108 = xor i32 %107, %ECX_val.41, !mcsema_real_eip !29
  %109 = xor i32 %108, 47, !mcsema_real_eip !29
  %110 = and i32 %109, 16, !mcsema_real_eip !29
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !29
  store i1 %111, i1* %AF, !mcsema_real_eip !29
  %112 = trunc i32 %107 to i8, !mcsema_real_eip !29
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !29
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !29
  %115 = xor i1 %114, true, !mcsema_real_eip !29
  store i1 %115, i1* %PF, !mcsema_real_eip !29
  %116 = icmp eq i32 %107, 0, !mcsema_real_eip !29
  store i1 %116, i1* %ZF, !mcsema_real_eip !29
  %117 = lshr i32 %107, 31, !mcsema_real_eip !29
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !29
  store i1 %118, i1* %SF, !mcsema_real_eip !29
  %119 = icmp ult i32 %ECX_val.41, 47, !mcsema_real_eip !29
  store i1 %119, i1* %CF, !mcsema_real_eip !29
  %120 = xor i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %121 = and i32 %120, %108, !mcsema_real_eip !29
  %122 = lshr i32 %121, 31, !mcsema_real_eip !29
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !29
  store i1 %123, i1* %OF, !mcsema_real_eip !29
  %124 = icmp eq i1 %116, false, !mcsema_real_eip !30
  br i1 %124, label %block_0x80, label %block_0x74, !mcsema_real_eip !30

block_0x74:                                       ; preds = %block_0x64
  %125 = add i64 %RBP_val.34, -48, !mcsema_real_eip !31
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !31
  %127 = load i64, i64* %126, !mcsema_real_eip !31
  store i64 %127, i64* %XAX, !mcsema_real_eip !31
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !32
  %129 = inttoptr i64 %127 to i8*, !mcsema_real_eip !32
  store i8 92, i8* %129, !mcsema_real_eip !32
  br label %block_0x8c, !mcsema_real_eip !33

block_0x80:                                       ; preds = %block_0x64
  %130 = load i64, i64* %87, !mcsema_real_eip !34
  store i64 %130, i64* %XAX, !mcsema_real_eip !34
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !35
  %132 = inttoptr i64 %130 to i8*, !mcsema_real_eip !35
  %133 = load i8, i8* %132, !mcsema_real_eip !35
  %CL.46 = bitcast i64* %XCX to i8*, !mcsema_real_eip !35
  store i8 %133, i8* %CL.46, !mcsema_real_eip !35
  %134 = add i64 %RBP_val.34, -48, !mcsema_real_eip !36
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !36
  %136 = load i64, i64* %135, !mcsema_real_eip !36
  store i64 %136, i64* %XAX, !mcsema_real_eip !36
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !37
  %138 = inttoptr i64 %136 to i8*, !mcsema_real_eip !37
  store i8 %133, i8* %138, !mcsema_real_eip !37
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !38
  %139 = add i64 %RBP_val.51, -40, !mcsema_real_eip !38
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !38
  %141 = load i64, i64* %140, !mcsema_real_eip !38
  store i64 %141, i64* %XAX, !mcsema_real_eip !38
  %142 = add i64 1, %141, !mcsema_real_eip !39
  %143 = xor i64 %142, %141, !mcsema_real_eip !39
  %144 = xor i64 %143, 1, !mcsema_real_eip !39
  %145 = and i64 %144, 16, !mcsema_real_eip !39
  %146 = icmp ne i64 %145, 0, !mcsema_real_eip !39
  store i1 %146, i1* %AF, !mcsema_real_eip !39
  %147 = lshr i64 %142, 63, !mcsema_real_eip !39
  %148 = trunc i64 %147 to i1, !mcsema_real_eip !39
  store i1 %148, i1* %SF, !mcsema_real_eip !39
  %149 = icmp eq i64 %142, 0, !mcsema_real_eip !39
  store i1 %149, i1* %ZF, !mcsema_real_eip !39
  %150 = xor i64 %141, 1, !mcsema_real_eip !39
  %151 = xor i64 %150, -1, !mcsema_real_eip !39
  %152 = and i64 %151, %143, !mcsema_real_eip !39
  %153 = lshr i64 %152, 63, !mcsema_real_eip !39
  %154 = and i64 %153, 1, !mcsema_real_eip !39
  %155 = trunc i64 %154 to i1, !mcsema_real_eip !39
  store i1 %155, i1* %OF, !mcsema_real_eip !39
  %156 = trunc i64 %142 to i8, !mcsema_real_eip !39
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !39
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !39
  %159 = xor i1 %158, true, !mcsema_real_eip !39
  store i1 %159, i1* %PF, !mcsema_real_eip !39
  %160 = icmp ult i64 %142, %141, !mcsema_real_eip !39
  store i1 %160, i1* %CF, !mcsema_real_eip !39
  store i64 %142, i64* %XAX, !mcsema_real_eip !39
  store i64 %142, i64* %140, !mcsema_real_eip !40
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !41
  %161 = add i64 %RBP_val.55, -48, !mcsema_real_eip !41
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !41
  %163 = load i64, i64* %162, !mcsema_real_eip !41
  store i64 %163, i64* %XAX, !mcsema_real_eip !41
  %164 = add i64 1, %163, !mcsema_real_eip !42
  %165 = xor i64 %164, %163, !mcsema_real_eip !42
  %166 = xor i64 %165, 1, !mcsema_real_eip !42
  %167 = and i64 %166, 16, !mcsema_real_eip !42
  %168 = icmp ne i64 %167, 0, !mcsema_real_eip !42
  store i1 %168, i1* %AF, !mcsema_real_eip !42
  %169 = lshr i64 %164, 63, !mcsema_real_eip !42
  %170 = trunc i64 %169 to i1, !mcsema_real_eip !42
  store i1 %170, i1* %SF, !mcsema_real_eip !42
  %171 = icmp eq i64 %164, 0, !mcsema_real_eip !42
  store i1 %171, i1* %ZF, !mcsema_real_eip !42
  %172 = xor i64 %163, 1, !mcsema_real_eip !42
  %173 = xor i64 %172, -1, !mcsema_real_eip !42
  %174 = and i64 %173, %165, !mcsema_real_eip !42
  %175 = lshr i64 %174, 63, !mcsema_real_eip !42
  %176 = and i64 %175, 1, !mcsema_real_eip !42
  %177 = trunc i64 %176 to i1, !mcsema_real_eip !42
  store i1 %177, i1* %OF, !mcsema_real_eip !42
  %178 = trunc i64 %164 to i8, !mcsema_real_eip !42
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !42
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !42
  %181 = xor i1 %180, true, !mcsema_real_eip !42
  store i1 %181, i1* %PF, !mcsema_real_eip !42
  %182 = icmp ult i64 %164, %163, !mcsema_real_eip !42
  store i1 %182, i1* %CF, !mcsema_real_eip !42
  store i64 %164, i64* %XAX, !mcsema_real_eip !42
  store i64 %164, i64* %162, !mcsema_real_eip !43
  br label %block_0x54, !mcsema_real_eip !44

block_0xa9:                                       ; preds = %block_0x54
  %183 = add i64 %RBP_val.34, -32, !mcsema_real_eip !45
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !45
  %185 = load i64, i64* %184, !mcsema_real_eip !45
  store i64 %185, i64* %XAX, !mcsema_real_eip !45
  %186 = add i64 %RBP_val.34, -8, !mcsema_real_eip !46
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !46
  store i64 %185, i64* %187, !mcsema_real_eip !46
  br label %block_0xbe, !mcsema_real_eip !47

block_0xb6:                                       ; preds = %block_0x0
  %188 = add i64 %RBP_val.17, -8, !mcsema_real_eip !48
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !48
  store i64 0, i64* %189, !mcsema_real_eip !48
  br label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xb6, %block_0xa9
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %190 = add i64 %RBP_val.63, -8, !mcsema_real_eip !49
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !49
  %192 = load i64, i64* %191, !mcsema_real_eip !49
  store i64 %192, i64* %XAX, !mcsema_real_eip !49
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !50
  %193 = add i64 48, %RSP_val.64, !mcsema_real_eip !50
  %194 = xor i64 %193, %RSP_val.64, !mcsema_real_eip !50
  %195 = xor i64 %194, 48, !mcsema_real_eip !50
  %196 = and i64 %195, 16, !mcsema_real_eip !50
  %197 = icmp ne i64 %196, 0, !mcsema_real_eip !50
  store i1 %197, i1* %AF, !mcsema_real_eip !50
  %198 = lshr i64 %193, 63, !mcsema_real_eip !50
  %199 = trunc i64 %198 to i1, !mcsema_real_eip !50
  store i1 %199, i1* %SF, !mcsema_real_eip !50
  %200 = icmp eq i64 %193, 0, !mcsema_real_eip !50
  store i1 %200, i1* %ZF, !mcsema_real_eip !50
  %201 = xor i64 %RSP_val.64, 48, !mcsema_real_eip !50
  %202 = xor i64 %201, -1, !mcsema_real_eip !50
  %203 = and i64 %202, %194, !mcsema_real_eip !50
  %204 = lshr i64 %203, 63, !mcsema_real_eip !50
  %205 = and i64 %204, 1, !mcsema_real_eip !50
  %206 = trunc i64 %205 to i1, !mcsema_real_eip !50
  store i1 %206, i1* %OF, !mcsema_real_eip !50
  %207 = trunc i64 %193 to i8, !mcsema_real_eip !50
  %208 = call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !50
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !50
  %210 = xor i1 %209, true, !mcsema_real_eip !50
  store i1 %210, i1* %PF, !mcsema_real_eip !50
  %211 = icmp ult i64 %193, %RSP_val.64, !mcsema_real_eip !50
  store i1 %211, i1* %CF, !mcsema_real_eip !50
  store i64 %193, i64* %XSP, !mcsema_real_eip !50
  %212 = inttoptr i64 %193 to i64*, !mcsema_real_eip !51
  %213 = load i64, i64* %212, !mcsema_real_eip !51
  store i64 %213, i64* %XBP, !mcsema_real_eip !51
  %214 = add i64 %193, 8, !mcsema_real_eip !51
  store i64 %214, i64* %XSP, !mcsema_real_eip !51
  %215 = add i64 %214, 8, !mcsema_real_eip !52
  %216 = inttoptr i64 %214 to i64*, !mcsema_real_eip !52
  %217 = load i64, i64* %216, !mcsema_real_eip !52
  store i64 %217, i64* %XIP, !mcsema_real_eip !52
  store i64 %215, i64* %XSP, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @doTrans() #2

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
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 29}
!11 = !{i64 33}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 47}
!15 = !{i64 53}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 91}
!26 = !{i64 94}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 107}
!30 = !{i64 110}
!31 = !{i64 116}
!32 = !{i64 120}
!33 = !{i64 123}
!34 = !{i64 128}
!35 = !{i64 132}
!36 = !{i64 134}
!37 = !{i64 138}
!38 = !{i64 140}
!39 = !{i64 144}
!40 = !{i64 148}
!41 = !{i64 152}
!42 = !{i64 156}
!43 = !{i64 160}
!44 = !{i64 164}
!45 = !{i64 169}
!46 = !{i64 173}
!47 = !{i64 177}
!48 = !{i64 182}
!49 = !{i64 190}
!50 = !{i64 194}
!51 = !{i64 198}
!52 = !{i64 199}
