; ModuleID = 'Output/test_23.clang.trans.bc'
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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  br label %block_0xf, !mcsema_real_eip !6

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  %26 = load i32, i32* %25, !mcsema_real_eip !6
  %27 = sub i32 %26, 7, !mcsema_real_eip !6
  %28 = xor i32 %27, %26, !mcsema_real_eip !6
  %29 = xor i32 %28, 7, !mcsema_real_eip !6
  %30 = and i32 %29, 16, !mcsema_real_eip !6
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !6
  store i1 %31, i1* %AF, !mcsema_real_eip !6
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !6
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !6
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !6
  %35 = xor i1 %34, true, !mcsema_real_eip !6
  store i1 %35, i1* %PF, !mcsema_real_eip !6
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !6
  store i1 %36, i1* %ZF, !mcsema_real_eip !6
  %37 = lshr i32 %27, 31, !mcsema_real_eip !6
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !6
  store i1 %38, i1* %SF, !mcsema_real_eip !6
  %39 = icmp ult i32 %26, 7, !mcsema_real_eip !6
  store i1 %39, i1* %CF, !mcsema_real_eip !6
  %40 = xor i32 %26, 7, !mcsema_real_eip !6
  %41 = and i32 %40, %28, !mcsema_real_eip !6
  %42 = lshr i32 %41, 31, !mcsema_real_eip !6
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !6
  store i1 %43, i1* %OF, !mcsema_real_eip !6
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !7
  br i1 %44, label %block_0x8b, label %block_0x19, !mcsema_real_eip !7

block_0x19:                                       ; preds = %block_0xf
  %45 = add i64 %RBP_val.5, -8, !mcsema_real_eip !8
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !8
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %47, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %48 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !9
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !9
  %51 = load i32, i32* %50, !mcsema_real_eip !9
  %52 = sub i32 %51, 11, !mcsema_real_eip !9
  %53 = xor i32 %52, %51, !mcsema_real_eip !9
  %54 = xor i32 %53, 11, !mcsema_real_eip !9
  %55 = and i32 %54, 16, !mcsema_real_eip !9
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !9
  store i1 %56, i1* %AF, !mcsema_real_eip !9
  %57 = trunc i32 %52 to i8, !mcsema_real_eip !9
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !9
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !9
  %60 = xor i1 %59, true, !mcsema_real_eip !9
  store i1 %60, i1* %PF, !mcsema_real_eip !9
  %61 = icmp eq i32 %52, 0, !mcsema_real_eip !9
  store i1 %61, i1* %ZF, !mcsema_real_eip !9
  %62 = lshr i32 %52, 31, !mcsema_real_eip !9
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !9
  store i1 %63, i1* %SF, !mcsema_real_eip !9
  %64 = icmp ult i32 %51, 11, !mcsema_real_eip !9
  store i1 %64, i1* %CF, !mcsema_real_eip !9
  %65 = xor i32 %51, 11, !mcsema_real_eip !9
  %66 = and i32 %65, %53, !mcsema_real_eip !9
  %67 = lshr i32 %66, 31, !mcsema_real_eip !9
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !9
  store i1 %68, i1* %OF, !mcsema_real_eip !9
  %69 = icmp eq i1 %63, %68, !mcsema_real_eip !10
  br i1 %69, label %block_0x69, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !11
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !12
  %70 = add i64 %RBP_val.7, -4, !mcsema_real_eip !13
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !13
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !13
  %73 = load i32, i32* %72, !mcsema_real_eip !13
  %74 = sext i32 %73 to i64, !mcsema_real_eip !13
  store i64 %74, i64* %XCX, !mcsema_real_eip !13
  %75 = sext i64 %74 to i128, !mcsema_real_eip !14
  %76 = mul i128 %75, 11, !mcsema_real_eip !14
  %77 = trunc i128 %76 to i64, !mcsema_real_eip !14
  %78 = sext i64 %77 to i128, !mcsema_real_eip !14
  %79 = icmp ne i128 %78, %76, !mcsema_real_eip !14
  %80 = icmp slt i64 %77, 0, !mcsema_real_eip !14
  store i1 %80, i1* %SF, !mcsema_real_eip !14
  store i1 %79, i1* %OF, !mcsema_real_eip !14
  store i1 %79, i1* %CF, !mcsema_real_eip !14
  store i64 %77, i64* %XCX, !mcsema_real_eip !14
  %81 = add i64 %77, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %82 = xor i64 %81, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %83 = xor i64 %82, %77, !mcsema_real_eip !15
  %84 = and i64 %83, 16, !mcsema_real_eip !15
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !15
  store i1 %85, i1* %AF, !mcsema_real_eip !15
  %86 = lshr i64 %81, 63, !mcsema_real_eip !15
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !15
  store i1 %87, i1* %SF, !mcsema_real_eip !15
  %88 = icmp eq i64 %81, 0, !mcsema_real_eip !15
  store i1 %88, i1* %ZF, !mcsema_real_eip !15
  %89 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %77, !mcsema_real_eip !15
  %90 = xor i64 %89, -1, !mcsema_real_eip !15
  %91 = and i64 %90, %82, !mcsema_real_eip !15
  %92 = lshr i64 %91, 63, !mcsema_real_eip !15
  %93 = and i64 %92, 1, !mcsema_real_eip !15
  %94 = trunc i64 %93 to i1, !mcsema_real_eip !15
  store i1 %94, i1* %OF, !mcsema_real_eip !15
  %95 = trunc i64 %81 to i8, !mcsema_real_eip !15
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !15
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !15
  %98 = xor i1 %97, true, !mcsema_real_eip !15
  store i1 %98, i1* %PF, !mcsema_real_eip !15
  %99 = icmp ult i64 %81, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  store i1 %99, i1* %CF, !mcsema_real_eip !15
  store i64 %81, i64* %XAX, !mcsema_real_eip !15
  %100 = load i32, i32* %50, !mcsema_real_eip !16
  %101 = sext i32 %100 to i64, !mcsema_real_eip !16
  store i64 %101, i64* %XCX, !mcsema_real_eip !16
  %102 = add i64 %81, %101, !mcsema_real_eip !17
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !17
  %104 = inttoptr i64 %102 to i8*, !mcsema_real_eip !17
  %105 = load i8, i8* %104, !mcsema_real_eip !17
  %106 = sext i8 %105 to i32, !mcsema_real_eip !17
  %107 = zext i32 %106 to i64, !mcsema_real_eip !17
  store i64 %107, i64* %XSI, !mcsema_real_eip !17
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.15, !mcsema_real_eip !18
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !19
  %108 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !19
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %109, !mcsema_real_eip !19
  store i64 %108, i64* %XSP, !mcsema_real_eip !19
  %110 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %107), !mcsema_real_eip !19
  store i64 %110, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !20
  %111 = add i64 %RBP_val.19, -12, !mcsema_real_eip !20
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !20
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !20
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.21, i32* %113, !mcsema_real_eip !20
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !21
  %114 = add i64 %RBP_val.22, -8, !mcsema_real_eip !21
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !21
  %116 = inttoptr i64 %114 to i32*, !mcsema_real_eip !21
  %117 = load i32, i32* %116, !mcsema_real_eip !21
  %118 = zext i32 %117 to i64, !mcsema_real_eip !21
  store i64 %118, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.24 = load i32, i32* %EAX.20, !mcsema_real_eip !22
  %119 = add i32 1, %EAX_val.24, !mcsema_real_eip !22
  %120 = xor i32 %119, %EAX_val.24, !mcsema_real_eip !22
  %121 = xor i32 %120, 1, !mcsema_real_eip !22
  %122 = and i32 %121, 16, !mcsema_real_eip !22
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !22
  store i1 %123, i1* %AF, !mcsema_real_eip !22
  %124 = lshr i32 %119, 31, !mcsema_real_eip !22
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !22
  store i1 %125, i1* %SF, !mcsema_real_eip !22
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !22
  store i1 %126, i1* %ZF, !mcsema_real_eip !22
  %127 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !22
  %128 = xor i32 %127, -1, !mcsema_real_eip !22
  %129 = and i32 %128, %120, !mcsema_real_eip !22
  %130 = lshr i32 %129, 31, !mcsema_real_eip !22
  %131 = and i32 %130, 1, !mcsema_real_eip !22
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !22
  store i1 %132, i1* %OF, !mcsema_real_eip !22
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !22
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !22
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !22
  %136 = xor i1 %135, true, !mcsema_real_eip !22
  store i1 %136, i1* %PF, !mcsema_real_eip !22
  %137 = icmp ult i32 %119, %EAX_val.24, !mcsema_real_eip !22
  store i1 %137, i1* %CF, !mcsema_real_eip !22
  %138 = zext i32 %119 to i64, !mcsema_real_eip !22
  store i64 %138, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.27 = load i32, i32* %EAX.20, !mcsema_real_eip !23
  store i32 %EAX_val.27, i32* %116, !mcsema_real_eip !23
  br label %block_0x20, !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !25
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !26
  store i8 0, i8* %AL.28, !mcsema_real_eip !26
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !27
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %139 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !27
  store i64 -2415393069852865332, i64* %140, !mcsema_real_eip !27
  store i64 %139, i64* %XSP, !mcsema_real_eip !27
  %141 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.30), !mcsema_real_eip !27
  store i64 %141, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !28
  %142 = add i64 %RBP_val.32, -16, !mcsema_real_eip !28
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !28
  %EAX.33 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.34 = load i32, i32* %EAX.33, !mcsema_real_eip !28
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.34, i32* %144, !mcsema_real_eip !28
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !29
  %145 = add i64 %RBP_val.35, -4, !mcsema_real_eip !29
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !29
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !29
  %148 = load i32, i32* %147, !mcsema_real_eip !29
  %149 = zext i32 %148 to i64, !mcsema_real_eip !29
  store i64 %149, i64* %XAX, !mcsema_real_eip !29
  %EAX_val.37 = load i32, i32* %EAX.33, !mcsema_real_eip !30
  %150 = add i32 1, %EAX_val.37, !mcsema_real_eip !30
  %151 = xor i32 %150, %EAX_val.37, !mcsema_real_eip !30
  %152 = xor i32 %151, 1, !mcsema_real_eip !30
  %153 = and i32 %152, 16, !mcsema_real_eip !30
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !30
  store i1 %154, i1* %AF, !mcsema_real_eip !30
  %155 = lshr i32 %150, 31, !mcsema_real_eip !30
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !30
  store i1 %156, i1* %SF, !mcsema_real_eip !30
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !30
  store i1 %157, i1* %ZF, !mcsema_real_eip !30
  %158 = xor i32 %EAX_val.37, 1, !mcsema_real_eip !30
  %159 = xor i32 %158, -1, !mcsema_real_eip !30
  %160 = and i32 %159, %151, !mcsema_real_eip !30
  %161 = lshr i32 %160, 31, !mcsema_real_eip !30
  %162 = and i32 %161, 1, !mcsema_real_eip !30
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !30
  store i1 %163, i1* %OF, !mcsema_real_eip !30
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !30
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !30
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !30
  %167 = xor i1 %166, true, !mcsema_real_eip !30
  store i1 %167, i1* %PF, !mcsema_real_eip !30
  %168 = icmp ult i32 %150, %EAX_val.37, !mcsema_real_eip !30
  store i1 %168, i1* %CF, !mcsema_real_eip !30
  %169 = zext i32 %150 to i64, !mcsema_real_eip !30
  store i64 %169, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.40 = load i32, i32* %EAX.33, !mcsema_real_eip !31
  store i32 %EAX_val.40, i32* %147, !mcsema_real_eip !31
  br label %block_0xf, !mcsema_real_eip !32

block_0x8b:                                       ; preds = %block_0xf
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !33
  %AL.41 = bitcast i64* %XAX to i8*, !mcsema_real_eip !34
  store i8 0, i8* %AL.41, !mcsema_real_eip !34
  %RSI_val.43 = load i64, i64* %XSI, !mcsema_real_eip !35
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !35
  %170 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !35
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %171, !mcsema_real_eip !35
  store i64 %170, i64* %XSP, !mcsema_real_eip !35
  %172 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.43), !mcsema_real_eip !35
  store i64 %172, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !36
  %173 = add i64 %RBP_val.45, -20, !mcsema_real_eip !36
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !36
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !36
  %175 = inttoptr i64 %173 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.47, i32* %175, !mcsema_real_eip !36
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !37
  %176 = add i64 32, %RSP_val.48, !mcsema_real_eip !37
  %177 = xor i64 %176, %RSP_val.48, !mcsema_real_eip !37
  %178 = xor i64 %177, 32, !mcsema_real_eip !37
  %179 = and i64 %178, 16, !mcsema_real_eip !37
  %180 = icmp ne i64 %179, 0, !mcsema_real_eip !37
  store i1 %180, i1* %AF, !mcsema_real_eip !37
  %181 = lshr i64 %176, 63, !mcsema_real_eip !37
  %182 = trunc i64 %181 to i1, !mcsema_real_eip !37
  store i1 %182, i1* %SF, !mcsema_real_eip !37
  %183 = icmp eq i64 %176, 0, !mcsema_real_eip !37
  store i1 %183, i1* %ZF, !mcsema_real_eip !37
  %184 = xor i64 %RSP_val.48, 32, !mcsema_real_eip !37
  %185 = xor i64 %184, -1, !mcsema_real_eip !37
  %186 = and i64 %185, %177, !mcsema_real_eip !37
  %187 = lshr i64 %186, 63, !mcsema_real_eip !37
  %188 = and i64 %187, 1, !mcsema_real_eip !37
  %189 = trunc i64 %188 to i1, !mcsema_real_eip !37
  store i1 %189, i1* %OF, !mcsema_real_eip !37
  %190 = trunc i64 %176 to i8, !mcsema_real_eip !37
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !37
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !37
  %193 = xor i1 %192, true, !mcsema_real_eip !37
  store i1 %193, i1* %PF, !mcsema_real_eip !37
  %194 = icmp ult i64 %176, %RSP_val.48, !mcsema_real_eip !37
  store i1 %194, i1* %CF, !mcsema_real_eip !37
  store i64 %176, i64* %XSP, !mcsema_real_eip !37
  %195 = inttoptr i64 %176 to i64*, !mcsema_real_eip !38
  %196 = load i64, i64* %195, !mcsema_real_eip !38
  store i64 %196, i64* %XBP, !mcsema_real_eip !38
  %197 = add i64 %176, 8, !mcsema_real_eip !38
  store i64 %197, i64* %XSP, !mcsema_real_eip !38
  %198 = add i64 %197, 8, !mcsema_real_eip !39
  %199 = inttoptr i64 %197 to i64*, !mcsema_real_eip !39
  %200 = load i64, i64* %199, !mcsema_real_eip !39
  store i64 %200, i64* %XIP, !mcsema_real_eip !39
  store i64 %198, i64* %XSP, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !40
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !40
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !40
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !40
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !40
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !40
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !40
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !40
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !40
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !40
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !40
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !40
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !40
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !40
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !40
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !40
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !40
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !40
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !40
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !40
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !40
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !40
  br label %block_0xb0, !mcsema_real_eip !40

block_0xb0:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !40
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !40
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !41
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.54, 112, !mcsema_real_eip !42
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !42
  %4 = and i64 %3, 16, !mcsema_real_eip !42
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !42
  store i1 %5, i1* %AF, !mcsema_real_eip !42
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !42
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !42
  %8 = xor i1 %7, true, !mcsema_real_eip !42
  store i1 %8, i1* %PF, !mcsema_real_eip !42
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !42
  %9 = lshr i64 %2, 63, !mcsema_real_eip !42
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !42
  store i1 %10, i1* %SF, !mcsema_real_eip !42
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !42
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !42
  %12 = lshr i64 %11, 63, !mcsema_real_eip !42
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !42
  store i1 %13, i1* %OF, !mcsema_real_eip !42
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !42
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !43
  store i1 false, i1* %CF, !mcsema_real_eip !43
  store i1 false, i1* %OF, !mcsema_real_eip !43
  store i1 false, i1* %SF, !mcsema_real_eip !43
  store i1 true, i1* %ZF, !mcsema_real_eip !43
  store i1 true, i1* %PF, !mcsema_real_eip !43
  store i1 undef, i1* %AF, !mcsema_real_eip !43
  store i64 0, i64* %XAX, !mcsema_real_eip !43
  store i64 28, i64* %XCX, !mcsema_real_eip !44
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !45
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !45
  %14 = zext i32 %ECX_val.60 to i64, !mcsema_real_eip !45
  store i64 %14, i64* %XDX, !mcsema_real_eip !45
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -64
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !46
  store i64 %15, i64* %R8, !mcsema_real_eip !46
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !47
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !48
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %17, !mcsema_real_eip !48
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.65 = load i32, i32* %EDI.64, !mcsema_real_eip !49
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !49
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !49
  store i32 %EDI_val.65, i32* %19, !mcsema_real_eip !49
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.67 = load i64, i64* %XSI, !mcsema_real_eip !50
  store i64 %RSI_val.67, i64* %_allin_new_bt_24, !mcsema_real_eip !50
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -36
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !51
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !51
  store i32 0, i32* %21, !mcsema_real_eip !51
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -20
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !52
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !52
  store i32 1, i32* %23, !mcsema_real_eip !52
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !53
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !53
  store i32 1, i32* %25, !mcsema_real_eip !53
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !54
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !54
  %28 = load i32, i32* %27, !mcsema_real_eip !54
  %29 = sext i32 %28 to i64, !mcsema_real_eip !54
  store i64 %29, i64* %XSI, !mcsema_real_eip !54
  %30 = sext i64 %29 to i128, !mcsema_real_eip !55
  %31 = mul i128 %30, 11, !mcsema_real_eip !55
  %32 = trunc i128 %31 to i64, !mcsema_real_eip !55
  %33 = sext i64 %32 to i128, !mcsema_real_eip !55
  %34 = icmp ne i128 %33, %31, !mcsema_real_eip !55
  %35 = icmp slt i64 %32, 0, !mcsema_real_eip !55
  store i1 %35, i1* %SF, !mcsema_real_eip !55
  store i1 %34, i1* %OF, !mcsema_real_eip !55
  store i1 %34, i1* %CF, !mcsema_real_eip !55
  store i64 %32, i64* %XSI, !mcsema_real_eip !55
  %R9_val.73 = load i64, i64* %R9, !mcsema_real_eip !56
  %36 = add i64 %32, %R9_val.73, !mcsema_real_eip !56
  %37 = xor i64 %36, %R9_val.73, !mcsema_real_eip !56
  %38 = xor i64 %37, %32, !mcsema_real_eip !56
  %39 = and i64 %38, 16, !mcsema_real_eip !56
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !56
  store i1 %40, i1* %AF, !mcsema_real_eip !56
  %41 = lshr i64 %36, 63, !mcsema_real_eip !56
  %42 = trunc i64 %41 to i1, !mcsema_real_eip !56
  store i1 %42, i1* %SF, !mcsema_real_eip !56
  %43 = icmp eq i64 %36, 0, !mcsema_real_eip !56
  store i1 %43, i1* %ZF, !mcsema_real_eip !56
  %44 = xor i64 %R9_val.73, %32, !mcsema_real_eip !56
  %45 = xor i64 %44, -1, !mcsema_real_eip !56
  %46 = and i64 %45, %37, !mcsema_real_eip !56
  %47 = lshr i64 %46, 63, !mcsema_real_eip !56
  %48 = and i64 %47, 1, !mcsema_real_eip !56
  %49 = trunc i64 %48 to i1, !mcsema_real_eip !56
  store i1 %49, i1* %OF, !mcsema_real_eip !56
  %50 = trunc i64 %36 to i8, !mcsema_real_eip !56
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !56
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !56
  %53 = xor i1 %52, true, !mcsema_real_eip !56
  store i1 %53, i1* %PF, !mcsema_real_eip !56
  %54 = icmp ult i64 %36, %R9_val.73, !mcsema_real_eip !56
  store i1 %54, i1* %CF, !mcsema_real_eip !56
  store i64 %36, i64* %R9, !mcsema_real_eip !56
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !57
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !57
  %57 = load i32, i32* %56, !mcsema_real_eip !57
  %58 = sext i32 %57 to i64, !mcsema_real_eip !57
  store i64 %58, i64* %XSI, !mcsema_real_eip !57
  %59 = add i64 %36, %58, !mcsema_real_eip !58
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !58
  %61 = inttoptr i64 %59 to i8*, !mcsema_real_eip !58
  store i8 88, i8* %61, !mcsema_real_eip !58
  %EAX_val.79 = load i32, i32* %EAX.55, !mcsema_real_eip !59
  %62 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !59
  store i64 %62, i64* %XDI, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !60
  store i64 %R8_val.80, i64* %XSI, !mcsema_real_eip !60
  %RDX_val.83 = load i64, i64* %XDX, !mcsema_real_eip !61
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %63 = sub i64 %RSP_val.84, 8, !mcsema_real_eip !61
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, !mcsema_real_eip !61
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %63, i64* %XSP, !mcsema_real_eip !61
  %64 = call x86_64_sysvcc i64 @_read(i64 %62, i64 %R8_val.80, i64 %RDX_val.83)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %64, i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %64, i64* %_allin_new_bt_45, !mcsema_real_eip !62
  br label %block_0x114, !mcsema_real_eip !63

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -36
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !63
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !63
  %67 = load i32, i32* %66, !mcsema_real_eip !63
  %68 = sub i32 %67, 28, !mcsema_real_eip !63
  %69 = xor i32 %68, %67, !mcsema_real_eip !63
  %70 = xor i32 %69, 28, !mcsema_real_eip !63
  %71 = and i32 %70, 16, !mcsema_real_eip !63
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !63
  store i1 %72, i1* %AF, !mcsema_real_eip !63
  %73 = trunc i32 %68 to i8, !mcsema_real_eip !63
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !63
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !63
  %76 = xor i1 %75, true, !mcsema_real_eip !63
  store i1 %76, i1* %PF, !mcsema_real_eip !63
  %77 = icmp eq i32 %68, 0, !mcsema_real_eip !63
  store i1 %77, i1* %ZF, !mcsema_real_eip !63
  %78 = lshr i32 %68, 31, !mcsema_real_eip !63
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !63
  store i1 %79, i1* %SF, !mcsema_real_eip !63
  %80 = icmp ult i32 %67, 28, !mcsema_real_eip !63
  store i1 %80, i1* %CF, !mcsema_real_eip !63
  %81 = xor i32 %67, 28, !mcsema_real_eip !63
  %82 = and i32 %81, %69, !mcsema_real_eip !63
  %83 = lshr i32 %82, 31, !mcsema_real_eip !63
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !63
  store i1 %84, i1* %OF, !mcsema_real_eip !63
  %85 = icmp eq i1 %79, %84, !mcsema_real_eip !64
  br i1 %85, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !64

