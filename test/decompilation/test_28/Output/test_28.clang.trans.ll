; ModuleID = 'Output/test_28.clang.trans.bc'
source_filename = "Output/test_28.clang.bc"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x80 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %20 = add i64 %1, -4, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %25, !mcsema_real_eip !6
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %block_0x0
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %26 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !7
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  %29 = load i32, i32* %28, !mcsema_real_eip !7
  %30 = zext i32 %29 to i64, !mcsema_real_eip !7
  store i64 %30, i64* %XAX, !mcsema_real_eip !7
  %31 = add i64 %RBP_val.8, -4, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !8
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !8
  %34 = load i32, i32* %33, !mcsema_real_eip !8
  %35 = sub i32 %EAX_val.11, %34, !mcsema_real_eip !8
  %36 = xor i32 %35, %EAX_val.11, !mcsema_real_eip !8
  %37 = xor i32 %36, %34, !mcsema_real_eip !8
  %38 = and i32 %37, 16, !mcsema_real_eip !8
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !8
  store i1 %39, i1* %AF, !mcsema_real_eip !8
  %40 = trunc i32 %35 to i8, !mcsema_real_eip !8
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !8
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !8
  %43 = xor i1 %42, true, !mcsema_real_eip !8
  store i1 %43, i1* %PF, !mcsema_real_eip !8
  %44 = icmp eq i32 %35, 0, !mcsema_real_eip !8
  store i1 %44, i1* %ZF, !mcsema_real_eip !8
  %45 = lshr i32 %35, 31, !mcsema_real_eip !8
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !8
  store i1 %46, i1* %SF, !mcsema_real_eip !8
  %47 = icmp ult i32 %EAX_val.11, %34, !mcsema_real_eip !8
  store i1 %47, i1* %CF, !mcsema_real_eip !8
  %48 = xor i32 %EAX_val.11, %34, !mcsema_real_eip !8
  %49 = and i32 %48, %36, !mcsema_real_eip !8
  %50 = lshr i32 %49, 31, !mcsema_real_eip !8
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !8
  store i1 %51, i1* %OF, !mcsema_real_eip !8
  %52 = icmp eq i1 %46, %51, !mcsema_real_eip !9
  br i1 %52, label %block_0x40, label %block_0x1e, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, !mcsema_real_eip !10
  %AL.12 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 0, i8* %AL.12, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, !mcsema_real_eip !12
  %RSP_val.19 = load i64, i64* %XSP, !mcsema_real_eip !12
  %53 = inttoptr i64 %RSP_val.19 to i64*, !mcsema_real_eip !12
  %54 = load i64, i64* %53, !mcsema_real_eip !12
  %55 = add i64 %RSP_val.19, 8, !mcsema_real_eip !12
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !12
  %57 = load i64, i64* %56, !mcsema_real_eip !12
  %58 = add i64 %55, 8, !mcsema_real_eip !12
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !12
  %60 = load i64, i64* %59, !mcsema_real_eip !12
  %61 = add i64 %58, 8, !mcsema_real_eip !12
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !12
  %63 = load i64, i64* %62, !mcsema_real_eip !12
  %64 = add i64 %61, 8, !mcsema_real_eip !12
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !12
  %66 = load i64, i64* %65, !mcsema_real_eip !12
  %67 = add i64 %64, 8, !mcsema_real_eip !12
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !12
  %69 = load i64, i64* %68, !mcsema_real_eip !12
  %70 = add i64 %67, 8, !mcsema_real_eip !12
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !12
  %72 = load i64, i64* %71, !mcsema_real_eip !12
  %73 = add i64 %70, 8, !mcsema_real_eip !12
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !12
  %75 = load i64, i64* %74, !mcsema_real_eip !12
  %76 = add i64 %73, 8, !mcsema_real_eip !12
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !12
  %78 = load i64, i64* %77, !mcsema_real_eip !12
  %79 = add i64 %76, 8, !mcsema_real_eip !12
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !12
  %81 = load i64, i64* %80, !mcsema_real_eip !12
  %82 = sub i64 %RSP_val.19, 8, !mcsema_real_eip !12
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %83, !mcsema_real_eip !12
  store i64 %82, i64* %XSP, !mcsema_real_eip !12
  %84 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81), !mcsema_real_eip !12
  store i64 %84, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %85 = add i64 %RBP_val.21, -12, !mcsema_real_eip !13
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.10, !mcsema_real_eip !13
  %87 = inttoptr i64 %85 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %87, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %88 = add i64 %RBP_val.24, -8, !mcsema_real_eip !14
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !14
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !14
  %91 = load i32, i32* %90, !mcsema_real_eip !14
  %92 = zext i32 %91 to i64, !mcsema_real_eip !14
  store i64 %92, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.26 = load i32, i32* %EAX.10, !mcsema_real_eip !15
  %93 = add i32 1, %EAX_val.26, !mcsema_real_eip !15
  %94 = xor i32 %93, %EAX_val.26, !mcsema_real_eip !15
  %95 = xor i32 %94, 1, !mcsema_real_eip !15
  %96 = and i32 %95, 16, !mcsema_real_eip !15
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !15
  store i1 %97, i1* %AF, !mcsema_real_eip !15
  %98 = lshr i32 %93, 31, !mcsema_real_eip !15
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !15
  store i1 %99, i1* %SF, !mcsema_real_eip !15
  %100 = icmp eq i32 %93, 0, !mcsema_real_eip !15
  store i1 %100, i1* %ZF, !mcsema_real_eip !15
  %101 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !15
  %102 = xor i32 %101, -1, !mcsema_real_eip !15
  %103 = and i32 %102, %94, !mcsema_real_eip !15
  %104 = lshr i32 %103, 31, !mcsema_real_eip !15
  %105 = and i32 %104, 1, !mcsema_real_eip !15
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !15
  store i1 %106, i1* %OF, !mcsema_real_eip !15
  %107 = trunc i32 %93 to i8, !mcsema_real_eip !15
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !15
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !15
  %110 = xor i1 %109, true, !mcsema_real_eip !15
  store i1 %110, i1* %PF, !mcsema_real_eip !15
  %111 = icmp ult i32 %93, %EAX_val.26, !mcsema_real_eip !15
  store i1 %111, i1* %CF, !mcsema_real_eip !15
  %112 = zext i32 %93 to i64, !mcsema_real_eip !15
  store i64 %112, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.10, !mcsema_real_eip !16
  store i32 %EAX_val.29, i32* %90, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %113 = add i64 16, %RSP_val.30, !mcsema_real_eip !18
  %114 = xor i64 %113, %RSP_val.30, !mcsema_real_eip !18
  %115 = xor i64 %114, 16, !mcsema_real_eip !18
  %116 = and i64 %115, 16, !mcsema_real_eip !18
  %117 = icmp ne i64 %116, 0, !mcsema_real_eip !18
  store i1 %117, i1* %AF, !mcsema_real_eip !18
  %118 = lshr i64 %113, 63, !mcsema_real_eip !18
  %119 = trunc i64 %118 to i1, !mcsema_real_eip !18
  store i1 %119, i1* %SF, !mcsema_real_eip !18
  %120 = icmp eq i64 %113, 0, !mcsema_real_eip !18
  store i1 %120, i1* %ZF, !mcsema_real_eip !18
  %121 = xor i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %122 = xor i64 %121, -1, !mcsema_real_eip !18
  %123 = and i64 %122, %114, !mcsema_real_eip !18
  %124 = lshr i64 %123, 63, !mcsema_real_eip !18
  %125 = and i64 %124, 1, !mcsema_real_eip !18
  %126 = trunc i64 %125 to i1, !mcsema_real_eip !18
  store i1 %126, i1* %OF, !mcsema_real_eip !18
  %127 = trunc i64 %113 to i8, !mcsema_real_eip !18
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !18
  %129 = trunc i8 %128 to i1, !mcsema_real_eip !18
  %130 = xor i1 %129, true, !mcsema_real_eip !18
  store i1 %130, i1* %PF, !mcsema_real_eip !18
  %131 = icmp ult i64 %113, %RSP_val.30, !mcsema_real_eip !18
  store i1 %131, i1* %CF, !mcsema_real_eip !18
  store i64 %113, i64* %XSP, !mcsema_real_eip !18
  %132 = inttoptr i64 %113 to i64*, !mcsema_real_eip !19
  %133 = load i64, i64* %132, !mcsema_real_eip !19
  store i64 %133, i64* %XBP, !mcsema_real_eip !19
  %134 = add i64 %113, 8, !mcsema_real_eip !19
  store i64 %134, i64* %XSP, !mcsema_real_eip !19
  %135 = add i64 %134, 8, !mcsema_real_eip !20
  %136 = inttoptr i64 %134 to i64*, !mcsema_real_eip !20
  %137 = load i64, i64* %136, !mcsema_real_eip !20
  store i64 %137, i64* %XIP, !mcsema_real_eip !20
  store i64 %135, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !21
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !21
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !22
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.36, 16, !mcsema_real_eip !23
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !23
  %4 = and i64 %3, 16, !mcsema_real_eip !23
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !23
  store i1 %5, i1* %AF, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !23
  %8 = xor i1 %7, true, !mcsema_real_eip !23
  store i1 %8, i1* %PF, !mcsema_real_eip !23
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !23
  %9 = lshr i64 %2, 63, !mcsema_real_eip !23
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !23
  store i1 %10, i1* %SF, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !23
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !23
  %12 = lshr i64 %11, 63, !mcsema_real_eip !23
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !23
  store i1 %13, i1* %OF, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !23
  store i64 2, i64* %XDI, !mcsema_real_eip !24
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !25
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !25
  store i32 0, i32* %15, !mcsema_real_eip !25
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !26
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !26
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_41)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  store i1 false, i1* %SF, !mcsema_real_eip !27
  store i1 true, i1* %ZF, !mcsema_real_eip !27
  store i1 true, i1* %PF, !mcsema_real_eip !27
  store i1 undef, i1* %AF, !mcsema_real_eip !27
  store i64 0, i64* %XAX, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_gep_fix_, i64 16
  %17 = add i64 16, %RSP_val.43, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %18 = xor i64 %_trans_xor_23, 16, !mcsema_real_eip !28
  %19 = and i64 %18, 16, !mcsema_real_eip !28
  %20 = icmp ne i64 %19, 0, !mcsema_real_eip !28
  store i1 %20, i1* %AF, !mcsema_real_eip !28
  %21 = lshr i64 %17, 63, !mcsema_real_eip !28
  %22 = trunc i64 %21 to i1, !mcsema_real_eip !28
  store i1 %22, i1* %SF, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i64 %_trans_p2i_21, 0
  store i1 %_trans_icmp_eq_25, i1* %ZF, !mcsema_real_eip !28
  %_trans_xor_27 = xor i64 %_trans_p2i_22, 16
  %23 = xor i64 %_trans_xor_27, -1, !mcsema_real_eip !28
  %24 = and i64 %23, %_trans_xor_23, !mcsema_real_eip !28
  %25 = lshr i64 %24, 63, !mcsema_real_eip !28
  %26 = and i64 %25, 1, !mcsema_real_eip !28
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !28
  store i1 %27, i1* %OF, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %28 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !28
  %30 = xor i1 %29, true, !mcsema_real_eip !28
  store i1 %30, i1* %PF, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.43
  store i1 %_trans_icmp_ne_34, i1* %CF, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %31 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !29
  %_new_int2ptr_ = inttoptr i64 %31 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %31, i64* %XBP, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_20, i64 8
  %32 = add i64 %17, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %33 = add i64 %32, 8, !mcsema_real_eip !30
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %34 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !30
  store i64 %34, i64* %XIP, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, !mcsema_real_eip !6
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %84, %block_0x0
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x12
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x12, %20
  %22 = phi i32* [ %19, %block_0x12 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = zext i32 %_new_load_ to i64, !mcsema_real_eip !7
  store i64 %23, i64* %XAX, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !8
  %24 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  %_ptr_bt_81 = bitcast i32* %25 to i8*
  %_offset_above_rbp_82 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_ptr_bt_81, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_ptr_bt_81, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_ptr_bt_81, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_92 = bitcast i8* %_pot_address_in_parent_stack_83 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_92, %26 ]
  %_new_load_93 = load i32, i32* %28
  %29 = sub i32 %EAX_val.11, %_new_load_93, !mcsema_real_eip !8
  %30 = xor i32 %29, %EAX_val.11, !mcsema_real_eip !8
  %31 = xor i32 %30, %_new_load_93, !mcsema_real_eip !8
  %32 = and i32 %31, 16, !mcsema_real_eip !8
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !8
  store i1 %33, i1* %AF, !mcsema_real_eip !8
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !8
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !8
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !8
  %37 = xor i1 %36, true, !mcsema_real_eip !8
  store i1 %37, i1* %PF, !mcsema_real_eip !8
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !8
  store i1 %38, i1* %ZF, !mcsema_real_eip !8
  %39 = lshr i32 %29, 31, !mcsema_real_eip !8
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !8
  store i1 %40, i1* %SF, !mcsema_real_eip !8
  %41 = icmp ult i32 %EAX_val.11, %_new_load_93, !mcsema_real_eip !8
  store i1 %41, i1* %CF, !mcsema_real_eip !8
  %42 = xor i32 %EAX_val.11, %_new_load_93, !mcsema_real_eip !8
  %43 = and i32 %42, %30, !mcsema_real_eip !8
  %44 = lshr i32 %43, 31, !mcsema_real_eip !8
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !8
  store i1 %45, i1* %OF, !mcsema_real_eip !8
  %46 = icmp eq i1 %40, %45, !mcsema_real_eip !9
  br i1 %46, label %block_0x40, label %block_0x1e, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %27
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, !mcsema_real_eip !10
  %AL.12 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 0, i8* %AL.12, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, !mcsema_real_eip !12
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %_ptr_to_int_94 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %47, label %48

