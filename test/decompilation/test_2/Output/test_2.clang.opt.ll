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
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
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
  br label %block_0x70, !mcsema_real_eip !2

block_0x70:                                       ; preds = %entry
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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  store i64 30, i64* %XDX, !mcsema_real_eip !7
  store i64 40, i64* %XCX, !mcsema_real_eip !8
  store i64 50, i64* %R8, !mcsema_real_eip !9
  store i64 60, i64* %R9, !mcsema_real_eip !10
  store i64 70, i64* %XAX, !mcsema_real_eip !11
  store i64 80, i64* %R10, !mcsema_real_eip !12
  %20 = add i64 %1, -4, !mcsema_real_eip !13
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !13
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %22, !mcsema_real_eip !13
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !14
  %23 = inttoptr i64 %RSP_val.5 to i64*, !mcsema_real_eip !14
  %24 = inttoptr i64 %RSP_val.5 to i32*, !mcsema_real_eip !14
  store i32 70, i32* %24, !mcsema_real_eip !14
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !15
  %25 = add i64 %RSP_val.6, 8, !mcsema_real_eip !15
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !15
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !15
  store i32 80, i32* %27, !mcsema_real_eip !15
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !16
  %28 = add i64 %RBP_val.7, -12, !mcsema_real_eip !16
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !16
  %R10D.8 = bitcast i64* %R10 to i32*, !mcsema_real_eip !16
  %R10D_val.9 = load i32, i32* %R10D.8, !mcsema_real_eip !16
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !16
  store i32 %R10D_val.9, i32* %30, !mcsema_real_eip !16
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !17
  %31 = add i64 %RBP_val.10, -16, !mcsema_real_eip !17
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !17
  %EAX.11 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.12 = load i32, i32* %EAX.11, !mcsema_real_eip !17
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !17
  store i32 %EAX_val.12, i32* %33, !mcsema_real_eip !17
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !18
  %34 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !18
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %35, !mcsema_real_eip !18
  store i64 %34, i64* %XSP, !mcsema_real_eip !18
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !18
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, !mcsema_real_eip !19
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !20
  %36 = add i64 %RBP_val.14, -8, !mcsema_real_eip !20
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !20
  %EAX_val.16 = load i32, i32* %EAX.11, !mcsema_real_eip !20
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.16, i32* %38, !mcsema_real_eip !20
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !21
  %39 = add i64 %RBP_val.17, -8, !mcsema_real_eip !21
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !21
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !21
  %42 = load i32, i32* %41, !mcsema_real_eip !21
  %43 = zext i32 %42 to i64, !mcsema_real_eip !21
  store i64 %43, i64* %XSI, !mcsema_real_eip !21
  %AL.18 = bitcast i64* %XAX to i8*, !mcsema_real_eip !22
  store i8 0, i8* %AL.18, !mcsema_real_eip !22
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !23
  %RDX_val.21 = load i64, i64* %XDX, !mcsema_real_eip !23
  %RCX_val.22 = load i64, i64* %XCX, !mcsema_real_eip !23
  %R8_val.23 = load i64, i64* %R8, !mcsema_real_eip !23
  %R9_val.24 = load i64, i64* %R9, !mcsema_real_eip !23
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %44 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !23
  %45 = load i64, i64* %44, !mcsema_real_eip !23
  %46 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !23
  %48 = load i64, i64* %47, !mcsema_real_eip !23
  %49 = add i64 %46, 8, !mcsema_real_eip !23
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !23
  %51 = load i64, i64* %50, !mcsema_real_eip !23
  %52 = add i64 %49, 8, !mcsema_real_eip !23
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !23
  %54 = load i64, i64* %53, !mcsema_real_eip !23
  %55 = add i64 %52, 8, !mcsema_real_eip !23
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !23
  %57 = load i64, i64* %56, !mcsema_real_eip !23
  %58 = add i64 %55, 8, !mcsema_real_eip !23
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !23
  %60 = load i64, i64* %59, !mcsema_real_eip !23
  %61 = sub i64 %RSP_val.25, 8, !mcsema_real_eip !23
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %62, !mcsema_real_eip !23
  store i64 %61, i64* %XSP, !mcsema_real_eip !23
  %63 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.19, i64 %43, i64 %RDX_val.21, i64 %RCX_val.22, i64 %R8_val.23, i64 %R9_val.24, i64 %45, i64 %48, i64 %51, i64 %54, i64 %57, i64 %60), !mcsema_real_eip !23
  store i64 %63, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %64 = add i64 %RBP_val.27, -8, !mcsema_real_eip !24
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !24
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !24
  %67 = load i32, i32* %66, !mcsema_real_eip !24
  %68 = zext i32 %67 to i64, !mcsema_real_eip !24
  store i64 %68, i64* %XCX, !mcsema_real_eip !24
  %69 = add i64 %RBP_val.27, -20, !mcsema_real_eip !25
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !25
  %EAX_val.30 = load i32, i32* %EAX.11, !mcsema_real_eip !25
  %71 = inttoptr i64 %69 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.30, i32* %71, !mcsema_real_eip !25
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.32 = load i32, i32* %ECX.31, !mcsema_real_eip !26
  %72 = zext i32 %ECX_val.32 to i64, !mcsema_real_eip !26
  store i64 %72, i64* %XAX, !mcsema_real_eip !26
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !27
  %73 = add i64 48, %RSP_val.33, !mcsema_real_eip !27
  %74 = xor i64 %73, %RSP_val.33, !mcsema_real_eip !27
  %75 = xor i64 %74, 48, !mcsema_real_eip !27
  %76 = and i64 %75, 16, !mcsema_real_eip !27
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !27
  store i1 %77, i1* %AF, !mcsema_real_eip !27
  %78 = lshr i64 %73, 63, !mcsema_real_eip !27
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !27
  store i1 %79, i1* %SF, !mcsema_real_eip !27
  %80 = icmp eq i64 %73, 0, !mcsema_real_eip !27
  store i1 %80, i1* %ZF, !mcsema_real_eip !27
  %81 = xor i64 %RSP_val.33, 48, !mcsema_real_eip !27
  %82 = xor i64 %81, -1, !mcsema_real_eip !27
  %83 = and i64 %82, %74, !mcsema_real_eip !27
  %84 = lshr i64 %83, 63, !mcsema_real_eip !27
  %85 = and i64 %84, 1, !mcsema_real_eip !27
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !27
  store i1 %86, i1* %OF, !mcsema_real_eip !27
  %87 = trunc i64 %73 to i8, !mcsema_real_eip !27
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !27
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !27
  %90 = xor i1 %89, true, !mcsema_real_eip !27
  store i1 %90, i1* %PF, !mcsema_real_eip !27
  %91 = icmp ult i64 %73, %RSP_val.33, !mcsema_real_eip !27
  store i1 %91, i1* %CF, !mcsema_real_eip !27
  store i64 %73, i64* %XSP, !mcsema_real_eip !27
  %92 = inttoptr i64 %73 to i64*, !mcsema_real_eip !28
  %93 = load i64, i64* %92, !mcsema_real_eip !28
  store i64 %93, i64* %XBP, !mcsema_real_eip !28
  %94 = add i64 %73, 8, !mcsema_real_eip !28
  store i64 %94, i64* %XSP, !mcsema_real_eip !28
  %95 = add i64 %94, 8, !mcsema_real_eip !29
  %96 = inttoptr i64 %94 to i64*, !mcsema_real_eip !29
  %97 = load i64, i64* %96, !mcsema_real_eip !29
  store i64 %97, i64* %XIP, !mcsema_real_eip !29
  store i64 %95, i64* %XSP, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !30
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !30
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !30
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !30
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !30
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !30
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !30
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !30
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !30
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !30
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !30
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !30
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !30
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !30
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !30
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !30
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !30
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !30
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !30
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !30
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !30
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !30
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !30
  br label %block_0x0, !mcsema_real_eip !30

