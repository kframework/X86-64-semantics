; ModuleID = 'Output/test_3.clang.trans.bc'
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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !23
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !24
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.36, 80, !mcsema_real_eip !25
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !25
  %4 = and i64 %3, 16, !mcsema_real_eip !25
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !25
  store i1 %5, i1* %AF, !mcsema_real_eip !25
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !25
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !25
  %8 = xor i1 %7, true, !mcsema_real_eip !25
  store i1 %8, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !25
  %9 = lshr i64 %2, 63, !mcsema_real_eip !25
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !25
  store i1 %10, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !25
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !25
  %12 = lshr i64 %11, 63, !mcsema_real_eip !25
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !25
  store i1 %13, i1* %OF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !25
  store i64 10, i64* %XSI, !mcsema_real_eip !26
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -48
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !27
  store i64 %14, i64* %XAX, !mcsema_real_eip !27
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XCX, !mcsema_real_eip !28
  store i64 40, i64* %XDX, !mcsema_real_eip !29
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !30
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %16, !mcsema_real_eip !30
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !31
  store i64 %RAX_val.39, i64* %XDI, !mcsema_real_eip !31
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -56
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !32
  %ESI_val.42 = load i32, i32* %ESI.41, !mcsema_real_eip !32
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !32
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !32
  store i32 %ESI_val.42, i32* %18, !mcsema_real_eip !32
  %RCX_val.43 = load i64, i64* %XCX, !mcsema_real_eip !33
  store i64 %RCX_val.43, i64* %XSI, !mcsema_real_eip !33
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -64
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !34
  store i64 %RAX_val.45, i64* %_allin_new_bt_24, !mcsema_real_eip !34
  %RDI_val.46 = load i64, i64* %XDI, !mcsema_real_eip !35
  %RSI_val.47 = load i64, i64* %XSI, !mcsema_real_eip !35
  %RDX_val.48 = load i64, i64* %XDX, !mcsema_real_eip !35
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %19 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !35
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !35
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !35
  %20 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.46, i64 %RSI_val.47, i64 %RDX_val.48)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !35
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %21 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !36
  store i64 %21, i64* %XDI, !mcsema_real_eip !36
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -56
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !37
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !37
  %24 = load i32, i32* %23, !mcsema_real_eip !37
  %25 = zext i32 %24 to i64, !mcsema_real_eip !37
  store i64 %25, i64* %XSI, !mcsema_real_eip !37
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_35 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %26 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !38
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %26, i64* %XSP, !mcsema_real_eip !38
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_86)
  %_rsp_fix_88 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_89 = getelementptr i8, i8* %_rsp_fix_88, i64 8
  store i8* %_gep_fix_89, i8** %_RSP_ptr_
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, !mcsema_real_eip !39
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !40
  %27 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !40
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.55, i32* %28, !mcsema_real_eip !40
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -52
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %29 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !41
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !41
  %31 = load i32, i32* %30, !mcsema_real_eip !41
  %32 = zext i32 %31 to i64, !mcsema_real_eip !41
  store i64 %32, i64* %XSI, !mcsema_real_eip !41
  %AL.57 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  store i8 0, i8* %AL.57, !mcsema_real_eip !42
  %RDI_val.58 = load i64, i64* %XDI, !mcsema_real_eip !43
  %RDX_val.60 = load i64, i64* %XDX, !mcsema_real_eip !43
  %RCX_val.61 = load i64, i64* %XCX, !mcsema_real_eip !43
  %R8_val.62 = load i64, i64* %R8, !mcsema_real_eip !43
  %R9_val.63 = load i64, i64* %R9, !mcsema_real_eip !43
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_44 = bitcast i8* %_load_rsp_ptr_43 to i64*
  %33 = load i64, i64* %_allin_new_bt_44, !mcsema_real_eip !43
  %_new_gep_45 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %34 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !43
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %35 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !43
  %_new_gep_49 = getelementptr i8, i8* %_new_gep_47, i64 8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %36 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !43
  %_new_gep_51 = getelementptr i8, i8* %_new_gep_49, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %37 = load i64, i64* %_allin_new_bt_52, !mcsema_real_eip !43
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %38 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !43
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %39 = sub i64 %RSP_val.65, 8, !mcsema_real_eip !43
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !43
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %39, i64* %XSP, !mcsema_real_eip !43
  %40 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.58, i64 %32, i64 %RDX_val.60, i64 %RCX_val.61, i64 %R8_val.62, i64 %R9_val.63, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38)
  %_rsp_fix_90 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_91 = getelementptr i8, i8* %_rsp_fix_90, i64 8
  store i8* %_gep_fix_91, i8** %_RSP_ptr_
  store i64 %40, i64* %XAX, !mcsema_real_eip !43
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -52
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !44
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !44
  %43 = load i32, i32* %42, !mcsema_real_eip !44
  %44 = zext i32 %43 to i64, !mcsema_real_eip !44
  store i64 %44, i64* %XSI, !mcsema_real_eip !44
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -68
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.69 = load i32, i32* %EAX.54, !mcsema_real_eip !45
  %45 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !45
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.69, i32* %46, !mcsema_real_eip !45
  %ESI_val.71 = load i32, i32* %ESI.41, !mcsema_real_eip !46
  %47 = zext i32 %ESI_val.71 to i64, !mcsema_real_eip !46
  store i64 %47, i64* %XAX, !mcsema_real_eip !46
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 80
  %48 = add i64 80, %RSP_val.72, !mcsema_real_eip !47
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %49 = xor i64 %_trans_xor_68, 80, !mcsema_real_eip !47
  %50 = and i64 %49, 16, !mcsema_real_eip !47
  %51 = icmp ne i64 %50, 0, !mcsema_real_eip !47
  store i1 %51, i1* %AF, !mcsema_real_eip !47
  %52 = lshr i64 %48, 63, !mcsema_real_eip !47
  %53 = trunc i64 %52 to i1, !mcsema_real_eip !47
  store i1 %53, i1* %SF, !mcsema_real_eip !47
  %_trans_icmp_eq_70 = icmp eq i64 %_trans_p2i_66, 0
  store i1 %_trans_icmp_eq_70, i1* %ZF, !mcsema_real_eip !47
  %_trans_xor_72 = xor i64 %_trans_p2i_67, 80
  %54 = xor i64 %_trans_xor_72, -1, !mcsema_real_eip !47
  %55 = and i64 %54, %_trans_xor_68, !mcsema_real_eip !47
  %56 = lshr i64 %55, 63, !mcsema_real_eip !47
  %57 = and i64 %56, 1, !mcsema_real_eip !47
  %58 = trunc i64 %57 to i1, !mcsema_real_eip !47
  store i1 %58, i1* %OF, !mcsema_real_eip !47
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %59 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !47
  %60 = trunc i8 %59 to i1, !mcsema_real_eip !47
  %61 = xor i1 %60, true, !mcsema_real_eip !47
  store i1 %61, i1* %PF, !mcsema_real_eip !47
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.72
  store i1 %_trans_icmp_ne_79, i1* %CF, !mcsema_real_eip !47
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !47
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %62 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !48
  %_new_int2ptr_ = inttoptr i64 %62 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %62, i64* %XBP, !mcsema_real_eip !48
  %_new_gep_82 = getelementptr i8, i8* %_new_gep_65, i64 8
  %63 = add i64 %48, 8, !mcsema_real_eip !48
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %63, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_84 = getelementptr i8, i8* %_new_gep_82, i64 8
  %64 = add i64 %63, 8, !mcsema_real_eip !49
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %65 = load i64, i64* %_allin_new_bt_85, !mcsema_real_eip !49
  store i64 %65, i64* %XIP, !mcsema_real_eip !49
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %64, i64* %XSP, !mcsema_real_eip !49
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, !mcsema_real_eip !5
  %2 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.7, i32* %3, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -16
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %5, !mcsema_real_eip !6
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -20
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !7
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %7, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %80, %block_0x0
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %8 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !8
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %9 to i8*
  %_offset_above_rbp_ = sub i64 %8, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %10, label %11