block_0x11e:                                      ; preds = %block_0x114
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %86 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !65
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !65
  %88 = load i32, i32* %87, !mcsema_real_eip !65
  %89 = zext i32 %88 to i64, !mcsema_real_eip !65
  store i64 %89, i64* %XAX, !mcsema_real_eip !65
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %EAX_val.91 = load i32, i32* %EAX.55, !mcsema_real_eip !66
  %90 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !66
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.91, i32* %91, !mcsema_real_eip !66
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %92 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !67
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !67
  %94 = load i32, i32* %93, !mcsema_real_eip !67
  %95 = zext i32 %94 to i64, !mcsema_real_eip !67
  store i64 %95, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %EAX_val.95 = load i32, i32* %EAX.55, !mcsema_real_eip !68
  %96 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !68
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.95, i32* %97, !mcsema_real_eip !68
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -36
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !69
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !69
  %100 = load i32, i32* %99, !mcsema_real_eip !69
  %101 = sext i32 %100 to i64, !mcsema_real_eip !69
  store i64 %101, i64* %XCX, !mcsema_real_eip !69
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %101
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !70
  %103 = inttoptr i64 %102 to i8*, !mcsema_real_eip !70
  %104 = load i8, i8* %103, !mcsema_real_eip !70
  %105 = sext i8 %104 to i32, !mcsema_real_eip !70
  %106 = zext i32 %105 to i64, !mcsema_real_eip !70
  store i64 %106, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.100 = load i32, i32* %EAX.55, !mcsema_real_eip !71
  %107 = add i32 -97, %EAX_val.100, !mcsema_real_eip !71
  %108 = xor i32 %107, %EAX_val.100, !mcsema_real_eip !71
  %109 = xor i32 %108, -97, !mcsema_real_eip !71
  %110 = and i32 %109, 16, !mcsema_real_eip !71
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !71
  store i1 %111, i1* %AF, !mcsema_real_eip !71
  %112 = lshr i32 %107, 31, !mcsema_real_eip !71
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !71
  store i1 %113, i1* %SF, !mcsema_real_eip !71
  %114 = icmp eq i32 %107, 0, !mcsema_real_eip !71
  store i1 %114, i1* %ZF, !mcsema_real_eip !71
  %115 = xor i32 %EAX_val.100, -97, !mcsema_real_eip !71
  %116 = xor i32 %115, -1, !mcsema_real_eip !71
  %117 = and i32 %116, %108, !mcsema_real_eip !71
  %118 = lshr i32 %117, 31, !mcsema_real_eip !71
  %119 = and i32 %118, 1, !mcsema_real_eip !71
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !71
  store i1 %120, i1* %OF, !mcsema_real_eip !71
  %121 = trunc i32 %107 to i8, !mcsema_real_eip !71
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !71
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !71
  %124 = xor i1 %123, true, !mcsema_real_eip !71
  store i1 %124, i1* %PF, !mcsema_real_eip !71
  %125 = icmp ult i32 %107, %EAX_val.100, !mcsema_real_eip !71
  store i1 %125, i1* %CF, !mcsema_real_eip !71
  %126 = zext i32 %107 to i64, !mcsema_real_eip !71
  store i64 %126, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.102 = load i32, i32* %EAX.55, !mcsema_real_eip !72
  %127 = zext i32 %EAX_val.102 to i64, !mcsema_real_eip !72
  store i64 %127, i64* %XCX, !mcsema_real_eip !72
  %128 = sub i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %129 = xor i32 %128, %EAX_val.102, !mcsema_real_eip !73
  %130 = xor i32 %129, 22, !mcsema_real_eip !73
  %131 = and i32 %130, 16, !mcsema_real_eip !73
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !73
  store i1 %132, i1* %AF, !mcsema_real_eip !73
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !73
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !73
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !73
  %136 = xor i1 %135, true, !mcsema_real_eip !73
  store i1 %136, i1* %PF, !mcsema_real_eip !73
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !73
  store i1 %137, i1* %ZF, !mcsema_real_eip !73
  %138 = lshr i32 %128, 31, !mcsema_real_eip !73
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !73
  store i1 %139, i1* %SF, !mcsema_real_eip !73
  %140 = icmp ult i32 %EAX_val.102, 22, !mcsema_real_eip !73
  store i1 %140, i1* %CF, !mcsema_real_eip !73
  %141 = xor i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %142 = and i32 %141, %129, !mcsema_real_eip !73
  %143 = lshr i32 %142, 31, !mcsema_real_eip !73
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !73
  store i1 %144, i1* %OF, !mcsema_real_eip !73
  %145 = zext i32 %128 to i64, !mcsema_real_eip !73
  store i64 %145, i64* %XAX, !mcsema_real_eip !73
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %127, i64* %_allin_new_bt_70, !mcsema_real_eip !74
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -84
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.109 = load i32, i32* %EAX.55, !mcsema_real_eip !75
  %146 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !75
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.109, i32* %147, !mcsema_real_eip !75
  %148 = load i1, i1* %ZF, !mcsema_real_eip !76
  %149 = icmp eq i1 %148, false, !mcsema_real_eip !76
  %150 = load i1, i1* %CF, !mcsema_real_eip !76
  %151 = icmp eq i1 %150, false, !mcsema_real_eip !76
  %152 = and i1 %151, %149, !mcsema_real_eip !76
  br i1 %152, label %block_0x18e, label %block_0x148, !mcsema_real_eip !76

block_0x148:                                      ; preds = %block_0x11e
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -80
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %153 = load i64, i64* %_allin_new_bt_76, !mcsema_real_eip !77
  store i64 %153, i64* %XAX, !mcsema_real_eip !77
  %154 = mul i64 %153, 8, !mcsema_real_eip !78
  %155 = add i64 ptrtoint (%0* @data_0x320 to i64), %154, !mcsema_real_eip !78
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !78
  %157 = load i64, i64* %156, !mcsema_real_eip !78
  store i64 %157, i64* %XCX, !mcsema_real_eip !78
  switch i64 %157, label %642 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !79

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -24
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %158 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !80
  %159 = inttoptr i64 %158 to i32*, !mcsema_real_eip !80
  %160 = load i32, i32* %159, !mcsema_real_eip !80
  %161 = zext i32 %160 to i64, !mcsema_real_eip !80
  store i64 %161, i64* %XAX, !mcsema_real_eip !80
  %EAX_val.115 = load i32, i32* %EAX.55, !mcsema_real_eip !81
  %162 = add i32 -1, %EAX_val.115, !mcsema_real_eip !81
  %163 = xor i32 %162, %EAX_val.115, !mcsema_real_eip !81
  %164 = xor i32 %163, -1, !mcsema_real_eip !81
  %165 = and i32 %164, 16, !mcsema_real_eip !81
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !81
  store i1 %166, i1* %AF, !mcsema_real_eip !81
  %167 = lshr i32 %162, 31, !mcsema_real_eip !81
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !81
  store i1 %168, i1* %SF, !mcsema_real_eip !81
  %169 = icmp eq i32 %162, 0, !mcsema_real_eip !81
  store i1 %169, i1* %ZF, !mcsema_real_eip !81
  %170 = xor i32 %EAX_val.115, -1, !mcsema_real_eip !81
  %171 = and i32 %EAX_val.115, %163, !mcsema_real_eip !81
  %172 = lshr i32 %171, 31, !mcsema_real_eip !81
  %173 = and i32 %172, 1, !mcsema_real_eip !81
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !81
  store i1 %174, i1* %OF, !mcsema_real_eip !81
  %175 = trunc i32 %162 to i8, !mcsema_real_eip !81
  %176 = call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !81
  %177 = trunc i8 %176 to i1, !mcsema_real_eip !81
  %178 = xor i1 %177, true, !mcsema_real_eip !81
  store i1 %178, i1* %PF, !mcsema_real_eip !81
  %179 = icmp ult i32 %162, %EAX_val.115, !mcsema_real_eip !81
  store i1 %179, i1* %CF, !mcsema_real_eip !81
  %180 = zext i32 %162 to i64, !mcsema_real_eip !81
  store i64 %180, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.118 = load i32, i32* %EAX.55, !mcsema_real_eip !82
  store i32 %EAX_val.118, i32* %159, !mcsema_real_eip !82
  br label %block_0x1c0, !mcsema_real_eip !83

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %181 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !84
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !84
  %183 = load i32, i32* %182, !mcsema_real_eip !84
  %184 = zext i32 %183 to i64, !mcsema_real_eip !84
  store i64 %184, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.121 = load i32, i32* %EAX.55, !mcsema_real_eip !85
  %185 = add i32 1, %EAX_val.121, !mcsema_real_eip !85
  %186 = xor i32 %185, %EAX_val.121, !mcsema_real_eip !85
  %187 = xor i32 %186, 1, !mcsema_real_eip !85
  %188 = and i32 %187, 16, !mcsema_real_eip !85
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !85
  store i1 %189, i1* %AF, !mcsema_real_eip !85
  %190 = lshr i32 %185, 31, !mcsema_real_eip !85
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !85
  store i1 %191, i1* %SF, !mcsema_real_eip !85
  %192 = icmp eq i32 %185, 0, !mcsema_real_eip !85
  store i1 %192, i1* %ZF, !mcsema_real_eip !85
  %193 = xor i32 %EAX_val.121, 1, !mcsema_real_eip !85
  %194 = xor i32 %193, -1, !mcsema_real_eip !85
  %195 = and i32 %194, %186, !mcsema_real_eip !85
  %196 = lshr i32 %195, 31, !mcsema_real_eip !85
  %197 = and i32 %196, 1, !mcsema_real_eip !85
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !85
  store i1 %198, i1* %OF, !mcsema_real_eip !85
  %199 = trunc i32 %185 to i8, !mcsema_real_eip !85
  %200 = call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !85
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !85
  %202 = xor i1 %201, true, !mcsema_real_eip !85
  store i1 %202, i1* %PF, !mcsema_real_eip !85
  %203 = icmp ult i32 %185, %EAX_val.121, !mcsema_real_eip !85
  store i1 %203, i1* %CF, !mcsema_real_eip !85
  %204 = zext i32 %185 to i64, !mcsema_real_eip !85
  store i64 %204, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.124 = load i32, i32* %EAX.55, !mcsema_real_eip !86
  store i32 %EAX_val.124, i32* %182, !mcsema_real_eip !86
  br label %block_0x1c0, !mcsema_real_eip !87

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -20
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %205 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !88
  %206 = inttoptr i64 %205 to i32*, !mcsema_real_eip !88
  %207 = load i32, i32* %206, !mcsema_real_eip !88
  %208 = zext i32 %207 to i64, !mcsema_real_eip !88
  store i64 %208, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.127 = load i32, i32* %EAX.55, !mcsema_real_eip !89
  %209 = add i32 -1, %EAX_val.127, !mcsema_real_eip !89
  %210 = xor i32 %209, %EAX_val.127, !mcsema_real_eip !89
  %211 = xor i32 %210, -1, !mcsema_real_eip !89
  %212 = and i32 %211, 16, !mcsema_real_eip !89
  %213 = icmp ne i32 %212, 0, !mcsema_real_eip !89
  store i1 %213, i1* %AF, !mcsema_real_eip !89
  %214 = lshr i32 %209, 31, !mcsema_real_eip !89
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !89
  store i1 %215, i1* %SF, !mcsema_real_eip !89
  %216 = icmp eq i32 %209, 0, !mcsema_real_eip !89
  store i1 %216, i1* %ZF, !mcsema_real_eip !89
  %217 = xor i32 %EAX_val.127, -1, !mcsema_real_eip !89
  %218 = and i32 %EAX_val.127, %210, !mcsema_real_eip !89
  %219 = lshr i32 %218, 31, !mcsema_real_eip !89
  %220 = and i32 %219, 1, !mcsema_real_eip !89
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !89
  store i1 %221, i1* %OF, !mcsema_real_eip !89
  %222 = trunc i32 %209 to i8, !mcsema_real_eip !89
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !89
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !89
  %225 = xor i1 %224, true, !mcsema_real_eip !89
  store i1 %225, i1* %PF, !mcsema_real_eip !89
  %226 = icmp ult i32 %209, %EAX_val.127, !mcsema_real_eip !89
  store i1 %226, i1* %CF, !mcsema_real_eip !89
  %227 = zext i32 %209 to i64, !mcsema_real_eip !89
  store i64 %227, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.130 = load i32, i32* %EAX.55, !mcsema_real_eip !90
  store i32 %EAX_val.130, i32* %206, !mcsema_real_eip !90
  br label %block_0x1c0, !mcsema_real_eip !91

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -20
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %228 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !92
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !92
  %230 = load i32, i32* %229, !mcsema_real_eip !92
  %231 = zext i32 %230 to i64, !mcsema_real_eip !92
  store i64 %231, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.133 = load i32, i32* %EAX.55, !mcsema_real_eip !93
  %232 = add i32 1, %EAX_val.133, !mcsema_real_eip !93
  %233 = xor i32 %232, %EAX_val.133, !mcsema_real_eip !93
  %234 = xor i32 %233, 1, !mcsema_real_eip !93
  %235 = and i32 %234, 16, !mcsema_real_eip !93
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !93
  store i1 %236, i1* %AF, !mcsema_real_eip !93
  %237 = lshr i32 %232, 31, !mcsema_real_eip !93
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !93
  store i1 %238, i1* %SF, !mcsema_real_eip !93
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !93
  store i1 %239, i1* %ZF, !mcsema_real_eip !93
  %240 = xor i32 %EAX_val.133, 1, !mcsema_real_eip !93
  %241 = xor i32 %240, -1, !mcsema_real_eip !93
  %242 = and i32 %241, %233, !mcsema_real_eip !93
  %243 = lshr i32 %242, 31, !mcsema_real_eip !93
  %244 = and i32 %243, 1, !mcsema_real_eip !93
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !93
  store i1 %245, i1* %OF, !mcsema_real_eip !93
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !93
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !93
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !93
  %249 = xor i1 %248, true, !mcsema_real_eip !93
  store i1 %249, i1* %PF, !mcsema_real_eip !93
  %250 = icmp ult i32 %232, %EAX_val.133, !mcsema_real_eip !93
  store i1 %250, i1* %CF, !mcsema_real_eip !93
  %251 = zext i32 %232 to i64, !mcsema_real_eip !93
  store i64 %251, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.136 = load i32, i32* %EAX.55, !mcsema_real_eip !94
  store i32 %EAX_val.136, i32* %229, !mcsema_real_eip !94
  br label %block_0x1c0, !mcsema_real_eip !95

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !96
  %AL.137 = bitcast i64* %XAX to i8*, !mcsema_real_eip !97
  store i8 0, i8* %AL.137, !mcsema_real_eip !97
  %RSI_val.139 = load i64, i64* %XSI, !mcsema_real_eip !98
  %_load_rsp_ptr_101 = load i8*, i8** %_RSP_ptr_
  %RSP_val.140 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_102 = getelementptr i8, i8* %_load_rsp_ptr_101, i64 -8
  %252 = sub i64 %RSP_val.140, 8, !mcsema_real_eip !98
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_103, !mcsema_real_eip !98
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %252, i64* %XSP, !mcsema_real_eip !98
  %253 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.139)
  %_rsp_fix_243 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_244 = getelementptr i8, i8* %_rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_
  store i64 %253, i64* %XAX, !mcsema_real_eip !98
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !99
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -88
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %EAX_val.143 = load i32, i32* %EAX.55, !mcsema_real_eip !100
  %254 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !100
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.143, i32* %255, !mcsema_real_eip !100
  store i8 0, i8* %AL.137, !mcsema_real_eip !101
  %RDI_val.145 = load i64, i64* %XDI, !mcsema_real_eip !102
  %RSI_val.146 = load i64, i64* %XSI, !mcsema_real_eip !102
  %_load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_
  %RSP_val.147 = load i64, i64* %XSP, !mcsema_real_eip !102
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_107, i64 -8
  %256 = sub i64 %RSP_val.147, 8, !mcsema_real_eip !102
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_109, !mcsema_real_eip !102
  store volatile i8* %_new_gep_108, i8** %_RSP_ptr_
  store i64 %256, i64* %XSP, !mcsema_real_eip !102
  %257 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146)
  %_rsp_fix_245 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_246 = getelementptr i8, i8* %_rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_
  store i64 %257, i64* %XAX, !mcsema_real_eip !102
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !103
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -92
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %EAX_val.150 = load i32, i32* %EAX.55, !mcsema_real_eip !104
  %258 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !104
  %259 = inttoptr i64 %258 to i32*, !mcsema_real_eip !104
  store i32 %EAX_val.150, i32* %259, !mcsema_real_eip !104
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !105
  %_load_rsp_ptr_113 = load i8*, i8** %_RSP_ptr_
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !105
  %_new_gep_114 = getelementptr i8, i8* %_load_rsp_ptr_113, i64 -8
  %260 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !105
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_115, !mcsema_real_eip !105
  store volatile i8* %_new_gep_114, i8** %_RSP_ptr_
  store i64 %260, i64* %XSP, !mcsema_real_eip !105
  %261 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_rsp_fix_247 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_248 = getelementptr i8, i8* %_rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_
  store i64 %261, i64* %XAX, !mcsema_real_eip !105
  br label %block_0x1c0, !mcsema_real_eip !106

block_0x1c0:                                      ; preds = %block_0x18e, %block_0x180, %block_0x172, %block_0x164, %block_0x156
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !106
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -24
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %262 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !107
  %263 = inttoptr i64 %262 to i32*, !mcsema_real_eip !107
  %264 = load i32, i32* %263, !mcsema_real_eip !107
  %265 = sext i32 %264 to i64, !mcsema_real_eip !107
  store i64 %265, i64* %XCX, !mcsema_real_eip !107
  %266 = sext i64 %265 to i128, !mcsema_real_eip !108
  %267 = mul i128 %266, 11, !mcsema_real_eip !108
  %268 = trunc i128 %267 to i64, !mcsema_real_eip !108
  %269 = sext i64 %268 to i128, !mcsema_real_eip !108
  %270 = icmp ne i128 %269, %267, !mcsema_real_eip !108
  %271 = icmp slt i64 %268, 0, !mcsema_real_eip !108
  store i1 %271, i1* %SF, !mcsema_real_eip !108
  store i1 %270, i1* %OF, !mcsema_real_eip !108
  store i1 %270, i1* %CF, !mcsema_real_eip !108
  store i64 %268, i64* %XCX, !mcsema_real_eip !108
  %272 = add i64 %268, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %273 = xor i64 %272, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %274 = xor i64 %273, %268, !mcsema_real_eip !109
  %275 = and i64 %274, 16, !mcsema_real_eip !109
  %276 = icmp ne i64 %275, 0, !mcsema_real_eip !109
  store i1 %276, i1* %AF, !mcsema_real_eip !109
  %277 = lshr i64 %272, 63, !mcsema_real_eip !109
  %278 = trunc i64 %277 to i1, !mcsema_real_eip !109
  store i1 %278, i1* %SF, !mcsema_real_eip !109
  %279 = icmp eq i64 %272, 0, !mcsema_real_eip !109
  store i1 %279, i1* %ZF, !mcsema_real_eip !109
  %280 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %268, !mcsema_real_eip !109
  %281 = xor i64 %280, -1, !mcsema_real_eip !109
  %282 = and i64 %281, %273, !mcsema_real_eip !109
  %283 = lshr i64 %282, 63, !mcsema_real_eip !109
  %284 = and i64 %283, 1, !mcsema_real_eip !109
  %285 = trunc i64 %284 to i1, !mcsema_real_eip !109
  store i1 %285, i1* %OF, !mcsema_real_eip !109
  %286 = trunc i64 %272 to i8, !mcsema_real_eip !109
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !109
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !109
  %289 = xor i1 %288, true, !mcsema_real_eip !109
  store i1 %289, i1* %PF, !mcsema_real_eip !109
  %290 = icmp ult i64 %272, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  store i1 %290, i1* %CF, !mcsema_real_eip !109
  store i64 %272, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -20
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %291 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !110
  %292 = inttoptr i64 %291 to i32*, !mcsema_real_eip !110
  %293 = load i32, i32* %292, !mcsema_real_eip !110
  %294 = sext i32 %293 to i64, !mcsema_real_eip !110
  store i64 %294, i64* %XCX, !mcsema_real_eip !110
  %295 = add i64 %272, %294, !mcsema_real_eip !111
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !111
  %297 = inttoptr i64 %295 to i8*, !mcsema_real_eip !111
  %298 = load i8, i8* %297, !mcsema_real_eip !111
  %299 = sext i8 %298 to i32, !mcsema_real_eip !111
  %300 = zext i32 %299 to i64, !mcsema_real_eip !111
  store i64 %300, i64* %XDX, !mcsema_real_eip !111
  %EDX.160 = bitcast i64* %XDX to i32*, !mcsema_real_eip !112
  %EDX_val.161 = load i32, i32* %EDX.160, !mcsema_real_eip !112
  %301 = sub i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %302 = xor i32 %301, %EDX_val.161, !mcsema_real_eip !112
  %303 = xor i32 %302, 35, !mcsema_real_eip !112
  %304 = and i32 %303, 16, !mcsema_real_eip !112
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !112
  store i1 %305, i1* %AF, !mcsema_real_eip !112
  %306 = trunc i32 %301 to i8, !mcsema_real_eip !112
  %307 = call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !112
  %308 = trunc i8 %307 to i1, !mcsema_real_eip !112
  %309 = xor i1 %308, true, !mcsema_real_eip !112
  store i1 %309, i1* %PF, !mcsema_real_eip !112
  %310 = icmp eq i32 %301, 0, !mcsema_real_eip !112
  store i1 %310, i1* %ZF, !mcsema_real_eip !112
  %311 = lshr i32 %301, 31, !mcsema_real_eip !112
  %312 = trunc i32 %311 to i1, !mcsema_real_eip !112
  store i1 %312, i1* %SF, !mcsema_real_eip !112
  %313 = icmp ult i32 %EDX_val.161, 35, !mcsema_real_eip !112
  store i1 %313, i1* %CF, !mcsema_real_eip !112
  %314 = xor i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %315 = and i32 %314, %302, !mcsema_real_eip !112
  %316 = lshr i32 %315, 31, !mcsema_real_eip !112
  %317 = trunc i32 %316 to i1, !mcsema_real_eip !112
  store i1 %317, i1* %OF, !mcsema_real_eip !112
  %318 = icmp eq i1 %310, false, !mcsema_real_eip !113
  br i1 %318, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !113

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !114
  %AL.162 = bitcast i64* %XAX to i8*, !mcsema_real_eip !115
  store i8 0, i8* %AL.162, !mcsema_real_eip !115
  %RSI_val.164 = load i64, i64* %XSI, !mcsema_real_eip !116
  %_load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !116
  %_new_gep_123 = getelementptr i8, i8* %_load_rsp_ptr_122, i64 -8
  %319 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !116
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_124, !mcsema_real_eip !116
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_
  store i64 %319, i64* %XSP, !mcsema_real_eip !116
  %320 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.164)
  %_rsp_fix_249 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_250 = getelementptr i8, i8* %_rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_
  store i64 %320, i64* %XAX, !mcsema_real_eip !116
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !117
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -64
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %321 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !118
  store i64 %321, i64* %XSI, !mcsema_real_eip !118
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -96
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %EAX_val.169 = load i32, i32* %EAX.55, !mcsema_real_eip !119
  %322 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !119
  %323 = inttoptr i64 %322 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.169, i32* %323, !mcsema_real_eip !119
  store i8 0, i8* %AL.162, !mcsema_real_eip !120
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !121
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !121
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %RSP_val.173 = load i64, i64* %XSP, !mcsema_real_eip !121
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 -8
  %324 = sub i64 %RSP_val.173, 8, !mcsema_real_eip !121
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_133, !mcsema_real_eip !121
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_
  store i64 %324, i64* %XSP, !mcsema_real_eip !121
  %325 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172)
  %_rsp_fix_251 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_252 = getelementptr i8, i8* %_rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_
  store i64 %325, i64* %XAX, !mcsema_real_eip !121
  %EDI_val.175 = load i32, i32* %EDI.64, !mcsema_real_eip !122
  store i1 false, i1* %CF, !mcsema_real_eip !122
  store i1 false, i1* %OF, !mcsema_real_eip !122
  store i1 false, i1* %SF, !mcsema_real_eip !122
  store i1 true, i1* %ZF, !mcsema_real_eip !122
  store i1 true, i1* %PF, !mcsema_real_eip !122
  store i1 undef, i1* %AF, !mcsema_real_eip !122
  store i64 0, i64* %XDI, !mcsema_real_eip !122
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -100
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %EAX_val.180 = load i32, i32* %EAX.55, !mcsema_real_eip !123
  %326 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !123
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !123
  store i32 %EAX_val.180, i32* %327, !mcsema_real_eip !123
  %RDI_val.181 = load i64, i64* %XDI, !mcsema_real_eip !124
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.182 = load i64, i64* %XSP, !mcsema_real_eip !124
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %328 = sub i64 %RSP_val.182, 8, !mcsema_real_eip !124
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_139, !mcsema_real_eip !124
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %328, i64* %XSP, !mcsema_real_eip !124
  %329 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181)
  %_rsp_fix_253 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_254 = getelementptr i8, i8* %_rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_
  store i64 %329, i64* %XAX, !mcsema_real_eip !124
  br label %block_0x219, !mcsema_real_eip !125

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !125
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -24
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %330 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !126
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !126
  %332 = load i32, i32* %331, !mcsema_real_eip !126
  %333 = sext i32 %332 to i64, !mcsema_real_eip !126
  store i64 %333, i64* %XCX, !mcsema_real_eip !126
  %334 = sext i64 %333 to i128, !mcsema_real_eip !127
  %335 = mul i128 %334, 11, !mcsema_real_eip !127
  %336 = trunc i128 %335 to i64, !mcsema_real_eip !127
  %337 = sext i64 %336 to i128, !mcsema_real_eip !127
  %338 = icmp ne i128 %337, %335, !mcsema_real_eip !127
  %339 = icmp slt i64 %336, 0, !mcsema_real_eip !127
  store i1 %339, i1* %SF, !mcsema_real_eip !127
  store i1 %338, i1* %OF, !mcsema_real_eip !127
  store i1 %338, i1* %CF, !mcsema_real_eip !127
  store i64 %336, i64* %XCX, !mcsema_real_eip !127
  %340 = add i64 %336, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %341 = xor i64 %340, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %342 = xor i64 %341, %336, !mcsema_real_eip !128
  %343 = and i64 %342, 16, !mcsema_real_eip !128
  %344 = icmp ne i64 %343, 0, !mcsema_real_eip !128
  store i1 %344, i1* %AF, !mcsema_real_eip !128
  %345 = lshr i64 %340, 63, !mcsema_real_eip !128
  %346 = trunc i64 %345 to i1, !mcsema_real_eip !128
  store i1 %346, i1* %SF, !mcsema_real_eip !128
  %347 = icmp eq i64 %340, 0, !mcsema_real_eip !128
  store i1 %347, i1* %ZF, !mcsema_real_eip !128
  %348 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %336, !mcsema_real_eip !128
  %349 = xor i64 %348, -1, !mcsema_real_eip !128
  %350 = and i64 %349, %341, !mcsema_real_eip !128
  %351 = lshr i64 %350, 63, !mcsema_real_eip !128
  %352 = and i64 %351, 1, !mcsema_real_eip !128
  %353 = trunc i64 %352 to i1, !mcsema_real_eip !128
  store i1 %353, i1* %OF, !mcsema_real_eip !128
  %354 = trunc i64 %340 to i8, !mcsema_real_eip !128
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !128
  %356 = trunc i8 %355 to i1, !mcsema_real_eip !128
  %357 = xor i1 %356, true, !mcsema_real_eip !128
  store i1 %357, i1* %PF, !mcsema_real_eip !128
  %358 = icmp ult i64 %340, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  store i1 %358, i1* %CF, !mcsema_real_eip !128
  store i64 %340, i64* %XAX, !mcsema_real_eip !128
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -20
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %359 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !129
  %360 = inttoptr i64 %359 to i32*, !mcsema_real_eip !129
  %361 = load i32, i32* %360, !mcsema_real_eip !129
  %362 = sext i32 %361 to i64, !mcsema_real_eip !129
  store i64 %362, i64* %XCX, !mcsema_real_eip !129
  %363 = add i64 %340, %362, !mcsema_real_eip !130
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !130
  %365 = inttoptr i64 %363 to i8*, !mcsema_real_eip !130
  %366 = load i8, i8* %365, !mcsema_real_eip !130
  %367 = sext i8 %366 to i32, !mcsema_real_eip !130
  %368 = zext i32 %367 to i64, !mcsema_real_eip !130
  store i64 %368, i64* %XDX, !mcsema_real_eip !130
  %EDX_val.191 = load i32, i32* %EDX.160, !mcsema_real_eip !131
  %369 = sub i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %370 = xor i32 %369, %EDX_val.191, !mcsema_real_eip !131
  %371 = xor i32 %370, 32, !mcsema_real_eip !131
  %372 = and i32 %371, 16, !mcsema_real_eip !131
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !131
  store i1 %373, i1* %AF, !mcsema_real_eip !131
  %374 = trunc i32 %369 to i8, !mcsema_real_eip !131
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !131
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !131
  %377 = xor i1 %376, true, !mcsema_real_eip !131
  store i1 %377, i1* %PF, !mcsema_real_eip !131
  %378 = icmp eq i32 %369, 0, !mcsema_real_eip !131
  store i1 %378, i1* %ZF, !mcsema_real_eip !131
  %379 = lshr i32 %369, 31, !mcsema_real_eip !131
  %380 = trunc i32 %379 to i1, !mcsema_real_eip !131
  store i1 %380, i1* %SF, !mcsema_real_eip !131
  %381 = icmp ult i32 %EDX_val.191, 32, !mcsema_real_eip !131
  store i1 %381, i1* %CF, !mcsema_real_eip !131
  %382 = xor i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %383 = and i32 %382, %370, !mcsema_real_eip !131
  %384 = lshr i32 %383, 31, !mcsema_real_eip !131
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !131
  store i1 %385, i1* %OF, !mcsema_real_eip !131
  br i1 %378, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !132

