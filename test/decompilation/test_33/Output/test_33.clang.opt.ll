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
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -8, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.7, -12, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %25, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.10, -8, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  %29 = load i32, i32* %28, !mcsema_real_eip !7
  store i1 false, i1* %AF, !mcsema_real_eip !7
  %30 = trunc i32 %29 to i8, !mcsema_real_eip !7
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !7
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !7
  %33 = xor i1 %32, true, !mcsema_real_eip !7
  store i1 %33, i1* %PF, !mcsema_real_eip !7
  %34 = icmp eq i32 %29, 0, !mcsema_real_eip !7
  store i1 %34, i1* %ZF, !mcsema_real_eip !7
  %35 = lshr i32 %29, 31, !mcsema_real_eip !7
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !7
  store i1 %36, i1* %SF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %37 = icmp eq i1 %34, false, !mcsema_real_eip !8
  br i1 %37, label %block_0x26, label %block_0x18, !mcsema_real_eip !8

block_0x18:                                       ; preds = %block_0x0
  %38 = add i64 %RBP_val.10, -12, !mcsema_real_eip !9
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !9
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !9
  %41 = load i32, i32* %40, !mcsema_real_eip !9
  %42 = zext i32 %41 to i64, !mcsema_real_eip !9
  store i64 %42, i64* %XAX, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !10
  %43 = add i32 1, %EAX_val.13, !mcsema_real_eip !10
  %44 = xor i32 %43, %EAX_val.13, !mcsema_real_eip !10
  %45 = xor i32 %44, 1, !mcsema_real_eip !10
  %46 = and i32 %45, 16, !mcsema_real_eip !10
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !10
  store i1 %47, i1* %AF, !mcsema_real_eip !10
  %48 = lshr i32 %43, 31, !mcsema_real_eip !10
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !10
  store i1 %49, i1* %SF, !mcsema_real_eip !10
  %50 = icmp eq i32 %43, 0, !mcsema_real_eip !10
  store i1 %50, i1* %ZF, !mcsema_real_eip !10
  %51 = xor i32 %EAX_val.13, 1, !mcsema_real_eip !10
  %52 = xor i32 %51, -1, !mcsema_real_eip !10
  %53 = and i32 %52, %44, !mcsema_real_eip !10
  %54 = lshr i32 %53, 31, !mcsema_real_eip !10
  %55 = and i32 %54, 1, !mcsema_real_eip !10
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !10
  store i1 %56, i1* %OF, !mcsema_real_eip !10
  %57 = trunc i32 %43 to i8, !mcsema_real_eip !10
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !10
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !10
  %60 = xor i1 %59, true, !mcsema_real_eip !10
  store i1 %60, i1* %PF, !mcsema_real_eip !10
  %61 = icmp ult i32 %43, %EAX_val.13, !mcsema_real_eip !10
  store i1 %61, i1* %CF, !mcsema_real_eip !10
  %62 = zext i32 %43 to i64, !mcsema_real_eip !10
  store i64 %62, i64* %XAX, !mcsema_real_eip !10
  %63 = add i64 %RBP_val.10, -4, !mcsema_real_eip !11
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !11
  %EAX_val.16 = load i32, i32* %EAX.12, !mcsema_real_eip !11
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !11
  store i32 %EAX_val.16, i32* %65, !mcsema_real_eip !11
  br label %block_0x70, !mcsema_real_eip !12