; <label>:10:                                     ; preds = %block_0x19
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %11

; <label>:11:                                     ; preds = %block_0x19, %10
  %12 = phi i32* [ %9, %block_0x19 ], [ %_address_in_parent_stack_bt_, %10 ]
  %_new_load_ = load i32, i32* %12
  %13 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %13, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %14 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !9
  %_ptr_bt_49 = bitcast i32* %15 to i8*
  %_offset_above_rbp_50 = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_51 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_50
  %_cond1_52 = icmp ugt i8* %_ptr_bt_49, %_local_stack_end_ptr_
  %_cond2_1_53 = icmp ugt i8* %_ptr_bt_49, %_parent_stack_end_ptr_
  %_cond2_2_54 = icmp ult i8* %_ptr_bt_49, %_parent_stack_start_ptr_
  %_cond2_55 = or i1 %_cond2_1_53, %_cond2_2_54
  %_cond4_56 = icmp ule i8* %_pot_address_in_parent_stack_51, %_parent_stack_end_ptr_
  %_cond1_n_cond2_57 = and i1 %_cond1_52, %_cond2_55
  %_cond1_n_cond2_cond3_58 = and i1 %_cond1_n_cond2_57, %_cond4_56
  br i1 %_cond1_n_cond2_cond3_58, label %16, label %17

