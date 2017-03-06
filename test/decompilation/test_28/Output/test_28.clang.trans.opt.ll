; ModuleID = 'Output/test_28.clang.trans.opt.bc'
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
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !4
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !4
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !4
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %19, align 4, !mcsema_real_eip !6
  %AL.12 = bitcast i64* %XAX to i8*
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %entry
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !7
  %23 = zext i32 %22 to i64, !mcsema_real_eip !7
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.8, -4, !mcsema_real_eip !8
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !8
  %26 = load i32, i32* %25, align 4, !mcsema_real_eip !8
  %27 = sub i32 %22, %26, !mcsema_real_eip !8
  %28 = xor i32 %27, %22, !mcsema_real_eip !8
  %29 = xor i32 %28, %26, !mcsema_real_eip !8
  %30 = and i32 %29, 16, !mcsema_real_eip !8
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !8
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !8
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !8
  %33 = tail call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  store i1 %35, i1* %PF, align 1, !mcsema_real_eip !8
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !8
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !8
  %37 = icmp slt i32 %27, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !8
  %38 = icmp ult i32 %22, %26, !mcsema_real_eip !8
  store i1 %38, i1* %CF, align 1, !mcsema_real_eip !8
  %39 = xor i32 %26, %22, !mcsema_real_eip !8
  %40 = and i32 %28, %39, !mcsema_real_eip !8
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !8
  %tmp = xor i1 %37, %41
  %RSP_val.30 = load i64, i64* %XSP, align 8
  br i1 %tmp, label %block_0x1e, label %block_0x40, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, align 8, !mcsema_real_eip !10
  store i8 0, i8* %AL.12, align 1, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, align 8, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, align 8, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, align 8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, align 8, !mcsema_real_eip !12
  %42 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !12
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !12
  %44 = add i64 %RSP_val.30, 8, !mcsema_real_eip !12
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !12
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !12
  %47 = add i64 %RSP_val.30, 16, !mcsema_real_eip !12
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !12
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !12
  %50 = add i64 %RSP_val.30, 24, !mcsema_real_eip !12
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !12
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !12
  %53 = add i64 %RSP_val.30, 32, !mcsema_real_eip !12
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !12
  %55 = load i64, i64* %54, align 8, !mcsema_real_eip !12
  %56 = add i64 %RSP_val.30, 40, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !12
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !12
  %59 = add i64 %RSP_val.30, 48, !mcsema_real_eip !12
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !12
  %61 = load i64, i64* %60, align 8, !mcsema_real_eip !12
  %62 = add i64 %RSP_val.30, 56, !mcsema_real_eip !12
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !12
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !12
  %65 = add i64 %RSP_val.30, 64, !mcsema_real_eip !12
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !12
  %67 = load i64, i64* %66, align 8, !mcsema_real_eip !12
  %68 = add i64 %RSP_val.30, 72, !mcsema_real_eip !12
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !12
  %70 = load i64, i64* %69, align 8, !mcsema_real_eip !12
  %71 = add i64 %RSP_val.30, -8
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %72, align 8, !mcsema_real_eip !12
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !12
  %73 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67, i64 %70), !mcsema_real_eip !12
  store i64 %73, i64* %XAX, align 8, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %74 = add i64 %RBP_val.21, -12, !mcsema_real_eip !13
  %75 = trunc i64 %73 to i32
  %76 = inttoptr i64 %74 to i32*, !mcsema_real_eip !13
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %77 = add i64 %RBP_val.24, -8, !mcsema_real_eip !14
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !14
  %79 = load i32, i32* %78, align 4, !mcsema_real_eip !14
  %80 = add i32 %79, 1, !mcsema_real_eip !15
  %81 = xor i32 %80, %79, !mcsema_real_eip !15
  %82 = and i32 %81, 16, !mcsema_real_eip !15
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !15
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !15
  %84 = icmp slt i32 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !15
  %85 = icmp eq i32 %80, 0, !mcsema_real_eip !15
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !15
  %86 = xor i32 %79, -2147483648, !mcsema_real_eip !15
  %87 = and i32 %81, %86, !mcsema_real_eip !15
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !15
  %89 = trunc i32 %80 to i8, !mcsema_real_eip !15
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !15
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !15
  %93 = icmp eq i32 %79, -1
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !15
  %94 = zext i32 %80 to i64, !mcsema_real_eip !15
  store i64 %94, i64* %XAX, align 8, !mcsema_real_eip !15
  store i32 %80, i32* %78, align 4, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %95 = add i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %96 = xor i64 %95, %RSP_val.30, !mcsema_real_eip !18
  %97 = and i64 %96, 16
  %98 = icmp eq i64 %97, 0
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !18
  %99 = icmp slt i64 %95, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !18
  %100 = icmp eq i64 %95, 0, !mcsema_real_eip !18
  store i1 %100, i1* %ZF, align 1, !mcsema_real_eip !18
  %101 = xor i64 %RSP_val.30, -9223372036854775808, !mcsema_real_eip !18
  %102 = and i64 %96, %101, !mcsema_real_eip !18
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %OF, align 1, !mcsema_real_eip !18
  %104 = trunc i64 %95 to i8, !mcsema_real_eip !18
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !18
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !18
  %108 = icmp ugt i64 %RSP_val.30, -17
  store i1 %108, i1* %CF, align 1, !mcsema_real_eip !18
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !18
  %109 = inttoptr i64 %95 to i64*, !mcsema_real_eip !19
  %110 = load i64, i64* %109, align 8, !mcsema_real_eip !19
  store i64 %110, i64* %XBP, align 8, !mcsema_real_eip !19
  %111 = add i64 %RSP_val.30, 24, !mcsema_real_eip !19
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !19
  %112 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %113 = inttoptr i64 %111 to i64*, !mcsema_real_eip !20
  %114 = load i64, i64* %113, align 8, !mcsema_real_eip !20
  store i64 %114, i64* %XIP, align 8, !mcsema_real_eip !20
  store i64 %112, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.34, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !23
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !23
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !23
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !24
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %13 = add i64 %RSP_val.34, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %14 = add i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %15 = and i64 %_trans_xor_23, 16
  %16 = icmp eq i64 %15, 0
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !28
  %17 = icmp slt i64 %14, 0
  store i1 %17, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !28
  %18 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !28
  %19 = and i64 %18, %_trans_xor_23, !mcsema_real_eip !28
  %20 = icmp slt i64 %19, 0
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %21 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %RSP_val.43, %_trans_p2i_21
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %24 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !29
  store volatile i64 %24, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %24, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %25 = add i64 %RSP_val.43, 24, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %26 = add i64 %RSP_val.43, 32, !mcsema_real_eip !30
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %27 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !30
  store i64 %27, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.6, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %AL.12 = bitcast i64* %XAX to i8*
  br label %block_0x12, !mcsema_real_eip !7