block_0x23f:                                      ; preds = %block_0x219
  %386 = load i32, i32* %331, !mcsema_real_eip !133
  %387 = sub i32 %386, 2, !mcsema_real_eip !133
  %388 = xor i32 %387, %386, !mcsema_real_eip !133
  %389 = xor i32 %388, 2, !mcsema_real_eip !133
  %390 = and i32 %389, 16, !mcsema_real_eip !133
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !133
  store i1 %391, i1* %AF, !mcsema_real_eip !133
  %392 = trunc i32 %387 to i8, !mcsema_real_eip !133
  %393 = call i8 @llvm.ctpop.i8(i8 %392), !mcsema_real_eip !133
  %394 = trunc i8 %393 to i1, !mcsema_real_eip !133
  %395 = xor i1 %394, true, !mcsema_real_eip !133
  store i1 %395, i1* %PF, !mcsema_real_eip !133
  %396 = icmp eq i32 %387, 0, !mcsema_real_eip !133
  store i1 %396, i1* %ZF, !mcsema_real_eip !133
  %397 = lshr i32 %387, 31, !mcsema_real_eip !133
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !133
  store i1 %398, i1* %SF, !mcsema_real_eip !133
  %399 = icmp ult i32 %386, 2, !mcsema_real_eip !133
  store i1 %399, i1* %CF, !mcsema_real_eip !133
  %400 = xor i32 %386, 2, !mcsema_real_eip !133
  %401 = and i32 %400, %388, !mcsema_real_eip !133
  %402 = lshr i32 %401, 31, !mcsema_real_eip !133
  %403 = trunc i32 %402 to i1, !mcsema_real_eip !133
  store i1 %403, i1* %OF, !mcsema_real_eip !133
  %404 = icmp eq i1 %396, false, !mcsema_real_eip !134
  br i1 %404, label %block_0x283, label %block_0x249, !mcsema_real_eip !134

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !135
  %405 = load i32, i32* %331, !mcsema_real_eip !136
  %406 = sext i32 %405 to i64, !mcsema_real_eip !136
  store i64 %406, i64* %XCX, !mcsema_real_eip !136
  %407 = sext i64 %406 to i128, !mcsema_real_eip !137
  %408 = mul i128 %407, 11, !mcsema_real_eip !137
  %409 = trunc i128 %408 to i64, !mcsema_real_eip !137
  %410 = sext i64 %409 to i128, !mcsema_real_eip !137
  %411 = icmp ne i128 %410, %408, !mcsema_real_eip !137
  %412 = icmp slt i64 %409, 0, !mcsema_real_eip !137
  store i1 %412, i1* %SF, !mcsema_real_eip !137
  store i1 %411, i1* %OF, !mcsema_real_eip !137
  store i1 %411, i1* %CF, !mcsema_real_eip !137
  store i64 %409, i64* %XCX, !mcsema_real_eip !137
  %413 = add i64 %409, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %414 = xor i64 %413, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %415 = xor i64 %414, %409, !mcsema_real_eip !138
  %416 = and i64 %415, 16, !mcsema_real_eip !138
  %417 = icmp ne i64 %416, 0, !mcsema_real_eip !138
  store i1 %417, i1* %AF, !mcsema_real_eip !138
  %418 = lshr i64 %413, 63, !mcsema_real_eip !138
  %419 = trunc i64 %418 to i1, !mcsema_real_eip !138
  store i1 %419, i1* %SF, !mcsema_real_eip !138
  %420 = icmp eq i64 %413, 0, !mcsema_real_eip !138
  store i1 %420, i1* %ZF, !mcsema_real_eip !138
  %421 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %409, !mcsema_real_eip !138
  %422 = xor i64 %421, -1, !mcsema_real_eip !138
  %423 = and i64 %422, %414, !mcsema_real_eip !138
  %424 = lshr i64 %423, 63, !mcsema_real_eip !138
  %425 = and i64 %424, 1, !mcsema_real_eip !138
  %426 = trunc i64 %425 to i1, !mcsema_real_eip !138
  store i1 %426, i1* %OF, !mcsema_real_eip !138
  %427 = trunc i64 %413 to i8, !mcsema_real_eip !138
  %428 = call i8 @llvm.ctpop.i8(i8 %427), !mcsema_real_eip !138
  %429 = trunc i8 %428 to i1, !mcsema_real_eip !138
  %430 = xor i1 %429, true, !mcsema_real_eip !138
  store i1 %430, i1* %PF, !mcsema_real_eip !138
  %431 = icmp ult i64 %413, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  store i1 %431, i1* %CF, !mcsema_real_eip !138
  store i64 %413, i64* %XAX, !mcsema_real_eip !138
  %432 = load i32, i32* %360, !mcsema_real_eip !139
  %433 = sext i32 %432 to i64, !mcsema_real_eip !139
  store i64 %433, i64* %XCX, !mcsema_real_eip !139
  %434 = add i64 %413, %433, !mcsema_real_eip !140
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !140
  %436 = inttoptr i64 %434 to i8*, !mcsema_real_eip !140
  %437 = load i8, i8* %436, !mcsema_real_eip !140
  %438 = sext i8 %437 to i32, !mcsema_real_eip !140
  %439 = zext i32 %438 to i64, !mcsema_real_eip !140
  store i64 %439, i64* %XDX, !mcsema_real_eip !140
  %EDX_val.201 = load i32, i32* %EDX.160, !mcsema_real_eip !141
  %440 = sub i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %441 = xor i32 %440, %EDX_val.201, !mcsema_real_eip !141
  %442 = xor i32 %441, 124, !mcsema_real_eip !141
  %443 = and i32 %442, 16, !mcsema_real_eip !141
  %444 = icmp ne i32 %443, 0, !mcsema_real_eip !141
  store i1 %444, i1* %AF, !mcsema_real_eip !141
  %445 = trunc i32 %440 to i8, !mcsema_real_eip !141
  %446 = call i8 @llvm.ctpop.i8(i8 %445), !mcsema_real_eip !141
  %447 = trunc i8 %446 to i1, !mcsema_real_eip !141
  %448 = xor i1 %447, true, !mcsema_real_eip !141
  store i1 %448, i1* %PF, !mcsema_real_eip !141
  %449 = icmp eq i32 %440, 0, !mcsema_real_eip !141
  store i1 %449, i1* %ZF, !mcsema_real_eip !141
  %450 = lshr i32 %440, 31, !mcsema_real_eip !141
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !141
  store i1 %451, i1* %SF, !mcsema_real_eip !141
  %452 = icmp ult i32 %EDX_val.201, 124, !mcsema_real_eip !141
  store i1 %452, i1* %CF, !mcsema_real_eip !141
  %453 = xor i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %454 = and i32 %453, %441, !mcsema_real_eip !141
  %455 = lshr i32 %454, 31, !mcsema_real_eip !141
  %456 = trunc i32 %455 to i1, !mcsema_real_eip !141
  store i1 %456, i1* %OF, !mcsema_real_eip !141
  %457 = icmp eq i1 %449, false, !mcsema_real_eip !142
  br i1 %457, label %block_0x283, label %block_0x26f, !mcsema_real_eip !142

block_0x26f:                                      ; preds = %block_0x249
  %458 = load i32, i32* %360, !mcsema_real_eip !143
  store i1 false, i1* %AF, !mcsema_real_eip !143
  %459 = trunc i32 %458 to i8, !mcsema_real_eip !143
  %460 = call i8 @llvm.ctpop.i8(i8 %459), !mcsema_real_eip !143
  %461 = trunc i8 %460 to i1, !mcsema_real_eip !143
  %462 = xor i1 %461, true, !mcsema_real_eip !143
  store i1 %462, i1* %PF, !mcsema_real_eip !143
  %463 = icmp eq i32 %458, 0, !mcsema_real_eip !143
  store i1 %463, i1* %ZF, !mcsema_real_eip !143
  %464 = lshr i32 %458, 31, !mcsema_real_eip !143
  %465 = trunc i32 %464 to i1, !mcsema_real_eip !143
  store i1 %465, i1* %SF, !mcsema_real_eip !143
  store i1 false, i1* %CF, !mcsema_real_eip !143
  store i1 false, i1* %OF, !mcsema_real_eip !143
  %466 = icmp eq i1 %465, false, !mcsema_real_eip !144
  %467 = icmp eq i1 %466, false, !mcsema_real_eip !144
  %468 = or i1 %463, %467, !mcsema_real_eip !144
  br i1 %468, label %block_0x283, label %block_0x279, !mcsema_real_eip !144

block_0x279:                                      ; preds = %block_0x26f
  %469 = load i32, i32* %360, !mcsema_real_eip !145
  %470 = sub i32 %469, 11, !mcsema_real_eip !145
  %471 = xor i32 %470, %469, !mcsema_real_eip !145
  %472 = xor i32 %471, 11, !mcsema_real_eip !145
  %473 = and i32 %472, 16, !mcsema_real_eip !145
  %474 = icmp ne i32 %473, 0, !mcsema_real_eip !145
  store i1 %474, i1* %AF, !mcsema_real_eip !145
  %475 = trunc i32 %470 to i8, !mcsema_real_eip !145
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !145
  %477 = trunc i8 %476 to i1, !mcsema_real_eip !145
  %478 = xor i1 %477, true, !mcsema_real_eip !145
  store i1 %478, i1* %PF, !mcsema_real_eip !145
  %479 = icmp eq i32 %470, 0, !mcsema_real_eip !145
  store i1 %479, i1* %ZF, !mcsema_real_eip !145
  %480 = lshr i32 %470, 31, !mcsema_real_eip !145
  %481 = trunc i32 %480 to i1, !mcsema_real_eip !145
  store i1 %481, i1* %SF, !mcsema_real_eip !145
  %482 = icmp ult i32 %469, 11, !mcsema_real_eip !145
  store i1 %482, i1* %CF, !mcsema_real_eip !145
  %483 = xor i32 %469, 11, !mcsema_real_eip !145
  %484 = and i32 %483, %471, !mcsema_real_eip !145
  %485 = lshr i32 %484, 31, !mcsema_real_eip !145
  %486 = trunc i32 %485 to i1, !mcsema_real_eip !145
  store i1 %486, i1* %OF, !mcsema_real_eip !145
  %487 = icmp eq i1 %481, %486, !mcsema_real_eip !146
  %488 = icmp eq i1 %487, false, !mcsema_real_eip !146
  br i1 %488, label %block_0x28f, label %block_0x283, !mcsema_real_eip !146

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -28
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %489 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !147
  %490 = inttoptr i64 %489 to i32*, !mcsema_real_eip !147
  %491 = load i32, i32* %490, !mcsema_real_eip !147
  %492 = zext i32 %491 to i64, !mcsema_real_eip !147
  store i64 %492, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.207 = load i32, i32* %EAX.55, !mcsema_real_eip !148
  store i32 %EAX_val.207, i32* %360, !mcsema_real_eip !148
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -32
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %493 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !149
  %494 = inttoptr i64 %493 to i32*, !mcsema_real_eip !149
  %495 = load i32, i32* %494, !mcsema_real_eip !149
  %496 = zext i32 %495 to i64, !mcsema_real_eip !149
  store i64 %496, i64* %XAX, !mcsema_real_eip !149
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -24
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %EAX_val.211 = load i32, i32* %EAX.55, !mcsema_real_eip !150
  %497 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !150
  %498 = inttoptr i64 %497 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.211, i32* %498, !mcsema_real_eip !150
  br label %block_0x28f, !mcsema_real_eip !151

block_0x28f:                                      ; preds = %block_0x283, %block_0x279, %block_0x219
  %_load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -28
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %499 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !151
  %500 = inttoptr i64 %499 to i32*, !mcsema_real_eip !151
  %501 = load i32, i32* %500, !mcsema_real_eip !151
  %502 = zext i32 %501 to i64, !mcsema_real_eip !151
  store i64 %502, i64* %XAX, !mcsema_real_eip !151
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -20
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %EAX_val.215 = load i32, i32* %EAX.55, !mcsema_real_eip !152
  %503 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !152
  %504 = inttoptr i64 %503 to i32*, !mcsema_real_eip !152
  %505 = load i32, i32* %504, !mcsema_real_eip !152
  %506 = sub i32 %EAX_val.215, %505, !mcsema_real_eip !152
  %507 = xor i32 %506, %EAX_val.215, !mcsema_real_eip !152
  %508 = xor i32 %507, %505, !mcsema_real_eip !152
  %509 = and i32 %508, 16, !mcsema_real_eip !152
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !152
  store i1 %510, i1* %AF, !mcsema_real_eip !152
  %511 = trunc i32 %506 to i8, !mcsema_real_eip !152
  %512 = call i8 @llvm.ctpop.i8(i8 %511), !mcsema_real_eip !152
  %513 = trunc i8 %512 to i1, !mcsema_real_eip !152
  %514 = xor i1 %513, true, !mcsema_real_eip !152
  store i1 %514, i1* %PF, !mcsema_real_eip !152
  %515 = icmp eq i32 %506, 0, !mcsema_real_eip !152
  store i1 %515, i1* %ZF, !mcsema_real_eip !152
  %516 = lshr i32 %506, 31, !mcsema_real_eip !152
  %517 = trunc i32 %516 to i1, !mcsema_real_eip !152
  store i1 %517, i1* %SF, !mcsema_real_eip !152
  %518 = icmp ult i32 %EAX_val.215, %505, !mcsema_real_eip !152
  store i1 %518, i1* %CF, !mcsema_real_eip !152
  %519 = xor i32 %EAX_val.215, %505, !mcsema_real_eip !152
  %520 = and i32 %519, %507, !mcsema_real_eip !152
  %521 = lshr i32 %520, 31, !mcsema_real_eip !152
  %522 = trunc i32 %521 to i1, !mcsema_real_eip !152
  store i1 %522, i1* %OF, !mcsema_real_eip !152
  %523 = icmp eq i1 %515, false, !mcsema_real_eip !153
  br i1 %523, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !153

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_180 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -32
  %_allin_new_bt_181 = bitcast i8* %_new_gep_180 to i64*
  %524 = ptrtoint i64* %_allin_new_bt_181 to i64, !mcsema_real_eip !154
  %525 = inttoptr i64 %524 to i32*, !mcsema_real_eip !154
  %526 = load i32, i32* %525, !mcsema_real_eip !154
  %527 = zext i32 %526 to i64, !mcsema_real_eip !154
  store i64 %527, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -24
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %EAX_val.219 = load i32, i32* %EAX.55, !mcsema_real_eip !155
  %528 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !155
  %529 = inttoptr i64 %528 to i32*, !mcsema_real_eip !155
  %530 = load i32, i32* %529, !mcsema_real_eip !155
  %531 = sub i32 %EAX_val.219, %530, !mcsema_real_eip !155
  %532 = xor i32 %531, %EAX_val.219, !mcsema_real_eip !155
  %533 = xor i32 %532, %530, !mcsema_real_eip !155
  %534 = and i32 %533, 16, !mcsema_real_eip !155
  %535 = icmp ne i32 %534, 0, !mcsema_real_eip !155
  store i1 %535, i1* %AF, !mcsema_real_eip !155
  %536 = trunc i32 %531 to i8, !mcsema_real_eip !155
  %537 = call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !155
  %538 = trunc i8 %537 to i1, !mcsema_real_eip !155
  %539 = xor i1 %538, true, !mcsema_real_eip !155
  store i1 %539, i1* %PF, !mcsema_real_eip !155
  %540 = icmp eq i32 %531, 0, !mcsema_real_eip !155
  store i1 %540, i1* %ZF, !mcsema_real_eip !155
  %541 = lshr i32 %531, 31, !mcsema_real_eip !155
  %542 = trunc i32 %541 to i1, !mcsema_real_eip !155
  store i1 %542, i1* %SF, !mcsema_real_eip !155
  %543 = icmp ult i32 %EAX_val.219, %530, !mcsema_real_eip !155
  store i1 %543, i1* %CF, !mcsema_real_eip !155
  %544 = xor i32 %EAX_val.219, %530, !mcsema_real_eip !155
  %545 = and i32 %544, %532, !mcsema_real_eip !155
  %546 = lshr i32 %545, 31, !mcsema_real_eip !155
  %547 = trunc i32 %546 to i1, !mcsema_real_eip !155
  store i1 %547, i1* %OF, !mcsema_real_eip !155
  %548 = icmp eq i1 %540, false, !mcsema_real_eip !156
  br i1 %548, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !156

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !157
  %AL.220 = bitcast i64* %XAX to i8*, !mcsema_real_eip !158
  store i8 0, i8* %AL.220, !mcsema_real_eip !158
  %RSI_val.222 = load i64, i64* %XSI, !mcsema_real_eip !159
  %_load_rsp_ptr_185 = load i8*, i8** %_RSP_ptr_
  %RSP_val.223 = load i64, i64* %XSP, !mcsema_real_eip !159
  %_new_gep_186 = getelementptr i8, i8* %_load_rsp_ptr_185, i64 -8
  %549 = sub i64 %RSP_val.223, 8, !mcsema_real_eip !159
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_187, !mcsema_real_eip !159
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_
  store i64 %549, i64* %XSP, !mcsema_real_eip !159
  %550 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.222)
  %_rsp_fix_255 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_256 = getelementptr i8, i8* %_rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_
  store i64 %550, i64* %XAX, !mcsema_real_eip !159
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -4
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %551 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !160
  %552 = inttoptr i64 %551 to i32*, !mcsema_real_eip !160
  store i32 2, i32* %552, !mcsema_real_eip !160
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -104
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %EAX_val.227 = load i32, i32* %EAX.55, !mcsema_real_eip !161
  %553 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !161
  %554 = inttoptr i64 %553 to i32*, !mcsema_real_eip !161
  store i32 %EAX_val.227, i32* %554, !mcsema_real_eip !161
  br label %block_0x312, !mcsema_real_eip !162

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !163
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -24
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %555 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !164
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !164
  %557 = load i32, i32* %556, !mcsema_real_eip !164
  %558 = sext i32 %557 to i64, !mcsema_real_eip !164
  store i64 %558, i64* %XCX, !mcsema_real_eip !164
  %559 = sext i64 %558 to i128, !mcsema_real_eip !165
  %560 = mul i128 %559, 11, !mcsema_real_eip !165
  %561 = trunc i128 %560 to i64, !mcsema_real_eip !165
  %562 = sext i64 %561 to i128, !mcsema_real_eip !165
  %563 = icmp ne i128 %562, %560, !mcsema_real_eip !165
  %564 = icmp slt i64 %561, 0, !mcsema_real_eip !165
  store i1 %564, i1* %SF, !mcsema_real_eip !165
  store i1 %563, i1* %OF, !mcsema_real_eip !165
  store i1 %563, i1* %CF, !mcsema_real_eip !165
  store i64 %561, i64* %XCX, !mcsema_real_eip !165
  %565 = add i64 %561, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %566 = xor i64 %565, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %567 = xor i64 %566, %561, !mcsema_real_eip !166
  %568 = and i64 %567, 16, !mcsema_real_eip !166
  %569 = icmp ne i64 %568, 0, !mcsema_real_eip !166
  store i1 %569, i1* %AF, !mcsema_real_eip !166
  %570 = lshr i64 %565, 63, !mcsema_real_eip !166
  %571 = trunc i64 %570 to i1, !mcsema_real_eip !166
  store i1 %571, i1* %SF, !mcsema_real_eip !166
  %572 = icmp eq i64 %565, 0, !mcsema_real_eip !166
  store i1 %572, i1* %ZF, !mcsema_real_eip !166
  %573 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %561, !mcsema_real_eip !166
  %574 = xor i64 %573, -1, !mcsema_real_eip !166
  %575 = and i64 %574, %566, !mcsema_real_eip !166
  %576 = lshr i64 %575, 63, !mcsema_real_eip !166
  %577 = and i64 %576, 1, !mcsema_real_eip !166
  %578 = trunc i64 %577 to i1, !mcsema_real_eip !166
  store i1 %578, i1* %OF, !mcsema_real_eip !166
  %579 = trunc i64 %565 to i8, !mcsema_real_eip !166
  %580 = call i8 @llvm.ctpop.i8(i8 %579), !mcsema_real_eip !166
  %581 = trunc i8 %580 to i1, !mcsema_real_eip !166
  %582 = xor i1 %581, true, !mcsema_real_eip !166
  store i1 %582, i1* %PF, !mcsema_real_eip !166
  %583 = icmp ult i64 %565, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  store i1 %583, i1* %CF, !mcsema_real_eip !166
  store i64 %565, i64* %XAX, !mcsema_real_eip !166
  %584 = load i32, i32* %504, !mcsema_real_eip !167
  %585 = sext i32 %584 to i64, !mcsema_real_eip !167
  store i64 %585, i64* %XCX, !mcsema_real_eip !167
  %586 = add i64 %565, %585, !mcsema_real_eip !168
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !168
  %588 = inttoptr i64 %586 to i8*, !mcsema_real_eip !168
  store i8 88, i8* %588, !mcsema_real_eip !168
  %_load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !169
  %_new_gep_201 = getelementptr i8, i8* %_load_rsp_ptr_200, i64 -8
  %589 = sub i64 %RSP_val.235, 8, !mcsema_real_eip !169
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_202, !mcsema_real_eip !169
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %589, i64* %XSP, !mcsema_real_eip !169
  %_load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_201, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_257)
  %_rsp_fix_259 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_260 = getelementptr i8, i8* %_rsp_fix_259, i64 8
  store i8* %_gep_fix_260, i8** %_RSP_ptr_
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -36
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %590 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !170
  %591 = inttoptr i64 %590 to i32*, !mcsema_real_eip !170
  %592 = load i32, i32* %591, !mcsema_real_eip !170
  %593 = zext i32 %592 to i64, !mcsema_real_eip !170
  store i64 %593, i64* %XDX, !mcsema_real_eip !170
  %EDX_val.238 = load i32, i32* %EDX.160, !mcsema_real_eip !171
  %594 = add i32 1, %EDX_val.238, !mcsema_real_eip !171
  %595 = xor i32 %594, %EDX_val.238, !mcsema_real_eip !171
  %596 = xor i32 %595, 1, !mcsema_real_eip !171
  %597 = and i32 %596, 16, !mcsema_real_eip !171
  %598 = icmp ne i32 %597, 0, !mcsema_real_eip !171
  store i1 %598, i1* %AF, !mcsema_real_eip !171
  %599 = lshr i32 %594, 31, !mcsema_real_eip !171
  %600 = trunc i32 %599 to i1, !mcsema_real_eip !171
  store i1 %600, i1* %SF, !mcsema_real_eip !171
  %601 = icmp eq i32 %594, 0, !mcsema_real_eip !171
  store i1 %601, i1* %ZF, !mcsema_real_eip !171
  %602 = xor i32 %EDX_val.238, 1, !mcsema_real_eip !171
  %603 = xor i32 %602, -1, !mcsema_real_eip !171
  %604 = and i32 %603, %595, !mcsema_real_eip !171
  %605 = lshr i32 %604, 31, !mcsema_real_eip !171
  %606 = and i32 %605, 1, !mcsema_real_eip !171
  %607 = trunc i32 %606 to i1, !mcsema_real_eip !171
  store i1 %607, i1* %OF, !mcsema_real_eip !171
  %608 = trunc i32 %594 to i8, !mcsema_real_eip !171
  %609 = call i8 @llvm.ctpop.i8(i8 %608), !mcsema_real_eip !171
  %610 = trunc i8 %609 to i1, !mcsema_real_eip !171
  %611 = xor i1 %610, true, !mcsema_real_eip !171
  store i1 %611, i1* %PF, !mcsema_real_eip !171
  %612 = icmp ult i32 %594, %EDX_val.238, !mcsema_real_eip !171
  store i1 %612, i1* %CF, !mcsema_real_eip !171
  %613 = zext i32 %594 to i64, !mcsema_real_eip !171
  store i64 %613, i64* %XDX, !mcsema_real_eip !171
  %EDX_val.241 = load i32, i32* %EDX.160, !mcsema_real_eip !172
  store i32 %EDX_val.241, i32* %591, !mcsema_real_eip !172
  br label %block_0x114, !mcsema_real_eip !173

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !174
  %AL.242 = bitcast i64* %XAX to i8*, !mcsema_real_eip !175
  store i8 0, i8* %AL.242, !mcsema_real_eip !175
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !176
  %_load_rsp_ptr_209 = load i8*, i8** %_RSP_ptr_
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !176
  %_new_gep_210 = getelementptr i8, i8* %_load_rsp_ptr_209, i64 -8
  %614 = sub i64 %RSP_val.245, 8, !mcsema_real_eip !176
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_211, !mcsema_real_eip !176
  store volatile i8* %_new_gep_210, i8** %_RSP_ptr_
  store i64 %614, i64* %XSP, !mcsema_real_eip !176
  %615 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.244)
  %_rsp_fix_261 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_262 = getelementptr i8, i8* %_rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_
  store i64 %615, i64* %XAX, !mcsema_real_eip !176
  %_load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_212, i64 -4
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %616 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !177
  %617 = inttoptr i64 %616 to i32*, !mcsema_real_eip !177
  store i32 1, i32* %617, !mcsema_real_eip !177
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -108
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %EAX_val.249 = load i32, i32* %EAX.55, !mcsema_real_eip !178
  %618 = ptrtoint i64* %_allin_new_bt_217 to i64, !mcsema_real_eip !178
  %619 = inttoptr i64 %618 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.249, i32* %619, !mcsema_real_eip !178
  br label %block_0x312, !mcsema_real_eip !179

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %_load_rbp_ptr_218 = load i8*, i8** %_RBP_ptr_
  %_new_gep_219 = getelementptr i8, i8* %_load_rbp_ptr_218, i64 -4
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  %620 = ptrtoint i64* %_allin_new_bt_220 to i64, !mcsema_real_eip !179
  %621 = inttoptr i64 %620 to i32*, !mcsema_real_eip !179
  %622 = load i32, i32* %621, !mcsema_real_eip !179
  %623 = zext i32 %622 to i64, !mcsema_real_eip !179
  store i64 %623, i64* %XAX, !mcsema_real_eip !179
  %_load_rsp_ptr_221 = load i8*, i8** %_RSP_ptr_
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !180
  %_new_gep_222 = getelementptr i8, i8* %_load_rsp_ptr_221, i64 112
  %624 = add i64 112, %RSP_val.251, !mcsema_real_eip !180
  %_trans_p2i_223 = ptrtoint i8* %_new_gep_222 to i64
  %_trans_p2i_224 = ptrtoint i8* %_load_rsp_ptr_221 to i64
  %_trans_xor_225 = xor i64 %_trans_p2i_223, %_trans_p2i_224
  %625 = xor i64 %_trans_xor_225, 112, !mcsema_real_eip !180
  %626 = and i64 %625, 16, !mcsema_real_eip !180
  %627 = icmp ne i64 %626, 0, !mcsema_real_eip !180
  store i1 %627, i1* %AF, !mcsema_real_eip !180
  %628 = lshr i64 %624, 63, !mcsema_real_eip !180
  %629 = trunc i64 %628 to i1, !mcsema_real_eip !180
  store i1 %629, i1* %SF, !mcsema_real_eip !180
  %_trans_icmp_eq_227 = icmp eq i64 %_trans_p2i_223, 0
  store i1 %_trans_icmp_eq_227, i1* %ZF, !mcsema_real_eip !180
  %_trans_xor_229 = xor i64 %_trans_p2i_224, 112
  %630 = xor i64 %_trans_xor_229, -1, !mcsema_real_eip !180
  %631 = and i64 %630, %_trans_xor_225, !mcsema_real_eip !180
  %632 = lshr i64 %631, 63, !mcsema_real_eip !180
  %633 = and i64 %632, 1, !mcsema_real_eip !180
  %634 = trunc i64 %633 to i1, !mcsema_real_eip !180
  store i1 %634, i1* %OF, !mcsema_real_eip !180
  %_trans_trunc_234 = trunc i64 %_trans_p2i_223 to i8
  %635 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_234), !mcsema_real_eip !180
  %636 = trunc i8 %635 to i1, !mcsema_real_eip !180
  %637 = xor i1 %636, true, !mcsema_real_eip !180
  store i1 %637, i1* %PF, !mcsema_real_eip !180
  %_trans_icmp_ne_236 = icmp ne i64 %_trans_p2i_223, %RSP_val.251
  store i1 %_trans_icmp_ne_236, i1* %CF, !mcsema_real_eip !180
  store volatile i8* %_new_gep_222, i8** %_RSP_ptr_
  store i64 %624, i64* %XSP, !mcsema_real_eip !180
  %_allin_new_bt_238 = bitcast i8* %_new_gep_222 to i64*
  %638 = load i64, i64* %_allin_new_bt_238, !mcsema_real_eip !181
  %_new_int2ptr_ = inttoptr i64 %638 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %638, i64* %XBP, !mcsema_real_eip !181
  %_new_gep_239 = getelementptr i8, i8* %_new_gep_222, i64 8
  %639 = add i64 %624, 8, !mcsema_real_eip !181
  store volatile i8* %_new_gep_239, i8** %_RSP_ptr_
  store i64 %639, i64* %XSP, !mcsema_real_eip !181
  %_new_gep_241 = getelementptr i8, i8* %_new_gep_239, i64 8
  %640 = add i64 %639, 8, !mcsema_real_eip !182
  %_allin_new_bt_242 = bitcast i8* %_new_gep_239 to i64*
  %641 = load i64, i64* %_allin_new_bt_242, !mcsema_real_eip !182
  store i64 %641, i64* %XIP, !mcsema_real_eip !182
  store volatile i8* %_new_gep_241, i8** %_RSP_ptr_
  store i64 %640, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182

