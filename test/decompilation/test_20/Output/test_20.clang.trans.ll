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

block_0x21:                                       ; preds = %block_0x1c
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -12
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !11
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !11
  %22 = load i32, i32* %21, !mcsema_real_eip !11
  %23 = zext i32 %22 to i64, !mcsema_real_eip !11
  store i64 %23, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  %24 = sub i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %25 = xor i32 %24, %EAX_val.17, !mcsema_real_eip !12
  %26 = xor i32 %25, 1, !mcsema_real_eip !12
  %27 = and i32 %26, 16, !mcsema_real_eip !12
  %28 = icmp ne i32 %27, 0, !mcsema_real_eip !12
  store i1 %28, i1* %AF, !mcsema_real_eip !12
  %29 = trunc i32 %24 to i8, !mcsema_real_eip !12
  %30 = call i8 @llvm.ctpop.i8(i8 %29), !mcsema_real_eip !12
  %31 = trunc i8 %30 to i1, !mcsema_real_eip !12
  %32 = xor i1 %31, true, !mcsema_real_eip !12
  store i1 %32, i1* %PF, !mcsema_real_eip !12
  %33 = icmp eq i32 %24, 0, !mcsema_real_eip !12
  store i1 %33, i1* %ZF, !mcsema_real_eip !12
  %34 = lshr i32 %24, 31, !mcsema_real_eip !12
  %35 = trunc i32 %34 to i1, !mcsema_real_eip !12
  store i1 %35, i1* %SF, !mcsema_real_eip !12
  %36 = icmp ult i32 %EAX_val.17, 1, !mcsema_real_eip !12
  store i1 %36, i1* %CF, !mcsema_real_eip !12
  %37 = xor i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %38 = and i32 %37, %25, !mcsema_real_eip !12
  %39 = lshr i32 %38, 31, !mcsema_real_eip !12
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !12
  store i1 %40, i1* %OF, !mcsema_real_eip !12
  %41 = zext i32 %24 to i64, !mcsema_real_eip !12
  store i64 %41, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  %42 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !13
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %43, !mcsema_real_eip !13
  %44 = load i1, i1* %ZF, !mcsema_real_eip !14
  br i1 %44, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !15

block_0x35:                                       ; preds = %block_0x30
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -12
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !16
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !16
  %47 = load i32, i32* %46, !mcsema_real_eip !16
  %48 = zext i32 %47 to i64, !mcsema_real_eip !16
  store i64 %48, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.23 = load i32, i32* %EAX.16, !mcsema_real_eip !17
  %49 = sub i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %50 = xor i32 %49, %EAX_val.23, !mcsema_real_eip !17
  %51 = xor i32 %50, 2, !mcsema_real_eip !17
  %52 = and i32 %51, 16, !mcsema_real_eip !17
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !17
  store i1 %53, i1* %AF, !mcsema_real_eip !17
  %54 = trunc i32 %49 to i8, !mcsema_real_eip !17
  %55 = call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !17
  %56 = trunc i8 %55 to i1, !mcsema_real_eip !17
  %57 = xor i1 %56, true, !mcsema_real_eip !17
  store i1 %57, i1* %PF, !mcsema_real_eip !17
  %58 = icmp eq i32 %49, 0, !mcsema_real_eip !17
  store i1 %58, i1* %ZF, !mcsema_real_eip !17
  %59 = lshr i32 %49, 31, !mcsema_real_eip !17
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !17
  store i1 %60, i1* %SF, !mcsema_real_eip !17
  %61 = icmp ult i32 %EAX_val.23, 2, !mcsema_real_eip !17
  store i1 %61, i1* %CF, !mcsema_real_eip !17
  %62 = xor i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %63 = and i32 %62, %50, !mcsema_real_eip !17
  %64 = lshr i32 %63, 31, !mcsema_real_eip !17
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !17
  store i1 %65, i1* %OF, !mcsema_real_eip !17
  %66 = zext i32 %49 to i64, !mcsema_real_eip !17
  store i64 %66, i64* %XAX, !mcsema_real_eip !17
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EAX_val.26 = load i32, i32* %EAX.16, !mcsema_real_eip !18
  %67 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !18
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %68, !mcsema_real_eip !18
  %69 = load i1, i1* %ZF, !mcsema_real_eip !19
  br i1 %69, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !20

block_0x49:                                       ; preds = %block_0x44
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !21
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !21
  %72 = load i32, i32* %71, !mcsema_real_eip !21
  %73 = zext i32 %72 to i64, !mcsema_real_eip !21
  store i64 %73, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.29 = load i32, i32* %EAX.16, !mcsema_real_eip !22
  %74 = sub i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %75 = xor i32 %74, %EAX_val.29, !mcsema_real_eip !22
  %76 = xor i32 %75, 4, !mcsema_real_eip !22
  %77 = and i32 %76, 16, !mcsema_real_eip !22
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !22
  store i1 %78, i1* %AF, !mcsema_real_eip !22
  %79 = trunc i32 %74 to i8, !mcsema_real_eip !22
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !22
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !22
  %82 = xor i1 %81, true, !mcsema_real_eip !22
  store i1 %82, i1* %PF, !mcsema_real_eip !22
  %83 = icmp eq i32 %74, 0, !mcsema_real_eip !22
  store i1 %83, i1* %ZF, !mcsema_real_eip !22
  %84 = lshr i32 %74, 31, !mcsema_real_eip !22
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !22
  store i1 %85, i1* %SF, !mcsema_real_eip !22
  %86 = icmp ult i32 %EAX_val.29, 4, !mcsema_real_eip !22
  store i1 %86, i1* %CF, !mcsema_real_eip !22
  %87 = xor i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %88 = and i32 %87, %75, !mcsema_real_eip !22
  %89 = lshr i32 %88, 31, !mcsema_real_eip !22
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !22
  store i1 %90, i1* %OF, !mcsema_real_eip !22
  %91 = zext i32 %74 to i64, !mcsema_real_eip !22
  store i64 %91, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %EAX_val.32 = load i32, i32* %EAX.16, !mcsema_real_eip !23
  %92 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !23
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.32, i32* %93, !mcsema_real_eip !23
  %94 = load i1, i1* %ZF, !mcsema_real_eip !24
  br i1 %94, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !24

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !25

block_0x5d:                                       ; preds = %block_0x58
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -12
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %95 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !26
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !26
  %97 = load i32, i32* %96, !mcsema_real_eip !26
  %98 = zext i32 %97 to i64, !mcsema_real_eip !26
  store i64 %98, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.35 = load i32, i32* %EAX.16, !mcsema_real_eip !27
  %99 = sub i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %100 = xor i32 %99, %EAX_val.35, !mcsema_real_eip !27
  %101 = xor i32 %100, 6, !mcsema_real_eip !27
  %102 = and i32 %101, 16, !mcsema_real_eip !27
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !27
  store i1 %103, i1* %AF, !mcsema_real_eip !27
  %104 = trunc i32 %99 to i8, !mcsema_real_eip !27
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !27
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !27
  %107 = xor i1 %106, true, !mcsema_real_eip !27
  store i1 %107, i1* %PF, !mcsema_real_eip !27
  %108 = icmp eq i32 %99, 0, !mcsema_real_eip !27
  store i1 %108, i1* %ZF, !mcsema_real_eip !27
  %109 = lshr i32 %99, 31, !mcsema_real_eip !27
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !27
  store i1 %110, i1* %SF, !mcsema_real_eip !27
  %111 = icmp ult i32 %EAX_val.35, 6, !mcsema_real_eip !27
  store i1 %111, i1* %CF, !mcsema_real_eip !27
  %112 = xor i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %113 = and i32 %112, %100, !mcsema_real_eip !27
  %114 = lshr i32 %113, 31, !mcsema_real_eip !27
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !27
  store i1 %115, i1* %OF, !mcsema_real_eip !27
  %116 = zext i32 %99 to i64, !mcsema_real_eip !27
  store i64 %116, i64* %XAX, !mcsema_real_eip !27
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -28
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EAX_val.38 = load i32, i32* %EAX.16, !mcsema_real_eip !28
  %117 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !28
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %118, !mcsema_real_eip !28
  %119 = load i1, i1* %ZF, !mcsema_real_eip !29
  br i1 %119, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !29

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !30

block_0x71:                                       ; preds = %block_0x6c
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -12
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %120 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !31
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !31
  %122 = load i32, i32* %121, !mcsema_real_eip !31
  %123 = zext i32 %122 to i64, !mcsema_real_eip !31
  store i64 %123, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.41 = load i32, i32* %EAX.16, !mcsema_real_eip !32
  %124 = sub i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %125 = xor i32 %124, %EAX_val.41, !mcsema_real_eip !32
  %126 = xor i32 %125, 12, !mcsema_real_eip !32
  %127 = and i32 %126, 16, !mcsema_real_eip !32
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !32
  store i1 %128, i1* %AF, !mcsema_real_eip !32
  %129 = trunc i32 %124 to i8, !mcsema_real_eip !32
  %130 = call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !32
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !32
  %132 = xor i1 %131, true, !mcsema_real_eip !32
  store i1 %132, i1* %PF, !mcsema_real_eip !32
  %133 = icmp eq i32 %124, 0, !mcsema_real_eip !32
  store i1 %133, i1* %ZF, !mcsema_real_eip !32
  %134 = lshr i32 %124, 31, !mcsema_real_eip !32
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !32
  store i1 %135, i1* %SF, !mcsema_real_eip !32
  %136 = icmp ult i32 %EAX_val.41, 12, !mcsema_real_eip !32
  store i1 %136, i1* %CF, !mcsema_real_eip !32
  %137 = xor i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %138 = and i32 %137, %125, !mcsema_real_eip !32
  %139 = lshr i32 %138, 31, !mcsema_real_eip !32
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !32
  store i1 %140, i1* %OF, !mcsema_real_eip !32
  %141 = zext i32 %124 to i64, !mcsema_real_eip !32
  store i64 %141, i64* %XAX, !mcsema_real_eip !32
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -32
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %EAX_val.44 = load i32, i32* %EAX.16, !mcsema_real_eip !33
  %142 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !33
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.44, i32* %143, !mcsema_real_eip !33
  %144 = load i1, i1* %ZF, !mcsema_real_eip !34
  br i1 %144, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !34

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !35

block_0x85:                                       ; preds = %block_0x80
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %145 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !36
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !36
  %147 = load i32, i32* %146, !mcsema_real_eip !36
  %148 = zext i32 %147 to i64, !mcsema_real_eip !36
  store i64 %148, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.16, !mcsema_real_eip !37
  %149 = sub i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %150 = xor i32 %149, %EAX_val.47, !mcsema_real_eip !37
  %151 = xor i32 %150, 13, !mcsema_real_eip !37
  %152 = and i32 %151, 16, !mcsema_real_eip !37
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !37
  store i1 %153, i1* %AF, !mcsema_real_eip !37
  %154 = trunc i32 %149 to i8, !mcsema_real_eip !37
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !37
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !37
  %157 = xor i1 %156, true, !mcsema_real_eip !37
  store i1 %157, i1* %PF, !mcsema_real_eip !37
  %158 = icmp eq i32 %149, 0, !mcsema_real_eip !37
  store i1 %158, i1* %ZF, !mcsema_real_eip !37
  %159 = lshr i32 %149, 31, !mcsema_real_eip !37
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !37
  store i1 %160, i1* %SF, !mcsema_real_eip !37
  %161 = icmp ult i32 %EAX_val.47, 13, !mcsema_real_eip !37
  store i1 %161, i1* %CF, !mcsema_real_eip !37
  %162 = xor i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %163 = and i32 %162, %150, !mcsema_real_eip !37
  %164 = lshr i32 %163, 31, !mcsema_real_eip !37
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !37
  store i1 %165, i1* %OF, !mcsema_real_eip !37
  %166 = zext i32 %149 to i64, !mcsema_real_eip !37
  store i64 %166, i64* %XAX, !mcsema_real_eip !37
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -36
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %EAX_val.50 = load i32, i32* %EAX.16, !mcsema_real_eip !38
  %167 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !38
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.50, i32* %168, !mcsema_real_eip !38
  %169 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %169, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !39

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !40

block_0x99:                                       ; preds = %block_0x94
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -12
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %170 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !41
  %171 = inttoptr i64 %170 to i32*, !mcsema_real_eip !41
  %172 = load i32, i32* %171, !mcsema_real_eip !41
  %173 = zext i32 %172 to i64, !mcsema_real_eip !41
  store i64 %173, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.53 = load i32, i32* %EAX.16, !mcsema_real_eip !42
  %174 = sub i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %175 = xor i32 %174, %EAX_val.53, !mcsema_real_eip !42
  %176 = xor i32 %175, 19, !mcsema_real_eip !42
  %177 = and i32 %176, 16, !mcsema_real_eip !42
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !42
  store i1 %178, i1* %AF, !mcsema_real_eip !42
  %179 = trunc i32 %174 to i8, !mcsema_real_eip !42
  %180 = call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !42
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !42
  %182 = xor i1 %181, true, !mcsema_real_eip !42
  store i1 %182, i1* %PF, !mcsema_real_eip !42
  %183 = icmp eq i32 %174, 0, !mcsema_real_eip !42
  store i1 %183, i1* %ZF, !mcsema_real_eip !42
  %184 = lshr i32 %174, 31, !mcsema_real_eip !42
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !42
  store i1 %185, i1* %SF, !mcsema_real_eip !42
  %186 = icmp ult i32 %EAX_val.53, 19, !mcsema_real_eip !42
  store i1 %186, i1* %CF, !mcsema_real_eip !42
  %187 = xor i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %188 = and i32 %187, %175, !mcsema_real_eip !42
  %189 = lshr i32 %188, 31, !mcsema_real_eip !42
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !42
  store i1 %190, i1* %OF, !mcsema_real_eip !42
  %191 = zext i32 %174 to i64, !mcsema_real_eip !42
  store i64 %191, i64* %XAX, !mcsema_real_eip !42
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %EAX_val.56 = load i32, i32* %EAX.16, !mcsema_real_eip !43
  %192 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !43
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.56, i32* %193, !mcsema_real_eip !43
  %194 = load i1, i1* %ZF, !mcsema_real_eip !44
  br i1 %194, label %block_0x201, label %block_0xa8, !mcsema_real_eip !44

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !45

block_0xad:                                       ; preds = %block_0xa8
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -12
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %195 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !46
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !46
  %197 = load i32, i32* %196, !mcsema_real_eip !46
  %198 = zext i32 %197 to i64, !mcsema_real_eip !46
  store i64 %198, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.59 = load i32, i32* %EAX.16, !mcsema_real_eip !47
  %199 = sub i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %200 = xor i32 %199, %EAX_val.59, !mcsema_real_eip !47
  %201 = xor i32 %200, 255, !mcsema_real_eip !47
  %202 = and i32 %201, 16, !mcsema_real_eip !47
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !47
  store i1 %203, i1* %AF, !mcsema_real_eip !47
  %204 = trunc i32 %199 to i8, !mcsema_real_eip !47
  %205 = call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !47
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !47
  %207 = xor i1 %206, true, !mcsema_real_eip !47
  store i1 %207, i1* %PF, !mcsema_real_eip !47
  %208 = icmp eq i32 %199, 0, !mcsema_real_eip !47
  store i1 %208, i1* %ZF, !mcsema_real_eip !47
  %209 = lshr i32 %199, 31, !mcsema_real_eip !47
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !47
  store i1 %210, i1* %SF, !mcsema_real_eip !47
  %211 = icmp ult i32 %EAX_val.59, 255, !mcsema_real_eip !47
  store i1 %211, i1* %CF, !mcsema_real_eip !47
  %212 = xor i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %213 = and i32 %212, %200, !mcsema_real_eip !47
  %214 = lshr i32 %213, 31, !mcsema_real_eip !47
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !47
  store i1 %215, i1* %OF, !mcsema_real_eip !47
  %216 = zext i32 %199 to i64, !mcsema_real_eip !47
  store i64 %216, i64* %XAX, !mcsema_real_eip !47
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -44
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %EAX_val.62 = load i32, i32* %EAX.16, !mcsema_real_eip !48
  %217 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !48
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !48
  store i32 %EAX_val.62, i32* %218, !mcsema_real_eip !48
  %219 = load i1, i1* %ZF, !mcsema_real_eip !49
  br i1 %219, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !50

block_0xc3:                                       ; preds = %block_0xbe
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -12
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %220 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !51
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !51
  %222 = load i32, i32* %221, !mcsema_real_eip !51
  %223 = zext i32 %222 to i64, !mcsema_real_eip !51
  store i64 %223, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.65 = load i32, i32* %EAX.16, !mcsema_real_eip !52
  %224 = sub i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %225 = xor i32 %224, %EAX_val.65, !mcsema_real_eip !52
  %226 = xor i32 %225, 74633, !mcsema_real_eip !52
  %227 = and i32 %226, 16, !mcsema_real_eip !52
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !52
  store i1 %228, i1* %AF, !mcsema_real_eip !52
  %229 = trunc i32 %224 to i8, !mcsema_real_eip !52
  %230 = call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !52
  %231 = trunc i8 %230 to i1, !mcsema_real_eip !52
  %232 = xor i1 %231, true, !mcsema_real_eip !52
  store i1 %232, i1* %PF, !mcsema_real_eip !52
  %233 = icmp eq i32 %224, 0, !mcsema_real_eip !52
  store i1 %233, i1* %ZF, !mcsema_real_eip !52
  %234 = lshr i32 %224, 31, !mcsema_real_eip !52
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !52
  store i1 %235, i1* %SF, !mcsema_real_eip !52
  %236 = icmp ult i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  store i1 %236, i1* %CF, !mcsema_real_eip !52
  %237 = xor i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %238 = and i32 %237, %225, !mcsema_real_eip !52
  %239 = lshr i32 %238, 31, !mcsema_real_eip !52
  %240 = trunc i32 %239 to i1, !mcsema_real_eip !52
  store i1 %240, i1* %OF, !mcsema_real_eip !52
  %241 = zext i32 %224 to i64, !mcsema_real_eip !52
  store i64 %241, i64* %XAX, !mcsema_real_eip !52
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -48
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %EAX_val.68 = load i32, i32* %EAX.16, !mcsema_real_eip !53
  %242 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !53
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !53
  store i32 %EAX_val.68, i32* %243, !mcsema_real_eip !53
  %244 = load i1, i1* %ZF, !mcsema_real_eip !54
  br i1 %244, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !54

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !55

block_0xd9:                                       ; preds = %block_0xd4
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -12
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %245 = ptrtoint i64* %_allin_new_bt_70 to i64, !mcsema_real_eip !56
  %246 = inttoptr i64 %245 to i32*, !mcsema_real_eip !56
  %247 = load i32, i32* %246, !mcsema_real_eip !56
  %248 = zext i32 %247 to i64, !mcsema_real_eip !56
  store i64 %248, i64* %XAX, !mcsema_real_eip !56
  %EAX_val.71 = load i32, i32* %EAX.16, !mcsema_real_eip !57
  %249 = sub i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %250 = xor i32 %249, %EAX_val.71, !mcsema_real_eip !57
  %251 = xor i32 %250, 74634, !mcsema_real_eip !57
  %252 = and i32 %251, 16, !mcsema_real_eip !57
  %253 = icmp ne i32 %252, 0, !mcsema_real_eip !57
  store i1 %253, i1* %AF, !mcsema_real_eip !57
  %254 = trunc i32 %249 to i8, !mcsema_real_eip !57
  %255 = call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !57
  %256 = trunc i8 %255 to i1, !mcsema_real_eip !57
  %257 = xor i1 %256, true, !mcsema_real_eip !57
  store i1 %257, i1* %PF, !mcsema_real_eip !57
  %258 = icmp eq i32 %249, 0, !mcsema_real_eip !57
  store i1 %258, i1* %ZF, !mcsema_real_eip !57
  %259 = lshr i32 %249, 31, !mcsema_real_eip !57
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !57
  store i1 %260, i1* %SF, !mcsema_real_eip !57
  %261 = icmp ult i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  store i1 %261, i1* %CF, !mcsema_real_eip !57
  %262 = xor i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %263 = and i32 %262, %250, !mcsema_real_eip !57
  %264 = lshr i32 %263, 31, !mcsema_real_eip !57
  %265 = trunc i32 %264 to i1, !mcsema_real_eip !57
  store i1 %265, i1* %OF, !mcsema_real_eip !57
  %266 = zext i32 %249 to i64, !mcsema_real_eip !57
  store i64 %266, i64* %XAX, !mcsema_real_eip !57
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -52
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.74 = load i32, i32* %EAX.16, !mcsema_real_eip !58
  %267 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !58
  %268 = inttoptr i64 %267 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.74, i32* %268, !mcsema_real_eip !58
  %269 = load i1, i1* %ZF, !mcsema_real_eip !59
  br i1 %269, label %block_0x22f, label %block_0xea, !mcsema_real_eip !59

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !60

block_0xef:                                       ; preds = %block_0xea
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -12
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %270 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !61
  %271 = inttoptr i64 %270 to i32*, !mcsema_real_eip !61
  %272 = load i32, i32* %271, !mcsema_real_eip !61
  %273 = zext i32 %272 to i64, !mcsema_real_eip !61
  store i64 %273, i64* %XAX, !mcsema_real_eip !61
  %EAX_val.77 = load i32, i32* %EAX.16, !mcsema_real_eip !62
  %274 = sub i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %275 = xor i32 %274, %EAX_val.77, !mcsema_real_eip !62
  %276 = xor i32 %275, 74635, !mcsema_real_eip !62
  %277 = and i32 %276, 16, !mcsema_real_eip !62
  %278 = icmp ne i32 %277, 0, !mcsema_real_eip !62
  store i1 %278, i1* %AF, !mcsema_real_eip !62
  %279 = trunc i32 %274 to i8, !mcsema_real_eip !62
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !62
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !62
  %282 = xor i1 %281, true, !mcsema_real_eip !62
  store i1 %282, i1* %PF, !mcsema_real_eip !62
  %283 = icmp eq i32 %274, 0, !mcsema_real_eip !62
  store i1 %283, i1* %ZF, !mcsema_real_eip !62
  %284 = lshr i32 %274, 31, !mcsema_real_eip !62
  %285 = trunc i32 %284 to i1, !mcsema_real_eip !62
  store i1 %285, i1* %SF, !mcsema_real_eip !62
  %286 = icmp ult i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  store i1 %286, i1* %CF, !mcsema_real_eip !62
  %287 = xor i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %288 = and i32 %287, %275, !mcsema_real_eip !62
  %289 = lshr i32 %288, 31, !mcsema_real_eip !62
  %290 = trunc i32 %289 to i1, !mcsema_real_eip !62
  store i1 %290, i1* %OF, !mcsema_real_eip !62
  %291 = zext i32 %274 to i64, !mcsema_real_eip !62
  store i64 %291, i64* %XAX, !mcsema_real_eip !62
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -56
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %EAX_val.80 = load i32, i32* %EAX.16, !mcsema_real_eip !63
  %292 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !63
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.80, i32* %293, !mcsema_real_eip !63
  %294 = load i1, i1* %ZF, !mcsema_real_eip !64
  br i1 %294, label %block_0x23f, label %block_0x100, !mcsema_real_eip !64

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !65

block_0x105:                                      ; preds = %block_0x100
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -12
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %295 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !66
  %296 = inttoptr i64 %295 to i32*, !mcsema_real_eip !66
  %297 = load i32, i32* %296, !mcsema_real_eip !66
  %298 = zext i32 %297 to i64, !mcsema_real_eip !66
  store i64 %298, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.83 = load i32, i32* %EAX.16, !mcsema_real_eip !67
  %299 = sub i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %300 = xor i32 %299, %EAX_val.83, !mcsema_real_eip !67
  %301 = xor i32 %300, 74636, !mcsema_real_eip !67
  %302 = and i32 %301, 16, !mcsema_real_eip !67
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !67
  store i1 %303, i1* %AF, !mcsema_real_eip !67
  %304 = trunc i32 %299 to i8, !mcsema_real_eip !67
  %305 = call i8 @llvm.ctpop.i8(i8 %304), !mcsema_real_eip !67
  %306 = trunc i8 %305 to i1, !mcsema_real_eip !67
  %307 = xor i1 %306, true, !mcsema_real_eip !67
  store i1 %307, i1* %PF, !mcsema_real_eip !67
  %308 = icmp eq i32 %299, 0, !mcsema_real_eip !67
  store i1 %308, i1* %ZF, !mcsema_real_eip !67
  %309 = lshr i32 %299, 31, !mcsema_real_eip !67
  %310 = trunc i32 %309 to i1, !mcsema_real_eip !67
  store i1 %310, i1* %SF, !mcsema_real_eip !67
  %311 = icmp ult i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  store i1 %311, i1* %CF, !mcsema_real_eip !67
  %312 = xor i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %313 = and i32 %312, %300, !mcsema_real_eip !67
  %314 = lshr i32 %313, 31, !mcsema_real_eip !67
  %315 = trunc i32 %314 to i1, !mcsema_real_eip !67
  store i1 %315, i1* %OF, !mcsema_real_eip !67
  %316 = zext i32 %299 to i64, !mcsema_real_eip !67
  store i64 %316, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -60
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %EAX_val.86 = load i32, i32* %EAX.16, !mcsema_real_eip !68
  %317 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !68
  %318 = inttoptr i64 %317 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.86, i32* %318, !mcsema_real_eip !68
  %319 = load i1, i1* %ZF, !mcsema_real_eip !69
  br i1 %319, label %block_0x24f, label %block_0x116, !mcsema_real_eip !69

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !70

block_0x11b:                                      ; preds = %block_0x116
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -12
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %320 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !71
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !71
  %322 = load i32, i32* %321, !mcsema_real_eip !71
  %323 = zext i32 %322 to i64, !mcsema_real_eip !71
  store i64 %323, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.89 = load i32, i32* %EAX.16, !mcsema_real_eip !72
  %324 = sub i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %325 = xor i32 %324, %EAX_val.89, !mcsema_real_eip !72
  %326 = xor i32 %325, 74637, !mcsema_real_eip !72
  %327 = and i32 %326, 16, !mcsema_real_eip !72
  %328 = icmp ne i32 %327, 0, !mcsema_real_eip !72
  store i1 %328, i1* %AF, !mcsema_real_eip !72
  %329 = trunc i32 %324 to i8, !mcsema_real_eip !72
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !72
  %331 = trunc i8 %330 to i1, !mcsema_real_eip !72
  %332 = xor i1 %331, true, !mcsema_real_eip !72
  store i1 %332, i1* %PF, !mcsema_real_eip !72
  %333 = icmp eq i32 %324, 0, !mcsema_real_eip !72
  store i1 %333, i1* %ZF, !mcsema_real_eip !72
  %334 = lshr i32 %324, 31, !mcsema_real_eip !72
  %335 = trunc i32 %334 to i1, !mcsema_real_eip !72
  store i1 %335, i1* %SF, !mcsema_real_eip !72
  %336 = icmp ult i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  store i1 %336, i1* %CF, !mcsema_real_eip !72
  %337 = xor i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %338 = and i32 %337, %325, !mcsema_real_eip !72
  %339 = lshr i32 %338, 31, !mcsema_real_eip !72
  %340 = trunc i32 %339 to i1, !mcsema_real_eip !72
  store i1 %340, i1* %OF, !mcsema_real_eip !72
  %341 = zext i32 %324 to i64, !mcsema_real_eip !72
  store i64 %341, i64* %XAX, !mcsema_real_eip !72
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -64
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %EAX_val.92 = load i32, i32* %EAX.16, !mcsema_real_eip !73
  %342 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !73
  %343 = inttoptr i64 %342 to i32*, !mcsema_real_eip !73
  store i32 %EAX_val.92, i32* %343, !mcsema_real_eip !73
  %344 = load i1, i1* %ZF, !mcsema_real_eip !74
  br i1 %344, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !74

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !75

block_0x131:                                      ; preds = %block_0x12c
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -12
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %345 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !76
  %346 = inttoptr i64 %345 to i32*, !mcsema_real_eip !76
  %347 = load i32, i32* %346, !mcsema_real_eip !76
  %348 = zext i32 %347 to i64, !mcsema_real_eip !76
  store i64 %348, i64* %XAX, !mcsema_real_eip !76
  %EAX_val.95 = load i32, i32* %EAX.16, !mcsema_real_eip !77
  %349 = sub i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %350 = xor i32 %349, %EAX_val.95, !mcsema_real_eip !77
  %351 = xor i32 %350, 74639, !mcsema_real_eip !77
  %352 = and i32 %351, 16, !mcsema_real_eip !77
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !77
  store i1 %353, i1* %AF, !mcsema_real_eip !77
  %354 = trunc i32 %349 to i8, !mcsema_real_eip !77
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !77
  %356 = trunc i8 %355 to i1, !mcsema_real_eip !77
  %357 = xor i1 %356, true, !mcsema_real_eip !77
  store i1 %357, i1* %PF, !mcsema_real_eip !77
  %358 = icmp eq i32 %349, 0, !mcsema_real_eip !77
  store i1 %358, i1* %ZF, !mcsema_real_eip !77
  %359 = lshr i32 %349, 31, !mcsema_real_eip !77
  %360 = trunc i32 %359 to i1, !mcsema_real_eip !77
  store i1 %360, i1* %SF, !mcsema_real_eip !77
  %361 = icmp ult i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  store i1 %361, i1* %CF, !mcsema_real_eip !77
  %362 = xor i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %363 = and i32 %362, %350, !mcsema_real_eip !77
  %364 = lshr i32 %363, 31, !mcsema_real_eip !77
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !77
  store i1 %365, i1* %OF, !mcsema_real_eip !77
  %366 = zext i32 %349 to i64, !mcsema_real_eip !77
  store i64 %366, i64* %XAX, !mcsema_real_eip !77
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -68
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %EAX_val.98 = load i32, i32* %EAX.16, !mcsema_real_eip !78
  %367 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !78
  %368 = inttoptr i64 %367 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.98, i32* %368, !mcsema_real_eip !78
  %369 = load i1, i1* %ZF, !mcsema_real_eip !79
  br i1 %369, label %block_0x26f, label %block_0x142, !mcsema_real_eip !79

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !80