block_0x0:                                        ; preds = %entry
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !30
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %1 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !30
  store i64 %RBP_val.36, i64* %2, !mcsema_real_eip !30
  store i64 %1, i64* %XSP, !mcsema_real_eip !30
  store i64 %1, i64* %XBP, !mcsema_real_eip !31
  %3 = add i64 %1, 24, !mcsema_real_eip !32
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !32
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !32
  %6 = load i32, i32* %5, !mcsema_real_eip !32
  %7 = zext i32 %6 to i64, !mcsema_real_eip !32
  store i64 %7, i64* %XAX, !mcsema_real_eip !32
  %8 = add i64 %1, 16, !mcsema_real_eip !33
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !33
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !33
  %11 = load i32, i32* %10, !mcsema_real_eip !33
  %12 = zext i32 %11 to i64, !mcsema_real_eip !33
  store i64 %12, i64* %R10, !mcsema_real_eip !33
  %13 = add i64 %1, -4, !mcsema_real_eip !34
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !34
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !34
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !34
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !34
  store i32 %EDI_val.43, i32* %15, !mcsema_real_eip !34
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !35
  %16 = add i64 %RBP_val.44, -8, !mcsema_real_eip !35
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !35
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !35
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !35
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !35
  store i32 %ESI_val.46, i32* %18, !mcsema_real_eip !35
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !36
  %19 = add i64 %RBP_val.47, -12, !mcsema_real_eip !36
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !36
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !36
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !36
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !36
  store i32 %EDX_val.49, i32* %21, !mcsema_real_eip !36
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !37
  %22 = add i64 %RBP_val.50, -16, !mcsema_real_eip !37
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !37
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !37
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.52, i32* %24, !mcsema_real_eip !37
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !38
  %25 = add i64 %RBP_val.53, -20, !mcsema_real_eip !38
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !38
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !38
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !38
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !38
  store i32 %R8D_val.55, i32* %27, !mcsema_real_eip !38
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !39
  %28 = add i64 %RBP_val.56, -24, !mcsema_real_eip !39
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !39
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !39
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !39
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !39
  store i32 %R9D_val.58, i32* %30, !mcsema_real_eip !39
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !40
  %31 = add i64 %RBP_val.59, -28, !mcsema_real_eip !40
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !40
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !40
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !40
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !40
  store i32 %R10D_val.61, i32* %33, !mcsema_real_eip !40
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !41
  %34 = add i64 %RBP_val.62, -32, !mcsema_real_eip !41
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !41
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !41
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !41
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !41
  store i32 %EAX_val.64, i32* %36, !mcsema_real_eip !41
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !42
  %37 = add i64 %RBP_val.65, -4, !mcsema_real_eip !42
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !42
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !42
  %40 = load i32, i32* %39, !mcsema_real_eip !42
  %41 = zext i32 %40 to i64, !mcsema_real_eip !42
  store i64 %41, i64* %XAX, !mcsema_real_eip !42
  %42 = add i64 %RBP_val.65, -8, !mcsema_real_eip !43
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !43
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !43
  %45 = load i32, i32* %44, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.63, !mcsema_real_eip !43
  %46 = add i32 %EAX_val.68, %45, !mcsema_real_eip !43
  %47 = xor i32 %46, %45, !mcsema_real_eip !43
  %48 = xor i32 %47, %EAX_val.68, !mcsema_real_eip !43
  %49 = and i32 %48, 16, !mcsema_real_eip !43
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !43
  store i1 %50, i1* %AF, !mcsema_real_eip !43
  %51 = lshr i32 %46, 31, !mcsema_real_eip !43
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !43
  store i1 %52, i1* %SF, !mcsema_real_eip !43
  %53 = icmp eq i32 %46, 0, !mcsema_real_eip !43
  store i1 %53, i1* %ZF, !mcsema_real_eip !43
  %54 = xor i32 %45, %EAX_val.68, !mcsema_real_eip !43
  %55 = xor i32 %54, -1, !mcsema_real_eip !43
  %56 = and i32 %55, %47, !mcsema_real_eip !43
  %57 = lshr i32 %56, 31, !mcsema_real_eip !43
  %58 = and i32 %57, 1, !mcsema_real_eip !43
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !43
  store i1 %59, i1* %OF, !mcsema_real_eip !43
  %60 = trunc i32 %46 to i8, !mcsema_real_eip !43
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !43
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !43
  %63 = xor i1 %62, true, !mcsema_real_eip !43
  store i1 %63, i1* %PF, !mcsema_real_eip !43
  %64 = icmp ult i32 %46, %45, !mcsema_real_eip !43
  store i1 %64, i1* %CF, !mcsema_real_eip !43
  %65 = zext i32 %46 to i64, !mcsema_real_eip !43
  store i64 %65, i64* %XAX, !mcsema_real_eip !43
  %66 = add i64 %RBP_val.65, -12, !mcsema_real_eip !44
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !44
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !44
  %69 = load i32, i32* %68, !mcsema_real_eip !44
  %EAX_val.71 = load i32, i32* %EAX.63, !mcsema_real_eip !44
  %70 = add i32 %EAX_val.71, %69, !mcsema_real_eip !44
  %71 = xor i32 %70, %69, !mcsema_real_eip !44
  %72 = xor i32 %71, %EAX_val.71, !mcsema_real_eip !44
  %73 = and i32 %72, 16, !mcsema_real_eip !44
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !44
  store i1 %74, i1* %AF, !mcsema_real_eip !44
  %75 = lshr i32 %70, 31, !mcsema_real_eip !44
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !44
  store i1 %76, i1* %SF, !mcsema_real_eip !44
  %77 = icmp eq i32 %70, 0, !mcsema_real_eip !44
  store i1 %77, i1* %ZF, !mcsema_real_eip !44
  %78 = xor i32 %69, %EAX_val.71, !mcsema_real_eip !44
  %79 = xor i32 %78, -1, !mcsema_real_eip !44
  %80 = and i32 %79, %71, !mcsema_real_eip !44
  %81 = lshr i32 %80, 31, !mcsema_real_eip !44
  %82 = and i32 %81, 1, !mcsema_real_eip !44
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !44
  store i1 %83, i1* %OF, !mcsema_real_eip !44
  %84 = trunc i32 %70 to i8, !mcsema_real_eip !44
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !44
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !44
  %87 = xor i1 %86, true, !mcsema_real_eip !44
  store i1 %87, i1* %PF, !mcsema_real_eip !44
  %88 = icmp ult i32 %70, %69, !mcsema_real_eip !44
  store i1 %88, i1* %CF, !mcsema_real_eip !44
  %89 = zext i32 %70 to i64, !mcsema_real_eip !44
  store i64 %89, i64* %XAX, !mcsema_real_eip !44
  %90 = add i64 %RBP_val.65, -16, !mcsema_real_eip !45
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !45
  %92 = inttoptr i64 %90 to i32*, !mcsema_real_eip !45
  %93 = load i32, i32* %92, !mcsema_real_eip !45
  %EAX_val.74 = load i32, i32* %EAX.63, !mcsema_real_eip !45
  %94 = add i32 %EAX_val.74, %93, !mcsema_real_eip !45
  %95 = xor i32 %94, %93, !mcsema_real_eip !45
  %96 = xor i32 %95, %EAX_val.74, !mcsema_real_eip !45
  %97 = and i32 %96, 16, !mcsema_real_eip !45
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !45
  store i1 %98, i1* %AF, !mcsema_real_eip !45
  %99 = lshr i32 %94, 31, !mcsema_real_eip !45
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !45
  store i1 %100, i1* %SF, !mcsema_real_eip !45
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !45
  store i1 %101, i1* %ZF, !mcsema_real_eip !45
  %102 = xor i32 %93, %EAX_val.74, !mcsema_real_eip !45
  %103 = xor i32 %102, -1, !mcsema_real_eip !45
  %104 = and i32 %103, %95, !mcsema_real_eip !45
  %105 = lshr i32 %104, 31, !mcsema_real_eip !45
  %106 = and i32 %105, 1, !mcsema_real_eip !45
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !45
  store i1 %107, i1* %OF, !mcsema_real_eip !45
  %108 = trunc i32 %94 to i8, !mcsema_real_eip !45
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !45
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !45
  %111 = xor i1 %110, true, !mcsema_real_eip !45
  store i1 %111, i1* %PF, !mcsema_real_eip !45
  %112 = icmp ult i32 %94, %93, !mcsema_real_eip !45
  store i1 %112, i1* %CF, !mcsema_real_eip !45
  %113 = zext i32 %94 to i64, !mcsema_real_eip !45
  store i64 %113, i64* %XAX, !mcsema_real_eip !45
  %114 = add i64 %RBP_val.65, -20, !mcsema_real_eip !46
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !46
  %116 = inttoptr i64 %114 to i32*, !mcsema_real_eip !46
  %117 = load i32, i32* %116, !mcsema_real_eip !46
  %EAX_val.77 = load i32, i32* %EAX.63, !mcsema_real_eip !46
  %118 = add i32 %EAX_val.77, %117, !mcsema_real_eip !46
  %119 = xor i32 %118, %117, !mcsema_real_eip !46
  %120 = xor i32 %119, %EAX_val.77, !mcsema_real_eip !46
  %121 = and i32 %120, 16, !mcsema_real_eip !46
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !46
  store i1 %122, i1* %AF, !mcsema_real_eip !46
  %123 = lshr i32 %118, 31, !mcsema_real_eip !46
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !46
  store i1 %124, i1* %SF, !mcsema_real_eip !46
  %125 = icmp eq i32 %118, 0, !mcsema_real_eip !46
  store i1 %125, i1* %ZF, !mcsema_real_eip !46
  %126 = xor i32 %117, %EAX_val.77, !mcsema_real_eip !46
  %127 = xor i32 %126, -1, !mcsema_real_eip !46
  %128 = and i32 %127, %119, !mcsema_real_eip !46
  %129 = lshr i32 %128, 31, !mcsema_real_eip !46
  %130 = and i32 %129, 1, !mcsema_real_eip !46
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !46
  store i1 %131, i1* %OF, !mcsema_real_eip !46
  %132 = trunc i32 %118 to i8, !mcsema_real_eip !46
  %133 = call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !46
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !46
  %135 = xor i1 %134, true, !mcsema_real_eip !46
  store i1 %135, i1* %PF, !mcsema_real_eip !46
  %136 = icmp ult i32 %118, %117, !mcsema_real_eip !46
  store i1 %136, i1* %CF, !mcsema_real_eip !46
  %137 = zext i32 %118 to i64, !mcsema_real_eip !46
  store i64 %137, i64* %XAX, !mcsema_real_eip !46
  %138 = add i64 %RBP_val.65, -24, !mcsema_real_eip !47
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !47
  %140 = inttoptr i64 %138 to i32*, !mcsema_real_eip !47
  %141 = load i32, i32* %140, !mcsema_real_eip !47
  %EAX_val.80 = load i32, i32* %EAX.63, !mcsema_real_eip !47
  %142 = add i32 %EAX_val.80, %141, !mcsema_real_eip !47
  %143 = xor i32 %142, %141, !mcsema_real_eip !47
  %144 = xor i32 %143, %EAX_val.80, !mcsema_real_eip !47
  %145 = and i32 %144, 16, !mcsema_real_eip !47
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !47
  store i1 %146, i1* %AF, !mcsema_real_eip !47
  %147 = lshr i32 %142, 31, !mcsema_real_eip !47
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !47
  store i1 %148, i1* %SF, !mcsema_real_eip !47
  %149 = icmp eq i32 %142, 0, !mcsema_real_eip !47
  store i1 %149, i1* %ZF, !mcsema_real_eip !47
  %150 = xor i32 %141, %EAX_val.80, !mcsema_real_eip !47
  %151 = xor i32 %150, -1, !mcsema_real_eip !47
  %152 = and i32 %151, %143, !mcsema_real_eip !47
  %153 = lshr i32 %152, 31, !mcsema_real_eip !47
  %154 = and i32 %153, 1, !mcsema_real_eip !47
  %155 = trunc i32 %154 to i1, !mcsema_real_eip !47
  store i1 %155, i1* %OF, !mcsema_real_eip !47
  %156 = trunc i32 %142 to i8, !mcsema_real_eip !47
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !47
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !47
  %159 = xor i1 %158, true, !mcsema_real_eip !47
  store i1 %159, i1* %PF, !mcsema_real_eip !47
  %160 = icmp ult i32 %142, %141, !mcsema_real_eip !47
  store i1 %160, i1* %CF, !mcsema_real_eip !47
  %161 = zext i32 %142 to i64, !mcsema_real_eip !47
  store i64 %161, i64* %XAX, !mcsema_real_eip !47
  %162 = add i64 %RBP_val.65, -28, !mcsema_real_eip !48
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !48
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !48
  %165 = load i32, i32* %164, !mcsema_real_eip !48
  %EAX_val.83 = load i32, i32* %EAX.63, !mcsema_real_eip !48
  %166 = add i32 %EAX_val.83, %165, !mcsema_real_eip !48
  %167 = xor i32 %166, %165, !mcsema_real_eip !48
  %168 = xor i32 %167, %EAX_val.83, !mcsema_real_eip !48
  %169 = and i32 %168, 16, !mcsema_real_eip !48
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !48
  store i1 %170, i1* %AF, !mcsema_real_eip !48
  %171 = lshr i32 %166, 31, !mcsema_real_eip !48
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !48
  store i1 %172, i1* %SF, !mcsema_real_eip !48
  %173 = icmp eq i32 %166, 0, !mcsema_real_eip !48
  store i1 %173, i1* %ZF, !mcsema_real_eip !48
  %174 = xor i32 %165, %EAX_val.83, !mcsema_real_eip !48
  %175 = xor i32 %174, -1, !mcsema_real_eip !48
  %176 = and i32 %175, %167, !mcsema_real_eip !48
  %177 = lshr i32 %176, 31, !mcsema_real_eip !48
  %178 = and i32 %177, 1, !mcsema_real_eip !48
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !48
  store i1 %179, i1* %OF, !mcsema_real_eip !48
  %180 = trunc i32 %166 to i8, !mcsema_real_eip !48
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !48
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !48
  %183 = xor i1 %182, true, !mcsema_real_eip !48
  store i1 %183, i1* %PF, !mcsema_real_eip !48
  %184 = icmp ult i32 %166, %165, !mcsema_real_eip !48
  store i1 %184, i1* %CF, !mcsema_real_eip !48
  %185 = zext i32 %166 to i64, !mcsema_real_eip !48
  store i64 %185, i64* %XAX, !mcsema_real_eip !48
  %186 = add i64 %RBP_val.65, -36, !mcsema_real_eip !49
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !49
  %EAX_val.86 = load i32, i32* %EAX.63, !mcsema_real_eip !49
  %188 = inttoptr i64 %186 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.86, i32* %188, !mcsema_real_eip !49
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !50
  %189 = add i64 %RBP_val.87, -36, !mcsema_real_eip !50
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !50
  %191 = inttoptr i64 %189 to i32*, !mcsema_real_eip !50
  %192 = load i32, i32* %191, !mcsema_real_eip !50
  %193 = sub i32 %192, 40, !mcsema_real_eip !50
  %194 = xor i32 %193, %192, !mcsema_real_eip !50
  %195 = xor i32 %194, 40, !mcsema_real_eip !50
  %196 = and i32 %195, 16, !mcsema_real_eip !50
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !50
  store i1 %197, i1* %AF, !mcsema_real_eip !50
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !50
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !50
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !50
  %201 = xor i1 %200, true, !mcsema_real_eip !50
  store i1 %201, i1* %PF, !mcsema_real_eip !50
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !50
  store i1 %202, i1* %ZF, !mcsema_real_eip !50
  %203 = lshr i32 %193, 31, !mcsema_real_eip !50
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !50
  store i1 %204, i1* %SF, !mcsema_real_eip !50
  %205 = icmp ult i32 %192, 40, !mcsema_real_eip !50
  store i1 %205, i1* %CF, !mcsema_real_eip !50
  %206 = xor i32 %192, 40, !mcsema_real_eip !50
  %207 = and i32 %206, %194, !mcsema_real_eip !50
  %208 = lshr i32 %207, 31, !mcsema_real_eip !50
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !50
  store i1 %209, i1* %OF, !mcsema_real_eip !50
  %210 = icmp eq i1 %204, %209, !mcsema_real_eip !51
  %211 = icmp eq i1 %210, false, !mcsema_real_eip !51
  %212 = or i1 %202, %211, !mcsema_real_eip !51
  br i1 %212, label %block_0x56, label %block_0x48, !mcsema_real_eip !51