; <label>:16:                                     ; preds = %11
  %_address_in_parent_stack_bt_60 = bitcast i8* %_pot_address_in_parent_stack_51 to i32*
  br label %17

; <label>:17:                                     ; preds = %11, %16
  %18 = phi i32* [ %15, %11 ], [ %_address_in_parent_stack_bt_60, %16 ]
  %_new_load_61 = load i32, i32* %18
  %19 = sub i32 %EAX_val.13, %_new_load_61, !mcsema_real_eip !9
  %20 = xor i32 %19, %EAX_val.13, !mcsema_real_eip !9
  %21 = xor i32 %20, %_new_load_61, !mcsema_real_eip !9
  %22 = and i32 %21, 16, !mcsema_real_eip !9
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !9
  store i1 %23, i1* %AF, !mcsema_real_eip !9
  %24 = trunc i32 %19 to i8, !mcsema_real_eip !9
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !9
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !9
  %27 = xor i1 %26, true, !mcsema_real_eip !9
  store i1 %27, i1* %PF, !mcsema_real_eip !9
  %28 = icmp eq i32 %19, 0, !mcsema_real_eip !9
  store i1 %28, i1* %ZF, !mcsema_real_eip !9
  %29 = lshr i32 %19, 31, !mcsema_real_eip !9
  %30 = trunc i32 %29 to i1, !mcsema_real_eip !9
  store i1 %30, i1* %SF, !mcsema_real_eip !9
  %31 = icmp ult i32 %EAX_val.13, %_new_load_61, !mcsema_real_eip !9
  store i1 %31, i1* %CF, !mcsema_real_eip !9
  %32 = xor i32 %EAX_val.13, %_new_load_61, !mcsema_real_eip !9
  %33 = and i32 %32, %20, !mcsema_real_eip !9
  %34 = lshr i32 %33, 31, !mcsema_real_eip !9
  %35 = trunc i32 %34 to i1, !mcsema_real_eip !9
  store i1 %35, i1* %OF, !mcsema_real_eip !9
  %36 = icmp eq i1 %30, %35, !mcsema_real_eip !10
  br i1 %36, label %block_0x44, label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %17
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_62 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_65 = sub i64 %_ptr_to_int_62, %_local_end_to_int_
  %_pot_address_in_parent_stack_66 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_65
  %_cond1_67 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_68 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_69 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_70 = or i1 %_cond2_1_68, %_cond2_2_69
  %_cond4_71 = icmp ule i8* %_pot_address_in_parent_stack_66, %_parent_stack_end_ptr_
  %_cond1_n_cond2_72 = and i1 %_cond1_67, %_cond2_70
  %_cond1_n_cond2_cond3_73 = and i1 %_cond1_n_cond2_72, %_cond4_71
  br i1 %_cond1_n_cond2_cond3_73, label %37, label %38

; <label>:37:                                     ; preds = %block_0x25
  %_address_in_parent_stack_bt_75 = bitcast i8* %_pot_address_in_parent_stack_66 to i64*
  br label %38

; <label>:38:                                     ; preds = %block_0x25, %37
  %39 = phi i64* [ %_allin_new_bt_22, %block_0x25 ], [ %_address_in_parent_stack_bt_75, %37 ]
  %_new_load_76 = load i64, i64* %39
  store i64 %_new_load_76, i64* %XAX, !mcsema_real_eip !11
  br i1 %_cond1_n_cond2_cond3_, label %40, label %41

; <label>:40:                                     ; preds = %38
  %_address_in_parent_stack_bt_90 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %41

; <label>:41:                                     ; preds = %38, %40
  %42 = phi i32* [ %9, %38 ], [ %_address_in_parent_stack_bt_90, %40 ]
  %_new_load_91 = load i32, i32* %42
  %43 = sext i32 %_new_load_91 to i64, !mcsema_real_eip !12
  store i64 %43, i64* %XCX, !mcsema_real_eip !12
  %44 = mul i64 %43, 4, !mcsema_real_eip !13
  %45 = add i64 %_new_load_76, %44, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !13
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !13
  %_ptr_bt_94 = bitcast i32* %47 to i8*
  %_offset_above_rbp_95 = sub i64 %45, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_ptr_bt_94, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_ptr_bt_94, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_ptr_bt_94, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  br i1 %_cond1_n_cond2_cond3_103, label %48, label %49

