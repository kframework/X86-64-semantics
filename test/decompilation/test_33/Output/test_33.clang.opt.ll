; ModuleID = 'Output/test_33.clang.opt.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64
@data_0x110 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"y\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\80\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
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
  br label %block_0x80, !mcsema_real_eip !2

block_0x80:                                       ; preds = %entry
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
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %22, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %25, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %27, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, -8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !8
  %31 = load i32, i32* %30, !mcsema_real_eip !8
  %32 = sub i32 %31, 2, !mcsema_real_eip !8
  %33 = xor i32 %32, %31, !mcsema_real_eip !8
  %34 = xor i32 %33, 2, !mcsema_real_eip !8
  %35 = and i32 %34, 16, !mcsema_real_eip !8
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !8
  store i1 %36, i1* %AF, !mcsema_real_eip !8
  %37 = trunc i32 %32 to i8, !mcsema_real_eip !8
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !8
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !8
  %40 = xor i1 %39, true, !mcsema_real_eip !8
  store i1 %40, i1* %PF, !mcsema_real_eip !8
  %41 = icmp eq i32 %32, 0, !mcsema_real_eip !8
  store i1 %41, i1* %ZF, !mcsema_real_eip !8
  %42 = lshr i32 %32, 31, !mcsema_real_eip !8
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !8
  store i1 %43, i1* %SF, !mcsema_real_eip !8
  %44 = icmp ult i32 %31, 2, !mcsema_real_eip !8
  store i1 %44, i1* %CF, !mcsema_real_eip !8
  %45 = xor i32 %31, 2, !mcsema_real_eip !8
  %46 = and i32 %45, %33, !mcsema_real_eip !8
  %47 = lshr i32 %46, 31, !mcsema_real_eip !8
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !8
  store i1 %48, i1* %OF, !mcsema_real_eip !8
  %49 = icmp eq i1 %41, false, !mcsema_real_eip !9
  br i1 %49, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %block_0x80
  %50 = add i64 %RBP_val.10, -16, !mcsema_real_eip !10
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !10
  %52 = load i64, i64* %51, !mcsema_real_eip !10
  store i64 %52, i64* %XAX, !mcsema_real_eip !10
  %53 = add i64 %52, 8, !mcsema_real_eip !11
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !11
  %55 = load i64, i64* %54, !mcsema_real_eip !11
  store i64 %55, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %56 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %57, !mcsema_real_eip !12
  store i64 %56, i64* %XSP, !mcsema_real_eip !12
  %58 = call x86_64_sysvcc i64 @_atoi(i64 %55), !mcsema_real_eip !12
  store i64 %58, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %59 = add i64 %RBP_val.18, -24, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %61, !mcsema_real_eip !13
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %block_0x80
  store i64 8, i64* %XAX, !mcsema_real_eip !15
  %62 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %64, !mcsema_real_eip !16
  br label %block_0xc2, !mcsema_real_eip !17

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !18
  %65 = add i64 %RBP_val.21, -24, !mcsema_real_eip !18
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !18
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !18
  %68 = load i32, i32* %67, !mcsema_real_eip !18
  %69 = zext i32 %68 to i64, !mcsema_real_eip !18
  store i64 %69, i64* %XAX, !mcsema_real_eip !18
  store i64 3, i64* %XDI, !mcsema_real_eip !19
  %70 = add i64 %RBP_val.21, -20, !mcsema_real_eip !20
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !20
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !20
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.24, i32* %72, !mcsema_real_eip !20
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !21
  %73 = add i64 %RBP_val.25, -20, !mcsema_real_eip !21
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !21
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !21
  %76 = load i32, i32* %75, !mcsema_real_eip !21
  %77 = zext i32 %76 to i64, !mcsema_real_eip !21
  store i64 %77, i64* %XSI, !mcsema_real_eip !21
  %78 = load i32, i32* %75, !mcsema_real_eip !22
  %79 = zext i32 %78 to i64, !mcsema_real_eip !22
  store i64 %79, i64* %XAX, !mcsema_real_eip !22
  %80 = add i64 %RBP_val.25, -28, !mcsema_real_eip !23
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !23
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !23
  %82 = inttoptr i64 %80 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.29, i32* %82, !mcsema_real_eip !23
  %EAX_val.31 = load i32, i32* %EAX.23, !mcsema_real_eip !24
  %83 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !24
  store i64 %83, i64* %XSI, !mcsema_real_eip !24
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !25
  %84 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !25
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !25
  store i64 -4981261766360305936, i64* %85, !mcsema_real_eip !25
  store i64 %84, i64* %XSP, !mcsema_real_eip !25
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !25
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !26
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !27
  %86 = add i64 %RBP_val.33, -28, !mcsema_real_eip !27
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !27
  %88 = inttoptr i64 %86 to i32*, !mcsema_real_eip !27
  %89 = load i32, i32* %88, !mcsema_real_eip !27
  %90 = zext i32 %89 to i64, !mcsema_real_eip !27
  store i64 %90, i64* %XSI, !mcsema_real_eip !27
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !28
  %91 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !28
  store i64 %91, i64* %XDX, !mcsema_real_eip !28
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.36, !mcsema_real_eip !29
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !30
  %R8_val.41 = load i64, i64* %R8, !mcsema_real_eip !30
  %R9_val.42 = load i64, i64* %R9, !mcsema_real_eip !30
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !30
  %92 = inttoptr i64 %RSP_val.43 to i64*, !mcsema_real_eip !30
  %93 = load i64, i64* %92, !mcsema_real_eip !30
  %94 = add i64 %RSP_val.43, 8, !mcsema_real_eip !30
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !30
  %96 = load i64, i64* %95, !mcsema_real_eip !30
  %97 = add i64 %94, 8, !mcsema_real_eip !30
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !30
  %99 = load i64, i64* %98, !mcsema_real_eip !30
  %100 = add i64 %97, 8, !mcsema_real_eip !30
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !30
  %102 = load i64, i64* %101, !mcsema_real_eip !30
  %103 = add i64 %100, 8, !mcsema_real_eip !30
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !30
  %105 = load i64, i64* %104, !mcsema_real_eip !30
  %106 = add i64 %103, 8, !mcsema_real_eip !30
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !30
  %108 = load i64, i64* %107, !mcsema_real_eip !30
  %109 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !30
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !30
  store i64 -2415393069852865332, i64* %110, !mcsema_real_eip !30
  store i64 %109, i64* %XSP, !mcsema_real_eip !30
  %111 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %90, i64 %91, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %93, i64 %96, i64 %99, i64 %102, i64 %105, i64 %108), !mcsema_real_eip !30
  store i64 %111, i64* %XAX, !mcsema_real_eip !30
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.46 = load i32, i32* %EDX.45, !mcsema_real_eip !31
  store i1 false, i1* %CF, !mcsema_real_eip !31
  store i1 false, i1* %OF, !mcsema_real_eip !31
  store i1 false, i1* %SF, !mcsema_real_eip !31
  store i1 true, i1* %ZF, !mcsema_real_eip !31
  store i1 true, i1* %PF, !mcsema_real_eip !31
  store i1 undef, i1* %AF, !mcsema_real_eip !31
  store i64 0, i64* %XDX, !mcsema_real_eip !31
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !32
  %112 = add i64 %RBP_val.49, -32, !mcsema_real_eip !32
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !32
  %EAX_val.51 = load i32, i32* %EAX.23, !mcsema_real_eip !32
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.51, i32* %114, !mcsema_real_eip !32
  %EDX_val.53 = load i32, i32* %EDX.45, !mcsema_real_eip !33
  %115 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !33
  store i64 %115, i64* %XAX, !mcsema_real_eip !33
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !34
  %116 = add i64 32, %RSP_val.54, !mcsema_real_eip !34
  %117 = xor i64 %116, %RSP_val.54, !mcsema_real_eip !34
  %118 = xor i64 %117, 32, !mcsema_real_eip !34
  %119 = and i64 %118, 16, !mcsema_real_eip !34
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !34
  store i1 %120, i1* %AF, !mcsema_real_eip !34
  %121 = lshr i64 %116, 63, !mcsema_real_eip !34
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !34
  store i1 %122, i1* %SF, !mcsema_real_eip !34
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !34
  store i1 %123, i1* %ZF, !mcsema_real_eip !34
  %124 = xor i64 %RSP_val.54, 32, !mcsema_real_eip !34
  %125 = xor i64 %124, -1, !mcsema_real_eip !34
  %126 = and i64 %125, %117, !mcsema_real_eip !34
  %127 = lshr i64 %126, 63, !mcsema_real_eip !34
  %128 = and i64 %127, 1, !mcsema_real_eip !34
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !34
  store i1 %129, i1* %OF, !mcsema_real_eip !34
  %130 = trunc i64 %116 to i8, !mcsema_real_eip !34
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !34
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !34
  %133 = xor i1 %132, true, !mcsema_real_eip !34
  store i1 %133, i1* %PF, !mcsema_real_eip !34
  %134 = icmp ult i64 %116, %RSP_val.54, !mcsema_real_eip !34
  store i1 %134, i1* %CF, !mcsema_real_eip !34
  store i64 %116, i64* %XSP, !mcsema_real_eip !34
  %135 = inttoptr i64 %116 to i64*, !mcsema_real_eip !35
  %136 = load i64, i64* %135, !mcsema_real_eip !35
  store i64 %136, i64* %XBP, !mcsema_real_eip !35
  %137 = add i64 %116, 8, !mcsema_real_eip !35
  store i64 %137, i64* %XSP, !mcsema_real_eip !35
  %138 = add i64 %137, 8, !mcsema_real_eip !36
  %139 = inttoptr i64 %137 to i64*, !mcsema_real_eip !36
  %140 = load i64, i64* %139, !mcsema_real_eip !36
  store i64 %140, i64* %XIP, !mcsema_real_eip !36
  store i64 %138, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !37
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !37
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !37
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !37
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !37
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !37
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !37
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !37
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !37
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !37
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !37
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !37
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !37
  br label %block_0x0, !mcsema_real_eip !37

