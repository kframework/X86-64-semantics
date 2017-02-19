; ModuleID = 'Output/test_24.clang.opt.bc'
source_filename = "Output/test_24.clang.bc"
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
module asm "  .globl to_byte;"
module asm "  .globl _to_byte;"
module asm "  .type _to_byte,@function"
module asm "_to_byte:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq to_byte@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _to_byte,0b-_to_byte;"
module asm "  .cfi_endproc;"
module asm "  .globl read_bytes;"
module asm "  .globl _read_bytes;"
module asm "  .type _read_bytes,@function"
module asm "_read_bytes:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read_bytes@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read_bytes,0b-_read_bytes;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl keycomp;"
module asm "  .type keycomp,@function"
module asm "keycomp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size keycomp,0b-keycomp;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x420 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c" \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sub i64 %1, 80, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 80, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 80, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 80, !mcsema_real_eip !4
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
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %28 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %28, i64* %XCX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %29 = add i64 %RBP_val.11, -32, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %31, !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %32 = add i64 %RBP_val.14, -32, !mcsema_real_eip !10
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !10
  %34 = inttoptr i64 %32 to i32*, !mcsema_real_eip !10
  %35 = load i32, i32* %34, !mcsema_real_eip !10
  %36 = sub i32 %35, 37, !mcsema_real_eip !10
  %37 = xor i32 %36, %35, !mcsema_real_eip !10
  %38 = xor i32 %37, 37, !mcsema_real_eip !10
  %39 = and i32 %38, 16, !mcsema_real_eip !10
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !10
  store i1 %40, i1* %AF, !mcsema_real_eip !10
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !10
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !10
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !10
  %44 = xor i1 %43, true, !mcsema_real_eip !10
  store i1 %44, i1* %PF, !mcsema_real_eip !10
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !10
  store i1 %45, i1* %ZF, !mcsema_real_eip !10
  %46 = lshr i32 %36, 31, !mcsema_real_eip !10
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !10
  store i1 %47, i1* %SF, !mcsema_real_eip !10
  %48 = icmp ult i32 %35, 37, !mcsema_real_eip !10
  store i1 %48, i1* %CF, !mcsema_real_eip !10
  %49 = xor i32 %35, 37, !mcsema_real_eip !10
  %50 = and i32 %49, %37, !mcsema_real_eip !10
  %51 = lshr i32 %50, 31, !mcsema_real_eip !10
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !10
  store i1 %52, i1* %OF, !mcsema_real_eip !10
  br i1 %45, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x0
  %53 = load i32, i32* %34, !mcsema_real_eip !12
  %54 = zext i32 %53 to i64, !mcsema_real_eip !12
  store i64 %54, i64* %XAX, !mcsema_real_eip !12
  %55 = add i64 %RBP_val.14, -4, !mcsema_real_eip !13
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !13
  %EAX_val.18 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.18, i32* %57, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %58 = add i64 %RBP_val.14, -16, !mcsema_real_eip !15
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !15
  %60 = load i64, i64* %59, !mcsema_real_eip !15
  store i64 %60, i64* %XAX, !mcsema_real_eip !15
  %61 = add i64 4, %60, !mcsema_real_eip !16
  %62 = xor i64 %61, %60, !mcsema_real_eip !16
  %63 = xor i64 %62, 4, !mcsema_real_eip !16
  %64 = and i64 %63, 16, !mcsema_real_eip !16
  %65 = icmp ne i64 %64, 0, !mcsema_real_eip !16
  store i1 %65, i1* %AF, !mcsema_real_eip !16
  %66 = lshr i64 %61, 63, !mcsema_real_eip !16
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !16
  store i1 %67, i1* %SF, !mcsema_real_eip !16
  %68 = icmp eq i64 %61, 0, !mcsema_real_eip !16
  store i1 %68, i1* %ZF, !mcsema_real_eip !16
  %69 = xor i64 %60, 4, !mcsema_real_eip !16
  %70 = xor i64 %69, -1, !mcsema_real_eip !16
  %71 = and i64 %70, %62, !mcsema_real_eip !16
  %72 = lshr i64 %71, 63, !mcsema_real_eip !16
  %73 = and i64 %72, 1, !mcsema_real_eip !16
  %74 = trunc i64 %73 to i1, !mcsema_real_eip !16
  store i1 %74, i1* %OF, !mcsema_real_eip !16
  %75 = trunc i64 %61 to i8, !mcsema_real_eip !16
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !16
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !16
  %78 = xor i1 %77, true, !mcsema_real_eip !16
  store i1 %78, i1* %PF, !mcsema_real_eip !16
  %79 = icmp ult i64 %61, %60, !mcsema_real_eip !16
  store i1 %79, i1* %CF, !mcsema_real_eip !16
  store i64 %61, i64* %XAX, !mcsema_real_eip !16
  store i64 %61, i64* %59, !mcsema_real_eip !17
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !18
  %80 = add i64 %RBP_val.23, -16, !mcsema_real_eip !18
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !18
  %82 = load i64, i64* %81, !mcsema_real_eip !18
  store i64 %82, i64* %XAX, !mcsema_real_eip !18
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !19
  %84 = inttoptr i64 %82 to i8*, !mcsema_real_eip !19
  %85 = load i8, i8* %84, !mcsema_real_eip !19
  %86 = sext i8 %85 to i32, !mcsema_real_eip !19
  %87 = zext i32 %86 to i64, !mcsema_real_eip !19
  store i64 %87, i64* %XCX, !mcsema_real_eip !19
  %ECX_val.26 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %88 = sub i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %89 = xor i32 %88, %ECX_val.26, !mcsema_real_eip !20
  %90 = xor i32 %89, 100, !mcsema_real_eip !20
  %91 = and i32 %90, 16, !mcsema_real_eip !20
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !20
  store i1 %92, i1* %AF, !mcsema_real_eip !20
  %93 = trunc i32 %88 to i8, !mcsema_real_eip !20
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !20
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !20
  %96 = xor i1 %95, true, !mcsema_real_eip !20
  store i1 %96, i1* %PF, !mcsema_real_eip !20
  %97 = icmp eq i32 %88, 0, !mcsema_real_eip !20
  store i1 %97, i1* %ZF, !mcsema_real_eip !20
  %98 = lshr i32 %88, 31, !mcsema_real_eip !20
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !20
  store i1 %99, i1* %SF, !mcsema_real_eip !20
  %100 = icmp ult i32 %ECX_val.26, 100, !mcsema_real_eip !20
  store i1 %100, i1* %CF, !mcsema_real_eip !20
  %101 = xor i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %102 = and i32 %101, %89, !mcsema_real_eip !20
  %103 = lshr i32 %102, 31, !mcsema_real_eip !20
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !20
  store i1 %104, i1* %OF, !mcsema_real_eip !20
  br i1 %97, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %105 = add i64 %RBP_val.23, -4, !mcsema_real_eip !22
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !22
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %107, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %108 = load i64, i64* %81, !mcsema_real_eip !24
  store i64 %108, i64* %XAX, !mcsema_real_eip !24
  %109 = add i64 %108, 1, !mcsema_real_eip !25
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !25
  %111 = inttoptr i64 %109 to i8*, !mcsema_real_eip !25
  %112 = load i8, i8* %111, !mcsema_real_eip !25
  %113 = zext i8 %112 to i32, !mcsema_real_eip !25
  %114 = zext i32 %113 to i64, !mcsema_real_eip !25
  store i64 %114, i64* %XDI, !mcsema_real_eip !25
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !26
  %115 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !26
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %116, !mcsema_real_eip !26
  store i64 %115, i64* %XSP, !mcsema_real_eip !26
  %117 = call x86_64_sysvcc i64 @_to_byte(i64 %114), !mcsema_real_eip !26
  store i64 %117, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %118 = sub i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %119 = xor i32 %118, %EAX_val.33, !mcsema_real_eip !27
  %120 = xor i32 %119, 9, !mcsema_real_eip !27
  %121 = and i32 %120, 16, !mcsema_real_eip !27
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !27
  store i1 %122, i1* %AF, !mcsema_real_eip !27
  %123 = trunc i32 %118 to i8, !mcsema_real_eip !27
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !27
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !27
  %126 = xor i1 %125, true, !mcsema_real_eip !27
  store i1 %126, i1* %PF, !mcsema_real_eip !27
  %127 = icmp eq i32 %118, 0, !mcsema_real_eip !27
  store i1 %127, i1* %ZF, !mcsema_real_eip !27
  %128 = lshr i32 %118, 31, !mcsema_real_eip !27
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !27
  store i1 %129, i1* %SF, !mcsema_real_eip !27
  %130 = icmp ult i32 %EAX_val.33, 9, !mcsema_real_eip !27
  store i1 %130, i1* %CF, !mcsema_real_eip !27
  %131 = xor i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %132 = and i32 %131, %119, !mcsema_real_eip !27
  %133 = lshr i32 %132, 31, !mcsema_real_eip !27
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !27
  store i1 %134, i1* %OF, !mcsema_real_eip !27
  br i1 %127, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x6d:                                       ; preds = %block_0x57
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !29
  %135 = add i64 %RBP_val.34, -4, !mcsema_real_eip !29
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !29
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !29
  store i32 -3, i32* %137, !mcsema_real_eip !29
  br label %block_0x417, !mcsema_real_eip !30

block_0x79:                                       ; preds = %block_0x57
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %138 = add i64 %RBP_val.35, -16, !mcsema_real_eip !31
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !31
  %140 = load i64, i64* %139, !mcsema_real_eip !31
  store i64 %140, i64* %XAX, !mcsema_real_eip !31
  %141 = add i64 %140, 2, !mcsema_real_eip !32
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !32
  %143 = inttoptr i64 %141 to i8*, !mcsema_real_eip !32
  %144 = load i8, i8* %143, !mcsema_real_eip !32
  %145 = zext i8 %144 to i32, !mcsema_real_eip !32
  %146 = zext i32 %145 to i64, !mcsema_real_eip !32
  store i64 %146, i64* %XDI, !mcsema_real_eip !32
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %147 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !33
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !33
  store i64 -2415393069852865332, i64* %148, !mcsema_real_eip !33
  store i64 %147, i64* %XSP, !mcsema_real_eip !33
  %149 = call x86_64_sysvcc i64 @_to_byte(i64 %146), !mcsema_real_eip !33
  store i64 %149, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !34
  %150 = add i64 %RBP_val.39, -24, !mcsema_real_eip !34
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !34
  %EAX_val.41 = load i32, i32* %EAX.9, !mcsema_real_eip !34
  %152 = inttoptr i64 %150 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.41, i32* %152, !mcsema_real_eip !34
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !35
  %153 = add i64 %RBP_val.42, -24, !mcsema_real_eip !35
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !35
  %155 = inttoptr i64 %153 to i32*, !mcsema_real_eip !35
  %156 = load i32, i32* %155, !mcsema_real_eip !35
  %157 = zext i32 %156 to i64, !mcsema_real_eip !35
  store i64 %157, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !36
  %158 = and i32 %EAX_val.44, -2147483648, !mcsema_real_eip !36
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !36
  %160 = load i1, i1* %CF, !mcsema_real_eip !36
  %161 = shl i32 %EAX_val.44, 1, !mcsema_real_eip !36
  %162 = load i1, i1* %OF, !mcsema_real_eip !36
  %163 = and i32 %161, -2147483648, !mcsema_real_eip !36
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !36
  %165 = xor i1 %164, %159, !mcsema_real_eip !36
  store i1 %165, i1* %OF, !mcsema_real_eip !36
  store i1 %159, i1* %CF, !mcsema_real_eip !36
  %166 = load i1, i1* %ZF, !mcsema_real_eip !36
  %167 = icmp eq i32 %161, 0, !mcsema_real_eip !36
  store i1 %167, i1* %ZF, !mcsema_real_eip !36
  %168 = load i1, i1* %SF, !mcsema_real_eip !36
  %169 = icmp slt i32 %161, 0, !mcsema_real_eip !36
  store i1 %169, i1* %SF, !mcsema_real_eip !36
  %170 = load i1, i1* %PF, !mcsema_real_eip !36
  %171 = trunc i32 %161 to i8, !mcsema_real_eip !36
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !36
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !36
  %174 = xor i1 %173, true, !mcsema_real_eip !36
  store i1 %174, i1* %PF, !mcsema_real_eip !36
  %175 = zext i32 %161 to i64, !mcsema_real_eip !36
  store i64 %175, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.46 = load i32, i32* %EAX.9, !mcsema_real_eip !37
  %176 = sub i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %177 = xor i32 %176, %EAX_val.46, !mcsema_real_eip !37
  %178 = xor i32 %177, 26, !mcsema_real_eip !37
  %179 = and i32 %178, 16, !mcsema_real_eip !37
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !37
  store i1 %180, i1* %AF, !mcsema_real_eip !37
  %181 = trunc i32 %176 to i8, !mcsema_real_eip !37
  %182 = call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !37
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !37
  %184 = xor i1 %183, true, !mcsema_real_eip !37
  store i1 %184, i1* %PF, !mcsema_real_eip !37
  %185 = icmp eq i32 %176, 0, !mcsema_real_eip !37
  store i1 %185, i1* %ZF, !mcsema_real_eip !37
  %186 = lshr i32 %176, 31, !mcsema_real_eip !37
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !37
  store i1 %187, i1* %SF, !mcsema_real_eip !37
  %188 = icmp ult i32 %EAX_val.46, 26, !mcsema_real_eip !37
  store i1 %188, i1* %CF, !mcsema_real_eip !37
  %189 = xor i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %190 = and i32 %189, %177, !mcsema_real_eip !37
  %191 = lshr i32 %190, 31, !mcsema_real_eip !37
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !37
  store i1 %192, i1* %OF, !mcsema_real_eip !37
  br i1 %185, label %block_0xa4, label %block_0x98, !mcsema_real_eip !38

block_0x98:                                       ; preds = %block_0x79
  %193 = add i64 %RBP_val.42, -4, !mcsema_real_eip !39
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !39
  %195 = inttoptr i64 %193 to i32*, !mcsema_real_eip !39
  store i32 -4, i32* %195, !mcsema_real_eip !39
  br label %block_0x417, !mcsema_real_eip !40

block_0xa4:                                       ; preds = %block_0x79
  %196 = add i64 %RBP_val.42, -16, !mcsema_real_eip !41
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !41
  %198 = load i64, i64* %197, !mcsema_real_eip !41
  store i64 %198, i64* %XAX, !mcsema_real_eip !41
  %199 = add i64 %198, 3, !mcsema_real_eip !42
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !42
  %201 = inttoptr i64 %199 to i8*, !mcsema_real_eip !42
  %202 = load i8, i8* %201, !mcsema_real_eip !42
  %203 = zext i8 %202 to i32, !mcsema_real_eip !42
  %204 = zext i32 %203 to i64, !mcsema_real_eip !42
  store i64 %204, i64* %XDI, !mcsema_real_eip !42
  %RSP_val.51 = load i64, i64* %XSP, !mcsema_real_eip !43
  %205 = sub i64 %RSP_val.51, 8, !mcsema_real_eip !43
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !43
  store i64 -2415393069852865332, i64* %206, !mcsema_real_eip !43
  store i64 %205, i64* %XSP, !mcsema_real_eip !43
  %207 = call x86_64_sysvcc i64 @_to_byte(i64 %204), !mcsema_real_eip !43
  store i64 %207, i64* %XAX, !mcsema_real_eip !43
  store i64 2, i64* %XDI, !mcsema_real_eip !44
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !45
  %208 = add i64 %RBP_val.52, -28, !mcsema_real_eip !45
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !45
  %EAX_val.54 = load i32, i32* %EAX.9, !mcsema_real_eip !45
  %210 = inttoptr i64 %208 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.54, i32* %210, !mcsema_real_eip !45
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !46
  %211 = add i64 %RBP_val.55, -28, !mcsema_real_eip !46
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !46
  %213 = inttoptr i64 %211 to i32*, !mcsema_real_eip !46
  %214 = load i32, i32* %213, !mcsema_real_eip !46
  %215 = zext i32 %214 to i64, !mcsema_real_eip !46
  store i64 %215, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !47
  %216 = add i32 1, %EAX_val.57, !mcsema_real_eip !47
  %217 = xor i32 %216, %EAX_val.57, !mcsema_real_eip !47
  %218 = xor i32 %217, 1, !mcsema_real_eip !47
  %219 = and i32 %218, 16, !mcsema_real_eip !47
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !47
  store i1 %220, i1* %AF, !mcsema_real_eip !47
  %221 = lshr i32 %216, 31, !mcsema_real_eip !47
  %222 = trunc i32 %221 to i1, !mcsema_real_eip !47
  store i1 %222, i1* %SF, !mcsema_real_eip !47
  %223 = icmp eq i32 %216, 0, !mcsema_real_eip !47
  store i1 %223, i1* %ZF, !mcsema_real_eip !47
  %224 = xor i32 %EAX_val.57, 1, !mcsema_real_eip !47
  %225 = xor i32 %224, -1, !mcsema_real_eip !47
  %226 = and i32 %225, %217, !mcsema_real_eip !47
  %227 = lshr i32 %226, 31, !mcsema_real_eip !47
  %228 = and i32 %227, 1, !mcsema_real_eip !47
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !47
  store i1 %229, i1* %OF, !mcsema_real_eip !47
  %230 = trunc i32 %216 to i8, !mcsema_real_eip !47
  %231 = call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !47
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !47
  %233 = xor i1 %232, true, !mcsema_real_eip !47
  store i1 %233, i1* %PF, !mcsema_real_eip !47
  %234 = icmp ult i32 %216, %EAX_val.57, !mcsema_real_eip !47
  store i1 %234, i1* %CF, !mcsema_real_eip !47
  %235 = zext i32 %216 to i64, !mcsema_real_eip !47
  store i64 %235, i64* %XAX, !mcsema_real_eip !47
  %EAX_val.59 = load i32, i32* %EAX.9, !mcsema_real_eip !48
  %236 = and i32 %EAX_val.59, -2147483648, !mcsema_real_eip !48
  %237 = icmp eq i32 %236, 0, !mcsema_real_eip !48
  %238 = select i1 %237, i32 0, i32 -1, !mcsema_real_eip !48
  %239 = zext i32 %238 to i64, !mcsema_real_eip !48
  store i64 %239, i64* %XDX, !mcsema_real_eip !48
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.61 = load i32, i32* %EDI.60, !mcsema_real_eip !49
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !49
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !49
  %240 = zext i32 %EDX_val.65 to i64, !mcsema_real_eip !49
  %241 = shl i64 %240, 32, !mcsema_real_eip !49
  %242 = sext i32 %EAX_val.59 to i64, !mcsema_real_eip !49
  %243 = or i64 %241, %242, !mcsema_real_eip !49
  %244 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !49
  %245 = sdiv i64 %243, %244, !mcsema_real_eip !49
  %246 = srem i64 %243, %244, !mcsema_real_eip !49
  %247 = trunc i64 %246 to i32, !mcsema_real_eip !49
  %248 = trunc i64 %245 to i32, !mcsema_real_eip !49
  %249 = zext i32 %247 to i64, !mcsema_real_eip !49
  store i64 %249, i64* %XDX, !mcsema_real_eip !49
  %250 = zext i32 %248 to i64, !mcsema_real_eip !49
  store i64 %250, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.67 = load i32, i32* %EAX.9, !mcsema_real_eip !50
  %251 = sub i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %252 = xor i32 %251, %EAX_val.67, !mcsema_real_eip !50
  %253 = xor i32 %252, 7, !mcsema_real_eip !50
  %254 = and i32 %253, 16, !mcsema_real_eip !50
  %255 = icmp ne i32 %254, 0, !mcsema_real_eip !50
  store i1 %255, i1* %AF, !mcsema_real_eip !50
  %256 = trunc i32 %251 to i8, !mcsema_real_eip !50
  %257 = call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !50
  %258 = trunc i8 %257 to i1, !mcsema_real_eip !50
  %259 = xor i1 %258, true, !mcsema_real_eip !50
  store i1 %259, i1* %PF, !mcsema_real_eip !50
  %260 = icmp eq i32 %251, 0, !mcsema_real_eip !50
  store i1 %260, i1* %ZF, !mcsema_real_eip !50
  %261 = lshr i32 %251, 31, !mcsema_real_eip !50
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !50
  store i1 %262, i1* %SF, !mcsema_real_eip !50
  %263 = icmp ult i32 %EAX_val.67, 7, !mcsema_real_eip !50
  store i1 %263, i1* %CF, !mcsema_real_eip !50
  %264 = xor i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %265 = and i32 %264, %252, !mcsema_real_eip !50
  %266 = lshr i32 %265, 31, !mcsema_real_eip !50
  %267 = trunc i32 %266 to i1, !mcsema_real_eip !50
  store i1 %267, i1* %OF, !mcsema_real_eip !50
  br i1 %260, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !51