; <label>:48:                                     ; preds = %41
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i32*
  br label %49

; <label>:49:                                     ; preds = %41, %48
  %50 = phi i32* [ %47, %41 ], [ %_address_in_parent_stack_bt_105, %48 ]
  %_new_load_106 = load i32, i32* %50
  %51 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !13
  store i64 %51, i64* %XDX, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !14
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !14
  %_ptr_bt_109 = bitcast i32* %53 to i8*
  %_offset_above_rbp_110 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_ptr_bt_109, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_ptr_bt_109, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_ptr_bt_109, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %54, label %55

; <label>:54:                                     ; preds = %49
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i32*
  br label %55

; <label>:55:                                     ; preds = %49, %54
  %56 = phi i32* [ %53, %49 ], [ %_address_in_parent_stack_bt_120, %54 ]
  %_new_load_121 = load i32, i32* %56
  %EDX.19 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.20 = load i32, i32* %EDX.19, !mcsema_real_eip !14
  %57 = add i32 %EDX_val.20, %_new_load_121, !mcsema_real_eip !14
  %58 = xor i32 %57, %_new_load_121, !mcsema_real_eip !14
  %59 = xor i32 %58, %EDX_val.20, !mcsema_real_eip !14
  %60 = and i32 %59, 16, !mcsema_real_eip !14
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !14
  store i1 %61, i1* %AF, !mcsema_real_eip !14
  %62 = lshr i32 %57, 31, !mcsema_real_eip !14
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !14
  store i1 %63, i1* %SF, !mcsema_real_eip !14
  %64 = icmp eq i32 %57, 0, !mcsema_real_eip !14
  store i1 %64, i1* %ZF, !mcsema_real_eip !14
  %65 = xor i32 %_new_load_121, %EDX_val.20, !mcsema_real_eip !14
  %66 = xor i32 %65, -1, !mcsema_real_eip !14
  %67 = and i32 %66, %58, !mcsema_real_eip !14
  %68 = lshr i32 %67, 31, !mcsema_real_eip !14
  %69 = and i32 %68, 1, !mcsema_real_eip !14
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !14
  store i1 %70, i1* %OF, !mcsema_real_eip !14
  %71 = trunc i32 %57 to i8, !mcsema_real_eip !14
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !14
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !14
  %74 = xor i1 %73, true, !mcsema_real_eip !14
  store i1 %74, i1* %PF, !mcsema_real_eip !14
  %75 = icmp ult i32 %57, %_new_load_121, !mcsema_real_eip !14
  store i1 %75, i1* %CF, !mcsema_real_eip !14
  %76 = zext i32 %57 to i64, !mcsema_real_eip !14
  store i64 %76, i64* %XDX, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.19, !mcsema_real_eip !15
  store i32 %EDX_val.23, i32* %53, !mcsema_real_eip !15
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -20
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %77 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !16
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !16
  %_ptr_bt_124 = bitcast i32* %78 to i8*
  %_offset_above_rbp_125 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_ptr_bt_124, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_ptr_bt_124, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_ptr_bt_124, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  br i1 %_cond1_n_cond2_cond3_133, label %79, label %80

; <label>:79:                                     ; preds = %55
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i32*
  br label %80