block_0x0:                                        ; preds = %entry
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !37
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !37
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !37
  store i64 %RBP_val.57, i64* %2, !mcsema_real_eip !37
  store i64 %1, i64* %XSP, !mcsema_real_eip !37
  store i64 %1, i64* %XBP, !mcsema_real_eip !38
  %3 = sub i64 %1, 16, !mcsema_real_eip !39
  %4 = xor i64 %3, %1, !mcsema_real_eip !39
  %5 = xor i64 %4, 16, !mcsema_real_eip !39
  %6 = and i64 %5, 16, !mcsema_real_eip !39
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !39
  store i1 %7, i1* %AF, !mcsema_real_eip !39
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !39
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !39
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !39
  %11 = xor i1 %10, true, !mcsema_real_eip !39
  store i1 %11, i1* %PF, !mcsema_real_eip !39
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !39
  store i1 %12, i1* %ZF, !mcsema_real_eip !39
  %13 = lshr i64 %3, 63, !mcsema_real_eip !39
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !39
  store i1 %14, i1* %SF, !mcsema_real_eip !39
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !39
  store i1 %15, i1* %CF, !mcsema_real_eip !39
  %16 = xor i64 %1, 16, !mcsema_real_eip !39
  %17 = and i64 %16, %4, !mcsema_real_eip !39
  %18 = lshr i64 %17, 63, !mcsema_real_eip !39
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !39
  store i1 %19, i1* %OF, !mcsema_real_eip !39
  store i64 %3, i64* %XSP, !mcsema_real_eip !39
  %20 = add i64 %1, -8, !mcsema_real_eip !40
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !40
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !40
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %22, !mcsema_real_eip !40
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !41
  %23 = add i64 %RBP_val.64, -12, !mcsema_real_eip !41
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !41
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !41
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %25, !mcsema_real_eip !41
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !42
  %26 = add i64 %RBP_val.67, -8, !mcsema_real_eip !42
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !42
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !42
  %29 = load i32, i32* %28, !mcsema_real_eip !42
  store i1 false, i1* %AF, !mcsema_real_eip !42
  %30 = trunc i32 %29 to i8, !mcsema_real_eip !42
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !42
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !42
  %33 = xor i1 %32, true, !mcsema_real_eip !42
  store i1 %33, i1* %PF, !mcsema_real_eip !42
  %34 = icmp eq i32 %29, 0, !mcsema_real_eip !42
  store i1 %34, i1* %ZF, !mcsema_real_eip !42
  %35 = lshr i32 %29, 31, !mcsema_real_eip !42
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !42
  store i1 %36, i1* %SF, !mcsema_real_eip !42
  store i1 false, i1* %CF, !mcsema_real_eip !42
  store i1 false, i1* %OF, !mcsema_real_eip !42
  %37 = icmp eq i1 %34, false, !mcsema_real_eip !43
  br i1 %37, label %block_0x26, label %block_0x18, !mcsema_real_eip !43

