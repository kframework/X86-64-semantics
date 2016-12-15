; ModuleID = 'Output/test_23.clang.opt.bc'
source_filename = "Output/test_23.clang.bc"
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
module asm "  .globl read;"
module asm "  .globl _read;"
module asm "  .type _read,@function"
module asm "_read:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read,0b-_read;"
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
module asm "  .globl exit;"
module asm "  .globl _exit;"
module asm "  .type _exit,@function"
module asm "_exit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq exit@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _exit,0b-_exit;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_b0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_b0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [184 x i8] }>
%1 = type <{ [77 x i8] }>
%2 = type <{ [95 x i8] }>
%3 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x320 = internal constant %0 <{ [184 x i8] c"r\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00d\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00V\01\00\00\00\00\00\00" }>, align 64
@data_0x3e0 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x42d = internal constant %2 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64
@data_0x490 = internal constant %3 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"k\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
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
  br label %block_0xb0, !mcsema_real_eip !2

block_0xb0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 112, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 112, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 112, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 112, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XAX, !mcsema_real_eip !5
  store i64 28, i64* %XCX, !mcsema_real_eip !6
  %ECX.8 = bitcast i64* %XCX to i32*, !mcsema_real_eip !7
  %ECX_val.9 = load i32, i32* %ECX.8, !mcsema_real_eip !7
  %20 = zext i32 %ECX_val.9 to i64, !mcsema_real_eip !7
  store i64 %20, i64* %XDX, !mcsema_real_eip !7
  %21 = add i64 %1, -64, !mcsema_real_eip !8
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !8
  store i64 %21, i64* %R8, !mcsema_real_eip !8
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !9
  %23 = add i64 %1, -4, !mcsema_real_eip !10
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !10
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !10
  store i32 0, i32* %25, !mcsema_real_eip !10
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !11
  %26 = add i64 %RBP_val.12, -8, !mcsema_real_eip !11
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !11
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !11
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !11
  store i32 %EDI_val.14, i32* %28, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %29 = add i64 %RBP_val.15, -16, !mcsema_real_eip !12
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !12
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !12
  store i64 %RSI_val.16, i64* %30, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %31 = add i64 %RBP_val.17, -36, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !13
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %33, !mcsema_real_eip !13
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !14
  %34 = add i64 %RBP_val.18, -20, !mcsema_real_eip !14
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !14
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !14
  store i32 1, i32* %36, !mcsema_real_eip !14
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !15
  %37 = add i64 %RBP_val.19, -24, !mcsema_real_eip !15
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !15
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !15
  store i32 1, i32* %39, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %40 = add i64 %RBP_val.20, -24, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !16
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !16
  %43 = load i32, i32* %42, !mcsema_real_eip !16
  %44 = sext i32 %43 to i64, !mcsema_real_eip !16
  store i64 %44, i64* %XSI, !mcsema_real_eip !16
  %45 = sext i64 %44 to i128, !mcsema_real_eip !17
  %46 = mul i128 %45, 11, !mcsema_real_eip !17
  %47 = trunc i128 %46 to i64, !mcsema_real_eip !17
  %48 = sext i64 %47 to i128, !mcsema_real_eip !17
  %49 = icmp ne i128 %48, %46, !mcsema_real_eip !17
  %50 = icmp slt i64 %47, 0, !mcsema_real_eip !17
  store i1 %50, i1* %SF, !mcsema_real_eip !17
  store i1 %49, i1* %OF, !mcsema_real_eip !17
  store i1 %49, i1* %CF, !mcsema_real_eip !17
  store i64 %47, i64* %XSI, !mcsema_real_eip !17
  %R9_val.22 = load i64, i64* %R9, !mcsema_real_eip !18
  %51 = add i64 %47, %R9_val.22, !mcsema_real_eip !18
  %52 = xor i64 %51, %R9_val.22, !mcsema_real_eip !18
  %53 = xor i64 %52, %47, !mcsema_real_eip !18
  %54 = and i64 %53, 16, !mcsema_real_eip !18
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !18
  store i1 %55, i1* %AF, !mcsema_real_eip !18
  %56 = lshr i64 %51, 63, !mcsema_real_eip !18
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !18
  store i1 %57, i1* %SF, !mcsema_real_eip !18
  %58 = icmp eq i64 %51, 0, !mcsema_real_eip !18
  store i1 %58, i1* %ZF, !mcsema_real_eip !18
  %59 = xor i64 %R9_val.22, %47, !mcsema_real_eip !18
  %60 = xor i64 %59, -1, !mcsema_real_eip !18
  %61 = and i64 %60, %52, !mcsema_real_eip !18
  %62 = lshr i64 %61, 63, !mcsema_real_eip !18
  %63 = and i64 %62, 1, !mcsema_real_eip !18
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !18
  store i1 %64, i1* %OF, !mcsema_real_eip !18
  %65 = trunc i64 %51 to i8, !mcsema_real_eip !18
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !18
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !18
  %68 = xor i1 %67, true, !mcsema_real_eip !18
  store i1 %68, i1* %PF, !mcsema_real_eip !18
  %69 = icmp ult i64 %51, %R9_val.22, !mcsema_real_eip !18
  store i1 %69, i1* %CF, !mcsema_real_eip !18
  store i64 %51, i64* %R9, !mcsema_real_eip !18
  %70 = add i64 %RBP_val.20, -20, !mcsema_real_eip !19
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !19
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !19
  %73 = load i32, i32* %72, !mcsema_real_eip !19
  %74 = sext i32 %73 to i64, !mcsema_real_eip !19
  store i64 %74, i64* %XSI, !mcsema_real_eip !19
  %75 = add i64 %51, %74, !mcsema_real_eip !20
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !20
  %77 = inttoptr i64 %75 to i8*, !mcsema_real_eip !20
  store i8 88, i8* %77, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %78 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !21
  store i64 %78, i64* %XDI, !mcsema_real_eip !21
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %R8_val.29, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !23
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !23
  %79 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !23
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %80, !mcsema_real_eip !23
  store i64 %79, i64* %XSP, !mcsema_real_eip !23
  %81 = call x86_64_sysvcc i64 @_read(i64 %78, i64 %R8_val.29, i64 %RDX_val.32), !mcsema_real_eip !23
  store i64 %81, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !24
  %82 = add i64 %RBP_val.34, -72, !mcsema_real_eip !24
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !24
  store i64 %81, i64* %83, !mcsema_real_eip !24
  br label %block_0x114, !mcsema_real_eip !25

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !25
  %84 = add i64 %RBP_val.36, -36, !mcsema_real_eip !25
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !25
  %86 = inttoptr i64 %84 to i32*, !mcsema_real_eip !25
  %87 = load i32, i32* %86, !mcsema_real_eip !25
  %88 = sub i32 %87, 28, !mcsema_real_eip !25
  %89 = xor i32 %88, %87, !mcsema_real_eip !25
  %90 = xor i32 %89, 28, !mcsema_real_eip !25
  %91 = and i32 %90, 16, !mcsema_real_eip !25
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !25
  store i1 %92, i1* %AF, !mcsema_real_eip !25
  %93 = trunc i32 %88 to i8, !mcsema_real_eip !25
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !25
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !25
  %96 = xor i1 %95, true, !mcsema_real_eip !25
  store i1 %96, i1* %PF, !mcsema_real_eip !25
  %97 = icmp eq i32 %88, 0, !mcsema_real_eip !25
  store i1 %97, i1* %ZF, !mcsema_real_eip !25
  %98 = lshr i32 %88, 31, !mcsema_real_eip !25
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !25
  store i1 %99, i1* %SF, !mcsema_real_eip !25
  %100 = icmp ult i32 %87, 28, !mcsema_real_eip !25
  store i1 %100, i1* %CF, !mcsema_real_eip !25
  %101 = xor i32 %87, 28, !mcsema_real_eip !25
  %102 = and i32 %101, %89, !mcsema_real_eip !25
  %103 = lshr i32 %102, 31, !mcsema_real_eip !25
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !25
  store i1 %104, i1* %OF, !mcsema_real_eip !25
  %105 = icmp eq i1 %99, %104, !mcsema_real_eip !26
  br i1 %105, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !26