block_0x48:                                       ; preds = %block_0x0
  %213 = load i32, i32* %191, !mcsema_real_eip !52
  %214 = zext i32 %213 to i64, !mcsema_real_eip !52
  store i64 %214, i64* %XAX, !mcsema_real_eip !52
  %215 = add i64 %RBP_val.87, -32, !mcsema_real_eip !53
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !53
  %217 = inttoptr i64 %215 to i32*, !mcsema_real_eip !53
  %218 = load i32, i32* %217, !mcsema_real_eip !53
  %EAX_val.98 = load i32, i32* %EAX.63, !mcsema_real_eip !53
  %219 = add i32 %EAX_val.98, %218, !mcsema_real_eip !53
  %220 = xor i32 %219, %218, !mcsema_real_eip !53
  %221 = xor i32 %220, %EAX_val.98, !mcsema_real_eip !53
  %222 = and i32 %221, 16, !mcsema_real_eip !53
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !53
  store i1 %223, i1* %AF, !mcsema_real_eip !53
  %224 = lshr i32 %219, 31, !mcsema_real_eip !53
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !53
  store i1 %225, i1* %SF, !mcsema_real_eip !53
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !53
  store i1 %226, i1* %ZF, !mcsema_real_eip !53
  %227 = xor i32 %218, %EAX_val.98, !mcsema_real_eip !53
  %228 = xor i32 %227, -1, !mcsema_real_eip !53
  %229 = and i32 %228, %220, !mcsema_real_eip !53
  %230 = lshr i32 %229, 31, !mcsema_real_eip !53
  %231 = and i32 %230, 1, !mcsema_real_eip !53
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !53
  store i1 %232, i1* %OF, !mcsema_real_eip !53
  %233 = trunc i32 %219 to i8, !mcsema_real_eip !53
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !53
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !53
  %236 = xor i1 %235, true, !mcsema_real_eip !53
  store i1 %236, i1* %PF, !mcsema_real_eip !53
  %237 = icmp ult i32 %219, %218, !mcsema_real_eip !53
  store i1 %237, i1* %CF, !mcsema_real_eip !53
  %238 = zext i32 %219 to i64, !mcsema_real_eip !53
  store i64 %238, i64* %XAX, !mcsema_real_eip !53
  %239 = add i64 %RBP_val.87, -40, !mcsema_real_eip !54
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !54
  %EAX_val.101 = load i32, i32* %EAX.63, !mcsema_real_eip !54
  %241 = inttoptr i64 %239 to i32*, !mcsema_real_eip !54
  store i32 %EAX_val.101, i32* %241, !mcsema_real_eip !54
  br label %block_0x5f, !mcsema_real_eip !55

