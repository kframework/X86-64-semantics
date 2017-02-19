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
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !40
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !40
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !40
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !40
  store i64 %RBP_val.51, i64* %2, !mcsema_real_eip !40
  store i64 %1, i64* %XSP, !mcsema_real_eip !40
  store i64 %1, i64* %XBP, !mcsema_real_eip !41
  %3 = sub i64 %1, 112, !mcsema_real_eip !42
  %4 = xor i64 %3, %1, !mcsema_real_eip !42
  %5 = xor i64 %4, 112, !mcsema_real_eip !42
  %6 = and i64 %5, 16, !mcsema_real_eip !42
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !42
  store i1 %7, i1* %AF, !mcsema_real_eip !42
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !42
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !42
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !42
  %11 = xor i1 %10, true, !mcsema_real_eip !42
  store i1 %11, i1* %PF, !mcsema_real_eip !42
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !42
  store i1 %12, i1* %ZF, !mcsema_real_eip !42
  %13 = lshr i64 %3, 63, !mcsema_real_eip !42
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !42
  store i1 %14, i1* %SF, !mcsema_real_eip !42
  %15 = icmp ult i64 %1, 112, !mcsema_real_eip !42
  store i1 %15, i1* %CF, !mcsema_real_eip !42
  %16 = xor i64 %1, 112, !mcsema_real_eip !42
  %17 = and i64 %16, %4, !mcsema_real_eip !42
  %18 = lshr i64 %17, 63, !mcsema_real_eip !42
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !42
  store i1 %19, i1* %OF, !mcsema_real_eip !42
  store i64 %3, i64* %XSP, !mcsema_real_eip !42
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
  %20 = zext i32 %ECX_val.60 to i64, !mcsema_real_eip !45
  store i64 %20, i64* %XDX, !mcsema_real_eip !45
  %21 = add i64 %1, -64, !mcsema_real_eip !46
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !46
  store i64 %21, i64* %R8, !mcsema_real_eip !46
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !47
  %23 = add i64 %1, -4, !mcsema_real_eip !48
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !48
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %25, !mcsema_real_eip !48
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %26 = add i64 %RBP_val.63, -8, !mcsema_real_eip !49
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !49
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.65 = load i32, i32* %EDI.64, !mcsema_real_eip !49
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !49
  store i32 %EDI_val.65, i32* %28, !mcsema_real_eip !49
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !50
  %29 = add i64 %RBP_val.66, -16, !mcsema_real_eip !50
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !50
  %RSI_val.67 = load i64, i64* %XSI, !mcsema_real_eip !50
  store i64 %RSI_val.67, i64* %30, !mcsema_real_eip !50
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !51
  %31 = add i64 %RBP_val.68, -36, !mcsema_real_eip !51
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !51
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !51
  store i32 0, i32* %33, !mcsema_real_eip !51
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !52
  %34 = add i64 %RBP_val.69, -20, !mcsema_real_eip !52
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !52
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !52
  store i32 1, i32* %36, !mcsema_real_eip !52
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !53
  %37 = add i64 %RBP_val.70, -24, !mcsema_real_eip !53
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !53
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !53
  store i32 1, i32* %39, !mcsema_real_eip !53
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !54
  %40 = add i64 %RBP_val.71, -24, !mcsema_real_eip !54
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !54
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !54
  %43 = load i32, i32* %42, !mcsema_real_eip !54
  %44 = sext i32 %43 to i64, !mcsema_real_eip !54
  store i64 %44, i64* %XSI, !mcsema_real_eip !54
  %45 = sext i64 %44 to i128, !mcsema_real_eip !55
  %46 = mul i128 %45, 11, !mcsema_real_eip !55
  %47 = trunc i128 %46 to i64, !mcsema_real_eip !55
  %48 = sext i64 %47 to i128, !mcsema_real_eip !55
  %49 = icmp ne i128 %48, %46, !mcsema_real_eip !55
  %50 = icmp slt i64 %47, 0, !mcsema_real_eip !55
  store i1 %50, i1* %SF, !mcsema_real_eip !55
  store i1 %49, i1* %OF, !mcsema_real_eip !55
  store i1 %49, i1* %CF, !mcsema_real_eip !55
  store i64 %47, i64* %XSI, !mcsema_real_eip !55
  %R9_val.73 = load i64, i64* %R9, !mcsema_real_eip !56
  %51 = add i64 %47, %R9_val.73, !mcsema_real_eip !56
  %52 = xor i64 %51, %R9_val.73, !mcsema_real_eip !56
  %53 = xor i64 %52, %47, !mcsema_real_eip !56
  %54 = and i64 %53, 16, !mcsema_real_eip !56
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !56
  store i1 %55, i1* %AF, !mcsema_real_eip !56
  %56 = lshr i64 %51, 63, !mcsema_real_eip !56
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !56
  store i1 %57, i1* %SF, !mcsema_real_eip !56
  %58 = icmp eq i64 %51, 0, !mcsema_real_eip !56
  store i1 %58, i1* %ZF, !mcsema_real_eip !56
  %59 = xor i64 %R9_val.73, %47, !mcsema_real_eip !56
  %60 = xor i64 %59, -1, !mcsema_real_eip !56
  %61 = and i64 %60, %52, !mcsema_real_eip !56
  %62 = lshr i64 %61, 63, !mcsema_real_eip !56
  %63 = and i64 %62, 1, !mcsema_real_eip !56
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !56
  store i1 %64, i1* %OF, !mcsema_real_eip !56
  %65 = trunc i64 %51 to i8, !mcsema_real_eip !56
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !56
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !56
  %68 = xor i1 %67, true, !mcsema_real_eip !56
  store i1 %68, i1* %PF, !mcsema_real_eip !56
  %69 = icmp ult i64 %51, %R9_val.73, !mcsema_real_eip !56
  store i1 %69, i1* %CF, !mcsema_real_eip !56
  store i64 %51, i64* %R9, !mcsema_real_eip !56
  %70 = add i64 %RBP_val.71, -20, !mcsema_real_eip !57
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !57
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !57
  %73 = load i32, i32* %72, !mcsema_real_eip !57
  %74 = sext i32 %73 to i64, !mcsema_real_eip !57
  store i64 %74, i64* %XSI, !mcsema_real_eip !57
  %75 = add i64 %51, %74, !mcsema_real_eip !58
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !58
  %77 = inttoptr i64 %75 to i8*, !mcsema_real_eip !58
  store i8 88, i8* %77, !mcsema_real_eip !58
  %EAX_val.79 = load i32, i32* %EAX.55, !mcsema_real_eip !59
  %78 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !59
  store i64 %78, i64* %XDI, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !60
  store i64 %R8_val.80, i64* %XSI, !mcsema_real_eip !60
  %RDX_val.83 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !61
  %79 = sub i64 %RSP_val.84, 8, !mcsema_real_eip !61
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !61
  store i64 -2415393069852865332, i64* %80, !mcsema_real_eip !61
  store i64 %79, i64* %XSP, !mcsema_real_eip !61
  %81 = call x86_64_sysvcc i64 @_read(i64 %78, i64 %R8_val.80, i64 %RDX_val.83), !mcsema_real_eip !61
  store i64 %81, i64* %XAX, !mcsema_real_eip !61
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !62
  %82 = add i64 %RBP_val.85, -72, !mcsema_real_eip !62
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !62
  store i64 %81, i64* %83, !mcsema_real_eip !62
  br label %block_0x114, !mcsema_real_eip !63

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !63
  %84 = add i64 %RBP_val.87, -36, !mcsema_real_eip !63
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !63
  %86 = inttoptr i64 %84 to i32*, !mcsema_real_eip !63
  %87 = load i32, i32* %86, !mcsema_real_eip !63
  %88 = sub i32 %87, 28, !mcsema_real_eip !63
  %89 = xor i32 %88, %87, !mcsema_real_eip !63
  %90 = xor i32 %89, 28, !mcsema_real_eip !63
  %91 = and i32 %90, 16, !mcsema_real_eip !63
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !63
  store i1 %92, i1* %AF, !mcsema_real_eip !63
  %93 = trunc i32 %88 to i8, !mcsema_real_eip !63
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !63
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !63
  %96 = xor i1 %95, true, !mcsema_real_eip !63
  store i1 %96, i1* %PF, !mcsema_real_eip !63
  %97 = icmp eq i32 %88, 0, !mcsema_real_eip !63
  store i1 %97, i1* %ZF, !mcsema_real_eip !63
  %98 = lshr i32 %88, 31, !mcsema_real_eip !63
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !63
  store i1 %99, i1* %SF, !mcsema_real_eip !63
  %100 = icmp ult i32 %87, 28, !mcsema_real_eip !63
  store i1 %100, i1* %CF, !mcsema_real_eip !63
  %101 = xor i32 %87, 28, !mcsema_real_eip !63
  %102 = and i32 %101, %89, !mcsema_real_eip !63
  %103 = lshr i32 %102, 31, !mcsema_real_eip !63
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !63
  store i1 %104, i1* %OF, !mcsema_real_eip !63
  %105 = icmp eq i1 %99, %104, !mcsema_real_eip !64
  br i1 %105, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !64

