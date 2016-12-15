; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl switches;"
module asm "  .type switches,@function"
module asm "switches:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size switches,0b-switches;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d0 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\CD\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 92
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 92
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %3, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %5, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  %8 = load i32, i32* %7, !mcsema_real_eip !6
  %9 = zext i32 %8 to i64, !mcsema_real_eip !6
  store i64 %9, i64* %XDI, !mcsema_real_eip !6
  %EDI_val.9 = load i32, i32* %EDI.4, !mcsema_real_eip !7
  %10 = icmp eq i32 %EDI_val.9, 0, !mcsema_real_eip !7
  store i1 %10, i1* %ZF, !mcsema_real_eip !7
  %11 = lshr i32 %EDI_val.9, 31, !mcsema_real_eip !7
  %12 = trunc i32 %11 to i1, !mcsema_real_eip !7
  store i1 %12, i1* %SF, !mcsema_real_eip !7
  %13 = trunc i32 %EDI_val.9 to i8, !mcsema_real_eip !7
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !7
  %15 = trunc i8 %14 to i1, !mcsema_real_eip !7
  %16 = xor i1 %15, true, !mcsema_real_eip !7
  store i1 %16, i1* %PF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %18, !mcsema_real_eip !8
  %19 = load i1, i1* %ZF, !mcsema_real_eip !9
  br i1 %19, label %block_0x19f, label %block_0x1c, !mcsema_real_eip !9

block_0x1c:                                       ; preds = %block_0x0
  br label %block_0x21, !mcsema_real_eip !10

block_0x19f:                                      ; preds = %block_0x0
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !11
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !11
  %22 = load i32, i32* %21, !mcsema_real_eip !11
  %23 = zext i32 %22 to i64, !mcsema_real_eip !11
  store i64 %23, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  store i1 false, i1* %AF, !mcsema_real_eip !12
  %24 = lshr i32 %EAX_val.17, 31, !mcsema_real_eip !12
  %25 = trunc i32 %24 to i1, !mcsema_real_eip !12
  store i1 %25, i1* %SF, !mcsema_real_eip !12
  %26 = icmp eq i32 %EAX_val.17, 0, !mcsema_real_eip !12
  store i1 %26, i1* %ZF, !mcsema_real_eip !12
  %27 = xor i32 %EAX_val.17, -1, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  %28 = trunc i32 %EAX_val.17 to i8, !mcsema_real_eip !12
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !12
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !12
  %31 = xor i1 %30, true, !mcsema_real_eip !12
  store i1 %31, i1* %PF, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  %32 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !12
  store i64 %32, i64* %XAX, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %21, !mcsema_real_eip !13
  br label %block_0x2c8, !mcsema_real_eip !14

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %33 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !15
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !15
  %35 = load i32, i32* %34, !mcsema_real_eip !15
  %36 = zext i32 %35 to i64, !mcsema_real_eip !15
  store i64 %36, i64* %XAX, !mcsema_real_eip !15
  %_load_rsp_ptr_23 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_allin_new_bt_24 = bitcast i8* %_load_rsp_ptr_23 to i64*
  %37 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !16
  %_new_int2ptr_ = inttoptr i64 %37 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %37, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 8
  %38 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_
  store i64 %38, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %39 = add i64 %38, 8, !mcsema_real_eip !17
  %_allin_new_bt_28 = bitcast i8* %_new_gep_25 to i64*
  %40 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !17
  store i64 %40, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_
  store i64 %39, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x21:                                       ; preds = %block_0x1c
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -12
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !18
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !18
  %43 = load i32, i32* %42, !mcsema_real_eip !18
  %44 = zext i32 %43 to i64, !mcsema_real_eip !18
  store i64 %44, i64* %XAX, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !19
  %45 = sub i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %46 = xor i32 %45, %EAX_val.26, !mcsema_real_eip !19
  %47 = xor i32 %46, 1, !mcsema_real_eip !19
  %48 = and i32 %47, 16, !mcsema_real_eip !19
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !19
  store i1 %49, i1* %AF, !mcsema_real_eip !19
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !19
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !19
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !19
  %53 = xor i1 %52, true, !mcsema_real_eip !19
  store i1 %53, i1* %PF, !mcsema_real_eip !19
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !19
  store i1 %54, i1* %ZF, !mcsema_real_eip !19
  %55 = lshr i32 %45, 31, !mcsema_real_eip !19
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !19
  store i1 %56, i1* %SF, !mcsema_real_eip !19
  %57 = icmp ult i32 %EAX_val.26, 1, !mcsema_real_eip !19
  store i1 %57, i1* %CF, !mcsema_real_eip !19
  %58 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %59 = and i32 %58, %46, !mcsema_real_eip !19
  %60 = lshr i32 %59, 31, !mcsema_real_eip !19
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !19
  store i1 %61, i1* %OF, !mcsema_real_eip !19
  %62 = zext i32 %45 to i64, !mcsema_real_eip !19
  store i64 %62, i64* %XAX, !mcsema_real_eip !19
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -16
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %EAX_val.29 = load i32, i32* %EAX.25, !mcsema_real_eip !20
  %63 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %64, !mcsema_real_eip !20
  %65 = load i1, i1* %ZF, !mcsema_real_eip !21
  br i1 %65, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !21

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !22

block_0x1ad:                                      ; preds = %block_0x21
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -8
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %66 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !23
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !23
  %68 = load i32, i32* %67, !mcsema_real_eip !23
  %69 = zext i32 %68 to i64, !mcsema_real_eip !23
  store i64 %69, i64* %XAX, !mcsema_real_eip !23
  %EAX_val.32 = load i32, i32* %EAX.25, !mcsema_real_eip !24
  %70 = add i32 1, %EAX_val.32, !mcsema_real_eip !24
  %71 = xor i32 %70, %EAX_val.32, !mcsema_real_eip !24
  %72 = xor i32 %71, 1, !mcsema_real_eip !24
  %73 = and i32 %72, 16, !mcsema_real_eip !24
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !24
  store i1 %74, i1* %AF, !mcsema_real_eip !24
  %75 = lshr i32 %70, 31, !mcsema_real_eip !24
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !24
  store i1 %76, i1* %SF, !mcsema_real_eip !24
  %77 = icmp eq i32 %70, 0, !mcsema_real_eip !24
  store i1 %77, i1* %ZF, !mcsema_real_eip !24
  %78 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !24
  %79 = xor i32 %78, -1, !mcsema_real_eip !24
  %80 = and i32 %79, %71, !mcsema_real_eip !24
  %81 = lshr i32 %80, 31, !mcsema_real_eip !24
  %82 = and i32 %81, 1, !mcsema_real_eip !24
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !24
  store i1 %83, i1* %OF, !mcsema_real_eip !24
  %84 = trunc i32 %70 to i8, !mcsema_real_eip !24
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !24
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !24
  %87 = xor i1 %86, true, !mcsema_real_eip !24
  store i1 %87, i1* %PF, !mcsema_real_eip !24
  %88 = icmp ult i32 %70, %EAX_val.32, !mcsema_real_eip !24
  store i1 %88, i1* %CF, !mcsema_real_eip !24
  %89 = zext i32 %70 to i64, !mcsema_real_eip !24
  store i64 %89, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.35 = load i32, i32* %EAX.25, !mcsema_real_eip !25
  store i32 %EAX_val.35, i32* %67, !mcsema_real_eip !25
  br label %block_0x2c8, !mcsema_real_eip !26

block_0x35:                                       ; preds = %block_0x30
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -12
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %90 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !27
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !27
  %92 = load i32, i32* %91, !mcsema_real_eip !27
  %93 = zext i32 %92 to i64, !mcsema_real_eip !27
  store i64 %93, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.38 = load i32, i32* %EAX.25, !mcsema_real_eip !28
  %94 = sub i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %95 = xor i32 %94, %EAX_val.38, !mcsema_real_eip !28
  %96 = xor i32 %95, 2, !mcsema_real_eip !28
  %97 = and i32 %96, 16, !mcsema_real_eip !28
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !28
  store i1 %98, i1* %AF, !mcsema_real_eip !28
  %99 = trunc i32 %94 to i8, !mcsema_real_eip !28
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !28
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !28
  %102 = xor i1 %101, true, !mcsema_real_eip !28
  store i1 %102, i1* %PF, !mcsema_real_eip !28
  %103 = icmp eq i32 %94, 0, !mcsema_real_eip !28
  store i1 %103, i1* %ZF, !mcsema_real_eip !28
  %104 = lshr i32 %94, 31, !mcsema_real_eip !28
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !28
  store i1 %105, i1* %SF, !mcsema_real_eip !28
  %106 = icmp ult i32 %EAX_val.38, 2, !mcsema_real_eip !28
  store i1 %106, i1* %CF, !mcsema_real_eip !28
  %107 = xor i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %108 = and i32 %107, %95, !mcsema_real_eip !28
  %109 = lshr i32 %108, 31, !mcsema_real_eip !28
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !28
  store i1 %110, i1* %OF, !mcsema_real_eip !28
  %111 = zext i32 %94 to i64, !mcsema_real_eip !28
  store i64 %111, i64* %XAX, !mcsema_real_eip !28
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -20
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %EAX_val.41 = load i32, i32* %EAX.25, !mcsema_real_eip !29
  %112 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !29
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.41, i32* %113, !mcsema_real_eip !29
  %114 = load i1, i1* %ZF, !mcsema_real_eip !30
  br i1 %114, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !30

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !31

block_0x1bb:                                      ; preds = %block_0x35
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %115 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !32
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !32
  %117 = load i32, i32* %116, !mcsema_real_eip !32
  %118 = zext i32 %117 to i64, !mcsema_real_eip !32
  store i64 %118, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.44 = load i32, i32* %EAX.25, !mcsema_real_eip !33
  %119 = add i32 2, %EAX_val.44, !mcsema_real_eip !33
  %120 = xor i32 %119, %EAX_val.44, !mcsema_real_eip !33
  %121 = xor i32 %120, 2, !mcsema_real_eip !33
  %122 = and i32 %121, 16, !mcsema_real_eip !33
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !33
  store i1 %123, i1* %AF, !mcsema_real_eip !33
  %124 = lshr i32 %119, 31, !mcsema_real_eip !33
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !33
  store i1 %125, i1* %SF, !mcsema_real_eip !33
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !33
  store i1 %126, i1* %ZF, !mcsema_real_eip !33
  %127 = xor i32 %EAX_val.44, 2, !mcsema_real_eip !33
  %128 = xor i32 %127, -1, !mcsema_real_eip !33
  %129 = and i32 %128, %120, !mcsema_real_eip !33
  %130 = lshr i32 %129, 31, !mcsema_real_eip !33
  %131 = and i32 %130, 1, !mcsema_real_eip !33
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !33
  store i1 %132, i1* %OF, !mcsema_real_eip !33
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !33
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !33
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !33
  %136 = xor i1 %135, true, !mcsema_real_eip !33
  store i1 %136, i1* %PF, !mcsema_real_eip !33
  %137 = icmp ult i32 %119, %EAX_val.44, !mcsema_real_eip !33
  store i1 %137, i1* %CF, !mcsema_real_eip !33
  %138 = zext i32 %119 to i64, !mcsema_real_eip !33
  store i64 %138, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.47 = load i32, i32* %EAX.25, !mcsema_real_eip !34
  store i32 %EAX_val.47, i32* %116, !mcsema_real_eip !34
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x49:                                       ; preds = %block_0x44
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -12
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %139 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !36
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !36
  %141 = load i32, i32* %140, !mcsema_real_eip !36
  %142 = zext i32 %141 to i64, !mcsema_real_eip !36
  store i64 %142, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.25, !mcsema_real_eip !37
  %143 = sub i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %144 = xor i32 %143, %EAX_val.50, !mcsema_real_eip !37
  %145 = xor i32 %144, 4, !mcsema_real_eip !37
  %146 = and i32 %145, 16, !mcsema_real_eip !37
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !37
  store i1 %147, i1* %AF, !mcsema_real_eip !37
  %148 = trunc i32 %143 to i8, !mcsema_real_eip !37
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !37
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !37
  %151 = xor i1 %150, true, !mcsema_real_eip !37
  store i1 %151, i1* %PF, !mcsema_real_eip !37
  %152 = icmp eq i32 %143, 0, !mcsema_real_eip !37
  store i1 %152, i1* %ZF, !mcsema_real_eip !37
  %153 = lshr i32 %143, 31, !mcsema_real_eip !37
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !37
  store i1 %154, i1* %SF, !mcsema_real_eip !37
  %155 = icmp ult i32 %EAX_val.50, 4, !mcsema_real_eip !37
  store i1 %155, i1* %CF, !mcsema_real_eip !37
  %156 = xor i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %157 = and i32 %156, %144, !mcsema_real_eip !37
  %158 = lshr i32 %157, 31, !mcsema_real_eip !37
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !37
  store i1 %159, i1* %OF, !mcsema_real_eip !37
  %160 = zext i32 %143 to i64, !mcsema_real_eip !37
  store i64 %160, i64* %XAX, !mcsema_real_eip !37
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %EAX_val.53 = load i32, i32* %EAX.25, !mcsema_real_eip !38
  %161 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !38
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.53, i32* %162, !mcsema_real_eip !38
  %163 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %163, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !39

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !40

block_0x1c9:                                      ; preds = %block_0x49
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %164 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !41
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !41
  %166 = load i32, i32* %165, !mcsema_real_eip !41
  %167 = zext i32 %166 to i64, !mcsema_real_eip !41
  store i64 %167, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.56 = load i32, i32* %EAX.25, !mcsema_real_eip !42
  %168 = add i32 4, %EAX_val.56, !mcsema_real_eip !42
  %169 = xor i32 %168, %EAX_val.56, !mcsema_real_eip !42
  %170 = xor i32 %169, 4, !mcsema_real_eip !42
  %171 = and i32 %170, 16, !mcsema_real_eip !42
  %172 = icmp ne i32 %171, 0, !mcsema_real_eip !42
  store i1 %172, i1* %AF, !mcsema_real_eip !42
  %173 = lshr i32 %168, 31, !mcsema_real_eip !42
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !42
  store i1 %174, i1* %SF, !mcsema_real_eip !42
  %175 = icmp eq i32 %168, 0, !mcsema_real_eip !42
  store i1 %175, i1* %ZF, !mcsema_real_eip !42
  %176 = xor i32 %EAX_val.56, 4, !mcsema_real_eip !42
  %177 = xor i32 %176, -1, !mcsema_real_eip !42
  %178 = and i32 %177, %169, !mcsema_real_eip !42
  %179 = lshr i32 %178, 31, !mcsema_real_eip !42
  %180 = and i32 %179, 1, !mcsema_real_eip !42
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !42
  store i1 %181, i1* %OF, !mcsema_real_eip !42
  %182 = trunc i32 %168 to i8, !mcsema_real_eip !42
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !42
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !42
  %185 = xor i1 %184, true, !mcsema_real_eip !42
  store i1 %185, i1* %PF, !mcsema_real_eip !42
  %186 = icmp ult i32 %168, %EAX_val.56, !mcsema_real_eip !42
  store i1 %186, i1* %CF, !mcsema_real_eip !42
  %187 = zext i32 %168 to i64, !mcsema_real_eip !42
  store i64 %187, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.25, !mcsema_real_eip !43
  store i32 %EAX_val.59, i32* %165, !mcsema_real_eip !43
  br label %block_0x2c8, !mcsema_real_eip !44

block_0x5d:                                       ; preds = %block_0x58
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -12
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %188 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !45
  %189 = inttoptr i64 %188 to i32*, !mcsema_real_eip !45
  %190 = load i32, i32* %189, !mcsema_real_eip !45
  %191 = zext i32 %190 to i64, !mcsema_real_eip !45
  store i64 %191, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.62 = load i32, i32* %EAX.25, !mcsema_real_eip !46
  %192 = sub i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %193 = xor i32 %192, %EAX_val.62, !mcsema_real_eip !46
  %194 = xor i32 %193, 6, !mcsema_real_eip !46
  %195 = and i32 %194, 16, !mcsema_real_eip !46
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !46
  store i1 %196, i1* %AF, !mcsema_real_eip !46
  %197 = trunc i32 %192 to i8, !mcsema_real_eip !46
  %198 = call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !46
  %199 = trunc i8 %198 to i1, !mcsema_real_eip !46
  %200 = xor i1 %199, true, !mcsema_real_eip !46
  store i1 %200, i1* %PF, !mcsema_real_eip !46
  %201 = icmp eq i32 %192, 0, !mcsema_real_eip !46
  store i1 %201, i1* %ZF, !mcsema_real_eip !46
  %202 = lshr i32 %192, 31, !mcsema_real_eip !46
  %203 = trunc i32 %202 to i1, !mcsema_real_eip !46
  store i1 %203, i1* %SF, !mcsema_real_eip !46
  %204 = icmp ult i32 %EAX_val.62, 6, !mcsema_real_eip !46
  store i1 %204, i1* %CF, !mcsema_real_eip !46
  %205 = xor i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %206 = and i32 %205, %193, !mcsema_real_eip !46
  %207 = lshr i32 %206, 31, !mcsema_real_eip !46
  %208 = trunc i32 %207 to i1, !mcsema_real_eip !46
  store i1 %208, i1* %OF, !mcsema_real_eip !46
  %209 = zext i32 %192 to i64, !mcsema_real_eip !46
  store i64 %209, i64* %XAX, !mcsema_real_eip !46
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -28
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %EAX_val.65 = load i32, i32* %EAX.25, !mcsema_real_eip !47
  %210 = ptrtoint i64* %_allin_new_bt_70 to i64, !mcsema_real_eip !47
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.65, i32* %211, !mcsema_real_eip !47
  %212 = load i1, i1* %ZF, !mcsema_real_eip !48
  br i1 %212, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !48

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !49

block_0x1d7:                                      ; preds = %block_0x5d
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %213 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !50
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !50
  %215 = load i32, i32* %214, !mcsema_real_eip !50
  %216 = zext i32 %215 to i64, !mcsema_real_eip !50
  store i64 %216, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.68 = load i32, i32* %EAX.25, !mcsema_real_eip !51
  %217 = add i32 6, %EAX_val.68, !mcsema_real_eip !51
  %218 = xor i32 %217, %EAX_val.68, !mcsema_real_eip !51
  %219 = xor i32 %218, 6, !mcsema_real_eip !51
  %220 = and i32 %219, 16, !mcsema_real_eip !51
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !51
  store i1 %221, i1* %AF, !mcsema_real_eip !51
  %222 = lshr i32 %217, 31, !mcsema_real_eip !51
  %223 = trunc i32 %222 to i1, !mcsema_real_eip !51
  store i1 %223, i1* %SF, !mcsema_real_eip !51
  %224 = icmp eq i32 %217, 0, !mcsema_real_eip !51
  store i1 %224, i1* %ZF, !mcsema_real_eip !51
  %225 = xor i32 %EAX_val.68, 6, !mcsema_real_eip !51
  %226 = xor i32 %225, -1, !mcsema_real_eip !51
  %227 = and i32 %226, %218, !mcsema_real_eip !51
  %228 = lshr i32 %227, 31, !mcsema_real_eip !51
  %229 = and i32 %228, 1, !mcsema_real_eip !51
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !51
  store i1 %230, i1* %OF, !mcsema_real_eip !51
  %231 = trunc i32 %217 to i8, !mcsema_real_eip !51
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !51
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !51
  %234 = xor i1 %233, true, !mcsema_real_eip !51
  store i1 %234, i1* %PF, !mcsema_real_eip !51
  %235 = icmp ult i32 %217, %EAX_val.68, !mcsema_real_eip !51
  store i1 %235, i1* %CF, !mcsema_real_eip !51
  %236 = zext i32 %217 to i64, !mcsema_real_eip !51
  store i64 %236, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.71 = load i32, i32* %EAX.25, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %214, !mcsema_real_eip !52
  br label %block_0x2c8, !mcsema_real_eip !53

block_0x71:                                       ; preds = %block_0x6c
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -12
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %237 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !54
  %238 = inttoptr i64 %237 to i32*, !mcsema_real_eip !54
  %239 = load i32, i32* %238, !mcsema_real_eip !54
  %240 = zext i32 %239 to i64, !mcsema_real_eip !54
  store i64 %240, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.25, !mcsema_real_eip !55
  %241 = sub i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %242 = xor i32 %241, %EAX_val.74, !mcsema_real_eip !55
  %243 = xor i32 %242, 12, !mcsema_real_eip !55
  %244 = and i32 %243, 16, !mcsema_real_eip !55
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !55
  store i1 %245, i1* %AF, !mcsema_real_eip !55
  %246 = trunc i32 %241 to i8, !mcsema_real_eip !55
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !55
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !55
  %249 = xor i1 %248, true, !mcsema_real_eip !55
  store i1 %249, i1* %PF, !mcsema_real_eip !55
  %250 = icmp eq i32 %241, 0, !mcsema_real_eip !55
  store i1 %250, i1* %ZF, !mcsema_real_eip !55
  %251 = lshr i32 %241, 31, !mcsema_real_eip !55
  %252 = trunc i32 %251 to i1, !mcsema_real_eip !55
  store i1 %252, i1* %SF, !mcsema_real_eip !55
  %253 = icmp ult i32 %EAX_val.74, 12, !mcsema_real_eip !55
  store i1 %253, i1* %CF, !mcsema_real_eip !55
  %254 = xor i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %255 = and i32 %254, %242, !mcsema_real_eip !55
  %256 = lshr i32 %255, 31, !mcsema_real_eip !55
  %257 = trunc i32 %256 to i1, !mcsema_real_eip !55
  store i1 %257, i1* %OF, !mcsema_real_eip !55
  %258 = zext i32 %241 to i64, !mcsema_real_eip !55
  store i64 %258, i64* %XAX, !mcsema_real_eip !55
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -32
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %EAX_val.77 = load i32, i32* %EAX.25, !mcsema_real_eip !56
  %259 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !56
  %260 = inttoptr i64 %259 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.77, i32* %260, !mcsema_real_eip !56
  %261 = load i1, i1* %ZF, !mcsema_real_eip !57
  br i1 %261, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !57

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !58

block_0x1e5:                                      ; preds = %block_0x71
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -8
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %262 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !59
  %263 = inttoptr i64 %262 to i32*, !mcsema_real_eip !59
  %264 = load i32, i32* %263, !mcsema_real_eip !59
  %265 = zext i32 %264 to i64, !mcsema_real_eip !59
  store i64 %265, i64* %XAX, !mcsema_real_eip !59
  %EAX_val.80 = load i32, i32* %EAX.25, !mcsema_real_eip !60
  %266 = add i32 12, %EAX_val.80, !mcsema_real_eip !60
  %267 = xor i32 %266, %EAX_val.80, !mcsema_real_eip !60
  %268 = xor i32 %267, 12, !mcsema_real_eip !60
  %269 = and i32 %268, 16, !mcsema_real_eip !60
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !60
  store i1 %270, i1* %AF, !mcsema_real_eip !60
  %271 = lshr i32 %266, 31, !mcsema_real_eip !60
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !60
  store i1 %272, i1* %SF, !mcsema_real_eip !60
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !60
  store i1 %273, i1* %ZF, !mcsema_real_eip !60
  %274 = xor i32 %EAX_val.80, 12, !mcsema_real_eip !60
  %275 = xor i32 %274, -1, !mcsema_real_eip !60
  %276 = and i32 %275, %267, !mcsema_real_eip !60
  %277 = lshr i32 %276, 31, !mcsema_real_eip !60
  %278 = and i32 %277, 1, !mcsema_real_eip !60
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !60
  store i1 %279, i1* %OF, !mcsema_real_eip !60
  %280 = trunc i32 %266 to i8, !mcsema_real_eip !60
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !60
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !60
  %283 = xor i1 %282, true, !mcsema_real_eip !60
  store i1 %283, i1* %PF, !mcsema_real_eip !60
  %284 = icmp ult i32 %266, %EAX_val.80, !mcsema_real_eip !60
  store i1 %284, i1* %CF, !mcsema_real_eip !60
  %285 = zext i32 %266 to i64, !mcsema_real_eip !60
  store i64 %285, i64* %XAX, !mcsema_real_eip !60
  %EAX_val.83 = load i32, i32* %EAX.25, !mcsema_real_eip !61
  store i32 %EAX_val.83, i32* %263, !mcsema_real_eip !61
  br label %block_0x2c8, !mcsema_real_eip !62

block_0x85:                                       ; preds = %block_0x80
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -12
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %286 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !63
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !63
  %288 = load i32, i32* %287, !mcsema_real_eip !63
  %289 = zext i32 %288 to i64, !mcsema_real_eip !63
  store i64 %289, i64* %XAX, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.25, !mcsema_real_eip !64
  %290 = sub i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %291 = xor i32 %290, %EAX_val.86, !mcsema_real_eip !64
  %292 = xor i32 %291, 13, !mcsema_real_eip !64
  %293 = and i32 %292, 16, !mcsema_real_eip !64
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !64
  store i1 %294, i1* %AF, !mcsema_real_eip !64
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !64
  %296 = call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !64
  %297 = trunc i8 %296 to i1, !mcsema_real_eip !64
  %298 = xor i1 %297, true, !mcsema_real_eip !64
  store i1 %298, i1* %PF, !mcsema_real_eip !64
  %299 = icmp eq i32 %290, 0, !mcsema_real_eip !64
  store i1 %299, i1* %ZF, !mcsema_real_eip !64
  %300 = lshr i32 %290, 31, !mcsema_real_eip !64
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !64
  store i1 %301, i1* %SF, !mcsema_real_eip !64
  %302 = icmp ult i32 %EAX_val.86, 13, !mcsema_real_eip !64
  store i1 %302, i1* %CF, !mcsema_real_eip !64
  %303 = xor i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %304 = and i32 %303, %291, !mcsema_real_eip !64
  %305 = lshr i32 %304, 31, !mcsema_real_eip !64
  %306 = trunc i32 %305 to i1, !mcsema_real_eip !64
  store i1 %306, i1* %OF, !mcsema_real_eip !64
  %307 = zext i32 %290 to i64, !mcsema_real_eip !64
  store i64 %307, i64* %XAX, !mcsema_real_eip !64
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -36
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %EAX_val.89 = load i32, i32* %EAX.25, !mcsema_real_eip !65
  %308 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !65
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !65
  store i32 %EAX_val.89, i32* %309, !mcsema_real_eip !65
  %310 = load i1, i1* %ZF, !mcsema_real_eip !66
  br i1 %310, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !66

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !67

block_0x1f3:                                      ; preds = %block_0x85
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %311 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !68
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !68
  %313 = load i32, i32* %312, !mcsema_real_eip !68
  %314 = zext i32 %313 to i64, !mcsema_real_eip !68
  store i64 %314, i64* %XAX, !mcsema_real_eip !68
  %EAX_val.92 = load i32, i32* %EAX.25, !mcsema_real_eip !69
  %315 = add i32 13, %EAX_val.92, !mcsema_real_eip !69
  %316 = xor i32 %315, %EAX_val.92, !mcsema_real_eip !69
  %317 = xor i32 %316, 13, !mcsema_real_eip !69
  %318 = and i32 %317, 16, !mcsema_real_eip !69
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !69
  store i1 %319, i1* %AF, !mcsema_real_eip !69
  %320 = lshr i32 %315, 31, !mcsema_real_eip !69
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !69
  store i1 %321, i1* %SF, !mcsema_real_eip !69
  %322 = icmp eq i32 %315, 0, !mcsema_real_eip !69
  store i1 %322, i1* %ZF, !mcsema_real_eip !69
  %323 = xor i32 %EAX_val.92, 13, !mcsema_real_eip !69
  %324 = xor i32 %323, -1, !mcsema_real_eip !69
  %325 = and i32 %324, %316, !mcsema_real_eip !69
  %326 = lshr i32 %325, 31, !mcsema_real_eip !69
  %327 = and i32 %326, 1, !mcsema_real_eip !69
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !69
  store i1 %328, i1* %OF, !mcsema_real_eip !69
  %329 = trunc i32 %315 to i8, !mcsema_real_eip !69
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !69
  %331 = trunc i8 %330 to i1, !mcsema_real_eip !69
  %332 = xor i1 %331, true, !mcsema_real_eip !69
  store i1 %332, i1* %PF, !mcsema_real_eip !69
  %333 = icmp ult i32 %315, %EAX_val.92, !mcsema_real_eip !69
  store i1 %333, i1* %CF, !mcsema_real_eip !69
  %334 = zext i32 %315 to i64, !mcsema_real_eip !69
  store i64 %334, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.95 = load i32, i32* %EAX.25, !mcsema_real_eip !70
  store i32 %EAX_val.95, i32* %312, !mcsema_real_eip !70
  br label %block_0x2c8, !mcsema_real_eip !71

