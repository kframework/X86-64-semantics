; ModuleID = 'Output/test_18.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_60 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_60 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_60 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64
@data_3b0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !0
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !0
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !0
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !0
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !0
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !0
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !0
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !0
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !0
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !0
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !0
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !0
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !0
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !0
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !0
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !0
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !0
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !0
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !0
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !0
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !0
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !0
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !0
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !0
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !0
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !0
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !0
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !0
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !0
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !0
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !0
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !0
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !0
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !0
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !0
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !0
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !0
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !0
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !0
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !0
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !0
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !0
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !0
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !0
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !0
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !0
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !0
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !0
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !0
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !0
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !0
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !0
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !0
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !0
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !0
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !0
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !0
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !0
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !0
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !0
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !0
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !0
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !0
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !0
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !0
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !0
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !0
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !0
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !0
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !0
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !0
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !0
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !0
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !0
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !0
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !0
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !0
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !0
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !0
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !0
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !0
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !0
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !0
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !0
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !0
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !0
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !0
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !0
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !0
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !0
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !0
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !0
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !0
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !0
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !0
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !0
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !0
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !0
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !0
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !0
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !0
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !0
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !0
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !0
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !0
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !0
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !0
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !0
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !0
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !0
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !0
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !0
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !0
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !0
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !0
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !0
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !0
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !0
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !0
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !0
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !0
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !0
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !0
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !0
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !0
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !0
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !0
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !0
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !0
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !0
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !0
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !0
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !0
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !0
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !0
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !0
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !0
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !0
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !0
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !0
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !0
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !0
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !0
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !0
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !0
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !0
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !0
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !0
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !0
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !0
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !0
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !0
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !0
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !0
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !0
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !0
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !0
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !0
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !0
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !0
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !0
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !0
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !0
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !0
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !0
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !0
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !0
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !0
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !0
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !0
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !0
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !0
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !0
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !0
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !0
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !0
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !0
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !0
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !0
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !0
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !0
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !0
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !0
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !0
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !0
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !0
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !0
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !0
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !0
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !0
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !0
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !0
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !0
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !0
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !0
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !0
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !0
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !0
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !0
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !0
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !0
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !0
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !0
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !0
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !0
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !0
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !0
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !0
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !0
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !0
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !0
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !0
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !0
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !0
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !0
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !0
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !0
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !0
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !0
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !0
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !0
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !0
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !0
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !0
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !0
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !0
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !0
  br label %block_0, !mcsema_real_eip !0

block_0:                                          ; preds = %entry
  store volatile i64 0, i64* %EIP_write, !mcsema_real_eip !0
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !0
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !0
  %3 = sub i64 %2, 8, !mcsema_real_eip !0
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !0
  store i64 %1, i64* %4, !mcsema_real_eip !0
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !0
  store volatile i64 1, i64* %EIP_write, !mcsema_real_eip !1
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !1
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !1
  store volatile i64 4, i64* %EIP_write, !mcsema_real_eip !2
  %6 = load i64, i64* %RBP_read, !mcsema_real_eip !2
  %7 = add i64 %6, -8, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !2
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !2
  store i32 0, i32* %10, !mcsema_real_eip !2
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !3
  %11 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %12 = add i64 %11, -4, !mcsema_real_eip !3
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !3
  %14 = ptrtoint i64* %13 to i64, !mcsema_real_eip !3
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !3
  store i32 0, i32* %15, !mcsema_real_eip !3
  br label %block_12, !mcsema_real_eip !4