block_0x11e:                                      ; preds = %block_0x114
  %106 = add i64 %RBP_val.36, -20, !mcsema_real_eip !27
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !27
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !27
  %109 = load i32, i32* %108, !mcsema_real_eip !27
  %110 = zext i32 %109 to i64, !mcsema_real_eip !27
  store i64 %110, i64* %XAX, !mcsema_real_eip !27
  %111 = add i64 %RBP_val.36, -28, !mcsema_real_eip !28
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !28
  %EAX_val.48 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.48, i32* %113, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !29
  %114 = add i64 %RBP_val.49, -24, !mcsema_real_eip !29
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !29
  %116 = inttoptr i64 %114 to i32*, !mcsema_real_eip !29
  %117 = load i32, i32* %116, !mcsema_real_eip !29
  %118 = zext i32 %117 to i64, !mcsema_real_eip !29
  store i64 %118, i64* %XAX, !mcsema_real_eip !29
  %119 = add i64 %RBP_val.49, -32, !mcsema_real_eip !30
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !30
  %EAX_val.52 = load i32, i32* %EAX.4, !mcsema_real_eip !30
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.52, i32* %121, !mcsema_real_eip !30
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !31
  %122 = add i64 %RBP_val.53, -36, !mcsema_real_eip !31
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !31
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !31
  %125 = load i32, i32* %124, !mcsema_real_eip !31
  %126 = sext i32 %125 to i64, !mcsema_real_eip !31
  store i64 %126, i64* %XCX, !mcsema_real_eip !31
  %127 = add i64 %RBP_val.53, -64, !mcsema_real_eip !32
  %128 = add i64 %127, %126, !mcsema_real_eip !32
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !32
  %130 = inttoptr i64 %128 to i8*, !mcsema_real_eip !32
  %131 = load i8, i8* %130, !mcsema_real_eip !32
  %132 = sext i8 %131 to i32, !mcsema_real_eip !32
  %133 = zext i32 %132 to i64, !mcsema_real_eip !32
  store i64 %133, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.57 = load i32, i32* %EAX.4, !mcsema_real_eip !33
  %134 = add i32 -97, %EAX_val.57, !mcsema_real_eip !33
  %135 = xor i32 %134, %EAX_val.57, !mcsema_real_eip !33
  %136 = xor i32 %135, -97, !mcsema_real_eip !33
  %137 = and i32 %136, 16, !mcsema_real_eip !33
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !33
  store i1 %138, i1* %AF, !mcsema_real_eip !33
  %139 = lshr i32 %134, 31, !mcsema_real_eip !33
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !33
  store i1 %140, i1* %SF, !mcsema_real_eip !33
  %141 = icmp eq i32 %134, 0, !mcsema_real_eip !33
  store i1 %141, i1* %ZF, !mcsema_real_eip !33
  %142 = xor i32 %EAX_val.57, -97, !mcsema_real_eip !33
  %143 = xor i32 %142, -1, !mcsema_real_eip !33
  %144 = and i32 %143, %135, !mcsema_real_eip !33
  %145 = lshr i32 %144, 31, !mcsema_real_eip !33
  %146 = and i32 %145, 1, !mcsema_real_eip !33
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !33
  store i1 %147, i1* %OF, !mcsema_real_eip !33
  %148 = trunc i32 %134 to i8, !mcsema_real_eip !33
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !33
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !33
  %151 = xor i1 %150, true, !mcsema_real_eip !33
  store i1 %151, i1* %PF, !mcsema_real_eip !33
  %152 = icmp ult i32 %134, %EAX_val.57, !mcsema_real_eip !33
  store i1 %152, i1* %CF, !mcsema_real_eip !33
  %153 = zext i32 %134 to i64, !mcsema_real_eip !33
  store i64 %153, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.59 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %154 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !34
  store i64 %154, i64* %XCX, !mcsema_real_eip !34
  %155 = sub i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %156 = xor i32 %155, %EAX_val.59, !mcsema_real_eip !35
  %157 = xor i32 %156, 22, !mcsema_real_eip !35
  %158 = and i32 %157, 16, !mcsema_real_eip !35
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !35
  store i1 %159, i1* %AF, !mcsema_real_eip !35
  %160 = trunc i32 %155 to i8, !mcsema_real_eip !35
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !35
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !35
  %163 = xor i1 %162, true, !mcsema_real_eip !35
  store i1 %163, i1* %PF, !mcsema_real_eip !35
  %164 = icmp eq i32 %155, 0, !mcsema_real_eip !35
  store i1 %164, i1* %ZF, !mcsema_real_eip !35
  %165 = lshr i32 %155, 31, !mcsema_real_eip !35
  %166 = trunc i32 %165 to i1, !mcsema_real_eip !35
  store i1 %166, i1* %SF, !mcsema_real_eip !35
  %167 = icmp ult i32 %EAX_val.59, 22, !mcsema_real_eip !35
  store i1 %167, i1* %CF, !mcsema_real_eip !35
  %168 = xor i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %169 = and i32 %168, %156, !mcsema_real_eip !35
  %170 = lshr i32 %169, 31, !mcsema_real_eip !35
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !35
  store i1 %171, i1* %OF, !mcsema_real_eip !35
  %172 = zext i32 %155 to i64, !mcsema_real_eip !35
  store i64 %172, i64* %XAX, !mcsema_real_eip !35
  %173 = add i64 %RBP_val.53, -80, !mcsema_real_eip !36
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !36
  store i64 %154, i64* %174, !mcsema_real_eip !36
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !37
  %175 = add i64 %RBP_val.64, -84, !mcsema_real_eip !37
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !37
  %EAX_val.66 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.66, i32* %177, !mcsema_real_eip !37
  %178 = load i1, i1* %ZF, !mcsema_real_eip !38
  %179 = icmp eq i1 %178, false, !mcsema_real_eip !38
  %180 = load i1, i1* %CF, !mcsema_real_eip !38
  %181 = icmp eq i1 %180, false, !mcsema_real_eip !38
  %182 = and i1 %181, %179, !mcsema_real_eip !38
  br i1 %182, label %block_0x18e, label %block_0x148, !mcsema_real_eip !38

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !39
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !40
  store i8 0, i8* %AL.37, !mcsema_real_eip !40
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !41
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !41
  %183 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !41
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %184, !mcsema_real_eip !41
  store i64 %183, i64* %XSP, !mcsema_real_eip !41
  %185 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.39), !mcsema_real_eip !41
  store i64 %185, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !42
  %186 = add i64 %RBP_val.41, -4, !mcsema_real_eip !42
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !42
  %188 = inttoptr i64 %186 to i32*, !mcsema_real_eip !42
  store i32 1, i32* %188, !mcsema_real_eip !42
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !43
  %189 = add i64 %RBP_val.42, -108, !mcsema_real_eip !43
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !43
  %EAX_val.44 = load i32, i32* %EAX.4, !mcsema_real_eip !43
  %191 = inttoptr i64 %189 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.44, i32* %191, !mcsema_real_eip !43
  br label %block_0x312, !mcsema_real_eip !27

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !44
  %192 = add i64 %RBP_val.67, -4, !mcsema_real_eip !44
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !44
  %194 = inttoptr i64 %192 to i32*, !mcsema_real_eip !44
  %195 = load i32, i32* %194, !mcsema_real_eip !44
  %196 = zext i32 %195 to i64, !mcsema_real_eip !44
  store i64 %196, i64* %XAX, !mcsema_real_eip !44
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !45
  %197 = add i64 112, %RSP_val.68, !mcsema_real_eip !45
  %198 = xor i64 %197, %RSP_val.68, !mcsema_real_eip !45
  %199 = xor i64 %198, 112, !mcsema_real_eip !45
  %200 = and i64 %199, 16, !mcsema_real_eip !45
  %201 = icmp ne i64 %200, 0, !mcsema_real_eip !45
  store i1 %201, i1* %AF, !mcsema_real_eip !45
  %202 = lshr i64 %197, 63, !mcsema_real_eip !45
  %203 = trunc i64 %202 to i1, !mcsema_real_eip !45
  store i1 %203, i1* %SF, !mcsema_real_eip !45
  %204 = icmp eq i64 %197, 0, !mcsema_real_eip !45
  store i1 %204, i1* %ZF, !mcsema_real_eip !45
  %205 = xor i64 %RSP_val.68, 112, !mcsema_real_eip !45
  %206 = xor i64 %205, -1, !mcsema_real_eip !45
  %207 = and i64 %206, %198, !mcsema_real_eip !45
  %208 = lshr i64 %207, 63, !mcsema_real_eip !45
  %209 = and i64 %208, 1, !mcsema_real_eip !45
  %210 = trunc i64 %209 to i1, !mcsema_real_eip !45
  store i1 %210, i1* %OF, !mcsema_real_eip !45
  %211 = trunc i64 %197 to i8, !mcsema_real_eip !45
  %212 = call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !45
  %213 = trunc i8 %212 to i1, !mcsema_real_eip !45
  %214 = xor i1 %213, true, !mcsema_real_eip !45
  store i1 %214, i1* %PF, !mcsema_real_eip !45
  %215 = icmp ult i64 %197, %RSP_val.68, !mcsema_real_eip !45
  store i1 %215, i1* %CF, !mcsema_real_eip !45
  store i64 %197, i64* %XSP, !mcsema_real_eip !45
  %216 = inttoptr i64 %197 to i64*, !mcsema_real_eip !46
  %217 = load i64, i64* %216, !mcsema_real_eip !46
  store i64 %217, i64* %XBP, !mcsema_real_eip !46
  %218 = add i64 %197, 8, !mcsema_real_eip !46
  store i64 %218, i64* %XSP, !mcsema_real_eip !46
  %219 = add i64 %218, 8, !mcsema_real_eip !47
  %220 = inttoptr i64 %218 to i64*, !mcsema_real_eip !47
  %221 = load i64, i64* %220, !mcsema_real_eip !47
  store i64 %221, i64* %XIP, !mcsema_real_eip !47
  store i64 %219, i64* %XSP, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !48
  %222 = add i64 %RBP_val.87, -80, !mcsema_real_eip !48
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !48
  %224 = load i64, i64* %223, !mcsema_real_eip !48
  store i64 %224, i64* %XAX, !mcsema_real_eip !48
  %225 = mul i64 %224, 8, !mcsema_real_eip !49
  %226 = add i64 ptrtoint (%0* @data_0x320 to i64), %225, !mcsema_real_eip !49
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !49
  %228 = load i64, i64* %227, !mcsema_real_eip !49
  store i64 %228, i64* %XCX, !mcsema_real_eip !49
  switch i64 %228, label %401 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !50

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !51
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.71, !mcsema_real_eip !52
  %RSI_val.73 = load i64, i64* %XSI, !mcsema_real_eip !53
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !53
  %229 = sub i64 %RSP_val.74, 8, !mcsema_real_eip !53
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %230, !mcsema_real_eip !53
  store i64 %229, i64* %XSP, !mcsema_real_eip !53
  %231 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73), !mcsema_real_eip !53
  store i64 %231, i64* %XAX, !mcsema_real_eip !53
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !54
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !55
  %232 = add i64 %RBP_val.75, -88, !mcsema_real_eip !55
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !55
  %EAX_val.77 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.77, i32* %234, !mcsema_real_eip !55
  store i8 0, i8* %AL.71, !mcsema_real_eip !56
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !57
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !57
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !57
  %235 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !57
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %236, !mcsema_real_eip !57
  store i64 %235, i64* %XSP, !mcsema_real_eip !57
  %237 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80), !mcsema_real_eip !57
  store i64 %237, i64* %XAX, !mcsema_real_eip !57
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !58
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !59
  %238 = add i64 %RBP_val.82, -92, !mcsema_real_eip !59
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !59
  %EAX_val.84 = load i32, i32* %EAX.4, !mcsema_real_eip !59
  %240 = inttoptr i64 %238 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.84, i32* %240, !mcsema_real_eip !59
  %RDI_val.85 = load i64, i64* %XDI, !mcsema_real_eip !60
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %241 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !60
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %242, !mcsema_real_eip !60
  store i64 %241, i64* %XSP, !mcsema_real_eip !60
  %243 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85), !mcsema_real_eip !60
  store i64 %243, i64* %XAX, !mcsema_real_eip !60
  br label %block_0x1c0, !mcsema_real_eip !48

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !61
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !62
  %244 = add i64 %RBP_val.90, -24, !mcsema_real_eip !62
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !62
  %246 = inttoptr i64 %244 to i32*, !mcsema_real_eip !62
  %247 = load i32, i32* %246, !mcsema_real_eip !62
  %248 = sext i32 %247 to i64, !mcsema_real_eip !62
  store i64 %248, i64* %XCX, !mcsema_real_eip !62
  %249 = sext i64 %248 to i128, !mcsema_real_eip !63
  %250 = mul i128 %249, 11, !mcsema_real_eip !63
  %251 = trunc i128 %250 to i64, !mcsema_real_eip !63
  %252 = sext i64 %251 to i128, !mcsema_real_eip !63
  %253 = icmp ne i128 %252, %250, !mcsema_real_eip !63
  %254 = icmp slt i64 %251, 0, !mcsema_real_eip !63
  store i1 %254, i1* %SF, !mcsema_real_eip !63
  store i1 %253, i1* %OF, !mcsema_real_eip !63
  store i1 %253, i1* %CF, !mcsema_real_eip !63
  store i64 %251, i64* %XCX, !mcsema_real_eip !63
  %255 = add i64 %251, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %256 = xor i64 %255, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %257 = xor i64 %256, %251, !mcsema_real_eip !64
  %258 = and i64 %257, 16, !mcsema_real_eip !64
  %259 = icmp ne i64 %258, 0, !mcsema_real_eip !64
  store i1 %259, i1* %AF, !mcsema_real_eip !64
  %260 = lshr i64 %255, 63, !mcsema_real_eip !64
  %261 = trunc i64 %260 to i1, !mcsema_real_eip !64
  store i1 %261, i1* %SF, !mcsema_real_eip !64
  %262 = icmp eq i64 %255, 0, !mcsema_real_eip !64
  store i1 %262, i1* %ZF, !mcsema_real_eip !64
  %263 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %251, !mcsema_real_eip !64
  %264 = xor i64 %263, -1, !mcsema_real_eip !64
  %265 = and i64 %264, %256, !mcsema_real_eip !64
  %266 = lshr i64 %265, 63, !mcsema_real_eip !64
  %267 = and i64 %266, 1, !mcsema_real_eip !64
  %268 = trunc i64 %267 to i1, !mcsema_real_eip !64
  store i1 %268, i1* %OF, !mcsema_real_eip !64
  %269 = trunc i64 %255 to i8, !mcsema_real_eip !64
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !64
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !64
  %272 = xor i1 %271, true, !mcsema_real_eip !64
  store i1 %272, i1* %PF, !mcsema_real_eip !64
  %273 = icmp ult i64 %255, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  store i1 %273, i1* %CF, !mcsema_real_eip !64
  store i64 %255, i64* %XAX, !mcsema_real_eip !64
  %274 = add i64 %RBP_val.90, -20, !mcsema_real_eip !65
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !65
  %276 = inttoptr i64 %274 to i32*, !mcsema_real_eip !65
  %277 = load i32, i32* %276, !mcsema_real_eip !65
  %278 = sext i32 %277 to i64, !mcsema_real_eip !65
  store i64 %278, i64* %XCX, !mcsema_real_eip !65
  %279 = add i64 %255, %278, !mcsema_real_eip !66
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !66
  %281 = inttoptr i64 %279 to i8*, !mcsema_real_eip !66
  %282 = load i8, i8* %281, !mcsema_real_eip !66
  %283 = sext i8 %282 to i32, !mcsema_real_eip !66
  %284 = zext i32 %283 to i64, !mcsema_real_eip !66
  store i64 %284, i64* %XDX, !mcsema_real_eip !66
  %EDX.97 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.98 = load i32, i32* %EDX.97, !mcsema_real_eip !67
  %285 = sub i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %286 = xor i32 %285, %EDX_val.98, !mcsema_real_eip !67
  %287 = xor i32 %286, 35, !mcsema_real_eip !67
  %288 = and i32 %287, 16, !mcsema_real_eip !67
  %289 = icmp ne i32 %288, 0, !mcsema_real_eip !67
  store i1 %289, i1* %AF, !mcsema_real_eip !67
  %290 = trunc i32 %285 to i8, !mcsema_real_eip !67
  %291 = call i8 @llvm.ctpop.i8(i8 %290), !mcsema_real_eip !67
  %292 = trunc i8 %291 to i1, !mcsema_real_eip !67
  %293 = xor i1 %292, true, !mcsema_real_eip !67
  store i1 %293, i1* %PF, !mcsema_real_eip !67
  %294 = icmp eq i32 %285, 0, !mcsema_real_eip !67
  store i1 %294, i1* %ZF, !mcsema_real_eip !67
  %295 = lshr i32 %285, 31, !mcsema_real_eip !67
  %296 = trunc i32 %295 to i1, !mcsema_real_eip !67
  store i1 %296, i1* %SF, !mcsema_real_eip !67
  %297 = icmp ult i32 %EDX_val.98, 35, !mcsema_real_eip !67
  store i1 %297, i1* %CF, !mcsema_real_eip !67
  %298 = xor i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %299 = and i32 %298, %286, !mcsema_real_eip !67
  %300 = lshr i32 %299, 31, !mcsema_real_eip !67
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !67
  store i1 %301, i1* %OF, !mcsema_real_eip !67
  %302 = icmp eq i1 %294, false, !mcsema_real_eip !68
  br i1 %302, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !68

