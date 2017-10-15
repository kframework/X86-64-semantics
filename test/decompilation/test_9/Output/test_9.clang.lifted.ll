; ModuleID = 'Output/test_9.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

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
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
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
  br label %block_1, !mcsema_real_eip !0

block_1:                                          ; preds = %entry
  store volatile i64 1, i64* %EIP_write, !mcsema_real_eip !0
  %1 = load i32, i32* %EAX_read, !mcsema_real_eip !0
  %2 = zext i32 %1 to i64, !mcsema_real_eip !0
  store volatile i64 %2, i64* %ECX_write, !mcsema_real_eip !0
  store volatile i64 3, i64* %EIP_write, !mcsema_real_eip !1
  %3 = load i32, i32* %EAX_read, !mcsema_real_eip !1
  %4 = load i32, i32* %EAX_read, !mcsema_real_eip !1
  %5 = xor i32 %3, %4, !mcsema_real_eip !1
  %6 = trunc i8 0 to i1, !mcsema_real_eip !1
  %7 = zext i1 %6 to i8, !mcsema_real_eip !1
  store volatile i8 %7, i8* %CF_write, !mcsema_real_eip !1
  %8 = trunc i8 0 to i1, !mcsema_real_eip !1
  %9 = zext i1 %8 to i8, !mcsema_real_eip !1
  store volatile i8 %9, i8* %OF_write, !mcsema_real_eip !1
  %10 = lshr i32 %5, 31, !mcsema_real_eip !1
  %11 = trunc i32 %10 to i1, !mcsema_real_eip !1
  %12 = zext i1 %11 to i8, !mcsema_real_eip !1
  %13 = trunc i8 %12 to i1, !mcsema_real_eip !1
  %14 = zext i1 %13 to i8, !mcsema_real_eip !1
  store volatile i8 %14, i8* %SF_write, !mcsema_real_eip !1
  %15 = icmp eq i32 %5, 0, !mcsema_real_eip !1
  %16 = zext i1 %15 to i8, !mcsema_real_eip !1
  store volatile i8 %16, i8* %ZF_write, !mcsema_real_eip !1
  %17 = trunc i32 %5 to i8, !mcsema_real_eip !1
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !1
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !1
  %20 = zext i1 %19 to i8, !mcsema_real_eip !1
  %21 = xor i8 %20, 1, !mcsema_real_eip !1
  %22 = trunc i8 %21 to i1, !mcsema_real_eip !1
  %23 = zext i1 %22 to i8, !mcsema_real_eip !1
  store volatile i8 %23, i8* %PF_write, !mcsema_real_eip !1
  %24 = zext i32 %5 to i64, !mcsema_real_eip !1
  store volatile i64 %24, i64* %EAX_write, !mcsema_real_eip !1
  store volatile i64 5, i64* %EIP_write, !mcsema_real_eip !2
  %25 = load i32, i32* %EAX_read, !mcsema_real_eip !2
  %26 = load i32, i32* %EAX_read, !mcsema_real_eip !2
  %27 = add i32 %26, 1, !mcsema_real_eip !2
  %28 = icmp eq i32 %27, 0, !mcsema_real_eip !2
  %29 = zext i1 %28 to i8, !mcsema_real_eip !2
  store volatile i8 %29, i8* %ZF_write, !mcsema_real_eip !2
  %30 = trunc i32 %27 to i8, !mcsema_real_eip !2
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !2
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !2
  %33 = zext i1 %32 to i8, !mcsema_real_eip !2
  %34 = xor i8 %33, 1, !mcsema_real_eip !2
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !2
  %36 = zext i1 %35 to i8, !mcsema_real_eip !2
  store volatile i8 %36, i8* %PF_write, !mcsema_real_eip !2
  %37 = lshr i32 %27, 31, !mcsema_real_eip !2
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !2
  %39 = zext i1 %38 to i8, !mcsema_real_eip !2
  %40 = trunc i8 %39 to i1, !mcsema_real_eip !2
  %41 = zext i1 %40 to i8, !mcsema_real_eip !2
  store volatile i8 %41, i8* %SF_write, !mcsema_real_eip !2
  %42 = xor i32 %26, 1, !mcsema_real_eip !2
  %43 = xor i32 %42, -1, !mcsema_real_eip !2
  %44 = xor i32 %26, %27, !mcsema_real_eip !2
  %45 = and i32 %43, %44, !mcsema_real_eip !2
  %46 = lshr i32 %45, 31, !mcsema_real_eip !2
  %47 = and i32 %46, 1, !mcsema_real_eip !2
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !2
  %49 = zext i1 %48 to i8, !mcsema_real_eip !2
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !2
  %51 = zext i1 %50 to i8, !mcsema_real_eip !2
  store volatile i8 %51, i8* %OF_write, !mcsema_real_eip !2
  %52 = zext i32 %27 to i64, !mcsema_real_eip !2
  store volatile i64 %52, i64* %EAX_write, !mcsema_real_eip !2
  %53 = load i32, i32* %EAX_read, !mcsema_real_eip !2
  %54 = xor i32 %25, %53, !mcsema_real_eip !2
  %55 = xor i32 %54, 1, !mcsema_real_eip !2
  %56 = and i32 %55, 16, !mcsema_real_eip !2
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !2
  %58 = zext i1 %57 to i8, !mcsema_real_eip !2
  store volatile i8 %58, i8* %AF_write, !mcsema_real_eip !2
  store volatile i64 7, i64* %EIP_write, !mcsema_real_eip !3
  %59 = load i32, i32* %EBX_read, !mcsema_real_eip !3
  %60 = load i32, i32* %EBX_read, !mcsema_real_eip !3
  %61 = xor i32 %59, %60, !mcsema_real_eip !3
  %62 = trunc i8 0 to i1, !mcsema_real_eip !3
  %63 = zext i1 %62 to i8, !mcsema_real_eip !3
  store volatile i8 %63, i8* %CF_write, !mcsema_real_eip !3
  %64 = trunc i8 0 to i1, !mcsema_real_eip !3
  %65 = zext i1 %64 to i8, !mcsema_real_eip !3
  store volatile i8 %65, i8* %OF_write, !mcsema_real_eip !3
  %66 = lshr i32 %61, 31, !mcsema_real_eip !3
  %67 = trunc i32 %66 to i1, !mcsema_real_eip !3
  %68 = zext i1 %67 to i8, !mcsema_real_eip !3
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !3
  %70 = zext i1 %69 to i8, !mcsema_real_eip !3
  store volatile i8 %70, i8* %SF_write, !mcsema_real_eip !3
  %71 = icmp eq i32 %61, 0, !mcsema_real_eip !3
  %72 = zext i1 %71 to i8, !mcsema_real_eip !3
  store volatile i8 %72, i8* %ZF_write, !mcsema_real_eip !3
  %73 = trunc i32 %61 to i8, !mcsema_real_eip !3
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !3
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !3
  %76 = zext i1 %75 to i8, !mcsema_real_eip !3
  %77 = xor i8 %76, 1, !mcsema_real_eip !3
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !3
  %79 = zext i1 %78 to i8, !mcsema_real_eip !3
  store volatile i8 %79, i8* %PF_write, !mcsema_real_eip !3
  %80 = zext i32 %61 to i64, !mcsema_real_eip !3
  store volatile i64 %80, i64* %EBX_write, !mcsema_real_eip !3
  br label %block_9, !mcsema_real_eip !4