block_12:                                         ; preds = %block_4c, %block_0
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !4
  %16 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %17 = add i64 %16, -4, !mcsema_real_eip !4
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !4
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !4
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !4
  %21 = load i32, i32* %20, !mcsema_real_eip !4
  %22 = sext i32 %21 to i64, !mcsema_real_eip !4
  store volatile i64 %22, i64* %RAX_write, !mcsema_real_eip !4
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !5
  %23 = load i64, i64* %RAX_read, !mcsema_real_eip !5
  %24 = sub i64 %23, 104, !mcsema_real_eip !5
  %25 = xor i64 %24, %23, !mcsema_real_eip !5
  %26 = xor i64 %25, 104, !mcsema_real_eip !5
  %27 = and i64 %26, 16, !mcsema_real_eip !5
  %28 = icmp ne i64 %27, 0, !mcsema_real_eip !5
  %29 = zext i1 %28 to i8, !mcsema_real_eip !5
  store volatile i8 %29, i8* %AF_write, !mcsema_real_eip !5
  %30 = trunc i64 %24 to i8, !mcsema_real_eip !5
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !5
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !5
  %33 = zext i1 %32 to i8, !mcsema_real_eip !5
  %34 = xor i8 %33, 1, !mcsema_real_eip !5
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !5
  %36 = zext i1 %35 to i8, !mcsema_real_eip !5
  store volatile i8 %36, i8* %PF_write, !mcsema_real_eip !5
  %37 = icmp eq i64 %24, 0, !mcsema_real_eip !5
  %38 = zext i1 %37 to i8, !mcsema_real_eip !5
  store volatile i8 %38, i8* %ZF_write, !mcsema_real_eip !5
  %39 = lshr i64 %24, 63, !mcsema_real_eip !5
  %40 = trunc i64 %39 to i1, !mcsema_real_eip !5
  %41 = zext i1 %40 to i8, !mcsema_real_eip !5
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !5
  %43 = zext i1 %42 to i8, !mcsema_real_eip !5
  store volatile i8 %43, i8* %SF_write, !mcsema_real_eip !5
  %44 = icmp ult i64 %23, 104, !mcsema_real_eip !5
  %45 = zext i1 %44 to i8, !mcsema_real_eip !5
  store volatile i8 %45, i8* %CF_write, !mcsema_real_eip !5
  %46 = xor i64 %23, 104, !mcsema_real_eip !5
  %47 = xor i64 %23, %24, !mcsema_real_eip !5
  %48 = and i64 %46, %47, !mcsema_real_eip !5
  %49 = lshr i64 %48, 63, !mcsema_real_eip !5
  %50 = trunc i64 %49 to i1, !mcsema_real_eip !5
  %51 = zext i1 %50 to i8, !mcsema_real_eip !5
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !5
  %53 = zext i1 %52 to i8, !mcsema_real_eip !5
  store volatile i8 %53, i8* %OF_write, !mcsema_real_eip !5
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !6
  %54 = load i8, i8* %CF_read, !mcsema_real_eip !6
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !6
  %56 = icmp eq i1 %55, false, !mcsema_real_eip !6
  br i1 %56, label %block_5a, label %block_20, !mcsema_real_eip !6