block_0x147:                                      ; preds = %block_0x142
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -12
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %370 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !81
  %371 = inttoptr i64 %370 to i32*, !mcsema_real_eip !81
  %372 = load i32, i32* %371, !mcsema_real_eip !81
  %373 = zext i32 %372 to i64, !mcsema_real_eip !81
  store i64 %373, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.16, !mcsema_real_eip !82
  %374 = sub i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %375 = xor i32 %374, %EAX_val.101, !mcsema_real_eip !82
  %376 = xor i32 %375, 74640, !mcsema_real_eip !82
  %377 = and i32 %376, 16, !mcsema_real_eip !82
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !82
  store i1 %378, i1* %AF, !mcsema_real_eip !82
  %379 = trunc i32 %374 to i8, !mcsema_real_eip !82
  %380 = call i8 @llvm.ctpop.i8(i8 %379), !mcsema_real_eip !82
  %381 = trunc i8 %380 to i1, !mcsema_real_eip !82
  %382 = xor i1 %381, true, !mcsema_real_eip !82
  store i1 %382, i1* %PF, !mcsema_real_eip !82
  %383 = icmp eq i32 %374, 0, !mcsema_real_eip !82
  store i1 %383, i1* %ZF, !mcsema_real_eip !82
  %384 = lshr i32 %374, 31, !mcsema_real_eip !82
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !82
  store i1 %385, i1* %SF, !mcsema_real_eip !82
  %386 = icmp ult i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  store i1 %386, i1* %CF, !mcsema_real_eip !82
  %387 = xor i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %388 = and i32 %387, %375, !mcsema_real_eip !82
  %389 = lshr i32 %388, 31, !mcsema_real_eip !82
  %390 = trunc i32 %389 to i1, !mcsema_real_eip !82
  store i1 %390, i1* %OF, !mcsema_real_eip !82
  %391 = zext i32 %374 to i64, !mcsema_real_eip !82
  store i64 %391, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -72
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.104 = load i32, i32* %EAX.16, !mcsema_real_eip !83
  %392 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !83
  %393 = inttoptr i64 %392 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %393, !mcsema_real_eip !83
  %394 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %394, label %block_0x27f, label %block_0x158, !mcsema_real_eip !84

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !85

block_0x15d:                                      ; preds = %block_0x158
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -12
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %395 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !86
  %396 = inttoptr i64 %395 to i32*, !mcsema_real_eip !86
  %397 = load i32, i32* %396, !mcsema_real_eip !86
  %398 = zext i32 %397 to i64, !mcsema_real_eip !86
  store i64 %398, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.107 = load i32, i32* %EAX.16, !mcsema_real_eip !87
  %399 = sub i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %400 = xor i32 %399, %EAX_val.107, !mcsema_real_eip !87
  %401 = xor i32 %400, 74641, !mcsema_real_eip !87
  %402 = and i32 %401, 16, !mcsema_real_eip !87
  %403 = icmp ne i32 %402, 0, !mcsema_real_eip !87
  store i1 %403, i1* %AF, !mcsema_real_eip !87
  %404 = trunc i32 %399 to i8, !mcsema_real_eip !87
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !87
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !87
  %407 = xor i1 %406, true, !mcsema_real_eip !87
  store i1 %407, i1* %PF, !mcsema_real_eip !87
  %408 = icmp eq i32 %399, 0, !mcsema_real_eip !87
  store i1 %408, i1* %ZF, !mcsema_real_eip !87
  %409 = lshr i32 %399, 31, !mcsema_real_eip !87
  %410 = trunc i32 %409 to i1, !mcsema_real_eip !87
  store i1 %410, i1* %SF, !mcsema_real_eip !87
  %411 = icmp ult i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  store i1 %411, i1* %CF, !mcsema_real_eip !87
  %412 = xor i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %413 = and i32 %412, %400, !mcsema_real_eip !87
  %414 = lshr i32 %413, 31, !mcsema_real_eip !87
  %415 = trunc i32 %414 to i1, !mcsema_real_eip !87
  store i1 %415, i1* %OF, !mcsema_real_eip !87
  %416 = zext i32 %399 to i64, !mcsema_real_eip !87
  store i64 %416, i64* %XAX, !mcsema_real_eip !87
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -76
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %EAX_val.110 = load i32, i32* %EAX.16, !mcsema_real_eip !88
  %417 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !88
  %418 = inttoptr i64 %417 to i32*, !mcsema_real_eip !88
  store i32 %EAX_val.110, i32* %418, !mcsema_real_eip !88
  %419 = load i1, i1* %ZF, !mcsema_real_eip !89
  br i1 %419, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !89

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !90

block_0x173:                                      ; preds = %block_0x16e
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -12
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %420 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !91
  %421 = inttoptr i64 %420 to i32*, !mcsema_real_eip !91
  %422 = load i32, i32* %421, !mcsema_real_eip !91
  %423 = zext i32 %422 to i64, !mcsema_real_eip !91
  store i64 %423, i64* %XAX, !mcsema_real_eip !91
  %EAX_val.113 = load i32, i32* %EAX.16, !mcsema_real_eip !92
  %424 = sub i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %425 = xor i32 %424, %EAX_val.113, !mcsema_real_eip !92
  %426 = xor i32 %425, 74642, !mcsema_real_eip !92
  %427 = and i32 %426, 16, !mcsema_real_eip !92
  %428 = icmp ne i32 %427, 0, !mcsema_real_eip !92
  store i1 %428, i1* %AF, !mcsema_real_eip !92
  %429 = trunc i32 %424 to i8, !mcsema_real_eip !92
  %430 = call i8 @llvm.ctpop.i8(i8 %429), !mcsema_real_eip !92
  %431 = trunc i8 %430 to i1, !mcsema_real_eip !92
  %432 = xor i1 %431, true, !mcsema_real_eip !92
  store i1 %432, i1* %PF, !mcsema_real_eip !92
  %433 = icmp eq i32 %424, 0, !mcsema_real_eip !92
  store i1 %433, i1* %ZF, !mcsema_real_eip !92
  %434 = lshr i32 %424, 31, !mcsema_real_eip !92
  %435 = trunc i32 %434 to i1, !mcsema_real_eip !92
  store i1 %435, i1* %SF, !mcsema_real_eip !92
  %436 = icmp ult i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  store i1 %436, i1* %CF, !mcsema_real_eip !92
  %437 = xor i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %438 = and i32 %437, %425, !mcsema_real_eip !92
  %439 = lshr i32 %438, 31, !mcsema_real_eip !92
  %440 = trunc i32 %439 to i1, !mcsema_real_eip !92
  store i1 %440, i1* %OF, !mcsema_real_eip !92
  %441 = zext i32 %424 to i64, !mcsema_real_eip !92
  store i64 %441, i64* %XAX, !mcsema_real_eip !92
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -80
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %EAX_val.116 = load i32, i32* %EAX.16, !mcsema_real_eip !93
  %442 = ptrtoint i64* %_allin_new_bt_115 to i64, !mcsema_real_eip !93
  %443 = inttoptr i64 %442 to i32*, !mcsema_real_eip !93
  store i32 %EAX_val.116, i32* %443, !mcsema_real_eip !93
  %444 = load i1, i1* %ZF, !mcsema_real_eip !94
  br i1 %444, label %block_0x29f, label %block_0x184, !mcsema_real_eip !94

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !95

block_0x189:                                      ; preds = %block_0x184
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -12
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %445 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !96
  %446 = inttoptr i64 %445 to i32*, !mcsema_real_eip !96
  %447 = load i32, i32* %446, !mcsema_real_eip !96
  %448 = zext i32 %447 to i64, !mcsema_real_eip !96
  store i64 %448, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.119 = load i32, i32* %EAX.16, !mcsema_real_eip !97
  %449 = sub i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %450 = xor i32 %449, %EAX_val.119, !mcsema_real_eip !97
  %451 = xor i32 %450, 74643, !mcsema_real_eip !97
  %452 = and i32 %451, 16, !mcsema_real_eip !97
  %453 = icmp ne i32 %452, 0, !mcsema_real_eip !97
  store i1 %453, i1* %AF, !mcsema_real_eip !97
  %454 = trunc i32 %449 to i8, !mcsema_real_eip !97
  %455 = call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !97
  %456 = trunc i8 %455 to i1, !mcsema_real_eip !97
  %457 = xor i1 %456, true, !mcsema_real_eip !97
  store i1 %457, i1* %PF, !mcsema_real_eip !97
  %458 = icmp eq i32 %449, 0, !mcsema_real_eip !97
  store i1 %458, i1* %ZF, !mcsema_real_eip !97
  %459 = lshr i32 %449, 31, !mcsema_real_eip !97
  %460 = trunc i32 %459 to i1, !mcsema_real_eip !97
  store i1 %460, i1* %SF, !mcsema_real_eip !97
  %461 = icmp ult i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  store i1 %461, i1* %CF, !mcsema_real_eip !97
  %462 = xor i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %463 = and i32 %462, %450, !mcsema_real_eip !97
  %464 = lshr i32 %463, 31, !mcsema_real_eip !97
  %465 = trunc i32 %464 to i1, !mcsema_real_eip !97
  store i1 %465, i1* %OF, !mcsema_real_eip !97
  %466 = zext i32 %449 to i64, !mcsema_real_eip !97
  store i64 %466, i64* %XAX, !mcsema_real_eip !97
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -84
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %EAX_val.122 = load i32, i32* %EAX.16, !mcsema_real_eip !98
  %467 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !98
  %468 = inttoptr i64 %467 to i32*, !mcsema_real_eip !98
  store i32 %EAX_val.122, i32* %468, !mcsema_real_eip !98
  %469 = load i1, i1* %ZF, !mcsema_real_eip !99
  br i1 %469, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !99

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !100

block_0x19f:                                      ; preds = %block_0x0
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -8
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %470 = ptrtoint i64* %_allin_new_bt_124 to i64, !mcsema_real_eip !101
  %471 = inttoptr i64 %470 to i32*, !mcsema_real_eip !101
  %472 = load i32, i32* %471, !mcsema_real_eip !101
  %473 = zext i32 %472 to i64, !mcsema_real_eip !101
  store i64 %473, i64* %XAX, !mcsema_real_eip !101
  %EAX.124 = bitcast i64* %XAX to i32*, !mcsema_real_eip !102
  %EAX_val.125 = load i32, i32* %EAX.124, !mcsema_real_eip !102
  store i1 false, i1* %AF, !mcsema_real_eip !102
  %474 = lshr i32 %EAX_val.125, 31, !mcsema_real_eip !102
  %475 = trunc i32 %474 to i1, !mcsema_real_eip !102
  store i1 %475, i1* %SF, !mcsema_real_eip !102
  %476 = icmp eq i32 %EAX_val.125, 0, !mcsema_real_eip !102
  store i1 %476, i1* %ZF, !mcsema_real_eip !102
  %477 = xor i32 %EAX_val.125, -1, !mcsema_real_eip !102
  store i1 false, i1* %OF, !mcsema_real_eip !102
  %478 = trunc i32 %EAX_val.125 to i8, !mcsema_real_eip !102
  %479 = call i8 @llvm.ctpop.i8(i8 %478), !mcsema_real_eip !102
  %480 = trunc i8 %479 to i1, !mcsema_real_eip !102
  %481 = xor i1 %480, true, !mcsema_real_eip !102
  store i1 %481, i1* %PF, !mcsema_real_eip !102
  store i1 false, i1* %CF, !mcsema_real_eip !102
  %482 = zext i32 %EAX_val.125 to i64, !mcsema_real_eip !102
  store i64 %482, i64* %XAX, !mcsema_real_eip !102
  %EAX_val.128 = load i32, i32* %EAX.124, !mcsema_real_eip !103
  store i32 %EAX_val.128, i32* %471, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x1ad:                                      ; preds = %block_0x21
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -8
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %483 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !105
  %484 = inttoptr i64 %483 to i32*, !mcsema_real_eip !105
  %485 = load i32, i32* %484, !mcsema_real_eip !105
  %486 = zext i32 %485 to i64, !mcsema_real_eip !105
  store i64 %486, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.131 = load i32, i32* %EAX.16, !mcsema_real_eip !106
  %487 = add i32 1, %EAX_val.131, !mcsema_real_eip !106
  %488 = xor i32 %487, %EAX_val.131, !mcsema_real_eip !106
  %489 = xor i32 %488, 1, !mcsema_real_eip !106
  %490 = and i32 %489, 16, !mcsema_real_eip !106
  %491 = icmp ne i32 %490, 0, !mcsema_real_eip !106
  store i1 %491, i1* %AF, !mcsema_real_eip !106
  %492 = lshr i32 %487, 31, !mcsema_real_eip !106
  %493 = trunc i32 %492 to i1, !mcsema_real_eip !106
  store i1 %493, i1* %SF, !mcsema_real_eip !106
  %494 = icmp eq i32 %487, 0, !mcsema_real_eip !106
  store i1 %494, i1* %ZF, !mcsema_real_eip !106
  %495 = xor i32 %EAX_val.131, 1, !mcsema_real_eip !106
  %496 = xor i32 %495, -1, !mcsema_real_eip !106
  %497 = and i32 %496, %488, !mcsema_real_eip !106
  %498 = lshr i32 %497, 31, !mcsema_real_eip !106
  %499 = and i32 %498, 1, !mcsema_real_eip !106
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !106
  store i1 %500, i1* %OF, !mcsema_real_eip !106
  %501 = trunc i32 %487 to i8, !mcsema_real_eip !106
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !106
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !106
  %504 = xor i1 %503, true, !mcsema_real_eip !106
  store i1 %504, i1* %PF, !mcsema_real_eip !106
  %505 = icmp ult i32 %487, %EAX_val.131, !mcsema_real_eip !106
  store i1 %505, i1* %CF, !mcsema_real_eip !106
  %506 = zext i32 %487 to i64, !mcsema_real_eip !106
  store i64 %506, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.134 = load i32, i32* %EAX.16, !mcsema_real_eip !107
  store i32 %EAX_val.134, i32* %484, !mcsema_real_eip !107
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x1bb:                                      ; preds = %block_0x35
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -8
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %507 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !109
  %508 = inttoptr i64 %507 to i32*, !mcsema_real_eip !109
  %509 = load i32, i32* %508, !mcsema_real_eip !109
  %510 = zext i32 %509 to i64, !mcsema_real_eip !109
  store i64 %510, i64* %XAX, !mcsema_real_eip !109
  %EAX_val.137 = load i32, i32* %EAX.16, !mcsema_real_eip !110
  %511 = add i32 2, %EAX_val.137, !mcsema_real_eip !110
  %512 = xor i32 %511, %EAX_val.137, !mcsema_real_eip !110
  %513 = xor i32 %512, 2, !mcsema_real_eip !110
  %514 = and i32 %513, 16, !mcsema_real_eip !110
  %515 = icmp ne i32 %514, 0, !mcsema_real_eip !110
  store i1 %515, i1* %AF, !mcsema_real_eip !110
  %516 = lshr i32 %511, 31, !mcsema_real_eip !110
  %517 = trunc i32 %516 to i1, !mcsema_real_eip !110
  store i1 %517, i1* %SF, !mcsema_real_eip !110
  %518 = icmp eq i32 %511, 0, !mcsema_real_eip !110
  store i1 %518, i1* %ZF, !mcsema_real_eip !110
  %519 = xor i32 %EAX_val.137, 2, !mcsema_real_eip !110
  %520 = xor i32 %519, -1, !mcsema_real_eip !110
  %521 = and i32 %520, %512, !mcsema_real_eip !110
  %522 = lshr i32 %521, 31, !mcsema_real_eip !110
  %523 = and i32 %522, 1, !mcsema_real_eip !110
  %524 = trunc i32 %523 to i1, !mcsema_real_eip !110
  store i1 %524, i1* %OF, !mcsema_real_eip !110
  %525 = trunc i32 %511 to i8, !mcsema_real_eip !110
  %526 = call i8 @llvm.ctpop.i8(i8 %525), !mcsema_real_eip !110
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !110
  %528 = xor i1 %527, true, !mcsema_real_eip !110
  store i1 %528, i1* %PF, !mcsema_real_eip !110
  %529 = icmp ult i32 %511, %EAX_val.137, !mcsema_real_eip !110
  store i1 %529, i1* %CF, !mcsema_real_eip !110
  %530 = zext i32 %511 to i64, !mcsema_real_eip !110
  store i64 %530, i64* %XAX, !mcsema_real_eip !110
  %EAX_val.140 = load i32, i32* %EAX.16, !mcsema_real_eip !111
  store i32 %EAX_val.140, i32* %508, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x1c9:                                      ; preds = %block_0x49
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -8
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %531 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !113
  %532 = inttoptr i64 %531 to i32*, !mcsema_real_eip !113
  %533 = load i32, i32* %532, !mcsema_real_eip !113
  %534 = zext i32 %533 to i64, !mcsema_real_eip !113
  store i64 %534, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.143 = load i32, i32* %EAX.16, !mcsema_real_eip !114
  %535 = add i32 4, %EAX_val.143, !mcsema_real_eip !114
  %536 = xor i32 %535, %EAX_val.143, !mcsema_real_eip !114
  %537 = xor i32 %536, 4, !mcsema_real_eip !114
  %538 = and i32 %537, 16, !mcsema_real_eip !114
  %539 = icmp ne i32 %538, 0, !mcsema_real_eip !114
  store i1 %539, i1* %AF, !mcsema_real_eip !114
  %540 = lshr i32 %535, 31, !mcsema_real_eip !114
  %541 = trunc i32 %540 to i1, !mcsema_real_eip !114
  store i1 %541, i1* %SF, !mcsema_real_eip !114
  %542 = icmp eq i32 %535, 0, !mcsema_real_eip !114
  store i1 %542, i1* %ZF, !mcsema_real_eip !114
  %543 = xor i32 %EAX_val.143, 4, !mcsema_real_eip !114
  %544 = xor i32 %543, -1, !mcsema_real_eip !114
  %545 = and i32 %544, %536, !mcsema_real_eip !114
  %546 = lshr i32 %545, 31, !mcsema_real_eip !114
  %547 = and i32 %546, 1, !mcsema_real_eip !114
  %548 = trunc i32 %547 to i1, !mcsema_real_eip !114
  store i1 %548, i1* %OF, !mcsema_real_eip !114
  %549 = trunc i32 %535 to i8, !mcsema_real_eip !114
  %550 = call i8 @llvm.ctpop.i8(i8 %549), !mcsema_real_eip !114
  %551 = trunc i8 %550 to i1, !mcsema_real_eip !114
  %552 = xor i1 %551, true, !mcsema_real_eip !114
  store i1 %552, i1* %PF, !mcsema_real_eip !114
  %553 = icmp ult i32 %535, %EAX_val.143, !mcsema_real_eip !114
  store i1 %553, i1* %CF, !mcsema_real_eip !114
  %554 = zext i32 %535 to i64, !mcsema_real_eip !114
  store i64 %554, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.146 = load i32, i32* %EAX.16, !mcsema_real_eip !115
  store i32 %EAX_val.146, i32* %532, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x1d7:                                      ; preds = %block_0x5d
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -8
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %555 = ptrtoint i64* %_allin_new_bt_148 to i64, !mcsema_real_eip !117
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !117
  %557 = load i32, i32* %556, !mcsema_real_eip !117
  %558 = zext i32 %557 to i64, !mcsema_real_eip !117
  store i64 %558, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.149 = load i32, i32* %EAX.16, !mcsema_real_eip !118
  %559 = add i32 6, %EAX_val.149, !mcsema_real_eip !118
  %560 = xor i32 %559, %EAX_val.149, !mcsema_real_eip !118
  %561 = xor i32 %560, 6, !mcsema_real_eip !118
  %562 = and i32 %561, 16, !mcsema_real_eip !118
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !118
  store i1 %563, i1* %AF, !mcsema_real_eip !118
  %564 = lshr i32 %559, 31, !mcsema_real_eip !118
  %565 = trunc i32 %564 to i1, !mcsema_real_eip !118
  store i1 %565, i1* %SF, !mcsema_real_eip !118
  %566 = icmp eq i32 %559, 0, !mcsema_real_eip !118
  store i1 %566, i1* %ZF, !mcsema_real_eip !118
  %567 = xor i32 %EAX_val.149, 6, !mcsema_real_eip !118
  %568 = xor i32 %567, -1, !mcsema_real_eip !118
  %569 = and i32 %568, %560, !mcsema_real_eip !118
  %570 = lshr i32 %569, 31, !mcsema_real_eip !118
  %571 = and i32 %570, 1, !mcsema_real_eip !118
  %572 = trunc i32 %571 to i1, !mcsema_real_eip !118
  store i1 %572, i1* %OF, !mcsema_real_eip !118
  %573 = trunc i32 %559 to i8, !mcsema_real_eip !118
  %574 = call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !118
  %575 = trunc i8 %574 to i1, !mcsema_real_eip !118
  %576 = xor i1 %575, true, !mcsema_real_eip !118
  store i1 %576, i1* %PF, !mcsema_real_eip !118
  %577 = icmp ult i32 %559, %EAX_val.149, !mcsema_real_eip !118
  store i1 %577, i1* %CF, !mcsema_real_eip !118
  %578 = zext i32 %559 to i64, !mcsema_real_eip !118
  store i64 %578, i64* %XAX, !mcsema_real_eip !118
  %EAX_val.152 = load i32, i32* %EAX.16, !mcsema_real_eip !119
  store i32 %EAX_val.152, i32* %556, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x1e5:                                      ; preds = %block_0x71
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -8
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %579 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !121
  %580 = inttoptr i64 %579 to i32*, !mcsema_real_eip !121
  %581 = load i32, i32* %580, !mcsema_real_eip !121
  %582 = zext i32 %581 to i64, !mcsema_real_eip !121
  store i64 %582, i64* %XAX, !mcsema_real_eip !121
  %EAX_val.155 = load i32, i32* %EAX.16, !mcsema_real_eip !122
  %583 = add i32 12, %EAX_val.155, !mcsema_real_eip !122
  %584 = xor i32 %583, %EAX_val.155, !mcsema_real_eip !122
  %585 = xor i32 %584, 12, !mcsema_real_eip !122
  %586 = and i32 %585, 16, !mcsema_real_eip !122
  %587 = icmp ne i32 %586, 0, !mcsema_real_eip !122
  store i1 %587, i1* %AF, !mcsema_real_eip !122
  %588 = lshr i32 %583, 31, !mcsema_real_eip !122
  %589 = trunc i32 %588 to i1, !mcsema_real_eip !122
  store i1 %589, i1* %SF, !mcsema_real_eip !122
  %590 = icmp eq i32 %583, 0, !mcsema_real_eip !122
  store i1 %590, i1* %ZF, !mcsema_real_eip !122
  %591 = xor i32 %EAX_val.155, 12, !mcsema_real_eip !122
  %592 = xor i32 %591, -1, !mcsema_real_eip !122
  %593 = and i32 %592, %584, !mcsema_real_eip !122
  %594 = lshr i32 %593, 31, !mcsema_real_eip !122
  %595 = and i32 %594, 1, !mcsema_real_eip !122
  %596 = trunc i32 %595 to i1, !mcsema_real_eip !122
  store i1 %596, i1* %OF, !mcsema_real_eip !122
  %597 = trunc i32 %583 to i8, !mcsema_real_eip !122
  %598 = call i8 @llvm.ctpop.i8(i8 %597), !mcsema_real_eip !122
  %599 = trunc i8 %598 to i1, !mcsema_real_eip !122
  %600 = xor i1 %599, true, !mcsema_real_eip !122
  store i1 %600, i1* %PF, !mcsema_real_eip !122
  %601 = icmp ult i32 %583, %EAX_val.155, !mcsema_real_eip !122
  store i1 %601, i1* %CF, !mcsema_real_eip !122
  %602 = zext i32 %583 to i64, !mcsema_real_eip !122
  store i64 %602, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.158 = load i32, i32* %EAX.16, !mcsema_real_eip !123
  store i32 %EAX_val.158, i32* %580, !mcsema_real_eip !123
  br label %block_0x2c8, !mcsema_real_eip !124

block_0x1f3:                                      ; preds = %block_0x85
  %_load_rbp_ptr_158 = load i8*, i8** %_RBP_ptr_
  %_new_gep_159 = getelementptr i8, i8* %_load_rbp_ptr_158, i64 -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  %603 = ptrtoint i64* %_allin_new_bt_160 to i64, !mcsema_real_eip !125
  %604 = inttoptr i64 %603 to i32*, !mcsema_real_eip !125
  %605 = load i32, i32* %604, !mcsema_real_eip !125
  %606 = zext i32 %605 to i64, !mcsema_real_eip !125
  store i64 %606, i64* %XAX, !mcsema_real_eip !125
  %EAX_val.161 = load i32, i32* %EAX.16, !mcsema_real_eip !126
  %607 = add i32 13, %EAX_val.161, !mcsema_real_eip !126
  %608 = xor i32 %607, %EAX_val.161, !mcsema_real_eip !126
  %609 = xor i32 %608, 13, !mcsema_real_eip !126
  %610 = and i32 %609, 16, !mcsema_real_eip !126
  %611 = icmp ne i32 %610, 0, !mcsema_real_eip !126
  store i1 %611, i1* %AF, !mcsema_real_eip !126
  %612 = lshr i32 %607, 31, !mcsema_real_eip !126
  %613 = trunc i32 %612 to i1, !mcsema_real_eip !126
  store i1 %613, i1* %SF, !mcsema_real_eip !126
  %614 = icmp eq i32 %607, 0, !mcsema_real_eip !126
  store i1 %614, i1* %ZF, !mcsema_real_eip !126
  %615 = xor i32 %EAX_val.161, 13, !mcsema_real_eip !126
  %616 = xor i32 %615, -1, !mcsema_real_eip !126
  %617 = and i32 %616, %608, !mcsema_real_eip !126
  %618 = lshr i32 %617, 31, !mcsema_real_eip !126
  %619 = and i32 %618, 1, !mcsema_real_eip !126
  %620 = trunc i32 %619 to i1, !mcsema_real_eip !126
  store i1 %620, i1* %OF, !mcsema_real_eip !126
  %621 = trunc i32 %607 to i8, !mcsema_real_eip !126
  %622 = call i8 @llvm.ctpop.i8(i8 %621), !mcsema_real_eip !126
  %623 = trunc i8 %622 to i1, !mcsema_real_eip !126
  %624 = xor i1 %623, true, !mcsema_real_eip !126
  store i1 %624, i1* %PF, !mcsema_real_eip !126
  %625 = icmp ult i32 %607, %EAX_val.161, !mcsema_real_eip !126
  store i1 %625, i1* %CF, !mcsema_real_eip !126
  %626 = zext i32 %607 to i64, !mcsema_real_eip !126
  store i64 %626, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.164 = load i32, i32* %EAX.16, !mcsema_real_eip !127
  store i32 %EAX_val.164, i32* %604, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x201:                                      ; preds = %block_0x99
  %_load_rbp_ptr_164 = load i8*, i8** %_RBP_ptr_
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_164, i64 -8
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %627 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !129
  %628 = inttoptr i64 %627 to i32*, !mcsema_real_eip !129
  %629 = load i32, i32* %628, !mcsema_real_eip !129
  %630 = zext i32 %629 to i64, !mcsema_real_eip !129
  store i64 %630, i64* %XAX, !mcsema_real_eip !129
  %EAX_val.167 = load i32, i32* %EAX.16, !mcsema_real_eip !130
  %631 = add i32 19, %EAX_val.167, !mcsema_real_eip !130
  %632 = xor i32 %631, %EAX_val.167, !mcsema_real_eip !130
  %633 = xor i32 %632, 19, !mcsema_real_eip !130
  %634 = and i32 %633, 16, !mcsema_real_eip !130
  %635 = icmp ne i32 %634, 0, !mcsema_real_eip !130
  store i1 %635, i1* %AF, !mcsema_real_eip !130
  %636 = lshr i32 %631, 31, !mcsema_real_eip !130
  %637 = trunc i32 %636 to i1, !mcsema_real_eip !130
  store i1 %637, i1* %SF, !mcsema_real_eip !130
  %638 = icmp eq i32 %631, 0, !mcsema_real_eip !130
  store i1 %638, i1* %ZF, !mcsema_real_eip !130
  %639 = xor i32 %EAX_val.167, 19, !mcsema_real_eip !130
  %640 = xor i32 %639, -1, !mcsema_real_eip !130
  %641 = and i32 %640, %632, !mcsema_real_eip !130
  %642 = lshr i32 %641, 31, !mcsema_real_eip !130
  %643 = and i32 %642, 1, !mcsema_real_eip !130
  %644 = trunc i32 %643 to i1, !mcsema_real_eip !130
  store i1 %644, i1* %OF, !mcsema_real_eip !130
  %645 = trunc i32 %631 to i8, !mcsema_real_eip !130
  %646 = call i8 @llvm.ctpop.i8(i8 %645), !mcsema_real_eip !130
  %647 = trunc i8 %646 to i1, !mcsema_real_eip !130
  %648 = xor i1 %647, true, !mcsema_real_eip !130
  store i1 %648, i1* %PF, !mcsema_real_eip !130
  %649 = icmp ult i32 %631, %EAX_val.167, !mcsema_real_eip !130
  store i1 %649, i1* %CF, !mcsema_real_eip !130
  %650 = zext i32 %631 to i64, !mcsema_real_eip !130
  store i64 %650, i64* %XAX, !mcsema_real_eip !130
  %EAX_val.170 = load i32, i32* %EAX.16, !mcsema_real_eip !131
  store i32 %EAX_val.170, i32* %628, !mcsema_real_eip !131
  br label %block_0x2c8, !mcsema_real_eip !132