block_0xcb:                                       ; preds = %block_0xa4
  %268 = add i64 %RBP_val.55, -4, !mcsema_real_eip !52
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !52
  %270 = inttoptr i64 %268 to i32*, !mcsema_real_eip !52
  store i32 -5, i32* %270, !mcsema_real_eip !52
  br label %block_0x417, !mcsema_real_eip !53

block_0xd7:                                       ; preds = %block_0xa4
  %271 = add i64 %RBP_val.55, -16, !mcsema_real_eip !54
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !54
  %273 = load i64, i64* %272, !mcsema_real_eip !54
  store i64 %273, i64* %XAX, !mcsema_real_eip !54
  %274 = add i64 %273, 4, !mcsema_real_eip !55
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !55
  %276 = inttoptr i64 %274 to i8*, !mcsema_real_eip !55
  %277 = load i8, i8* %276, !mcsema_real_eip !55
  %278 = sext i8 %277 to i32, !mcsema_real_eip !55
  %279 = zext i32 %278 to i64, !mcsema_real_eip !55
  store i64 %279, i64* %XCX, !mcsema_real_eip !55
  %ECX_val.72 = load i32, i32* %ECX.12, !mcsema_real_eip !56
  %280 = and i32 %ECX_val.72, 15, !mcsema_real_eip !56
  store i1 false, i1* %SF, !mcsema_real_eip !56
  %281 = icmp eq i32 %280, 0, !mcsema_real_eip !56
  store i1 %281, i1* %ZF, !mcsema_real_eip !56
  %282 = trunc i32 %280 to i8, !mcsema_real_eip !56
  %283 = call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !56
  %284 = trunc i8 %283 to i1, !mcsema_real_eip !56
  %285 = xor i1 %284, true, !mcsema_real_eip !56
  store i1 %285, i1* %PF, !mcsema_real_eip !56
  store i1 false, i1* %OF, !mcsema_real_eip !56
  store i1 false, i1* %CF, !mcsema_real_eip !56
  store i1 undef, i1* %AF, !mcsema_real_eip !56
  %286 = zext i32 %280 to i64, !mcsema_real_eip !56
  store i64 %286, i64* %XCX, !mcsema_real_eip !56
  %ECX_val.74 = load i32, i32* %ECX.12, !mcsema_real_eip !57
  %287 = sub i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %288 = xor i32 %287, %ECX_val.74, !mcsema_real_eip !57
  %289 = xor i32 %288, 1, !mcsema_real_eip !57
  %290 = and i32 %289, 16, !mcsema_real_eip !57
  %291 = icmp ne i32 %290, 0, !mcsema_real_eip !57
  store i1 %291, i1* %AF, !mcsema_real_eip !57
  %292 = trunc i32 %287 to i8, !mcsema_real_eip !57
  %293 = call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !57
  %294 = trunc i8 %293 to i1, !mcsema_real_eip !57
  %295 = xor i1 %294, true, !mcsema_real_eip !57
  store i1 %295, i1* %PF, !mcsema_real_eip !57
  %296 = icmp eq i32 %287, 0, !mcsema_real_eip !57
  store i1 %296, i1* %ZF, !mcsema_real_eip !57
  %297 = lshr i32 %287, 31, !mcsema_real_eip !57
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !57
  store i1 %298, i1* %SF, !mcsema_real_eip !57
  %299 = icmp ult i32 %ECX_val.74, 1, !mcsema_real_eip !57
  store i1 %299, i1* %CF, !mcsema_real_eip !57
  %300 = xor i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %301 = and i32 %300, %288, !mcsema_real_eip !57
  %302 = lshr i32 %301, 31, !mcsema_real_eip !57
  %303 = trunc i32 %302 to i1, !mcsema_real_eip !57
  store i1 %303, i1* %OF, !mcsema_real_eip !57
  %304 = icmp eq i1 %296, false, !mcsema_real_eip !58
  br i1 %304, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !58

block_0xeb:                                       ; preds = %block_0xd7
  %305 = load i64, i64* %272, !mcsema_real_eip !59
  store i64 %305, i64* %XAX, !mcsema_real_eip !59
  %306 = add i64 %305, 4, !mcsema_real_eip !60
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !60
  %308 = inttoptr i64 %306 to i8*, !mcsema_real_eip !60
  %309 = load i8, i8* %308, !mcsema_real_eip !60
  %310 = sext i8 %309 to i32, !mcsema_real_eip !60
  %311 = zext i32 %310 to i64, !mcsema_real_eip !60
  store i64 %311, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.78 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %312 = and i32 %ECX_val.78, 240, !mcsema_real_eip !61
  store i1 false, i1* %SF, !mcsema_real_eip !61
  %313 = icmp eq i32 %312, 0, !mcsema_real_eip !61
  store i1 %313, i1* %ZF, !mcsema_real_eip !61
  %314 = trunc i32 %312 to i8, !mcsema_real_eip !61
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !61
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !61
  %317 = xor i1 %316, true, !mcsema_real_eip !61
  store i1 %317, i1* %PF, !mcsema_real_eip !61
  store i1 false, i1* %OF, !mcsema_real_eip !61
  store i1 false, i1* %CF, !mcsema_real_eip !61
  store i1 undef, i1* %AF, !mcsema_real_eip !61
  %318 = zext i32 %312 to i64, !mcsema_real_eip !61
  store i64 %318, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.80 = load i32, i32* %ECX.12, !mcsema_real_eip !62
  %319 = sub i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %320 = xor i32 %319, %ECX_val.80, !mcsema_real_eip !62
  %321 = xor i32 %320, 48, !mcsema_real_eip !62
  %322 = and i32 %321, 16, !mcsema_real_eip !62
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !62
  store i1 %323, i1* %AF, !mcsema_real_eip !62
  %324 = trunc i32 %319 to i8, !mcsema_real_eip !62
  %325 = call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !62
  %326 = trunc i8 %325 to i1, !mcsema_real_eip !62
  %327 = xor i1 %326, true, !mcsema_real_eip !62
  store i1 %327, i1* %PF, !mcsema_real_eip !62
  %328 = icmp eq i32 %319, 0, !mcsema_real_eip !62
  store i1 %328, i1* %ZF, !mcsema_real_eip !62
  %329 = lshr i32 %319, 31, !mcsema_real_eip !62
  %330 = trunc i32 %329 to i1, !mcsema_real_eip !62
  store i1 %330, i1* %SF, !mcsema_real_eip !62
  %331 = icmp ult i32 %ECX_val.80, 48, !mcsema_real_eip !62
  store i1 %331, i1* %CF, !mcsema_real_eip !62
  %332 = xor i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %333 = and i32 %332, %320, !mcsema_real_eip !62
  %334 = lshr i32 %333, 31, !mcsema_real_eip !62
  %335 = trunc i32 %334 to i1, !mcsema_real_eip !62
  store i1 %335, i1* %OF, !mcsema_real_eip !62
  %336 = icmp eq i1 %328, false, !mcsema_real_eip !63
  br i1 %336, label %block_0x10e, label %block_0x102, !mcsema_real_eip !63

block_0x102:                                      ; preds = %block_0xeb
  %337 = add i64 %RBP_val.55, -20, !mcsema_real_eip !64
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !64
  %339 = inttoptr i64 %337 to i32*, !mcsema_real_eip !64
  store i32 -4, i32* %339, !mcsema_real_eip !64
  br label %block_0x11a, !mcsema_real_eip !65

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %340 = add i64 %RBP_val.55, -4, !mcsema_real_eip !66
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !66
  %342 = inttoptr i64 %340 to i32*, !mcsema_real_eip !66
  store i32 -6, i32* %342, !mcsema_real_eip !66
  br label %block_0x417, !mcsema_real_eip !67

block_0x11a:                                      ; preds = %block_0x102
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !68
  %343 = add i64 %RBP_val.83, -16, !mcsema_real_eip !68
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !68
  %345 = load i64, i64* %344, !mcsema_real_eip !68
  store i64 %345, i64* %XAX, !mcsema_real_eip !68
  %346 = add i64 %345, 5, !mcsema_real_eip !69
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !69
  %348 = inttoptr i64 %346 to i8*, !mcsema_real_eip !69
  %349 = load i8, i8* %348, !mcsema_real_eip !69
  %350 = sext i8 %349 to i32, !mcsema_real_eip !69
  %351 = zext i32 %350 to i64, !mcsema_real_eip !69
  store i64 %351, i64* %XCX, !mcsema_real_eip !69
  %ECX_val.86 = load i32, i32* %ECX.12, !mcsema_real_eip !70
  %352 = and i32 %ECX_val.86, 15, !mcsema_real_eip !70
  store i1 false, i1* %SF, !mcsema_real_eip !70
  %353 = icmp eq i32 %352, 0, !mcsema_real_eip !70
  store i1 %353, i1* %ZF, !mcsema_real_eip !70
  %354 = trunc i32 %352 to i8, !mcsema_real_eip !70
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !70
  %356 = trunc i8 %355 to i1, !mcsema_real_eip !70
  %357 = xor i1 %356, true, !mcsema_real_eip !70
  store i1 %357, i1* %PF, !mcsema_real_eip !70
  store i1 false, i1* %OF, !mcsema_real_eip !70
  store i1 false, i1* %CF, !mcsema_real_eip !70
  store i1 undef, i1* %AF, !mcsema_real_eip !70
  %358 = zext i32 %352 to i64, !mcsema_real_eip !70
  store i64 %358, i64* %XCX, !mcsema_real_eip !70
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !71
  %CL_val.88 = load i8, i8* %CL.87, !mcsema_real_eip !71
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !71
  store i8 %CL_val.88, i8* %DL.89, !mcsema_real_eip !71
  %359 = add i64 %RBP_val.83, -33, !mcsema_real_eip !72
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !72
  %361 = inttoptr i64 %359 to i8*, !mcsema_real_eip !72
  store i8 %CL_val.88, i8* %361, !mcsema_real_eip !72
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !73
  %362 = add i64 %RBP_val.93, -16, !mcsema_real_eip !73
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !73
  %364 = load i64, i64* %363, !mcsema_real_eip !73
  store i64 %364, i64* %XAX, !mcsema_real_eip !73
  %365 = add i64 %364, 5, !mcsema_real_eip !74
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !74
  %367 = inttoptr i64 %365 to i8*, !mcsema_real_eip !74
  %368 = load i8, i8* %367, !mcsema_real_eip !74
  %369 = sext i8 %368 to i32, !mcsema_real_eip !74
  %370 = zext i32 %369 to i64, !mcsema_real_eip !74
  store i64 %370, i64* %XCX, !mcsema_real_eip !74
  %ECX_val.96 = load i32, i32* %ECX.12, !mcsema_real_eip !75
  %371 = and i32 %ECX_val.96, 240, !mcsema_real_eip !75
  store i1 false, i1* %SF, !mcsema_real_eip !75
  %372 = icmp eq i32 %371, 0, !mcsema_real_eip !75
  store i1 %372, i1* %ZF, !mcsema_real_eip !75
  %373 = trunc i32 %371 to i8, !mcsema_real_eip !75
  %374 = call i8 @llvm.ctpop.i8(i8 %373), !mcsema_real_eip !75
  %375 = trunc i8 %374 to i1, !mcsema_real_eip !75
  %376 = xor i1 %375, true, !mcsema_real_eip !75
  store i1 %376, i1* %PF, !mcsema_real_eip !75
  store i1 false, i1* %OF, !mcsema_real_eip !75
  store i1 false, i1* %CF, !mcsema_real_eip !75
  store i1 undef, i1* %AF, !mcsema_real_eip !75
  %377 = zext i32 %371 to i64, !mcsema_real_eip !75
  store i64 %377, i64* %XCX, !mcsema_real_eip !75
  %CL_val.98 = load i8, i8* %CL.87, !mcsema_real_eip !76
  store i8 %CL_val.98, i8* %DL.89, !mcsema_real_eip !76
  %378 = add i64 %RBP_val.93, -34, !mcsema_real_eip !77
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !77
  %380 = inttoptr i64 %378 to i8*, !mcsema_real_eip !77
  store i8 %CL_val.98, i8* %380, !mcsema_real_eip !77
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !78
  %381 = add i64 %RBP_val.103, -33, !mcsema_real_eip !78
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !78
  %383 = inttoptr i64 %381 to i8*, !mcsema_real_eip !78
  %384 = load i8, i8* %383, !mcsema_real_eip !78
  %385 = zext i8 %384 to i32, !mcsema_real_eip !78
  %386 = zext i32 %385 to i64, !mcsema_real_eip !78
  store i64 %386, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.105 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %387 = sub i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %388 = xor i32 %387, %ECX_val.105, !mcsema_real_eip !79
  %389 = xor i32 %388, 3, !mcsema_real_eip !79
  %390 = and i32 %389, 16, !mcsema_real_eip !79
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !79
  store i1 %391, i1* %AF, !mcsema_real_eip !79
  %392 = trunc i32 %387 to i8, !mcsema_real_eip !79
  %393 = call i8 @llvm.ctpop.i8(i8 %392), !mcsema_real_eip !79
  %394 = trunc i8 %393 to i1, !mcsema_real_eip !79
  %395 = xor i1 %394, true, !mcsema_real_eip !79
  store i1 %395, i1* %PF, !mcsema_real_eip !79
  %396 = icmp eq i32 %387, 0, !mcsema_real_eip !79
  store i1 %396, i1* %ZF, !mcsema_real_eip !79
  %397 = lshr i32 %387, 31, !mcsema_real_eip !79
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !79
  store i1 %398, i1* %SF, !mcsema_real_eip !79
  %399 = icmp ult i32 %ECX_val.105, 3, !mcsema_real_eip !79
  store i1 %399, i1* %CF, !mcsema_real_eip !79
  %400 = xor i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %401 = and i32 %400, %388, !mcsema_real_eip !79
  %402 = lshr i32 %401, 31, !mcsema_real_eip !79
  %403 = trunc i32 %402 to i1, !mcsema_real_eip !79
  store i1 %403, i1* %OF, !mcsema_real_eip !79
  %404 = icmp eq i1 %396, false, !mcsema_real_eip !80
  br i1 %404, label %block_0x165, label %block_0x14a, !mcsema_real_eip !80

block_0x14a:                                      ; preds = %block_0x11a
  %405 = add i64 %RBP_val.103, -34, !mcsema_real_eip !81
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !81
  %407 = inttoptr i64 %405 to i8*, !mcsema_real_eip !81
  %408 = load i8, i8* %407, !mcsema_real_eip !81
  %409 = zext i8 %408 to i32, !mcsema_real_eip !81
  %410 = zext i32 %409 to i64, !mcsema_real_eip !81
  store i64 %410, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.108 = load i32, i32* %EAX.9, !mcsema_real_eip !82
  %411 = sub i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %412 = xor i32 %411, %EAX_val.108, !mcsema_real_eip !82
  %413 = xor i32 %412, 96, !mcsema_real_eip !82
  %414 = and i32 %413, 16, !mcsema_real_eip !82
  %415 = icmp ne i32 %414, 0, !mcsema_real_eip !82
  store i1 %415, i1* %AF, !mcsema_real_eip !82
  %416 = trunc i32 %411 to i8, !mcsema_real_eip !82
  %417 = call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !82
  %418 = trunc i8 %417 to i1, !mcsema_real_eip !82
  %419 = xor i1 %418, true, !mcsema_real_eip !82
  store i1 %419, i1* %PF, !mcsema_real_eip !82
  %420 = icmp eq i32 %411, 0, !mcsema_real_eip !82
  store i1 %420, i1* %ZF, !mcsema_real_eip !82
  %421 = lshr i32 %411, 31, !mcsema_real_eip !82
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !82
  store i1 %422, i1* %SF, !mcsema_real_eip !82
  %423 = icmp ult i32 %EAX_val.108, 96, !mcsema_real_eip !82
  store i1 %423, i1* %CF, !mcsema_real_eip !82
  %424 = xor i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %425 = and i32 %424, %412, !mcsema_real_eip !82
  %426 = lshr i32 %425, 31, !mcsema_real_eip !82
  %427 = trunc i32 %426 to i1, !mcsema_real_eip !82
  store i1 %427, i1* %OF, !mcsema_real_eip !82
  %428 = icmp eq i1 %420, false, !mcsema_real_eip !83
  br i1 %428, label %block_0x165, label %block_0x157, !mcsema_real_eip !83

