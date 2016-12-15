; ModuleID = 'Output/test_21.clang.trans.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl shiftit;"
module asm "  .type shiftit,@function"
module asm "shiftit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size shiftit,0b-shiftit;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x38 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\005\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -16
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %4 = load i64, i64* %_allin_new_bt_10, !mcsema_real_eip !6
  store i64 %4, i64* %XSI, !mcsema_real_eip !6
  %5 = inttoptr i64 %4 to i64*, !mcsema_real_eip !7
  %6 = load i64, i64* %5, !mcsema_real_eip !7
  store i64 %6, i64* %XSI, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %6, i64* %_allin_new_bt_13, !mcsema_real_eip !8
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -4
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %7 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !9
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !9
  %9 = load i32, i32* %8, !mcsema_real_eip !9
  %10 = zext i32 %9 to i64, !mcsema_real_eip !9
  store i64 %10, i64* %XDI, !mcsema_real_eip !9
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -24
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %11 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !10
  store i64 %11, i64* %XSI, !mcsema_real_eip !10
  %EDI_val.15 = load i32, i32* %EDI.4, !mcsema_real_eip !11
  %12 = zext i32 %EDI_val.15 to i64, !mcsema_real_eip !11
  store i64 %12, i64* %XDI, !mcsema_real_eip !11
  %EDI_val.17 = load i32, i32* %EDI.4, !mcsema_real_eip !12
  %13 = zext i32 %EDI_val.17 to i64, !mcsema_real_eip !12
  store i64 %13, i64* %XCX, !mcsema_real_eip !12
  %CL.19 = bitcast i64* %XCX to i8*, !mcsema_real_eip !13
  %CL_val.20 = load i8, i8* %CL.19, !mcsema_real_eip !13
  %CL_val.20.zext = zext i8 %CL_val.20 to i64, !mcsema_real_eip !13
  %14 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !13
  %15 = sub i64 %CL_val.20.zext, 1, !mcsema_real_eip !13
  %16 = icmp ne i64 %14, 0, !mcsema_real_eip !13
  %17 = select i1 %16, i64 %15, i64 0, !mcsema_real_eip !13
  %18 = select i1 %16, i64 1, i64 0, !mcsema_real_eip !13
  %19 = lshr i64 %11, %17, !mcsema_real_eip !13
  %20 = and i64 %19, 1, !mcsema_real_eip !13
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !13
  %22 = load i1, i1* %CF, !mcsema_real_eip !13
  %23 = select i1 %16, i1 %21, i1 %22, !mcsema_real_eip !13
  %24 = lshr i64 %19, %18, !mcsema_real_eip !13
  %25 = icmp eq i64 %14, 1, !mcsema_real_eip !13
  %26 = load i1, i1* %OF, !mcsema_real_eip !13
  %27 = and i64 %11, -9223372036854775808, !mcsema_real_eip !13
  %28 = icmp ne i64 %27, 0, !mcsema_real_eip !13
  %29 = select i1 %25, i1 %28, i1 %26, !mcsema_real_eip !13
  store i1 %29, i1* %OF, !mcsema_real_eip !13
  store i1 %23, i1* %CF, !mcsema_real_eip !13
  %30 = load i1, i1* %ZF, !mcsema_real_eip !13
  %31 = icmp eq i64 %24, 0, !mcsema_real_eip !13
  %32 = select i1 %16, i1 %31, i1 %30, !mcsema_real_eip !13
  store i1 %32, i1* %ZF, !mcsema_real_eip !13
  %33 = load i1, i1* %SF, !mcsema_real_eip !13
  %34 = icmp slt i64 %24, 0, !mcsema_real_eip !13
  %35 = select i1 %16, i1 %34, i1 %33, !mcsema_real_eip !13
  store i1 %35, i1* %SF, !mcsema_real_eip !13
  %36 = load i1, i1* %PF, !mcsema_real_eip !13
  %37 = trunc i64 %24 to i8, !mcsema_real_eip !13
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !13
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !13
  %40 = xor i1 %39, true, !mcsema_real_eip !13
  %41 = select i1 %16, i1 %40, i1 %36, !mcsema_real_eip !13
  store i1 %41, i1* %PF, !mcsema_real_eip !13
  store i64 %24, i64* %XSI, !mcsema_real_eip !13
  store i64 %24, i64* %_allin_new_bt_19, !mcsema_real_eip !14
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %42 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !15
  store i64 %42, i64* %XSI, !mcsema_real_eip !15
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -16
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %43 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !16
  store i64 %43, i64* %XAX, !mcsema_real_eip !16
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !17
  store i64 %42, i64* %44, !mcsema_real_eip !17
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_allin_new_bt_30 = bitcast i8* %_load_rsp_ptr_29 to i64*
  %45 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !18
  %_new_int2ptr_ = inttoptr i64 %45 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %45, i64* %XBP, !mcsema_real_eip !18
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 8
  %46 = add i64 %RSP_val.27, 8, !mcsema_real_eip !18
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %47 = add i64 %46, 8, !mcsema_real_eip !19
  %_allin_new_bt_34 = bitcast i8* %_new_gep_31 to i64*
  %48 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !19
  store i64 %48, i64* %XIP, !mcsema_real_eip !19
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @shiftit() #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -16
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
  br i1 %_cond1_n_cond2_cond3_, label %4, label %5