; <label>:642:                                    ; preds = %block_0x148
  store i64 %157, i64* %XIP, !mcsema_real_eip !79
  call void @__mcsema_detach_call_value()
  %_rsp_fix_263 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_264 = getelementptr i8, i8* %_rsp_fix_263, i64 8
  store i8* %_gep_fix_264, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !79
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) #2

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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  br label %block_0xf, !mcsema_real_eip !6

block_0xf:                                        ; preds = %144, %block_0x0
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %17 to i8*
  %_offset_above_rbp_ = sub i64 %16, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0xf
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %19

; <label>:19:                                     ; preds = %block_0xf, %18
  %20 = phi i32* [ %17, %block_0xf ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i32, i32* %20
  %21 = sub i32 %_new_load_, 7, !mcsema_real_eip !6
  %22 = xor i32 %21, %_new_load_, !mcsema_real_eip !6
  %23 = xor i32 %22, 7, !mcsema_real_eip !6
  %24 = and i32 %23, 16, !mcsema_real_eip !6
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !6
  store i1 %25, i1* %AF, !mcsema_real_eip !6
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !6
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !6
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !6
  %29 = xor i1 %28, true, !mcsema_real_eip !6
  store i1 %29, i1* %PF, !mcsema_real_eip !6
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !6
  store i1 %30, i1* %ZF, !mcsema_real_eip !6
  %31 = lshr i32 %21, 31, !mcsema_real_eip !6
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !6
  store i1 %32, i1* %SF, !mcsema_real_eip !6
  %33 = icmp ult i32 %_new_load_, 7, !mcsema_real_eip !6
  store i1 %33, i1* %CF, !mcsema_real_eip !6
  %34 = xor i32 %_new_load_, 7, !mcsema_real_eip !6
  %35 = and i32 %34, %22, !mcsema_real_eip !6
  %36 = lshr i32 %35, 31, !mcsema_real_eip !6
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !6
  store i1 %37, i1* %OF, !mcsema_real_eip !6
  %38 = icmp eq i1 %32, %37, !mcsema_real_eip !7
  br i1 %38, label %block_0x8b, label %block_0x19, !mcsema_real_eip !7

block_0x19:                                       ; preds = %19
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !8
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %40, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %114, %block_0x19
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !9
  %_ptr_bt_89 = bitcast i32* %42 to i8*
  %_offset_above_rbp_90 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_ptr_bt_89, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_ptr_bt_89, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_ptr_bt_89, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  br i1 %_cond1_n_cond2_cond3_98, label %43, label %44

; <label>:43:                                     ; preds = %block_0x20
  %_address_in_parent_stack_bt_100 = bitcast i8* %_pot_address_in_parent_stack_91 to i32*
  br label %44

; <label>:44:                                     ; preds = %block_0x20, %43
  %45 = phi i32* [ %42, %block_0x20 ], [ %_address_in_parent_stack_bt_100, %43 ]
  %_new_load_101 = load i32, i32* %45
  %46 = sub i32 %_new_load_101, 11, !mcsema_real_eip !9
  %47 = xor i32 %46, %_new_load_101, !mcsema_real_eip !9
  %48 = xor i32 %47, 11, !mcsema_real_eip !9
  %49 = and i32 %48, 16, !mcsema_real_eip !9
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !9
  store i1 %50, i1* %AF, !mcsema_real_eip !9
  %51 = trunc i32 %46 to i8, !mcsema_real_eip !9
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !9
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !9
  %54 = xor i1 %53, true, !mcsema_real_eip !9
  store i1 %54, i1* %PF, !mcsema_real_eip !9
  %55 = icmp eq i32 %46, 0, !mcsema_real_eip !9
  store i1 %55, i1* %ZF, !mcsema_real_eip !9
  %56 = lshr i32 %46, 31, !mcsema_real_eip !9
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !9
  store i1 %57, i1* %SF, !mcsema_real_eip !9
  %58 = icmp ult i32 %_new_load_101, 11, !mcsema_real_eip !9
  store i1 %58, i1* %CF, !mcsema_real_eip !9
  %59 = xor i32 %_new_load_101, 11, !mcsema_real_eip !9
  %60 = and i32 %59, %47, !mcsema_real_eip !9
  %61 = lshr i32 %60, 31, !mcsema_real_eip !9
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !9
  store i1 %62, i1* %OF, !mcsema_real_eip !9
  %63 = icmp eq i1 %57, %62, !mcsema_real_eip !10
  br i1 %63, label %block_0x69, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %44
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !11
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !12
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %64 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !13
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !13
  %_ptr_bt_104 = bitcast i32* %65 to i8*
  %_offset_above_rbp_105 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_ptr_bt_104, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_ptr_bt_104, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_ptr_bt_104, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  br i1 %_cond1_n_cond2_cond3_113, label %66, label %67

; <label>:66:                                     ; preds = %block_0x2a
  %_address_in_parent_stack_bt_115 = bitcast i8* %_pot_address_in_parent_stack_106 to i32*
  br label %67

; <label>:67:                                     ; preds = %block_0x2a, %66
  %68 = phi i32* [ %65, %block_0x2a ], [ %_address_in_parent_stack_bt_115, %66 ]
  %_new_load_116 = load i32, i32* %68
  %69 = sext i32 %_new_load_116 to i64, !mcsema_real_eip !13
  store i64 %69, i64* %XCX, !mcsema_real_eip !13
  %70 = sext i64 %69 to i128, !mcsema_real_eip !14
  %71 = mul i128 %70, 11, !mcsema_real_eip !14
  %72 = trunc i128 %71 to i64, !mcsema_real_eip !14
  %73 = sext i64 %72 to i128, !mcsema_real_eip !14
  %74 = icmp ne i128 %73, %71, !mcsema_real_eip !14
  %75 = icmp slt i64 %72, 0, !mcsema_real_eip !14
  store i1 %75, i1* %SF, !mcsema_real_eip !14
  store i1 %74, i1* %OF, !mcsema_real_eip !14
  store i1 %74, i1* %CF, !mcsema_real_eip !14
  store i64 %72, i64* %XCX, !mcsema_real_eip !14
  %76 = add i64 %72, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %77 = xor i64 %76, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %78 = xor i64 %77, %72, !mcsema_real_eip !15
  %79 = and i64 %78, 16, !mcsema_real_eip !15
  %80 = icmp ne i64 %79, 0, !mcsema_real_eip !15
  store i1 %80, i1* %AF, !mcsema_real_eip !15
  %81 = lshr i64 %76, 63, !mcsema_real_eip !15
  %82 = trunc i64 %81 to i1, !mcsema_real_eip !15
  store i1 %82, i1* %SF, !mcsema_real_eip !15
  %83 = icmp eq i64 %76, 0, !mcsema_real_eip !15
  store i1 %83, i1* %ZF, !mcsema_real_eip !15
  %84 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %72, !mcsema_real_eip !15
  %85 = xor i64 %84, -1, !mcsema_real_eip !15
  %86 = and i64 %85, %77, !mcsema_real_eip !15
  %87 = lshr i64 %86, 63, !mcsema_real_eip !15
  %88 = and i64 %87, 1, !mcsema_real_eip !15
  %89 = trunc i64 %88 to i1, !mcsema_real_eip !15
  store i1 %89, i1* %OF, !mcsema_real_eip !15
  %90 = trunc i64 %76 to i8, !mcsema_real_eip !15
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !15
  %92 = trunc i8 %91 to i1, !mcsema_real_eip !15
  %93 = xor i1 %92, true, !mcsema_real_eip !15
  store i1 %93, i1* %PF, !mcsema_real_eip !15
  %94 = icmp ult i64 %76, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  store i1 %94, i1* %CF, !mcsema_real_eip !15
  store i64 %76, i64* %XAX, !mcsema_real_eip !15
  br i1 %_cond1_n_cond2_cond3_98, label %95, label %96

; <label>:95:                                     ; preds = %67
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_91 to i32*
  br label %96

; <label>:96:                                     ; preds = %67, %95
  %97 = phi i32* [ %42, %67 ], [ %_address_in_parent_stack_bt_130, %95 ]
  %_new_load_131 = load i32, i32* %97
  %98 = sext i32 %_new_load_131 to i64, !mcsema_real_eip !16
  store i64 %98, i64* %XCX, !mcsema_real_eip !16
  %99 = add i64 %76, %98, !mcsema_real_eip !17
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !17
  %101 = inttoptr i64 %99 to i8*, !mcsema_real_eip !17
  %_offset_above_rbp_134 = sub i64 %99, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %101, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %101, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %101, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %102, label %103

; <label>:102:                                    ; preds = %96
  br label %103

; <label>:103:                                    ; preds = %96, %102
  %104 = phi i8* [ %101, %96 ], [ %_pot_address_in_parent_stack_135, %102 ]
  %_new_load_144 = load i8, i8* %104
  %105 = sext i8 %_new_load_144 to i32, !mcsema_real_eip !17
  %106 = zext i32 %105 to i64, !mcsema_real_eip !17
  store i64 %106, i64* %XSI, !mcsema_real_eip !17
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.15, !mcsema_real_eip !18
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_32 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %107 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !19
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, !mcsema_real_eip !19
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %107, i64* %XSP, !mcsema_real_eip !19
  %108 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %106)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %108, i64* %XAX, !mcsema_real_eip !19
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !20
  %109 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !20
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.21, i32* %110, !mcsema_real_eip !20
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %111 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !21
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !21
  %_ptr_bt_147 = bitcast i32* %112 to i8*
  %_offset_above_rbp_148 = sub i64 %111, %_local_end_to_int_
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %_ptr_bt_147, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %_ptr_bt_147, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %_ptr_bt_147, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  br i1 %_cond1_n_cond2_cond3_156, label %113, label %114

; <label>:113:                                    ; preds = %103
  %_address_in_parent_stack_bt_158 = bitcast i8* %_pot_address_in_parent_stack_149 to i32*
  br label %114

; <label>:114:                                    ; preds = %103, %113
  %115 = phi i32* [ %112, %103 ], [ %_address_in_parent_stack_bt_158, %113 ]
  %_new_load_159 = load i32, i32* %115
  %116 = zext i32 %_new_load_159 to i64, !mcsema_real_eip !21
  store i64 %116, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.24 = load i32, i32* %EAX.20, !mcsema_real_eip !22
  %117 = add i32 1, %EAX_val.24, !mcsema_real_eip !22
  %118 = xor i32 %117, %EAX_val.24, !mcsema_real_eip !22
  %119 = xor i32 %118, 1, !mcsema_real_eip !22
  %120 = and i32 %119, 16, !mcsema_real_eip !22
  %121 = icmp ne i32 %120, 0, !mcsema_real_eip !22
  store i1 %121, i1* %AF, !mcsema_real_eip !22
  %122 = lshr i32 %117, 31, !mcsema_real_eip !22
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !22
  store i1 %123, i1* %SF, !mcsema_real_eip !22
  %124 = icmp eq i32 %117, 0, !mcsema_real_eip !22
  store i1 %124, i1* %ZF, !mcsema_real_eip !22
  %125 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !22
  %126 = xor i32 %125, -1, !mcsema_real_eip !22
  %127 = and i32 %126, %118, !mcsema_real_eip !22
  %128 = lshr i32 %127, 31, !mcsema_real_eip !22
  %129 = and i32 %128, 1, !mcsema_real_eip !22
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !22
  store i1 %130, i1* %OF, !mcsema_real_eip !22
  %131 = trunc i32 %117 to i8, !mcsema_real_eip !22
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !22
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !22
  %134 = xor i1 %133, true, !mcsema_real_eip !22
  store i1 %134, i1* %PF, !mcsema_real_eip !22
  %135 = icmp ult i32 %117, %EAX_val.24, !mcsema_real_eip !22
  store i1 %135, i1* %CF, !mcsema_real_eip !22
  %136 = zext i32 %117 to i64, !mcsema_real_eip !22
  store i64 %136, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.27 = load i32, i32* %EAX.20, !mcsema_real_eip !23
  store i32 %EAX_val.27, i32* %112, !mcsema_real_eip !23
  br label %block_0x20, !mcsema_real_eip !24

block_0x69:                                       ; preds = %44
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !25
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !26
  store i8 0, i8* %AL.28, !mcsema_real_eip !26
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !27
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %137 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !27
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, !mcsema_real_eip !27
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %137, i64* %XSP, !mcsema_real_eip !27
  %138 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.30)
  %_rsp_fix_83 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_84 = getelementptr i8, i8* %_rsp_fix_83, i64 8
  store i8* %_gep_fix_84, i8** %_RSP_ptr_
  store i64 %138, i64* %XAX, !mcsema_real_eip !27
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -16
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %EAX.33 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.34 = load i32, i32* %EAX.33, !mcsema_real_eip !28
  %139 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !28
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.34, i32* %140, !mcsema_real_eip !28
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -4
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %141 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !29
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !29
  %_ptr_bt_162 = bitcast i32* %142 to i8*
  %_offset_above_rbp_163 = sub i64 %141, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %143, label %144

; <label>:143:                                    ; preds = %block_0x69
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i32*
  br label %144

; <label>:144:                                    ; preds = %block_0x69, %143
  %145 = phi i32* [ %142, %block_0x69 ], [ %_address_in_parent_stack_bt_173, %143 ]
  %_new_load_174 = load i32, i32* %145
  %146 = zext i32 %_new_load_174 to i64, !mcsema_real_eip !29
  store i64 %146, i64* %XAX, !mcsema_real_eip !29
  %EAX_val.37 = load i32, i32* %EAX.33, !mcsema_real_eip !30
  %147 = add i32 1, %EAX_val.37, !mcsema_real_eip !30
  %148 = xor i32 %147, %EAX_val.37, !mcsema_real_eip !30
  %149 = xor i32 %148, 1, !mcsema_real_eip !30
  %150 = and i32 %149, 16, !mcsema_real_eip !30
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !30
  store i1 %151, i1* %AF, !mcsema_real_eip !30
  %152 = lshr i32 %147, 31, !mcsema_real_eip !30
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !30
  store i1 %153, i1* %SF, !mcsema_real_eip !30
  %154 = icmp eq i32 %147, 0, !mcsema_real_eip !30
  store i1 %154, i1* %ZF, !mcsema_real_eip !30
  %155 = xor i32 %EAX_val.37, 1, !mcsema_real_eip !30
  %156 = xor i32 %155, -1, !mcsema_real_eip !30
  %157 = and i32 %156, %148, !mcsema_real_eip !30
  %158 = lshr i32 %157, 31, !mcsema_real_eip !30
  %159 = and i32 %158, 1, !mcsema_real_eip !30
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !30
  store i1 %160, i1* %OF, !mcsema_real_eip !30
  %161 = trunc i32 %147 to i8, !mcsema_real_eip !30
  %162 = call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !30
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !30
  %164 = xor i1 %163, true, !mcsema_real_eip !30
  store i1 %164, i1* %PF, !mcsema_real_eip !30
  %165 = icmp ult i32 %147, %EAX_val.37, !mcsema_real_eip !30
  store i1 %165, i1* %CF, !mcsema_real_eip !30
  %166 = zext i32 %147 to i64, !mcsema_real_eip !30
  store i64 %166, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.40 = load i32, i32* %EAX.33, !mcsema_real_eip !31
  store i32 %EAX_val.40, i32* %142, !mcsema_real_eip !31
  br label %block_0xf, !mcsema_real_eip !32

block_0x8b:                                       ; preds = %19
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !33
  %AL.41 = bitcast i64* %XAX to i8*, !mcsema_real_eip !34
  store i8 0, i8* %AL.41, !mcsema_real_eip !34
  %RSI_val.43 = load i64, i64* %XSI, !mcsema_real_eip !35
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 -8
  %167 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !35
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !35
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %167, i64* %XSP, !mcsema_real_eip !35
  %168 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.43)
  %_rsp_fix_85 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_86 = getelementptr i8, i8* %_rsp_fix_85, i64 8
  store i8* %_gep_fix_86, i8** %_RSP_ptr_
  store i64 %168, i64* %XAX, !mcsema_real_eip !35
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -20
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !36
  %169 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !36
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.47, i32* %170, !mcsema_real_eip !36
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 32
  %171 = add i64 32, %RSP_val.48, !mcsema_real_eip !37
  %_trans_p2i_63 = ptrtoint i8* %_new_gep_62 to i64
  %_trans_p2i_64 = ptrtoint i8* %_load_rsp_ptr_61 to i64
  %_trans_xor_65 = xor i64 %_trans_p2i_63, %_trans_p2i_64
  %172 = xor i64 %_trans_xor_65, 32, !mcsema_real_eip !37
  %173 = and i64 %172, 16, !mcsema_real_eip !37
  %174 = icmp ne i64 %173, 0, !mcsema_real_eip !37
  store i1 %174, i1* %AF, !mcsema_real_eip !37
  %175 = lshr i64 %171, 63, !mcsema_real_eip !37
  %176 = trunc i64 %175 to i1, !mcsema_real_eip !37
  store i1 %176, i1* %SF, !mcsema_real_eip !37
  %_trans_icmp_eq_67 = icmp eq i64 %_trans_p2i_63, 0
  store i1 %_trans_icmp_eq_67, i1* %ZF, !mcsema_real_eip !37
  %_trans_xor_69 = xor i64 %_trans_p2i_64, 32
  %177 = xor i64 %_trans_xor_69, -1, !mcsema_real_eip !37
  %178 = and i64 %177, %_trans_xor_65, !mcsema_real_eip !37
  %179 = lshr i64 %178, 63, !mcsema_real_eip !37
  %180 = and i64 %179, 1, !mcsema_real_eip !37
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !37
  store i1 %181, i1* %OF, !mcsema_real_eip !37
  %_trans_trunc_74 = trunc i64 %_trans_p2i_63 to i8
  %182 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_74), !mcsema_real_eip !37
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !37
  %184 = xor i1 %183, true, !mcsema_real_eip !37
  store i1 %184, i1* %PF, !mcsema_real_eip !37
  %_trans_icmp_ne_76 = icmp ne i64 %_trans_p2i_63, %RSP_val.48
  store i1 %_trans_icmp_ne_76, i1* %CF, !mcsema_real_eip !37
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %171, i64* %XSP, !mcsema_real_eip !37
  %_allin_new_bt_78 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %185, label %186

; <label>:185:                                    ; preds = %block_0x8b
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i64*
  br label %186