block_0x157:                                      ; preds = %block_0x14a
  %429 = add i64 %RBP_val.103, -20, !mcsema_real_eip !84
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !84
  %431 = inttoptr i64 %429 to i32*, !mcsema_real_eip !84
  %432 = load i32, i32* %431, !mcsema_real_eip !84
  %433 = zext i32 %432 to i64, !mcsema_real_eip !84
  store i64 %433, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.111 = load i32, i32* %EAX.9, !mcsema_real_eip !85
  %434 = add i32 4, %EAX_val.111, !mcsema_real_eip !85
  %435 = xor i32 %434, %EAX_val.111, !mcsema_real_eip !85
  %436 = xor i32 %435, 4, !mcsema_real_eip !85
  %437 = and i32 %436, 16, !mcsema_real_eip !85
  %438 = icmp ne i32 %437, 0, !mcsema_real_eip !85
  store i1 %438, i1* %AF, !mcsema_real_eip !85
  %439 = lshr i32 %434, 31, !mcsema_real_eip !85
  %440 = trunc i32 %439 to i1, !mcsema_real_eip !85
  store i1 %440, i1* %SF, !mcsema_real_eip !85
  %441 = icmp eq i32 %434, 0, !mcsema_real_eip !85
  store i1 %441, i1* %ZF, !mcsema_real_eip !85
  %442 = xor i32 %EAX_val.111, 4, !mcsema_real_eip !85
  %443 = xor i32 %442, -1, !mcsema_real_eip !85
  %444 = and i32 %443, %435, !mcsema_real_eip !85
  %445 = lshr i32 %444, 31, !mcsema_real_eip !85
  %446 = and i32 %445, 1, !mcsema_real_eip !85
  %447 = trunc i32 %446 to i1, !mcsema_real_eip !85
  store i1 %447, i1* %OF, !mcsema_real_eip !85
  %448 = trunc i32 %434 to i8, !mcsema_real_eip !85
  %449 = call i8 @llvm.ctpop.i8(i8 %448), !mcsema_real_eip !85
  %450 = trunc i8 %449 to i1, !mcsema_real_eip !85
  %451 = xor i1 %450, true, !mcsema_real_eip !85
  store i1 %451, i1* %PF, !mcsema_real_eip !85
  %452 = icmp ult i32 %434, %EAX_val.111, !mcsema_real_eip !85
  store i1 %452, i1* %CF, !mcsema_real_eip !85
  %453 = zext i32 %434 to i64, !mcsema_real_eip !85
  store i64 %453, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.114 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  store i32 %EAX_val.114, i32* %431, !mcsema_real_eip !86
  br label %block_0x16e, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %454 = add i64 %RBP_val.103, -20, !mcsema_real_eip !88
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !88
  %456 = inttoptr i64 %454 to i32*, !mcsema_real_eip !88
  %457 = load i32, i32* %456, !mcsema_real_eip !88
  %458 = zext i32 %457 to i64, !mcsema_real_eip !88
  store i64 %458, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.117 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %459 = add i32 5, %EAX_val.117, !mcsema_real_eip !89
  %460 = xor i32 %459, %EAX_val.117, !mcsema_real_eip !89
  %461 = xor i32 %460, 5, !mcsema_real_eip !89
  %462 = and i32 %461, 16, !mcsema_real_eip !89
  %463 = icmp ne i32 %462, 0, !mcsema_real_eip !89
  store i1 %463, i1* %AF, !mcsema_real_eip !89
  %464 = lshr i32 %459, 31, !mcsema_real_eip !89
  %465 = trunc i32 %464 to i1, !mcsema_real_eip !89
  store i1 %465, i1* %SF, !mcsema_real_eip !89
  %466 = icmp eq i32 %459, 0, !mcsema_real_eip !89
  store i1 %466, i1* %ZF, !mcsema_real_eip !89
  %467 = xor i32 %EAX_val.117, 5, !mcsema_real_eip !89
  %468 = xor i32 %467, -1, !mcsema_real_eip !89
  %469 = and i32 %468, %460, !mcsema_real_eip !89
  %470 = lshr i32 %469, 31, !mcsema_real_eip !89
  %471 = and i32 %470, 1, !mcsema_real_eip !89
  %472 = trunc i32 %471 to i1, !mcsema_real_eip !89
  store i1 %472, i1* %OF, !mcsema_real_eip !89
  %473 = trunc i32 %459 to i8, !mcsema_real_eip !89
  %474 = call i8 @llvm.ctpop.i8(i8 %473), !mcsema_real_eip !89
  %475 = trunc i8 %474 to i1, !mcsema_real_eip !89
  %476 = xor i1 %475, true, !mcsema_real_eip !89
  store i1 %476, i1* %PF, !mcsema_real_eip !89
  %477 = icmp ult i32 %459, %EAX_val.117, !mcsema_real_eip !89
  store i1 %477, i1* %CF, !mcsema_real_eip !89
  %478 = zext i32 %459 to i64, !mcsema_real_eip !89
  store i64 %478, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.120 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.120, i32* %456, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !91

block_0x16e:                                      ; preds = %block_0x165, %block_0x157
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !91
  %479 = add i64 %RBP_val.121, -16, !mcsema_real_eip !91
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !91
  %481 = load i64, i64* %480, !mcsema_real_eip !91
  store i64 %481, i64* %XAX, !mcsema_real_eip !91
  %482 = add i64 %481, 6, !mcsema_real_eip !92
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !92
  %484 = inttoptr i64 %482 to i8*, !mcsema_real_eip !92
  %485 = load i8, i8* %484, !mcsema_real_eip !92
  %486 = zext i8 %485 to i32, !mcsema_real_eip !92
  %487 = zext i32 %486 to i64, !mcsema_real_eip !92
  store i64 %487, i64* %XDI, !mcsema_real_eip !92
  %RSP_val.124 = load i64, i64* %XSP, !mcsema_real_eip !93
  %488 = sub i64 %RSP_val.124, 8, !mcsema_real_eip !93
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %489, !mcsema_real_eip !93
  store i64 %488, i64* %XSP, !mcsema_real_eip !93
  %490 = call x86_64_sysvcc i64 @_to_byte(i64 %487), !mcsema_real_eip !93
  store i64 %490, i64* %XAX, !mcsema_real_eip !93
  %AL.125 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.126 = load i8, i8* %AL.125, !mcsema_real_eip !94
  store i8 %AL_val.126, i8* %CL.87, !mcsema_real_eip !94
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !95
  %491 = add i64 %RBP_val.128, -35, !mcsema_real_eip !95
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !95
  %493 = inttoptr i64 %491 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.126, i8* %493, !mcsema_real_eip !95
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !96
  %494 = add i64 %RBP_val.131, -16, !mcsema_real_eip !96
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !96
  %496 = load i64, i64* %495, !mcsema_real_eip !96
  store i64 %496, i64* %XDX, !mcsema_real_eip !96
  %497 = add i64 %496, 7, !mcsema_real_eip !97
  %498 = inttoptr i64 %497 to i64*, !mcsema_real_eip !97
  %499 = inttoptr i64 %497 to i8*, !mcsema_real_eip !97
  %500 = load i8, i8* %499, !mcsema_real_eip !97
  %501 = zext i8 %500 to i32, !mcsema_real_eip !97
  %502 = zext i32 %501 to i64, !mcsema_real_eip !97
  store i64 %502, i64* %XDI, !mcsema_real_eip !97
  %RSP_val.134 = load i64, i64* %XSP, !mcsema_real_eip !98
  %503 = sub i64 %RSP_val.134, 8, !mcsema_real_eip !98
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %504, !mcsema_real_eip !98
  store i64 %503, i64* %XSP, !mcsema_real_eip !98
  %505 = call x86_64_sysvcc i64 @_to_byte(i64 %502), !mcsema_real_eip !98
  store i64 %505, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !99
  %506 = add i64 %RBP_val.135, -35, !mcsema_real_eip !99
  %507 = inttoptr i64 %506 to i64*, !mcsema_real_eip !99
  %508 = inttoptr i64 %506 to i8*, !mcsema_real_eip !99
  %509 = load i8, i8* %508, !mcsema_real_eip !99
  %510 = zext i8 %509 to i32, !mcsema_real_eip !99
  %511 = zext i32 %510 to i64, !mcsema_real_eip !99
  store i64 %511, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.137 = load i32, i32* %EDI.60, !mcsema_real_eip !100
  %EAX_val.139 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %512 = or i32 %EDI_val.137, %EAX_val.139, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %513 = lshr i32 %512, 31, !mcsema_real_eip !100
  %514 = trunc i32 %513 to i1, !mcsema_real_eip !100
  store i1 %514, i1* %SF, !mcsema_real_eip !100
  %515 = icmp eq i32 %512, 0, !mcsema_real_eip !100
  store i1 %515, i1* %ZF, !mcsema_real_eip !100
  %516 = trunc i32 %512 to i8, !mcsema_real_eip !100
  %517 = call i8 @llvm.ctpop.i8(i8 %516), !mcsema_real_eip !100
  %518 = trunc i8 %517 to i1, !mcsema_real_eip !100
  %519 = xor i1 %518, true, !mcsema_real_eip !100
  store i1 %519, i1* %PF, !mcsema_real_eip !100
  %520 = zext i32 %512 to i64, !mcsema_real_eip !100
  store i64 %520, i64* %XDI, !mcsema_real_eip !100
  %DIL.140 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.141 = load i8, i8* %DIL.140, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %CL.87, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %508, !mcsema_real_eip !102
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !103
  %521 = add i64 %RBP_val.146, -35, !mcsema_real_eip !103
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !103
  %523 = inttoptr i64 %521 to i8*, !mcsema_real_eip !103
  %524 = load i8, i8* %523, !mcsema_real_eip !103
  %525 = zext i8 %524 to i32, !mcsema_real_eip !103
  %526 = zext i32 %525 to i64, !mcsema_real_eip !103
  store i64 %526, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %527 = xor i32 %EAX_val.148, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %528 = lshr i32 %527, 31, !mcsema_real_eip !104
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !104
  store i1 %529, i1* %SF, !mcsema_real_eip !104
  %530 = icmp eq i32 %527, 0, !mcsema_real_eip !104
  store i1 %530, i1* %ZF, !mcsema_real_eip !104
  %531 = trunc i32 %527 to i8, !mcsema_real_eip !104
  %532 = call i8 @llvm.ctpop.i8(i8 %531), !mcsema_real_eip !104
  %533 = trunc i8 %532 to i1, !mcsema_real_eip !104
  %534 = xor i1 %533, true, !mcsema_real_eip !104
  store i1 %534, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %535 = zext i32 %527 to i64, !mcsema_real_eip !104
  store i64 %535, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.150 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %536 = sub i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %537 = xor i32 %536, %EAX_val.150, !mcsema_real_eip !105
  %538 = xor i32 %537, 70, !mcsema_real_eip !105
  %539 = and i32 %538, 16, !mcsema_real_eip !105
  %540 = icmp ne i32 %539, 0, !mcsema_real_eip !105
  store i1 %540, i1* %AF, !mcsema_real_eip !105
  %541 = trunc i32 %536 to i8, !mcsema_real_eip !105
  %542 = call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !105
  %543 = trunc i8 %542 to i1, !mcsema_real_eip !105
  %544 = xor i1 %543, true, !mcsema_real_eip !105
  store i1 %544, i1* %PF, !mcsema_real_eip !105
  %545 = icmp eq i32 %536, 0, !mcsema_real_eip !105
  store i1 %545, i1* %ZF, !mcsema_real_eip !105
  %546 = lshr i32 %536, 31, !mcsema_real_eip !105
  %547 = trunc i32 %546 to i1, !mcsema_real_eip !105
  store i1 %547, i1* %SF, !mcsema_real_eip !105
  %548 = icmp ult i32 %EAX_val.150, 70, !mcsema_real_eip !105
  store i1 %548, i1* %CF, !mcsema_real_eip !105
  %549 = xor i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %550 = and i32 %549, %537, !mcsema_real_eip !105
  %551 = lshr i32 %550, 31, !mcsema_real_eip !105
  %552 = trunc i32 %551 to i1, !mcsema_real_eip !105
  store i1 %552, i1* %OF, !mcsema_real_eip !105
  %553 = icmp eq i1 %545, false, !mcsema_real_eip !106
  br i1 %553, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x1a9:                                      ; preds = %block_0x16e
  %554 = add i64 %RBP_val.146, -20, !mcsema_real_eip !107
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !107
  %556 = inttoptr i64 %554 to i32*, !mcsema_real_eip !107
  %557 = load i32, i32* %556, !mcsema_real_eip !107
  %558 = zext i32 %557 to i64, !mcsema_real_eip !107
  store i64 %558, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.153 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %559 = sub i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %560 = xor i32 %559, %EAX_val.153, !mcsema_real_eip !108
  %561 = xor i32 %560, 1, !mcsema_real_eip !108
  %562 = and i32 %561, 16, !mcsema_real_eip !108
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !108
  store i1 %563, i1* %AF, !mcsema_real_eip !108
  %564 = trunc i32 %559 to i8, !mcsema_real_eip !108
  %565 = call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !108
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !108
  %567 = xor i1 %566, true, !mcsema_real_eip !108
  store i1 %567, i1* %PF, !mcsema_real_eip !108
  %568 = icmp eq i32 %559, 0, !mcsema_real_eip !108
  store i1 %568, i1* %ZF, !mcsema_real_eip !108
  %569 = lshr i32 %559, 31, !mcsema_real_eip !108
  %570 = trunc i32 %569 to i1, !mcsema_real_eip !108
  store i1 %570, i1* %SF, !mcsema_real_eip !108
  %571 = icmp ult i32 %EAX_val.153, 1, !mcsema_real_eip !108
  store i1 %571, i1* %CF, !mcsema_real_eip !108
  %572 = xor i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %573 = and i32 %572, %560, !mcsema_real_eip !108
  %574 = lshr i32 %573, 31, !mcsema_real_eip !108
  %575 = trunc i32 %574 to i1, !mcsema_real_eip !108
  store i1 %575, i1* %OF, !mcsema_real_eip !108
  %576 = zext i32 %559 to i64, !mcsema_real_eip !108
  store i64 %576, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.156 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.156, i32* %556, !mcsema_real_eip !109
  br label %block_0x1c2, !mcsema_real_eip !110

block_0x1b7:                                      ; preds = %block_0x16e
  %577 = add i64 %RBP_val.146, -20, !mcsema_real_eip !111
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !111
  %579 = inttoptr i64 %577 to i32*, !mcsema_real_eip !111
  %580 = load i32, i32* %579, !mcsema_real_eip !111
  %581 = zext i32 %580 to i64, !mcsema_real_eip !111
  store i64 %581, i64* %XCX, !mcsema_real_eip !111
  %582 = load i32, i32* %579, !mcsema_real_eip !112
  %583 = zext i32 %582 to i64, !mcsema_real_eip !112
  store i64 %583, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.160 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  %CL_val.162 = load i8, i8* %CL.87, !mcsema_real_eip !113
  %CL_val.162.zext = zext i8 %CL_val.162 to i32, !mcsema_real_eip !113
  %584 = and i32 %CL_val.162.zext, 31, !mcsema_real_eip !113
  %585 = sub i32 %CL_val.162.zext, 1, !mcsema_real_eip !113
  %586 = icmp ne i32 %584, 0, !mcsema_real_eip !113
  %587 = select i1 %586, i32 %585, i32 0, !mcsema_real_eip !113
  %588 = select i1 %586, i32 1, i32 0, !mcsema_real_eip !113
  %589 = shl i32 %EAX_val.160, %587, !mcsema_real_eip !113
  %590 = and i32 %589, -2147483648, !mcsema_real_eip !113
  %591 = icmp ne i32 %590, 0, !mcsema_real_eip !113
  %592 = select i1 %586, i1 %591, i1 %548, !mcsema_real_eip !113
  %593 = shl i32 %589, %588, !mcsema_real_eip !113
  %594 = icmp eq i32 %584, 1, !mcsema_real_eip !113
  %595 = and i32 %593, -2147483648, !mcsema_real_eip !113
  %596 = icmp ne i32 %595, 0, !mcsema_real_eip !113
  %597 = xor i1 %596, %592, !mcsema_real_eip !113
  %598 = select i1 %594, i1 %597, i1 %552, !mcsema_real_eip !113
  store i1 %598, i1* %OF, !mcsema_real_eip !113
  store i1 %592, i1* %CF, !mcsema_real_eip !113
  %599 = icmp eq i32 %593, 0, !mcsema_real_eip !113
  %600 = select i1 %586, i1 %599, i1 %545, !mcsema_real_eip !113
  store i1 %600, i1* %ZF, !mcsema_real_eip !113
  %601 = icmp slt i32 %593, 0, !mcsema_real_eip !113
  %602 = select i1 %586, i1 %601, i1 %547, !mcsema_real_eip !113
  store i1 %602, i1* %SF, !mcsema_real_eip !113
  %603 = trunc i32 %593 to i8, !mcsema_real_eip !113
  %604 = call i8 @llvm.ctpop.i8(i8 %603), !mcsema_real_eip !113
  %605 = trunc i8 %604 to i1, !mcsema_real_eip !113
  %606 = xor i1 %605, true, !mcsema_real_eip !113
  %607 = select i1 %586, i1 %606, i1 %544, !mcsema_real_eip !113
  store i1 %607, i1* %PF, !mcsema_real_eip !113
  %608 = zext i32 %593 to i64, !mcsema_real_eip !113
  store i64 %608, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.165 = load i32, i32* %EAX.9, !mcsema_real_eip !114
  store i32 %EAX_val.165, i32* %579, !mcsema_real_eip !114
  br label %block_0x1c2, !mcsema_real_eip !115

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !115
  %609 = add i64 %RBP_val.166, -20, !mcsema_real_eip !115
  %610 = inttoptr i64 %609 to i64*, !mcsema_real_eip !115
  %611 = inttoptr i64 %609 to i32*, !mcsema_real_eip !115
  %612 = load i32, i32* %611, !mcsema_real_eip !115
  store i1 false, i1* %AF, !mcsema_real_eip !115
  %613 = trunc i32 %612 to i8, !mcsema_real_eip !115
  %614 = call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !115
  %615 = trunc i8 %614 to i1, !mcsema_real_eip !115
  %616 = xor i1 %615, true, !mcsema_real_eip !115
  store i1 %616, i1* %PF, !mcsema_real_eip !115
  %617 = icmp eq i32 %612, 0, !mcsema_real_eip !115
  store i1 %617, i1* %ZF, !mcsema_real_eip !115
  %618 = lshr i32 %612, 31, !mcsema_real_eip !115
  %619 = trunc i32 %618 to i1, !mcsema_real_eip !115
  store i1 %619, i1* %SF, !mcsema_real_eip !115
  store i1 false, i1* %CF, !mcsema_real_eip !115
  store i1 false, i1* %OF, !mcsema_real_eip !115
  br i1 %617, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !116