block_0x156:                                      ; preds = %block_0x148
  %303 = add i64 %RBP_val.87, -24, !mcsema_real_eip !69
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !69
  %305 = inttoptr i64 %303 to i32*, !mcsema_real_eip !69
  %306 = load i32, i32* %305, !mcsema_real_eip !69
  %307 = zext i32 %306 to i64, !mcsema_real_eip !69
  store i64 %307, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.119 = load i32, i32* %EAX.4, !mcsema_real_eip !70
  %308 = add i32 -1, %EAX_val.119, !mcsema_real_eip !70
  %309 = xor i32 %308, %EAX_val.119, !mcsema_real_eip !70
  %310 = xor i32 %309, -1, !mcsema_real_eip !70
  %311 = and i32 %310, 16, !mcsema_real_eip !70
  %312 = icmp ne i32 %311, 0, !mcsema_real_eip !70
  store i1 %312, i1* %AF, !mcsema_real_eip !70
  %313 = lshr i32 %308, 31, !mcsema_real_eip !70
  %314 = trunc i32 %313 to i1, !mcsema_real_eip !70
  store i1 %314, i1* %SF, !mcsema_real_eip !70
  %315 = icmp eq i32 %308, 0, !mcsema_real_eip !70
  store i1 %315, i1* %ZF, !mcsema_real_eip !70
  %316 = xor i32 %EAX_val.119, -1, !mcsema_real_eip !70
  %317 = and i32 %EAX_val.119, %309, !mcsema_real_eip !70
  %318 = lshr i32 %317, 31, !mcsema_real_eip !70
  %319 = and i32 %318, 1, !mcsema_real_eip !70
  %320 = trunc i32 %319 to i1, !mcsema_real_eip !70
  store i1 %320, i1* %OF, !mcsema_real_eip !70
  %321 = trunc i32 %308 to i8, !mcsema_real_eip !70
  %322 = call i8 @llvm.ctpop.i8(i8 %321), !mcsema_real_eip !70
  %323 = trunc i8 %322 to i1, !mcsema_real_eip !70
  %324 = xor i1 %323, true, !mcsema_real_eip !70
  store i1 %324, i1* %PF, !mcsema_real_eip !70
  %325 = icmp ult i32 %308, %EAX_val.119, !mcsema_real_eip !70
  store i1 %325, i1* %CF, !mcsema_real_eip !70
  %326 = zext i32 %308 to i64, !mcsema_real_eip !70
  store i64 %326, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.122 = load i32, i32* %EAX.4, !mcsema_real_eip !71
  store i32 %EAX_val.122, i32* %305, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x164:                                      ; preds = %block_0x148
  %327 = add i64 %RBP_val.87, -24, !mcsema_real_eip !73
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !73
  %329 = inttoptr i64 %327 to i32*, !mcsema_real_eip !73
  %330 = load i32, i32* %329, !mcsema_real_eip !73
  %331 = zext i32 %330 to i64, !mcsema_real_eip !73
  store i64 %331, i64* %XAX, !mcsema_real_eip !73
  %EAX_val.113 = load i32, i32* %EAX.4, !mcsema_real_eip !74
  %332 = add i32 1, %EAX_val.113, !mcsema_real_eip !74
  %333 = xor i32 %332, %EAX_val.113, !mcsema_real_eip !74
  %334 = xor i32 %333, 1, !mcsema_real_eip !74
  %335 = and i32 %334, 16, !mcsema_real_eip !74
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !74
  store i1 %336, i1* %AF, !mcsema_real_eip !74
  %337 = lshr i32 %332, 31, !mcsema_real_eip !74
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !74
  store i1 %338, i1* %SF, !mcsema_real_eip !74
  %339 = icmp eq i32 %332, 0, !mcsema_real_eip !74
  store i1 %339, i1* %ZF, !mcsema_real_eip !74
  %340 = xor i32 %EAX_val.113, 1, !mcsema_real_eip !74
  %341 = xor i32 %340, -1, !mcsema_real_eip !74
  %342 = and i32 %341, %333, !mcsema_real_eip !74
  %343 = lshr i32 %342, 31, !mcsema_real_eip !74
  %344 = and i32 %343, 1, !mcsema_real_eip !74
  %345 = trunc i32 %344 to i1, !mcsema_real_eip !74
  store i1 %345, i1* %OF, !mcsema_real_eip !74
  %346 = trunc i32 %332 to i8, !mcsema_real_eip !74
  %347 = call i8 @llvm.ctpop.i8(i8 %346), !mcsema_real_eip !74
  %348 = trunc i8 %347 to i1, !mcsema_real_eip !74
  %349 = xor i1 %348, true, !mcsema_real_eip !74
  store i1 %349, i1* %PF, !mcsema_real_eip !74
  %350 = icmp ult i32 %332, %EAX_val.113, !mcsema_real_eip !74
  store i1 %350, i1* %CF, !mcsema_real_eip !74
  %351 = zext i32 %332 to i64, !mcsema_real_eip !74
  store i64 %351, i64* %XAX, !mcsema_real_eip !74
  %EAX_val.116 = load i32, i32* %EAX.4, !mcsema_real_eip !75
  store i32 %EAX_val.116, i32* %329, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

block_0x172:                                      ; preds = %block_0x148
  %352 = add i64 %RBP_val.87, -20, !mcsema_real_eip !77
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !77
  %354 = inttoptr i64 %352 to i32*, !mcsema_real_eip !77
  %355 = load i32, i32* %354, !mcsema_real_eip !77
  %356 = zext i32 %355 to i64, !mcsema_real_eip !77
  store i64 %356, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.107 = load i32, i32* %EAX.4, !mcsema_real_eip !78
  %357 = add i32 -1, %EAX_val.107, !mcsema_real_eip !78
  %358 = xor i32 %357, %EAX_val.107, !mcsema_real_eip !78
  %359 = xor i32 %358, -1, !mcsema_real_eip !78
  %360 = and i32 %359, 16, !mcsema_real_eip !78
  %361 = icmp ne i32 %360, 0, !mcsema_real_eip !78
  store i1 %361, i1* %AF, !mcsema_real_eip !78
  %362 = lshr i32 %357, 31, !mcsema_real_eip !78
  %363 = trunc i32 %362 to i1, !mcsema_real_eip !78
  store i1 %363, i1* %SF, !mcsema_real_eip !78
  %364 = icmp eq i32 %357, 0, !mcsema_real_eip !78
  store i1 %364, i1* %ZF, !mcsema_real_eip !78
  %365 = xor i32 %EAX_val.107, -1, !mcsema_real_eip !78
  %366 = and i32 %EAX_val.107, %358, !mcsema_real_eip !78
  %367 = lshr i32 %366, 31, !mcsema_real_eip !78
  %368 = and i32 %367, 1, !mcsema_real_eip !78
  %369 = trunc i32 %368 to i1, !mcsema_real_eip !78
  store i1 %369, i1* %OF, !mcsema_real_eip !78
  %370 = trunc i32 %357 to i8, !mcsema_real_eip !78
  %371 = call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !78
  %372 = trunc i8 %371 to i1, !mcsema_real_eip !78
  %373 = xor i1 %372, true, !mcsema_real_eip !78
  store i1 %373, i1* %PF, !mcsema_real_eip !78
  %374 = icmp ult i32 %357, %EAX_val.107, !mcsema_real_eip !78
  store i1 %374, i1* %CF, !mcsema_real_eip !78
  %375 = zext i32 %357 to i64, !mcsema_real_eip !78
  store i64 %375, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.110 = load i32, i32* %EAX.4, !mcsema_real_eip !79
  store i32 %EAX_val.110, i32* %354, !mcsema_real_eip !79
  br label %block_0x1c0, !mcsema_real_eip !80

block_0x180:                                      ; preds = %block_0x148
  %376 = add i64 %RBP_val.87, -20, !mcsema_real_eip !81
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !81
  %378 = inttoptr i64 %376 to i32*, !mcsema_real_eip !81
  %379 = load i32, i32* %378, !mcsema_real_eip !81
  %380 = zext i32 %379 to i64, !mcsema_real_eip !81
  store i64 %380, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.4, !mcsema_real_eip !82
  %381 = add i32 1, %EAX_val.101, !mcsema_real_eip !82
  %382 = xor i32 %381, %EAX_val.101, !mcsema_real_eip !82
  %383 = xor i32 %382, 1, !mcsema_real_eip !82
  %384 = and i32 %383, 16, !mcsema_real_eip !82
  %385 = icmp ne i32 %384, 0, !mcsema_real_eip !82
  store i1 %385, i1* %AF, !mcsema_real_eip !82
  %386 = lshr i32 %381, 31, !mcsema_real_eip !82
  %387 = trunc i32 %386 to i1, !mcsema_real_eip !82
  store i1 %387, i1* %SF, !mcsema_real_eip !82
  %388 = icmp eq i32 %381, 0, !mcsema_real_eip !82
  store i1 %388, i1* %ZF, !mcsema_real_eip !82
  %389 = xor i32 %EAX_val.101, 1, !mcsema_real_eip !82
  %390 = xor i32 %389, -1, !mcsema_real_eip !82
  %391 = and i32 %390, %382, !mcsema_real_eip !82
  %392 = lshr i32 %391, 31, !mcsema_real_eip !82
  %393 = and i32 %392, 1, !mcsema_real_eip !82
  %394 = trunc i32 %393 to i1, !mcsema_real_eip !82
  store i1 %394, i1* %OF, !mcsema_real_eip !82
  %395 = trunc i32 %381 to i8, !mcsema_real_eip !82
  %396 = call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !82
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !82
  %398 = xor i1 %397, true, !mcsema_real_eip !82
  store i1 %398, i1* %PF, !mcsema_real_eip !82
  %399 = icmp ult i32 %381, %EAX_val.101, !mcsema_real_eip !82
  store i1 %399, i1* %CF, !mcsema_real_eip !82
  %400 = zext i32 %381 to i64, !mcsema_real_eip !82
  store i64 %400, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.104 = load i32, i32* %EAX.4, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %378, !mcsema_real_eip !83
  br label %block_0x1c0, !mcsema_real_eip !84