block_0x18:                                       ; preds = %block_0x0
  %38 = add i64 %RBP_val.67, -12, !mcsema_real_eip !44
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !44
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !44
  %41 = load i32, i32* %40, !mcsema_real_eip !44
  %42 = zext i32 %41 to i64, !mcsema_real_eip !44
  store i64 %42, i64* %XAX, !mcsema_real_eip !44
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !45
  %43 = add i32 1, %EAX_val.71, !mcsema_real_eip !45
  %44 = xor i32 %43, %EAX_val.71, !mcsema_real_eip !45
  %45 = xor i32 %44, 1, !mcsema_real_eip !45
  %46 = and i32 %45, 16, !mcsema_real_eip !45
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !45
  store i1 %47, i1* %AF, !mcsema_real_eip !45
  %48 = lshr i32 %43, 31, !mcsema_real_eip !45
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !45
  store i1 %49, i1* %SF, !mcsema_real_eip !45
  %50 = icmp eq i32 %43, 0, !mcsema_real_eip !45
  store i1 %50, i1* %ZF, !mcsema_real_eip !45
  %51 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !45
  %52 = xor i32 %51, -1, !mcsema_real_eip !45
  %53 = and i32 %52, %44, !mcsema_real_eip !45
  %54 = lshr i32 %53, 31, !mcsema_real_eip !45
  %55 = and i32 %54, 1, !mcsema_real_eip !45
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !45
  store i1 %56, i1* %OF, !mcsema_real_eip !45
  %57 = trunc i32 %43 to i8, !mcsema_real_eip !45
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !45
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !45
  %60 = xor i1 %59, true, !mcsema_real_eip !45
  store i1 %60, i1* %PF, !mcsema_real_eip !45
  %61 = icmp ult i32 %43, %EAX_val.71, !mcsema_real_eip !45
  store i1 %61, i1* %CF, !mcsema_real_eip !45
  %62 = zext i32 %43 to i64, !mcsema_real_eip !45
  store i64 %62, i64* %XAX, !mcsema_real_eip !45
  %63 = add i64 %RBP_val.67, -4, !mcsema_real_eip !46
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !46
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !46
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !46
  store i32 %EAX_val.74, i32* %65, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x26:                                       ; preds = %block_0x0
  %66 = add i64 %RBP_val.67, -12, !mcsema_real_eip !48
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !48
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !48
  %69 = load i32, i32* %68, !mcsema_real_eip !48
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %70 = trunc i32 %69 to i8, !mcsema_real_eip !48
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !48
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !48
  %73 = xor i1 %72, true, !mcsema_real_eip !48
  store i1 %73, i1* %PF, !mcsema_real_eip !48
  %74 = icmp eq i32 %69, 0, !mcsema_real_eip !48
  store i1 %74, i1* %ZF, !mcsema_real_eip !48
  %75 = lshr i32 %69, 31, !mcsema_real_eip !48
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !48
  store i1 %76, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  %77 = icmp eq i1 %74, false, !mcsema_real_eip !49
  br i1 %77, label %block_0x4a, label %block_0x30, !mcsema_real_eip !49

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, !mcsema_real_eip !50
  %78 = load i32, i32* %28, !mcsema_real_eip !51
  %79 = zext i32 %78 to i64, !mcsema_real_eip !51
  store i64 %79, i64* %XAX, !mcsema_real_eip !51
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.97 = load i32, i32* %EAX.96, !mcsema_real_eip !52
  %80 = sub i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %81 = xor i32 %80, %EAX_val.97, !mcsema_real_eip !52
  %82 = xor i32 %81, 1, !mcsema_real_eip !52
  %83 = and i32 %82, 16, !mcsema_real_eip !52
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !52
  store i1 %84, i1* %AF, !mcsema_real_eip !52
  %85 = trunc i32 %80 to i8, !mcsema_real_eip !52
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !52
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !52
  %88 = xor i1 %87, true, !mcsema_real_eip !52
  store i1 %88, i1* %PF, !mcsema_real_eip !52
  %89 = icmp eq i32 %80, 0, !mcsema_real_eip !52
  store i1 %89, i1* %ZF, !mcsema_real_eip !52
  %90 = lshr i32 %80, 31, !mcsema_real_eip !52
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !52
  store i1 %91, i1* %SF, !mcsema_real_eip !52
  %92 = icmp ult i32 %EAX_val.97, 1, !mcsema_real_eip !52
  store i1 %92, i1* %CF, !mcsema_real_eip !52
  %93 = xor i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %94 = and i32 %93, %81, !mcsema_real_eip !52
  %95 = lshr i32 %94, 31, !mcsema_real_eip !52
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !52
  store i1 %96, i1* %OF, !mcsema_real_eip !52
  %97 = zext i32 %80 to i64, !mcsema_real_eip !52
  store i64 %97, i64* %XAX, !mcsema_real_eip !52
  %EAX_val.99 = load i32, i32* %EAX.96, !mcsema_real_eip !53
  %98 = zext i32 %EAX_val.99 to i64, !mcsema_real_eip !53
  store i64 %98, i64* %XDI, !mcsema_real_eip !53
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !54
  %99 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !54
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !54
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !54
  store i64 %99, i64* %XSP, !mcsema_real_eip !54
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !54
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !55
  %101 = add i64 %RBP_val.101, -4, !mcsema_real_eip !55
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !55
  %EAX_val.103 = load i32, i32* %EAX.96, !mcsema_real_eip !55
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.103, i32* %103, !mcsema_real_eip !55
  br label %block_0x70, !mcsema_real_eip !56