block_0x26:                                       ; preds = %block_0x0
  %66 = add i64 %RBP_val.10, -12, !mcsema_real_eip !13
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !13
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !13
  %69 = load i32, i32* %68, !mcsema_real_eip !13
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %70 = trunc i32 %69 to i8, !mcsema_real_eip !13
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !13
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !13
  %73 = xor i1 %72, true, !mcsema_real_eip !13
  store i1 %73, i1* %PF, !mcsema_real_eip !13
  %74 = icmp eq i32 %69, 0, !mcsema_real_eip !13
  store i1 %74, i1* %ZF, !mcsema_real_eip !13
  %75 = lshr i32 %69, 31, !mcsema_real_eip !13
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !13
  store i1 %76, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  %77 = icmp eq i1 %74, false, !mcsema_real_eip !14
  br i1 %77, label %block_0x4a, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, !mcsema_real_eip !15
  %78 = load i32, i32* %28, !mcsema_real_eip !16
  %79 = zext i32 %78 to i64, !mcsema_real_eip !16
  store i64 %79, i64* %XAX, !mcsema_real_eip !16
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !17
  %80 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %81 = xor i32 %80, %EAX_val.20, !mcsema_real_eip !17
  %82 = xor i32 %81, 1, !mcsema_real_eip !17
  %83 = and i32 %82, 16, !mcsema_real_eip !17
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !17
  store i1 %84, i1* %AF, !mcsema_real_eip !17
  %85 = trunc i32 %80 to i8, !mcsema_real_eip !17
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !17
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !17
  %88 = xor i1 %87, true, !mcsema_real_eip !17
  store i1 %88, i1* %PF, !mcsema_real_eip !17
  %89 = icmp eq i32 %80, 0, !mcsema_real_eip !17
  store i1 %89, i1* %ZF, !mcsema_real_eip !17
  %90 = lshr i32 %80, 31, !mcsema_real_eip !17
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !17
  store i1 %91, i1* %SF, !mcsema_real_eip !17
  %92 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !17
  store i1 %92, i1* %CF, !mcsema_real_eip !17
  %93 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !17
  %94 = and i32 %93, %81, !mcsema_real_eip !17
  %95 = lshr i32 %94, 31, !mcsema_real_eip !17
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !17
  store i1 %96, i1* %OF, !mcsema_real_eip !17
  %97 = zext i32 %80 to i64, !mcsema_real_eip !17
  store i64 %97, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.22 = load i32, i32* %EAX.19, !mcsema_real_eip !18
  %98 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !18
  store i64 %98, i64* %XDI, !mcsema_real_eip !18
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !19
  %99 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !19
  store i64 %99, i64* %XSP, !mcsema_real_eip !19
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !19
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !20
  %101 = add i64 %RBP_val.24, -4, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !20
  %EAX_val.26 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.26, i32* %103, !mcsema_real_eip !20
  br label %block_0x70, !mcsema_real_eip !21

