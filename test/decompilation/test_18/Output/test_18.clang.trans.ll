; ModuleID = 'Output/test_18.clang.trans.bc'
source_filename = "Output/test_18.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [336 x i8], i64, [16 x i8], i64, [24 x i8], i64, [128 x i8], i64, [16 x i8], i64, [24 x i8], i64, [256 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64
@data_0x3b0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 16
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %3, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -4
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %5, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %block_0x0
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  %8 = load i32, i32* %7, !mcsema_real_eip !6
  %9 = sext i32 %8 to i64, !mcsema_real_eip !6
  store i64 %9, i64* %XAX, !mcsema_real_eip !6
  %10 = sub i64 %9, 104, !mcsema_real_eip !7
  %11 = xor i64 %10, %9, !mcsema_real_eip !7
  %12 = xor i64 %11, 104, !mcsema_real_eip !7
  %13 = and i64 %12, 16, !mcsema_real_eip !7
  %14 = icmp ne i64 %13, 0, !mcsema_real_eip !7
  store i1 %14, i1* %AF, !mcsema_real_eip !7
  %15 = trunc i64 %10 to i8, !mcsema_real_eip !7
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !7
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !7
  %18 = xor i1 %17, true, !mcsema_real_eip !7
  store i1 %18, i1* %PF, !mcsema_real_eip !7
  %19 = icmp eq i64 %10, 0, !mcsema_real_eip !7
  store i1 %19, i1* %ZF, !mcsema_real_eip !7
  %20 = lshr i64 %10, 63, !mcsema_real_eip !7
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !7
  store i1 %21, i1* %SF, !mcsema_real_eip !7
  %22 = icmp ult i64 %9, 104, !mcsema_real_eip !7
  store i1 %22, i1* %CF, !mcsema_real_eip !7
  %23 = xor i64 %9, 104, !mcsema_real_eip !7
  %24 = and i64 %23, %11, !mcsema_real_eip !7
  %25 = lshr i64 %24, 63, !mcsema_real_eip !7
  %26 = trunc i64 %25 to i1, !mcsema_real_eip !7
  store i1 %26, i1* %OF, !mcsema_real_eip !7
  %27 = icmp eq i1 %22, false, !mcsema_real_eip !8
  br i1 %27, label %block_0x5a, label %block_0x20, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %28 = load i32, i32* %7, !mcsema_real_eip !9
  %29 = sext i32 %28 to i64, !mcsema_real_eip !9
  store i64 %29, i64* %XAX, !mcsema_real_eip !9
  %30 = mul i64 %29, 8, !mcsema_real_eip !10
  %31 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %30, !mcsema_real_eip !10
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !10
  %33 = load i64, i64* %32, !mcsema_real_eip !10
  store i1 false, i1* %AF, !mcsema_real_eip !10
  %34 = trunc i64 %33 to i8, !mcsema_real_eip !10
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !10
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !10
  %37 = xor i1 %36, true, !mcsema_real_eip !10
  store i1 %37, i1* %PF, !mcsema_real_eip !10
  %38 = icmp eq i64 %33, 0, !mcsema_real_eip !10
  store i1 %38, i1* %ZF, !mcsema_real_eip !10
  %39 = lshr i64 %33, 63, !mcsema_real_eip !10
  %40 = trunc i64 %39 to i1, !mcsema_real_eip !10
  store i1 %40, i1* %SF, !mcsema_real_eip !10
  store i1 false, i1* %CF, !mcsema_real_eip !10
  store i1 false, i1* %OF, !mcsema_real_eip !10
  br i1 %38, label %block_0x47, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %block_0x20
  %41 = load i32, i32* %7, !mcsema_real_eip !12
  %42 = sext i32 %41 to i64, !mcsema_real_eip !12
  store i64 %42, i64* %XAX, !mcsema_real_eip !12
  %43 = mul i64 %42, 8, !mcsema_real_eip !13
  %44 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %43, !mcsema_real_eip !13
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !13
  %46 = load i64, i64* %45, !mcsema_real_eip !13
  store i64 %46, i64* %XAX, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !14
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !14
  %49 = load i32, i32* %48, !mcsema_real_eip !14
  %50 = zext i32 %49 to i64, !mcsema_real_eip !14
  store i64 %50, i64* %XCX, !mcsema_real_eip !14
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %51 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !15
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !15
  %53 = load i32, i32* %52, !mcsema_real_eip !15
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !15
  %54 = add i32 %ECX_val.14, %53, !mcsema_real_eip !15
  %55 = xor i32 %54, %53, !mcsema_real_eip !15
  %56 = xor i32 %55, %ECX_val.14, !mcsema_real_eip !15
  %57 = and i32 %56, 16, !mcsema_real_eip !15
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !15
  store i1 %58, i1* %AF, !mcsema_real_eip !15
  %59 = lshr i32 %54, 31, !mcsema_real_eip !15
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !15
  store i1 %60, i1* %SF, !mcsema_real_eip !15
  %61 = icmp eq i32 %54, 0, !mcsema_real_eip !15
  store i1 %61, i1* %ZF, !mcsema_real_eip !15
  %62 = xor i32 %53, %ECX_val.14, !mcsema_real_eip !15
  %63 = xor i32 %62, -1, !mcsema_real_eip !15
  %64 = and i32 %63, %55, !mcsema_real_eip !15
  %65 = lshr i32 %64, 31, !mcsema_real_eip !15
  %66 = and i32 %65, 1, !mcsema_real_eip !15
  %67 = trunc i32 %66 to i1, !mcsema_real_eip !15
  store i1 %67, i1* %OF, !mcsema_real_eip !15
  %68 = trunc i32 %54 to i8, !mcsema_real_eip !15
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !15
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !15
  %71 = xor i1 %70, true, !mcsema_real_eip !15
  store i1 %71, i1* %PF, !mcsema_real_eip !15
  %72 = icmp ult i32 %54, %53, !mcsema_real_eip !15
  store i1 %72, i1* %CF, !mcsema_real_eip !15
  %73 = zext i32 %54 to i64, !mcsema_real_eip !15
  store i64 %73, i64* %XCX, !mcsema_real_eip !15
  %ECX_val.17 = load i32, i32* %ECX.13, !mcsema_real_eip !16
  store i32 %ECX_val.17, i32* %52, !mcsema_real_eip !16
  br label %block_0x47, !mcsema_real_eip !17

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x47
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -4
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %74 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !18
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !18
  %76 = load i32, i32* %75, !mcsema_real_eip !18
  %77 = zext i32 %76 to i64, !mcsema_real_eip !18
  store i64 %77, i64* %XAX, !mcsema_real_eip !18
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !19
  %78 = add i32 1, %EAX_val.20, !mcsema_real_eip !19
  %79 = xor i32 %78, %EAX_val.20, !mcsema_real_eip !19
  %80 = xor i32 %79, 1, !mcsema_real_eip !19
  %81 = and i32 %80, 16, !mcsema_real_eip !19
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !19
  store i1 %82, i1* %AF, !mcsema_real_eip !19
  %83 = lshr i32 %78, 31, !mcsema_real_eip !19
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !19
  store i1 %84, i1* %SF, !mcsema_real_eip !19
  %85 = icmp eq i32 %78, 0, !mcsema_real_eip !19
  store i1 %85, i1* %ZF, !mcsema_real_eip !19
  %86 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !19
  %87 = xor i32 %86, -1, !mcsema_real_eip !19
  %88 = and i32 %87, %79, !mcsema_real_eip !19
  %89 = lshr i32 %88, 31, !mcsema_real_eip !19
  %90 = and i32 %89, 1, !mcsema_real_eip !19
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !19
  store i1 %91, i1* %OF, !mcsema_real_eip !19
  %92 = trunc i32 %78 to i8, !mcsema_real_eip !19
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !19
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !19
  %95 = xor i1 %94, true, !mcsema_real_eip !19
  store i1 %95, i1* %PF, !mcsema_real_eip !19
  %96 = icmp ult i32 %78, %EAX_val.20, !mcsema_real_eip !19
  store i1 %96, i1* %CF, !mcsema_real_eip !19
  %97 = zext i32 %78 to i64, !mcsema_real_eip !19
  store i64 %97, i64* %XAX, !mcsema_real_eip !19
  %EAX_val.23 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  store i32 %EAX_val.23, i32* %75, !mcsema_real_eip !20
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %block_0x12
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !22
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !22
  %100 = load i32, i32* %99, !mcsema_real_eip !22
  %101 = zext i32 %100 to i64, !mcsema_real_eip !22
  store i64 %101, i64* %XAX, !mcsema_real_eip !22
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %102 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !23
  %_new_int2ptr_ = inttoptr i64 %102 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %102, i64* %XBP, !mcsema_real_eip !23
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %103 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %103, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %104 = add i64 %103, 8, !mcsema_real_eip !24
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %105 = load i64, i64* %_allin_new_bt_37, !mcsema_real_eip !24
  store i64 %105, i64* %XIP, !mcsema_real_eip !24
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @printdata() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 16
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %3, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -4
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %5, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %91, %block_0x0
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %7 to i8*
  %_offset_above_rbp_ = sub i64 %6, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %8, label %9