; <label>:4:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %5

; <label>:5:                                      ; preds = %block_0x0, %4
  %6 = phi i64* [ %_allin_new_bt_10, %block_0x0 ], [ %_address_in_parent_stack_bt_, %4 ]
  %_new_load_ = load i64, i64* %6
  store i64 %_new_load_, i64* %XSI, !mcsema_real_eip !6
  %7 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !7
  %_ptr_bt_37 = bitcast i64* %7 to i8*
  %_offset_above_rbp_38 = sub i64 %_new_load_, %_local_end_to_int_
  %_pot_address_in_parent_stack_39 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_38
  %_cond1_40 = icmp ugt i8* %_ptr_bt_37, %_local_stack_end_ptr_
  %_cond2_1_41 = icmp ugt i8* %_ptr_bt_37, %_parent_stack_end_ptr_
  %_cond2_2_42 = icmp ult i8* %_ptr_bt_37, %_parent_stack_start_ptr_
  %_cond2_43 = or i1 %_cond2_1_41, %_cond2_2_42
  %_cond4_44 = icmp ule i8* %_pot_address_in_parent_stack_39, %_parent_stack_end_ptr_
  %_cond1_n_cond2_45 = and i1 %_cond1_40, %_cond2_43
  %_cond1_n_cond2_cond3_46 = and i1 %_cond1_n_cond2_45, %_cond4_44
  br i1 %_cond1_n_cond2_cond3_46, label %8, label %9

; <label>:8:                                      ; preds = %5
  %_address_in_parent_stack_bt_48 = bitcast i8* %_pot_address_in_parent_stack_39 to i64*
  br label %9

; <label>:9:                                      ; preds = %5, %8
  %10 = phi i64* [ %7, %5 ], [ %_address_in_parent_stack_bt_48, %8 ]
  %_new_load_49 = load i64, i64* %10
  store i64 %_new_load_49, i64* %XSI, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %_new_load_49, i64* %_allin_new_bt_13, !mcsema_real_eip !8
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -4
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %11 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !9
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !9
  %_ptr_bt_52 = bitcast i32* %12 to i8*
  %_offset_above_rbp_53 = sub i64 %11, %_local_end_to_int_
  %_pot_address_in_parent_stack_54 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_53
  %_cond1_55 = icmp ugt i8* %_ptr_bt_52, %_local_stack_end_ptr_
  %_cond2_1_56 = icmp ugt i8* %_ptr_bt_52, %_parent_stack_end_ptr_
  %_cond2_2_57 = icmp ult i8* %_ptr_bt_52, %_parent_stack_start_ptr_
  %_cond2_58 = or i1 %_cond2_1_56, %_cond2_2_57
  %_cond4_59 = icmp ule i8* %_pot_address_in_parent_stack_54, %_parent_stack_end_ptr_
  %_cond1_n_cond2_60 = and i1 %_cond1_55, %_cond2_58
  %_cond1_n_cond2_cond3_61 = and i1 %_cond1_n_cond2_60, %_cond4_59
  br i1 %_cond1_n_cond2_cond3_61, label %13, label %14