; <label>:401:                                    ; preds = %block_0x148
  store i64 %228, i64* %XIP, !mcsema_real_eip !50
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !85
  %AL.132 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.132, !mcsema_real_eip !86
  %RSI_val.134 = load i64, i64* %XSI, !mcsema_real_eip !87
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !87
  %402 = sub i64 %RSP_val.135, 8, !mcsema_real_eip !87
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !87
  store i64 -2415393069852865332, i64* %403, !mcsema_real_eip !87
  store i64 %402, i64* %XSP, !mcsema_real_eip !87
  %404 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134), !mcsema_real_eip !87
  store i64 %404, i64* %XAX, !mcsema_real_eip !87
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %405 = add i64 %RBP_val.136, -64, !mcsema_real_eip !89
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !89
  store i64 %405, i64* %XSI, !mcsema_real_eip !89
  %407 = add i64 %RBP_val.136, -96, !mcsema_real_eip !90
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !90
  %EAX_val.139 = load i32, i32* %EAX.4, !mcsema_real_eip !90
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.139, i32* %409, !mcsema_real_eip !90
  store i8 0, i8* %AL.132, !mcsema_real_eip !91
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !92
  %RSI_val.142 = load i64, i64* %XSI, !mcsema_real_eip !92
  %RSP_val.143 = load i64, i64* %XSP, !mcsema_real_eip !92
  %410 = sub i64 %RSP_val.143, 8, !mcsema_real_eip !92
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !92
  store i64 -2415393069852865332, i64* %411, !mcsema_real_eip !92
  store i64 %410, i64* %XSP, !mcsema_real_eip !92
  %412 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142), !mcsema_real_eip !92
  store i64 %412, i64* %XAX, !mcsema_real_eip !92
  %EDI_val.145 = load i32, i32* %EDI.13, !mcsema_real_eip !93
  store i1 false, i1* %CF, !mcsema_real_eip !93
  store i1 false, i1* %OF, !mcsema_real_eip !93
  store i1 false, i1* %SF, !mcsema_real_eip !93
  store i1 true, i1* %ZF, !mcsema_real_eip !93
  store i1 true, i1* %PF, !mcsema_real_eip !93
  store i1 undef, i1* %AF, !mcsema_real_eip !93
  store i64 0, i64* %XDI, !mcsema_real_eip !93
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !94
  %413 = add i64 %RBP_val.148, -100, !mcsema_real_eip !94
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !94
  %EAX_val.150 = load i32, i32* %EAX.4, !mcsema_real_eip !94
  %415 = inttoptr i64 %413 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.150, i32* %415, !mcsema_real_eip !94
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !95
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !95
  %416 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !95
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %417, !mcsema_real_eip !95
  store i64 %416, i64* %XSP, !mcsema_real_eip !95
  %418 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !95
  store i64 %418, i64* %XAX, !mcsema_real_eip !95
  br label %block_0x219, !mcsema_real_eip !96

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !97
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !98
  %419 = add i64 %RBP_val.123, -24, !mcsema_real_eip !98
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !98
  %421 = inttoptr i64 %419 to i32*, !mcsema_real_eip !98
  %422 = load i32, i32* %421, !mcsema_real_eip !98
  %423 = sext i32 %422 to i64, !mcsema_real_eip !98
  store i64 %423, i64* %XCX, !mcsema_real_eip !98
  %424 = sext i64 %423 to i128, !mcsema_real_eip !99
  %425 = mul i128 %424, 11, !mcsema_real_eip !99
  %426 = trunc i128 %425 to i64, !mcsema_real_eip !99
  %427 = sext i64 %426 to i128, !mcsema_real_eip !99
  %428 = icmp ne i128 %427, %425, !mcsema_real_eip !99
  %429 = icmp slt i64 %426, 0, !mcsema_real_eip !99
  store i1 %429, i1* %SF, !mcsema_real_eip !99
  store i1 %428, i1* %OF, !mcsema_real_eip !99
  store i1 %428, i1* %CF, !mcsema_real_eip !99
  store i64 %426, i64* %XCX, !mcsema_real_eip !99
  %430 = add i64 %426, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %431 = xor i64 %430, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %432 = xor i64 %431, %426, !mcsema_real_eip !100
  %433 = and i64 %432, 16, !mcsema_real_eip !100
  %434 = icmp ne i64 %433, 0, !mcsema_real_eip !100
  store i1 %434, i1* %AF, !mcsema_real_eip !100
  %435 = lshr i64 %430, 63, !mcsema_real_eip !100
  %436 = trunc i64 %435 to i1, !mcsema_real_eip !100
  store i1 %436, i1* %SF, !mcsema_real_eip !100
  %437 = icmp eq i64 %430, 0, !mcsema_real_eip !100
  store i1 %437, i1* %ZF, !mcsema_real_eip !100
  %438 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %426, !mcsema_real_eip !100
  %439 = xor i64 %438, -1, !mcsema_real_eip !100
  %440 = and i64 %439, %431, !mcsema_real_eip !100
  %441 = lshr i64 %440, 63, !mcsema_real_eip !100
  %442 = and i64 %441, 1, !mcsema_real_eip !100
  %443 = trunc i64 %442 to i1, !mcsema_real_eip !100
  store i1 %443, i1* %OF, !mcsema_real_eip !100
  %444 = trunc i64 %430 to i8, !mcsema_real_eip !100
  %445 = call i8 @llvm.ctpop.i8(i8 %444), !mcsema_real_eip !100
  %446 = trunc i8 %445 to i1, !mcsema_real_eip !100
  %447 = xor i1 %446, true, !mcsema_real_eip !100
  store i1 %447, i1* %PF, !mcsema_real_eip !100
  %448 = icmp ult i64 %430, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  store i1 %448, i1* %CF, !mcsema_real_eip !100
  store i64 %430, i64* %XAX, !mcsema_real_eip !100
  %449 = add i64 %RBP_val.123, -20, !mcsema_real_eip !101
  %450 = inttoptr i64 %449 to i64*, !mcsema_real_eip !101
  %451 = inttoptr i64 %449 to i32*, !mcsema_real_eip !101
  %452 = load i32, i32* %451, !mcsema_real_eip !101
  %453 = sext i32 %452 to i64, !mcsema_real_eip !101
  store i64 %453, i64* %XCX, !mcsema_real_eip !101
  %454 = add i64 %430, %453, !mcsema_real_eip !102
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !102
  %456 = inttoptr i64 %454 to i8*, !mcsema_real_eip !102
  %457 = load i8, i8* %456, !mcsema_real_eip !102
  %458 = sext i8 %457 to i32, !mcsema_real_eip !102
  %459 = zext i32 %458 to i64, !mcsema_real_eip !102
  store i64 %459, i64* %XDX, !mcsema_real_eip !102
  %EDX_val.131 = load i32, i32* %EDX.97, !mcsema_real_eip !103
  %460 = sub i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %461 = xor i32 %460, %EDX_val.131, !mcsema_real_eip !103
  %462 = xor i32 %461, 32, !mcsema_real_eip !103
  %463 = and i32 %462, 16, !mcsema_real_eip !103
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !103
  store i1 %464, i1* %AF, !mcsema_real_eip !103
  %465 = trunc i32 %460 to i8, !mcsema_real_eip !103
  %466 = call i8 @llvm.ctpop.i8(i8 %465), !mcsema_real_eip !103
  %467 = trunc i8 %466 to i1, !mcsema_real_eip !103
  %468 = xor i1 %467, true, !mcsema_real_eip !103
  store i1 %468, i1* %PF, !mcsema_real_eip !103
  %469 = icmp eq i32 %460, 0, !mcsema_real_eip !103
  store i1 %469, i1* %ZF, !mcsema_real_eip !103
  %470 = lshr i32 %460, 31, !mcsema_real_eip !103
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !103
  store i1 %471, i1* %SF, !mcsema_real_eip !103
  %472 = icmp ult i32 %EDX_val.131, 32, !mcsema_real_eip !103
  store i1 %472, i1* %CF, !mcsema_real_eip !103
  %473 = xor i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %474 = and i32 %473, %461, !mcsema_real_eip !103
  %475 = lshr i32 %474, 31, !mcsema_real_eip !103
  %476 = trunc i32 %475 to i1, !mcsema_real_eip !103
  store i1 %476, i1* %OF, !mcsema_real_eip !103
  br i1 %469, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !104

block_0x23f:                                      ; preds = %block_0x219
  %477 = load i32, i32* %421, !mcsema_real_eip !105
  %478 = sub i32 %477, 2, !mcsema_real_eip !105
  %479 = xor i32 %478, %477, !mcsema_real_eip !105
  %480 = xor i32 %479, 2, !mcsema_real_eip !105
  %481 = and i32 %480, 16, !mcsema_real_eip !105
  %482 = icmp ne i32 %481, 0, !mcsema_real_eip !105
  store i1 %482, i1* %AF, !mcsema_real_eip !105
  %483 = trunc i32 %478 to i8, !mcsema_real_eip !105
  %484 = call i8 @llvm.ctpop.i8(i8 %483), !mcsema_real_eip !105
  %485 = trunc i8 %484 to i1, !mcsema_real_eip !105
  %486 = xor i1 %485, true, !mcsema_real_eip !105
  store i1 %486, i1* %PF, !mcsema_real_eip !105
  %487 = icmp eq i32 %478, 0, !mcsema_real_eip !105
  store i1 %487, i1* %ZF, !mcsema_real_eip !105
  %488 = lshr i32 %478, 31, !mcsema_real_eip !105
  %489 = trunc i32 %488 to i1, !mcsema_real_eip !105
  store i1 %489, i1* %SF, !mcsema_real_eip !105
  %490 = icmp ult i32 %477, 2, !mcsema_real_eip !105
  store i1 %490, i1* %CF, !mcsema_real_eip !105
  %491 = xor i32 %477, 2, !mcsema_real_eip !105
  %492 = and i32 %491, %479, !mcsema_real_eip !105
  %493 = lshr i32 %492, 31, !mcsema_real_eip !105
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !105
  store i1 %494, i1* %OF, !mcsema_real_eip !105
  %495 = icmp eq i1 %487, false, !mcsema_real_eip !106
  br i1 %495, label %block_0x283, label %block_0x249, !mcsema_real_eip !106

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !96
  %496 = add i64 %RBP_val.153, -28, !mcsema_real_eip !96
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !96
  %498 = inttoptr i64 %496 to i32*, !mcsema_real_eip !96
  %499 = load i32, i32* %498, !mcsema_real_eip !96
  %500 = zext i32 %499 to i64, !mcsema_real_eip !96
  store i64 %500, i64* %XAX, !mcsema_real_eip !96
  %501 = add i64 %RBP_val.153, -20, !mcsema_real_eip !107
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !107
  %EAX_val.156 = load i32, i32* %EAX.4, !mcsema_real_eip !107
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !107
  %504 = load i32, i32* %503, !mcsema_real_eip !107
  %505 = sub i32 %EAX_val.156, %504, !mcsema_real_eip !107
  %506 = xor i32 %505, %EAX_val.156, !mcsema_real_eip !107
  %507 = xor i32 %506, %504, !mcsema_real_eip !107
  %508 = and i32 %507, 16, !mcsema_real_eip !107
  %509 = icmp ne i32 %508, 0, !mcsema_real_eip !107
  store i1 %509, i1* %AF, !mcsema_real_eip !107
  %510 = trunc i32 %505 to i8, !mcsema_real_eip !107
  %511 = call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !107
  %512 = trunc i8 %511 to i1, !mcsema_real_eip !107
  %513 = xor i1 %512, true, !mcsema_real_eip !107
  store i1 %513, i1* %PF, !mcsema_real_eip !107
  %514 = icmp eq i32 %505, 0, !mcsema_real_eip !107
  store i1 %514, i1* %ZF, !mcsema_real_eip !107
  %515 = lshr i32 %505, 31, !mcsema_real_eip !107
  %516 = trunc i32 %515 to i1, !mcsema_real_eip !107
  store i1 %516, i1* %SF, !mcsema_real_eip !107
  %517 = icmp ult i32 %EAX_val.156, %504, !mcsema_real_eip !107
  store i1 %517, i1* %CF, !mcsema_real_eip !107
  %518 = xor i32 %EAX_val.156, %504, !mcsema_real_eip !107
  %519 = and i32 %518, %506, !mcsema_real_eip !107
  %520 = lshr i32 %519, 31, !mcsema_real_eip !107
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !107
  store i1 %521, i1* %OF, !mcsema_real_eip !107
  %522 = icmp eq i1 %514, false, !mcsema_real_eip !108
  br i1 %522, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !108