block_0x1cc:                                      ; preds = %block_0x1c2
  %620 = add i64 %RBP_val.166, -4, !mcsema_real_eip !117
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !117
  %622 = inttoptr i64 %620 to i32*, !mcsema_real_eip !117
  store i32 -7, i32* %622, !mcsema_real_eip !117
  br label %block_0x417, !mcsema_real_eip !118

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI_val.169 = load i32, i32* %EDI.60, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  store i1 false, i1* %SF, !mcsema_real_eip !119
  store i1 true, i1* %ZF, !mcsema_real_eip !119
  store i1 true, i1* %PF, !mcsema_real_eip !119
  store i1 undef, i1* %AF, !mcsema_real_eip !119
  store i64 0, i64* %XDI, !mcsema_real_eip !119
  store i64 4, i64* %XDX, !mcsema_real_eip !120
  %623 = add i64 %RBP_val.166, -16, !mcsema_real_eip !121
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !121
  %625 = load i64, i64* %624, !mcsema_real_eip !121
  store i64 %625, i64* %XAX, !mcsema_real_eip !121
  %626 = add i64 8, %625, !mcsema_real_eip !122
  %627 = xor i64 %626, %625, !mcsema_real_eip !122
  %628 = xor i64 %627, 8, !mcsema_real_eip !122
  %629 = and i64 %628, 16, !mcsema_real_eip !122
  %630 = icmp ne i64 %629, 0, !mcsema_real_eip !122
  store i1 %630, i1* %AF, !mcsema_real_eip !122
  %631 = lshr i64 %626, 63, !mcsema_real_eip !122
  %632 = trunc i64 %631 to i1, !mcsema_real_eip !122
  store i1 %632, i1* %SF, !mcsema_real_eip !122
  %633 = icmp eq i64 %626, 0, !mcsema_real_eip !122
  store i1 %633, i1* %ZF, !mcsema_real_eip !122
  %634 = xor i64 %625, 8, !mcsema_real_eip !122
  %635 = xor i64 %634, -1, !mcsema_real_eip !122
  %636 = and i64 %635, %627, !mcsema_real_eip !122
  %637 = lshr i64 %636, 63, !mcsema_real_eip !122
  %638 = and i64 %637, 1, !mcsema_real_eip !122
  %639 = trunc i64 %638 to i1, !mcsema_real_eip !122
  store i1 %639, i1* %OF, !mcsema_real_eip !122
  %640 = trunc i64 %626 to i8, !mcsema_real_eip !122
  %641 = call i8 @llvm.ctpop.i8(i8 %640), !mcsema_real_eip !122
  %642 = trunc i8 %641 to i1, !mcsema_real_eip !122
  %643 = xor i1 %642, true, !mcsema_real_eip !122
  store i1 %643, i1* %PF, !mcsema_real_eip !122
  %644 = icmp ult i64 %626, %625, !mcsema_real_eip !122
  store i1 %644, i1* %CF, !mcsema_real_eip !122
  store i64 %626, i64* %XAX, !mcsema_real_eip !122
  store i64 %626, i64* %XSI, !mcsema_real_eip !123
  %RSP_val.178 = load i64, i64* %XSP, !mcsema_real_eip !124
  %645 = sub i64 %RSP_val.178, 8, !mcsema_real_eip !124
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !124
  store i64 -2415393069852865332, i64* %646, !mcsema_real_eip !124
  store i64 %645, i64* %XSP, !mcsema_real_eip !124
  %647 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %626, i64 4), !mcsema_real_eip !124
  store i64 %647, i64* %XAX, !mcsema_real_eip !124
  %AX.179 = bitcast i64* %XAX to i16*, !mcsema_real_eip !125
  %AX_val.180 = load i16, i16* %AX.179, !mcsema_real_eip !125
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !125
  store i16 %AX_val.180, i16* %CX.181, !mcsema_real_eip !125
  %RBP_val.182 = load i64, i64* %XBP, !mcsema_real_eip !126
  %648 = add i64 %RBP_val.182, -38, !mcsema_real_eip !126
  %649 = inttoptr i64 %648 to i64*, !mcsema_real_eip !126
  %650 = inttoptr i64 %648 to i16*, !mcsema_real_eip !126
  store i16 %AX_val.180, i16* %650, !mcsema_real_eip !126
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !127
  %651 = add i64 %RBP_val.185, -38, !mcsema_real_eip !127
  %652 = inttoptr i64 %651 to i64*, !mcsema_real_eip !127
  %653 = inttoptr i64 %651 to i16*, !mcsema_real_eip !127
  %654 = load i16, i16* %653, !mcsema_real_eip !127
  %655 = zext i16 %654 to i32, !mcsema_real_eip !127
  %656 = zext i32 %655 to i64, !mcsema_real_eip !127
  store i64 %656, i64* %XAX, !mcsema_real_eip !127
  %EAX_val.187 = load i32, i32* %EAX.9, !mcsema_real_eip !128
  %657 = or i32 %EAX_val.187, 21845, !mcsema_real_eip !128
  store i1 undef, i1* %AF, !mcsema_real_eip !128
  store i1 false, i1* %OF, !mcsema_real_eip !128
  store i1 false, i1* %CF, !mcsema_real_eip !128
  %658 = lshr i32 %657, 31, !mcsema_real_eip !128
  %659 = trunc i32 %658 to i1, !mcsema_real_eip !128
  store i1 %659, i1* %SF, !mcsema_real_eip !128
  store i1 false, i1* %ZF, !mcsema_real_eip !128
  %660 = trunc i32 %657 to i8, !mcsema_real_eip !128
  %661 = call i8 @llvm.ctpop.i8(i8 %660), !mcsema_real_eip !128
  %662 = trunc i8 %661 to i1, !mcsema_real_eip !128
  %663 = xor i1 %662, true, !mcsema_real_eip !128
  store i1 %663, i1* %PF, !mcsema_real_eip !128
  %664 = zext i32 %657 to i64, !mcsema_real_eip !128
  store i64 %664, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.189 = load i32, i32* %EAX.9, !mcsema_real_eip !129
  %665 = sub i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %666 = xor i32 %665, %EAX_val.189, !mcsema_real_eip !129
  %667 = xor i32 %666, 56663, !mcsema_real_eip !129
  %668 = and i32 %667, 16, !mcsema_real_eip !129
  %669 = icmp ne i32 %668, 0, !mcsema_real_eip !129
  store i1 %669, i1* %AF, !mcsema_real_eip !129
  %670 = trunc i32 %665 to i8, !mcsema_real_eip !129
  %671 = call i8 @llvm.ctpop.i8(i8 %670), !mcsema_real_eip !129
  %672 = trunc i8 %671 to i1, !mcsema_real_eip !129
  %673 = xor i1 %672, true, !mcsema_real_eip !129
  store i1 %673, i1* %PF, !mcsema_real_eip !129
  %674 = icmp eq i32 %665, 0, !mcsema_real_eip !129
  store i1 %674, i1* %ZF, !mcsema_real_eip !129
  %675 = lshr i32 %665, 31, !mcsema_real_eip !129
  %676 = trunc i32 %675 to i1, !mcsema_real_eip !129
  store i1 %676, i1* %SF, !mcsema_real_eip !129
  %677 = icmp ult i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  store i1 %677, i1* %CF, !mcsema_real_eip !129
  %678 = xor i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %679 = and i32 %678, %666, !mcsema_real_eip !129
  %680 = lshr i32 %679, 31, !mcsema_real_eip !129
  %681 = trunc i32 %680 to i1, !mcsema_real_eip !129
  store i1 %681, i1* %OF, !mcsema_real_eip !129
  %682 = icmp eq i1 %674, false, !mcsema_real_eip !130
  br i1 %682, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !130

block_0x20a:                                      ; preds = %block_0x1d8
  %683 = load i16, i16* %653, !mcsema_real_eip !131
  %684 = zext i16 %683 to i32, !mcsema_real_eip !131
  %685 = zext i32 %684 to i64, !mcsema_real_eip !131
  store i64 %685, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %686 = or i32 %EAX_val.192, 43690, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %687 = lshr i32 %686, 31, !mcsema_real_eip !132
  %688 = trunc i32 %687 to i1, !mcsema_real_eip !132
  store i1 %688, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %689 = trunc i32 %686 to i8, !mcsema_real_eip !132
  %690 = call i8 @llvm.ctpop.i8(i8 %689), !mcsema_real_eip !132
  %691 = trunc i8 %690 to i1, !mcsema_real_eip !132
  %692 = xor i1 %691, true, !mcsema_real_eip !132
  store i1 %692, i1* %PF, !mcsema_real_eip !132
  %693 = zext i32 %686 to i64, !mcsema_real_eip !132
  store i64 %693, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.194 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %694 = sub i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %695 = xor i32 %694, %EAX_val.194, !mcsema_real_eip !133
  %696 = xor i32 %695, 65211, !mcsema_real_eip !133
  %697 = and i32 %696, 16, !mcsema_real_eip !133
  %698 = icmp ne i32 %697, 0, !mcsema_real_eip !133
  store i1 %698, i1* %AF, !mcsema_real_eip !133
  %699 = trunc i32 %694 to i8, !mcsema_real_eip !133
  %700 = call i8 @llvm.ctpop.i8(i8 %699), !mcsema_real_eip !133
  %701 = trunc i8 %700 to i1, !mcsema_real_eip !133
  %702 = xor i1 %701, true, !mcsema_real_eip !133
  store i1 %702, i1* %PF, !mcsema_real_eip !133
  %703 = icmp eq i32 %694, 0, !mcsema_real_eip !133
  store i1 %703, i1* %ZF, !mcsema_real_eip !133
  %704 = lshr i32 %694, 31, !mcsema_real_eip !133
  %705 = trunc i32 %704 to i1, !mcsema_real_eip !133
  store i1 %705, i1* %SF, !mcsema_real_eip !133
  %706 = icmp ult i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  store i1 %706, i1* %CF, !mcsema_real_eip !133
  %707 = xor i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %708 = and i32 %707, %695, !mcsema_real_eip !133
  %709 = lshr i32 %708, 31, !mcsema_real_eip !133
  %710 = trunc i32 %709 to i1, !mcsema_real_eip !133
  store i1 %710, i1* %OF, !mcsema_real_eip !133
  %711 = icmp eq i1 %703, false, !mcsema_real_eip !134
  br i1 %711, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !134

block_0x21e:                                      ; preds = %block_0x20a
  %712 = add i64 %RBP_val.185, -20, !mcsema_real_eip !135
  %713 = inttoptr i64 %712 to i64*, !mcsema_real_eip !135
  %714 = inttoptr i64 %712 to i32*, !mcsema_real_eip !135
  store i32 43690, i32* %714, !mcsema_real_eip !135
  br label %block_0x231, !mcsema_real_eip !136

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %715 = add i64 %RBP_val.185, -20, !mcsema_real_eip !137
  %716 = inttoptr i64 %715 to i64*, !mcsema_real_eip !137
  %717 = inttoptr i64 %715 to i32*, !mcsema_real_eip !137
  store i32 48059, i32* %717, !mcsema_real_eip !137
  br label %block_0x231, !mcsema_real_eip !138

block_0x231:                                      ; preds = %block_0x22a, %block_0x21e
  %EDI_val.198 = load i32, i32* %EDI.60, !mcsema_real_eip !138
  store i1 false, i1* %CF, !mcsema_real_eip !138
  store i1 false, i1* %OF, !mcsema_real_eip !138
  store i1 false, i1* %SF, !mcsema_real_eip !138
  store i1 true, i1* %ZF, !mcsema_real_eip !138
  store i1 true, i1* %PF, !mcsema_real_eip !138
  store i1 undef, i1* %AF, !mcsema_real_eip !138
  store i64 0, i64* %XDI, !mcsema_real_eip !138
  store i64 8, i64* %XDX, !mcsema_real_eip !139
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !140
  %718 = add i64 %RBP_val.201, -16, !mcsema_real_eip !140
  %719 = inttoptr i64 %718 to i64*, !mcsema_real_eip !140
  %720 = load i64, i64* %719, !mcsema_real_eip !140
  store i64 %720, i64* %XAX, !mcsema_real_eip !140
  %721 = add i64 12, %720, !mcsema_real_eip !141
  %722 = xor i64 %721, %720, !mcsema_real_eip !141
  %723 = xor i64 %722, 12, !mcsema_real_eip !141
  %724 = and i64 %723, 16, !mcsema_real_eip !141
  %725 = icmp ne i64 %724, 0, !mcsema_real_eip !141
  store i1 %725, i1* %AF, !mcsema_real_eip !141
  %726 = lshr i64 %721, 63, !mcsema_real_eip !141
  %727 = trunc i64 %726 to i1, !mcsema_real_eip !141
  store i1 %727, i1* %SF, !mcsema_real_eip !141
  %728 = icmp eq i64 %721, 0, !mcsema_real_eip !141
  store i1 %728, i1* %ZF, !mcsema_real_eip !141
  %729 = xor i64 %720, 12, !mcsema_real_eip !141
  %730 = xor i64 %729, -1, !mcsema_real_eip !141
  %731 = and i64 %730, %722, !mcsema_real_eip !141
  %732 = lshr i64 %731, 63, !mcsema_real_eip !141
  %733 = and i64 %732, 1, !mcsema_real_eip !141
  %734 = trunc i64 %733 to i1, !mcsema_real_eip !141
  store i1 %734, i1* %OF, !mcsema_real_eip !141
  %735 = trunc i64 %721 to i8, !mcsema_real_eip !141
  %736 = call i8 @llvm.ctpop.i8(i8 %735), !mcsema_real_eip !141
  %737 = trunc i8 %736 to i1, !mcsema_real_eip !141
  %738 = xor i1 %737, true, !mcsema_real_eip !141
  store i1 %738, i1* %PF, !mcsema_real_eip !141
  %739 = icmp ult i64 %721, %720, !mcsema_real_eip !141
  store i1 %739, i1* %CF, !mcsema_real_eip !141
  store i64 %721, i64* %XAX, !mcsema_real_eip !141
  store i64 %721, i64* %XSI, !mcsema_real_eip !142
  %RSP_val.207 = load i64, i64* %XSP, !mcsema_real_eip !143
  %740 = sub i64 %RSP_val.207, 8, !mcsema_real_eip !143
  %741 = inttoptr i64 %740 to i64*, !mcsema_real_eip !143
  store i64 -2415393069852865332, i64* %741, !mcsema_real_eip !143
  store i64 %740, i64* %XSP, !mcsema_real_eip !143
  %742 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %721, i64 8), !mcsema_real_eip !143
  store i64 %742, i64* %XAX, !mcsema_real_eip !143
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !144
  %743 = add i64 %RBP_val.208, -44, !mcsema_real_eip !144
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !144
  %EAX_val.210 = load i32, i32* %EAX.9, !mcsema_real_eip !144
  %745 = inttoptr i64 %743 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.210, i32* %745, !mcsema_real_eip !144
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !145
  %746 = add i64 %RBP_val.211, -44, !mcsema_real_eip !145
  %747 = inttoptr i64 %746 to i64*, !mcsema_real_eip !145
  %748 = inttoptr i64 %746 to i32*, !mcsema_real_eip !145
  %749 = load i32, i32* %748, !mcsema_real_eip !145
  %750 = zext i32 %749 to i64, !mcsema_real_eip !145
  store i64 %750, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %751 = xor i32 %EAX_val.213, -1534560611, !mcsema_real_eip !146
  store i1 false, i1* %CF, !mcsema_real_eip !146
  store i1 false, i1* %OF, !mcsema_real_eip !146
  %752 = lshr i32 %751, 31, !mcsema_real_eip !146
  %753 = trunc i32 %752 to i1, !mcsema_real_eip !146
  store i1 %753, i1* %SF, !mcsema_real_eip !146
  %754 = icmp eq i32 %751, 0, !mcsema_real_eip !146
  store i1 %754, i1* %ZF, !mcsema_real_eip !146
  %755 = trunc i32 %751 to i8, !mcsema_real_eip !146
  %756 = call i8 @llvm.ctpop.i8(i8 %755), !mcsema_real_eip !146
  %757 = trunc i8 %756 to i1, !mcsema_real_eip !146
  %758 = xor i1 %757, true, !mcsema_real_eip !146
  store i1 %758, i1* %PF, !mcsema_real_eip !146
  store i1 undef, i1* %AF, !mcsema_real_eip !146
  %759 = zext i32 %751 to i64, !mcsema_real_eip !146
  store i64 %759, i64* %XAX, !mcsema_real_eip !146
  %760 = add i64 %RBP_val.211, -48, !mcsema_real_eip !147
  %761 = inttoptr i64 %760 to i64*, !mcsema_real_eip !147
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !147
  %762 = inttoptr i64 %760 to i32*, !mcsema_real_eip !147
  store i32 %EAX_val.216, i32* %762, !mcsema_real_eip !147
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !148
  %763 = add i64 %RBP_val.217, -48, !mcsema_real_eip !148
  %764 = inttoptr i64 %763 to i64*, !mcsema_real_eip !148
  %765 = inttoptr i64 %763 to i32*, !mcsema_real_eip !148
  %766 = load i32, i32* %765, !mcsema_real_eip !148
  %767 = zext i32 %766 to i64, !mcsema_real_eip !148
  store i64 %767, i64* %XAX, !mcsema_real_eip !148
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %768 = lshr i32 %EAX_val.219, 15, !mcsema_real_eip !149
  %769 = and i32 %768, 1, !mcsema_real_eip !149
  %770 = icmp ne i32 %769, 0, !mcsema_real_eip !149
  %771 = load i1, i1* %CF, !mcsema_real_eip !149
  %772 = lshr i32 %768, 1, !mcsema_real_eip !149
  %773 = load i1, i1* %OF, !mcsema_real_eip !149
  %774 = and i32 %EAX_val.219, -2147483648, !mcsema_real_eip !149
  %775 = icmp ne i32 %774, 0, !mcsema_real_eip !149
  store i1 %770, i1* %CF, !mcsema_real_eip !149
  %776 = load i1, i1* %ZF, !mcsema_real_eip !149
  %777 = icmp eq i32 %772, 0, !mcsema_real_eip !149
  store i1 %777, i1* %ZF, !mcsema_real_eip !149
  %778 = load i1, i1* %SF, !mcsema_real_eip !149
  store i1 false, i1* %SF, !mcsema_real_eip !149
  %779 = load i1, i1* %PF, !mcsema_real_eip !149
  %780 = trunc i32 %772 to i8, !mcsema_real_eip !149
  %781 = call i8 @llvm.ctpop.i8(i8 %780), !mcsema_real_eip !149
  %782 = trunc i8 %781 to i1, !mcsema_real_eip !149
  %783 = xor i1 %782, true, !mcsema_real_eip !149
  store i1 %783, i1* %PF, !mcsema_real_eip !149
  %784 = zext i32 %772 to i64, !mcsema_real_eip !149
  store i64 %784, i64* %XAX, !mcsema_real_eip !149
  %785 = add i64 %RBP_val.217, -52, !mcsema_real_eip !150
  %786 = inttoptr i64 %785 to i64*, !mcsema_real_eip !150
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !150
  %787 = inttoptr i64 %785 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.222, i32* %787, !mcsema_real_eip !150
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !151
  %788 = add i64 %RBP_val.223, -48, !mcsema_real_eip !151
  %789 = inttoptr i64 %788 to i64*, !mcsema_real_eip !151
  %790 = inttoptr i64 %788 to i32*, !mcsema_real_eip !151
  %791 = load i32, i32* %790, !mcsema_real_eip !151
  %792 = zext i32 %791 to i64, !mcsema_real_eip !151
  store i64 %792, i64* %XAX, !mcsema_real_eip !151
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %793 = and i32 %EAX_val.225, 65535, !mcsema_real_eip !152
  store i1 false, i1* %SF, !mcsema_real_eip !152
  %794 = icmp eq i32 %793, 0, !mcsema_real_eip !152
  store i1 %794, i1* %ZF, !mcsema_real_eip !152
  %795 = trunc i32 %793 to i8, !mcsema_real_eip !152
  %796 = call i8 @llvm.ctpop.i8(i8 %795), !mcsema_real_eip !152
  %797 = trunc i8 %796 to i1, !mcsema_real_eip !152
  %798 = xor i1 %797, true, !mcsema_real_eip !152
  store i1 %798, i1* %PF, !mcsema_real_eip !152
  store i1 false, i1* %OF, !mcsema_real_eip !152
  store i1 false, i1* %CF, !mcsema_real_eip !152
  store i1 undef, i1* %AF, !mcsema_real_eip !152
  %799 = zext i32 %793 to i64, !mcsema_real_eip !152
  store i64 %799, i64* %XAX, !mcsema_real_eip !152
  %800 = add i64 %RBP_val.223, -56, !mcsema_real_eip !153
  %801 = inttoptr i64 %800 to i64*, !mcsema_real_eip !153
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !153
  %802 = inttoptr i64 %800 to i32*, !mcsema_real_eip !153
  store i32 %EAX_val.228, i32* %802, !mcsema_real_eip !153
  %RBP_val.229 = load i64, i64* %XBP, !mcsema_real_eip !154
  %803 = add i64 %RBP_val.229, -52, !mcsema_real_eip !154
  %804 = inttoptr i64 %803 to i64*, !mcsema_real_eip !154
  %805 = inttoptr i64 %803 to i32*, !mcsema_real_eip !154
  %806 = load i32, i32* %805, !mcsema_real_eip !154
  %807 = sub i32 %806, 79, !mcsema_real_eip !154
  %808 = xor i32 %807, %806, !mcsema_real_eip !154
  %809 = xor i32 %808, 79, !mcsema_real_eip !154
  %810 = and i32 %809, 16, !mcsema_real_eip !154
  %811 = icmp ne i32 %810, 0, !mcsema_real_eip !154
  store i1 %811, i1* %AF, !mcsema_real_eip !154
  %812 = trunc i32 %807 to i8, !mcsema_real_eip !154
  %813 = call i8 @llvm.ctpop.i8(i8 %812), !mcsema_real_eip !154
  %814 = trunc i8 %813 to i1, !mcsema_real_eip !154
  %815 = xor i1 %814, true, !mcsema_real_eip !154
  store i1 %815, i1* %PF, !mcsema_real_eip !154
  %816 = icmp eq i32 %807, 0, !mcsema_real_eip !154
  store i1 %816, i1* %ZF, !mcsema_real_eip !154
  %817 = lshr i32 %807, 31, !mcsema_real_eip !154
  %818 = trunc i32 %817 to i1, !mcsema_real_eip !154
  store i1 %818, i1* %SF, !mcsema_real_eip !154
  %819 = icmp ult i32 %806, 79, !mcsema_real_eip !154
  store i1 %819, i1* %CF, !mcsema_real_eip !154
  %820 = xor i32 %806, 79, !mcsema_real_eip !154
  %821 = and i32 %820, %808, !mcsema_real_eip !154
  %822 = lshr i32 %821, 31, !mcsema_real_eip !154
  %823 = trunc i32 %822 to i1, !mcsema_real_eip !154
  store i1 %823, i1* %OF, !mcsema_real_eip !154
  %824 = icmp eq i1 %816, false, !mcsema_real_eip !155
  br i1 %824, label %block_0x28c, label %block_0x274, !mcsema_real_eip !155