block_9:                                          ; preds = %block_d, %block_1
  store volatile i64 9, i64* %EIP_write, !mcsema_real_eip !4
  %81 = load i32, i32* %EBX_read, !mcsema_real_eip !4
  %82 = load i32, i32* %ECX_read, !mcsema_real_eip !4
  %83 = sub i32 %81, %82, !mcsema_real_eip !4
  %84 = xor i32 %83, %81, !mcsema_real_eip !4
  %85 = xor i32 %84, %82, !mcsema_real_eip !4
  %86 = and i32 %85, 16, !mcsema_real_eip !4
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !4
  %88 = zext i1 %87 to i8, !mcsema_real_eip !4
  store volatile i8 %88, i8* %AF_write, !mcsema_real_eip !4
  %89 = trunc i32 %83 to i8, !mcsema_real_eip !4
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !4
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !4
  %92 = zext i1 %91 to i8, !mcsema_real_eip !4
  %93 = xor i8 %92, 1, !mcsema_real_eip !4
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !4
  %95 = zext i1 %94 to i8, !mcsema_real_eip !4
  store volatile i8 %95, i8* %PF_write, !mcsema_real_eip !4
  %96 = icmp eq i32 %83, 0, !mcsema_real_eip !4
  %97 = zext i1 %96 to i8, !mcsema_real_eip !4
  store volatile i8 %97, i8* %ZF_write, !mcsema_real_eip !4
  %98 = lshr i32 %83, 31, !mcsema_real_eip !4
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !4
  %100 = zext i1 %99 to i8, !mcsema_real_eip !4
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !4
  %102 = zext i1 %101 to i8, !mcsema_real_eip !4
  store volatile i8 %102, i8* %SF_write, !mcsema_real_eip !4
  %103 = icmp ult i32 %81, %82, !mcsema_real_eip !4
  %104 = zext i1 %103 to i8, !mcsema_real_eip !4
  store volatile i8 %104, i8* %CF_write, !mcsema_real_eip !4
  %105 = xor i32 %81, %82, !mcsema_real_eip !4
  %106 = xor i32 %81, %83, !mcsema_real_eip !4
  %107 = and i32 %105, %106, !mcsema_real_eip !4
  %108 = lshr i32 %107, 31, !mcsema_real_eip !4
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !4
  %110 = zext i1 %109 to i8, !mcsema_real_eip !4
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !4
  %112 = zext i1 %111 to i8, !mcsema_real_eip !4
  store volatile i8 %112, i8* %OF_write, !mcsema_real_eip !4
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !5
  %113 = load i8, i8* %ZF_read, !mcsema_real_eip !5
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !5
  %115 = icmp eq i1 %114, true, !mcsema_real_eip !5
  br i1 %115, label %block_13, label %block_d, !mcsema_real_eip !5