block_0x20f:                                      ; preds = %block_0xad
  %_load_rbp_ptr_170 = load i8*, i8** %_RBP_ptr_
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -8
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %651 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !133
  %652 = inttoptr i64 %651 to i32*, !mcsema_real_eip !133
  %653 = load i32, i32* %652, !mcsema_real_eip !133
  %654 = zext i32 %653 to i64, !mcsema_real_eip !133
  store i64 %654, i64* %XAX, !mcsema_real_eip !133
  %EAX_val.173 = load i32, i32* %EAX.16, !mcsema_real_eip !134
  %655 = add i32 255, %EAX_val.173, !mcsema_real_eip !134
  %656 = xor i32 %655, %EAX_val.173, !mcsema_real_eip !134
  %657 = xor i32 %656, 255, !mcsema_real_eip !134
  %658 = and i32 %657, 16, !mcsema_real_eip !134
  %659 = icmp ne i32 %658, 0, !mcsema_real_eip !134
  store i1 %659, i1* %AF, !mcsema_real_eip !134
  %660 = lshr i32 %655, 31, !mcsema_real_eip !134
  %661 = trunc i32 %660 to i1, !mcsema_real_eip !134
  store i1 %661, i1* %SF, !mcsema_real_eip !134
  %662 = icmp eq i32 %655, 0, !mcsema_real_eip !134
  store i1 %662, i1* %ZF, !mcsema_real_eip !134
  %663 = xor i32 %EAX_val.173, 255, !mcsema_real_eip !134
  %664 = xor i32 %663, -1, !mcsema_real_eip !134
  %665 = and i32 %664, %656, !mcsema_real_eip !134
  %666 = lshr i32 %665, 31, !mcsema_real_eip !134
  %667 = and i32 %666, 1, !mcsema_real_eip !134
  %668 = trunc i32 %667 to i1, !mcsema_real_eip !134
  store i1 %668, i1* %OF, !mcsema_real_eip !134
  %669 = trunc i32 %655 to i8, !mcsema_real_eip !134
  %670 = call i8 @llvm.ctpop.i8(i8 %669), !mcsema_real_eip !134
  %671 = trunc i8 %670 to i1, !mcsema_real_eip !134
  %672 = xor i1 %671, true, !mcsema_real_eip !134
  store i1 %672, i1* %PF, !mcsema_real_eip !134
  %673 = icmp ult i32 %655, %EAX_val.173, !mcsema_real_eip !134
  store i1 %673, i1* %CF, !mcsema_real_eip !134
  %674 = zext i32 %655 to i64, !mcsema_real_eip !134
  store i64 %674, i64* %XAX, !mcsema_real_eip !134
  %EAX_val.176 = load i32, i32* %EAX.16, !mcsema_real_eip !135
  store i32 %EAX_val.176, i32* %652, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x21f:                                      ; preds = %block_0xc3
  %_load_rbp_ptr_176 = load i8*, i8** %_RBP_ptr_
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_176, i64 -8
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %675 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !137
  %676 = inttoptr i64 %675 to i32*, !mcsema_real_eip !137
  %677 = load i32, i32* %676, !mcsema_real_eip !137
  %678 = zext i32 %677 to i64, !mcsema_real_eip !137
  store i64 %678, i64* %XAX, !mcsema_real_eip !137
  %EAX_val.179 = load i32, i32* %EAX.16, !mcsema_real_eip !138
  %679 = add i32 74633, %EAX_val.179, !mcsema_real_eip !138
  %680 = xor i32 %679, %EAX_val.179, !mcsema_real_eip !138
  %681 = xor i32 %680, 74633, !mcsema_real_eip !138
  %682 = and i32 %681, 16, !mcsema_real_eip !138
  %683 = icmp ne i32 %682, 0, !mcsema_real_eip !138
  store i1 %683, i1* %AF, !mcsema_real_eip !138
  %684 = lshr i32 %679, 31, !mcsema_real_eip !138
  %685 = trunc i32 %684 to i1, !mcsema_real_eip !138
  store i1 %685, i1* %SF, !mcsema_real_eip !138
  %686 = icmp eq i32 %679, 0, !mcsema_real_eip !138
  store i1 %686, i1* %ZF, !mcsema_real_eip !138
  %687 = xor i32 %EAX_val.179, 74633, !mcsema_real_eip !138
  %688 = xor i32 %687, -1, !mcsema_real_eip !138
  %689 = and i32 %688, %680, !mcsema_real_eip !138
  %690 = lshr i32 %689, 31, !mcsema_real_eip !138
  %691 = and i32 %690, 1, !mcsema_real_eip !138
  %692 = trunc i32 %691 to i1, !mcsema_real_eip !138
  store i1 %692, i1* %OF, !mcsema_real_eip !138
  %693 = trunc i32 %679 to i8, !mcsema_real_eip !138
  %694 = call i8 @llvm.ctpop.i8(i8 %693), !mcsema_real_eip !138
  %695 = trunc i8 %694 to i1, !mcsema_real_eip !138
  %696 = xor i1 %695, true, !mcsema_real_eip !138
  store i1 %696, i1* %PF, !mcsema_real_eip !138
  %697 = icmp ult i32 %679, %EAX_val.179, !mcsema_real_eip !138
  store i1 %697, i1* %CF, !mcsema_real_eip !138
  %698 = zext i32 %679 to i64, !mcsema_real_eip !138
  store i64 %698, i64* %XAX, !mcsema_real_eip !138
  %EAX_val.182 = load i32, i32* %EAX.16, !mcsema_real_eip !139
  store i32 %EAX_val.182, i32* %676, !mcsema_real_eip !139
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x22f:                                      ; preds = %block_0xd9
  %_load_rbp_ptr_182 = load i8*, i8** %_RBP_ptr_
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_182, i64 -8
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %699 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !141
  %700 = inttoptr i64 %699 to i32*, !mcsema_real_eip !141
  %701 = load i32, i32* %700, !mcsema_real_eip !141
  %702 = zext i32 %701 to i64, !mcsema_real_eip !141
  store i64 %702, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.185 = load i32, i32* %EAX.16, !mcsema_real_eip !142
  %703 = add i32 74634, %EAX_val.185, !mcsema_real_eip !142
  %704 = xor i32 %703, %EAX_val.185, !mcsema_real_eip !142
  %705 = xor i32 %704, 74634, !mcsema_real_eip !142
  %706 = and i32 %705, 16, !mcsema_real_eip !142
  %707 = icmp ne i32 %706, 0, !mcsema_real_eip !142
  store i1 %707, i1* %AF, !mcsema_real_eip !142
  %708 = lshr i32 %703, 31, !mcsema_real_eip !142
  %709 = trunc i32 %708 to i1, !mcsema_real_eip !142
  store i1 %709, i1* %SF, !mcsema_real_eip !142
  %710 = icmp eq i32 %703, 0, !mcsema_real_eip !142
  store i1 %710, i1* %ZF, !mcsema_real_eip !142
  %711 = xor i32 %EAX_val.185, 74634, !mcsema_real_eip !142
  %712 = xor i32 %711, -1, !mcsema_real_eip !142
  %713 = and i32 %712, %704, !mcsema_real_eip !142
  %714 = lshr i32 %713, 31, !mcsema_real_eip !142
  %715 = and i32 %714, 1, !mcsema_real_eip !142
  %716 = trunc i32 %715 to i1, !mcsema_real_eip !142
  store i1 %716, i1* %OF, !mcsema_real_eip !142
  %717 = trunc i32 %703 to i8, !mcsema_real_eip !142
  %718 = call i8 @llvm.ctpop.i8(i8 %717), !mcsema_real_eip !142
  %719 = trunc i8 %718 to i1, !mcsema_real_eip !142
  %720 = xor i1 %719, true, !mcsema_real_eip !142
  store i1 %720, i1* %PF, !mcsema_real_eip !142
  %721 = icmp ult i32 %703, %EAX_val.185, !mcsema_real_eip !142
  store i1 %721, i1* %CF, !mcsema_real_eip !142
  %722 = zext i32 %703 to i64, !mcsema_real_eip !142
  store i64 %722, i64* %XAX, !mcsema_real_eip !142
  %EAX_val.188 = load i32, i32* %EAX.16, !mcsema_real_eip !143
  store i32 %EAX_val.188, i32* %700, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x23f:                                      ; preds = %block_0xef
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -8
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %723 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !145
  %724 = inttoptr i64 %723 to i32*, !mcsema_real_eip !145
  %725 = load i32, i32* %724, !mcsema_real_eip !145
  %726 = zext i32 %725 to i64, !mcsema_real_eip !145
  store i64 %726, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.191 = load i32, i32* %EAX.16, !mcsema_real_eip !146
  %727 = add i32 74635, %EAX_val.191, !mcsema_real_eip !146
  %728 = xor i32 %727, %EAX_val.191, !mcsema_real_eip !146
  %729 = xor i32 %728, 74635, !mcsema_real_eip !146
  %730 = and i32 %729, 16, !mcsema_real_eip !146
  %731 = icmp ne i32 %730, 0, !mcsema_real_eip !146
  store i1 %731, i1* %AF, !mcsema_real_eip !146
  %732 = lshr i32 %727, 31, !mcsema_real_eip !146
  %733 = trunc i32 %732 to i1, !mcsema_real_eip !146
  store i1 %733, i1* %SF, !mcsema_real_eip !146
  %734 = icmp eq i32 %727, 0, !mcsema_real_eip !146
  store i1 %734, i1* %ZF, !mcsema_real_eip !146
  %735 = xor i32 %EAX_val.191, 74635, !mcsema_real_eip !146
  %736 = xor i32 %735, -1, !mcsema_real_eip !146
  %737 = and i32 %736, %728, !mcsema_real_eip !146
  %738 = lshr i32 %737, 31, !mcsema_real_eip !146
  %739 = and i32 %738, 1, !mcsema_real_eip !146
  %740 = trunc i32 %739 to i1, !mcsema_real_eip !146
  store i1 %740, i1* %OF, !mcsema_real_eip !146
  %741 = trunc i32 %727 to i8, !mcsema_real_eip !146
  %742 = call i8 @llvm.ctpop.i8(i8 %741), !mcsema_real_eip !146
  %743 = trunc i8 %742 to i1, !mcsema_real_eip !146
  %744 = xor i1 %743, true, !mcsema_real_eip !146
  store i1 %744, i1* %PF, !mcsema_real_eip !146
  %745 = icmp ult i32 %727, %EAX_val.191, !mcsema_real_eip !146
  store i1 %745, i1* %CF, !mcsema_real_eip !146
  %746 = zext i32 %727 to i64, !mcsema_real_eip !146
  store i64 %746, i64* %XAX, !mcsema_real_eip !146
  %EAX_val.194 = load i32, i32* %EAX.16, !mcsema_real_eip !147
  store i32 %EAX_val.194, i32* %724, !mcsema_real_eip !147
  br label %block_0x2c8, !mcsema_real_eip !148

block_0x24f:                                      ; preds = %block_0x105
  %_load_rbp_ptr_194 = load i8*, i8** %_RBP_ptr_
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_194, i64 -8
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %747 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !149
  %748 = inttoptr i64 %747 to i32*, !mcsema_real_eip !149
  %749 = load i32, i32* %748, !mcsema_real_eip !149
  %750 = zext i32 %749 to i64, !mcsema_real_eip !149
  store i64 %750, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.197 = load i32, i32* %EAX.16, !mcsema_real_eip !150
  %751 = add i32 74636, %EAX_val.197, !mcsema_real_eip !150
  %752 = xor i32 %751, %EAX_val.197, !mcsema_real_eip !150
  %753 = xor i32 %752, 74636, !mcsema_real_eip !150
  %754 = and i32 %753, 16, !mcsema_real_eip !150
  %755 = icmp ne i32 %754, 0, !mcsema_real_eip !150
  store i1 %755, i1* %AF, !mcsema_real_eip !150
  %756 = lshr i32 %751, 31, !mcsema_real_eip !150
  %757 = trunc i32 %756 to i1, !mcsema_real_eip !150
  store i1 %757, i1* %SF, !mcsema_real_eip !150
  %758 = icmp eq i32 %751, 0, !mcsema_real_eip !150
  store i1 %758, i1* %ZF, !mcsema_real_eip !150
  %759 = xor i32 %EAX_val.197, 74636, !mcsema_real_eip !150
  %760 = xor i32 %759, -1, !mcsema_real_eip !150
  %761 = and i32 %760, %752, !mcsema_real_eip !150
  %762 = lshr i32 %761, 31, !mcsema_real_eip !150
  %763 = and i32 %762, 1, !mcsema_real_eip !150
  %764 = trunc i32 %763 to i1, !mcsema_real_eip !150
  store i1 %764, i1* %OF, !mcsema_real_eip !150
  %765 = trunc i32 %751 to i8, !mcsema_real_eip !150
  %766 = call i8 @llvm.ctpop.i8(i8 %765), !mcsema_real_eip !150
  %767 = trunc i8 %766 to i1, !mcsema_real_eip !150
  %768 = xor i1 %767, true, !mcsema_real_eip !150
  store i1 %768, i1* %PF, !mcsema_real_eip !150
  %769 = icmp ult i32 %751, %EAX_val.197, !mcsema_real_eip !150
  store i1 %769, i1* %CF, !mcsema_real_eip !150
  %770 = zext i32 %751 to i64, !mcsema_real_eip !150
  store i64 %770, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.200 = load i32, i32* %EAX.16, !mcsema_real_eip !151
  store i32 %EAX_val.200, i32* %748, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x25f:                                      ; preds = %block_0x11b
  %_load_rbp_ptr_200 = load i8*, i8** %_RBP_ptr_
  %_new_gep_201 = getelementptr i8, i8* %_load_rbp_ptr_200, i64 -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  %771 = ptrtoint i64* %_allin_new_bt_202 to i64, !mcsema_real_eip !153
  %772 = inttoptr i64 %771 to i32*, !mcsema_real_eip !153
  %773 = load i32, i32* %772, !mcsema_real_eip !153
  %774 = zext i32 %773 to i64, !mcsema_real_eip !153
  store i64 %774, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.203 = load i32, i32* %EAX.16, !mcsema_real_eip !154
  %775 = add i32 74637, %EAX_val.203, !mcsema_real_eip !154
  %776 = xor i32 %775, %EAX_val.203, !mcsema_real_eip !154
  %777 = xor i32 %776, 74637, !mcsema_real_eip !154
  %778 = and i32 %777, 16, !mcsema_real_eip !154
  %779 = icmp ne i32 %778, 0, !mcsema_real_eip !154
  store i1 %779, i1* %AF, !mcsema_real_eip !154
  %780 = lshr i32 %775, 31, !mcsema_real_eip !154
  %781 = trunc i32 %780 to i1, !mcsema_real_eip !154
  store i1 %781, i1* %SF, !mcsema_real_eip !154
  %782 = icmp eq i32 %775, 0, !mcsema_real_eip !154
  store i1 %782, i1* %ZF, !mcsema_real_eip !154
  %783 = xor i32 %EAX_val.203, 74637, !mcsema_real_eip !154
  %784 = xor i32 %783, -1, !mcsema_real_eip !154
  %785 = and i32 %784, %776, !mcsema_real_eip !154
  %786 = lshr i32 %785, 31, !mcsema_real_eip !154
  %787 = and i32 %786, 1, !mcsema_real_eip !154
  %788 = trunc i32 %787 to i1, !mcsema_real_eip !154
  store i1 %788, i1* %OF, !mcsema_real_eip !154
  %789 = trunc i32 %775 to i8, !mcsema_real_eip !154
  %790 = call i8 @llvm.ctpop.i8(i8 %789), !mcsema_real_eip !154
  %791 = trunc i8 %790 to i1, !mcsema_real_eip !154
  %792 = xor i1 %791, true, !mcsema_real_eip !154
  store i1 %792, i1* %PF, !mcsema_real_eip !154
  %793 = icmp ult i32 %775, %EAX_val.203, !mcsema_real_eip !154
  store i1 %793, i1* %CF, !mcsema_real_eip !154
  %794 = zext i32 %775 to i64, !mcsema_real_eip !154
  store i64 %794, i64* %XAX, !mcsema_real_eip !154
  %EAX_val.206 = load i32, i32* %EAX.16, !mcsema_real_eip !155
  store i32 %EAX_val.206, i32* %772, !mcsema_real_eip !155
  br label %block_0x2c8, !mcsema_real_eip !156

block_0x26f:                                      ; preds = %block_0x131
  %_load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_
  %_new_gep_207 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -8
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %795 = ptrtoint i64* %_allin_new_bt_208 to i64, !mcsema_real_eip !157
  %796 = inttoptr i64 %795 to i32*, !mcsema_real_eip !157
  %797 = load i32, i32* %796, !mcsema_real_eip !157
  %798 = zext i32 %797 to i64, !mcsema_real_eip !157
  store i64 %798, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.209 = load i32, i32* %EAX.16, !mcsema_real_eip !158
  %799 = add i32 74639, %EAX_val.209, !mcsema_real_eip !158
  %800 = xor i32 %799, %EAX_val.209, !mcsema_real_eip !158
  %801 = xor i32 %800, 74639, !mcsema_real_eip !158
  %802 = and i32 %801, 16, !mcsema_real_eip !158
  %803 = icmp ne i32 %802, 0, !mcsema_real_eip !158
  store i1 %803, i1* %AF, !mcsema_real_eip !158
  %804 = lshr i32 %799, 31, !mcsema_real_eip !158
  %805 = trunc i32 %804 to i1, !mcsema_real_eip !158
  store i1 %805, i1* %SF, !mcsema_real_eip !158
  %806 = icmp eq i32 %799, 0, !mcsema_real_eip !158
  store i1 %806, i1* %ZF, !mcsema_real_eip !158
  %807 = xor i32 %EAX_val.209, 74639, !mcsema_real_eip !158
  %808 = xor i32 %807, -1, !mcsema_real_eip !158
  %809 = and i32 %808, %800, !mcsema_real_eip !158
  %810 = lshr i32 %809, 31, !mcsema_real_eip !158
  %811 = and i32 %810, 1, !mcsema_real_eip !158
  %812 = trunc i32 %811 to i1, !mcsema_real_eip !158
  store i1 %812, i1* %OF, !mcsema_real_eip !158
  %813 = trunc i32 %799 to i8, !mcsema_real_eip !158
  %814 = call i8 @llvm.ctpop.i8(i8 %813), !mcsema_real_eip !158
  %815 = trunc i8 %814 to i1, !mcsema_real_eip !158
  %816 = xor i1 %815, true, !mcsema_real_eip !158
  store i1 %816, i1* %PF, !mcsema_real_eip !158
  %817 = icmp ult i32 %799, %EAX_val.209, !mcsema_real_eip !158
  store i1 %817, i1* %CF, !mcsema_real_eip !158
  %818 = zext i32 %799 to i64, !mcsema_real_eip !158
  store i64 %818, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.16, !mcsema_real_eip !159
  store i32 %EAX_val.212, i32* %796, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x27f:                                      ; preds = %block_0x147
  %_load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_212, i64 -8
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %819 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !161
  %820 = inttoptr i64 %819 to i32*, !mcsema_real_eip !161
  %821 = load i32, i32* %820, !mcsema_real_eip !161
  %822 = zext i32 %821 to i64, !mcsema_real_eip !161
  store i64 %822, i64* %XAX, !mcsema_real_eip !161
  %EAX_val.215 = load i32, i32* %EAX.16, !mcsema_real_eip !162
  %823 = add i32 74640, %EAX_val.215, !mcsema_real_eip !162
  %824 = xor i32 %823, %EAX_val.215, !mcsema_real_eip !162
  %825 = xor i32 %824, 74640, !mcsema_real_eip !162
  %826 = and i32 %825, 16, !mcsema_real_eip !162
  %827 = icmp ne i32 %826, 0, !mcsema_real_eip !162
  store i1 %827, i1* %AF, !mcsema_real_eip !162
  %828 = lshr i32 %823, 31, !mcsema_real_eip !162
  %829 = trunc i32 %828 to i1, !mcsema_real_eip !162
  store i1 %829, i1* %SF, !mcsema_real_eip !162
  %830 = icmp eq i32 %823, 0, !mcsema_real_eip !162
  store i1 %830, i1* %ZF, !mcsema_real_eip !162
  %831 = xor i32 %EAX_val.215, 74640, !mcsema_real_eip !162
  %832 = xor i32 %831, -1, !mcsema_real_eip !162
  %833 = and i32 %832, %824, !mcsema_real_eip !162
  %834 = lshr i32 %833, 31, !mcsema_real_eip !162
  %835 = and i32 %834, 1, !mcsema_real_eip !162
  %836 = trunc i32 %835 to i1, !mcsema_real_eip !162
  store i1 %836, i1* %OF, !mcsema_real_eip !162
  %837 = trunc i32 %823 to i8, !mcsema_real_eip !162
  %838 = call i8 @llvm.ctpop.i8(i8 %837), !mcsema_real_eip !162
  %839 = trunc i8 %838 to i1, !mcsema_real_eip !162
  %840 = xor i1 %839, true, !mcsema_real_eip !162
  store i1 %840, i1* %PF, !mcsema_real_eip !162
  %841 = icmp ult i32 %823, %EAX_val.215, !mcsema_real_eip !162
  store i1 %841, i1* %CF, !mcsema_real_eip !162
  %842 = zext i32 %823 to i64, !mcsema_real_eip !162
  store i64 %842, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.16, !mcsema_real_eip !163
  store i32 %EAX_val.218, i32* %820, !mcsema_real_eip !163
  br label %block_0x2c8, !mcsema_real_eip !164

block_0x28f:                                      ; preds = %block_0x15d
  %_load_rbp_ptr_218 = load i8*, i8** %_RBP_ptr_
  %_new_gep_219 = getelementptr i8, i8* %_load_rbp_ptr_218, i64 -8
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  %843 = ptrtoint i64* %_allin_new_bt_220 to i64, !mcsema_real_eip !165
  %844 = inttoptr i64 %843 to i32*, !mcsema_real_eip !165
  %845 = load i32, i32* %844, !mcsema_real_eip !165
  %846 = zext i32 %845 to i64, !mcsema_real_eip !165
  store i64 %846, i64* %XAX, !mcsema_real_eip !165
  %EAX_val.221 = load i32, i32* %EAX.16, !mcsema_real_eip !166
  %847 = add i32 74641, %EAX_val.221, !mcsema_real_eip !166
  %848 = xor i32 %847, %EAX_val.221, !mcsema_real_eip !166
  %849 = xor i32 %848, 74641, !mcsema_real_eip !166
  %850 = and i32 %849, 16, !mcsema_real_eip !166
  %851 = icmp ne i32 %850, 0, !mcsema_real_eip !166
  store i1 %851, i1* %AF, !mcsema_real_eip !166
  %852 = lshr i32 %847, 31, !mcsema_real_eip !166
  %853 = trunc i32 %852 to i1, !mcsema_real_eip !166
  store i1 %853, i1* %SF, !mcsema_real_eip !166
  %854 = icmp eq i32 %847, 0, !mcsema_real_eip !166
  store i1 %854, i1* %ZF, !mcsema_real_eip !166
  %855 = xor i32 %EAX_val.221, 74641, !mcsema_real_eip !166
  %856 = xor i32 %855, -1, !mcsema_real_eip !166
  %857 = and i32 %856, %848, !mcsema_real_eip !166
  %858 = lshr i32 %857, 31, !mcsema_real_eip !166
  %859 = and i32 %858, 1, !mcsema_real_eip !166
  %860 = trunc i32 %859 to i1, !mcsema_real_eip !166
  store i1 %860, i1* %OF, !mcsema_real_eip !166
  %861 = trunc i32 %847 to i8, !mcsema_real_eip !166
  %862 = call i8 @llvm.ctpop.i8(i8 %861), !mcsema_real_eip !166
  %863 = trunc i8 %862 to i1, !mcsema_real_eip !166
  %864 = xor i1 %863, true, !mcsema_real_eip !166
  store i1 %864, i1* %PF, !mcsema_real_eip !166
  %865 = icmp ult i32 %847, %EAX_val.221, !mcsema_real_eip !166
  store i1 %865, i1* %CF, !mcsema_real_eip !166
  %866 = zext i32 %847 to i64, !mcsema_real_eip !166
  store i64 %866, i64* %XAX, !mcsema_real_eip !166
  %EAX_val.224 = load i32, i32* %EAX.16, !mcsema_real_eip !167
  store i32 %EAX_val.224, i32* %844, !mcsema_real_eip !167
  br label %block_0x2c8, !mcsema_real_eip !168

block_0x29f:                                      ; preds = %block_0x173
  %_load_rbp_ptr_224 = load i8*, i8** %_RBP_ptr_
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -8
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %867 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !169
  %868 = inttoptr i64 %867 to i32*, !mcsema_real_eip !169
  %869 = load i32, i32* %868, !mcsema_real_eip !169
  %870 = zext i32 %869 to i64, !mcsema_real_eip !169
  store i64 %870, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.227 = load i32, i32* %EAX.16, !mcsema_real_eip !170
  %871 = add i32 74642, %EAX_val.227, !mcsema_real_eip !170
  %872 = xor i32 %871, %EAX_val.227, !mcsema_real_eip !170
  %873 = xor i32 %872, 74642, !mcsema_real_eip !170
  %874 = and i32 %873, 16, !mcsema_real_eip !170
  %875 = icmp ne i32 %874, 0, !mcsema_real_eip !170
  store i1 %875, i1* %AF, !mcsema_real_eip !170
  %876 = lshr i32 %871, 31, !mcsema_real_eip !170
  %877 = trunc i32 %876 to i1, !mcsema_real_eip !170
  store i1 %877, i1* %SF, !mcsema_real_eip !170
  %878 = icmp eq i32 %871, 0, !mcsema_real_eip !170
  store i1 %878, i1* %ZF, !mcsema_real_eip !170
  %879 = xor i32 %EAX_val.227, 74642, !mcsema_real_eip !170
  %880 = xor i32 %879, -1, !mcsema_real_eip !170
  %881 = and i32 %880, %872, !mcsema_real_eip !170
  %882 = lshr i32 %881, 31, !mcsema_real_eip !170
  %883 = and i32 %882, 1, !mcsema_real_eip !170
  %884 = trunc i32 %883 to i1, !mcsema_real_eip !170
  store i1 %884, i1* %OF, !mcsema_real_eip !170
  %885 = trunc i32 %871 to i8, !mcsema_real_eip !170
  %886 = call i8 @llvm.ctpop.i8(i8 %885), !mcsema_real_eip !170
  %887 = trunc i8 %886 to i1, !mcsema_real_eip !170
  %888 = xor i1 %887, true, !mcsema_real_eip !170
  store i1 %888, i1* %PF, !mcsema_real_eip !170
  %889 = icmp ult i32 %871, %EAX_val.227, !mcsema_real_eip !170
  store i1 %889, i1* %CF, !mcsema_real_eip !170
  %890 = zext i32 %871 to i64, !mcsema_real_eip !170
  store i64 %890, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.230 = load i32, i32* %EAX.16, !mcsema_real_eip !171
  store i32 %EAX_val.230, i32* %868, !mcsema_real_eip !171
  br label %block_0x2c8, !mcsema_real_eip !172