block_0x11e:                                      ; preds = %block_0x114
  %106 = add i64 %RBP_val.87, -20, !mcsema_real_eip !65
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !65
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !65
  %109 = load i32, i32* %108, !mcsema_real_eip !65
  %110 = zext i32 %109 to i64, !mcsema_real_eip !65
  store i64 %110, i64* %XAX, !mcsema_real_eip !65
  %111 = add i64 %RBP_val.87, -28, !mcsema_real_eip !66
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !66
  %EAX_val.91 = load i32, i32* %EAX.55, !mcsema_real_eip !66
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.91, i32* %113, !mcsema_real_eip !66
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !67
  %114 = add i64 %RBP_val.92, -24, !mcsema_real_eip !67
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !67
  %116 = inttoptr i64 %114 to i32*, !mcsema_real_eip !67
  %117 = load i32, i32* %116, !mcsema_real_eip !67
  %118 = zext i32 %117 to i64, !mcsema_real_eip !67
  store i64 %118, i64* %XAX, !mcsema_real_eip !67
  %119 = add i64 %RBP_val.92, -32, !mcsema_real_eip !68
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !68
  %EAX_val.95 = load i32, i32* %EAX.55, !mcsema_real_eip !68
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.95, i32* %121, !mcsema_real_eip !68
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !69
  %122 = add i64 %RBP_val.96, -36, !mcsema_real_eip !69
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !69
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !69
  %125 = load i32, i32* %124, !mcsema_real_eip !69
  %126 = sext i32 %125 to i64, !mcsema_real_eip !69
  store i64 %126, i64* %XCX, !mcsema_real_eip !69
  %127 = add i64 %RBP_val.96, -64, !mcsema_real_eip !70
  %128 = add i64 %127, %126, !mcsema_real_eip !70
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !70
  %130 = inttoptr i64 %128 to i8*, !mcsema_real_eip !70
  %131 = load i8, i8* %130, !mcsema_real_eip !70
  %132 = sext i8 %131 to i32, !mcsema_real_eip !70
  %133 = zext i32 %132 to i64, !mcsema_real_eip !70
  store i64 %133, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.100 = load i32, i32* %EAX.55, !mcsema_real_eip !71
  %134 = add i32 -97, %EAX_val.100, !mcsema_real_eip !71
  %135 = xor i32 %134, %EAX_val.100, !mcsema_real_eip !71
  %136 = xor i32 %135, -97, !mcsema_real_eip !71
  %137 = and i32 %136, 16, !mcsema_real_eip !71
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !71
  store i1 %138, i1* %AF, !mcsema_real_eip !71
  %139 = lshr i32 %134, 31, !mcsema_real_eip !71
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !71
  store i1 %140, i1* %SF, !mcsema_real_eip !71
  %141 = icmp eq i32 %134, 0, !mcsema_real_eip !71
  store i1 %141, i1* %ZF, !mcsema_real_eip !71
  %142 = xor i32 %EAX_val.100, -97, !mcsema_real_eip !71
  %143 = xor i32 %142, -1, !mcsema_real_eip !71
  %144 = and i32 %143, %135, !mcsema_real_eip !71
  %145 = lshr i32 %144, 31, !mcsema_real_eip !71
  %146 = and i32 %145, 1, !mcsema_real_eip !71
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !71
  store i1 %147, i1* %OF, !mcsema_real_eip !71
  %148 = trunc i32 %134 to i8, !mcsema_real_eip !71
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !71
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !71
  %151 = xor i1 %150, true, !mcsema_real_eip !71
  store i1 %151, i1* %PF, !mcsema_real_eip !71
  %152 = icmp ult i32 %134, %EAX_val.100, !mcsema_real_eip !71
  store i1 %152, i1* %CF, !mcsema_real_eip !71
  %153 = zext i32 %134 to i64, !mcsema_real_eip !71
  store i64 %153, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.102 = load i32, i32* %EAX.55, !mcsema_real_eip !72
  %154 = zext i32 %EAX_val.102 to i64, !mcsema_real_eip !72
  store i64 %154, i64* %XCX, !mcsema_real_eip !72
  %155 = sub i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %156 = xor i32 %155, %EAX_val.102, !mcsema_real_eip !73
  %157 = xor i32 %156, 22, !mcsema_real_eip !73
  %158 = and i32 %157, 16, !mcsema_real_eip !73
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !73
  store i1 %159, i1* %AF, !mcsema_real_eip !73
  %160 = trunc i32 %155 to i8, !mcsema_real_eip !73
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !73
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !73
  %163 = xor i1 %162, true, !mcsema_real_eip !73
  store i1 %163, i1* %PF, !mcsema_real_eip !73
  %164 = icmp eq i32 %155, 0, !mcsema_real_eip !73
  store i1 %164, i1* %ZF, !mcsema_real_eip !73
  %165 = lshr i32 %155, 31, !mcsema_real_eip !73
  %166 = trunc i32 %165 to i1, !mcsema_real_eip !73
  store i1 %166, i1* %SF, !mcsema_real_eip !73
  %167 = icmp ult i32 %EAX_val.102, 22, !mcsema_real_eip !73
  store i1 %167, i1* %CF, !mcsema_real_eip !73
  %168 = xor i32 %EAX_val.102, 22, !mcsema_real_eip !73
  %169 = and i32 %168, %156, !mcsema_real_eip !73
  %170 = lshr i32 %169, 31, !mcsema_real_eip !73
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !73
  store i1 %171, i1* %OF, !mcsema_real_eip !73
  %172 = zext i32 %155 to i64, !mcsema_real_eip !73
  store i64 %172, i64* %XAX, !mcsema_real_eip !73
  %173 = add i64 %RBP_val.96, -80, !mcsema_real_eip !74
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !74
  store i64 %154, i64* %174, !mcsema_real_eip !74
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !75
  %175 = add i64 %RBP_val.107, -84, !mcsema_real_eip !75
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !75
  %EAX_val.109 = load i32, i32* %EAX.55, !mcsema_real_eip !75
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.109, i32* %177, !mcsema_real_eip !75
  %178 = load i1, i1* %ZF, !mcsema_real_eip !76
  %179 = icmp eq i1 %178, false, !mcsema_real_eip !76
  %180 = load i1, i1* %CF, !mcsema_real_eip !76
  %181 = icmp eq i1 %180, false, !mcsema_real_eip !76
  %182 = and i1 %181, %179, !mcsema_real_eip !76
  br i1 %182, label %block_0x18e, label %block_0x148, !mcsema_real_eip !76

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !77
  %183 = add i64 %RBP_val.110, -80, !mcsema_real_eip !77
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !77
  %185 = load i64, i64* %184, !mcsema_real_eip !77
  store i64 %185, i64* %XAX, !mcsema_real_eip !77
  %186 = mul i64 %185, 8, !mcsema_real_eip !78
  %187 = add i64 ptrtoint (%0* @data_0x320 to i64), %186, !mcsema_real_eip !78
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !78
  %189 = load i64, i64* %188, !mcsema_real_eip !78
  store i64 %189, i64* %XCX, !mcsema_real_eip !78
  switch i64 %189, label %717 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !79

block_0x156:                                      ; preds = %block_0x148
  %190 = add i64 %RBP_val.110, -24, !mcsema_real_eip !80
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !80
  %192 = inttoptr i64 %190 to i32*, !mcsema_real_eip !80
  %193 = load i32, i32* %192, !mcsema_real_eip !80
  %194 = zext i32 %193 to i64, !mcsema_real_eip !80
  store i64 %194, i64* %XAX, !mcsema_real_eip !80
  %EAX_val.115 = load i32, i32* %EAX.55, !mcsema_real_eip !81
  %195 = add i32 -1, %EAX_val.115, !mcsema_real_eip !81
  %196 = xor i32 %195, %EAX_val.115, !mcsema_real_eip !81
  %197 = xor i32 %196, -1, !mcsema_real_eip !81
  %198 = and i32 %197, 16, !mcsema_real_eip !81
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !81
  store i1 %199, i1* %AF, !mcsema_real_eip !81
  %200 = lshr i32 %195, 31, !mcsema_real_eip !81
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !81
  store i1 %201, i1* %SF, !mcsema_real_eip !81
  %202 = icmp eq i32 %195, 0, !mcsema_real_eip !81
  store i1 %202, i1* %ZF, !mcsema_real_eip !81
  %203 = xor i32 %EAX_val.115, -1, !mcsema_real_eip !81
  %204 = and i32 %EAX_val.115, %196, !mcsema_real_eip !81
  %205 = lshr i32 %204, 31, !mcsema_real_eip !81
  %206 = and i32 %205, 1, !mcsema_real_eip !81
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !81
  store i1 %207, i1* %OF, !mcsema_real_eip !81
  %208 = trunc i32 %195 to i8, !mcsema_real_eip !81
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !81
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !81
  %211 = xor i1 %210, true, !mcsema_real_eip !81
  store i1 %211, i1* %PF, !mcsema_real_eip !81
  %212 = icmp ult i32 %195, %EAX_val.115, !mcsema_real_eip !81
  store i1 %212, i1* %CF, !mcsema_real_eip !81
  %213 = zext i32 %195 to i64, !mcsema_real_eip !81
  store i64 %213, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.118 = load i32, i32* %EAX.55, !mcsema_real_eip !82
  store i32 %EAX_val.118, i32* %192, !mcsema_real_eip !82
  br label %block_0x1c0, !mcsema_real_eip !83

