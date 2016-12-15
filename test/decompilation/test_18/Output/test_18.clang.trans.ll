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

block_0x5a:                                       ; preds = %block_0x12
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !12
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !12
  %43 = load i32, i32* %42, !mcsema_real_eip !12
  %44 = zext i32 %43 to i64, !mcsema_real_eip !12
  store i64 %44, i64* %XAX, !mcsema_real_eip !12
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !13
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %45 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !13
  %_new_int2ptr_ = inttoptr i64 %45 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %45, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 8
  %46 = add i64 %RSP_val.8, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_19, i64 8
  %47 = add i64 %46, 8, !mcsema_real_eip !14
  %_allin_new_bt_22 = bitcast i8* %_new_gep_19 to i64*
  %48 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !14
  store i64 %48, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x20
  %49 = load i32, i32* %7, !mcsema_real_eip !15
  %50 = sext i32 %49 to i64, !mcsema_real_eip !15
  store i64 %50, i64* %XAX, !mcsema_real_eip !15
  %51 = mul i64 %50, 8, !mcsema_real_eip !16
  %52 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %51, !mcsema_real_eip !16
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !16
  %54 = load i64, i64* %53, !mcsema_real_eip !16
  store i64 %54, i64* %XAX, !mcsema_real_eip !16
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !17
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !17
  %57 = load i32, i32* %56, !mcsema_real_eip !17
  %58 = zext i32 %57 to i64, !mcsema_real_eip !17
  store i64 %58, i64* %XCX, !mcsema_real_eip !17
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !18
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !18
  %61 = load i32, i32* %60, !mcsema_real_eip !18
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !18
  %62 = add i32 %ECX_val.17, %61, !mcsema_real_eip !18
  %63 = xor i32 %62, %61, !mcsema_real_eip !18
  %64 = xor i32 %63, %ECX_val.17, !mcsema_real_eip !18
  %65 = and i32 %64, 16, !mcsema_real_eip !18
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !18
  store i1 %66, i1* %AF, !mcsema_real_eip !18
  %67 = lshr i32 %62, 31, !mcsema_real_eip !18
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !18
  store i1 %68, i1* %SF, !mcsema_real_eip !18
  %69 = icmp eq i32 %62, 0, !mcsema_real_eip !18
  store i1 %69, i1* %ZF, !mcsema_real_eip !18
  %70 = xor i32 %61, %ECX_val.17, !mcsema_real_eip !18
  %71 = xor i32 %70, -1, !mcsema_real_eip !18
  %72 = and i32 %71, %63, !mcsema_real_eip !18
  %73 = lshr i32 %72, 31, !mcsema_real_eip !18
  %74 = and i32 %73, 1, !mcsema_real_eip !18
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !18
  store i1 %75, i1* %OF, !mcsema_real_eip !18
  %76 = trunc i32 %62 to i8, !mcsema_real_eip !18
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !18
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !18
  %79 = xor i1 %78, true, !mcsema_real_eip !18
  store i1 %79, i1* %PF, !mcsema_real_eip !18
  %80 = icmp ult i32 %62, %61, !mcsema_real_eip !18
  store i1 %80, i1* %CF, !mcsema_real_eip !18
  %81 = zext i32 %62 to i64, !mcsema_real_eip !18
  store i64 %81, i64* %XCX, !mcsema_real_eip !18
  %ECX_val.20 = load i32, i32* %ECX.16, !mcsema_real_eip !19
  store i32 %ECX_val.20, i32* %60, !mcsema_real_eip !19
  br label %block_0x47, !mcsema_real_eip !20

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !21