; <label>:80:                                     ; preds = %55, %79
  %81 = phi i32* [ %78, %55 ], [ %_address_in_parent_stack_bt_135, %79 ]
  %_new_load_136 = load i32, i32* %81
  %82 = zext i32 %_new_load_136 to i64, !mcsema_real_eip !16
  store i64 %82, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.26 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %83 = add i32 1, %EAX_val.26, !mcsema_real_eip !17
  %84 = xor i32 %83, %EAX_val.26, !mcsema_real_eip !17
  %85 = xor i32 %84, 1, !mcsema_real_eip !17
  %86 = and i32 %85, 16, !mcsema_real_eip !17
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !17
  store i1 %87, i1* %AF, !mcsema_real_eip !17
  %88 = lshr i32 %83, 31, !mcsema_real_eip !17
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !17
  store i1 %89, i1* %SF, !mcsema_real_eip !17
  %90 = icmp eq i32 %83, 0, !mcsema_real_eip !17
  store i1 %90, i1* %ZF, !mcsema_real_eip !17
  %91 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !17
  %92 = xor i32 %91, -1, !mcsema_real_eip !17
  %93 = and i32 %92, %84, !mcsema_real_eip !17
  %94 = lshr i32 %93, 31, !mcsema_real_eip !17
  %95 = and i32 %94, 1, !mcsema_real_eip !17
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !17
  store i1 %96, i1* %OF, !mcsema_real_eip !17
  %97 = trunc i32 %83 to i8, !mcsema_real_eip !17
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !17
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !17
  %100 = xor i1 %99, true, !mcsema_real_eip !17
  store i1 %100, i1* %PF, !mcsema_real_eip !17
  %101 = icmp ult i32 %83, %EAX_val.26, !mcsema_real_eip !17
  store i1 %101, i1* %CF, !mcsema_real_eip !17
  %102 = zext i32 %83 to i64, !mcsema_real_eip !17
  store i64 %102, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.29 = load i32, i32* %EAX.12, !mcsema_real_eip !18
  store i32 %EAX_val.29, i32* %78, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %17
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !20
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !20
  %_ptr_bt_139 = bitcast i32* %104 to i8*
  %_offset_above_rbp_140 = sub i64 %103, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_ptr_bt_139, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_ptr_bt_139, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_ptr_bt_139, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  br i1 %_cond1_n_cond2_cond3_148, label %105, label %106

; <label>:105:                                    ; preds = %block_0x44
  %_address_in_parent_stack_bt_150 = bitcast i8* %_pot_address_in_parent_stack_141 to i32*
  br label %106

; <label>:106:                                    ; preds = %block_0x44, %105
  %107 = phi i32* [ %104, %block_0x44 ], [ %_address_in_parent_stack_bt_150, %105 ]
  %_new_load_151 = load i32, i32* %107
  %108 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !20
  store i64 %108, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_42 = bitcast i8* %_load_rsp_ptr_41 to i64*
  %_ptr_to_int_152 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_load_rsp_ptr_41, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_load_rsp_ptr_41, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_load_rsp_ptr_41, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %109, label %110

; <label>:109:                                    ; preds = %106
  %_address_in_parent_stack_bt_165 = bitcast i8* %_pot_address_in_parent_stack_156 to i64*
  br label %110

; <label>:110:                                    ; preds = %106, %109
  %111 = phi i64* [ %_allin_new_bt_42, %106 ], [ %_address_in_parent_stack_bt_165, %109 ]
  %_new_load_166 = load i64, i64* %111
  %_new_int2ptr_ = inttoptr i64 %_new_load_166 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_166, i64* %XBP, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_41, i64 8
  %112 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %113 = add i64 %112, 8, !mcsema_real_eip !22
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_167 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %114, label %115

; <label>:114:                                    ; preds = %110
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i64*
  br label %115

; <label>:115:                                    ; preds = %110, %114
  %116 = phi i64* [ %_allin_new_bt_46, %110 ], [ %_address_in_parent_stack_bt_180, %114 ]
  %_new_load_181 = load i64, i64* %116
  store i64 %_new_load_181, i64* %XIP, !mcsema_real_eip !22
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_
  store i64 %113, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !23
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !24
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.36, 80, !mcsema_real_eip !25
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !25
  %4 = and i64 %3, 16, !mcsema_real_eip !25
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !25
  store i1 %5, i1* %AF, !mcsema_real_eip !25
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !25
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !25
  %8 = xor i1 %7, true, !mcsema_real_eip !25
  store i1 %8, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !25
  %9 = lshr i64 %2, 63, !mcsema_real_eip !25
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !25
  store i1 %10, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !25
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !25
  %12 = lshr i64 %11, 63, !mcsema_real_eip !25
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !25
  store i1 %13, i1* %OF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !25
  store i64 10, i64* %XSI, !mcsema_real_eip !26
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -48
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !27
  store i64 %14, i64* %XAX, !mcsema_real_eip !27
  store i64 ptrtoint (%0* @data_0xc0 to i64), i64* %XCX, !mcsema_real_eip !28
  store i64 40, i64* %XDX, !mcsema_real_eip !29
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !30
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %16, !mcsema_real_eip !30
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !31
  store i64 %RAX_val.39, i64* %XDI, !mcsema_real_eip !31
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -56
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !32
  %ESI_val.42 = load i32, i32* %ESI.41, !mcsema_real_eip !32
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !32
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !32
  store i32 %ESI_val.42, i32* %18, !mcsema_real_eip !32
  %RCX_val.43 = load i64, i64* %XCX, !mcsema_real_eip !33
  store i64 %RCX_val.43, i64* %XSI, !mcsema_real_eip !33
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -64
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !34
  store i64 %RAX_val.45, i64* %_allin_new_bt_24, !mcsema_real_eip !34
  %RDI_val.46 = load i64, i64* %XDI, !mcsema_real_eip !35
  %RSI_val.47 = load i64, i64* %XSI, !mcsema_real_eip !35
  %RDX_val.48 = load i64, i64* %XDX, !mcsema_real_eip !35
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %19 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !35
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !35
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !35
  %20 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.46, i64 %RSI_val.47, i64 %RDX_val.48)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !35
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_30 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %21, label %22