block_0x2af:                                      ; preds = %block_0x189
  %_load_rbp_ptr_230 = load i8*, i8** %_RBP_ptr_
  %_new_gep_231 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -8
  %_allin_new_bt_232 = bitcast i8* %_new_gep_231 to i64*
  %891 = ptrtoint i64* %_allin_new_bt_232 to i64, !mcsema_real_eip !173
  %892 = inttoptr i64 %891 to i32*, !mcsema_real_eip !173
  %893 = load i32, i32* %892, !mcsema_real_eip !173
  %894 = zext i32 %893 to i64, !mcsema_real_eip !173
  store i64 %894, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.233 = load i32, i32* %EAX.16, !mcsema_real_eip !174
  %895 = add i32 74643, %EAX_val.233, !mcsema_real_eip !174
  %896 = xor i32 %895, %EAX_val.233, !mcsema_real_eip !174
  %897 = xor i32 %896, 74643, !mcsema_real_eip !174
  %898 = and i32 %897, 16, !mcsema_real_eip !174
  %899 = icmp ne i32 %898, 0, !mcsema_real_eip !174
  store i1 %899, i1* %AF, !mcsema_real_eip !174
  %900 = lshr i32 %895, 31, !mcsema_real_eip !174
  %901 = trunc i32 %900 to i1, !mcsema_real_eip !174
  store i1 %901, i1* %SF, !mcsema_real_eip !174
  %902 = icmp eq i32 %895, 0, !mcsema_real_eip !174
  store i1 %902, i1* %ZF, !mcsema_real_eip !174
  %903 = xor i32 %EAX_val.233, 74643, !mcsema_real_eip !174
  %904 = xor i32 %903, -1, !mcsema_real_eip !174
  %905 = and i32 %904, %896, !mcsema_real_eip !174
  %906 = lshr i32 %905, 31, !mcsema_real_eip !174
  %907 = and i32 %906, 1, !mcsema_real_eip !174
  %908 = trunc i32 %907 to i1, !mcsema_real_eip !174
  store i1 %908, i1* %OF, !mcsema_real_eip !174
  %909 = trunc i32 %895 to i8, !mcsema_real_eip !174
  %910 = call i8 @llvm.ctpop.i8(i8 %909), !mcsema_real_eip !174
  %911 = trunc i8 %910 to i1, !mcsema_real_eip !174
  %912 = xor i1 %911, true, !mcsema_real_eip !174
  store i1 %912, i1* %PF, !mcsema_real_eip !174
  %913 = icmp ult i32 %895, %EAX_val.233, !mcsema_real_eip !174
  store i1 %913, i1* %CF, !mcsema_real_eip !174
  %914 = zext i32 %895 to i64, !mcsema_real_eip !174
  store i64 %914, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.236 = load i32, i32* %EAX.16, !mcsema_real_eip !175
  store i32 %EAX_val.236, i32* %892, !mcsema_real_eip !175
  br label %block_0x2c8, !mcsema_real_eip !176

block_0x2bf:                                      ; preds = %block_0x19a
  %_load_rbp_ptr_236 = load i8*, i8** %_RBP_ptr_
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -8
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %915 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !177
  %916 = inttoptr i64 %915 to i32*, !mcsema_real_eip !177
  %917 = load i32, i32* %916, !mcsema_real_eip !177
  %918 = zext i32 %917 to i64, !mcsema_real_eip !177
  store i64 %918, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.16, !mcsema_real_eip !178
  store i1 false, i1* %AF, !mcsema_real_eip !178
  %919 = lshr i32 %EAX_val.239, 31, !mcsema_real_eip !178
  %920 = trunc i32 %919 to i1, !mcsema_real_eip !178
  store i1 %920, i1* %SF, !mcsema_real_eip !178
  %921 = icmp eq i32 %EAX_val.239, 0, !mcsema_real_eip !178
  store i1 %921, i1* %ZF, !mcsema_real_eip !178
  %922 = xor i32 %EAX_val.239, -1, !mcsema_real_eip !178
  store i1 false, i1* %OF, !mcsema_real_eip !178
  %923 = trunc i32 %EAX_val.239 to i8, !mcsema_real_eip !178
  %924 = call i8 @llvm.ctpop.i8(i8 %923), !mcsema_real_eip !178
  %925 = trunc i8 %924 to i1, !mcsema_real_eip !178
  %926 = xor i1 %925, true, !mcsema_real_eip !178
  store i1 %926, i1* %PF, !mcsema_real_eip !178
  store i1 false, i1* %CF, !mcsema_real_eip !178
  %927 = zext i32 %EAX_val.239 to i64, !mcsema_real_eip !178
  store i64 %927, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.242 = load i32, i32* %EAX.16, !mcsema_real_eip !179
  store i32 %EAX_val.242, i32* %916, !mcsema_real_eip !179
  br label %block_0x2c8, !mcsema_real_eip !180

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %_load_rbp_ptr_242 = load i8*, i8** %_RBP_ptr_
  %_new_gep_243 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -8
  %_allin_new_bt_244 = bitcast i8* %_new_gep_243 to i64*
  %928 = ptrtoint i64* %_allin_new_bt_244 to i64, !mcsema_real_eip !180
  %929 = inttoptr i64 %928 to i32*, !mcsema_real_eip !180
  %930 = load i32, i32* %929, !mcsema_real_eip !180
  %931 = zext i32 %930 to i64, !mcsema_real_eip !180
  store i64 %931, i64* %XAX, !mcsema_real_eip !180
  %_load_rsp_ptr_245 = load i8*, i8** %_RSP_ptr_
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !181
  %_allin_new_bt_246 = bitcast i8* %_load_rsp_ptr_245 to i64*
  %932 = load i64, i64* %_allin_new_bt_246, !mcsema_real_eip !181
  %_new_int2ptr_ = inttoptr i64 %932 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %932, i64* %XBP, !mcsema_real_eip !181
  %_new_gep_247 = getelementptr i8, i8* %_load_rsp_ptr_245, i64 8
  %933 = add i64 %RSP_val.244, 8, !mcsema_real_eip !181
  store volatile i8* %_new_gep_247, i8** %_RSP_ptr_
  store i64 %933, i64* %XSP, !mcsema_real_eip !181
  %_new_gep_249 = getelementptr i8, i8* %_new_gep_247, i64 8
  %934 = add i64 %933, 8, !mcsema_real_eip !182
  %_allin_new_bt_250 = bitcast i8* %_new_gep_247 to i64*
  %935 = load i64, i64* %_allin_new_bt_250, !mcsema_real_eip !182
  store i64 %935, i64* %XIP, !mcsema_real_eip !182
  store volatile i8* %_new_gep_249, i8** %_RSP_ptr_
  store i64 %934, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182
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

block_0x21:                                       ; preds = %block_0x1c
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -12
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

; <label>:24:                                     ; preds = %block_0x21
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_255 to i32*
  br label %25

; <label>:25:                                     ; preds = %block_0x21, %24
  %26 = phi i32* [ %23, %block_0x21 ], [ %_address_in_parent_stack_bt_264, %24 ]
  %_new_load_265 = load i32, i32* %26
  %27 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !11
  store i64 %27, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  %28 = sub i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %29 = xor i32 %28, %EAX_val.17, !mcsema_real_eip !12
  %30 = xor i32 %29, 1, !mcsema_real_eip !12
  %31 = and i32 %30, 16, !mcsema_real_eip !12
  %32 = icmp ne i32 %31, 0, !mcsema_real_eip !12
  store i1 %32, i1* %AF, !mcsema_real_eip !12
  %33 = trunc i32 %28 to i8, !mcsema_real_eip !12
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !12
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !12
  %36 = xor i1 %35, true, !mcsema_real_eip !12
  store i1 %36, i1* %PF, !mcsema_real_eip !12
  %37 = icmp eq i32 %28, 0, !mcsema_real_eip !12
  store i1 %37, i1* %ZF, !mcsema_real_eip !12
  %38 = lshr i32 %28, 31, !mcsema_real_eip !12
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !12
  store i1 %39, i1* %SF, !mcsema_real_eip !12
  %40 = icmp ult i32 %EAX_val.17, 1, !mcsema_real_eip !12
  store i1 %40, i1* %CF, !mcsema_real_eip !12
  %41 = xor i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %42 = and i32 %41, %29, !mcsema_real_eip !12
  %43 = lshr i32 %42, 31, !mcsema_real_eip !12
  %44 = trunc i32 %43 to i1, !mcsema_real_eip !12
  store i1 %44, i1* %OF, !mcsema_real_eip !12
  %45 = zext i32 %28 to i64, !mcsema_real_eip !12
  store i64 %45, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  %46 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %47, !mcsema_real_eip !13
  %48 = load i1, i1* %ZF, !mcsema_real_eip !14
  br i1 %48, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %25
  br label %block_0x35, !mcsema_real_eip !15

block_0x35:                                       ; preds = %block_0x30
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -12
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !16
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !16
  %_ptr_bt_268 = bitcast i32* %50 to i8*
  %_offset_above_rbp_269 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %51, label %52

; <label>:51:                                     ; preds = %block_0x35
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %52

; <label>:52:                                     ; preds = %block_0x35, %51
  %53 = phi i32* [ %50, %block_0x35 ], [ %_address_in_parent_stack_bt_279, %51 ]
  %_new_load_280 = load i32, i32* %53
  %54 = zext i32 %_new_load_280 to i64, !mcsema_real_eip !16
  store i64 %54, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.23 = load i32, i32* %EAX.16, !mcsema_real_eip !17
  %55 = sub i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %56 = xor i32 %55, %EAX_val.23, !mcsema_real_eip !17
  %57 = xor i32 %56, 2, !mcsema_real_eip !17
  %58 = and i32 %57, 16, !mcsema_real_eip !17
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !17
  store i1 %59, i1* %AF, !mcsema_real_eip !17
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !17
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !17
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !17
  %63 = xor i1 %62, true, !mcsema_real_eip !17
  store i1 %63, i1* %PF, !mcsema_real_eip !17
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !17
  store i1 %64, i1* %ZF, !mcsema_real_eip !17
  %65 = lshr i32 %55, 31, !mcsema_real_eip !17
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !17
  store i1 %66, i1* %SF, !mcsema_real_eip !17
  %67 = icmp ult i32 %EAX_val.23, 2, !mcsema_real_eip !17
  store i1 %67, i1* %CF, !mcsema_real_eip !17
  %68 = xor i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %69 = and i32 %68, %56, !mcsema_real_eip !17
  %70 = lshr i32 %69, 31, !mcsema_real_eip !17
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !17
  store i1 %71, i1* %OF, !mcsema_real_eip !17
  %72 = zext i32 %55 to i64, !mcsema_real_eip !17
  store i64 %72, i64* %XAX, !mcsema_real_eip !17
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EAX_val.26 = load i32, i32* %EAX.16, !mcsema_real_eip !18
  %73 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !18
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %74, !mcsema_real_eip !18
  %75 = load i1, i1* %ZF, !mcsema_real_eip !19
  br i1 %75, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %52
  br label %block_0x49, !mcsema_real_eip !20

block_0x49:                                       ; preds = %block_0x44
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !21
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !21
  %_ptr_bt_283 = bitcast i32* %77 to i8*
  %_offset_above_rbp_284 = sub i64 %76, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_ptr_bt_283, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_ptr_bt_283, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_ptr_bt_283, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  br i1 %_cond1_n_cond2_cond3_292, label %78, label %79

; <label>:78:                                     ; preds = %block_0x49
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %79

; <label>:79:                                     ; preds = %block_0x49, %78
  %80 = phi i32* [ %77, %block_0x49 ], [ %_address_in_parent_stack_bt_294, %78 ]
  %_new_load_295 = load i32, i32* %80
  %81 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !21
  store i64 %81, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.29 = load i32, i32* %EAX.16, !mcsema_real_eip !22
  %82 = sub i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %83 = xor i32 %82, %EAX_val.29, !mcsema_real_eip !22
  %84 = xor i32 %83, 4, !mcsema_real_eip !22
  %85 = and i32 %84, 16, !mcsema_real_eip !22
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !22
  store i1 %86, i1* %AF, !mcsema_real_eip !22
  %87 = trunc i32 %82 to i8, !mcsema_real_eip !22
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !22
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !22
  %90 = xor i1 %89, true, !mcsema_real_eip !22
  store i1 %90, i1* %PF, !mcsema_real_eip !22
  %91 = icmp eq i32 %82, 0, !mcsema_real_eip !22
  store i1 %91, i1* %ZF, !mcsema_real_eip !22
  %92 = lshr i32 %82, 31, !mcsema_real_eip !22
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !22
  store i1 %93, i1* %SF, !mcsema_real_eip !22
  %94 = icmp ult i32 %EAX_val.29, 4, !mcsema_real_eip !22
  store i1 %94, i1* %CF, !mcsema_real_eip !22
  %95 = xor i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %96 = and i32 %95, %83, !mcsema_real_eip !22
  %97 = lshr i32 %96, 31, !mcsema_real_eip !22
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !22
  store i1 %98, i1* %OF, !mcsema_real_eip !22
  %99 = zext i32 %82 to i64, !mcsema_real_eip !22
  store i64 %99, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %EAX_val.32 = load i32, i32* %EAX.16, !mcsema_real_eip !23
  %100 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !23
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.32, i32* %101, !mcsema_real_eip !23
  %102 = load i1, i1* %ZF, !mcsema_real_eip !24
  br i1 %102, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !24

block_0x58:                                       ; preds = %79
  br label %block_0x5d, !mcsema_real_eip !25

block_0x5d:                                       ; preds = %block_0x58
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -12
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !26
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !26
  %_ptr_bt_298 = bitcast i32* %104 to i8*
  %_offset_above_rbp_299 = sub i64 %103, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_ptr_bt_298, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_ptr_bt_298, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_ptr_bt_298, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %105, label %106

; <label>:105:                                    ; preds = %block_0x5d
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i32*
  br label %106

; <label>:106:                                    ; preds = %block_0x5d, %105
  %107 = phi i32* [ %104, %block_0x5d ], [ %_address_in_parent_stack_bt_309, %105 ]
  %_new_load_310 = load i32, i32* %107
  %108 = zext i32 %_new_load_310 to i64, !mcsema_real_eip !26
  store i64 %108, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.35 = load i32, i32* %EAX.16, !mcsema_real_eip !27
  %109 = sub i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %110 = xor i32 %109, %EAX_val.35, !mcsema_real_eip !27
  %111 = xor i32 %110, 6, !mcsema_real_eip !27
  %112 = and i32 %111, 16, !mcsema_real_eip !27
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !27
  store i1 %113, i1* %AF, !mcsema_real_eip !27
  %114 = trunc i32 %109 to i8, !mcsema_real_eip !27
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !27
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !27
  %117 = xor i1 %116, true, !mcsema_real_eip !27
  store i1 %117, i1* %PF, !mcsema_real_eip !27
  %118 = icmp eq i32 %109, 0, !mcsema_real_eip !27
  store i1 %118, i1* %ZF, !mcsema_real_eip !27
  %119 = lshr i32 %109, 31, !mcsema_real_eip !27
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !27
  store i1 %120, i1* %SF, !mcsema_real_eip !27
  %121 = icmp ult i32 %EAX_val.35, 6, !mcsema_real_eip !27
  store i1 %121, i1* %CF, !mcsema_real_eip !27
  %122 = xor i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %123 = and i32 %122, %110, !mcsema_real_eip !27
  %124 = lshr i32 %123, 31, !mcsema_real_eip !27
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !27
  store i1 %125, i1* %OF, !mcsema_real_eip !27
  %126 = zext i32 %109 to i64, !mcsema_real_eip !27
  store i64 %126, i64* %XAX, !mcsema_real_eip !27
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -28
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EAX_val.38 = load i32, i32* %EAX.16, !mcsema_real_eip !28
  %127 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !28
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %128, !mcsema_real_eip !28
  %129 = load i1, i1* %ZF, !mcsema_real_eip !29
  br i1 %129, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !29

block_0x6c:                                       ; preds = %106
  br label %block_0x71, !mcsema_real_eip !30

block_0x71:                                       ; preds = %block_0x6c
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -12
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %130 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !31
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !31
  %_ptr_bt_313 = bitcast i32* %131 to i8*
  %_offset_above_rbp_314 = sub i64 %130, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_ptr_bt_313, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_ptr_bt_313, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_ptr_bt_313, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  br i1 %_cond1_n_cond2_cond3_322, label %132, label %133

; <label>:132:                                    ; preds = %block_0x71
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_315 to i32*
  br label %133

; <label>:133:                                    ; preds = %block_0x71, %132
  %134 = phi i32* [ %131, %block_0x71 ], [ %_address_in_parent_stack_bt_324, %132 ]
  %_new_load_325 = load i32, i32* %134
  %135 = zext i32 %_new_load_325 to i64, !mcsema_real_eip !31
  store i64 %135, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.41 = load i32, i32* %EAX.16, !mcsema_real_eip !32
  %136 = sub i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %137 = xor i32 %136, %EAX_val.41, !mcsema_real_eip !32
  %138 = xor i32 %137, 12, !mcsema_real_eip !32
  %139 = and i32 %138, 16, !mcsema_real_eip !32
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !32
  store i1 %140, i1* %AF, !mcsema_real_eip !32
  %141 = trunc i32 %136 to i8, !mcsema_real_eip !32
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !32
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !32
  %144 = xor i1 %143, true, !mcsema_real_eip !32
  store i1 %144, i1* %PF, !mcsema_real_eip !32
  %145 = icmp eq i32 %136, 0, !mcsema_real_eip !32
  store i1 %145, i1* %ZF, !mcsema_real_eip !32
  %146 = lshr i32 %136, 31, !mcsema_real_eip !32
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !32
  store i1 %147, i1* %SF, !mcsema_real_eip !32
  %148 = icmp ult i32 %EAX_val.41, 12, !mcsema_real_eip !32
  store i1 %148, i1* %CF, !mcsema_real_eip !32
  %149 = xor i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %150 = and i32 %149, %137, !mcsema_real_eip !32
  %151 = lshr i32 %150, 31, !mcsema_real_eip !32
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !32
  store i1 %152, i1* %OF, !mcsema_real_eip !32
  %153 = zext i32 %136 to i64, !mcsema_real_eip !32
  store i64 %153, i64* %XAX, !mcsema_real_eip !32
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -32
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %EAX_val.44 = load i32, i32* %EAX.16, !mcsema_real_eip !33
  %154 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !33
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.44, i32* %155, !mcsema_real_eip !33
  %156 = load i1, i1* %ZF, !mcsema_real_eip !34
  br i1 %156, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !34

block_0x80:                                       ; preds = %133
  br label %block_0x85, !mcsema_real_eip !35

block_0x85:                                       ; preds = %block_0x80
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %157 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !36
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !36
  %_ptr_bt_328 = bitcast i32* %158 to i8*
  %_offset_above_rbp_329 = sub i64 %157, %_local_end_to_int_
  %_pot_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_329
  %_cond1_331 = icmp ugt i8* %_ptr_bt_328, %_local_stack_end_ptr_
  %_cond2_1_332 = icmp ugt i8* %_ptr_bt_328, %_parent_stack_end_ptr_
  %_cond2_2_333 = icmp ult i8* %_ptr_bt_328, %_parent_stack_start_ptr_
  %_cond2_334 = or i1 %_cond2_1_332, %_cond2_2_333
  %_cond4_335 = icmp ule i8* %_pot_address_in_parent_stack_330, %_parent_stack_end_ptr_
  %_cond1_n_cond2_336 = and i1 %_cond1_331, %_cond2_334
  %_cond1_n_cond2_cond3_337 = and i1 %_cond1_n_cond2_336, %_cond4_335
  br i1 %_cond1_n_cond2_cond3_337, label %159, label %160

; <label>:159:                                    ; preds = %block_0x85
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_330 to i32*
  br label %160

; <label>:160:                                    ; preds = %block_0x85, %159
  %161 = phi i32* [ %158, %block_0x85 ], [ %_address_in_parent_stack_bt_339, %159 ]
  %_new_load_340 = load i32, i32* %161
  %162 = zext i32 %_new_load_340 to i64, !mcsema_real_eip !36
  store i64 %162, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.16, !mcsema_real_eip !37
  %163 = sub i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %164 = xor i32 %163, %EAX_val.47, !mcsema_real_eip !37
  %165 = xor i32 %164, 13, !mcsema_real_eip !37
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
  %175 = icmp ult i32 %EAX_val.47, 13, !mcsema_real_eip !37
  store i1 %175, i1* %CF, !mcsema_real_eip !37
  %176 = xor i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %177 = and i32 %176, %164, !mcsema_real_eip !37
  %178 = lshr i32 %177, 31, !mcsema_real_eip !37
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !37
  store i1 %179, i1* %OF, !mcsema_real_eip !37
  %180 = zext i32 %163 to i64, !mcsema_real_eip !37
  store i64 %180, i64* %XAX, !mcsema_real_eip !37
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -36
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %EAX_val.50 = load i32, i32* %EAX.16, !mcsema_real_eip !38
  %181 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !38
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.50, i32* %182, !mcsema_real_eip !38
  %183 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %183, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !39

block_0x94:                                       ; preds = %160
  br label %block_0x99, !mcsema_real_eip !40

block_0x99:                                       ; preds = %block_0x94
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -12
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %184 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !41
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !41
  %_ptr_bt_343 = bitcast i32* %185 to i8*
  %_offset_above_rbp_344 = sub i64 %184, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_ptr_bt_343, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_ptr_bt_343, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_ptr_bt_343, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  br i1 %_cond1_n_cond2_cond3_352, label %186, label %187

; <label>:186:                                    ; preds = %block_0x99
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i32*
  br label %187

; <label>:187:                                    ; preds = %block_0x99, %186
  %188 = phi i32* [ %185, %block_0x99 ], [ %_address_in_parent_stack_bt_354, %186 ]
  %_new_load_355 = load i32, i32* %188
  %189 = zext i32 %_new_load_355 to i64, !mcsema_real_eip !41
  store i64 %189, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.53 = load i32, i32* %EAX.16, !mcsema_real_eip !42
  %190 = sub i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %191 = xor i32 %190, %EAX_val.53, !mcsema_real_eip !42
  %192 = xor i32 %191, 19, !mcsema_real_eip !42
  %193 = and i32 %192, 16, !mcsema_real_eip !42
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !42
  store i1 %194, i1* %AF, !mcsema_real_eip !42
  %195 = trunc i32 %190 to i8, !mcsema_real_eip !42
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !42
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !42
  %198 = xor i1 %197, true, !mcsema_real_eip !42
  store i1 %198, i1* %PF, !mcsema_real_eip !42
  %199 = icmp eq i32 %190, 0, !mcsema_real_eip !42
  store i1 %199, i1* %ZF, !mcsema_real_eip !42
  %200 = lshr i32 %190, 31, !mcsema_real_eip !42
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !42
  store i1 %201, i1* %SF, !mcsema_real_eip !42
  %202 = icmp ult i32 %EAX_val.53, 19, !mcsema_real_eip !42
  store i1 %202, i1* %CF, !mcsema_real_eip !42
  %203 = xor i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %204 = and i32 %203, %191, !mcsema_real_eip !42
  %205 = lshr i32 %204, 31, !mcsema_real_eip !42
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !42
  store i1 %206, i1* %OF, !mcsema_real_eip !42
  %207 = zext i32 %190 to i64, !mcsema_real_eip !42
  store i64 %207, i64* %XAX, !mcsema_real_eip !42
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %EAX_val.56 = load i32, i32* %EAX.16, !mcsema_real_eip !43
  %208 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !43
  %209 = inttoptr i64 %208 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.56, i32* %209, !mcsema_real_eip !43
  %210 = load i1, i1* %ZF, !mcsema_real_eip !44
  br i1 %210, label %block_0x201, label %block_0xa8, !mcsema_real_eip !44

block_0xa8:                                       ; preds = %187
  br label %block_0xad, !mcsema_real_eip !45

block_0xad:                                       ; preds = %block_0xa8
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -12
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %211 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !46
  %212 = inttoptr i64 %211 to i32*, !mcsema_real_eip !46
  %_ptr_bt_358 = bitcast i32* %212 to i8*
  %_offset_above_rbp_359 = sub i64 %211, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_ptr_bt_358, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_ptr_bt_358, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_ptr_bt_358, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  br i1 %_cond1_n_cond2_cond3_367, label %213, label %214

; <label>:213:                                    ; preds = %block_0xad
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i32*
  br label %214

; <label>:214:                                    ; preds = %block_0xad, %213
  %215 = phi i32* [ %212, %block_0xad ], [ %_address_in_parent_stack_bt_369, %213 ]
  %_new_load_370 = load i32, i32* %215
  %216 = zext i32 %_new_load_370 to i64, !mcsema_real_eip !46
  store i64 %216, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.59 = load i32, i32* %EAX.16, !mcsema_real_eip !47
  %217 = sub i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %218 = xor i32 %217, %EAX_val.59, !mcsema_real_eip !47
  %219 = xor i32 %218, 255, !mcsema_real_eip !47
  %220 = and i32 %219, 16, !mcsema_real_eip !47
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !47
  store i1 %221, i1* %AF, !mcsema_real_eip !47
  %222 = trunc i32 %217 to i8, !mcsema_real_eip !47
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !47
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !47
  %225 = xor i1 %224, true, !mcsema_real_eip !47
  store i1 %225, i1* %PF, !mcsema_real_eip !47
  %226 = icmp eq i32 %217, 0, !mcsema_real_eip !47
  store i1 %226, i1* %ZF, !mcsema_real_eip !47
  %227 = lshr i32 %217, 31, !mcsema_real_eip !47
  %228 = trunc i32 %227 to i1, !mcsema_real_eip !47
  store i1 %228, i1* %SF, !mcsema_real_eip !47
  %229 = icmp ult i32 %EAX_val.59, 255, !mcsema_real_eip !47
  store i1 %229, i1* %CF, !mcsema_real_eip !47
  %230 = xor i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %231 = and i32 %230, %218, !mcsema_real_eip !47
  %232 = lshr i32 %231, 31, !mcsema_real_eip !47
  %233 = trunc i32 %232 to i1, !mcsema_real_eip !47
  store i1 %233, i1* %OF, !mcsema_real_eip !47
  %234 = zext i32 %217 to i64, !mcsema_real_eip !47
  store i64 %234, i64* %XAX, !mcsema_real_eip !47
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -44
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %EAX_val.62 = load i32, i32* %EAX.16, !mcsema_real_eip !48
  %235 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !48
  %236 = inttoptr i64 %235 to i32*, !mcsema_real_eip !48
  store i32 %EAX_val.62, i32* %236, !mcsema_real_eip !48
  %237 = load i1, i1* %ZF, !mcsema_real_eip !49
  br i1 %237, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %214
  br label %block_0xc3, !mcsema_real_eip !50

block_0xc3:                                       ; preds = %block_0xbe
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -12
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %238 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !51
  %239 = inttoptr i64 %238 to i32*, !mcsema_real_eip !51
  %_ptr_bt_373 = bitcast i32* %239 to i8*
  %_offset_above_rbp_374 = sub i64 %238, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_ptr_bt_373, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_ptr_bt_373, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_ptr_bt_373, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  br i1 %_cond1_n_cond2_cond3_382, label %240, label %241

; <label>:240:                                    ; preds = %block_0xc3
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i32*
  br label %241

; <label>:241:                                    ; preds = %block_0xc3, %240
  %242 = phi i32* [ %239, %block_0xc3 ], [ %_address_in_parent_stack_bt_384, %240 ]
  %_new_load_385 = load i32, i32* %242
  %243 = zext i32 %_new_load_385 to i64, !mcsema_real_eip !51
  store i64 %243, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.65 = load i32, i32* %EAX.16, !mcsema_real_eip !52
  %244 = sub i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %245 = xor i32 %244, %EAX_val.65, !mcsema_real_eip !52
  %246 = xor i32 %245, 74633, !mcsema_real_eip !52
  %247 = and i32 %246, 16, !mcsema_real_eip !52
  %248 = icmp ne i32 %247, 0, !mcsema_real_eip !52
  store i1 %248, i1* %AF, !mcsema_real_eip !52
  %249 = trunc i32 %244 to i8, !mcsema_real_eip !52
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !52
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !52
  %252 = xor i1 %251, true, !mcsema_real_eip !52
  store i1 %252, i1* %PF, !mcsema_real_eip !52
  %253 = icmp eq i32 %244, 0, !mcsema_real_eip !52
  store i1 %253, i1* %ZF, !mcsema_real_eip !52
  %254 = lshr i32 %244, 31, !mcsema_real_eip !52
  %255 = trunc i32 %254 to i1, !mcsema_real_eip !52
  store i1 %255, i1* %SF, !mcsema_real_eip !52
  %256 = icmp ult i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  store i1 %256, i1* %CF, !mcsema_real_eip !52
  %257 = xor i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %258 = and i32 %257, %245, !mcsema_real_eip !52
  %259 = lshr i32 %258, 31, !mcsema_real_eip !52
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !52
  store i1 %260, i1* %OF, !mcsema_real_eip !52
  %261 = zext i32 %244 to i64, !mcsema_real_eip !52
  store i64 %261, i64* %XAX, !mcsema_real_eip !52
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -48
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %EAX_val.68 = load i32, i32* %EAX.16, !mcsema_real_eip !53
  %262 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !53
  %263 = inttoptr i64 %262 to i32*, !mcsema_real_eip !53
  store i32 %EAX_val.68, i32* %263, !mcsema_real_eip !53
  %264 = load i1, i1* %ZF, !mcsema_real_eip !54
  br i1 %264, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !54