block_0x12:                                       ; preds = %block_0x1e, %entry
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57 = phi i8* [ %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57.pre, %block_0x1e ], [ %_new_gep_3, %entry ]
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre, %block_0x1e ], [ %_new_gep_, %entry ]
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -8
  %13 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = zext i32 %_new_load_ to i64, !mcsema_real_eip !7
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -4
  %15 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_82 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  %.v = select i1 %_cond1_n_cond2_cond3_90, i8* %_pot_address_in_parent_stack_83, i8* %_new_gep_23
  %16 = bitcast i8* %.v to i32*
  %_new_load_93 = load i32, i32* %16, align 4
  %17 = sub i32 %_new_load_, %_new_load_93, !mcsema_real_eip !8
  %18 = xor i32 %17, %_new_load_, !mcsema_real_eip !8
  %19 = xor i32 %18, %_new_load_93, !mcsema_real_eip !8
  %20 = and i32 %19, 16, !mcsema_real_eip !8
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !8
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !8
  %22 = trunc i32 %17 to i8, !mcsema_real_eip !8
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !8
  %26 = icmp eq i32 %17, 0, !mcsema_real_eip !8
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !8
  %27 = icmp slt i32 %17, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !8
  %28 = icmp ult i32 %_new_load_, %_new_load_93, !mcsema_real_eip !8
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !8
  %29 = xor i32 %_new_load_93, %_new_load_, !mcsema_real_eip !8
  %30 = and i32 %18, %29, !mcsema_real_eip !8
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !8
  %tmp = xor i1 %27, %31
  br i1 %tmp, label %block_0x1e, label %block_0x40, !mcsema_real_eip !9

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, align 8, !mcsema_real_eip !10
  store i8 0, i8* %AL.12, align 1, !mcsema_real_eip !11
  %RSI_val.14 = load i64, i64* %XSI, align 8, !mcsema_real_eip !12
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !12
  %RCX_val.16 = load i64, i64* %XCX, align 8, !mcsema_real_eip !12
  %R8_val.17 = load i64, i64* %R8, align 8, !mcsema_real_eip !12
  %R9_val.18 = load i64, i64* %R9, align 8, !mcsema_real_eip !12
  %_ptr_to_int_94 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57 to i64
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  %_address_in_parent_stack_bt_107._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_105, i8* %_pot_address_in_parent_stack_98, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57
  %_address_in_parent_stack_bt_107._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_107._allin_new_bt_26.v to i64*
  %_new_load_108 = load i64, i64* %_address_in_parent_stack_bt_107._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 8
  %_ptr_to_int_109 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  %.v2 = select i1 %_cond1_n_cond2_cond3_120, i8* %_pot_address_in_parent_stack_113, i8* %_new_gep_27
  %32 = bitcast i8* %.v2 to i64*
  %_new_load_123 = load i64, i64* %32, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 16
  %_ptr_to_int_124 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  %_address_in_parent_stack_bt_137._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_135, i8* %_pot_address_in_parent_stack_128, i8* %_new_gep_29
  %_address_in_parent_stack_bt_137._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_137._allin_new_bt_30.v to i64*
  %_new_load_138 = load i64, i64* %_address_in_parent_stack_bt_137._allin_new_bt_30, align 8
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 24
  %_ptr_to_int_139 = ptrtoint i8* %_new_gep_31 to i64
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  %.v3 = select i1 %_cond1_n_cond2_cond3_150, i8* %_pot_address_in_parent_stack_143, i8* %_new_gep_31
  %33 = bitcast i8* %.v3 to i64*
  %_new_load_153 = load i64, i64* %33, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 32
  %_ptr_to_int_154 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  %_address_in_parent_stack_bt_167._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_165, i8* %_pot_address_in_parent_stack_158, i8* %_new_gep_33
  %_address_in_parent_stack_bt_167._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_167._allin_new_bt_34.v to i64*
  %_new_load_168 = load i64, i64* %_address_in_parent_stack_bt_167._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 40
  %_ptr_to_int_169 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  %.v4 = select i1 %_cond1_n_cond2_cond3_180, i8* %_pot_address_in_parent_stack_173, i8* %_new_gep_35
  %34 = bitcast i8* %.v4 to i64*
  %_new_load_183 = load i64, i64* %34, align 8
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 48
  %_ptr_to_int_184 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  %_address_in_parent_stack_bt_197._allin_new_bt_38.v = select i1 %_cond1_n_cond2_cond3_195, i8* %_pot_address_in_parent_stack_188, i8* %_new_gep_37
  %_address_in_parent_stack_bt_197._allin_new_bt_38 = bitcast i8* %_address_in_parent_stack_bt_197._allin_new_bt_38.v to i64*
  %_new_load_198 = load i64, i64* %_address_in_parent_stack_bt_197._allin_new_bt_38, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 56
  %_ptr_to_int_199 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  %.v5 = select i1 %_cond1_n_cond2_cond3_210, i8* %_pot_address_in_parent_stack_203, i8* %_new_gep_39
  %35 = bitcast i8* %.v5 to i64*
  %_new_load_213 = load i64, i64* %35, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 64
  %_ptr_to_int_214 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_217 = sub i64 %_ptr_to_int_214, %_local_end_to_int_
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  %_address_in_parent_stack_bt_227._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_225, i8* %_pot_address_in_parent_stack_218, i8* %_new_gep_41
  %_address_in_parent_stack_bt_227._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_227._allin_new_bt_42.v to i64*
  %_new_load_228 = load i64, i64* %_address_in_parent_stack_bt_227._allin_new_bt_42, align 8
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 72
  %_ptr_to_int_229 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  %.v6 = select i1 %_cond1_n_cond2_cond3_240, i8* %_pot_address_in_parent_stack_233, i8* %_new_gep_43
  %36 = bitcast i8* %.v6 to i64*
  %_new_load_243 = load i64, i64* %36, align 8
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 -8
  %37 = add i64 %RSP_val.20, -8
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, align 8, !mcsema_real_eip !12
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !12
  %38 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.14, i64 %RDX_val.15, i64 %RCX_val.16, i64 %R8_val.17, i64 %R9_val.18, i64 %_new_load_108, i64 %_new_load_123, i64 %_new_load_138, i64 %_new_load_153, i64 %_new_load_168, i64 %_new_load_183, i64 %_new_load_198, i64 %_new_load_213, i64 %_new_load_228, i64 %_new_load_243)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48, i64 -12
  %39 = trunc i64 %38 to i32
  %40 = bitcast i8* %_new_gep_49 to i32*
  store i32 %39, i32* %40, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51, i64 -8
  %41 = ptrtoint i8* %_new_gep_52 to i64
  %42 = bitcast i8* %_new_gep_52 to i32*
  %_offset_above_rbp_247 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i32*
  %_address_in_parent_stack_bt_257. = select i1 %_cond1_n_cond2_cond3_255, i32* %_address_in_parent_stack_bt_257, i32* %42
  %_new_load_258 = load i32, i32* %_address_in_parent_stack_bt_257., align 4
  %43 = add i32 %_new_load_258, 1, !mcsema_real_eip !15
  %44 = xor i32 %43, %_new_load_258, !mcsema_real_eip !15
  %45 = and i32 %44, 16, !mcsema_real_eip !15
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !15
  store i1 %46, i1* %AF, align 1, !mcsema_real_eip !15
  %47 = icmp slt i32 %43, 0
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !15
  %48 = icmp eq i32 %43, 0, !mcsema_real_eip !15
  store i1 %48, i1* %ZF, align 1, !mcsema_real_eip !15
  %49 = xor i32 %_new_load_258, -2147483648, !mcsema_real_eip !15
  %50 = and i32 %44, %49, !mcsema_real_eip !15
  %51 = icmp slt i32 %50, 0
  store i1 %51, i1* %OF, align 1, !mcsema_real_eip !15
  %52 = trunc i32 %43 to i8, !mcsema_real_eip !15
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !15
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !15
  %56 = icmp eq i32 %_new_load_258, -1
  store i1 %56, i1* %CF, align 1, !mcsema_real_eip !15
  %57 = zext i32 %43 to i64, !mcsema_real_eip !15
  store i64 %57, i64* %XAX, align 8, !mcsema_real_eip !15
  store i32 %43, i32* %42, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre = load i8*, i8** %_RBP_ptr_, align 8
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57.pre = load i8*, i8** %_RSP_ptr_, align 8
  br label %block_0x12, !mcsema_real_eip !17