; <label>:21:                                     ; preds = %block_0x50
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %22

; <label>:22:                                     ; preds = %block_0x50, %21
  %23 = phi i64* [ %_allin_new_bt_30, %block_0x50 ], [ %_address_in_parent_stack_bt_, %21 ]
  %_new_load_ = load i64, i64* %23
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !36
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -56
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !37
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !37
  %_ptr_bt_94 = bitcast i32* %25 to i8*
  %_offset_above_rbp_95 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_ptr_bt_94, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_ptr_bt_94, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_ptr_bt_94, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  br i1 %_cond1_n_cond2_cond3_103, label %26, label %27

; <label>:26:                                     ; preds = %22
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i32*
  br label %27

; <label>:27:                                     ; preds = %22, %26
  %28 = phi i32* [ %25, %22 ], [ %_address_in_parent_stack_bt_105, %26 ]
  %_new_load_106 = load i32, i32* %28
  %29 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !37
  store i64 %29, i64* %XSI, !mcsema_real_eip !37
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_35 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %30 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !38
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !38
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %30, i64* %XSP, !mcsema_real_eip !38
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_86)
  %_rsp_fix_88 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_89 = getelementptr i8, i8* %_rsp_fix_88, i64 8
  store i8* %_gep_fix_89, i8** %_RSP_ptr_
  store i64 ptrtoint (%1* @data_0xe8 to i64), i64* %XDI, !mcsema_real_eip !39
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !40
  %31 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !40
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.55, i32* %32, !mcsema_real_eip !40
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -52
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %33 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !41
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !41
  %_ptr_bt_109 = bitcast i32* %34 to i8*
  %_offset_above_rbp_110 = sub i64 %33, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_ptr_bt_109, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_ptr_bt_109, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_ptr_bt_109, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %35, label %36

; <label>:35:                                     ; preds = %27
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i32*
  br label %36

; <label>:36:                                     ; preds = %27, %35
  %37 = phi i32* [ %34, %27 ], [ %_address_in_parent_stack_bt_120, %35 ]
  %_new_load_121 = load i32, i32* %37
  %38 = zext i32 %_new_load_121 to i64, !mcsema_real_eip !41
  store i64 %38, i64* %XSI, !mcsema_real_eip !41
  %AL.57 = bitcast i64* %XAX to i8*, !mcsema_real_eip !42
  store i8 0, i8* %AL.57, !mcsema_real_eip !42
  %RDI_val.58 = load i64, i64* %XDI, !mcsema_real_eip !43
  %RDX_val.60 = load i64, i64* %XDX, !mcsema_real_eip !43
  %RCX_val.61 = load i64, i64* %XCX, !mcsema_real_eip !43
  %R8_val.62 = load i64, i64* %R8, !mcsema_real_eip !43
  %R9_val.63 = load i64, i64* %R9, !mcsema_real_eip !43
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_44 = bitcast i8* %_load_rsp_ptr_43 to i64*
  %_ptr_to_int_122 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_125 = sub i64 %_ptr_to_int_122, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_load_rsp_ptr_43, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_load_rsp_ptr_43, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_load_rsp_ptr_43, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  br i1 %_cond1_n_cond2_cond3_133, label %39, label %40

; <label>:39:                                     ; preds = %36
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i64*
  br label %40

; <label>:40:                                     ; preds = %36, %39
  %41 = phi i64* [ %_allin_new_bt_44, %36 ], [ %_address_in_parent_stack_bt_135, %39 ]
  %_new_load_136 = load i64, i64* %41
  %_new_gep_45 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_137 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_140 = sub i64 %_ptr_to_int_137, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  br i1 %_cond1_n_cond2_cond3_148, label %42, label %43