block_0x4c:                                       ; preds = %block_0x47
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -4
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %82 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !20
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !20
  %84 = load i32, i32* %83, !mcsema_real_eip !20
  %85 = zext i32 %84 to i64, !mcsema_real_eip !20
  store i64 %85, i64* %XAX, !mcsema_real_eip !20
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !22
  %86 = add i32 1, %EAX_val.23, !mcsema_real_eip !22
  %87 = xor i32 %86, %EAX_val.23, !mcsema_real_eip !22
  %88 = xor i32 %87, 1, !mcsema_real_eip !22
  %89 = and i32 %88, 16, !mcsema_real_eip !22
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !22
  store i1 %90, i1* %AF, !mcsema_real_eip !22
  %91 = lshr i32 %86, 31, !mcsema_real_eip !22
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !22
  store i1 %92, i1* %SF, !mcsema_real_eip !22
  %93 = icmp eq i32 %86, 0, !mcsema_real_eip !22
  store i1 %93, i1* %ZF, !mcsema_real_eip !22
  %94 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !22
  %95 = xor i32 %94, -1, !mcsema_real_eip !22
  %96 = and i32 %95, %87, !mcsema_real_eip !22
  %97 = lshr i32 %96, 31, !mcsema_real_eip !22
  %98 = and i32 %97, 1, !mcsema_real_eip !22
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !22
  store i1 %99, i1* %OF, !mcsema_real_eip !22
  %100 = trunc i32 %86 to i8, !mcsema_real_eip !22
  %101 = call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !22
  %102 = trunc i8 %101 to i1, !mcsema_real_eip !22
  %103 = xor i1 %102, true, !mcsema_real_eip !22
  store i1 %103, i1* %PF, !mcsema_real_eip !22
  %104 = icmp ult i32 %86, %EAX_val.23, !mcsema_real_eip !22
  store i1 %104, i1* %CF, !mcsema_real_eip !22
  %105 = zext i32 %86 to i64, !mcsema_real_eip !22
  store i64 %105, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !23
  store i32 %EAX_val.26, i32* %83, !mcsema_real_eip !23
  br label %block_0x12, !mcsema_real_eip !24
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

block_0x12:                                       ; preds = %105, %block_0x0
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

block_0x5a:                                       ; preds = %9
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !12
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !12
  %_ptr_bt_70 = bitcast i32* %48 to i8*
  %_offset_above_rbp_71 = sub i64 %47, %_local_end_to_int_
  %_pot_address_in_parent_stack_72 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_71
  %_cond1_73 = icmp ugt i8* %_ptr_bt_70, %_local_stack_end_ptr_
  %_cond2_1_74 = icmp ugt i8* %_ptr_bt_70, %_parent_stack_end_ptr_
  %_cond2_2_75 = icmp ult i8* %_ptr_bt_70, %_parent_stack_start_ptr_
  %_cond2_76 = or i1 %_cond2_1_74, %_cond2_2_75
  %_cond4_77 = icmp ule i8* %_pot_address_in_parent_stack_72, %_parent_stack_end_ptr_
  %_cond1_n_cond2_78 = and i1 %_cond1_73, %_cond2_76
  %_cond1_n_cond2_cond3_79 = and i1 %_cond1_n_cond2_78, %_cond4_77
  br i1 %_cond1_n_cond2_cond3_79, label %49, label %50

; <label>:49:                                     ; preds = %block_0x5a
  %_address_in_parent_stack_bt_81 = bitcast i8* %_pot_address_in_parent_stack_72 to i32*
  br label %50

; <label>:50:                                     ; preds = %block_0x5a, %49
  %51 = phi i32* [ %48, %block_0x5a ], [ %_address_in_parent_stack_bt_81, %49 ]
  %_new_load_82 = load i32, i32* %51
  %52 = zext i32 %_new_load_82 to i64, !mcsema_real_eip !12
  store i64 %52, i64* %XAX, !mcsema_real_eip !12
  %_load_rsp_ptr_17 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !13
  %_allin_new_bt_18 = bitcast i8* %_load_rsp_ptr_17 to i64*
  %_ptr_to_int_83 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_86 = sub i64 %_ptr_to_int_83, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ugt i8* %_load_rsp_ptr_17, %_local_stack_end_ptr_
  %_cond2_1_89 = icmp ugt i8* %_load_rsp_ptr_17, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %_load_rsp_ptr_17, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond1_n_cond2_93, %_cond4_92
  br i1 %_cond1_n_cond2_cond3_94, label %53, label %54

; <label>:53:                                     ; preds = %50
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i64*
  br label %54

