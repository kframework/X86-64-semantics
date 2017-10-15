; ModuleID = 'Output/test_13_1.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm "  .globl sub_10;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [80 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_30 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\00\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\00\1D\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
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
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !2
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !2
  %8 = load i64, i64* %7, !mcsema_real_eip !2
  store volatile i64 %8, i64* %RBP_write, !mcsema_real_eip !2
  %9 = add i64 %6, 8, !mcsema_real_eip !2
  store volatile i64 %9, i64* %RSP_write, !mcsema_real_eip !2
  store volatile i64 5, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %RSP_read, !mcsema_real_eip !3
  %11 = add i64 %10, 8, !mcsema_real_eip !3
  %12 = inttoptr i64 %10 to i64*, !mcsema_real_eip !3
  %13 = load i64, i64* %12, !mcsema_real_eip !3
  store volatile i64 %13, i64* %RIP_write, !mcsema_real_eip !3
  store volatile i64 %11, i64* %RSP_write, !mcsema_real_eip !3
  ret void, !mcsema_real_eip !3
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !4
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !4
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !4
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !4
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !4
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !4
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !4
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !4
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !4
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !4
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !4
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !4
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !4
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !4
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !4
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !4
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !4
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !4
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !4
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !4
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !4
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !4
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !4
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !4
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !4
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !4
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !4
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !4
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !4
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !4
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !4
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !4
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !4
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !4
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !4
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !4
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !4
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !4
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !4
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !4
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !4
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !4
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !4
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !4
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !4
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !4
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !4
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !4
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !4
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !4
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !4
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !4
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !4
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !4
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !4
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !4
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !4
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !4
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !4
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !4
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !4
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !4
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !4
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !4
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !4
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !4
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !4
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !4
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !4
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !4
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !4
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !4
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !4
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !4
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !4
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !4
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !4
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !4
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !4
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !4
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !4
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !4
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !4
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !4
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !4
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !4
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !4
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !4
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !4
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !4
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !4
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !4
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !4
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !4
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !4
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !4
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !4
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !4
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !4
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !4
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !4
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !4
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !4
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !4
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !4
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !4
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !4
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !4
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !4
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !4
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !4
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !4
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !4
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !4
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !4
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !4
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !4
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !4
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !4
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !4
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !4
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !4
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !4
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !4
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !4
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !4
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !4
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !4
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !4
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !4
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !4
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !4
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !4
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !4
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !4
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !4
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !4
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !4
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !4
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !4
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !4
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !4
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !4
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !4
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !4
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !4
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !4
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !4
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !4
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !4
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !4
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !4
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !4
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !4
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !4
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !4
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !4
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !4
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !4
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !4
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !4
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !4
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !4
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !4
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !4
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !4
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !4
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !4
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !4
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !4
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !4
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !4
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !4
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !4
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !4
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !4
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !4
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !4
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !4
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !4
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !4
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !4
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !4
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !4
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !4
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !4
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !4
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !4
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !4
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !4
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !4
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !4
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !4
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !4
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !4
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !4
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !4
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !4
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !4
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !4
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !4
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !4
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !4
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !4
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !4
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !4
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !4
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !4
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !4
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !4
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !4
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !4
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !4
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !4
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !4
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !4
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !4
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !4
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !4
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !4
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !4
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !4
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !4
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !4
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !4
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !4
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !4
  br label %block_10, !mcsema_real_eip !4