block_0x29b:                                      ; preds = %block_0x28f
  %523 = add i64 %RBP_val.153, -32, !mcsema_real_eip !109
  %524 = inttoptr i64 %523 to i64*, !mcsema_real_eip !109
  %525 = inttoptr i64 %523 to i32*, !mcsema_real_eip !109
  %526 = load i32, i32* %525, !mcsema_real_eip !109
  %527 = zext i32 %526 to i64, !mcsema_real_eip !109
  store i64 %527, i64* %XAX, !mcsema_real_eip !109
  %528 = add i64 %RBP_val.153, -24, !mcsema_real_eip !110
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !110
  %EAX_val.175 = load i32, i32* %EAX.4, !mcsema_real_eip !110
  %530 = inttoptr i64 %528 to i32*, !mcsema_real_eip !110
  %531 = load i32, i32* %530, !mcsema_real_eip !110
  %532 = sub i32 %EAX_val.175, %531, !mcsema_real_eip !110
  %533 = xor i32 %532, %EAX_val.175, !mcsema_real_eip !110
  %534 = xor i32 %533, %531, !mcsema_real_eip !110
  %535 = and i32 %534, 16, !mcsema_real_eip !110
  %536 = icmp ne i32 %535, 0, !mcsema_real_eip !110
  store i1 %536, i1* %AF, !mcsema_real_eip !110
  %537 = trunc i32 %532 to i8, !mcsema_real_eip !110
  %538 = call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !110
  %539 = trunc i8 %538 to i1, !mcsema_real_eip !110
  %540 = xor i1 %539, true, !mcsema_real_eip !110
  store i1 %540, i1* %PF, !mcsema_real_eip !110
  %541 = icmp eq i32 %532, 0, !mcsema_real_eip !110
  store i1 %541, i1* %ZF, !mcsema_real_eip !110
  %542 = lshr i32 %532, 31, !mcsema_real_eip !110
  %543 = trunc i32 %542 to i1, !mcsema_real_eip !110
  store i1 %543, i1* %SF, !mcsema_real_eip !110
  %544 = icmp ult i32 %EAX_val.175, %531, !mcsema_real_eip !110
  store i1 %544, i1* %CF, !mcsema_real_eip !110
  %545 = xor i32 %EAX_val.175, %531, !mcsema_real_eip !110
  %546 = and i32 %545, %533, !mcsema_real_eip !110
  %547 = lshr i32 %546, 31, !mcsema_real_eip !110
  %548 = trunc i32 %547 to i1, !mcsema_real_eip !110
  store i1 %548, i1* %OF, !mcsema_real_eip !110
  %549 = icmp eq i1 %541, false, !mcsema_real_eip !111
  br i1 %549, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !111

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !112
  %550 = add i64 %RBP_val.153, -24, !mcsema_real_eip !113
  %551 = inttoptr i64 %550 to i64*, !mcsema_real_eip !113
  %552 = inttoptr i64 %550 to i32*, !mcsema_real_eip !113
  %553 = load i32, i32* %552, !mcsema_real_eip !113
  %554 = sext i32 %553 to i64, !mcsema_real_eip !113
  store i64 %554, i64* %XCX, !mcsema_real_eip !113
  %555 = sext i64 %554 to i128, !mcsema_real_eip !114
  %556 = mul i128 %555, 11, !mcsema_real_eip !114
  %557 = trunc i128 %556 to i64, !mcsema_real_eip !114
  %558 = sext i64 %557 to i128, !mcsema_real_eip !114
  %559 = icmp ne i128 %558, %556, !mcsema_real_eip !114
  %560 = icmp slt i64 %557, 0, !mcsema_real_eip !114
  store i1 %560, i1* %SF, !mcsema_real_eip !114
  store i1 %559, i1* %OF, !mcsema_real_eip !114
  store i1 %559, i1* %CF, !mcsema_real_eip !114
  store i64 %557, i64* %XCX, !mcsema_real_eip !114
  %561 = add i64 %557, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %562 = xor i64 %561, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %563 = xor i64 %562, %557, !mcsema_real_eip !115
  %564 = and i64 %563, 16, !mcsema_real_eip !115
  %565 = icmp ne i64 %564, 0, !mcsema_real_eip !115
  store i1 %565, i1* %AF, !mcsema_real_eip !115
  %566 = lshr i64 %561, 63, !mcsema_real_eip !115
  %567 = trunc i64 %566 to i1, !mcsema_real_eip !115
  store i1 %567, i1* %SF, !mcsema_real_eip !115
  %568 = icmp eq i64 %561, 0, !mcsema_real_eip !115
  store i1 %568, i1* %ZF, !mcsema_real_eip !115
  %569 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %557, !mcsema_real_eip !115
  %570 = xor i64 %569, -1, !mcsema_real_eip !115
  %571 = and i64 %570, %562, !mcsema_real_eip !115
  %572 = lshr i64 %571, 63, !mcsema_real_eip !115
  %573 = and i64 %572, 1, !mcsema_real_eip !115
  %574 = trunc i64 %573 to i1, !mcsema_real_eip !115
  store i1 %574, i1* %OF, !mcsema_real_eip !115
  %575 = trunc i64 %561 to i8, !mcsema_real_eip !115
  %576 = call i8 @llvm.ctpop.i8(i8 %575), !mcsema_real_eip !115
  %577 = trunc i8 %576 to i1, !mcsema_real_eip !115
  %578 = xor i1 %577, true, !mcsema_real_eip !115
  store i1 %578, i1* %PF, !mcsema_real_eip !115
  %579 = icmp ult i64 %561, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  store i1 %579, i1* %CF, !mcsema_real_eip !115
  store i64 %561, i64* %XAX, !mcsema_real_eip !115
  %580 = load i32, i32* %503, !mcsema_real_eip !116
  %581 = sext i32 %580 to i64, !mcsema_real_eip !116
  store i64 %581, i64* %XCX, !mcsema_real_eip !116
  %582 = add i64 %561, %581, !mcsema_real_eip !117
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !117
  %584 = inttoptr i64 %582 to i8*, !mcsema_real_eip !117
  store i8 88, i8* %584, !mcsema_real_eip !117
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !118
  %585 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !118
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !118
  store i64 -4981261766360305936, i64* %586, !mcsema_real_eip !118
  store i64 %585, i64* %XSP, !mcsema_real_eip !118
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !118
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !119
  %587 = add i64 %RBP_val.166, -36, !mcsema_real_eip !119
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !119
  %589 = inttoptr i64 %587 to i32*, !mcsema_real_eip !119
  %590 = load i32, i32* %589, !mcsema_real_eip !119
  %591 = zext i32 %590 to i64, !mcsema_real_eip !119
  store i64 %591, i64* %XDX, !mcsema_real_eip !119
  %EDX_val.168 = load i32, i32* %EDX.97, !mcsema_real_eip !120
  %592 = add i32 1, %EDX_val.168, !mcsema_real_eip !120
  %593 = xor i32 %592, %EDX_val.168, !mcsema_real_eip !120
  %594 = xor i32 %593, 1, !mcsema_real_eip !120
  %595 = and i32 %594, 16, !mcsema_real_eip !120
  %596 = icmp ne i32 %595, 0, !mcsema_real_eip !120
  store i1 %596, i1* %AF, !mcsema_real_eip !120
  %597 = lshr i32 %592, 31, !mcsema_real_eip !120
  %598 = trunc i32 %597 to i1, !mcsema_real_eip !120
  store i1 %598, i1* %SF, !mcsema_real_eip !120
  %599 = icmp eq i32 %592, 0, !mcsema_real_eip !120
  store i1 %599, i1* %ZF, !mcsema_real_eip !120
  %600 = xor i32 %EDX_val.168, 1, !mcsema_real_eip !120
  %601 = xor i32 %600, -1, !mcsema_real_eip !120
  %602 = and i32 %601, %593, !mcsema_real_eip !120
  %603 = lshr i32 %602, 31, !mcsema_real_eip !120
  %604 = and i32 %603, 1, !mcsema_real_eip !120
  %605 = trunc i32 %604 to i1, !mcsema_real_eip !120
  store i1 %605, i1* %OF, !mcsema_real_eip !120
  %606 = trunc i32 %592 to i8, !mcsema_real_eip !120
  %607 = call i8 @llvm.ctpop.i8(i8 %606), !mcsema_real_eip !120
  %608 = trunc i8 %607 to i1, !mcsema_real_eip !120
  %609 = xor i1 %608, true, !mcsema_real_eip !120
  store i1 %609, i1* %PF, !mcsema_real_eip !120
  %610 = icmp ult i32 %592, %EDX_val.168, !mcsema_real_eip !120
  store i1 %610, i1* %CF, !mcsema_real_eip !120
  %611 = zext i32 %592 to i64, !mcsema_real_eip !120
  store i64 %611, i64* %XDX, !mcsema_real_eip !120
  %EDX_val.171 = load i32, i32* %EDX.97, !mcsema_real_eip !121
  store i32 %EDX_val.171, i32* %589, !mcsema_real_eip !121
  br label %block_0x114, !mcsema_real_eip !122

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !123
  %612 = load i32, i32* %421, !mcsema_real_eip !124
  %613 = sext i32 %612 to i64, !mcsema_real_eip !124
  store i64 %613, i64* %XCX, !mcsema_real_eip !124
  %614 = sext i64 %613 to i128, !mcsema_real_eip !125
  %615 = mul i128 %614, 11, !mcsema_real_eip !125
  %616 = trunc i128 %615 to i64, !mcsema_real_eip !125
  %617 = sext i64 %616 to i128, !mcsema_real_eip !125
  %618 = icmp ne i128 %617, %615, !mcsema_real_eip !125
  %619 = icmp slt i64 %616, 0, !mcsema_real_eip !125
  store i1 %619, i1* %SF, !mcsema_real_eip !125
  store i1 %618, i1* %OF, !mcsema_real_eip !125
  store i1 %618, i1* %CF, !mcsema_real_eip !125
  store i64 %616, i64* %XCX, !mcsema_real_eip !125
  %620 = add i64 %616, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %621 = xor i64 %620, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %622 = xor i64 %621, %616, !mcsema_real_eip !126
  %623 = and i64 %622, 16, !mcsema_real_eip !126
  %624 = icmp ne i64 %623, 0, !mcsema_real_eip !126
  store i1 %624, i1* %AF, !mcsema_real_eip !126
  %625 = lshr i64 %620, 63, !mcsema_real_eip !126
  %626 = trunc i64 %625 to i1, !mcsema_real_eip !126
  store i1 %626, i1* %SF, !mcsema_real_eip !126
  %627 = icmp eq i64 %620, 0, !mcsema_real_eip !126
  store i1 %627, i1* %ZF, !mcsema_real_eip !126
  %628 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %616, !mcsema_real_eip !126
  %629 = xor i64 %628, -1, !mcsema_real_eip !126
  %630 = and i64 %629, %621, !mcsema_real_eip !126
  %631 = lshr i64 %630, 63, !mcsema_real_eip !126
  %632 = and i64 %631, 1, !mcsema_real_eip !126
  %633 = trunc i64 %632 to i1, !mcsema_real_eip !126
  store i1 %633, i1* %OF, !mcsema_real_eip !126
  %634 = trunc i64 %620 to i8, !mcsema_real_eip !126
  %635 = call i8 @llvm.ctpop.i8(i8 %634), !mcsema_real_eip !126
  %636 = trunc i8 %635 to i1, !mcsema_real_eip !126
  %637 = xor i1 %636, true, !mcsema_real_eip !126
  store i1 %637, i1* %PF, !mcsema_real_eip !126
  %638 = icmp ult i64 %620, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  store i1 %638, i1* %CF, !mcsema_real_eip !126
  store i64 %620, i64* %XAX, !mcsema_real_eip !126
  %639 = load i32, i32* %451, !mcsema_real_eip !127
  %640 = sext i32 %639 to i64, !mcsema_real_eip !127
  store i64 %640, i64* %XCX, !mcsema_real_eip !127
  %641 = add i64 %620, %640, !mcsema_real_eip !128
  %642 = inttoptr i64 %641 to i64*, !mcsema_real_eip !128
  %643 = inttoptr i64 %641 to i8*, !mcsema_real_eip !128
  %644 = load i8, i8* %643, !mcsema_real_eip !128
  %645 = sext i8 %644 to i32, !mcsema_real_eip !128
  %646 = zext i32 %645 to i64, !mcsema_real_eip !128
  store i64 %646, i64* %XDX, !mcsema_real_eip !128
  %EDX_val.192 = load i32, i32* %EDX.97, !mcsema_real_eip !129
  %647 = sub i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %648 = xor i32 %647, %EDX_val.192, !mcsema_real_eip !129
  %649 = xor i32 %648, 124, !mcsema_real_eip !129
  %650 = and i32 %649, 16, !mcsema_real_eip !129
  %651 = icmp ne i32 %650, 0, !mcsema_real_eip !129
  store i1 %651, i1* %AF, !mcsema_real_eip !129
  %652 = trunc i32 %647 to i8, !mcsema_real_eip !129
  %653 = call i8 @llvm.ctpop.i8(i8 %652), !mcsema_real_eip !129
  %654 = trunc i8 %653 to i1, !mcsema_real_eip !129
  %655 = xor i1 %654, true, !mcsema_real_eip !129
  store i1 %655, i1* %PF, !mcsema_real_eip !129
  %656 = icmp eq i32 %647, 0, !mcsema_real_eip !129
  store i1 %656, i1* %ZF, !mcsema_real_eip !129
  %657 = lshr i32 %647, 31, !mcsema_real_eip !129
  %658 = trunc i32 %657 to i1, !mcsema_real_eip !129
  store i1 %658, i1* %SF, !mcsema_real_eip !129
  %659 = icmp ult i32 %EDX_val.192, 124, !mcsema_real_eip !129
  store i1 %659, i1* %CF, !mcsema_real_eip !129
  %660 = xor i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %661 = and i32 %660, %648, !mcsema_real_eip !129
  %662 = lshr i32 %661, 31, !mcsema_real_eip !129
  %663 = trunc i32 %662 to i1, !mcsema_real_eip !129
  store i1 %663, i1* %OF, !mcsema_real_eip !129
  %664 = icmp eq i1 %656, false, !mcsema_real_eip !130
  br i1 %664, label %block_0x283, label %block_0x26f, !mcsema_real_eip !130

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %665 = add i64 %RBP_val.123, -28, !mcsema_real_eip !131
  %666 = inttoptr i64 %665 to i64*, !mcsema_real_eip !131
  %667 = inttoptr i64 %665 to i32*, !mcsema_real_eip !131
  %668 = load i32, i32* %667, !mcsema_real_eip !131
  %669 = zext i32 %668 to i64, !mcsema_real_eip !131
  store i64 %669, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.179 = load i32, i32* %EAX.4, !mcsema_real_eip !132
  store i32 %EAX_val.179, i32* %451, !mcsema_real_eip !132
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !133
  %670 = add i64 %RBP_val.180, -32, !mcsema_real_eip !133
  %671 = inttoptr i64 %670 to i64*, !mcsema_real_eip !133
  %672 = inttoptr i64 %670 to i32*, !mcsema_real_eip !133
  %673 = load i32, i32* %672, !mcsema_real_eip !133
  %674 = zext i32 %673 to i64, !mcsema_real_eip !133
  store i64 %674, i64* %XAX, !mcsema_real_eip !133
  %675 = add i64 %RBP_val.180, -24, !mcsema_real_eip !134
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !134
  %EAX_val.183 = load i32, i32* %EAX.4, !mcsema_real_eip !134
  %677 = inttoptr i64 %675 to i32*, !mcsema_real_eip !134
  store i32 %EAX_val.183, i32* %677, !mcsema_real_eip !134
  br label %block_0x28f, !mcsema_real_eip !123

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !135
  %AL.193 = bitcast i64* %XAX to i8*, !mcsema_real_eip !136
  store i8 0, i8* %AL.193, !mcsema_real_eip !136
  %RSI_val.195 = load i64, i64* %XSI, !mcsema_real_eip !137
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !137
  %678 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !137
  %679 = inttoptr i64 %678 to i64*, !mcsema_real_eip !137
  store i64 -2415393069852865332, i64* %679, !mcsema_real_eip !137
  store i64 %678, i64* %XSP, !mcsema_real_eip !137
  %680 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195), !mcsema_real_eip !137
  store i64 %680, i64* %XAX, !mcsema_real_eip !137
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !138
  %681 = add i64 %RBP_val.197, -4, !mcsema_real_eip !138
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !138
  %683 = inttoptr i64 %681 to i32*, !mcsema_real_eip !138
  store i32 2, i32* %683, !mcsema_real_eip !138
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !139
  %684 = add i64 %RBP_val.198, -104, !mcsema_real_eip !139
  %685 = inttoptr i64 %684 to i64*, !mcsema_real_eip !139
  %EAX_val.200 = load i32, i32* %EAX.4, !mcsema_real_eip !139
  %686 = inttoptr i64 %684 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.200, i32* %686, !mcsema_real_eip !139
  br label %block_0x312, !mcsema_real_eip !140