block_d:                                          ; preds = %block_9
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !6
  %116 = load i32, i32* %EAX_read, !mcsema_real_eip !6
  %117 = load i32, i32* %EAX_read, !mcsema_real_eip !6
  %118 = add i32 %117, %116, !mcsema_real_eip !6
  %119 = xor i32 %118, %116, !mcsema_real_eip !6
  %120 = xor i32 %119, %117, !mcsema_real_eip !6
  %121 = and i32 %120, 16, !mcsema_real_eip !6
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !6
  %123 = zext i1 %122 to i8, !mcsema_real_eip !6
  store volatile i8 %123, i8* %AF_write, !mcsema_real_eip !6
  %124 = lshr i32 %118, 31, !mcsema_real_eip !6
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !6
  %126 = zext i1 %125 to i8, !mcsema_real_eip !6
  %127 = trunc i8 %126 to i1, !mcsema_real_eip !6
  %128 = zext i1 %127 to i8, !mcsema_real_eip !6
  store volatile i8 %128, i8* %SF_write, !mcsema_real_eip !6
  %129 = icmp eq i32 %118, 0, !mcsema_real_eip !6
  %130 = zext i1 %129 to i8, !mcsema_real_eip !6
  store volatile i8 %130, i8* %ZF_write, !mcsema_real_eip !6
  %131 = xor i32 %116, %117, !mcsema_real_eip !6
  %132 = xor i32 %131, -1, !mcsema_real_eip !6
  %133 = xor i32 %116, %118, !mcsema_real_eip !6
  %134 = and i32 %132, %133, !mcsema_real_eip !6
  %135 = lshr i32 %134, 31, !mcsema_real_eip !6
  %136 = and i32 %135, 1, !mcsema_real_eip !6
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !6
  %138 = zext i1 %137 to i8, !mcsema_real_eip !6
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !6
  %140 = zext i1 %139 to i8, !mcsema_real_eip !6
  store volatile i8 %140, i8* %OF_write, !mcsema_real_eip !6
  %141 = trunc i32 %118 to i8, !mcsema_real_eip !6
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !6
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !6
  %144 = zext i1 %143 to i8, !mcsema_real_eip !6
  %145 = xor i8 %144, 1, !mcsema_real_eip !6
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !6
  %147 = zext i1 %146 to i8, !mcsema_real_eip !6
  store volatile i8 %147, i8* %PF_write, !mcsema_real_eip !6
  %148 = icmp ult i32 %118, %116, !mcsema_real_eip !6
  %149 = zext i1 %148 to i8, !mcsema_real_eip !6
  store volatile i8 %149, i8* %CF_write, !mcsema_real_eip !6
  %150 = zext i32 %118 to i64, !mcsema_real_eip !6
  store volatile i64 %150, i64* %EAX_write, !mcsema_real_eip !6
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !7
  %151 = load i32, i32* %EBX_read, !mcsema_real_eip !7
  %152 = load i32, i32* %EBX_read, !mcsema_real_eip !7
  %153 = add i32 %152, 1, !mcsema_real_eip !7
  %154 = icmp eq i32 %153, 0, !mcsema_real_eip !7
  %155 = zext i1 %154 to i8, !mcsema_real_eip !7
  store volatile i8 %155, i8* %ZF_write, !mcsema_real_eip !7
  %156 = trunc i32 %153 to i8, !mcsema_real_eip !7
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !7
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !7
  %159 = zext i1 %158 to i8, !mcsema_real_eip !7
  %160 = xor i8 %159, 1, !mcsema_real_eip !7
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !7
  %162 = zext i1 %161 to i8, !mcsema_real_eip !7
  store volatile i8 %162, i8* %PF_write, !mcsema_real_eip !7
  %163 = lshr i32 %153, 31, !mcsema_real_eip !7
  %164 = trunc i32 %163 to i1, !mcsema_real_eip !7
  %165 = zext i1 %164 to i8, !mcsema_real_eip !7
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !7
  %167 = zext i1 %166 to i8, !mcsema_real_eip !7
  store volatile i8 %167, i8* %SF_write, !mcsema_real_eip !7
  %168 = xor i32 %152, 1, !mcsema_real_eip !7
  %169 = xor i32 %168, -1, !mcsema_real_eip !7
  %170 = xor i32 %152, %153, !mcsema_real_eip !7
  %171 = and i32 %169, %170, !mcsema_real_eip !7
  %172 = lshr i32 %171, 31, !mcsema_real_eip !7
  %173 = and i32 %172, 1, !mcsema_real_eip !7
  %174 = trunc i32 %173 to i1, !mcsema_real_eip !7
  %175 = zext i1 %174 to i8, !mcsema_real_eip !7
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !7
  %177 = zext i1 %176 to i8, !mcsema_real_eip !7
  store volatile i8 %177, i8* %OF_write, !mcsema_real_eip !7
  %178 = zext i32 %153 to i64, !mcsema_real_eip !7
  store volatile i64 %178, i64* %EBX_write, !mcsema_real_eip !7
  %179 = load i32, i32* %EBX_read, !mcsema_real_eip !7
  %180 = xor i32 %151, %179, !mcsema_real_eip !7
  %181 = xor i32 %180, 1, !mcsema_real_eip !7
  %182 = and i32 %181, 16, !mcsema_real_eip !7
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !7
  %184 = zext i1 %183 to i8, !mcsema_real_eip !7
  store volatile i8 %184, i8* %AF_write, !mcsema_real_eip !7
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !8
  br label %block_9, !mcsema_real_eip !8

block_13:                                         ; preds = %block_9
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !9
  %185 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %186 = add i64 %185, 8, !mcsema_real_eip !9
  %187 = inttoptr i64 %185 to i64*, !mcsema_real_eip !9
  %188 = load i64, i64* %187, !mcsema_real_eip !9
  store volatile i64 %188, i64* %RIP_write, !mcsema_real_eip !9
  store volatile i64 %186, i64* %RSP_write, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!0 = !{i64 1}
!1 = !{i64 3}
!2 = !{i64 5}
!3 = !{i64 7}
!4 = !{i64 9}
!5 = !{i64 11}
!6 = !{i64 13}
!7 = !{i64 15}
!8 = !{i64 17}
!9 = !{i64 19}