block_0x99:                                       ; preds = %block_0x94
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -12
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %335 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !72
  %336 = inttoptr i64 %335 to i32*, !mcsema_real_eip !72
  %337 = load i32, i32* %336, !mcsema_real_eip !72
  %338 = zext i32 %337 to i64, !mcsema_real_eip !72
  store i64 %338, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.98 = load i32, i32* %EAX.25, !mcsema_real_eip !73
  %339 = sub i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %340 = xor i32 %339, %EAX_val.98, !mcsema_real_eip !73
  %341 = xor i32 %340, 19, !mcsema_real_eip !73
  %342 = and i32 %341, 16, !mcsema_real_eip !73
  %343 = icmp ne i32 %342, 0, !mcsema_real_eip !73
  store i1 %343, i1* %AF, !mcsema_real_eip !73
  %344 = trunc i32 %339 to i8, !mcsema_real_eip !73
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !73
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !73
  %347 = xor i1 %346, true, !mcsema_real_eip !73
  store i1 %347, i1* %PF, !mcsema_real_eip !73
  %348 = icmp eq i32 %339, 0, !mcsema_real_eip !73
  store i1 %348, i1* %ZF, !mcsema_real_eip !73
  %349 = lshr i32 %339, 31, !mcsema_real_eip !73
  %350 = trunc i32 %349 to i1, !mcsema_real_eip !73
  store i1 %350, i1* %SF, !mcsema_real_eip !73
  %351 = icmp ult i32 %EAX_val.98, 19, !mcsema_real_eip !73
  store i1 %351, i1* %CF, !mcsema_real_eip !73
  %352 = xor i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %353 = and i32 %352, %340, !mcsema_real_eip !73
  %354 = lshr i32 %353, 31, !mcsema_real_eip !73
  %355 = trunc i32 %354 to i1, !mcsema_real_eip !73
  store i1 %355, i1* %OF, !mcsema_real_eip !73
  %356 = zext i32 %339 to i64, !mcsema_real_eip !73
  store i64 %356, i64* %XAX, !mcsema_real_eip !73
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -40
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %EAX_val.101 = load i32, i32* %EAX.25, !mcsema_real_eip !74
  %357 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !74
  %358 = inttoptr i64 %357 to i32*, !mcsema_real_eip !74
  store i32 %EAX_val.101, i32* %358, !mcsema_real_eip !74
  %359 = load i1, i1* %ZF, !mcsema_real_eip !75
  br i1 %359, label %block_0x201, label %block_0xa8, !mcsema_real_eip !75

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !76

block_0x201:                                      ; preds = %block_0x99
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %360 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !77
  %361 = inttoptr i64 %360 to i32*, !mcsema_real_eip !77
  %362 = load i32, i32* %361, !mcsema_real_eip !77
  %363 = zext i32 %362 to i64, !mcsema_real_eip !77
  store i64 %363, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.104 = load i32, i32* %EAX.25, !mcsema_real_eip !78
  %364 = add i32 19, %EAX_val.104, !mcsema_real_eip !78
  %365 = xor i32 %364, %EAX_val.104, !mcsema_real_eip !78
  %366 = xor i32 %365, 19, !mcsema_real_eip !78
  %367 = and i32 %366, 16, !mcsema_real_eip !78
  %368 = icmp ne i32 %367, 0, !mcsema_real_eip !78
  store i1 %368, i1* %AF, !mcsema_real_eip !78
  %369 = lshr i32 %364, 31, !mcsema_real_eip !78
  %370 = trunc i32 %369 to i1, !mcsema_real_eip !78
  store i1 %370, i1* %SF, !mcsema_real_eip !78
  %371 = icmp eq i32 %364, 0, !mcsema_real_eip !78
  store i1 %371, i1* %ZF, !mcsema_real_eip !78
  %372 = xor i32 %EAX_val.104, 19, !mcsema_real_eip !78
  %373 = xor i32 %372, -1, !mcsema_real_eip !78
  %374 = and i32 %373, %365, !mcsema_real_eip !78
  %375 = lshr i32 %374, 31, !mcsema_real_eip !78
  %376 = and i32 %375, 1, !mcsema_real_eip !78
  %377 = trunc i32 %376 to i1, !mcsema_real_eip !78
  store i1 %377, i1* %OF, !mcsema_real_eip !78
  %378 = trunc i32 %364 to i8, !mcsema_real_eip !78
  %379 = call i8 @llvm.ctpop.i8(i8 %378), !mcsema_real_eip !78
  %380 = trunc i8 %379 to i1, !mcsema_real_eip !78
  %381 = xor i1 %380, true, !mcsema_real_eip !78
  store i1 %381, i1* %PF, !mcsema_real_eip !78
  %382 = icmp ult i32 %364, %EAX_val.104, !mcsema_real_eip !78
  store i1 %382, i1* %CF, !mcsema_real_eip !78
  %383 = zext i32 %364 to i64, !mcsema_real_eip !78
  store i64 %383, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.107 = load i32, i32* %EAX.25, !mcsema_real_eip !79
  store i32 %EAX_val.107, i32* %361, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xad:                                       ; preds = %block_0xa8
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -12
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %384 = ptrtoint i64* %_allin_new_bt_115 to i64, !mcsema_real_eip !81
  %385 = inttoptr i64 %384 to i32*, !mcsema_real_eip !81
  %386 = load i32, i32* %385, !mcsema_real_eip !81
  %387 = zext i32 %386 to i64, !mcsema_real_eip !81
  store i64 %387, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.110 = load i32, i32* %EAX.25, !mcsema_real_eip !82
  %388 = sub i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %389 = xor i32 %388, %EAX_val.110, !mcsema_real_eip !82
  %390 = xor i32 %389, 255, !mcsema_real_eip !82
  %391 = and i32 %390, 16, !mcsema_real_eip !82
  %392 = icmp ne i32 %391, 0, !mcsema_real_eip !82
  store i1 %392, i1* %AF, !mcsema_real_eip !82
  %393 = trunc i32 %388 to i8, !mcsema_real_eip !82
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !82
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !82
  %396 = xor i1 %395, true, !mcsema_real_eip !82
  store i1 %396, i1* %PF, !mcsema_real_eip !82
  %397 = icmp eq i32 %388, 0, !mcsema_real_eip !82
  store i1 %397, i1* %ZF, !mcsema_real_eip !82
  %398 = lshr i32 %388, 31, !mcsema_real_eip !82
  %399 = trunc i32 %398 to i1, !mcsema_real_eip !82
  store i1 %399, i1* %SF, !mcsema_real_eip !82
  %400 = icmp ult i32 %EAX_val.110, 255, !mcsema_real_eip !82
  store i1 %400, i1* %CF, !mcsema_real_eip !82
  %401 = xor i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %402 = and i32 %401, %389, !mcsema_real_eip !82
  %403 = lshr i32 %402, 31, !mcsema_real_eip !82
  %404 = trunc i32 %403 to i1, !mcsema_real_eip !82
  store i1 %404, i1* %OF, !mcsema_real_eip !82
  %405 = zext i32 %388 to i64, !mcsema_real_eip !82
  store i64 %405, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -44
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %EAX_val.113 = load i32, i32* %EAX.25, !mcsema_real_eip !83
  %406 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !83
  %407 = inttoptr i64 %406 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.113, i32* %407, !mcsema_real_eip !83
  %408 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %408, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !84

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !85

block_0x20f:                                      ; preds = %block_0xad
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %409 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !86
  %410 = inttoptr i64 %409 to i32*, !mcsema_real_eip !86
  %411 = load i32, i32* %410, !mcsema_real_eip !86
  %412 = zext i32 %411 to i64, !mcsema_real_eip !86
  store i64 %412, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.116 = load i32, i32* %EAX.25, !mcsema_real_eip !87
  %413 = add i32 255, %EAX_val.116, !mcsema_real_eip !87
  %414 = xor i32 %413, %EAX_val.116, !mcsema_real_eip !87
  %415 = xor i32 %414, 255, !mcsema_real_eip !87
  %416 = and i32 %415, 16, !mcsema_real_eip !87
  %417 = icmp ne i32 %416, 0, !mcsema_real_eip !87
  store i1 %417, i1* %AF, !mcsema_real_eip !87
  %418 = lshr i32 %413, 31, !mcsema_real_eip !87
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !87
  store i1 %419, i1* %SF, !mcsema_real_eip !87
  %420 = icmp eq i32 %413, 0, !mcsema_real_eip !87
  store i1 %420, i1* %ZF, !mcsema_real_eip !87
  %421 = xor i32 %EAX_val.116, 255, !mcsema_real_eip !87
  %422 = xor i32 %421, -1, !mcsema_real_eip !87
  %423 = and i32 %422, %414, !mcsema_real_eip !87
  %424 = lshr i32 %423, 31, !mcsema_real_eip !87
  %425 = and i32 %424, 1, !mcsema_real_eip !87
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !87
  store i1 %426, i1* %OF, !mcsema_real_eip !87
  %427 = trunc i32 %413 to i8, !mcsema_real_eip !87
  %428 = call i8 @llvm.ctpop.i8(i8 %427), !mcsema_real_eip !87
  %429 = trunc i8 %428 to i1, !mcsema_real_eip !87
  %430 = xor i1 %429, true, !mcsema_real_eip !87
  store i1 %430, i1* %PF, !mcsema_real_eip !87
  %431 = icmp ult i32 %413, %EAX_val.116, !mcsema_real_eip !87
  store i1 %431, i1* %CF, !mcsema_real_eip !87
  %432 = zext i32 %413 to i64, !mcsema_real_eip !87
  store i64 %432, i64* %XAX, !mcsema_real_eip !87
  %EAX_val.119 = load i32, i32* %EAX.25, !mcsema_real_eip !88
  store i32 %EAX_val.119, i32* %410, !mcsema_real_eip !88
  br label %block_0x2c8, !mcsema_real_eip !89

block_0xc3:                                       ; preds = %block_0xbe
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -12
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %433 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !90
  %434 = inttoptr i64 %433 to i32*, !mcsema_real_eip !90
  %435 = load i32, i32* %434, !mcsema_real_eip !90
  %436 = zext i32 %435 to i64, !mcsema_real_eip !90
  store i64 %436, i64* %XAX, !mcsema_real_eip !90
  %EAX_val.122 = load i32, i32* %EAX.25, !mcsema_real_eip !91
  %437 = sub i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %438 = xor i32 %437, %EAX_val.122, !mcsema_real_eip !91
  %439 = xor i32 %438, 74633, !mcsema_real_eip !91
  %440 = and i32 %439, 16, !mcsema_real_eip !91
  %441 = icmp ne i32 %440, 0, !mcsema_real_eip !91
  store i1 %441, i1* %AF, !mcsema_real_eip !91
  %442 = trunc i32 %437 to i8, !mcsema_real_eip !91
  %443 = call i8 @llvm.ctpop.i8(i8 %442), !mcsema_real_eip !91
  %444 = trunc i8 %443 to i1, !mcsema_real_eip !91
  %445 = xor i1 %444, true, !mcsema_real_eip !91
  store i1 %445, i1* %PF, !mcsema_real_eip !91
  %446 = icmp eq i32 %437, 0, !mcsema_real_eip !91
  store i1 %446, i1* %ZF, !mcsema_real_eip !91
  %447 = lshr i32 %437, 31, !mcsema_real_eip !91
  %448 = trunc i32 %447 to i1, !mcsema_real_eip !91
  store i1 %448, i1* %SF, !mcsema_real_eip !91
  %449 = icmp ult i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  store i1 %449, i1* %CF, !mcsema_real_eip !91
  %450 = xor i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %451 = and i32 %450, %438, !mcsema_real_eip !91
  %452 = lshr i32 %451, 31, !mcsema_real_eip !91
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !91
  store i1 %453, i1* %OF, !mcsema_real_eip !91
  %454 = zext i32 %437 to i64, !mcsema_real_eip !91
  store i64 %454, i64* %XAX, !mcsema_real_eip !91
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -48
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %EAX_val.125 = load i32, i32* %EAX.25, !mcsema_real_eip !92
  %455 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !92
  %456 = inttoptr i64 %455 to i32*, !mcsema_real_eip !92
  store i32 %EAX_val.125, i32* %456, !mcsema_real_eip !92
  %457 = load i1, i1* %ZF, !mcsema_real_eip !93
  br i1 %457, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !93

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !94

block_0x21f:                                      ; preds = %block_0xc3
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %458 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !95
  %459 = inttoptr i64 %458 to i32*, !mcsema_real_eip !95
  %460 = load i32, i32* %459, !mcsema_real_eip !95
  %461 = zext i32 %460 to i64, !mcsema_real_eip !95
  store i64 %461, i64* %XAX, !mcsema_real_eip !95
  %EAX_val.128 = load i32, i32* %EAX.25, !mcsema_real_eip !96
  %462 = add i32 74633, %EAX_val.128, !mcsema_real_eip !96
  %463 = xor i32 %462, %EAX_val.128, !mcsema_real_eip !96
  %464 = xor i32 %463, 74633, !mcsema_real_eip !96
  %465 = and i32 %464, 16, !mcsema_real_eip !96
  %466 = icmp ne i32 %465, 0, !mcsema_real_eip !96
  store i1 %466, i1* %AF, !mcsema_real_eip !96
  %467 = lshr i32 %462, 31, !mcsema_real_eip !96
  %468 = trunc i32 %467 to i1, !mcsema_real_eip !96
  store i1 %468, i1* %SF, !mcsema_real_eip !96
  %469 = icmp eq i32 %462, 0, !mcsema_real_eip !96
  store i1 %469, i1* %ZF, !mcsema_real_eip !96
  %470 = xor i32 %EAX_val.128, 74633, !mcsema_real_eip !96
  %471 = xor i32 %470, -1, !mcsema_real_eip !96
  %472 = and i32 %471, %463, !mcsema_real_eip !96
  %473 = lshr i32 %472, 31, !mcsema_real_eip !96
  %474 = and i32 %473, 1, !mcsema_real_eip !96
  %475 = trunc i32 %474 to i1, !mcsema_real_eip !96
  store i1 %475, i1* %OF, !mcsema_real_eip !96
  %476 = trunc i32 %462 to i8, !mcsema_real_eip !96
  %477 = call i8 @llvm.ctpop.i8(i8 %476), !mcsema_real_eip !96
  %478 = trunc i8 %477 to i1, !mcsema_real_eip !96
  %479 = xor i1 %478, true, !mcsema_real_eip !96
  store i1 %479, i1* %PF, !mcsema_real_eip !96
  %480 = icmp ult i32 %462, %EAX_val.128, !mcsema_real_eip !96
  store i1 %480, i1* %CF, !mcsema_real_eip !96
  %481 = zext i32 %462 to i64, !mcsema_real_eip !96
  store i64 %481, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.131 = load i32, i32* %EAX.25, !mcsema_real_eip !97
  store i32 %EAX_val.131, i32* %459, !mcsema_real_eip !97
  br label %block_0x2c8, !mcsema_real_eip !98

block_0xd9:                                       ; preds = %block_0xd4
  %_load_rbp_ptr_137 = load i8*, i8** %_RBP_ptr_
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -12
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %482 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !99
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !99
  %484 = load i32, i32* %483, !mcsema_real_eip !99
  %485 = zext i32 %484 to i64, !mcsema_real_eip !99
  store i64 %485, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.134 = load i32, i32* %EAX.25, !mcsema_real_eip !100
  %486 = sub i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %487 = xor i32 %486, %EAX_val.134, !mcsema_real_eip !100
  %488 = xor i32 %487, 74634, !mcsema_real_eip !100
  %489 = and i32 %488, 16, !mcsema_real_eip !100
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !100
  store i1 %490, i1* %AF, !mcsema_real_eip !100
  %491 = trunc i32 %486 to i8, !mcsema_real_eip !100
  %492 = call i8 @llvm.ctpop.i8(i8 %491), !mcsema_real_eip !100
  %493 = trunc i8 %492 to i1, !mcsema_real_eip !100
  %494 = xor i1 %493, true, !mcsema_real_eip !100
  store i1 %494, i1* %PF, !mcsema_real_eip !100
  %495 = icmp eq i32 %486, 0, !mcsema_real_eip !100
  store i1 %495, i1* %ZF, !mcsema_real_eip !100
  %496 = lshr i32 %486, 31, !mcsema_real_eip !100
  %497 = trunc i32 %496 to i1, !mcsema_real_eip !100
  store i1 %497, i1* %SF, !mcsema_real_eip !100
  %498 = icmp ult i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  store i1 %498, i1* %CF, !mcsema_real_eip !100
  %499 = xor i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %500 = and i32 %499, %487, !mcsema_real_eip !100
  %501 = lshr i32 %500, 31, !mcsema_real_eip !100
  %502 = trunc i32 %501 to i1, !mcsema_real_eip !100
  store i1 %502, i1* %OF, !mcsema_real_eip !100
  %503 = zext i32 %486 to i64, !mcsema_real_eip !100
  store i64 %503, i64* %XAX, !mcsema_real_eip !100
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -52
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.137 = load i32, i32* %EAX.25, !mcsema_real_eip !101
  %504 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !101
  %505 = inttoptr i64 %504 to i32*, !mcsema_real_eip !101
  store i32 %EAX_val.137, i32* %505, !mcsema_real_eip !101
  %506 = load i1, i1* %ZF, !mcsema_real_eip !102
  br i1 %506, label %block_0x22f, label %block_0xea, !mcsema_real_eip !102

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !103

block_0x22f:                                      ; preds = %block_0xd9
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -8
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %507 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !104
  %508 = inttoptr i64 %507 to i32*, !mcsema_real_eip !104
  %509 = load i32, i32* %508, !mcsema_real_eip !104
  %510 = zext i32 %509 to i64, !mcsema_real_eip !104
  store i64 %510, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.140 = load i32, i32* %EAX.25, !mcsema_real_eip !105
  %511 = add i32 74634, %EAX_val.140, !mcsema_real_eip !105
  %512 = xor i32 %511, %EAX_val.140, !mcsema_real_eip !105
  %513 = xor i32 %512, 74634, !mcsema_real_eip !105
  %514 = and i32 %513, 16, !mcsema_real_eip !105
  %515 = icmp ne i32 %514, 0, !mcsema_real_eip !105
  store i1 %515, i1* %AF, !mcsema_real_eip !105
  %516 = lshr i32 %511, 31, !mcsema_real_eip !105
  %517 = trunc i32 %516 to i1, !mcsema_real_eip !105
  store i1 %517, i1* %SF, !mcsema_real_eip !105
  %518 = icmp eq i32 %511, 0, !mcsema_real_eip !105
  store i1 %518, i1* %ZF, !mcsema_real_eip !105
  %519 = xor i32 %EAX_val.140, 74634, !mcsema_real_eip !105
  %520 = xor i32 %519, -1, !mcsema_real_eip !105
  %521 = and i32 %520, %512, !mcsema_real_eip !105
  %522 = lshr i32 %521, 31, !mcsema_real_eip !105
  %523 = and i32 %522, 1, !mcsema_real_eip !105
  %524 = trunc i32 %523 to i1, !mcsema_real_eip !105
  store i1 %524, i1* %OF, !mcsema_real_eip !105
  %525 = trunc i32 %511 to i8, !mcsema_real_eip !105
  %526 = call i8 @llvm.ctpop.i8(i8 %525), !mcsema_real_eip !105
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !105
  %528 = xor i1 %527, true, !mcsema_real_eip !105
  store i1 %528, i1* %PF, !mcsema_real_eip !105
  %529 = icmp ult i32 %511, %EAX_val.140, !mcsema_real_eip !105
  store i1 %529, i1* %CF, !mcsema_real_eip !105
  %530 = zext i32 %511 to i64, !mcsema_real_eip !105
  store i64 %530, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.143 = load i32, i32* %EAX.25, !mcsema_real_eip !106
  store i32 %EAX_val.143, i32* %508, !mcsema_real_eip !106
  br label %block_0x2c8, !mcsema_real_eip !107

block_0xef:                                       ; preds = %block_0xea
  %_load_rbp_ptr_149 = load i8*, i8** %_RBP_ptr_
  %_new_gep_150 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -12
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %531 = ptrtoint i64* %_allin_new_bt_151 to i64, !mcsema_real_eip !108
  %532 = inttoptr i64 %531 to i32*, !mcsema_real_eip !108
  %533 = load i32, i32* %532, !mcsema_real_eip !108
  %534 = zext i32 %533 to i64, !mcsema_real_eip !108
  store i64 %534, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.146 = load i32, i32* %EAX.25, !mcsema_real_eip !109
  %535 = sub i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %536 = xor i32 %535, %EAX_val.146, !mcsema_real_eip !109
  %537 = xor i32 %536, 74635, !mcsema_real_eip !109
  %538 = and i32 %537, 16, !mcsema_real_eip !109
  %539 = icmp ne i32 %538, 0, !mcsema_real_eip !109
  store i1 %539, i1* %AF, !mcsema_real_eip !109
  %540 = trunc i32 %535 to i8, !mcsema_real_eip !109
  %541 = call i8 @llvm.ctpop.i8(i8 %540), !mcsema_real_eip !109
  %542 = trunc i8 %541 to i1, !mcsema_real_eip !109
  %543 = xor i1 %542, true, !mcsema_real_eip !109
  store i1 %543, i1* %PF, !mcsema_real_eip !109
  %544 = icmp eq i32 %535, 0, !mcsema_real_eip !109
  store i1 %544, i1* %ZF, !mcsema_real_eip !109
  %545 = lshr i32 %535, 31, !mcsema_real_eip !109
  %546 = trunc i32 %545 to i1, !mcsema_real_eip !109
  store i1 %546, i1* %SF, !mcsema_real_eip !109
  %547 = icmp ult i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  store i1 %547, i1* %CF, !mcsema_real_eip !109
  %548 = xor i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %549 = and i32 %548, %536, !mcsema_real_eip !109
  %550 = lshr i32 %549, 31, !mcsema_real_eip !109
  %551 = trunc i32 %550 to i1, !mcsema_real_eip !109
  store i1 %551, i1* %OF, !mcsema_real_eip !109
  %552 = zext i32 %535 to i64, !mcsema_real_eip !109
  store i64 %552, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -56
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %EAX_val.149 = load i32, i32* %EAX.25, !mcsema_real_eip !110
  %553 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !110
  %554 = inttoptr i64 %553 to i32*, !mcsema_real_eip !110
  store i32 %EAX_val.149, i32* %554, !mcsema_real_eip !110
  %555 = load i1, i1* %ZF, !mcsema_real_eip !111
  br i1 %555, label %block_0x23f, label %block_0x100, !mcsema_real_eip !111

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !112

block_0x23f:                                      ; preds = %block_0xef
  %_load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_
  %_new_gep_156 = getelementptr i8, i8* %_load_rbp_ptr_155, i64 -8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %556 = ptrtoint i64* %_allin_new_bt_157 to i64, !mcsema_real_eip !113
  %557 = inttoptr i64 %556 to i32*, !mcsema_real_eip !113
  %558 = load i32, i32* %557, !mcsema_real_eip !113
  %559 = zext i32 %558 to i64, !mcsema_real_eip !113
  store i64 %559, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.152 = load i32, i32* %EAX.25, !mcsema_real_eip !114
  %560 = add i32 74635, %EAX_val.152, !mcsema_real_eip !114
  %561 = xor i32 %560, %EAX_val.152, !mcsema_real_eip !114
  %562 = xor i32 %561, 74635, !mcsema_real_eip !114
  %563 = and i32 %562, 16, !mcsema_real_eip !114
  %564 = icmp ne i32 %563, 0, !mcsema_real_eip !114
  store i1 %564, i1* %AF, !mcsema_real_eip !114
  %565 = lshr i32 %560, 31, !mcsema_real_eip !114
  %566 = trunc i32 %565 to i1, !mcsema_real_eip !114
  store i1 %566, i1* %SF, !mcsema_real_eip !114
  %567 = icmp eq i32 %560, 0, !mcsema_real_eip !114
  store i1 %567, i1* %ZF, !mcsema_real_eip !114
  %568 = xor i32 %EAX_val.152, 74635, !mcsema_real_eip !114
  %569 = xor i32 %568, -1, !mcsema_real_eip !114
  %570 = and i32 %569, %561, !mcsema_real_eip !114
  %571 = lshr i32 %570, 31, !mcsema_real_eip !114
  %572 = and i32 %571, 1, !mcsema_real_eip !114
  %573 = trunc i32 %572 to i1, !mcsema_real_eip !114
  store i1 %573, i1* %OF, !mcsema_real_eip !114
  %574 = trunc i32 %560 to i8, !mcsema_real_eip !114
  %575 = call i8 @llvm.ctpop.i8(i8 %574), !mcsema_real_eip !114
  %576 = trunc i8 %575 to i1, !mcsema_real_eip !114
  %577 = xor i1 %576, true, !mcsema_real_eip !114
  store i1 %577, i1* %PF, !mcsema_real_eip !114
  %578 = icmp ult i32 %560, %EAX_val.152, !mcsema_real_eip !114
  store i1 %578, i1* %CF, !mcsema_real_eip !114
  %579 = zext i32 %560 to i64, !mcsema_real_eip !114
  store i64 %579, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.155 = load i32, i32* %EAX.25, !mcsema_real_eip !115
  store i32 %EAX_val.155, i32* %557, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x105:                                      ; preds = %block_0x100
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -12
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %580 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !117
  %581 = inttoptr i64 %580 to i32*, !mcsema_real_eip !117
  %582 = load i32, i32* %581, !mcsema_real_eip !117
  %583 = zext i32 %582 to i64, !mcsema_real_eip !117
  store i64 %583, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.158 = load i32, i32* %EAX.25, !mcsema_real_eip !118
  %584 = sub i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %585 = xor i32 %584, %EAX_val.158, !mcsema_real_eip !118
  %586 = xor i32 %585, 74636, !mcsema_real_eip !118
  %587 = and i32 %586, 16, !mcsema_real_eip !118
  %588 = icmp ne i32 %587, 0, !mcsema_real_eip !118
  store i1 %588, i1* %AF, !mcsema_real_eip !118
  %589 = trunc i32 %584 to i8, !mcsema_real_eip !118
  %590 = call i8 @llvm.ctpop.i8(i8 %589), !mcsema_real_eip !118
  %591 = trunc i8 %590 to i1, !mcsema_real_eip !118
  %592 = xor i1 %591, true, !mcsema_real_eip !118
  store i1 %592, i1* %PF, !mcsema_real_eip !118
  %593 = icmp eq i32 %584, 0, !mcsema_real_eip !118
  store i1 %593, i1* %ZF, !mcsema_real_eip !118
  %594 = lshr i32 %584, 31, !mcsema_real_eip !118
  %595 = trunc i32 %594 to i1, !mcsema_real_eip !118
  store i1 %595, i1* %SF, !mcsema_real_eip !118
  %596 = icmp ult i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  store i1 %596, i1* %CF, !mcsema_real_eip !118
  %597 = xor i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %598 = and i32 %597, %585, !mcsema_real_eip !118
  %599 = lshr i32 %598, 31, !mcsema_real_eip !118
  %600 = trunc i32 %599 to i1, !mcsema_real_eip !118
  store i1 %600, i1* %OF, !mcsema_real_eip !118
  %601 = zext i32 %584 to i64, !mcsema_real_eip !118
  store i64 %601, i64* %XAX, !mcsema_real_eip !118
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -60
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %EAX_val.161 = load i32, i32* %EAX.25, !mcsema_real_eip !119
  %602 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !119
  %603 = inttoptr i64 %602 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.161, i32* %603, !mcsema_real_eip !119
  %604 = load i1, i1* %ZF, !mcsema_real_eip !120
  br i1 %604, label %block_0x24f, label %block_0x116, !mcsema_real_eip !120

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !121

block_0x24f:                                      ; preds = %block_0x105
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -8
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %605 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !122
  %606 = inttoptr i64 %605 to i32*, !mcsema_real_eip !122
  %607 = load i32, i32* %606, !mcsema_real_eip !122
  %608 = zext i32 %607 to i64, !mcsema_real_eip !122
  store i64 %608, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.164 = load i32, i32* %EAX.25, !mcsema_real_eip !123
  %609 = add i32 74636, %EAX_val.164, !mcsema_real_eip !123
  %610 = xor i32 %609, %EAX_val.164, !mcsema_real_eip !123
  %611 = xor i32 %610, 74636, !mcsema_real_eip !123
  %612 = and i32 %611, 16, !mcsema_real_eip !123
  %613 = icmp ne i32 %612, 0, !mcsema_real_eip !123
  store i1 %613, i1* %AF, !mcsema_real_eip !123
  %614 = lshr i32 %609, 31, !mcsema_real_eip !123
  %615 = trunc i32 %614 to i1, !mcsema_real_eip !123
  store i1 %615, i1* %SF, !mcsema_real_eip !123
  %616 = icmp eq i32 %609, 0, !mcsema_real_eip !123
  store i1 %616, i1* %ZF, !mcsema_real_eip !123
  %617 = xor i32 %EAX_val.164, 74636, !mcsema_real_eip !123
  %618 = xor i32 %617, -1, !mcsema_real_eip !123
  %619 = and i32 %618, %610, !mcsema_real_eip !123
  %620 = lshr i32 %619, 31, !mcsema_real_eip !123
  %621 = and i32 %620, 1, !mcsema_real_eip !123
  %622 = trunc i32 %621 to i1, !mcsema_real_eip !123
  store i1 %622, i1* %OF, !mcsema_real_eip !123
  %623 = trunc i32 %609 to i8, !mcsema_real_eip !123
  %624 = call i8 @llvm.ctpop.i8(i8 %623), !mcsema_real_eip !123
  %625 = trunc i8 %624 to i1, !mcsema_real_eip !123
  %626 = xor i1 %625, true, !mcsema_real_eip !123
  store i1 %626, i1* %PF, !mcsema_real_eip !123
  %627 = icmp ult i32 %609, %EAX_val.164, !mcsema_real_eip !123
  store i1 %627, i1* %CF, !mcsema_real_eip !123
  %628 = zext i32 %609 to i64, !mcsema_real_eip !123
  store i64 %628, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.167 = load i32, i32* %EAX.25, !mcsema_real_eip !124
  store i32 %EAX_val.167, i32* %606, !mcsema_real_eip !124
  br label %block_0x2c8, !mcsema_real_eip !125