block_0xd4:                                       ; preds = %241
  br label %block_0xd9, !mcsema_real_eip !55

block_0xd9:                                       ; preds = %block_0xd4
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -12
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %265 = ptrtoint i64* %_allin_new_bt_70 to i64, !mcsema_real_eip !56
  %266 = inttoptr i64 %265 to i32*, !mcsema_real_eip !56
  %_ptr_bt_388 = bitcast i32* %266 to i8*
  %_offset_above_rbp_389 = sub i64 %265, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_ptr_bt_388, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_ptr_bt_388, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_ptr_bt_388, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  br i1 %_cond1_n_cond2_cond3_397, label %267, label %268

; <label>:267:                                    ; preds = %block_0xd9
  %_address_in_parent_stack_bt_399 = bitcast i8* %_pot_address_in_parent_stack_390 to i32*
  br label %268

; <label>:268:                                    ; preds = %block_0xd9, %267
  %269 = phi i32* [ %266, %block_0xd9 ], [ %_address_in_parent_stack_bt_399, %267 ]
  %_new_load_400 = load i32, i32* %269
  %270 = zext i32 %_new_load_400 to i64, !mcsema_real_eip !56
  store i64 %270, i64* %XAX, !mcsema_real_eip !56
  %EAX_val.71 = load i32, i32* %EAX.16, !mcsema_real_eip !57
  %271 = sub i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %272 = xor i32 %271, %EAX_val.71, !mcsema_real_eip !57
  %273 = xor i32 %272, 74634, !mcsema_real_eip !57
  %274 = and i32 %273, 16, !mcsema_real_eip !57
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !57
  store i1 %275, i1* %AF, !mcsema_real_eip !57
  %276 = trunc i32 %271 to i8, !mcsema_real_eip !57
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !57
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !57
  %279 = xor i1 %278, true, !mcsema_real_eip !57
  store i1 %279, i1* %PF, !mcsema_real_eip !57
  %280 = icmp eq i32 %271, 0, !mcsema_real_eip !57
  store i1 %280, i1* %ZF, !mcsema_real_eip !57
  %281 = lshr i32 %271, 31, !mcsema_real_eip !57
  %282 = trunc i32 %281 to i1, !mcsema_real_eip !57
  store i1 %282, i1* %SF, !mcsema_real_eip !57
  %283 = icmp ult i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  store i1 %283, i1* %CF, !mcsema_real_eip !57
  %284 = xor i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %285 = and i32 %284, %272, !mcsema_real_eip !57
  %286 = lshr i32 %285, 31, !mcsema_real_eip !57
  %287 = trunc i32 %286 to i1, !mcsema_real_eip !57
  store i1 %287, i1* %OF, !mcsema_real_eip !57
  %288 = zext i32 %271 to i64, !mcsema_real_eip !57
  store i64 %288, i64* %XAX, !mcsema_real_eip !57
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -52
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.74 = load i32, i32* %EAX.16, !mcsema_real_eip !58
  %289 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !58
  %290 = inttoptr i64 %289 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.74, i32* %290, !mcsema_real_eip !58
  %291 = load i1, i1* %ZF, !mcsema_real_eip !59
  br i1 %291, label %block_0x22f, label %block_0xea, !mcsema_real_eip !59

block_0xea:                                       ; preds = %268
  br label %block_0xef, !mcsema_real_eip !60

block_0xef:                                       ; preds = %block_0xea
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -12
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %292 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !61
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !61
  %_ptr_bt_403 = bitcast i32* %293 to i8*
  %_offset_above_rbp_404 = sub i64 %292, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_ptr_bt_403, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_ptr_bt_403, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_ptr_bt_403, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  br i1 %_cond1_n_cond2_cond3_412, label %294, label %295

; <label>:294:                                    ; preds = %block_0xef
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i32*
  br label %295

; <label>:295:                                    ; preds = %block_0xef, %294
  %296 = phi i32* [ %293, %block_0xef ], [ %_address_in_parent_stack_bt_414, %294 ]
  %_new_load_415 = load i32, i32* %296
  %297 = zext i32 %_new_load_415 to i64, !mcsema_real_eip !61
  store i64 %297, i64* %XAX, !mcsema_real_eip !61
  %EAX_val.77 = load i32, i32* %EAX.16, !mcsema_real_eip !62
  %298 = sub i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %299 = xor i32 %298, %EAX_val.77, !mcsema_real_eip !62
  %300 = xor i32 %299, 74635, !mcsema_real_eip !62
  %301 = and i32 %300, 16, !mcsema_real_eip !62
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !62
  store i1 %302, i1* %AF, !mcsema_real_eip !62
  %303 = trunc i32 %298 to i8, !mcsema_real_eip !62
  %304 = call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !62
  %305 = trunc i8 %304 to i1, !mcsema_real_eip !62
  %306 = xor i1 %305, true, !mcsema_real_eip !62
  store i1 %306, i1* %PF, !mcsema_real_eip !62
  %307 = icmp eq i32 %298, 0, !mcsema_real_eip !62
  store i1 %307, i1* %ZF, !mcsema_real_eip !62
  %308 = lshr i32 %298, 31, !mcsema_real_eip !62
  %309 = trunc i32 %308 to i1, !mcsema_real_eip !62
  store i1 %309, i1* %SF, !mcsema_real_eip !62
  %310 = icmp ult i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  store i1 %310, i1* %CF, !mcsema_real_eip !62
  %311 = xor i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %312 = and i32 %311, %299, !mcsema_real_eip !62
  %313 = lshr i32 %312, 31, !mcsema_real_eip !62
  %314 = trunc i32 %313 to i1, !mcsema_real_eip !62
  store i1 %314, i1* %OF, !mcsema_real_eip !62
  %315 = zext i32 %298 to i64, !mcsema_real_eip !62
  store i64 %315, i64* %XAX, !mcsema_real_eip !62
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -56
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %EAX_val.80 = load i32, i32* %EAX.16, !mcsema_real_eip !63
  %316 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !63
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.80, i32* %317, !mcsema_real_eip !63
  %318 = load i1, i1* %ZF, !mcsema_real_eip !64
  br i1 %318, label %block_0x23f, label %block_0x100, !mcsema_real_eip !64

block_0x100:                                      ; preds = %295
  br label %block_0x105, !mcsema_real_eip !65

block_0x105:                                      ; preds = %block_0x100
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -12
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %319 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !66
  %320 = inttoptr i64 %319 to i32*, !mcsema_real_eip !66
  %_ptr_bt_418 = bitcast i32* %320 to i8*
  %_offset_above_rbp_419 = sub i64 %319, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_ptr_bt_418, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_ptr_bt_418, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_ptr_bt_418, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  br i1 %_cond1_n_cond2_cond3_427, label %321, label %322

; <label>:321:                                    ; preds = %block_0x105
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i32*
  br label %322

; <label>:322:                                    ; preds = %block_0x105, %321
  %323 = phi i32* [ %320, %block_0x105 ], [ %_address_in_parent_stack_bt_429, %321 ]
  %_new_load_430 = load i32, i32* %323
  %324 = zext i32 %_new_load_430 to i64, !mcsema_real_eip !66
  store i64 %324, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.83 = load i32, i32* %EAX.16, !mcsema_real_eip !67
  %325 = sub i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %326 = xor i32 %325, %EAX_val.83, !mcsema_real_eip !67
  %327 = xor i32 %326, 74636, !mcsema_real_eip !67
  %328 = and i32 %327, 16, !mcsema_real_eip !67
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !67
  store i1 %329, i1* %AF, !mcsema_real_eip !67
  %330 = trunc i32 %325 to i8, !mcsema_real_eip !67
  %331 = call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !67
  %332 = trunc i8 %331 to i1, !mcsema_real_eip !67
  %333 = xor i1 %332, true, !mcsema_real_eip !67
  store i1 %333, i1* %PF, !mcsema_real_eip !67
  %334 = icmp eq i32 %325, 0, !mcsema_real_eip !67
  store i1 %334, i1* %ZF, !mcsema_real_eip !67
  %335 = lshr i32 %325, 31, !mcsema_real_eip !67
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !67
  store i1 %336, i1* %SF, !mcsema_real_eip !67
  %337 = icmp ult i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  store i1 %337, i1* %CF, !mcsema_real_eip !67
  %338 = xor i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %339 = and i32 %338, %326, !mcsema_real_eip !67
  %340 = lshr i32 %339, 31, !mcsema_real_eip !67
  %341 = trunc i32 %340 to i1, !mcsema_real_eip !67
  store i1 %341, i1* %OF, !mcsema_real_eip !67
  %342 = zext i32 %325 to i64, !mcsema_real_eip !67
  store i64 %342, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -60
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %EAX_val.86 = load i32, i32* %EAX.16, !mcsema_real_eip !68
  %343 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !68
  %344 = inttoptr i64 %343 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.86, i32* %344, !mcsema_real_eip !68
  %345 = load i1, i1* %ZF, !mcsema_real_eip !69
  br i1 %345, label %block_0x24f, label %block_0x116, !mcsema_real_eip !69

block_0x116:                                      ; preds = %322
  br label %block_0x11b, !mcsema_real_eip !70

block_0x11b:                                      ; preds = %block_0x116
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -12
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %346 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !71
  %347 = inttoptr i64 %346 to i32*, !mcsema_real_eip !71
  %_ptr_bt_433 = bitcast i32* %347 to i8*
  %_offset_above_rbp_434 = sub i64 %346, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_ptr_bt_433, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_ptr_bt_433, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_ptr_bt_433, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  br i1 %_cond1_n_cond2_cond3_442, label %348, label %349

; <label>:348:                                    ; preds = %block_0x11b
  %_address_in_parent_stack_bt_444 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %349

; <label>:349:                                    ; preds = %block_0x11b, %348
  %350 = phi i32* [ %347, %block_0x11b ], [ %_address_in_parent_stack_bt_444, %348 ]
  %_new_load_445 = load i32, i32* %350
  %351 = zext i32 %_new_load_445 to i64, !mcsema_real_eip !71
  store i64 %351, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.89 = load i32, i32* %EAX.16, !mcsema_real_eip !72
  %352 = sub i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %353 = xor i32 %352, %EAX_val.89, !mcsema_real_eip !72
  %354 = xor i32 %353, 74637, !mcsema_real_eip !72
  %355 = and i32 %354, 16, !mcsema_real_eip !72
  %356 = icmp ne i32 %355, 0, !mcsema_real_eip !72
  store i1 %356, i1* %AF, !mcsema_real_eip !72
  %357 = trunc i32 %352 to i8, !mcsema_real_eip !72
  %358 = call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !72
  %359 = trunc i8 %358 to i1, !mcsema_real_eip !72
  %360 = xor i1 %359, true, !mcsema_real_eip !72
  store i1 %360, i1* %PF, !mcsema_real_eip !72
  %361 = icmp eq i32 %352, 0, !mcsema_real_eip !72
  store i1 %361, i1* %ZF, !mcsema_real_eip !72
  %362 = lshr i32 %352, 31, !mcsema_real_eip !72
  %363 = trunc i32 %362 to i1, !mcsema_real_eip !72
  store i1 %363, i1* %SF, !mcsema_real_eip !72
  %364 = icmp ult i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  store i1 %364, i1* %CF, !mcsema_real_eip !72
  %365 = xor i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %366 = and i32 %365, %353, !mcsema_real_eip !72
  %367 = lshr i32 %366, 31, !mcsema_real_eip !72
  %368 = trunc i32 %367 to i1, !mcsema_real_eip !72
  store i1 %368, i1* %OF, !mcsema_real_eip !72
  %369 = zext i32 %352 to i64, !mcsema_real_eip !72
  store i64 %369, i64* %XAX, !mcsema_real_eip !72
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -64
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %EAX_val.92 = load i32, i32* %EAX.16, !mcsema_real_eip !73
  %370 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !73
  %371 = inttoptr i64 %370 to i32*, !mcsema_real_eip !73
  store i32 %EAX_val.92, i32* %371, !mcsema_real_eip !73
  %372 = load i1, i1* %ZF, !mcsema_real_eip !74
  br i1 %372, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !74

block_0x12c:                                      ; preds = %349
  br label %block_0x131, !mcsema_real_eip !75

block_0x131:                                      ; preds = %block_0x12c
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -12
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %373 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !76
  %374 = inttoptr i64 %373 to i32*, !mcsema_real_eip !76
  %_ptr_bt_448 = bitcast i32* %374 to i8*
  %_offset_above_rbp_449 = sub i64 %373, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_ptr_bt_448, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_ptr_bt_448, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_ptr_bt_448, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  br i1 %_cond1_n_cond2_cond3_457, label %375, label %376

; <label>:375:                                    ; preds = %block_0x131
  %_address_in_parent_stack_bt_459 = bitcast i8* %_pot_address_in_parent_stack_450 to i32*
  br label %376

; <label>:376:                                    ; preds = %block_0x131, %375
  %377 = phi i32* [ %374, %block_0x131 ], [ %_address_in_parent_stack_bt_459, %375 ]
  %_new_load_460 = load i32, i32* %377
  %378 = zext i32 %_new_load_460 to i64, !mcsema_real_eip !76
  store i64 %378, i64* %XAX, !mcsema_real_eip !76
  %EAX_val.95 = load i32, i32* %EAX.16, !mcsema_real_eip !77
  %379 = sub i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %380 = xor i32 %379, %EAX_val.95, !mcsema_real_eip !77
  %381 = xor i32 %380, 74639, !mcsema_real_eip !77
  %382 = and i32 %381, 16, !mcsema_real_eip !77
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !77
  store i1 %383, i1* %AF, !mcsema_real_eip !77
  %384 = trunc i32 %379 to i8, !mcsema_real_eip !77
  %385 = call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !77
  %386 = trunc i8 %385 to i1, !mcsema_real_eip !77
  %387 = xor i1 %386, true, !mcsema_real_eip !77
  store i1 %387, i1* %PF, !mcsema_real_eip !77
  %388 = icmp eq i32 %379, 0, !mcsema_real_eip !77
  store i1 %388, i1* %ZF, !mcsema_real_eip !77
  %389 = lshr i32 %379, 31, !mcsema_real_eip !77
  %390 = trunc i32 %389 to i1, !mcsema_real_eip !77
  store i1 %390, i1* %SF, !mcsema_real_eip !77
  %391 = icmp ult i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  store i1 %391, i1* %CF, !mcsema_real_eip !77
  %392 = xor i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %393 = and i32 %392, %380, !mcsema_real_eip !77
  %394 = lshr i32 %393, 31, !mcsema_real_eip !77
  %395 = trunc i32 %394 to i1, !mcsema_real_eip !77
  store i1 %395, i1* %OF, !mcsema_real_eip !77
  %396 = zext i32 %379 to i64, !mcsema_real_eip !77
  store i64 %396, i64* %XAX, !mcsema_real_eip !77
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -68
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %EAX_val.98 = load i32, i32* %EAX.16, !mcsema_real_eip !78
  %397 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !78
  %398 = inttoptr i64 %397 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.98, i32* %398, !mcsema_real_eip !78
  %399 = load i1, i1* %ZF, !mcsema_real_eip !79
  br i1 %399, label %block_0x26f, label %block_0x142, !mcsema_real_eip !79

block_0x142:                                      ; preds = %376
  br label %block_0x147, !mcsema_real_eip !80

block_0x147:                                      ; preds = %block_0x142
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -12
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %400 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !81
  %401 = inttoptr i64 %400 to i32*, !mcsema_real_eip !81
  %_ptr_bt_463 = bitcast i32* %401 to i8*
  %_offset_above_rbp_464 = sub i64 %400, %_local_end_to_int_
  %_pot_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_464
  %_cond1_466 = icmp ugt i8* %_ptr_bt_463, %_local_stack_end_ptr_
  %_cond2_1_467 = icmp ugt i8* %_ptr_bt_463, %_parent_stack_end_ptr_
  %_cond2_2_468 = icmp ult i8* %_ptr_bt_463, %_parent_stack_start_ptr_
  %_cond2_469 = or i1 %_cond2_1_467, %_cond2_2_468
  %_cond4_470 = icmp ule i8* %_pot_address_in_parent_stack_465, %_parent_stack_end_ptr_
  %_cond1_n_cond2_471 = and i1 %_cond1_466, %_cond2_469
  %_cond1_n_cond2_cond3_472 = and i1 %_cond1_n_cond2_471, %_cond4_470
  br i1 %_cond1_n_cond2_cond3_472, label %402, label %403

; <label>:402:                                    ; preds = %block_0x147
  %_address_in_parent_stack_bt_474 = bitcast i8* %_pot_address_in_parent_stack_465 to i32*
  br label %403

; <label>:403:                                    ; preds = %block_0x147, %402
  %404 = phi i32* [ %401, %block_0x147 ], [ %_address_in_parent_stack_bt_474, %402 ]
  %_new_load_475 = load i32, i32* %404
  %405 = zext i32 %_new_load_475 to i64, !mcsema_real_eip !81
  store i64 %405, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.16, !mcsema_real_eip !82
  %406 = sub i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %407 = xor i32 %406, %EAX_val.101, !mcsema_real_eip !82
  %408 = xor i32 %407, 74640, !mcsema_real_eip !82
  %409 = and i32 %408, 16, !mcsema_real_eip !82
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !82
  store i1 %410, i1* %AF, !mcsema_real_eip !82
  %411 = trunc i32 %406 to i8, !mcsema_real_eip !82
  %412 = call i8 @llvm.ctpop.i8(i8 %411), !mcsema_real_eip !82
  %413 = trunc i8 %412 to i1, !mcsema_real_eip !82
  %414 = xor i1 %413, true, !mcsema_real_eip !82
  store i1 %414, i1* %PF, !mcsema_real_eip !82
  %415 = icmp eq i32 %406, 0, !mcsema_real_eip !82
  store i1 %415, i1* %ZF, !mcsema_real_eip !82
  %416 = lshr i32 %406, 31, !mcsema_real_eip !82
  %417 = trunc i32 %416 to i1, !mcsema_real_eip !82
  store i1 %417, i1* %SF, !mcsema_real_eip !82
  %418 = icmp ult i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  store i1 %418, i1* %CF, !mcsema_real_eip !82
  %419 = xor i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %420 = and i32 %419, %407, !mcsema_real_eip !82
  %421 = lshr i32 %420, 31, !mcsema_real_eip !82
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !82
  store i1 %422, i1* %OF, !mcsema_real_eip !82
  %423 = zext i32 %406 to i64, !mcsema_real_eip !82
  store i64 %423, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -72
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.104 = load i32, i32* %EAX.16, !mcsema_real_eip !83
  %424 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !83
  %425 = inttoptr i64 %424 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %425, !mcsema_real_eip !83
  %426 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %426, label %block_0x27f, label %block_0x158, !mcsema_real_eip !84

block_0x158:                                      ; preds = %403
  br label %block_0x15d, !mcsema_real_eip !85

block_0x15d:                                      ; preds = %block_0x158
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -12
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %427 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !86
  %428 = inttoptr i64 %427 to i32*, !mcsema_real_eip !86
  %_ptr_bt_478 = bitcast i32* %428 to i8*
  %_offset_above_rbp_479 = sub i64 %427, %_local_end_to_int_
  %_pot_address_in_parent_stack_480 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_479
  %_cond1_481 = icmp ugt i8* %_ptr_bt_478, %_local_stack_end_ptr_
  %_cond2_1_482 = icmp ugt i8* %_ptr_bt_478, %_parent_stack_end_ptr_
  %_cond2_2_483 = icmp ult i8* %_ptr_bt_478, %_parent_stack_start_ptr_
  %_cond2_484 = or i1 %_cond2_1_482, %_cond2_2_483
  %_cond4_485 = icmp ule i8* %_pot_address_in_parent_stack_480, %_parent_stack_end_ptr_
  %_cond1_n_cond2_486 = and i1 %_cond1_481, %_cond2_484
  %_cond1_n_cond2_cond3_487 = and i1 %_cond1_n_cond2_486, %_cond4_485
  br i1 %_cond1_n_cond2_cond3_487, label %429, label %430

; <label>:429:                                    ; preds = %block_0x15d
  %_address_in_parent_stack_bt_489 = bitcast i8* %_pot_address_in_parent_stack_480 to i32*
  br label %430

; <label>:430:                                    ; preds = %block_0x15d, %429
  %431 = phi i32* [ %428, %block_0x15d ], [ %_address_in_parent_stack_bt_489, %429 ]
  %_new_load_490 = load i32, i32* %431
  %432 = zext i32 %_new_load_490 to i64, !mcsema_real_eip !86
  store i64 %432, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.107 = load i32, i32* %EAX.16, !mcsema_real_eip !87
  %433 = sub i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %434 = xor i32 %433, %EAX_val.107, !mcsema_real_eip !87
  %435 = xor i32 %434, 74641, !mcsema_real_eip !87
  %436 = and i32 %435, 16, !mcsema_real_eip !87
  %437 = icmp ne i32 %436, 0, !mcsema_real_eip !87
  store i1 %437, i1* %AF, !mcsema_real_eip !87
  %438 = trunc i32 %433 to i8, !mcsema_real_eip !87
  %439 = call i8 @llvm.ctpop.i8(i8 %438), !mcsema_real_eip !87
  %440 = trunc i8 %439 to i1, !mcsema_real_eip !87
  %441 = xor i1 %440, true, !mcsema_real_eip !87
  store i1 %441, i1* %PF, !mcsema_real_eip !87
  %442 = icmp eq i32 %433, 0, !mcsema_real_eip !87
  store i1 %442, i1* %ZF, !mcsema_real_eip !87
  %443 = lshr i32 %433, 31, !mcsema_real_eip !87
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !87
  store i1 %444, i1* %SF, !mcsema_real_eip !87
  %445 = icmp ult i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  store i1 %445, i1* %CF, !mcsema_real_eip !87
  %446 = xor i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %447 = and i32 %446, %434, !mcsema_real_eip !87
  %448 = lshr i32 %447, 31, !mcsema_real_eip !87
  %449 = trunc i32 %448 to i1, !mcsema_real_eip !87
  store i1 %449, i1* %OF, !mcsema_real_eip !87
  %450 = zext i32 %433 to i64, !mcsema_real_eip !87
  store i64 %450, i64* %XAX, !mcsema_real_eip !87
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -76
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %EAX_val.110 = load i32, i32* %EAX.16, !mcsema_real_eip !88
  %451 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !88
  %452 = inttoptr i64 %451 to i32*, !mcsema_real_eip !88
  store i32 %EAX_val.110, i32* %452, !mcsema_real_eip !88
  %453 = load i1, i1* %ZF, !mcsema_real_eip !89
  br i1 %453, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !89

block_0x16e:                                      ; preds = %430
  br label %block_0x173, !mcsema_real_eip !90

block_0x173:                                      ; preds = %block_0x16e
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -12
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %454 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !91
  %455 = inttoptr i64 %454 to i32*, !mcsema_real_eip !91
  %_ptr_bt_493 = bitcast i32* %455 to i8*
  %_offset_above_rbp_494 = sub i64 %454, %_local_end_to_int_
  %_pot_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_494
  %_cond1_496 = icmp ugt i8* %_ptr_bt_493, %_local_stack_end_ptr_
  %_cond2_1_497 = icmp ugt i8* %_ptr_bt_493, %_parent_stack_end_ptr_
  %_cond2_2_498 = icmp ult i8* %_ptr_bt_493, %_parent_stack_start_ptr_
  %_cond2_499 = or i1 %_cond2_1_497, %_cond2_2_498
  %_cond4_500 = icmp ule i8* %_pot_address_in_parent_stack_495, %_parent_stack_end_ptr_
  %_cond1_n_cond2_501 = and i1 %_cond1_496, %_cond2_499
  %_cond1_n_cond2_cond3_502 = and i1 %_cond1_n_cond2_501, %_cond4_500
  br i1 %_cond1_n_cond2_cond3_502, label %456, label %457

; <label>:456:                                    ; preds = %block_0x173
  %_address_in_parent_stack_bt_504 = bitcast i8* %_pot_address_in_parent_stack_495 to i32*
  br label %457

; <label>:457:                                    ; preds = %block_0x173, %456
  %458 = phi i32* [ %455, %block_0x173 ], [ %_address_in_parent_stack_bt_504, %456 ]
  %_new_load_505 = load i32, i32* %458
  %459 = zext i32 %_new_load_505 to i64, !mcsema_real_eip !91
  store i64 %459, i64* %XAX, !mcsema_real_eip !91
  %EAX_val.113 = load i32, i32* %EAX.16, !mcsema_real_eip !92
  %460 = sub i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %461 = xor i32 %460, %EAX_val.113, !mcsema_real_eip !92
  %462 = xor i32 %461, 74642, !mcsema_real_eip !92
  %463 = and i32 %462, 16, !mcsema_real_eip !92
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !92
  store i1 %464, i1* %AF, !mcsema_real_eip !92
  %465 = trunc i32 %460 to i8, !mcsema_real_eip !92
  %466 = call i8 @llvm.ctpop.i8(i8 %465), !mcsema_real_eip !92
  %467 = trunc i8 %466 to i1, !mcsema_real_eip !92
  %468 = xor i1 %467, true, !mcsema_real_eip !92
  store i1 %468, i1* %PF, !mcsema_real_eip !92
  %469 = icmp eq i32 %460, 0, !mcsema_real_eip !92
  store i1 %469, i1* %ZF, !mcsema_real_eip !92
  %470 = lshr i32 %460, 31, !mcsema_real_eip !92
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !92
  store i1 %471, i1* %SF, !mcsema_real_eip !92
  %472 = icmp ult i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  store i1 %472, i1* %CF, !mcsema_real_eip !92
  %473 = xor i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %474 = and i32 %473, %461, !mcsema_real_eip !92
  %475 = lshr i32 %474, 31, !mcsema_real_eip !92
  %476 = trunc i32 %475 to i1, !mcsema_real_eip !92
  store i1 %476, i1* %OF, !mcsema_real_eip !92
  %477 = zext i32 %460 to i64, !mcsema_real_eip !92
  store i64 %477, i64* %XAX, !mcsema_real_eip !92
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -80
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %EAX_val.116 = load i32, i32* %EAX.16, !mcsema_real_eip !93
  %478 = ptrtoint i64* %_allin_new_bt_115 to i64, !mcsema_real_eip !93
  %479 = inttoptr i64 %478 to i32*, !mcsema_real_eip !93
  store i32 %EAX_val.116, i32* %479, !mcsema_real_eip !93
  %480 = load i1, i1* %ZF, !mcsema_real_eip !94
  br i1 %480, label %block_0x29f, label %block_0x184, !mcsema_real_eip !94

block_0x184:                                      ; preds = %457
  br label %block_0x189, !mcsema_real_eip !95

block_0x189:                                      ; preds = %block_0x184
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -12
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %481 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !96
  %482 = inttoptr i64 %481 to i32*, !mcsema_real_eip !96
  %_ptr_bt_508 = bitcast i32* %482 to i8*
  %_offset_above_rbp_509 = sub i64 %481, %_local_end_to_int_
  %_pot_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_509
  %_cond1_511 = icmp ugt i8* %_ptr_bt_508, %_local_stack_end_ptr_
  %_cond2_1_512 = icmp ugt i8* %_ptr_bt_508, %_parent_stack_end_ptr_
  %_cond2_2_513 = icmp ult i8* %_ptr_bt_508, %_parent_stack_start_ptr_
  %_cond2_514 = or i1 %_cond2_1_512, %_cond2_2_513
  %_cond4_515 = icmp ule i8* %_pot_address_in_parent_stack_510, %_parent_stack_end_ptr_
  %_cond1_n_cond2_516 = and i1 %_cond1_511, %_cond2_514
  %_cond1_n_cond2_cond3_517 = and i1 %_cond1_n_cond2_516, %_cond4_515
  br i1 %_cond1_n_cond2_cond3_517, label %483, label %484

; <label>:483:                                    ; preds = %block_0x189
  %_address_in_parent_stack_bt_519 = bitcast i8* %_pot_address_in_parent_stack_510 to i32*
  br label %484