; <label>:47:                                     ; preds = %block_0x1e
  %_address_in_parent_stack_bt_107 = bitcast i8* %_pot_address_in_parent_stack_98 to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x1e, %47
  %49 = phi i64* [ %_allin_new_bt_26, %block_0x1e ], [ %_address_in_parent_stack_bt_107, %47 ]
  %_new_load_108 = load i64, i64* %49
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_109 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i64*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i64* [ %_allin_new_bt_28, %48 ], [ %_address_in_parent_stack_bt_122, %50 ]
  %_new_load_123 = load i64, i64* %52
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_124 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %53, label %54

; <label>:53:                                     ; preds = %51
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = phi i64* [ %_allin_new_bt_30, %51 ], [ %_address_in_parent_stack_bt_137, %53 ]
  %_new_load_138 = load i64, i64* %55
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_139 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %56, label %57

; <label>:56:                                     ; preds = %54
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_143 to i64*
  br label %57

; <label>:57:                                     ; preds = %54, %56
  %58 = phi i64* [ %_allin_new_bt_32, %54 ], [ %_address_in_parent_stack_bt_152, %56 ]
  %_new_load_153 = load i64, i64* %58
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_154 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %59, label %60

; <label>:59:                                     ; preds = %57
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i64*
  br label %60

; <label>:60:                                     ; preds = %57, %59
  %61 = phi i64* [ %_allin_new_bt_34, %57 ], [ %_address_in_parent_stack_bt_167, %59 ]
  %_new_load_168 = load i64, i64* %61
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_169 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  br i1 %_cond1_n_cond2_cond3_180, label %62, label %63