block_0x164:                                      ; preds = %block_0x148
  %214 = add i64 %RBP_val.110, -24, !mcsema_real_eip !84
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !84
  %216 = inttoptr i64 %214 to i32*, !mcsema_real_eip !84
  %217 = load i32, i32* %216, !mcsema_real_eip !84
  %218 = zext i32 %217 to i64, !mcsema_real_eip !84
  store i64 %218, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.121 = load i32, i32* %EAX.55, !mcsema_real_eip !85
  %219 = add i32 1, %EAX_val.121, !mcsema_real_eip !85
  %220 = xor i32 %219, %EAX_val.121, !mcsema_real_eip !85
  %221 = xor i32 %220, 1, !mcsema_real_eip !85
  %222 = and i32 %221, 16, !mcsema_real_eip !85
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !85
  store i1 %223, i1* %AF, !mcsema_real_eip !85
  %224 = lshr i32 %219, 31, !mcsema_real_eip !85
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !85
  store i1 %225, i1* %SF, !mcsema_real_eip !85
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !85
  store i1 %226, i1* %ZF, !mcsema_real_eip !85
  %227 = xor i32 %EAX_val.121, 1, !mcsema_real_eip !85
  %228 = xor i32 %227, -1, !mcsema_real_eip !85
  %229 = and i32 %228, %220, !mcsema_real_eip !85
  %230 = lshr i32 %229, 31, !mcsema_real_eip !85
  %231 = and i32 %230, 1, !mcsema_real_eip !85
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !85
  store i1 %232, i1* %OF, !mcsema_real_eip !85
  %233 = trunc i32 %219 to i8, !mcsema_real_eip !85
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !85
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !85
  %236 = xor i1 %235, true, !mcsema_real_eip !85
  store i1 %236, i1* %PF, !mcsema_real_eip !85
  %237 = icmp ult i32 %219, %EAX_val.121, !mcsema_real_eip !85
  store i1 %237, i1* %CF, !mcsema_real_eip !85
  %238 = zext i32 %219 to i64, !mcsema_real_eip !85
  store i64 %238, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.124 = load i32, i32* %EAX.55, !mcsema_real_eip !86
  store i32 %EAX_val.124, i32* %216, !mcsema_real_eip !86
  br label %block_0x1c0, !mcsema_real_eip !87

block_0x172:                                      ; preds = %block_0x148
  %239 = add i64 %RBP_val.110, -20, !mcsema_real_eip !88
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !88
  %241 = inttoptr i64 %239 to i32*, !mcsema_real_eip !88
  %242 = load i32, i32* %241, !mcsema_real_eip !88
  %243 = zext i32 %242 to i64, !mcsema_real_eip !88
  store i64 %243, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.127 = load i32, i32* %EAX.55, !mcsema_real_eip !89
  %244 = add i32 -1, %EAX_val.127, !mcsema_real_eip !89
  %245 = xor i32 %244, %EAX_val.127, !mcsema_real_eip !89
  %246 = xor i32 %245, -1, !mcsema_real_eip !89
  %247 = and i32 %246, 16, !mcsema_real_eip !89
  %248 = icmp ne i32 %247, 0, !mcsema_real_eip !89
  store i1 %248, i1* %AF, !mcsema_real_eip !89
  %249 = lshr i32 %244, 31, !mcsema_real_eip !89
  %250 = trunc i32 %249 to i1, !mcsema_real_eip !89
  store i1 %250, i1* %SF, !mcsema_real_eip !89
  %251 = icmp eq i32 %244, 0, !mcsema_real_eip !89
  store i1 %251, i1* %ZF, !mcsema_real_eip !89
  %252 = xor i32 %EAX_val.127, -1, !mcsema_real_eip !89
  %253 = and i32 %EAX_val.127, %245, !mcsema_real_eip !89
  %254 = lshr i32 %253, 31, !mcsema_real_eip !89
  %255 = and i32 %254, 1, !mcsema_real_eip !89
  %256 = trunc i32 %255 to i1, !mcsema_real_eip !89
  store i1 %256, i1* %OF, !mcsema_real_eip !89
  %257 = trunc i32 %244 to i8, !mcsema_real_eip !89
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !89
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !89
  %260 = xor i1 %259, true, !mcsema_real_eip !89
  store i1 %260, i1* %PF, !mcsema_real_eip !89
  %261 = icmp ult i32 %244, %EAX_val.127, !mcsema_real_eip !89
  store i1 %261, i1* %CF, !mcsema_real_eip !89
  %262 = zext i32 %244 to i64, !mcsema_real_eip !89
  store i64 %262, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.130 = load i32, i32* %EAX.55, !mcsema_real_eip !90
  store i32 %EAX_val.130, i32* %241, !mcsema_real_eip !90
  br label %block_0x1c0, !mcsema_real_eip !91

block_0x180:                                      ; preds = %block_0x148
  %263 = add i64 %RBP_val.110, -20, !mcsema_real_eip !92
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !92
  %265 = inttoptr i64 %263 to i32*, !mcsema_real_eip !92
  %266 = load i32, i32* %265, !mcsema_real_eip !92
  %267 = zext i32 %266 to i64, !mcsema_real_eip !92
  store i64 %267, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.133 = load i32, i32* %EAX.55, !mcsema_real_eip !93
  %268 = add i32 1, %EAX_val.133, !mcsema_real_eip !93
  %269 = xor i32 %268, %EAX_val.133, !mcsema_real_eip !93
  %270 = xor i32 %269, 1, !mcsema_real_eip !93
  %271 = and i32 %270, 16, !mcsema_real_eip !93
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !93
  store i1 %272, i1* %AF, !mcsema_real_eip !93
  %273 = lshr i32 %268, 31, !mcsema_real_eip !93
  %274 = trunc i32 %273 to i1, !mcsema_real_eip !93
  store i1 %274, i1* %SF, !mcsema_real_eip !93
  %275 = icmp eq i32 %268, 0, !mcsema_real_eip !93
  store i1 %275, i1* %ZF, !mcsema_real_eip !93
  %276 = xor i32 %EAX_val.133, 1, !mcsema_real_eip !93
  %277 = xor i32 %276, -1, !mcsema_real_eip !93
  %278 = and i32 %277, %269, !mcsema_real_eip !93
  %279 = lshr i32 %278, 31, !mcsema_real_eip !93
  %280 = and i32 %279, 1, !mcsema_real_eip !93
  %281 = trunc i32 %280 to i1, !mcsema_real_eip !93
  store i1 %281, i1* %OF, !mcsema_real_eip !93
  %282 = trunc i32 %268 to i8, !mcsema_real_eip !93
  %283 = call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !93
  %284 = trunc i8 %283 to i1, !mcsema_real_eip !93
  %285 = xor i1 %284, true, !mcsema_real_eip !93
  store i1 %285, i1* %PF, !mcsema_real_eip !93
  %286 = icmp ult i32 %268, %EAX_val.133, !mcsema_real_eip !93
  store i1 %286, i1* %CF, !mcsema_real_eip !93
  %287 = zext i32 %268 to i64, !mcsema_real_eip !93
  store i64 %287, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.136 = load i32, i32* %EAX.55, !mcsema_real_eip !94
  store i32 %EAX_val.136, i32* %265, !mcsema_real_eip !94
  br label %block_0x1c0, !mcsema_real_eip !95

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !96
  %AL.137 = bitcast i64* %XAX to i8*, !mcsema_real_eip !97
  store i8 0, i8* %AL.137, !mcsema_real_eip !97
  %RSI_val.139 = load i64, i64* %XSI, !mcsema_real_eip !98
  %RSP_val.140 = load i64, i64* %XSP, !mcsema_real_eip !98
  %288 = sub i64 %RSP_val.140, 8, !mcsema_real_eip !98
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %289, !mcsema_real_eip !98
  store i64 %288, i64* %XSP, !mcsema_real_eip !98
  %290 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.139), !mcsema_real_eip !98
  store i64 %290, i64* %XAX, !mcsema_real_eip !98
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !99
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !100
  %291 = add i64 %RBP_val.141, -88, !mcsema_real_eip !100
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !100
  %EAX_val.143 = load i32, i32* %EAX.55, !mcsema_real_eip !100
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.143, i32* %293, !mcsema_real_eip !100
  store i8 0, i8* %AL.137, !mcsema_real_eip !101
  %RDI_val.145 = load i64, i64* %XDI, !mcsema_real_eip !102
  %RSI_val.146 = load i64, i64* %XSI, !mcsema_real_eip !102
  %RSP_val.147 = load i64, i64* %XSP, !mcsema_real_eip !102
  %294 = sub i64 %RSP_val.147, 8, !mcsema_real_eip !102
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !102
  store i64 -2415393069852865332, i64* %295, !mcsema_real_eip !102
  store i64 %294, i64* %XSP, !mcsema_real_eip !102
  %296 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146), !mcsema_real_eip !102
  store i64 %296, i64* %XAX, !mcsema_real_eip !102
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !103
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !104
  %297 = add i64 %RBP_val.148, -92, !mcsema_real_eip !104
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !104
  %EAX_val.150 = load i32, i32* %EAX.55, !mcsema_real_eip !104
  %299 = inttoptr i64 %297 to i32*, !mcsema_real_eip !104
  store i32 %EAX_val.150, i32* %299, !mcsema_real_eip !104
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !105
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !105
  %300 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !105
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !105
  store i64 -2415393069852865332, i64* %301, !mcsema_real_eip !105
  store i64 %300, i64* %XSP, !mcsema_real_eip !105
  %302 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !105
  store i64 %302, i64* %XAX, !mcsema_real_eip !105
  br label %block_0x1c0, !mcsema_real_eip !106