block_0x56:                                       ; preds = %block_0x0
  %242 = load i32, i32* %191, !mcsema_real_eip !56
  %243 = zext i32 %242 to i64, !mcsema_real_eip !56
  store i64 %243, i64* %XAX, !mcsema_real_eip !56
  %244 = add i64 %RBP_val.87, -32, !mcsema_real_eip !57
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !57
  %EAX_val.91 = load i32, i32* %EAX.63, !mcsema_real_eip !57
  %246 = inttoptr i64 %244 to i32*, !mcsema_real_eip !57
  %247 = load i32, i32* %246, !mcsema_real_eip !57
  %248 = sub i32 %EAX_val.91, %247, !mcsema_real_eip !57
  %249 = xor i32 %248, %EAX_val.91, !mcsema_real_eip !57
  %250 = xor i32 %249, %247, !mcsema_real_eip !57
  %251 = and i32 %250, 16, !mcsema_real_eip !57
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !57
  store i1 %252, i1* %AF, !mcsema_real_eip !57
  %253 = trunc i32 %248 to i8, !mcsema_real_eip !57
  %254 = call i8 @llvm.ctpop.i8(i8 %253), !mcsema_real_eip !57
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !57
  %256 = xor i1 %255, true, !mcsema_real_eip !57
  store i1 %256, i1* %PF, !mcsema_real_eip !57
  %257 = icmp eq i32 %248, 0, !mcsema_real_eip !57
  store i1 %257, i1* %ZF, !mcsema_real_eip !57
  %258 = lshr i32 %248, 31, !mcsema_real_eip !57
  %259 = trunc i32 %258 to i1, !mcsema_real_eip !57
  store i1 %259, i1* %SF, !mcsema_real_eip !57
  %260 = icmp ult i32 %EAX_val.91, %247, !mcsema_real_eip !57
  store i1 %260, i1* %CF, !mcsema_real_eip !57
  %261 = xor i32 %EAX_val.91, %247, !mcsema_real_eip !57
  %262 = and i32 %261, %249, !mcsema_real_eip !57
  %263 = lshr i32 %262, 31, !mcsema_real_eip !57
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !57
  store i1 %264, i1* %OF, !mcsema_real_eip !57
  %265 = zext i32 %248 to i64, !mcsema_real_eip !57
  store i64 %265, i64* %XAX, !mcsema_real_eip !57
  %266 = add i64 %RBP_val.87, -40, !mcsema_real_eip !58
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !58
  %EAX_val.94 = load i32, i32* %EAX.63, !mcsema_real_eip !58
  %268 = inttoptr i64 %266 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.94, i32* %268, !mcsema_real_eip !58
  br label %block_0x5f, !mcsema_real_eip !52

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !59
  %269 = add i64 %RBP_val.102, -40, !mcsema_real_eip !59
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !59
  %271 = inttoptr i64 %269 to i32*, !mcsema_real_eip !59
  %272 = load i32, i32* %271, !mcsema_real_eip !59
  %273 = zext i32 %272 to i64, !mcsema_real_eip !59
  store i64 %273, i64* %XAX, !mcsema_real_eip !59
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !60
  %274 = inttoptr i64 %RSP_val.103 to i64*, !mcsema_real_eip !60
  %275 = load i64, i64* %274, !mcsema_real_eip !60
  store i64 %275, i64* %XBP, !mcsema_real_eip !60
  %276 = add i64 %RSP_val.103, 8, !mcsema_real_eip !60
  store i64 %276, i64* %XSP, !mcsema_real_eip !60
  %277 = add i64 %276, 8, !mcsema_real_eip !61
  %278 = inttoptr i64 %276 to i64*, !mcsema_real_eip !61
  %279 = load i64, i64* %278, !mcsema_real_eip !61
  store i64 %279, i64* %XIP, !mcsema_real_eip !61
  store i64 %277, i64* %XSP, !mcsema_real_eip !61
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

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 135}
!9 = !{i64 140}
!10 = !{i64 146}
!11 = !{i64 152}
!12 = !{i64 157}
!13 = !{i64 163}
!14 = !{i64 170}
!15 = !{i64 177}
!16 = !{i64 185}
!17 = !{i64 189}
!18 = !{i64 192}
!19 = !{i64 197}
!20 = !{i64 207}
!21 = !{i64 210}
!22 = !{i64 213}
!23 = !{i64 215}
!24 = !{i64 220}
!25 = !{i64 223}
!26 = !{i64 226}
!27 = !{i64 228}
!28 = !{i64 232}
!29 = !{i64 233}
!30 = !{i64 0}
!31 = !{i64 1}
!32 = !{i64 4}
!33 = !{i64 7}
!34 = !{i64 11}
!35 = !{i64 14}
!36 = !{i64 17}
!37 = !{i64 20}
!38 = !{i64 23}
!39 = !{i64 27}
!40 = !{i64 31}
!41 = !{i64 35}
!42 = !{i64 38}
!43 = !{i64 41}
!44 = !{i64 44}
!45 = !{i64 47}
!46 = !{i64 50}
!47 = !{i64 53}
!48 = !{i64 56}
!49 = !{i64 59}
!50 = !{i64 62}
!51 = !{i64 66}
!52 = !{i64 72}
!53 = !{i64 75}
!54 = !{i64 78}
!55 = !{i64 81}
!56 = !{i64 86}
!57 = !{i64 89}
!58 = !{i64 92}
!59 = !{i64 95}
!60 = !{i64 98}
!61 = !{i64 99}