block_0x40:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 16
  %58 = add i64 %RSP_val.30, 16, !mcsema_real_eip !18
  %_trans_p2i_59 = ptrtoint i8* %_new_gep_58 to i64
  %_trans_p2i_60 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57 to i64
  %_trans_xor_61 = xor i64 %_trans_p2i_59, %_trans_p2i_60
  %59 = and i64 %_trans_xor_61, 16
  %60 = icmp eq i64 %59, 0
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !18
  %61 = icmp slt i64 %58, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !18
  %_trans_icmp_eq_63 = icmp eq i8* %_new_gep_58, null
  store i1 %_trans_icmp_eq_63, i1* %ZF, align 1, !mcsema_real_eip !18
  %62 = xor i64 %_trans_p2i_60, -9223372036854775808, !mcsema_real_eip !18
  %63 = and i64 %_trans_xor_61, %62, !mcsema_real_eip !18
  %64 = icmp slt i64 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !18
  %_trans_trunc_70 = trunc i64 %_trans_p2i_59 to i8
  %65 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_70), !mcsema_real_eip !18
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !18
  %_trans_icmp_ne_72 = icmp ne i64 %RSP_val.30, %_trans_p2i_59
  store i1 %_trans_icmp_ne_72, i1* %CF, align 1, !mcsema_real_eip !18
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !18
  %_offset_above_rbp_262 = sub i64 %_trans_p2i_59, %_local_end_to_int_
  %_pot_address_in_parent_stack_263 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_cond1_264 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_265 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_266 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_267 = or i1 %_cond2_1_265, %_cond2_2_266
  %_cond4_268 = icmp ule i8* %_pot_address_in_parent_stack_263, %_parent_stack_end_ptr_
  %_cond1_n_cond2_269 = and i1 %_cond1_264, %_cond2_267
  %_cond1_n_cond2_cond3_270 = and i1 %_cond1_n_cond2_269, %_cond4_268
  %_address_in_parent_stack_bt_272._allin_new_bt_74.v = select i1 %_cond1_n_cond2_cond3_270, i8* %_pot_address_in_parent_stack_263, i8* %_new_gep_58
  %_address_in_parent_stack_bt_272._allin_new_bt_74 = bitcast i8* %_address_in_parent_stack_bt_272._allin_new_bt_74.v to i64*
  %_new_load_273 = load i64, i64* %_address_in_parent_stack_bt_272._allin_new_bt_74, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_273 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_273, i64* %XBP, align 8, !mcsema_real_eip !19
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 24
  %68 = add i64 %RSP_val.30, 24, !mcsema_real_eip !19
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_57, i64 32
  %69 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_ptr_to_int_274 = ptrtoint i8* %_new_gep_75 to i64
  %_offset_above_rbp_277 = sub i64 %_ptr_to_int_274, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  %.v7 = select i1 %_cond1_n_cond2_cond3_285, i8* %_pot_address_in_parent_stack_278, i8* %_new_gep_75
  %70 = bitcast i8* %.v7 to i64*
  %_new_load_288 = load i64, i64* %70, align 8
  store i64 %_new_load_288, i64* %XIP, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !21
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !21
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !21
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !21
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !21
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !21
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !21
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !21
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !21
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !21
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !21
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !21
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !21
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !21
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !21
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !21
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.34, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.34, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !23
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !23
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !23
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !23
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !23
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !23
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !24
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !25
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.34, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %13 = add i64 %RSP_val.43, 16, !mcsema_real_eip !28
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %14 = and i64 %_trans_xor_23, 16
  %15 = icmp eq i64 %14, 0
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !28
  %16 = icmp slt i64 %13, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !28
  %17 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !28
  %18 = and i64 %17, %_trans_xor_23, !mcsema_real_eip !28
  %19 = icmp slt i64 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !28
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %20 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !28
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  store i1 %22, i1* %PF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_34 = icmp ne i64 %RSP_val.43, %_trans_p2i_21
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !28
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_trans_p2i_21, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %23 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %23, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %24 = add i64 %RSP_val.43, 24, !mcsema_real_eip !29
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %25 = add i64 %RSP_val.43, 32, !mcsema_real_eip !30
  %_ptr_to_int_43 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_46 = sub i64 %_ptr_to_int_43, %_local_end_to_int_
  %_pot_address_in_parent_stack_47 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_46
  %_cond1_48 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_49 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_50 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_51 = or i1 %_cond2_1_49, %_cond2_2_50
  %_cond4_52 = icmp ule i8* %_pot_address_in_parent_stack_47, %_parent_stack_end_ptr_
  %_cond1_n_cond2_53 = and i1 %_cond1_48, %_cond2_51
  %_cond1_n_cond2_cond3_54 = and i1 %_cond1_n_cond2_53, %_cond4_52
  %_address_in_parent_stack_bt_56._allin_new_bt_40.v = select i1 %_cond1_n_cond2_cond3_54, i8* %_pot_address_in_parent_stack_47, i8* %_new_gep_37
  %_address_in_parent_stack_bt_56._allin_new_bt_40 = bitcast i8* %_address_in_parent_stack_bt_56._allin_new_bt_40.v to i64*
  %_new_load_57 = load i64, i64* %_address_in_parent_stack_bt_56._allin_new_bt_40, align 8
  store i64 %_new_load_57, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

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