block_0x11b:                                      ; preds = %block_0x116
  %_load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -12
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %629 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !126
  %630 = inttoptr i64 %629 to i32*, !mcsema_real_eip !126
  %631 = load i32, i32* %630, !mcsema_real_eip !126
  %632 = zext i32 %631 to i64, !mcsema_real_eip !126
  store i64 %632, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.170 = load i32, i32* %EAX.25, !mcsema_real_eip !127
  %633 = sub i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %634 = xor i32 %633, %EAX_val.170, !mcsema_real_eip !127
  %635 = xor i32 %634, 74637, !mcsema_real_eip !127
  %636 = and i32 %635, 16, !mcsema_real_eip !127
  %637 = icmp ne i32 %636, 0, !mcsema_real_eip !127
  store i1 %637, i1* %AF, !mcsema_real_eip !127
  %638 = trunc i32 %633 to i8, !mcsema_real_eip !127
  %639 = call i8 @llvm.ctpop.i8(i8 %638), !mcsema_real_eip !127
  %640 = trunc i8 %639 to i1, !mcsema_real_eip !127
  %641 = xor i1 %640, true, !mcsema_real_eip !127
  store i1 %641, i1* %PF, !mcsema_real_eip !127
  %642 = icmp eq i32 %633, 0, !mcsema_real_eip !127
  store i1 %642, i1* %ZF, !mcsema_real_eip !127
  %643 = lshr i32 %633, 31, !mcsema_real_eip !127
  %644 = trunc i32 %643 to i1, !mcsema_real_eip !127
  store i1 %644, i1* %SF, !mcsema_real_eip !127
  %645 = icmp ult i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  store i1 %645, i1* %CF, !mcsema_real_eip !127
  %646 = xor i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %647 = and i32 %646, %634, !mcsema_real_eip !127
  %648 = lshr i32 %647, 31, !mcsema_real_eip !127
  %649 = trunc i32 %648 to i1, !mcsema_real_eip !127
  store i1 %649, i1* %OF, !mcsema_real_eip !127
  %650 = zext i32 %633 to i64, !mcsema_real_eip !127
  store i64 %650, i64* %XAX, !mcsema_real_eip !127
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -64
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %EAX_val.173 = load i32, i32* %EAX.25, !mcsema_real_eip !128
  %651 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !128
  %652 = inttoptr i64 %651 to i32*, !mcsema_real_eip !128
  store i32 %EAX_val.173, i32* %652, !mcsema_real_eip !128
  %653 = load i1, i1* %ZF, !mcsema_real_eip !129
  br i1 %653, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !129

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !130

block_0x25f:                                      ; preds = %block_0x11b
  %_load_rbp_ptr_179 = load i8*, i8** %_RBP_ptr_
  %_new_gep_180 = getelementptr i8, i8* %_load_rbp_ptr_179, i64 -8
  %_allin_new_bt_181 = bitcast i8* %_new_gep_180 to i64*
  %654 = ptrtoint i64* %_allin_new_bt_181 to i64, !mcsema_real_eip !131
  %655 = inttoptr i64 %654 to i32*, !mcsema_real_eip !131
  %656 = load i32, i32* %655, !mcsema_real_eip !131
  %657 = zext i32 %656 to i64, !mcsema_real_eip !131
  store i64 %657, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.176 = load i32, i32* %EAX.25, !mcsema_real_eip !132
  %658 = add i32 74637, %EAX_val.176, !mcsema_real_eip !132
  %659 = xor i32 %658, %EAX_val.176, !mcsema_real_eip !132
  %660 = xor i32 %659, 74637, !mcsema_real_eip !132
  %661 = and i32 %660, 16, !mcsema_real_eip !132
  %662 = icmp ne i32 %661, 0, !mcsema_real_eip !132
  store i1 %662, i1* %AF, !mcsema_real_eip !132
  %663 = lshr i32 %658, 31, !mcsema_real_eip !132
  %664 = trunc i32 %663 to i1, !mcsema_real_eip !132
  store i1 %664, i1* %SF, !mcsema_real_eip !132
  %665 = icmp eq i32 %658, 0, !mcsema_real_eip !132
  store i1 %665, i1* %ZF, !mcsema_real_eip !132
  %666 = xor i32 %EAX_val.176, 74637, !mcsema_real_eip !132
  %667 = xor i32 %666, -1, !mcsema_real_eip !132
  %668 = and i32 %667, %659, !mcsema_real_eip !132
  %669 = lshr i32 %668, 31, !mcsema_real_eip !132
  %670 = and i32 %669, 1, !mcsema_real_eip !132
  %671 = trunc i32 %670 to i1, !mcsema_real_eip !132
  store i1 %671, i1* %OF, !mcsema_real_eip !132
  %672 = trunc i32 %658 to i8, !mcsema_real_eip !132
  %673 = call i8 @llvm.ctpop.i8(i8 %672), !mcsema_real_eip !132
  %674 = trunc i8 %673 to i1, !mcsema_real_eip !132
  %675 = xor i1 %674, true, !mcsema_real_eip !132
  store i1 %675, i1* %PF, !mcsema_real_eip !132
  %676 = icmp ult i32 %658, %EAX_val.176, !mcsema_real_eip !132
  store i1 %676, i1* %CF, !mcsema_real_eip !132
  %677 = zext i32 %658 to i64, !mcsema_real_eip !132
  store i64 %677, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.179 = load i32, i32* %EAX.25, !mcsema_real_eip !133
  store i32 %EAX_val.179, i32* %655, !mcsema_real_eip !133
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x131:                                      ; preds = %block_0x12c
  %_load_rbp_ptr_185 = load i8*, i8** %_RBP_ptr_
  %_new_gep_186 = getelementptr i8, i8* %_load_rbp_ptr_185, i64 -12
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  %678 = ptrtoint i64* %_allin_new_bt_187 to i64, !mcsema_real_eip !135
  %679 = inttoptr i64 %678 to i32*, !mcsema_real_eip !135
  %680 = load i32, i32* %679, !mcsema_real_eip !135
  %681 = zext i32 %680 to i64, !mcsema_real_eip !135
  store i64 %681, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.182 = load i32, i32* %EAX.25, !mcsema_real_eip !136
  %682 = sub i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %683 = xor i32 %682, %EAX_val.182, !mcsema_real_eip !136
  %684 = xor i32 %683, 74639, !mcsema_real_eip !136
  %685 = and i32 %684, 16, !mcsema_real_eip !136
  %686 = icmp ne i32 %685, 0, !mcsema_real_eip !136
  store i1 %686, i1* %AF, !mcsema_real_eip !136
  %687 = trunc i32 %682 to i8, !mcsema_real_eip !136
  %688 = call i8 @llvm.ctpop.i8(i8 %687), !mcsema_real_eip !136
  %689 = trunc i8 %688 to i1, !mcsema_real_eip !136
  %690 = xor i1 %689, true, !mcsema_real_eip !136
  store i1 %690, i1* %PF, !mcsema_real_eip !136
  %691 = icmp eq i32 %682, 0, !mcsema_real_eip !136
  store i1 %691, i1* %ZF, !mcsema_real_eip !136
  %692 = lshr i32 %682, 31, !mcsema_real_eip !136
  %693 = trunc i32 %692 to i1, !mcsema_real_eip !136
  store i1 %693, i1* %SF, !mcsema_real_eip !136
  %694 = icmp ult i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  store i1 %694, i1* %CF, !mcsema_real_eip !136
  %695 = xor i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %696 = and i32 %695, %683, !mcsema_real_eip !136
  %697 = lshr i32 %696, 31, !mcsema_real_eip !136
  %698 = trunc i32 %697 to i1, !mcsema_real_eip !136
  store i1 %698, i1* %OF, !mcsema_real_eip !136
  %699 = zext i32 %682 to i64, !mcsema_real_eip !136
  store i64 %699, i64* %XAX, !mcsema_real_eip !136
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_185, i64 -68
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %EAX_val.185 = load i32, i32* %EAX.25, !mcsema_real_eip !137
  %700 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !137
  %701 = inttoptr i64 %700 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.185, i32* %701, !mcsema_real_eip !137
  %702 = load i1, i1* %ZF, !mcsema_real_eip !138
  br i1 %702, label %block_0x26f, label %block_0x142, !mcsema_real_eip !138

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !139

block_0x26f:                                      ; preds = %block_0x131
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -8
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %703 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !140
  %704 = inttoptr i64 %703 to i32*, !mcsema_real_eip !140
  %705 = load i32, i32* %704, !mcsema_real_eip !140
  %706 = zext i32 %705 to i64, !mcsema_real_eip !140
  store i64 %706, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.188 = load i32, i32* %EAX.25, !mcsema_real_eip !141
  %707 = add i32 74639, %EAX_val.188, !mcsema_real_eip !141
  %708 = xor i32 %707, %EAX_val.188, !mcsema_real_eip !141
  %709 = xor i32 %708, 74639, !mcsema_real_eip !141
  %710 = and i32 %709, 16, !mcsema_real_eip !141
  %711 = icmp ne i32 %710, 0, !mcsema_real_eip !141
  store i1 %711, i1* %AF, !mcsema_real_eip !141
  %712 = lshr i32 %707, 31, !mcsema_real_eip !141
  %713 = trunc i32 %712 to i1, !mcsema_real_eip !141
  store i1 %713, i1* %SF, !mcsema_real_eip !141
  %714 = icmp eq i32 %707, 0, !mcsema_real_eip !141
  store i1 %714, i1* %ZF, !mcsema_real_eip !141
  %715 = xor i32 %EAX_val.188, 74639, !mcsema_real_eip !141
  %716 = xor i32 %715, -1, !mcsema_real_eip !141
  %717 = and i32 %716, %708, !mcsema_real_eip !141
  %718 = lshr i32 %717, 31, !mcsema_real_eip !141
  %719 = and i32 %718, 1, !mcsema_real_eip !141
  %720 = trunc i32 %719 to i1, !mcsema_real_eip !141
  store i1 %720, i1* %OF, !mcsema_real_eip !141
  %721 = trunc i32 %707 to i8, !mcsema_real_eip !141
  %722 = call i8 @llvm.ctpop.i8(i8 %721), !mcsema_real_eip !141
  %723 = trunc i8 %722 to i1, !mcsema_real_eip !141
  %724 = xor i1 %723, true, !mcsema_real_eip !141
  store i1 %724, i1* %PF, !mcsema_real_eip !141
  %725 = icmp ult i32 %707, %EAX_val.188, !mcsema_real_eip !141
  store i1 %725, i1* %CF, !mcsema_real_eip !141
  %726 = zext i32 %707 to i64, !mcsema_real_eip !141
  store i64 %726, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.191 = load i32, i32* %EAX.25, !mcsema_real_eip !142
  store i32 %EAX_val.191, i32* %704, !mcsema_real_eip !142
  br label %block_0x2c8, !mcsema_real_eip !143

block_0x147:                                      ; preds = %block_0x142
  %_load_rbp_ptr_197 = load i8*, i8** %_RBP_ptr_
  %_new_gep_198 = getelementptr i8, i8* %_load_rbp_ptr_197, i64 -12
  %_allin_new_bt_199 = bitcast i8* %_new_gep_198 to i64*
  %727 = ptrtoint i64* %_allin_new_bt_199 to i64, !mcsema_real_eip !144
  %728 = inttoptr i64 %727 to i32*, !mcsema_real_eip !144
  %729 = load i32, i32* %728, !mcsema_real_eip !144
  %730 = zext i32 %729 to i64, !mcsema_real_eip !144
  store i64 %730, i64* %XAX, !mcsema_real_eip !144
  %EAX_val.194 = load i32, i32* %EAX.25, !mcsema_real_eip !145
  %731 = sub i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %732 = xor i32 %731, %EAX_val.194, !mcsema_real_eip !145
  %733 = xor i32 %732, 74640, !mcsema_real_eip !145
  %734 = and i32 %733, 16, !mcsema_real_eip !145
  %735 = icmp ne i32 %734, 0, !mcsema_real_eip !145
  store i1 %735, i1* %AF, !mcsema_real_eip !145
  %736 = trunc i32 %731 to i8, !mcsema_real_eip !145
  %737 = call i8 @llvm.ctpop.i8(i8 %736), !mcsema_real_eip !145
  %738 = trunc i8 %737 to i1, !mcsema_real_eip !145
  %739 = xor i1 %738, true, !mcsema_real_eip !145
  store i1 %739, i1* %PF, !mcsema_real_eip !145
  %740 = icmp eq i32 %731, 0, !mcsema_real_eip !145
  store i1 %740, i1* %ZF, !mcsema_real_eip !145
  %741 = lshr i32 %731, 31, !mcsema_real_eip !145
  %742 = trunc i32 %741 to i1, !mcsema_real_eip !145
  store i1 %742, i1* %SF, !mcsema_real_eip !145
  %743 = icmp ult i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  store i1 %743, i1* %CF, !mcsema_real_eip !145
  %744 = xor i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %745 = and i32 %744, %732, !mcsema_real_eip !145
  %746 = lshr i32 %745, 31, !mcsema_real_eip !145
  %747 = trunc i32 %746 to i1, !mcsema_real_eip !145
  store i1 %747, i1* %OF, !mcsema_real_eip !145
  %748 = zext i32 %731 to i64, !mcsema_real_eip !145
  store i64 %748, i64* %XAX, !mcsema_real_eip !145
  %_new_gep_201 = getelementptr i8, i8* %_load_rbp_ptr_197, i64 -72
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  %EAX_val.197 = load i32, i32* %EAX.25, !mcsema_real_eip !146
  %749 = ptrtoint i64* %_allin_new_bt_202 to i64, !mcsema_real_eip !146
  %750 = inttoptr i64 %749 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.197, i32* %750, !mcsema_real_eip !146
  %751 = load i1, i1* %ZF, !mcsema_real_eip !147
  br i1 %751, label %block_0x27f, label %block_0x158, !mcsema_real_eip !147

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !148

block_0x27f:                                      ; preds = %block_0x147
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -8
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %752 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !149
  %753 = inttoptr i64 %752 to i32*, !mcsema_real_eip !149
  %754 = load i32, i32* %753, !mcsema_real_eip !149
  %755 = zext i32 %754 to i64, !mcsema_real_eip !149
  store i64 %755, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.200 = load i32, i32* %EAX.25, !mcsema_real_eip !150
  %756 = add i32 74640, %EAX_val.200, !mcsema_real_eip !150
  %757 = xor i32 %756, %EAX_val.200, !mcsema_real_eip !150
  %758 = xor i32 %757, 74640, !mcsema_real_eip !150
  %759 = and i32 %758, 16, !mcsema_real_eip !150
  %760 = icmp ne i32 %759, 0, !mcsema_real_eip !150
  store i1 %760, i1* %AF, !mcsema_real_eip !150
  %761 = lshr i32 %756, 31, !mcsema_real_eip !150
  %762 = trunc i32 %761 to i1, !mcsema_real_eip !150
  store i1 %762, i1* %SF, !mcsema_real_eip !150
  %763 = icmp eq i32 %756, 0, !mcsema_real_eip !150
  store i1 %763, i1* %ZF, !mcsema_real_eip !150
  %764 = xor i32 %EAX_val.200, 74640, !mcsema_real_eip !150
  %765 = xor i32 %764, -1, !mcsema_real_eip !150
  %766 = and i32 %765, %757, !mcsema_real_eip !150
  %767 = lshr i32 %766, 31, !mcsema_real_eip !150
  %768 = and i32 %767, 1, !mcsema_real_eip !150
  %769 = trunc i32 %768 to i1, !mcsema_real_eip !150
  store i1 %769, i1* %OF, !mcsema_real_eip !150
  %770 = trunc i32 %756 to i8, !mcsema_real_eip !150
  %771 = call i8 @llvm.ctpop.i8(i8 %770), !mcsema_real_eip !150
  %772 = trunc i8 %771 to i1, !mcsema_real_eip !150
  %773 = xor i1 %772, true, !mcsema_real_eip !150
  store i1 %773, i1* %PF, !mcsema_real_eip !150
  %774 = icmp ult i32 %756, %EAX_val.200, !mcsema_real_eip !150
  store i1 %774, i1* %CF, !mcsema_real_eip !150
  %775 = zext i32 %756 to i64, !mcsema_real_eip !150
  store i64 %775, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.203 = load i32, i32* %EAX.25, !mcsema_real_eip !151
  store i32 %EAX_val.203, i32* %753, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x15d:                                      ; preds = %block_0x158
  %_load_rbp_ptr_209 = load i8*, i8** %_RBP_ptr_
  %_new_gep_210 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -12
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  %776 = ptrtoint i64* %_allin_new_bt_211 to i64, !mcsema_real_eip !153
  %777 = inttoptr i64 %776 to i32*, !mcsema_real_eip !153
  %778 = load i32, i32* %777, !mcsema_real_eip !153
  %779 = zext i32 %778 to i64, !mcsema_real_eip !153
  store i64 %779, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.206 = load i32, i32* %EAX.25, !mcsema_real_eip !154
  %780 = sub i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %781 = xor i32 %780, %EAX_val.206, !mcsema_real_eip !154
  %782 = xor i32 %781, 74641, !mcsema_real_eip !154
  %783 = and i32 %782, 16, !mcsema_real_eip !154
  %784 = icmp ne i32 %783, 0, !mcsema_real_eip !154
  store i1 %784, i1* %AF, !mcsema_real_eip !154
  %785 = trunc i32 %780 to i8, !mcsema_real_eip !154
  %786 = call i8 @llvm.ctpop.i8(i8 %785), !mcsema_real_eip !154
  %787 = trunc i8 %786 to i1, !mcsema_real_eip !154
  %788 = xor i1 %787, true, !mcsema_real_eip !154
  store i1 %788, i1* %PF, !mcsema_real_eip !154
  %789 = icmp eq i32 %780, 0, !mcsema_real_eip !154
  store i1 %789, i1* %ZF, !mcsema_real_eip !154
  %790 = lshr i32 %780, 31, !mcsema_real_eip !154
  %791 = trunc i32 %790 to i1, !mcsema_real_eip !154
  store i1 %791, i1* %SF, !mcsema_real_eip !154
  %792 = icmp ult i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  store i1 %792, i1* %CF, !mcsema_real_eip !154
  %793 = xor i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %794 = and i32 %793, %781, !mcsema_real_eip !154
  %795 = lshr i32 %794, 31, !mcsema_real_eip !154
  %796 = trunc i32 %795 to i1, !mcsema_real_eip !154
  store i1 %796, i1* %OF, !mcsema_real_eip !154
  %797 = zext i32 %780 to i64, !mcsema_real_eip !154
  store i64 %797, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -76
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %EAX_val.209 = load i32, i32* %EAX.25, !mcsema_real_eip !155
  %798 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !155
  %799 = inttoptr i64 %798 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.209, i32* %799, !mcsema_real_eip !155
  %800 = load i1, i1* %ZF, !mcsema_real_eip !156
  br i1 %800, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !156

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !157

block_0x28f:                                      ; preds = %block_0x15d
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -8
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %801 = ptrtoint i64* %_allin_new_bt_217 to i64, !mcsema_real_eip !158
  %802 = inttoptr i64 %801 to i32*, !mcsema_real_eip !158
  %803 = load i32, i32* %802, !mcsema_real_eip !158
  %804 = zext i32 %803 to i64, !mcsema_real_eip !158
  store i64 %804, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.25, !mcsema_real_eip !159
  %805 = add i32 74641, %EAX_val.212, !mcsema_real_eip !159
  %806 = xor i32 %805, %EAX_val.212, !mcsema_real_eip !159
  %807 = xor i32 %806, 74641, !mcsema_real_eip !159
  %808 = and i32 %807, 16, !mcsema_real_eip !159
  %809 = icmp ne i32 %808, 0, !mcsema_real_eip !159
  store i1 %809, i1* %AF, !mcsema_real_eip !159
  %810 = lshr i32 %805, 31, !mcsema_real_eip !159
  %811 = trunc i32 %810 to i1, !mcsema_real_eip !159
  store i1 %811, i1* %SF, !mcsema_real_eip !159
  %812 = icmp eq i32 %805, 0, !mcsema_real_eip !159
  store i1 %812, i1* %ZF, !mcsema_real_eip !159
  %813 = xor i32 %EAX_val.212, 74641, !mcsema_real_eip !159
  %814 = xor i32 %813, -1, !mcsema_real_eip !159
  %815 = and i32 %814, %806, !mcsema_real_eip !159
  %816 = lshr i32 %815, 31, !mcsema_real_eip !159
  %817 = and i32 %816, 1, !mcsema_real_eip !159
  %818 = trunc i32 %817 to i1, !mcsema_real_eip !159
  store i1 %818, i1* %OF, !mcsema_real_eip !159
  %819 = trunc i32 %805 to i8, !mcsema_real_eip !159
  %820 = call i8 @llvm.ctpop.i8(i8 %819), !mcsema_real_eip !159
  %821 = trunc i8 %820 to i1, !mcsema_real_eip !159
  %822 = xor i1 %821, true, !mcsema_real_eip !159
  store i1 %822, i1* %PF, !mcsema_real_eip !159
  %823 = icmp ult i32 %805, %EAX_val.212, !mcsema_real_eip !159
  store i1 %823, i1* %CF, !mcsema_real_eip !159
  %824 = zext i32 %805 to i64, !mcsema_real_eip !159
  store i64 %824, i64* %XAX, !mcsema_real_eip !159
  %EAX_val.215 = load i32, i32* %EAX.25, !mcsema_real_eip !160
  store i32 %EAX_val.215, i32* %802, !mcsema_real_eip !160
  br label %block_0x2c8, !mcsema_real_eip !161

block_0x173:                                      ; preds = %block_0x16e
  %_load_rbp_ptr_221 = load i8*, i8** %_RBP_ptr_
  %_new_gep_222 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -12
  %_allin_new_bt_223 = bitcast i8* %_new_gep_222 to i64*
  %825 = ptrtoint i64* %_allin_new_bt_223 to i64, !mcsema_real_eip !162
  %826 = inttoptr i64 %825 to i32*, !mcsema_real_eip !162
  %827 = load i32, i32* %826, !mcsema_real_eip !162
  %828 = zext i32 %827 to i64, !mcsema_real_eip !162
  store i64 %828, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.25, !mcsema_real_eip !163
  %829 = sub i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %830 = xor i32 %829, %EAX_val.218, !mcsema_real_eip !163
  %831 = xor i32 %830, 74642, !mcsema_real_eip !163
  %832 = and i32 %831, 16, !mcsema_real_eip !163
  %833 = icmp ne i32 %832, 0, !mcsema_real_eip !163
  store i1 %833, i1* %AF, !mcsema_real_eip !163
  %834 = trunc i32 %829 to i8, !mcsema_real_eip !163
  %835 = call i8 @llvm.ctpop.i8(i8 %834), !mcsema_real_eip !163
  %836 = trunc i8 %835 to i1, !mcsema_real_eip !163
  %837 = xor i1 %836, true, !mcsema_real_eip !163
  store i1 %837, i1* %PF, !mcsema_real_eip !163
  %838 = icmp eq i32 %829, 0, !mcsema_real_eip !163
  store i1 %838, i1* %ZF, !mcsema_real_eip !163
  %839 = lshr i32 %829, 31, !mcsema_real_eip !163
  %840 = trunc i32 %839 to i1, !mcsema_real_eip !163
  store i1 %840, i1* %SF, !mcsema_real_eip !163
  %841 = icmp ult i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  store i1 %841, i1* %CF, !mcsema_real_eip !163
  %842 = xor i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %843 = and i32 %842, %830, !mcsema_real_eip !163
  %844 = lshr i32 %843, 31, !mcsema_real_eip !163
  %845 = trunc i32 %844 to i1, !mcsema_real_eip !163
  store i1 %845, i1* %OF, !mcsema_real_eip !163
  %846 = zext i32 %829 to i64, !mcsema_real_eip !163
  store i64 %846, i64* %XAX, !mcsema_real_eip !163
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -80
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %EAX_val.221 = load i32, i32* %EAX.25, !mcsema_real_eip !164
  %847 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !164
  %848 = inttoptr i64 %847 to i32*, !mcsema_real_eip !164
  store i32 %EAX_val.221, i32* %848, !mcsema_real_eip !164
  %849 = load i1, i1* %ZF, !mcsema_real_eip !165
  br i1 %849, label %block_0x29f, label %block_0x184, !mcsema_real_eip !165

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !166

block_0x29f:                                      ; preds = %block_0x173
  %_load_rbp_ptr_227 = load i8*, i8** %_RBP_ptr_
  %_new_gep_228 = getelementptr i8, i8* %_load_rbp_ptr_227, i64 -8
  %_allin_new_bt_229 = bitcast i8* %_new_gep_228 to i64*
  %850 = ptrtoint i64* %_allin_new_bt_229 to i64, !mcsema_real_eip !167
  %851 = inttoptr i64 %850 to i32*, !mcsema_real_eip !167
  %852 = load i32, i32* %851, !mcsema_real_eip !167
  %853 = zext i32 %852 to i64, !mcsema_real_eip !167
  store i64 %853, i64* %XAX, !mcsema_real_eip !167
  %EAX_val.224 = load i32, i32* %EAX.25, !mcsema_real_eip !168
  %854 = add i32 74642, %EAX_val.224, !mcsema_real_eip !168
  %855 = xor i32 %854, %EAX_val.224, !mcsema_real_eip !168
  %856 = xor i32 %855, 74642, !mcsema_real_eip !168
  %857 = and i32 %856, 16, !mcsema_real_eip !168
  %858 = icmp ne i32 %857, 0, !mcsema_real_eip !168
  store i1 %858, i1* %AF, !mcsema_real_eip !168
  %859 = lshr i32 %854, 31, !mcsema_real_eip !168
  %860 = trunc i32 %859 to i1, !mcsema_real_eip !168
  store i1 %860, i1* %SF, !mcsema_real_eip !168
  %861 = icmp eq i32 %854, 0, !mcsema_real_eip !168
  store i1 %861, i1* %ZF, !mcsema_real_eip !168
  %862 = xor i32 %EAX_val.224, 74642, !mcsema_real_eip !168
  %863 = xor i32 %862, -1, !mcsema_real_eip !168
  %864 = and i32 %863, %855, !mcsema_real_eip !168
  %865 = lshr i32 %864, 31, !mcsema_real_eip !168
  %866 = and i32 %865, 1, !mcsema_real_eip !168
  %867 = trunc i32 %866 to i1, !mcsema_real_eip !168
  store i1 %867, i1* %OF, !mcsema_real_eip !168
  %868 = trunc i32 %854 to i8, !mcsema_real_eip !168
  %869 = call i8 @llvm.ctpop.i8(i8 %868), !mcsema_real_eip !168
  %870 = trunc i8 %869 to i1, !mcsema_real_eip !168
  %871 = xor i1 %870, true, !mcsema_real_eip !168
  store i1 %871, i1* %PF, !mcsema_real_eip !168
  %872 = icmp ult i32 %854, %EAX_val.224, !mcsema_real_eip !168
  store i1 %872, i1* %CF, !mcsema_real_eip !168
  %873 = zext i32 %854 to i64, !mcsema_real_eip !168
  store i64 %873, i64* %XAX, !mcsema_real_eip !168
  %EAX_val.227 = load i32, i32* %EAX.25, !mcsema_real_eip !169
  store i32 %EAX_val.227, i32* %851, !mcsema_real_eip !169
  br label %block_0x2c8, !mcsema_real_eip !170

block_0x189:                                      ; preds = %block_0x184
  %_load_rbp_ptr_233 = load i8*, i8** %_RBP_ptr_
  %_new_gep_234 = getelementptr i8, i8* %_load_rbp_ptr_233, i64 -12
  %_allin_new_bt_235 = bitcast i8* %_new_gep_234 to i64*
  %874 = ptrtoint i64* %_allin_new_bt_235 to i64, !mcsema_real_eip !171
  %875 = inttoptr i64 %874 to i32*, !mcsema_real_eip !171
  %876 = load i32, i32* %875, !mcsema_real_eip !171
  %877 = zext i32 %876 to i64, !mcsema_real_eip !171
  store i64 %877, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.230 = load i32, i32* %EAX.25, !mcsema_real_eip !172
  %878 = sub i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %879 = xor i32 %878, %EAX_val.230, !mcsema_real_eip !172
  %880 = xor i32 %879, 74643, !mcsema_real_eip !172
  %881 = and i32 %880, 16, !mcsema_real_eip !172
  %882 = icmp ne i32 %881, 0, !mcsema_real_eip !172
  store i1 %882, i1* %AF, !mcsema_real_eip !172
  %883 = trunc i32 %878 to i8, !mcsema_real_eip !172
  %884 = call i8 @llvm.ctpop.i8(i8 %883), !mcsema_real_eip !172
  %885 = trunc i8 %884 to i1, !mcsema_real_eip !172
  %886 = xor i1 %885, true, !mcsema_real_eip !172
  store i1 %886, i1* %PF, !mcsema_real_eip !172
  %887 = icmp eq i32 %878, 0, !mcsema_real_eip !172
  store i1 %887, i1* %ZF, !mcsema_real_eip !172
  %888 = lshr i32 %878, 31, !mcsema_real_eip !172
  %889 = trunc i32 %888 to i1, !mcsema_real_eip !172
  store i1 %889, i1* %SF, !mcsema_real_eip !172
  %890 = icmp ult i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  store i1 %890, i1* %CF, !mcsema_real_eip !172
  %891 = xor i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %892 = and i32 %891, %879, !mcsema_real_eip !172
  %893 = lshr i32 %892, 31, !mcsema_real_eip !172
  %894 = trunc i32 %893 to i1, !mcsema_real_eip !172
  store i1 %894, i1* %OF, !mcsema_real_eip !172
  %895 = zext i32 %878 to i64, !mcsema_real_eip !172
  store i64 %895, i64* %XAX, !mcsema_real_eip !172
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_233, i64 -84
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %EAX_val.233 = load i32, i32* %EAX.25, !mcsema_real_eip !173
  %896 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !173
  %897 = inttoptr i64 %896 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.233, i32* %897, !mcsema_real_eip !173
  %898 = load i1, i1* %ZF, !mcsema_real_eip !174
  br i1 %898, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !174

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !175