; <label>:8:                                      ; preds = %block_0x12
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %9

; <label>:9:                                      ; preds = %block_0x12, %8
  %10 = phi i32* [ %7, %block_0x12 ], [ %_address_in_parent_stack_bt_, %8 ]
  %_new_load_ = load i32, i32* %10
  %11 = sext i32 %_new_load_ to i64, !mcsema_real_eip !6
  store i64 %11, i64* %XAX, !mcsema_real_eip !6
  %12 = sub i64 %11, 104, !mcsema_real_eip !7
  %13 = xor i64 %12, %11, !mcsema_real_eip !7
  %14 = xor i64 %13, 104, !mcsema_real_eip !7
  %15 = and i64 %14, 16, !mcsema_real_eip !7
  %16 = icmp ne i64 %15, 0, !mcsema_real_eip !7
  store i1 %16, i1* %AF, !mcsema_real_eip !7
  %17 = trunc i64 %12 to i8, !mcsema_real_eip !7
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !7
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !7
  %20 = xor i1 %19, true, !mcsema_real_eip !7
  store i1 %20, i1* %PF, !mcsema_real_eip !7
  %21 = icmp eq i64 %12, 0, !mcsema_real_eip !7
  store i1 %21, i1* %ZF, !mcsema_real_eip !7
  %22 = lshr i64 %12, 63, !mcsema_real_eip !7
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !7
  store i1 %23, i1* %SF, !mcsema_real_eip !7
  %24 = icmp ult i64 %11, 104, !mcsema_real_eip !7
  store i1 %24, i1* %CF, !mcsema_real_eip !7
  %25 = xor i64 %11, 104, !mcsema_real_eip !7
  %26 = and i64 %25, %13, !mcsema_real_eip !7
  %27 = lshr i64 %26, 63, !mcsema_real_eip !7
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !7
  store i1 %28, i1* %OF, !mcsema_real_eip !7
  %29 = icmp eq i1 %24, false, !mcsema_real_eip !8
  br i1 %29, label %block_0x5a, label %block_0x20, !mcsema_real_eip !8