block_0x26f:                                      ; preds = %block_0x249
  %687 = load i32, i32* %451, !mcsema_real_eip !141
  store i1 false, i1* %AF, !mcsema_real_eip !141
  %688 = trunc i32 %687 to i8, !mcsema_real_eip !141
  %689 = call i8 @llvm.ctpop.i8(i8 %688), !mcsema_real_eip !141
  %690 = trunc i8 %689 to i1, !mcsema_real_eip !141
  %691 = xor i1 %690, true, !mcsema_real_eip !141
  store i1 %691, i1* %PF, !mcsema_real_eip !141
  %692 = icmp eq i32 %687, 0, !mcsema_real_eip !141
  store i1 %692, i1* %ZF, !mcsema_real_eip !141
  %693 = lshr i32 %687, 31, !mcsema_real_eip !141
  %694 = trunc i32 %693 to i1, !mcsema_real_eip !141
  store i1 %694, i1* %SF, !mcsema_real_eip !141
  store i1 false, i1* %CF, !mcsema_real_eip !141
  store i1 false, i1* %OF, !mcsema_real_eip !141
  %695 = icmp eq i1 %694, false, !mcsema_real_eip !142
  %696 = icmp eq i1 %695, false, !mcsema_real_eip !142
  %697 = or i1 %692, %696, !mcsema_real_eip !142
  br i1 %697, label %block_0x283, label %block_0x279, !mcsema_real_eip !142

block_0x279:                                      ; preds = %block_0x26f
  %698 = load i32, i32* %451, !mcsema_real_eip !143
  %699 = sub i32 %698, 11, !mcsema_real_eip !143
  %700 = xor i32 %699, %698, !mcsema_real_eip !143
  %701 = xor i32 %700, 11, !mcsema_real_eip !143
  %702 = and i32 %701, 16, !mcsema_real_eip !143
  %703 = icmp ne i32 %702, 0, !mcsema_real_eip !143
  store i1 %703, i1* %AF, !mcsema_real_eip !143
  %704 = trunc i32 %699 to i8, !mcsema_real_eip !143
  %705 = call i8 @llvm.ctpop.i8(i8 %704), !mcsema_real_eip !143
  %706 = trunc i8 %705 to i1, !mcsema_real_eip !143
  %707 = xor i1 %706, true, !mcsema_real_eip !143
  store i1 %707, i1* %PF, !mcsema_real_eip !143
  %708 = icmp eq i32 %699, 0, !mcsema_real_eip !143
  store i1 %708, i1* %ZF, !mcsema_real_eip !143
  %709 = lshr i32 %699, 31, !mcsema_real_eip !143
  %710 = trunc i32 %709 to i1, !mcsema_real_eip !143
  store i1 %710, i1* %SF, !mcsema_real_eip !143
  %711 = icmp ult i32 %698, 11, !mcsema_real_eip !143
  store i1 %711, i1* %CF, !mcsema_real_eip !143
  %712 = xor i32 %698, 11, !mcsema_real_eip !143
  %713 = and i32 %712, %700, !mcsema_real_eip !143
  %714 = lshr i32 %713, 31, !mcsema_real_eip !143
  %715 = trunc i32 %714 to i1, !mcsema_real_eip !143
  store i1 %715, i1* %OF, !mcsema_real_eip !143
  %716 = icmp eq i1 %710, %715, !mcsema_real_eip !144
  %717 = icmp eq i1 %716, false, !mcsema_real_eip !144
  br i1 %717, label %block_0x28f, label %block_0x283, !mcsema_real_eip !144
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !145
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !145
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !145
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !145
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !145
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !145
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !145
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !145
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !145
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !145
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !145
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !145
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !145
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !145
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !145
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !145
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !145
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !145
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !145
  br label %block_0x0, !mcsema_real_eip !145