; <label>:186:                                    ; preds = %block_0x8b, %185
  %187 = phi i64* [ %_allin_new_bt_78, %block_0x8b ], [ %_address_in_parent_stack_bt_188, %185 ]
  %_new_load_189 = load i64, i64* %187
  %_new_int2ptr_ = inttoptr i64 %_new_load_189 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_189, i64* %XBP, !mcsema_real_eip !38
  %_new_gep_79 = getelementptr i8, i8* %_new_gep_62, i64 8
  %188 = add i64 %171, 8, !mcsema_real_eip !38
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %188, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_new_gep_79, i64 8
  %189 = add i64 %188, 8, !mcsema_real_eip !39
  %_allin_new_bt_82 = bitcast i8* %_new_gep_79 to i64*
  %_ptr_to_int_190 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  br i1 %_cond1_n_cond2_cond3_201, label %190, label %191

; <label>:190:                                    ; preds = %186
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  br label %191

; <label>:191:                                    ; preds = %186, %190
  %192 = phi i64* [ %_allin_new_bt_82, %186 ], [ %_address_in_parent_stack_bt_203, %190 ]
  %_new_load_204 = load i64, i64* %192
  store i64 %_new_load_204, i64* %XIP, !mcsema_real_eip !39
  store volatile i8* %_new_gep_81, i8** %_RSP_ptr_
  store i64 %189, i64* %XSP, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !40
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !40
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !40
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !40
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !40
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !40
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !40
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !40
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !40
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !40
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !40
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !40
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !40
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !40
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !40
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !40
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !40
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !40
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !40
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !40
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !40
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !40
  br label %block_0xb0, !mcsema_real_eip !40

block_0xb0:                                       ; preds = %entry
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !40
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !40
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !40
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !41
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.54, 112, !mcsema_real_eip !42
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !42
  %4 = and i64 %3, 16, !mcsema_real_eip !42
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !42
  store i1 %5, i1* %AF, !mcsema_real_eip !42
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !42
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !42
  %8 = xor i1 %7, true, !mcsema_real_eip !42
  store i1 %8, i1* %PF, !mcsema_real_eip !42
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !42
  %9 = lshr i64 %2, 63, !mcsema_real_eip !42
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !42
  store i1 %10, i1* %SF, !mcsema_real_eip !42
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !42
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !42
  %12 = lshr i64 %11, 63, !mcsema_real_eip !42
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !42
  store i1 %13, i1* %OF, !mcsema_real_eip !42
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !42
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !43
  store i1 false, i1* %CF, !mcsema_real_eip !43
  store i1 false, i1* %OF, !mcsema_real_eip !43
  store i1 false, i1* %SF, !mcsema_real_eip !43
  store i1 true, i1* %ZF, !mcsema_real_eip !43
  store i1 true, i1* %PF, !mcsema_real_eip !43
  store i1 undef, i1* %AF, !mcsema_real_eip !43
  store i64 0, i64* %XAX, !mcsema_real_eip !43
  store i64 28, i64* %XCX, !mcsema_real_eip !44
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !45
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !45
  %14 = zext i32 %ECX_val.60 to i64, !mcsema_real_eip !45
  store i64 %14, i64* %XDX, !mcsema_real_eip !45
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -64
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !46
  store i64 %15, i64* %R8, !mcsema_real_eip !46
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !47
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !48
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %17, !mcsema_real_eip !48
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.65 = load i32, i32* %EDI.64, !mcsema_real_eip !49
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !49
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !49
  store i32 %EDI_val.65, i32* %19, !mcsema_real_eip !49
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.67 = load i64, i64* %XSI, !mcsema_real_eip !50
  store i64 %RSI_val.67, i64* %_allin_new_bt_24, !mcsema_real_eip !50
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -36
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !51
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !51
  store i32 0, i32* %21, !mcsema_real_eip !51
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -20
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !52
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !52
  store i32 1, i32* %23, !mcsema_real_eip !52
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !53
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !53
  store i32 1, i32* %25, !mcsema_real_eip !53
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !54
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !54
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %27 to i8*
  %_offset_above_rbp_ = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %28, label %29

; <label>:28:                                     ; preds = %block_0xb0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %29

; <label>:29:                                     ; preds = %block_0xb0, %28
  %30 = phi i32* [ %27, %block_0xb0 ], [ %_address_in_parent_stack_bt_, %28 ]
  %_new_load_ = load i32, i32* %30
  %31 = sext i32 %_new_load_ to i64, !mcsema_real_eip !54
  store i64 %31, i64* %XSI, !mcsema_real_eip !54
  %32 = sext i64 %31 to i128, !mcsema_real_eip !55
  %33 = mul i128 %32, 11, !mcsema_real_eip !55
  %34 = trunc i128 %33 to i64, !mcsema_real_eip !55
  %35 = sext i64 %34 to i128, !mcsema_real_eip !55
  %36 = icmp ne i128 %35, %33, !mcsema_real_eip !55
  %37 = icmp slt i64 %34, 0, !mcsema_real_eip !55
  store i1 %37, i1* %SF, !mcsema_real_eip !55
  store i1 %36, i1* %OF, !mcsema_real_eip !55
  store i1 %36, i1* %CF, !mcsema_real_eip !55
  store i64 %34, i64* %XSI, !mcsema_real_eip !55
  %R9_val.73 = load i64, i64* %R9, !mcsema_real_eip !56
  %38 = add i64 %34, %R9_val.73, !mcsema_real_eip !56
  %39 = xor i64 %38, %R9_val.73, !mcsema_real_eip !56
  %40 = xor i64 %39, %34, !mcsema_real_eip !56
  %41 = and i64 %40, 16, !mcsema_real_eip !56
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !56
  store i1 %42, i1* %AF, !mcsema_real_eip !56
  %43 = lshr i64 %38, 63, !mcsema_real_eip !56
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !56
  store i1 %44, i1* %SF, !mcsema_real_eip !56
  %45 = icmp eq i64 %38, 0, !mcsema_real_eip !56
  store i1 %45, i1* %ZF, !mcsema_real_eip !56
  %46 = xor i64 %R9_val.73, %34, !mcsema_real_eip !56
  %47 = xor i64 %46, -1, !mcsema_real_eip !56
  %48 = and i64 %47, %39, !mcsema_real_eip !56
  %49 = lshr i64 %48, 63, !mcsema_real_eip !56
  %50 = and i64 %49, 1, !mcsema_real_eip !56
  %51 = trunc i64 %50 to i1, !mcsema_real_eip !56
  store i1 %51, i1* %OF, !mcsema_real_eip !56
  %52 = trunc i64 %38 to i8, !mcsema_real_eip !56
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !56
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !56
  %55 = xor i1 %54, true, !mcsema_real_eip !56
  store i1 %55, i1* %PF, !mcsema_real_eip !56
  %56 = icmp ult i64 %38, %R9_val.73, !mcsema_real_eip !56
  store i1 %56, i1* %CF, !mcsema_real_eip !56
  store i64 %38, i64* %R9, !mcsema_real_eip !56
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %57 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !57
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !57
  %_ptr_bt_267 = bitcast i32* %58 to i8*
  %_offset_above_rbp_268 = sub i64 %57, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_ptr_bt_267, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_ptr_bt_267, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_ptr_bt_267, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  br i1 %_cond1_n_cond2_cond3_276, label %59, label %60

; <label>:59:                                     ; preds = %29
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i32*
  br label %60

; <label>:60:                                     ; preds = %29, %59
  %61 = phi i32* [ %58, %29 ], [ %_address_in_parent_stack_bt_278, %59 ]
  %_new_load_279 = load i32, i32* %61
  %62 = sext i32 %_new_load_279 to i64, !mcsema_real_eip !57
  store i64 %62, i64* %XSI, !mcsema_real_eip !57
  %63 = add i64 %38, %62, !mcsema_real_eip !58
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !58
  %65 = inttoptr i64 %63 to i8*, !mcsema_real_eip !58
  store i8 88, i8* %65, !mcsema_real_eip !58
  %EAX_val.79 = load i32, i32* %EAX.55, !mcsema_real_eip !59
  %66 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !59
  store i64 %66, i64* %XDI, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !60
  store i64 %R8_val.80, i64* %XSI, !mcsema_real_eip !60
  %RDX_val.83 = load i64, i64* %XDX, !mcsema_real_eip !61
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %67 = sub i64 %RSP_val.84, 8, !mcsema_real_eip !61
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, !mcsema_real_eip !61
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !61
  %68 = call x86_64_sysvcc i64 @_read(i64 %66, i64 %R8_val.80, i64 %RDX_val.83)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %68, i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %68, i64* %_allin_new_bt_45, !mcsema_real_eip !62
  br label %block_0x114, !mcsema_real_eip !63

block_0x114:                                      ; preds = %659, %60
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -36
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %69 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !63
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !63
  %_ptr_bt_282 = bitcast i32* %70 to i8*
  %_offset_above_rbp_283 = sub i64 %69, %_local_end_to_int_
  %_pot_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_283
  %_cond1_285 = icmp ugt i8* %_ptr_bt_282, %_local_stack_end_ptr_
  %_cond2_1_286 = icmp ugt i8* %_ptr_bt_282, %_parent_stack_end_ptr_
  %_cond2_2_287 = icmp ult i8* %_ptr_bt_282, %_parent_stack_start_ptr_
  %_cond2_288 = or i1 %_cond2_1_286, %_cond2_2_287
  %_cond4_289 = icmp ule i8* %_pot_address_in_parent_stack_284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_290 = and i1 %_cond1_285, %_cond2_288
  %_cond1_n_cond2_cond3_291 = and i1 %_cond1_n_cond2_290, %_cond4_289
  br i1 %_cond1_n_cond2_cond3_291, label %71, label %72

; <label>:71:                                     ; preds = %block_0x114
  %_address_in_parent_stack_bt_293 = bitcast i8* %_pot_address_in_parent_stack_284 to i32*
  br label %72

; <label>:72:                                     ; preds = %block_0x114, %71
  %73 = phi i32* [ %70, %block_0x114 ], [ %_address_in_parent_stack_bt_293, %71 ]
  %_new_load_294 = load i32, i32* %73
  %74 = sub i32 %_new_load_294, 28, !mcsema_real_eip !63
  %75 = xor i32 %74, %_new_load_294, !mcsema_real_eip !63
  %76 = xor i32 %75, 28, !mcsema_real_eip !63
  %77 = and i32 %76, 16, !mcsema_real_eip !63
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !63
  store i1 %78, i1* %AF, !mcsema_real_eip !63
  %79 = trunc i32 %74 to i8, !mcsema_real_eip !63
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !63
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !63
  %82 = xor i1 %81, true, !mcsema_real_eip !63
  store i1 %82, i1* %PF, !mcsema_real_eip !63
  %83 = icmp eq i32 %74, 0, !mcsema_real_eip !63
  store i1 %83, i1* %ZF, !mcsema_real_eip !63
  %84 = lshr i32 %74, 31, !mcsema_real_eip !63
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !63
  store i1 %85, i1* %SF, !mcsema_real_eip !63
  %86 = icmp ult i32 %_new_load_294, 28, !mcsema_real_eip !63
  store i1 %86, i1* %CF, !mcsema_real_eip !63
  %87 = xor i32 %_new_load_294, 28, !mcsema_real_eip !63
  %88 = and i32 %87, %75, !mcsema_real_eip !63
  %89 = lshr i32 %88, 31, !mcsema_real_eip !63
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !63
  store i1 %90, i1* %OF, !mcsema_real_eip !63
  %91 = icmp eq i1 %85, %90, !mcsema_real_eip !64
  br i1 %91, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !64

block_0x11e:                                      ; preds = %72
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %92 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !65
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !65
  %_ptr_bt_297 = bitcast i32* %93 to i8*
  %_offset_above_rbp_298 = sub i64 %92, %_local_end_to_int_
  %_pot_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_298
  %_cond1_300 = icmp ugt i8* %_ptr_bt_297, %_local_stack_end_ptr_
  %_cond2_1_301 = icmp ugt i8* %_ptr_bt_297, %_parent_stack_end_ptr_
  %_cond2_2_302 = icmp ult i8* %_ptr_bt_297, %_parent_stack_start_ptr_
  %_cond2_303 = or i1 %_cond2_1_301, %_cond2_2_302
  %_cond4_304 = icmp ule i8* %_pot_address_in_parent_stack_299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_305 = and i1 %_cond1_300, %_cond2_303
  %_cond1_n_cond2_cond3_306 = and i1 %_cond1_n_cond2_305, %_cond4_304
  br i1 %_cond1_n_cond2_cond3_306, label %94, label %95

; <label>:94:                                     ; preds = %block_0x11e
  %_address_in_parent_stack_bt_308 = bitcast i8* %_pot_address_in_parent_stack_299 to i32*
  br label %95

; <label>:95:                                     ; preds = %block_0x11e, %94
  %96 = phi i32* [ %93, %block_0x11e ], [ %_address_in_parent_stack_bt_308, %94 ]
  %_new_load_309 = load i32, i32* %96
  %97 = zext i32 %_new_load_309 to i64, !mcsema_real_eip !65
  store i64 %97, i64* %XAX, !mcsema_real_eip !65
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %EAX_val.91 = load i32, i32* %EAX.55, !mcsema_real_eip !66
  %98 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !66
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.91, i32* %99, !mcsema_real_eip !66
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %100 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !67
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !67
  %_ptr_bt_312 = bitcast i32* %101 to i8*
  %_offset_above_rbp_313 = sub i64 %100, %_local_end_to_int_
  %_pot_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_313
  %_cond1_315 = icmp ugt i8* %_ptr_bt_312, %_local_stack_end_ptr_
  %_cond2_1_316 = icmp ugt i8* %_ptr_bt_312, %_parent_stack_end_ptr_
  %_cond2_2_317 = icmp ult i8* %_ptr_bt_312, %_parent_stack_start_ptr_
  %_cond2_318 = or i1 %_cond2_1_316, %_cond2_2_317
  %_cond4_319 = icmp ule i8* %_pot_address_in_parent_stack_314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_320 = and i1 %_cond1_315, %_cond2_318
  %_cond1_n_cond2_cond3_321 = and i1 %_cond1_n_cond2_320, %_cond4_319
  br i1 %_cond1_n_cond2_cond3_321, label %102, label %103

; <label>:102:                                    ; preds = %95
  %_address_in_parent_stack_bt_323 = bitcast i8* %_pot_address_in_parent_stack_314 to i32*
  br label %103

; <label>:103:                                    ; preds = %95, %102
  %104 = phi i32* [ %101, %95 ], [ %_address_in_parent_stack_bt_323, %102 ]
  %_new_load_324 = load i32, i32* %104
  %105 = zext i32 %_new_load_324 to i64, !mcsema_real_eip !67
  store i64 %105, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %EAX_val.95 = load i32, i32* %EAX.55, !mcsema_real_eip !68
  %106 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !68
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.95, i32* %107, !mcsema_real_eip !68
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -36
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !69
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !69
  %_ptr_bt_327 = bitcast i32* %109 to i8*
  %_offset_above_rbp_328 = sub i64 %108, %_local_end_to_int_
  %_pot_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_328
  %_cond1_330 = icmp ugt i8* %_ptr_bt_327, %_local_stack_end_ptr_
  %_cond2_1_331 = icmp ugt i8* %_ptr_bt_327, %_parent_stack_end_ptr_
  %_cond2_2_332 = icmp ult i8* %_ptr_bt_327, %_parent_stack_start_ptr_
  %_cond2_333 = or i1 %_cond2_1_331, %_cond2_2_332
  %_cond4_334 = icmp ule i8* %_pot_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_335 = and i1 %_cond1_330, %_cond2_333
  %_cond1_n_cond2_cond3_336 = and i1 %_cond1_n_cond2_335, %_cond4_334
  br i1 %_cond1_n_cond2_cond3_336, label %110, label %111

; <label>:110:                                    ; preds = %103
  %_address_in_parent_stack_bt_338 = bitcast i8* %_pot_address_in_parent_stack_329 to i32*
  br label %111

; <label>:111:                                    ; preds = %103, %110
  %112 = phi i32* [ %109, %103 ], [ %_address_in_parent_stack_bt_338, %110 ]
  %_new_load_339 = load i32, i32* %112
  %113 = sext i32 %_new_load_339 to i64, !mcsema_real_eip !69
  store i64 %113, i64* %XCX, !mcsema_real_eip !69
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %113
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %114 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !70
  %115 = inttoptr i64 %114 to i8*, !mcsema_real_eip !70
  %_offset_above_rbp_342 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %115, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %115, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %115, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  br i1 %_cond1_n_cond2_cond3_350, label %116, label %117

; <label>:116:                                    ; preds = %111
  br label %117

; <label>:117:                                    ; preds = %111, %116
  %118 = phi i8* [ %115, %111 ], [ %_pot_address_in_parent_stack_343, %116 ]
  %_new_load_352 = load i8, i8* %118
  %119 = sext i8 %_new_load_352 to i32, !mcsema_real_eip !70
  %120 = zext i32 %119 to i64, !mcsema_real_eip !70
  store i64 %120, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.100 = load i32, i32* %EAX.55, !mcsema_real_eip !71
  %121 = add i32 -97, %EAX_val.100, !mcsema_real_eip !71
  %122 = xor i32 %121, %EAX_val.100, !mcsema_real_eip !71
  %123 = xor i32 %122, -97, !mcsema_real_eip !71
  %124 = and i32 %123, 16, !mcsema_real_eip !71
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !71
  store i1 %125, i1* %AF, !mcsema_real_eip !71
  %126 = lshr i32 %121, 31, !mcsema_real_eip !71
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !71
  store i1 %127, i1* %SF, !mcsema_real_eip !71
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !71
  store i1 %128, i1* %ZF, !mcsema_real_eip !71
  %129 = xor i32 %EAX_val.100, -97, !mcsema_real_eip !71
  %130 = xor i32 %129, -1, !mcsema_real_eip !71
  %131 = and i32 %130, %122, !mcsema_real_eip !71
  %132 = lshr i32 %131, 31, !mcsema_real_eip !71
  %133 = and i32 %132, 1, !mcsema_real_eip !71
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !71
  store i1 %134, i1* %OF, !mcsema_real_eip !71
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !71
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !71
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !71
  %138 = xor i1 %137, true, !mcsema_real_eip !71
  store i1 %138, i1* %PF, !mcsema_real_eip !71
  %139 = icmp ult i32 %121, %EAX_val.100, !mcsema_real_eip !71
  store i1 %139, i1* %CF, !mcsema_real_eip !71
  %140 = zext i32 %121 to i64, !mcsema_real_eip !71
  store i64 %140, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.102 = load i32, i32* %EAX.55, !mcsema_real_eip !72
  %141 = zext i32 %EAX_val.102 to i64, !mcsema_real_eip !72
  store i64 %141, i64* %XCX, !mcsema_real_eip !72
  %142 = sub i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %143 = xor i32 %142, %EAX_val.102, !mcsema_real_eip !73
  %144 = xor i32 %143, 22, !mcsema_real_eip !73
  %145 = and i32 %144, 16, !mcsema_real_eip !73
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !73
  store i1 %146, i1* %AF, !mcsema_real_eip !73
  %147 = trunc i32 %142 to i8, !mcsema_real_eip !73
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !73
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !73
  %150 = xor i1 %149, true, !mcsema_real_eip !73
  store i1 %150, i1* %PF, !mcsema_real_eip !73
  %151 = icmp eq i32 %142, 0, !mcsema_real_eip !73
  store i1 %151, i1* %ZF, !mcsema_real_eip !73
  %152 = lshr i32 %142, 31, !mcsema_real_eip !73
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !73
  store i1 %153, i1* %SF, !mcsema_real_eip !73
  %154 = icmp ult i32 %EAX_val.102, 22, !mcsema_real_eip !73
  store i1 %154, i1* %CF, !mcsema_real_eip !73
  %155 = xor i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %156 = and i32 %155, %143, !mcsema_real_eip !73
  %157 = lshr i32 %156, 31, !mcsema_real_eip !73
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !73
  store i1 %158, i1* %OF, !mcsema_real_eip !73
  %159 = zext i32 %142 to i64, !mcsema_real_eip !73
  store i64 %159, i64* %XAX, !mcsema_real_eip !73
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %141, i64* %_allin_new_bt_70, !mcsema_real_eip !74
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -84
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.109 = load i32, i32* %EAX.55, !mcsema_real_eip !75
  %160 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !75
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.109, i32* %161, !mcsema_real_eip !75
  %162 = load i1, i1* %ZF, !mcsema_real_eip !76
  %163 = icmp eq i1 %162, false, !mcsema_real_eip !76
  %164 = load i1, i1* %CF, !mcsema_real_eip !76
  %165 = icmp eq i1 %164, false, !mcsema_real_eip !76
  %166 = and i1 %165, %163, !mcsema_real_eip !76
  br i1 %166, label %block_0x18e, label %block_0x148, !mcsema_real_eip !76

block_0x148:                                      ; preds = %117
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -80
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %_ptr_to_int_353 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_356 = sub i64 %_ptr_to_int_353, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %167, label %168

; <label>:167:                                    ; preds = %block_0x148
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i64*
  br label %168

; <label>:168:                                    ; preds = %block_0x148, %167
  %169 = phi i64* [ %_allin_new_bt_76, %block_0x148 ], [ %_address_in_parent_stack_bt_366, %167 ]
  %_new_load_367 = load i64, i64* %169
  store i64 %_new_load_367, i64* %XAX, !mcsema_real_eip !77
  %170 = mul i64 %_new_load_367, 8, !mcsema_real_eip !78
  %171 = add i64 ptrtoint (%0* @data_0x320 to i64), %170, !mcsema_real_eip !78
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !78
  %_ptr_bt_370 = bitcast i64* %172 to i8*
  %_offset_above_rbp_371 = sub i64 %171, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_ptr_bt_370, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_ptr_bt_370, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_ptr_bt_370, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %173, label %174

; <label>:173:                                    ; preds = %168
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i64*
  br label %174

; <label>:174:                                    ; preds = %168, %173
  %175 = phi i64* [ %172, %168 ], [ %_address_in_parent_stack_bt_381, %173 ]
  %_new_load_382 = load i64, i64* %175
  store i64 %_new_load_382, i64* %XCX, !mcsema_real_eip !78
  switch i64 %_new_load_382, label %716 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !79

block_0x156:                                      ; preds = %174
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -24
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %176 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !80
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !80
  %_ptr_bt_385 = bitcast i32* %177 to i8*
  %_offset_above_rbp_386 = sub i64 %176, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %178, label %179

; <label>:178:                                    ; preds = %block_0x156
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  br label %179

; <label>:179:                                    ; preds = %block_0x156, %178
  %180 = phi i32* [ %177, %block_0x156 ], [ %_address_in_parent_stack_bt_396, %178 ]
  %_new_load_397 = load i32, i32* %180
  %181 = zext i32 %_new_load_397 to i64, !mcsema_real_eip !80
  store i64 %181, i64* %XAX, !mcsema_real_eip !80
  %EAX_val.115 = load i32, i32* %EAX.55, !mcsema_real_eip !81
  %182 = add i32 -1, %EAX_val.115, !mcsema_real_eip !81
  %183 = xor i32 %182, %EAX_val.115, !mcsema_real_eip !81
  %184 = xor i32 %183, -1, !mcsema_real_eip !81
  %185 = and i32 %184, 16, !mcsema_real_eip !81
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !81
  store i1 %186, i1* %AF, !mcsema_real_eip !81
  %187 = lshr i32 %182, 31, !mcsema_real_eip !81
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !81
  store i1 %188, i1* %SF, !mcsema_real_eip !81
  %189 = icmp eq i32 %182, 0, !mcsema_real_eip !81
  store i1 %189, i1* %ZF, !mcsema_real_eip !81
  %190 = xor i32 %EAX_val.115, -1, !mcsema_real_eip !81
  %191 = and i32 %EAX_val.115, %183, !mcsema_real_eip !81
  %192 = lshr i32 %191, 31, !mcsema_real_eip !81
  %193 = and i32 %192, 1, !mcsema_real_eip !81
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !81
  store i1 %194, i1* %OF, !mcsema_real_eip !81
  %195 = trunc i32 %182 to i8, !mcsema_real_eip !81
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !81
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !81
  %198 = xor i1 %197, true, !mcsema_real_eip !81
  store i1 %198, i1* %PF, !mcsema_real_eip !81
  %199 = icmp ult i32 %182, %EAX_val.115, !mcsema_real_eip !81
  store i1 %199, i1* %CF, !mcsema_real_eip !81
  %200 = zext i32 %182 to i64, !mcsema_real_eip !81
  store i64 %200, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.118 = load i32, i32* %EAX.55, !mcsema_real_eip !82
  store i32 %EAX_val.118, i32* %177, !mcsema_real_eip !82
  br label %block_0x1c0, !mcsema_real_eip !83

block_0x164:                                      ; preds = %174
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %201 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !84
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !84
  %_ptr_bt_400 = bitcast i32* %202 to i8*
  %_offset_above_rbp_401 = sub i64 %201, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_ptr_bt_400, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_ptr_bt_400, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_ptr_bt_400, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %203, label %204

; <label>:203:                                    ; preds = %block_0x164
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i32*
  br label %204