block_0x1c0:                                      ; preds = %block_0x18e, %block_0x180, %block_0x172, %block_0x164, %block_0x156
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !106
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !107
  %303 = add i64 %RBP_val.153, -24, !mcsema_real_eip !107
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !107
  %305 = inttoptr i64 %303 to i32*, !mcsema_real_eip !107
  %306 = load i32, i32* %305, !mcsema_real_eip !107
  %307 = sext i32 %306 to i64, !mcsema_real_eip !107
  store i64 %307, i64* %XCX, !mcsema_real_eip !107
  %308 = sext i64 %307 to i128, !mcsema_real_eip !108
  %309 = mul i128 %308, 11, !mcsema_real_eip !108
  %310 = trunc i128 %309 to i64, !mcsema_real_eip !108
  %311 = sext i64 %310 to i128, !mcsema_real_eip !108
  %312 = icmp ne i128 %311, %309, !mcsema_real_eip !108
  %313 = icmp slt i64 %310, 0, !mcsema_real_eip !108
  store i1 %313, i1* %SF, !mcsema_real_eip !108
  store i1 %312, i1* %OF, !mcsema_real_eip !108
  store i1 %312, i1* %CF, !mcsema_real_eip !108
  store i64 %310, i64* %XCX, !mcsema_real_eip !108
  %314 = add i64 %310, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %315 = xor i64 %314, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  %316 = xor i64 %315, %310, !mcsema_real_eip !109
  %317 = and i64 %316, 16, !mcsema_real_eip !109
  %318 = icmp ne i64 %317, 0, !mcsema_real_eip !109
  store i1 %318, i1* %AF, !mcsema_real_eip !109
  %319 = lshr i64 %314, 63, !mcsema_real_eip !109
  %320 = trunc i64 %319 to i1, !mcsema_real_eip !109
  store i1 %320, i1* %SF, !mcsema_real_eip !109
  %321 = icmp eq i64 %314, 0, !mcsema_real_eip !109
  store i1 %321, i1* %ZF, !mcsema_real_eip !109
  %322 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %310, !mcsema_real_eip !109
  %323 = xor i64 %322, -1, !mcsema_real_eip !109
  %324 = and i64 %323, %315, !mcsema_real_eip !109
  %325 = lshr i64 %324, 63, !mcsema_real_eip !109
  %326 = and i64 %325, 1, !mcsema_real_eip !109
  %327 = trunc i64 %326 to i1, !mcsema_real_eip !109
  store i1 %327, i1* %OF, !mcsema_real_eip !109
  %328 = trunc i64 %314 to i8, !mcsema_real_eip !109
  %329 = call i8 @llvm.ctpop.i8(i8 %328), !mcsema_real_eip !109
  %330 = trunc i8 %329 to i1, !mcsema_real_eip !109
  %331 = xor i1 %330, true, !mcsema_real_eip !109
  store i1 %331, i1* %PF, !mcsema_real_eip !109
  %332 = icmp ult i64 %314, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !109
  store i1 %332, i1* %CF, !mcsema_real_eip !109
  store i64 %314, i64* %XAX, !mcsema_real_eip !109
  %333 = add i64 %RBP_val.153, -20, !mcsema_real_eip !110
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !110
  %335 = inttoptr i64 %333 to i32*, !mcsema_real_eip !110
  %336 = load i32, i32* %335, !mcsema_real_eip !110
  %337 = sext i32 %336 to i64, !mcsema_real_eip !110
  store i64 %337, i64* %XCX, !mcsema_real_eip !110
  %338 = add i64 %314, %337, !mcsema_real_eip !111
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !111
  %340 = inttoptr i64 %338 to i8*, !mcsema_real_eip !111
  %341 = load i8, i8* %340, !mcsema_real_eip !111
  %342 = sext i8 %341 to i32, !mcsema_real_eip !111
  %343 = zext i32 %342 to i64, !mcsema_real_eip !111
  store i64 %343, i64* %XDX, !mcsema_real_eip !111
  %EDX.160 = bitcast i64* %XDX to i32*, !mcsema_real_eip !112
  %EDX_val.161 = load i32, i32* %EDX.160, !mcsema_real_eip !112
  %344 = sub i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %345 = xor i32 %344, %EDX_val.161, !mcsema_real_eip !112
  %346 = xor i32 %345, 35, !mcsema_real_eip !112
  %347 = and i32 %346, 16, !mcsema_real_eip !112
  %348 = icmp ne i32 %347, 0, !mcsema_real_eip !112
  store i1 %348, i1* %AF, !mcsema_real_eip !112
  %349 = trunc i32 %344 to i8, !mcsema_real_eip !112
  %350 = call i8 @llvm.ctpop.i8(i8 %349), !mcsema_real_eip !112
  %351 = trunc i8 %350 to i1, !mcsema_real_eip !112
  %352 = xor i1 %351, true, !mcsema_real_eip !112
  store i1 %352, i1* %PF, !mcsema_real_eip !112
  %353 = icmp eq i32 %344, 0, !mcsema_real_eip !112
  store i1 %353, i1* %ZF, !mcsema_real_eip !112
  %354 = lshr i32 %344, 31, !mcsema_real_eip !112
  %355 = trunc i32 %354 to i1, !mcsema_real_eip !112
  store i1 %355, i1* %SF, !mcsema_real_eip !112
  %356 = icmp ult i32 %EDX_val.161, 35, !mcsema_real_eip !112
  store i1 %356, i1* %CF, !mcsema_real_eip !112
  %357 = xor i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %358 = and i32 %357, %345, !mcsema_real_eip !112
  %359 = lshr i32 %358, 31, !mcsema_real_eip !112
  %360 = trunc i32 %359 to i1, !mcsema_real_eip !112
  store i1 %360, i1* %OF, !mcsema_real_eip !112
  %361 = icmp eq i1 %353, false, !mcsema_real_eip !113
  br i1 %361, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !113

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !114
  %AL.162 = bitcast i64* %XAX to i8*, !mcsema_real_eip !115
  store i8 0, i8* %AL.162, !mcsema_real_eip !115
  %RSI_val.164 = load i64, i64* %XSI, !mcsema_real_eip !116
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !116
  %362 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !116
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !116
  store i64 -2415393069852865332, i64* %363, !mcsema_real_eip !116
  store i64 %362, i64* %XSP, !mcsema_real_eip !116
  %364 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.164), !mcsema_real_eip !116
  store i64 %364, i64* %XAX, !mcsema_real_eip !116
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !117
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !118
  %365 = add i64 %RBP_val.166, -64, !mcsema_real_eip !118
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !118
  store i64 %365, i64* %XSI, !mcsema_real_eip !118
  %367 = add i64 %RBP_val.166, -96, !mcsema_real_eip !119
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !119
  %EAX_val.169 = load i32, i32* %EAX.55, !mcsema_real_eip !119
  %369 = inttoptr i64 %367 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.169, i32* %369, !mcsema_real_eip !119
  store i8 0, i8* %AL.162, !mcsema_real_eip !120
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !121
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !121
  %RSP_val.173 = load i64, i64* %XSP, !mcsema_real_eip !121
  %370 = sub i64 %RSP_val.173, 8, !mcsema_real_eip !121
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !121
  store i64 -2415393069852865332, i64* %371, !mcsema_real_eip !121
  store i64 %370, i64* %XSP, !mcsema_real_eip !121
  %372 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172), !mcsema_real_eip !121
  store i64 %372, i64* %XAX, !mcsema_real_eip !121
  %EDI_val.175 = load i32, i32* %EDI.64, !mcsema_real_eip !122
  store i1 false, i1* %CF, !mcsema_real_eip !122
  store i1 false, i1* %OF, !mcsema_real_eip !122
  store i1 false, i1* %SF, !mcsema_real_eip !122
  store i1 true, i1* %ZF, !mcsema_real_eip !122
  store i1 true, i1* %PF, !mcsema_real_eip !122
  store i1 undef, i1* %AF, !mcsema_real_eip !122
  store i64 0, i64* %XDI, !mcsema_real_eip !122
  %RBP_val.178 = load i64, i64* %XBP, !mcsema_real_eip !123
  %373 = add i64 %RBP_val.178, -100, !mcsema_real_eip !123
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !123
  %EAX_val.180 = load i32, i32* %EAX.55, !mcsema_real_eip !123
  %375 = inttoptr i64 %373 to i32*, !mcsema_real_eip !123
  store i32 %EAX_val.180, i32* %375, !mcsema_real_eip !123
  %RDI_val.181 = load i64, i64* %XDI, !mcsema_real_eip !124
  %RSP_val.182 = load i64, i64* %XSP, !mcsema_real_eip !124
  %376 = sub i64 %RSP_val.182, 8, !mcsema_real_eip !124
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !124
  store i64 -2415393069852865332, i64* %377, !mcsema_real_eip !124
  store i64 %376, i64* %XSP, !mcsema_real_eip !124
  %378 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181), !mcsema_real_eip !124
  store i64 %378, i64* %XAX, !mcsema_real_eip !124
  br label %block_0x219, !mcsema_real_eip !125

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !125
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !126
  %379 = add i64 %RBP_val.183, -24, !mcsema_real_eip !126
  %380 = inttoptr i64 %379 to i64*, !mcsema_real_eip !126
  %381 = inttoptr i64 %379 to i32*, !mcsema_real_eip !126
  %382 = load i32, i32* %381, !mcsema_real_eip !126
  %383 = sext i32 %382 to i64, !mcsema_real_eip !126
  store i64 %383, i64* %XCX, !mcsema_real_eip !126
  %384 = sext i64 %383 to i128, !mcsema_real_eip !127
  %385 = mul i128 %384, 11, !mcsema_real_eip !127
  %386 = trunc i128 %385 to i64, !mcsema_real_eip !127
  %387 = sext i64 %386 to i128, !mcsema_real_eip !127
  %388 = icmp ne i128 %387, %385, !mcsema_real_eip !127
  %389 = icmp slt i64 %386, 0, !mcsema_real_eip !127
  store i1 %389, i1* %SF, !mcsema_real_eip !127
  store i1 %388, i1* %OF, !mcsema_real_eip !127
  store i1 %388, i1* %CF, !mcsema_real_eip !127
  store i64 %386, i64* %XCX, !mcsema_real_eip !127
  %390 = add i64 %386, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %391 = xor i64 %390, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  %392 = xor i64 %391, %386, !mcsema_real_eip !128
  %393 = and i64 %392, 16, !mcsema_real_eip !128
  %394 = icmp ne i64 %393, 0, !mcsema_real_eip !128
  store i1 %394, i1* %AF, !mcsema_real_eip !128
  %395 = lshr i64 %390, 63, !mcsema_real_eip !128
  %396 = trunc i64 %395 to i1, !mcsema_real_eip !128
  store i1 %396, i1* %SF, !mcsema_real_eip !128
  %397 = icmp eq i64 %390, 0, !mcsema_real_eip !128
  store i1 %397, i1* %ZF, !mcsema_real_eip !128
  %398 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %386, !mcsema_real_eip !128
  %399 = xor i64 %398, -1, !mcsema_real_eip !128
  %400 = and i64 %399, %391, !mcsema_real_eip !128
  %401 = lshr i64 %400, 63, !mcsema_real_eip !128
  %402 = and i64 %401, 1, !mcsema_real_eip !128
  %403 = trunc i64 %402 to i1, !mcsema_real_eip !128
  store i1 %403, i1* %OF, !mcsema_real_eip !128
  %404 = trunc i64 %390 to i8, !mcsema_real_eip !128
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !128
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !128
  %407 = xor i1 %406, true, !mcsema_real_eip !128
  store i1 %407, i1* %PF, !mcsema_real_eip !128
  %408 = icmp ult i64 %390, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !128
  store i1 %408, i1* %CF, !mcsema_real_eip !128
  store i64 %390, i64* %XAX, !mcsema_real_eip !128
  %409 = add i64 %RBP_val.183, -20, !mcsema_real_eip !129
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !129
  %411 = inttoptr i64 %409 to i32*, !mcsema_real_eip !129
  %412 = load i32, i32* %411, !mcsema_real_eip !129
  %413 = sext i32 %412 to i64, !mcsema_real_eip !129
  store i64 %413, i64* %XCX, !mcsema_real_eip !129
  %414 = add i64 %390, %413, !mcsema_real_eip !130
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !130
  %416 = inttoptr i64 %414 to i8*, !mcsema_real_eip !130
  %417 = load i8, i8* %416, !mcsema_real_eip !130
  %418 = sext i8 %417 to i32, !mcsema_real_eip !130
  %419 = zext i32 %418 to i64, !mcsema_real_eip !130
  store i64 %419, i64* %XDX, !mcsema_real_eip !130
  %EDX_val.191 = load i32, i32* %EDX.160, !mcsema_real_eip !131
  %420 = sub i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %421 = xor i32 %420, %EDX_val.191, !mcsema_real_eip !131
  %422 = xor i32 %421, 32, !mcsema_real_eip !131
  %423 = and i32 %422, 16, !mcsema_real_eip !131
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !131
  store i1 %424, i1* %AF, !mcsema_real_eip !131
  %425 = trunc i32 %420 to i8, !mcsema_real_eip !131
  %426 = call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !131
  %427 = trunc i8 %426 to i1, !mcsema_real_eip !131
  %428 = xor i1 %427, true, !mcsema_real_eip !131
  store i1 %428, i1* %PF, !mcsema_real_eip !131
  %429 = icmp eq i32 %420, 0, !mcsema_real_eip !131
  store i1 %429, i1* %ZF, !mcsema_real_eip !131
  %430 = lshr i32 %420, 31, !mcsema_real_eip !131
  %431 = trunc i32 %430 to i1, !mcsema_real_eip !131
  store i1 %431, i1* %SF, !mcsema_real_eip !131
  %432 = icmp ult i32 %EDX_val.191, 32, !mcsema_real_eip !131
  store i1 %432, i1* %CF, !mcsema_real_eip !131
  %433 = xor i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %434 = and i32 %433, %421, !mcsema_real_eip !131
  %435 = lshr i32 %434, 31, !mcsema_real_eip !131
  %436 = trunc i32 %435 to i1, !mcsema_real_eip !131
  store i1 %436, i1* %OF, !mcsema_real_eip !131
  br i1 %429, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !132