block_20:                                         ; preds = %block_12
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !7
  %57 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %58 = add i64 %57, -4, !mcsema_real_eip !7
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !7
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !7
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !7
  %62 = load i32, i32* %61, !mcsema_real_eip !7
  %63 = sext i32 %62 to i64, !mcsema_real_eip !7
  store volatile i64 %63, i64* %RAX_write, !mcsema_real_eip !7
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !8
  %64 = ptrtoint %0* @data_60 to i64, !mcsema_real_eip !8
  %65 = add i64 %64, 16, !mcsema_real_eip !8
  %66 = add i64 0, %65, !mcsema_real_eip !8
  %67 = load i64, i64* %RAX_read, !mcsema_real_eip !8
  %68 = mul i64 %67, 8, !mcsema_real_eip !8
  %69 = add i64 %66, %68, !mcsema_real_eip !8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !8
  %71 = load i64, i64* %70, !mcsema_real_eip !8
  %72 = sub i64 %71, 0, !mcsema_real_eip !8
  %73 = xor i64 %72, %71, !mcsema_real_eip !8
  %74 = xor i64 %73, 0, !mcsema_real_eip !8
  %75 = and i64 %74, 16, !mcsema_real_eip !8
  %76 = icmp ne i64 %75, 0, !mcsema_real_eip !8
  %77 = zext i1 %76 to i8, !mcsema_real_eip !8
  store volatile i8 %77, i8* %AF_write, !mcsema_real_eip !8
  %78 = trunc i64 %72 to i8, !mcsema_real_eip !8
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !8
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !8
  %81 = zext i1 %80 to i8, !mcsema_real_eip !8
  %82 = xor i8 %81, 1, !mcsema_real_eip !8
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !8
  %84 = zext i1 %83 to i8, !mcsema_real_eip !8
  store volatile i8 %84, i8* %PF_write, !mcsema_real_eip !8
  %85 = icmp eq i64 %72, 0, !mcsema_real_eip !8
  %86 = zext i1 %85 to i8, !mcsema_real_eip !8
  store volatile i8 %86, i8* %ZF_write, !mcsema_real_eip !8
  %87 = lshr i64 %72, 63, !mcsema_real_eip !8
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !8
  %89 = zext i1 %88 to i8, !mcsema_real_eip !8
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !8
  %91 = zext i1 %90 to i8, !mcsema_real_eip !8
  store volatile i8 %91, i8* %SF_write, !mcsema_real_eip !8
  %92 = icmp ult i64 %71, 0, !mcsema_real_eip !8
  %93 = zext i1 %92 to i8, !mcsema_real_eip !8
  store volatile i8 %93, i8* %CF_write, !mcsema_real_eip !8
  %94 = xor i64 %71, 0, !mcsema_real_eip !8
  %95 = xor i64 %71, %72, !mcsema_real_eip !8
  %96 = and i64 %94, %95, !mcsema_real_eip !8
  %97 = lshr i64 %96, 63, !mcsema_real_eip !8
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !8
  %99 = zext i1 %98 to i8, !mcsema_real_eip !8
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !8
  %101 = zext i1 %100 to i8, !mcsema_real_eip !8
  store volatile i8 %101, i8* %OF_write, !mcsema_real_eip !8
  store volatile i64 45, i64* %EIP_write, !mcsema_real_eip !9
  %102 = load i8, i8* %ZF_read, !mcsema_real_eip !9
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !9
  %104 = icmp eq i1 %103, true, !mcsema_real_eip !9
  br i1 %104, label %block_47, label %block_33, !mcsema_real_eip !9