; <label>:204:                                    ; preds = %block_0x164, %203
  %205 = phi i32* [ %202, %block_0x164 ], [ %_address_in_parent_stack_bt_411, %203 ]
  %_new_load_412 = load i32, i32* %205
  %206 = zext i32 %_new_load_412 to i64, !mcsema_real_eip !84
  store i64 %206, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.121 = load i32, i32* %EAX.55, !mcsema_real_eip !85
  %207 = add i32 1, %EAX_val.121, !mcsema_real_eip !85
  %208 = xor i32 %207, %EAX_val.121, !mcsema_real_eip !85
  %209 = xor i32 %208, 1, !mcsema_real_eip !85
  %210 = and i32 %209, 16, !mcsema_real_eip !85
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !85
  store i1 %211, i1* %AF, !mcsema_real_eip !85
  %212 = lshr i32 %207, 31, !mcsema_real_eip !85
  %213 = trunc i32 %212 to i1, !mcsema_real_eip !85
  store i1 %213, i1* %SF, !mcsema_real_eip !85
  %214 = icmp eq i32 %207, 0, !mcsema_real_eip !85
  store i1 %214, i1* %ZF, !mcsema_real_eip !85
  %215 = xor i32 %EAX_val.121, 1, !mcsema_real_eip !85
  %216 = xor i32 %215, -1, !mcsema_real_eip !85
  %217 = and i32 %216, %208, !mcsema_real_eip !85
  %218 = lshr i32 %217, 31, !mcsema_real_eip !85
  %219 = and i32 %218, 1, !mcsema_real_eip !85
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !85
  store i1 %220, i1* %OF, !mcsema_real_eip !85
  %221 = trunc i32 %207 to i8, !mcsema_real_eip !85
  %222 = call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !85
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !85
  %224 = xor i1 %223, true, !mcsema_real_eip !85
  store i1 %224, i1* %PF, !mcsema_real_eip !85
  %225 = icmp ult i32 %207, %EAX_val.121, !mcsema_real_eip !85
  store i1 %225, i1* %CF, !mcsema_real_eip !85
  %226 = zext i32 %207 to i64, !mcsema_real_eip !85
  store i64 %226, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.124 = load i32, i32* %EAX.55, !mcsema_real_eip !86
  store i32 %EAX_val.124, i32* %202, !mcsema_real_eip !86
  br label %block_0x1c0, !mcsema_real_eip !87

block_0x172:                                      ; preds = %174
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -20
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %227 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !88
  %228 = inttoptr i64 %227 to i32*, !mcsema_real_eip !88
  %_ptr_bt_415 = bitcast i32* %228 to i8*
  %_offset_above_rbp_416 = sub i64 %227, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %229, label %230

; <label>:229:                                    ; preds = %block_0x172
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i32*
  br label %230

; <label>:230:                                    ; preds = %block_0x172, %229
  %231 = phi i32* [ %228, %block_0x172 ], [ %_address_in_parent_stack_bt_426, %229 ]
  %_new_load_427 = load i32, i32* %231
  %232 = zext i32 %_new_load_427 to i64, !mcsema_real_eip !88
  store i64 %232, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.127 = load i32, i32* %EAX.55, !mcsema_real_eip !89
  %233 = add i32 -1, %EAX_val.127, !mcsema_real_eip !89
  %234 = xor i32 %233, %EAX_val.127, !mcsema_real_eip !89
  %235 = xor i32 %234, -1, !mcsema_real_eip !89
  %236 = and i32 %235, 16, !mcsema_real_eip !89
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !89
  store i1 %237, i1* %AF, !mcsema_real_eip !89
  %238 = lshr i32 %233, 31, !mcsema_real_eip !89
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !89
  store i1 %239, i1* %SF, !mcsema_real_eip !89
  %240 = icmp eq i32 %233, 0, !mcsema_real_eip !89
  store i1 %240, i1* %ZF, !mcsema_real_eip !89
  %241 = xor i32 %EAX_val.127, -1, !mcsema_real_eip !89
  %242 = and i32 %EAX_val.127, %234, !mcsema_real_eip !89
  %243 = lshr i32 %242, 31, !mcsema_real_eip !89
  %244 = and i32 %243, 1, !mcsema_real_eip !89
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !89
  store i1 %245, i1* %OF, !mcsema_real_eip !89
  %246 = trunc i32 %233 to i8, !mcsema_real_eip !89
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !89
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !89
  %249 = xor i1 %248, true, !mcsema_real_eip !89
  store i1 %249, i1* %PF, !mcsema_real_eip !89
  %250 = icmp ult i32 %233, %EAX_val.127, !mcsema_real_eip !89
  store i1 %250, i1* %CF, !mcsema_real_eip !89
  %251 = zext i32 %233 to i64, !mcsema_real_eip !89
  store i64 %251, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.130 = load i32, i32* %EAX.55, !mcsema_real_eip !90
  store i32 %EAX_val.130, i32* %228, !mcsema_real_eip !90
  br label %block_0x1c0, !mcsema_real_eip !91

block_0x180:                                      ; preds = %174
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -20
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %252 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !92
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !92
  %_ptr_bt_430 = bitcast i32* %253 to i8*
  %_offset_above_rbp_431 = sub i64 %252, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_ptr_bt_430, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_ptr_bt_430, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_ptr_bt_430, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %254, label %255

; <label>:254:                                    ; preds = %block_0x180
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i32*
  br label %255

; <label>:255:                                    ; preds = %block_0x180, %254
  %256 = phi i32* [ %253, %block_0x180 ], [ %_address_in_parent_stack_bt_441, %254 ]
  %_new_load_442 = load i32, i32* %256
  %257 = zext i32 %_new_load_442 to i64, !mcsema_real_eip !92
  store i64 %257, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.133 = load i32, i32* %EAX.55, !mcsema_real_eip !93
  %258 = add i32 1, %EAX_val.133, !mcsema_real_eip !93
  %259 = xor i32 %258, %EAX_val.133, !mcsema_real_eip !93
  %260 = xor i32 %259, 1, !mcsema_real_eip !93
  %261 = and i32 %260, 16, !mcsema_real_eip !93
  %262 = icmp ne i32 %261, 0, !mcsema_real_eip !93
  store i1 %262, i1* %AF, !mcsema_real_eip !93
  %263 = lshr i32 %258, 31, !mcsema_real_eip !93
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !93
  store i1 %264, i1* %SF, !mcsema_real_eip !93
  %265 = icmp eq i32 %258, 0, !mcsema_real_eip !93
  store i1 %265, i1* %ZF, !mcsema_real_eip !93
  %266 = xor i32 %EAX_val.133, 1, !mcsema_real_eip !93
  %267 = xor i32 %266, -1, !mcsema_real_eip !93
  %268 = and i32 %267, %259, !mcsema_real_eip !93
  %269 = lshr i32 %268, 31, !mcsema_real_eip !93
  %270 = and i32 %269, 1, !mcsema_real_eip !93
  %271 = trunc i32 %270 to i1, !mcsema_real_eip !93
  store i1 %271, i1* %OF, !mcsema_real_eip !93
  %272 = trunc i32 %258 to i8, !mcsema_real_eip !93
  %273 = call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !93
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !93
  %275 = xor i1 %274, true, !mcsema_real_eip !93
  store i1 %275, i1* %PF, !mcsema_real_eip !93
  %276 = icmp ult i32 %258, %EAX_val.133, !mcsema_real_eip !93
  store i1 %276, i1* %CF, !mcsema_real_eip !93
  %277 = zext i32 %258 to i64, !mcsema_real_eip !93
  store i64 %277, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.136 = load i32, i32* %EAX.55, !mcsema_real_eip !94
  store i32 %EAX_val.136, i32* %253, !mcsema_real_eip !94
  br label %block_0x1c0, !mcsema_real_eip !95

block_0x18e:                                      ; preds = %174, %117
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !96
  %AL.137 = bitcast i64* %XAX to i8*, !mcsema_real_eip !97
  store i8 0, i8* %AL.137, !mcsema_real_eip !97
  %RSI_val.139 = load i64, i64* %XSI, !mcsema_real_eip !98
  %_load_rsp_ptr_101 = load i8*, i8** %_RSP_ptr_
  %RSP_val.140 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_102 = getelementptr i8, i8* %_load_rsp_ptr_101, i64 -8
  %278 = sub i64 %RSP_val.140, 8, !mcsema_real_eip !98
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_103, !mcsema_real_eip !98
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %278, i64* %XSP, !mcsema_real_eip !98
  %279 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.139)
  %_rsp_fix_243 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_244 = getelementptr i8, i8* %_rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_
  store i64 %279, i64* %XAX, !mcsema_real_eip !98
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !99
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -88
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %EAX_val.143 = load i32, i32* %EAX.55, !mcsema_real_eip !100
  %280 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !100
  %281 = inttoptr i64 %280 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.143, i32* %281, !mcsema_real_eip !100
  store i8 0, i8* %AL.137, !mcsema_real_eip !101
  %RDI_val.145 = load i64, i64* %XDI, !mcsema_real_eip !102
  %RSI_val.146 = load i64, i64* %XSI, !mcsema_real_eip !102
  %_load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_
  %RSP_val.147 = load i64, i64* %XSP, !mcsema_real_eip !102
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_107, i64 -8
  %282 = sub i64 %RSP_val.147, 8, !mcsema_real_eip !102
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_109, !mcsema_real_eip !102
  store volatile i8* %_new_gep_108, i8** %_RSP_ptr_
  store i64 %282, i64* %XSP, !mcsema_real_eip !102
  %283 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146)
  %_rsp_fix_245 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_246 = getelementptr i8, i8* %_rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_
  store i64 %283, i64* %XAX, !mcsema_real_eip !102
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !103
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -92
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %EAX_val.150 = load i32, i32* %EAX.55, !mcsema_real_eip !104
  %284 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !104
  %285 = inttoptr i64 %284 to i32*, !mcsema_real_eip !104
  store i32 %EAX_val.150, i32* %285, !mcsema_real_eip !104
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !105
  %_load_rsp_ptr_113 = load i8*, i8** %_RSP_ptr_
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !105
  %_new_gep_114 = getelementptr i8, i8* %_load_rsp_ptr_113, i64 -8
  %286 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !105
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_115, !mcsema_real_eip !105
  store volatile i8* %_new_gep_114, i8** %_RSP_ptr_
  store i64 %286, i64* %XSP, !mcsema_real_eip !105
  %287 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_rsp_fix_247 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_248 = getelementptr i8, i8* %_rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_
  store i64 %287, i64* %XAX, !mcsema_real_eip !105
  br label %block_0x1c0, !mcsema_real_eip !106

block_0x1c0:                                      ; preds = %block_0x18e, %255, %230, %204, %179
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !106
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -24
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %288 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !107
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !107
  %_ptr_bt_445 = bitcast i32* %289 to i8*
  %_offset_above_rbp_446 = sub i64 %288, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %290, label %291

; <label>:290:                                    ; preds = %block_0x1c0
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  br label %291

; <label>:291:                                    ; preds = %block_0x1c0, %290
  %292 = phi i32* [ %289, %block_0x1c0 ], [ %_address_in_parent_stack_bt_456, %290 ]
  %_new_load_457 = load i32, i32* %292
  %293 = sext i32 %_new_load_457 to i64, !mcsema_real_eip !107
  store i64 %293, i64* %XCX, !mcsema_real_eip !107
  %294 = sext i64 %293 to i128, !mcsema_real_eip !108
  %295 = mul i128 %294, 11, !mcsema_real_eip !108
  %296 = trunc i128 %295 to i64, !mcsema_real_eip !108
  %297 = sext i64 %296 to i128, !mcsema_real_eip !108
  %298 = icmp ne i128 %297, %295, !mcsema_real_eip !108
  %299 = icmp slt i64 %296, 0, !mcsema_real_eip !108
  store i1 %299, i1* %SF, !mcsema_real_eip !108
  store i1 %298, i1* %OF, !mcsema_real_eip !108
  store i1 %298, i1* %CF, !mcsema_real_eip !108
  store i64 %296, i64* %XCX, !mcsema_real_eip !108
  %300 = add i64 %296, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %301 = xor i64 %300, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %302 = xor i64 %301, %296, !mcsema_real_eip !109
  %303 = and i64 %302, 16, !mcsema_real_eip !109
  %304 = icmp ne i64 %303, 0, !mcsema_real_eip !109
  store i1 %304, i1* %AF, !mcsema_real_eip !109
  %305 = lshr i64 %300, 63, !mcsema_real_eip !109
  %306 = trunc i64 %305 to i1, !mcsema_real_eip !109
  store i1 %306, i1* %SF, !mcsema_real_eip !109
  %307 = icmp eq i64 %300, 0, !mcsema_real_eip !109
  store i1 %307, i1* %ZF, !mcsema_real_eip !109
  %308 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %296, !mcsema_real_eip !109
  %309 = xor i64 %308, -1, !mcsema_real_eip !109
  %310 = and i64 %309, %301, !mcsema_real_eip !109
  %311 = lshr i64 %310, 63, !mcsema_real_eip !109
  %312 = and i64 %311, 1, !mcsema_real_eip !109
  %313 = trunc i64 %312 to i1, !mcsema_real_eip !109
  store i1 %313, i1* %OF, !mcsema_real_eip !109
  %314 = trunc i64 %300 to i8, !mcsema_real_eip !109
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !109
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !109
  %317 = xor i1 %316, true, !mcsema_real_eip !109
  store i1 %317, i1* %PF, !mcsema_real_eip !109
  %318 = icmp ult i64 %300, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  store i1 %318, i1* %CF, !mcsema_real_eip !109
  store i64 %300, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -20
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %319 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !110
  %320 = inttoptr i64 %319 to i32*, !mcsema_real_eip !110
  %_ptr_bt_460 = bitcast i32* %320 to i8*
  %_offset_above_rbp_461 = sub i64 %319, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_ptr_bt_460, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_ptr_bt_460, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_ptr_bt_460, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  br i1 %_cond1_n_cond2_cond3_469, label %321, label %322

; <label>:321:                                    ; preds = %291
  %_address_in_parent_stack_bt_471 = bitcast i8* %_pot_address_in_parent_stack_462 to i32*
  br label %322

; <label>:322:                                    ; preds = %291, %321
  %323 = phi i32* [ %320, %291 ], [ %_address_in_parent_stack_bt_471, %321 ]
  %_new_load_472 = load i32, i32* %323
  %324 = sext i32 %_new_load_472 to i64, !mcsema_real_eip !110
  store i64 %324, i64* %XCX, !mcsema_real_eip !110
  %325 = add i64 %300, %324, !mcsema_real_eip !111
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !111
  %327 = inttoptr i64 %325 to i8*, !mcsema_real_eip !111
  %_offset_above_rbp_475 = sub i64 %325, %_local_end_to_int_
  %_pot_address_in_parent_stack_476 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_475
  %_cond1_477 = icmp ugt i8* %327, %_local_stack_end_ptr_
  %_cond2_1_478 = icmp ugt i8* %327, %_parent_stack_end_ptr_
  %_cond2_2_479 = icmp ult i8* %327, %_parent_stack_start_ptr_
  %_cond2_480 = or i1 %_cond2_1_478, %_cond2_2_479
  %_cond4_481 = icmp ule i8* %_pot_address_in_parent_stack_476, %_parent_stack_end_ptr_
  %_cond1_n_cond2_482 = and i1 %_cond1_477, %_cond2_480
  %_cond1_n_cond2_cond3_483 = and i1 %_cond1_n_cond2_482, %_cond4_481
  br i1 %_cond1_n_cond2_cond3_483, label %328, label %329

; <label>:328:                                    ; preds = %322
  br label %329

; <label>:329:                                    ; preds = %322, %328
  %330 = phi i8* [ %327, %322 ], [ %_pot_address_in_parent_stack_476, %328 ]
  %_new_load_485 = load i8, i8* %330
  %331 = sext i8 %_new_load_485 to i32, !mcsema_real_eip !111
  %332 = zext i32 %331 to i64, !mcsema_real_eip !111
  store i64 %332, i64* %XDX, !mcsema_real_eip !111
  %EDX.160 = bitcast i64* %XDX to i32*, !mcsema_real_eip !112
  %EDX_val.161 = load i32, i32* %EDX.160, !mcsema_real_eip !112
  %333 = sub i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %334 = xor i32 %333, %EDX_val.161, !mcsema_real_eip !112
  %335 = xor i32 %334, 35, !mcsema_real_eip !112
  %336 = and i32 %335, 16, !mcsema_real_eip !112
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !112
  store i1 %337, i1* %AF, !mcsema_real_eip !112
  %338 = trunc i32 %333 to i8, !mcsema_real_eip !112
  %339 = call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !112
  %340 = trunc i8 %339 to i1, !mcsema_real_eip !112
  %341 = xor i1 %340, true, !mcsema_real_eip !112
  store i1 %341, i1* %PF, !mcsema_real_eip !112
  %342 = icmp eq i32 %333, 0, !mcsema_real_eip !112
  store i1 %342, i1* %ZF, !mcsema_real_eip !112
  %343 = lshr i32 %333, 31, !mcsema_real_eip !112
  %344 = trunc i32 %343 to i1, !mcsema_real_eip !112
  store i1 %344, i1* %SF, !mcsema_real_eip !112
  %345 = icmp ult i32 %EDX_val.161, 35, !mcsema_real_eip !112
  store i1 %345, i1* %CF, !mcsema_real_eip !112
  %346 = xor i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %347 = and i32 %346, %334, !mcsema_real_eip !112
  %348 = lshr i32 %347, 31, !mcsema_real_eip !112
  %349 = trunc i32 %348 to i1, !mcsema_real_eip !112
  store i1 %349, i1* %OF, !mcsema_real_eip !112
  %350 = icmp eq i1 %342, false, !mcsema_real_eip !113
  br i1 %350, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !113

block_0x1e6:                                      ; preds = %329
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !114
  %AL.162 = bitcast i64* %XAX to i8*, !mcsema_real_eip !115
  store i8 0, i8* %AL.162, !mcsema_real_eip !115
  %RSI_val.164 = load i64, i64* %XSI, !mcsema_real_eip !116
  %_load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !116
  %_new_gep_123 = getelementptr i8, i8* %_load_rsp_ptr_122, i64 -8
  %351 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !116
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_124, !mcsema_real_eip !116
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_
  store i64 %351, i64* %XSP, !mcsema_real_eip !116
  %352 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.164)
  %_rsp_fix_249 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_250 = getelementptr i8, i8* %_rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_
  store i64 %352, i64* %XAX, !mcsema_real_eip !116
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !117
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -64
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %353 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !118
  store i64 %353, i64* %XSI, !mcsema_real_eip !118
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -96
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %EAX_val.169 = load i32, i32* %EAX.55, !mcsema_real_eip !119
  %354 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !119
  %355 = inttoptr i64 %354 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.169, i32* %355, !mcsema_real_eip !119
  store i8 0, i8* %AL.162, !mcsema_real_eip !120
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !121
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !121
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %RSP_val.173 = load i64, i64* %XSP, !mcsema_real_eip !121
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 -8
  %356 = sub i64 %RSP_val.173, 8, !mcsema_real_eip !121
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_133, !mcsema_real_eip !121
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_
  store i64 %356, i64* %XSP, !mcsema_real_eip !121
  %357 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172)
  %_rsp_fix_251 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_252 = getelementptr i8, i8* %_rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_
  store i64 %357, i64* %XAX, !mcsema_real_eip !121
  %EDI_val.175 = load i32, i32* %EDI.64, !mcsema_real_eip !122
  store i1 false, i1* %CF, !mcsema_real_eip !122
  store i1 false, i1* %OF, !mcsema_real_eip !122
  store i1 false, i1* %SF, !mcsema_real_eip !122
  store i1 true, i1* %ZF, !mcsema_real_eip !122
  store i1 true, i1* %PF, !mcsema_real_eip !122
  store i1 undef, i1* %AF, !mcsema_real_eip !122
  store i64 0, i64* %XDI, !mcsema_real_eip !122
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -100
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %EAX_val.180 = load i32, i32* %EAX.55, !mcsema_real_eip !123
  %358 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !123
  %359 = inttoptr i64 %358 to i32*, !mcsema_real_eip !123
  store i32 %EAX_val.180, i32* %359, !mcsema_real_eip !123
  %RDI_val.181 = load i64, i64* %XDI, !mcsema_real_eip !124
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.182 = load i64, i64* %XSP, !mcsema_real_eip !124
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %360 = sub i64 %RSP_val.182, 8, !mcsema_real_eip !124
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_139, !mcsema_real_eip !124
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %360, i64* %XSP, !mcsema_real_eip !124
  %361 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181)
  %_rsp_fix_253 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_254 = getelementptr i8, i8* %_rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_
  store i64 %361, i64* %XAX, !mcsema_real_eip !124
  br label %block_0x219, !mcsema_real_eip !125

block_0x219:                                      ; preds = %block_0x1e6, %329
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !125
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -24
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %362 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !126
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !126
  %_ptr_bt_488 = bitcast i32* %363 to i8*
  %_offset_above_rbp_489 = sub i64 %362, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_ptr_bt_488, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_ptr_bt_488, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_ptr_bt_488, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  br i1 %_cond1_n_cond2_cond3_497, label %364, label %365

; <label>:364:                                    ; preds = %block_0x219
  %_address_in_parent_stack_bt_499 = bitcast i8* %_pot_address_in_parent_stack_490 to i32*
  br label %365

; <label>:365:                                    ; preds = %block_0x219, %364
  %366 = phi i32* [ %363, %block_0x219 ], [ %_address_in_parent_stack_bt_499, %364 ]
  %_new_load_500 = load i32, i32* %366
  %367 = sext i32 %_new_load_500 to i64, !mcsema_real_eip !126
  store i64 %367, i64* %XCX, !mcsema_real_eip !126
  %368 = sext i64 %367 to i128, !mcsema_real_eip !127
  %369 = mul i128 %368, 11, !mcsema_real_eip !127
  %370 = trunc i128 %369 to i64, !mcsema_real_eip !127
  %371 = sext i64 %370 to i128, !mcsema_real_eip !127
  %372 = icmp ne i128 %371, %369, !mcsema_real_eip !127
  %373 = icmp slt i64 %370, 0, !mcsema_real_eip !127
  store i1 %373, i1* %SF, !mcsema_real_eip !127
  store i1 %372, i1* %OF, !mcsema_real_eip !127
  store i1 %372, i1* %CF, !mcsema_real_eip !127
  store i64 %370, i64* %XCX, !mcsema_real_eip !127
  %374 = add i64 %370, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %375 = xor i64 %374, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %376 = xor i64 %375, %370, !mcsema_real_eip !128
  %377 = and i64 %376, 16, !mcsema_real_eip !128
  %378 = icmp ne i64 %377, 0, !mcsema_real_eip !128
  store i1 %378, i1* %AF, !mcsema_real_eip !128
  %379 = lshr i64 %374, 63, !mcsema_real_eip !128
  %380 = trunc i64 %379 to i1, !mcsema_real_eip !128
  store i1 %380, i1* %SF, !mcsema_real_eip !128
  %381 = icmp eq i64 %374, 0, !mcsema_real_eip !128
  store i1 %381, i1* %ZF, !mcsema_real_eip !128
  %382 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %370, !mcsema_real_eip !128
  %383 = xor i64 %382, -1, !mcsema_real_eip !128
  %384 = and i64 %383, %375, !mcsema_real_eip !128
  %385 = lshr i64 %384, 63, !mcsema_real_eip !128
  %386 = and i64 %385, 1, !mcsema_real_eip !128
  %387 = trunc i64 %386 to i1, !mcsema_real_eip !128
  store i1 %387, i1* %OF, !mcsema_real_eip !128
  %388 = trunc i64 %374 to i8, !mcsema_real_eip !128
  %389 = call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !128
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !128
  %391 = xor i1 %390, true, !mcsema_real_eip !128
  store i1 %391, i1* %PF, !mcsema_real_eip !128
  %392 = icmp ult i64 %374, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  store i1 %392, i1* %CF, !mcsema_real_eip !128
  store i64 %374, i64* %XAX, !mcsema_real_eip !128
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -20
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %393 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !129
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !129
  %_ptr_bt_503 = bitcast i32* %394 to i8*
  %_offset_above_rbp_504 = sub i64 %393, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_ptr_bt_503, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_ptr_bt_503, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_ptr_bt_503, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  br i1 %_cond1_n_cond2_cond3_512, label %395, label %396

; <label>:395:                                    ; preds = %365
  %_address_in_parent_stack_bt_514 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  br label %396

; <label>:396:                                    ; preds = %365, %395
  %397 = phi i32* [ %394, %365 ], [ %_address_in_parent_stack_bt_514, %395 ]
  %_new_load_515 = load i32, i32* %397
  %398 = sext i32 %_new_load_515 to i64, !mcsema_real_eip !129
  store i64 %398, i64* %XCX, !mcsema_real_eip !129
  %399 = add i64 %374, %398, !mcsema_real_eip !130
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !130
  %401 = inttoptr i64 %399 to i8*, !mcsema_real_eip !130
  %_offset_above_rbp_518 = sub i64 %399, %_local_end_to_int_
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ugt i8* %401, %_local_stack_end_ptr_
  %_cond2_1_521 = icmp ugt i8* %401, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %401, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond1_n_cond2_525, %_cond4_524
  br i1 %_cond1_n_cond2_cond3_526, label %402, label %403

; <label>:402:                                    ; preds = %396
  br label %403