block_0x2af:                                      ; preds = %block_0x189
  %_load_rbp_ptr_239 = load i8*, i8** %_RBP_ptr_
  %_new_gep_240 = getelementptr i8, i8* %_load_rbp_ptr_239, i64 -8
  %_allin_new_bt_241 = bitcast i8* %_new_gep_240 to i64*
  %899 = ptrtoint i64* %_allin_new_bt_241 to i64, !mcsema_real_eip !176
  %900 = inttoptr i64 %899 to i32*, !mcsema_real_eip !176
  %901 = load i32, i32* %900, !mcsema_real_eip !176
  %902 = zext i32 %901 to i64, !mcsema_real_eip !176
  store i64 %902, i64* %XAX, !mcsema_real_eip !176
  %EAX_val.236 = load i32, i32* %EAX.25, !mcsema_real_eip !177
  %903 = add i32 74643, %EAX_val.236, !mcsema_real_eip !177
  %904 = xor i32 %903, %EAX_val.236, !mcsema_real_eip !177
  %905 = xor i32 %904, 74643, !mcsema_real_eip !177
  %906 = and i32 %905, 16, !mcsema_real_eip !177
  %907 = icmp ne i32 %906, 0, !mcsema_real_eip !177
  store i1 %907, i1* %AF, !mcsema_real_eip !177
  %908 = lshr i32 %903, 31, !mcsema_real_eip !177
  %909 = trunc i32 %908 to i1, !mcsema_real_eip !177
  store i1 %909, i1* %SF, !mcsema_real_eip !177
  %910 = icmp eq i32 %903, 0, !mcsema_real_eip !177
  store i1 %910, i1* %ZF, !mcsema_real_eip !177
  %911 = xor i32 %EAX_val.236, 74643, !mcsema_real_eip !177
  %912 = xor i32 %911, -1, !mcsema_real_eip !177
  %913 = and i32 %912, %904, !mcsema_real_eip !177
  %914 = lshr i32 %913, 31, !mcsema_real_eip !177
  %915 = and i32 %914, 1, !mcsema_real_eip !177
  %916 = trunc i32 %915 to i1, !mcsema_real_eip !177
  store i1 %916, i1* %OF, !mcsema_real_eip !177
  %917 = trunc i32 %903 to i8, !mcsema_real_eip !177
  %918 = call i8 @llvm.ctpop.i8(i8 %917), !mcsema_real_eip !177
  %919 = trunc i8 %918 to i1, !mcsema_real_eip !177
  %920 = xor i1 %919, true, !mcsema_real_eip !177
  store i1 %920, i1* %PF, !mcsema_real_eip !177
  %921 = icmp ult i32 %903, %EAX_val.236, !mcsema_real_eip !177
  store i1 %921, i1* %CF, !mcsema_real_eip !177
  %922 = zext i32 %903 to i64, !mcsema_real_eip !177
  store i64 %922, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.25, !mcsema_real_eip !178
  store i32 %EAX_val.239, i32* %900, !mcsema_real_eip !178
  br label %block_0x2c8, !mcsema_real_eip !179

block_0x2bf:                                      ; preds = %block_0x19a
  %_load_rbp_ptr_245 = load i8*, i8** %_RBP_ptr_
  %_new_gep_246 = getelementptr i8, i8* %_load_rbp_ptr_245, i64 -8
  %_allin_new_bt_247 = bitcast i8* %_new_gep_246 to i64*
  %923 = ptrtoint i64* %_allin_new_bt_247 to i64, !mcsema_real_eip !180
  %924 = inttoptr i64 %923 to i32*, !mcsema_real_eip !180
  %925 = load i32, i32* %924, !mcsema_real_eip !180
  %926 = zext i32 %925 to i64, !mcsema_real_eip !180
  store i64 %926, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.242 = load i32, i32* %EAX.25, !mcsema_real_eip !181
  store i1 false, i1* %AF, !mcsema_real_eip !181
  %927 = lshr i32 %EAX_val.242, 31, !mcsema_real_eip !181
  %928 = trunc i32 %927 to i1, !mcsema_real_eip !181
  store i1 %928, i1* %SF, !mcsema_real_eip !181
  %929 = icmp eq i32 %EAX_val.242, 0, !mcsema_real_eip !181
  store i1 %929, i1* %ZF, !mcsema_real_eip !181
  %930 = xor i32 %EAX_val.242, -1, !mcsema_real_eip !181
  store i1 false, i1* %OF, !mcsema_real_eip !181
  %931 = trunc i32 %EAX_val.242 to i8, !mcsema_real_eip !181
  %932 = call i8 @llvm.ctpop.i8(i8 %931), !mcsema_real_eip !181
  %933 = trunc i8 %932 to i1, !mcsema_real_eip !181
  %934 = xor i1 %933, true, !mcsema_real_eip !181
  store i1 %934, i1* %PF, !mcsema_real_eip !181
  store i1 false, i1* %CF, !mcsema_real_eip !181
  %935 = zext i32 %EAX_val.242 to i64, !mcsema_real_eip !181
  store i64 %935, i64* %XAX, !mcsema_real_eip !181
  %EAX_val.245 = load i32, i32* %EAX.25, !mcsema_real_eip !182
  store i32 %EAX_val.245, i32* %924, !mcsema_real_eip !182
  br label %block_0x2c8
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @switches() #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 92
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 92
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !4
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %3, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %5, !mcsema_real_eip !5
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

; <label>:8:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %9

; <label>:9:                                      ; preds = %block_0x0, %8
  %10 = phi i32* [ %7, %block_0x0 ], [ %_address_in_parent_stack_bt_, %8 ]
  %_new_load_ = load i32, i32* %10
  %11 = zext i32 %_new_load_ to i64, !mcsema_real_eip !6
  store i64 %11, i64* %XDI, !mcsema_real_eip !6
  %EDI_val.9 = load i32, i32* %EDI.4, !mcsema_real_eip !7
  %12 = icmp eq i32 %EDI_val.9, 0, !mcsema_real_eip !7
  store i1 %12, i1* %ZF, !mcsema_real_eip !7
  %13 = lshr i32 %EDI_val.9, 31, !mcsema_real_eip !7
  %14 = trunc i32 %13 to i1, !mcsema_real_eip !7
  store i1 %14, i1* %SF, !mcsema_real_eip !7
  %15 = trunc i32 %EDI_val.9 to i8, !mcsema_real_eip !7
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !7
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !7
  %18 = xor i1 %17, true, !mcsema_real_eip !7
  store i1 %18, i1* %PF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %20, !mcsema_real_eip !8
  %21 = load i1, i1* %ZF, !mcsema_real_eip !9
  br i1 %21, label %block_0x19f, label %block_0x1c, !mcsema_real_eip !9

block_0x1c:                                       ; preds = %9
  br label %block_0x21, !mcsema_real_eip !10

block_0x19f:                                      ; preds = %9
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !11
  %_ptr_bt_253 = bitcast i32* %23 to i8*
  %_offset_above_rbp_254 = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %_ptr_bt_253, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %_ptr_bt_253, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %_ptr_bt_253, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  br i1 %_cond1_n_cond2_cond3_262, label %24, label %25

; <label>:24:                                     ; preds = %block_0x19f
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_255 to i32*
  br label %25

; <label>:25:                                     ; preds = %block_0x19f, %24
  %26 = phi i32* [ %23, %block_0x19f ], [ %_address_in_parent_stack_bt_264, %24 ]
  %_new_load_265 = load i32, i32* %26
  %27 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !11
  store i64 %27, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  store i1 false, i1* %AF, !mcsema_real_eip !12
  %28 = lshr i32 %EAX_val.17, 31, !mcsema_real_eip !12
  %29 = trunc i32 %28 to i1, !mcsema_real_eip !12
  store i1 %29, i1* %SF, !mcsema_real_eip !12
  %30 = icmp eq i32 %EAX_val.17, 0, !mcsema_real_eip !12
  store i1 %30, i1* %ZF, !mcsema_real_eip !12
  %31 = xor i32 %EAX_val.17, -1, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  %32 = trunc i32 %EAX_val.17 to i8, !mcsema_real_eip !12
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !12
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !12
  %35 = xor i1 %34, true, !mcsema_real_eip !12
  store i1 %35, i1* %PF, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  %36 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !12
  store i64 %36, i64* %XAX, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %23, !mcsema_real_eip !13
  br label %block_0x2c8, !mcsema_real_eip !14

block_0x2c8:                                      ; preds = %1008, %982, %929, %876, %823, %770, %717, %664, %611, %558, %505, %452, %399, %346, %293, %240, %187, %134, %81, %25
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %37 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !15
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !15
  %_ptr_bt_268 = bitcast i32* %38 to i8*
  %_offset_above_rbp_269 = sub i64 %37, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %39, label %40

; <label>:39:                                     ; preds = %block_0x2c8
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %40

; <label>:40:                                     ; preds = %block_0x2c8, %39
  %41 = phi i32* [ %38, %block_0x2c8 ], [ %_address_in_parent_stack_bt_279, %39 ]
  %_new_load_280 = load i32, i32* %41
  %42 = zext i32 %_new_load_280 to i64, !mcsema_real_eip !15
  store i64 %42, i64* %XAX, !mcsema_real_eip !15
  %_load_rsp_ptr_23 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_allin_new_bt_24 = bitcast i8* %_load_rsp_ptr_23 to i64*
  %_ptr_to_int_281 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_284 = sub i64 %_ptr_to_int_281, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_load_rsp_ptr_23, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_load_rsp_ptr_23, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_load_rsp_ptr_23, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  br i1 %_cond1_n_cond2_cond3_292, label %43, label %44

; <label>:43:                                     ; preds = %40
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_285 to i64*
  br label %44

; <label>:44:                                     ; preds = %40, %43
  %45 = phi i64* [ %_allin_new_bt_24, %40 ], [ %_address_in_parent_stack_bt_294, %43 ]
  %_new_load_295 = load i64, i64* %45
  %_new_int2ptr_ = inttoptr i64 %_new_load_295 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_295, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 8
  %46 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %47 = add i64 %46, 8, !mcsema_real_eip !17
  %_allin_new_bt_28 = bitcast i8* %_new_gep_25 to i64*
  %_ptr_to_int_296 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_299 = sub i64 %_ptr_to_int_296, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %48, label %49

; <label>:48:                                     ; preds = %44
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i64*
  br label %49

; <label>:49:                                     ; preds = %44, %48
  %50 = phi i64* [ %_allin_new_bt_28, %44 ], [ %_address_in_parent_stack_bt_309, %48 ]
  %_new_load_310 = load i64, i64* %50
  store i64 %_new_load_310, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x21:                                       ; preds = %block_0x1c
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -12
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %51 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !18
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !18
  %_ptr_bt_313 = bitcast i32* %52 to i8*
  %_offset_above_rbp_314 = sub i64 %51, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_ptr_bt_313, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_ptr_bt_313, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_ptr_bt_313, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  br i1 %_cond1_n_cond2_cond3_322, label %53, label %54

; <label>:53:                                     ; preds = %block_0x21
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_315 to i32*
  br label %54

; <label>:54:                                     ; preds = %block_0x21, %53
  %55 = phi i32* [ %52, %block_0x21 ], [ %_address_in_parent_stack_bt_324, %53 ]
  %_new_load_325 = load i32, i32* %55
  %56 = zext i32 %_new_load_325 to i64, !mcsema_real_eip !18
  store i64 %56, i64* %XAX, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !19
  %57 = sub i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %58 = xor i32 %57, %EAX_val.26, !mcsema_real_eip !19
  %59 = xor i32 %58, 1, !mcsema_real_eip !19
  %60 = and i32 %59, 16, !mcsema_real_eip !19
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !19
  store i1 %61, i1* %AF, !mcsema_real_eip !19
  %62 = trunc i32 %57 to i8, !mcsema_real_eip !19
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !19
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !19
  %65 = xor i1 %64, true, !mcsema_real_eip !19
  store i1 %65, i1* %PF, !mcsema_real_eip !19
  %66 = icmp eq i32 %57, 0, !mcsema_real_eip !19
  store i1 %66, i1* %ZF, !mcsema_real_eip !19
  %67 = lshr i32 %57, 31, !mcsema_real_eip !19
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !19
  store i1 %68, i1* %SF, !mcsema_real_eip !19
  %69 = icmp ult i32 %EAX_val.26, 1, !mcsema_real_eip !19
  store i1 %69, i1* %CF, !mcsema_real_eip !19
  %70 = xor i32 %EAX_val.26, 1, !mcsema_real_eip !19
  %71 = and i32 %70, %58, !mcsema_real_eip !19
  %72 = lshr i32 %71, 31, !mcsema_real_eip !19
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !19
  store i1 %73, i1* %OF, !mcsema_real_eip !19
  %74 = zext i32 %57 to i64, !mcsema_real_eip !19
  store i64 %74, i64* %XAX, !mcsema_real_eip !19
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -16
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %EAX_val.29 = load i32, i32* %EAX.25, !mcsema_real_eip !20
  %75 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !20
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %76, !mcsema_real_eip !20
  %77 = load i1, i1* %ZF, !mcsema_real_eip !21
  br i1 %77, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !21

block_0x30:                                       ; preds = %54
  br label %block_0x35, !mcsema_real_eip !22

block_0x1ad:                                      ; preds = %54
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -8
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %78 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !23
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !23
  %_ptr_bt_328 = bitcast i32* %79 to i8*
  %_offset_above_rbp_329 = sub i64 %78, %_local_end_to_int_
  %_pot_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_329
  %_cond1_331 = icmp ugt i8* %_ptr_bt_328, %_local_stack_end_ptr_
  %_cond2_1_332 = icmp ugt i8* %_ptr_bt_328, %_parent_stack_end_ptr_
  %_cond2_2_333 = icmp ult i8* %_ptr_bt_328, %_parent_stack_start_ptr_
  %_cond2_334 = or i1 %_cond2_1_332, %_cond2_2_333
  %_cond4_335 = icmp ule i8* %_pot_address_in_parent_stack_330, %_parent_stack_end_ptr_
  %_cond1_n_cond2_336 = and i1 %_cond1_331, %_cond2_334
  %_cond1_n_cond2_cond3_337 = and i1 %_cond1_n_cond2_336, %_cond4_335
  br i1 %_cond1_n_cond2_cond3_337, label %80, label %81

; <label>:80:                                     ; preds = %block_0x1ad
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_330 to i32*
  br label %81

; <label>:81:                                     ; preds = %block_0x1ad, %80
  %82 = phi i32* [ %79, %block_0x1ad ], [ %_address_in_parent_stack_bt_339, %80 ]
  %_new_load_340 = load i32, i32* %82
  %83 = zext i32 %_new_load_340 to i64, !mcsema_real_eip !23
  store i64 %83, i64* %XAX, !mcsema_real_eip !23
  %EAX_val.32 = load i32, i32* %EAX.25, !mcsema_real_eip !24
  %84 = add i32 1, %EAX_val.32, !mcsema_real_eip !24
  %85 = xor i32 %84, %EAX_val.32, !mcsema_real_eip !24
  %86 = xor i32 %85, 1, !mcsema_real_eip !24
  %87 = and i32 %86, 16, !mcsema_real_eip !24
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !24
  store i1 %88, i1* %AF, !mcsema_real_eip !24
  %89 = lshr i32 %84, 31, !mcsema_real_eip !24
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !24
  store i1 %90, i1* %SF, !mcsema_real_eip !24
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !24
  store i1 %91, i1* %ZF, !mcsema_real_eip !24
  %92 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !24
  %93 = xor i32 %92, -1, !mcsema_real_eip !24
  %94 = and i32 %93, %85, !mcsema_real_eip !24
  %95 = lshr i32 %94, 31, !mcsema_real_eip !24
  %96 = and i32 %95, 1, !mcsema_real_eip !24
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !24
  store i1 %97, i1* %OF, !mcsema_real_eip !24
  %98 = trunc i32 %84 to i8, !mcsema_real_eip !24
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !24
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !24
  %101 = xor i1 %100, true, !mcsema_real_eip !24
  store i1 %101, i1* %PF, !mcsema_real_eip !24
  %102 = icmp ult i32 %84, %EAX_val.32, !mcsema_real_eip !24
  store i1 %102, i1* %CF, !mcsema_real_eip !24
  %103 = zext i32 %84 to i64, !mcsema_real_eip !24
  store i64 %103, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.35 = load i32, i32* %EAX.25, !mcsema_real_eip !25
  store i32 %EAX_val.35, i32* %79, !mcsema_real_eip !25
  br label %block_0x2c8, !mcsema_real_eip !26

block_0x35:                                       ; preds = %block_0x30
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -12
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %104 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !27
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !27
  %_ptr_bt_343 = bitcast i32* %105 to i8*
  %_offset_above_rbp_344 = sub i64 %104, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_ptr_bt_343, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_ptr_bt_343, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_ptr_bt_343, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  br i1 %_cond1_n_cond2_cond3_352, label %106, label %107

; <label>:106:                                    ; preds = %block_0x35
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i32*
  br label %107

; <label>:107:                                    ; preds = %block_0x35, %106
  %108 = phi i32* [ %105, %block_0x35 ], [ %_address_in_parent_stack_bt_354, %106 ]
  %_new_load_355 = load i32, i32* %108
  %109 = zext i32 %_new_load_355 to i64, !mcsema_real_eip !27
  store i64 %109, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.38 = load i32, i32* %EAX.25, !mcsema_real_eip !28
  %110 = sub i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %111 = xor i32 %110, %EAX_val.38, !mcsema_real_eip !28
  %112 = xor i32 %111, 2, !mcsema_real_eip !28
  %113 = and i32 %112, 16, !mcsema_real_eip !28
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !28
  store i1 %114, i1* %AF, !mcsema_real_eip !28
  %115 = trunc i32 %110 to i8, !mcsema_real_eip !28
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !28
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !28
  %118 = xor i1 %117, true, !mcsema_real_eip !28
  store i1 %118, i1* %PF, !mcsema_real_eip !28
  %119 = icmp eq i32 %110, 0, !mcsema_real_eip !28
  store i1 %119, i1* %ZF, !mcsema_real_eip !28
  %120 = lshr i32 %110, 31, !mcsema_real_eip !28
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !28
  store i1 %121, i1* %SF, !mcsema_real_eip !28
  %122 = icmp ult i32 %EAX_val.38, 2, !mcsema_real_eip !28
  store i1 %122, i1* %CF, !mcsema_real_eip !28
  %123 = xor i32 %EAX_val.38, 2, !mcsema_real_eip !28
  %124 = and i32 %123, %111, !mcsema_real_eip !28
  %125 = lshr i32 %124, 31, !mcsema_real_eip !28
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !28
  store i1 %126, i1* %OF, !mcsema_real_eip !28
  %127 = zext i32 %110 to i64, !mcsema_real_eip !28
  store i64 %127, i64* %XAX, !mcsema_real_eip !28
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -20
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %EAX_val.41 = load i32, i32* %EAX.25, !mcsema_real_eip !29
  %128 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !29
  %129 = inttoptr i64 %128 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.41, i32* %129, !mcsema_real_eip !29
  %130 = load i1, i1* %ZF, !mcsema_real_eip !30
  br i1 %130, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !30

block_0x44:                                       ; preds = %107
  br label %block_0x49, !mcsema_real_eip !31

block_0x1bb:                                      ; preds = %107
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %131 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !32
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !32
  %_ptr_bt_358 = bitcast i32* %132 to i8*
  %_offset_above_rbp_359 = sub i64 %131, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_ptr_bt_358, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_ptr_bt_358, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_ptr_bt_358, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  br i1 %_cond1_n_cond2_cond3_367, label %133, label %134

; <label>:133:                                    ; preds = %block_0x1bb
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i32*
  br label %134

; <label>:134:                                    ; preds = %block_0x1bb, %133
  %135 = phi i32* [ %132, %block_0x1bb ], [ %_address_in_parent_stack_bt_369, %133 ]
  %_new_load_370 = load i32, i32* %135
  %136 = zext i32 %_new_load_370 to i64, !mcsema_real_eip !32
  store i64 %136, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.44 = load i32, i32* %EAX.25, !mcsema_real_eip !33
  %137 = add i32 2, %EAX_val.44, !mcsema_real_eip !33
  %138 = xor i32 %137, %EAX_val.44, !mcsema_real_eip !33
  %139 = xor i32 %138, 2, !mcsema_real_eip !33
  %140 = and i32 %139, 16, !mcsema_real_eip !33
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !33
  store i1 %141, i1* %AF, !mcsema_real_eip !33
  %142 = lshr i32 %137, 31, !mcsema_real_eip !33
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !33
  store i1 %143, i1* %SF, !mcsema_real_eip !33
  %144 = icmp eq i32 %137, 0, !mcsema_real_eip !33
  store i1 %144, i1* %ZF, !mcsema_real_eip !33
  %145 = xor i32 %EAX_val.44, 2, !mcsema_real_eip !33
  %146 = xor i32 %145, -1, !mcsema_real_eip !33
  %147 = and i32 %146, %138, !mcsema_real_eip !33
  %148 = lshr i32 %147, 31, !mcsema_real_eip !33
  %149 = and i32 %148, 1, !mcsema_real_eip !33
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !33
  store i1 %150, i1* %OF, !mcsema_real_eip !33
  %151 = trunc i32 %137 to i8, !mcsema_real_eip !33
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !33
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !33
  %154 = xor i1 %153, true, !mcsema_real_eip !33
  store i1 %154, i1* %PF, !mcsema_real_eip !33
  %155 = icmp ult i32 %137, %EAX_val.44, !mcsema_real_eip !33
  store i1 %155, i1* %CF, !mcsema_real_eip !33
  %156 = zext i32 %137 to i64, !mcsema_real_eip !33
  store i64 %156, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.47 = load i32, i32* %EAX.25, !mcsema_real_eip !34
  store i32 %EAX_val.47, i32* %132, !mcsema_real_eip !34
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x49:                                       ; preds = %block_0x44
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -12
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %157 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !36
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !36
  %_ptr_bt_373 = bitcast i32* %158 to i8*
  %_offset_above_rbp_374 = sub i64 %157, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_ptr_bt_373, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_ptr_bt_373, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_ptr_bt_373, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  br i1 %_cond1_n_cond2_cond3_382, label %159, label %160

; <label>:159:                                    ; preds = %block_0x49
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i32*
  br label %160

; <label>:160:                                    ; preds = %block_0x49, %159
  %161 = phi i32* [ %158, %block_0x49 ], [ %_address_in_parent_stack_bt_384, %159 ]
  %_new_load_385 = load i32, i32* %161
  %162 = zext i32 %_new_load_385 to i64, !mcsema_real_eip !36
  store i64 %162, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.25, !mcsema_real_eip !37
  %163 = sub i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %164 = xor i32 %163, %EAX_val.50, !mcsema_real_eip !37
  %165 = xor i32 %164, 4, !mcsema_real_eip !37
  %166 = and i32 %165, 16, !mcsema_real_eip !37
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !37
  store i1 %167, i1* %AF, !mcsema_real_eip !37
  %168 = trunc i32 %163 to i8, !mcsema_real_eip !37
  %169 = call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !37
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !37
  %171 = xor i1 %170, true, !mcsema_real_eip !37
  store i1 %171, i1* %PF, !mcsema_real_eip !37
  %172 = icmp eq i32 %163, 0, !mcsema_real_eip !37
  store i1 %172, i1* %ZF, !mcsema_real_eip !37
  %173 = lshr i32 %163, 31, !mcsema_real_eip !37
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !37
  store i1 %174, i1* %SF, !mcsema_real_eip !37
  %175 = icmp ult i32 %EAX_val.50, 4, !mcsema_real_eip !37
  store i1 %175, i1* %CF, !mcsema_real_eip !37
  %176 = xor i32 %EAX_val.50, 4, !mcsema_real_eip !37
  %177 = and i32 %176, %164, !mcsema_real_eip !37
  %178 = lshr i32 %177, 31, !mcsema_real_eip !37
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !37
  store i1 %179, i1* %OF, !mcsema_real_eip !37
  %180 = zext i32 %163 to i64, !mcsema_real_eip !37
  store i64 %180, i64* %XAX, !mcsema_real_eip !37
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %EAX_val.53 = load i32, i32* %EAX.25, !mcsema_real_eip !38
  %181 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !38
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.53, i32* %182, !mcsema_real_eip !38
  %183 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %183, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !39

block_0x58:                                       ; preds = %160
  br label %block_0x5d, !mcsema_real_eip !40

block_0x1c9:                                      ; preds = %160
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %184 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !41
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !41
  %_ptr_bt_388 = bitcast i32* %185 to i8*
  %_offset_above_rbp_389 = sub i64 %184, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_ptr_bt_388, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_ptr_bt_388, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_ptr_bt_388, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  br i1 %_cond1_n_cond2_cond3_397, label %186, label %187

; <label>:186:                                    ; preds = %block_0x1c9
  %_address_in_parent_stack_bt_399 = bitcast i8* %_pot_address_in_parent_stack_390 to i32*
  br label %187

; <label>:187:                                    ; preds = %block_0x1c9, %186
  %188 = phi i32* [ %185, %block_0x1c9 ], [ %_address_in_parent_stack_bt_399, %186 ]
  %_new_load_400 = load i32, i32* %188
  %189 = zext i32 %_new_load_400 to i64, !mcsema_real_eip !41
  store i64 %189, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.56 = load i32, i32* %EAX.25, !mcsema_real_eip !42
  %190 = add i32 4, %EAX_val.56, !mcsema_real_eip !42
  %191 = xor i32 %190, %EAX_val.56, !mcsema_real_eip !42
  %192 = xor i32 %191, 4, !mcsema_real_eip !42
  %193 = and i32 %192, 16, !mcsema_real_eip !42
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !42
  store i1 %194, i1* %AF, !mcsema_real_eip !42
  %195 = lshr i32 %190, 31, !mcsema_real_eip !42
  %196 = trunc i32 %195 to i1, !mcsema_real_eip !42
  store i1 %196, i1* %SF, !mcsema_real_eip !42
  %197 = icmp eq i32 %190, 0, !mcsema_real_eip !42
  store i1 %197, i1* %ZF, !mcsema_real_eip !42
  %198 = xor i32 %EAX_val.56, 4, !mcsema_real_eip !42
  %199 = xor i32 %198, -1, !mcsema_real_eip !42
  %200 = and i32 %199, %191, !mcsema_real_eip !42
  %201 = lshr i32 %200, 31, !mcsema_real_eip !42
  %202 = and i32 %201, 1, !mcsema_real_eip !42
  %203 = trunc i32 %202 to i1, !mcsema_real_eip !42
  store i1 %203, i1* %OF, !mcsema_real_eip !42
  %204 = trunc i32 %190 to i8, !mcsema_real_eip !42
  %205 = call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !42
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !42
  %207 = xor i1 %206, true, !mcsema_real_eip !42
  store i1 %207, i1* %PF, !mcsema_real_eip !42
  %208 = icmp ult i32 %190, %EAX_val.56, !mcsema_real_eip !42
  store i1 %208, i1* %CF, !mcsema_real_eip !42
  %209 = zext i32 %190 to i64, !mcsema_real_eip !42
  store i64 %209, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.25, !mcsema_real_eip !43
  store i32 %EAX_val.59, i32* %185, !mcsema_real_eip !43
  br label %block_0x2c8, !mcsema_real_eip !44

block_0x5d:                                       ; preds = %block_0x58
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -12
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %210 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !45
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !45
  %_ptr_bt_403 = bitcast i32* %211 to i8*
  %_offset_above_rbp_404 = sub i64 %210, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_ptr_bt_403, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_ptr_bt_403, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_ptr_bt_403, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  br i1 %_cond1_n_cond2_cond3_412, label %212, label %213

; <label>:212:                                    ; preds = %block_0x5d
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i32*
  br label %213

; <label>:213:                                    ; preds = %block_0x5d, %212
  %214 = phi i32* [ %211, %block_0x5d ], [ %_address_in_parent_stack_bt_414, %212 ]
  %_new_load_415 = load i32, i32* %214
  %215 = zext i32 %_new_load_415 to i64, !mcsema_real_eip !45
  store i64 %215, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.62 = load i32, i32* %EAX.25, !mcsema_real_eip !46
  %216 = sub i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %217 = xor i32 %216, %EAX_val.62, !mcsema_real_eip !46
  %218 = xor i32 %217, 6, !mcsema_real_eip !46
  %219 = and i32 %218, 16, !mcsema_real_eip !46
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !46
  store i1 %220, i1* %AF, !mcsema_real_eip !46
  %221 = trunc i32 %216 to i8, !mcsema_real_eip !46
  %222 = call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !46
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !46
  %224 = xor i1 %223, true, !mcsema_real_eip !46
  store i1 %224, i1* %PF, !mcsema_real_eip !46
  %225 = icmp eq i32 %216, 0, !mcsema_real_eip !46
  store i1 %225, i1* %ZF, !mcsema_real_eip !46
  %226 = lshr i32 %216, 31, !mcsema_real_eip !46
  %227 = trunc i32 %226 to i1, !mcsema_real_eip !46
  store i1 %227, i1* %SF, !mcsema_real_eip !46
  %228 = icmp ult i32 %EAX_val.62, 6, !mcsema_real_eip !46
  store i1 %228, i1* %CF, !mcsema_real_eip !46
  %229 = xor i32 %EAX_val.62, 6, !mcsema_real_eip !46
  %230 = and i32 %229, %217, !mcsema_real_eip !46
  %231 = lshr i32 %230, 31, !mcsema_real_eip !46
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !46
  store i1 %232, i1* %OF, !mcsema_real_eip !46
  %233 = zext i32 %216 to i64, !mcsema_real_eip !46
  store i64 %233, i64* %XAX, !mcsema_real_eip !46
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -28
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %EAX_val.65 = load i32, i32* %EAX.25, !mcsema_real_eip !47
  %234 = ptrtoint i64* %_allin_new_bt_70 to i64, !mcsema_real_eip !47
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.65, i32* %235, !mcsema_real_eip !47
  %236 = load i1, i1* %ZF, !mcsema_real_eip !48
  br i1 %236, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !48

