; ModuleID = 'Output/test_28_1.clang.trans.bc'
source_filename = "Output/test_28_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x51 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"(\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XAX, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %22, !mcsema_real_eip !6
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !7
  store i64 %RAX_val.7, i64* %XDI, !mcsema_real_eip !7
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.8, !mcsema_real_eip !8
  %RSI_val.10 = load i64, i64* %XSI, !mcsema_real_eip !9
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !9
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !9
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !9
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !9
  %23 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !9
  %24 = load i64, i64* %23, !mcsema_real_eip !9
  %25 = add i64 %RSP_val.15, 8, !mcsema_real_eip !9
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !9
  %27 = load i64, i64* %26, !mcsema_real_eip !9
  %28 = add i64 %25, 8, !mcsema_real_eip !9
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !9
  %30 = load i64, i64* %29, !mcsema_real_eip !9
  %31 = add i64 %28, 8, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !9
  %33 = load i64, i64* %32, !mcsema_real_eip !9
  %34 = add i64 %31, 8, !mcsema_real_eip !9
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !9
  %36 = load i64, i64* %35, !mcsema_real_eip !9
  %37 = add i64 %34, 8, !mcsema_real_eip !9
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !9
  %39 = load i64, i64* %38, !mcsema_real_eip !9
  %40 = add i64 %37, 8, !mcsema_real_eip !9
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !9
  %42 = load i64, i64* %41, !mcsema_real_eip !9
  %43 = add i64 %40, 8, !mcsema_real_eip !9
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !9
  %45 = load i64, i64* %44, !mcsema_real_eip !9
  %46 = add i64 %43, 8, !mcsema_real_eip !9
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !9
  %48 = load i64, i64* %47, !mcsema_real_eip !9
  %49 = add i64 %46, 8, !mcsema_real_eip !9
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !9
  %51 = load i64, i64* %50, !mcsema_real_eip !9
  %52 = sub i64 %RSP_val.15, 8, !mcsema_real_eip !9
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %53, !mcsema_real_eip !9
  store i64 %52, i64* %XSP, !mcsema_real_eip !9
  %54 = call x86_64_sysvcc i64 @_printf(i64 %RAX_val.7, i64 %RSI_val.10, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %24, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42, i64 %45, i64 %48, i64 %51), !mcsema_real_eip !9
  store i64 %54, i64* %XAX, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !10
  %55 = add i64 %RBP_val.17, -8, !mcsema_real_eip !10
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !10
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !10
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.19, i32* %57, !mcsema_real_eip !10
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !11
  %58 = add i64 16, %RSP_val.20, !mcsema_real_eip !11
  %59 = xor i64 %58, %RSP_val.20, !mcsema_real_eip !11
  %60 = xor i64 %59, 16, !mcsema_real_eip !11
  %61 = and i64 %60, 16, !mcsema_real_eip !11
  %62 = icmp ne i64 %61, 0, !mcsema_real_eip !11
  store i1 %62, i1* %AF, !mcsema_real_eip !11
  %63 = lshr i64 %58, 63, !mcsema_real_eip !11
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !11
  store i1 %64, i1* %SF, !mcsema_real_eip !11
  %65 = icmp eq i64 %58, 0, !mcsema_real_eip !11
  store i1 %65, i1* %ZF, !mcsema_real_eip !11
  %66 = xor i64 %RSP_val.20, 16, !mcsema_real_eip !11
  %67 = xor i64 %66, -1, !mcsema_real_eip !11
  %68 = and i64 %67, %59, !mcsema_real_eip !11
  %69 = lshr i64 %68, 63, !mcsema_real_eip !11
  %70 = and i64 %69, 1, !mcsema_real_eip !11
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !11
  store i1 %71, i1* %OF, !mcsema_real_eip !11
  %72 = trunc i64 %58 to i8, !mcsema_real_eip !11
  %73 = call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !11
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !11
  %75 = xor i1 %74, true, !mcsema_real_eip !11
  store i1 %75, i1* %PF, !mcsema_real_eip !11
  %76 = icmp ult i64 %58, %RSP_val.20, !mcsema_real_eip !11
  store i1 %76, i1* %CF, !mcsema_real_eip !11
  store i64 %58, i64* %XSP, !mcsema_real_eip !11
  %77 = inttoptr i64 %58 to i64*, !mcsema_real_eip !12
  %78 = load i64, i64* %77, !mcsema_real_eip !12
  store i64 %78, i64* %XBP, !mcsema_real_eip !12
  %79 = add i64 %58, 8, !mcsema_real_eip !12
  store i64 %79, i64* %XSP, !mcsema_real_eip !12
  %80 = add i64 %79, 8, !mcsema_real_eip !13
  %81 = inttoptr i64 %79 to i64*, !mcsema_real_eip !13
  %82 = load i64, i64* %81, !mcsema_real_eip !13
  store i64 %82, i64* %XIP, !mcsema_real_eip !13
  store i64 %80, i64* %XSP, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !14
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !14
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !14
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !14
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !14
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !14
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !14
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !14
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !14
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !14
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !14
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !14
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !14
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !14
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !14
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !14
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !14
  br label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.24, 8, !mcsema_real_eip !14
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !15
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.26, 16, !mcsema_real_eip !16
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !16
  %4 = and i64 %3, 16, !mcsema_real_eip !16
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !16
  store i1 %5, i1* %AF, !mcsema_real_eip !16
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !16
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !16
  %8 = xor i1 %7, true, !mcsema_real_eip !16
  store i1 %8, i1* %PF, !mcsema_real_eip !16
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !16
  %9 = lshr i64 %2, 63, !mcsema_real_eip !16
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !16
  store i1 %10, i1* %SF, !mcsema_real_eip !16
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !16
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !16
  %12 = lshr i64 %11, 63, !mcsema_real_eip !16
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !16
  store i1 %13, i1* %OF, !mcsema_real_eip !16
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !16
  store i64 2, i64* %XDI, !mcsema_real_eip !17
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !18
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !18
  store i32 0, i32* %15, !mcsema_real_eip !18
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !19
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !19
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_41)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %EAX.29 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.30 = load i32, i32* %EAX.29, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  store i1 false, i1* %SF, !mcsema_real_eip !20
  store i1 true, i1* %ZF, !mcsema_real_eip !20
  store i1 true, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  store i64 0, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_20 = getelementptr i8, i8* %_gep_fix_, i64 16
  %17 = add i64 16, %RSP_val.33, !mcsema_real_eip !21
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %18 = xor i64 %_trans_xor_23, 16, !mcsema_real_eip !21
  %19 = and i64 %18, 16, !mcsema_real_eip !21
  %20 = icmp ne i64 %19, 0, !mcsema_real_eip !21
  store i1 %20, i1* %AF, !mcsema_real_eip !21
  %21 = lshr i64 %17, 63, !mcsema_real_eip !21
  %22 = trunc i64 %21 to i1, !mcsema_real_eip !21
  store i1 %22, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_25 = icmp eq i64 %_trans_p2i_21, 0
  store i1 %_trans_icmp_eq_25, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_27 = xor i64 %_trans_p2i_22, 16
  %23 = xor i64 %_trans_xor_27, -1, !mcsema_real_eip !21
  %24 = and i64 %23, %_trans_xor_23, !mcsema_real_eip !21
  %25 = lshr i64 %24, 63, !mcsema_real_eip !21
  %26 = and i64 %25, 1, !mcsema_real_eip !21
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !21
  store i1 %27, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %28 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !21
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !21
  %30 = xor i1 %29, true, !mcsema_real_eip !21
  store i1 %30, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.33
  store i1 %_trans_icmp_ne_34, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %31 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %31 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %31, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_20, i64 8
  %32 = add i64 %17, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %33 = add i64 %32, 8, !mcsema_real_eip !23
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %34 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !23
  store i64 %34, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XAX, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !6
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %15, !mcsema_real_eip !6
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !7
  store i64 %RAX_val.7, i64* %XDI, !mcsema_real_eip !7
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.8, !mcsema_real_eip !8
  %RSI_val.10 = load i64, i64* %XSI, !mcsema_real_eip !9
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !9
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !9
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !9
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_17 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_load_rsp_ptr_16, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_load_rsp_ptr_16, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_load_rsp_ptr_16, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %17