; <label>:54:                                     ; preds = %50, %53
  %55 = phi i64* [ %_allin_new_bt_18, %50 ], [ %_address_in_parent_stack_bt_96, %53 ]
  %_new_load_97 = load i64, i64* %55
  %_new_int2ptr_ = inttoptr i64 %_new_load_97 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_97, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_17, i64 8
  %56 = add i64 %RSP_val.8, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_
  store i64 %56, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_21 = getelementptr i8, i8* %_new_gep_19, i64 8
  %57 = add i64 %56, 8, !mcsema_real_eip !14
  %_allin_new_bt_22 = bitcast i8* %_new_gep_19 to i64*
  %_ptr_to_int_98 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_101 = sub i64 %_ptr_to_int_98, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ugt i8* %_new_gep_19, %_local_stack_end_ptr_
  %_cond2_1_104 = icmp ugt i8* %_new_gep_19, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_new_gep_19, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond1_n_cond2_108, %_cond4_107
  br i1 %_cond1_n_cond2_cond3_109, label %58, label %59

; <label>:58:                                     ; preds = %54
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to i64*
  br label %59

; <label>:59:                                     ; preds = %54, %58
  %60 = phi i64* [ %_allin_new_bt_22, %54 ], [ %_address_in_parent_stack_bt_111, %58 ]
  %_new_load_112 = load i64, i64* %60
  store i64 %_new_load_112, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  store i64 %57, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x33:                                       ; preds = %38
  br i1 %_cond1_n_cond2_cond3_, label %61, label %62

; <label>:61:                                     ; preds = %block_0x33
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %62

; <label>:62:                                     ; preds = %block_0x33, %61
  %63 = phi i32* [ %7, %block_0x33 ], [ %_address_in_parent_stack_bt_126, %61 ]
  %_new_load_127 = load i32, i32* %63
  %64 = sext i32 %_new_load_127 to i64, !mcsema_real_eip !15
  store i64 %64, i64* %XAX, !mcsema_real_eip !15
  %65 = mul i64 %64, 8, !mcsema_real_eip !16
  %66 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %65, !mcsema_real_eip !16
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !16
  %_ptr_bt_130 = bitcast i64* %67 to i8*
  %_offset_above_rbp_131 = sub i64 %66, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_ptr_bt_130, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_ptr_bt_130, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_ptr_bt_130, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %68, label %69

; <label>:68:                                     ; preds = %62
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i64*
  br label %69

; <label>:69:                                     ; preds = %62, %68
  %70 = phi i64* [ %67, %62 ], [ %_address_in_parent_stack_bt_141, %68 ]
  %_new_load_142 = load i64, i64* %70
  store i64 %_new_load_142, i64* %XAX, !mcsema_real_eip !16
  %71 = inttoptr i64 %_new_load_142 to i64*, !mcsema_real_eip !17
  %72 = inttoptr i64 %_new_load_142 to i32*, !mcsema_real_eip !17
  %_ptr_bt_145 = bitcast i32* %72 to i8*
  %_offset_above_rbp_146 = sub i64 %_new_load_142, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %73, label %74

; <label>:73:                                     ; preds = %69
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to i32*
  br label %74

; <label>:74:                                     ; preds = %69, %73
  %75 = phi i32* [ %72, %69 ], [ %_address_in_parent_stack_bt_156, %73 ]
  %_new_load_157 = load i32, i32* %75
  %76 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !17
  store i64 %76, i64* %XCX, !mcsema_real_eip !17
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %77 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !18
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !18
  %_ptr_bt_160 = bitcast i32* %78 to i8*
  %_offset_above_rbp_161 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_ptr_bt_160, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_ptr_bt_160, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_ptr_bt_160, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %79, label %80

; <label>:79:                                     ; preds = %74
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %80