block_0x6c:                                       ; preds = %213
  br label %block_0x71, !mcsema_real_eip !49

block_0x1d7:                                      ; preds = %213
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %237 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !50
  %238 = inttoptr i64 %237 to i32*, !mcsema_real_eip !50
  %_ptr_bt_418 = bitcast i32* %238 to i8*
  %_offset_above_rbp_419 = sub i64 %237, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_ptr_bt_418, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_ptr_bt_418, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_ptr_bt_418, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  br i1 %_cond1_n_cond2_cond3_427, label %239, label %240

; <label>:239:                                    ; preds = %block_0x1d7
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i32*
  br label %240

; <label>:240:                                    ; preds = %block_0x1d7, %239
  %241 = phi i32* [ %238, %block_0x1d7 ], [ %_address_in_parent_stack_bt_429, %239 ]
  %_new_load_430 = load i32, i32* %241
  %242 = zext i32 %_new_load_430 to i64, !mcsema_real_eip !50
  store i64 %242, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.68 = load i32, i32* %EAX.25, !mcsema_real_eip !51
  %243 = add i32 6, %EAX_val.68, !mcsema_real_eip !51
  %244 = xor i32 %243, %EAX_val.68, !mcsema_real_eip !51
  %245 = xor i32 %244, 6, !mcsema_real_eip !51
  %246 = and i32 %245, 16, !mcsema_real_eip !51
  %247 = icmp ne i32 %246, 0, !mcsema_real_eip !51
  store i1 %247, i1* %AF, !mcsema_real_eip !51
  %248 = lshr i32 %243, 31, !mcsema_real_eip !51
  %249 = trunc i32 %248 to i1, !mcsema_real_eip !51
  store i1 %249, i1* %SF, !mcsema_real_eip !51
  %250 = icmp eq i32 %243, 0, !mcsema_real_eip !51
  store i1 %250, i1* %ZF, !mcsema_real_eip !51
  %251 = xor i32 %EAX_val.68, 6, !mcsema_real_eip !51
  %252 = xor i32 %251, -1, !mcsema_real_eip !51
  %253 = and i32 %252, %244, !mcsema_real_eip !51
  %254 = lshr i32 %253, 31, !mcsema_real_eip !51
  %255 = and i32 %254, 1, !mcsema_real_eip !51
  %256 = trunc i32 %255 to i1, !mcsema_real_eip !51
  store i1 %256, i1* %OF, !mcsema_real_eip !51
  %257 = trunc i32 %243 to i8, !mcsema_real_eip !51
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !51
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !51
  %260 = xor i1 %259, true, !mcsema_real_eip !51
  store i1 %260, i1* %PF, !mcsema_real_eip !51
  %261 = icmp ult i32 %243, %EAX_val.68, !mcsema_real_eip !51
  store i1 %261, i1* %CF, !mcsema_real_eip !51
  %262 = zext i32 %243 to i64, !mcsema_real_eip !51
  store i64 %262, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.71 = load i32, i32* %EAX.25, !mcsema_real_eip !52
  store i32 %EAX_val.71, i32* %238, !mcsema_real_eip !52
  br label %block_0x2c8, !mcsema_real_eip !53

block_0x71:                                       ; preds = %block_0x6c
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -12
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %263 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !54
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !54
  %_ptr_bt_433 = bitcast i32* %264 to i8*
  %_offset_above_rbp_434 = sub i64 %263, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_ptr_bt_433, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_ptr_bt_433, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_ptr_bt_433, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  br i1 %_cond1_n_cond2_cond3_442, label %265, label %266

; <label>:265:                                    ; preds = %block_0x71
  %_address_in_parent_stack_bt_444 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %266

; <label>:266:                                    ; preds = %block_0x71, %265
  %267 = phi i32* [ %264, %block_0x71 ], [ %_address_in_parent_stack_bt_444, %265 ]
  %_new_load_445 = load i32, i32* %267
  %268 = zext i32 %_new_load_445 to i64, !mcsema_real_eip !54
  store i64 %268, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.25, !mcsema_real_eip !55
  %269 = sub i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %270 = xor i32 %269, %EAX_val.74, !mcsema_real_eip !55
  %271 = xor i32 %270, 12, !mcsema_real_eip !55
  %272 = and i32 %271, 16, !mcsema_real_eip !55
  %273 = icmp ne i32 %272, 0, !mcsema_real_eip !55
  store i1 %273, i1* %AF, !mcsema_real_eip !55
  %274 = trunc i32 %269 to i8, !mcsema_real_eip !55
  %275 = call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !55
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !55
  %277 = xor i1 %276, true, !mcsema_real_eip !55
  store i1 %277, i1* %PF, !mcsema_real_eip !55
  %278 = icmp eq i32 %269, 0, !mcsema_real_eip !55
  store i1 %278, i1* %ZF, !mcsema_real_eip !55
  %279 = lshr i32 %269, 31, !mcsema_real_eip !55
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !55
  store i1 %280, i1* %SF, !mcsema_real_eip !55
  %281 = icmp ult i32 %EAX_val.74, 12, !mcsema_real_eip !55
  store i1 %281, i1* %CF, !mcsema_real_eip !55
  %282 = xor i32 %EAX_val.74, 12, !mcsema_real_eip !55
  %283 = and i32 %282, %270, !mcsema_real_eip !55
  %284 = lshr i32 %283, 31, !mcsema_real_eip !55
  %285 = trunc i32 %284 to i1, !mcsema_real_eip !55
  store i1 %285, i1* %OF, !mcsema_real_eip !55
  %286 = zext i32 %269 to i64, !mcsema_real_eip !55
  store i64 %286, i64* %XAX, !mcsema_real_eip !55
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -32
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %EAX_val.77 = load i32, i32* %EAX.25, !mcsema_real_eip !56
  %287 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !56
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.77, i32* %288, !mcsema_real_eip !56
  %289 = load i1, i1* %ZF, !mcsema_real_eip !57
  br i1 %289, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !57

block_0x80:                                       ; preds = %266
  br label %block_0x85, !mcsema_real_eip !58

block_0x1e5:                                      ; preds = %266
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -8
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %290 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !59
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !59
  %_ptr_bt_448 = bitcast i32* %291 to i8*
  %_offset_above_rbp_449 = sub i64 %290, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_ptr_bt_448, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_ptr_bt_448, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_ptr_bt_448, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  br i1 %_cond1_n_cond2_cond3_457, label %292, label %293

; <label>:292:                                    ; preds = %block_0x1e5
  %_address_in_parent_stack_bt_459 = bitcast i8* %_pot_address_in_parent_stack_450 to i32*
  br label %293

; <label>:293:                                    ; preds = %block_0x1e5, %292
  %294 = phi i32* [ %291, %block_0x1e5 ], [ %_address_in_parent_stack_bt_459, %292 ]
  %_new_load_460 = load i32, i32* %294
  %295 = zext i32 %_new_load_460 to i64, !mcsema_real_eip !59
  store i64 %295, i64* %XAX, !mcsema_real_eip !59
  %EAX_val.80 = load i32, i32* %EAX.25, !mcsema_real_eip !60
  %296 = add i32 12, %EAX_val.80, !mcsema_real_eip !60
  %297 = xor i32 %296, %EAX_val.80, !mcsema_real_eip !60
  %298 = xor i32 %297, 12, !mcsema_real_eip !60
  %299 = and i32 %298, 16, !mcsema_real_eip !60
  %300 = icmp ne i32 %299, 0, !mcsema_real_eip !60
  store i1 %300, i1* %AF, !mcsema_real_eip !60
  %301 = lshr i32 %296, 31, !mcsema_real_eip !60
  %302 = trunc i32 %301 to i1, !mcsema_real_eip !60
  store i1 %302, i1* %SF, !mcsema_real_eip !60
  %303 = icmp eq i32 %296, 0, !mcsema_real_eip !60
  store i1 %303, i1* %ZF, !mcsema_real_eip !60
  %304 = xor i32 %EAX_val.80, 12, !mcsema_real_eip !60
  %305 = xor i32 %304, -1, !mcsema_real_eip !60
  %306 = and i32 %305, %297, !mcsema_real_eip !60
  %307 = lshr i32 %306, 31, !mcsema_real_eip !60
  %308 = and i32 %307, 1, !mcsema_real_eip !60
  %309 = trunc i32 %308 to i1, !mcsema_real_eip !60
  store i1 %309, i1* %OF, !mcsema_real_eip !60
  %310 = trunc i32 %296 to i8, !mcsema_real_eip !60
  %311 = call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !60
  %312 = trunc i8 %311 to i1, !mcsema_real_eip !60
  %313 = xor i1 %312, true, !mcsema_real_eip !60
  store i1 %313, i1* %PF, !mcsema_real_eip !60
  %314 = icmp ult i32 %296, %EAX_val.80, !mcsema_real_eip !60
  store i1 %314, i1* %CF, !mcsema_real_eip !60
  %315 = zext i32 %296 to i64, !mcsema_real_eip !60
  store i64 %315, i64* %XAX, !mcsema_real_eip !60
  %EAX_val.83 = load i32, i32* %EAX.25, !mcsema_real_eip !61
  store i32 %EAX_val.83, i32* %291, !mcsema_real_eip !61
  br label %block_0x2c8, !mcsema_real_eip !62

block_0x85:                                       ; preds = %block_0x80
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -12
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %316 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !63
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !63
  %_ptr_bt_463 = bitcast i32* %317 to i8*
  %_offset_above_rbp_464 = sub i64 %316, %_local_end_to_int_
  %_pot_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_464
  %_cond1_466 = icmp ugt i8* %_ptr_bt_463, %_local_stack_end_ptr_
  %_cond2_1_467 = icmp ugt i8* %_ptr_bt_463, %_parent_stack_end_ptr_
  %_cond2_2_468 = icmp ult i8* %_ptr_bt_463, %_parent_stack_start_ptr_
  %_cond2_469 = or i1 %_cond2_1_467, %_cond2_2_468
  %_cond4_470 = icmp ule i8* %_pot_address_in_parent_stack_465, %_parent_stack_end_ptr_
  %_cond1_n_cond2_471 = and i1 %_cond1_466, %_cond2_469
  %_cond1_n_cond2_cond3_472 = and i1 %_cond1_n_cond2_471, %_cond4_470
  br i1 %_cond1_n_cond2_cond3_472, label %318, label %319

; <label>:318:                                    ; preds = %block_0x85
  %_address_in_parent_stack_bt_474 = bitcast i8* %_pot_address_in_parent_stack_465 to i32*
  br label %319

; <label>:319:                                    ; preds = %block_0x85, %318
  %320 = phi i32* [ %317, %block_0x85 ], [ %_address_in_parent_stack_bt_474, %318 ]
  %_new_load_475 = load i32, i32* %320
  %321 = zext i32 %_new_load_475 to i64, !mcsema_real_eip !63
  store i64 %321, i64* %XAX, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.25, !mcsema_real_eip !64
  %322 = sub i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %323 = xor i32 %322, %EAX_val.86, !mcsema_real_eip !64
  %324 = xor i32 %323, 13, !mcsema_real_eip !64
  %325 = and i32 %324, 16, !mcsema_real_eip !64
  %326 = icmp ne i32 %325, 0, !mcsema_real_eip !64
  store i1 %326, i1* %AF, !mcsema_real_eip !64
  %327 = trunc i32 %322 to i8, !mcsema_real_eip !64
  %328 = call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !64
  %329 = trunc i8 %328 to i1, !mcsema_real_eip !64
  %330 = xor i1 %329, true, !mcsema_real_eip !64
  store i1 %330, i1* %PF, !mcsema_real_eip !64
  %331 = icmp eq i32 %322, 0, !mcsema_real_eip !64
  store i1 %331, i1* %ZF, !mcsema_real_eip !64
  %332 = lshr i32 %322, 31, !mcsema_real_eip !64
  %333 = trunc i32 %332 to i1, !mcsema_real_eip !64
  store i1 %333, i1* %SF, !mcsema_real_eip !64
  %334 = icmp ult i32 %EAX_val.86, 13, !mcsema_real_eip !64
  store i1 %334, i1* %CF, !mcsema_real_eip !64
  %335 = xor i32 %EAX_val.86, 13, !mcsema_real_eip !64
  %336 = and i32 %335, %323, !mcsema_real_eip !64
  %337 = lshr i32 %336, 31, !mcsema_real_eip !64
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !64
  store i1 %338, i1* %OF, !mcsema_real_eip !64
  %339 = zext i32 %322 to i64, !mcsema_real_eip !64
  store i64 %339, i64* %XAX, !mcsema_real_eip !64
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -36
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %EAX_val.89 = load i32, i32* %EAX.25, !mcsema_real_eip !65
  %340 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !65
  %341 = inttoptr i64 %340 to i32*, !mcsema_real_eip !65
  store i32 %EAX_val.89, i32* %341, !mcsema_real_eip !65
  %342 = load i1, i1* %ZF, !mcsema_real_eip !66
  br i1 %342, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !66

block_0x94:                                       ; preds = %319
  br label %block_0x99, !mcsema_real_eip !67

block_0x1f3:                                      ; preds = %319
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %343 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !68
  %344 = inttoptr i64 %343 to i32*, !mcsema_real_eip !68
  %_ptr_bt_478 = bitcast i32* %344 to i8*
  %_offset_above_rbp_479 = sub i64 %343, %_local_end_to_int_
  %_pot_address_in_parent_stack_480 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_479
  %_cond1_481 = icmp ugt i8* %_ptr_bt_478, %_local_stack_end_ptr_
  %_cond2_1_482 = icmp ugt i8* %_ptr_bt_478, %_parent_stack_end_ptr_
  %_cond2_2_483 = icmp ult i8* %_ptr_bt_478, %_parent_stack_start_ptr_
  %_cond2_484 = or i1 %_cond2_1_482, %_cond2_2_483
  %_cond4_485 = icmp ule i8* %_pot_address_in_parent_stack_480, %_parent_stack_end_ptr_
  %_cond1_n_cond2_486 = and i1 %_cond1_481, %_cond2_484
  %_cond1_n_cond2_cond3_487 = and i1 %_cond1_n_cond2_486, %_cond4_485
  br i1 %_cond1_n_cond2_cond3_487, label %345, label %346

; <label>:345:                                    ; preds = %block_0x1f3
  %_address_in_parent_stack_bt_489 = bitcast i8* %_pot_address_in_parent_stack_480 to i32*
  br label %346

; <label>:346:                                    ; preds = %block_0x1f3, %345
  %347 = phi i32* [ %344, %block_0x1f3 ], [ %_address_in_parent_stack_bt_489, %345 ]
  %_new_load_490 = load i32, i32* %347
  %348 = zext i32 %_new_load_490 to i64, !mcsema_real_eip !68
  store i64 %348, i64* %XAX, !mcsema_real_eip !68
  %EAX_val.92 = load i32, i32* %EAX.25, !mcsema_real_eip !69
  %349 = add i32 13, %EAX_val.92, !mcsema_real_eip !69
  %350 = xor i32 %349, %EAX_val.92, !mcsema_real_eip !69
  %351 = xor i32 %350, 13, !mcsema_real_eip !69
  %352 = and i32 %351, 16, !mcsema_real_eip !69
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !69
  store i1 %353, i1* %AF, !mcsema_real_eip !69
  %354 = lshr i32 %349, 31, !mcsema_real_eip !69
  %355 = trunc i32 %354 to i1, !mcsema_real_eip !69
  store i1 %355, i1* %SF, !mcsema_real_eip !69
  %356 = icmp eq i32 %349, 0, !mcsema_real_eip !69
  store i1 %356, i1* %ZF, !mcsema_real_eip !69
  %357 = xor i32 %EAX_val.92, 13, !mcsema_real_eip !69
  %358 = xor i32 %357, -1, !mcsema_real_eip !69
  %359 = and i32 %358, %350, !mcsema_real_eip !69
  %360 = lshr i32 %359, 31, !mcsema_real_eip !69
  %361 = and i32 %360, 1, !mcsema_real_eip !69
  %362 = trunc i32 %361 to i1, !mcsema_real_eip !69
  store i1 %362, i1* %OF, !mcsema_real_eip !69
  %363 = trunc i32 %349 to i8, !mcsema_real_eip !69
  %364 = call i8 @llvm.ctpop.i8(i8 %363), !mcsema_real_eip !69
  %365 = trunc i8 %364 to i1, !mcsema_real_eip !69
  %366 = xor i1 %365, true, !mcsema_real_eip !69
  store i1 %366, i1* %PF, !mcsema_real_eip !69
  %367 = icmp ult i32 %349, %EAX_val.92, !mcsema_real_eip !69
  store i1 %367, i1* %CF, !mcsema_real_eip !69
  %368 = zext i32 %349 to i64, !mcsema_real_eip !69
  store i64 %368, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.95 = load i32, i32* %EAX.25, !mcsema_real_eip !70
  store i32 %EAX_val.95, i32* %344, !mcsema_real_eip !70
  br label %block_0x2c8, !mcsema_real_eip !71

block_0x99:                                       ; preds = %block_0x94
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -12
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %369 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !72
  %370 = inttoptr i64 %369 to i32*, !mcsema_real_eip !72
  %_ptr_bt_493 = bitcast i32* %370 to i8*
  %_offset_above_rbp_494 = sub i64 %369, %_local_end_to_int_
  %_pot_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_494
  %_cond1_496 = icmp ugt i8* %_ptr_bt_493, %_local_stack_end_ptr_
  %_cond2_1_497 = icmp ugt i8* %_ptr_bt_493, %_parent_stack_end_ptr_
  %_cond2_2_498 = icmp ult i8* %_ptr_bt_493, %_parent_stack_start_ptr_
  %_cond2_499 = or i1 %_cond2_1_497, %_cond2_2_498
  %_cond4_500 = icmp ule i8* %_pot_address_in_parent_stack_495, %_parent_stack_end_ptr_
  %_cond1_n_cond2_501 = and i1 %_cond1_496, %_cond2_499
  %_cond1_n_cond2_cond3_502 = and i1 %_cond1_n_cond2_501, %_cond4_500
  br i1 %_cond1_n_cond2_cond3_502, label %371, label %372

; <label>:371:                                    ; preds = %block_0x99
  %_address_in_parent_stack_bt_504 = bitcast i8* %_pot_address_in_parent_stack_495 to i32*
  br label %372

; <label>:372:                                    ; preds = %block_0x99, %371
  %373 = phi i32* [ %370, %block_0x99 ], [ %_address_in_parent_stack_bt_504, %371 ]
  %_new_load_505 = load i32, i32* %373
  %374 = zext i32 %_new_load_505 to i64, !mcsema_real_eip !72
  store i64 %374, i64* %XAX, !mcsema_real_eip !72
  %EAX_val.98 = load i32, i32* %EAX.25, !mcsema_real_eip !73
  %375 = sub i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %376 = xor i32 %375, %EAX_val.98, !mcsema_real_eip !73
  %377 = xor i32 %376, 19, !mcsema_real_eip !73
  %378 = and i32 %377, 16, !mcsema_real_eip !73
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !73
  store i1 %379, i1* %AF, !mcsema_real_eip !73
  %380 = trunc i32 %375 to i8, !mcsema_real_eip !73
  %381 = call i8 @llvm.ctpop.i8(i8 %380), !mcsema_real_eip !73
  %382 = trunc i8 %381 to i1, !mcsema_real_eip !73
  %383 = xor i1 %382, true, !mcsema_real_eip !73
  store i1 %383, i1* %PF, !mcsema_real_eip !73
  %384 = icmp eq i32 %375, 0, !mcsema_real_eip !73
  store i1 %384, i1* %ZF, !mcsema_real_eip !73
  %385 = lshr i32 %375, 31, !mcsema_real_eip !73
  %386 = trunc i32 %385 to i1, !mcsema_real_eip !73
  store i1 %386, i1* %SF, !mcsema_real_eip !73
  %387 = icmp ult i32 %EAX_val.98, 19, !mcsema_real_eip !73
  store i1 %387, i1* %CF, !mcsema_real_eip !73
  %388 = xor i32 %EAX_val.98, 19, !mcsema_real_eip !73
  %389 = and i32 %388, %376, !mcsema_real_eip !73
  %390 = lshr i32 %389, 31, !mcsema_real_eip !73
  %391 = trunc i32 %390 to i1, !mcsema_real_eip !73
  store i1 %391, i1* %OF, !mcsema_real_eip !73
  %392 = zext i32 %375 to i64, !mcsema_real_eip !73
  store i64 %392, i64* %XAX, !mcsema_real_eip !73
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -40
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %EAX_val.101 = load i32, i32* %EAX.25, !mcsema_real_eip !74
  %393 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !74
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !74
  store i32 %EAX_val.101, i32* %394, !mcsema_real_eip !74
  %395 = load i1, i1* %ZF, !mcsema_real_eip !75
  br i1 %395, label %block_0x201, label %block_0xa8, !mcsema_real_eip !75

block_0xa8:                                       ; preds = %372
  br label %block_0xad, !mcsema_real_eip !76

block_0x201:                                      ; preds = %372
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %396 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !77
  %397 = inttoptr i64 %396 to i32*, !mcsema_real_eip !77
  %_ptr_bt_508 = bitcast i32* %397 to i8*
  %_offset_above_rbp_509 = sub i64 %396, %_local_end_to_int_
  %_pot_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_509
  %_cond1_511 = icmp ugt i8* %_ptr_bt_508, %_local_stack_end_ptr_
  %_cond2_1_512 = icmp ugt i8* %_ptr_bt_508, %_parent_stack_end_ptr_
  %_cond2_2_513 = icmp ult i8* %_ptr_bt_508, %_parent_stack_start_ptr_
  %_cond2_514 = or i1 %_cond2_1_512, %_cond2_2_513
  %_cond4_515 = icmp ule i8* %_pot_address_in_parent_stack_510, %_parent_stack_end_ptr_
  %_cond1_n_cond2_516 = and i1 %_cond1_511, %_cond2_514
  %_cond1_n_cond2_cond3_517 = and i1 %_cond1_n_cond2_516, %_cond4_515
  br i1 %_cond1_n_cond2_cond3_517, label %398, label %399

; <label>:398:                                    ; preds = %block_0x201
  %_address_in_parent_stack_bt_519 = bitcast i8* %_pot_address_in_parent_stack_510 to i32*
  br label %399

; <label>:399:                                    ; preds = %block_0x201, %398
  %400 = phi i32* [ %397, %block_0x201 ], [ %_address_in_parent_stack_bt_519, %398 ]
  %_new_load_520 = load i32, i32* %400
  %401 = zext i32 %_new_load_520 to i64, !mcsema_real_eip !77
  store i64 %401, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.104 = load i32, i32* %EAX.25, !mcsema_real_eip !78
  %402 = add i32 19, %EAX_val.104, !mcsema_real_eip !78
  %403 = xor i32 %402, %EAX_val.104, !mcsema_real_eip !78
  %404 = xor i32 %403, 19, !mcsema_real_eip !78
  %405 = and i32 %404, 16, !mcsema_real_eip !78
  %406 = icmp ne i32 %405, 0, !mcsema_real_eip !78
  store i1 %406, i1* %AF, !mcsema_real_eip !78
  %407 = lshr i32 %402, 31, !mcsema_real_eip !78
  %408 = trunc i32 %407 to i1, !mcsema_real_eip !78
  store i1 %408, i1* %SF, !mcsema_real_eip !78
  %409 = icmp eq i32 %402, 0, !mcsema_real_eip !78
  store i1 %409, i1* %ZF, !mcsema_real_eip !78
  %410 = xor i32 %EAX_val.104, 19, !mcsema_real_eip !78
  %411 = xor i32 %410, -1, !mcsema_real_eip !78
  %412 = and i32 %411, %403, !mcsema_real_eip !78
  %413 = lshr i32 %412, 31, !mcsema_real_eip !78
  %414 = and i32 %413, 1, !mcsema_real_eip !78
  %415 = trunc i32 %414 to i1, !mcsema_real_eip !78
  store i1 %415, i1* %OF, !mcsema_real_eip !78
  %416 = trunc i32 %402 to i8, !mcsema_real_eip !78
  %417 = call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !78
  %418 = trunc i8 %417 to i1, !mcsema_real_eip !78
  %419 = xor i1 %418, true, !mcsema_real_eip !78
  store i1 %419, i1* %PF, !mcsema_real_eip !78
  %420 = icmp ult i32 %402, %EAX_val.104, !mcsema_real_eip !78
  store i1 %420, i1* %CF, !mcsema_real_eip !78
  %421 = zext i32 %402 to i64, !mcsema_real_eip !78
  store i64 %421, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.107 = load i32, i32* %EAX.25, !mcsema_real_eip !79
  store i32 %EAX_val.107, i32* %397, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xad:                                       ; preds = %block_0xa8
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -12
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %422 = ptrtoint i64* %_allin_new_bt_115 to i64, !mcsema_real_eip !81
  %423 = inttoptr i64 %422 to i32*, !mcsema_real_eip !81
  %_ptr_bt_523 = bitcast i32* %423 to i8*
  %_offset_above_rbp_524 = sub i64 %422, %_local_end_to_int_
  %_pot_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_524
  %_cond1_526 = icmp ugt i8* %_ptr_bt_523, %_local_stack_end_ptr_
  %_cond2_1_527 = icmp ugt i8* %_ptr_bt_523, %_parent_stack_end_ptr_
  %_cond2_2_528 = icmp ult i8* %_ptr_bt_523, %_parent_stack_start_ptr_
  %_cond2_529 = or i1 %_cond2_1_527, %_cond2_2_528
  %_cond4_530 = icmp ule i8* %_pot_address_in_parent_stack_525, %_parent_stack_end_ptr_
  %_cond1_n_cond2_531 = and i1 %_cond1_526, %_cond2_529
  %_cond1_n_cond2_cond3_532 = and i1 %_cond1_n_cond2_531, %_cond4_530
  br i1 %_cond1_n_cond2_cond3_532, label %424, label %425

; <label>:424:                                    ; preds = %block_0xad
  %_address_in_parent_stack_bt_534 = bitcast i8* %_pot_address_in_parent_stack_525 to i32*
  br label %425

; <label>:425:                                    ; preds = %block_0xad, %424
  %426 = phi i32* [ %423, %block_0xad ], [ %_address_in_parent_stack_bt_534, %424 ]
  %_new_load_535 = load i32, i32* %426
  %427 = zext i32 %_new_load_535 to i64, !mcsema_real_eip !81
  store i64 %427, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.110 = load i32, i32* %EAX.25, !mcsema_real_eip !82
  %428 = sub i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %429 = xor i32 %428, %EAX_val.110, !mcsema_real_eip !82
  %430 = xor i32 %429, 255, !mcsema_real_eip !82
  %431 = and i32 %430, 16, !mcsema_real_eip !82
  %432 = icmp ne i32 %431, 0, !mcsema_real_eip !82
  store i1 %432, i1* %AF, !mcsema_real_eip !82
  %433 = trunc i32 %428 to i8, !mcsema_real_eip !82
  %434 = call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !82
  %435 = trunc i8 %434 to i1, !mcsema_real_eip !82
  %436 = xor i1 %435, true, !mcsema_real_eip !82
  store i1 %436, i1* %PF, !mcsema_real_eip !82
  %437 = icmp eq i32 %428, 0, !mcsema_real_eip !82
  store i1 %437, i1* %ZF, !mcsema_real_eip !82
  %438 = lshr i32 %428, 31, !mcsema_real_eip !82
  %439 = trunc i32 %438 to i1, !mcsema_real_eip !82
  store i1 %439, i1* %SF, !mcsema_real_eip !82
  %440 = icmp ult i32 %EAX_val.110, 255, !mcsema_real_eip !82
  store i1 %440, i1* %CF, !mcsema_real_eip !82
  %441 = xor i32 %EAX_val.110, 255, !mcsema_real_eip !82
  %442 = and i32 %441, %429, !mcsema_real_eip !82
  %443 = lshr i32 %442, 31, !mcsema_real_eip !82
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !82
  store i1 %444, i1* %OF, !mcsema_real_eip !82
  %445 = zext i32 %428 to i64, !mcsema_real_eip !82
  store i64 %445, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -44
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %EAX_val.113 = load i32, i32* %EAX.25, !mcsema_real_eip !83
  %446 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !83
  %447 = inttoptr i64 %446 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.113, i32* %447, !mcsema_real_eip !83
  %448 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %448, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !84

block_0xbe:                                       ; preds = %425
  br label %block_0xc3, !mcsema_real_eip !85

block_0x20f:                                      ; preds = %425
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %449 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !86
  %450 = inttoptr i64 %449 to i32*, !mcsema_real_eip !86
  %_ptr_bt_538 = bitcast i32* %450 to i8*
  %_offset_above_rbp_539 = sub i64 %449, %_local_end_to_int_
  %_pot_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_539
  %_cond1_541 = icmp ugt i8* %_ptr_bt_538, %_local_stack_end_ptr_
  %_cond2_1_542 = icmp ugt i8* %_ptr_bt_538, %_parent_stack_end_ptr_
  %_cond2_2_543 = icmp ult i8* %_ptr_bt_538, %_parent_stack_start_ptr_
  %_cond2_544 = or i1 %_cond2_1_542, %_cond2_2_543
  %_cond4_545 = icmp ule i8* %_pot_address_in_parent_stack_540, %_parent_stack_end_ptr_
  %_cond1_n_cond2_546 = and i1 %_cond1_541, %_cond2_544
  %_cond1_n_cond2_cond3_547 = and i1 %_cond1_n_cond2_546, %_cond4_545
  br i1 %_cond1_n_cond2_cond3_547, label %451, label %452