block_0x274:                                      ; preds = %block_0x231
  %825 = add i64 %RBP_val.229, -56, !mcsema_real_eip !156
  %826 = inttoptr i64 %825 to i64*, !mcsema_real_eip !156
  %827 = inttoptr i64 %825 to i32*, !mcsema_real_eip !156
  %828 = load i32, i32* %827, !mcsema_real_eip !156
  %829 = zext i32 %828 to i64, !mcsema_real_eip !156
  store i64 %829, i64* %XAX, !mcsema_real_eip !156
  %830 = add i64 %RBP_val.229, -20, !mcsema_real_eip !157
  %831 = inttoptr i64 %830 to i64*, !mcsema_real_eip !157
  %EAX_val.233 = load i32, i32* %EAX.9, !mcsema_real_eip !157
  %832 = inttoptr i64 %830 to i32*, !mcsema_real_eip !157
  %833 = load i32, i32* %832, !mcsema_real_eip !157
  %834 = sub i32 %EAX_val.233, %833, !mcsema_real_eip !157
  %835 = xor i32 %834, %EAX_val.233, !mcsema_real_eip !157
  %836 = xor i32 %835, %833, !mcsema_real_eip !157
  %837 = and i32 %836, 16, !mcsema_real_eip !157
  %838 = icmp ne i32 %837, 0, !mcsema_real_eip !157
  store i1 %838, i1* %AF, !mcsema_real_eip !157
  %839 = trunc i32 %834 to i8, !mcsema_real_eip !157
  %840 = call i8 @llvm.ctpop.i8(i8 %839), !mcsema_real_eip !157
  %841 = trunc i8 %840 to i1, !mcsema_real_eip !157
  %842 = xor i1 %841, true, !mcsema_real_eip !157
  store i1 %842, i1* %PF, !mcsema_real_eip !157
  %843 = icmp eq i32 %834, 0, !mcsema_real_eip !157
  store i1 %843, i1* %ZF, !mcsema_real_eip !157
  %844 = lshr i32 %834, 31, !mcsema_real_eip !157
  %845 = trunc i32 %844 to i1, !mcsema_real_eip !157
  store i1 %845, i1* %SF, !mcsema_real_eip !157
  %846 = icmp ult i32 %EAX_val.233, %833, !mcsema_real_eip !157
  store i1 %846, i1* %CF, !mcsema_real_eip !157
  %847 = xor i32 %EAX_val.233, %833, !mcsema_real_eip !157
  %848 = and i32 %847, %835, !mcsema_real_eip !157
  %849 = lshr i32 %848, 31, !mcsema_real_eip !157
  %850 = trunc i32 %849 to i1, !mcsema_real_eip !157
  store i1 %850, i1* %OF, !mcsema_real_eip !157
  %851 = icmp eq i1 %843, false, !mcsema_real_eip !158
  br i1 %851, label %block_0x28c, label %block_0x280, !mcsema_real_eip !158

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %832, !mcsema_real_eip !159
  br label %block_0x293, !mcsema_real_eip !160

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %852 = add i64 %RBP_val.229, -20, !mcsema_real_eip !161
  %853 = inttoptr i64 %852 to i64*, !mcsema_real_eip !161
  %854 = inttoptr i64 %852 to i32*, !mcsema_real_eip !161
  store i32 48351, i32* %854, !mcsema_real_eip !161
  br label %block_0x293, !mcsema_real_eip !162

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  store i64 8, i64* %XDX, !mcsema_real_eip !162
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !163
  %855 = add i64 %RBP_val.236, -20, !mcsema_real_eip !163
  %856 = inttoptr i64 %855 to i64*, !mcsema_real_eip !163
  %857 = inttoptr i64 %855 to i32*, !mcsema_real_eip !163
  %858 = load i32, i32* %857, !mcsema_real_eip !163
  %859 = zext i32 %858 to i64, !mcsema_real_eip !163
  store i64 %859, i64* %XDI, !mcsema_real_eip !163
  %860 = add i64 %RBP_val.236, -16, !mcsema_real_eip !164
  %861 = inttoptr i64 %860 to i64*, !mcsema_real_eip !164
  %862 = load i64, i64* %861, !mcsema_real_eip !164
  store i64 %862, i64* %XAX, !mcsema_real_eip !164
  %863 = add i64 20, %862, !mcsema_real_eip !165
  %864 = xor i64 %863, %862, !mcsema_real_eip !165
  %865 = xor i64 %864, 20, !mcsema_real_eip !165
  %866 = and i64 %865, 16, !mcsema_real_eip !165
  %867 = icmp ne i64 %866, 0, !mcsema_real_eip !165
  store i1 %867, i1* %AF, !mcsema_real_eip !165
  %868 = lshr i64 %863, 63, !mcsema_real_eip !165
  %869 = trunc i64 %868 to i1, !mcsema_real_eip !165
  store i1 %869, i1* %SF, !mcsema_real_eip !165
  %870 = icmp eq i64 %863, 0, !mcsema_real_eip !165
  store i1 %870, i1* %ZF, !mcsema_real_eip !165
  %871 = xor i64 %862, 20, !mcsema_real_eip !165
  %872 = xor i64 %871, -1, !mcsema_real_eip !165
  %873 = and i64 %872, %864, !mcsema_real_eip !165
  %874 = lshr i64 %873, 63, !mcsema_real_eip !165
  %875 = and i64 %874, 1, !mcsema_real_eip !165
  %876 = trunc i64 %875 to i1, !mcsema_real_eip !165
  store i1 %876, i1* %OF, !mcsema_real_eip !165
  %877 = trunc i64 %863 to i8, !mcsema_real_eip !165
  %878 = call i8 @llvm.ctpop.i8(i8 %877), !mcsema_real_eip !165
  %879 = trunc i8 %878 to i1, !mcsema_real_eip !165
  %880 = xor i1 %879, true, !mcsema_real_eip !165
  store i1 %880, i1* %PF, !mcsema_real_eip !165
  %881 = icmp ult i64 %863, %862, !mcsema_real_eip !165
  store i1 %881, i1* %CF, !mcsema_real_eip !165
  store i64 %863, i64* %XAX, !mcsema_real_eip !165
  store i64 %863, i64* %XSI, !mcsema_real_eip !166
  %RSP_val.243 = load i64, i64* %XSP, !mcsema_real_eip !167
  %882 = sub i64 %RSP_val.243, 8, !mcsema_real_eip !167
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !167
  store i64 -2415393069852865332, i64* %883, !mcsema_real_eip !167
  store i64 %882, i64* %XSP, !mcsema_real_eip !167
  %884 = call x86_64_sysvcc i64 @_read_bytes(i64 %859, i64 %863, i64 8), !mcsema_real_eip !167
  store i64 %884, i64* %XAX, !mcsema_real_eip !167
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !168
  %885 = add i64 %RBP_val.244, -60, !mcsema_real_eip !168
  %886 = inttoptr i64 %885 to i64*, !mcsema_real_eip !168
  %EAX_val.246 = load i32, i32* %EAX.9, !mcsema_real_eip !168
  %887 = inttoptr i64 %885 to i32*, !mcsema_real_eip !168
  store i32 %EAX_val.246, i32* %887, !mcsema_real_eip !168
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !169
  %888 = add i64 %RBP_val.247, -60, !mcsema_real_eip !169
  %889 = inttoptr i64 %888 to i64*, !mcsema_real_eip !169
  %890 = inttoptr i64 %888 to i32*, !mcsema_real_eip !169
  %891 = load i32, i32* %890, !mcsema_real_eip !169
  %892 = zext i32 %891 to i64, !mcsema_real_eip !169
  store i64 %892, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %893 = sub i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %894 = xor i32 %893, %EAX_val.249, !mcsema_real_eip !170
  %895 = xor i32 %894, 3, !mcsema_real_eip !170
  %896 = and i32 %895, 16, !mcsema_real_eip !170
  %897 = icmp ne i32 %896, 0, !mcsema_real_eip !170
  store i1 %897, i1* %AF, !mcsema_real_eip !170
  %898 = trunc i32 %893 to i8, !mcsema_real_eip !170
  %899 = call i8 @llvm.ctpop.i8(i8 %898), !mcsema_real_eip !170
  %900 = trunc i8 %899 to i1, !mcsema_real_eip !170
  %901 = xor i1 %900, true, !mcsema_real_eip !170
  store i1 %901, i1* %PF, !mcsema_real_eip !170
  %902 = icmp eq i32 %893, 0, !mcsema_real_eip !170
  store i1 %902, i1* %ZF, !mcsema_real_eip !170
  %903 = lshr i32 %893, 31, !mcsema_real_eip !170
  %904 = trunc i32 %903 to i1, !mcsema_real_eip !170
  store i1 %904, i1* %SF, !mcsema_real_eip !170
  %905 = icmp ult i32 %EAX_val.249, 3, !mcsema_real_eip !170
  store i1 %905, i1* %CF, !mcsema_real_eip !170
  %906 = xor i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %907 = and i32 %906, %894, !mcsema_real_eip !170
  %908 = lshr i32 %907, 31, !mcsema_real_eip !170
  %909 = trunc i32 %908 to i1, !mcsema_real_eip !170
  store i1 %909, i1* %OF, !mcsema_real_eip !170
  %910 = zext i32 %893 to i64, !mcsema_real_eip !170
  store i64 %910, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !171
  store i32 %EAX_val.252, i32* %890, !mcsema_real_eip !171
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !172
  %911 = add i64 %RBP_val.253, -60, !mcsema_real_eip !172
  %912 = inttoptr i64 %911 to i64*, !mcsema_real_eip !172
  %913 = inttoptr i64 %911 to i32*, !mcsema_real_eip !172
  %914 = load i32, i32* %913, !mcsema_real_eip !172
  %915 = zext i32 %914 to i64, !mcsema_real_eip !172
  store i64 %915, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  %916 = and i32 %EAX_val.255, 7, !mcsema_real_eip !173
  store i1 false, i1* %SF, !mcsema_real_eip !173
  %917 = icmp eq i32 %916, 0, !mcsema_real_eip !173
  store i1 %917, i1* %ZF, !mcsema_real_eip !173
  %918 = trunc i32 %916 to i8, !mcsema_real_eip !173
  %919 = call i8 @llvm.ctpop.i8(i8 %918), !mcsema_real_eip !173
  %920 = trunc i8 %919 to i1, !mcsema_real_eip !173
  %921 = xor i1 %920, true, !mcsema_real_eip !173
  store i1 %921, i1* %PF, !mcsema_real_eip !173
  store i1 false, i1* %OF, !mcsema_real_eip !173
  store i1 false, i1* %CF, !mcsema_real_eip !173
  store i1 undef, i1* %AF, !mcsema_real_eip !173
  %922 = zext i32 %916 to i64, !mcsema_real_eip !173
  store i64 %922, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.257 = load i32, i32* %EAX.9, !mcsema_real_eip !174
  store i1 false, i1* %AF, !mcsema_real_eip !174
  %923 = trunc i32 %EAX_val.257 to i8, !mcsema_real_eip !174
  %924 = call i8 @llvm.ctpop.i8(i8 %923), !mcsema_real_eip !174
  %925 = trunc i8 %924 to i1, !mcsema_real_eip !174
  %926 = xor i1 %925, true, !mcsema_real_eip !174
  store i1 %926, i1* %PF, !mcsema_real_eip !174
  %927 = icmp eq i32 %EAX_val.257, 0, !mcsema_real_eip !174
  store i1 %927, i1* %ZF, !mcsema_real_eip !174
  %928 = lshr i32 %EAX_val.257, 31, !mcsema_real_eip !174
  %929 = trunc i32 %928 to i1, !mcsema_real_eip !174
  store i1 %929, i1* %SF, !mcsema_real_eip !174
  store i1 false, i1* %CF, !mcsema_real_eip !174
  store i1 false, i1* %OF, !mcsema_real_eip !174
  br i1 %927, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !175

block_0x2c6:                                      ; preds = %block_0x293
  %930 = add i64 %RBP_val.253, -4, !mcsema_real_eip !176
  %931 = inttoptr i64 %930 to i64*, !mcsema_real_eip !176
  %932 = inttoptr i64 %930 to i32*, !mcsema_real_eip !176
  store i32 -21, i32* %932, !mcsema_real_eip !176
  br label %block_0x417, !mcsema_real_eip !177

block_0x2d2:                                      ; preds = %block_0x293
  %933 = load i32, i32* %913, !mcsema_real_eip !178
  %934 = zext i32 %933 to i64, !mcsema_real_eip !178
  store i64 %934, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.261 = load i32, i32* %EAX.9, !mcsema_real_eip !179
  %935 = sub i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %936 = xor i32 %935, %EAX_val.261, !mcsema_real_eip !179
  %937 = xor i32 %936, -2147483648, !mcsema_real_eip !179
  %938 = and i32 %937, 16, !mcsema_real_eip !179
  %939 = icmp ne i32 %938, 0, !mcsema_real_eip !179
  store i1 %939, i1* %AF, !mcsema_real_eip !179
  %940 = trunc i32 %935 to i8, !mcsema_real_eip !179
  %941 = call i8 @llvm.ctpop.i8(i8 %940), !mcsema_real_eip !179
  %942 = trunc i8 %941 to i1, !mcsema_real_eip !179
  %943 = xor i1 %942, true, !mcsema_real_eip !179
  store i1 %943, i1* %PF, !mcsema_real_eip !179
  %944 = icmp eq i32 %935, 0, !mcsema_real_eip !179
  store i1 %944, i1* %ZF, !mcsema_real_eip !179
  %945 = lshr i32 %935, 31, !mcsema_real_eip !179
  %946 = trunc i32 %945 to i1, !mcsema_real_eip !179
  store i1 %946, i1* %SF, !mcsema_real_eip !179
  %947 = icmp ult i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  store i1 %947, i1* %CF, !mcsema_real_eip !179
  %948 = xor i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %949 = and i32 %948, %936, !mcsema_real_eip !179
  %950 = lshr i32 %949, 31, !mcsema_real_eip !179
  %951 = trunc i32 %950 to i1, !mcsema_real_eip !179
  store i1 %951, i1* %OF, !mcsema_real_eip !179
  %952 = zext i32 %935 to i64, !mcsema_real_eip !179
  store i64 %952, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !180
  store i32 %EAX_val.264, i32* %913, !mcsema_real_eip !180
  %RBP_val.265 = load i64, i64* %XBP, !mcsema_real_eip !181
  %953 = add i64 %RBP_val.265, -60, !mcsema_real_eip !181
  %954 = inttoptr i64 %953 to i64*, !mcsema_real_eip !181
  %955 = inttoptr i64 %953 to i32*, !mcsema_real_eip !181
  %956 = load i32, i32* %955, !mcsema_real_eip !181
  %957 = sub i32 %956, 268435455, !mcsema_real_eip !181
  %958 = xor i32 %957, %956, !mcsema_real_eip !181
  %959 = xor i32 %958, 268435455, !mcsema_real_eip !181
  %960 = and i32 %959, 16, !mcsema_real_eip !181
  %961 = icmp ne i32 %960, 0, !mcsema_real_eip !181
  store i1 %961, i1* %AF, !mcsema_real_eip !181
  %962 = trunc i32 %957 to i8, !mcsema_real_eip !181
  %963 = call i8 @llvm.ctpop.i8(i8 %962), !mcsema_real_eip !181
  %964 = trunc i8 %963 to i1, !mcsema_real_eip !181
  %965 = xor i1 %964, true, !mcsema_real_eip !181
  store i1 %965, i1* %PF, !mcsema_real_eip !181
  %966 = icmp eq i32 %957, 0, !mcsema_real_eip !181
  store i1 %966, i1* %ZF, !mcsema_real_eip !181
  %967 = lshr i32 %957, 31, !mcsema_real_eip !181
  %968 = trunc i32 %967 to i1, !mcsema_real_eip !181
  store i1 %968, i1* %SF, !mcsema_real_eip !181
  %969 = icmp ult i32 %956, 268435455, !mcsema_real_eip !181
  store i1 %969, i1* %CF, !mcsema_real_eip !181
  %970 = xor i32 %956, 268435455, !mcsema_real_eip !181
  %971 = and i32 %970, %958, !mcsema_real_eip !181
  %972 = lshr i32 %971, 31, !mcsema_real_eip !181
  %973 = trunc i32 %972 to i1, !mcsema_real_eip !181
  store i1 %973, i1* %OF, !mcsema_real_eip !181
  %974 = or i1 %969, %966, !mcsema_real_eip !182
  br i1 %974, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !182