block_0x4a:                                       ; preds = %block_0x26
  %104 = load i32, i32* %28, !mcsema_real_eip !57
  %105 = zext i32 %104 to i64, !mcsema_real_eip !57
  store i64 %105, i64* %XAX, !mcsema_real_eip !57
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !58
  %106 = sub i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %107 = xor i32 %106, %EAX_val.77, !mcsema_real_eip !58
  %108 = xor i32 %107, 1, !mcsema_real_eip !58
  %109 = and i32 %108, 16, !mcsema_real_eip !58
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !58
  store i1 %110, i1* %AF, !mcsema_real_eip !58
  %111 = trunc i32 %106 to i8, !mcsema_real_eip !58
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !58
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !58
  %114 = xor i1 %113, true, !mcsema_real_eip !58
  store i1 %114, i1* %PF, !mcsema_real_eip !58
  %115 = icmp eq i32 %106, 0, !mcsema_real_eip !58
  store i1 %115, i1* %ZF, !mcsema_real_eip !58
  %116 = lshr i32 %106, 31, !mcsema_real_eip !58
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !58
  store i1 %117, i1* %SF, !mcsema_real_eip !58
  %118 = icmp ult i32 %EAX_val.77, 1, !mcsema_real_eip !58
  store i1 %118, i1* %CF, !mcsema_real_eip !58
  %119 = xor i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %120 = and i32 %119, %107, !mcsema_real_eip !58
  %121 = lshr i32 %120, 31, !mcsema_real_eip !58
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !58
  store i1 %122, i1* %OF, !mcsema_real_eip !58
  %123 = zext i32 %106 to i64, !mcsema_real_eip !58
  store i64 %123, i64* %XAX, !mcsema_real_eip !58
  %124 = load i32, i32* %28, !mcsema_real_eip !59
  %125 = zext i32 %124 to i64, !mcsema_real_eip !59
  store i64 %125, i64* %XDI, !mcsema_real_eip !59
  %126 = load i32, i32* %68, !mcsema_real_eip !60
  %127 = zext i32 %126 to i64, !mcsema_real_eip !60
  store i64 %127, i64* %XCX, !mcsema_real_eip !60
  %ECX.80 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.81 = load i32, i32* %ECX.80, !mcsema_real_eip !61
  %128 = sub i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %129 = xor i32 %128, %ECX_val.81, !mcsema_real_eip !61
  %130 = xor i32 %129, 1, !mcsema_real_eip !61
  %131 = and i32 %130, 16, !mcsema_real_eip !61
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !61
  store i1 %132, i1* %AF, !mcsema_real_eip !61
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !61
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !61
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !61
  %136 = xor i1 %135, true, !mcsema_real_eip !61
  store i1 %136, i1* %PF, !mcsema_real_eip !61
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !61
  store i1 %137, i1* %ZF, !mcsema_real_eip !61
  %138 = lshr i32 %128, 31, !mcsema_real_eip !61
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !61
  store i1 %139, i1* %SF, !mcsema_real_eip !61
  %140 = icmp ult i32 %ECX_val.81, 1, !mcsema_real_eip !61
  store i1 %140, i1* %CF, !mcsema_real_eip !61
  %141 = xor i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %142 = and i32 %141, %129, !mcsema_real_eip !61
  %143 = lshr i32 %142, 31, !mcsema_real_eip !61
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !61
  store i1 %144, i1* %OF, !mcsema_real_eip !61
  %145 = zext i32 %128 to i64, !mcsema_real_eip !61
  store i64 %145, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.83 = load i32, i32* %ECX.80, !mcsema_real_eip !62
  %146 = zext i32 %ECX_val.83 to i64, !mcsema_real_eip !62
  store i64 %146, i64* %XSI, !mcsema_real_eip !62
  %147 = add i64 %RBP_val.67, -16, !mcsema_real_eip !63
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.76, !mcsema_real_eip !63
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.86, i32* %149, !mcsema_real_eip !63
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !64
  %150 = sub i64 %RSP_val.87, 8, !mcsema_real_eip !64
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !64
  store i64 -4981261766360305936, i64* %151, !mcsema_real_eip !64
  store i64 %150, i64* %XSP, !mcsema_real_eip !64
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !64
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !65
  %152 = add i64 %RBP_val.88, -16, !mcsema_real_eip !65
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !65
  %154 = inttoptr i64 %152 to i32*, !mcsema_real_eip !65
  %155 = load i32, i32* %154, !mcsema_real_eip !65
  %156 = zext i32 %155 to i64, !mcsema_real_eip !65
  store i64 %156, i64* %XDI, !mcsema_real_eip !65
  %EAX_val.90 = load i32, i32* %EAX.76, !mcsema_real_eip !66
  %157 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !66
  store i64 %157, i64* %XSI, !mcsema_real_eip !66
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !67
  %158 = sub i64 %RSP_val.91, 8, !mcsema_real_eip !67
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !67
  store i64 -4981261766360305936, i64* %159, !mcsema_real_eip !67
  store i64 %158, i64* %XSP, !mcsema_real_eip !67
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !67
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !68
  %160 = add i64 %RBP_val.92, -4, !mcsema_real_eip !68
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !68
  %EAX_val.94 = load i32, i32* %EAX.76, !mcsema_real_eip !68
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.94, i32* %162, !mcsema_real_eip !68
  br label %block_0x70, !mcsema_real_eip !50

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !69
  %163 = add i64 %RBP_val.104, -4, !mcsema_real_eip !69
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !69
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !69
  %166 = load i32, i32* %165, !mcsema_real_eip !69
  %167 = zext i32 %166 to i64, !mcsema_real_eip !69
  store i64 %167, i64* %XAX, !mcsema_real_eip !69
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %168 = add i64 16, %RSP_val.105, !mcsema_real_eip !70
  %169 = xor i64 %168, %RSP_val.105, !mcsema_real_eip !70
  %170 = xor i64 %169, 16, !mcsema_real_eip !70
  %171 = and i64 %170, 16, !mcsema_real_eip !70
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !70
  store i1 %172, i1* %AF, !mcsema_real_eip !70
  %173 = lshr i64 %168, 63, !mcsema_real_eip !70
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !70
  store i1 %174, i1* %SF, !mcsema_real_eip !70
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !70
  store i1 %175, i1* %ZF, !mcsema_real_eip !70
  %176 = xor i64 %RSP_val.105, 16, !mcsema_real_eip !70
  %177 = xor i64 %176, -1, !mcsema_real_eip !70
  %178 = and i64 %177, %169, !mcsema_real_eip !70
  %179 = lshr i64 %178, 63, !mcsema_real_eip !70
  %180 = and i64 %179, 1, !mcsema_real_eip !70
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !70
  store i1 %181, i1* %OF, !mcsema_real_eip !70
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !70
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !70
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !70
  %185 = xor i1 %184, true, !mcsema_real_eip !70
  store i1 %185, i1* %PF, !mcsema_real_eip !70
  %186 = icmp ult i64 %168, %RSP_val.105, !mcsema_real_eip !70
  store i1 %186, i1* %CF, !mcsema_real_eip !70
  store i64 %168, i64* %XSP, !mcsema_real_eip !70
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !71
  %188 = load i64, i64* %187, !mcsema_real_eip !71
  store i64 %188, i64* %XBP, !mcsema_real_eip !71
  %189 = add i64 %168, 8, !mcsema_real_eip !71
  store i64 %189, i64* %XSP, !mcsema_real_eip !71
  %190 = add i64 %189, 8, !mcsema_real_eip !72
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !72
  %192 = load i64, i64* %191, !mcsema_real_eip !72
  store i64 %192, i64* %XIP, !mcsema_real_eip !72
  store i64 %190, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 143}