; <label>:62:                                     ; preds = %60
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_173 to i64*
  br label %63

; <label>:63:                                     ; preds = %60, %62
  %64 = phi i64* [ %_allin_new_bt_36, %60 ], [ %_address_in_parent_stack_bt_182, %62 ]
  %_new_load_183 = load i64, i64* %64
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_184 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %65, label %66

; <label>:65:                                     ; preds = %63
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_188 to i64*
  br label %66

; <label>:66:                                     ; preds = %63, %65
  %67 = phi i64* [ %_allin_new_bt_38, %63 ], [ %_address_in_parent_stack_bt_197, %65 ]
  %_new_load_198 = load i64, i64* %67
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_199 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %68, label %69

; <label>:68:                                     ; preds = %66
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i64*
  br label %69

; <label>:69:                                     ; preds = %66, %68
  %70 = phi i64* [ %_allin_new_bt_40, %66 ], [ %_address_in_parent_stack_bt_212, %68 ]
  %_new_load_213 = load i64, i64* %70
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_214 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_217 = sub i64 %_ptr_to_int_214, %_local_end_to_int_
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  br i1 %_cond1_n_cond2_cond3_225, label %71, label %72

; <label>:71:                                     ; preds = %69
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_218 to i64*
  br label %72

; <label>:72:                                     ; preds = %69, %71
  %73 = phi i64* [ %_allin_new_bt_42, %69 ], [ %_address_in_parent_stack_bt_227, %71 ]
  %_new_load_228 = load i64, i64* %73
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_229 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  br i1 %_cond1_n_cond2_cond3_240, label %74, label %75