block_0x23f:                                      ; preds = %block_0x219
  %437 = load i32, i32* %381, !mcsema_real_eip !133
  %438 = sub i32 %437, 2, !mcsema_real_eip !133
  %439 = xor i32 %438, %437, !mcsema_real_eip !133
  %440 = xor i32 %439, 2, !mcsema_real_eip !133
  %441 = and i32 %440, 16, !mcsema_real_eip !133
  %442 = icmp ne i32 %441, 0, !mcsema_real_eip !133
  store i1 %442, i1* %AF, !mcsema_real_eip !133
  %443 = trunc i32 %438 to i8, !mcsema_real_eip !133
  %444 = call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !133
  %445 = trunc i8 %444 to i1, !mcsema_real_eip !133
  %446 = xor i1 %445, true, !mcsema_real_eip !133
  store i1 %446, i1* %PF, !mcsema_real_eip !133
  %447 = icmp eq i32 %438, 0, !mcsema_real_eip !133
  store i1 %447, i1* %ZF, !mcsema_real_eip !133
  %448 = lshr i32 %438, 31, !mcsema_real_eip !133
  %449 = trunc i32 %448 to i1, !mcsema_real_eip !133
  store i1 %449, i1* %SF, !mcsema_real_eip !133
  %450 = icmp ult i32 %437, 2, !mcsema_real_eip !133
  store i1 %450, i1* %CF, !mcsema_real_eip !133
  %451 = xor i32 %437, 2, !mcsema_real_eip !133
  %452 = and i32 %451, %439, !mcsema_real_eip !133
  %453 = lshr i32 %452, 31, !mcsema_real_eip !133
  %454 = trunc i32 %453 to i1, !mcsema_real_eip !133
  store i1 %454, i1* %OF, !mcsema_real_eip !133
  %455 = icmp eq i1 %447, false, !mcsema_real_eip !134
  br i1 %455, label %block_0x283, label %block_0x249, !mcsema_real_eip !134

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !135
  %456 = load i32, i32* %381, !mcsema_real_eip !136
  %457 = sext i32 %456 to i64, !mcsema_real_eip !136
  store i64 %457, i64* %XCX, !mcsema_real_eip !136
  %458 = sext i64 %457 to i128, !mcsema_real_eip !137
  %459 = mul i128 %458, 11, !mcsema_real_eip !137
  %460 = trunc i128 %459 to i64, !mcsema_real_eip !137
  %461 = sext i64 %460 to i128, !mcsema_real_eip !137
  %462 = icmp ne i128 %461, %459, !mcsema_real_eip !137
  %463 = icmp slt i64 %460, 0, !mcsema_real_eip !137
  store i1 %463, i1* %SF, !mcsema_real_eip !137
  store i1 %462, i1* %OF, !mcsema_real_eip !137
  store i1 %462, i1* %CF, !mcsema_real_eip !137
  store i64 %460, i64* %XCX, !mcsema_real_eip !137
  %464 = add i64 %460, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %465 = xor i64 %464, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  %466 = xor i64 %465, %460, !mcsema_real_eip !138
  %467 = and i64 %466, 16, !mcsema_real_eip !138
  %468 = icmp ne i64 %467, 0, !mcsema_real_eip !138
  store i1 %468, i1* %AF, !mcsema_real_eip !138
  %469 = lshr i64 %464, 63, !mcsema_real_eip !138
  %470 = trunc i64 %469 to i1, !mcsema_real_eip !138
  store i1 %470, i1* %SF, !mcsema_real_eip !138
  %471 = icmp eq i64 %464, 0, !mcsema_real_eip !138
  store i1 %471, i1* %ZF, !mcsema_real_eip !138
  %472 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %460, !mcsema_real_eip !138
  %473 = xor i64 %472, -1, !mcsema_real_eip !138
  %474 = and i64 %473, %465, !mcsema_real_eip !138
  %475 = lshr i64 %474, 63, !mcsema_real_eip !138
  %476 = and i64 %475, 1, !mcsema_real_eip !138
  %477 = trunc i64 %476 to i1, !mcsema_real_eip !138
  store i1 %477, i1* %OF, !mcsema_real_eip !138
  %478 = trunc i64 %464 to i8, !mcsema_real_eip !138
  %479 = call i8 @llvm.ctpop.i8(i8 %478), !mcsema_real_eip !138
  %480 = trunc i8 %479 to i1, !mcsema_real_eip !138
  %481 = xor i1 %480, true, !mcsema_real_eip !138
  store i1 %481, i1* %PF, !mcsema_real_eip !138
  %482 = icmp ult i64 %464, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !138
  store i1 %482, i1* %CF, !mcsema_real_eip !138
  store i64 %464, i64* %XAX, !mcsema_real_eip !138
  %483 = load i32, i32* %411, !mcsema_real_eip !139
  %484 = sext i32 %483 to i64, !mcsema_real_eip !139
  store i64 %484, i64* %XCX, !mcsema_real_eip !139
  %485 = add i64 %464, %484, !mcsema_real_eip !140
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !140
  %487 = inttoptr i64 %485 to i8*, !mcsema_real_eip !140
  %488 = load i8, i8* %487, !mcsema_real_eip !140
  %489 = sext i8 %488 to i32, !mcsema_real_eip !140
  %490 = zext i32 %489 to i64, !mcsema_real_eip !140
  store i64 %490, i64* %XDX, !mcsema_real_eip !140
  %EDX_val.201 = load i32, i32* %EDX.160, !mcsema_real_eip !141
  %491 = sub i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %492 = xor i32 %491, %EDX_val.201, !mcsema_real_eip !141
  %493 = xor i32 %492, 124, !mcsema_real_eip !141
  %494 = and i32 %493, 16, !mcsema_real_eip !141
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !141
  store i1 %495, i1* %AF, !mcsema_real_eip !141
  %496 = trunc i32 %491 to i8, !mcsema_real_eip !141
  %497 = call i8 @llvm.ctpop.i8(i8 %496), !mcsema_real_eip !141
  %498 = trunc i8 %497 to i1, !mcsema_real_eip !141
  %499 = xor i1 %498, true, !mcsema_real_eip !141
  store i1 %499, i1* %PF, !mcsema_real_eip !141
  %500 = icmp eq i32 %491, 0, !mcsema_real_eip !141
  store i1 %500, i1* %ZF, !mcsema_real_eip !141
  %501 = lshr i32 %491, 31, !mcsema_real_eip !141
  %502 = trunc i32 %501 to i1, !mcsema_real_eip !141
  store i1 %502, i1* %SF, !mcsema_real_eip !141
  %503 = icmp ult i32 %EDX_val.201, 124, !mcsema_real_eip !141
  store i1 %503, i1* %CF, !mcsema_real_eip !141
  %504 = xor i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %505 = and i32 %504, %492, !mcsema_real_eip !141
  %506 = lshr i32 %505, 31, !mcsema_real_eip !141
  %507 = trunc i32 %506 to i1, !mcsema_real_eip !141
  store i1 %507, i1* %OF, !mcsema_real_eip !141
  %508 = icmp eq i1 %500, false, !mcsema_real_eip !142
  br i1 %508, label %block_0x283, label %block_0x26f, !mcsema_real_eip !142