; <label>:451:                                    ; preds = %block_0x20f
  %_address_in_parent_stack_bt_549 = bitcast i8* %_pot_address_in_parent_stack_540 to i32*
  br label %452

; <label>:452:                                    ; preds = %block_0x20f, %451
  %453 = phi i32* [ %450, %block_0x20f ], [ %_address_in_parent_stack_bt_549, %451 ]
  %_new_load_550 = load i32, i32* %453
  %454 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !86
  store i64 %454, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.116 = load i32, i32* %EAX.25, !mcsema_real_eip !87
  %455 = add i32 255, %EAX_val.116, !mcsema_real_eip !87
  %456 = xor i32 %455, %EAX_val.116, !mcsema_real_eip !87
  %457 = xor i32 %456, 255, !mcsema_real_eip !87
  %458 = and i32 %457, 16, !mcsema_real_eip !87
  %459 = icmp ne i32 %458, 0, !mcsema_real_eip !87
  store i1 %459, i1* %AF, !mcsema_real_eip !87
  %460 = lshr i32 %455, 31, !mcsema_real_eip !87
  %461 = trunc i32 %460 to i1, !mcsema_real_eip !87
  store i1 %461, i1* %SF, !mcsema_real_eip !87
  %462 = icmp eq i32 %455, 0, !mcsema_real_eip !87
  store i1 %462, i1* %ZF, !mcsema_real_eip !87
  %463 = xor i32 %EAX_val.116, 255, !mcsema_real_eip !87
  %464 = xor i32 %463, -1, !mcsema_real_eip !87
  %465 = and i32 %464, %456, !mcsema_real_eip !87
  %466 = lshr i32 %465, 31, !mcsema_real_eip !87
  %467 = and i32 %466, 1, !mcsema_real_eip !87
  %468 = trunc i32 %467 to i1, !mcsema_real_eip !87
  store i1 %468, i1* %OF, !mcsema_real_eip !87
  %469 = trunc i32 %455 to i8, !mcsema_real_eip !87
  %470 = call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !87
  %471 = trunc i8 %470 to i1, !mcsema_real_eip !87
  %472 = xor i1 %471, true, !mcsema_real_eip !87
  store i1 %472, i1* %PF, !mcsema_real_eip !87
  %473 = icmp ult i32 %455, %EAX_val.116, !mcsema_real_eip !87
  store i1 %473, i1* %CF, !mcsema_real_eip !87
  %474 = zext i32 %455 to i64, !mcsema_real_eip !87
  store i64 %474, i64* %XAX, !mcsema_real_eip !87
  %EAX_val.119 = load i32, i32* %EAX.25, !mcsema_real_eip !88
  store i32 %EAX_val.119, i32* %450, !mcsema_real_eip !88
  br label %block_0x2c8, !mcsema_real_eip !89

block_0xc3:                                       ; preds = %block_0xbe
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -12
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %475 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !90
  %476 = inttoptr i64 %475 to i32*, !mcsema_real_eip !90
  %_ptr_bt_553 = bitcast i32* %476 to i8*
  %_offset_above_rbp_554 = sub i64 %475, %_local_end_to_int_
  %_pot_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_554
  %_cond1_556 = icmp ugt i8* %_ptr_bt_553, %_local_stack_end_ptr_
  %_cond2_1_557 = icmp ugt i8* %_ptr_bt_553, %_parent_stack_end_ptr_
  %_cond2_2_558 = icmp ult i8* %_ptr_bt_553, %_parent_stack_start_ptr_
  %_cond2_559 = or i1 %_cond2_1_557, %_cond2_2_558
  %_cond4_560 = icmp ule i8* %_pot_address_in_parent_stack_555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_561 = and i1 %_cond1_556, %_cond2_559
  %_cond1_n_cond2_cond3_562 = and i1 %_cond1_n_cond2_561, %_cond4_560
  br i1 %_cond1_n_cond2_cond3_562, label %477, label %478

; <label>:477:                                    ; preds = %block_0xc3
  %_address_in_parent_stack_bt_564 = bitcast i8* %_pot_address_in_parent_stack_555 to i32*
  br label %478

; <label>:478:                                    ; preds = %block_0xc3, %477
  %479 = phi i32* [ %476, %block_0xc3 ], [ %_address_in_parent_stack_bt_564, %477 ]
  %_new_load_565 = load i32, i32* %479
  %480 = zext i32 %_new_load_565 to i64, !mcsema_real_eip !90
  store i64 %480, i64* %XAX, !mcsema_real_eip !90
  %EAX_val.122 = load i32, i32* %EAX.25, !mcsema_real_eip !91
  %481 = sub i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %482 = xor i32 %481, %EAX_val.122, !mcsema_real_eip !91
  %483 = xor i32 %482, 74633, !mcsema_real_eip !91
  %484 = and i32 %483, 16, !mcsema_real_eip !91
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !91
  store i1 %485, i1* %AF, !mcsema_real_eip !91
  %486 = trunc i32 %481 to i8, !mcsema_real_eip !91
  %487 = call i8 @llvm.ctpop.i8(i8 %486), !mcsema_real_eip !91
  %488 = trunc i8 %487 to i1, !mcsema_real_eip !91
  %489 = xor i1 %488, true, !mcsema_real_eip !91
  store i1 %489, i1* %PF, !mcsema_real_eip !91
  %490 = icmp eq i32 %481, 0, !mcsema_real_eip !91
  store i1 %490, i1* %ZF, !mcsema_real_eip !91
  %491 = lshr i32 %481, 31, !mcsema_real_eip !91
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !91
  store i1 %492, i1* %SF, !mcsema_real_eip !91
  %493 = icmp ult i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  store i1 %493, i1* %CF, !mcsema_real_eip !91
  %494 = xor i32 %EAX_val.122, 74633, !mcsema_real_eip !91
  %495 = and i32 %494, %482, !mcsema_real_eip !91
  %496 = lshr i32 %495, 31, !mcsema_real_eip !91
  %497 = trunc i32 %496 to i1, !mcsema_real_eip !91
  store i1 %497, i1* %OF, !mcsema_real_eip !91
  %498 = zext i32 %481 to i64, !mcsema_real_eip !91
  store i64 %498, i64* %XAX, !mcsema_real_eip !91
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -48
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %EAX_val.125 = load i32, i32* %EAX.25, !mcsema_real_eip !92
  %499 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !92
  %500 = inttoptr i64 %499 to i32*, !mcsema_real_eip !92
  store i32 %EAX_val.125, i32* %500, !mcsema_real_eip !92
  %501 = load i1, i1* %ZF, !mcsema_real_eip !93
  br i1 %501, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !93

block_0xd4:                                       ; preds = %478
  br label %block_0xd9, !mcsema_real_eip !94

block_0x21f:                                      ; preds = %478
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %502 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !95
  %503 = inttoptr i64 %502 to i32*, !mcsema_real_eip !95
  %_ptr_bt_568 = bitcast i32* %503 to i8*
  %_offset_above_rbp_569 = sub i64 %502, %_local_end_to_int_
  %_pot_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_569
  %_cond1_571 = icmp ugt i8* %_ptr_bt_568, %_local_stack_end_ptr_
  %_cond2_1_572 = icmp ugt i8* %_ptr_bt_568, %_parent_stack_end_ptr_
  %_cond2_2_573 = icmp ult i8* %_ptr_bt_568, %_parent_stack_start_ptr_
  %_cond2_574 = or i1 %_cond2_1_572, %_cond2_2_573
  %_cond4_575 = icmp ule i8* %_pot_address_in_parent_stack_570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_576 = and i1 %_cond1_571, %_cond2_574
  %_cond1_n_cond2_cond3_577 = and i1 %_cond1_n_cond2_576, %_cond4_575
  br i1 %_cond1_n_cond2_cond3_577, label %504, label %505

; <label>:504:                                    ; preds = %block_0x21f
  %_address_in_parent_stack_bt_579 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %505

; <label>:505:                                    ; preds = %block_0x21f, %504
  %506 = phi i32* [ %503, %block_0x21f ], [ %_address_in_parent_stack_bt_579, %504 ]
  %_new_load_580 = load i32, i32* %506
  %507 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !95
  store i64 %507, i64* %XAX, !mcsema_real_eip !95
  %EAX_val.128 = load i32, i32* %EAX.25, !mcsema_real_eip !96
  %508 = add i32 74633, %EAX_val.128, !mcsema_real_eip !96
  %509 = xor i32 %508, %EAX_val.128, !mcsema_real_eip !96
  %510 = xor i32 %509, 74633, !mcsema_real_eip !96
  %511 = and i32 %510, 16, !mcsema_real_eip !96
  %512 = icmp ne i32 %511, 0, !mcsema_real_eip !96
  store i1 %512, i1* %AF, !mcsema_real_eip !96
  %513 = lshr i32 %508, 31, !mcsema_real_eip !96
  %514 = trunc i32 %513 to i1, !mcsema_real_eip !96
  store i1 %514, i1* %SF, !mcsema_real_eip !96
  %515 = icmp eq i32 %508, 0, !mcsema_real_eip !96
  store i1 %515, i1* %ZF, !mcsema_real_eip !96
  %516 = xor i32 %EAX_val.128, 74633, !mcsema_real_eip !96
  %517 = xor i32 %516, -1, !mcsema_real_eip !96
  %518 = and i32 %517, %509, !mcsema_real_eip !96
  %519 = lshr i32 %518, 31, !mcsema_real_eip !96
  %520 = and i32 %519, 1, !mcsema_real_eip !96
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !96
  store i1 %521, i1* %OF, !mcsema_real_eip !96
  %522 = trunc i32 %508 to i8, !mcsema_real_eip !96
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !96
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !96
  %525 = xor i1 %524, true, !mcsema_real_eip !96
  store i1 %525, i1* %PF, !mcsema_real_eip !96
  %526 = icmp ult i32 %508, %EAX_val.128, !mcsema_real_eip !96
  store i1 %526, i1* %CF, !mcsema_real_eip !96
  %527 = zext i32 %508 to i64, !mcsema_real_eip !96
  store i64 %527, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.131 = load i32, i32* %EAX.25, !mcsema_real_eip !97
  store i32 %EAX_val.131, i32* %503, !mcsema_real_eip !97
  br label %block_0x2c8, !mcsema_real_eip !98

block_0xd9:                                       ; preds = %block_0xd4
  %_load_rbp_ptr_137 = load i8*, i8** %_RBP_ptr_
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -12
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %528 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !99
  %529 = inttoptr i64 %528 to i32*, !mcsema_real_eip !99
  %_ptr_bt_583 = bitcast i32* %529 to i8*
  %_offset_above_rbp_584 = sub i64 %528, %_local_end_to_int_
  %_pot_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_584
  %_cond1_586 = icmp ugt i8* %_ptr_bt_583, %_local_stack_end_ptr_
  %_cond2_1_587 = icmp ugt i8* %_ptr_bt_583, %_parent_stack_end_ptr_
  %_cond2_2_588 = icmp ult i8* %_ptr_bt_583, %_parent_stack_start_ptr_
  %_cond2_589 = or i1 %_cond2_1_587, %_cond2_2_588
  %_cond4_590 = icmp ule i8* %_pot_address_in_parent_stack_585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_591 = and i1 %_cond1_586, %_cond2_589
  %_cond1_n_cond2_cond3_592 = and i1 %_cond1_n_cond2_591, %_cond4_590
  br i1 %_cond1_n_cond2_cond3_592, label %530, label %531

; <label>:530:                                    ; preds = %block_0xd9
  %_address_in_parent_stack_bt_594 = bitcast i8* %_pot_address_in_parent_stack_585 to i32*
  br label %531

; <label>:531:                                    ; preds = %block_0xd9, %530
  %532 = phi i32* [ %529, %block_0xd9 ], [ %_address_in_parent_stack_bt_594, %530 ]
  %_new_load_595 = load i32, i32* %532
  %533 = zext i32 %_new_load_595 to i64, !mcsema_real_eip !99
  store i64 %533, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.134 = load i32, i32* %EAX.25, !mcsema_real_eip !100
  %534 = sub i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %535 = xor i32 %534, %EAX_val.134, !mcsema_real_eip !100
  %536 = xor i32 %535, 74634, !mcsema_real_eip !100
  %537 = and i32 %536, 16, !mcsema_real_eip !100
  %538 = icmp ne i32 %537, 0, !mcsema_real_eip !100
  store i1 %538, i1* %AF, !mcsema_real_eip !100
  %539 = trunc i32 %534 to i8, !mcsema_real_eip !100
  %540 = call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !100
  %541 = trunc i8 %540 to i1, !mcsema_real_eip !100
  %542 = xor i1 %541, true, !mcsema_real_eip !100
  store i1 %542, i1* %PF, !mcsema_real_eip !100
  %543 = icmp eq i32 %534, 0, !mcsema_real_eip !100
  store i1 %543, i1* %ZF, !mcsema_real_eip !100
  %544 = lshr i32 %534, 31, !mcsema_real_eip !100
  %545 = trunc i32 %544 to i1, !mcsema_real_eip !100
  store i1 %545, i1* %SF, !mcsema_real_eip !100
  %546 = icmp ult i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  store i1 %546, i1* %CF, !mcsema_real_eip !100
  %547 = xor i32 %EAX_val.134, 74634, !mcsema_real_eip !100
  %548 = and i32 %547, %535, !mcsema_real_eip !100
  %549 = lshr i32 %548, 31, !mcsema_real_eip !100
  %550 = trunc i32 %549 to i1, !mcsema_real_eip !100
  store i1 %550, i1* %OF, !mcsema_real_eip !100
  %551 = zext i32 %534 to i64, !mcsema_real_eip !100
  store i64 %551, i64* %XAX, !mcsema_real_eip !100
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -52
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.137 = load i32, i32* %EAX.25, !mcsema_real_eip !101
  %552 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !101
  %553 = inttoptr i64 %552 to i32*, !mcsema_real_eip !101
  store i32 %EAX_val.137, i32* %553, !mcsema_real_eip !101
  %554 = load i1, i1* %ZF, !mcsema_real_eip !102
  br i1 %554, label %block_0x22f, label %block_0xea, !mcsema_real_eip !102

block_0xea:                                       ; preds = %531
  br label %block_0xef, !mcsema_real_eip !103

block_0x22f:                                      ; preds = %531
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -8
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %555 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !104
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !104
  %_ptr_bt_598 = bitcast i32* %556 to i8*
  %_offset_above_rbp_599 = sub i64 %555, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %_ptr_bt_598, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %_ptr_bt_598, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %_ptr_bt_598, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  br i1 %_cond1_n_cond2_cond3_607, label %557, label %558

; <label>:557:                                    ; preds = %block_0x22f
  %_address_in_parent_stack_bt_609 = bitcast i8* %_pot_address_in_parent_stack_600 to i32*
  br label %558

; <label>:558:                                    ; preds = %block_0x22f, %557
  %559 = phi i32* [ %556, %block_0x22f ], [ %_address_in_parent_stack_bt_609, %557 ]
  %_new_load_610 = load i32, i32* %559
  %560 = zext i32 %_new_load_610 to i64, !mcsema_real_eip !104
  store i64 %560, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.140 = load i32, i32* %EAX.25, !mcsema_real_eip !105
  %561 = add i32 74634, %EAX_val.140, !mcsema_real_eip !105
  %562 = xor i32 %561, %EAX_val.140, !mcsema_real_eip !105
  %563 = xor i32 %562, 74634, !mcsema_real_eip !105
  %564 = and i32 %563, 16, !mcsema_real_eip !105
  %565 = icmp ne i32 %564, 0, !mcsema_real_eip !105
  store i1 %565, i1* %AF, !mcsema_real_eip !105
  %566 = lshr i32 %561, 31, !mcsema_real_eip !105
  %567 = trunc i32 %566 to i1, !mcsema_real_eip !105
  store i1 %567, i1* %SF, !mcsema_real_eip !105
  %568 = icmp eq i32 %561, 0, !mcsema_real_eip !105
  store i1 %568, i1* %ZF, !mcsema_real_eip !105
  %569 = xor i32 %EAX_val.140, 74634, !mcsema_real_eip !105
  %570 = xor i32 %569, -1, !mcsema_real_eip !105
  %571 = and i32 %570, %562, !mcsema_real_eip !105
  %572 = lshr i32 %571, 31, !mcsema_real_eip !105
  %573 = and i32 %572, 1, !mcsema_real_eip !105
  %574 = trunc i32 %573 to i1, !mcsema_real_eip !105
  store i1 %574, i1* %OF, !mcsema_real_eip !105
  %575 = trunc i32 %561 to i8, !mcsema_real_eip !105
  %576 = call i8 @llvm.ctpop.i8(i8 %575), !mcsema_real_eip !105
  %577 = trunc i8 %576 to i1, !mcsema_real_eip !105
  %578 = xor i1 %577, true, !mcsema_real_eip !105
  store i1 %578, i1* %PF, !mcsema_real_eip !105
  %579 = icmp ult i32 %561, %EAX_val.140, !mcsema_real_eip !105
  store i1 %579, i1* %CF, !mcsema_real_eip !105
  %580 = zext i32 %561 to i64, !mcsema_real_eip !105
  store i64 %580, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.143 = load i32, i32* %EAX.25, !mcsema_real_eip !106
  store i32 %EAX_val.143, i32* %556, !mcsema_real_eip !106
  br label %block_0x2c8, !mcsema_real_eip !107

block_0xef:                                       ; preds = %block_0xea
  %_load_rbp_ptr_149 = load i8*, i8** %_RBP_ptr_
  %_new_gep_150 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -12
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %581 = ptrtoint i64* %_allin_new_bt_151 to i64, !mcsema_real_eip !108
  %582 = inttoptr i64 %581 to i32*, !mcsema_real_eip !108
  %_ptr_bt_613 = bitcast i32* %582 to i8*
  %_offset_above_rbp_614 = sub i64 %581, %_local_end_to_int_
  %_pot_address_in_parent_stack_615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_614
  %_cond1_616 = icmp ugt i8* %_ptr_bt_613, %_local_stack_end_ptr_
  %_cond2_1_617 = icmp ugt i8* %_ptr_bt_613, %_parent_stack_end_ptr_
  %_cond2_2_618 = icmp ult i8* %_ptr_bt_613, %_parent_stack_start_ptr_
  %_cond2_619 = or i1 %_cond2_1_617, %_cond2_2_618
  %_cond4_620 = icmp ule i8* %_pot_address_in_parent_stack_615, %_parent_stack_end_ptr_
  %_cond1_n_cond2_621 = and i1 %_cond1_616, %_cond2_619
  %_cond1_n_cond2_cond3_622 = and i1 %_cond1_n_cond2_621, %_cond4_620
  br i1 %_cond1_n_cond2_cond3_622, label %583, label %584

; <label>:583:                                    ; preds = %block_0xef
  %_address_in_parent_stack_bt_624 = bitcast i8* %_pot_address_in_parent_stack_615 to i32*
  br label %584

; <label>:584:                                    ; preds = %block_0xef, %583
  %585 = phi i32* [ %582, %block_0xef ], [ %_address_in_parent_stack_bt_624, %583 ]
  %_new_load_625 = load i32, i32* %585
  %586 = zext i32 %_new_load_625 to i64, !mcsema_real_eip !108
  store i64 %586, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.146 = load i32, i32* %EAX.25, !mcsema_real_eip !109
  %587 = sub i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %588 = xor i32 %587, %EAX_val.146, !mcsema_real_eip !109
  %589 = xor i32 %588, 74635, !mcsema_real_eip !109
  %590 = and i32 %589, 16, !mcsema_real_eip !109
  %591 = icmp ne i32 %590, 0, !mcsema_real_eip !109
  store i1 %591, i1* %AF, !mcsema_real_eip !109
  %592 = trunc i32 %587 to i8, !mcsema_real_eip !109
  %593 = call i8 @llvm.ctpop.i8(i8 %592), !mcsema_real_eip !109
  %594 = trunc i8 %593 to i1, !mcsema_real_eip !109
  %595 = xor i1 %594, true, !mcsema_real_eip !109
  store i1 %595, i1* %PF, !mcsema_real_eip !109
  %596 = icmp eq i32 %587, 0, !mcsema_real_eip !109
  store i1 %596, i1* %ZF, !mcsema_real_eip !109
  %597 = lshr i32 %587, 31, !mcsema_real_eip !109
  %598 = trunc i32 %597 to i1, !mcsema_real_eip !109
  store i1 %598, i1* %SF, !mcsema_real_eip !109
  %599 = icmp ult i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  store i1 %599, i1* %CF, !mcsema_real_eip !109
  %600 = xor i32 %EAX_val.146, 74635, !mcsema_real_eip !109
  %601 = and i32 %600, %588, !mcsema_real_eip !109
  %602 = lshr i32 %601, 31, !mcsema_real_eip !109
  %603 = trunc i32 %602 to i1, !mcsema_real_eip !109
  store i1 %603, i1* %OF, !mcsema_real_eip !109
  %604 = zext i32 %587 to i64, !mcsema_real_eip !109
  store i64 %604, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -56
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %EAX_val.149 = load i32, i32* %EAX.25, !mcsema_real_eip !110
  %605 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !110
  %606 = inttoptr i64 %605 to i32*, !mcsema_real_eip !110
  store i32 %EAX_val.149, i32* %606, !mcsema_real_eip !110
  %607 = load i1, i1* %ZF, !mcsema_real_eip !111
  br i1 %607, label %block_0x23f, label %block_0x100, !mcsema_real_eip !111

block_0x100:                                      ; preds = %584
  br label %block_0x105, !mcsema_real_eip !112

block_0x23f:                                      ; preds = %584
  %_load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_
  %_new_gep_156 = getelementptr i8, i8* %_load_rbp_ptr_155, i64 -8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %608 = ptrtoint i64* %_allin_new_bt_157 to i64, !mcsema_real_eip !113
  %609 = inttoptr i64 %608 to i32*, !mcsema_real_eip !113
  %_ptr_bt_628 = bitcast i32* %609 to i8*
  %_offset_above_rbp_629 = sub i64 %608, %_local_end_to_int_
  %_pot_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_629
  %_cond1_631 = icmp ugt i8* %_ptr_bt_628, %_local_stack_end_ptr_
  %_cond2_1_632 = icmp ugt i8* %_ptr_bt_628, %_parent_stack_end_ptr_
  %_cond2_2_633 = icmp ult i8* %_ptr_bt_628, %_parent_stack_start_ptr_
  %_cond2_634 = or i1 %_cond2_1_632, %_cond2_2_633
  %_cond4_635 = icmp ule i8* %_pot_address_in_parent_stack_630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_636 = and i1 %_cond1_631, %_cond2_634
  %_cond1_n_cond2_cond3_637 = and i1 %_cond1_n_cond2_636, %_cond4_635
  br i1 %_cond1_n_cond2_cond3_637, label %610, label %611

; <label>:610:                                    ; preds = %block_0x23f
  %_address_in_parent_stack_bt_639 = bitcast i8* %_pot_address_in_parent_stack_630 to i32*
  br label %611

; <label>:611:                                    ; preds = %block_0x23f, %610
  %612 = phi i32* [ %609, %block_0x23f ], [ %_address_in_parent_stack_bt_639, %610 ]
  %_new_load_640 = load i32, i32* %612
  %613 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !113
  store i64 %613, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.152 = load i32, i32* %EAX.25, !mcsema_real_eip !114
  %614 = add i32 74635, %EAX_val.152, !mcsema_real_eip !114
  %615 = xor i32 %614, %EAX_val.152, !mcsema_real_eip !114
  %616 = xor i32 %615, 74635, !mcsema_real_eip !114
  %617 = and i32 %616, 16, !mcsema_real_eip !114
  %618 = icmp ne i32 %617, 0, !mcsema_real_eip !114
  store i1 %618, i1* %AF, !mcsema_real_eip !114
  %619 = lshr i32 %614, 31, !mcsema_real_eip !114
  %620 = trunc i32 %619 to i1, !mcsema_real_eip !114
  store i1 %620, i1* %SF, !mcsema_real_eip !114
  %621 = icmp eq i32 %614, 0, !mcsema_real_eip !114
  store i1 %621, i1* %ZF, !mcsema_real_eip !114
  %622 = xor i32 %EAX_val.152, 74635, !mcsema_real_eip !114
  %623 = xor i32 %622, -1, !mcsema_real_eip !114
  %624 = and i32 %623, %615, !mcsema_real_eip !114
  %625 = lshr i32 %624, 31, !mcsema_real_eip !114
  %626 = and i32 %625, 1, !mcsema_real_eip !114
  %627 = trunc i32 %626 to i1, !mcsema_real_eip !114
  store i1 %627, i1* %OF, !mcsema_real_eip !114
  %628 = trunc i32 %614 to i8, !mcsema_real_eip !114
  %629 = call i8 @llvm.ctpop.i8(i8 %628), !mcsema_real_eip !114
  %630 = trunc i8 %629 to i1, !mcsema_real_eip !114
  %631 = xor i1 %630, true, !mcsema_real_eip !114
  store i1 %631, i1* %PF, !mcsema_real_eip !114
  %632 = icmp ult i32 %614, %EAX_val.152, !mcsema_real_eip !114
  store i1 %632, i1* %CF, !mcsema_real_eip !114
  %633 = zext i32 %614 to i64, !mcsema_real_eip !114
  store i64 %633, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.155 = load i32, i32* %EAX.25, !mcsema_real_eip !115
  store i32 %EAX_val.155, i32* %609, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x105:                                      ; preds = %block_0x100
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -12
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %634 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !117
  %635 = inttoptr i64 %634 to i32*, !mcsema_real_eip !117
  %_ptr_bt_643 = bitcast i32* %635 to i8*
  %_offset_above_rbp_644 = sub i64 %634, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %_ptr_bt_643, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %_ptr_bt_643, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %_ptr_bt_643, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  br i1 %_cond1_n_cond2_cond3_652, label %636, label %637

; <label>:636:                                    ; preds = %block_0x105
  %_address_in_parent_stack_bt_654 = bitcast i8* %_pot_address_in_parent_stack_645 to i32*
  br label %637

; <label>:637:                                    ; preds = %block_0x105, %636
  %638 = phi i32* [ %635, %block_0x105 ], [ %_address_in_parent_stack_bt_654, %636 ]
  %_new_load_655 = load i32, i32* %638
  %639 = zext i32 %_new_load_655 to i64, !mcsema_real_eip !117
  store i64 %639, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.158 = load i32, i32* %EAX.25, !mcsema_real_eip !118
  %640 = sub i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %641 = xor i32 %640, %EAX_val.158, !mcsema_real_eip !118
  %642 = xor i32 %641, 74636, !mcsema_real_eip !118
  %643 = and i32 %642, 16, !mcsema_real_eip !118
  %644 = icmp ne i32 %643, 0, !mcsema_real_eip !118
  store i1 %644, i1* %AF, !mcsema_real_eip !118
  %645 = trunc i32 %640 to i8, !mcsema_real_eip !118
  %646 = call i8 @llvm.ctpop.i8(i8 %645), !mcsema_real_eip !118
  %647 = trunc i8 %646 to i1, !mcsema_real_eip !118
  %648 = xor i1 %647, true, !mcsema_real_eip !118
  store i1 %648, i1* %PF, !mcsema_real_eip !118
  %649 = icmp eq i32 %640, 0, !mcsema_real_eip !118
  store i1 %649, i1* %ZF, !mcsema_real_eip !118
  %650 = lshr i32 %640, 31, !mcsema_real_eip !118
  %651 = trunc i32 %650 to i1, !mcsema_real_eip !118
  store i1 %651, i1* %SF, !mcsema_real_eip !118
  %652 = icmp ult i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  store i1 %652, i1* %CF, !mcsema_real_eip !118
  %653 = xor i32 %EAX_val.158, 74636, !mcsema_real_eip !118
  %654 = and i32 %653, %641, !mcsema_real_eip !118
  %655 = lshr i32 %654, 31, !mcsema_real_eip !118
  %656 = trunc i32 %655 to i1, !mcsema_real_eip !118
  store i1 %656, i1* %OF, !mcsema_real_eip !118
  %657 = zext i32 %640 to i64, !mcsema_real_eip !118
  store i64 %657, i64* %XAX, !mcsema_real_eip !118
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -60
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %EAX_val.161 = load i32, i32* %EAX.25, !mcsema_real_eip !119
  %658 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !119
  %659 = inttoptr i64 %658 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.161, i32* %659, !mcsema_real_eip !119
  %660 = load i1, i1* %ZF, !mcsema_real_eip !120
  br i1 %660, label %block_0x24f, label %block_0x116, !mcsema_real_eip !120

block_0x116:                                      ; preds = %637
  br label %block_0x11b, !mcsema_real_eip !121

block_0x24f:                                      ; preds = %637
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -8
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %661 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !122
  %662 = inttoptr i64 %661 to i32*, !mcsema_real_eip !122
  %_ptr_bt_658 = bitcast i32* %662 to i8*
  %_offset_above_rbp_659 = sub i64 %661, %_local_end_to_int_
  %_pot_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_659
  %_cond1_661 = icmp ugt i8* %_ptr_bt_658, %_local_stack_end_ptr_
  %_cond2_1_662 = icmp ugt i8* %_ptr_bt_658, %_parent_stack_end_ptr_
  %_cond2_2_663 = icmp ult i8* %_ptr_bt_658, %_parent_stack_start_ptr_
  %_cond2_664 = or i1 %_cond2_1_662, %_cond2_2_663
  %_cond4_665 = icmp ule i8* %_pot_address_in_parent_stack_660, %_parent_stack_end_ptr_
  %_cond1_n_cond2_666 = and i1 %_cond1_661, %_cond2_664
  %_cond1_n_cond2_cond3_667 = and i1 %_cond1_n_cond2_666, %_cond4_665
  br i1 %_cond1_n_cond2_cond3_667, label %663, label %664