; <label>:74:                                     ; preds = %72
  %_address_in_parent_stack_bt_242 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %75

; <label>:75:                                     ; preds = %72, %74
  %76 = phi i64* [ %_allin_new_bt_44, %72 ], [ %_address_in_parent_stack_bt_242, %74 ]
  %_new_load_243 = load i64, i64* %76
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %77 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !12
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, !mcsema_real_eip !12
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %77, i64* %XSP, !mcsema_real_eip !12
  %78 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %_new_load_108, i64 %_new_load_123, i64 %_new_load_138, i64 %_new_load_153, i64 %_new_load_168, i64 %_new_load_183, i64 %_new_load_198, i64 %_new_load_213, i64 %_new_load_228, i64 %_new_load_243)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %78, i64* %XAX, !mcsema_real_eip !12
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -12
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %EAX_val.23 = load i32, i32* %EAX.10, !mcsema_real_eip !13
  %79 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !13
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %80, !mcsema_real_eip !13
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -8
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %81 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !14
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !14
  %_ptr_bt_246 = bitcast i32* %82 to i8*
  %_offset_above_rbp_247 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_ptr_bt_246, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_ptr_bt_246, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_ptr_bt_246, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  br i1 %_cond1_n_cond2_cond3_255, label %83, label %84

; <label>:83:                                     ; preds = %75
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i32*
  br label %84

