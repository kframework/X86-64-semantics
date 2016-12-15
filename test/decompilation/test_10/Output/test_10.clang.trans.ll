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
  %EAX_val.26 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %25 = sub i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %26 = xor i32 %25, %EAX_val.26, !mcsema_real_eip !17
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
  %37 = icmp ult i32 %EAX_val.26, 47, !mcsema_real_eip !17
  store i1 %37, i1* %CF, !mcsema_real_eip !17
  %38 = xor i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %39 = and i32 %38, %26, !mcsema_real_eip !17
  %40 = lshr i32 %39, 31, !mcsema_real_eip !17
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !17
  store i1 %41, i1* %OF, !mcsema_real_eip !17
  %42 = icmp eq i1 %34, false, !mcsema_real_eip !18
  br i1 %42, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x7a:                                       ; preds = %block_0x25
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %43 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !19
  %_new_int2ptr_ = inttoptr i64 %43 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %43, i64* %XBP, !mcsema_real_eip !19
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %44 = add i64 %RSP_val.22, 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %44, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %45 = add i64 %44, 8, !mcsema_real_eip !20
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %46 = load i64, i64* %_allin_new_bt_37, !mcsema_real_eip !20
  store i64 %46, i64* %XIP, !mcsema_real_eip !20
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %45, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x3f:                                       ; preds = %block_0x32
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %47 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !21
  store i64 %47, i64* %XAX, !mcsema_real_eip !21
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !22
  %49 = inttoptr i64 %47 to i8*, !mcsema_real_eip !22
  store i8 92, i8* %49, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x4b:                                       ; preds = %block_0x32
  %50 = load i8, i8* %11, !mcsema_real_eip !24
  store i8 %50, i8* %AL.15, !mcsema_real_eip !24
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %51 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !25
  store i64 %51, i64* %XCX, !mcsema_real_eip !25
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !26
  %53 = inttoptr i64 %51 to i8*, !mcsema_real_eip !26
  store i8 %50, i8* %53, !mcsema_real_eip !26
  br label %block_0x54, !mcsema_real_eip !21

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %54 = load i64, i64* %_allin_new_bt_49, !mcsema_real_eip !27
  store i64 %54, i64* %XAX, !mcsema_real_eip !27
  %55 = add i64 1, %54, !mcsema_real_eip !28
  %56 = xor i64 %55, %54, !mcsema_real_eip !28
  %57 = xor i64 %56, 1, !mcsema_real_eip !28
  %58 = and i64 %57, 16, !mcsema_real_eip !28
  %59 = icmp ne i64 %58, 0, !mcsema_real_eip !28
  store i1 %59, i1* %AF, !mcsema_real_eip !28
  %60 = lshr i64 %55, 63, !mcsema_real_eip !28
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !28
  store i1 %61, i1* %SF, !mcsema_real_eip !28
  %62 = icmp eq i64 %55, 0, !mcsema_real_eip !28
  store i1 %62, i1* %ZF, !mcsema_real_eip !28
  %63 = xor i64 %54, 1, !mcsema_real_eip !28
  %64 = xor i64 %63, -1, !mcsema_real_eip !28
  %65 = and i64 %64, %56, !mcsema_real_eip !28
  %66 = lshr i64 %65, 63, !mcsema_real_eip !28
  %67 = and i64 %66, 1, !mcsema_real_eip !28
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !28
  store i1 %68, i1* %OF, !mcsema_real_eip !28
  %69 = trunc i64 %55 to i8, !mcsema_real_eip !28
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !28
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !28
  %72 = xor i1 %71, true, !mcsema_real_eip !28
  store i1 %72, i1* %PF, !mcsema_real_eip !28
  %73 = icmp ult i64 %55, %54, !mcsema_real_eip !28
  store i1 %73, i1* %CF, !mcsema_real_eip !28
  store i64 %55, i64* %XAX, !mcsema_real_eip !28
  store i64 %55, i64* %_allin_new_bt_49, !mcsema_real_eip !29
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %74 = load i64, i64* %_allin_new_bt_55, !mcsema_real_eip !30
  store i64 %74, i64* %XAX, !mcsema_real_eip !30
  %75 = add i64 1, %74, !mcsema_real_eip !31
  %76 = xor i64 %75, %74, !mcsema_real_eip !31
  %77 = xor i64 %76, 1, !mcsema_real_eip !31
  %78 = and i64 %77, 16, !mcsema_real_eip !31
  %79 = icmp ne i64 %78, 0, !mcsema_real_eip !31
  store i1 %79, i1* %AF, !mcsema_real_eip !31
  %80 = lshr i64 %75, 63, !mcsema_real_eip !31
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !31
  store i1 %81, i1* %SF, !mcsema_real_eip !31
  %82 = icmp eq i64 %75, 0, !mcsema_real_eip !31
  store i1 %82, i1* %ZF, !mcsema_real_eip !31
  %83 = xor i64 %74, 1, !mcsema_real_eip !31
  %84 = xor i64 %83, -1, !mcsema_real_eip !31
  %85 = and i64 %84, %76, !mcsema_real_eip !31
  %86 = lshr i64 %85, 63, !mcsema_real_eip !31
  %87 = and i64 %86, 1, !mcsema_real_eip !31
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !31
  store i1 %88, i1* %OF, !mcsema_real_eip !31
  %89 = trunc i64 %75 to i8, !mcsema_real_eip !31
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !31
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !31
  %92 = xor i1 %91, true, !mcsema_real_eip !31
  store i1 %92, i1* %PF, !mcsema_real_eip !31
  %93 = icmp ult i64 %75, %74, !mcsema_real_eip !31
  store i1 %93, i1* %CF, !mcsema_real_eip !31
  store i64 %75, i64* %XAX, !mcsema_real_eip !31
  store i64 %75, i64* %_allin_new_bt_55, !mcsema_real_eip !32
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -24
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %94 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !33
  store i64 %94, i64* %XAX, !mcsema_real_eip !33
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !34
  %96 = inttoptr i64 %94 to i8*, !mcsema_real_eip !34
  %97 = load i8, i8* %96, !mcsema_real_eip !34
  %CL.45 = bitcast i64* %XCX to i8*, !mcsema_real_eip !34
  store i8 %97, i8* %CL.45, !mcsema_real_eip !34
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -33
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !35
  %99 = inttoptr i64 %98 to i8*, !mcsema_real_eip !35
  store i8 %97, i8* %99, !mcsema_real_eip !35
  br label %block_0x25, !mcsema_real_eip !36
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