block_33:                                         ; preds = %block_20
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !10
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %106 = add i64 %105, -4, !mcsema_real_eip !10
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !10
  %108 = ptrtoint i64* %107 to i64, !mcsema_real_eip !10
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !10
  %110 = load i32, i32* %109, !mcsema_real_eip !10
  %111 = sext i32 %110 to i64, !mcsema_real_eip !10
  store volatile i64 %111, i64* %RAX_write, !mcsema_real_eip !10
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !11
  %112 = ptrtoint %0* @data_60 to i64, !mcsema_real_eip !11
  %113 = add i64 %112, 16, !mcsema_real_eip !11
  %114 = add i64 0, %113, !mcsema_real_eip !11
  %115 = load i64, i64* %RAX_read, !mcsema_real_eip !11
  %116 = mul i64 %115, 8, !mcsema_real_eip !11
  %117 = add i64 %114, %116, !mcsema_real_eip !11
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !11
  %119 = load i64, i64* %118, !mcsema_real_eip !11
  store volatile i64 %119, i64* %RAX_write, !mcsema_real_eip !11
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !12
  %120 = load i64, i64* %RAX_read, !mcsema_real_eip !12
  %121 = add i64 %120, 0, !mcsema_real_eip !12
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !12
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !12
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !12
  %125 = load i32, i32* %124, !mcsema_real_eip !12
  %126 = zext i32 %125 to i64, !mcsema_real_eip !12
  store volatile i64 %126, i64* %ECX_write, !mcsema_real_eip !12
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !13
  %127 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %128 = add i64 %127, -8, !mcsema_real_eip !13
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !13
  %130 = ptrtoint i64* %129 to i64, !mcsema_real_eip !13
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !13
  %132 = load i32, i32* %131, !mcsema_real_eip !13
  %133 = load i32, i32* %ECX_read, !mcsema_real_eip !13
  %134 = add i32 %133, %132, !mcsema_real_eip !13
  %135 = xor i32 %134, %132, !mcsema_real_eip !13
  %136 = xor i32 %135, %133, !mcsema_real_eip !13
  %137 = and i32 %136, 16, !mcsema_real_eip !13
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !13
  %139 = zext i1 %138 to i8, !mcsema_real_eip !13
  store volatile i8 %139, i8* %AF_write, !mcsema_real_eip !13
  %140 = lshr i32 %134, 31, !mcsema_real_eip !13
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !13
  %142 = zext i1 %141 to i8, !mcsema_real_eip !13
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !13
  %144 = zext i1 %143 to i8, !mcsema_real_eip !13
  store volatile i8 %144, i8* %SF_write, !mcsema_real_eip !13
  %145 = icmp eq i32 %134, 0, !mcsema_real_eip !13
  %146 = zext i1 %145 to i8, !mcsema_real_eip !13
  store volatile i8 %146, i8* %ZF_write, !mcsema_real_eip !13
  %147 = xor i32 %132, %133, !mcsema_real_eip !13
  %148 = xor i32 %147, -1, !mcsema_real_eip !13
  %149 = xor i32 %132, %134, !mcsema_real_eip !13
  %150 = and i32 %148, %149, !mcsema_real_eip !13
  %151 = lshr i32 %150, 31, !mcsema_real_eip !13
  %152 = and i32 %151, 1, !mcsema_real_eip !13
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !13
  %154 = zext i1 %153 to i8, !mcsema_real_eip !13
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !13
  %156 = zext i1 %155 to i8, !mcsema_real_eip !13
  store volatile i8 %156, i8* %OF_write, !mcsema_real_eip !13
  %157 = trunc i32 %134 to i8, !mcsema_real_eip !13
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !13
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !13
  %160 = zext i1 %159 to i8, !mcsema_real_eip !13
  %161 = xor i8 %160, 1, !mcsema_real_eip !13
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !13
  %163 = zext i1 %162 to i8, !mcsema_real_eip !13
  store volatile i8 %163, i8* %PF_write, !mcsema_real_eip !13
  %164 = icmp ult i32 %134, %132, !mcsema_real_eip !13
  %165 = zext i1 %164 to i8, !mcsema_real_eip !13
  store volatile i8 %165, i8* %CF_write, !mcsema_real_eip !13
  %166 = zext i32 %134 to i64, !mcsema_real_eip !13
  store volatile i64 %166, i64* %ECX_write, !mcsema_real_eip !13
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !14
  %167 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %168 = add i64 %167, -8, !mcsema_real_eip !14
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !14
  %170 = load i32, i32* %ECX_read, !mcsema_real_eip !14
  %171 = ptrtoint i64* %169 to i64, !mcsema_real_eip !14
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !14
  store i32 %170, i32* %172, !mcsema_real_eip !14
  br label %block_47, !mcsema_real_eip !15

block_47:                                         ; preds = %block_33, %block_20
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !15
  br label %block_4c, !mcsema_real_eip !15