; <label>:17:                                     ; preds = %block_0x0, %16
  %18 = phi i64* [ %_allin_new_bt_17, %block_0x0 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i64, i64* %18
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %_ptr_to_int_64 = ptrtoint i64* %_allin_new_bt_19 to i64
  %_offset_above_rbp_67 = sub i64 %_ptr_to_int_64, %_local_end_to_int_
  %_pot_address_in_parent_stack_68 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_cond1_69 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_70 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_71 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_72 = or i1 %_cond2_1_70, %_cond2_2_71
  %_cond4_73 = icmp ule i8* %_pot_address_in_parent_stack_68, %_parent_stack_end_ptr_
  %_cond1_n_cond2_74 = and i1 %_cond1_69, %_cond2_72
  %_cond1_n_cond2_cond3_75 = and i1 %_cond1_n_cond2_74, %_cond4_73
  br i1 %_cond1_n_cond2_cond3_75, label %19, label %20

; <label>:19:                                     ; preds = %17
  %_address_in_parent_stack_bt_77 = bitcast i8* %_pot_address_in_parent_stack_68 to i64*
  br label %20

; <label>:20:                                     ; preds = %17, %19
  %21 = phi i64* [ %_allin_new_bt_19, %17 ], [ %_address_in_parent_stack_bt_77, %19 ]
  %_new_load_78 = load i64, i64* %21
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_18, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_79 = ptrtoint i64* %_allin_new_bt_21 to i64
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_79, %_local_end_to_int_
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %22, label %23

; <label>:22:                                     ; preds = %20
  %_address_in_parent_stack_bt_92 = bitcast i8* %_pot_address_in_parent_stack_83 to i64*
  br label %23

; <label>:23:                                     ; preds = %20, %22
  %24 = phi i64* [ %_allin_new_bt_21, %20 ], [ %_address_in_parent_stack_bt_92, %22 ]
  %_new_load_93 = load i64, i64* %24
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %_ptr_to_int_94 = ptrtoint i64* %_allin_new_bt_23 to i64
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %25, label %26

; <label>:25:                                     ; preds = %23
  %_address_in_parent_stack_bt_107 = bitcast i8* %_pot_address_in_parent_stack_98 to i64*
  br label %26

; <label>:26:                                     ; preds = %23, %25
  %27 = phi i64* [ %_allin_new_bt_23, %23 ], [ %_address_in_parent_stack_bt_107, %25 ]
  %_new_load_108 = load i64, i64* %27
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_22, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %_ptr_to_int_109 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %28, label %29

; <label>:28:                                     ; preds = %26
  %_address_in_parent_stack_bt_122 = bitcast i8* %_pot_address_in_parent_stack_113 to i64*
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i64* [ %_allin_new_bt_25, %26 ], [ %_address_in_parent_stack_bt_122, %28 ]
  %_new_load_123 = load i64, i64* %30
  %_new_gep_26 = getelementptr i8, i8* %_new_gep_24, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_124 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %31, label %32

; <label>:31:                                     ; preds = %29
  %_address_in_parent_stack_bt_137 = bitcast i8* %_pot_address_in_parent_stack_128 to i64*
  br label %32

; <label>:32:                                     ; preds = %29, %31
  %33 = phi i64* [ %_allin_new_bt_27, %29 ], [ %_address_in_parent_stack_bt_137, %31 ]
  %_new_load_138 = load i64, i64* %33
  %_new_gep_28 = getelementptr i8, i8* %_new_gep_26, i64 8
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %_ptr_to_int_139 = ptrtoint i64* %_allin_new_bt_29 to i64
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_new_gep_28, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_new_gep_28, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_new_gep_28, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %34, label %35

; <label>:34:                                     ; preds = %32
  %_address_in_parent_stack_bt_152 = bitcast i8* %_pot_address_in_parent_stack_143 to i64*
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = phi i64* [ %_allin_new_bt_29, %32 ], [ %_address_in_parent_stack_bt_152, %34 ]
  %_new_load_153 = load i64, i64* %36
  %_new_gep_30 = getelementptr i8, i8* %_new_gep_28, i64 8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %_ptr_to_int_154 = ptrtoint i64* %_allin_new_bt_31 to i64
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %37, label %38

; <label>:37:                                     ; preds = %35
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i64*
  br label %38

; <label>:38:                                     ; preds = %35, %37
  %39 = phi i64* [ %_allin_new_bt_31, %35 ], [ %_address_in_parent_stack_bt_167, %37 ]
  %_new_load_168 = load i64, i64* %39
  %_new_gep_32 = getelementptr i8, i8* %_new_gep_30, i64 8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %_ptr_to_int_169 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  br i1 %_cond1_n_cond2_cond3_180, label %40, label %41

; <label>:40:                                     ; preds = %38
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_173 to i64*
  br label %41

; <label>:41:                                     ; preds = %38, %40
  %42 = phi i64* [ %_allin_new_bt_33, %38 ], [ %_address_in_parent_stack_bt_182, %40 ]
  %_new_load_183 = load i64, i64* %42
  %_new_gep_34 = getelementptr i8, i8* %_new_gep_32, i64 8
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_184 = ptrtoint i64* %_allin_new_bt_35 to i64
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %43, label %44

; <label>:43:                                     ; preds = %41
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_188 to i64*
  br label %44

; <label>:44:                                     ; preds = %41, %43
  %45 = phi i64* [ %_allin_new_bt_35, %41 ], [ %_address_in_parent_stack_bt_197, %43 ]
  %_new_load_198 = load i64, i64* %45
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !9
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %46 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !9
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_38, !mcsema_real_eip !9
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !9
  %47 = call x86_64_sysvcc i64 @_printf(i64 %RAX_val.7, i64 %RSI_val.10, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %_new_load_, i64 %_new_load_78, i64 %_new_load_93, i64 %_new_load_108, i64 %_new_load_123, i64 %_new_load_138, i64 %_new_load_153, i64 %_new_load_168, i64 %_new_load_183, i64 %_new_load_198)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %47, i64* %XAX, !mcsema_real_eip !9
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -8
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !10
  %48 = ptrtoint i64* %_allin_new_bt_41 to i64, !mcsema_real_eip !10
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.19, i32* %49, !mcsema_real_eip !10
  %_load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_42, i64 16
  %50 = add i64 16, %RSP_val.20, !mcsema_real_eip !11
  %_trans_p2i_44 = ptrtoint i8* %_new_gep_43 to i64
  %_trans_p2i_45 = ptrtoint i8* %_load_rsp_ptr_42 to i64
  %_trans_xor_46 = xor i64 %_trans_p2i_44, %_trans_p2i_45
  %51 = xor i64 %_trans_xor_46, 16, !mcsema_real_eip !11
  %52 = and i64 %51, 16, !mcsema_real_eip !11
  %53 = icmp ne i64 %52, 0, !mcsema_real_eip !11
  store i1 %53, i1* %AF, !mcsema_real_eip !11
  %54 = lshr i64 %50, 63, !mcsema_real_eip !11
  %55 = trunc i64 %54 to i1, !mcsema_real_eip !11
  store i1 %55, i1* %SF, !mcsema_real_eip !11
  %_trans_icmp_eq_48 = icmp eq i64 %_trans_p2i_44, 0
  store i1 %_trans_icmp_eq_48, i1* %ZF, !mcsema_real_eip !11
  %_trans_xor_50 = xor i64 %_trans_p2i_45, 16
  %56 = xor i64 %_trans_xor_50, -1, !mcsema_real_eip !11
  %57 = and i64 %56, %_trans_xor_46, !mcsema_real_eip !11
  %58 = lshr i64 %57, 63, !mcsema_real_eip !11
  %59 = and i64 %58, 1, !mcsema_real_eip !11
  %60 = trunc i64 %59 to i1, !mcsema_real_eip !11
  store i1 %60, i1* %OF, !mcsema_real_eip !11
  %_trans_trunc_55 = trunc i64 %_trans_p2i_44 to i8
  %61 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_55), !mcsema_real_eip !11
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !11
  %63 = xor i1 %62, true, !mcsema_real_eip !11
  store i1 %63, i1* %PF, !mcsema_real_eip !11
  %_trans_icmp_ne_57 = icmp ne i64 %_trans_p2i_44, %RSP_val.20
  store i1 %_trans_icmp_ne_57, i1* %CF, !mcsema_real_eip !11
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !11
  %_allin_new_bt_59 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_199 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %64, label %65