; <label>:13:                                     ; preds = %9
  %_address_in_parent_stack_bt_63 = bitcast i8* %_pot_address_in_parent_stack_54 to i32*
  br label %14

; <label>:14:                                     ; preds = %9, %13
  %15 = phi i32* [ %12, %9 ], [ %_address_in_parent_stack_bt_63, %13 ]
  %_new_load_64 = load i32, i32* %15
  %16 = zext i32 %_new_load_64 to i64, !mcsema_real_eip !9
  store i64 %16, i64* %XDI, !mcsema_real_eip !9
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -24
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %_ptr_to_int_65 = ptrtoint i64* %_allin_new_bt_19 to i64
  %_offset_above_rbp_68 = sub i64 %_ptr_to_int_65, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  br i1 %_cond1_n_cond2_cond3_76, label %17, label %18

; <label>:17:                                     ; preds = %14
  %_address_in_parent_stack_bt_78 = bitcast i8* %_pot_address_in_parent_stack_69 to i64*
  br label %18

; <label>:18:                                     ; preds = %14, %17
  %19 = phi i64* [ %_allin_new_bt_19, %14 ], [ %_address_in_parent_stack_bt_78, %17 ]
  %_new_load_79 = load i64, i64* %19
  store i64 %_new_load_79, i64* %XSI, !mcsema_real_eip !10
  %EDI_val.15 = load i32, i32* %EDI.4, !mcsema_real_eip !11
  %20 = zext i32 %EDI_val.15 to i64, !mcsema_real_eip !11
  store i64 %20, i64* %XDI, !mcsema_real_eip !11
  %EDI_val.17 = load i32, i32* %EDI.4, !mcsema_real_eip !12
  %21 = zext i32 %EDI_val.17 to i64, !mcsema_real_eip !12
  store i64 %21, i64* %XCX, !mcsema_real_eip !12
  %CL.19 = bitcast i64* %XCX to i8*, !mcsema_real_eip !13
  %CL_val.20 = load i8, i8* %CL.19, !mcsema_real_eip !13
  %CL_val.20.zext = zext i8 %CL_val.20 to i64, !mcsema_real_eip !13
  %22 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !13
  %23 = sub i64 %CL_val.20.zext, 1, !mcsema_real_eip !13
  %24 = icmp ne i64 %22, 0, !mcsema_real_eip !13
  %25 = select i1 %24, i64 %23, i64 0, !mcsema_real_eip !13
  %26 = select i1 %24, i64 1, i64 0, !mcsema_real_eip !13
  %27 = lshr i64 %_new_load_79, %25, !mcsema_real_eip !13
  %28 = and i64 %27, 1, !mcsema_real_eip !13
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !13
  %30 = load i1, i1* %CF, !mcsema_real_eip !13
  %31 = select i1 %24, i1 %29, i1 %30, !mcsema_real_eip !13
  %32 = lshr i64 %27, %26, !mcsema_real_eip !13
  %33 = icmp eq i64 %22, 1, !mcsema_real_eip !13
  %34 = load i1, i1* %OF, !mcsema_real_eip !13
  %35 = and i64 %_new_load_79, -9223372036854775808, !mcsema_real_eip !13
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !13
  %37 = select i1 %33, i1 %36, i1 %34, !mcsema_real_eip !13
  store i1 %37, i1* %OF, !mcsema_real_eip !13
  store i1 %31, i1* %CF, !mcsema_real_eip !13
  %38 = load i1, i1* %ZF, !mcsema_real_eip !13
  %39 = icmp eq i64 %32, 0, !mcsema_real_eip !13
  %40 = select i1 %24, i1 %39, i1 %38, !mcsema_real_eip !13
  store i1 %40, i1* %ZF, !mcsema_real_eip !13
  %41 = load i1, i1* %SF, !mcsema_real_eip !13
  %42 = icmp slt i64 %32, 0, !mcsema_real_eip !13
  %43 = select i1 %24, i1 %42, i1 %41, !mcsema_real_eip !13
  store i1 %43, i1* %SF, !mcsema_real_eip !13
  %44 = load i1, i1* %PF, !mcsema_real_eip !13
  %45 = trunc i64 %32 to i8, !mcsema_real_eip !13
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !13
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !13
  %48 = xor i1 %47, true, !mcsema_real_eip !13
  %49 = select i1 %24, i1 %48, i1 %44, !mcsema_real_eip !13
  store i1 %49, i1* %PF, !mcsema_real_eip !13
  store i64 %32, i64* %XSI, !mcsema_real_eip !13
  store i64 %32, i64* %_allin_new_bt_19, !mcsema_real_eip !14
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %50, label %51

