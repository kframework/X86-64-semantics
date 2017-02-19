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
  %70 = sub i64 %RSP_val.19, 8, !mcsema_real_eip !12
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %71, !mcsema_real_eip !12
  store i64 %70, i64* %XSP, !mcsema_real_eip !12
  %72 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69), !mcsema_real_eip !12
  store i64 %72, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %73 = add i64 %RBP_val.21, -12, !mcsema_real_eip !13
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.10, !mcsema_real_eip !13
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %75, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %76 = add i64 %RBP_val.24, -8, !mcsema_real_eip !14
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !14
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !14
  %79 = load i32, i32* %78, !mcsema_real_eip !14
  %80 = zext i32 %79 to i64, !mcsema_real_eip !14
  store i64 %80, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.26 = load i32, i32* %EAX.10, !mcsema_real_eip !15
  %81 = add i32 1, %EAX_val.26, !mcsema_real_eip !15
  %82 = xor i32 %81, %EAX_val.26, !mcsema_real_eip !15
  %83 = xor i32 %82, 1, !mcsema_real_eip !15
  %84 = and i32 %83, 16, !mcsema_real_eip !15
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !15
  store i1 %85, i1* %AF, !mcsema_real_eip !15
  %86 = lshr i32 %81, 31, !mcsema_real_eip !15
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !15
  store i1 %87, i1* %SF, !mcsema_real_eip !15
  %88 = icmp eq i32 %81, 0, !mcsema_real_eip !15
  store i1 %88, i1* %ZF, !mcsema_real_eip !15
  %89 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !15
  %90 = xor i32 %89, -1, !mcsema_real_eip !15
  %91 = and i32 %90, %82, !mcsema_real_eip !15
  %92 = lshr i32 %91, 31, !mcsema_real_eip !15
  %93 = and i32 %92, 1, !mcsema_real_eip !15
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !15
  store i1 %94, i1* %OF, !mcsema_real_eip !15
  %95 = trunc i32 %81 to i8, !mcsema_real_eip !15
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !15
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !15
  %98 = xor i1 %97, true, !mcsema_real_eip !15
  store i1 %98, i1* %PF, !mcsema_real_eip !15
  %99 = icmp ult i32 %81, %EAX_val.26, !mcsema_real_eip !15
  store i1 %99, i1* %CF, !mcsema_real_eip !15
  %100 = zext i32 %81 to i64, !mcsema_real_eip !15
  store i64 %100, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.10, !mcsema_real_eip !16
  store i32 %EAX_val.29, i32* %78, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %101 = add i64 16, %RSP_val.30, !mcsema_real_eip !18
  %102 = xor i64 %101, %RSP_val.30, !mcsema_real_eip !18
  %103 = xor i64 %102, 16, !mcsema_real_eip !18
  %104 = and i64 %103, 16, !mcsema_real_eip !18
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !18
  store i1 %105, i1* %AF, !mcsema_real_eip !18
  %106 = lshr i64 %101, 63, !mcsema_real_eip !18
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !18
  store i1 %107, i1* %SF, !mcsema_real_eip !18
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !18
  store i1 %108, i1* %ZF, !mcsema_real_eip !18
  %109 = xor i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %110 = xor i64 %109, -1, !mcsema_real_eip !18
  %111 = and i64 %110, %102, !mcsema_real_eip !18
  %112 = lshr i64 %111, 63, !mcsema_real_eip !18
  %113 = and i64 %112, 1, !mcsema_real_eip !18
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !18
  store i1 %114, i1* %OF, !mcsema_real_eip !18
  %115 = trunc i64 %101 to i8, !mcsema_real_eip !18
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !18
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !18
  %118 = xor i1 %117, true, !mcsema_real_eip !18
  store i1 %118, i1* %PF, !mcsema_real_eip !18
  %119 = icmp ult i64 %101, %RSP_val.30, !mcsema_real_eip !18
  store i1 %119, i1* %CF, !mcsema_real_eip !18
  store i64 %101, i64* %XSP, !mcsema_real_eip !18
  %120 = inttoptr i64 %101 to i64*, !mcsema_real_eip !19
  %121 = load i64, i64* %120, !mcsema_real_eip !19
  store i64 %121, i64* %XBP, !mcsema_real_eip !19
  %122 = add i64 %101, 8, !mcsema_real_eip !19
  store i64 %122, i64* %XSP, !mcsema_real_eip !19
  %123 = add i64 %122, 8, !mcsema_real_eip !20
  %124 = inttoptr i64 %122 to i64*, !mcsema_real_eip !20
  %125 = load i64, i64* %124, !mcsema_real_eip !20
  store i64 %125, i64* %XIP, !mcsema_real_eip !20
  store i64 %123, i64* %XSP, !mcsema_real_eip !20
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

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

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