block_4c:                                         ; preds = %block_47
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !16
  %173 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %174 = add i64 %173, -4, !mcsema_real_eip !16
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !16
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !16
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !16
  %178 = load i32, i32* %177, !mcsema_real_eip !16
  %179 = zext i32 %178 to i64, !mcsema_real_eip !16
  store volatile i64 %179, i64* %EAX_write, !mcsema_real_eip !16
  store volatile i64 79, i64* %EIP_write, !mcsema_real_eip !17
  %180 = load i32, i32* %EAX_read, !mcsema_real_eip !17
  %181 = add i32 1, %180, !mcsema_real_eip !17
  %182 = xor i32 %181, %180, !mcsema_real_eip !17
  %183 = xor i32 %182, 1, !mcsema_real_eip !17
  %184 = and i32 %183, 16, !mcsema_real_eip !17
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !17
  %186 = zext i1 %185 to i8, !mcsema_real_eip !17
  store volatile i8 %186, i8* %AF_write, !mcsema_real_eip !17
  %187 = lshr i32 %181, 31, !mcsema_real_eip !17
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !17
  %189 = zext i1 %188 to i8, !mcsema_real_eip !17
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !17
  %191 = zext i1 %190 to i8, !mcsema_real_eip !17
  store volatile i8 %191, i8* %SF_write, !mcsema_real_eip !17
  %192 = icmp eq i32 %181, 0, !mcsema_real_eip !17
  %193 = zext i1 %192 to i8, !mcsema_real_eip !17
  store volatile i8 %193, i8* %ZF_write, !mcsema_real_eip !17
  %194 = xor i32 %180, 1, !mcsema_real_eip !17
  %195 = xor i32 %194, -1, !mcsema_real_eip !17
  %196 = xor i32 %180, %181, !mcsema_real_eip !17
  %197 = and i32 %195, %196, !mcsema_real_eip !17
  %198 = lshr i32 %197, 31, !mcsema_real_eip !17
  %199 = and i32 %198, 1, !mcsema_real_eip !17
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !17
  %201 = zext i1 %200 to i8, !mcsema_real_eip !17
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !17
  %203 = zext i1 %202 to i8, !mcsema_real_eip !17
  store volatile i8 %203, i8* %OF_write, !mcsema_real_eip !17
  %204 = trunc i32 %181 to i8, !mcsema_real_eip !17
  %205 = call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !17
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !17
  %207 = zext i1 %206 to i8, !mcsema_real_eip !17
  %208 = xor i8 %207, 1, !mcsema_real_eip !17
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !17
  %210 = zext i1 %209 to i8, !mcsema_real_eip !17
  store volatile i8 %210, i8* %PF_write, !mcsema_real_eip !17
  %211 = icmp ult i32 %181, %180, !mcsema_real_eip !17
  %212 = zext i1 %211 to i8, !mcsema_real_eip !17
  store volatile i8 %212, i8* %CF_write, !mcsema_real_eip !17
  %213 = zext i32 %181 to i64, !mcsema_real_eip !17
  store volatile i64 %213, i64* %EAX_write, !mcsema_real_eip !17
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !18
  %214 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %215 = add i64 %214, -4, !mcsema_real_eip !18
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !18
  %217 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %218 = ptrtoint i64* %216 to i64, !mcsema_real_eip !18
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !18
  store i32 %217, i32* %219, !mcsema_real_eip !18
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !19
  br label %block_12, !mcsema_real_eip !19

block_5a:                                         ; preds = %block_12
  store volatile i64 90, i64* %EIP_write, !mcsema_real_eip !20
  %220 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %221 = add i64 %220, -8, !mcsema_real_eip !20
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !20
  %223 = ptrtoint i64* %222 to i64, !mcsema_real_eip !20
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !20
  %225 = load i32, i32* %224, !mcsema_real_eip !20
  %226 = zext i32 %225 to i64, !mcsema_real_eip !20
  store volatile i64 %226, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !21
  %227 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !21
  %229 = load i64, i64* %228, !mcsema_real_eip !21
  store volatile i64 %229, i64* %RBP_write, !mcsema_real_eip !21
  %230 = add i64 %227, 8, !mcsema_real_eip !21
  store volatile i64 %230, i64* %RSP_write, !mcsema_real_eip !21
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !22
  %231 = load i64, i64* %RSP_read, !mcsema_real_eip !22
  %232 = add i64 %231, 8, !mcsema_real_eip !22
  %233 = inttoptr i64 %231 to i64*, !mcsema_real_eip !22
  %234 = load i64, i64* %233, !mcsema_real_eip !22
  store volatile i64 %234, i64* %RIP_write, !mcsema_real_eip !22
  store volatile i64 %232, i64* %RSP_write, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @printdata() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 11}
!4 = !{i64 18}
!5 = !{i64 22}
!6 = !{i64 26}
!7 = !{i64 32}
!8 = !{i64 36}
!9 = !{i64 45}
!10 = !{i64 51}
!11 = !{i64 55}
!12 = !{i64 63}
!13 = !{i64 65}
!14 = !{i64 68}
!15 = !{i64 71}
!16 = !{i64 76}
!17 = !{i64 79}
!18 = !{i64 82}
!19 = !{i64 85}
!20 = !{i64 90}
!21 = !{i64 93}
!22 = !{i64 94}