; <label>:80:                                     ; preds = %74, %79
  %81 = phi i32* [ %78, %74 ], [ %_address_in_parent_stack_bt_171, %79 ]
  %_new_load_172 = load i32, i32* %81
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !18
  %82 = add i32 %ECX_val.17, %_new_load_172, !mcsema_real_eip !18
  %83 = xor i32 %82, %_new_load_172, !mcsema_real_eip !18
  %84 = xor i32 %83, %ECX_val.17, !mcsema_real_eip !18
  %85 = and i32 %84, 16, !mcsema_real_eip !18
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !18
  store i1 %86, i1* %AF, !mcsema_real_eip !18
  %87 = lshr i32 %82, 31, !mcsema_real_eip !18
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !18
  store i1 %88, i1* %SF, !mcsema_real_eip !18
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !18
  store i1 %89, i1* %ZF, !mcsema_real_eip !18
  %90 = xor i32 %_new_load_172, %ECX_val.17, !mcsema_real_eip !18
  %91 = xor i32 %90, -1, !mcsema_real_eip !18
  %92 = and i32 %91, %83, !mcsema_real_eip !18
  %93 = lshr i32 %92, 31, !mcsema_real_eip !18
  %94 = and i32 %93, 1, !mcsema_real_eip !18
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !18
  store i1 %95, i1* %OF, !mcsema_real_eip !18
  %96 = trunc i32 %82 to i8, !mcsema_real_eip !18
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !18
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !18
  %99 = xor i1 %98, true, !mcsema_real_eip !18
  store i1 %99, i1* %PF, !mcsema_real_eip !18
  %100 = icmp ult i32 %82, %_new_load_172, !mcsema_real_eip !18
  store i1 %100, i1* %CF, !mcsema_real_eip !18
  %101 = zext i32 %82 to i64, !mcsema_real_eip !18
  store i64 %101, i64* %XCX, !mcsema_real_eip !18
  %ECX_val.20 = load i32, i32* %ECX.16, !mcsema_real_eip !19
  store i32 %ECX_val.20, i32* %78, !mcsema_real_eip !19
  br label %block_0x47, !mcsema_real_eip !20

block_0x47:                                       ; preds = %80, %38
  br label %block_0x4c, !mcsema_real_eip !21

block_0x4c:                                       ; preds = %block_0x47
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -4
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !20
  %_ptr_bt_175 = bitcast i32* %103 to i8*
  %_offset_above_rbp_176 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_ptr_bt_175, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_ptr_bt_175, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_ptr_bt_175, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %104, label %105

; <label>:104:                                    ; preds = %block_0x4c
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i32*
  br label %105

; <label>:105:                                    ; preds = %block_0x4c, %104
  %106 = phi i32* [ %103, %block_0x4c ], [ %_address_in_parent_stack_bt_186, %104 ]
  %_new_load_187 = load i32, i32* %106
  %107 = zext i32 %_new_load_187 to i64, !mcsema_real_eip !20
  store i64 %107, i64* %XAX, !mcsema_real_eip !20
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !22
  %108 = add i32 1, %EAX_val.23, !mcsema_real_eip !22
  %109 = xor i32 %108, %EAX_val.23, !mcsema_real_eip !22
  %110 = xor i32 %109, 1, !mcsema_real_eip !22
  %111 = and i32 %110, 16, !mcsema_real_eip !22
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !22
  store i1 %112, i1* %AF, !mcsema_real_eip !22
  %113 = lshr i32 %108, 31, !mcsema_real_eip !22
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !22
  store i1 %114, i1* %SF, !mcsema_real_eip !22
  %115 = icmp eq i32 %108, 0, !mcsema_real_eip !22
  store i1 %115, i1* %ZF, !mcsema_real_eip !22
  %116 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !22
  %117 = xor i32 %116, -1, !mcsema_real_eip !22
  %118 = and i32 %117, %109, !mcsema_real_eip !22
  %119 = lshr i32 %118, 31, !mcsema_real_eip !22
  %120 = and i32 %119, 1, !mcsema_real_eip !22
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !22
  store i1 %121, i1* %OF, !mcsema_real_eip !22
  %122 = trunc i32 %108 to i8, !mcsema_real_eip !22
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !22
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !22
  %125 = xor i1 %124, true, !mcsema_real_eip !22
  store i1 %125, i1* %PF, !mcsema_real_eip !22
  %126 = icmp ult i32 %108, %EAX_val.23, !mcsema_real_eip !22
  store i1 %126, i1* %CF, !mcsema_real_eip !22
  %127 = zext i32 %108 to i64, !mcsema_real_eip !22
  store i64 %127, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !23
  store i32 %EAX_val.26, i32* %103, !mcsema_real_eip !23
  br label %block_0x12, !mcsema_real_eip !24
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
!12 = !{i64 90}
!13 = !{i64 93}
!14 = !{i64 94}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 63}
!18 = !{i64 65}
!19 = !{i64 68}
!20 = !{i64 76}
!21 = !{i64 71}
!22 = !{i64 79}
!23 = !{i64 82}
!24 = !{i64 85}