block_0x20:                                       ; preds = %9
  br i1 %_cond1_n_cond2_cond3_, label %30, label %31

; <label>:30:                                     ; preds = %block_0x20
  %_address_in_parent_stack_bt_51 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %31

; <label>:31:                                     ; preds = %block_0x20, %30
  %32 = phi i32* [ %7, %block_0x20 ], [ %_address_in_parent_stack_bt_51, %30 ]
  %_new_load_52 = load i32, i32* %32
  %33 = sext i32 %_new_load_52 to i64, !mcsema_real_eip !9
  store i64 %33, i64* %XAX, !mcsema_real_eip !9
  %34 = mul i64 %33, 8, !mcsema_real_eip !10
  %35 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %34, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !10
  %_ptr_bt_55 = bitcast i64* %36 to i8*
  %_offset_above_rbp_56 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_57 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_56
  %_cond1_58 = icmp ugt i8* %_ptr_bt_55, %_local_stack_end_ptr_
  %_cond2_1_59 = icmp ugt i8* %_ptr_bt_55, %_parent_stack_end_ptr_
  %_cond2_2_60 = icmp ult i8* %_ptr_bt_55, %_parent_stack_start_ptr_
  %_cond2_61 = or i1 %_cond2_1_59, %_cond2_2_60
  %_cond4_62 = icmp ule i8* %_pot_address_in_parent_stack_57, %_parent_stack_end_ptr_
  %_cond1_n_cond2_63 = and i1 %_cond1_58, %_cond2_61
  %_cond1_n_cond2_cond3_64 = and i1 %_cond1_n_cond2_63, %_cond4_62
  br i1 %_cond1_n_cond2_cond3_64, label %37, label %38