; <label>:403:                                    ; preds = %396, %402
  %404 = phi i8* [ %401, %396 ], [ %_pot_address_in_parent_stack_519, %402 ]
  %_new_load_528 = load i8, i8* %404
  %405 = sext i8 %_new_load_528 to i32, !mcsema_real_eip !130
  %406 = zext i32 %405 to i64, !mcsema_real_eip !130
  store i64 %406, i64* %XDX, !mcsema_real_eip !130
  %EDX_val.191 = load i32, i32* %EDX.160, !mcsema_real_eip !131
  %407 = sub i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %408 = xor i32 %407, %EDX_val.191, !mcsema_real_eip !131
  %409 = xor i32 %408, 32, !mcsema_real_eip !131
  %410 = and i32 %409, 16, !mcsema_real_eip !131
  %411 = icmp ne i32 %410, 0, !mcsema_real_eip !131
  store i1 %411, i1* %AF, !mcsema_real_eip !131
  %412 = trunc i32 %407 to i8, !mcsema_real_eip !131
  %413 = call i8 @llvm.ctpop.i8(i8 %412), !mcsema_real_eip !131
  %414 = trunc i8 %413 to i1, !mcsema_real_eip !131
  %415 = xor i1 %414, true, !mcsema_real_eip !131
  store i1 %415, i1* %PF, !mcsema_real_eip !131
  %416 = icmp eq i32 %407, 0, !mcsema_real_eip !131
  store i1 %416, i1* %ZF, !mcsema_real_eip !131
  %417 = lshr i32 %407, 31, !mcsema_real_eip !131
  %418 = trunc i32 %417 to i1, !mcsema_real_eip !131
  store i1 %418, i1* %SF, !mcsema_real_eip !131
  %419 = icmp ult i32 %EDX_val.191, 32, !mcsema_real_eip !131
  store i1 %419, i1* %CF, !mcsema_real_eip !131
  %420 = xor i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %421 = and i32 %420, %408, !mcsema_real_eip !131
  %422 = lshr i32 %421, 31, !mcsema_real_eip !131
  %423 = trunc i32 %422 to i1, !mcsema_real_eip !131
  store i1 %423, i1* %OF, !mcsema_real_eip !131
  br i1 %416, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !132

block_0x23f:                                      ; preds = %403
  br i1 %_cond1_n_cond2_cond3_497, label %424, label %425

; <label>:424:                                    ; preds = %block_0x23f
  %_address_in_parent_stack_bt_542 = bitcast i8* %_pot_address_in_parent_stack_490 to i32*
  br label %425

; <label>:425:                                    ; preds = %block_0x23f, %424
  %426 = phi i32* [ %363, %block_0x23f ], [ %_address_in_parent_stack_bt_542, %424 ]
  %_new_load_543 = load i32, i32* %426
  %427 = sub i32 %_new_load_543, 2, !mcsema_real_eip !133
  %428 = xor i32 %427, %_new_load_543, !mcsema_real_eip !133
  %429 = xor i32 %428, 2, !mcsema_real_eip !133
  %430 = and i32 %429, 16, !mcsema_real_eip !133
  %431 = icmp ne i32 %430, 0, !mcsema_real_eip !133
  store i1 %431, i1* %AF, !mcsema_real_eip !133
  %432 = trunc i32 %427 to i8, !mcsema_real_eip !133
  %433 = call i8 @llvm.ctpop.i8(i8 %432), !mcsema_real_eip !133
  %434 = trunc i8 %433 to i1, !mcsema_real_eip !133
  %435 = xor i1 %434, true, !mcsema_real_eip !133
  store i1 %435, i1* %PF, !mcsema_real_eip !133
  %436 = icmp eq i32 %427, 0, !mcsema_real_eip !133
  store i1 %436, i1* %ZF, !mcsema_real_eip !133
  %437 = lshr i32 %427, 31, !mcsema_real_eip !133
  %438 = trunc i32 %437 to i1, !mcsema_real_eip !133
  store i1 %438, i1* %SF, !mcsema_real_eip !133
  %439 = icmp ult i32 %_new_load_543, 2, !mcsema_real_eip !133
  store i1 %439, i1* %CF, !mcsema_real_eip !133
  %440 = xor i32 %_new_load_543, 2, !mcsema_real_eip !133
  %441 = and i32 %440, %428, !mcsema_real_eip !133
  %442 = lshr i32 %441, 31, !mcsema_real_eip !133
  %443 = trunc i32 %442 to i1, !mcsema_real_eip !133
  store i1 %443, i1* %OF, !mcsema_real_eip !133
  %444 = icmp eq i1 %436, false, !mcsema_real_eip !134
  br i1 %444, label %block_0x283, label %block_0x249, !mcsema_real_eip !134

block_0x249:                                      ; preds = %425
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !135
  br i1 %_cond1_n_cond2_cond3_497, label %445, label %446

; <label>:445:                                    ; preds = %block_0x249
  %_address_in_parent_stack_bt_557 = bitcast i8* %_pot_address_in_parent_stack_490 to i32*
  br label %446

; <label>:446:                                    ; preds = %block_0x249, %445
  %447 = phi i32* [ %363, %block_0x249 ], [ %_address_in_parent_stack_bt_557, %445 ]
  %_new_load_558 = load i32, i32* %447
  %448 = sext i32 %_new_load_558 to i64, !mcsema_real_eip !136
  store i64 %448, i64* %XCX, !mcsema_real_eip !136
  %449 = sext i64 %448 to i128, !mcsema_real_eip !137
  %450 = mul i128 %449, 11, !mcsema_real_eip !137
  %451 = trunc i128 %450 to i64, !mcsema_real_eip !137
  %452 = sext i64 %451 to i128, !mcsema_real_eip !137
  %453 = icmp ne i128 %452, %450, !mcsema_real_eip !137
  %454 = icmp slt i64 %451, 0, !mcsema_real_eip !137
  store i1 %454, i1* %SF, !mcsema_real_eip !137
  store i1 %453, i1* %OF, !mcsema_real_eip !137
  store i1 %453, i1* %CF, !mcsema_real_eip !137
  store i64 %451, i64* %XCX, !mcsema_real_eip !137
  %455 = add i64 %451, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %456 = xor i64 %455, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %457 = xor i64 %456, %451, !mcsema_real_eip !138
  %458 = and i64 %457, 16, !mcsema_real_eip !138
  %459 = icmp ne i64 %458, 0, !mcsema_real_eip !138
  store i1 %459, i1* %AF, !mcsema_real_eip !138
  %460 = lshr i64 %455, 63, !mcsema_real_eip !138
  %461 = trunc i64 %460 to i1, !mcsema_real_eip !138
  store i1 %461, i1* %SF, !mcsema_real_eip !138
  %462 = icmp eq i64 %455, 0, !mcsema_real_eip !138
  store i1 %462, i1* %ZF, !mcsema_real_eip !138
  %463 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %451, !mcsema_real_eip !138
  %464 = xor i64 %463, -1, !mcsema_real_eip !138
  %465 = and i64 %464, %456, !mcsema_real_eip !138
  %466 = lshr i64 %465, 63, !mcsema_real_eip !138
  %467 = and i64 %466, 1, !mcsema_real_eip !138
  %468 = trunc i64 %467 to i1, !mcsema_real_eip !138
  store i1 %468, i1* %OF, !mcsema_real_eip !138
  %469 = trunc i64 %455 to i8, !mcsema_real_eip !138
  %470 = call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !138
  %471 = trunc i8 %470 to i1, !mcsema_real_eip !138
  %472 = xor i1 %471, true, !mcsema_real_eip !138
  store i1 %472, i1* %PF, !mcsema_real_eip !138
  %473 = icmp ult i64 %455, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  store i1 %473, i1* %CF, !mcsema_real_eip !138
  store i64 %455, i64* %XAX, !mcsema_real_eip !138
  br i1 %_cond1_n_cond2_cond3_512, label %474, label %475

; <label>:474:                                    ; preds = %446
  %_address_in_parent_stack_bt_572 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  br label %475

; <label>:475:                                    ; preds = %446, %474
  %476 = phi i32* [ %394, %446 ], [ %_address_in_parent_stack_bt_572, %474 ]
  %_new_load_573 = load i32, i32* %476
  %477 = sext i32 %_new_load_573 to i64, !mcsema_real_eip !139
  store i64 %477, i64* %XCX, !mcsema_real_eip !139
  %478 = add i64 %455, %477, !mcsema_real_eip !140
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !140
  %480 = inttoptr i64 %478 to i8*, !mcsema_real_eip !140
  %_offset_above_rbp_576 = sub i64 %478, %_local_end_to_int_
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ugt i8* %480, %_local_stack_end_ptr_
  %_cond2_1_579 = icmp ugt i8* %480, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %480, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond1_n_cond2_583, %_cond4_582
  br i1 %_cond1_n_cond2_cond3_584, label %481, label %482

; <label>:481:                                    ; preds = %475
  br label %482

; <label>:482:                                    ; preds = %475, %481
  %483 = phi i8* [ %480, %475 ], [ %_pot_address_in_parent_stack_577, %481 ]
  %_new_load_586 = load i8, i8* %483
  %484 = sext i8 %_new_load_586 to i32, !mcsema_real_eip !140
  %485 = zext i32 %484 to i64, !mcsema_real_eip !140
  store i64 %485, i64* %XDX, !mcsema_real_eip !140
  %EDX_val.201 = load i32, i32* %EDX.160, !mcsema_real_eip !141
  %486 = sub i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %487 = xor i32 %486, %EDX_val.201, !mcsema_real_eip !141
  %488 = xor i32 %487, 124, !mcsema_real_eip !141
  %489 = and i32 %488, 16, !mcsema_real_eip !141
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !141
  store i1 %490, i1* %AF, !mcsema_real_eip !141
  %491 = trunc i32 %486 to i8, !mcsema_real_eip !141
  %492 = call i8 @llvm.ctpop.i8(i8 %491), !mcsema_real_eip !141
  %493 = trunc i8 %492 to i1, !mcsema_real_eip !141
  %494 = xor i1 %493, true, !mcsema_real_eip !141
  store i1 %494, i1* %PF, !mcsema_real_eip !141
  %495 = icmp eq i32 %486, 0, !mcsema_real_eip !141
  store i1 %495, i1* %ZF, !mcsema_real_eip !141
  %496 = lshr i32 %486, 31, !mcsema_real_eip !141
  %497 = trunc i32 %496 to i1, !mcsema_real_eip !141
  store i1 %497, i1* %SF, !mcsema_real_eip !141
  %498 = icmp ult i32 %EDX_val.201, 124, !mcsema_real_eip !141
  store i1 %498, i1* %CF, !mcsema_real_eip !141
  %499 = xor i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %500 = and i32 %499, %487, !mcsema_real_eip !141
  %501 = lshr i32 %500, 31, !mcsema_real_eip !141
  %502 = trunc i32 %501 to i1, !mcsema_real_eip !141
  store i1 %502, i1* %OF, !mcsema_real_eip !141
  %503 = icmp eq i1 %495, false, !mcsema_real_eip !142
  br i1 %503, label %block_0x283, label %block_0x26f, !mcsema_real_eip !142

block_0x26f:                                      ; preds = %482
  br i1 %_cond1_n_cond2_cond3_512, label %504, label %505

; <label>:504:                                    ; preds = %block_0x26f
  %_address_in_parent_stack_bt_600 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  br label %505

; <label>:505:                                    ; preds = %block_0x26f, %504
  %506 = phi i32* [ %394, %block_0x26f ], [ %_address_in_parent_stack_bt_600, %504 ]
  %_new_load_601 = load i32, i32* %506
  store i1 false, i1* %AF, !mcsema_real_eip !143
  %507 = trunc i32 %_new_load_601 to i8, !mcsema_real_eip !143
  %508 = call i8 @llvm.ctpop.i8(i8 %507), !mcsema_real_eip !143
  %509 = trunc i8 %508 to i1, !mcsema_real_eip !143
  %510 = xor i1 %509, true, !mcsema_real_eip !143
  store i1 %510, i1* %PF, !mcsema_real_eip !143
  %511 = icmp eq i32 %_new_load_601, 0, !mcsema_real_eip !143
  store i1 %511, i1* %ZF, !mcsema_real_eip !143
  %512 = lshr i32 %_new_load_601, 31, !mcsema_real_eip !143
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !143
  store i1 %513, i1* %SF, !mcsema_real_eip !143
  store i1 false, i1* %CF, !mcsema_real_eip !143
  store i1 false, i1* %OF, !mcsema_real_eip !143
  %514 = icmp eq i1 %513, false, !mcsema_real_eip !144
  %515 = icmp eq i1 %514, false, !mcsema_real_eip !144
  %516 = or i1 %511, %515, !mcsema_real_eip !144
  br i1 %516, label %block_0x283, label %block_0x279, !mcsema_real_eip !144

block_0x279:                                      ; preds = %505
  br i1 %_cond1_n_cond2_cond3_512, label %517, label %518

; <label>:517:                                    ; preds = %block_0x279
  %_address_in_parent_stack_bt_615 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  br label %518

; <label>:518:                                    ; preds = %block_0x279, %517
  %519 = phi i32* [ %394, %block_0x279 ], [ %_address_in_parent_stack_bt_615, %517 ]
  %_new_load_616 = load i32, i32* %519
  %520 = sub i32 %_new_load_616, 11, !mcsema_real_eip !145
  %521 = xor i32 %520, %_new_load_616, !mcsema_real_eip !145
  %522 = xor i32 %521, 11, !mcsema_real_eip !145
  %523 = and i32 %522, 16, !mcsema_real_eip !145
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !145
  store i1 %524, i1* %AF, !mcsema_real_eip !145
  %525 = trunc i32 %520 to i8, !mcsema_real_eip !145
  %526 = call i8 @llvm.ctpop.i8(i8 %525), !mcsema_real_eip !145
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !145
  %528 = xor i1 %527, true, !mcsema_real_eip !145
  store i1 %528, i1* %PF, !mcsema_real_eip !145
  %529 = icmp eq i32 %520, 0, !mcsema_real_eip !145
  store i1 %529, i1* %ZF, !mcsema_real_eip !145
  %530 = lshr i32 %520, 31, !mcsema_real_eip !145
  %531 = trunc i32 %530 to i1, !mcsema_real_eip !145
  store i1 %531, i1* %SF, !mcsema_real_eip !145
  %532 = icmp ult i32 %_new_load_616, 11, !mcsema_real_eip !145
  store i1 %532, i1* %CF, !mcsema_real_eip !145
  %533 = xor i32 %_new_load_616, 11, !mcsema_real_eip !145
  %534 = and i32 %533, %521, !mcsema_real_eip !145
  %535 = lshr i32 %534, 31, !mcsema_real_eip !145
  %536 = trunc i32 %535 to i1, !mcsema_real_eip !145
  store i1 %536, i1* %OF, !mcsema_real_eip !145
  %537 = icmp eq i1 %531, %536, !mcsema_real_eip !146
  %538 = icmp eq i1 %537, false, !mcsema_real_eip !146
  br i1 %538, label %block_0x28f, label %block_0x283, !mcsema_real_eip !146

block_0x283:                                      ; preds = %518, %505, %482, %425
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -28
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %539 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !147
  %540 = inttoptr i64 %539 to i32*, !mcsema_real_eip !147
  %_ptr_bt_619 = bitcast i32* %540 to i8*
  %_offset_above_rbp_620 = sub i64 %539, %_local_end_to_int_
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_ptr_bt_619, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_ptr_bt_619, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_ptr_bt_619, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond1_n_cond2_627, %_cond4_626
  br i1 %_cond1_n_cond2_cond3_628, label %541, label %542

; <label>:541:                                    ; preds = %block_0x283
  %_address_in_parent_stack_bt_630 = bitcast i8* %_pot_address_in_parent_stack_621 to i32*
  br label %542

; <label>:542:                                    ; preds = %block_0x283, %541
  %543 = phi i32* [ %540, %block_0x283 ], [ %_address_in_parent_stack_bt_630, %541 ]
  %_new_load_631 = load i32, i32* %543
  %544 = zext i32 %_new_load_631 to i64, !mcsema_real_eip !147
  store i64 %544, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.207 = load i32, i32* %EAX.55, !mcsema_real_eip !148
  store i32 %EAX_val.207, i32* %394, !mcsema_real_eip !148
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -32
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %545 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !149
  %546 = inttoptr i64 %545 to i32*, !mcsema_real_eip !149
  %_ptr_bt_634 = bitcast i32* %546 to i8*
  %_offset_above_rbp_635 = sub i64 %545, %_local_end_to_int_
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_ptr_bt_634, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_ptr_bt_634, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_ptr_bt_634, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond1_n_cond2_642, %_cond4_641
  br i1 %_cond1_n_cond2_cond3_643, label %547, label %548

; <label>:547:                                    ; preds = %542
  %_address_in_parent_stack_bt_645 = bitcast i8* %_pot_address_in_parent_stack_636 to i32*
  br label %548

; <label>:548:                                    ; preds = %542, %547
  %549 = phi i32* [ %546, %542 ], [ %_address_in_parent_stack_bt_645, %547 ]
  %_new_load_646 = load i32, i32* %549
  %550 = zext i32 %_new_load_646 to i64, !mcsema_real_eip !149
  store i64 %550, i64* %XAX, !mcsema_real_eip !149
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -24
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %EAX_val.211 = load i32, i32* %EAX.55, !mcsema_real_eip !150
  %551 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !150
  %552 = inttoptr i64 %551 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.211, i32* %552, !mcsema_real_eip !150
  br label %block_0x28f, !mcsema_real_eip !151

block_0x28f:                                      ; preds = %548, %518, %403
  %_load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -28
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %553 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !151
  %554 = inttoptr i64 %553 to i32*, !mcsema_real_eip !151
  %_ptr_bt_649 = bitcast i32* %554 to i8*
  %_offset_above_rbp_650 = sub i64 %553, %_local_end_to_int_
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_ptr_bt_649, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_ptr_bt_649, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_ptr_bt_649, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond1_n_cond2_657, %_cond4_656
  br i1 %_cond1_n_cond2_cond3_658, label %555, label %556

; <label>:555:                                    ; preds = %block_0x28f
  %_address_in_parent_stack_bt_660 = bitcast i8* %_pot_address_in_parent_stack_651 to i32*
  br label %556

; <label>:556:                                    ; preds = %block_0x28f, %555
  %557 = phi i32* [ %554, %block_0x28f ], [ %_address_in_parent_stack_bt_660, %555 ]
  %_new_load_661 = load i32, i32* %557
  %558 = zext i32 %_new_load_661 to i64, !mcsema_real_eip !151
  store i64 %558, i64* %XAX, !mcsema_real_eip !151
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -20
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %EAX_val.215 = load i32, i32* %EAX.55, !mcsema_real_eip !152
  %559 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !152
  %560 = inttoptr i64 %559 to i32*, !mcsema_real_eip !152
  %_ptr_bt_664 = bitcast i32* %560 to i8*
  %_offset_above_rbp_665 = sub i64 %559, %_local_end_to_int_
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_ptr_bt_664, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_ptr_bt_664, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_ptr_bt_664, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond1_n_cond2_672, %_cond4_671
  br i1 %_cond1_n_cond2_cond3_673, label %561, label %562

; <label>:561:                                    ; preds = %556
  %_address_in_parent_stack_bt_675 = bitcast i8* %_pot_address_in_parent_stack_666 to i32*
  br label %562

; <label>:562:                                    ; preds = %556, %561
  %563 = phi i32* [ %560, %556 ], [ %_address_in_parent_stack_bt_675, %561 ]
  %_new_load_676 = load i32, i32* %563
  %564 = sub i32 %EAX_val.215, %_new_load_676, !mcsema_real_eip !152
  %565 = xor i32 %564, %EAX_val.215, !mcsema_real_eip !152
  %566 = xor i32 %565, %_new_load_676, !mcsema_real_eip !152
  %567 = and i32 %566, 16, !mcsema_real_eip !152
  %568 = icmp ne i32 %567, 0, !mcsema_real_eip !152
  store i1 %568, i1* %AF, !mcsema_real_eip !152
  %569 = trunc i32 %564 to i8, !mcsema_real_eip !152
  %570 = call i8 @llvm.ctpop.i8(i8 %569), !mcsema_real_eip !152
  %571 = trunc i8 %570 to i1, !mcsema_real_eip !152
  %572 = xor i1 %571, true, !mcsema_real_eip !152
  store i1 %572, i1* %PF, !mcsema_real_eip !152
  %573 = icmp eq i32 %564, 0, !mcsema_real_eip !152
  store i1 %573, i1* %ZF, !mcsema_real_eip !152
  %574 = lshr i32 %564, 31, !mcsema_real_eip !152
  %575 = trunc i32 %574 to i1, !mcsema_real_eip !152
  store i1 %575, i1* %SF, !mcsema_real_eip !152
  %576 = icmp ult i32 %EAX_val.215, %_new_load_676, !mcsema_real_eip !152
  store i1 %576, i1* %CF, !mcsema_real_eip !152
  %577 = xor i32 %EAX_val.215, %_new_load_676, !mcsema_real_eip !152
  %578 = and i32 %577, %565, !mcsema_real_eip !152
  %579 = lshr i32 %578, 31, !mcsema_real_eip !152
  %580 = trunc i32 %579 to i1, !mcsema_real_eip !152
  store i1 %580, i1* %OF, !mcsema_real_eip !152
  %581 = icmp eq i1 %573, false, !mcsema_real_eip !153
  br i1 %581, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !153

block_0x29b:                                      ; preds = %562
  %_new_gep_180 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -32
  %_allin_new_bt_181 = bitcast i8* %_new_gep_180 to i64*
  %582 = ptrtoint i64* %_allin_new_bt_181 to i64, !mcsema_real_eip !154
  %583 = inttoptr i64 %582 to i32*, !mcsema_real_eip !154
  %_ptr_bt_679 = bitcast i32* %583 to i8*
  %_offset_above_rbp_680 = sub i64 %582, %_local_end_to_int_
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_ptr_bt_679, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_ptr_bt_679, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_ptr_bt_679, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond1_n_cond2_687, %_cond4_686
  br i1 %_cond1_n_cond2_cond3_688, label %584, label %585

; <label>:584:                                    ; preds = %block_0x29b
  %_address_in_parent_stack_bt_690 = bitcast i8* %_pot_address_in_parent_stack_681 to i32*
  br label %585

; <label>:585:                                    ; preds = %block_0x29b, %584
  %586 = phi i32* [ %583, %block_0x29b ], [ %_address_in_parent_stack_bt_690, %584 ]
  %_new_load_691 = load i32, i32* %586
  %587 = zext i32 %_new_load_691 to i64, !mcsema_real_eip !154
  store i64 %587, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -24
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %EAX_val.219 = load i32, i32* %EAX.55, !mcsema_real_eip !155
  %588 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !155
  %589 = inttoptr i64 %588 to i32*, !mcsema_real_eip !155
  %_ptr_bt_694 = bitcast i32* %589 to i8*
  %_offset_above_rbp_695 = sub i64 %588, %_local_end_to_int_
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_ptr_bt_694, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_ptr_bt_694, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_ptr_bt_694, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond1_n_cond2_702, %_cond4_701
  br i1 %_cond1_n_cond2_cond3_703, label %590, label %591

; <label>:590:                                    ; preds = %585
  %_address_in_parent_stack_bt_705 = bitcast i8* %_pot_address_in_parent_stack_696 to i32*
  br label %591

; <label>:591:                                    ; preds = %585, %590
  %592 = phi i32* [ %589, %585 ], [ %_address_in_parent_stack_bt_705, %590 ]
  %_new_load_706 = load i32, i32* %592
  %593 = sub i32 %EAX_val.219, %_new_load_706, !mcsema_real_eip !155
  %594 = xor i32 %593, %EAX_val.219, !mcsema_real_eip !155
  %595 = xor i32 %594, %_new_load_706, !mcsema_real_eip !155
  %596 = and i32 %595, 16, !mcsema_real_eip !155
  %597 = icmp ne i32 %596, 0, !mcsema_real_eip !155
  store i1 %597, i1* %AF, !mcsema_real_eip !155
  %598 = trunc i32 %593 to i8, !mcsema_real_eip !155
  %599 = call i8 @llvm.ctpop.i8(i8 %598), !mcsema_real_eip !155
  %600 = trunc i8 %599 to i1, !mcsema_real_eip !155
  %601 = xor i1 %600, true, !mcsema_real_eip !155
  store i1 %601, i1* %PF, !mcsema_real_eip !155
  %602 = icmp eq i32 %593, 0, !mcsema_real_eip !155
  store i1 %602, i1* %ZF, !mcsema_real_eip !155
  %603 = lshr i32 %593, 31, !mcsema_real_eip !155
  %604 = trunc i32 %603 to i1, !mcsema_real_eip !155
  store i1 %604, i1* %SF, !mcsema_real_eip !155
  %605 = icmp ult i32 %EAX_val.219, %_new_load_706, !mcsema_real_eip !155
  store i1 %605, i1* %CF, !mcsema_real_eip !155
  %606 = xor i32 %EAX_val.219, %_new_load_706, !mcsema_real_eip !155
  %607 = and i32 %606, %594, !mcsema_real_eip !155
  %608 = lshr i32 %607, 31, !mcsema_real_eip !155
  %609 = trunc i32 %608 to i1, !mcsema_real_eip !155
  store i1 %609, i1* %OF, !mcsema_real_eip !155
  %610 = icmp eq i1 %602, false, !mcsema_real_eip !156
  br i1 %610, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !156