block_0x25:                                       ; preds = %126, %14
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
  %EAX_val.26 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %37 = sub i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %38 = xor i32 %37, %EAX_val.26, !mcsema_real_eip !17
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
  %49 = icmp ult i32 %EAX_val.26, 47, !mcsema_real_eip !17
  store i1 %49, i1* %CF, !mcsema_real_eip !17
  %50 = xor i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %51 = and i32 %50, %38, !mcsema_real_eip !17
  %52 = lshr i32 %51, 31, !mcsema_real_eip !17
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !17
  store i1 %53, i1* %OF, !mcsema_real_eip !17
  %54 = icmp eq i1 %46, false, !mcsema_real_eip !18
  br i1 %54, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x7a:                                       ; preds = %21
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %55, label %56

; <label>:55:                                     ; preds = %block_0x7a
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %56

; <label>:56:                                     ; preds = %block_0x7a, %55
  %57 = phi i64* [ %_allin_new_bt_33, %block_0x7a ], [ %_address_in_parent_stack_bt_147, %55 ]
  %_new_load_148 = load i64, i64* %57
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_148, i64* %XBP, !mcsema_real_eip !19
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %58 = add i64 %RSP_val.22, 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %58, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %59 = add i64 %58, 8, !mcsema_real_eip !20
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %60, label %61

; <label>:60:                                     ; preds = %56
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %61

; <label>:61:                                     ; preds = %56, %60
  %62 = phi i64* [ %_allin_new_bt_37, %56 ], [ %_address_in_parent_stack_bt_162, %60 ]
  %_new_load_163 = load i64, i64* %62
  store i64 %_new_load_163, i64* %XIP, !mcsema_real_eip !20
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %59, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x3f:                                       ; preds = %33
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_164 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  br i1 %_cond1_n_cond2_cond3_175, label %63, label %64