block_0x4a:                                       ; preds = %block_0x26
  %104 = load i32, i32* %28, !mcsema_real_eip !22
  %105 = zext i32 %104 to i64, !mcsema_real_eip !22
  store i64 %105, i64* %XAX, !mcsema_real_eip !22
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !23
  %106 = sub i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %107 = xor i32 %106, %EAX_val.29, !mcsema_real_eip !23
  %108 = xor i32 %107, 1, !mcsema_real_eip !23
  %109 = and i32 %108, 16, !mcsema_real_eip !23
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !23
  store i1 %110, i1* %AF, !mcsema_real_eip !23
  %111 = trunc i32 %106 to i8, !mcsema_real_eip !23
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !23
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !23
  %114 = xor i1 %113, true, !mcsema_real_eip !23
  store i1 %114, i1* %PF, !mcsema_real_eip !23
  %115 = icmp eq i32 %106, 0, !mcsema_real_eip !23
  store i1 %115, i1* %ZF, !mcsema_real_eip !23
  %116 = lshr i32 %106, 31, !mcsema_real_eip !23
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !23
  store i1 %117, i1* %SF, !mcsema_real_eip !23
  %118 = icmp ult i32 %EAX_val.29, 1, !mcsema_real_eip !23
  store i1 %118, i1* %CF, !mcsema_real_eip !23
  %119 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !23
  %120 = and i32 %119, %107, !mcsema_real_eip !23
  %121 = lshr i32 %120, 31, !mcsema_real_eip !23
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !23
  store i1 %122, i1* %OF, !mcsema_real_eip !23
  %123 = zext i32 %106 to i64, !mcsema_real_eip !23
  store i64 %123, i64* %XAX, !mcsema_real_eip !23
  %124 = load i32, i32* %28, !mcsema_real_eip !24
  %125 = zext i32 %124 to i64, !mcsema_real_eip !24
  store i64 %125, i64* %XDI, !mcsema_real_eip !24
  %126 = load i32, i32* %68, !mcsema_real_eip !25
  %127 = zext i32 %126 to i64, !mcsema_real_eip !25
  store i64 %127, i64* %XCX, !mcsema_real_eip !25
  %ECX.32 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.33 = load i32, i32* %ECX.32, !mcsema_real_eip !26
  %128 = sub i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %129 = xor i32 %128, %ECX_val.33, !mcsema_real_eip !26
  %130 = xor i32 %129, 1, !mcsema_real_eip !26
  %131 = and i32 %130, 16, !mcsema_real_eip !26
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !26
  store i1 %132, i1* %AF, !mcsema_real_eip !26
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !26
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !26
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !26
  %136 = xor i1 %135, true, !mcsema_real_eip !26
  store i1 %136, i1* %PF, !mcsema_real_eip !26
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !26
  store i1 %137, i1* %ZF, !mcsema_real_eip !26
  %138 = lshr i32 %128, 31, !mcsema_real_eip !26
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !26
  store i1 %139, i1* %SF, !mcsema_real_eip !26
  %140 = icmp ult i32 %ECX_val.33, 1, !mcsema_real_eip !26
  store i1 %140, i1* %CF, !mcsema_real_eip !26
  %141 = xor i32 %ECX_val.33, 1, !mcsema_real_eip !26
  %142 = and i32 %141, %129, !mcsema_real_eip !26
  %143 = lshr i32 %142, 31, !mcsema_real_eip !26
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !26
  store i1 %144, i1* %OF, !mcsema_real_eip !26
  %145 = zext i32 %128 to i64, !mcsema_real_eip !26
  store i64 %145, i64* %XCX, !mcsema_real_eip !26
  %ECX_val.35 = load i32, i32* %ECX.32, !mcsema_real_eip !27
  %146 = zext i32 %ECX_val.35 to i64, !mcsema_real_eip !27
  store i64 %146, i64* %XSI, !mcsema_real_eip !27
  %147 = add i64 %RBP_val.10, -16, !mcsema_real_eip !28
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !28
  %EAX_val.38 = load i32, i32* %EAX.28, !mcsema_real_eip !28
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %149, !mcsema_real_eip !28
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !29
  %150 = sub i64 %RSP_val.39, 8, !mcsema_real_eip !29
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %151, !mcsema_real_eip !29
  store i64 %150, i64* %XSP, !mcsema_real_eip !29
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !29
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !30
  %152 = add i64 %RBP_val.40, -16, !mcsema_real_eip !30
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !30
  %154 = inttoptr i64 %152 to i32*, !mcsema_real_eip !30
  %155 = load i32, i32* %154, !mcsema_real_eip !30
  %156 = zext i32 %155 to i64, !mcsema_real_eip !30
  store i64 %156, i64* %XDI, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.28, !mcsema_real_eip !31
  %157 = zext i32 %EAX_val.42 to i64, !mcsema_real_eip !31
  store i64 %157, i64* %XSI, !mcsema_real_eip !31
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !32
  %158 = sub i64 %RSP_val.43, 8, !mcsema_real_eip !32
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %159, !mcsema_real_eip !32
  store i64 %158, i64* %XSP, !mcsema_real_eip !32
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !32
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !33
  %160 = add i64 %RBP_val.44, -4, !mcsema_real_eip !33
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !33
  %EAX_val.46 = load i32, i32* %EAX.28, !mcsema_real_eip !33
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.46, i32* %162, !mcsema_real_eip !33
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !34
  %163 = add i64 %RBP_val.47, -4, !mcsema_real_eip !34
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !34
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !34
  %166 = load i32, i32* %165, !mcsema_real_eip !34
  %167 = zext i32 %166 to i64, !mcsema_real_eip !34
  store i64 %167, i64* %XAX, !mcsema_real_eip !34
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !35
  %168 = add i64 16, %RSP_val.48, !mcsema_real_eip !35
  %169 = xor i64 %168, %RSP_val.48, !mcsema_real_eip !35
  %170 = xor i64 %169, 16, !mcsema_real_eip !35
  %171 = and i64 %170, 16, !mcsema_real_eip !35
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !35
  store i1 %172, i1* %AF, !mcsema_real_eip !35
  %173 = lshr i64 %168, 63, !mcsema_real_eip !35
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !35
  store i1 %174, i1* %SF, !mcsema_real_eip !35
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !35
  store i1 %175, i1* %ZF, !mcsema_real_eip !35
  %176 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !35
  %177 = xor i64 %176, -1, !mcsema_real_eip !35
  %178 = and i64 %177, %169, !mcsema_real_eip !35
  %179 = lshr i64 %178, 63, !mcsema_real_eip !35
  %180 = and i64 %179, 1, !mcsema_real_eip !35
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !35
  store i1 %181, i1* %OF, !mcsema_real_eip !35
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !35
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !35
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !35
  %185 = xor i1 %184, true, !mcsema_real_eip !35
  store i1 %185, i1* %PF, !mcsema_real_eip !35
  %186 = icmp ult i64 %168, %RSP_val.48, !mcsema_real_eip !35
  store i1 %186, i1* %CF, !mcsema_real_eip !35
  store i64 %168, i64* %XSP, !mcsema_real_eip !35
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %187, !mcsema_real_eip !36
  store i64 %188, i64* %XBP, !mcsema_real_eip !36
  %189 = add i64 %168, 8, !mcsema_real_eip !36
  store i64 %189, i64* %XSP, !mcsema_real_eip !36
  %190 = add i64 %189, 8, !mcsema_real_eip !37
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !37
  %192 = load i64, i64* %191, !mcsema_real_eip !37
  store i64 %192, i64* %XIP, !mcsema_real_eip !37
  store i64 %190, i64* %XSP, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !38
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !38
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !38
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !38
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !38
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !38
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  br label %block_0x80, !mcsema_real_eip !38

