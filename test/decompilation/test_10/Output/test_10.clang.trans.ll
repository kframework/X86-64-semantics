; ModuleID = 'Output/test_10.clang.trans.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x80 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.6 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.6, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %2 = load i64, i64* %_allin_new_bt_10, !mcsema_real_eip !6
  store i64 %2, i64* %XSI, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %2, i64* %_allin_new_bt_13, !mcsema_real_eip !7
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %3 = load i64, i64* %_allin_new_bt_16, !mcsema_real_eip !8
  store i64 %3, i64* %XSI, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %3, i64* %_allin_new_bt_19, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %4 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !10
  store i64 %4, i64* %XSI, !mcsema_real_eip !10
  %5 = inttoptr i64 %4 to i64*, !mcsema_real_eip !11
  %6 = inttoptr i64 %4 to i8*, !mcsema_real_eip !11
  %7 = load i8, i8* %6, !mcsema_real_eip !11
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 %7, i8* %AL.15, !mcsema_real_eip !11
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -33
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %8 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !12
  %9 = inttoptr i64 %8 to i8*, !mcsema_real_eip !12
  store i8 %7, i8* %9, !mcsema_real_eip !12
  br label %block_0x25, !mcsema_real_eip !13

block_0x25:                                       ; preds = %block_0x54, %block_0x0
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -33
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %10 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !13
  %11 = inttoptr i64 %10 to i8*, !mcsema_real_eip !13
  %12 = load i8, i8* %11, !mcsema_real_eip !13
  %13 = sext i8 %12 to i32, !mcsema_real_eip !13
  %14 = zext i32 %13 to i64, !mcsema_real_eip !13
  store i64 %14, i64* %XAX, !mcsema_real_eip !13
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !14
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !14
  store i1 false, i1* %AF, !mcsema_real_eip !14
  %15 = trunc i32 %EAX_val.21 to i8, !mcsema_real_eip !14
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !14
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !14
  %18 = xor i1 %17, true, !mcsema_real_eip !14
  store i1 %18, i1* %PF, !mcsema_real_eip !14
  %19 = icmp eq i32 %EAX_val.21, 0, !mcsema_real_eip !14
  store i1 %19, i1* %ZF, !mcsema_real_eip !14
  %20 = lshr i32 %EAX_val.21, 31, !mcsema_real_eip !14
  %21 = trunc i32 %20 to i1, !mcsema_real_eip !14
  store i1 %21, i1* %SF, !mcsema_real_eip !14
  store i1 false, i1* %CF, !mcsema_real_eip !14
  store i1 false, i1* %OF, !mcsema_real_eip !14
  br i1 %19, label %block_0x7a, label %block_0x32, !mcsema_real_eip !15