; <label>:37:                                     ; preds = %31
  %_address_in_parent_stack_bt_66 = bitcast i8* %_pot_address_in_parent_stack_57 to i64*
  br label %38

; <label>:38:                                     ; preds = %31, %37
  %39 = phi i64* [ %36, %31 ], [ %_address_in_parent_stack_bt_66, %37 ]
  %_new_load_67 = load i64, i64* %39
  store i1 false, i1* %AF, !mcsema_real_eip !10
  %40 = trunc i64 %_new_load_67 to i8, !mcsema_real_eip !10
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !10
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !10
  %43 = xor i1 %42, true, !mcsema_real_eip !10
  store i1 %43, i1* %PF, !mcsema_real_eip !10
  %44 = icmp eq i64 %_new_load_67, 0, !mcsema_real_eip !10
  store i1 %44, i1* %ZF, !mcsema_real_eip !10
  %45 = lshr i64 %_new_load_67, 63, !mcsema_real_eip !10
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !10
  store i1 %46, i1* %SF, !mcsema_real_eip !10
  store i1 false, i1* %CF, !mcsema_real_eip !10
  store i1 false, i1* %OF, !mcsema_real_eip !10
  br i1 %44, label %block_0x47, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %38
  br i1 %_cond1_n_cond2_cond3_, label %47, label %48

; <label>:47:                                     ; preds = %block_0x33
  %_address_in_parent_stack_bt_81 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %48

; <label>:48:                                     ; preds = %block_0x33, %47
  %49 = phi i32* [ %7, %block_0x33 ], [ %_address_in_parent_stack_bt_81, %47 ]
  %_new_load_82 = load i32, i32* %49
  %50 = sext i32 %_new_load_82 to i64, !mcsema_real_eip !12
  store i64 %50, i64* %XAX, !mcsema_real_eip !12
  %51 = mul i64 %50, 8, !mcsema_real_eip !13
  %52 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %51, !mcsema_real_eip !13
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !13
  %_ptr_bt_85 = bitcast i64* %53 to i8*
  %_offset_above_rbp_86 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ugt i8* %_ptr_bt_85, %_local_stack_end_ptr_
  %_cond2_1_89 = icmp ugt i8* %_ptr_bt_85, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %_ptr_bt_85, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond1_n_cond2_93, %_cond4_92
  br i1 %_cond1_n_cond2_cond3_94, label %54, label %55

; <label>:54:                                     ; preds = %48
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i64*
  br label %55