; <label>:50:                                     ; preds = %18
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %51

; <label>:51:                                     ; preds = %18, %50
  %52 = phi i64* [ %_allin_new_bt_25, %18 ], [ %_address_in_parent_stack_bt_93, %50 ]
  %_new_load_94 = load i64, i64* %52
  store i64 %_new_load_94, i64* %XSI, !mcsema_real_eip !15
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -16
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %53, label %54

; <label>:53:                                     ; preds = %51
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = phi i64* [ %_allin_new_bt_28, %51 ], [ %_address_in_parent_stack_bt_108, %53 ]
  %_new_load_109 = load i64, i64* %55
  store i64 %_new_load_109, i64* %XAX, !mcsema_real_eip !16
  %56 = inttoptr i64 %_new_load_109 to i64*, !mcsema_real_eip !17
  store i64 %_new_load_94, i64* %56, !mcsema_real_eip !17
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_allin_new_bt_30 = bitcast i8* %_load_rsp_ptr_29 to i64*
  %_ptr_to_int_110 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_load_rsp_ptr_29, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_load_rsp_ptr_29, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_load_rsp_ptr_29, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %57, label %58

; <label>:57:                                     ; preds = %54
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %58

; <label>:58:                                     ; preds = %54, %57
  %59 = phi i64* [ %_allin_new_bt_30, %54 ], [ %_address_in_parent_stack_bt_123, %57 ]
  %_new_load_124 = load i64, i64* %59
  %_new_int2ptr_ = inttoptr i64 %_new_load_124 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_124, i64* %XBP, !mcsema_real_eip !18
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 8
  %60 = add i64 %RSP_val.27, 8, !mcsema_real_eip !18
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_
  store i64 %60, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %61 = add i64 %60, 8, !mcsema_real_eip !19
  %_allin_new_bt_34 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_125 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_128 = sub i64 %_ptr_to_int_125, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %62, label %63

; <label>:62:                                     ; preds = %58
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i64*
  br label %63

; <label>:63:                                     ; preds = %58, %62
  %64 = phi i64* [ %_allin_new_bt_34, %58 ], [ %_address_in_parent_stack_bt_138, %62 ]
  %_new_load_139 = load i64, i64* %64
  store i64 %_new_load_139, i64* %XIP, !mcsema_real_eip !19
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_
  store i64 %61, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
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
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 22}
!10 = !{i64 25}
!11 = !{i64 29}
!12 = !{i64 31}
!13 = !{i64 33}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 44}
!17 = !{i64 48}
!18 = !{i64 51}
!19 = !{i64 52}