block_0x26f:                                      ; preds = %block_0x249
  %509 = load i32, i32* %411, !mcsema_real_eip !143
  store i1 false, i1* %AF, !mcsema_real_eip !143
  %510 = trunc i32 %509 to i8, !mcsema_real_eip !143
  %511 = call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !143
  %512 = trunc i8 %511 to i1, !mcsema_real_eip !143
  %513 = xor i1 %512, true, !mcsema_real_eip !143
  store i1 %513, i1* %PF, !mcsema_real_eip !143
  %514 = icmp eq i32 %509, 0, !mcsema_real_eip !143
  store i1 %514, i1* %ZF, !mcsema_real_eip !143
  %515 = lshr i32 %509, 31, !mcsema_real_eip !143
  %516 = trunc i32 %515 to i1, !mcsema_real_eip !143
  store i1 %516, i1* %SF, !mcsema_real_eip !143
  store i1 false, i1* %CF, !mcsema_real_eip !143
  store i1 false, i1* %OF, !mcsema_real_eip !143
  %517 = icmp eq i1 %516, false, !mcsema_real_eip !144
  %518 = icmp eq i1 %517, false, !mcsema_real_eip !144
  %519 = or i1 %514, %518, !mcsema_real_eip !144
  br i1 %519, label %block_0x283, label %block_0x279, !mcsema_real_eip !144

block_0x279:                                      ; preds = %block_0x26f
  %520 = load i32, i32* %411, !mcsema_real_eip !145
  %521 = sub i32 %520, 11, !mcsema_real_eip !145
  %522 = xor i32 %521, %520, !mcsema_real_eip !145
  %523 = xor i32 %522, 11, !mcsema_real_eip !145
  %524 = and i32 %523, 16, !mcsema_real_eip !145
  %525 = icmp ne i32 %524, 0, !mcsema_real_eip !145
  store i1 %525, i1* %AF, !mcsema_real_eip !145
  %526 = trunc i32 %521 to i8, !mcsema_real_eip !145
  %527 = call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !145
  %528 = trunc i8 %527 to i1, !mcsema_real_eip !145
  %529 = xor i1 %528, true, !mcsema_real_eip !145
  store i1 %529, i1* %PF, !mcsema_real_eip !145
  %530 = icmp eq i32 %521, 0, !mcsema_real_eip !145
  store i1 %530, i1* %ZF, !mcsema_real_eip !145
  %531 = lshr i32 %521, 31, !mcsema_real_eip !145
  %532 = trunc i32 %531 to i1, !mcsema_real_eip !145
  store i1 %532, i1* %SF, !mcsema_real_eip !145
  %533 = icmp ult i32 %520, 11, !mcsema_real_eip !145
  store i1 %533, i1* %CF, !mcsema_real_eip !145
  %534 = xor i32 %520, 11, !mcsema_real_eip !145
  %535 = and i32 %534, %522, !mcsema_real_eip !145
  %536 = lshr i32 %535, 31, !mcsema_real_eip !145
  %537 = trunc i32 %536 to i1, !mcsema_real_eip !145
  store i1 %537, i1* %OF, !mcsema_real_eip !145
  %538 = icmp eq i1 %532, %537, !mcsema_real_eip !146
  %539 = icmp eq i1 %538, false, !mcsema_real_eip !146
  br i1 %539, label %block_0x28f, label %block_0x283, !mcsema_real_eip !146

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %540 = add i64 %RBP_val.183, -28, !mcsema_real_eip !147
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !147
  %542 = inttoptr i64 %540 to i32*, !mcsema_real_eip !147
  %543 = load i32, i32* %542, !mcsema_real_eip !147
  %544 = zext i32 %543 to i64, !mcsema_real_eip !147
  store i64 %544, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.207 = load i32, i32* %EAX.55, !mcsema_real_eip !148
  store i32 %EAX_val.207, i32* %411, !mcsema_real_eip !148
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %545 = add i64 %RBP_val.208, -32, !mcsema_real_eip !149
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !149
  %547 = inttoptr i64 %545 to i32*, !mcsema_real_eip !149
  %548 = load i32, i32* %547, !mcsema_real_eip !149
  %549 = zext i32 %548 to i64, !mcsema_real_eip !149
  store i64 %549, i64* %XAX, !mcsema_real_eip !149
  %550 = add i64 %RBP_val.208, -24, !mcsema_real_eip !150
  %551 = inttoptr i64 %550 to i64*, !mcsema_real_eip !150
  %EAX_val.211 = load i32, i32* %EAX.55, !mcsema_real_eip !150
  %552 = inttoptr i64 %550 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.211, i32* %552, !mcsema_real_eip !150
  br label %block_0x28f, !mcsema_real_eip !151