block_0x2ea:                                      ; preds = %block_0x2d2
  %975 = add i64 %RBP_val.265, -4, !mcsema_real_eip !183
  %976 = inttoptr i64 %975 to i64*, !mcsema_real_eip !183
  %977 = inttoptr i64 %975 to i32*, !mcsema_real_eip !183
  store i32 -22, i32* %977, !mcsema_real_eip !183
  br label %block_0x417, !mcsema_real_eip !184

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, !mcsema_real_eip !185
  %978 = load i32, i32* %955, !mcsema_real_eip !186
  %979 = zext i32 %978 to i64, !mcsema_real_eip !186
  store i64 %979, i64* %XCX, !mcsema_real_eip !186
  %ECX_val.269 = load i32, i32* %ECX.12, !mcsema_real_eip !187
  %980 = xor i32 %ECX_val.269, 13631488, !mcsema_real_eip !187
  store i1 false, i1* %CF, !mcsema_real_eip !187
  store i1 false, i1* %OF, !mcsema_real_eip !187
  %981 = lshr i32 %980, 31, !mcsema_real_eip !187
  %982 = trunc i32 %981 to i1, !mcsema_real_eip !187
  store i1 %982, i1* %SF, !mcsema_real_eip !187
  %983 = icmp eq i32 %980, 0, !mcsema_real_eip !187
  store i1 %983, i1* %ZF, !mcsema_real_eip !187
  %984 = trunc i32 %980 to i8, !mcsema_real_eip !187
  %985 = call i8 @llvm.ctpop.i8(i8 %984), !mcsema_real_eip !187
  %986 = trunc i8 %985 to i1, !mcsema_real_eip !187
  %987 = xor i1 %986, true, !mcsema_real_eip !187
  store i1 %987, i1* %PF, !mcsema_real_eip !187
  store i1 undef, i1* %AF, !mcsema_real_eip !187
  %988 = zext i32 %980 to i64, !mcsema_real_eip !187
  store i64 %988, i64* %XCX, !mcsema_real_eip !187
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !188
  store i32 %ECX_val.272, i32* %955, !mcsema_real_eip !188
  %RBP_val.273 = load i64, i64* %XBP, !mcsema_real_eip !189
  %989 = add i64 %RBP_val.273, -60, !mcsema_real_eip !189
  %990 = inttoptr i64 %989 to i64*, !mcsema_real_eip !189
  %991 = inttoptr i64 %989 to i32*, !mcsema_real_eip !189
  %992 = load i32, i32* %991, !mcsema_real_eip !189
  %993 = zext i32 %992 to i64, !mcsema_real_eip !189
  store i64 %993, i64* %XCX, !mcsema_real_eip !189
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !190
  %994 = lshr i32 %ECX_val.275, 3, !mcsema_real_eip !190
  %995 = and i32 %994, 1, !mcsema_real_eip !190
  %996 = icmp ne i32 %995, 0, !mcsema_real_eip !190
  %997 = load i1, i1* %CF, !mcsema_real_eip !190
  %998 = lshr i32 %994, 1, !mcsema_real_eip !190
  %999 = load i1, i1* %OF, !mcsema_real_eip !190
  %1000 = and i32 %ECX_val.275, -2147483648, !mcsema_real_eip !190
  %1001 = icmp ne i32 %1000, 0, !mcsema_real_eip !190
  store i1 %996, i1* %CF, !mcsema_real_eip !190
  %1002 = load i1, i1* %ZF, !mcsema_real_eip !190
  %1003 = icmp eq i32 %998, 0, !mcsema_real_eip !190
  store i1 %1003, i1* %ZF, !mcsema_real_eip !190
  %1004 = load i1, i1* %SF, !mcsema_real_eip !190
  store i1 false, i1* %SF, !mcsema_real_eip !190
  %1005 = load i1, i1* %PF, !mcsema_real_eip !190
  %1006 = trunc i32 %998 to i8, !mcsema_real_eip !190
  %1007 = call i8 @llvm.ctpop.i8(i8 %1006), !mcsema_real_eip !190
  %1008 = trunc i8 %1007 to i1, !mcsema_real_eip !190
  %1009 = xor i1 %1008, true, !mcsema_real_eip !190
  store i1 %1009, i1* %PF, !mcsema_real_eip !190
  %1010 = zext i32 %998 to i64, !mcsema_real_eip !190
  store i64 %1010, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  store i32 %ECX_val.278, i32* %991, !mcsema_real_eip !191
  %RBP_val.279 = load i64, i64* %XBP, !mcsema_real_eip !192
  %1011 = add i64 %RBP_val.279, -60, !mcsema_real_eip !192
  %1012 = inttoptr i64 %1011 to i64*, !mcsema_real_eip !192
  %1013 = inttoptr i64 %1011 to i32*, !mcsema_real_eip !192
  %1014 = load i32, i32* %1013, !mcsema_real_eip !192
  %1015 = zext i32 %1014 to i64, !mcsema_real_eip !192
  store i64 %1015, i64* %XCX, !mcsema_real_eip !192
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !193
  %1016 = sub i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1017 = xor i32 %1016, %ECX_val.281, !mcsema_real_eip !193
  %1018 = xor i32 %1017, 226, !mcsema_real_eip !193
  %1019 = and i32 %1018, 16, !mcsema_real_eip !193
  %1020 = icmp ne i32 %1019, 0, !mcsema_real_eip !193
  store i1 %1020, i1* %AF, !mcsema_real_eip !193
  %1021 = trunc i32 %1016 to i8, !mcsema_real_eip !193
  %1022 = call i8 @llvm.ctpop.i8(i8 %1021), !mcsema_real_eip !193
  %1023 = trunc i8 %1022 to i1, !mcsema_real_eip !193
  %1024 = xor i1 %1023, true, !mcsema_real_eip !193
  store i1 %1024, i1* %PF, !mcsema_real_eip !193
  %1025 = icmp eq i32 %1016, 0, !mcsema_real_eip !193
  store i1 %1025, i1* %ZF, !mcsema_real_eip !193
  %1026 = lshr i32 %1016, 31, !mcsema_real_eip !193
  %1027 = trunc i32 %1026 to i1, !mcsema_real_eip !193
  store i1 %1027, i1* %SF, !mcsema_real_eip !193
  %1028 = icmp ult i32 %ECX_val.281, 226, !mcsema_real_eip !193
  store i1 %1028, i1* %CF, !mcsema_real_eip !193
  %1029 = xor i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1030 = and i32 %1029, %1017, !mcsema_real_eip !193
  %1031 = lshr i32 %1030, 31, !mcsema_real_eip !193
  %1032 = trunc i32 %1031 to i1, !mcsema_real_eip !193
  store i1 %1032, i1* %OF, !mcsema_real_eip !193
  %1033 = zext i32 %1016 to i64, !mcsema_real_eip !193
  store i64 %1033, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  store i32 %ECX_val.284, i32* %1013, !mcsema_real_eip !194
  %RBP_val.285 = load i64, i64* %XBP, !mcsema_real_eip !195
  %1034 = add i64 %RBP_val.285, -60, !mcsema_real_eip !195
  %1035 = inttoptr i64 %1034 to i64*, !mcsema_real_eip !195
  %1036 = inttoptr i64 %1034 to i32*, !mcsema_real_eip !195
  %1037 = load i32, i32* %1036, !mcsema_real_eip !195
  %1038 = zext i32 %1037 to i64, !mcsema_real_eip !195
  store i64 %1038, i64* %XCX, !mcsema_real_eip !195
  %1039 = add i64 %RBP_val.285, -68, !mcsema_real_eip !196
  %1040 = inttoptr i64 %1039 to i64*, !mcsema_real_eip !196
  %EAX_val.288 = load i32, i32* %EAX.9, !mcsema_real_eip !196
  %1041 = inttoptr i64 %1039 to i32*, !mcsema_real_eip !196
  store i32 %EAX_val.288, i32* %1041, !mcsema_real_eip !196
  %ECX_val.290 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %1042 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !197
  store i64 %1042, i64* %XAX, !mcsema_real_eip !197
  %EDX_val.292 = load i32, i32* %EDX.64, !mcsema_real_eip !198
  store i1 false, i1* %CF, !mcsema_real_eip !198
  store i1 false, i1* %OF, !mcsema_real_eip !198
  store i1 false, i1* %SF, !mcsema_real_eip !198
  store i1 true, i1* %ZF, !mcsema_real_eip !198
  store i1 true, i1* %PF, !mcsema_real_eip !198
  store i1 undef, i1* %AF, !mcsema_real_eip !198
  store i64 0, i64* %XDX, !mcsema_real_eip !198
  %RBP_val.295 = load i64, i64* %XBP, !mcsema_real_eip !199
  %1043 = add i64 %RBP_val.295, -68, !mcsema_real_eip !199
  %1044 = inttoptr i64 %1043 to i64*, !mcsema_real_eip !199
  %1045 = inttoptr i64 %1043 to i32*, !mcsema_real_eip !199
  %1046 = load i32, i32* %1045, !mcsema_real_eip !199
  %1047 = zext i32 %1046 to i64, !mcsema_real_eip !199
  store i64 %1047, i64* %XCX, !mcsema_real_eip !199
  %ECX_val.297 = load i32, i32* %ECX.12, !mcsema_real_eip !200
  %EAX_val.299 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %EDX_val.301 = load i32, i32* %EDX.64, !mcsema_real_eip !200
  %1048 = zext i32 %EDX_val.301 to i64, !mcsema_real_eip !200
  %1049 = shl i64 %1048, 32, !mcsema_real_eip !200
  %1050 = sext i32 %EAX_val.299 to i64, !mcsema_real_eip !200
  %1051 = or i64 %1049, %1050, !mcsema_real_eip !200
  %1052 = zext i32 %ECX_val.297 to i64, !mcsema_real_eip !200
  %1053 = udiv i64 %1051, %1052, !mcsema_real_eip !200
  %1054 = urem i64 %1051, %1052, !mcsema_real_eip !200
  %1055 = trunc i64 %1054 to i32, !mcsema_real_eip !200
  %1056 = trunc i64 %1053 to i32, !mcsema_real_eip !200
  %1057 = zext i32 %1055 to i64, !mcsema_real_eip !200
  store i64 %1057, i64* %XDX, !mcsema_real_eip !200
  %1058 = zext i32 %1056 to i64, !mcsema_real_eip !200
  store i64 %1058, i64* %XAX, !mcsema_real_eip !200
  %1059 = add i64 %RBP_val.295, -60, !mcsema_real_eip !201
  %1060 = inttoptr i64 %1059 to i64*, !mcsema_real_eip !201
  %EAX_val.304 = load i32, i32* %EAX.9, !mcsema_real_eip !201
  %1061 = inttoptr i64 %1059 to i32*, !mcsema_real_eip !201
  store i32 %EAX_val.304, i32* %1061, !mcsema_real_eip !201
  %RBP_val.305 = load i64, i64* %XBP, !mcsema_real_eip !202
  %1062 = add i64 %RBP_val.305, -60, !mcsema_real_eip !202
  %1063 = inttoptr i64 %1062 to i64*, !mcsema_real_eip !202
  %1064 = inttoptr i64 %1062 to i32*, !mcsema_real_eip !202
  %1065 = load i32, i32* %1064, !mcsema_real_eip !202
  %1066 = sub i32 %1065, 3, !mcsema_real_eip !202
  %1067 = xor i32 %1066, %1065, !mcsema_real_eip !202
  %1068 = xor i32 %1067, 3, !mcsema_real_eip !202
  %1069 = and i32 %1068, 16, !mcsema_real_eip !202
  %1070 = icmp ne i32 %1069, 0, !mcsema_real_eip !202
  store i1 %1070, i1* %AF, !mcsema_real_eip !202
  %1071 = trunc i32 %1066 to i8, !mcsema_real_eip !202
  %1072 = call i8 @llvm.ctpop.i8(i8 %1071), !mcsema_real_eip !202
  %1073 = trunc i8 %1072 to i1, !mcsema_real_eip !202
  %1074 = xor i1 %1073, true, !mcsema_real_eip !202
  store i1 %1074, i1* %PF, !mcsema_real_eip !202
  %1075 = icmp eq i32 %1066, 0, !mcsema_real_eip !202
  store i1 %1075, i1* %ZF, !mcsema_real_eip !202
  %1076 = lshr i32 %1066, 31, !mcsema_real_eip !202
  %1077 = trunc i32 %1076 to i1, !mcsema_real_eip !202
  store i1 %1077, i1* %SF, !mcsema_real_eip !202
  %1078 = icmp ult i32 %1065, 3, !mcsema_real_eip !202
  store i1 %1078, i1* %CF, !mcsema_real_eip !202
  %1079 = xor i32 %1065, 3, !mcsema_real_eip !202
  %1080 = and i32 %1079, %1067, !mcsema_real_eip !202
  %1081 = lshr i32 %1080, 31, !mcsema_real_eip !202
  %1082 = trunc i32 %1081 to i1, !mcsema_real_eip !202
  store i1 %1082, i1* %OF, !mcsema_real_eip !202
  br i1 %1075, label %block_0x343, label %block_0x338, !mcsema_real_eip !203

block_0x338:                                      ; preds = %block_0x2f6
  %1083 = load i32, i32* %1064, !mcsema_real_eip !204
  %1084 = zext i32 %1083 to i64, !mcsema_real_eip !204
  store i64 %1084, i64* %XAX, !mcsema_real_eip !204
  %1085 = add i64 %RBP_val.305, -4, !mcsema_real_eip !205
  %1086 = inttoptr i64 %1085 to i64*, !mcsema_real_eip !205
  %EAX_val.309 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %1087 = inttoptr i64 %1085 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.309, i32* %1087, !mcsema_real_eip !205
  br label %block_0x417, !mcsema_real_eip !206

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, !mcsema_real_eip !207
  %1088 = add i64 %RBP_val.305, -20, !mcsema_real_eip !208
  %1089 = inttoptr i64 %1088 to i64*, !mcsema_real_eip !208
  %1090 = inttoptr i64 %1088 to i32*, !mcsema_real_eip !208
  %1091 = load i32, i32* %1090, !mcsema_real_eip !208
  %1092 = zext i32 %1091 to i64, !mcsema_real_eip !208
  store i64 %1092, i64* %XDI, !mcsema_real_eip !208
  %1093 = add i64 %RBP_val.305, -16, !mcsema_real_eip !209
  %1094 = inttoptr i64 %1093 to i64*, !mcsema_real_eip !209
  %1095 = load i64, i64* %1094, !mcsema_real_eip !209
  store i64 %1095, i64* %XAX, !mcsema_real_eip !209
  %1096 = add i64 28, %1095, !mcsema_real_eip !210
  %1097 = xor i64 %1096, %1095, !mcsema_real_eip !210
  %1098 = xor i64 %1097, 28, !mcsema_real_eip !210
  %1099 = and i64 %1098, 16, !mcsema_real_eip !210
  %1100 = icmp ne i64 %1099, 0, !mcsema_real_eip !210
  store i1 %1100, i1* %AF, !mcsema_real_eip !210
  %1101 = lshr i64 %1096, 63, !mcsema_real_eip !210
  %1102 = trunc i64 %1101 to i1, !mcsema_real_eip !210
  store i1 %1102, i1* %SF, !mcsema_real_eip !210
  %1103 = icmp eq i64 %1096, 0, !mcsema_real_eip !210
  store i1 %1103, i1* %ZF, !mcsema_real_eip !210
  %1104 = xor i64 %1095, 28, !mcsema_real_eip !210
  %1105 = xor i64 %1104, -1, !mcsema_real_eip !210
  %1106 = and i64 %1105, %1097, !mcsema_real_eip !210
  %1107 = lshr i64 %1106, 63, !mcsema_real_eip !210
  %1108 = and i64 %1107, 1, !mcsema_real_eip !210
  %1109 = trunc i64 %1108 to i1, !mcsema_real_eip !210
  store i1 %1109, i1* %OF, !mcsema_real_eip !210
  %1110 = trunc i64 %1096 to i8, !mcsema_real_eip !210
  %1111 = call i8 @llvm.ctpop.i8(i8 %1110), !mcsema_real_eip !210
  %1112 = trunc i8 %1111 to i1, !mcsema_real_eip !210
  %1113 = xor i1 %1112, true, !mcsema_real_eip !210
  store i1 %1113, i1* %PF, !mcsema_real_eip !210
  %1114 = icmp ult i64 %1096, %1095, !mcsema_real_eip !210
  store i1 %1114, i1* %CF, !mcsema_real_eip !210
  store i64 %1096, i64* %XAX, !mcsema_real_eip !210
  store i64 %1096, i64* %XSI, !mcsema_real_eip !211
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !212
  %1115 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !212
  %1116 = inttoptr i64 %1115 to i64*, !mcsema_real_eip !212
  store i64 -2415393069852865332, i64* %1116, !mcsema_real_eip !212
  store i64 %1115, i64* %XSP, !mcsema_real_eip !212
  %1117 = call x86_64_sysvcc i64 @_read_bytes(i64 %1092, i64 %1096, i64 4), !mcsema_real_eip !212
  store i64 %1117, i64* %XAX, !mcsema_real_eip !212
  %RBP_val.318 = load i64, i64* %XBP, !mcsema_real_eip !213
  %1118 = add i64 %RBP_val.318, -64, !mcsema_real_eip !213
  %1119 = inttoptr i64 %1118 to i64*, !mcsema_real_eip !213
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !213
  %1120 = inttoptr i64 %1118 to i32*, !mcsema_real_eip !213
  store i32 %EAX_val.320, i32* %1120, !mcsema_real_eip !213
  %RBP_val.321 = load i64, i64* %XBP, !mcsema_real_eip !214
  %1121 = add i64 %RBP_val.321, -16, !mcsema_real_eip !214
  %1122 = inttoptr i64 %1121 to i64*, !mcsema_real_eip !214
  %1123 = load i64, i64* %1122, !mcsema_real_eip !214
  store i64 %1123, i64* %XSI, !mcsema_real_eip !214
  %1124 = add i64 %1123, 28, !mcsema_real_eip !215
  %1125 = inttoptr i64 %1124 to i64*, !mcsema_real_eip !215
  %1126 = inttoptr i64 %1124 to i8*, !mcsema_real_eip !215
  %1127 = load i8, i8* %1126, !mcsema_real_eip !215
  %1128 = sext i8 %1127 to i32, !mcsema_real_eip !215
  %1129 = zext i32 %1128 to i64, !mcsema_real_eip !215
  store i64 %1129, i64* %XAX, !mcsema_real_eip !215
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !216
  %1130 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1131 = xor i32 %1130, %EAX_val.324, !mcsema_real_eip !216
  %1132 = xor i32 %1131, 100, !mcsema_real_eip !216
  %1133 = and i32 %1132, 16, !mcsema_real_eip !216
  %1134 = icmp ne i32 %1133, 0, !mcsema_real_eip !216
  store i1 %1134, i1* %AF, !mcsema_real_eip !216
  %1135 = trunc i32 %1130 to i8, !mcsema_real_eip !216
  %1136 = call i8 @llvm.ctpop.i8(i8 %1135), !mcsema_real_eip !216
  %1137 = trunc i8 %1136 to i1, !mcsema_real_eip !216
  %1138 = xor i1 %1137, true, !mcsema_real_eip !216
  store i1 %1138, i1* %PF, !mcsema_real_eip !216
  %1139 = icmp eq i32 %1130, 0, !mcsema_real_eip !216
  store i1 %1139, i1* %ZF, !mcsema_real_eip !216
  %1140 = lshr i32 %1130, 31, !mcsema_real_eip !216
  %1141 = trunc i32 %1140 to i1, !mcsema_real_eip !216
  store i1 %1141, i1* %SF, !mcsema_real_eip !216
  %1142 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !216
  store i1 %1142, i1* %CF, !mcsema_real_eip !216
  %1143 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1144 = and i32 %1143, %1131, !mcsema_real_eip !216
  %1145 = lshr i32 %1144, 31, !mcsema_real_eip !216
  %1146 = trunc i32 %1145 to i1, !mcsema_real_eip !216
  store i1 %1146, i1* %OF, !mcsema_real_eip !216
  %1147 = icmp eq i1 %1139, false, !mcsema_real_eip !217
  br i1 %1147, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !217