; <label>:64:                                     ; preds = %44
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i64*
  br label %65

; <label>:65:                                     ; preds = %44, %64
  %66 = phi i64* [ %_allin_new_bt_59, %44 ], [ %_address_in_parent_stack_bt_212, %64 ]
  %_new_load_213 = load i64, i64* %66
  %_new_int2ptr_ = inttoptr i64 %_new_load_213 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_213, i64* %XBP, !mcsema_real_eip !12
  %_new_gep_60 = getelementptr i8, i8* %_new_gep_43, i64 8
  %67 = add i64 %50, 8, !mcsema_real_eip !12
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %68 = add i64 %67, 8, !mcsema_real_eip !13
  %_allin_new_bt_63 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_214 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_217 = sub i64 %_ptr_to_int_214, %_local_end_to_int_
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  br i1 %_cond1_n_cond2_cond3_225, label %69, label %70

; <label>:69:                                     ; preds = %65
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_218 to i64*
  br label %70

; <label>:70:                                     ; preds = %65, %69
  %71 = phi i64* [ %_allin_new_bt_63, %65 ], [ %_address_in_parent_stack_bt_227, %69 ]
  %_new_load_228 = load i64, i64* %71
  store i64 %_new_load_228, i64* %XIP, !mcsema_real_eip !13
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %68, i64* %XSP, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !14
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !14
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !14
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !14
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !14
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !14
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !14
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !14
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !14
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !14
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !14
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !14
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !14
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !14
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !14
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !14
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !14
  br label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %entry
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.24, 8, !mcsema_real_eip !14
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !15
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.26, 16, !mcsema_real_eip !16
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !16
  %4 = and i64 %3, 16, !mcsema_real_eip !16
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !16
  store i1 %5, i1* %AF, !mcsema_real_eip !16
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !16
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !16
  %8 = xor i1 %7, true, !mcsema_real_eip !16
  store i1 %8, i1* %PF, !mcsema_real_eip !16
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !16
  %9 = lshr i64 %2, 63, !mcsema_real_eip !16
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !16
  store i1 %10, i1* %SF, !mcsema_real_eip !16
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !16
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !16
  %12 = lshr i64 %11, 63, !mcsema_real_eip !16
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !16
  store i1 %13, i1* %OF, !mcsema_real_eip !16
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !16
  store i64 2, i64* %XDI, !mcsema_real_eip !17
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !18
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !18
  store i32 0, i32* %15, !mcsema_real_eip !18
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !19
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !19
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !19
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_41)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %EAX.29 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.30 = load i32, i32* %EAX.29, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  store i1 false, i1* %SF, !mcsema_real_eip !20
  store i1 true, i1* %ZF, !mcsema_real_eip !20
  store i1 true, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  store i64 0, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_20 = getelementptr i8, i8* %_gep_fix_, i64 16
  %17 = add i64 16, %RSP_val.33, !mcsema_real_eip !21
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %18 = xor i64 %_trans_xor_23, 16, !mcsema_real_eip !21
  %19 = and i64 %18, 16, !mcsema_real_eip !21
  %20 = icmp ne i64 %19, 0, !mcsema_real_eip !21
  store i1 %20, i1* %AF, !mcsema_real_eip !21
  %21 = lshr i64 %17, 63, !mcsema_real_eip !21
  %22 = trunc i64 %21 to i1, !mcsema_real_eip !21
  store i1 %22, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_25 = icmp eq i64 %_trans_p2i_21, 0
  store i1 %_trans_icmp_eq_25, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_27 = xor i64 %_trans_p2i_22, 16
  %23 = xor i64 %_trans_xor_27, -1, !mcsema_real_eip !21
  %24 = and i64 %23, %_trans_xor_23, !mcsema_real_eip !21
  %25 = lshr i64 %24, 63, !mcsema_real_eip !21
  %26 = and i64 %25, 1, !mcsema_real_eip !21
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !21
  store i1 %27, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %28 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !21
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !21
  %30 = xor i1 %29, true, !mcsema_real_eip !21
  store i1 %30, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.33
  store i1 %_trans_icmp_ne_34, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %31, label %32

