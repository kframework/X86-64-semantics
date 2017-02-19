; ModuleID = 'Output/test_28.clang.opt.bc'
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
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !21
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !21
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !21
  store i64 %RBP_val.33, i64* %2, !mcsema_real_eip !21
  store i64 %1, i64* %XSP, !mcsema_real_eip !21
  store i64 %1, i64* %XBP, !mcsema_real_eip !22
  %3 = sub i64 %1, 16, !mcsema_real_eip !23
  %4 = xor i64 %3, %1, !mcsema_real_eip !23
  %5 = xor i64 %4, 16, !mcsema_real_eip !23
  %6 = and i64 %5, 16, !mcsema_real_eip !23
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !23
  store i1 %7, i1* %AF, !mcsema_real_eip !23
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !23
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !23
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !23
  %11 = xor i1 %10, true, !mcsema_real_eip !23
  store i1 %11, i1* %PF, !mcsema_real_eip !23
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !23
  store i1 %12, i1* %ZF, !mcsema_real_eip !23
  %13 = lshr i64 %3, 63, !mcsema_real_eip !23
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !23
  store i1 %14, i1* %SF, !mcsema_real_eip !23
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !23
  store i1 %15, i1* %CF, !mcsema_real_eip !23
  %16 = xor i64 %1, 16, !mcsema_real_eip !23
  %17 = and i64 %16, %4, !mcsema_real_eip !23
  %18 = lshr i64 %17, 63, !mcsema_real_eip !23
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !23
  store i1 %19, i1* %OF, !mcsema_real_eip !23
  store i64 %3, i64* %XSP, !mcsema_real_eip !23
  store i64 2, i64* %XDI, !mcsema_real_eip !24
  %20 = add i64 %1, -4, !mcsema_real_eip !25
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !25
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !25
  store i32 0, i32* %22, !mcsema_real_eip !25
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !26
  %23 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !26
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !26
  store i64 %23, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
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
  %25 = add i64 16, %RSP_val.43, !mcsema_real_eip !28
  %26 = xor i64 %25, %RSP_val.43, !mcsema_real_eip !28
  %27 = xor i64 %26, 16, !mcsema_real_eip !28
  %28 = and i64 %27, 16, !mcsema_real_eip !28
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !28
  store i1 %29, i1* %AF, !mcsema_real_eip !28
  %30 = lshr i64 %25, 63, !mcsema_real_eip !28
  %31 = trunc i64 %30 to i1, !mcsema_real_eip !28
  store i1 %31, i1* %SF, !mcsema_real_eip !28
  %32 = icmp eq i64 %25, 0, !mcsema_real_eip !28
  store i1 %32, i1* %ZF, !mcsema_real_eip !28
  %33 = xor i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %34 = xor i64 %33, -1, !mcsema_real_eip !28
  %35 = and i64 %34, %26, !mcsema_real_eip !28
  %36 = lshr i64 %35, 63, !mcsema_real_eip !28
  %37 = and i64 %36, 1, !mcsema_real_eip !28
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !28
  store i1 %38, i1* %OF, !mcsema_real_eip !28
  %39 = trunc i64 %25 to i8, !mcsema_real_eip !28
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !28
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !28
  %42 = xor i1 %41, true, !mcsema_real_eip !28
  store i1 %42, i1* %PF, !mcsema_real_eip !28
  %43 = icmp ult i64 %25, %RSP_val.43, !mcsema_real_eip !28
  store i1 %43, i1* %CF, !mcsema_real_eip !28
  store i64 %25, i64* %XSP, !mcsema_real_eip !28
  %44 = inttoptr i64 %25 to i64*, !mcsema_real_eip !29
  %45 = load i64, i64* %44, !mcsema_real_eip !29
  store i64 %45, i64* %XBP, !mcsema_real_eip !29
  %46 = add i64 %25, 8, !mcsema_real_eip !29
  store i64 %46, i64* %XSP, !mcsema_real_eip !29
  %47 = add i64 %46, 8, !mcsema_real_eip !30
  %48 = inttoptr i64 %46 to i64*, !mcsema_real_eip !30
  %49 = load i64, i64* %48, !mcsema_real_eip !30
  store i64 %49, i64* %XIP, !mcsema_real_eip !30
  store i64 %47, i64* %XSP, !mcsema_real_eip !30
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