; <label>:84:                                     ; preds = %75, %83
  %85 = phi i32* [ %82, %75 ], [ %_address_in_parent_stack_bt_257, %83 ]
  %_new_load_258 = load i32, i32* %85
  %86 = zext i32 %_new_load_258 to i64, !mcsema_real_eip !14
  store i64 %86, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.26 = load i32, i32* %EAX.10, !mcsema_real_eip !15
  %87 = add i32 1, %EAX_val.26, !mcsema_real_eip !15
  %88 = xor i32 %87, %EAX_val.26, !mcsema_real_eip !15
  %89 = xor i32 %88, 1, !mcsema_real_eip !15
  %90 = and i32 %89, 16, !mcsema_real_eip !15
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !15
  store i1 %91, i1* %AF, !mcsema_real_eip !15
  %92 = lshr i32 %87, 31, !mcsema_real_eip !15
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !15
  store i1 %93, i1* %SF, !mcsema_real_eip !15
  %94 = icmp eq i32 %87, 0, !mcsema_real_eip !15
  store i1 %94, i1* %ZF, !mcsema_real_eip !15
  %95 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !15
  %96 = xor i32 %95, -1, !mcsema_real_eip !15
  %97 = and i32 %96, %88, !mcsema_real_eip !15
  %98 = lshr i32 %97, 31, !mcsema_real_eip !15
  %99 = and i32 %98, 1, !mcsema_real_eip !15
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !15
  store i1 %100, i1* %OF, !mcsema_real_eip !15
  %101 = trunc i32 %87 to i8, !mcsema_real_eip !15
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !15
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !15
  %104 = xor i1 %103, true, !mcsema_real_eip !15
  store i1 %104, i1* %PF, !mcsema_real_eip !15
  %105 = icmp ult i32 %87, %EAX_val.26, !mcsema_real_eip !15
  store i1 %105, i1* %CF, !mcsema_real_eip !15
  %106 = zext i32 %87 to i64, !mcsema_real_eip !15
  store i64 %106, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.10, !mcsema_real_eip !16
  store i32 %EAX_val.29, i32* %82, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %27
  %_load_rsp_ptr_57 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_58 = getelementptr i8, i8* %_load_rsp_ptr_57, i64 16
  %107 = add i64 16, %RSP_val.30, !mcsema_real_eip !18
  %_trans_p2i_59 = ptrtoint i8* %_new_gep_58 to i64
  %_trans_p2i_60 = ptrtoint i8* %_load_rsp_ptr_57 to i64
  %_trans_xor_61 = xor i64 %_trans_p2i_59, %_trans_p2i_60
  %108 = xor i64 %_trans_xor_61, 16, !mcsema_real_eip !18
  %109 = and i64 %108, 16, !mcsema_real_eip !18
  %110 = icmp ne i64 %109, 0, !mcsema_real_eip !18
  store i1 %110, i1* %AF, !mcsema_real_eip !18
  %111 = lshr i64 %107, 63, !mcsema_real_eip !18
  %112 = trunc i64 %111 to i1, !mcsema_real_eip !18
  store i1 %112, i1* %SF, !mcsema_real_eip !18
  %_trans_icmp_eq_63 = icmp eq i64 %_trans_p2i_59, 0
  store i1 %_trans_icmp_eq_63, i1* %ZF, !mcsema_real_eip !18
  %_trans_xor_65 = xor i64 %_trans_p2i_60, 16
  %113 = xor i64 %_trans_xor_65, -1, !mcsema_real_eip !18
  %114 = and i64 %113, %_trans_xor_61, !mcsema_real_eip !18
  %115 = lshr i64 %114, 63, !mcsema_real_eip !18
  %116 = and i64 %115, 1, !mcsema_real_eip !18
  %117 = trunc i64 %116 to i1, !mcsema_real_eip !18
  store i1 %117, i1* %OF, !mcsema_real_eip !18
  %_trans_trunc_70 = trunc i64 %_trans_p2i_59 to i8
  %118 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_70), !mcsema_real_eip !18
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !18
  %120 = xor i1 %119, true, !mcsema_real_eip !18
  store i1 %120, i1* %PF, !mcsema_real_eip !18
  %_trans_icmp_ne_72 = icmp ne i64 %_trans_p2i_59, %RSP_val.30
  store i1 %_trans_icmp_ne_72, i1* %CF, !mcsema_real_eip !18
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_
  store i64 %107, i64* %XSP, !mcsema_real_eip !18
  %_allin_new_bt_74 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_259 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_offset_above_rbp_262 = sub i64 %_ptr_to_int_259, %_local_end_to_int_
  %_pot_address_in_parent_stack_263 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_cond1_264 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_265 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_266 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_267 = or i1 %_cond2_1_265, %_cond2_2_266
  %_cond4_268 = icmp ule i8* %_pot_address_in_parent_stack_263, %_parent_stack_end_ptr_
  %_cond1_n_cond2_269 = and i1 %_cond1_264, %_cond2_267
  %_cond1_n_cond2_cond3_270 = and i1 %_cond1_n_cond2_269, %_cond4_268
  br i1 %_cond1_n_cond2_cond3_270, label %121, label %122