block_0x36f:                                      ; preds = %block_0x343
  %1148 = load i64, i64* %1122, !mcsema_real_eip !218
  store i64 %1148, i64* %XAX, !mcsema_real_eip !218
  %1149 = add i64 %1148, 29, !mcsema_real_eip !219
  %1150 = inttoptr i64 %1149 to i64*, !mcsema_real_eip !219
  %1151 = inttoptr i64 %1149 to i8*, !mcsema_real_eip !219
  %1152 = load i8, i8* %1151, !mcsema_real_eip !219
  %1153 = sext i8 %1152 to i32, !mcsema_real_eip !219
  %1154 = zext i32 %1153 to i64, !mcsema_real_eip !219
  store i64 %1154, i64* %XCX, !mcsema_real_eip !219
  %ECX_val.328 = load i32, i32* %ECX.12, !mcsema_real_eip !220
  %1155 = sub i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1156 = xor i32 %1155, %ECX_val.328, !mcsema_real_eip !220
  %1157 = xor i32 %1156, 100, !mcsema_real_eip !220
  %1158 = and i32 %1157, 16, !mcsema_real_eip !220
  %1159 = icmp ne i32 %1158, 0, !mcsema_real_eip !220
  store i1 %1159, i1* %AF, !mcsema_real_eip !220
  %1160 = trunc i32 %1155 to i8, !mcsema_real_eip !220
  %1161 = call i8 @llvm.ctpop.i8(i8 %1160), !mcsema_real_eip !220
  %1162 = trunc i8 %1161 to i1, !mcsema_real_eip !220
  %1163 = xor i1 %1162, true, !mcsema_real_eip !220
  store i1 %1163, i1* %PF, !mcsema_real_eip !220
  %1164 = icmp eq i32 %1155, 0, !mcsema_real_eip !220
  store i1 %1164, i1* %ZF, !mcsema_real_eip !220
  %1165 = lshr i32 %1155, 31, !mcsema_real_eip !220
  %1166 = trunc i32 %1165 to i1, !mcsema_real_eip !220
  store i1 %1166, i1* %SF, !mcsema_real_eip !220
  %1167 = icmp ult i32 %ECX_val.328, 100, !mcsema_real_eip !220
  store i1 %1167, i1* %CF, !mcsema_real_eip !220
  %1168 = xor i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1169 = and i32 %1168, %1156, !mcsema_real_eip !220
  %1170 = lshr i32 %1169, 31, !mcsema_real_eip !220
  %1171 = trunc i32 %1170 to i1, !mcsema_real_eip !220
  store i1 %1171, i1* %OF, !mcsema_real_eip !220
  %1172 = icmp eq i1 %1164, false, !mcsema_real_eip !221
  br i1 %1172, label %block_0x38e, label %block_0x380, !mcsema_real_eip !221

block_0x380:                                      ; preds = %block_0x36f
  %1173 = add i64 %RBP_val.321, -64, !mcsema_real_eip !222
  %1174 = inttoptr i64 %1173 to i64*, !mcsema_real_eip !222
  %1175 = inttoptr i64 %1173 to i32*, !mcsema_real_eip !222
  %1176 = load i32, i32* %1175, !mcsema_real_eip !222
  %1177 = zext i32 %1176 to i64, !mcsema_real_eip !222
  store i64 %1177, i64* %XAX, !mcsema_real_eip !222
  %1178 = add i64 %RBP_val.321, -20, !mcsema_real_eip !223
  %1179 = inttoptr i64 %1178 to i64*, !mcsema_real_eip !223
  %1180 = inttoptr i64 %1178 to i32*, !mcsema_real_eip !223
  %1181 = load i32, i32* %1180, !mcsema_real_eip !223
  %EAX_val.332 = load i32, i32* %EAX.9, !mcsema_real_eip !223
  %1182 = xor i32 %1181, %EAX_val.332, !mcsema_real_eip !223
  store i1 false, i1* %CF, !mcsema_real_eip !223
  store i1 false, i1* %OF, !mcsema_real_eip !223
  %1183 = lshr i32 %1182, 31, !mcsema_real_eip !223
  %1184 = trunc i32 %1183 to i1, !mcsema_real_eip !223
  store i1 %1184, i1* %SF, !mcsema_real_eip !223
  %1185 = icmp eq i32 %1182, 0, !mcsema_real_eip !223
  store i1 %1185, i1* %ZF, !mcsema_real_eip !223
  %1186 = trunc i32 %1182 to i8, !mcsema_real_eip !223
  %1187 = call i8 @llvm.ctpop.i8(i8 %1186), !mcsema_real_eip !223
  %1188 = trunc i8 %1187 to i1, !mcsema_real_eip !223
  %1189 = xor i1 %1188, true, !mcsema_real_eip !223
  store i1 %1189, i1* %PF, !mcsema_real_eip !223
  store i1 undef, i1* %AF, !mcsema_real_eip !223
  %1190 = zext i32 %1182 to i64, !mcsema_real_eip !223
  store i64 %1190, i64* %XAX, !mcsema_real_eip !223
  %EAX_val.335 = load i32, i32* %EAX.9, !mcsema_real_eip !224
  store i32 %EAX_val.335, i32* %1180, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %1191 = load i64, i64* %1122, !mcsema_real_eip !226
  store i64 %1191, i64* %XAX, !mcsema_real_eip !226
  %1192 = add i64 %1191, 28, !mcsema_real_eip !227
  %1193 = inttoptr i64 %1192 to i64*, !mcsema_real_eip !227
  %1194 = inttoptr i64 %1192 to i8*, !mcsema_real_eip !227
  %1195 = load i8, i8* %1194, !mcsema_real_eip !227
  %1196 = sext i8 %1195 to i32, !mcsema_real_eip !227
  %1197 = zext i32 %1196 to i64, !mcsema_real_eip !227
  store i64 %1197, i64* %XCX, !mcsema_real_eip !227
  %1198 = load i64, i64* %1122, !mcsema_real_eip !228
  store i64 %1198, i64* %XAX, !mcsema_real_eip !228
  %1199 = add i64 %1198, 29, !mcsema_real_eip !229
  %1200 = inttoptr i64 %1199 to i64*, !mcsema_real_eip !229
  %1201 = inttoptr i64 %1199 to i8*, !mcsema_real_eip !229
  %1202 = load i8, i8* %1201, !mcsema_real_eip !229
  %1203 = sext i8 %1202 to i32, !mcsema_real_eip !229
  %1204 = zext i32 %1203 to i64, !mcsema_real_eip !229
  store i64 %1204, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.341 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.343 = load i32, i32* %EDX.64, !mcsema_real_eip !230
  %1205 = sub i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1206 = xor i32 %1205, %ECX_val.341, !mcsema_real_eip !230
  %1207 = xor i32 %1206, %EDX_val.343, !mcsema_real_eip !230
  %1208 = and i32 %1207, 16, !mcsema_real_eip !230
  %1209 = icmp ne i32 %1208, 0, !mcsema_real_eip !230
  store i1 %1209, i1* %AF, !mcsema_real_eip !230
  %1210 = trunc i32 %1205 to i8, !mcsema_real_eip !230
  %1211 = call i8 @llvm.ctpop.i8(i8 %1210), !mcsema_real_eip !230
  %1212 = trunc i8 %1211 to i1, !mcsema_real_eip !230
  %1213 = xor i1 %1212, true, !mcsema_real_eip !230
  store i1 %1213, i1* %PF, !mcsema_real_eip !230
  %1214 = icmp eq i32 %1205, 0, !mcsema_real_eip !230
  store i1 %1214, i1* %ZF, !mcsema_real_eip !230
  %1215 = lshr i32 %1205, 31, !mcsema_real_eip !230
  %1216 = trunc i32 %1215 to i1, !mcsema_real_eip !230
  store i1 %1216, i1* %SF, !mcsema_real_eip !230
  %1217 = icmp ult i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  store i1 %1217, i1* %CF, !mcsema_real_eip !230
  %1218 = xor i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1219 = and i32 %1218, %1206, !mcsema_real_eip !230
  %1220 = lshr i32 %1219, 31, !mcsema_real_eip !230
  %1221 = trunc i32 %1220 to i1, !mcsema_real_eip !230
  store i1 %1221, i1* %OF, !mcsema_real_eip !230
  %1222 = icmp eq i1 %1214, false, !mcsema_real_eip !231
  br i1 %1222, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  %1223 = load i64, i64* %1122, !mcsema_real_eip !233
  store i64 %1223, i64* %XCX, !mcsema_real_eip !233
  %1224 = add i64 %1223, 31, !mcsema_real_eip !234
  %1225 = inttoptr i64 %1224 to i64*, !mcsema_real_eip !234
  %1226 = inttoptr i64 %1224 to i8*, !mcsema_real_eip !234
  %1227 = load i8, i8* %1226, !mcsema_real_eip !234
  %1228 = sext i8 %1227 to i32, !mcsema_real_eip !234
  %1229 = zext i32 %1228 to i64, !mcsema_real_eip !234
  store i64 %1229, i64* %XDX, !mcsema_real_eip !234
  %1230 = load i64, i64* %1122, !mcsema_real_eip !235
  store i64 %1230, i64* %XCX, !mcsema_real_eip !235
  %1231 = add i64 %1230, 30, !mcsema_real_eip !236
  %1232 = inttoptr i64 %1231 to i64*, !mcsema_real_eip !236
  %1233 = inttoptr i64 %1231 to i8*, !mcsema_real_eip !236
  %1234 = load i8, i8* %1233, !mcsema_real_eip !236
  %1235 = sext i8 %1234 to i32, !mcsema_real_eip !236
  %1236 = zext i32 %1235 to i64, !mcsema_real_eip !236
  store i64 %1236, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.349 = load i32, i32* %EDX.64, !mcsema_real_eip !237
  %ESI.350 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.351 = load i32, i32* %ESI.350, !mcsema_real_eip !237
  %1237 = sub i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1238 = xor i32 %1237, %EDX_val.349, !mcsema_real_eip !237
  %1239 = xor i32 %1238, %ESI_val.351, !mcsema_real_eip !237
  %1240 = and i32 %1239, 16, !mcsema_real_eip !237
  %1241 = icmp ne i32 %1240, 0, !mcsema_real_eip !237
  store i1 %1241, i1* %AF, !mcsema_real_eip !237
  %1242 = trunc i32 %1237 to i8, !mcsema_real_eip !237
  %1243 = call i8 @llvm.ctpop.i8(i8 %1242), !mcsema_real_eip !237
  %1244 = trunc i8 %1243 to i1, !mcsema_real_eip !237
  %1245 = xor i1 %1244, true, !mcsema_real_eip !237
  store i1 %1245, i1* %PF, !mcsema_real_eip !237
  %1246 = icmp eq i32 %1237, 0, !mcsema_real_eip !237
  store i1 %1246, i1* %ZF, !mcsema_real_eip !237
  %1247 = lshr i32 %1237, 31, !mcsema_real_eip !237
  %1248 = trunc i32 %1247 to i1, !mcsema_real_eip !237
  store i1 %1248, i1* %SF, !mcsema_real_eip !237
  %1249 = icmp ult i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  store i1 %1249, i1* %CF, !mcsema_real_eip !237
  %1250 = xor i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1251 = and i32 %1250, %1238, !mcsema_real_eip !237
  %1252 = lshr i32 %1251, 31, !mcsema_real_eip !237
  %1253 = trunc i32 %1252 to i1, !mcsema_real_eip !237
  store i1 %1253, i1* %OF, !mcsema_real_eip !237
  %1254 = zext i32 %1237 to i64, !mcsema_real_eip !237
  store i64 %1254, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.353 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.355 = load i32, i32* %EDX.64, !mcsema_real_eip !238
  %1255 = sub i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1256 = xor i32 %1255, %EAX_val.353, !mcsema_real_eip !238
  %1257 = xor i32 %1256, %EDX_val.355, !mcsema_real_eip !238
  %1258 = and i32 %1257, 16, !mcsema_real_eip !238
  %1259 = icmp ne i32 %1258, 0, !mcsema_real_eip !238
  store i1 %1259, i1* %AF, !mcsema_real_eip !238
  %1260 = trunc i32 %1255 to i8, !mcsema_real_eip !238
  %1261 = call i8 @llvm.ctpop.i8(i8 %1260), !mcsema_real_eip !238
  %1262 = trunc i8 %1261 to i1, !mcsema_real_eip !238
  %1263 = xor i1 %1262, true, !mcsema_real_eip !238
  store i1 %1263, i1* %PF, !mcsema_real_eip !238
  %1264 = icmp eq i32 %1255, 0, !mcsema_real_eip !238
  store i1 %1264, i1* %ZF, !mcsema_real_eip !238
  %1265 = lshr i32 %1255, 31, !mcsema_real_eip !238
  %1266 = trunc i32 %1265 to i1, !mcsema_real_eip !238
  store i1 %1266, i1* %SF, !mcsema_real_eip !238
  %1267 = icmp ult i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  store i1 %1267, i1* %CF, !mcsema_real_eip !238
  %1268 = xor i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1269 = and i32 %1268, %1256, !mcsema_real_eip !238
  %1270 = lshr i32 %1269, 31, !mcsema_real_eip !238
  %1271 = trunc i32 %1270 to i1, !mcsema_real_eip !238
  store i1 %1271, i1* %OF, !mcsema_real_eip !238
  %1272 = zext i32 %1255 to i64, !mcsema_real_eip !238
  store i64 %1272, i64* %XAX, !mcsema_real_eip !238
  %1273 = add i64 %RBP_val.321, -20, !mcsema_real_eip !239
  %1274 = inttoptr i64 %1273 to i64*, !mcsema_real_eip !239
  %1275 = inttoptr i64 %1273 to i32*, !mcsema_real_eip !239
  %1276 = load i32, i32* %1275, !mcsema_real_eip !239
  %EAX_val.358 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1277 = add i32 %EAX_val.358, %1276, !mcsema_real_eip !239
  %1278 = xor i32 %1277, %1276, !mcsema_real_eip !239
  %1279 = xor i32 %1278, %EAX_val.358, !mcsema_real_eip !239
  %1280 = and i32 %1279, 16, !mcsema_real_eip !239
  %1281 = icmp ne i32 %1280, 0, !mcsema_real_eip !239
  store i1 %1281, i1* %AF, !mcsema_real_eip !239
  %1282 = lshr i32 %1277, 31, !mcsema_real_eip !239
  %1283 = trunc i32 %1282 to i1, !mcsema_real_eip !239
  store i1 %1283, i1* %SF, !mcsema_real_eip !239
  %1284 = icmp eq i32 %1277, 0, !mcsema_real_eip !239
  store i1 %1284, i1* %ZF, !mcsema_real_eip !239
  %1285 = xor i32 %1276, %EAX_val.358, !mcsema_real_eip !239
  %1286 = xor i32 %1285, -1, !mcsema_real_eip !239
  %1287 = and i32 %1286, %1278, !mcsema_real_eip !239
  %1288 = lshr i32 %1287, 31, !mcsema_real_eip !239
  %1289 = and i32 %1288, 1, !mcsema_real_eip !239
  %1290 = trunc i32 %1289 to i1, !mcsema_real_eip !239
  store i1 %1290, i1* %OF, !mcsema_real_eip !239
  %1291 = trunc i32 %1277 to i8, !mcsema_real_eip !239
  %1292 = call i8 @llvm.ctpop.i8(i8 %1291), !mcsema_real_eip !239
  %1293 = trunc i8 %1292 to i1, !mcsema_real_eip !239
  %1294 = xor i1 %1293, true, !mcsema_real_eip !239
  store i1 %1294, i1* %PF, !mcsema_real_eip !239
  %1295 = icmp ult i32 %1277, %1276, !mcsema_real_eip !239
  store i1 %1295, i1* %CF, !mcsema_real_eip !239
  %1296 = zext i32 %1277 to i64, !mcsema_real_eip !239
  store i64 %1296, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.361 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.361, i32* %1275, !mcsema_real_eip !240
  %RBP_val.362 = load i64, i64* %XBP, !mcsema_real_eip !241
  %1297 = add i64 %RBP_val.362, -16, !mcsema_real_eip !241
  %1298 = inttoptr i64 %1297 to i64*, !mcsema_real_eip !241
  %1299 = load i64, i64* %1298, !mcsema_real_eip !241
  store i64 %1299, i64* %XCX, !mcsema_real_eip !241
  %1300 = add i64 %1299, 28, !mcsema_real_eip !242
  %1301 = inttoptr i64 %1300 to i64*, !mcsema_real_eip !242
  %1302 = inttoptr i64 %1300 to i8*, !mcsema_real_eip !242
  %1303 = load i8, i8* %1302, !mcsema_real_eip !242
  %1304 = zext i8 %1303 to i32, !mcsema_real_eip !242
  %1305 = zext i32 %1304 to i64, !mcsema_real_eip !242
  store i64 %1305, i64* %XDI, !mcsema_real_eip !242
  %RSP_val.365 = load i64, i64* %XSP, !mcsema_real_eip !243
  %1306 = sub i64 %RSP_val.365, 8, !mcsema_real_eip !243
  %1307 = inttoptr i64 %1306 to i64*, !mcsema_real_eip !243
  store i64 -2415393069852865332, i64* %1307, !mcsema_real_eip !243
  store i64 %1306, i64* %XSP, !mcsema_real_eip !243
  %1308 = call x86_64_sysvcc i64 @_to_byte(i64 %1305), !mcsema_real_eip !243
  store i64 %1308, i64* %XAX, !mcsema_real_eip !243
  %RBP_val.366 = load i64, i64* %XBP, !mcsema_real_eip !244
  %1309 = add i64 %RBP_val.366, -20, !mcsema_real_eip !244
  %1310 = inttoptr i64 %1309 to i64*, !mcsema_real_eip !244
  %1311 = inttoptr i64 %1309 to i32*, !mcsema_real_eip !244
  %1312 = load i32, i32* %1311, !mcsema_real_eip !244
  %1313 = zext i32 %1312 to i64, !mcsema_real_eip !244
  store i64 %1313, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.368 = load i32, i32* %EDX.64, !mcsema_real_eip !245
  %EAX_val.370 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1314 = sub i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1315 = xor i32 %1314, %EDX_val.368, !mcsema_real_eip !245
  %1316 = xor i32 %1315, %EAX_val.370, !mcsema_real_eip !245
  %1317 = and i32 %1316, 16, !mcsema_real_eip !245
  %1318 = icmp ne i32 %1317, 0, !mcsema_real_eip !245
  store i1 %1318, i1* %AF, !mcsema_real_eip !245
  %1319 = trunc i32 %1314 to i8, !mcsema_real_eip !245
  %1320 = call i8 @llvm.ctpop.i8(i8 %1319), !mcsema_real_eip !245
  %1321 = trunc i8 %1320 to i1, !mcsema_real_eip !245
  %1322 = xor i1 %1321, true, !mcsema_real_eip !245
  store i1 %1322, i1* %PF, !mcsema_real_eip !245
  %1323 = icmp eq i32 %1314, 0, !mcsema_real_eip !245
  store i1 %1323, i1* %ZF, !mcsema_real_eip !245
  %1324 = lshr i32 %1314, 31, !mcsema_real_eip !245
  %1325 = trunc i32 %1324 to i1, !mcsema_real_eip !245
  store i1 %1325, i1* %SF, !mcsema_real_eip !245
  %1326 = icmp ult i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  store i1 %1326, i1* %CF, !mcsema_real_eip !245
  %1327 = xor i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1328 = and i32 %1327, %1315, !mcsema_real_eip !245
  %1329 = lshr i32 %1328, 31, !mcsema_real_eip !245
  %1330 = trunc i32 %1329 to i1, !mcsema_real_eip !245
  store i1 %1330, i1* %OF, !mcsema_real_eip !245
  %1331 = zext i32 %1314 to i64, !mcsema_real_eip !245
  store i64 %1331, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.373 = load i32, i32* %EDX.64, !mcsema_real_eip !246
  store i32 %EDX_val.373, i32* %1311, !mcsema_real_eip !246
  %RBP_val.374 = load i64, i64* %XBP, !mcsema_real_eip !247
  %1332 = add i64 %RBP_val.374, -20, !mcsema_real_eip !247
  %1333 = inttoptr i64 %1332 to i64*, !mcsema_real_eip !247
  %1334 = inttoptr i64 %1332 to i32*, !mcsema_real_eip !247
  %1335 = load i32, i32* %1334, !mcsema_real_eip !247
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1336 = trunc i32 %1335 to i8, !mcsema_real_eip !247
  %1337 = call i8 @llvm.ctpop.i8(i8 %1336), !mcsema_real_eip !247
  %1338 = trunc i8 %1337 to i1, !mcsema_real_eip !247
  %1339 = xor i1 %1338, true, !mcsema_real_eip !247
  store i1 %1339, i1* %PF, !mcsema_real_eip !247
  %1340 = icmp eq i32 %1335, 0, !mcsema_real_eip !247
  store i1 %1340, i1* %ZF, !mcsema_real_eip !247
  %1341 = lshr i32 %1335, 31, !mcsema_real_eip !247
  %1342 = trunc i32 %1341 to i1, !mcsema_real_eip !247
  store i1 %1342, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1343 = icmp eq i1 %1340, false, !mcsema_real_eip !248
  br i1 %1343, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x3e4:                                      ; preds = %block_0x3a6
  %1344 = add i64 %RBP_val.374, -16, !mcsema_real_eip !249
  %1345 = inttoptr i64 %1344 to i64*, !mcsema_real_eip !249
  %1346 = load i64, i64* %1345, !mcsema_real_eip !249
  store i64 %1346, i64* %XAX, !mcsema_real_eip !249
  %1347 = add i64 %1346, 31, !mcsema_real_eip !250
  %1348 = inttoptr i64 %1347 to i64*, !mcsema_real_eip !250
  %1349 = inttoptr i64 %1347 to i8*, !mcsema_real_eip !250
  %1350 = load i8, i8* %1349, !mcsema_real_eip !250
  %1351 = zext i8 %1350 to i32, !mcsema_real_eip !250
  %1352 = zext i32 %1351 to i64, !mcsema_real_eip !250
  store i64 %1352, i64* %XDI, !mcsema_real_eip !250
  %RSP_val.378 = load i64, i64* %XSP, !mcsema_real_eip !251
  %1353 = sub i64 %RSP_val.378, 8, !mcsema_real_eip !251
  %1354 = inttoptr i64 %1353 to i64*, !mcsema_real_eip !251
  store i64 -2415393069852865332, i64* %1354, !mcsema_real_eip !251
  store i64 %1353, i64* %XSP, !mcsema_real_eip !251
  %1355 = call x86_64_sysvcc i64 @_to_byte(i64 %1352), !mcsema_real_eip !251
  store i64 %1355, i64* %XAX, !mcsema_real_eip !251
  %EAX_val.380 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1356 = sub i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1357 = xor i32 %1356, %EAX_val.380, !mcsema_real_eip !252
  %1358 = xor i32 %1357, 4, !mcsema_real_eip !252
  %1359 = and i32 %1358, 16, !mcsema_real_eip !252
  %1360 = icmp ne i32 %1359, 0, !mcsema_real_eip !252
  store i1 %1360, i1* %AF, !mcsema_real_eip !252
  %1361 = trunc i32 %1356 to i8, !mcsema_real_eip !252
  %1362 = call i8 @llvm.ctpop.i8(i8 %1361), !mcsema_real_eip !252
  %1363 = trunc i8 %1362 to i1, !mcsema_real_eip !252
  %1364 = xor i1 %1363, true, !mcsema_real_eip !252
  store i1 %1364, i1* %PF, !mcsema_real_eip !252
  %1365 = icmp eq i32 %1356, 0, !mcsema_real_eip !252
  store i1 %1365, i1* %ZF, !mcsema_real_eip !252
  %1366 = lshr i32 %1356, 31, !mcsema_real_eip !252
  %1367 = trunc i32 %1366 to i1, !mcsema_real_eip !252
  store i1 %1367, i1* %SF, !mcsema_real_eip !252
  %1368 = icmp ult i32 %EAX_val.380, 4, !mcsema_real_eip !252
  store i1 %1368, i1* %CF, !mcsema_real_eip !252
  %1369 = xor i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1370 = and i32 %1369, %1357, !mcsema_real_eip !252
  %1371 = lshr i32 %1370, 31, !mcsema_real_eip !252
  %1372 = trunc i32 %1371 to i1, !mcsema_real_eip !252
  store i1 %1372, i1* %OF, !mcsema_real_eip !252
  br i1 %1365, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !253