block_0x28f:                                      ; preds = %block_0x283, %block_0x279, %block_0x219
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !151
  %553 = add i64 %RBP_val.212, -28, !mcsema_real_eip !151
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !151
  %555 = inttoptr i64 %553 to i32*, !mcsema_real_eip !151
  %556 = load i32, i32* %555, !mcsema_real_eip !151
  %557 = zext i32 %556 to i64, !mcsema_real_eip !151
  store i64 %557, i64* %XAX, !mcsema_real_eip !151
  %558 = add i64 %RBP_val.212, -20, !mcsema_real_eip !152
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !152
  %EAX_val.215 = load i32, i32* %EAX.55, !mcsema_real_eip !152
  %560 = inttoptr i64 %558 to i32*, !mcsema_real_eip !152
  %561 = load i32, i32* %560, !mcsema_real_eip !152
  %562 = sub i32 %EAX_val.215, %561, !mcsema_real_eip !152
  %563 = xor i32 %562, %EAX_val.215, !mcsema_real_eip !152
  %564 = xor i32 %563, %561, !mcsema_real_eip !152
  %565 = and i32 %564, 16, !mcsema_real_eip !152
  %566 = icmp ne i32 %565, 0, !mcsema_real_eip !152
  store i1 %566, i1* %AF, !mcsema_real_eip !152
  %567 = trunc i32 %562 to i8, !mcsema_real_eip !152
  %568 = call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !152
  %569 = trunc i8 %568 to i1, !mcsema_real_eip !152
  %570 = xor i1 %569, true, !mcsema_real_eip !152
  store i1 %570, i1* %PF, !mcsema_real_eip !152
  %571 = icmp eq i32 %562, 0, !mcsema_real_eip !152
  store i1 %571, i1* %ZF, !mcsema_real_eip !152
  %572 = lshr i32 %562, 31, !mcsema_real_eip !152
  %573 = trunc i32 %572 to i1, !mcsema_real_eip !152
  store i1 %573, i1* %SF, !mcsema_real_eip !152
  %574 = icmp ult i32 %EAX_val.215, %561, !mcsema_real_eip !152
  store i1 %574, i1* %CF, !mcsema_real_eip !152
  %575 = xor i32 %EAX_val.215, %561, !mcsema_real_eip !152
  %576 = and i32 %575, %563, !mcsema_real_eip !152
  %577 = lshr i32 %576, 31, !mcsema_real_eip !152
  %578 = trunc i32 %577 to i1, !mcsema_real_eip !152
  store i1 %578, i1* %OF, !mcsema_real_eip !152
  %579 = icmp eq i1 %571, false, !mcsema_real_eip !153
  br i1 %579, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !153