block_0x2a7:                                      ; preds = %591
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !157
  %AL.220 = bitcast i64* %XAX to i8*, !mcsema_real_eip !158
  store i8 0, i8* %AL.220, !mcsema_real_eip !158
  %RSI_val.222 = load i64, i64* %XSI, !mcsema_real_eip !159
  %_load_rsp_ptr_185 = load i8*, i8** %_RSP_ptr_
  %RSP_val.223 = load i64, i64* %XSP, !mcsema_real_eip !159
  %_new_gep_186 = getelementptr i8, i8* %_load_rsp_ptr_185, i64 -8
  %611 = sub i64 %RSP_val.223, 8, !mcsema_real_eip !159
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_187, !mcsema_real_eip !159
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_
  store i64 %611, i64* %XSP, !mcsema_real_eip !159
  %612 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.222)
  %_rsp_fix_255 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_256 = getelementptr i8, i8* %_rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_
  store i64 %612, i64* %XAX, !mcsema_real_eip !159
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -4
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %613 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !160
  %614 = inttoptr i64 %613 to i32*, !mcsema_real_eip !160
  store i32 2, i32* %614, !mcsema_real_eip !160
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -104
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %EAX_val.227 = load i32, i32* %EAX.55, !mcsema_real_eip !161
  %615 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !161
  %616 = inttoptr i64 %615 to i32*, !mcsema_real_eip !161
  store i32 %EAX_val.227, i32* %616, !mcsema_real_eip !161
  br label %block_0x312, !mcsema_real_eip !162

block_0x2c7:                                      ; preds = %591, %562
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !163
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -24
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %617 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !164
  %618 = inttoptr i64 %617 to i32*, !mcsema_real_eip !164
  %_ptr_bt_709 = bitcast i32* %618 to i8*
  %_offset_above_rbp_710 = sub i64 %617, %_local_end_to_int_
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  br i1 %_cond1_n_cond2_cond3_718, label %619, label %620

; <label>:619:                                    ; preds = %block_0x2c7
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  br label %620

; <label>:620:                                    ; preds = %block_0x2c7, %619
  %621 = phi i32* [ %618, %block_0x2c7 ], [ %_address_in_parent_stack_bt_720, %619 ]
  %_new_load_721 = load i32, i32* %621
  %622 = sext i32 %_new_load_721 to i64, !mcsema_real_eip !164
  store i64 %622, i64* %XCX, !mcsema_real_eip !164
  %623 = sext i64 %622 to i128, !mcsema_real_eip !165
  %624 = mul i128 %623, 11, !mcsema_real_eip !165
  %625 = trunc i128 %624 to i64, !mcsema_real_eip !165
  %626 = sext i64 %625 to i128, !mcsema_real_eip !165
  %627 = icmp ne i128 %626, %624, !mcsema_real_eip !165
  %628 = icmp slt i64 %625, 0, !mcsema_real_eip !165
  store i1 %628, i1* %SF, !mcsema_real_eip !165
  store i1 %627, i1* %OF, !mcsema_real_eip !165
  store i1 %627, i1* %CF, !mcsema_real_eip !165
  store i64 %625, i64* %XCX, !mcsema_real_eip !165
  %629 = add i64 %625, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %630 = xor i64 %629, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %631 = xor i64 %630, %625, !mcsema_real_eip !166
  %632 = and i64 %631, 16, !mcsema_real_eip !166
  %633 = icmp ne i64 %632, 0, !mcsema_real_eip !166
  store i1 %633, i1* %AF, !mcsema_real_eip !166
  %634 = lshr i64 %629, 63, !mcsema_real_eip !166
  %635 = trunc i64 %634 to i1, !mcsema_real_eip !166
  store i1 %635, i1* %SF, !mcsema_real_eip !166
  %636 = icmp eq i64 %629, 0, !mcsema_real_eip !166
  store i1 %636, i1* %ZF, !mcsema_real_eip !166
  %637 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %625, !mcsema_real_eip !166
  %638 = xor i64 %637, -1, !mcsema_real_eip !166
  %639 = and i64 %638, %630, !mcsema_real_eip !166
  %640 = lshr i64 %639, 63, !mcsema_real_eip !166
  %641 = and i64 %640, 1, !mcsema_real_eip !166
  %642 = trunc i64 %641 to i1, !mcsema_real_eip !166
  store i1 %642, i1* %OF, !mcsema_real_eip !166
  %643 = trunc i64 %629 to i8, !mcsema_real_eip !166
  %644 = call i8 @llvm.ctpop.i8(i8 %643), !mcsema_real_eip !166
  %645 = trunc i8 %644 to i1, !mcsema_real_eip !166
  %646 = xor i1 %645, true, !mcsema_real_eip !166
  store i1 %646, i1* %PF, !mcsema_real_eip !166
  %647 = icmp ult i64 %629, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  store i1 %647, i1* %CF, !mcsema_real_eip !166
  store i64 %629, i64* %XAX, !mcsema_real_eip !166
  br i1 %_cond1_n_cond2_cond3_673, label %648, label %649

; <label>:648:                                    ; preds = %620
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_666 to i32*
  br label %649

; <label>:649:                                    ; preds = %620, %648
  %650 = phi i32* [ %560, %620 ], [ %_address_in_parent_stack_bt_735, %648 ]
  %_new_load_736 = load i32, i32* %650
  %651 = sext i32 %_new_load_736 to i64, !mcsema_real_eip !167
  store i64 %651, i64* %XCX, !mcsema_real_eip !167
  %652 = add i64 %629, %651, !mcsema_real_eip !168
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !168
  %654 = inttoptr i64 %652 to i8*, !mcsema_real_eip !168
  store i8 88, i8* %654, !mcsema_real_eip !168
  %_load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !169
  %_new_gep_201 = getelementptr i8, i8* %_load_rsp_ptr_200, i64 -8
  %655 = sub i64 %RSP_val.235, 8, !mcsema_real_eip !169
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_202, !mcsema_real_eip !169
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %655, i64* %XSP, !mcsema_real_eip !169
  %_load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_201, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_257)
  %_rsp_fix_259 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_260 = getelementptr i8, i8* %_rsp_fix_259, i64 8
  store i8* %_gep_fix_260, i8** %_RSP_ptr_
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -36
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %656 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !170
  %657 = inttoptr i64 %656 to i32*, !mcsema_real_eip !170
  %_ptr_bt_739 = bitcast i32* %657 to i8*
  %_offset_above_rbp_740 = sub i64 %656, %_local_end_to_int_
  %_pot_address_in_parent_stack_741 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_cond1_742 = icmp ugt i8* %_ptr_bt_739, %_local_stack_end_ptr_
  %_cond2_1_743 = icmp ugt i8* %_ptr_bt_739, %_parent_stack_end_ptr_
  %_cond2_2_744 = icmp ult i8* %_ptr_bt_739, %_parent_stack_start_ptr_
  %_cond2_745 = or i1 %_cond2_1_743, %_cond2_2_744
  %_cond4_746 = icmp ule i8* %_pot_address_in_parent_stack_741, %_parent_stack_end_ptr_
  %_cond1_n_cond2_747 = and i1 %_cond1_742, %_cond2_745
  %_cond1_n_cond2_cond3_748 = and i1 %_cond1_n_cond2_747, %_cond4_746
  br i1 %_cond1_n_cond2_cond3_748, label %658, label %659

; <label>:658:                                    ; preds = %649
  %_address_in_parent_stack_bt_750 = bitcast i8* %_pot_address_in_parent_stack_741 to i32*
  br label %659

; <label>:659:                                    ; preds = %649, %658
  %660 = phi i32* [ %657, %649 ], [ %_address_in_parent_stack_bt_750, %658 ]
  %_new_load_751 = load i32, i32* %660
  %661 = zext i32 %_new_load_751 to i64, !mcsema_real_eip !170
  store i64 %661, i64* %XDX, !mcsema_real_eip !170
  %EDX_val.238 = load i32, i32* %EDX.160, !mcsema_real_eip !171
  %662 = add i32 1, %EDX_val.238, !mcsema_real_eip !171
  %663 = xor i32 %662, %EDX_val.238, !mcsema_real_eip !171
  %664 = xor i32 %663, 1, !mcsema_real_eip !171
  %665 = and i32 %664, 16, !mcsema_real_eip !171
  %666 = icmp ne i32 %665, 0, !mcsema_real_eip !171
  store i1 %666, i1* %AF, !mcsema_real_eip !171
  %667 = lshr i32 %662, 31, !mcsema_real_eip !171
  %668 = trunc i32 %667 to i1, !mcsema_real_eip !171
  store i1 %668, i1* %SF, !mcsema_real_eip !171
  %669 = icmp eq i32 %662, 0, !mcsema_real_eip !171
  store i1 %669, i1* %ZF, !mcsema_real_eip !171
  %670 = xor i32 %EDX_val.238, 1, !mcsema_real_eip !171
  %671 = xor i32 %670, -1, !mcsema_real_eip !171
  %672 = and i32 %671, %663, !mcsema_real_eip !171
  %673 = lshr i32 %672, 31, !mcsema_real_eip !171
  %674 = and i32 %673, 1, !mcsema_real_eip !171
  %675 = trunc i32 %674 to i1, !mcsema_real_eip !171
  store i1 %675, i1* %OF, !mcsema_real_eip !171
  %676 = trunc i32 %662 to i8, !mcsema_real_eip !171
  %677 = call i8 @llvm.ctpop.i8(i8 %676), !mcsema_real_eip !171
  %678 = trunc i8 %677 to i1, !mcsema_real_eip !171
  %679 = xor i1 %678, true, !mcsema_real_eip !171
  store i1 %679, i1* %PF, !mcsema_real_eip !171
  %680 = icmp ult i32 %662, %EDX_val.238, !mcsema_real_eip !171
  store i1 %680, i1* %CF, !mcsema_real_eip !171
  %681 = zext i32 %662 to i64, !mcsema_real_eip !171
  store i64 %681, i64* %XDX, !mcsema_real_eip !171
  %EDX_val.241 = load i32, i32* %EDX.160, !mcsema_real_eip !172
  store i32 %EDX_val.241, i32* %657, !mcsema_real_eip !172
  br label %block_0x114, !mcsema_real_eip !173

block_0x2f7:                                      ; preds = %72
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !174
  %AL.242 = bitcast i64* %XAX to i8*, !mcsema_real_eip !175
  store i8 0, i8* %AL.242, !mcsema_real_eip !175
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !176
  %_load_rsp_ptr_209 = load i8*, i8** %_RSP_ptr_
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !176
  %_new_gep_210 = getelementptr i8, i8* %_load_rsp_ptr_209, i64 -8
  %682 = sub i64 %RSP_val.245, 8, !mcsema_real_eip !176
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_211, !mcsema_real_eip !176
  store volatile i8* %_new_gep_210, i8** %_RSP_ptr_
  store i64 %682, i64* %XSP, !mcsema_real_eip !176
  %683 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.244)
  %_rsp_fix_261 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_262 = getelementptr i8, i8* %_rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_
  store i64 %683, i64* %XAX, !mcsema_real_eip !176
  %_load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_212, i64 -4
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %684 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !177
  %685 = inttoptr i64 %684 to i32*, !mcsema_real_eip !177
  store i32 1, i32* %685, !mcsema_real_eip !177
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -108
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %EAX_val.249 = load i32, i32* %EAX.55, !mcsema_real_eip !178
  %686 = ptrtoint i64* %_allin_new_bt_217 to i64, !mcsema_real_eip !178
  %687 = inttoptr i64 %686 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.249, i32* %687, !mcsema_real_eip !178
  br label %block_0x312, !mcsema_real_eip !179

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %_load_rbp_ptr_218 = load i8*, i8** %_RBP_ptr_
  %_new_gep_219 = getelementptr i8, i8* %_load_rbp_ptr_218, i64 -4
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  %688 = ptrtoint i64* %_allin_new_bt_220 to i64, !mcsema_real_eip !179
  %689 = inttoptr i64 %688 to i32*, !mcsema_real_eip !179
  %_ptr_bt_754 = bitcast i32* %689 to i8*
  %_offset_above_rbp_755 = sub i64 %688, %_local_end_to_int_
  %_pot_address_in_parent_stack_756 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_cond1_757 = icmp ugt i8* %_ptr_bt_754, %_local_stack_end_ptr_
  %_cond2_1_758 = icmp ugt i8* %_ptr_bt_754, %_parent_stack_end_ptr_
  %_cond2_2_759 = icmp ult i8* %_ptr_bt_754, %_parent_stack_start_ptr_
  %_cond2_760 = or i1 %_cond2_1_758, %_cond2_2_759
  %_cond4_761 = icmp ule i8* %_pot_address_in_parent_stack_756, %_parent_stack_end_ptr_
  %_cond1_n_cond2_762 = and i1 %_cond1_757, %_cond2_760
  %_cond1_n_cond2_cond3_763 = and i1 %_cond1_n_cond2_762, %_cond4_761
  br i1 %_cond1_n_cond2_cond3_763, label %690, label %691

; <label>:690:                                    ; preds = %block_0x312
  %_address_in_parent_stack_bt_765 = bitcast i8* %_pot_address_in_parent_stack_756 to i32*
  br label %691

; <label>:691:                                    ; preds = %block_0x312, %690
  %692 = phi i32* [ %689, %block_0x312 ], [ %_address_in_parent_stack_bt_765, %690 ]
  %_new_load_766 = load i32, i32* %692
  %693 = zext i32 %_new_load_766 to i64, !mcsema_real_eip !179
  store i64 %693, i64* %XAX, !mcsema_real_eip !179
  %_load_rsp_ptr_221 = load i8*, i8** %_RSP_ptr_
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !180
  %_new_gep_222 = getelementptr i8, i8* %_load_rsp_ptr_221, i64 112
  %694 = add i64 112, %RSP_val.251, !mcsema_real_eip !180
  %_trans_p2i_223 = ptrtoint i8* %_new_gep_222 to i64
  %_trans_p2i_224 = ptrtoint i8* %_load_rsp_ptr_221 to i64
  %_trans_xor_225 = xor i64 %_trans_p2i_223, %_trans_p2i_224
  %695 = xor i64 %_trans_xor_225, 112, !mcsema_real_eip !180
  %696 = and i64 %695, 16, !mcsema_real_eip !180
  %697 = icmp ne i64 %696, 0, !mcsema_real_eip !180
  store i1 %697, i1* %AF, !mcsema_real_eip !180
  %698 = lshr i64 %694, 63, !mcsema_real_eip !180
  %699 = trunc i64 %698 to i1, !mcsema_real_eip !180
  store i1 %699, i1* %SF, !mcsema_real_eip !180
  %_trans_icmp_eq_227 = icmp eq i64 %_trans_p2i_223, 0
  store i1 %_trans_icmp_eq_227, i1* %ZF, !mcsema_real_eip !180
  %_trans_xor_229 = xor i64 %_trans_p2i_224, 112
  %700 = xor i64 %_trans_xor_229, -1, !mcsema_real_eip !180
  %701 = and i64 %700, %_trans_xor_225, !mcsema_real_eip !180
  %702 = lshr i64 %701, 63, !mcsema_real_eip !180
  %703 = and i64 %702, 1, !mcsema_real_eip !180
  %704 = trunc i64 %703 to i1, !mcsema_real_eip !180
  store i1 %704, i1* %OF, !mcsema_real_eip !180
  %_trans_trunc_234 = trunc i64 %_trans_p2i_223 to i8
  %705 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_234), !mcsema_real_eip !180
  %706 = trunc i8 %705 to i1, !mcsema_real_eip !180
  %707 = xor i1 %706, true, !mcsema_real_eip !180
  store i1 %707, i1* %PF, !mcsema_real_eip !180
  %_trans_icmp_ne_236 = icmp ne i64 %_trans_p2i_223, %RSP_val.251
  store i1 %_trans_icmp_ne_236, i1* %CF, !mcsema_real_eip !180
  store volatile i8* %_new_gep_222, i8** %_RSP_ptr_
  store i64 %694, i64* %XSP, !mcsema_real_eip !180
  %_allin_new_bt_238 = bitcast i8* %_new_gep_222 to i64*
  %_ptr_to_int_767 = ptrtoint i64* %_allin_new_bt_238 to i64
  %_offset_above_rbp_770 = sub i64 %_ptr_to_int_767, %_local_end_to_int_
  %_pot_address_in_parent_stack_771 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_770
  %_cond1_772 = icmp ugt i8* %_new_gep_222, %_local_stack_end_ptr_
  %_cond2_1_773 = icmp ugt i8* %_new_gep_222, %_parent_stack_end_ptr_
  %_cond2_2_774 = icmp ult i8* %_new_gep_222, %_parent_stack_start_ptr_
  %_cond2_775 = or i1 %_cond2_1_773, %_cond2_2_774
  %_cond4_776 = icmp ule i8* %_pot_address_in_parent_stack_771, %_parent_stack_end_ptr_
  %_cond1_n_cond2_777 = and i1 %_cond1_772, %_cond2_775
  %_cond1_n_cond2_cond3_778 = and i1 %_cond1_n_cond2_777, %_cond4_776
  br i1 %_cond1_n_cond2_cond3_778, label %708, label %709

; <label>:708:                                    ; preds = %691
  %_address_in_parent_stack_bt_780 = bitcast i8* %_pot_address_in_parent_stack_771 to i64*
  br label %709

; <label>:709:                                    ; preds = %691, %708
  %710 = phi i64* [ %_allin_new_bt_238, %691 ], [ %_address_in_parent_stack_bt_780, %708 ]
  %_new_load_781 = load i64, i64* %710
  %_new_int2ptr_ = inttoptr i64 %_new_load_781 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_781, i64* %XBP, !mcsema_real_eip !181
  %_new_gep_239 = getelementptr i8, i8* %_new_gep_222, i64 8
  %711 = add i64 %694, 8, !mcsema_real_eip !181
  store volatile i8* %_new_gep_239, i8** %_RSP_ptr_
  store i64 %711, i64* %XSP, !mcsema_real_eip !181
  %_new_gep_241 = getelementptr i8, i8* %_new_gep_239, i64 8
  %712 = add i64 %711, 8, !mcsema_real_eip !182
  %_allin_new_bt_242 = bitcast i8* %_new_gep_239 to i64*
  %_ptr_to_int_782 = ptrtoint i64* %_allin_new_bt_242 to i64
  %_offset_above_rbp_785 = sub i64 %_ptr_to_int_782, %_local_end_to_int_
  %_pot_address_in_parent_stack_786 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_785
  %_cond1_787 = icmp ugt i8* %_new_gep_239, %_local_stack_end_ptr_
  %_cond2_1_788 = icmp ugt i8* %_new_gep_239, %_parent_stack_end_ptr_
  %_cond2_2_789 = icmp ult i8* %_new_gep_239, %_parent_stack_start_ptr_
  %_cond2_790 = or i1 %_cond2_1_788, %_cond2_2_789
  %_cond4_791 = icmp ule i8* %_pot_address_in_parent_stack_786, %_parent_stack_end_ptr_
  %_cond1_n_cond2_792 = and i1 %_cond1_787, %_cond2_790
  %_cond1_n_cond2_cond3_793 = and i1 %_cond1_n_cond2_792, %_cond4_791
  br i1 %_cond1_n_cond2_cond3_793, label %713, label %714

; <label>:713:                                    ; preds = %709
  %_address_in_parent_stack_bt_795 = bitcast i8* %_pot_address_in_parent_stack_786 to i64*
  br label %714

; <label>:714:                                    ; preds = %709, %713
  %715 = phi i64* [ %_allin_new_bt_242, %709 ], [ %_address_in_parent_stack_bt_795, %713 ]
  %_new_load_796 = load i64, i64* %715
  store i64 %_new_load_796, i64* %XIP, !mcsema_real_eip !182
  store volatile i8* %_new_gep_241, i8** %_RSP_ptr_
  store i64 %712, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182

; <label>:716:                                    ; preds = %174
  store i64 %_new_load_382, i64* %XIP, !mcsema_real_eip !79
  call void @__mcsema_detach_call_value()
  %_rsp_fix_263 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_264 = getelementptr i8, i8* %_rsp_fix_263, i64 8
  store i8* %_gep_fix_264, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !79
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
!6 = !{i64 15}
!7 = !{i64 19}
!8 = !{i64 25}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 52}
!13 = !{i64 62}
!14 = !{i64 66}
!15 = !{i64 70}
!16 = !{i64 73}
!17 = !{i64 77}
!18 = !{i64 81}
!19 = !{i64 83}
!20 = !{i64 88}
!21 = !{i64 91}
!22 = !{i64 94}
!23 = !{i64 97}
!24 = !{i64 100}
!25 = !{i64 105}
!26 = !{i64 115}
!27 = !{i64 117}
!28 = !{i64 122}
!29 = !{i64 125}
!30 = !{i64 128}
!31 = !{i64 131}
!32 = !{i64 134}
!33 = !{i64 139}
!34 = !{i64 149}
!35 = !{i64 151}
!36 = !{i64 156}
!37 = !{i64 159}
!38 = !{i64 163}
!39 = !{i64 164}
!40 = !{i64 176}
!41 = !{i64 177}
!42 = !{i64 180}
!43 = !{i64 184}
!44 = !{i64 186}
!45 = !{i64 191}
!46 = !{i64 193}
!47 = !{i64 197}
!48 = !{i64 207}
!49 = !{i64 214}
!50 = !{i64 217}
!51 = !{i64 221}
!52 = !{i64 228}
!53 = !{i64 235}
!54 = !{i64 242}
!55 = !{i64 246}
!56 = !{i64 250}
!57 = !{i64 253}
!58 = !{i64 257}
!59 = !{i64 262}
!60 = !{i64 264}
!61 = !{i64 267}
!62 = !{i64 272}
!63 = !{i64 276}
!64 = !{i64 280}
!65 = !{i64 286}
!66 = !{i64 289}
!67 = !{i64 292}
!68 = !{i64 295}
!69 = !{i64 298}
!70 = !{i64 302}
!71 = !{i64 307}
!72 = !{i64 310}
!73 = !{i64 312}
!74 = !{i64 315}
!75 = !{i64 319}
!76 = !{i64 322}
!77 = !{i64 328}
!78 = !{i64 332}
!79 = !{i64 340}
!80 = !{i64 342}
!81 = !{i64 345}
!82 = !{i64 348}
!83 = !{i64 351}
!84 = !{i64 356}
!85 = !{i64 359}
!86 = !{i64 362}
!87 = !{i64 365}
!88 = !{i64 370}
!89 = !{i64 373}
!90 = !{i64 376}
!91 = !{i64 379}
!92 = !{i64 384}
!93 = !{i64 387}
!94 = !{i64 390}
!95 = !{i64 393}
!96 = !{i64 398}
!97 = !{i64 408}
!98 = !{i64 410}
!99 = !{i64 415}
!100 = !{i64 425}
!101 = !{i64 428}
!102 = !{i64 430}
!103 = !{i64 435}
!104 = !{i64 440}
!105 = !{i64 443}
!106 = !{i64 448}
!107 = !{i64 458}
!108 = !{i64 462}
!109 = !{i64 466}
!110 = !{i64 469}
!111 = !{i64 473}
!112 = !{i64 477}
!113 = !{i64 480}
!114 = !{i64 486}
!115 = !{i64 496}
!116 = !{i64 498}
!117 = !{i64 503}
!118 = !{i64 513}
!119 = !{i64 517}
!120 = !{i64 520}
!121 = !{i64 522}
!122 = !{i64 527}
!123 = !{i64 529}
!124 = !{i64 532}
!125 = !{i64 537}
!126 = !{i64 547}
!127 = !{i64 551}
!128 = !{i64 555}
!129 = !{i64 558}
!130 = !{i64 562}
!131 = !{i64 566}
!132 = !{i64 569}
!133 = !{i64 575}
!134 = !{i64 579}
!135 = !{i64 585}
!136 = !{i64 595}
!137 = !{i64 599}
!138 = !{i64 603}
!139 = !{i64 606}
!140 = !{i64 610}
!141 = !{i64 614}
!142 = !{i64 617}
!143 = !{i64 623}
!144 = !{i64 627}
!145 = !{i64 633}
!146 = !{i64 637}
!147 = !{i64 643}
!148 = !{i64 646}
!149 = !{i64 649}
!150 = !{i64 652}
!151 = !{i64 655}
!152 = !{i64 658}
!153 = !{i64 661}
!154 = !{i64 667}
!155 = !{i64 670}
!156 = !{i64 673}
!157 = !{i64 679}
!158 = !{i64 689}
!159 = !{i64 691}
!160 = !{i64 696}
!161 = !{i64 703}
!162 = !{i64 706}
!163 = !{i64 711}
!164 = !{i64 721}
!165 = !{i64 725}
!166 = !{i64 729}
!167 = !{i64 732}
!168 = !{i64 736}
!169 = !{i64 740}
!170 = !{i64 745}
!171 = !{i64 748}
!172 = !{i64 751}
!173 = !{i64 754}
!174 = !{i64 759}
!175 = !{i64 769}
!176 = !{i64 771}
!177 = !{i64 776}
!178 = !{i64 783}
!179 = !{i64 786}
!180 = !{i64 789}
!181 = !{i64 793}
!182 = !{i64 794}