; <label>:55:                                     ; preds = %48, %54
  %56 = phi i64* [ %53, %48 ], [ %_address_in_parent_stack_bt_96, %54 ]
  %_new_load_97 = load i64, i64* %56
  store i64 %_new_load_97, i64* %XAX, !mcsema_real_eip !13
  %57 = inttoptr i64 %_new_load_97 to i64*, !mcsema_real_eip !14
  %58 = inttoptr i64 %_new_load_97 to i32*, !mcsema_real_eip !14
  %_ptr_bt_100 = bitcast i32* %58 to i8*
  %_offset_above_rbp_101 = sub i64 %_new_load_97, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ugt i8* %_ptr_bt_100, %_local_stack_end_ptr_
  %_cond2_1_104 = icmp ugt i8* %_ptr_bt_100, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_ptr_bt_100, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond1_n_cond2_108, %_cond4_107
  br i1 %_cond1_n_cond2_cond3_109, label %59, label %60

; <label>:59:                                     ; preds = %55
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to i32*
  br label %60

; <label>:60:                                     ; preds = %55, %59
  %61 = phi i32* [ %58, %55 ], [ %_address_in_parent_stack_bt_111, %59 ]
  %_new_load_112 = load i32, i32* %61
  %62 = zext i32 %_new_load_112 to i64, !mcsema_real_eip !14
  store i64 %62, i64* %XCX, !mcsema_real_eip !14
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !15
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !15
  %_ptr_bt_115 = bitcast i32* %64 to i8*
  %_offset_above_rbp_116 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_ptr_bt_115, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_ptr_bt_115, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_ptr_bt_115, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %65, label %66

; <label>:65:                                     ; preds = %60
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to i32*
  br label %66

; <label>:66:                                     ; preds = %60, %65
  %67 = phi i32* [ %64, %60 ], [ %_address_in_parent_stack_bt_126, %65 ]
  %_new_load_127 = load i32, i32* %67
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !15
  %68 = add i32 %ECX_val.14, %_new_load_127, !mcsema_real_eip !15
  %69 = xor i32 %68, %_new_load_127, !mcsema_real_eip !15
  %70 = xor i32 %69, %ECX_val.14, !mcsema_real_eip !15
  %71 = and i32 %70, 16, !mcsema_real_eip !15
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !15
  store i1 %72, i1* %AF, !mcsema_real_eip !15
  %73 = lshr i32 %68, 31, !mcsema_real_eip !15
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !15
  store i1 %74, i1* %SF, !mcsema_real_eip !15
  %75 = icmp eq i32 %68, 0, !mcsema_real_eip !15
  store i1 %75, i1* %ZF, !mcsema_real_eip !15
  %76 = xor i32 %_new_load_127, %ECX_val.14, !mcsema_real_eip !15
  %77 = xor i32 %76, -1, !mcsema_real_eip !15
  %78 = and i32 %77, %69, !mcsema_real_eip !15
  %79 = lshr i32 %78, 31, !mcsema_real_eip !15
  %80 = and i32 %79, 1, !mcsema_real_eip !15
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !15
  store i1 %81, i1* %OF, !mcsema_real_eip !15
  %82 = trunc i32 %68 to i8, !mcsema_real_eip !15
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !15
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !15
  %85 = xor i1 %84, true, !mcsema_real_eip !15
  store i1 %85, i1* %PF, !mcsema_real_eip !15
  %86 = icmp ult i32 %68, %_new_load_127, !mcsema_real_eip !15
  store i1 %86, i1* %CF, !mcsema_real_eip !15
  %87 = zext i32 %68 to i64, !mcsema_real_eip !15
  store i64 %87, i64* %XCX, !mcsema_real_eip !15
  %ECX_val.17 = load i32, i32* %ECX.13, !mcsema_real_eip !16
  store i32 %ECX_val.17, i32* %64, !mcsema_real_eip !16
  br label %block_0x47, !mcsema_real_eip !17

block_0x47:                                       ; preds = %66, %38
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x47
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -4
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %88 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !18
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !18
  %_ptr_bt_130 = bitcast i32* %89 to i8*
  %_offset_above_rbp_131 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_ptr_bt_130, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_ptr_bt_130, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_ptr_bt_130, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %90, label %91

; <label>:90:                                     ; preds = %block_0x4c
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i32*
  br label %91