block_0x32:                                       ; preds = %block_0x25
  %22 = load i8, i8* %11, !mcsema_real_eip !16
  %23 = sext i8 %22 to i32, !mcsema_real_eip !16
  %24 = zext i32 %23 to i64, !mcsema_real_eip !16
  store i64 %24, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.24 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %25 = sub i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %26 = xor i32 %25, %EAX_val.24, !mcsema_real_eip !17
  %27 = xor i32 %26, 47, !mcsema_real_eip !17
  %28 = and i32 %27, 16, !mcsema_real_eip !17
  %29 = icmp ne i32 %28, 0, !mcsema_real_eip !17
  store i1 %29, i1* %AF, !mcsema_real_eip !17
  %30 = trunc i32 %25 to i8, !mcsema_real_eip !17
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !17
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !17
  %33 = xor i1 %32, true, !mcsema_real_eip !17
  store i1 %33, i1* %PF, !mcsema_real_eip !17
  %34 = icmp eq i32 %25, 0, !mcsema_real_eip !17
  store i1 %34, i1* %ZF, !mcsema_real_eip !17
  %35 = lshr i32 %25, 31, !mcsema_real_eip !17
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !17
  store i1 %36, i1* %SF, !mcsema_real_eip !17
  %37 = icmp ult i32 %EAX_val.24, 47, !mcsema_real_eip !17
  store i1 %37, i1* %CF, !mcsema_real_eip !17
  %38 = xor i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %39 = and i32 %38, %26, !mcsema_real_eip !17
  %40 = lshr i32 %39, 31, !mcsema_real_eip !17
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !17
  store i1 %41, i1* %OF, !mcsema_real_eip !17
  %42 = icmp eq i1 %34, false, !mcsema_real_eip !18
  br i1 %42, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x3f:                                       ; preds = %block_0x32
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %43 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !19
  store i64 %43, i64* %XAX, !mcsema_real_eip !19
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !20
  %45 = inttoptr i64 %43 to i8*, !mcsema_real_eip !20
  store i8 92, i8* %45, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x32
  %46 = load i8, i8* %11, !mcsema_real_eip !22
  store i8 %46, i8* %AL.15, !mcsema_real_eip !22
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %47 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !23
  store i64 %47, i64* %XCX, !mcsema_real_eip !23
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !24
  %49 = inttoptr i64 %47 to i8*, !mcsema_real_eip !24
  store i8 %46, i8* %49, !mcsema_real_eip !24
  br label %block_0x54, !mcsema_real_eip !25

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %50 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !25
  store i64 %50, i64* %XAX, !mcsema_real_eip !25
  %51 = add i64 1, %50, !mcsema_real_eip !26
  %52 = xor i64 %51, %50, !mcsema_real_eip !26
  %53 = xor i64 %52, 1, !mcsema_real_eip !26
  %54 = and i64 %53, 16, !mcsema_real_eip !26
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !26
  store i1 %55, i1* %AF, !mcsema_real_eip !26
  %56 = lshr i64 %51, 63, !mcsema_real_eip !26
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !26
  store i1 %57, i1* %SF, !mcsema_real_eip !26
  %58 = icmp eq i64 %51, 0, !mcsema_real_eip !26
  store i1 %58, i1* %ZF, !mcsema_real_eip !26
  %59 = xor i64 %50, 1, !mcsema_real_eip !26
  %60 = xor i64 %59, -1, !mcsema_real_eip !26
  %61 = and i64 %60, %52, !mcsema_real_eip !26
  %62 = lshr i64 %61, 63, !mcsema_real_eip !26
  %63 = and i64 %62, 1, !mcsema_real_eip !26
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !26
  store i1 %64, i1* %OF, !mcsema_real_eip !26
  %65 = trunc i64 %51 to i8, !mcsema_real_eip !26
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !26
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !26
  %68 = xor i1 %67, true, !mcsema_real_eip !26
  store i1 %68, i1* %PF, !mcsema_real_eip !26
  %69 = icmp ult i64 %51, %50, !mcsema_real_eip !26
  store i1 %69, i1* %CF, !mcsema_real_eip !26
  store i64 %51, i64* %XAX, !mcsema_real_eip !26
  store i64 %51, i64* %_allin_new_bt_43, !mcsema_real_eip !27
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -32
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %70 = load i64, i64* %_allin_new_bt_49, !mcsema_real_eip !28
  store i64 %70, i64* %XAX, !mcsema_real_eip !28
  %71 = add i64 1, %70, !mcsema_real_eip !29
  %72 = xor i64 %71, %70, !mcsema_real_eip !29
  %73 = xor i64 %72, 1, !mcsema_real_eip !29
  %74 = and i64 %73, 16, !mcsema_real_eip !29
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !29
  store i1 %75, i1* %AF, !mcsema_real_eip !29
  %76 = lshr i64 %71, 63, !mcsema_real_eip !29
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !29
  store i1 %77, i1* %SF, !mcsema_real_eip !29
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !29
  store i1 %78, i1* %ZF, !mcsema_real_eip !29
  %79 = xor i64 %70, 1, !mcsema_real_eip !29
  %80 = xor i64 %79, -1, !mcsema_real_eip !29
  %81 = and i64 %80, %72, !mcsema_real_eip !29
  %82 = lshr i64 %81, 63, !mcsema_real_eip !29
  %83 = and i64 %82, 1, !mcsema_real_eip !29
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !29
  store i1 %84, i1* %OF, !mcsema_real_eip !29
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !29
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !29
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !29
  %88 = xor i1 %87, true, !mcsema_real_eip !29
  store i1 %88, i1* %PF, !mcsema_real_eip !29
  %89 = icmp ult i64 %71, %70, !mcsema_real_eip !29
  store i1 %89, i1* %CF, !mcsema_real_eip !29
  store i64 %71, i64* %XAX, !mcsema_real_eip !29
  store i64 %71, i64* %_allin_new_bt_49, !mcsema_real_eip !30
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %90 = load i64, i64* %_allin_new_bt_55, !mcsema_real_eip !31
  store i64 %90, i64* %XAX, !mcsema_real_eip !31
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !32
  %92 = inttoptr i64 %90 to i8*, !mcsema_real_eip !32
  %93 = load i8, i8* %92, !mcsema_real_eip !32
  %CL.43 = bitcast i64* %XCX to i8*, !mcsema_real_eip !32
  store i8 %93, i8* %CL.43, !mcsema_real_eip !32
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -33
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %94 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !33
  %95 = inttoptr i64 %94 to i8*, !mcsema_real_eip !33
  store i8 %93, i8* %95, !mcsema_real_eip !33
  br label %block_0x25, !mcsema_real_eip !34

