; ModuleID = 'Output/test_5.clang.trans.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %8 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !8
  %10 = load i32, i32* %9, !mcsema_real_eip !8
  %11 = zext i32 %10 to i64, !mcsema_real_eip !8
  store i64 %11, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %12 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !9
  %14 = load i32, i32* %13, !mcsema_real_eip !9
  %15 = sub i32 %EAX_val.13, %14, !mcsema_real_eip !9
  %16 = xor i32 %15, %EAX_val.13, !mcsema_real_eip !9
  %17 = xor i32 %16, %14, !mcsema_real_eip !9
  %18 = and i32 %17, 16, !mcsema_real_eip !9
  %19 = icmp ne i32 %18, 0, !mcsema_real_eip !9
  store i1 %19, i1* %AF, !mcsema_real_eip !9
  %20 = trunc i32 %15 to i8, !mcsema_real_eip !9
  %21 = call i8 @llvm.ctpop.i8(i8 %20), !mcsema_real_eip !9
  %22 = trunc i8 %21 to i1, !mcsema_real_eip !9
  %23 = xor i1 %22, true, !mcsema_real_eip !9
  store i1 %23, i1* %PF, !mcsema_real_eip !9
  %24 = icmp eq i32 %15, 0, !mcsema_real_eip !9
  store i1 %24, i1* %ZF, !mcsema_real_eip !9
  %25 = lshr i32 %15, 31, !mcsema_real_eip !9
  %26 = trunc i32 %25 to i1, !mcsema_real_eip !9
  store i1 %26, i1* %SF, !mcsema_real_eip !9
  %27 = icmp ult i32 %EAX_val.13, %14, !mcsema_real_eip !9
  store i1 %27, i1* %CF, !mcsema_real_eip !9
  %28 = xor i32 %EAX_val.13, %14, !mcsema_real_eip !9
  %29 = and i32 %28, %16, !mcsema_real_eip !9
  %30 = lshr i32 %29, 31, !mcsema_real_eip !9
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !9
  store i1 %31, i1* %OF, !mcsema_real_eip !9
  %32 = icmp eq i1 %26, %31, !mcsema_real_eip !10
  br i1 %32, label %block_0x44, label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %33 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !11
  store i64 %33, i64* %XAX, !mcsema_real_eip !11
  %34 = load i32, i32* %9, !mcsema_real_eip !12
  %35 = sext i32 %34 to i64, !mcsema_real_eip !12
  store i64 %35, i64* %XCX, !mcsema_real_eip !12
  %36 = mul i64 %35, 4, !mcsema_real_eip !13
  %37 = add i64 %33, %36, !mcsema_real_eip !13
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !13
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !13
  %40 = load i32, i32* %39, !mcsema_real_eip !13
  %41 = zext i32 %40 to i64, !mcsema_real_eip !13
  store i64 %41, i64* %XDX, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !14
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !14
  %44 = load i32, i32* %43, !mcsema_real_eip !14
  %EDX.22 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.22, !mcsema_real_eip !14
  %45 = add i32 %EDX_val.23, %44, !mcsema_real_eip !14
  %46 = xor i32 %45, %44, !mcsema_real_eip !14
  %47 = xor i32 %46, %EDX_val.23, !mcsema_real_eip !14
  %48 = and i32 %47, 16, !mcsema_real_eip !14
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !14
  store i1 %49, i1* %AF, !mcsema_real_eip !14
  %50 = lshr i32 %45, 31, !mcsema_real_eip !14
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !14
  store i1 %51, i1* %SF, !mcsema_real_eip !14
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !14
  store i1 %52, i1* %ZF, !mcsema_real_eip !14
  %53 = xor i32 %44, %EDX_val.23, !mcsema_real_eip !14
  %54 = xor i32 %53, -1, !mcsema_real_eip !14
  %55 = and i32 %54, %46, !mcsema_real_eip !14
  %56 = lshr i32 %55, 31, !mcsema_real_eip !14
  %57 = and i32 %56, 1, !mcsema_real_eip !14
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !14
  store i1 %58, i1* %OF, !mcsema_real_eip !14
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !14
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !14
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !14
  %62 = xor i1 %61, true, !mcsema_real_eip !14
  store i1 %62, i1* %PF, !mcsema_real_eip !14
  %63 = icmp ult i32 %45, %44, !mcsema_real_eip !14
  store i1 %63, i1* %CF, !mcsema_real_eip !14
  %64 = zext i32 %45 to i64, !mcsema_real_eip !14
  store i64 %64, i64* %XDX, !mcsema_real_eip !14
  %EDX_val.26 = load i32, i32* %EDX.22, !mcsema_real_eip !15
  store i32 %EDX_val.26, i32* %43, !mcsema_real_eip !15
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -20
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !16
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !16
  %67 = load i32, i32* %66, !mcsema_real_eip !16
  %68 = zext i32 %67 to i64, !mcsema_real_eip !16
  store i64 %68, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.29 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %69 = add i32 1, %EAX_val.29, !mcsema_real_eip !17
  %70 = xor i32 %69, %EAX_val.29, !mcsema_real_eip !17
  %71 = xor i32 %70, 1, !mcsema_real_eip !17
  %72 = and i32 %71, 16, !mcsema_real_eip !17
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !17
  store i1 %73, i1* %AF, !mcsema_real_eip !17
  %74 = lshr i32 %69, 31, !mcsema_real_eip !17
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !17
  store i1 %75, i1* %SF, !mcsema_real_eip !17
  %76 = icmp eq i32 %69, 0, !mcsema_real_eip !17
  store i1 %76, i1* %ZF, !mcsema_real_eip !17
  %77 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !17
  %78 = xor i32 %77, -1, !mcsema_real_eip !17
  %79 = and i32 %78, %70, !mcsema_real_eip !17
  %80 = lshr i32 %79, 31, !mcsema_real_eip !17
  %81 = and i32 %80, 1, !mcsema_real_eip !17
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !17
  store i1 %82, i1* %OF, !mcsema_real_eip !17
  %83 = trunc i32 %69 to i8, !mcsema_real_eip !17
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !17
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !17
  %86 = xor i1 %85, true, !mcsema_real_eip !17
  store i1 %86, i1* %PF, !mcsema_real_eip !17
  %87 = icmp ult i32 %69, %EAX_val.29, !mcsema_real_eip !17
  store i1 %87, i1* %CF, !mcsema_real_eip !17
  %88 = zext i32 %69 to i64, !mcsema_real_eip !17
  store i64 %88, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.32 = load i32, i32* %EAX.12, !mcsema_real_eip !18
  store i32 %EAX_val.32, i32* %66, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %89 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !20
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !20
  %91 = load i32, i32* %90, !mcsema_real_eip !20
  %92 = zext i32 %91 to i64, !mcsema_real_eip !20
  store i64 %92, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_42 = bitcast i8* %_load_rsp_ptr_41 to i64*
  %93 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !21
  %_new_int2ptr_ = inttoptr i64 %93 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %93, i64* %XBP, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_41, i64 8
  %94 = add i64 %RSP_val.15, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %94, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %95 = add i64 %94, 8, !mcsema_real_eip !22
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %96 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !22
  store i64 %96, i64* %XIP, !mcsema_real_eip !22
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_
  store i64 %95, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @foo() #3

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
  %EDX.22 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.22, !mcsema_real_eip !14
  %57 = add i32 %EDX_val.23, %_new_load_121, !mcsema_real_eip !14
  %58 = xor i32 %57, %_new_load_121, !mcsema_real_eip !14
  %59 = xor i32 %58, %EDX_val.23, !mcsema_real_eip !14
  %60 = and i32 %59, 16, !mcsema_real_eip !14
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !14
  store i1 %61, i1* %AF, !mcsema_real_eip !14
  %62 = lshr i32 %57, 31, !mcsema_real_eip !14
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !14
  store i1 %63, i1* %SF, !mcsema_real_eip !14
  %64 = icmp eq i32 %57, 0, !mcsema_real_eip !14
  store i1 %64, i1* %ZF, !mcsema_real_eip !14
  %65 = xor i32 %_new_load_121, %EDX_val.23, !mcsema_real_eip !14
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
  %EDX_val.26 = load i32, i32* %EDX.22, !mcsema_real_eip !15
  store i32 %EDX_val.26, i32* %53, !mcsema_real_eip !15
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
  %EAX_val.29 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %83 = add i32 1, %EAX_val.29, !mcsema_real_eip !17
  %84 = xor i32 %83, %EAX_val.29, !mcsema_real_eip !17
  %85 = xor i32 %84, 1, !mcsema_real_eip !17
  %86 = and i32 %85, 16, !mcsema_real_eip !17
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !17
  store i1 %87, i1* %AF, !mcsema_real_eip !17
  %88 = lshr i32 %83, 31, !mcsema_real_eip !17
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !17
  store i1 %89, i1* %SF, !mcsema_real_eip !17
  %90 = icmp eq i32 %83, 0, !mcsema_real_eip !17
  store i1 %90, i1* %ZF, !mcsema_real_eip !17
  %91 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !17
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
  %101 = icmp ult i32 %83, %EAX_val.29, !mcsema_real_eip !17
  store i1 %101, i1* %CF, !mcsema_real_eip !17
  %102 = zext i32 %83 to i64, !mcsema_real_eip !17
  store i64 %102, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.32 = load i32, i32* %EAX.12, !mcsema_real_eip !18
  store i32 %EAX_val.32, i32* %78, !mcsema_real_eip !18
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
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !21
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
  %112 = add i64 %RSP_val.15, 8, !mcsema_real_eip !21
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