; <label>:91:                                     ; preds = %block_0x4c, %90
  %92 = phi i32* [ %89, %block_0x4c ], [ %_address_in_parent_stack_bt_141, %90 ]
  %_new_load_142 = load i32, i32* %92
  %93 = zext i32 %_new_load_142 to i64, !mcsema_real_eip !18
  store i64 %93, i64* %XAX, !mcsema_real_eip !18
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !19
  %94 = add i32 1, %EAX_val.20, !mcsema_real_eip !19
  %95 = xor i32 %94, %EAX_val.20, !mcsema_real_eip !19
  %96 = xor i32 %95, 1, !mcsema_real_eip !19
  %97 = and i32 %96, 16, !mcsema_real_eip !19
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !19
  store i1 %98, i1* %AF, !mcsema_real_eip !19
  %99 = lshr i32 %94, 31, !mcsema_real_eip !19
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !19
  store i1 %100, i1* %SF, !mcsema_real_eip !19
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !19
  store i1 %101, i1* %ZF, !mcsema_real_eip !19
  %102 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !19
  %103 = xor i32 %102, -1, !mcsema_real_eip !19
  %104 = and i32 %103, %95, !mcsema_real_eip !19
  %105 = lshr i32 %104, 31, !mcsema_real_eip !19
  %106 = and i32 %105, 1, !mcsema_real_eip !19
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !19
  store i1 %107, i1* %OF, !mcsema_real_eip !19
  %108 = trunc i32 %94 to i8, !mcsema_real_eip !19
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !19
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !19
  %111 = xor i1 %110, true, !mcsema_real_eip !19
  store i1 %111, i1* %PF, !mcsema_real_eip !19
  %112 = icmp ult i32 %94, %EAX_val.20, !mcsema_real_eip !19
  store i1 %112, i1* %CF, !mcsema_real_eip !19
  %113 = zext i32 %94 to i64, !mcsema_real_eip !19
  store i64 %113, i64* %XAX, !mcsema_real_eip !19
  %EAX_val.23 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  store i32 %EAX_val.23, i32* %89, !mcsema_real_eip !20
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %9
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %114 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !22
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !22
  %_ptr_bt_145 = bitcast i32* %115 to i8*
  %_offset_above_rbp_146 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %116, label %117

; <label>:116:                                    ; preds = %block_0x5a
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to i32*
  br label %117

; <label>:117:                                    ; preds = %block_0x5a, %116
  %118 = phi i32* [ %115, %block_0x5a ], [ %_address_in_parent_stack_bt_156, %116 ]
  %_new_load_157 = load i32, i32* %118
  %119 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !22
  store i64 %119, i64* %XAX, !mcsema_real_eip !22
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %_ptr_to_int_158 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %120, label %121

; <label>:120:                                    ; preds = %117
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i64*
  br label %121

; <label>:121:                                    ; preds = %117, %120
  %122 = phi i64* [ %_allin_new_bt_33, %117 ], [ %_address_in_parent_stack_bt_171, %120 ]
  %_new_load_172 = load i64, i64* %122
  %_new_int2ptr_ = inttoptr i64 %_new_load_172 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_172, i64* %XBP, !mcsema_real_eip !23
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %123 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %123, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %124 = add i64 %123, 8, !mcsema_real_eip !24
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_173 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %125, label %126

; <label>:125:                                    ; preds = %121
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i64*
  br label %126

; <label>:126:                                    ; preds = %121, %125
  %127 = phi i64* [ %_allin_new_bt_37, %121 ], [ %_address_in_parent_stack_bt_186, %125 ]
  %_new_load_187 = load i64, i64* %127
  store i64 %_new_load_187, i64* %XIP, !mcsema_real_eip !24
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %124, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 63}
!15 = !{i64 65}
!16 = !{i64 68}
!17 = !{i64 71}
!18 = !{i64 76}
!19 = !{i64 79}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 90}
!23 = !{i64 93}
!24 = !{i64 94}