; <label>:663:                                    ; preds = %block_0x24f
  %_address_in_parent_stack_bt_669 = bitcast i8* %_pot_address_in_parent_stack_660 to i32*
  br label %664

; <label>:664:                                    ; preds = %block_0x24f, %663
  %665 = phi i32* [ %662, %block_0x24f ], [ %_address_in_parent_stack_bt_669, %663 ]
  %_new_load_670 = load i32, i32* %665
  %666 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !122
  store i64 %666, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.164 = load i32, i32* %EAX.25, !mcsema_real_eip !123
  %667 = add i32 74636, %EAX_val.164, !mcsema_real_eip !123
  %668 = xor i32 %667, %EAX_val.164, !mcsema_real_eip !123
  %669 = xor i32 %668, 74636, !mcsema_real_eip !123
  %670 = and i32 %669, 16, !mcsema_real_eip !123
  %671 = icmp ne i32 %670, 0, !mcsema_real_eip !123
  store i1 %671, i1* %AF, !mcsema_real_eip !123
  %672 = lshr i32 %667, 31, !mcsema_real_eip !123
  %673 = trunc i32 %672 to i1, !mcsema_real_eip !123
  store i1 %673, i1* %SF, !mcsema_real_eip !123
  %674 = icmp eq i32 %667, 0, !mcsema_real_eip !123
  store i1 %674, i1* %ZF, !mcsema_real_eip !123
  %675 = xor i32 %EAX_val.164, 74636, !mcsema_real_eip !123
  %676 = xor i32 %675, -1, !mcsema_real_eip !123
  %677 = and i32 %676, %668, !mcsema_real_eip !123
  %678 = lshr i32 %677, 31, !mcsema_real_eip !123
  %679 = and i32 %678, 1, !mcsema_real_eip !123
  %680 = trunc i32 %679 to i1, !mcsema_real_eip !123
  store i1 %680, i1* %OF, !mcsema_real_eip !123
  %681 = trunc i32 %667 to i8, !mcsema_real_eip !123
  %682 = call i8 @llvm.ctpop.i8(i8 %681), !mcsema_real_eip !123
  %683 = trunc i8 %682 to i1, !mcsema_real_eip !123
  %684 = xor i1 %683, true, !mcsema_real_eip !123
  store i1 %684, i1* %PF, !mcsema_real_eip !123
  %685 = icmp ult i32 %667, %EAX_val.164, !mcsema_real_eip !123
  store i1 %685, i1* %CF, !mcsema_real_eip !123
  %686 = zext i32 %667 to i64, !mcsema_real_eip !123
  store i64 %686, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.167 = load i32, i32* %EAX.25, !mcsema_real_eip !124
  store i32 %EAX_val.167, i32* %662, !mcsema_real_eip !124
  br label %block_0x2c8, !mcsema_real_eip !125

block_0x11b:                                      ; preds = %block_0x116
  %_load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -12
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %687 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !126
  %688 = inttoptr i64 %687 to i32*, !mcsema_real_eip !126
  %_ptr_bt_673 = bitcast i32* %688 to i8*
  %_offset_above_rbp_674 = sub i64 %687, %_local_end_to_int_
  %_pot_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_674
  %_cond1_676 = icmp ugt i8* %_ptr_bt_673, %_local_stack_end_ptr_
  %_cond2_1_677 = icmp ugt i8* %_ptr_bt_673, %_parent_stack_end_ptr_
  %_cond2_2_678 = icmp ult i8* %_ptr_bt_673, %_parent_stack_start_ptr_
  %_cond2_679 = or i1 %_cond2_1_677, %_cond2_2_678
  %_cond4_680 = icmp ule i8* %_pot_address_in_parent_stack_675, %_parent_stack_end_ptr_
  %_cond1_n_cond2_681 = and i1 %_cond1_676, %_cond2_679
  %_cond1_n_cond2_cond3_682 = and i1 %_cond1_n_cond2_681, %_cond4_680
  br i1 %_cond1_n_cond2_cond3_682, label %689, label %690

; <label>:689:                                    ; preds = %block_0x11b
  %_address_in_parent_stack_bt_684 = bitcast i8* %_pot_address_in_parent_stack_675 to i32*
  br label %690

; <label>:690:                                    ; preds = %block_0x11b, %689
  %691 = phi i32* [ %688, %block_0x11b ], [ %_address_in_parent_stack_bt_684, %689 ]
  %_new_load_685 = load i32, i32* %691
  %692 = zext i32 %_new_load_685 to i64, !mcsema_real_eip !126
  store i64 %692, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.170 = load i32, i32* %EAX.25, !mcsema_real_eip !127
  %693 = sub i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %694 = xor i32 %693, %EAX_val.170, !mcsema_real_eip !127
  %695 = xor i32 %694, 74637, !mcsema_real_eip !127
  %696 = and i32 %695, 16, !mcsema_real_eip !127
  %697 = icmp ne i32 %696, 0, !mcsema_real_eip !127
  store i1 %697, i1* %AF, !mcsema_real_eip !127
  %698 = trunc i32 %693 to i8, !mcsema_real_eip !127
  %699 = call i8 @llvm.ctpop.i8(i8 %698), !mcsema_real_eip !127
  %700 = trunc i8 %699 to i1, !mcsema_real_eip !127
  %701 = xor i1 %700, true, !mcsema_real_eip !127
  store i1 %701, i1* %PF, !mcsema_real_eip !127
  %702 = icmp eq i32 %693, 0, !mcsema_real_eip !127
  store i1 %702, i1* %ZF, !mcsema_real_eip !127
  %703 = lshr i32 %693, 31, !mcsema_real_eip !127
  %704 = trunc i32 %703 to i1, !mcsema_real_eip !127
  store i1 %704, i1* %SF, !mcsema_real_eip !127
  %705 = icmp ult i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  store i1 %705, i1* %CF, !mcsema_real_eip !127
  %706 = xor i32 %EAX_val.170, 74637, !mcsema_real_eip !127
  %707 = and i32 %706, %694, !mcsema_real_eip !127
  %708 = lshr i32 %707, 31, !mcsema_real_eip !127
  %709 = trunc i32 %708 to i1, !mcsema_real_eip !127
  store i1 %709, i1* %OF, !mcsema_real_eip !127
  %710 = zext i32 %693 to i64, !mcsema_real_eip !127
  store i64 %710, i64* %XAX, !mcsema_real_eip !127
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -64
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %EAX_val.173 = load i32, i32* %EAX.25, !mcsema_real_eip !128
  %711 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !128
  %712 = inttoptr i64 %711 to i32*, !mcsema_real_eip !128
  store i32 %EAX_val.173, i32* %712, !mcsema_real_eip !128
  %713 = load i1, i1* %ZF, !mcsema_real_eip !129
  br i1 %713, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !129

block_0x12c:                                      ; preds = %690
  br label %block_0x131, !mcsema_real_eip !130

block_0x25f:                                      ; preds = %690
  %_load_rbp_ptr_179 = load i8*, i8** %_RBP_ptr_
  %_new_gep_180 = getelementptr i8, i8* %_load_rbp_ptr_179, i64 -8
  %_allin_new_bt_181 = bitcast i8* %_new_gep_180 to i64*
  %714 = ptrtoint i64* %_allin_new_bt_181 to i64, !mcsema_real_eip !131
  %715 = inttoptr i64 %714 to i32*, !mcsema_real_eip !131
  %_ptr_bt_688 = bitcast i32* %715 to i8*
  %_offset_above_rbp_689 = sub i64 %714, %_local_end_to_int_
  %_pot_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_689
  %_cond1_691 = icmp ugt i8* %_ptr_bt_688, %_local_stack_end_ptr_
  %_cond2_1_692 = icmp ugt i8* %_ptr_bt_688, %_parent_stack_end_ptr_
  %_cond2_2_693 = icmp ult i8* %_ptr_bt_688, %_parent_stack_start_ptr_
  %_cond2_694 = or i1 %_cond2_1_692, %_cond2_2_693
  %_cond4_695 = icmp ule i8* %_pot_address_in_parent_stack_690, %_parent_stack_end_ptr_
  %_cond1_n_cond2_696 = and i1 %_cond1_691, %_cond2_694
  %_cond1_n_cond2_cond3_697 = and i1 %_cond1_n_cond2_696, %_cond4_695
  br i1 %_cond1_n_cond2_cond3_697, label %716, label %717

; <label>:716:                                    ; preds = %block_0x25f
  %_address_in_parent_stack_bt_699 = bitcast i8* %_pot_address_in_parent_stack_690 to i32*
  br label %717

; <label>:717:                                    ; preds = %block_0x25f, %716
  %718 = phi i32* [ %715, %block_0x25f ], [ %_address_in_parent_stack_bt_699, %716 ]
  %_new_load_700 = load i32, i32* %718
  %719 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !131
  store i64 %719, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.176 = load i32, i32* %EAX.25, !mcsema_real_eip !132
  %720 = add i32 74637, %EAX_val.176, !mcsema_real_eip !132
  %721 = xor i32 %720, %EAX_val.176, !mcsema_real_eip !132
  %722 = xor i32 %721, 74637, !mcsema_real_eip !132
  %723 = and i32 %722, 16, !mcsema_real_eip !132
  %724 = icmp ne i32 %723, 0, !mcsema_real_eip !132
  store i1 %724, i1* %AF, !mcsema_real_eip !132
  %725 = lshr i32 %720, 31, !mcsema_real_eip !132
  %726 = trunc i32 %725 to i1, !mcsema_real_eip !132
  store i1 %726, i1* %SF, !mcsema_real_eip !132
  %727 = icmp eq i32 %720, 0, !mcsema_real_eip !132
  store i1 %727, i1* %ZF, !mcsema_real_eip !132
  %728 = xor i32 %EAX_val.176, 74637, !mcsema_real_eip !132
  %729 = xor i32 %728, -1, !mcsema_real_eip !132
  %730 = and i32 %729, %721, !mcsema_real_eip !132
  %731 = lshr i32 %730, 31, !mcsema_real_eip !132
  %732 = and i32 %731, 1, !mcsema_real_eip !132
  %733 = trunc i32 %732 to i1, !mcsema_real_eip !132
  store i1 %733, i1* %OF, !mcsema_real_eip !132
  %734 = trunc i32 %720 to i8, !mcsema_real_eip !132
  %735 = call i8 @llvm.ctpop.i8(i8 %734), !mcsema_real_eip !132
  %736 = trunc i8 %735 to i1, !mcsema_real_eip !132
  %737 = xor i1 %736, true, !mcsema_real_eip !132
  store i1 %737, i1* %PF, !mcsema_real_eip !132
  %738 = icmp ult i32 %720, %EAX_val.176, !mcsema_real_eip !132
  store i1 %738, i1* %CF, !mcsema_real_eip !132
  %739 = zext i32 %720 to i64, !mcsema_real_eip !132
  store i64 %739, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.179 = load i32, i32* %EAX.25, !mcsema_real_eip !133
  store i32 %EAX_val.179, i32* %715, !mcsema_real_eip !133
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x131:                                      ; preds = %block_0x12c
  %_load_rbp_ptr_185 = load i8*, i8** %_RBP_ptr_
  %_new_gep_186 = getelementptr i8, i8* %_load_rbp_ptr_185, i64 -12
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  %740 = ptrtoint i64* %_allin_new_bt_187 to i64, !mcsema_real_eip !135
  %741 = inttoptr i64 %740 to i32*, !mcsema_real_eip !135
  %_ptr_bt_703 = bitcast i32* %741 to i8*
  %_offset_above_rbp_704 = sub i64 %740, %_local_end_to_int_
  %_pot_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_704
  %_cond1_706 = icmp ugt i8* %_ptr_bt_703, %_local_stack_end_ptr_
  %_cond2_1_707 = icmp ugt i8* %_ptr_bt_703, %_parent_stack_end_ptr_
  %_cond2_2_708 = icmp ult i8* %_ptr_bt_703, %_parent_stack_start_ptr_
  %_cond2_709 = or i1 %_cond2_1_707, %_cond2_2_708
  %_cond4_710 = icmp ule i8* %_pot_address_in_parent_stack_705, %_parent_stack_end_ptr_
  %_cond1_n_cond2_711 = and i1 %_cond1_706, %_cond2_709
  %_cond1_n_cond2_cond3_712 = and i1 %_cond1_n_cond2_711, %_cond4_710
  br i1 %_cond1_n_cond2_cond3_712, label %742, label %743

; <label>:742:                                    ; preds = %block_0x131
  %_address_in_parent_stack_bt_714 = bitcast i8* %_pot_address_in_parent_stack_705 to i32*
  br label %743

; <label>:743:                                    ; preds = %block_0x131, %742
  %744 = phi i32* [ %741, %block_0x131 ], [ %_address_in_parent_stack_bt_714, %742 ]
  %_new_load_715 = load i32, i32* %744
  %745 = zext i32 %_new_load_715 to i64, !mcsema_real_eip !135
  store i64 %745, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.182 = load i32, i32* %EAX.25, !mcsema_real_eip !136
  %746 = sub i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %747 = xor i32 %746, %EAX_val.182, !mcsema_real_eip !136
  %748 = xor i32 %747, 74639, !mcsema_real_eip !136
  %749 = and i32 %748, 16, !mcsema_real_eip !136
  %750 = icmp ne i32 %749, 0, !mcsema_real_eip !136
  store i1 %750, i1* %AF, !mcsema_real_eip !136
  %751 = trunc i32 %746 to i8, !mcsema_real_eip !136
  %752 = call i8 @llvm.ctpop.i8(i8 %751), !mcsema_real_eip !136
  %753 = trunc i8 %752 to i1, !mcsema_real_eip !136
  %754 = xor i1 %753, true, !mcsema_real_eip !136
  store i1 %754, i1* %PF, !mcsema_real_eip !136
  %755 = icmp eq i32 %746, 0, !mcsema_real_eip !136
  store i1 %755, i1* %ZF, !mcsema_real_eip !136
  %756 = lshr i32 %746, 31, !mcsema_real_eip !136
  %757 = trunc i32 %756 to i1, !mcsema_real_eip !136
  store i1 %757, i1* %SF, !mcsema_real_eip !136
  %758 = icmp ult i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  store i1 %758, i1* %CF, !mcsema_real_eip !136
  %759 = xor i32 %EAX_val.182, 74639, !mcsema_real_eip !136
  %760 = and i32 %759, %747, !mcsema_real_eip !136
  %761 = lshr i32 %760, 31, !mcsema_real_eip !136
  %762 = trunc i32 %761 to i1, !mcsema_real_eip !136
  store i1 %762, i1* %OF, !mcsema_real_eip !136
  %763 = zext i32 %746 to i64, !mcsema_real_eip !136
  store i64 %763, i64* %XAX, !mcsema_real_eip !136
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_185, i64 -68
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %EAX_val.185 = load i32, i32* %EAX.25, !mcsema_real_eip !137
  %764 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !137
  %765 = inttoptr i64 %764 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.185, i32* %765, !mcsema_real_eip !137
  %766 = load i1, i1* %ZF, !mcsema_real_eip !138
  br i1 %766, label %block_0x26f, label %block_0x142, !mcsema_real_eip !138

block_0x142:                                      ; preds = %743
  br label %block_0x147, !mcsema_real_eip !139

block_0x26f:                                      ; preds = %743
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -8
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %767 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !140
  %768 = inttoptr i64 %767 to i32*, !mcsema_real_eip !140
  %_ptr_bt_718 = bitcast i32* %768 to i8*
  %_offset_above_rbp_719 = sub i64 %767, %_local_end_to_int_
  %_pot_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_719
  %_cond1_721 = icmp ugt i8* %_ptr_bt_718, %_local_stack_end_ptr_
  %_cond2_1_722 = icmp ugt i8* %_ptr_bt_718, %_parent_stack_end_ptr_
  %_cond2_2_723 = icmp ult i8* %_ptr_bt_718, %_parent_stack_start_ptr_
  %_cond2_724 = or i1 %_cond2_1_722, %_cond2_2_723
  %_cond4_725 = icmp ule i8* %_pot_address_in_parent_stack_720, %_parent_stack_end_ptr_
  %_cond1_n_cond2_726 = and i1 %_cond1_721, %_cond2_724
  %_cond1_n_cond2_cond3_727 = and i1 %_cond1_n_cond2_726, %_cond4_725
  br i1 %_cond1_n_cond2_cond3_727, label %769, label %770

; <label>:769:                                    ; preds = %block_0x26f
  %_address_in_parent_stack_bt_729 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %770

; <label>:770:                                    ; preds = %block_0x26f, %769
  %771 = phi i32* [ %768, %block_0x26f ], [ %_address_in_parent_stack_bt_729, %769 ]
  %_new_load_730 = load i32, i32* %771
  %772 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !140
  store i64 %772, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.188 = load i32, i32* %EAX.25, !mcsema_real_eip !141
  %773 = add i32 74639, %EAX_val.188, !mcsema_real_eip !141
  %774 = xor i32 %773, %EAX_val.188, !mcsema_real_eip !141
  %775 = xor i32 %774, 74639, !mcsema_real_eip !141
  %776 = and i32 %775, 16, !mcsema_real_eip !141
  %777 = icmp ne i32 %776, 0, !mcsema_real_eip !141
  store i1 %777, i1* %AF, !mcsema_real_eip !141
  %778 = lshr i32 %773, 31, !mcsema_real_eip !141
  %779 = trunc i32 %778 to i1, !mcsema_real_eip !141
  store i1 %779, i1* %SF, !mcsema_real_eip !141
  %780 = icmp eq i32 %773, 0, !mcsema_real_eip !141
  store i1 %780, i1* %ZF, !mcsema_real_eip !141
  %781 = xor i32 %EAX_val.188, 74639, !mcsema_real_eip !141
  %782 = xor i32 %781, -1, !mcsema_real_eip !141
  %783 = and i32 %782, %774, !mcsema_real_eip !141
  %784 = lshr i32 %783, 31, !mcsema_real_eip !141
  %785 = and i32 %784, 1, !mcsema_real_eip !141
  %786 = trunc i32 %785 to i1, !mcsema_real_eip !141
  store i1 %786, i1* %OF, !mcsema_real_eip !141
  %787 = trunc i32 %773 to i8, !mcsema_real_eip !141
  %788 = call i8 @llvm.ctpop.i8(i8 %787), !mcsema_real_eip !141
  %789 = trunc i8 %788 to i1, !mcsema_real_eip !141
  %790 = xor i1 %789, true, !mcsema_real_eip !141
  store i1 %790, i1* %PF, !mcsema_real_eip !141
  %791 = icmp ult i32 %773, %EAX_val.188, !mcsema_real_eip !141
  store i1 %791, i1* %CF, !mcsema_real_eip !141
  %792 = zext i32 %773 to i64, !mcsema_real_eip !141
  store i64 %792, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.191 = load i32, i32* %EAX.25, !mcsema_real_eip !142
  store i32 %EAX_val.191, i32* %768, !mcsema_real_eip !142
  br label %block_0x2c8, !mcsema_real_eip !143

block_0x147:                                      ; preds = %block_0x142
  %_load_rbp_ptr_197 = load i8*, i8** %_RBP_ptr_
  %_new_gep_198 = getelementptr i8, i8* %_load_rbp_ptr_197, i64 -12
  %_allin_new_bt_199 = bitcast i8* %_new_gep_198 to i64*
  %793 = ptrtoint i64* %_allin_new_bt_199 to i64, !mcsema_real_eip !144
  %794 = inttoptr i64 %793 to i32*, !mcsema_real_eip !144
  %_ptr_bt_733 = bitcast i32* %794 to i8*
  %_offset_above_rbp_734 = sub i64 %793, %_local_end_to_int_
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ugt i8* %_ptr_bt_733, %_local_stack_end_ptr_
  %_cond2_1_737 = icmp ugt i8* %_ptr_bt_733, %_parent_stack_end_ptr_
  %_cond2_2_738 = icmp ult i8* %_ptr_bt_733, %_parent_stack_start_ptr_
  %_cond2_739 = or i1 %_cond2_1_737, %_cond2_2_738
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond1_736, %_cond2_739
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  br i1 %_cond1_n_cond2_cond3_742, label %795, label %796

; <label>:795:                                    ; preds = %block_0x147
  %_address_in_parent_stack_bt_744 = bitcast i8* %_pot_address_in_parent_stack_735 to i32*
  br label %796

; <label>:796:                                    ; preds = %block_0x147, %795
  %797 = phi i32* [ %794, %block_0x147 ], [ %_address_in_parent_stack_bt_744, %795 ]
  %_new_load_745 = load i32, i32* %797
  %798 = zext i32 %_new_load_745 to i64, !mcsema_real_eip !144
  store i64 %798, i64* %XAX, !mcsema_real_eip !144
  %EAX_val.194 = load i32, i32* %EAX.25, !mcsema_real_eip !145
  %799 = sub i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %800 = xor i32 %799, %EAX_val.194, !mcsema_real_eip !145
  %801 = xor i32 %800, 74640, !mcsema_real_eip !145
  %802 = and i32 %801, 16, !mcsema_real_eip !145
  %803 = icmp ne i32 %802, 0, !mcsema_real_eip !145
  store i1 %803, i1* %AF, !mcsema_real_eip !145
  %804 = trunc i32 %799 to i8, !mcsema_real_eip !145
  %805 = call i8 @llvm.ctpop.i8(i8 %804), !mcsema_real_eip !145
  %806 = trunc i8 %805 to i1, !mcsema_real_eip !145
  %807 = xor i1 %806, true, !mcsema_real_eip !145
  store i1 %807, i1* %PF, !mcsema_real_eip !145
  %808 = icmp eq i32 %799, 0, !mcsema_real_eip !145
  store i1 %808, i1* %ZF, !mcsema_real_eip !145
  %809 = lshr i32 %799, 31, !mcsema_real_eip !145
  %810 = trunc i32 %809 to i1, !mcsema_real_eip !145
  store i1 %810, i1* %SF, !mcsema_real_eip !145
  %811 = icmp ult i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  store i1 %811, i1* %CF, !mcsema_real_eip !145
  %812 = xor i32 %EAX_val.194, 74640, !mcsema_real_eip !145
  %813 = and i32 %812, %800, !mcsema_real_eip !145
  %814 = lshr i32 %813, 31, !mcsema_real_eip !145
  %815 = trunc i32 %814 to i1, !mcsema_real_eip !145
  store i1 %815, i1* %OF, !mcsema_real_eip !145
  %816 = zext i32 %799 to i64, !mcsema_real_eip !145
  store i64 %816, i64* %XAX, !mcsema_real_eip !145
  %_new_gep_201 = getelementptr i8, i8* %_load_rbp_ptr_197, i64 -72
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  %EAX_val.197 = load i32, i32* %EAX.25, !mcsema_real_eip !146
  %817 = ptrtoint i64* %_allin_new_bt_202 to i64, !mcsema_real_eip !146
  %818 = inttoptr i64 %817 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.197, i32* %818, !mcsema_real_eip !146
  %819 = load i1, i1* %ZF, !mcsema_real_eip !147
  br i1 %819, label %block_0x27f, label %block_0x158, !mcsema_real_eip !147

block_0x158:                                      ; preds = %796
  br label %block_0x15d, !mcsema_real_eip !148

block_0x27f:                                      ; preds = %796
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -8
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %820 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !149
  %821 = inttoptr i64 %820 to i32*, !mcsema_real_eip !149
  %_ptr_bt_748 = bitcast i32* %821 to i8*
  %_offset_above_rbp_749 = sub i64 %820, %_local_end_to_int_
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_ptr_bt_748, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_ptr_bt_748, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_ptr_bt_748, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond1_n_cond2_756, %_cond4_755
  br i1 %_cond1_n_cond2_cond3_757, label %822, label %823

; <label>:822:                                    ; preds = %block_0x27f
  %_address_in_parent_stack_bt_759 = bitcast i8* %_pot_address_in_parent_stack_750 to i32*
  br label %823

; <label>:823:                                    ; preds = %block_0x27f, %822
  %824 = phi i32* [ %821, %block_0x27f ], [ %_address_in_parent_stack_bt_759, %822 ]
  %_new_load_760 = load i32, i32* %824
  %825 = zext i32 %_new_load_760 to i64, !mcsema_real_eip !149
  store i64 %825, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.200 = load i32, i32* %EAX.25, !mcsema_real_eip !150
  %826 = add i32 74640, %EAX_val.200, !mcsema_real_eip !150
  %827 = xor i32 %826, %EAX_val.200, !mcsema_real_eip !150
  %828 = xor i32 %827, 74640, !mcsema_real_eip !150
  %829 = and i32 %828, 16, !mcsema_real_eip !150
  %830 = icmp ne i32 %829, 0, !mcsema_real_eip !150
  store i1 %830, i1* %AF, !mcsema_real_eip !150
  %831 = lshr i32 %826, 31, !mcsema_real_eip !150
  %832 = trunc i32 %831 to i1, !mcsema_real_eip !150
  store i1 %832, i1* %SF, !mcsema_real_eip !150
  %833 = icmp eq i32 %826, 0, !mcsema_real_eip !150
  store i1 %833, i1* %ZF, !mcsema_real_eip !150
  %834 = xor i32 %EAX_val.200, 74640, !mcsema_real_eip !150
  %835 = xor i32 %834, -1, !mcsema_real_eip !150
  %836 = and i32 %835, %827, !mcsema_real_eip !150
  %837 = lshr i32 %836, 31, !mcsema_real_eip !150
  %838 = and i32 %837, 1, !mcsema_real_eip !150
  %839 = trunc i32 %838 to i1, !mcsema_real_eip !150
  store i1 %839, i1* %OF, !mcsema_real_eip !150
  %840 = trunc i32 %826 to i8, !mcsema_real_eip !150
  %841 = call i8 @llvm.ctpop.i8(i8 %840), !mcsema_real_eip !150
  %842 = trunc i8 %841 to i1, !mcsema_real_eip !150
  %843 = xor i1 %842, true, !mcsema_real_eip !150
  store i1 %843, i1* %PF, !mcsema_real_eip !150
  %844 = icmp ult i32 %826, %EAX_val.200, !mcsema_real_eip !150
  store i1 %844, i1* %CF, !mcsema_real_eip !150
  %845 = zext i32 %826 to i64, !mcsema_real_eip !150
  store i64 %845, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.203 = load i32, i32* %EAX.25, !mcsema_real_eip !151
  store i32 %EAX_val.203, i32* %821, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x15d:                                      ; preds = %block_0x158
  %_load_rbp_ptr_209 = load i8*, i8** %_RBP_ptr_
  %_new_gep_210 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -12
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  %846 = ptrtoint i64* %_allin_new_bt_211 to i64, !mcsema_real_eip !153
  %847 = inttoptr i64 %846 to i32*, !mcsema_real_eip !153
  %_ptr_bt_763 = bitcast i32* %847 to i8*
  %_offset_above_rbp_764 = sub i64 %846, %_local_end_to_int_
  %_pot_address_in_parent_stack_765 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_764
  %_cond1_766 = icmp ugt i8* %_ptr_bt_763, %_local_stack_end_ptr_
  %_cond2_1_767 = icmp ugt i8* %_ptr_bt_763, %_parent_stack_end_ptr_
  %_cond2_2_768 = icmp ult i8* %_ptr_bt_763, %_parent_stack_start_ptr_
  %_cond2_769 = or i1 %_cond2_1_767, %_cond2_2_768
  %_cond4_770 = icmp ule i8* %_pot_address_in_parent_stack_765, %_parent_stack_end_ptr_
  %_cond1_n_cond2_771 = and i1 %_cond1_766, %_cond2_769
  %_cond1_n_cond2_cond3_772 = and i1 %_cond1_n_cond2_771, %_cond4_770
  br i1 %_cond1_n_cond2_cond3_772, label %848, label %849

; <label>:848:                                    ; preds = %block_0x15d
  %_address_in_parent_stack_bt_774 = bitcast i8* %_pot_address_in_parent_stack_765 to i32*
  br label %849

; <label>:849:                                    ; preds = %block_0x15d, %848
  %850 = phi i32* [ %847, %block_0x15d ], [ %_address_in_parent_stack_bt_774, %848 ]
  %_new_load_775 = load i32, i32* %850
  %851 = zext i32 %_new_load_775 to i64, !mcsema_real_eip !153
  store i64 %851, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.206 = load i32, i32* %EAX.25, !mcsema_real_eip !154
  %852 = sub i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %853 = xor i32 %852, %EAX_val.206, !mcsema_real_eip !154
  %854 = xor i32 %853, 74641, !mcsema_real_eip !154
  %855 = and i32 %854, 16, !mcsema_real_eip !154
  %856 = icmp ne i32 %855, 0, !mcsema_real_eip !154
  store i1 %856, i1* %AF, !mcsema_real_eip !154
  %857 = trunc i32 %852 to i8, !mcsema_real_eip !154
  %858 = call i8 @llvm.ctpop.i8(i8 %857), !mcsema_real_eip !154
  %859 = trunc i8 %858 to i1, !mcsema_real_eip !154
  %860 = xor i1 %859, true, !mcsema_real_eip !154
  store i1 %860, i1* %PF, !mcsema_real_eip !154
  %861 = icmp eq i32 %852, 0, !mcsema_real_eip !154
  store i1 %861, i1* %ZF, !mcsema_real_eip !154
  %862 = lshr i32 %852, 31, !mcsema_real_eip !154
  %863 = trunc i32 %862 to i1, !mcsema_real_eip !154
  store i1 %863, i1* %SF, !mcsema_real_eip !154
  %864 = icmp ult i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  store i1 %864, i1* %CF, !mcsema_real_eip !154
  %865 = xor i32 %EAX_val.206, 74641, !mcsema_real_eip !154
  %866 = and i32 %865, %853, !mcsema_real_eip !154
  %867 = lshr i32 %866, 31, !mcsema_real_eip !154
  %868 = trunc i32 %867 to i1, !mcsema_real_eip !154
  store i1 %868, i1* %OF, !mcsema_real_eip !154
  %869 = zext i32 %852 to i64, !mcsema_real_eip !154
  store i64 %869, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -76
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %EAX_val.209 = load i32, i32* %EAX.25, !mcsema_real_eip !155
  %870 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !155
  %871 = inttoptr i64 %870 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.209, i32* %871, !mcsema_real_eip !155
  %872 = load i1, i1* %ZF, !mcsema_real_eip !156
  br i1 %872, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !156