block_10:                                         ; preds = %entry
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !4
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !4
  %3 = sub i64 %2, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %1, i64* %4, !mcsema_real_eip !4
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !4
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !5
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !5
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !5
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !6
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !6
  %7 = sext i8 16 to i64, !mcsema_real_eip !6
  %8 = sub i64 %6, %7, !mcsema_real_eip !6
  %9 = xor i64 %8, %6, !mcsema_real_eip !6
  %10 = xor i64 %9, %7, !mcsema_real_eip !6
  %11 = and i64 %10, 16, !mcsema_real_eip !6
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !6
  %13 = zext i1 %12 to i8, !mcsema_real_eip !6
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !6
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !6
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !6
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !6
  %17 = zext i1 %16 to i8, !mcsema_real_eip !6
  %18 = xor i8 %17, 1, !mcsema_real_eip !6
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !6
  %20 = zext i1 %19 to i8, !mcsema_real_eip !6
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !6
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !6
  %22 = zext i1 %21 to i8, !mcsema_real_eip !6
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !6
  %23 = lshr i64 %8, 63, !mcsema_real_eip !6
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !6
  %25 = zext i1 %24 to i8, !mcsema_real_eip !6
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !6
  %27 = zext i1 %26 to i8, !mcsema_real_eip !6
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !6
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !6
  %29 = zext i1 %28 to i8, !mcsema_real_eip !6
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !6
  %30 = xor i64 %6, %7, !mcsema_real_eip !6
  %31 = xor i64 %6, %8, !mcsema_real_eip !6
  %32 = and i64 %30, %31, !mcsema_real_eip !6
  %33 = lshr i64 %32, 63, !mcsema_real_eip !6
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !6
  %35 = zext i1 %34 to i8, !mcsema_real_eip !6
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !6
  %37 = zext i1 %36 to i8, !mcsema_real_eip !6
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !6
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !6
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !7
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %39 = add i64 %38, -4, !mcsema_real_eip !7
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !7
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !7
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !7
  store i32 2, i32* %42, !mcsema_real_eip !7
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !8
  %43 = load i64, i64* %RSP_read, !mcsema_real_eip !8
  %44 = sub i64 %43, 8, !mcsema_real_eip !8
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !8
  store i64 36, i64* %45, !mcsema_real_eip !8
  store volatile i64 %44, i64* %RSP_write, !mcsema_real_eip !8
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !8
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !9
  %46 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %47 = add i64 %46, -4, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !9
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !9
  %51 = load i32, i32* %50, !mcsema_real_eip !9
  %52 = zext i32 %51 to i64, !mcsema_real_eip !9
  store volatile i64 %52, i64* %EAX_write, !mcsema_real_eip !9
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !10
  %53 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %54 = add i64 16, %53, !mcsema_real_eip !10
  %55 = xor i64 %54, %53, !mcsema_real_eip !10
  %56 = xor i64 %55, 16, !mcsema_real_eip !10
  %57 = and i64 %56, 16, !mcsema_real_eip !10
  %58 = icmp ne i64 %57, 0, !mcsema_real_eip !10
  %59 = zext i1 %58 to i8, !mcsema_real_eip !10
  store volatile i8 %59, i8* %AF_write, !mcsema_real_eip !10
  %60 = lshr i64 %54, 63, !mcsema_real_eip !10
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !10
  %62 = zext i1 %61 to i8, !mcsema_real_eip !10
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !10
  %64 = zext i1 %63 to i8, !mcsema_real_eip !10
  store volatile i8 %64, i8* %SF_write, !mcsema_real_eip !10
  %65 = icmp eq i64 %54, 0, !mcsema_real_eip !10
  %66 = zext i1 %65 to i8, !mcsema_real_eip !10
  store volatile i8 %66, i8* %ZF_write, !mcsema_real_eip !10
  %67 = xor i64 %53, 16, !mcsema_real_eip !10
  %68 = xor i64 %67, -1, !mcsema_real_eip !10
  %69 = xor i64 %53, %54, !mcsema_real_eip !10
  %70 = and i64 %68, %69, !mcsema_real_eip !10
  %71 = lshr i64 %70, 63, !mcsema_real_eip !10
  %72 = and i64 %71, 1, !mcsema_real_eip !10
  %73 = trunc i64 %72 to i1, !mcsema_real_eip !10
  %74 = zext i1 %73 to i8, !mcsema_real_eip !10
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !10
  %76 = zext i1 %75 to i8, !mcsema_real_eip !10
  store volatile i8 %76, i8* %OF_write, !mcsema_real_eip !10
  %77 = trunc i64 %54 to i8, !mcsema_real_eip !10
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !10
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !10
  %80 = zext i1 %79 to i8, !mcsema_real_eip !10
  %81 = xor i8 %80, 1, !mcsema_real_eip !10
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !10
  %83 = zext i1 %82 to i8, !mcsema_real_eip !10
  store volatile i8 %83, i8* %PF_write, !mcsema_real_eip !10
  %84 = icmp ult i64 %54, %53, !mcsema_real_eip !10
  %85 = zext i1 %84 to i8, !mcsema_real_eip !10
  store volatile i8 %85, i8* %CF_write, !mcsema_real_eip !10
  store volatile i64 %54, i64* %RSP_write, !mcsema_real_eip !10
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !11
  %86 = load i64, i64* %RSP_read, !mcsema_real_eip !11
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !11
  %88 = load i64, i64* %87, !mcsema_real_eip !11
  store volatile i64 %88, i64* %RBP_write, !mcsema_real_eip !11
  %89 = add i64 %86, 8, !mcsema_real_eip !11
  store volatile i64 %89, i64* %RSP_write, !mcsema_real_eip !11
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !12
  %90 = load i64, i64* %RSP_read, !mcsema_real_eip !12
  %91 = add i64 %90, 8, !mcsema_real_eip !12
  %92 = inttoptr i64 %90 to i64*, !mcsema_real_eip !12
  %93 = load i64, i64* %92, !mcsema_real_eip !12
  store volatile i64 %93, i64* %RIP_write, !mcsema_real_eip !12
  store volatile i64 %91, i64* %RSP_write, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @doWork() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 5}
!4 = !{i64 16}
!5 = !{i64 17}
!6 = !{i64 20}
!7 = !{i64 24}
!8 = !{i64 31}
!9 = !{i64 36}
!10 = !{i64 39}
!11 = !{i64 43}
!12 = !{i64 44}