block_0x80:                                       ; preds = %entry
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !38
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !38
  store i64 %RBP_val.51, i64* %2, !mcsema_real_eip !38
  store i64 %1, i64* %XSP, !mcsema_real_eip !38
  store i64 %1, i64* %XBP, !mcsema_real_eip !39
  %3 = sub i64 %1, 32, !mcsema_real_eip !40
  %4 = xor i64 %3, %1, !mcsema_real_eip !40
  %5 = xor i64 %4, 32, !mcsema_real_eip !40
  %6 = and i64 %5, 16, !mcsema_real_eip !40
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !40
  store i1 %7, i1* %AF, !mcsema_real_eip !40
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !40
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !40
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !40
  %11 = xor i1 %10, true, !mcsema_real_eip !40
  store i1 %11, i1* %PF, !mcsema_real_eip !40
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !40
  store i1 %12, i1* %ZF, !mcsema_real_eip !40
  %13 = lshr i64 %3, 63, !mcsema_real_eip !40
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !40
  store i1 %14, i1* %SF, !mcsema_real_eip !40
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !40
  store i1 %15, i1* %CF, !mcsema_real_eip !40
  %16 = xor i64 %1, 32, !mcsema_real_eip !40
  %17 = and i64 %16, %4, !mcsema_real_eip !40
  %18 = lshr i64 %17, 63, !mcsema_real_eip !40
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !40
  store i1 %19, i1* %OF, !mcsema_real_eip !40
  store i64 %3, i64* %XSP, !mcsema_real_eip !40
  %20 = add i64 %1, -4, !mcsema_real_eip !41
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !41
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !41
  store i32 0, i32* %22, !mcsema_real_eip !41
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !42
  %23 = add i64 %RBP_val.56, -8, !mcsema_real_eip !42
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !42
  %EDI.57 = bitcast i64* %XDI to i32*, !mcsema_real_eip !42
  %EDI_val.58 = load i32, i32* %EDI.57, !mcsema_real_eip !42
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !42
  store i32 %EDI_val.58, i32* %25, !mcsema_real_eip !42
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !43
  %26 = add i64 %RBP_val.59, -16, !mcsema_real_eip !43
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !43
  %RSI_val.60 = load i64, i64* %XSI, !mcsema_real_eip !43
  store i64 %RSI_val.60, i64* %27, !mcsema_real_eip !43
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !44
  %28 = add i64 %RBP_val.61, -8, !mcsema_real_eip !44
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !44
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !44
  %31 = load i32, i32* %30, !mcsema_real_eip !44
  %32 = sub i32 %31, 2, !mcsema_real_eip !44
  %33 = xor i32 %32, %31, !mcsema_real_eip !44
  %34 = xor i32 %33, 2, !mcsema_real_eip !44
  %35 = and i32 %34, 16, !mcsema_real_eip !44
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !44
  store i1 %36, i1* %AF, !mcsema_real_eip !44
  %37 = trunc i32 %32 to i8, !mcsema_real_eip !44
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !44
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !44
  %40 = xor i1 %39, true, !mcsema_real_eip !44
  store i1 %40, i1* %PF, !mcsema_real_eip !44
  %41 = icmp eq i32 %32, 0, !mcsema_real_eip !44
  store i1 %41, i1* %ZF, !mcsema_real_eip !44
  %42 = lshr i32 %32, 31, !mcsema_real_eip !44
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !44
  store i1 %43, i1* %SF, !mcsema_real_eip !44
  %44 = icmp ult i32 %31, 2, !mcsema_real_eip !44
  store i1 %44, i1* %CF, !mcsema_real_eip !44
  %45 = xor i32 %31, 2, !mcsema_real_eip !44
  %46 = and i32 %45, %33, !mcsema_real_eip !44
  %47 = lshr i32 %46, 31, !mcsema_real_eip !44
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !44
  store i1 %48, i1* %OF, !mcsema_real_eip !44
  %49 = icmp eq i1 %41, false, !mcsema_real_eip !45
  br i1 %49, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !45