block_0x0:                                        ; preds = %entry
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !145
  %RSP_val.204 = load i64, i64* %XSP, !mcsema_real_eip !145
  %1 = sub i64 %RSP_val.204, 8, !mcsema_real_eip !145
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !145
  store i64 %RBP_val.203, i64* %2, !mcsema_real_eip !145
  store i64 %1, i64* %XSP, !mcsema_real_eip !145
  store i64 %1, i64* %XBP, !mcsema_real_eip !146
  %3 = sub i64 %1, 32, !mcsema_real_eip !147
  %4 = xor i64 %3, %1, !mcsema_real_eip !147
  %5 = xor i64 %4, 32, !mcsema_real_eip !147
  %6 = and i64 %5, 16, !mcsema_real_eip !147
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !147
  store i1 %7, i1* %AF, !mcsema_real_eip !147
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !147
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !147
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !147
  %11 = xor i1 %10, true, !mcsema_real_eip !147
  store i1 %11, i1* %PF, !mcsema_real_eip !147
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !147
  store i1 %12, i1* %ZF, !mcsema_real_eip !147
  %13 = lshr i64 %3, 63, !mcsema_real_eip !147
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !147
  store i1 %14, i1* %SF, !mcsema_real_eip !147
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !147
  store i1 %15, i1* %CF, !mcsema_real_eip !147
  %16 = xor i64 %1, 32, !mcsema_real_eip !147
  %17 = and i64 %16, %4, !mcsema_real_eip !147
  %18 = lshr i64 %17, 63, !mcsema_real_eip !147
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !147
  store i1 %19, i1* %OF, !mcsema_real_eip !147
  store i64 %3, i64* %XSP, !mcsema_real_eip !147
  %20 = add i64 %1, -4, !mcsema_real_eip !148
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !148
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !148
  store i32 0, i32* %22, !mcsema_real_eip !148
  br label %block_0xf, !mcsema_real_eip !149

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %23 = add i64 %RBP_val.208, -4, !mcsema_real_eip !149
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !149
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !149
  %26 = load i32, i32* %25, !mcsema_real_eip !149
  %27 = sub i32 %26, 7, !mcsema_real_eip !149
  %28 = xor i32 %27, %26, !mcsema_real_eip !149
  %29 = xor i32 %28, 7, !mcsema_real_eip !149
  %30 = and i32 %29, 16, !mcsema_real_eip !149
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !149
  store i1 %31, i1* %AF, !mcsema_real_eip !149
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !149
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !149
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !149
  %35 = xor i1 %34, true, !mcsema_real_eip !149
  store i1 %35, i1* %PF, !mcsema_real_eip !149
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !149
  store i1 %36, i1* %ZF, !mcsema_real_eip !149
  %37 = lshr i32 %27, 31, !mcsema_real_eip !149
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !149
  store i1 %38, i1* %SF, !mcsema_real_eip !149
  %39 = icmp ult i32 %26, 7, !mcsema_real_eip !149
  store i1 %39, i1* %CF, !mcsema_real_eip !149
  %40 = xor i32 %26, 7, !mcsema_real_eip !149
  %41 = and i32 %40, %28, !mcsema_real_eip !149
  %42 = lshr i32 %41, 31, !mcsema_real_eip !149
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !149
  store i1 %43, i1* %OF, !mcsema_real_eip !149
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !150
  br i1 %44, label %block_0x8b, label %block_0x19, !mcsema_real_eip !150

block_0x19:                                       ; preds = %block_0xf
  %45 = add i64 %RBP_val.208, -8, !mcsema_real_eip !151
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !151
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !151
  store i32 0, i32* %47, !mcsema_real_eip !151
  br label %block_0x20, !mcsema_real_eip !152