block_0x29b:                                      ; preds = %block_0x28f
  %580 = add i64 %RBP_val.212, -32, !mcsema_real_eip !154
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !154
  %582 = inttoptr i64 %580 to i32*, !mcsema_real_eip !154
  %583 = load i32, i32* %582, !mcsema_real_eip !154
  %584 = zext i32 %583 to i64, !mcsema_real_eip !154
  store i64 %584, i64* %XAX, !mcsema_real_eip !154
  %585 = add i64 %RBP_val.212, -24, !mcsema_real_eip !155
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !155
  %EAX_val.219 = load i32, i32* %EAX.55, !mcsema_real_eip !155
  %587 = inttoptr i64 %585 to i32*, !mcsema_real_eip !155
  %588 = load i32, i32* %587, !mcsema_real_eip !155
  %589 = sub i32 %EAX_val.219, %588, !mcsema_real_eip !155
  %590 = xor i32 %589, %EAX_val.219, !mcsema_real_eip !155
  %591 = xor i32 %590, %588, !mcsema_real_eip !155
  %592 = and i32 %591, 16, !mcsema_real_eip !155
  %593 = icmp ne i32 %592, 0, !mcsema_real_eip !155
  store i1 %593, i1* %AF, !mcsema_real_eip !155
  %594 = trunc i32 %589 to i8, !mcsema_real_eip !155
  %595 = call i8 @llvm.ctpop.i8(i8 %594), !mcsema_real_eip !155
  %596 = trunc i8 %595 to i1, !mcsema_real_eip !155
  %597 = xor i1 %596, true, !mcsema_real_eip !155
  store i1 %597, i1* %PF, !mcsema_real_eip !155
  %598 = icmp eq i32 %589, 0, !mcsema_real_eip !155
  store i1 %598, i1* %ZF, !mcsema_real_eip !155
  %599 = lshr i32 %589, 31, !mcsema_real_eip !155
  %600 = trunc i32 %599 to i1, !mcsema_real_eip !155
  store i1 %600, i1* %SF, !mcsema_real_eip !155
  %601 = icmp ult i32 %EAX_val.219, %588, !mcsema_real_eip !155
  store i1 %601, i1* %CF, !mcsema_real_eip !155
  %602 = xor i32 %EAX_val.219, %588, !mcsema_real_eip !155
  %603 = and i32 %602, %590, !mcsema_real_eip !155
  %604 = lshr i32 %603, 31, !mcsema_real_eip !155
  %605 = trunc i32 %604 to i1, !mcsema_real_eip !155
  store i1 %605, i1* %OF, !mcsema_real_eip !155
  %606 = icmp eq i1 %598, false, !mcsema_real_eip !156
  br i1 %606, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !156

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !157
  %AL.220 = bitcast i64* %XAX to i8*, !mcsema_real_eip !158
  store i8 0, i8* %AL.220, !mcsema_real_eip !158
  %RSI_val.222 = load i64, i64* %XSI, !mcsema_real_eip !159
  %RSP_val.223 = load i64, i64* %XSP, !mcsema_real_eip !159
  %607 = sub i64 %RSP_val.223, 8, !mcsema_real_eip !159
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !159
  store i64 -2415393069852865332, i64* %608, !mcsema_real_eip !159
  store i64 %607, i64* %XSP, !mcsema_real_eip !159
  %609 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.222), !mcsema_real_eip !159
  store i64 %609, i64* %XAX, !mcsema_real_eip !159
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !160
  %610 = add i64 %RBP_val.224, -4, !mcsema_real_eip !160
  %611 = inttoptr i64 %610 to i64*, !mcsema_real_eip !160
  %612 = inttoptr i64 %610 to i32*, !mcsema_real_eip !160
  store i32 2, i32* %612, !mcsema_real_eip !160
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !161
  %613 = add i64 %RBP_val.225, -104, !mcsema_real_eip !161
  %614 = inttoptr i64 %613 to i64*, !mcsema_real_eip !161
  %EAX_val.227 = load i32, i32* %EAX.55, !mcsema_real_eip !161
  %615 = inttoptr i64 %613 to i32*, !mcsema_real_eip !161
  store i32 %EAX_val.227, i32* %615, !mcsema_real_eip !161
  br label %block_0x312, !mcsema_real_eip !162

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !163
  %616 = add i64 %RBP_val.212, -24, !mcsema_real_eip !164
  %617 = inttoptr i64 %616 to i64*, !mcsema_real_eip !164
  %618 = inttoptr i64 %616 to i32*, !mcsema_real_eip !164
  %619 = load i32, i32* %618, !mcsema_real_eip !164
  %620 = sext i32 %619 to i64, !mcsema_real_eip !164
  store i64 %620, i64* %XCX, !mcsema_real_eip !164
  %621 = sext i64 %620 to i128, !mcsema_real_eip !165
  %622 = mul i128 %621, 11, !mcsema_real_eip !165
  %623 = trunc i128 %622 to i64, !mcsema_real_eip !165
  %624 = sext i64 %623 to i128, !mcsema_real_eip !165
  %625 = icmp ne i128 %624, %622, !mcsema_real_eip !165
  %626 = icmp slt i64 %623, 0, !mcsema_real_eip !165
  store i1 %626, i1* %SF, !mcsema_real_eip !165
  store i1 %625, i1* %OF, !mcsema_real_eip !165
  store i1 %625, i1* %CF, !mcsema_real_eip !165
  store i64 %623, i64* %XCX, !mcsema_real_eip !165
  %627 = add i64 %623, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %628 = xor i64 %627, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  %629 = xor i64 %628, %623, !mcsema_real_eip !166
  %630 = and i64 %629, 16, !mcsema_real_eip !166
  %631 = icmp ne i64 %630, 0, !mcsema_real_eip !166
  store i1 %631, i1* %AF, !mcsema_real_eip !166
  %632 = lshr i64 %627, 63, !mcsema_real_eip !166
  %633 = trunc i64 %632 to i1, !mcsema_real_eip !166
  store i1 %633, i1* %SF, !mcsema_real_eip !166
  %634 = icmp eq i64 %627, 0, !mcsema_real_eip !166
  store i1 %634, i1* %ZF, !mcsema_real_eip !166
  %635 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %623, !mcsema_real_eip !166
  %636 = xor i64 %635, -1, !mcsema_real_eip !166
  %637 = and i64 %636, %628, !mcsema_real_eip !166
  %638 = lshr i64 %637, 63, !mcsema_real_eip !166
  %639 = and i64 %638, 1, !mcsema_real_eip !166
  %640 = trunc i64 %639 to i1, !mcsema_real_eip !166
  store i1 %640, i1* %OF, !mcsema_real_eip !166
  %641 = trunc i64 %627 to i8, !mcsema_real_eip !166
  %642 = call i8 @llvm.ctpop.i8(i8 %641), !mcsema_real_eip !166
  %643 = trunc i8 %642 to i1, !mcsema_real_eip !166
  %644 = xor i1 %643, true, !mcsema_real_eip !166
  store i1 %644, i1* %PF, !mcsema_real_eip !166
  %645 = icmp ult i64 %627, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !166
  store i1 %645, i1* %CF, !mcsema_real_eip !166
  store i64 %627, i64* %XAX, !mcsema_real_eip !166
  %646 = load i32, i32* %560, !mcsema_real_eip !167
  %647 = sext i32 %646 to i64, !mcsema_real_eip !167
  store i64 %647, i64* %XCX, !mcsema_real_eip !167
  %648 = add i64 %627, %647, !mcsema_real_eip !168
  %649 = inttoptr i64 %648 to i64*, !mcsema_real_eip !168
  %650 = inttoptr i64 %648 to i8*, !mcsema_real_eip !168
  store i8 88, i8* %650, !mcsema_real_eip !168
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !169
  %651 = sub i64 %RSP_val.235, 8, !mcsema_real_eip !169
  %652 = inttoptr i64 %651 to i64*, !mcsema_real_eip !169
  store i64 -4981261766360305936, i64* %652, !mcsema_real_eip !169
  store i64 %651, i64* %XSP, !mcsema_real_eip !169
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !169
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !170
  %653 = add i64 %RBP_val.236, -36, !mcsema_real_eip !170
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !170
  %655 = inttoptr i64 %653 to i32*, !mcsema_real_eip !170
  %656 = load i32, i32* %655, !mcsema_real_eip !170
  %657 = zext i32 %656 to i64, !mcsema_real_eip !170
  store i64 %657, i64* %XDX, !mcsema_real_eip !170
  %EDX_val.238 = load i32, i32* %EDX.160, !mcsema_real_eip !171
  %658 = add i32 1, %EDX_val.238, !mcsema_real_eip !171
  %659 = xor i32 %658, %EDX_val.238, !mcsema_real_eip !171
  %660 = xor i32 %659, 1, !mcsema_real_eip !171
  %661 = and i32 %660, 16, !mcsema_real_eip !171
  %662 = icmp ne i32 %661, 0, !mcsema_real_eip !171
  store i1 %662, i1* %AF, !mcsema_real_eip !171
  %663 = lshr i32 %658, 31, !mcsema_real_eip !171
  %664 = trunc i32 %663 to i1, !mcsema_real_eip !171
  store i1 %664, i1* %SF, !mcsema_real_eip !171
  %665 = icmp eq i32 %658, 0, !mcsema_real_eip !171
  store i1 %665, i1* %ZF, !mcsema_real_eip !171
  %666 = xor i32 %EDX_val.238, 1, !mcsema_real_eip !171
  %667 = xor i32 %666, -1, !mcsema_real_eip !171
  %668 = and i32 %667, %659, !mcsema_real_eip !171
  %669 = lshr i32 %668, 31, !mcsema_real_eip !171
  %670 = and i32 %669, 1, !mcsema_real_eip !171
  %671 = trunc i32 %670 to i1, !mcsema_real_eip !171
  store i1 %671, i1* %OF, !mcsema_real_eip !171
  %672 = trunc i32 %658 to i8, !mcsema_real_eip !171
  %673 = call i8 @llvm.ctpop.i8(i8 %672), !mcsema_real_eip !171
  %674 = trunc i8 %673 to i1, !mcsema_real_eip !171
  %675 = xor i1 %674, true, !mcsema_real_eip !171
  store i1 %675, i1* %PF, !mcsema_real_eip !171
  %676 = icmp ult i32 %658, %EDX_val.238, !mcsema_real_eip !171
  store i1 %676, i1* %CF, !mcsema_real_eip !171
  %677 = zext i32 %658 to i64, !mcsema_real_eip !171
  store i64 %677, i64* %XDX, !mcsema_real_eip !171
  %EDX_val.241 = load i32, i32* %EDX.160, !mcsema_real_eip !172
  store i32 %EDX_val.241, i32* %655, !mcsema_real_eip !172
  br label %block_0x114, !mcsema_real_eip !173

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !174
  %AL.242 = bitcast i64* %XAX to i8*, !mcsema_real_eip !175
  store i8 0, i8* %AL.242, !mcsema_real_eip !175
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !176
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !176
  %678 = sub i64 %RSP_val.245, 8, !mcsema_real_eip !176
  %679 = inttoptr i64 %678 to i64*, !mcsema_real_eip !176
  store i64 -2415393069852865332, i64* %679, !mcsema_real_eip !176
  store i64 %678, i64* %XSP, !mcsema_real_eip !176
  %680 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.244), !mcsema_real_eip !176
  store i64 %680, i64* %XAX, !mcsema_real_eip !176
  %RBP_val.246 = load i64, i64* %XBP, !mcsema_real_eip !177
  %681 = add i64 %RBP_val.246, -4, !mcsema_real_eip !177
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !177
  %683 = inttoptr i64 %681 to i32*, !mcsema_real_eip !177
  store i32 1, i32* %683, !mcsema_real_eip !177
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !178
  %684 = add i64 %RBP_val.247, -108, !mcsema_real_eip !178
  %685 = inttoptr i64 %684 to i64*, !mcsema_real_eip !178
  %EAX_val.249 = load i32, i32* %EAX.55, !mcsema_real_eip !178
  %686 = inttoptr i64 %684 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.249, i32* %686, !mcsema_real_eip !178
  br label %block_0x312, !mcsema_real_eip !179

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !179
  %687 = add i64 %RBP_val.250, -4, !mcsema_real_eip !179
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !179
  %689 = inttoptr i64 %687 to i32*, !mcsema_real_eip !179
  %690 = load i32, i32* %689, !mcsema_real_eip !179
  %691 = zext i32 %690 to i64, !mcsema_real_eip !179
  store i64 %691, i64* %XAX, !mcsema_real_eip !179
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !180
  %692 = add i64 112, %RSP_val.251, !mcsema_real_eip !180
  %693 = xor i64 %692, %RSP_val.251, !mcsema_real_eip !180
  %694 = xor i64 %693, 112, !mcsema_real_eip !180
  %695 = and i64 %694, 16, !mcsema_real_eip !180
  %696 = icmp ne i64 %695, 0, !mcsema_real_eip !180
  store i1 %696, i1* %AF, !mcsema_real_eip !180
  %697 = lshr i64 %692, 63, !mcsema_real_eip !180
  %698 = trunc i64 %697 to i1, !mcsema_real_eip !180
  store i1 %698, i1* %SF, !mcsema_real_eip !180
  %699 = icmp eq i64 %692, 0, !mcsema_real_eip !180
  store i1 %699, i1* %ZF, !mcsema_real_eip !180
  %700 = xor i64 %RSP_val.251, 112, !mcsema_real_eip !180
  %701 = xor i64 %700, -1, !mcsema_real_eip !180
  %702 = and i64 %701, %693, !mcsema_real_eip !180
  %703 = lshr i64 %702, 63, !mcsema_real_eip !180
  %704 = and i64 %703, 1, !mcsema_real_eip !180
  %705 = trunc i64 %704 to i1, !mcsema_real_eip !180
  store i1 %705, i1* %OF, !mcsema_real_eip !180
  %706 = trunc i64 %692 to i8, !mcsema_real_eip !180
  %707 = call i8 @llvm.ctpop.i8(i8 %706), !mcsema_real_eip !180
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !180
  %709 = xor i1 %708, true, !mcsema_real_eip !180
  store i1 %709, i1* %PF, !mcsema_real_eip !180
  %710 = icmp ult i64 %692, %RSP_val.251, !mcsema_real_eip !180
  store i1 %710, i1* %CF, !mcsema_real_eip !180
  store i64 %692, i64* %XSP, !mcsema_real_eip !180
  %711 = inttoptr i64 %692 to i64*, !mcsema_real_eip !181
  %712 = load i64, i64* %711, !mcsema_real_eip !181
  store i64 %712, i64* %XBP, !mcsema_real_eip !181
  %713 = add i64 %692, 8, !mcsema_real_eip !181
  store i64 %713, i64* %XSP, !mcsema_real_eip !181
  %714 = add i64 %713, 8, !mcsema_real_eip !182
  %715 = inttoptr i64 %713 to i64*, !mcsema_real_eip !182
  %716 = load i64, i64* %715, !mcsema_real_eip !182
  store i64 %716, i64* %XIP, !mcsema_real_eip !182
  store i64 %714, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182

; <label>:717:                                    ; preds = %block_0x148
  store i64 %189, i64* %XIP, !mcsema_real_eip !79
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !79
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