; <label>:42:                                     ; preds = %40
  %_address_in_parent_stack_bt_150 = bitcast i8* %_pot_address_in_parent_stack_141 to i64*
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i64* [ %_allin_new_bt_46, %40 ], [ %_address_in_parent_stack_bt_150, %42 ]
  %_new_load_151 = load i64, i64* %44
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_152 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %45, label %46

; <label>:45:                                     ; preds = %43
  %_address_in_parent_stack_bt_165 = bitcast i8* %_pot_address_in_parent_stack_156 to i64*
  br label %46

; <label>:46:                                     ; preds = %43, %45
  %47 = phi i64* [ %_allin_new_bt_48, %43 ], [ %_address_in_parent_stack_bt_165, %45 ]
  %_new_load_166 = load i64, i64* %47
  %_new_gep_49 = getelementptr i8, i8* %_new_gep_47, i64 8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %_ptr_to_int_167 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_49, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_49, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_49, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %48, label %49

; <label>:48:                                     ; preds = %46
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i64*
  br label %49

; <label>:49:                                     ; preds = %46, %48
  %50 = phi i64* [ %_allin_new_bt_50, %46 ], [ %_address_in_parent_stack_bt_180, %48 ]
  %_new_load_181 = load i64, i64* %50
  %_new_gep_51 = getelementptr i8, i8* %_new_gep_49, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_182 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  br i1 %_cond1_n_cond2_cond3_193, label %51, label %52

; <label>:51:                                     ; preds = %49
  %_address_in_parent_stack_bt_195 = bitcast i8* %_pot_address_in_parent_stack_186 to i64*
  br label %52

; <label>:52:                                     ; preds = %49, %51
  %53 = phi i64* [ %_allin_new_bt_52, %49 ], [ %_address_in_parent_stack_bt_195, %51 ]
  %_new_load_196 = load i64, i64* %53
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_197 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  br i1 %_cond1_n_cond2_cond3_208, label %54, label %55

; <label>:54:                                     ; preds = %52
  %_address_in_parent_stack_bt_210 = bitcast i8* %_pot_address_in_parent_stack_201 to i64*
  br label %55

; <label>:55:                                     ; preds = %52, %54
  %56 = phi i64* [ %_allin_new_bt_54, %52 ], [ %_address_in_parent_stack_bt_210, %54 ]
  %_new_load_211 = load i64, i64* %56
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %57 = sub i64 %RSP_val.65, 8, !mcsema_real_eip !43
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !43
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %57, i64* %XSP, !mcsema_real_eip !43
  %58 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.58, i64 %38, i64 %RDX_val.60, i64 %RCX_val.61, i64 %R8_val.62, i64 %R9_val.63, i64 %_new_load_136, i64 %_new_load_151, i64 %_new_load_166, i64 %_new_load_181, i64 %_new_load_196, i64 %_new_load_211)
  %_rsp_fix_90 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_91 = getelementptr i8, i8* %_rsp_fix_90, i64 8
  store i8* %_gep_fix_91, i8** %_RSP_ptr_
  store i64 %58, i64* %XAX, !mcsema_real_eip !43
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -52
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !44
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !44
  %_ptr_bt_214 = bitcast i32* %60 to i8*
  %_offset_above_rbp_215 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_cond1_217 = icmp ugt i8* %_ptr_bt_214, %_local_stack_end_ptr_
  %_cond2_1_218 = icmp ugt i8* %_ptr_bt_214, %_parent_stack_end_ptr_
  %_cond2_2_219 = icmp ult i8* %_ptr_bt_214, %_parent_stack_start_ptr_
  %_cond2_220 = or i1 %_cond2_1_218, %_cond2_2_219
  %_cond4_221 = icmp ule i8* %_pot_address_in_parent_stack_216, %_parent_stack_end_ptr_
  %_cond1_n_cond2_222 = and i1 %_cond1_217, %_cond2_220
  %_cond1_n_cond2_cond3_223 = and i1 %_cond1_n_cond2_222, %_cond4_221
  br i1 %_cond1_n_cond2_cond3_223, label %61, label %62

; <label>:61:                                     ; preds = %55
  %_address_in_parent_stack_bt_225 = bitcast i8* %_pot_address_in_parent_stack_216 to i32*
  br label %62