; <label>:484:                                    ; preds = %block_0x189, %483
  %485 = phi i32* [ %482, %block_0x189 ], [ %_address_in_parent_stack_bt_519, %483 ]
  %_new_load_520 = load i32, i32* %485
  %486 = zext i32 %_new_load_520 to i64, !mcsema_real_eip !96
  store i64 %486, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.119 = load i32, i32* %EAX.16, !mcsema_real_eip !97
  %487 = sub i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %488 = xor i32 %487, %EAX_val.119, !mcsema_real_eip !97
  %489 = xor i32 %488, 74643, !mcsema_real_eip !97
  %490 = and i32 %489, 16, !mcsema_real_eip !97
  %491 = icmp ne i32 %490, 0, !mcsema_real_eip !97
  store i1 %491, i1* %AF, !mcsema_real_eip !97
  %492 = trunc i32 %487 to i8, !mcsema_real_eip !97
  %493 = call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !97
  %494 = trunc i8 %493 to i1, !mcsema_real_eip !97
  %495 = xor i1 %494, true, !mcsema_real_eip !97
  store i1 %495, i1* %PF, !mcsema_real_eip !97
  %496 = icmp eq i32 %487, 0, !mcsema_real_eip !97
  store i1 %496, i1* %ZF, !mcsema_real_eip !97
  %497 = lshr i32 %487, 31, !mcsema_real_eip !97
  %498 = trunc i32 %497 to i1, !mcsema_real_eip !97
  store i1 %498, i1* %SF, !mcsema_real_eip !97
  %499 = icmp ult i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  store i1 %499, i1* %CF, !mcsema_real_eip !97
  %500 = xor i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %501 = and i32 %500, %488, !mcsema_real_eip !97
  %502 = lshr i32 %501, 31, !mcsema_real_eip !97
  %503 = trunc i32 %502 to i1, !mcsema_real_eip !97
  store i1 %503, i1* %OF, !mcsema_real_eip !97
  %504 = zext i32 %487 to i64, !mcsema_real_eip !97
  store i64 %504, i64* %XAX, !mcsema_real_eip !97
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -84
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %EAX_val.122 = load i32, i32* %EAX.16, !mcsema_real_eip !98
  %505 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !98
  %506 = inttoptr i64 %505 to i32*, !mcsema_real_eip !98
  store i32 %EAX_val.122, i32* %506, !mcsema_real_eip !98
  %507 = load i1, i1* %ZF, !mcsema_real_eip !99
  br i1 %507, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !99

block_0x19a:                                      ; preds = %484
  br label %block_0x2bf, !mcsema_real_eip !100

block_0x19f:                                      ; preds = %9
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -8
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %508 = ptrtoint i64* %_allin_new_bt_124 to i64, !mcsema_real_eip !101
  %509 = inttoptr i64 %508 to i32*, !mcsema_real_eip !101
  %_ptr_bt_523 = bitcast i32* %509 to i8*
  %_offset_above_rbp_524 = sub i64 %508, %_local_end_to_int_
  %_pot_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_524
  %_cond1_526 = icmp ugt i8* %_ptr_bt_523, %_local_stack_end_ptr_
  %_cond2_1_527 = icmp ugt i8* %_ptr_bt_523, %_parent_stack_end_ptr_
  %_cond2_2_528 = icmp ult i8* %_ptr_bt_523, %_parent_stack_start_ptr_
  %_cond2_529 = or i1 %_cond2_1_527, %_cond2_2_528
  %_cond4_530 = icmp ule i8* %_pot_address_in_parent_stack_525, %_parent_stack_end_ptr_
  %_cond1_n_cond2_531 = and i1 %_cond1_526, %_cond2_529
  %_cond1_n_cond2_cond3_532 = and i1 %_cond1_n_cond2_531, %_cond4_530
  br i1 %_cond1_n_cond2_cond3_532, label %510, label %511

; <label>:510:                                    ; preds = %block_0x19f
  %_address_in_parent_stack_bt_534 = bitcast i8* %_pot_address_in_parent_stack_525 to i32*
  br label %511

; <label>:511:                                    ; preds = %block_0x19f, %510
  %512 = phi i32* [ %509, %block_0x19f ], [ %_address_in_parent_stack_bt_534, %510 ]
  %_new_load_535 = load i32, i32* %512
  %513 = zext i32 %_new_load_535 to i64, !mcsema_real_eip !101
  store i64 %513, i64* %XAX, !mcsema_real_eip !101
  %EAX.124 = bitcast i64* %XAX to i32*, !mcsema_real_eip !102
  %EAX_val.125 = load i32, i32* %EAX.124, !mcsema_real_eip !102
  store i1 false, i1* %AF, !mcsema_real_eip !102
  %514 = lshr i32 %EAX_val.125, 31, !mcsema_real_eip !102
  %515 = trunc i32 %514 to i1, !mcsema_real_eip !102
  store i1 %515, i1* %SF, !mcsema_real_eip !102
  %516 = icmp eq i32 %EAX_val.125, 0, !mcsema_real_eip !102
  store i1 %516, i1* %ZF, !mcsema_real_eip !102
  %517 = xor i32 %EAX_val.125, -1, !mcsema_real_eip !102
  store i1 false, i1* %OF, !mcsema_real_eip !102
  %518 = trunc i32 %EAX_val.125 to i8, !mcsema_real_eip !102
  %519 = call i8 @llvm.ctpop.i8(i8 %518), !mcsema_real_eip !102
  %520 = trunc i8 %519 to i1, !mcsema_real_eip !102
  %521 = xor i1 %520, true, !mcsema_real_eip !102
  store i1 %521, i1* %PF, !mcsema_real_eip !102
  store i1 false, i1* %CF, !mcsema_real_eip !102
  %522 = zext i32 %EAX_val.125 to i64, !mcsema_real_eip !102
  store i64 %522, i64* %XAX, !mcsema_real_eip !102
  %EAX_val.128 = load i32, i32* %EAX.124, !mcsema_real_eip !103
  store i32 %EAX_val.128, i32* %509, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x1ad:                                      ; preds = %25
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -8
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %523 = ptrtoint i64* %_allin_new_bt_130 to i64, !mcsema_real_eip !105
  %524 = inttoptr i64 %523 to i32*, !mcsema_real_eip !105
  %_ptr_bt_538 = bitcast i32* %524 to i8*
  %_offset_above_rbp_539 = sub i64 %523, %_local_end_to_int_
  %_pot_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_539
  %_cond1_541 = icmp ugt i8* %_ptr_bt_538, %_local_stack_end_ptr_
  %_cond2_1_542 = icmp ugt i8* %_ptr_bt_538, %_parent_stack_end_ptr_
  %_cond2_2_543 = icmp ult i8* %_ptr_bt_538, %_parent_stack_start_ptr_
  %_cond2_544 = or i1 %_cond2_1_542, %_cond2_2_543
  %_cond4_545 = icmp ule i8* %_pot_address_in_parent_stack_540, %_parent_stack_end_ptr_
  %_cond1_n_cond2_546 = and i1 %_cond1_541, %_cond2_544
  %_cond1_n_cond2_cond3_547 = and i1 %_cond1_n_cond2_546, %_cond4_545
  br i1 %_cond1_n_cond2_cond3_547, label %525, label %526

; <label>:525:                                    ; preds = %block_0x1ad
  %_address_in_parent_stack_bt_549 = bitcast i8* %_pot_address_in_parent_stack_540 to i32*
  br label %526

; <label>:526:                                    ; preds = %block_0x1ad, %525
  %527 = phi i32* [ %524, %block_0x1ad ], [ %_address_in_parent_stack_bt_549, %525 ]
  %_new_load_550 = load i32, i32* %527
  %528 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !105
  store i64 %528, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.131 = load i32, i32* %EAX.16, !mcsema_real_eip !106
  %529 = add i32 1, %EAX_val.131, !mcsema_real_eip !106
  %530 = xor i32 %529, %EAX_val.131, !mcsema_real_eip !106
  %531 = xor i32 %530, 1, !mcsema_real_eip !106
  %532 = and i32 %531, 16, !mcsema_real_eip !106
  %533 = icmp ne i32 %532, 0, !mcsema_real_eip !106
  store i1 %533, i1* %AF, !mcsema_real_eip !106
  %534 = lshr i32 %529, 31, !mcsema_real_eip !106
  %535 = trunc i32 %534 to i1, !mcsema_real_eip !106
  store i1 %535, i1* %SF, !mcsema_real_eip !106
  %536 = icmp eq i32 %529, 0, !mcsema_real_eip !106
  store i1 %536, i1* %ZF, !mcsema_real_eip !106
  %537 = xor i32 %EAX_val.131, 1, !mcsema_real_eip !106
  %538 = xor i32 %537, -1, !mcsema_real_eip !106
  %539 = and i32 %538, %530, !mcsema_real_eip !106
  %540 = lshr i32 %539, 31, !mcsema_real_eip !106
  %541 = and i32 %540, 1, !mcsema_real_eip !106
  %542 = trunc i32 %541 to i1, !mcsema_real_eip !106
  store i1 %542, i1* %OF, !mcsema_real_eip !106
  %543 = trunc i32 %529 to i8, !mcsema_real_eip !106
  %544 = call i8 @llvm.ctpop.i8(i8 %543), !mcsema_real_eip !106
  %545 = trunc i8 %544 to i1, !mcsema_real_eip !106
  %546 = xor i1 %545, true, !mcsema_real_eip !106
  store i1 %546, i1* %PF, !mcsema_real_eip !106
  %547 = icmp ult i32 %529, %EAX_val.131, !mcsema_real_eip !106
  store i1 %547, i1* %CF, !mcsema_real_eip !106
  %548 = zext i32 %529 to i64, !mcsema_real_eip !106
  store i64 %548, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.134 = load i32, i32* %EAX.16, !mcsema_real_eip !107
  store i32 %EAX_val.134, i32* %524, !mcsema_real_eip !107
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x1bb:                                      ; preds = %52
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -8
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %549 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !109
  %550 = inttoptr i64 %549 to i32*, !mcsema_real_eip !109
  %_ptr_bt_553 = bitcast i32* %550 to i8*
  %_offset_above_rbp_554 = sub i64 %549, %_local_end_to_int_
  %_pot_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_554
  %_cond1_556 = icmp ugt i8* %_ptr_bt_553, %_local_stack_end_ptr_
  %_cond2_1_557 = icmp ugt i8* %_ptr_bt_553, %_parent_stack_end_ptr_
  %_cond2_2_558 = icmp ult i8* %_ptr_bt_553, %_parent_stack_start_ptr_
  %_cond2_559 = or i1 %_cond2_1_557, %_cond2_2_558
  %_cond4_560 = icmp ule i8* %_pot_address_in_parent_stack_555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_561 = and i1 %_cond1_556, %_cond2_559
  %_cond1_n_cond2_cond3_562 = and i1 %_cond1_n_cond2_561, %_cond4_560
  br i1 %_cond1_n_cond2_cond3_562, label %551, label %552

; <label>:551:                                    ; preds = %block_0x1bb
  %_address_in_parent_stack_bt_564 = bitcast i8* %_pot_address_in_parent_stack_555 to i32*
  br label %552

; <label>:552:                                    ; preds = %block_0x1bb, %551
  %553 = phi i32* [ %550, %block_0x1bb ], [ %_address_in_parent_stack_bt_564, %551 ]
  %_new_load_565 = load i32, i32* %553
  %554 = zext i32 %_new_load_565 to i64, !mcsema_real_eip !109
  store i64 %554, i64* %XAX, !mcsema_real_eip !109
  %EAX_val.137 = load i32, i32* %EAX.16, !mcsema_real_eip !110
  %555 = add i32 2, %EAX_val.137, !mcsema_real_eip !110
  %556 = xor i32 %555, %EAX_val.137, !mcsema_real_eip !110
  %557 = xor i32 %556, 2, !mcsema_real_eip !110
  %558 = and i32 %557, 16, !mcsema_real_eip !110
  %559 = icmp ne i32 %558, 0, !mcsema_real_eip !110
  store i1 %559, i1* %AF, !mcsema_real_eip !110
  %560 = lshr i32 %555, 31, !mcsema_real_eip !110
  %561 = trunc i32 %560 to i1, !mcsema_real_eip !110
  store i1 %561, i1* %SF, !mcsema_real_eip !110
  %562 = icmp eq i32 %555, 0, !mcsema_real_eip !110
  store i1 %562, i1* %ZF, !mcsema_real_eip !110
  %563 = xor i32 %EAX_val.137, 2, !mcsema_real_eip !110
  %564 = xor i32 %563, -1, !mcsema_real_eip !110
  %565 = and i32 %564, %556, !mcsema_real_eip !110
  %566 = lshr i32 %565, 31, !mcsema_real_eip !110
  %567 = and i32 %566, 1, !mcsema_real_eip !110
  %568 = trunc i32 %567 to i1, !mcsema_real_eip !110
  store i1 %568, i1* %OF, !mcsema_real_eip !110
  %569 = trunc i32 %555 to i8, !mcsema_real_eip !110
  %570 = call i8 @llvm.ctpop.i8(i8 %569), !mcsema_real_eip !110
  %571 = trunc i8 %570 to i1, !mcsema_real_eip !110
  %572 = xor i1 %571, true, !mcsema_real_eip !110
  store i1 %572, i1* %PF, !mcsema_real_eip !110
  %573 = icmp ult i32 %555, %EAX_val.137, !mcsema_real_eip !110
  store i1 %573, i1* %CF, !mcsema_real_eip !110
  %574 = zext i32 %555 to i64, !mcsema_real_eip !110
  store i64 %574, i64* %XAX, !mcsema_real_eip !110
  %EAX_val.140 = load i32, i32* %EAX.16, !mcsema_real_eip !111
  store i32 %EAX_val.140, i32* %550, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x1c9:                                      ; preds = %79
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -8
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %575 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !113
  %576 = inttoptr i64 %575 to i32*, !mcsema_real_eip !113
  %_ptr_bt_568 = bitcast i32* %576 to i8*
  %_offset_above_rbp_569 = sub i64 %575, %_local_end_to_int_
  %_pot_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_569
  %_cond1_571 = icmp ugt i8* %_ptr_bt_568, %_local_stack_end_ptr_
  %_cond2_1_572 = icmp ugt i8* %_ptr_bt_568, %_parent_stack_end_ptr_
  %_cond2_2_573 = icmp ult i8* %_ptr_bt_568, %_parent_stack_start_ptr_
  %_cond2_574 = or i1 %_cond2_1_572, %_cond2_2_573
  %_cond4_575 = icmp ule i8* %_pot_address_in_parent_stack_570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_576 = and i1 %_cond1_571, %_cond2_574
  %_cond1_n_cond2_cond3_577 = and i1 %_cond1_n_cond2_576, %_cond4_575
  br i1 %_cond1_n_cond2_cond3_577, label %577, label %578

; <label>:577:                                    ; preds = %block_0x1c9
  %_address_in_parent_stack_bt_579 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %578

; <label>:578:                                    ; preds = %block_0x1c9, %577
  %579 = phi i32* [ %576, %block_0x1c9 ], [ %_address_in_parent_stack_bt_579, %577 ]
  %_new_load_580 = load i32, i32* %579
  %580 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !113
  store i64 %580, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.143 = load i32, i32* %EAX.16, !mcsema_real_eip !114
  %581 = add i32 4, %EAX_val.143, !mcsema_real_eip !114
  %582 = xor i32 %581, %EAX_val.143, !mcsema_real_eip !114
  %583 = xor i32 %582, 4, !mcsema_real_eip !114
  %584 = and i32 %583, 16, !mcsema_real_eip !114
  %585 = icmp ne i32 %584, 0, !mcsema_real_eip !114
  store i1 %585, i1* %AF, !mcsema_real_eip !114
  %586 = lshr i32 %581, 31, !mcsema_real_eip !114
  %587 = trunc i32 %586 to i1, !mcsema_real_eip !114
  store i1 %587, i1* %SF, !mcsema_real_eip !114
  %588 = icmp eq i32 %581, 0, !mcsema_real_eip !114
  store i1 %588, i1* %ZF, !mcsema_real_eip !114
  %589 = xor i32 %EAX_val.143, 4, !mcsema_real_eip !114
  %590 = xor i32 %589, -1, !mcsema_real_eip !114
  %591 = and i32 %590, %582, !mcsema_real_eip !114
  %592 = lshr i32 %591, 31, !mcsema_real_eip !114
  %593 = and i32 %592, 1, !mcsema_real_eip !114
  %594 = trunc i32 %593 to i1, !mcsema_real_eip !114
  store i1 %594, i1* %OF, !mcsema_real_eip !114
  %595 = trunc i32 %581 to i8, !mcsema_real_eip !114
  %596 = call i8 @llvm.ctpop.i8(i8 %595), !mcsema_real_eip !114
  %597 = trunc i8 %596 to i1, !mcsema_real_eip !114
  %598 = xor i1 %597, true, !mcsema_real_eip !114
  store i1 %598, i1* %PF, !mcsema_real_eip !114
  %599 = icmp ult i32 %581, %EAX_val.143, !mcsema_real_eip !114
  store i1 %599, i1* %CF, !mcsema_real_eip !114
  %600 = zext i32 %581 to i64, !mcsema_real_eip !114
  store i64 %600, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.146 = load i32, i32* %EAX.16, !mcsema_real_eip !115
  store i32 %EAX_val.146, i32* %576, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x1d7:                                      ; preds = %106
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -8
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %601 = ptrtoint i64* %_allin_new_bt_148 to i64, !mcsema_real_eip !117
  %602 = inttoptr i64 %601 to i32*, !mcsema_real_eip !117
  %_ptr_bt_583 = bitcast i32* %602 to i8*
  %_offset_above_rbp_584 = sub i64 %601, %_local_end_to_int_
  %_pot_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_584
  %_cond1_586 = icmp ugt i8* %_ptr_bt_583, %_local_stack_end_ptr_
  %_cond2_1_587 = icmp ugt i8* %_ptr_bt_583, %_parent_stack_end_ptr_
  %_cond2_2_588 = icmp ult i8* %_ptr_bt_583, %_parent_stack_start_ptr_
  %_cond2_589 = or i1 %_cond2_1_587, %_cond2_2_588
  %_cond4_590 = icmp ule i8* %_pot_address_in_parent_stack_585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_591 = and i1 %_cond1_586, %_cond2_589
  %_cond1_n_cond2_cond3_592 = and i1 %_cond1_n_cond2_591, %_cond4_590
  br i1 %_cond1_n_cond2_cond3_592, label %603, label %604

; <label>:603:                                    ; preds = %block_0x1d7
  %_address_in_parent_stack_bt_594 = bitcast i8* %_pot_address_in_parent_stack_585 to i32*
  br label %604

; <label>:604:                                    ; preds = %block_0x1d7, %603
  %605 = phi i32* [ %602, %block_0x1d7 ], [ %_address_in_parent_stack_bt_594, %603 ]
  %_new_load_595 = load i32, i32* %605
  %606 = zext i32 %_new_load_595 to i64, !mcsema_real_eip !117
  store i64 %606, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.149 = load i32, i32* %EAX.16, !mcsema_real_eip !118
  %607 = add i32 6, %EAX_val.149, !mcsema_real_eip !118
  %608 = xor i32 %607, %EAX_val.149, !mcsema_real_eip !118
  %609 = xor i32 %608, 6, !mcsema_real_eip !118
  %610 = and i32 %609, 16, !mcsema_real_eip !118
  %611 = icmp ne i32 %610, 0, !mcsema_real_eip !118
  store i1 %611, i1* %AF, !mcsema_real_eip !118
  %612 = lshr i32 %607, 31, !mcsema_real_eip !118
  %613 = trunc i32 %612 to i1, !mcsema_real_eip !118
  store i1 %613, i1* %SF, !mcsema_real_eip !118
  %614 = icmp eq i32 %607, 0, !mcsema_real_eip !118
  store i1 %614, i1* %ZF, !mcsema_real_eip !118
  %615 = xor i32 %EAX_val.149, 6, !mcsema_real_eip !118
  %616 = xor i32 %615, -1, !mcsema_real_eip !118
  %617 = and i32 %616, %608, !mcsema_real_eip !118
  %618 = lshr i32 %617, 31, !mcsema_real_eip !118
  %619 = and i32 %618, 1, !mcsema_real_eip !118
  %620 = trunc i32 %619 to i1, !mcsema_real_eip !118
  store i1 %620, i1* %OF, !mcsema_real_eip !118
  %621 = trunc i32 %607 to i8, !mcsema_real_eip !118
  %622 = call i8 @llvm.ctpop.i8(i8 %621), !mcsema_real_eip !118
  %623 = trunc i8 %622 to i1, !mcsema_real_eip !118
  %624 = xor i1 %623, true, !mcsema_real_eip !118
  store i1 %624, i1* %PF, !mcsema_real_eip !118
  %625 = icmp ult i32 %607, %EAX_val.149, !mcsema_real_eip !118
  store i1 %625, i1* %CF, !mcsema_real_eip !118
  %626 = zext i32 %607 to i64, !mcsema_real_eip !118
  store i64 %626, i64* %XAX, !mcsema_real_eip !118
  %EAX_val.152 = load i32, i32* %EAX.16, !mcsema_real_eip !119
  store i32 %EAX_val.152, i32* %602, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x1e5:                                      ; preds = %133
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -8
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %627 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !121
  %628 = inttoptr i64 %627 to i32*, !mcsema_real_eip !121
  %_ptr_bt_598 = bitcast i32* %628 to i8*
  %_offset_above_rbp_599 = sub i64 %627, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %_ptr_bt_598, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %_ptr_bt_598, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %_ptr_bt_598, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  br i1 %_cond1_n_cond2_cond3_607, label %629, label %630

; <label>:629:                                    ; preds = %block_0x1e5
  %_address_in_parent_stack_bt_609 = bitcast i8* %_pot_address_in_parent_stack_600 to i32*
  br label %630

; <label>:630:                                    ; preds = %block_0x1e5, %629
  %631 = phi i32* [ %628, %block_0x1e5 ], [ %_address_in_parent_stack_bt_609, %629 ]
  %_new_load_610 = load i32, i32* %631
  %632 = zext i32 %_new_load_610 to i64, !mcsema_real_eip !121
  store i64 %632, i64* %XAX, !mcsema_real_eip !121
  %EAX_val.155 = load i32, i32* %EAX.16, !mcsema_real_eip !122
  %633 = add i32 12, %EAX_val.155, !mcsema_real_eip !122
  %634 = xor i32 %633, %EAX_val.155, !mcsema_real_eip !122
  %635 = xor i32 %634, 12, !mcsema_real_eip !122
  %636 = and i32 %635, 16, !mcsema_real_eip !122
  %637 = icmp ne i32 %636, 0, !mcsema_real_eip !122
  store i1 %637, i1* %AF, !mcsema_real_eip !122
  %638 = lshr i32 %633, 31, !mcsema_real_eip !122
  %639 = trunc i32 %638 to i1, !mcsema_real_eip !122
  store i1 %639, i1* %SF, !mcsema_real_eip !122
  %640 = icmp eq i32 %633, 0, !mcsema_real_eip !122
  store i1 %640, i1* %ZF, !mcsema_real_eip !122
  %641 = xor i32 %EAX_val.155, 12, !mcsema_real_eip !122
  %642 = xor i32 %641, -1, !mcsema_real_eip !122
  %643 = and i32 %642, %634, !mcsema_real_eip !122
  %644 = lshr i32 %643, 31, !mcsema_real_eip !122
  %645 = and i32 %644, 1, !mcsema_real_eip !122
  %646 = trunc i32 %645 to i1, !mcsema_real_eip !122
  store i1 %646, i1* %OF, !mcsema_real_eip !122
  %647 = trunc i32 %633 to i8, !mcsema_real_eip !122
  %648 = call i8 @llvm.ctpop.i8(i8 %647), !mcsema_real_eip !122
  %649 = trunc i8 %648 to i1, !mcsema_real_eip !122
  %650 = xor i1 %649, true, !mcsema_real_eip !122
  store i1 %650, i1* %PF, !mcsema_real_eip !122
  %651 = icmp ult i32 %633, %EAX_val.155, !mcsema_real_eip !122
  store i1 %651, i1* %CF, !mcsema_real_eip !122
  %652 = zext i32 %633 to i64, !mcsema_real_eip !122
  store i64 %652, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.158 = load i32, i32* %EAX.16, !mcsema_real_eip !123
  store i32 %EAX_val.158, i32* %628, !mcsema_real_eip !123
  br label %block_0x2c8, !mcsema_real_eip !124

block_0x1f3:                                      ; preds = %160
  %_load_rbp_ptr_158 = load i8*, i8** %_RBP_ptr_
  %_new_gep_159 = getelementptr i8, i8* %_load_rbp_ptr_158, i64 -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  %653 = ptrtoint i64* %_allin_new_bt_160 to i64, !mcsema_real_eip !125
  %654 = inttoptr i64 %653 to i32*, !mcsema_real_eip !125
  %_ptr_bt_613 = bitcast i32* %654 to i8*
  %_offset_above_rbp_614 = sub i64 %653, %_local_end_to_int_
  %_pot_address_in_parent_stack_615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_614
  %_cond1_616 = icmp ugt i8* %_ptr_bt_613, %_local_stack_end_ptr_
  %_cond2_1_617 = icmp ugt i8* %_ptr_bt_613, %_parent_stack_end_ptr_
  %_cond2_2_618 = icmp ult i8* %_ptr_bt_613, %_parent_stack_start_ptr_
  %_cond2_619 = or i1 %_cond2_1_617, %_cond2_2_618
  %_cond4_620 = icmp ule i8* %_pot_address_in_parent_stack_615, %_parent_stack_end_ptr_
  %_cond1_n_cond2_621 = and i1 %_cond1_616, %_cond2_619
  %_cond1_n_cond2_cond3_622 = and i1 %_cond1_n_cond2_621, %_cond4_620
  br i1 %_cond1_n_cond2_cond3_622, label %655, label %656

; <label>:655:                                    ; preds = %block_0x1f3
  %_address_in_parent_stack_bt_624 = bitcast i8* %_pot_address_in_parent_stack_615 to i32*
  br label %656

; <label>:656:                                    ; preds = %block_0x1f3, %655
  %657 = phi i32* [ %654, %block_0x1f3 ], [ %_address_in_parent_stack_bt_624, %655 ]
  %_new_load_625 = load i32, i32* %657
  %658 = zext i32 %_new_load_625 to i64, !mcsema_real_eip !125
  store i64 %658, i64* %XAX, !mcsema_real_eip !125
  %EAX_val.161 = load i32, i32* %EAX.16, !mcsema_real_eip !126
  %659 = add i32 13, %EAX_val.161, !mcsema_real_eip !126
  %660 = xor i32 %659, %EAX_val.161, !mcsema_real_eip !126
  %661 = xor i32 %660, 13, !mcsema_real_eip !126
  %662 = and i32 %661, 16, !mcsema_real_eip !126
  %663 = icmp ne i32 %662, 0, !mcsema_real_eip !126
  store i1 %663, i1* %AF, !mcsema_real_eip !126
  %664 = lshr i32 %659, 31, !mcsema_real_eip !126
  %665 = trunc i32 %664 to i1, !mcsema_real_eip !126
  store i1 %665, i1* %SF, !mcsema_real_eip !126
  %666 = icmp eq i32 %659, 0, !mcsema_real_eip !126
  store i1 %666, i1* %ZF, !mcsema_real_eip !126
  %667 = xor i32 %EAX_val.161, 13, !mcsema_real_eip !126
  %668 = xor i32 %667, -1, !mcsema_real_eip !126
  %669 = and i32 %668, %660, !mcsema_real_eip !126
  %670 = lshr i32 %669, 31, !mcsema_real_eip !126
  %671 = and i32 %670, 1, !mcsema_real_eip !126
  %672 = trunc i32 %671 to i1, !mcsema_real_eip !126
  store i1 %672, i1* %OF, !mcsema_real_eip !126
  %673 = trunc i32 %659 to i8, !mcsema_real_eip !126
  %674 = call i8 @llvm.ctpop.i8(i8 %673), !mcsema_real_eip !126
  %675 = trunc i8 %674 to i1, !mcsema_real_eip !126
  %676 = xor i1 %675, true, !mcsema_real_eip !126
  store i1 %676, i1* %PF, !mcsema_real_eip !126
  %677 = icmp ult i32 %659, %EAX_val.161, !mcsema_real_eip !126
  store i1 %677, i1* %CF, !mcsema_real_eip !126
  %678 = zext i32 %659 to i64, !mcsema_real_eip !126
  store i64 %678, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.164 = load i32, i32* %EAX.16, !mcsema_real_eip !127
  store i32 %EAX_val.164, i32* %654, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x201:                                      ; preds = %187
  %_load_rbp_ptr_164 = load i8*, i8** %_RBP_ptr_
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_164, i64 -8
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %679 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !129
  %680 = inttoptr i64 %679 to i32*, !mcsema_real_eip !129
  %_ptr_bt_628 = bitcast i32* %680 to i8*
  %_offset_above_rbp_629 = sub i64 %679, %_local_end_to_int_
  %_pot_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_629
  %_cond1_631 = icmp ugt i8* %_ptr_bt_628, %_local_stack_end_ptr_
  %_cond2_1_632 = icmp ugt i8* %_ptr_bt_628, %_parent_stack_end_ptr_
  %_cond2_2_633 = icmp ult i8* %_ptr_bt_628, %_parent_stack_start_ptr_
  %_cond2_634 = or i1 %_cond2_1_632, %_cond2_2_633
  %_cond4_635 = icmp ule i8* %_pot_address_in_parent_stack_630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_636 = and i1 %_cond1_631, %_cond2_634
  %_cond1_n_cond2_cond3_637 = and i1 %_cond1_n_cond2_636, %_cond4_635
  br i1 %_cond1_n_cond2_cond3_637, label %681, label %682