block_0x12:                                       ; preds = %72, %block_0x0
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
  %_ptr_bt_73 = bitcast i32* %25 to i8*
  %_offset_above_rbp_74 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_ptr_bt_73, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_ptr_bt_73, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_ptr_bt_73, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_84, %26 ]
  %_new_load_85 = load i32, i32* %28
  %29 = sub i32 %EAX_val.11, %_new_load_85, !mcsema_real_eip !8
  %30 = xor i32 %29, %EAX_val.11, !mcsema_real_eip !8
  %31 = xor i32 %30, %_new_load_85, !mcsema_real_eip !8
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
  %41 = icmp ult i32 %EAX_val.11, %_new_load_85, !mcsema_real_eip !8
  store i1 %41, i1* %CF, !mcsema_real_eip !8
  %42 = xor i32 %EAX_val.11, %_new_load_85, !mcsema_real_eip !8
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
  %_ptr_to_int_86 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  br i1 %_cond1_n_cond2_cond3_97, label %47, label %48

; <label>:47:                                     ; preds = %block_0x1e
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x1e, %47
  %49 = phi i64* [ %_allin_new_bt_26, %block_0x1e ], [ %_address_in_parent_stack_bt_99, %47 ]
  %_new_load_100 = load i64, i64* %49
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_101 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i64*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i64* [ %_allin_new_bt_28, %48 ], [ %_address_in_parent_stack_bt_114, %50 ]
  %_new_load_115 = load i64, i64* %52
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_116 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %53, label %54

; <label>:53:                                     ; preds = %51
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i64*
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = phi i64* [ %_allin_new_bt_30, %51 ], [ %_address_in_parent_stack_bt_129, %53 ]
  %_new_load_130 = load i64, i64* %55
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_131 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %56, label %57

; <label>:56:                                     ; preds = %54
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i64*
  br label %57

; <label>:57:                                     ; preds = %54, %56
  %58 = phi i64* [ %_allin_new_bt_32, %54 ], [ %_address_in_parent_stack_bt_144, %56 ]
  %_new_load_145 = load i64, i64* %58
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_146 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %59, label %60

; <label>:59:                                     ; preds = %57
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %60

; <label>:60:                                     ; preds = %57, %59
  %61 = phi i64* [ %_allin_new_bt_34, %57 ], [ %_address_in_parent_stack_bt_159, %59 ]
  %_new_load_160 = load i64, i64* %61
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_161 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %62, label %63

; <label>:62:                                     ; preds = %60
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_165 to i64*
  br label %63

; <label>:63:                                     ; preds = %60, %62
  %64 = phi i64* [ %_allin_new_bt_36, %60 ], [ %_address_in_parent_stack_bt_174, %62 ]
  %_new_load_175 = load i64, i64* %64
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %65 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !12
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, !mcsema_real_eip !12
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %65, i64* %XSP, !mcsema_real_eip !12
  %66 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130, i64 %_new_load_145, i64 %_new_load_160, i64 %_new_load_175)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %66, i64* %XAX, !mcsema_real_eip !12
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -12
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX_val.23 = load i32, i32* %EAX.10, !mcsema_real_eip !13
  %67 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !13
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %68, !mcsema_real_eip !13
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %69 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !14
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !14
  %_ptr_bt_178 = bitcast i32* %70 to i8*
  %_offset_above_rbp_179 = sub i64 %69, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_ptr_bt_178, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_ptr_bt_178, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_ptr_bt_178, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %71, label %72

; <label>:71:                                     ; preds = %63
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i32*
  br label %72