; <label>:62:                                     ; preds = %55, %61
  %63 = phi i32* [ %60, %55 ], [ %_address_in_parent_stack_bt_225, %61 ]
  %_new_load_226 = load i32, i32* %63
  %64 = zext i32 %_new_load_226 to i64, !mcsema_real_eip !44
  store i64 %64, i64* %XSI, !mcsema_real_eip !44
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -68
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.69 = load i32, i32* %EAX.54, !mcsema_real_eip !45
  %65 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !45
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.69, i32* %66, !mcsema_real_eip !45
  %ESI_val.71 = load i32, i32* %ESI.41, !mcsema_real_eip !46
  %67 = zext i32 %ESI_val.71 to i64, !mcsema_real_eip !46
  store i64 %67, i64* %XAX, !mcsema_real_eip !46
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 80
  %68 = add i64 80, %RSP_val.72, !mcsema_real_eip !47
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %69 = xor i64 %_trans_xor_68, 80, !mcsema_real_eip !47
  %70 = and i64 %69, 16, !mcsema_real_eip !47
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !47
  store i1 %71, i1* %AF, !mcsema_real_eip !47
  %72 = lshr i64 %68, 63, !mcsema_real_eip !47
  %73 = trunc i64 %72 to i1, !mcsema_real_eip !47
  store i1 %73, i1* %SF, !mcsema_real_eip !47
  %_trans_icmp_eq_70 = icmp eq i64 %_trans_p2i_66, 0
  store i1 %_trans_icmp_eq_70, i1* %ZF, !mcsema_real_eip !47
  %_trans_xor_72 = xor i64 %_trans_p2i_67, 80
  %74 = xor i64 %_trans_xor_72, -1, !mcsema_real_eip !47
  %75 = and i64 %74, %_trans_xor_68, !mcsema_real_eip !47
  %76 = lshr i64 %75, 63, !mcsema_real_eip !47
  %77 = and i64 %76, 1, !mcsema_real_eip !47
  %78 = trunc i64 %77 to i1, !mcsema_real_eip !47
  store i1 %78, i1* %OF, !mcsema_real_eip !47
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %79 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !47
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !47
  %81 = xor i1 %80, true, !mcsema_real_eip !47
  store i1 %81, i1* %PF, !mcsema_real_eip !47
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.72
  store i1 %_trans_icmp_ne_79, i1* %CF, !mcsema_real_eip !47
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %68, i64* %XSP, !mcsema_real_eip !47
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_227 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %82, label %83

; <label>:82:                                     ; preds = %62
  %_address_in_parent_stack_bt_240 = bitcast i8* %_pot_address_in_parent_stack_231 to i64*
  br label %83

; <label>:83:                                     ; preds = %62, %82
  %84 = phi i64* [ %_allin_new_bt_81, %62 ], [ %_address_in_parent_stack_bt_240, %82 ]
  %_new_load_241 = load i64, i64* %84
  %_new_int2ptr_ = inttoptr i64 %_new_load_241 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_241, i64* %XBP, !mcsema_real_eip !48
  %_new_gep_82 = getelementptr i8, i8* %_new_gep_65, i64 8
  %85 = add i64 %68, 8, !mcsema_real_eip !48
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %85, i64* %XSP, !mcsema_real_eip !48
  %_new_gep_84 = getelementptr i8, i8* %_new_gep_82, i64 8
  %86 = add i64 %85, 8, !mcsema_real_eip !49
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %_ptr_to_int_242 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_245 = sub i64 %_ptr_to_int_242, %_local_end_to_int_
  %_pot_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_cond1_247 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_248 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_249 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_250 = or i1 %_cond2_1_248, %_cond2_2_249
  %_cond4_251 = icmp ule i8* %_pot_address_in_parent_stack_246, %_parent_stack_end_ptr_
  %_cond1_n_cond2_252 = and i1 %_cond1_247, %_cond2_250
  %_cond1_n_cond2_cond3_253 = and i1 %_cond1_n_cond2_252, %_cond4_251
  br i1 %_cond1_n_cond2_cond3_253, label %87, label %88

; <label>:87:                                     ; preds = %83
  %_address_in_parent_stack_bt_255 = bitcast i8* %_pot_address_in_parent_stack_246 to i64*
  br label %88

; <label>:88:                                     ; preds = %83, %87
  %89 = phi i64* [ %_allin_new_bt_85, %83 ], [ %_address_in_parent_stack_bt_255, %87 ]
  %_new_load_256 = load i64, i64* %89
  store i64 %_new_load_256, i64* %XIP, !mcsema_real_eip !49
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %86, i64* %XSP, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
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