; <label>:121:                                    ; preds = %block_0x40
  %_address_in_parent_stack_bt_272 = bitcast i8* %_pot_address_in_parent_stack_263 to i64*
  br label %122

; <label>:122:                                    ; preds = %block_0x40, %121
  %123 = phi i64* [ %_allin_new_bt_74, %block_0x40 ], [ %_address_in_parent_stack_bt_272, %121 ]
  %_new_load_273 = load i64, i64* %123
  %_new_int2ptr_ = inttoptr i64 %_new_load_273 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_273, i64* %XBP, !mcsema_real_eip !19
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_58, i64 8
  %124 = add i64 %107, 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %124, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_77 = getelementptr i8, i8* %_new_gep_75, i64 8
  %125 = add i64 %124, 8, !mcsema_real_eip !20
  %_allin_new_bt_78 = bitcast i8* %_new_gep_75 to i64*
  %_ptr_to_int_274 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_277 = sub i64 %_ptr_to_int_274, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  br i1 %_cond1_n_cond2_cond3_285, label %126, label %127

; <label>:126:                                    ; preds = %122
  %_address_in_parent_stack_bt_287 = bitcast i8* %_pot_address_in_parent_stack_278 to i64*
  br label %127

; <label>:127:                                    ; preds = %122, %126
  %128 = phi i64* [ %_allin_new_bt_78, %122 ], [ %_address_in_parent_stack_bt_287, %126 ]
  %_new_load_288 = load i64, i64* %128
  store i64 %_new_load_288, i64* %XIP, !mcsema_real_eip !20
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %125, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %entry
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !21
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !21
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !22
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.36, 16, !mcsema_real_eip !23
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !23
  %4 = and i64 %3, 16, !mcsema_real_eip !23
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !23
  store i1 %5, i1* %AF, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !23
  %8 = xor i1 %7, true, !mcsema_real_eip !23
  store i1 %8, i1* %PF, !mcsema_real_eip !23
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !23
  %9 = lshr i64 %2, 63, !mcsema_real_eip !23
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !23
  store i1 %10, i1* %SF, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !23
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !23
  %12 = lshr i64 %11, 63, !mcsema_real_eip !23
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !23
  store i1 %13, i1* %OF, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !23
  store i64 2, i64* %XDI, !mcsema_real_eip !24
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !25
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !25
  store i32 0, i32* %15, !mcsema_real_eip !25
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !26
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !26
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_41)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  store i1 false, i1* %SF, !mcsema_real_eip !27
  store i1 true, i1* %ZF, !mcsema_real_eip !27
  store i1 true, i1* %PF, !mcsema_real_eip !27
  store i1 undef, i1* %AF, !mcsema_real_eip !27
  store i64 0, i64* %XAX, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_gep_fix_, i64 16
  %17 = add i64 16, %RSP_val.43, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %18 = xor i64 %_trans_xor_23, 16, !mcsema_real_eip !28
  %19 = and i64 %18, 16, !mcsema_real_eip !28
  %20 = icmp ne i64 %19, 0, !mcsema_real_eip !28
  store i1 %20, i1* %AF, !mcsema_real_eip !28
  %21 = lshr i64 %17, 63, !mcsema_real_eip !28
  %22 = trunc i64 %21 to i1, !mcsema_real_eip !28
  store i1 %22, i1* %SF, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i64 %_trans_p2i_21, 0
  store i1 %_trans_icmp_eq_25, i1* %ZF, !mcsema_real_eip !28
  %_trans_xor_27 = xor i64 %_trans_p2i_22, 16
  %23 = xor i64 %_trans_xor_27, -1, !mcsema_real_eip !28
  %24 = and i64 %23, %_trans_xor_23, !mcsema_real_eip !28
  %25 = lshr i64 %24, 63, !mcsema_real_eip !28
  %26 = and i64 %25, 1, !mcsema_real_eip !28
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !28
  store i1 %27, i1* %OF, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %28 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !28
  %30 = xor i1 %29, true, !mcsema_real_eip !28
  store i1 %30, i1* %PF, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.43
  store i1 %_trans_icmp_ne_34, i1* %CF, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %31, label %32