block_0x3fa:                                      ; preds = %block_0x3e4
  %RBP_val.381 = load i64, i64* %XBP, !mcsema_real_eip !254
  %1373 = add i64 %RBP_val.381, -20, !mcsema_real_eip !254
  %1374 = inttoptr i64 %1373 to i64*, !mcsema_real_eip !254
  %1375 = inttoptr i64 %1373 to i32*, !mcsema_real_eip !254
  store i32 -32, i32* %1375, !mcsema_real_eip !254
  br label %block_0x401, !mcsema_real_eip !255

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !255

block_0x406:                                      ; preds = %block_0x38e
  %1376 = add i64 %RBP_val.321, -64, !mcsema_real_eip !256
  %1377 = inttoptr i64 %1376 to i64*, !mcsema_real_eip !256
  %1378 = inttoptr i64 %1376 to i32*, !mcsema_real_eip !256
  %1379 = load i32, i32* %1378, !mcsema_real_eip !256
  %1380 = zext i32 %1379 to i64, !mcsema_real_eip !256
  store i64 %1380, i64* %XAX, !mcsema_real_eip !256
  %1381 = add i64 %RBP_val.321, -20, !mcsema_real_eip !257
  %1382 = inttoptr i64 %1381 to i64*, !mcsema_real_eip !257
  %EAX_val.385 = load i32, i32* %EAX.9, !mcsema_real_eip !257
  %1383 = inttoptr i64 %1381 to i32*, !mcsema_real_eip !257
  store i32 %EAX_val.385, i32* %1383, !mcsema_real_eip !257
  br label %block_0x40c, !mcsema_real_eip !258

block_0x40c:                                      ; preds = %block_0x406, %block_0x401
  br label %block_0x411, !mcsema_real_eip !258

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %RBP_val.386 = load i64, i64* %XBP, !mcsema_real_eip !259
  %1384 = add i64 %RBP_val.386, -20, !mcsema_real_eip !259
  %1385 = inttoptr i64 %1384 to i64*, !mcsema_real_eip !259
  %1386 = inttoptr i64 %1384 to i32*, !mcsema_real_eip !259
  %1387 = load i32, i32* %1386, !mcsema_real_eip !259
  %1388 = zext i32 %1387 to i64, !mcsema_real_eip !259
  store i64 %1388, i64* %XAX, !mcsema_real_eip !259
  %1389 = add i64 %RBP_val.386, -4, !mcsema_real_eip !260
  %1390 = inttoptr i64 %1389 to i64*, !mcsema_real_eip !260
  %EAX_val.389 = load i32, i32* %EAX.9, !mcsema_real_eip !260
  %1391 = inttoptr i64 %1389 to i32*, !mcsema_real_eip !260
  store i32 %EAX_val.389, i32* %1391, !mcsema_real_eip !260
  br label %block_0x417, !mcsema_real_eip !261

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %RBP_val.390 = load i64, i64* %XBP, !mcsema_real_eip !261
  %1392 = add i64 %RBP_val.390, -4, !mcsema_real_eip !261
  %1393 = inttoptr i64 %1392 to i64*, !mcsema_real_eip !261
  %1394 = inttoptr i64 %1392 to i32*, !mcsema_real_eip !261
  %1395 = load i32, i32* %1394, !mcsema_real_eip !261
  %1396 = zext i32 %1395 to i64, !mcsema_real_eip !261
  store i64 %1396, i64* %XAX, !mcsema_real_eip !261
  %RSP_val.391 = load i64, i64* %XSP, !mcsema_real_eip !262
  %1397 = add i64 80, %RSP_val.391, !mcsema_real_eip !262
  %1398 = xor i64 %1397, %RSP_val.391, !mcsema_real_eip !262
  %1399 = xor i64 %1398, 80, !mcsema_real_eip !262
  %1400 = and i64 %1399, 16, !mcsema_real_eip !262
  %1401 = icmp ne i64 %1400, 0, !mcsema_real_eip !262
  store i1 %1401, i1* %AF, !mcsema_real_eip !262
  %1402 = lshr i64 %1397, 63, !mcsema_real_eip !262
  %1403 = trunc i64 %1402 to i1, !mcsema_real_eip !262
  store i1 %1403, i1* %SF, !mcsema_real_eip !262
  %1404 = icmp eq i64 %1397, 0, !mcsema_real_eip !262
  store i1 %1404, i1* %ZF, !mcsema_real_eip !262
  %1405 = xor i64 %RSP_val.391, 80, !mcsema_real_eip !262
  %1406 = xor i64 %1405, -1, !mcsema_real_eip !262
  %1407 = and i64 %1406, %1398, !mcsema_real_eip !262
  %1408 = lshr i64 %1407, 63, !mcsema_real_eip !262
  %1409 = and i64 %1408, 1, !mcsema_real_eip !262
  %1410 = trunc i64 %1409 to i1, !mcsema_real_eip !262
  store i1 %1410, i1* %OF, !mcsema_real_eip !262
  %1411 = trunc i64 %1397 to i8, !mcsema_real_eip !262
  %1412 = call i8 @llvm.ctpop.i8(i8 %1411), !mcsema_real_eip !262
  %1413 = trunc i8 %1412 to i1, !mcsema_real_eip !262
  %1414 = xor i1 %1413, true, !mcsema_real_eip !262
  store i1 %1414, i1* %PF, !mcsema_real_eip !262
  %1415 = icmp ult i64 %1397, %RSP_val.391, !mcsema_real_eip !262
  store i1 %1415, i1* %CF, !mcsema_real_eip !262
  store i64 %1397, i64* %XSP, !mcsema_real_eip !262
  %1416 = inttoptr i64 %1397 to i64*, !mcsema_real_eip !263
  %1417 = load i64, i64* %1416, !mcsema_real_eip !263
  store i64 %1417, i64* %XBP, !mcsema_real_eip !263
  %1418 = add i64 %1397, 8, !mcsema_real_eip !263
  store i64 %1418, i64* %XSP, !mcsema_real_eip !263
  %1419 = add i64 %1418, 8, !mcsema_real_eip !264
  %1420 = inttoptr i64 %1418 to i64*, !mcsema_real_eip !264
  %1421 = load i64, i64* %1420, !mcsema_real_eip !264
  store i64 %1421, i64* %XIP, !mcsema_real_eip !264
  store i64 %1419, i64* %XSP, !mcsema_real_eip !264
  ret void, !mcsema_real_eip !264
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @keycomp() #2

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
!9 = !{i64 23}
!10 = !{i64 26}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 47}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 59}
!19 = !{i64 63}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 75}
!23 = !{i64 82}
!24 = !{i64 87}
!25 = !{i64 91}
!26 = !{i64 95}
!27 = !{i64 100}
!28 = !{i64 103}
!29 = !{i64 109}
!30 = !{i64 116}
!31 = !{i64 121}
!32 = !{i64 125}
!33 = !{i64 129}
!34 = !{i64 134}
!35 = !{i64 137}
!36 = !{i64 140}
!37 = !{i64 143}
!38 = !{i64 146}
!39 = !{i64 152}
!40 = !{i64 159}
!41 = !{i64 164}
!42 = !{i64 168}
!43 = !{i64 172}
!44 = !{i64 177}
!45 = !{i64 182}
!46 = !{i64 185}
!47 = !{i64 188}
!48 = !{i64 191}
!49 = !{i64 192}
!50 = !{i64 194}
!51 = !{i64 197}
!52 = !{i64 203}
!53 = !{i64 210}
!54 = !{i64 215}
!55 = !{i64 219}
!56 = !{i64 223}
!57 = !{i64 226}
!58 = !{i64 229}
!59 = !{i64 235}
!60 = !{i64 239}
!61 = !{i64 243}
!62 = !{i64 249}
!63 = !{i64 252}
!64 = !{i64 258}
!65 = !{i64 265}
!66 = !{i64 270}
!67 = !{i64 277}
!68 = !{i64 282}
!69 = !{i64 286}
!70 = !{i64 290}
!71 = !{i64 293}
!72 = !{i64 295}
!73 = !{i64 298}
!74 = !{i64 302}
!75 = !{i64 306}
!76 = !{i64 312}
!77 = !{i64 314}
!78 = !{i64 317}
!79 = !{i64 321}
!80 = !{i64 324}
!81 = !{i64 330}
!82 = !{i64 334}
!83 = !{i64 337}
!84 = !{i64 343}
!85 = !{i64 346}
!86 = !{i64 349}
!87 = !{i64 352}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 363}
!91 = !{i64 366}
!92 = !{i64 370}
!93 = !{i64 374}
!94 = !{i64 379}
!95 = !{i64 381}
!96 = !{i64 384}
!97 = !{i64 388}
!98 = !{i64 392}
!99 = !{i64 397}
!100 = !{i64 401}
!101 = !{i64 403}
!102 = !{i64 406}
!103 = !{i64 409}
!104 = !{i64 413}
!105 = !{i64 416}
!106 = !{i64 419}
!107 = !{i64 425}
!108 = !{i64 428}
!109 = !{i64 431}
!110 = !{i64 434}
!111 = !{i64 439}
!112 = !{i64 442}
!113 = !{i64 445}
!114 = !{i64 447}
!115 = !{i64 450}
!116 = !{i64 454}
!117 = !{i64 460}
!118 = !{i64 467}
!119 = !{i64 472}
!120 = !{i64 474}
!121 = !{i64 479}
!122 = !{i64 483}
!123 = !{i64 487}
!124 = !{i64 490}
!125 = !{i64 495}
!126 = !{i64 498}
!127 = !{i64 502}
!128 = !{i64 506}
!129 = !{i64 511}
!130 = !{i64 516}
!131 = !{i64 522}
!132 = !{i64 526}
!133 = !{i64 531}
!134 = !{i64 536}
!135 = !{i64 542}
!136 = !{i64 549}
!137 = !{i64 554}
!138 = !{i64 561}
!139 = !{i64 563}
!140 = !{i64 568}
!141 = !{i64 572}
!142 = !{i64 576}
!143 = !{i64 579}
!144 = !{i64 584}
!145 = !{i64 587}
!146 = !{i64 590}
!147 = !{i64 595}
!148 = !{i64 598}
!149 = !{i64 601}
!150 = !{i64 604}
!151 = !{i64 607}
!152 = !{i64 610}
!153 = !{i64 615}
!154 = !{i64 618}
!155 = !{i64 622}
!156 = !{i64 628}
!157 = !{i64 631}
!158 = !{i64 634}
!159 = !{i64 640}
!160 = !{i64 647}
!161 = !{i64 652}
!162 = !{i64 659}
!163 = !{i64 664}
!164 = !{i64 667}
!165 = !{i64 671}
!166 = !{i64 675}
!167 = !{i64 678}
!168 = !{i64 683}
!169 = !{i64 686}
!170 = !{i64 689}
!171 = !{i64 692}
!172 = !{i64 695}
!173 = !{i64 698}
!174 = !{i64 701}
!175 = !{i64 704}
!176 = !{i64 710}
!177 = !{i64 717}
!178 = !{i64 722}
!179 = !{i64 725}
!180 = !{i64 730}
!181 = !{i64 733}
!182 = !{i64 740}
!183 = !{i64 746}
!184 = !{i64 753}
!185 = !{i64 758}
!186 = !{i64 763}
!187 = !{i64 766}
!188 = !{i64 772}
!189 = !{i64 775}
!190 = !{i64 778}
!191 = !{i64 781}
!192 = !{i64 784}
!193 = !{i64 787}
!194 = !{i64 793}
!195 = !{i64 796}
!196 = !{i64 799}
!197 = !{i64 802}
!198 = !{i64 804}
!199 = !{i64 806}
!200 = !{i64 809}
!201 = !{i64 811}
!202 = !{i64 814}
!203 = !{i64 818}
!204 = !{i64 824}
!205 = !{i64 827}
!206 = !{i64 830}
!207 = !{i64 835}
!208 = !{i64 840}
!209 = !{i64 843}
!210 = !{i64 847}
!211 = !{i64 851}
!212 = !{i64 854}
!213 = !{i64 859}
!214 = !{i64 862}
!215 = !{i64 866}
!216 = !{i64 870}
!217 = !{i64 873}
!218 = !{i64 879}
!219 = !{i64 883}
!220 = !{i64 887}
!221 = !{i64 890}
!222 = !{i64 896}
!223 = !{i64 899}
!224 = !{i64 902}
!225 = !{i64 905}
!226 = !{i64 910}
!227 = !{i64 914}
!228 = !{i64 918}
!229 = !{i64 922}
!230 = !{i64 926}
!231 = !{i64 928}
!232 = !{i64 934}
!233 = !{i64 939}
!234 = !{i64 943}
!235 = !{i64 947}
!236 = !{i64 951}
!237 = !{i64 955}
!238 = !{i64 957}
!239 = !{i64 959}
!240 = !{i64 962}
!241 = !{i64 965}
!242 = !{i64 969}
!243 = !{i64 973}
!244 = !{i64 978}
!245 = !{i64 981}
!246 = !{i64 983}
!247 = !{i64 986}
!248 = !{i64 990}
!249 = !{i64 996}
!250 = !{i64 1000}
!251 = !{i64 1004}
!252 = !{i64 1009}
!253 = !{i64 1012}
!254 = !{i64 1018}
!255 = !{i64 1025}
!256 = !{i64 1030}
!257 = !{i64 1033}
!258 = !{i64 1036}
!259 = !{i64 1041}
!260 = !{i64 1044}
!261 = !{i64 1047}
!262 = !{i64 1050}
!263 = !{i64 1054}
!264 = !{i64 1055}