block_0x8b:                                       ; preds = %block_0xf
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !153
  %AL.209 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.209, !mcsema_real_eip !154
  %RSI_val.211 = load i64, i64* %XSI, !mcsema_real_eip !155
  %RSP_val.212 = load i64, i64* %XSP, !mcsema_real_eip !155
  %48 = sub i64 %RSP_val.212, 8, !mcsema_real_eip !155
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %49, !mcsema_real_eip !155
  store i64 %48, i64* %XSP, !mcsema_real_eip !155
  %50 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211), !mcsema_real_eip !155
  store i64 %50, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !156
  %51 = add i64 %RBP_val.213, -20, !mcsema_real_eip !156
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !156
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !156
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !156
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !156
  store i32 %EAX_val.215, i32* %53, !mcsema_real_eip !156
  %RSP_val.216 = load i64, i64* %XSP, !mcsema_real_eip !157
  %54 = add i64 32, %RSP_val.216, !mcsema_real_eip !157
  %55 = xor i64 %54, %RSP_val.216, !mcsema_real_eip !157
  %56 = xor i64 %55, 32, !mcsema_real_eip !157
  %57 = and i64 %56, 16, !mcsema_real_eip !157
  %58 = icmp ne i64 %57, 0, !mcsema_real_eip !157
  store i1 %58, i1* %AF, !mcsema_real_eip !157
  %59 = lshr i64 %54, 63, !mcsema_real_eip !157
  %60 = trunc i64 %59 to i1, !mcsema_real_eip !157
  store i1 %60, i1* %SF, !mcsema_real_eip !157
  %61 = icmp eq i64 %54, 0, !mcsema_real_eip !157
  store i1 %61, i1* %ZF, !mcsema_real_eip !157
  %62 = xor i64 %RSP_val.216, 32, !mcsema_real_eip !157
  %63 = xor i64 %62, -1, !mcsema_real_eip !157
  %64 = and i64 %63, %55, !mcsema_real_eip !157
  %65 = lshr i64 %64, 63, !mcsema_real_eip !157
  %66 = and i64 %65, 1, !mcsema_real_eip !157
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !157
  store i1 %67, i1* %OF, !mcsema_real_eip !157
  %68 = trunc i64 %54 to i8, !mcsema_real_eip !157
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !157
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !157
  %71 = xor i1 %70, true, !mcsema_real_eip !157
  store i1 %71, i1* %PF, !mcsema_real_eip !157
  %72 = icmp ult i64 %54, %RSP_val.216, !mcsema_real_eip !157
  store i1 %72, i1* %CF, !mcsema_real_eip !157
  store i64 %54, i64* %XSP, !mcsema_real_eip !157
  %73 = inttoptr i64 %54 to i64*, !mcsema_real_eip !158
  %74 = load i64, i64* %73, !mcsema_real_eip !158
  store i64 %74, i64* %XBP, !mcsema_real_eip !158
  %75 = add i64 %54, 8, !mcsema_real_eip !158
  store i64 %75, i64* %XSP, !mcsema_real_eip !158
  %76 = add i64 %75, 8, !mcsema_real_eip !159
  %77 = inttoptr i64 %75 to i64*, !mcsema_real_eip !159
  %78 = load i64, i64* %77, !mcsema_real_eip !159
  store i64 %78, i64* %XIP, !mcsema_real_eip !159
  store i64 %76, i64* %XSP, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !152
  %79 = add i64 %RBP_val.220, -8, !mcsema_real_eip !152
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !152
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !152
  %82 = load i32, i32* %81, !mcsema_real_eip !152
  %83 = sub i32 %82, 11, !mcsema_real_eip !152
  %84 = xor i32 %83, %82, !mcsema_real_eip !152
  %85 = xor i32 %84, 11, !mcsema_real_eip !152
  %86 = and i32 %85, 16, !mcsema_real_eip !152
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !152
  store i1 %87, i1* %AF, !mcsema_real_eip !152
  %88 = trunc i32 %83 to i8, !mcsema_real_eip !152
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !152
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !152
  %91 = xor i1 %90, true, !mcsema_real_eip !152
  store i1 %91, i1* %PF, !mcsema_real_eip !152
  %92 = icmp eq i32 %83, 0, !mcsema_real_eip !152
  store i1 %92, i1* %ZF, !mcsema_real_eip !152
  %93 = lshr i32 %83, 31, !mcsema_real_eip !152
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !152
  store i1 %94, i1* %SF, !mcsema_real_eip !152
  %95 = icmp ult i32 %82, 11, !mcsema_real_eip !152
  store i1 %95, i1* %CF, !mcsema_real_eip !152
  %96 = xor i32 %82, 11, !mcsema_real_eip !152
  %97 = and i32 %96, %84, !mcsema_real_eip !152
  %98 = lshr i32 %97, 31, !mcsema_real_eip !152
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !152
  store i1 %99, i1* %OF, !mcsema_real_eip !152
  %100 = icmp eq i1 %94, %99, !mcsema_real_eip !160
  br i1 %100, label %block_0x69, label %block_0x2a, !mcsema_real_eip !160

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !161
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !162
  %101 = add i64 %RBP_val.220, -4, !mcsema_real_eip !163
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !163
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !163
  %104 = load i32, i32* %103, !mcsema_real_eip !163
  %105 = sext i32 %104 to i64, !mcsema_real_eip !163
  store i64 %105, i64* %XCX, !mcsema_real_eip !163
  %106 = sext i64 %105 to i128, !mcsema_real_eip !164
  %107 = mul i128 %106, 11, !mcsema_real_eip !164
  %108 = trunc i128 %107 to i64, !mcsema_real_eip !164
  %109 = sext i64 %108 to i128, !mcsema_real_eip !164
  %110 = icmp ne i128 %109, %107, !mcsema_real_eip !164
  %111 = icmp slt i64 %108, 0, !mcsema_real_eip !164
  store i1 %111, i1* %SF, !mcsema_real_eip !164
  store i1 %110, i1* %OF, !mcsema_real_eip !164
  store i1 %110, i1* %CF, !mcsema_real_eip !164
  store i64 %108, i64* %XCX, !mcsema_real_eip !164
  %112 = add i64 %108, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %113 = xor i64 %112, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %114 = xor i64 %113, %108, !mcsema_real_eip !165
  %115 = and i64 %114, 16, !mcsema_real_eip !165
  %116 = icmp ne i64 %115, 0, !mcsema_real_eip !165
  store i1 %116, i1* %AF, !mcsema_real_eip !165
  %117 = lshr i64 %112, 63, !mcsema_real_eip !165
  %118 = trunc i64 %117 to i1, !mcsema_real_eip !165
  store i1 %118, i1* %SF, !mcsema_real_eip !165
  %119 = icmp eq i64 %112, 0, !mcsema_real_eip !165
  store i1 %119, i1* %ZF, !mcsema_real_eip !165
  %120 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %108, !mcsema_real_eip !165
  %121 = xor i64 %120, -1, !mcsema_real_eip !165
  %122 = and i64 %121, %113, !mcsema_real_eip !165
  %123 = lshr i64 %122, 63, !mcsema_real_eip !165
  %124 = and i64 %123, 1, !mcsema_real_eip !165
  %125 = trunc i64 %124 to i1, !mcsema_real_eip !165
  store i1 %125, i1* %OF, !mcsema_real_eip !165
  %126 = trunc i64 %112 to i8, !mcsema_real_eip !165
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !165
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !165
  %129 = xor i1 %128, true, !mcsema_real_eip !165
  store i1 %129, i1* %PF, !mcsema_real_eip !165
  %130 = icmp ult i64 %112, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  store i1 %130, i1* %CF, !mcsema_real_eip !165
  store i64 %112, i64* %XAX, !mcsema_real_eip !165
  %131 = load i32, i32* %81, !mcsema_real_eip !166
  %132 = sext i32 %131 to i64, !mcsema_real_eip !166
  store i64 %132, i64* %XCX, !mcsema_real_eip !166
  %133 = add i64 %112, %132, !mcsema_real_eip !167
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !167
  %135 = inttoptr i64 %133 to i8*, !mcsema_real_eip !167
  %136 = load i8, i8* %135, !mcsema_real_eip !167
  %137 = sext i8 %136 to i32, !mcsema_real_eip !167
  %138 = zext i32 %137 to i64, !mcsema_real_eip !167
  store i64 %138, i64* %XSI, !mcsema_real_eip !167
  %AL.241 = bitcast i64* %XAX to i8*, !mcsema_real_eip !168
  store i8 0, i8* %AL.241, !mcsema_real_eip !168
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !169
  %139 = sub i64 %RSP_val.244, 8, !mcsema_real_eip !169
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %140, !mcsema_real_eip !169
  store i64 %139, i64* %XSP, !mcsema_real_eip !169
  %141 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %138), !mcsema_real_eip !169
  store i64 %141, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.245 = load i64, i64* %XBP, !mcsema_real_eip !170
  %142 = add i64 %RBP_val.245, -12, !mcsema_real_eip !170
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !170
  %EAX.246 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.247 = load i32, i32* %EAX.246, !mcsema_real_eip !170
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.247, i32* %144, !mcsema_real_eip !170
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !171
  %145 = add i64 %RBP_val.248, -8, !mcsema_real_eip !171
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !171
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !171
  %148 = load i32, i32* %147, !mcsema_real_eip !171
  %149 = zext i32 %148 to i64, !mcsema_real_eip !171
  store i64 %149, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.250 = load i32, i32* %EAX.246, !mcsema_real_eip !172
  %150 = add i32 1, %EAX_val.250, !mcsema_real_eip !172
  %151 = xor i32 %150, %EAX_val.250, !mcsema_real_eip !172
  %152 = xor i32 %151, 1, !mcsema_real_eip !172
  %153 = and i32 %152, 16, !mcsema_real_eip !172
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !172
  store i1 %154, i1* %AF, !mcsema_real_eip !172
  %155 = lshr i32 %150, 31, !mcsema_real_eip !172
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !172
  store i1 %156, i1* %SF, !mcsema_real_eip !172
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !172
  store i1 %157, i1* %ZF, !mcsema_real_eip !172
  %158 = xor i32 %EAX_val.250, 1, !mcsema_real_eip !172
  %159 = xor i32 %158, -1, !mcsema_real_eip !172
  %160 = and i32 %159, %151, !mcsema_real_eip !172
  %161 = lshr i32 %160, 31, !mcsema_real_eip !172
  %162 = and i32 %161, 1, !mcsema_real_eip !172
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !172
  store i1 %163, i1* %OF, !mcsema_real_eip !172
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !172
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !172
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !172
  %167 = xor i1 %166, true, !mcsema_real_eip !172
  store i1 %167, i1* %PF, !mcsema_real_eip !172
  %168 = icmp ult i32 %150, %EAX_val.250, !mcsema_real_eip !172
  store i1 %168, i1* %CF, !mcsema_real_eip !172
  %169 = zext i32 %150 to i64, !mcsema_real_eip !172
  store i64 %169, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.253 = load i32, i32* %EAX.246, !mcsema_real_eip !173
  store i32 %EAX_val.253, i32* %147, !mcsema_real_eip !173
  br label %block_0x20, !mcsema_real_eip !174

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !175
  %AL.221 = bitcast i64* %XAX to i8*, !mcsema_real_eip !176
  store i8 0, i8* %AL.221, !mcsema_real_eip !176
  %RSI_val.223 = load i64, i64* %XSI, !mcsema_real_eip !177
  %RSP_val.224 = load i64, i64* %XSP, !mcsema_real_eip !177
  %170 = sub i64 %RSP_val.224, 8, !mcsema_real_eip !177
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !177
  store i64 -2415393069852865332, i64* %171, !mcsema_real_eip !177
  store i64 %170, i64* %XSP, !mcsema_real_eip !177
  %172 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223), !mcsema_real_eip !177
  store i64 %172, i64* %XAX, !mcsema_real_eip !177
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !178
  %173 = add i64 %RBP_val.225, -16, !mcsema_real_eip !178
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !178
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !178
  %175 = inttoptr i64 %173 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.227, i32* %175, !mcsema_real_eip !178
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !179
  %176 = add i64 %RBP_val.228, -4, !mcsema_real_eip !179
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !179
  %178 = inttoptr i64 %176 to i32*, !mcsema_real_eip !179
  %179 = load i32, i32* %178, !mcsema_real_eip !179
  %180 = zext i32 %179 to i64, !mcsema_real_eip !179
  store i64 %180, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.230 = load i32, i32* %EAX.226, !mcsema_real_eip !180
  %181 = add i32 1, %EAX_val.230, !mcsema_real_eip !180
  %182 = xor i32 %181, %EAX_val.230, !mcsema_real_eip !180
  %183 = xor i32 %182, 1, !mcsema_real_eip !180
  %184 = and i32 %183, 16, !mcsema_real_eip !180
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !180
  store i1 %185, i1* %AF, !mcsema_real_eip !180
  %186 = lshr i32 %181, 31, !mcsema_real_eip !180
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !180
  store i1 %187, i1* %SF, !mcsema_real_eip !180
  %188 = icmp eq i32 %181, 0, !mcsema_real_eip !180
  store i1 %188, i1* %ZF, !mcsema_real_eip !180
  %189 = xor i32 %EAX_val.230, 1, !mcsema_real_eip !180
  %190 = xor i32 %189, -1, !mcsema_real_eip !180
  %191 = and i32 %190, %182, !mcsema_real_eip !180
  %192 = lshr i32 %191, 31, !mcsema_real_eip !180
  %193 = and i32 %192, 1, !mcsema_real_eip !180
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !180
  store i1 %194, i1* %OF, !mcsema_real_eip !180
  %195 = trunc i32 %181 to i8, !mcsema_real_eip !180
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !180
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !180
  %198 = xor i1 %197, true, !mcsema_real_eip !180
  store i1 %198, i1* %PF, !mcsema_real_eip !180
  %199 = icmp ult i32 %181, %EAX_val.230, !mcsema_real_eip !180
  store i1 %199, i1* %CF, !mcsema_real_eip !180
  %200 = zext i32 %181 to i64, !mcsema_real_eip !180
  store i64 %200, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.233 = load i32, i32* %EAX.226, !mcsema_real_eip !181
  store i32 %EAX_val.233, i32* %178, !mcsema_real_eip !181
  br label %block_0xf, !mcsema_real_eip !182
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 176}
!3 = !{i64 177}
!4 = !{i64 180}
!5 = !{i64 184}
!6 = !{i64 186}
!7 = !{i64 191}
!8 = !{i64 193}
!9 = !{i64 197}
!10 = !{i64 207}
!11 = !{i64 214}
!12 = !{i64 217}
!13 = !{i64 221}
!14 = !{i64 228}
!15 = !{i64 235}
!16 = !{i64 242}
!17 = !{i64 246}
!18 = !{i64 250}
!19 = !{i64 253}
!20 = !{i64 257}
!21 = !{i64 262}
!22 = !{i64 264}
!23 = !{i64 267}
!24 = !{i64 272}
!25 = !{i64 276}
!26 = !{i64 280}
!27 = !{i64 286}
!28 = !{i64 289}
!29 = !{i64 292}
!30 = !{i64 295}
!31 = !{i64 298}
!32 = !{i64 302}
!33 = !{i64 307}
!34 = !{i64 310}
!35 = !{i64 312}
!36 = !{i64 315}
!37 = !{i64 319}
!38 = !{i64 322}
!39 = !{i64 759}
!40 = !{i64 769}
!41 = !{i64 771}
!42 = !{i64 776}
!43 = !{i64 783}
!44 = !{i64 786}
!45 = !{i64 789}
!46 = !{i64 793}
!47 = !{i64 794}
!48 = !{i64 328}
!49 = !{i64 332}
!50 = !{i64 340}
!51 = !{i64 398}
!52 = !{i64 408}
!53 = !{i64 410}
!54 = !{i64 415}
!55 = !{i64 425}
!56 = !{i64 428}
!57 = !{i64 430}
!58 = !{i64 435}
!59 = !{i64 440}
!60 = !{i64 443}
!61 = !{i64 448}
!62 = !{i64 458}
!63 = !{i64 462}
!64 = !{i64 466}
!65 = !{i64 469}
!66 = !{i64 473}
!67 = !{i64 477}
!68 = !{i64 480}
!69 = !{i64 342}
!70 = !{i64 345}
!71 = !{i64 348}
!72 = !{i64 351}
!73 = !{i64 356}
!74 = !{i64 359}
!75 = !{i64 362}
!76 = !{i64 365}
!77 = !{i64 370}
!78 = !{i64 373}
!79 = !{i64 376}
!80 = !{i64 379}
!81 = !{i64 384}
!82 = !{i64 387}
!83 = !{i64 390}
!84 = !{i64 393}
!85 = !{i64 486}
!86 = !{i64 496}
!87 = !{i64 498}
!88 = !{i64 503}
!89 = !{i64 513}
!90 = !{i64 517}
!91 = !{i64 520}
!92 = !{i64 522}
!93 = !{i64 527}
!94 = !{i64 529}
!95 = !{i64 532}
!96 = !{i64 655}
!97 = !{i64 537}
!98 = !{i64 547}
!99 = !{i64 551}
!100 = !{i64 555}
!101 = !{i64 558}
!102 = !{i64 562}
!103 = !{i64 566}
!104 = !{i64 569}
!105 = !{i64 575}
!106 = !{i64 579}
!107 = !{i64 658}
!108 = !{i64 661}
!109 = !{i64 667}
!110 = !{i64 670}
!111 = !{i64 673}
!112 = !{i64 711}
!113 = !{i64 721}
!114 = !{i64 725}
!115 = !{i64 729}
!116 = !{i64 732}
!117 = !{i64 736}
!118 = !{i64 740}
!119 = !{i64 745}
!120 = !{i64 748}
!121 = !{i64 751}
!122 = !{i64 754}
!123 = !{i64 585}
!124 = !{i64 595}
!125 = !{i64 599}
!126 = !{i64 603}
!127 = !{i64 606}
!128 = !{i64 610}
!129 = !{i64 614}
!130 = !{i64 617}
!131 = !{i64 643}
!132 = !{i64 646}
!133 = !{i64 649}
!134 = !{i64 652}
!135 = !{i64 679}
!136 = !{i64 689}
!137 = !{i64 691}
!138 = !{i64 696}
!139 = !{i64 703}
!140 = !{i64 706}
!141 = !{i64 623}
!142 = !{i64 627}
!143 = !{i64 633}
!144 = !{i64 637}
!145 = !{i64 0}
!146 = !{i64 1}
!147 = !{i64 4}
!148 = !{i64 8}
!149 = !{i64 15}
!150 = !{i64 19}
!151 = !{i64 25}
!152 = !{i64 32}
!153 = !{i64 139}
!154 = !{i64 149}
!155 = !{i64 151}
!156 = !{i64 156}
!157 = !{i64 159}
!158 = !{i64 163}
!159 = !{i64 164}
!160 = !{i64 36}
!161 = !{i64 42}
!162 = !{i64 52}
!163 = !{i64 62}
!164 = !{i64 66}
!165 = !{i64 70}
!166 = !{i64 73}
!167 = !{i64 77}
!168 = !{i64 81}
!169 = !{i64 83}
!170 = !{i64 88}
!171 = !{i64 91}
!172 = !{i64 94}
!173 = !{i64 97}
!174 = !{i64 100}
!175 = !{i64 105}
!176 = !{i64 115}
!177 = !{i64 117}
!178 = !{i64 122}
!179 = !{i64 125}
!180 = !{i64 128}
!181 = !{i64 131}
!182 = !{i64 134}