!7 = !{i64 146}
!8 = !{i64 150}
!9 = !{i64 154}
!10 = !{i64 160}
!11 = !{i64 164}
!12 = !{i64 168}
!13 = !{i64 173}
!14 = !{i64 176}
!15 = !{i64 181}
!16 = !{i64 186}
!17 = !{i64 189}
!18 = !{i64 194}
!19 = !{i64 197}
!20 = !{i64 202}
!21 = !{i64 205}
!22 = !{i64 208}
!23 = !{i64 211}
!24 = !{i64 214}
!25 = !{i64 216}
!26 = !{i64 221}
!27 = !{i64 231}
!28 = !{i64 234}
!29 = !{i64 236}
!30 = !{i64 238}
!31 = !{i64 243}
!32 = !{i64 245}
!33 = !{i64 248}
!34 = !{i64 250}
!35 = !{i64 254}
!36 = !{i64 255}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 18}
!44 = !{i64 24}
!45 = !{i64 27}
!46 = !{i64 30}
!47 = !{i64 33}
!48 = !{i64 38}
!49 = !{i64 42}
!50 = !{i64 48}
!51 = !{i64 53}
!52 = !{i64 56}
!53 = !{i64 59}
!54 = !{i64 61}
!55 = !{i64 66}
!56 = !{i64 69}
!57 = !{i64 74}
!58 = !{i64 77}
!59 = !{i64 80}
!60 = !{i64 83}
!61 = !{i64 86}
!62 = !{i64 89}
!63 = !{i64 91}
!64 = !{i64 94}
!65 = !{i64 99}
!66 = !{i64 102}
!67 = !{i64 104}
!68 = !{i64 109}
!69 = !{i64 112}
!70 = !{i64 115}
!71 = !{i64 119}
!72 = !{i64 120}