block_0x7a:                                       ; preds = %block_0x25
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_allin_new_bt_60 = bitcast i8* %_load_rsp_ptr_59 to i64*
  %96 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !35
  %_new_int2ptr_ = inttoptr i64 %96 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %96, i64* %XBP, !mcsema_real_eip !35
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 8
  %97 = add i64 %RSP_val.47, 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %97, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %98 = add i64 %97, 8, !mcsema_real_eip !36
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %99 = load i64, i64* %_allin_new_bt_64, !mcsema_real_eip !36
  store i64 %99, i64* %XIP, !mcsema_real_eip !36
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %98, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @demo3() #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.6 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.6, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x0, %2
  %4 = phi i64* [ %_allin_new_bt_10, %block_0x0 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  store i64 %_new_load_, i64* %XSI, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_13, !mcsema_real_eip !7
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %_ptr_to_int_65 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_68 = sub i64 %_ptr_to_int_65, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  br i1 %_cond1_n_cond2_cond3_76, label %5, label %6

; <label>:5:                                      ; preds = %3
  %_address_in_parent_stack_bt_78 = bitcast i8* %_pot_address_in_parent_stack_69 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i64* [ %_allin_new_bt_16, %3 ], [ %_address_in_parent_stack_bt_78, %5 ]
  %_new_load_79 = load i64, i64* %7
  store i64 %_new_load_79, i64* %XSI, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %_new_load_79, i64* %_allin_new_bt_19, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %8, label %9

; <label>:8:                                      ; preds = %6
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %9

; <label>:9:                                      ; preds = %6, %8
  %10 = phi i64* [ %_allin_new_bt_22, %6 ], [ %_address_in_parent_stack_bt_93, %8 ]
  %_new_load_94 = load i64, i64* %10
  store i64 %_new_load_94, i64* %XSI, !mcsema_real_eip !10
  %11 = inttoptr i64 %_new_load_94 to i64*, !mcsema_real_eip !11
  %12 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !11
  %_offset_above_rbp_97 = sub i64 %_new_load_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %12, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %12, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %12, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %9, %13
  %15 = phi i8* [ %12, %9 ], [ %_pot_address_in_parent_stack_98, %13 ]
  %_new_load_107 = load i8, i8* %15
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 %_new_load_107, i8* %AL.15, !mcsema_real_eip !11
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -33
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !12
  %17 = inttoptr i64 %16 to i8*, !mcsema_real_eip !12
  store i8 %_new_load_107, i8* %17, !mcsema_real_eip !12
  br label %block_0x25, !mcsema_real_eip !13

block_0x25:                                       ; preds = %118, %14
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -33
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !13
  %19 = inttoptr i64 %18 to i8*, !mcsema_real_eip !13
  %_offset_above_rbp_110 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %19, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %19, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %19, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %20, label %21

; <label>:20:                                     ; preds = %block_0x25
  br label %21

; <label>:21:                                     ; preds = %block_0x25, %20
  %22 = phi i8* [ %19, %block_0x25 ], [ %_pot_address_in_parent_stack_111, %20 ]
  %_new_load_120 = load i8, i8* %22
  %23 = sext i8 %_new_load_120 to i32, !mcsema_real_eip !13
  %24 = zext i32 %23 to i64, !mcsema_real_eip !13
  store i64 %24, i64* %XAX, !mcsema_real_eip !13
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !14
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !14
  store i1 false, i1* %AF, !mcsema_real_eip !14
  %25 = trunc i32 %EAX_val.21 to i8, !mcsema_real_eip !14
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !14
  %27 = trunc i8 %26 to i1, !mcsema_real_eip !14
  %28 = xor i1 %27, true, !mcsema_real_eip !14
  store i1 %28, i1* %PF, !mcsema_real_eip !14
  %29 = icmp eq i32 %EAX_val.21, 0, !mcsema_real_eip !14
  store i1 %29, i1* %ZF, !mcsema_real_eip !14
  %30 = lshr i32 %EAX_val.21, 31, !mcsema_real_eip !14
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !14
  store i1 %31, i1* %SF, !mcsema_real_eip !14
  store i1 false, i1* %CF, !mcsema_real_eip !14
  store i1 false, i1* %OF, !mcsema_real_eip !14
  br i1 %29, label %block_0x7a, label %block_0x32, !mcsema_real_eip !15

block_0x32:                                       ; preds = %21
  br i1 %_cond1_n_cond2_cond3_118, label %32, label %33

; <label>:32:                                     ; preds = %block_0x32
  br label %33

; <label>:33:                                     ; preds = %block_0x32, %32
  %34 = phi i8* [ %19, %block_0x32 ], [ %_pot_address_in_parent_stack_111, %32 ]
  %_new_load_133 = load i8, i8* %34
  %35 = sext i8 %_new_load_133 to i32, !mcsema_real_eip !16
  %36 = zext i32 %35 to i64, !mcsema_real_eip !16
  store i64 %36, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.24 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %37 = sub i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %38 = xor i32 %37, %EAX_val.24, !mcsema_real_eip !17
  %39 = xor i32 %38, 47, !mcsema_real_eip !17
  %40 = and i32 %39, 16, !mcsema_real_eip !17
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !17
  store i1 %41, i1* %AF, !mcsema_real_eip !17
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !17
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !17
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !17
  %45 = xor i1 %44, true, !mcsema_real_eip !17
  store i1 %45, i1* %PF, !mcsema_real_eip !17
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !17
  store i1 %46, i1* %ZF, !mcsema_real_eip !17
  %47 = lshr i32 %37, 31, !mcsema_real_eip !17
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !17
  store i1 %48, i1* %SF, !mcsema_real_eip !17
  %49 = icmp ult i32 %EAX_val.24, 47, !mcsema_real_eip !17
  store i1 %49, i1* %CF, !mcsema_real_eip !17
  %50 = xor i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %51 = and i32 %50, %38, !mcsema_real_eip !17
  %52 = lshr i32 %51, 31, !mcsema_real_eip !17
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !17
  store i1 %53, i1* %OF, !mcsema_real_eip !17
  %54 = icmp eq i1 %46, false, !mcsema_real_eip !18
  br i1 %54, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x3f:                                       ; preds = %33
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %55, label %56

; <label>:55:                                     ; preds = %block_0x3f
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %56

; <label>:56:                                     ; preds = %block_0x3f, %55
  %57 = phi i64* [ %_allin_new_bt_34, %block_0x3f ], [ %_address_in_parent_stack_bt_147, %55 ]
  %_new_load_148 = load i64, i64* %57
  store i64 %_new_load_148, i64* %XAX, !mcsema_real_eip !19
  %58 = inttoptr i64 %_new_load_148 to i64*, !mcsema_real_eip !20
  %59 = inttoptr i64 %_new_load_148 to i8*, !mcsema_real_eip !20
  store i8 92, i8* %59, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %33
  br i1 %_cond1_n_cond2_cond3_118, label %60, label %61

; <label>:60:                                     ; preds = %block_0x4b
  br label %61

; <label>:61:                                     ; preds = %block_0x4b, %60
  %62 = phi i8* [ %19, %block_0x4b ], [ %_pot_address_in_parent_stack_111, %60 ]
  %_new_load_161 = load i8, i8* %62
  store i8 %_new_load_161, i8* %AL.15, !mcsema_real_eip !22
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_162 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %63, label %64

; <label>:63:                                     ; preds = %61
  %_address_in_parent_stack_bt_175 = bitcast i8* %_pot_address_in_parent_stack_166 to i64*
  br label %64

; <label>:64:                                     ; preds = %61, %63
  %65 = phi i64* [ %_allin_new_bt_40, %61 ], [ %_address_in_parent_stack_bt_175, %63 ]
  %_new_load_176 = load i64, i64* %65
  store i64 %_new_load_176, i64* %XCX, !mcsema_real_eip !23
  %66 = inttoptr i64 %_new_load_176 to i64*, !mcsema_real_eip !24
  %67 = inttoptr i64 %_new_load_176 to i8*, !mcsema_real_eip !24
  store i8 %_new_load_161, i8* %67, !mcsema_real_eip !24
  br label %block_0x54, !mcsema_real_eip !25

block_0x54:                                       ; preds = %64, %56
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_177 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  br i1 %_cond1_n_cond2_cond3_188, label %68, label %69

; <label>:68:                                     ; preds = %block_0x54
  %_address_in_parent_stack_bt_190 = bitcast i8* %_pot_address_in_parent_stack_181 to i64*
  br label %69

; <label>:69:                                     ; preds = %block_0x54, %68
  %70 = phi i64* [ %_allin_new_bt_43, %block_0x54 ], [ %_address_in_parent_stack_bt_190, %68 ]
  %_new_load_191 = load i64, i64* %70
  store i64 %_new_load_191, i64* %XAX, !mcsema_real_eip !25
  %71 = add i64 1, %_new_load_191, !mcsema_real_eip !26
  %72 = xor i64 %71, %_new_load_191, !mcsema_real_eip !26
  %73 = xor i64 %72, 1, !mcsema_real_eip !26
  %74 = and i64 %73, 16, !mcsema_real_eip !26
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !26
  store i1 %75, i1* %AF, !mcsema_real_eip !26
  %76 = lshr i64 %71, 63, !mcsema_real_eip !26
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !26
  store i1 %77, i1* %SF, !mcsema_real_eip !26
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !26
  store i1 %78, i1* %ZF, !mcsema_real_eip !26
  %79 = xor i64 %_new_load_191, 1, !mcsema_real_eip !26
  %80 = xor i64 %79, -1, !mcsema_real_eip !26
  %81 = and i64 %80, %72, !mcsema_real_eip !26
  %82 = lshr i64 %81, 63, !mcsema_real_eip !26
  %83 = and i64 %82, 1, !mcsema_real_eip !26
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !26
  store i1 %84, i1* %OF, !mcsema_real_eip !26
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !26
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !26
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !26
  %88 = xor i1 %87, true, !mcsema_real_eip !26
  store i1 %88, i1* %PF, !mcsema_real_eip !26
  %89 = icmp ult i64 %71, %_new_load_191, !mcsema_real_eip !26
  store i1 %89, i1* %CF, !mcsema_real_eip !26
  store i64 %71, i64* %XAX, !mcsema_real_eip !26
  store i64 %71, i64* %_allin_new_bt_43, !mcsema_real_eip !27
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -32
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_192 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %90, label %91

; <label>:90:                                     ; preds = %69
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  br label %91

; <label>:91:                                     ; preds = %69, %90
  %92 = phi i64* [ %_allin_new_bt_49, %69 ], [ %_address_in_parent_stack_bt_205, %90 ]
  %_new_load_206 = load i64, i64* %92
  store i64 %_new_load_206, i64* %XAX, !mcsema_real_eip !28
  %93 = add i64 1, %_new_load_206, !mcsema_real_eip !29
  %94 = xor i64 %93, %_new_load_206, !mcsema_real_eip !29
  %95 = xor i64 %94, 1, !mcsema_real_eip !29
  %96 = and i64 %95, 16, !mcsema_real_eip !29
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !29
  store i1 %97, i1* %AF, !mcsema_real_eip !29
  %98 = lshr i64 %93, 63, !mcsema_real_eip !29
  %99 = trunc i64 %98 to i1, !mcsema_real_eip !29
  store i1 %99, i1* %SF, !mcsema_real_eip !29
  %100 = icmp eq i64 %93, 0, !mcsema_real_eip !29
  store i1 %100, i1* %ZF, !mcsema_real_eip !29
  %101 = xor i64 %_new_load_206, 1, !mcsema_real_eip !29
  %102 = xor i64 %101, -1, !mcsema_real_eip !29
  %103 = and i64 %102, %94, !mcsema_real_eip !29
  %104 = lshr i64 %103, 63, !mcsema_real_eip !29
  %105 = and i64 %104, 1, !mcsema_real_eip !29
  %106 = trunc i64 %105 to i1, !mcsema_real_eip !29
  store i1 %106, i1* %OF, !mcsema_real_eip !29
  %107 = trunc i64 %93 to i8, !mcsema_real_eip !29
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !29
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !29
  %110 = xor i1 %109, true, !mcsema_real_eip !29
  store i1 %110, i1* %PF, !mcsema_real_eip !29
  %111 = icmp ult i64 %93, %_new_load_206, !mcsema_real_eip !29
  store i1 %111, i1* %CF, !mcsema_real_eip !29
  store i64 %93, i64* %XAX, !mcsema_real_eip !29
  store i64 %93, i64* %_allin_new_bt_49, !mcsema_real_eip !30
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %112, label %113

; <label>:112:                                    ; preds = %91
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %113

; <label>:113:                                    ; preds = %91, %112
  %114 = phi i64* [ %_allin_new_bt_55, %91 ], [ %_address_in_parent_stack_bt_220, %112 ]
  %_new_load_221 = load i64, i64* %114
  store i64 %_new_load_221, i64* %XAX, !mcsema_real_eip !31
  %115 = inttoptr i64 %_new_load_221 to i64*, !mcsema_real_eip !32
  %116 = inttoptr i64 %_new_load_221 to i8*, !mcsema_real_eip !32
  %_offset_above_rbp_224 = sub i64 %_new_load_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %116, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %116, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %116, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %117, label %118

; <label>:117:                                    ; preds = %113
  br label %118

; <label>:118:                                    ; preds = %113, %117
  %119 = phi i8* [ %116, %113 ], [ %_pot_address_in_parent_stack_225, %117 ]
  %_new_load_234 = load i8, i8* %119
  %CL.43 = bitcast i64* %XCX to i8*, !mcsema_real_eip !32
  store i8 %_new_load_234, i8* %CL.43, !mcsema_real_eip !32
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -33
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %120 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !33
  %121 = inttoptr i64 %120 to i8*, !mcsema_real_eip !33
  store i8 %_new_load_234, i8* %121, !mcsema_real_eip !33
  br label %block_0x25, !mcsema_real_eip !34

block_0x7a:                                       ; preds = %21
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !35
  %_allin_new_bt_60 = bitcast i8* %_load_rsp_ptr_59 to i64*
  %_ptr_to_int_235 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_load_rsp_ptr_59, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_load_rsp_ptr_59, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_load_rsp_ptr_59, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  br i1 %_cond1_n_cond2_cond3_246, label %122, label %123

; <label>:122:                                    ; preds = %block_0x7a
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %123

; <label>:123:                                    ; preds = %block_0x7a, %122
  %124 = phi i64* [ %_allin_new_bt_60, %block_0x7a ], [ %_address_in_parent_stack_bt_248, %122 ]
  %_new_load_249 = load i64, i64* %124
  %_new_int2ptr_ = inttoptr i64 %_new_load_249 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_249, i64* %XBP, !mcsema_real_eip !35
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 8
  %125 = add i64 %RSP_val.47, 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %125, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %126 = add i64 %125, 8, !mcsema_real_eip !36
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_250 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_253 = sub i64 %_ptr_to_int_250, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  br i1 %_cond1_n_cond2_cond3_261, label %127, label %128

; <label>:127:                                    ; preds = %123
  %_address_in_parent_stack_bt_263 = bitcast i8* %_pot_address_in_parent_stack_254 to i64*
  br label %128

; <label>:128:                                    ; preds = %123, %127
  %129 = phi i64* [ %_allin_new_bt_64, %123 ], [ %_address_in_parent_stack_bt_263, %127 ]
  %_new_load_264 = load i64, i64* %129
  store i64 %_new_load_264, i64* %XIP, !mcsema_real_eip !36
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %126, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 41}
!15 = !{i64 44}
!16 = !{i64 50}
!17 = !{i64 54}
!18 = !{i64 57}
!19 = !{i64 63}
!20 = !{i64 67}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 82}
!25 = !{i64 84}
!26 = !{i64 88}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 104}
!31 = !{i64 108}
!32 = !{i64 112}
!33 = !{i64 114}
!34 = !{i64 117}
!35 = !{i64 122}
!36 = !{i64 123}
