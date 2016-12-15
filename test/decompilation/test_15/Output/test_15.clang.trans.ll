; ModuleID = 'Output/test_15.clang.trans.bc'
source_filename = "Output/test_15.clang.bc"
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
module asm "  .globl doOp;"
module asm "  .type doOp,@function"
module asm "doOp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doOp,0b-doOp;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x28 = internal global %0 <{ [4 x i8] c"\01\00\00\00" }>, align 64
@data_0x30 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"'\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %4 = load i32, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !5
  %5 = zext i32 %4 to i64, !mcsema_real_eip !5
  store i64 %5, i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %EDI_val.8 = load i32, i32* %EDI.4, !mcsema_real_eip !6
  %6 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !6
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.8, i32* %7, !mcsema_real_eip !6
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %8 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !7
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !7
  %10 = load i32, i32* %9, !mcsema_real_eip !7
  %11 = zext i32 %10 to i64, !mcsema_real_eip !7
  store i64 %11, i64* %XDI, !mcsema_real_eip !7
  %12 = load i32, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !8
  %EDI_val.11 = load i32, i32* %EDI.4, !mcsema_real_eip !8
  %13 = add i32 %EDI_val.11, %12, !mcsema_real_eip !8
  %14 = xor i32 %13, %12, !mcsema_real_eip !8
  %15 = xor i32 %14, %EDI_val.11, !mcsema_real_eip !8
  %16 = and i32 %15, 16, !mcsema_real_eip !8
  %17 = icmp ne i32 %16, 0, !mcsema_real_eip !8
  store i1 %17, i1* %AF, !mcsema_real_eip !8
  %18 = lshr i32 %13, 31, !mcsema_real_eip !8
  %19 = trunc i32 %18 to i1, !mcsema_real_eip !8
  store i1 %19, i1* %SF, !mcsema_real_eip !8
  %20 = icmp eq i32 %13, 0, !mcsema_real_eip !8
  store i1 %20, i1* %ZF, !mcsema_real_eip !8
  %21 = xor i32 %12, %EDI_val.11, !mcsema_real_eip !8
  %22 = xor i32 %21, -1, !mcsema_real_eip !8
  %23 = and i32 %22, %14, !mcsema_real_eip !8
  %24 = lshr i32 %23, 31, !mcsema_real_eip !8
  %25 = and i32 %24, 1, !mcsema_real_eip !8
  %26 = trunc i32 %25 to i1, !mcsema_real_eip !8
  store i1 %26, i1* %OF, !mcsema_real_eip !8
  %27 = trunc i32 %13 to i8, !mcsema_real_eip !8
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !8
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !8
  %30 = xor i1 %29, true, !mcsema_real_eip !8
  store i1 %30, i1* %PF, !mcsema_real_eip !8
  %31 = icmp ult i32 %13, %12, !mcsema_real_eip !8
  store i1 %31, i1* %CF, !mcsema_real_eip !8
  %32 = zext i32 %13 to i64, !mcsema_real_eip !8
  store i64 %32, i64* %XDI, !mcsema_real_eip !8
  %EDI_val.13 = load i32, i32* %EDI.4, !mcsema_real_eip !9
  store i32 %EDI_val.13, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !9
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %33 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !10
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !10
  %35 = load i32, i32* %34, !mcsema_real_eip !10
  %36 = zext i32 %35 to i64, !mcsema_real_eip !10
  store i64 %36, i64* %XAX, !mcsema_real_eip !10
  %_load_rsp_ptr_14 = load i8*, i8** %_RSP_ptr_
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_allin_new_bt_15 = bitcast i8* %_load_rsp_ptr_14 to i64*
  %37 = load i64, i64* %_allin_new_bt_15, !mcsema_real_eip !11
  %_new_int2ptr_ = inttoptr i64 %37 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %37, i64* %XBP, !mcsema_real_eip !11
  %_new_gep_16 = getelementptr i8, i8* %_load_rsp_ptr_14, i64 8
  %38 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_16, i8** %_RSP_ptr_
  store i64 %38, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_18 = getelementptr i8, i8* %_new_gep_16, i64 8
  %39 = add i64 %38, 8, !mcsema_real_eip !12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_16 to i64*
  %40 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !12
  store i64 %40, i64* %XIP, !mcsema_real_eip !12
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_
  store i64 %39, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @doOp() #2

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
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint (%0* @data_0x28 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* getelementptr inbounds (%0, %0* @data_0x28, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* getelementptr inbounds (%0, %0* @data_0x28, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* getelementptr inbounds (%0, %0* @data_0x28, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %4, label %5

; <label>:4:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %5

; <label>:5:                                      ; preds = %block_0x0, %4
  %6 = phi i32* [ bitcast (%0* @data_0x28 to i32*), %block_0x0 ], [ %_address_in_parent_stack_bt_, %4 ]
  %_new_load_ = load i32, i32* %6
  %7 = zext i32 %_new_load_ to i64, !mcsema_real_eip !5
  store i64 %7, i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %EDI_val.8 = load i32, i32* %EDI.4, !mcsema_real_eip !6
  %8 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.8, i32* %9, !mcsema_real_eip !6
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %10 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !7
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !7
  %_ptr_bt_ = bitcast i32* %11 to i8*
  %_offset_above_rbp_21 = sub i64 %10, %_local_end_to_int_
  %_pot_address_in_parent_stack_22 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_21
  %_cond1_23 = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_24 = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_25 = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_26 = or i1 %_cond2_1_24, %_cond2_2_25
  %_cond4_27 = icmp ule i8* %_pot_address_in_parent_stack_22, %_parent_stack_end_ptr_
  %_cond1_n_cond2_28 = and i1 %_cond1_23, %_cond2_26
  %_cond1_n_cond2_cond3_29 = and i1 %_cond1_n_cond2_28, %_cond4_27
  br i1 %_cond1_n_cond2_cond3_29, label %12, label %13

; <label>:12:                                     ; preds = %5
  %_address_in_parent_stack_bt_31 = bitcast i8* %_pot_address_in_parent_stack_22 to i32*
  br label %13

; <label>:13:                                     ; preds = %5, %12
  %14 = phi i32* [ %11, %5 ], [ %_address_in_parent_stack_bt_31, %12 ]
  %_new_load_32 = load i32, i32* %14
  %15 = zext i32 %_new_load_32 to i64, !mcsema_real_eip !7
  store i64 %15, i64* %XDI, !mcsema_real_eip !7
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %13
  %_address_in_parent_stack_bt_44 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %17

; <label>:17:                                     ; preds = %13, %16
  %18 = phi i32* [ bitcast (%0* @data_0x28 to i32*), %13 ], [ %_address_in_parent_stack_bt_44, %16 ]
  %_new_load_45 = load i32, i32* %18
  %EDI_val.11 = load i32, i32* %EDI.4, !mcsema_real_eip !8
  %19 = add i32 %EDI_val.11, %_new_load_45, !mcsema_real_eip !8
  %20 = xor i32 %19, %_new_load_45, !mcsema_real_eip !8
  %21 = xor i32 %20, %EDI_val.11, !mcsema_real_eip !8
  %22 = and i32 %21, 16, !mcsema_real_eip !8
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !8
  store i1 %23, i1* %AF, !mcsema_real_eip !8
  %24 = lshr i32 %19, 31, !mcsema_real_eip !8
  %25 = trunc i32 %24 to i1, !mcsema_real_eip !8
  store i1 %25, i1* %SF, !mcsema_real_eip !8
  %26 = icmp eq i32 %19, 0, !mcsema_real_eip !8
  store i1 %26, i1* %ZF, !mcsema_real_eip !8
  %27 = xor i32 %_new_load_45, %EDI_val.11, !mcsema_real_eip !8
  %28 = xor i32 %27, -1, !mcsema_real_eip !8
  %29 = and i32 %28, %20, !mcsema_real_eip !8
  %30 = lshr i32 %29, 31, !mcsema_real_eip !8
  %31 = and i32 %30, 1, !mcsema_real_eip !8
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !8
  store i1 %32, i1* %OF, !mcsema_real_eip !8
  %33 = trunc i32 %19 to i8, !mcsema_real_eip !8
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !8
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !8
  %36 = xor i1 %35, true, !mcsema_real_eip !8
  store i1 %36, i1* %PF, !mcsema_real_eip !8
  %37 = icmp ult i32 %19, %_new_load_45, !mcsema_real_eip !8
  store i1 %37, i1* %CF, !mcsema_real_eip !8
  %38 = zext i32 %19 to i64, !mcsema_real_eip !8
  store i64 %38, i64* %XDI, !mcsema_real_eip !8
  %EDI_val.13 = load i32, i32* %EDI.4, !mcsema_real_eip !9
  store i32 %EDI_val.13, i32* bitcast (%0* @data_0x28 to i32*), !mcsema_real_eip !9
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !10
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !10
  %_ptr_bt_48 = bitcast i32* %40 to i8*
  %_offset_above_rbp_49 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_50 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_49
  %_cond1_51 = icmp ugt i8* %_ptr_bt_48, %_local_stack_end_ptr_
  %_cond2_1_52 = icmp ugt i8* %_ptr_bt_48, %_parent_stack_end_ptr_
  %_cond2_2_53 = icmp ult i8* %_ptr_bt_48, %_parent_stack_start_ptr_
  %_cond2_54 = or i1 %_cond2_1_52, %_cond2_2_53
  %_cond4_55 = icmp ule i8* %_pot_address_in_parent_stack_50, %_parent_stack_end_ptr_
  %_cond1_n_cond2_56 = and i1 %_cond1_51, %_cond2_54
  %_cond1_n_cond2_cond3_57 = and i1 %_cond1_n_cond2_56, %_cond4_55
  br i1 %_cond1_n_cond2_cond3_57, label %41, label %42

; <label>:41:                                     ; preds = %17
  %_address_in_parent_stack_bt_59 = bitcast i8* %_pot_address_in_parent_stack_50 to i32*
  br label %42

; <label>:42:                                     ; preds = %17, %41
  %43 = phi i32* [ %40, %17 ], [ %_address_in_parent_stack_bt_59, %41 ]
  %_new_load_60 = load i32, i32* %43
  %44 = zext i32 %_new_load_60 to i64, !mcsema_real_eip !10
  store i64 %44, i64* %XAX, !mcsema_real_eip !10
  %_load_rsp_ptr_14 = load i8*, i8** %_RSP_ptr_
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_allin_new_bt_15 = bitcast i8* %_load_rsp_ptr_14 to i64*
  %_ptr_to_int_61 = ptrtoint i64* %_allin_new_bt_15 to i64
  %_offset_above_rbp_64 = sub i64 %_ptr_to_int_61, %_local_end_to_int_
  %_pot_address_in_parent_stack_65 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_cond1_66 = icmp ugt i8* %_load_rsp_ptr_14, %_local_stack_end_ptr_
  %_cond2_1_67 = icmp ugt i8* %_load_rsp_ptr_14, %_parent_stack_end_ptr_
  %_cond2_2_68 = icmp ult i8* %_load_rsp_ptr_14, %_parent_stack_start_ptr_
  %_cond2_69 = or i1 %_cond2_1_67, %_cond2_2_68
  %_cond4_70 = icmp ule i8* %_pot_address_in_parent_stack_65, %_parent_stack_end_ptr_
  %_cond1_n_cond2_71 = and i1 %_cond1_66, %_cond2_69
  %_cond1_n_cond2_cond3_72 = and i1 %_cond1_n_cond2_71, %_cond4_70
  br i1 %_cond1_n_cond2_cond3_72, label %45, label %46

; <label>:45:                                     ; preds = %42
  %_address_in_parent_stack_bt_74 = bitcast i8* %_pot_address_in_parent_stack_65 to i64*
  br label %46

; <label>:46:                                     ; preds = %42, %45
  %47 = phi i64* [ %_allin_new_bt_15, %42 ], [ %_address_in_parent_stack_bt_74, %45 ]
  %_new_load_75 = load i64, i64* %47
  %_new_int2ptr_ = inttoptr i64 %_new_load_75 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_75, i64* %XBP, !mcsema_real_eip !11
  %_new_gep_16 = getelementptr i8, i8* %_load_rsp_ptr_14, i64 8
  %48 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_16, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_18 = getelementptr i8, i8* %_new_gep_16, i64 8
  %49 = add i64 %48, 8, !mcsema_real_eip !12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_16 to i64*
  %_ptr_to_int_76 = ptrtoint i64* %_allin_new_bt_19 to i64
  %_offset_above_rbp_79 = sub i64 %_ptr_to_int_76, %_local_end_to_int_
  %_pot_address_in_parent_stack_80 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_79
  %_cond1_81 = icmp ugt i8* %_new_gep_16, %_local_stack_end_ptr_
  %_cond2_1_82 = icmp ugt i8* %_new_gep_16, %_parent_stack_end_ptr_
  %_cond2_2_83 = icmp ult i8* %_new_gep_16, %_parent_stack_start_ptr_
  %_cond2_84 = or i1 %_cond2_1_82, %_cond2_2_83
  %_cond4_85 = icmp ule i8* %_pot_address_in_parent_stack_80, %_parent_stack_end_ptr_
  %_cond1_n_cond2_86 = and i1 %_cond1_81, %_cond2_84
  %_cond1_n_cond2_cond3_87 = and i1 %_cond1_n_cond2_86, %_cond4_85
  br i1 %_cond1_n_cond2_cond3_87, label %50, label %51

; <label>:50:                                     ; preds = %46
  %_address_in_parent_stack_bt_89 = bitcast i8* %_pot_address_in_parent_stack_80 to i64*
  br label %51

; <label>:51:                                     ; preds = %46, %50
  %52 = phi i64* [ %_allin_new_bt_19, %46 ], [ %_address_in_parent_stack_bt_89, %50 ]
  %_new_load_90 = load i64, i64* %52
  store i64 %_new_load_90, i64* %XIP, !mcsema_real_eip !12
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
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
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 27}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 38}