; <label>:31:                                     ; preds = %block_0x50
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %32

; <label>:32:                                     ; preds = %block_0x50, %31
  %33 = phi i64* [ %_allin_new_bt_36, %block_0x50 ], [ %_address_in_parent_stack_bt_, %31 ]
  %_new_load_ = load i64, i64* %33
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_, i64* %XBP, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_20, i64 8
  %34 = add i64 %17, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %34, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %35 = add i64 %34, 8, !mcsema_real_eip !30
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_43 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_46 = sub i64 %_ptr_to_int_43, %_local_end_to_int_
  %_pot_address_in_parent_stack_47 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_46
  %_cond1_48 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_49 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_50 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_51 = or i1 %_cond2_1_49, %_cond2_2_50
  %_cond4_52 = icmp ule i8* %_pot_address_in_parent_stack_47, %_parent_stack_end_ptr_
  %_cond1_n_cond2_53 = and i1 %_cond1_48, %_cond2_51
  %_cond1_n_cond2_cond3_54 = and i1 %_cond1_n_cond2_53, %_cond4_52
  br i1 %_cond1_n_cond2_cond3_54, label %36, label %37

; <label>:36:                                     ; preds = %32
  %_address_in_parent_stack_bt_56 = bitcast i8* %_pot_address_in_parent_stack_47 to i64*
  br label %37

; <label>:37:                                     ; preds = %32, %36
  %38 = phi i64* [ %_allin_new_bt_40, %32 ], [ %_address_in_parent_stack_bt_56, %36 ]
  %_new_load_57 = load i64, i64* %38
  store i64 %_new_load_57, i64* %XIP, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_
  store i64 %35, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
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
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 21}
!9 = !{i64 24}
!10 = !{i64 30}
!11 = !{i64 40}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 50}
!15 = !{i64 53}
!16 = !{i64 56}
!17 = !{i64 59}
!18 = !{i64 64}
!19 = !{i64 68}
!20 = !{i64 69}
!21 = !{i64 80}
!22 = !{i64 81}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 93}
!26 = !{i64 100}
!27 = !{i64 105}
!28 = !{i64 107}
!29 = !{i64 111}
!30 = !{i64 112}