; <label>:681:                                    ; preds = %block_0x201
  %_address_in_parent_stack_bt_639 = bitcast i8* %_pot_address_in_parent_stack_630 to i32*
  br label %682

; <label>:682:                                    ; preds = %block_0x201, %681
  %683 = phi i32* [ %680, %block_0x201 ], [ %_address_in_parent_stack_bt_639, %681 ]
  %_new_load_640 = load i32, i32* %683
  %684 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !129
  store i64 %684, i64* %XAX, !mcsema_real_eip !129
  %EAX_val.167 = load i32, i32* %EAX.16, !mcsema_real_eip !130
  %685 = add i32 19, %EAX_val.167, !mcsema_real_eip !130
  %686 = xor i32 %685, %EAX_val.167, !mcsema_real_eip !130
  %687 = xor i32 %686, 19, !mcsema_real_eip !130
  %688 = and i32 %687, 16, !mcsema_real_eip !130
  %689 = icmp ne i32 %688, 0, !mcsema_real_eip !130
  store i1 %689, i1* %AF, !mcsema_real_eip !130
  %690 = lshr i32 %685, 31, !mcsema_real_eip !130
  %691 = trunc i32 %690 to i1, !mcsema_real_eip !130
  store i1 %691, i1* %SF, !mcsema_real_eip !130
  %692 = icmp eq i32 %685, 0, !mcsema_real_eip !130
  store i1 %692, i1* %ZF, !mcsema_real_eip !130
  %693 = xor i32 %EAX_val.167, 19, !mcsema_real_eip !130
  %694 = xor i32 %693, -1, !mcsema_real_eip !130
  %695 = and i32 %694, %686, !mcsema_real_eip !130
  %696 = lshr i32 %695, 31, !mcsema_real_eip !130
  %697 = and i32 %696, 1, !mcsema_real_eip !130
  %698 = trunc i32 %697 to i1, !mcsema_real_eip !130
  store i1 %698, i1* %OF, !mcsema_real_eip !130
  %699 = trunc i32 %685 to i8, !mcsema_real_eip !130
  %700 = call i8 @llvm.ctpop.i8(i8 %699), !mcsema_real_eip !130
  %701 = trunc i8 %700 to i1, !mcsema_real_eip !130
  %702 = xor i1 %701, true, !mcsema_real_eip !130
  store i1 %702, i1* %PF, !mcsema_real_eip !130
  %703 = icmp ult i32 %685, %EAX_val.167, !mcsema_real_eip !130
  store i1 %703, i1* %CF, !mcsema_real_eip !130
  %704 = zext i32 %685 to i64, !mcsema_real_eip !130
  store i64 %704, i64* %XAX, !mcsema_real_eip !130
  %EAX_val.170 = load i32, i32* %EAX.16, !mcsema_real_eip !131
  store i32 %EAX_val.170, i32* %680, !mcsema_real_eip !131
  br label %block_0x2c8, !mcsema_real_eip !132

block_0x20f:                                      ; preds = %214
  %_load_rbp_ptr_170 = load i8*, i8** %_RBP_ptr_
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -8
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %705 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !133
  %706 = inttoptr i64 %705 to i32*, !mcsema_real_eip !133
  %_ptr_bt_643 = bitcast i32* %706 to i8*
  %_offset_above_rbp_644 = sub i64 %705, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %_ptr_bt_643, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %_ptr_bt_643, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %_ptr_bt_643, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  br i1 %_cond1_n_cond2_cond3_652, label %707, label %708

; <label>:707:                                    ; preds = %block_0x20f
  %_address_in_parent_stack_bt_654 = bitcast i8* %_pot_address_in_parent_stack_645 to i32*
  br label %708

; <label>:708:                                    ; preds = %block_0x20f, %707
  %709 = phi i32* [ %706, %block_0x20f ], [ %_address_in_parent_stack_bt_654, %707 ]
  %_new_load_655 = load i32, i32* %709
  %710 = zext i32 %_new_load_655 to i64, !mcsema_real_eip !133
  store i64 %710, i64* %XAX, !mcsema_real_eip !133
  %EAX_val.173 = load i32, i32* %EAX.16, !mcsema_real_eip !134
  %711 = add i32 255, %EAX_val.173, !mcsema_real_eip !134
  %712 = xor i32 %711, %EAX_val.173, !mcsema_real_eip !134
  %713 = xor i32 %712, 255, !mcsema_real_eip !134
  %714 = and i32 %713, 16, !mcsema_real_eip !134
  %715 = icmp ne i32 %714, 0, !mcsema_real_eip !134
  store i1 %715, i1* %AF, !mcsema_real_eip !134
  %716 = lshr i32 %711, 31, !mcsema_real_eip !134
  %717 = trunc i32 %716 to i1, !mcsema_real_eip !134
  store i1 %717, i1* %SF, !mcsema_real_eip !134
  %718 = icmp eq i32 %711, 0, !mcsema_real_eip !134
  store i1 %718, i1* %ZF, !mcsema_real_eip !134
  %719 = xor i32 %EAX_val.173, 255, !mcsema_real_eip !134
  %720 = xor i32 %719, -1, !mcsema_real_eip !134
  %721 = and i32 %720, %712, !mcsema_real_eip !134
  %722 = lshr i32 %721, 31, !mcsema_real_eip !134
  %723 = and i32 %722, 1, !mcsema_real_eip !134
  %724 = trunc i32 %723 to i1, !mcsema_real_eip !134
  store i1 %724, i1* %OF, !mcsema_real_eip !134
  %725 = trunc i32 %711 to i8, !mcsema_real_eip !134
  %726 = call i8 @llvm.ctpop.i8(i8 %725), !mcsema_real_eip !134
  %727 = trunc i8 %726 to i1, !mcsema_real_eip !134
  %728 = xor i1 %727, true, !mcsema_real_eip !134
  store i1 %728, i1* %PF, !mcsema_real_eip !134
  %729 = icmp ult i32 %711, %EAX_val.173, !mcsema_real_eip !134
  store i1 %729, i1* %CF, !mcsema_real_eip !134
  %730 = zext i32 %711 to i64, !mcsema_real_eip !134
  store i64 %730, i64* %XAX, !mcsema_real_eip !134
  %EAX_val.176 = load i32, i32* %EAX.16, !mcsema_real_eip !135
  store i32 %EAX_val.176, i32* %706, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x21f:                                      ; preds = %241
  %_load_rbp_ptr_176 = load i8*, i8** %_RBP_ptr_
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_176, i64 -8
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %731 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !137
  %732 = inttoptr i64 %731 to i32*, !mcsema_real_eip !137
  %_ptr_bt_658 = bitcast i32* %732 to i8*
  %_offset_above_rbp_659 = sub i64 %731, %_local_end_to_int_
  %_pot_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_659
  %_cond1_661 = icmp ugt i8* %_ptr_bt_658, %_local_stack_end_ptr_
  %_cond2_1_662 = icmp ugt i8* %_ptr_bt_658, %_parent_stack_end_ptr_
  %_cond2_2_663 = icmp ult i8* %_ptr_bt_658, %_parent_stack_start_ptr_
  %_cond2_664 = or i1 %_cond2_1_662, %_cond2_2_663
  %_cond4_665 = icmp ule i8* %_pot_address_in_parent_stack_660, %_parent_stack_end_ptr_
  %_cond1_n_cond2_666 = and i1 %_cond1_661, %_cond2_664
  %_cond1_n_cond2_cond3_667 = and i1 %_cond1_n_cond2_666, %_cond4_665
  br i1 %_cond1_n_cond2_cond3_667, label %733, label %734

; <label>:733:                                    ; preds = %block_0x21f
  %_address_in_parent_stack_bt_669 = bitcast i8* %_pot_address_in_parent_stack_660 to i32*
  br label %734

; <label>:734:                                    ; preds = %block_0x21f, %733
  %735 = phi i32* [ %732, %block_0x21f ], [ %_address_in_parent_stack_bt_669, %733 ]
  %_new_load_670 = load i32, i32* %735
  %736 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !137
  store i64 %736, i64* %XAX, !mcsema_real_eip !137
  %EAX_val.179 = load i32, i32* %EAX.16, !mcsema_real_eip !138
  %737 = add i32 74633, %EAX_val.179, !mcsema_real_eip !138
  %738 = xor i32 %737, %EAX_val.179, !mcsema_real_eip !138
  %739 = xor i32 %738, 74633, !mcsema_real_eip !138
  %740 = and i32 %739, 16, !mcsema_real_eip !138
  %741 = icmp ne i32 %740, 0, !mcsema_real_eip !138
  store i1 %741, i1* %AF, !mcsema_real_eip !138
  %742 = lshr i32 %737, 31, !mcsema_real_eip !138
  %743 = trunc i32 %742 to i1, !mcsema_real_eip !138
  store i1 %743, i1* %SF, !mcsema_real_eip !138
  %744 = icmp eq i32 %737, 0, !mcsema_real_eip !138
  store i1 %744, i1* %ZF, !mcsema_real_eip !138
  %745 = xor i32 %EAX_val.179, 74633, !mcsema_real_eip !138
  %746 = xor i32 %745, -1, !mcsema_real_eip !138
  %747 = and i32 %746, %738, !mcsema_real_eip !138
  %748 = lshr i32 %747, 31, !mcsema_real_eip !138
  %749 = and i32 %748, 1, !mcsema_real_eip !138
  %750 = trunc i32 %749 to i1, !mcsema_real_eip !138
  store i1 %750, i1* %OF, !mcsema_real_eip !138
  %751 = trunc i32 %737 to i8, !mcsema_real_eip !138
  %752 = call i8 @llvm.ctpop.i8(i8 %751), !mcsema_real_eip !138
  %753 = trunc i8 %752 to i1, !mcsema_real_eip !138
  %754 = xor i1 %753, true, !mcsema_real_eip !138
  store i1 %754, i1* %PF, !mcsema_real_eip !138
  %755 = icmp ult i32 %737, %EAX_val.179, !mcsema_real_eip !138
  store i1 %755, i1* %CF, !mcsema_real_eip !138
  %756 = zext i32 %737 to i64, !mcsema_real_eip !138
  store i64 %756, i64* %XAX, !mcsema_real_eip !138
  %EAX_val.182 = load i32, i32* %EAX.16, !mcsema_real_eip !139
  store i32 %EAX_val.182, i32* %732, !mcsema_real_eip !139
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x22f:                                      ; preds = %268
  %_load_rbp_ptr_182 = load i8*, i8** %_RBP_ptr_
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_182, i64 -8
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %757 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !141
  %758 = inttoptr i64 %757 to i32*, !mcsema_real_eip !141
  %_ptr_bt_673 = bitcast i32* %758 to i8*
  %_offset_above_rbp_674 = sub i64 %757, %_local_end_to_int_
  %_pot_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_674
  %_cond1_676 = icmp ugt i8* %_ptr_bt_673, %_local_stack_end_ptr_
  %_cond2_1_677 = icmp ugt i8* %_ptr_bt_673, %_parent_stack_end_ptr_
  %_cond2_2_678 = icmp ult i8* %_ptr_bt_673, %_parent_stack_start_ptr_
  %_cond2_679 = or i1 %_cond2_1_677, %_cond2_2_678
  %_cond4_680 = icmp ule i8* %_pot_address_in_parent_stack_675, %_parent_stack_end_ptr_
  %_cond1_n_cond2_681 = and i1 %_cond1_676, %_cond2_679
  %_cond1_n_cond2_cond3_682 = and i1 %_cond1_n_cond2_681, %_cond4_680
  br i1 %_cond1_n_cond2_cond3_682, label %759, label %760

; <label>:759:                                    ; preds = %block_0x22f
  %_address_in_parent_stack_bt_684 = bitcast i8* %_pot_address_in_parent_stack_675 to i32*
  br label %760

; <label>:760:                                    ; preds = %block_0x22f, %759
  %761 = phi i32* [ %758, %block_0x22f ], [ %_address_in_parent_stack_bt_684, %759 ]
  %_new_load_685 = load i32, i32* %761
  %762 = zext i32 %_new_load_685 to i64, !mcsema_real_eip !141
  store i64 %762, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.185 = load i32, i32* %EAX.16, !mcsema_real_eip !142
  %763 = add i32 74634, %EAX_val.185, !mcsema_real_eip !142
  %764 = xor i32 %763, %EAX_val.185, !mcsema_real_eip !142
  %765 = xor i32 %764, 74634, !mcsema_real_eip !142
  %766 = and i32 %765, 16, !mcsema_real_eip !142
  %767 = icmp ne i32 %766, 0, !mcsema_real_eip !142
  store i1 %767, i1* %AF, !mcsema_real_eip !142
  %768 = lshr i32 %763, 31, !mcsema_real_eip !142
  %769 = trunc i32 %768 to i1, !mcsema_real_eip !142
  store i1 %769, i1* %SF, !mcsema_real_eip !142
  %770 = icmp eq i32 %763, 0, !mcsema_real_eip !142
  store i1 %770, i1* %ZF, !mcsema_real_eip !142
  %771 = xor i32 %EAX_val.185, 74634, !mcsema_real_eip !142
  %772 = xor i32 %771, -1, !mcsema_real_eip !142
  %773 = and i32 %772, %764, !mcsema_real_eip !142
  %774 = lshr i32 %773, 31, !mcsema_real_eip !142
  %775 = and i32 %774, 1, !mcsema_real_eip !142
  %776 = trunc i32 %775 to i1, !mcsema_real_eip !142
  store i1 %776, i1* %OF, !mcsema_real_eip !142
  %777 = trunc i32 %763 to i8, !mcsema_real_eip !142
  %778 = call i8 @llvm.ctpop.i8(i8 %777), !mcsema_real_eip !142
  %779 = trunc i8 %778 to i1, !mcsema_real_eip !142
  %780 = xor i1 %779, true, !mcsema_real_eip !142
  store i1 %780, i1* %PF, !mcsema_real_eip !142
  %781 = icmp ult i32 %763, %EAX_val.185, !mcsema_real_eip !142
  store i1 %781, i1* %CF, !mcsema_real_eip !142
  %782 = zext i32 %763 to i64, !mcsema_real_eip !142
  store i64 %782, i64* %XAX, !mcsema_real_eip !142
  %EAX_val.188 = load i32, i32* %EAX.16, !mcsema_real_eip !143
  store i32 %EAX_val.188, i32* %758, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x23f:                                      ; preds = %295
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -8
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %783 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !145
  %784 = inttoptr i64 %783 to i32*, !mcsema_real_eip !145
  %_ptr_bt_688 = bitcast i32* %784 to i8*
  %_offset_above_rbp_689 = sub i64 %783, %_local_end_to_int_
  %_pot_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_689
  %_cond1_691 = icmp ugt i8* %_ptr_bt_688, %_local_stack_end_ptr_
  %_cond2_1_692 = icmp ugt i8* %_ptr_bt_688, %_parent_stack_end_ptr_
  %_cond2_2_693 = icmp ult i8* %_ptr_bt_688, %_parent_stack_start_ptr_
  %_cond2_694 = or i1 %_cond2_1_692, %_cond2_2_693
  %_cond4_695 = icmp ule i8* %_pot_address_in_parent_stack_690, %_parent_stack_end_ptr_
  %_cond1_n_cond2_696 = and i1 %_cond1_691, %_cond2_694
  %_cond1_n_cond2_cond3_697 = and i1 %_cond1_n_cond2_696, %_cond4_695
  br i1 %_cond1_n_cond2_cond3_697, label %785, label %786

; <label>:785:                                    ; preds = %block_0x23f
  %_address_in_parent_stack_bt_699 = bitcast i8* %_pot_address_in_parent_stack_690 to i32*
  br label %786

; <label>:786:                                    ; preds = %block_0x23f, %785
  %787 = phi i32* [ %784, %block_0x23f ], [ %_address_in_parent_stack_bt_699, %785 ]
  %_new_load_700 = load i32, i32* %787
  %788 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !145
  store i64 %788, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.191 = load i32, i32* %EAX.16, !mcsema_real_eip !146
  %789 = add i32 74635, %EAX_val.191, !mcsema_real_eip !146
  %790 = xor i32 %789, %EAX_val.191, !mcsema_real_eip !146
  %791 = xor i32 %790, 74635, !mcsema_real_eip !146
  %792 = and i32 %791, 16, !mcsema_real_eip !146
  %793 = icmp ne i32 %792, 0, !mcsema_real_eip !146
  store i1 %793, i1* %AF, !mcsema_real_eip !146
  %794 = lshr i32 %789, 31, !mcsema_real_eip !146
  %795 = trunc i32 %794 to i1, !mcsema_real_eip !146
  store i1 %795, i1* %SF, !mcsema_real_eip !146
  %796 = icmp eq i32 %789, 0, !mcsema_real_eip !146
  store i1 %796, i1* %ZF, !mcsema_real_eip !146
  %797 = xor i32 %EAX_val.191, 74635, !mcsema_real_eip !146
  %798 = xor i32 %797, -1, !mcsema_real_eip !146
  %799 = and i32 %798, %790, !mcsema_real_eip !146
  %800 = lshr i32 %799, 31, !mcsema_real_eip !146
  %801 = and i32 %800, 1, !mcsema_real_eip !146
  %802 = trunc i32 %801 to i1, !mcsema_real_eip !146
  store i1 %802, i1* %OF, !mcsema_real_eip !146
  %803 = trunc i32 %789 to i8, !mcsema_real_eip !146
  %804 = call i8 @llvm.ctpop.i8(i8 %803), !mcsema_real_eip !146
  %805 = trunc i8 %804 to i1, !mcsema_real_eip !146
  %806 = xor i1 %805, true, !mcsema_real_eip !146
  store i1 %806, i1* %PF, !mcsema_real_eip !146
  %807 = icmp ult i32 %789, %EAX_val.191, !mcsema_real_eip !146
  store i1 %807, i1* %CF, !mcsema_real_eip !146
  %808 = zext i32 %789 to i64, !mcsema_real_eip !146
  store i64 %808, i64* %XAX, !mcsema_real_eip !146
  %EAX_val.194 = load i32, i32* %EAX.16, !mcsema_real_eip !147
  store i32 %EAX_val.194, i32* %784, !mcsema_real_eip !147
  br label %block_0x2c8, !mcsema_real_eip !148

block_0x24f:                                      ; preds = %322
  %_load_rbp_ptr_194 = load i8*, i8** %_RBP_ptr_
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_194, i64 -8
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %809 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !149
  %810 = inttoptr i64 %809 to i32*, !mcsema_real_eip !149
  %_ptr_bt_703 = bitcast i32* %810 to i8*
  %_offset_above_rbp_704 = sub i64 %809, %_local_end_to_int_
  %_pot_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_704
  %_cond1_706 = icmp ugt i8* %_ptr_bt_703, %_local_stack_end_ptr_
  %_cond2_1_707 = icmp ugt i8* %_ptr_bt_703, %_parent_stack_end_ptr_
  %_cond2_2_708 = icmp ult i8* %_ptr_bt_703, %_parent_stack_start_ptr_
  %_cond2_709 = or i1 %_cond2_1_707, %_cond2_2_708
  %_cond4_710 = icmp ule i8* %_pot_address_in_parent_stack_705, %_parent_stack_end_ptr_
  %_cond1_n_cond2_711 = and i1 %_cond1_706, %_cond2_709
  %_cond1_n_cond2_cond3_712 = and i1 %_cond1_n_cond2_711, %_cond4_710
  br i1 %_cond1_n_cond2_cond3_712, label %811, label %812

; <label>:811:                                    ; preds = %block_0x24f
  %_address_in_parent_stack_bt_714 = bitcast i8* %_pot_address_in_parent_stack_705 to i32*
  br label %812

; <label>:812:                                    ; preds = %block_0x24f, %811
  %813 = phi i32* [ %810, %block_0x24f ], [ %_address_in_parent_stack_bt_714, %811 ]
  %_new_load_715 = load i32, i32* %813
  %814 = zext i32 %_new_load_715 to i64, !mcsema_real_eip !149
  store i64 %814, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.197 = load i32, i32* %EAX.16, !mcsema_real_eip !150
  %815 = add i32 74636, %EAX_val.197, !mcsema_real_eip !150
  %816 = xor i32 %815, %EAX_val.197, !mcsema_real_eip !150
  %817 = xor i32 %816, 74636, !mcsema_real_eip !150
  %818 = and i32 %817, 16, !mcsema_real_eip !150
  %819 = icmp ne i32 %818, 0, !mcsema_real_eip !150
  store i1 %819, i1* %AF, !mcsema_real_eip !150
  %820 = lshr i32 %815, 31, !mcsema_real_eip !150
  %821 = trunc i32 %820 to i1, !mcsema_real_eip !150
  store i1 %821, i1* %SF, !mcsema_real_eip !150
  %822 = icmp eq i32 %815, 0, !mcsema_real_eip !150
  store i1 %822, i1* %ZF, !mcsema_real_eip !150
  %823 = xor i32 %EAX_val.197, 74636, !mcsema_real_eip !150
  %824 = xor i32 %823, -1, !mcsema_real_eip !150
  %825 = and i32 %824, %816, !mcsema_real_eip !150
  %826 = lshr i32 %825, 31, !mcsema_real_eip !150
  %827 = and i32 %826, 1, !mcsema_real_eip !150
  %828 = trunc i32 %827 to i1, !mcsema_real_eip !150
  store i1 %828, i1* %OF, !mcsema_real_eip !150
  %829 = trunc i32 %815 to i8, !mcsema_real_eip !150
  %830 = call i8 @llvm.ctpop.i8(i8 %829), !mcsema_real_eip !150
  %831 = trunc i8 %830 to i1, !mcsema_real_eip !150
  %832 = xor i1 %831, true, !mcsema_real_eip !150
  store i1 %832, i1* %PF, !mcsema_real_eip !150
  %833 = icmp ult i32 %815, %EAX_val.197, !mcsema_real_eip !150
  store i1 %833, i1* %CF, !mcsema_real_eip !150
  %834 = zext i32 %815 to i64, !mcsema_real_eip !150
  store i64 %834, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.200 = load i32, i32* %EAX.16, !mcsema_real_eip !151
  store i32 %EAX_val.200, i32* %810, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x25f:                                      ; preds = %349
  %_load_rbp_ptr_200 = load i8*, i8** %_RBP_ptr_
  %_new_gep_201 = getelementptr i8, i8* %_load_rbp_ptr_200, i64 -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  %835 = ptrtoint i64* %_allin_new_bt_202 to i64, !mcsema_real_eip !153
  %836 = inttoptr i64 %835 to i32*, !mcsema_real_eip !153
  %_ptr_bt_718 = bitcast i32* %836 to i8*
  %_offset_above_rbp_719 = sub i64 %835, %_local_end_to_int_
  %_pot_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_719
  %_cond1_721 = icmp ugt i8* %_ptr_bt_718, %_local_stack_end_ptr_
  %_cond2_1_722 = icmp ugt i8* %_ptr_bt_718, %_parent_stack_end_ptr_
  %_cond2_2_723 = icmp ult i8* %_ptr_bt_718, %_parent_stack_start_ptr_
  %_cond2_724 = or i1 %_cond2_1_722, %_cond2_2_723
  %_cond4_725 = icmp ule i8* %_pot_address_in_parent_stack_720, %_parent_stack_end_ptr_
  %_cond1_n_cond2_726 = and i1 %_cond1_721, %_cond2_724
  %_cond1_n_cond2_cond3_727 = and i1 %_cond1_n_cond2_726, %_cond4_725
  br i1 %_cond1_n_cond2_cond3_727, label %837, label %838

; <label>:837:                                    ; preds = %block_0x25f
  %_address_in_parent_stack_bt_729 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %838

; <label>:838:                                    ; preds = %block_0x25f, %837
  %839 = phi i32* [ %836, %block_0x25f ], [ %_address_in_parent_stack_bt_729, %837 ]
  %_new_load_730 = load i32, i32* %839
  %840 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !153
  store i64 %840, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.203 = load i32, i32* %EAX.16, !mcsema_real_eip !154
  %841 = add i32 74637, %EAX_val.203, !mcsema_real_eip !154
  %842 = xor i32 %841, %EAX_val.203, !mcsema_real_eip !154
  %843 = xor i32 %842, 74637, !mcsema_real_eip !154
  %844 = and i32 %843, 16, !mcsema_real_eip !154
  %845 = icmp ne i32 %844, 0, !mcsema_real_eip !154
  store i1 %845, i1* %AF, !mcsema_real_eip !154
  %846 = lshr i32 %841, 31, !mcsema_real_eip !154
  %847 = trunc i32 %846 to i1, !mcsema_real_eip !154
  store i1 %847, i1* %SF, !mcsema_real_eip !154
  %848 = icmp eq i32 %841, 0, !mcsema_real_eip !154
  store i1 %848, i1* %ZF, !mcsema_real_eip !154
  %849 = xor i32 %EAX_val.203, 74637, !mcsema_real_eip !154
  %850 = xor i32 %849, -1, !mcsema_real_eip !154
  %851 = and i32 %850, %842, !mcsema_real_eip !154
  %852 = lshr i32 %851, 31, !mcsema_real_eip !154
  %853 = and i32 %852, 1, !mcsema_real_eip !154
  %854 = trunc i32 %853 to i1, !mcsema_real_eip !154
  store i1 %854, i1* %OF, !mcsema_real_eip !154
  %855 = trunc i32 %841 to i8, !mcsema_real_eip !154
  %856 = call i8 @llvm.ctpop.i8(i8 %855), !mcsema_real_eip !154
  %857 = trunc i8 %856 to i1, !mcsema_real_eip !154
  %858 = xor i1 %857, true, !mcsema_real_eip !154
  store i1 %858, i1* %PF, !mcsema_real_eip !154
  %859 = icmp ult i32 %841, %EAX_val.203, !mcsema_real_eip !154
  store i1 %859, i1* %CF, !mcsema_real_eip !154
  %860 = zext i32 %841 to i64, !mcsema_real_eip !154
  store i64 %860, i64* %XAX, !mcsema_real_eip !154
  %EAX_val.206 = load i32, i32* %EAX.16, !mcsema_real_eip !155
  store i32 %EAX_val.206, i32* %836, !mcsema_real_eip !155
  br label %block_0x2c8, !mcsema_real_eip !156

block_0x26f:                                      ; preds = %376
  %_load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_
  %_new_gep_207 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -8
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %861 = ptrtoint i64* %_allin_new_bt_208 to i64, !mcsema_real_eip !157
  %862 = inttoptr i64 %861 to i32*, !mcsema_real_eip !157
  %_ptr_bt_733 = bitcast i32* %862 to i8*
  %_offset_above_rbp_734 = sub i64 %861, %_local_end_to_int_
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ugt i8* %_ptr_bt_733, %_local_stack_end_ptr_
  %_cond2_1_737 = icmp ugt i8* %_ptr_bt_733, %_parent_stack_end_ptr_
  %_cond2_2_738 = icmp ult i8* %_ptr_bt_733, %_parent_stack_start_ptr_
  %_cond2_739 = or i1 %_cond2_1_737, %_cond2_2_738
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond1_736, %_cond2_739
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  br i1 %_cond1_n_cond2_cond3_742, label %863, label %864

; <label>:863:                                    ; preds = %block_0x26f
  %_address_in_parent_stack_bt_744 = bitcast i8* %_pot_address_in_parent_stack_735 to i32*
  br label %864

; <label>:864:                                    ; preds = %block_0x26f, %863
  %865 = phi i32* [ %862, %block_0x26f ], [ %_address_in_parent_stack_bt_744, %863 ]
  %_new_load_745 = load i32, i32* %865
  %866 = zext i32 %_new_load_745 to i64, !mcsema_real_eip !157
  store i64 %866, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.209 = load i32, i32* %EAX.16, !mcsema_real_eip !158
  %867 = add i32 74639, %EAX_val.209, !mcsema_real_eip !158
  %868 = xor i32 %867, %EAX_val.209, !mcsema_real_eip !158
  %869 = xor i32 %868, 74639, !mcsema_real_eip !158
  %870 = and i32 %869, 16, !mcsema_real_eip !158
  %871 = icmp ne i32 %870, 0, !mcsema_real_eip !158
  store i1 %871, i1* %AF, !mcsema_real_eip !158
  %872 = lshr i32 %867, 31, !mcsema_real_eip !158
  %873 = trunc i32 %872 to i1, !mcsema_real_eip !158
  store i1 %873, i1* %SF, !mcsema_real_eip !158
  %874 = icmp eq i32 %867, 0, !mcsema_real_eip !158
  store i1 %874, i1* %ZF, !mcsema_real_eip !158
  %875 = xor i32 %EAX_val.209, 74639, !mcsema_real_eip !158
  %876 = xor i32 %875, -1, !mcsema_real_eip !158
  %877 = and i32 %876, %868, !mcsema_real_eip !158
  %878 = lshr i32 %877, 31, !mcsema_real_eip !158
  %879 = and i32 %878, 1, !mcsema_real_eip !158
  %880 = trunc i32 %879 to i1, !mcsema_real_eip !158
  store i1 %880, i1* %OF, !mcsema_real_eip !158
  %881 = trunc i32 %867 to i8, !mcsema_real_eip !158
  %882 = call i8 @llvm.ctpop.i8(i8 %881), !mcsema_real_eip !158
  %883 = trunc i8 %882 to i1, !mcsema_real_eip !158
  %884 = xor i1 %883, true, !mcsema_real_eip !158
  store i1 %884, i1* %PF, !mcsema_real_eip !158
  %885 = icmp ult i32 %867, %EAX_val.209, !mcsema_real_eip !158
  store i1 %885, i1* %CF, !mcsema_real_eip !158
  %886 = zext i32 %867 to i64, !mcsema_real_eip !158
  store i64 %886, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.16, !mcsema_real_eip !159
  store i32 %EAX_val.212, i32* %862, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x27f:                                      ; preds = %403
  %_load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_212, i64 -8
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %887 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !161
  %888 = inttoptr i64 %887 to i32*, !mcsema_real_eip !161
  %_ptr_bt_748 = bitcast i32* %888 to i8*
  %_offset_above_rbp_749 = sub i64 %887, %_local_end_to_int_
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_ptr_bt_748, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_ptr_bt_748, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_ptr_bt_748, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond1_n_cond2_756, %_cond4_755
  br i1 %_cond1_n_cond2_cond3_757, label %889, label %890

