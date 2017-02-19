; ModuleID = 'Output/test_3.clang.opt.bc'
source_filename = "Output/test_3.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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

%0 = type <{ [40 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc0 = internal constant %0 <{ [40 x i8] c"\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0xe8 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"j\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = add i64 %1, -8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %4, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, -12, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, !mcsema_real_eip !5
  %7 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.7, i32* %7, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %10, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = inttoptr i64 %11 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %13, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %14 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !8
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !8
  %17 = load i32, i32* %16, !mcsema_real_eip !8
  %18 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %18, i64* %XAX, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.10, -12, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  %22 = load i32, i32* %21, !mcsema_real_eip !9
  %23 = sub i32 %EAX_val.13, %22, !mcsema_real_eip !9
  %24 = xor i32 %23, %EAX_val.13, !mcsema_real_eip !9
  %25 = xor i32 %24, %22, !mcsema_real_eip !9
  %26 = and i32 %25, 16, !mcsema_real_eip !9
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !9
  store i1 %27, i1* %AF, !mcsema_real_eip !9
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !9
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !9
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !9
  %31 = xor i1 %30, true, !mcsema_real_eip !9
  store i1 %31, i1* %PF, !mcsema_real_eip !9
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !9
  store i1 %32, i1* %ZF, !mcsema_real_eip !9
  %33 = lshr i32 %23, 31, !mcsema_real_eip !9
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !9
  store i1 %34, i1* %SF, !mcsema_real_eip !9
  %35 = icmp ult i32 %EAX_val.13, %22, !mcsema_real_eip !9
  store i1 %35, i1* %CF, !mcsema_real_eip !9
  %36 = xor i32 %EAX_val.13, %22, !mcsema_real_eip !9
  %37 = and i32 %36, %24, !mcsema_real_eip !9
  %38 = lshr i32 %37, 31, !mcsema_real_eip !9
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !9
  store i1 %39, i1* %OF, !mcsema_real_eip !9
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !10
  br i1 %40, label %block_0x44, label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %41 = add i64 %RBP_val.10, -8, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !11
  %43 = load i64, i64* %42, !mcsema_real_eip !11
  store i64 %43, i64* %XAX, !mcsema_real_eip !11
  %44 = load i32, i32* %16, !mcsema_real_eip !12
  %45 = sext i32 %44 to i64, !mcsema_real_eip !12
  store i64 %45, i64* %XCX, !mcsema_real_eip !12
  %46 = mul i64 %45, 4, !mcsema_real_eip !13
  %47 = add i64 %43, %46, !mcsema_real_eip !13
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !13
  %49 = inttoptr i64 %47 to i32*, !mcsema_real_eip !13
  %50 = load i32, i32* %49, !mcsema_real_eip !13
  %51 = zext i32 %50 to i64, !mcsema_real_eip !13
  store i64 %51, i64* %XDX, !mcsema_real_eip !13
  %52 = add i64 %RBP_val.10, -16, !mcsema_real_eip !14
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !14
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !14
  %55 = load i32, i32* %54, !mcsema_real_eip !14
  %EDX.19 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.20 = load i32, i32* %EDX.19, !mcsema_real_eip !14
  %56 = add i32 %EDX_val.20, %55, !mcsema_real_eip !14
  %57 = xor i32 %56, %55, !mcsema_real_eip !14
  %58 = xor i32 %57, %EDX_val.20, !mcsema_real_eip !14
  %59 = and i32 %58, 16, !mcsema_real_eip !14
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !14
  store i1 %60, i1* %AF, !mcsema_real_eip !14
  %61 = lshr i32 %56, 31, !mcsema_real_eip !14
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !14
  store i1 %62, i1* %SF, !mcsema_real_eip !14
  %63 = icmp eq i32 %56, 0, !mcsema_real_eip !14
  store i1 %63, i1* %ZF, !mcsema_real_eip !14
  %64 = xor i32 %55, %EDX_val.20, !mcsema_real_eip !14
  %65 = xor i32 %64, -1, !mcsema_real_eip !14
  %66 = and i32 %65, %57, !mcsema_real_eip !14
  %67 = lshr i32 %66, 31, !mcsema_real_eip !14
  %68 = and i32 %67, 1, !mcsema_real_eip !14
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !14
  store i1 %69, i1* %OF, !mcsema_real_eip !14
  %70 = trunc i32 %56 to i8, !mcsema_real_eip !14
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !14
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !14
  %73 = xor i1 %72, true, !mcsema_real_eip !14
  store i1 %73, i1* %PF, !mcsema_real_eip !14
  %74 = icmp ult i32 %56, %55, !mcsema_real_eip !14
  store i1 %74, i1* %CF, !mcsema_real_eip !14
  %75 = zext i32 %56 to i64, !mcsema_real_eip !14
  store i64 %75, i64* %XDX, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.19, !mcsema_real_eip !15
  store i32 %EDX_val.23, i32* %54, !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !16
  %76 = add i64 %RBP_val.24, -20, !mcsema_real_eip !16
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !16
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !16
  %79 = load i32, i32* %78, !mcsema_real_eip !16
  %80 = zext i32 %79 to i64, !mcsema_real_eip !16
  store i64 %80, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.26 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %81 = add i32 1, %EAX_val.26, !mcsema_real_eip !17
  %82 = xor i32 %81, %EAX_val.26, !mcsema_real_eip !17
  %83 = xor i32 %82, 1, !mcsema_real_eip !17
  %84 = and i32 %83, 16, !mcsema_real_eip !17
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !17
  store i1 %85, i1* %AF, !mcsema_real_eip !17
  %86 = lshr i32 %81, 31, !mcsema_real_eip !17
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !17
  store i1 %87, i1* %SF, !mcsema_real_eip !17
  %88 = icmp eq i32 %81, 0, !mcsema_real_eip !17
  store i1 %88, i1* %ZF, !mcsema_real_eip !17
  %89 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !17
  %90 = xor i32 %89, -1, !mcsema_real_eip !17
  %91 = and i32 %90, %82, !mcsema_real_eip !17
  %92 = lshr i32 %91, 31, !mcsema_real_eip !17
  %93 = and i32 %92, 1, !mcsema_real_eip !17
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !17
  store i1 %94, i1* %OF, !mcsema_real_eip !17
  %95 = trunc i32 %81 to i8, !mcsema_real_eip !17
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !17
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !17
  %98 = xor i1 %97, true, !mcsema_real_eip !17
  store i1 %98, i1* %PF, !mcsema_real_eip !17
  %99 = icmp ult i32 %81, %EAX_val.26, !mcsema_real_eip !17
  store i1 %99, i1* %CF, !mcsema_real_eip !17
  %100 = zext i32 %81 to i64, !mcsema_real_eip !17
  store i64 %100, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.29 = load i32, i32* %EAX.12, !mcsema_real_eip !18
  store i32 %EAX_val.29, i32* %78, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %101 = add i64 %RBP_val.10, -16, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !20
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !20
  %104 = load i32, i32* %103, !mcsema_real_eip !20
  %105 = zext i32 %104 to i64, !mcsema_real_eip !20
  store i64 %105, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !21
  %106 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !21
  %107 = load i64, i64* %106, !mcsema_real_eip !21
  store i64 %107, i64* %XBP, !mcsema_real_eip !21
  %108 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store i64 %108, i64* %XSP, !mcsema_real_eip !21
  %109 = add i64 %108, 8, !mcsema_real_eip !22
  %110 = inttoptr i64 %108 to i64*, !mcsema_real_eip !22
  %111 = load i64, i64* %110, !mcsema_real_eip !22
  store i64 %111, i64* %XIP, !mcsema_real_eip !22
  store i64 %109, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !23
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !23
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !23
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !23
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !23
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !23
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !23
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !23
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !23
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !23
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !23
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !23
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !23
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !23
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !23
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !23
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !23
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !23
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !23
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !23
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !23
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !23
  br label %block_0x50, !mcsema_real_eip !23

block_0x50:                                       ; preds = %entry
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !23
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !23
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !23
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !23
  store i64 %RBP_val.33, i64* %2, !mcsema_real_eip !23
  store i64 %1, i64* %XSP, !mcsema_real_eip !23
  store i64 %1, i64* %XBP, !mcsema_real_eip !24
  %3 = sub i64 %1, 80, !mcsema_real_eip !25
  %4 = xor i64 %3, %1, !mcsema_real_eip !25
  %5 = xor i64 %4, 80, !mcsema_real_eip !25
  %6 = and i64 %5, 16, !mcsema_real_eip !25
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !25
  store i1 %7, i1* %AF, !mcsema_real_eip !25
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !25
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !25
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !25
  %11 = xor i1 %10, true, !mcsema_real_eip !25
  store i1 %11, i1* %PF, !mcsema_real_eip !25
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !25
  store i1 %12, i1* %ZF, !mcsema_real_eip !25
  %13 = lshr i64 %3, 63, !mcsema_real_eip !25
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !25
  store i1 %14, i1* %SF, !mcsema_real_eip !25
  %15 = icmp ult i64 %1, 80, !mcsema_real_eip !25
  store i1 %15, i1* %CF, !mcsema_real_eip !25
  %16 = xor i64 %1, 80, !mcsema_real_eip !25
  %17 = and i64 %16, %4, !mcsema_real_eip !25
  %18 = lshr i64 %17, 63, !mcsema_real_eip !25
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !25
  store i1 %19, i1* %OF, !mcsema_real_eip !25
  store i64 %3, i64* %XSP, !mcsema_real_eip !25
  store i64 10, i64* %XSI, !mcsema_real_eip !26
  %20 = add i64 %1, -48, !mcsema_real_eip !27
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !27
  store i64 %20, i64* %XAX, !mcsema_real_eip !27
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XCX, !mcsema_real_eip !28
  store i64 40, i64* %XDX, !mcsema_real_eip !29
  %22 = add i64 %1, -4, !mcsema_real_eip !30
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !30
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %24, !mcsema_real_eip !30
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !31
  store i64 %RAX_val.39, i64* %XDI, !mcsema_real_eip !31
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !32
  %25 = add i64 %RBP_val.40, -56, !mcsema_real_eip !32
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !32
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !32
  %ESI_val.42 = load i32, i32* %ESI.41, !mcsema_real_eip !32
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !32
  store i32 %ESI_val.42, i32* %27, !mcsema_real_eip !32
  %RCX_val.43 = load i64, i64* %XCX, !mcsema_real_eip !33
  store i64 %RCX_val.43, i64* %XSI, !mcsema_real_eip !33
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !34
  %28 = add i64 %RBP_val.44, -64, !mcsema_real_eip !34
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !34
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !34
  store i64 %RAX_val.45, i64* %29, !mcsema_real_eip !34
  %RDI_val.46 = load i64, i64* %XDI, !mcsema_real_eip !35
  %RSI_val.47 = load i64, i64* %XSI, !mcsema_real_eip !35
  %RDX_val.48 = load i64, i64* %XDX, !mcsema_real_eip !35
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !35
  %30 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !35
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %31, !mcsema_real_eip !35
  store i64 %30, i64* %XSP, !mcsema_real_eip !35
  %32 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.46, i64 %RSI_val.47, i64 %RDX_val.48), !mcsema_real_eip !35
  store i64 %32, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !36
  %33 = add i64 %RBP_val.50, -64, !mcsema_real_eip !36
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !36
  %35 = load i64, i64* %34, !mcsema_real_eip !36
  store i64 %35, i64* %XDI, !mcsema_real_eip !36
  %36 = add i64 %RBP_val.50, -56, !mcsema_real_eip !37
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !37
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !37
  %39 = load i32, i32* %38, !mcsema_real_eip !37
  %40 = zext i32 %39 to i64, !mcsema_real_eip !37
  store i64 %40, i64* %XSI, !mcsema_real_eip !37
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %41 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !38
  store i64 -4981261766360305936, i64* %42, !mcsema_real_eip !38
  store i64 %41, i64* %XSP, !mcsema_real_eip !38
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !38
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, !mcsema_real_eip !39
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !40
  %43 = add i64 %RBP_val.53, -52, !mcsema_real_eip !40
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !40
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !40
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.55, i32* %45, !mcsema_real_eip !40
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !41
  %46 = add i64 %RBP_val.56, -52, !mcsema_real_eip !41
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !41
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !41
  %49 = load i32, i32* %48, !mcsema_real_eip !41
  %50 = zext i32 %49 to i64, !mcsema_real_eip !41
  store i64 %50, i64* %XSI, !mcsema_real_eip !41
  %AL.57 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  store i8 0, i8* %AL.57, !mcsema_real_eip !42
  %RDI_val.58 = load i64, i64* %XDI, !mcsema_real_eip !43
  %RDX_val.60 = load i64, i64* %XDX, !mcsema_real_eip !43
  %RCX_val.61 = load i64, i64* %XCX, !mcsema_real_eip !43
  %R8_val.62 = load i64, i64* %R8, !mcsema_real_eip !43
  %R9_val.63 = load i64, i64* %R9, !mcsema_real_eip !43
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !43
  %51 = inttoptr i64 %RSP_val.64 to i64*, !mcsema_real_eip !43
  %52 = load i64, i64* %51, !mcsema_real_eip !43
  %53 = add i64 %RSP_val.64, 8, !mcsema_real_eip !43
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !43
  %55 = load i64, i64* %54, !mcsema_real_eip !43
  %56 = add i64 %53, 8, !mcsema_real_eip !43
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !43
  %58 = load i64, i64* %57, !mcsema_real_eip !43
  %59 = add i64 %56, 8, !mcsema_real_eip !43
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !43
  %61 = load i64, i64* %60, !mcsema_real_eip !43
  %62 = add i64 %59, 8, !mcsema_real_eip !43
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !43
  %64 = load i64, i64* %63, !mcsema_real_eip !43
  %65 = add i64 %62, 8, !mcsema_real_eip !43
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !43
  %67 = load i64, i64* %66, !mcsema_real_eip !43
  %68 = sub i64 %RSP_val.64, 8, !mcsema_real_eip !43
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !43
  store i64 -2415393069852865332, i64* %69, !mcsema_real_eip !43
  store i64 %68, i64* %XSP, !mcsema_real_eip !43
  %70 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.58, i64 %50, i64 %RDX_val.60, i64 %RCX_val.61, i64 %R8_val.62, i64 %R9_val.63, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67), !mcsema_real_eip !43
  store i64 %70, i64* %XAX, !mcsema_real_eip !43
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !44
  %71 = add i64 %RBP_val.66, -52, !mcsema_real_eip !44
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !44
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !44
  %74 = load i32, i32* %73, !mcsema_real_eip !44
  %75 = zext i32 %74 to i64, !mcsema_real_eip !44
  store i64 %75, i64* %XSI, !mcsema_real_eip !44
  %76 = add i64 %RBP_val.66, -68, !mcsema_real_eip !45
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !45
  %EAX_val.69 = load i32, i32* %EAX.54, !mcsema_real_eip !45
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.69, i32* %78, !mcsema_real_eip !45
  %ESI_val.71 = load i32, i32* %ESI.41, !mcsema_real_eip !46
  %79 = zext i32 %ESI_val.71 to i64, !mcsema_real_eip !46
  store i64 %79, i64* %XAX, !mcsema_real_eip !46
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !47
  %80 = add i64 80, %RSP_val.72, !mcsema_real_eip !47
  %81 = xor i64 %80, %RSP_val.72, !mcsema_real_eip !47
  %82 = xor i64 %81, 80, !mcsema_real_eip !47
  %83 = and i64 %82, 16, !mcsema_real_eip !47
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !47
  store i1 %84, i1* %AF, !mcsema_real_eip !47
  %85 = lshr i64 %80, 63, !mcsema_real_eip !47
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !47
  store i1 %86, i1* %SF, !mcsema_real_eip !47
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !47
  store i1 %87, i1* %ZF, !mcsema_real_eip !47
  %88 = xor i64 %RSP_val.72, 80, !mcsema_real_eip !47
  %89 = xor i64 %88, -1, !mcsema_real_eip !47
  %90 = and i64 %89, %81, !mcsema_real_eip !47
  %91 = lshr i64 %90, 63, !mcsema_real_eip !47
  %92 = and i64 %91, 1, !mcsema_real_eip !47
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !47
  store i1 %93, i1* %OF, !mcsema_real_eip !47
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !47
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !47
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !47
  %97 = xor i1 %96, true, !mcsema_real_eip !47
  store i1 %97, i1* %PF, !mcsema_real_eip !47
  %98 = icmp ult i64 %80, %RSP_val.72, !mcsema_real_eip !47
  store i1 %98, i1* %CF, !mcsema_real_eip !47
  store i64 %80, i64* %XSP, !mcsema_real_eip !47
  %99 = inttoptr i64 %80 to i64*, !mcsema_real_eip !48
  %100 = load i64, i64* %99, !mcsema_real_eip !48
  store i64 %100, i64* %XBP, !mcsema_real_eip !48
  %101 = add i64 %80, 8, !mcsema_real_eip !48
  store i64 %101, i64* %XSP, !mcsema_real_eip !48
  %102 = add i64 %101, 8, !mcsema_real_eip !49
  %103 = inttoptr i64 %101 to i64*, !mcsema_real_eip !49
  %104 = load i64, i64* %103, !mcsema_real_eip !49
  store i64 %104, i64* %XIP, !mcsema_real_eip !49
  store i64 %102, i64* %XSP, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 45}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 68}
!21 = !{i64 71}
!22 = !{i64 72}
!23 = !{i64 80}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 88}
!27 = !{i64 93}
!28 = !{i64 97}
!29 = !{i64 107}
!30 = !{i64 112}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 125}
!34 = !{i64 128}
!35 = !{i64 132}
!36 = !{i64 137}
!37 = !{i64 141}
!38 = !{i64 144}
!39 = !{i64 149}
!40 = !{i64 159}
!41 = !{i64 162}
!42 = !{i64 165}
!43 = !{i64 167}
!44 = !{i64 172}
!45 = !{i64 175}
!46 = !{i64 178}
!47 = !{i64 180}
!48 = !{i64 184}
!49 = !{i64 185}