block_0x16e:                                      ; preds = %849
  br label %block_0x173, !mcsema_real_eip !157

block_0x28f:                                      ; preds = %849
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -8
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %873 = ptrtoint i64* %_allin_new_bt_217 to i64, !mcsema_real_eip !158
  %874 = inttoptr i64 %873 to i32*, !mcsema_real_eip !158
  %_ptr_bt_778 = bitcast i32* %874 to i8*
  %_offset_above_rbp_779 = sub i64 %873, %_local_end_to_int_
  %_pot_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_779
  %_cond1_781 = icmp ugt i8* %_ptr_bt_778, %_local_stack_end_ptr_
  %_cond2_1_782 = icmp ugt i8* %_ptr_bt_778, %_parent_stack_end_ptr_
  %_cond2_2_783 = icmp ult i8* %_ptr_bt_778, %_parent_stack_start_ptr_
  %_cond2_784 = or i1 %_cond2_1_782, %_cond2_2_783
  %_cond4_785 = icmp ule i8* %_pot_address_in_parent_stack_780, %_parent_stack_end_ptr_
  %_cond1_n_cond2_786 = and i1 %_cond1_781, %_cond2_784
  %_cond1_n_cond2_cond3_787 = and i1 %_cond1_n_cond2_786, %_cond4_785
  br i1 %_cond1_n_cond2_cond3_787, label %875, label %876

; <label>:875:                                    ; preds = %block_0x28f
  %_address_in_parent_stack_bt_789 = bitcast i8* %_pot_address_in_parent_stack_780 to i32*
  br label %876

; <label>:876:                                    ; preds = %block_0x28f, %875
  %877 = phi i32* [ %874, %block_0x28f ], [ %_address_in_parent_stack_bt_789, %875 ]
  %_new_load_790 = load i32, i32* %877
  %878 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !158
  store i64 %878, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.25, !mcsema_real_eip !159
  %879 = add i32 74641, %EAX_val.212, !mcsema_real_eip !159
  %880 = xor i32 %879, %EAX_val.212, !mcsema_real_eip !159
  %881 = xor i32 %880, 74641, !mcsema_real_eip !159
  %882 = and i32 %881, 16, !mcsema_real_eip !159
  %883 = icmp ne i32 %882, 0, !mcsema_real_eip !159
  store i1 %883, i1* %AF, !mcsema_real_eip !159
  %884 = lshr i32 %879, 31, !mcsema_real_eip !159
  %885 = trunc i32 %884 to i1, !mcsema_real_eip !159
  store i1 %885, i1* %SF, !mcsema_real_eip !159
  %886 = icmp eq i32 %879, 0, !mcsema_real_eip !159
  store i1 %886, i1* %ZF, !mcsema_real_eip !159
  %887 = xor i32 %EAX_val.212, 74641, !mcsema_real_eip !159
  %888 = xor i32 %887, -1, !mcsema_real_eip !159
  %889 = and i32 %888, %880, !mcsema_real_eip !159
  %890 = lshr i32 %889, 31, !mcsema_real_eip !159
  %891 = and i32 %890, 1, !mcsema_real_eip !159
  %892 = trunc i32 %891 to i1, !mcsema_real_eip !159
  store i1 %892, i1* %OF, !mcsema_real_eip !159
  %893 = trunc i32 %879 to i8, !mcsema_real_eip !159
  %894 = call i8 @llvm.ctpop.i8(i8 %893), !mcsema_real_eip !159
  %895 = trunc i8 %894 to i1, !mcsema_real_eip !159
  %896 = xor i1 %895, true, !mcsema_real_eip !159
  store i1 %896, i1* %PF, !mcsema_real_eip !159
  %897 = icmp ult i32 %879, %EAX_val.212, !mcsema_real_eip !159
  store i1 %897, i1* %CF, !mcsema_real_eip !159
  %898 = zext i32 %879 to i64, !mcsema_real_eip !159
  store i64 %898, i64* %XAX, !mcsema_real_eip !159
  %EAX_val.215 = load i32, i32* %EAX.25, !mcsema_real_eip !160
  store i32 %EAX_val.215, i32* %874, !mcsema_real_eip !160
  br label %block_0x2c8, !mcsema_real_eip !161

block_0x173:                                      ; preds = %block_0x16e
  %_load_rbp_ptr_221 = load i8*, i8** %_RBP_ptr_
  %_new_gep_222 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -12
  %_allin_new_bt_223 = bitcast i8* %_new_gep_222 to i64*
  %899 = ptrtoint i64* %_allin_new_bt_223 to i64, !mcsema_real_eip !162
  %900 = inttoptr i64 %899 to i32*, !mcsema_real_eip !162
  %_ptr_bt_793 = bitcast i32* %900 to i8*
  %_offset_above_rbp_794 = sub i64 %899, %_local_end_to_int_
  %_pot_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_794
  %_cond1_796 = icmp ugt i8* %_ptr_bt_793, %_local_stack_end_ptr_
  %_cond2_1_797 = icmp ugt i8* %_ptr_bt_793, %_parent_stack_end_ptr_
  %_cond2_2_798 = icmp ult i8* %_ptr_bt_793, %_parent_stack_start_ptr_
  %_cond2_799 = or i1 %_cond2_1_797, %_cond2_2_798
  %_cond4_800 = icmp ule i8* %_pot_address_in_parent_stack_795, %_parent_stack_end_ptr_
  %_cond1_n_cond2_801 = and i1 %_cond1_796, %_cond2_799
  %_cond1_n_cond2_cond3_802 = and i1 %_cond1_n_cond2_801, %_cond4_800
  br i1 %_cond1_n_cond2_cond3_802, label %901, label %902

; <label>:901:                                    ; preds = %block_0x173
  %_address_in_parent_stack_bt_804 = bitcast i8* %_pot_address_in_parent_stack_795 to i32*
  br label %902

; <label>:902:                                    ; preds = %block_0x173, %901
  %903 = phi i32* [ %900, %block_0x173 ], [ %_address_in_parent_stack_bt_804, %901 ]
  %_new_load_805 = load i32, i32* %903
  %904 = zext i32 %_new_load_805 to i64, !mcsema_real_eip !162
  store i64 %904, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.25, !mcsema_real_eip !163
  %905 = sub i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %906 = xor i32 %905, %EAX_val.218, !mcsema_real_eip !163
  %907 = xor i32 %906, 74642, !mcsema_real_eip !163
  %908 = and i32 %907, 16, !mcsema_real_eip !163
  %909 = icmp ne i32 %908, 0, !mcsema_real_eip !163
  store i1 %909, i1* %AF, !mcsema_real_eip !163
  %910 = trunc i32 %905 to i8, !mcsema_real_eip !163
  %911 = call i8 @llvm.ctpop.i8(i8 %910), !mcsema_real_eip !163
  %912 = trunc i8 %911 to i1, !mcsema_real_eip !163
  %913 = xor i1 %912, true, !mcsema_real_eip !163
  store i1 %913, i1* %PF, !mcsema_real_eip !163
  %914 = icmp eq i32 %905, 0, !mcsema_real_eip !163
  store i1 %914, i1* %ZF, !mcsema_real_eip !163
  %915 = lshr i32 %905, 31, !mcsema_real_eip !163
  %916 = trunc i32 %915 to i1, !mcsema_real_eip !163
  store i1 %916, i1* %SF, !mcsema_real_eip !163
  %917 = icmp ult i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  store i1 %917, i1* %CF, !mcsema_real_eip !163
  %918 = xor i32 %EAX_val.218, 74642, !mcsema_real_eip !163
  %919 = and i32 %918, %906, !mcsema_real_eip !163
  %920 = lshr i32 %919, 31, !mcsema_real_eip !163
  %921 = trunc i32 %920 to i1, !mcsema_real_eip !163
  store i1 %921, i1* %OF, !mcsema_real_eip !163
  %922 = zext i32 %905 to i64, !mcsema_real_eip !163
  store i64 %922, i64* %XAX, !mcsema_real_eip !163
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -80
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %EAX_val.221 = load i32, i32* %EAX.25, !mcsema_real_eip !164
  %923 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !164
  %924 = inttoptr i64 %923 to i32*, !mcsema_real_eip !164
  store i32 %EAX_val.221, i32* %924, !mcsema_real_eip !164
  %925 = load i1, i1* %ZF, !mcsema_real_eip !165
  br i1 %925, label %block_0x29f, label %block_0x184, !mcsema_real_eip !165

block_0x184:                                      ; preds = %902
  br label %block_0x189, !mcsema_real_eip !166

block_0x29f:                                      ; preds = %902
  %_load_rbp_ptr_227 = load i8*, i8** %_RBP_ptr_
  %_new_gep_228 = getelementptr i8, i8* %_load_rbp_ptr_227, i64 -8
  %_allin_new_bt_229 = bitcast i8* %_new_gep_228 to i64*
  %926 = ptrtoint i64* %_allin_new_bt_229 to i64, !mcsema_real_eip !167
  %927 = inttoptr i64 %926 to i32*, !mcsema_real_eip !167
  %_ptr_bt_808 = bitcast i32* %927 to i8*
  %_offset_above_rbp_809 = sub i64 %926, %_local_end_to_int_
  %_pot_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_809
  %_cond1_811 = icmp ugt i8* %_ptr_bt_808, %_local_stack_end_ptr_
  %_cond2_1_812 = icmp ugt i8* %_ptr_bt_808, %_parent_stack_end_ptr_
  %_cond2_2_813 = icmp ult i8* %_ptr_bt_808, %_parent_stack_start_ptr_
  %_cond2_814 = or i1 %_cond2_1_812, %_cond2_2_813
  %_cond4_815 = icmp ule i8* %_pot_address_in_parent_stack_810, %_parent_stack_end_ptr_
  %_cond1_n_cond2_816 = and i1 %_cond1_811, %_cond2_814
  %_cond1_n_cond2_cond3_817 = and i1 %_cond1_n_cond2_816, %_cond4_815
  br i1 %_cond1_n_cond2_cond3_817, label %928, label %929

; <label>:928:                                    ; preds = %block_0x29f
  %_address_in_parent_stack_bt_819 = bitcast i8* %_pot_address_in_parent_stack_810 to i32*
  br label %929

; <label>:929:                                    ; preds = %block_0x29f, %928
  %930 = phi i32* [ %927, %block_0x29f ], [ %_address_in_parent_stack_bt_819, %928 ]
  %_new_load_820 = load i32, i32* %930
  %931 = zext i32 %_new_load_820 to i64, !mcsema_real_eip !167
  store i64 %931, i64* %XAX, !mcsema_real_eip !167
  %EAX_val.224 = load i32, i32* %EAX.25, !mcsema_real_eip !168
  %932 = add i32 74642, %EAX_val.224, !mcsema_real_eip !168
  %933 = xor i32 %932, %EAX_val.224, !mcsema_real_eip !168
  %934 = xor i32 %933, 74642, !mcsema_real_eip !168
  %935 = and i32 %934, 16, !mcsema_real_eip !168
  %936 = icmp ne i32 %935, 0, !mcsema_real_eip !168
  store i1 %936, i1* %AF, !mcsema_real_eip !168
  %937 = lshr i32 %932, 31, !mcsema_real_eip !168
  %938 = trunc i32 %937 to i1, !mcsema_real_eip !168
  store i1 %938, i1* %SF, !mcsema_real_eip !168
  %939 = icmp eq i32 %932, 0, !mcsema_real_eip !168
  store i1 %939, i1* %ZF, !mcsema_real_eip !168
  %940 = xor i32 %EAX_val.224, 74642, !mcsema_real_eip !168
  %941 = xor i32 %940, -1, !mcsema_real_eip !168
  %942 = and i32 %941, %933, !mcsema_real_eip !168
  %943 = lshr i32 %942, 31, !mcsema_real_eip !168
  %944 = and i32 %943, 1, !mcsema_real_eip !168
  %945 = trunc i32 %944 to i1, !mcsema_real_eip !168
  store i1 %945, i1* %OF, !mcsema_real_eip !168
  %946 = trunc i32 %932 to i8, !mcsema_real_eip !168
  %947 = call i8 @llvm.ctpop.i8(i8 %946), !mcsema_real_eip !168
  %948 = trunc i8 %947 to i1, !mcsema_real_eip !168
  %949 = xor i1 %948, true, !mcsema_real_eip !168
  store i1 %949, i1* %PF, !mcsema_real_eip !168
  %950 = icmp ult i32 %932, %EAX_val.224, !mcsema_real_eip !168
  store i1 %950, i1* %CF, !mcsema_real_eip !168
  %951 = zext i32 %932 to i64, !mcsema_real_eip !168
  store i64 %951, i64* %XAX, !mcsema_real_eip !168
  %EAX_val.227 = load i32, i32* %EAX.25, !mcsema_real_eip !169
  store i32 %EAX_val.227, i32* %927, !mcsema_real_eip !169
  br label %block_0x2c8, !mcsema_real_eip !170

block_0x189:                                      ; preds = %block_0x184
  %_load_rbp_ptr_233 = load i8*, i8** %_RBP_ptr_
  %_new_gep_234 = getelementptr i8, i8* %_load_rbp_ptr_233, i64 -12
  %_allin_new_bt_235 = bitcast i8* %_new_gep_234 to i64*
  %952 = ptrtoint i64* %_allin_new_bt_235 to i64, !mcsema_real_eip !171
  %953 = inttoptr i64 %952 to i32*, !mcsema_real_eip !171
  %_ptr_bt_823 = bitcast i32* %953 to i8*
  %_offset_above_rbp_824 = sub i64 %952, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_ptr_bt_823, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_ptr_bt_823, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_ptr_bt_823, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  br i1 %_cond1_n_cond2_cond3_832, label %954, label %955

; <label>:954:                                    ; preds = %block_0x189
  %_address_in_parent_stack_bt_834 = bitcast i8* %_pot_address_in_parent_stack_825 to i32*
  br label %955

; <label>:955:                                    ; preds = %block_0x189, %954
  %956 = phi i32* [ %953, %block_0x189 ], [ %_address_in_parent_stack_bt_834, %954 ]
  %_new_load_835 = load i32, i32* %956
  %957 = zext i32 %_new_load_835 to i64, !mcsema_real_eip !171
  store i64 %957, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.230 = load i32, i32* %EAX.25, !mcsema_real_eip !172
  %958 = sub i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %959 = xor i32 %958, %EAX_val.230, !mcsema_real_eip !172
  %960 = xor i32 %959, 74643, !mcsema_real_eip !172
  %961 = and i32 %960, 16, !mcsema_real_eip !172
  %962 = icmp ne i32 %961, 0, !mcsema_real_eip !172
  store i1 %962, i1* %AF, !mcsema_real_eip !172
  %963 = trunc i32 %958 to i8, !mcsema_real_eip !172
  %964 = call i8 @llvm.ctpop.i8(i8 %963), !mcsema_real_eip !172
  %965 = trunc i8 %964 to i1, !mcsema_real_eip !172
  %966 = xor i1 %965, true, !mcsema_real_eip !172
  store i1 %966, i1* %PF, !mcsema_real_eip !172
  %967 = icmp eq i32 %958, 0, !mcsema_real_eip !172
  store i1 %967, i1* %ZF, !mcsema_real_eip !172
  %968 = lshr i32 %958, 31, !mcsema_real_eip !172
  %969 = trunc i32 %968 to i1, !mcsema_real_eip !172
  store i1 %969, i1* %SF, !mcsema_real_eip !172
  %970 = icmp ult i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  store i1 %970, i1* %CF, !mcsema_real_eip !172
  %971 = xor i32 %EAX_val.230, 74643, !mcsema_real_eip !172
  %972 = and i32 %971, %959, !mcsema_real_eip !172
  %973 = lshr i32 %972, 31, !mcsema_real_eip !172
  %974 = trunc i32 %973 to i1, !mcsema_real_eip !172
  store i1 %974, i1* %OF, !mcsema_real_eip !172
  %975 = zext i32 %958 to i64, !mcsema_real_eip !172
  store i64 %975, i64* %XAX, !mcsema_real_eip !172
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_233, i64 -84
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %EAX_val.233 = load i32, i32* %EAX.25, !mcsema_real_eip !173
  %976 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !173
  %977 = inttoptr i64 %976 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.233, i32* %977, !mcsema_real_eip !173
  %978 = load i1, i1* %ZF, !mcsema_real_eip !174
  br i1 %978, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !174

block_0x19a:                                      ; preds = %955
  br label %block_0x2bf, !mcsema_real_eip !175

block_0x2af:                                      ; preds = %955
  %_load_rbp_ptr_239 = load i8*, i8** %_RBP_ptr_
  %_new_gep_240 = getelementptr i8, i8* %_load_rbp_ptr_239, i64 -8
  %_allin_new_bt_241 = bitcast i8* %_new_gep_240 to i64*
  %979 = ptrtoint i64* %_allin_new_bt_241 to i64, !mcsema_real_eip !176
  %980 = inttoptr i64 %979 to i32*, !mcsema_real_eip !176
  %_ptr_bt_838 = bitcast i32* %980 to i8*
  %_offset_above_rbp_839 = sub i64 %979, %_local_end_to_int_
  %_pot_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_839
  %_cond1_841 = icmp ugt i8* %_ptr_bt_838, %_local_stack_end_ptr_
  %_cond2_1_842 = icmp ugt i8* %_ptr_bt_838, %_parent_stack_end_ptr_
  %_cond2_2_843 = icmp ult i8* %_ptr_bt_838, %_parent_stack_start_ptr_
  %_cond2_844 = or i1 %_cond2_1_842, %_cond2_2_843
  %_cond4_845 = icmp ule i8* %_pot_address_in_parent_stack_840, %_parent_stack_end_ptr_
  %_cond1_n_cond2_846 = and i1 %_cond1_841, %_cond2_844
  %_cond1_n_cond2_cond3_847 = and i1 %_cond1_n_cond2_846, %_cond4_845
  br i1 %_cond1_n_cond2_cond3_847, label %981, label %982

; <label>:981:                                    ; preds = %block_0x2af
  %_address_in_parent_stack_bt_849 = bitcast i8* %_pot_address_in_parent_stack_840 to i32*
  br label %982

; <label>:982:                                    ; preds = %block_0x2af, %981
  %983 = phi i32* [ %980, %block_0x2af ], [ %_address_in_parent_stack_bt_849, %981 ]
  %_new_load_850 = load i32, i32* %983
  %984 = zext i32 %_new_load_850 to i64, !mcsema_real_eip !176
  store i64 %984, i64* %XAX, !mcsema_real_eip !176
  %EAX_val.236 = load i32, i32* %EAX.25, !mcsema_real_eip !177
  %985 = add i32 74643, %EAX_val.236, !mcsema_real_eip !177
  %986 = xor i32 %985, %EAX_val.236, !mcsema_real_eip !177
  %987 = xor i32 %986, 74643, !mcsema_real_eip !177
  %988 = and i32 %987, 16, !mcsema_real_eip !177
  %989 = icmp ne i32 %988, 0, !mcsema_real_eip !177
  store i1 %989, i1* %AF, !mcsema_real_eip !177
  %990 = lshr i32 %985, 31, !mcsema_real_eip !177
  %991 = trunc i32 %990 to i1, !mcsema_real_eip !177
  store i1 %991, i1* %SF, !mcsema_real_eip !177
  %992 = icmp eq i32 %985, 0, !mcsema_real_eip !177
  store i1 %992, i1* %ZF, !mcsema_real_eip !177
  %993 = xor i32 %EAX_val.236, 74643, !mcsema_real_eip !177
  %994 = xor i32 %993, -1, !mcsema_real_eip !177
  %995 = and i32 %994, %986, !mcsema_real_eip !177
  %996 = lshr i32 %995, 31, !mcsema_real_eip !177
  %997 = and i32 %996, 1, !mcsema_real_eip !177
  %998 = trunc i32 %997 to i1, !mcsema_real_eip !177
  store i1 %998, i1* %OF, !mcsema_real_eip !177
  %999 = trunc i32 %985 to i8, !mcsema_real_eip !177
  %1000 = call i8 @llvm.ctpop.i8(i8 %999), !mcsema_real_eip !177
  %1001 = trunc i8 %1000 to i1, !mcsema_real_eip !177
  %1002 = xor i1 %1001, true, !mcsema_real_eip !177
  store i1 %1002, i1* %PF, !mcsema_real_eip !177
  %1003 = icmp ult i32 %985, %EAX_val.236, !mcsema_real_eip !177
  store i1 %1003, i1* %CF, !mcsema_real_eip !177
  %1004 = zext i32 %985 to i64, !mcsema_real_eip !177
  store i64 %1004, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.25, !mcsema_real_eip !178
  store i32 %EAX_val.239, i32* %980, !mcsema_real_eip !178
  br label %block_0x2c8, !mcsema_real_eip !179

block_0x2bf:                                      ; preds = %block_0x19a
  %_load_rbp_ptr_245 = load i8*, i8** %_RBP_ptr_
  %_new_gep_246 = getelementptr i8, i8* %_load_rbp_ptr_245, i64 -8
  %_allin_new_bt_247 = bitcast i8* %_new_gep_246 to i64*
  %1005 = ptrtoint i64* %_allin_new_bt_247 to i64, !mcsema_real_eip !180
  %1006 = inttoptr i64 %1005 to i32*, !mcsema_real_eip !180
  %_ptr_bt_853 = bitcast i32* %1006 to i8*
  %_offset_above_rbp_854 = sub i64 %1005, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_ptr_bt_853, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_ptr_bt_853, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_ptr_bt_853, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  br i1 %_cond1_n_cond2_cond3_862, label %1007, label %1008

; <label>:1007:                                   ; preds = %block_0x2bf
  %_address_in_parent_stack_bt_864 = bitcast i8* %_pot_address_in_parent_stack_855 to i32*
  br label %1008

; <label>:1008:                                   ; preds = %block_0x2bf, %1007
  %1009 = phi i32* [ %1006, %block_0x2bf ], [ %_address_in_parent_stack_bt_864, %1007 ]
  %_new_load_865 = load i32, i32* %1009
  %1010 = zext i32 %_new_load_865 to i64, !mcsema_real_eip !180
  store i64 %1010, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.242 = load i32, i32* %EAX.25, !mcsema_real_eip !181
  store i1 false, i1* %AF, !mcsema_real_eip !181
  %1011 = lshr i32 %EAX_val.242, 31, !mcsema_real_eip !181
  %1012 = trunc i32 %1011 to i1, !mcsema_real_eip !181
  store i1 %1012, i1* %SF, !mcsema_real_eip !181
  %1013 = icmp eq i32 %EAX_val.242, 0, !mcsema_real_eip !181
  store i1 %1013, i1* %ZF, !mcsema_real_eip !181
  %1014 = xor i32 %EAX_val.242, -1, !mcsema_real_eip !181
  store i1 false, i1* %OF, !mcsema_real_eip !181
  %1015 = trunc i32 %EAX_val.242 to i8, !mcsema_real_eip !181
  %1016 = call i8 @llvm.ctpop.i8(i8 %1015), !mcsema_real_eip !181
  %1017 = trunc i8 %1016 to i1, !mcsema_real_eip !181
  %1018 = xor i1 %1017, true, !mcsema_real_eip !181
  store i1 %1018, i1* %PF, !mcsema_real_eip !181
  store i1 false, i1* %CF, !mcsema_real_eip !181
  %1019 = zext i32 %EAX_val.242 to i64, !mcsema_real_eip !181
  store i64 %1019, i64* %XAX, !mcsema_real_eip !181
  %EAX_val.245 = load i32, i32* %EAX.25, !mcsema_real_eip !182
  store i32 %EAX_val.245, i32* %1006, !mcsema_real_eip !182
  br label %block_0x2c8
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
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 28}
!11 = !{i64 415}
!12 = !{i64 418}
!13 = !{i64 421}
!14 = !{i64 424}
!15 = !{i64 712}
!16 = !{i64 715}
!17 = !{i64 716}
!18 = !{i64 33}
!19 = !{i64 36}
!20 = !{i64 39}
!21 = !{i64 42}
!22 = !{i64 48}
!23 = !{i64 429}
!24 = !{i64 432}
!25 = !{i64 435}
!26 = !{i64 438}
!27 = !{i64 53}
!28 = !{i64 56}
!29 = !{i64 59}
!30 = !{i64 62}
!31 = !{i64 68}
!32 = !{i64 443}
!33 = !{i64 446}
!34 = !{i64 449}
!35 = !{i64 452}
!36 = !{i64 73}
!37 = !{i64 76}
!38 = !{i64 79}
!39 = !{i64 82}
!40 = !{i64 88}
!41 = !{i64 457}
!42 = !{i64 460}
!43 = !{i64 463}
!44 = !{i64 466}
!45 = !{i64 93}
!46 = !{i64 96}
!47 = !{i64 99}
!48 = !{i64 102}
!49 = !{i64 108}
!50 = !{i64 471}
!51 = !{i64 474}
!52 = !{i64 477}
!53 = !{i64 480}
!54 = !{i64 113}
!55 = !{i64 116}
!56 = !{i64 119}
!57 = !{i64 122}
!58 = !{i64 128}
!59 = !{i64 485}
!60 = !{i64 488}
!61 = !{i64 491}
!62 = !{i64 494}
!63 = !{i64 133}
!64 = !{i64 136}
!65 = !{i64 139}
!66 = !{i64 142}
!67 = !{i64 148}
!68 = !{i64 499}
!69 = !{i64 502}
!70 = !{i64 505}
!71 = !{i64 508}
!72 = !{i64 153}
!73 = !{i64 156}
!74 = !{i64 159}
!75 = !{i64 162}
!76 = !{i64 168}
!77 = !{i64 513}
!78 = !{i64 516}
!79 = !{i64 519}
!80 = !{i64 522}
!81 = !{i64 173}
!82 = !{i64 176}
!83 = !{i64 181}
!84 = !{i64 184}
!85 = !{i64 190}
!86 = !{i64 527}
!87 = !{i64 530}
!88 = !{i64 535}
!89 = !{i64 538}
!90 = !{i64 195}
!91 = !{i64 198}
!92 = !{i64 203}
!93 = !{i64 206}
!94 = !{i64 212}
!95 = !{i64 543}
!96 = !{i64 546}
!97 = !{i64 551}
!98 = !{i64 554}
!99 = !{i64 217}
!100 = !{i64 220}
!101 = !{i64 225}
!102 = !{i64 228}
!103 = !{i64 234}
!104 = !{i64 559}
!105 = !{i64 562}
!106 = !{i64 567}
!107 = !{i64 570}
!108 = !{i64 239}
!109 = !{i64 242}
!110 = !{i64 247}
!111 = !{i64 250}
!112 = !{i64 256}
!113 = !{i64 575}
!114 = !{i64 578}
!115 = !{i64 583}
!116 = !{i64 586}
!117 = !{i64 261}
!118 = !{i64 264}
!119 = !{i64 269}
!120 = !{i64 272}
!121 = !{i64 278}
!122 = !{i64 591}
!123 = !{i64 594}
!124 = !{i64 599}
!125 = !{i64 602}
!126 = !{i64 283}
!127 = !{i64 286}
!128 = !{i64 291}
!129 = !{i64 294}
!130 = !{i64 300}
!131 = !{i64 607}
!132 = !{i64 610}
!133 = !{i64 615}
!134 = !{i64 618}
!135 = !{i64 305}
!136 = !{i64 308}
!137 = !{i64 313}
!138 = !{i64 316}
!139 = !{i64 322}
!140 = !{i64 623}
!141 = !{i64 626}
!142 = !{i64 631}
!143 = !{i64 634}
!144 = !{i64 327}
!145 = !{i64 330}
!146 = !{i64 335}
!147 = !{i64 338}
!148 = !{i64 344}
!149 = !{i64 639}
!150 = !{i64 642}
!151 = !{i64 647}
!152 = !{i64 650}
!153 = !{i64 349}
!154 = !{i64 352}
!155 = !{i64 357}
!156 = !{i64 360}
!157 = !{i64 366}
!158 = !{i64 655}
!159 = !{i64 658}
!160 = !{i64 663}
!161 = !{i64 666}
!162 = !{i64 371}
!163 = !{i64 374}
!164 = !{i64 379}
!165 = !{i64 382}
!166 = !{i64 388}
!167 = !{i64 671}
!168 = !{i64 674}
!169 = !{i64 679}
!170 = !{i64 682}
!171 = !{i64 393}
!172 = !{i64 396}
!173 = !{i64 401}
!174 = !{i64 404}
!175 = !{i64 410}
!176 = !{i64 687}
!177 = !{i64 690}
!178 = !{i64 695}
!179 = !{i64 698}
!180 = !{i64 703}
!181 = !{i64 706}
!182 = !{i64 709}