; <label>:63:                                     ; preds = %block_0x3f
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_168 to i64*
  br label %64

; <label>:64:                                     ; preds = %block_0x3f, %63
  %65 = phi i64* [ %_allin_new_bt_40, %block_0x3f ], [ %_address_in_parent_stack_bt_177, %63 ]
  %_new_load_178 = load i64, i64* %65
  store i64 %_new_load_178, i64* %XAX, !mcsema_real_eip !21
  %66 = inttoptr i64 %_new_load_178 to i64*, !mcsema_real_eip !22
  %67 = inttoptr i64 %_new_load_178 to i8*, !mcsema_real_eip !22
  store i8 92, i8* %67, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x4b:                                       ; preds = %33
  br i1 %_cond1_n_cond2_cond3_118, label %68, label %69

; <label>:68:                                     ; preds = %block_0x4b
  br label %69

; <label>:69:                                     ; preds = %block_0x4b, %68
  %70 = phi i8* [ %19, %block_0x4b ], [ %_pot_address_in_parent_stack_111, %68 ]
  %_new_load_191 = load i8, i8* %70
  store i8 %_new_load_191, i8* %AL.15, !mcsema_real_eip !24
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_192 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %71, label %72

; <label>:71:                                     ; preds = %69
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  br label %72

; <label>:72:                                     ; preds = %69, %71
  %73 = phi i64* [ %_allin_new_bt_46, %69 ], [ %_address_in_parent_stack_bt_205, %71 ]
  %_new_load_206 = load i64, i64* %73
  store i64 %_new_load_206, i64* %XCX, !mcsema_real_eip !25
  %74 = inttoptr i64 %_new_load_206 to i64*, !mcsema_real_eip !26
  %75 = inttoptr i64 %_new_load_206 to i8*, !mcsema_real_eip !26
  store i8 %_new_load_191, i8* %75, !mcsema_real_eip !26
  br label %block_0x54, !mcsema_real_eip !21

block_0x54:                                       ; preds = %72, %64
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %76, label %77

; <label>:76:                                     ; preds = %block_0x54
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %77

; <label>:77:                                     ; preds = %block_0x54, %76
  %78 = phi i64* [ %_allin_new_bt_49, %block_0x54 ], [ %_address_in_parent_stack_bt_220, %76 ]
  %_new_load_221 = load i64, i64* %78
  store i64 %_new_load_221, i64* %XAX, !mcsema_real_eip !27
  %79 = add i64 1, %_new_load_221, !mcsema_real_eip !28
  %80 = xor i64 %79, %_new_load_221, !mcsema_real_eip !28
  %81 = xor i64 %80, 1, !mcsema_real_eip !28
  %82 = and i64 %81, 16, !mcsema_real_eip !28
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !28
  store i1 %83, i1* %AF, !mcsema_real_eip !28
  %84 = lshr i64 %79, 63, !mcsema_real_eip !28
  %85 = trunc i64 %84 to i1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, !mcsema_real_eip !28
  %86 = icmp eq i64 %79, 0, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, !mcsema_real_eip !28
  %87 = xor i64 %_new_load_221, 1, !mcsema_real_eip !28
  %88 = xor i64 %87, -1, !mcsema_real_eip !28
  %89 = and i64 %88, %80, !mcsema_real_eip !28
  %90 = lshr i64 %89, 63, !mcsema_real_eip !28
  %91 = and i64 %90, 1, !mcsema_real_eip !28
  %92 = trunc i64 %91 to i1, !mcsema_real_eip !28
  store i1 %92, i1* %OF, !mcsema_real_eip !28
  %93 = trunc i64 %79 to i8, !mcsema_real_eip !28
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !28
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !28
  %96 = xor i1 %95, true, !mcsema_real_eip !28
  store i1 %96, i1* %PF, !mcsema_real_eip !28
  %97 = icmp ult i64 %79, %_new_load_221, !mcsema_real_eip !28
  store i1 %97, i1* %CF, !mcsema_real_eip !28
  store i64 %79, i64* %XAX, !mcsema_real_eip !28
  store i64 %79, i64* %_allin_new_bt_49, !mcsema_real_eip !29
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_222 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %98, label %99