; <label>:72:                                     ; preds = %63, %71
  %73 = phi i32* [ %70, %63 ], [ %_address_in_parent_stack_bt_189, %71 ]
  %_new_load_190 = load i32, i32* %73
  %74 = zext i32 %_new_load_190 to i64, !mcsema_real_eip !14
  store i64 %74, i64* %XAX, !mcsema_real_eip !14
  %EAX_val.26 = load i32, i32* %EAX.10, !mcsema_real_eip !15
  %75 = add i32 1, %EAX_val.26, !mcsema_real_eip !15
  %76 = xor i32 %75, %EAX_val.26, !mcsema_real_eip !15
  %77 = xor i32 %76, 1, !mcsema_real_eip !15
  %78 = and i32 %77, 16, !mcsema_real_eip !15
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !15
  store i1 %79, i1* %AF, !mcsema_real_eip !15
  %80 = lshr i32 %75, 31, !mcsema_real_eip !15
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !15
  store i1 %81, i1* %SF, !mcsema_real_eip !15
  %82 = icmp eq i32 %75, 0, !mcsema_real_eip !15
  store i1 %82, i1* %ZF, !mcsema_real_eip !15
  %83 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !15
  %84 = xor i32 %83, -1, !mcsema_real_eip !15
  %85 = and i32 %84, %76, !mcsema_real_eip !15
  %86 = lshr i32 %85, 31, !mcsema_real_eip !15
  %87 = and i32 %86, 1, !mcsema_real_eip !15
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !15
  store i1 %88, i1* %OF, !mcsema_real_eip !15
  %89 = trunc i32 %75 to i8, !mcsema_real_eip !15
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !15
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !15
  %92 = xor i1 %91, true, !mcsema_real_eip !15
  store i1 %92, i1* %PF, !mcsema_real_eip !15
  %93 = icmp ult i32 %75, %EAX_val.26, !mcsema_real_eip !15
  store i1 %93, i1* %CF, !mcsema_real_eip !15
  %94 = zext i32 %75 to i64, !mcsema_real_eip !15
  store i64 %94, i64* %XAX, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.10, !mcsema_real_eip !16
  store i32 %EAX_val.29, i32* %70, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %27
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 16
  %95 = add i64 16, %RSP_val.30, !mcsema_real_eip !18
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %96 = xor i64 %_trans_xor_53, 16, !mcsema_real_eip !18
  %97 = and i64 %96, 16, !mcsema_real_eip !18
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !18
  store i1 %98, i1* %AF, !mcsema_real_eip !18
  %99 = lshr i64 %95, 63, !mcsema_real_eip !18
  %100 = trunc i64 %99 to i1, !mcsema_real_eip !18
  store i1 %100, i1* %SF, !mcsema_real_eip !18
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !18
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 16
  %101 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !18
  %102 = and i64 %101, %_trans_xor_53, !mcsema_real_eip !18
  %103 = lshr i64 %102, 63, !mcsema_real_eip !18
  %104 = and i64 %103, 1, !mcsema_real_eip !18
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !18
  store i1 %105, i1* %OF, !mcsema_real_eip !18
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %106 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !18
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !18
  %108 = xor i1 %107, true, !mcsema_real_eip !18
  store i1 %108, i1* %PF, !mcsema_real_eip !18
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.30
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !18
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %95, i64* %XSP, !mcsema_real_eip !18
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_191 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_191, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %109, label %110

; <label>:109:                                    ; preds = %block_0x40
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i64*
  br label %110

; <label>:110:                                    ; preds = %block_0x40, %109
  %111 = phi i64* [ %_allin_new_bt_66, %block_0x40 ], [ %_address_in_parent_stack_bt_204, %109 ]
  %_new_load_205 = load i64, i64* %111
  %_new_int2ptr_ = inttoptr i64 %_new_load_205 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_205, i64* %XBP, !mcsema_real_eip !19
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %112 = add i64 %95, 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %113 = add i64 %112, 8, !mcsema_real_eip !20
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_206 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %114, label %115

; <label>:114:                                    ; preds = %110
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i64*
  br label %115

; <label>:115:                                    ; preds = %110, %114
  %116 = phi i64* [ %_allin_new_bt_70, %110 ], [ %_address_in_parent_stack_bt_219, %114 ]
  %_new_load_220 = load i64, i64* %116
  store i64 %_new_load_220, i64* %XIP, !mcsema_real_eip !20
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %113, i64* %XSP, !mcsema_real_eip !20
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