; <label>:31:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %32

; <label>:32:                                     ; preds = %block_0x30, %31
  %33 = phi i64* [ %_allin_new_bt_36, %block_0x30 ], [ %_address_in_parent_stack_bt_, %31 ]
  %_new_load_ = load i64, i64* %33
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_20, i64 8
  %34 = add i64 %17, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %34, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %35 = add i64 %34, 8, !mcsema_real_eip !23
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_43 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_46 = sub i64 %_ptr_to_int_43, %_local_end_to_int_
  %_pot_address_in_parent_stack_47 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_46
  %_cond1_48 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_49 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_50 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_51 = or i1 %_cond2_1_49, %_cond2_2_50
  %_cond4_52 = icmp ule i8* %_pot_address_in_parent_stack_47, %_parent_stack_end_ptr_
  %_cond1_n_cond2_53 = and i1 %_cond1_48, %_cond2_51
  %_cond1_n_cond2_cond3_54 = and i1 %_cond1_n_cond2_53, %_cond4_52
  br i1 %_cond1_n_cond2_cond3_54, label %36, label %37

; <label>:36:                                     ; preds = %32
  %_address_in_parent_stack_bt_56 = bitcast i8* %_pot_address_in_parent_stack_47 to i64*
  br label %37

; <label>:37:                                     ; preds = %32, %36
  %38 = phi i64* [ %_allin_new_bt_40, %32 ], [ %_address_in_parent_stack_bt_56, %36 ]
  %_new_load_57 = load i64, i64* %38
  store i64 %_new_load_57, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_
  store i64 %35, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 21}
!8 = !{i64 24}
!9 = !{i64 26}
!10 = !{i64 31}
!11 = !{i64 34}
!12 = !{i64 38}
!13 = !{i64 39}
!14 = !{i64 48}
!15 = !{i64 49}
!16 = !{i64 52}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 68}
!20 = !{i64 73}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 80}