block_0xa0:                                       ; preds = %block_0x80
  %50 = add i64 %RBP_val.61, -16, !mcsema_real_eip !46
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !46
  %52 = load i64, i64* %51, !mcsema_real_eip !46
  store i64 %52, i64* %XAX, !mcsema_real_eip !46
  %53 = add i64 %52, 8, !mcsema_real_eip !47
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !47
  %55 = load i64, i64* %54, !mcsema_real_eip !47
  store i64 %55, i64* %XDI, !mcsema_real_eip !47
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !48
  %56 = sub i64 %RSP_val.65, 8, !mcsema_real_eip !48
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !48
  store i64 -2415393069852865332, i64* %57, !mcsema_real_eip !48
  store i64 %56, i64* %XSP, !mcsema_real_eip !48
  %58 = call x86_64_sysvcc i64 @_atoi(i64 %55), !mcsema_real_eip !48
  store i64 %58, i64* %XAX, !mcsema_real_eip !48
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !49
  %59 = add i64 %RBP_val.66, -24, !mcsema_real_eip !49
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !49
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !49
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.68, i32* %61, !mcsema_real_eip !49
  br label %block_0xc2, !mcsema_real_eip !50

block_0xb5:                                       ; preds = %block_0x80
  store i64 8, i64* %XAX, !mcsema_real_eip !51
  %62 = add i64 %RBP_val.61, -24, !mcsema_real_eip !52
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !52
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !52
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %64, !mcsema_real_eip !52
  br label %block_0xc2, !mcsema_real_eip !53

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !54
  %65 = add i64 %RBP_val.72, -24, !mcsema_real_eip !54
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !54
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !54
  %68 = load i32, i32* %67, !mcsema_real_eip !54
  %69 = zext i32 %68 to i64, !mcsema_real_eip !54
  store i64 %69, i64* %XAX, !mcsema_real_eip !54
  store i64 3, i64* %XDI, !mcsema_real_eip !55
  %70 = add i64 %RBP_val.72, -20, !mcsema_real_eip !56
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !56
  %EAX.74 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.75 = load i32, i32* %EAX.74, !mcsema_real_eip !56
  %72 = inttoptr i64 %70 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.75, i32* %72, !mcsema_real_eip !56
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !57
  %73 = add i64 %RBP_val.76, -20, !mcsema_real_eip !57
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !57
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !57
  %76 = load i32, i32* %75, !mcsema_real_eip !57
  %77 = zext i32 %76 to i64, !mcsema_real_eip !57
  store i64 %77, i64* %XSI, !mcsema_real_eip !57
  %78 = load i32, i32* %75, !mcsema_real_eip !58
  %79 = zext i32 %78 to i64, !mcsema_real_eip !58
  store i64 %79, i64* %XAX, !mcsema_real_eip !58
  %80 = add i64 %RBP_val.76, -28, !mcsema_real_eip !59
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !59
  %ESI.79 = bitcast i64* %XSI to i32*, !mcsema_real_eip !59
  %ESI_val.80 = load i32, i32* %ESI.79, !mcsema_real_eip !59
  %82 = inttoptr i64 %80 to i32*, !mcsema_real_eip !59
  store i32 %ESI_val.80, i32* %82, !mcsema_real_eip !59
  %EAX_val.82 = load i32, i32* %EAX.74, !mcsema_real_eip !60
  %83 = zext i32 %EAX_val.82 to i64, !mcsema_real_eip !60
  store i64 %83, i64* %XSI, !mcsema_real_eip !60
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !61
  %84 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !61
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !61
  store i64 -4981261766360305936, i64* %85, !mcsema_real_eip !61
  store i64 %84, i64* %XSP, !mcsema_real_eip !61
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !61
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !62
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !63
  %86 = add i64 %RBP_val.84, -28, !mcsema_real_eip !63
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !63
  %88 = inttoptr i64 %86 to i32*, !mcsema_real_eip !63
  %89 = load i32, i32* %88, !mcsema_real_eip !63
  %90 = zext i32 %89 to i64, !mcsema_real_eip !63
  store i64 %90, i64* %XSI, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.74, !mcsema_real_eip !64
  %91 = zext i32 %EAX_val.86 to i64, !mcsema_real_eip !64
  store i64 %91, i64* %XDX, !mcsema_real_eip !64
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !65
  store i8 0, i8* %AL.87, !mcsema_real_eip !65
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !66
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !66
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !66
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !66
  %92 = inttoptr i64 %RSP_val.94 to i64*, !mcsema_real_eip !66
  %93 = load i64, i64* %92, !mcsema_real_eip !66
  %94 = add i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !66
  %96 = load i64, i64* %95, !mcsema_real_eip !66
  %97 = add i64 %94, 8, !mcsema_real_eip !66
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !66
  %99 = load i64, i64* %98, !mcsema_real_eip !66
  %100 = add i64 %97, 8, !mcsema_real_eip !66
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !66
  %102 = load i64, i64* %101, !mcsema_real_eip !66
  %103 = add i64 %100, 8, !mcsema_real_eip !66
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !66
  %105 = load i64, i64* %104, !mcsema_real_eip !66
  %106 = add i64 %103, 8, !mcsema_real_eip !66
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !66
  %108 = load i64, i64* %107, !mcsema_real_eip !66
  %109 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !66
  store i64 -2415393069852865332, i64* %110, !mcsema_real_eip !66
  store i64 %109, i64* %XSP, !mcsema_real_eip !66
  %111 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %90, i64 %91, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %93, i64 %96, i64 %99, i64 %102, i64 %105, i64 %108), !mcsema_real_eip !66
  store i64 %111, i64* %XAX, !mcsema_real_eip !66
  %EDX.96 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.97 = load i32, i32* %EDX.96, !mcsema_real_eip !67
  store i1 false, i1* %CF, !mcsema_real_eip !67
  store i1 false, i1* %OF, !mcsema_real_eip !67
  store i1 false, i1* %SF, !mcsema_real_eip !67
  store i1 true, i1* %ZF, !mcsema_real_eip !67
  store i1 true, i1* %PF, !mcsema_real_eip !67
  store i1 undef, i1* %AF, !mcsema_real_eip !67
  store i64 0, i64* %XDX, !mcsema_real_eip !67
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !68
  %112 = add i64 %RBP_val.100, -32, !mcsema_real_eip !68
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !68
  %EAX_val.102 = load i32, i32* %EAX.74, !mcsema_real_eip !68
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.102, i32* %114, !mcsema_real_eip !68
  %EDX_val.104 = load i32, i32* %EDX.96, !mcsema_real_eip !69
  %115 = zext i32 %EDX_val.104 to i64, !mcsema_real_eip !69
  store i64 %115, i64* %XAX, !mcsema_real_eip !69
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %116 = add i64 32, %RSP_val.105, !mcsema_real_eip !70
  %117 = xor i64 %116, %RSP_val.105, !mcsema_real_eip !70
  %118 = xor i64 %117, 32, !mcsema_real_eip !70
  %119 = and i64 %118, 16, !mcsema_real_eip !70
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !70
  store i1 %120, i1* %AF, !mcsema_real_eip !70
  %121 = lshr i64 %116, 63, !mcsema_real_eip !70
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !70
  store i1 %122, i1* %SF, !mcsema_real_eip !70
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !70
  store i1 %123, i1* %ZF, !mcsema_real_eip !70
  %124 = xor i64 %RSP_val.105, 32, !mcsema_real_eip !70
  %125 = xor i64 %124, -1, !mcsema_real_eip !70
  %126 = and i64 %125, %117, !mcsema_real_eip !70
  %127 = lshr i64 %126, 63, !mcsema_real_eip !70
  %128 = and i64 %127, 1, !mcsema_real_eip !70
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !70
  store i1 %129, i1* %OF, !mcsema_real_eip !70
  %130 = trunc i64 %116 to i8, !mcsema_real_eip !70
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !70
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !70
  %133 = xor i1 %132, true, !mcsema_real_eip !70
  store i1 %133, i1* %PF, !mcsema_real_eip !70
  %134 = icmp ult i64 %116, %RSP_val.105, !mcsema_real_eip !70
  store i1 %134, i1* %CF, !mcsema_real_eip !70
  store i64 %116, i64* %XSP, !mcsema_real_eip !70
  %135 = inttoptr i64 %116 to i64*, !mcsema_real_eip !71
  %136 = load i64, i64* %135, !mcsema_real_eip !71
  store i64 %136, i64* %XBP, !mcsema_real_eip !71
  %137 = add i64 %116, 8, !mcsema_real_eip !71
  store i64 %137, i64* %XSP, !mcsema_real_eip !71
  %138 = add i64 %137, 8, !mcsema_real_eip !72
  %139 = inttoptr i64 %137 to i64*, !mcsema_real_eip !72
  %140 = load i64, i64* %139, !mcsema_real_eip !72
  store i64 %140, i64* %XIP, !mcsema_real_eip !72
  store i64 %138, i64* %XSP, !mcsema_real_eip !72
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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 24}
!10 = !{i64 27}
!11 = !{i64 30}
!12 = !{i64 33}
!13 = !{i64 38}
!14 = !{i64 42}
!15 = !{i64 48}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 59}
!19 = !{i64 61}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 74}
!23 = !{i64 77}
!24 = !{i64 80}
!25 = !{i64 83}
!26 = !{i64 86}
!27 = !{i64 89}
!28 = !{i64 91}
!29 = !{i64 94}
!30 = !{i64 99}
!31 = !{i64 102}
!32 = !{i64 104}
!33 = !{i64 109}
!34 = !{i64 112}
!35 = !{i64 115}
!36 = !{i64 119}
!37 = !{i64 120}
!38 = !{i64 128}
!39 = !{i64 129}
!40 = !{i64 132}
!41 = !{i64 136}
!42 = !{i64 143}
!43 = !{i64 146}
!44 = !{i64 150}
!45 = !{i64 154}
!46 = !{i64 160}
!47 = !{i64 164}
!48 = !{i64 168}
!49 = !{i64 173}
!50 = !{i64 176}
!51 = !{i64 181}
!52 = !{i64 186}
!53 = !{i64 189}
!54 = !{i64 194}
!55 = !{i64 197}
!56 = !{i64 202}
!57 = !{i64 205}
!58 = !{i64 208}
!59 = !{i64 211}
!60 = !{i64 214}
!61 = !{i64 216}
!62 = !{i64 221}
!63 = !{i64 231}
!64 = !{i64 234}
!65 = !{i64 236}
!66 = !{i64 238}
!67 = !{i64 243}
!68 = !{i64 245}
!69 = !{i64 248}
!70 = !{i64 250}
!71 = !{i64 254}
!72 = !{i64 255}