; <label>:98:                                     ; preds = %77
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i64*
  br label %99

; <label>:99:                                     ; preds = %77, %98
  %100 = phi i64* [ %_allin_new_bt_55, %77 ], [ %_address_in_parent_stack_bt_235, %98 ]
  %_new_load_236 = load i64, i64* %100
  store i64 %_new_load_236, i64* %XAX, !mcsema_real_eip !30
  %101 = add i64 1, %_new_load_236, !mcsema_real_eip !31
  %102 = xor i64 %101, %_new_load_236, !mcsema_real_eip !31
  %103 = xor i64 %102, 1, !mcsema_real_eip !31
  %104 = and i64 %103, 16, !mcsema_real_eip !31
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !31
  store i1 %105, i1* %AF, !mcsema_real_eip !31
  %106 = lshr i64 %101, 63, !mcsema_real_eip !31
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !31
  store i1 %107, i1* %SF, !mcsema_real_eip !31
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !31
  store i1 %108, i1* %ZF, !mcsema_real_eip !31
  %109 = xor i64 %_new_load_236, 1, !mcsema_real_eip !31
  %110 = xor i64 %109, -1, !mcsema_real_eip !31
  %111 = and i64 %110, %102, !mcsema_real_eip !31
  %112 = lshr i64 %111, 63, !mcsema_real_eip !31
  %113 = and i64 %112, 1, !mcsema_real_eip !31
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !31
  store i1 %114, i1* %OF, !mcsema_real_eip !31
  %115 = trunc i64 %101 to i8, !mcsema_real_eip !31
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !31
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !31
  %118 = xor i1 %117, true, !mcsema_real_eip !31
  store i1 %118, i1* %PF, !mcsema_real_eip !31
  %119 = icmp ult i64 %101, %_new_load_236, !mcsema_real_eip !31
  store i1 %119, i1* %CF, !mcsema_real_eip !31
  store i64 %101, i64* %XAX, !mcsema_real_eip !31
  store i64 %101, i64* %_allin_new_bt_55, !mcsema_real_eip !32
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -24
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_237 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  br i1 %_cond1_n_cond2_cond3_248, label %120, label %121

; <label>:120:                                    ; preds = %99
  %_address_in_parent_stack_bt_250 = bitcast i8* %_pot_address_in_parent_stack_241 to i64*
  br label %121

; <label>:121:                                    ; preds = %99, %120
  %122 = phi i64* [ %_allin_new_bt_61, %99 ], [ %_address_in_parent_stack_bt_250, %120 ]
  %_new_load_251 = load i64, i64* %122
  store i64 %_new_load_251, i64* %XAX, !mcsema_real_eip !33
  %123 = inttoptr i64 %_new_load_251 to i64*, !mcsema_real_eip !34
  %124 = inttoptr i64 %_new_load_251 to i8*, !mcsema_real_eip !34
  %_offset_above_rbp_254 = sub i64 %_new_load_251, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %124, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %124, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %124, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  br i1 %_cond1_n_cond2_cond3_262, label %125, label %126

; <label>:125:                                    ; preds = %121
  br label %126

; <label>:126:                                    ; preds = %121, %125
  %127 = phi i8* [ %124, %121 ], [ %_pot_address_in_parent_stack_255, %125 ]
  %_new_load_264 = load i8, i8* %127
  %CL.45 = bitcast i64* %XCX to i8*, !mcsema_real_eip !34
  store i8 %_new_load_264, i8* %CL.45, !mcsema_real_eip !34
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -33
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %128 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !35
  %129 = inttoptr i64 %128 to i8*, !mcsema_real_eip !35
  store i8 %_new_load_264, i8* %129, !mcsema_real_eip !35
  br label %block_0x25, !mcsema_real_eip !36
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
!19 = !{i64 122}
!20 = !{i64 123}
!21 = !{i64 63}
!22 = !{i64 67}
!23 = !{i64 70}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 82}
!27 = !{i64 84}
!28 = !{i64 88}
!29 = !{i64 92}
!30 = !{i64 96}
!31 = !{i64 100}
!32 = !{i64 104}
!33 = !{i64 108}
!34 = !{i64 112}
!35 = !{i64 114}
!36 = !{i64 117}