; <label>:889:                                    ; preds = %block_0x27f
  %_address_in_parent_stack_bt_759 = bitcast i8* %_pot_address_in_parent_stack_750 to i32*
  br label %890

; <label>:890:                                    ; preds = %block_0x27f, %889
  %891 = phi i32* [ %888, %block_0x27f ], [ %_address_in_parent_stack_bt_759, %889 ]
  %_new_load_760 = load i32, i32* %891
  %892 = zext i32 %_new_load_760 to i64, !mcsema_real_eip !161
  store i64 %892, i64* %XAX, !mcsema_real_eip !161
  %EAX_val.215 = load i32, i32* %EAX.16, !mcsema_real_eip !162
  %893 = add i32 74640, %EAX_val.215, !mcsema_real_eip !162
  %894 = xor i32 %893, %EAX_val.215, !mcsema_real_eip !162
  %895 = xor i32 %894, 74640, !mcsema_real_eip !162
  %896 = and i32 %895, 16, !mcsema_real_eip !162
  %897 = icmp ne i32 %896, 0, !mcsema_real_eip !162
  store i1 %897, i1* %AF, !mcsema_real_eip !162
  %898 = lshr i32 %893, 31, !mcsema_real_eip !162
  %899 = trunc i32 %898 to i1, !mcsema_real_eip !162
  store i1 %899, i1* %SF, !mcsema_real_eip !162
  %900 = icmp eq i32 %893, 0, !mcsema_real_eip !162
  store i1 %900, i1* %ZF, !mcsema_real_eip !162
  %901 = xor i32 %EAX_val.215, 74640, !mcsema_real_eip !162
  %902 = xor i32 %901, -1, !mcsema_real_eip !162
  %903 = and i32 %902, %894, !mcsema_real_eip !162
  %904 = lshr i32 %903, 31, !mcsema_real_eip !162
  %905 = and i32 %904, 1, !mcsema_real_eip !162
  %906 = trunc i32 %905 to i1, !mcsema_real_eip !162
  store i1 %906, i1* %OF, !mcsema_real_eip !162
  %907 = trunc i32 %893 to i8, !mcsema_real_eip !162
  %908 = call i8 @llvm.ctpop.i8(i8 %907), !mcsema_real_eip !162
  %909 = trunc i8 %908 to i1, !mcsema_real_eip !162
  %910 = xor i1 %909, true, !mcsema_real_eip !162
  store i1 %910, i1* %PF, !mcsema_real_eip !162
  %911 = icmp ult i32 %893, %EAX_val.215, !mcsema_real_eip !162
  store i1 %911, i1* %CF, !mcsema_real_eip !162
  %912 = zext i32 %893 to i64, !mcsema_real_eip !162
  store i64 %912, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.16, !mcsema_real_eip !163
  store i32 %EAX_val.218, i32* %888, !mcsema_real_eip !163
  br label %block_0x2c8, !mcsema_real_eip !164

block_0x28f:                                      ; preds = %430
  %_load_rbp_ptr_218 = load i8*, i8** %_RBP_ptr_
  %_new_gep_219 = getelementptr i8, i8* %_load_rbp_ptr_218, i64 -8
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  %913 = ptrtoint i64* %_allin_new_bt_220 to i64, !mcsema_real_eip !165
  %914 = inttoptr i64 %913 to i32*, !mcsema_real_eip !165
  %_ptr_bt_763 = bitcast i32* %914 to i8*
  %_offset_above_rbp_764 = sub i64 %913, %_local_end_to_int_
  %_pot_address_in_parent_stack_765 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_764
  %_cond1_766 = icmp ugt i8* %_ptr_bt_763, %_local_stack_end_ptr_
  %_cond2_1_767 = icmp ugt i8* %_ptr_bt_763, %_parent_stack_end_ptr_
  %_cond2_2_768 = icmp ult i8* %_ptr_bt_763, %_parent_stack_start_ptr_
  %_cond2_769 = or i1 %_cond2_1_767, %_cond2_2_768
  %_cond4_770 = icmp ule i8* %_pot_address_in_parent_stack_765, %_parent_stack_end_ptr_
  %_cond1_n_cond2_771 = and i1 %_cond1_766, %_cond2_769
  %_cond1_n_cond2_cond3_772 = and i1 %_cond1_n_cond2_771, %_cond4_770
  br i1 %_cond1_n_cond2_cond3_772, label %915, label %916

; <label>:915:                                    ; preds = %block_0x28f
  %_address_in_parent_stack_bt_774 = bitcast i8* %_pot_address_in_parent_stack_765 to i32*
  br label %916

; <label>:916:                                    ; preds = %block_0x28f, %915
  %917 = phi i32* [ %914, %block_0x28f ], [ %_address_in_parent_stack_bt_774, %915 ]
  %_new_load_775 = load i32, i32* %917
  %918 = zext i32 %_new_load_775 to i64, !mcsema_real_eip !165
  store i64 %918, i64* %XAX, !mcsema_real_eip !165
  %EAX_val.221 = load i32, i32* %EAX.16, !mcsema_real_eip !166
  %919 = add i32 74641, %EAX_val.221, !mcsema_real_eip !166
  %920 = xor i32 %919, %EAX_val.221, !mcsema_real_eip !166
  %921 = xor i32 %920, 74641, !mcsema_real_eip !166
  %922 = and i32 %921, 16, !mcsema_real_eip !166
  %923 = icmp ne i32 %922, 0, !mcsema_real_eip !166
  store i1 %923, i1* %AF, !mcsema_real_eip !166
  %924 = lshr i32 %919, 31, !mcsema_real_eip !166
  %925 = trunc i32 %924 to i1, !mcsema_real_eip !166
  store i1 %925, i1* %SF, !mcsema_real_eip !166
  %926 = icmp eq i32 %919, 0, !mcsema_real_eip !166
  store i1 %926, i1* %ZF, !mcsema_real_eip !166
  %927 = xor i32 %EAX_val.221, 74641, !mcsema_real_eip !166
  %928 = xor i32 %927, -1, !mcsema_real_eip !166
  %929 = and i32 %928, %920, !mcsema_real_eip !166
  %930 = lshr i32 %929, 31, !mcsema_real_eip !166
  %931 = and i32 %930, 1, !mcsema_real_eip !166
  %932 = trunc i32 %931 to i1, !mcsema_real_eip !166
  store i1 %932, i1* %OF, !mcsema_real_eip !166
  %933 = trunc i32 %919 to i8, !mcsema_real_eip !166
  %934 = call i8 @llvm.ctpop.i8(i8 %933), !mcsema_real_eip !166
  %935 = trunc i8 %934 to i1, !mcsema_real_eip !166
  %936 = xor i1 %935, true, !mcsema_real_eip !166
  store i1 %936, i1* %PF, !mcsema_real_eip !166
  %937 = icmp ult i32 %919, %EAX_val.221, !mcsema_real_eip !166
  store i1 %937, i1* %CF, !mcsema_real_eip !166
  %938 = zext i32 %919 to i64, !mcsema_real_eip !166
  store i64 %938, i64* %XAX, !mcsema_real_eip !166
  %EAX_val.224 = load i32, i32* %EAX.16, !mcsema_real_eip !167
  store i32 %EAX_val.224, i32* %914, !mcsema_real_eip !167
  br label %block_0x2c8, !mcsema_real_eip !168

block_0x29f:                                      ; preds = %457
  %_load_rbp_ptr_224 = load i8*, i8** %_RBP_ptr_
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -8
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %939 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !169
  %940 = inttoptr i64 %939 to i32*, !mcsema_real_eip !169
  %_ptr_bt_778 = bitcast i32* %940 to i8*
  %_offset_above_rbp_779 = sub i64 %939, %_local_end_to_int_
  %_pot_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_779
  %_cond1_781 = icmp ugt i8* %_ptr_bt_778, %_local_stack_end_ptr_
  %_cond2_1_782 = icmp ugt i8* %_ptr_bt_778, %_parent_stack_end_ptr_
  %_cond2_2_783 = icmp ult i8* %_ptr_bt_778, %_parent_stack_start_ptr_
  %_cond2_784 = or i1 %_cond2_1_782, %_cond2_2_783
  %_cond4_785 = icmp ule i8* %_pot_address_in_parent_stack_780, %_parent_stack_end_ptr_
  %_cond1_n_cond2_786 = and i1 %_cond1_781, %_cond2_784
  %_cond1_n_cond2_cond3_787 = and i1 %_cond1_n_cond2_786, %_cond4_785
  br i1 %_cond1_n_cond2_cond3_787, label %941, label %942

; <label>:941:                                    ; preds = %block_0x29f
  %_address_in_parent_stack_bt_789 = bitcast i8* %_pot_address_in_parent_stack_780 to i32*
  br label %942

; <label>:942:                                    ; preds = %block_0x29f, %941
  %943 = phi i32* [ %940, %block_0x29f ], [ %_address_in_parent_stack_bt_789, %941 ]
  %_new_load_790 = load i32, i32* %943
  %944 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !169
  store i64 %944, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.227 = load i32, i32* %EAX.16, !mcsema_real_eip !170
  %945 = add i32 74642, %EAX_val.227, !mcsema_real_eip !170
  %946 = xor i32 %945, %EAX_val.227, !mcsema_real_eip !170
  %947 = xor i32 %946, 74642, !mcsema_real_eip !170
  %948 = and i32 %947, 16, !mcsema_real_eip !170
  %949 = icmp ne i32 %948, 0, !mcsema_real_eip !170
  store i1 %949, i1* %AF, !mcsema_real_eip !170
  %950 = lshr i32 %945, 31, !mcsema_real_eip !170
  %951 = trunc i32 %950 to i1, !mcsema_real_eip !170
  store i1 %951, i1* %SF, !mcsema_real_eip !170
  %952 = icmp eq i32 %945, 0, !mcsema_real_eip !170
  store i1 %952, i1* %ZF, !mcsema_real_eip !170
  %953 = xor i32 %EAX_val.227, 74642, !mcsema_real_eip !170
  %954 = xor i32 %953, -1, !mcsema_real_eip !170
  %955 = and i32 %954, %946, !mcsema_real_eip !170
  %956 = lshr i32 %955, 31, !mcsema_real_eip !170
  %957 = and i32 %956, 1, !mcsema_real_eip !170
  %958 = trunc i32 %957 to i1, !mcsema_real_eip !170
  store i1 %958, i1* %OF, !mcsema_real_eip !170
  %959 = trunc i32 %945 to i8, !mcsema_real_eip !170
  %960 = call i8 @llvm.ctpop.i8(i8 %959), !mcsema_real_eip !170
  %961 = trunc i8 %960 to i1, !mcsema_real_eip !170
  %962 = xor i1 %961, true, !mcsema_real_eip !170
  store i1 %962, i1* %PF, !mcsema_real_eip !170
  %963 = icmp ult i32 %945, %EAX_val.227, !mcsema_real_eip !170
  store i1 %963, i1* %CF, !mcsema_real_eip !170
  %964 = zext i32 %945 to i64, !mcsema_real_eip !170
  store i64 %964, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.230 = load i32, i32* %EAX.16, !mcsema_real_eip !171
  store i32 %EAX_val.230, i32* %940, !mcsema_real_eip !171
  br label %block_0x2c8, !mcsema_real_eip !172

block_0x2af:                                      ; preds = %484
  %_load_rbp_ptr_230 = load i8*, i8** %_RBP_ptr_
  %_new_gep_231 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -8
  %_allin_new_bt_232 = bitcast i8* %_new_gep_231 to i64*
  %965 = ptrtoint i64* %_allin_new_bt_232 to i64, !mcsema_real_eip !173
  %966 = inttoptr i64 %965 to i32*, !mcsema_real_eip !173
  %_ptr_bt_793 = bitcast i32* %966 to i8*
  %_offset_above_rbp_794 = sub i64 %965, %_local_end_to_int_
  %_pot_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_794
  %_cond1_796 = icmp ugt i8* %_ptr_bt_793, %_local_stack_end_ptr_
  %_cond2_1_797 = icmp ugt i8* %_ptr_bt_793, %_parent_stack_end_ptr_
  %_cond2_2_798 = icmp ult i8* %_ptr_bt_793, %_parent_stack_start_ptr_
  %_cond2_799 = or i1 %_cond2_1_797, %_cond2_2_798
  %_cond4_800 = icmp ule i8* %_pot_address_in_parent_stack_795, %_parent_stack_end_ptr_
  %_cond1_n_cond2_801 = and i1 %_cond1_796, %_cond2_799
  %_cond1_n_cond2_cond3_802 = and i1 %_cond1_n_cond2_801, %_cond4_800
  br i1 %_cond1_n_cond2_cond3_802, label %967, label %968

; <label>:967:                                    ; preds = %block_0x2af
  %_address_in_parent_stack_bt_804 = bitcast i8* %_pot_address_in_parent_stack_795 to i32*
  br label %968

; <label>:968:                                    ; preds = %block_0x2af, %967
  %969 = phi i32* [ %966, %block_0x2af ], [ %_address_in_parent_stack_bt_804, %967 ]
  %_new_load_805 = load i32, i32* %969
  %970 = zext i32 %_new_load_805 to i64, !mcsema_real_eip !173
  store i64 %970, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.233 = load i32, i32* %EAX.16, !mcsema_real_eip !174
  %971 = add i32 74643, %EAX_val.233, !mcsema_real_eip !174
  %972 = xor i32 %971, %EAX_val.233, !mcsema_real_eip !174
  %973 = xor i32 %972, 74643, !mcsema_real_eip !174
  %974 = and i32 %973, 16, !mcsema_real_eip !174
  %975 = icmp ne i32 %974, 0, !mcsema_real_eip !174
  store i1 %975, i1* %AF, !mcsema_real_eip !174
  %976 = lshr i32 %971, 31, !mcsema_real_eip !174
  %977 = trunc i32 %976 to i1, !mcsema_real_eip !174
  store i1 %977, i1* %SF, !mcsema_real_eip !174
  %978 = icmp eq i32 %971, 0, !mcsema_real_eip !174
  store i1 %978, i1* %ZF, !mcsema_real_eip !174
  %979 = xor i32 %EAX_val.233, 74643, !mcsema_real_eip !174
  %980 = xor i32 %979, -1, !mcsema_real_eip !174
  %981 = and i32 %980, %972, !mcsema_real_eip !174
  %982 = lshr i32 %981, 31, !mcsema_real_eip !174
  %983 = and i32 %982, 1, !mcsema_real_eip !174
  %984 = trunc i32 %983 to i1, !mcsema_real_eip !174
  store i1 %984, i1* %OF, !mcsema_real_eip !174
  %985 = trunc i32 %971 to i8, !mcsema_real_eip !174
  %986 = call i8 @llvm.ctpop.i8(i8 %985), !mcsema_real_eip !174
  %987 = trunc i8 %986 to i1, !mcsema_real_eip !174
  %988 = xor i1 %987, true, !mcsema_real_eip !174
  store i1 %988, i1* %PF, !mcsema_real_eip !174
  %989 = icmp ult i32 %971, %EAX_val.233, !mcsema_real_eip !174
  store i1 %989, i1* %CF, !mcsema_real_eip !174
  %990 = zext i32 %971 to i64, !mcsema_real_eip !174
  store i64 %990, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.236 = load i32, i32* %EAX.16, !mcsema_real_eip !175
  store i32 %EAX_val.236, i32* %966, !mcsema_real_eip !175
  br label %block_0x2c8, !mcsema_real_eip !176

block_0x2bf:                                      ; preds = %block_0x19a
  %_load_rbp_ptr_236 = load i8*, i8** %_RBP_ptr_
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -8
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %991 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !177
  %992 = inttoptr i64 %991 to i32*, !mcsema_real_eip !177
  %_ptr_bt_808 = bitcast i32* %992 to i8*
  %_offset_above_rbp_809 = sub i64 %991, %_local_end_to_int_
  %_pot_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_809
  %_cond1_811 = icmp ugt i8* %_ptr_bt_808, %_local_stack_end_ptr_
  %_cond2_1_812 = icmp ugt i8* %_ptr_bt_808, %_parent_stack_end_ptr_
  %_cond2_2_813 = icmp ult i8* %_ptr_bt_808, %_parent_stack_start_ptr_
  %_cond2_814 = or i1 %_cond2_1_812, %_cond2_2_813
  %_cond4_815 = icmp ule i8* %_pot_address_in_parent_stack_810, %_parent_stack_end_ptr_
  %_cond1_n_cond2_816 = and i1 %_cond1_811, %_cond2_814
  %_cond1_n_cond2_cond3_817 = and i1 %_cond1_n_cond2_816, %_cond4_815
  br i1 %_cond1_n_cond2_cond3_817, label %993, label %994

; <label>:993:                                    ; preds = %block_0x2bf
  %_address_in_parent_stack_bt_819 = bitcast i8* %_pot_address_in_parent_stack_810 to i32*
  br label %994

; <label>:994:                                    ; preds = %block_0x2bf, %993
  %995 = phi i32* [ %992, %block_0x2bf ], [ %_address_in_parent_stack_bt_819, %993 ]
  %_new_load_820 = load i32, i32* %995
  %996 = zext i32 %_new_load_820 to i64, !mcsema_real_eip !177
  store i64 %996, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.16, !mcsema_real_eip !178
  store i1 false, i1* %AF, !mcsema_real_eip !178
  %997 = lshr i32 %EAX_val.239, 31, !mcsema_real_eip !178
  %998 = trunc i32 %997 to i1, !mcsema_real_eip !178
  store i1 %998, i1* %SF, !mcsema_real_eip !178
  %999 = icmp eq i32 %EAX_val.239, 0, !mcsema_real_eip !178
  store i1 %999, i1* %ZF, !mcsema_real_eip !178
  %1000 = xor i32 %EAX_val.239, -1, !mcsema_real_eip !178
  store i1 false, i1* %OF, !mcsema_real_eip !178
  %1001 = trunc i32 %EAX_val.239 to i8, !mcsema_real_eip !178
  %1002 = call i8 @llvm.ctpop.i8(i8 %1001), !mcsema_real_eip !178
  %1003 = trunc i8 %1002 to i1, !mcsema_real_eip !178
  %1004 = xor i1 %1003, true, !mcsema_real_eip !178
  store i1 %1004, i1* %PF, !mcsema_real_eip !178
  store i1 false, i1* %CF, !mcsema_real_eip !178
  %1005 = zext i32 %EAX_val.239 to i64, !mcsema_real_eip !178
  store i64 %1005, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.242 = load i32, i32* %EAX.16, !mcsema_real_eip !179
  store i32 %EAX_val.242, i32* %992, !mcsema_real_eip !179
  br label %block_0x2c8, !mcsema_real_eip !180

block_0x2c8:                                      ; preds = %994, %968, %942, %916, %890, %864, %838, %812, %786, %760, %734, %708, %682, %656, %630, %604, %578, %552, %526, %511
  %_load_rbp_ptr_242 = load i8*, i8** %_RBP_ptr_
  %_new_gep_243 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -8
  %_allin_new_bt_244 = bitcast i8* %_new_gep_243 to i64*
  %1006 = ptrtoint i64* %_allin_new_bt_244 to i64, !mcsema_real_eip !180
  %1007 = inttoptr i64 %1006 to i32*, !mcsema_real_eip !180
  %_ptr_bt_823 = bitcast i32* %1007 to i8*
  %_offset_above_rbp_824 = sub i64 %1006, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_ptr_bt_823, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_ptr_bt_823, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_ptr_bt_823, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  br i1 %_cond1_n_cond2_cond3_832, label %1008, label %1009

; <label>:1008:                                   ; preds = %block_0x2c8
  %_address_in_parent_stack_bt_834 = bitcast i8* %_pot_address_in_parent_stack_825 to i32*
  br label %1009

; <label>:1009:                                   ; preds = %block_0x2c8, %1008
  %1010 = phi i32* [ %1007, %block_0x2c8 ], [ %_address_in_parent_stack_bt_834, %1008 ]
  %_new_load_835 = load i32, i32* %1010
  %1011 = zext i32 %_new_load_835 to i64, !mcsema_real_eip !180
  store i64 %1011, i64* %XAX, !mcsema_real_eip !180
  %_load_rsp_ptr_245 = load i8*, i8** %_RSP_ptr_
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !181
  %_allin_new_bt_246 = bitcast i8* %_load_rsp_ptr_245 to i64*
  %_ptr_to_int_836 = ptrtoint i64* %_allin_new_bt_246 to i64
  %_offset_above_rbp_839 = sub i64 %_ptr_to_int_836, %_local_end_to_int_
  %_pot_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_839
  %_cond1_841 = icmp ugt i8* %_load_rsp_ptr_245, %_local_stack_end_ptr_
  %_cond2_1_842 = icmp ugt i8* %_load_rsp_ptr_245, %_parent_stack_end_ptr_
  %_cond2_2_843 = icmp ult i8* %_load_rsp_ptr_245, %_parent_stack_start_ptr_
  %_cond2_844 = or i1 %_cond2_1_842, %_cond2_2_843
  %_cond4_845 = icmp ule i8* %_pot_address_in_parent_stack_840, %_parent_stack_end_ptr_
  %_cond1_n_cond2_846 = and i1 %_cond1_841, %_cond2_844
  %_cond1_n_cond2_cond3_847 = and i1 %_cond1_n_cond2_846, %_cond4_845
  br i1 %_cond1_n_cond2_cond3_847, label %1012, label %1013

; <label>:1012:                                   ; preds = %1009
  %_address_in_parent_stack_bt_849 = bitcast i8* %_pot_address_in_parent_stack_840 to i64*
  br label %1013

; <label>:1013:                                   ; preds = %1009, %1012
  %1014 = phi i64* [ %_allin_new_bt_246, %1009 ], [ %_address_in_parent_stack_bt_849, %1012 ]
  %_new_load_850 = load i64, i64* %1014
  %_new_int2ptr_ = inttoptr i64 %_new_load_850 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_850, i64* %XBP, !mcsema_real_eip !181
  %_new_gep_247 = getelementptr i8, i8* %_load_rsp_ptr_245, i64 8
  %1015 = add i64 %RSP_val.244, 8, !mcsema_real_eip !181
  store volatile i8* %_new_gep_247, i8** %_RSP_ptr_
  store i64 %1015, i64* %XSP, !mcsema_real_eip !181
  %_new_gep_249 = getelementptr i8, i8* %_new_gep_247, i64 8
  %1016 = add i64 %1015, 8, !mcsema_real_eip !182
  %_allin_new_bt_250 = bitcast i8* %_new_gep_247 to i64*
  %_ptr_to_int_851 = ptrtoint i64* %_allin_new_bt_250 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_247, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_247, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_247, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  br i1 %_cond1_n_cond2_cond3_862, label %1017, label %1018

; <label>:1017:                                   ; preds = %1013
  %_address_in_parent_stack_bt_864 = bitcast i8* %_pot_address_in_parent_stack_855 to i64*
  br label %1018

; <label>:1018:                                   ; preds = %1013, %1017
  %1019 = phi i64* [ %_allin_new_bt_250, %1013 ], [ %_address_in_parent_stack_bt_864, %1017 ]
  %_new_load_865 = load i64, i64* %1019
  store i64 %_new_load_865, i64* %XIP, !mcsema_real_eip !182
  store volatile i8* %_new_gep_249, i8** %_RSP_ptr_
  store i64 %1016, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182
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
!11 = !{i64 33}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 48}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 59}
!19 = !{i64 62}
!20 = !{i64 68}
!21 = !{i64 73}
!22 = !{i64 76}
!23 = !{i64 79}
!24 = !{i64 82}
!25 = !{i64 88}
!26 = !{i64 93}
!27 = !{i64 96}
!28 = !{i64 99}
!29 = !{i64 102}
!30 = !{i64 108}
!31 = !{i64 113}
!32 = !{i64 116}
!33 = !{i64 119}
!34 = !{i64 122}
!35 = !{i64 128}
!36 = !{i64 133}
!37 = !{i64 136}
!38 = !{i64 139}
!39 = !{i64 142}
!40 = !{i64 148}
!41 = !{i64 153}
!42 = !{i64 156}
!43 = !{i64 159}
!44 = !{i64 162}
!45 = !{i64 168}
!46 = !{i64 173}
!47 = !{i64 176}
!48 = !{i64 181}
!49 = !{i64 184}
!50 = !{i64 190}
!51 = !{i64 195}
!52 = !{i64 198}
!53 = !{i64 203}
!54 = !{i64 206}
!55 = !{i64 212}
!56 = !{i64 217}
!57 = !{i64 220}
!58 = !{i64 225}
!59 = !{i64 228}
!60 = !{i64 234}
!61 = !{i64 239}
!62 = !{i64 242}
!63 = !{i64 247}
!64 = !{i64 250}
!65 = !{i64 256}
!66 = !{i64 261}
!67 = !{i64 264}
!68 = !{i64 269}
!69 = !{i64 272}
!70 = !{i64 278}
!71 = !{i64 283}
!72 = !{i64 286}
!73 = !{i64 291}
!74 = !{i64 294}
!75 = !{i64 300}
!76 = !{i64 305}
!77 = !{i64 308}
!78 = !{i64 313}
!79 = !{i64 316}
!80 = !{i64 322}
!81 = !{i64 327}
!82 = !{i64 330}
!83 = !{i64 335}
!84 = !{i64 338}
!85 = !{i64 344}
!86 = !{i64 349}
!87 = !{i64 352}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 366}
!91 = !{i64 371}
!92 = !{i64 374}
!93 = !{i64 379}
!94 = !{i64 382}
!95 = !{i64 388}
!96 = !{i64 393}
!97 = !{i64 396}
!98 = !{i64 401}
!99 = !{i64 404}
!100 = !{i64 410}
!101 = !{i64 415}
!102 = !{i64 418}
!103 = !{i64 421}
!104 = !{i64 424}
!105 = !{i64 429}
!106 = !{i64 432}
!107 = !{i64 435}
!108 = !{i64 438}
!109 = !{i64 443}
!110 = !{i64 446}
!111 = !{i64 449}
!112 = !{i64 452}
!113 = !{i64 457}
!114 = !{i64 460}
!115 = !{i64 463}
!116 = !{i64 466}
!117 = !{i64 471}
!118 = !{i64 474}
!119 = !{i64 477}
!120 = !{i64 480}
!121 = !{i64 485}
!122 = !{i64 488}
!123 = !{i64 491}
!124 = !{i64 494}
!125 = !{i64 499}
!126 = !{i64 502}
!127 = !{i64 505}
!128 = !{i64 508}
!129 = !{i64 513}
!130 = !{i64 516}
!131 = !{i64 519}
!132 = !{i64 522}
!133 = !{i64 527}
!134 = !{i64 530}
!135 = !{i64 535}
!136 = !{i64 538}
!137 = !{i64 543}
!138 = !{i64 546}
!139 = !{i64 551}
!140 = !{i64 554}
!141 = !{i64 559}
!142 = !{i64 562}
!143 = !{i64 567}
!144 = !{i64 570}
!145 = !{i64 575}
!146 = !{i64 578}
!147 = !{i64 583}
!148 = !{i64 586}
!149 = !{i64 591}
!150 = !{i64 594}
!151 = !{i64 599}
!152 = !{i64 602}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 623}
!158 = !{i64 626}
!159 = !{i64 631}
!160 = !{i64 634}
!161 = !{i64 639}
!162 = !{i64 642}
!163 = !{i64 647}
!164 = !{i64 650}
!165 = !{i64 655}
!166 = !{i64 658}
!167 = !{i64 663}
!168 = !{i64 666}
!169 = !{i64 671}
!170 = !{i64 674}
!171 = !{i64 679}
!172 = !{i64 682}
!173 = !{i64 687}
!174 = !{i64 690}
!175 = !{i64 695}
!176 = !{i64 698}
!177 = !{i64 703}
!178 = !{i64 706}
!179 = !{i64 709}
!180 = !{i64 712}
!181 = !{i64 715}
!182 = !{i64 716}
