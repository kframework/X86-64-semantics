; ModuleID = 'Output/test_20.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_2d0 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\CD\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %7 = add i64 %6, -4, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = load i32, i32* %EDI_read, !mcsema_real_eip !2
  %10 = ptrtoint i64* %8 to i64, !mcsema_real_eip !2
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !2
  store i32 %9, i32* %11, !mcsema_real_eip !2
  store volatile i64 7, i64* %EIP_write, !mcsema_real_eip !3
  %12 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %13 = add i64 %12, -8, !mcsema_real_eip !3
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !3
  %15 = ptrtoint i64* %14 to i64, !mcsema_real_eip !3
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !3
  store i32 0, i32* %16, !mcsema_real_eip !3
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !4
  %17 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %18 = add i64 %17, -4, !mcsema_real_eip !4
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !4
  %20 = ptrtoint i64* %19 to i64, !mcsema_real_eip !4
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !4
  %22 = load i32, i32* %21, !mcsema_real_eip !4
  %23 = zext i32 %22 to i64, !mcsema_real_eip !4
  store volatile i64 %23, i64* %EDI_write, !mcsema_real_eip !4
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !5
  %24 = load i32, i32* %EDI_read, !mcsema_real_eip !5
  %25 = load i32, i32* %EDI_read, !mcsema_real_eip !5
  %26 = and i32 %24, %25, !mcsema_real_eip !5
  %27 = icmp eq i32 %26, 0, !mcsema_real_eip !5
  %28 = zext i1 %27 to i8, !mcsema_real_eip !5
  store volatile i8 %28, i8* %ZF_write, !mcsema_real_eip !5
  %29 = lshr i32 %26, 31, !mcsema_real_eip !5
  %30 = trunc i32 %29 to i1, !mcsema_real_eip !5
  %31 = zext i1 %30 to i8, !mcsema_real_eip !5
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !5
  %33 = zext i1 %32 to i8, !mcsema_real_eip !5
  store volatile i8 %33, i8* %SF_write, !mcsema_real_eip !5
  %34 = trunc i32 %26 to i8, !mcsema_real_eip !5
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !5
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !5
  %37 = zext i1 %36 to i8, !mcsema_real_eip !5
  %38 = xor i8 %37, 1, !mcsema_real_eip !5
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !5
  %40 = zext i1 %39 to i8, !mcsema_real_eip !5
  store volatile i8 %40, i8* %PF_write, !mcsema_real_eip !5
  %41 = load i8, i8* %PF_read, !mcsema_real_eip !5
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !5
  %43 = xor i1 false, %42, !mcsema_real_eip !5
  %44 = and i1 true, %43, !mcsema_real_eip !5
  %45 = zext i1 %44 to i8, !mcsema_real_eip !5
  store volatile i8 %45, i8* %PF_write, !mcsema_real_eip !5
  %46 = trunc i8 0 to i1, !mcsema_real_eip !5
  %47 = zext i1 %46 to i8, !mcsema_real_eip !5
  store volatile i8 %47, i8* %CF_write, !mcsema_real_eip !5
  %48 = trunc i8 0 to i1, !mcsema_real_eip !5
  %49 = zext i1 %48 to i8, !mcsema_real_eip !5
  store volatile i8 %49, i8* %OF_write, !mcsema_real_eip !5
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !6
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %51 = add i64 %50, -12, !mcsema_real_eip !6
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !6
  %53 = load i32, i32* %EDI_read, !mcsema_real_eip !6
  %54 = ptrtoint i64* %52 to i64, !mcsema_real_eip !6
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !6
  store i32 %53, i32* %55, !mcsema_real_eip !6
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !7
  %56 = load i8, i8* %ZF_read, !mcsema_real_eip !7
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !7
  %58 = icmp eq i1 %57, true, !mcsema_real_eip !7
  br i1 %58, label %block_19f, label %block_1c, !mcsema_real_eip !7

block_1c:                                         ; preds = %block_0
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !8
  br label %block_21, !mcsema_real_eip !8

block_21:                                         ; preds = %block_1c
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !9
  %59 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %60 = add i64 %59, -12, !mcsema_real_eip !9
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !9
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !9
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !9
  %64 = load i32, i32* %63, !mcsema_real_eip !9
  %65 = zext i32 %64 to i64, !mcsema_real_eip !9
  store volatile i64 %65, i64* %EAX_write, !mcsema_real_eip !9
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !10
  %66 = load i32, i32* %EAX_read, !mcsema_real_eip !10
  %67 = sub i32 %66, 1, !mcsema_real_eip !10
  %68 = xor i32 %67, %66, !mcsema_real_eip !10
  %69 = xor i32 %68, 1, !mcsema_real_eip !10
  %70 = and i32 %69, 16, !mcsema_real_eip !10
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !10
  %72 = zext i1 %71 to i8, !mcsema_real_eip !10
  store volatile i8 %72, i8* %AF_write, !mcsema_real_eip !10
  %73 = trunc i32 %67 to i8, !mcsema_real_eip !10
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !10
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !10
  %76 = zext i1 %75 to i8, !mcsema_real_eip !10
  %77 = xor i8 %76, 1, !mcsema_real_eip !10
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !10
  %79 = zext i1 %78 to i8, !mcsema_real_eip !10
  store volatile i8 %79, i8* %PF_write, !mcsema_real_eip !10
  %80 = icmp eq i32 %67, 0, !mcsema_real_eip !10
  %81 = zext i1 %80 to i8, !mcsema_real_eip !10
  store volatile i8 %81, i8* %ZF_write, !mcsema_real_eip !10
  %82 = lshr i32 %67, 31, !mcsema_real_eip !10
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !10
  %84 = zext i1 %83 to i8, !mcsema_real_eip !10
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !10
  %86 = zext i1 %85 to i8, !mcsema_real_eip !10
  store volatile i8 %86, i8* %SF_write, !mcsema_real_eip !10
  %87 = icmp ult i32 %66, 1, !mcsema_real_eip !10
  %88 = zext i1 %87 to i8, !mcsema_real_eip !10
  store volatile i8 %88, i8* %CF_write, !mcsema_real_eip !10
  %89 = xor i32 %66, 1, !mcsema_real_eip !10
  %90 = xor i32 %66, %67, !mcsema_real_eip !10
  %91 = and i32 %89, %90, !mcsema_real_eip !10
  %92 = lshr i32 %91, 31, !mcsema_real_eip !10
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !10
  %94 = zext i1 %93 to i8, !mcsema_real_eip !10
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !10
  %96 = zext i1 %95 to i8, !mcsema_real_eip !10
  store volatile i8 %96, i8* %OF_write, !mcsema_real_eip !10
  %97 = zext i32 %67 to i64, !mcsema_real_eip !10
  store volatile i64 %97, i64* %EAX_write, !mcsema_real_eip !10
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !11
  %98 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %99 = add i64 %98, -16, !mcsema_real_eip !11
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !11
  %101 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %102 = ptrtoint i64* %100 to i64, !mcsema_real_eip !11
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !11
  store i32 %101, i32* %103, !mcsema_real_eip !11
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !12
  %104 = load i8, i8* %ZF_read, !mcsema_real_eip !12
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !12
  %106 = icmp eq i1 %105, true, !mcsema_real_eip !12
  br i1 %106, label %block_1ad, label %block_30, !mcsema_real_eip !12

block_30:                                         ; preds = %block_21
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !13
  br label %block_35, !mcsema_real_eip !13

block_35:                                         ; preds = %block_30
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !14
  %107 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %108 = add i64 %107, -12, !mcsema_real_eip !14
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !14
  %110 = ptrtoint i64* %109 to i64, !mcsema_real_eip !14
  %111 = inttoptr i64 %110 to i32*, !mcsema_real_eip !14
  %112 = load i32, i32* %111, !mcsema_real_eip !14
  %113 = zext i32 %112 to i64, !mcsema_real_eip !14
  store volatile i64 %113, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !15
  %114 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %115 = sub i32 %114, 2, !mcsema_real_eip !15
  %116 = xor i32 %115, %114, !mcsema_real_eip !15
  %117 = xor i32 %116, 2, !mcsema_real_eip !15
  %118 = and i32 %117, 16, !mcsema_real_eip !15
  %119 = icmp ne i32 %118, 0, !mcsema_real_eip !15
  %120 = zext i1 %119 to i8, !mcsema_real_eip !15
  store volatile i8 %120, i8* %AF_write, !mcsema_real_eip !15
  %121 = trunc i32 %115 to i8, !mcsema_real_eip !15
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !15
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !15
  %124 = zext i1 %123 to i8, !mcsema_real_eip !15
  %125 = xor i8 %124, 1, !mcsema_real_eip !15
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !15
  %127 = zext i1 %126 to i8, !mcsema_real_eip !15
  store volatile i8 %127, i8* %PF_write, !mcsema_real_eip !15
  %128 = icmp eq i32 %115, 0, !mcsema_real_eip !15
  %129 = zext i1 %128 to i8, !mcsema_real_eip !15
  store volatile i8 %129, i8* %ZF_write, !mcsema_real_eip !15
  %130 = lshr i32 %115, 31, !mcsema_real_eip !15
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !15
  %132 = zext i1 %131 to i8, !mcsema_real_eip !15
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !15
  %134 = zext i1 %133 to i8, !mcsema_real_eip !15
  store volatile i8 %134, i8* %SF_write, !mcsema_real_eip !15
  %135 = icmp ult i32 %114, 2, !mcsema_real_eip !15
  %136 = zext i1 %135 to i8, !mcsema_real_eip !15
  store volatile i8 %136, i8* %CF_write, !mcsema_real_eip !15
  %137 = xor i32 %114, 2, !mcsema_real_eip !15
  %138 = xor i32 %114, %115, !mcsema_real_eip !15
  %139 = and i32 %137, %138, !mcsema_real_eip !15
  %140 = lshr i32 %139, 31, !mcsema_real_eip !15
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !15
  %142 = zext i1 %141 to i8, !mcsema_real_eip !15
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !15
  %144 = zext i1 %143 to i8, !mcsema_real_eip !15
  store volatile i8 %144, i8* %OF_write, !mcsema_real_eip !15
  %145 = zext i32 %115 to i64, !mcsema_real_eip !15
  store volatile i64 %145, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !16
  %146 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %147 = add i64 %146, -20, !mcsema_real_eip !16
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !16
  %149 = load i32, i32* %EAX_read, !mcsema_real_eip !16
  %150 = ptrtoint i64* %148 to i64, !mcsema_real_eip !16
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !16
  store i32 %149, i32* %151, !mcsema_real_eip !16
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !17
  %152 = load i8, i8* %ZF_read, !mcsema_real_eip !17
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !17
  %154 = icmp eq i1 %153, true, !mcsema_real_eip !17
  br i1 %154, label %block_1bb, label %block_44, !mcsema_real_eip !17

block_44:                                         ; preds = %block_35
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !18
  br label %block_49, !mcsema_real_eip !18

block_49:                                         ; preds = %block_44
  store volatile i64 73, i64* %EIP_write, !mcsema_real_eip !19
  %155 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %156 = add i64 %155, -12, !mcsema_real_eip !19
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !19
  %158 = ptrtoint i64* %157 to i64, !mcsema_real_eip !19
  %159 = inttoptr i64 %158 to i32*, !mcsema_real_eip !19
  %160 = load i32, i32* %159, !mcsema_real_eip !19
  %161 = zext i32 %160 to i64, !mcsema_real_eip !19
  store volatile i64 %161, i64* %EAX_write, !mcsema_real_eip !19
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !20
  %162 = load i32, i32* %EAX_read, !mcsema_real_eip !20
  %163 = sub i32 %162, 4, !mcsema_real_eip !20
  %164 = xor i32 %163, %162, !mcsema_real_eip !20
  %165 = xor i32 %164, 4, !mcsema_real_eip !20
  %166 = and i32 %165, 16, !mcsema_real_eip !20
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !20
  %168 = zext i1 %167 to i8, !mcsema_real_eip !20
  store volatile i8 %168, i8* %AF_write, !mcsema_real_eip !20
  %169 = trunc i32 %163 to i8, !mcsema_real_eip !20
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !20
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !20
  %172 = zext i1 %171 to i8, !mcsema_real_eip !20
  %173 = xor i8 %172, 1, !mcsema_real_eip !20
  %174 = trunc i8 %173 to i1, !mcsema_real_eip !20
  %175 = zext i1 %174 to i8, !mcsema_real_eip !20
  store volatile i8 %175, i8* %PF_write, !mcsema_real_eip !20
  %176 = icmp eq i32 %163, 0, !mcsema_real_eip !20
  %177 = zext i1 %176 to i8, !mcsema_real_eip !20
  store volatile i8 %177, i8* %ZF_write, !mcsema_real_eip !20
  %178 = lshr i32 %163, 31, !mcsema_real_eip !20
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !20
  %180 = zext i1 %179 to i8, !mcsema_real_eip !20
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !20
  %182 = zext i1 %181 to i8, !mcsema_real_eip !20
  store volatile i8 %182, i8* %SF_write, !mcsema_real_eip !20
  %183 = icmp ult i32 %162, 4, !mcsema_real_eip !20
  %184 = zext i1 %183 to i8, !mcsema_real_eip !20
  store volatile i8 %184, i8* %CF_write, !mcsema_real_eip !20
  %185 = xor i32 %162, 4, !mcsema_real_eip !20
  %186 = xor i32 %162, %163, !mcsema_real_eip !20
  %187 = and i32 %185, %186, !mcsema_real_eip !20
  %188 = lshr i32 %187, 31, !mcsema_real_eip !20
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !20
  %190 = zext i1 %189 to i8, !mcsema_real_eip !20
  %191 = trunc i8 %190 to i1, !mcsema_real_eip !20
  %192 = zext i1 %191 to i8, !mcsema_real_eip !20
  store volatile i8 %192, i8* %OF_write, !mcsema_real_eip !20
  %193 = zext i32 %163 to i64, !mcsema_real_eip !20
  store volatile i64 %193, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 79, i64* %EIP_write, !mcsema_real_eip !21
  %194 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %195 = add i64 %194, -24, !mcsema_real_eip !21
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !21
  %197 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %198 = ptrtoint i64* %196 to i64, !mcsema_real_eip !21
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !21
  store i32 %197, i32* %199, !mcsema_real_eip !21
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !22
  %200 = load i8, i8* %ZF_read, !mcsema_real_eip !22
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !22
  %202 = icmp eq i1 %201, true, !mcsema_real_eip !22
  br i1 %202, label %block_1c9, label %block_58, !mcsema_real_eip !22

block_58:                                         ; preds = %block_49
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !23
  br label %block_5d, !mcsema_real_eip !23

block_5d:                                         ; preds = %block_58
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !24
  %203 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %204 = add i64 %203, -12, !mcsema_real_eip !24
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !24
  %206 = ptrtoint i64* %205 to i64, !mcsema_real_eip !24
  %207 = inttoptr i64 %206 to i32*, !mcsema_real_eip !24
  %208 = load i32, i32* %207, !mcsema_real_eip !24
  %209 = zext i32 %208 to i64, !mcsema_real_eip !24
  store volatile i64 %209, i64* %EAX_write, !mcsema_real_eip !24
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !25
  %210 = load i32, i32* %EAX_read, !mcsema_real_eip !25
  %211 = sub i32 %210, 6, !mcsema_real_eip !25
  %212 = xor i32 %211, %210, !mcsema_real_eip !25
  %213 = xor i32 %212, 6, !mcsema_real_eip !25
  %214 = and i32 %213, 16, !mcsema_real_eip !25
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !25
  %216 = zext i1 %215 to i8, !mcsema_real_eip !25
  store volatile i8 %216, i8* %AF_write, !mcsema_real_eip !25
  %217 = trunc i32 %211 to i8, !mcsema_real_eip !25
  %218 = call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !25
  %219 = trunc i8 %218 to i1, !mcsema_real_eip !25
  %220 = zext i1 %219 to i8, !mcsema_real_eip !25
  %221 = xor i8 %220, 1, !mcsema_real_eip !25
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !25
  %223 = zext i1 %222 to i8, !mcsema_real_eip !25
  store volatile i8 %223, i8* %PF_write, !mcsema_real_eip !25
  %224 = icmp eq i32 %211, 0, !mcsema_real_eip !25
  %225 = zext i1 %224 to i8, !mcsema_real_eip !25
  store volatile i8 %225, i8* %ZF_write, !mcsema_real_eip !25
  %226 = lshr i32 %211, 31, !mcsema_real_eip !25
  %227 = trunc i32 %226 to i1, !mcsema_real_eip !25
  %228 = zext i1 %227 to i8, !mcsema_real_eip !25
  %229 = trunc i8 %228 to i1, !mcsema_real_eip !25
  %230 = zext i1 %229 to i8, !mcsema_real_eip !25
  store volatile i8 %230, i8* %SF_write, !mcsema_real_eip !25
  %231 = icmp ult i32 %210, 6, !mcsema_real_eip !25
  %232 = zext i1 %231 to i8, !mcsema_real_eip !25
  store volatile i8 %232, i8* %CF_write, !mcsema_real_eip !25
  %233 = xor i32 %210, 6, !mcsema_real_eip !25
  %234 = xor i32 %210, %211, !mcsema_real_eip !25
  %235 = and i32 %233, %234, !mcsema_real_eip !25
  %236 = lshr i32 %235, 31, !mcsema_real_eip !25
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !25
  %238 = zext i1 %237 to i8, !mcsema_real_eip !25
  %239 = trunc i8 %238 to i1, !mcsema_real_eip !25
  %240 = zext i1 %239 to i8, !mcsema_real_eip !25
  store volatile i8 %240, i8* %OF_write, !mcsema_real_eip !25
  %241 = zext i32 %211 to i64, !mcsema_real_eip !25
  store volatile i64 %241, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !26
  %242 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %243 = add i64 %242, -28, !mcsema_real_eip !26
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !26
  %245 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %246 = ptrtoint i64* %244 to i64, !mcsema_real_eip !26
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !26
  store i32 %245, i32* %247, !mcsema_real_eip !26
  store volatile i64 102, i64* %EIP_write, !mcsema_real_eip !27
  %248 = load i8, i8* %ZF_read, !mcsema_real_eip !27
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !27
  %250 = icmp eq i1 %249, true, !mcsema_real_eip !27
  br i1 %250, label %block_1d7, label %block_6c, !mcsema_real_eip !27

block_6c:                                         ; preds = %block_5d
  store volatile i64 108, i64* %EIP_write, !mcsema_real_eip !28
  br label %block_71, !mcsema_real_eip !28

block_71:                                         ; preds = %block_6c
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !29
  %251 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %252 = add i64 %251, -12, !mcsema_real_eip !29
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !29
  %254 = ptrtoint i64* %253 to i64, !mcsema_real_eip !29
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !29
  %256 = load i32, i32* %255, !mcsema_real_eip !29
  %257 = zext i32 %256 to i64, !mcsema_real_eip !29
  store volatile i64 %257, i64* %EAX_write, !mcsema_real_eip !29
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !30
  %258 = load i32, i32* %EAX_read, !mcsema_real_eip !30
  %259 = sub i32 %258, 12, !mcsema_real_eip !30
  %260 = xor i32 %259, %258, !mcsema_real_eip !30
  %261 = xor i32 %260, 12, !mcsema_real_eip !30
  %262 = and i32 %261, 16, !mcsema_real_eip !30
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !30
  %264 = zext i1 %263 to i8, !mcsema_real_eip !30
  store volatile i8 %264, i8* %AF_write, !mcsema_real_eip !30
  %265 = trunc i32 %259 to i8, !mcsema_real_eip !30
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !30
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !30
  %268 = zext i1 %267 to i8, !mcsema_real_eip !30
  %269 = xor i8 %268, 1, !mcsema_real_eip !30
  %270 = trunc i8 %269 to i1, !mcsema_real_eip !30
  %271 = zext i1 %270 to i8, !mcsema_real_eip !30
  store volatile i8 %271, i8* %PF_write, !mcsema_real_eip !30
  %272 = icmp eq i32 %259, 0, !mcsema_real_eip !30
  %273 = zext i1 %272 to i8, !mcsema_real_eip !30
  store volatile i8 %273, i8* %ZF_write, !mcsema_real_eip !30
  %274 = lshr i32 %259, 31, !mcsema_real_eip !30
  %275 = trunc i32 %274 to i1, !mcsema_real_eip !30
  %276 = zext i1 %275 to i8, !mcsema_real_eip !30
  %277 = trunc i8 %276 to i1, !mcsema_real_eip !30
  %278 = zext i1 %277 to i8, !mcsema_real_eip !30
  store volatile i8 %278, i8* %SF_write, !mcsema_real_eip !30
  %279 = icmp ult i32 %258, 12, !mcsema_real_eip !30
  %280 = zext i1 %279 to i8, !mcsema_real_eip !30
  store volatile i8 %280, i8* %CF_write, !mcsema_real_eip !30
  %281 = xor i32 %258, 12, !mcsema_real_eip !30
  %282 = xor i32 %258, %259, !mcsema_real_eip !30
  %283 = and i32 %281, %282, !mcsema_real_eip !30
  %284 = lshr i32 %283, 31, !mcsema_real_eip !30
  %285 = trunc i32 %284 to i1, !mcsema_real_eip !30
  %286 = zext i1 %285 to i8, !mcsema_real_eip !30
  %287 = trunc i8 %286 to i1, !mcsema_real_eip !30
  %288 = zext i1 %287 to i8, !mcsema_real_eip !30
  store volatile i8 %288, i8* %OF_write, !mcsema_real_eip !30
  %289 = zext i32 %259 to i64, !mcsema_real_eip !30
  store volatile i64 %289, i64* %EAX_write, !mcsema_real_eip !30
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !31
  %290 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %291 = add i64 %290, -32, !mcsema_real_eip !31
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !31
  %293 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %294 = ptrtoint i64* %292 to i64, !mcsema_real_eip !31
  %295 = inttoptr i64 %294 to i32*, !mcsema_real_eip !31
  store i32 %293, i32* %295, !mcsema_real_eip !31
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !32
  %296 = load i8, i8* %ZF_read, !mcsema_real_eip !32
  %297 = trunc i8 %296 to i1, !mcsema_real_eip !32
  %298 = icmp eq i1 %297, true, !mcsema_real_eip !32
  br i1 %298, label %block_1e5, label %block_80, !mcsema_real_eip !32

block_80:                                         ; preds = %block_71
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !33
  br label %block_85, !mcsema_real_eip !33

block_85:                                         ; preds = %block_80
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !34
  %299 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %300 = add i64 %299, -12, !mcsema_real_eip !34
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !34
  %302 = ptrtoint i64* %301 to i64, !mcsema_real_eip !34
  %303 = inttoptr i64 %302 to i32*, !mcsema_real_eip !34
  %304 = load i32, i32* %303, !mcsema_real_eip !34
  %305 = zext i32 %304 to i64, !mcsema_real_eip !34
  store volatile i64 %305, i64* %EAX_write, !mcsema_real_eip !34
  store volatile i64 136, i64* %EIP_write, !mcsema_real_eip !35
  %306 = load i32, i32* %EAX_read, !mcsema_real_eip !35
  %307 = sub i32 %306, 13, !mcsema_real_eip !35
  %308 = xor i32 %307, %306, !mcsema_real_eip !35
  %309 = xor i32 %308, 13, !mcsema_real_eip !35
  %310 = and i32 %309, 16, !mcsema_real_eip !35
  %311 = icmp ne i32 %310, 0, !mcsema_real_eip !35
  %312 = zext i1 %311 to i8, !mcsema_real_eip !35
  store volatile i8 %312, i8* %AF_write, !mcsema_real_eip !35
  %313 = trunc i32 %307 to i8, !mcsema_real_eip !35
  %314 = call i8 @llvm.ctpop.i8(i8 %313), !mcsema_real_eip !35
  %315 = trunc i8 %314 to i1, !mcsema_real_eip !35
  %316 = zext i1 %315 to i8, !mcsema_real_eip !35
  %317 = xor i8 %316, 1, !mcsema_real_eip !35
  %318 = trunc i8 %317 to i1, !mcsema_real_eip !35
  %319 = zext i1 %318 to i8, !mcsema_real_eip !35
  store volatile i8 %319, i8* %PF_write, !mcsema_real_eip !35
  %320 = icmp eq i32 %307, 0, !mcsema_real_eip !35
  %321 = zext i1 %320 to i8, !mcsema_real_eip !35
  store volatile i8 %321, i8* %ZF_write, !mcsema_real_eip !35
  %322 = lshr i32 %307, 31, !mcsema_real_eip !35
  %323 = trunc i32 %322 to i1, !mcsema_real_eip !35
  %324 = zext i1 %323 to i8, !mcsema_real_eip !35
  %325 = trunc i8 %324 to i1, !mcsema_real_eip !35
  %326 = zext i1 %325 to i8, !mcsema_real_eip !35
  store volatile i8 %326, i8* %SF_write, !mcsema_real_eip !35
  %327 = icmp ult i32 %306, 13, !mcsema_real_eip !35
  %328 = zext i1 %327 to i8, !mcsema_real_eip !35
  store volatile i8 %328, i8* %CF_write, !mcsema_real_eip !35
  %329 = xor i32 %306, 13, !mcsema_real_eip !35
  %330 = xor i32 %306, %307, !mcsema_real_eip !35
  %331 = and i32 %329, %330, !mcsema_real_eip !35
  %332 = lshr i32 %331, 31, !mcsema_real_eip !35
  %333 = trunc i32 %332 to i1, !mcsema_real_eip !35
  %334 = zext i1 %333 to i8, !mcsema_real_eip !35
  %335 = trunc i8 %334 to i1, !mcsema_real_eip !35
  %336 = zext i1 %335 to i8, !mcsema_real_eip !35
  store volatile i8 %336, i8* %OF_write, !mcsema_real_eip !35
  %337 = zext i32 %307 to i64, !mcsema_real_eip !35
  store volatile i64 %337, i64* %EAX_write, !mcsema_real_eip !35
  store volatile i64 139, i64* %EIP_write, !mcsema_real_eip !36
  %338 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %339 = add i64 %338, -36, !mcsema_real_eip !36
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !36
  %341 = load i32, i32* %EAX_read, !mcsema_real_eip !36
  %342 = ptrtoint i64* %340 to i64, !mcsema_real_eip !36
  %343 = inttoptr i64 %342 to i32*, !mcsema_real_eip !36
  store i32 %341, i32* %343, !mcsema_real_eip !36
  store volatile i64 142, i64* %EIP_write, !mcsema_real_eip !37
  %344 = load i8, i8* %ZF_read, !mcsema_real_eip !37
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !37
  %346 = icmp eq i1 %345, true, !mcsema_real_eip !37
  br i1 %346, label %block_1f3, label %block_94, !mcsema_real_eip !37

block_94:                                         ; preds = %block_85
  store volatile i64 148, i64* %EIP_write, !mcsema_real_eip !38
  br label %block_99, !mcsema_real_eip !38

block_99:                                         ; preds = %block_94
  store volatile i64 153, i64* %EIP_write, !mcsema_real_eip !39
  %347 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %348 = add i64 %347, -12, !mcsema_real_eip !39
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !39
  %350 = ptrtoint i64* %349 to i64, !mcsema_real_eip !39
  %351 = inttoptr i64 %350 to i32*, !mcsema_real_eip !39
  %352 = load i32, i32* %351, !mcsema_real_eip !39
  %353 = zext i32 %352 to i64, !mcsema_real_eip !39
  store volatile i64 %353, i64* %EAX_write, !mcsema_real_eip !39
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !40
  %354 = load i32, i32* %EAX_read, !mcsema_real_eip !40
  %355 = sub i32 %354, 19, !mcsema_real_eip !40
  %356 = xor i32 %355, %354, !mcsema_real_eip !40
  %357 = xor i32 %356, 19, !mcsema_real_eip !40
  %358 = and i32 %357, 16, !mcsema_real_eip !40
  %359 = icmp ne i32 %358, 0, !mcsema_real_eip !40
  %360 = zext i1 %359 to i8, !mcsema_real_eip !40
  store volatile i8 %360, i8* %AF_write, !mcsema_real_eip !40
  %361 = trunc i32 %355 to i8, !mcsema_real_eip !40
  %362 = call i8 @llvm.ctpop.i8(i8 %361), !mcsema_real_eip !40
  %363 = trunc i8 %362 to i1, !mcsema_real_eip !40
  %364 = zext i1 %363 to i8, !mcsema_real_eip !40
  %365 = xor i8 %364, 1, !mcsema_real_eip !40
  %366 = trunc i8 %365 to i1, !mcsema_real_eip !40
  %367 = zext i1 %366 to i8, !mcsema_real_eip !40
  store volatile i8 %367, i8* %PF_write, !mcsema_real_eip !40
  %368 = icmp eq i32 %355, 0, !mcsema_real_eip !40
  %369 = zext i1 %368 to i8, !mcsema_real_eip !40
  store volatile i8 %369, i8* %ZF_write, !mcsema_real_eip !40
  %370 = lshr i32 %355, 31, !mcsema_real_eip !40
  %371 = trunc i32 %370 to i1, !mcsema_real_eip !40
  %372 = zext i1 %371 to i8, !mcsema_real_eip !40
  %373 = trunc i8 %372 to i1, !mcsema_real_eip !40
  %374 = zext i1 %373 to i8, !mcsema_real_eip !40
  store volatile i8 %374, i8* %SF_write, !mcsema_real_eip !40
  %375 = icmp ult i32 %354, 19, !mcsema_real_eip !40
  %376 = zext i1 %375 to i8, !mcsema_real_eip !40
  store volatile i8 %376, i8* %CF_write, !mcsema_real_eip !40
  %377 = xor i32 %354, 19, !mcsema_real_eip !40
  %378 = xor i32 %354, %355, !mcsema_real_eip !40
  %379 = and i32 %377, %378, !mcsema_real_eip !40
  %380 = lshr i32 %379, 31, !mcsema_real_eip !40
  %381 = trunc i32 %380 to i1, !mcsema_real_eip !40
  %382 = zext i1 %381 to i8, !mcsema_real_eip !40
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !40
  %384 = zext i1 %383 to i8, !mcsema_real_eip !40
  store volatile i8 %384, i8* %OF_write, !mcsema_real_eip !40
  %385 = zext i32 %355 to i64, !mcsema_real_eip !40
  store volatile i64 %385, i64* %EAX_write, !mcsema_real_eip !40
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !41
  %386 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %387 = add i64 %386, -40, !mcsema_real_eip !41
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !41
  %389 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %390 = ptrtoint i64* %388 to i64, !mcsema_real_eip !41
  %391 = inttoptr i64 %390 to i32*, !mcsema_real_eip !41
  store i32 %389, i32* %391, !mcsema_real_eip !41
  store volatile i64 162, i64* %EIP_write, !mcsema_real_eip !42
  %392 = load i8, i8* %ZF_read, !mcsema_real_eip !42
  %393 = trunc i8 %392 to i1, !mcsema_real_eip !42
  %394 = icmp eq i1 %393, true, !mcsema_real_eip !42
  br i1 %394, label %block_201, label %block_a8, !mcsema_real_eip !42

block_a8:                                         ; preds = %block_99
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !43
  br label %block_ad, !mcsema_real_eip !43

block_ad:                                         ; preds = %block_a8
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !44
  %395 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %396 = add i64 %395, -12, !mcsema_real_eip !44
  %397 = inttoptr i64 %396 to i64*, !mcsema_real_eip !44
  %398 = ptrtoint i64* %397 to i64, !mcsema_real_eip !44
  %399 = inttoptr i64 %398 to i32*, !mcsema_real_eip !44
  %400 = load i32, i32* %399, !mcsema_real_eip !44
  %401 = zext i32 %400 to i64, !mcsema_real_eip !44
  store volatile i64 %401, i64* %EAX_write, !mcsema_real_eip !44
  store volatile i64 176, i64* %EIP_write, !mcsema_real_eip !45
  %402 = load i32, i32* %EAX_read, !mcsema_real_eip !45
  %403 = sub i32 %402, 255, !mcsema_real_eip !45
  %404 = xor i32 %403, %402, !mcsema_real_eip !45
  %405 = xor i32 %404, 255, !mcsema_real_eip !45
  %406 = and i32 %405, 16, !mcsema_real_eip !45
  %407 = icmp ne i32 %406, 0, !mcsema_real_eip !45
  %408 = zext i1 %407 to i8, !mcsema_real_eip !45
  store volatile i8 %408, i8* %AF_write, !mcsema_real_eip !45
  %409 = trunc i32 %403 to i8, !mcsema_real_eip !45
  %410 = call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !45
  %411 = trunc i8 %410 to i1, !mcsema_real_eip !45
  %412 = zext i1 %411 to i8, !mcsema_real_eip !45
  %413 = xor i8 %412, 1, !mcsema_real_eip !45
  %414 = trunc i8 %413 to i1, !mcsema_real_eip !45
  %415 = zext i1 %414 to i8, !mcsema_real_eip !45
  store volatile i8 %415, i8* %PF_write, !mcsema_real_eip !45
  %416 = icmp eq i32 %403, 0, !mcsema_real_eip !45
  %417 = zext i1 %416 to i8, !mcsema_real_eip !45
  store volatile i8 %417, i8* %ZF_write, !mcsema_real_eip !45
  %418 = lshr i32 %403, 31, !mcsema_real_eip !45
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !45
  %420 = zext i1 %419 to i8, !mcsema_real_eip !45
  %421 = trunc i8 %420 to i1, !mcsema_real_eip !45
  %422 = zext i1 %421 to i8, !mcsema_real_eip !45
  store volatile i8 %422, i8* %SF_write, !mcsema_real_eip !45
  %423 = icmp ult i32 %402, 255, !mcsema_real_eip !45
  %424 = zext i1 %423 to i8, !mcsema_real_eip !45
  store volatile i8 %424, i8* %CF_write, !mcsema_real_eip !45
  %425 = xor i32 %402, 255, !mcsema_real_eip !45
  %426 = xor i32 %402, %403, !mcsema_real_eip !45
  %427 = and i32 %425, %426, !mcsema_real_eip !45
  %428 = lshr i32 %427, 31, !mcsema_real_eip !45
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !45
  %430 = zext i1 %429 to i8, !mcsema_real_eip !45
  %431 = trunc i8 %430 to i1, !mcsema_real_eip !45
  %432 = zext i1 %431 to i8, !mcsema_real_eip !45
  store volatile i8 %432, i8* %OF_write, !mcsema_real_eip !45
  %433 = zext i32 %403 to i64, !mcsema_real_eip !45
  store volatile i64 %433, i64* %EAX_write, !mcsema_real_eip !45
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !46
  %434 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %435 = add i64 %434, -44, !mcsema_real_eip !46
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !46
  %437 = load i32, i32* %EAX_read, !mcsema_real_eip !46
  %438 = ptrtoint i64* %436 to i64, !mcsema_real_eip !46
  %439 = inttoptr i64 %438 to i32*, !mcsema_real_eip !46
  store i32 %437, i32* %439, !mcsema_real_eip !46
  store volatile i64 184, i64* %EIP_write, !mcsema_real_eip !47
  %440 = load i8, i8* %ZF_read, !mcsema_real_eip !47
  %441 = trunc i8 %440 to i1, !mcsema_real_eip !47
  %442 = icmp eq i1 %441, true, !mcsema_real_eip !47
  br i1 %442, label %block_20f, label %block_be, !mcsema_real_eip !47

block_be:                                         ; preds = %block_ad
  store volatile i64 190, i64* %EIP_write, !mcsema_real_eip !48
  br label %block_c3, !mcsema_real_eip !48

block_c3:                                         ; preds = %block_be
  store volatile i64 195, i64* %EIP_write, !mcsema_real_eip !49
  %443 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %444 = add i64 %443, -12, !mcsema_real_eip !49
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !49
  %446 = ptrtoint i64* %445 to i64, !mcsema_real_eip !49
  %447 = inttoptr i64 %446 to i32*, !mcsema_real_eip !49
  %448 = load i32, i32* %447, !mcsema_real_eip !49
  %449 = zext i32 %448 to i64, !mcsema_real_eip !49
  store volatile i64 %449, i64* %EAX_write, !mcsema_real_eip !49
  store volatile i64 198, i64* %EIP_write, !mcsema_real_eip !50
  %450 = load i32, i32* %EAX_read, !mcsema_real_eip !50
  %451 = sub i32 %450, 74633, !mcsema_real_eip !50
  %452 = xor i32 %451, %450, !mcsema_real_eip !50
  %453 = xor i32 %452, 74633, !mcsema_real_eip !50
  %454 = and i32 %453, 16, !mcsema_real_eip !50
  %455 = icmp ne i32 %454, 0, !mcsema_real_eip !50
  %456 = zext i1 %455 to i8, !mcsema_real_eip !50
  store volatile i8 %456, i8* %AF_write, !mcsema_real_eip !50
  %457 = trunc i32 %451 to i8, !mcsema_real_eip !50
  %458 = call i8 @llvm.ctpop.i8(i8 %457), !mcsema_real_eip !50
  %459 = trunc i8 %458 to i1, !mcsema_real_eip !50
  %460 = zext i1 %459 to i8, !mcsema_real_eip !50
  %461 = xor i8 %460, 1, !mcsema_real_eip !50
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !50
  %463 = zext i1 %462 to i8, !mcsema_real_eip !50
  store volatile i8 %463, i8* %PF_write, !mcsema_real_eip !50
  %464 = icmp eq i32 %451, 0, !mcsema_real_eip !50
  %465 = zext i1 %464 to i8, !mcsema_real_eip !50
  store volatile i8 %465, i8* %ZF_write, !mcsema_real_eip !50
  %466 = lshr i32 %451, 31, !mcsema_real_eip !50
  %467 = trunc i32 %466 to i1, !mcsema_real_eip !50
  %468 = zext i1 %467 to i8, !mcsema_real_eip !50
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !50
  %470 = zext i1 %469 to i8, !mcsema_real_eip !50
  store volatile i8 %470, i8* %SF_write, !mcsema_real_eip !50
  %471 = icmp ult i32 %450, 74633, !mcsema_real_eip !50
  %472 = zext i1 %471 to i8, !mcsema_real_eip !50
  store volatile i8 %472, i8* %CF_write, !mcsema_real_eip !50
  %473 = xor i32 %450, 74633, !mcsema_real_eip !50
  %474 = xor i32 %450, %451, !mcsema_real_eip !50
  %475 = and i32 %473, %474, !mcsema_real_eip !50
  %476 = lshr i32 %475, 31, !mcsema_real_eip !50
  %477 = trunc i32 %476 to i1, !mcsema_real_eip !50
  %478 = zext i1 %477 to i8, !mcsema_real_eip !50
  %479 = trunc i8 %478 to i1, !mcsema_real_eip !50
  %480 = zext i1 %479 to i8, !mcsema_real_eip !50
  store volatile i8 %480, i8* %OF_write, !mcsema_real_eip !50
  %481 = zext i32 %451 to i64, !mcsema_real_eip !50
  store volatile i64 %481, i64* %EAX_write, !mcsema_real_eip !50
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !51
  %482 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %483 = add i64 %482, -48, !mcsema_real_eip !51
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !51
  %485 = load i32, i32* %EAX_read, !mcsema_real_eip !51
  %486 = ptrtoint i64* %484 to i64, !mcsema_real_eip !51
  %487 = inttoptr i64 %486 to i32*, !mcsema_real_eip !51
  store i32 %485, i32* %487, !mcsema_real_eip !51
  store volatile i64 206, i64* %EIP_write, !mcsema_real_eip !52
  %488 = load i8, i8* %ZF_read, !mcsema_real_eip !52
  %489 = trunc i8 %488 to i1, !mcsema_real_eip !52
  %490 = icmp eq i1 %489, true, !mcsema_real_eip !52
  br i1 %490, label %block_21f, label %block_d4, !mcsema_real_eip !52

block_d4:                                         ; preds = %block_c3
  store volatile i64 212, i64* %EIP_write, !mcsema_real_eip !53
  br label %block_d9, !mcsema_real_eip !53

block_d9:                                         ; preds = %block_d4
  store volatile i64 217, i64* %EIP_write, !mcsema_real_eip !54
  %491 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %492 = add i64 %491, -12, !mcsema_real_eip !54
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !54
  %494 = ptrtoint i64* %493 to i64, !mcsema_real_eip !54
  %495 = inttoptr i64 %494 to i32*, !mcsema_real_eip !54
  %496 = load i32, i32* %495, !mcsema_real_eip !54
  %497 = zext i32 %496 to i64, !mcsema_real_eip !54
  store volatile i64 %497, i64* %EAX_write, !mcsema_real_eip !54
  store volatile i64 220, i64* %EIP_write, !mcsema_real_eip !55
  %498 = load i32, i32* %EAX_read, !mcsema_real_eip !55
  %499 = sub i32 %498, 74634, !mcsema_real_eip !55
  %500 = xor i32 %499, %498, !mcsema_real_eip !55
  %501 = xor i32 %500, 74634, !mcsema_real_eip !55
  %502 = and i32 %501, 16, !mcsema_real_eip !55
  %503 = icmp ne i32 %502, 0, !mcsema_real_eip !55
  %504 = zext i1 %503 to i8, !mcsema_real_eip !55
  store volatile i8 %504, i8* %AF_write, !mcsema_real_eip !55
  %505 = trunc i32 %499 to i8, !mcsema_real_eip !55
  %506 = call i8 @llvm.ctpop.i8(i8 %505), !mcsema_real_eip !55
  %507 = trunc i8 %506 to i1, !mcsema_real_eip !55
  %508 = zext i1 %507 to i8, !mcsema_real_eip !55
  %509 = xor i8 %508, 1, !mcsema_real_eip !55
  %510 = trunc i8 %509 to i1, !mcsema_real_eip !55
  %511 = zext i1 %510 to i8, !mcsema_real_eip !55
  store volatile i8 %511, i8* %PF_write, !mcsema_real_eip !55
  %512 = icmp eq i32 %499, 0, !mcsema_real_eip !55
  %513 = zext i1 %512 to i8, !mcsema_real_eip !55
  store volatile i8 %513, i8* %ZF_write, !mcsema_real_eip !55
  %514 = lshr i32 %499, 31, !mcsema_real_eip !55
  %515 = trunc i32 %514 to i1, !mcsema_real_eip !55
  %516 = zext i1 %515 to i8, !mcsema_real_eip !55
  %517 = trunc i8 %516 to i1, !mcsema_real_eip !55
  %518 = zext i1 %517 to i8, !mcsema_real_eip !55
  store volatile i8 %518, i8* %SF_write, !mcsema_real_eip !55
  %519 = icmp ult i32 %498, 74634, !mcsema_real_eip !55
  %520 = zext i1 %519 to i8, !mcsema_real_eip !55
  store volatile i8 %520, i8* %CF_write, !mcsema_real_eip !55
  %521 = xor i32 %498, 74634, !mcsema_real_eip !55
  %522 = xor i32 %498, %499, !mcsema_real_eip !55
  %523 = and i32 %521, %522, !mcsema_real_eip !55
  %524 = lshr i32 %523, 31, !mcsema_real_eip !55
  %525 = trunc i32 %524 to i1, !mcsema_real_eip !55
  %526 = zext i1 %525 to i8, !mcsema_real_eip !55
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !55
  %528 = zext i1 %527 to i8, !mcsema_real_eip !55
  store volatile i8 %528, i8* %OF_write, !mcsema_real_eip !55
  %529 = zext i32 %499 to i64, !mcsema_real_eip !55
  store volatile i64 %529, i64* %EAX_write, !mcsema_real_eip !55
  store volatile i64 225, i64* %EIP_write, !mcsema_real_eip !56
  %530 = load i64, i64* %RBP_read, !mcsema_real_eip !56
  %531 = add i64 %530, -52, !mcsema_real_eip !56
  %532 = inttoptr i64 %531 to i64*, !mcsema_real_eip !56
  %533 = load i32, i32* %EAX_read, !mcsema_real_eip !56
  %534 = ptrtoint i64* %532 to i64, !mcsema_real_eip !56
  %535 = inttoptr i64 %534 to i32*, !mcsema_real_eip !56
  store i32 %533, i32* %535, !mcsema_real_eip !56
  store volatile i64 228, i64* %EIP_write, !mcsema_real_eip !57
  %536 = load i8, i8* %ZF_read, !mcsema_real_eip !57
  %537 = trunc i8 %536 to i1, !mcsema_real_eip !57
  %538 = icmp eq i1 %537, true, !mcsema_real_eip !57
  br i1 %538, label %block_22f, label %block_ea, !mcsema_real_eip !57

block_ea:                                         ; preds = %block_d9
  store volatile i64 234, i64* %EIP_write, !mcsema_real_eip !58
  br label %block_ef, !mcsema_real_eip !58

block_ef:                                         ; preds = %block_ea
  store volatile i64 239, i64* %EIP_write, !mcsema_real_eip !59
  %539 = load i64, i64* %RBP_read, !mcsema_real_eip !59
  %540 = add i64 %539, -12, !mcsema_real_eip !59
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !59
  %542 = ptrtoint i64* %541 to i64, !mcsema_real_eip !59
  %543 = inttoptr i64 %542 to i32*, !mcsema_real_eip !59
  %544 = load i32, i32* %543, !mcsema_real_eip !59
  %545 = zext i32 %544 to i64, !mcsema_real_eip !59
  store volatile i64 %545, i64* %EAX_write, !mcsema_real_eip !59
  store volatile i64 242, i64* %EIP_write, !mcsema_real_eip !60
  %546 = load i32, i32* %EAX_read, !mcsema_real_eip !60
  %547 = sub i32 %546, 74635, !mcsema_real_eip !60
  %548 = xor i32 %547, %546, !mcsema_real_eip !60
  %549 = xor i32 %548, 74635, !mcsema_real_eip !60
  %550 = and i32 %549, 16, !mcsema_real_eip !60
  %551 = icmp ne i32 %550, 0, !mcsema_real_eip !60
  %552 = zext i1 %551 to i8, !mcsema_real_eip !60
  store volatile i8 %552, i8* %AF_write, !mcsema_real_eip !60
  %553 = trunc i32 %547 to i8, !mcsema_real_eip !60
  %554 = call i8 @llvm.ctpop.i8(i8 %553), !mcsema_real_eip !60
  %555 = trunc i8 %554 to i1, !mcsema_real_eip !60
  %556 = zext i1 %555 to i8, !mcsema_real_eip !60
  %557 = xor i8 %556, 1, !mcsema_real_eip !60
  %558 = trunc i8 %557 to i1, !mcsema_real_eip !60
  %559 = zext i1 %558 to i8, !mcsema_real_eip !60
  store volatile i8 %559, i8* %PF_write, !mcsema_real_eip !60
  %560 = icmp eq i32 %547, 0, !mcsema_real_eip !60
  %561 = zext i1 %560 to i8, !mcsema_real_eip !60
  store volatile i8 %561, i8* %ZF_write, !mcsema_real_eip !60
  %562 = lshr i32 %547, 31, !mcsema_real_eip !60
  %563 = trunc i32 %562 to i1, !mcsema_real_eip !60
  %564 = zext i1 %563 to i8, !mcsema_real_eip !60
  %565 = trunc i8 %564 to i1, !mcsema_real_eip !60
  %566 = zext i1 %565 to i8, !mcsema_real_eip !60
  store volatile i8 %566, i8* %SF_write, !mcsema_real_eip !60
  %567 = icmp ult i32 %546, 74635, !mcsema_real_eip !60
  %568 = zext i1 %567 to i8, !mcsema_real_eip !60
  store volatile i8 %568, i8* %CF_write, !mcsema_real_eip !60
  %569 = xor i32 %546, 74635, !mcsema_real_eip !60
  %570 = xor i32 %546, %547, !mcsema_real_eip !60
  %571 = and i32 %569, %570, !mcsema_real_eip !60
  %572 = lshr i32 %571, 31, !mcsema_real_eip !60
  %573 = trunc i32 %572 to i1, !mcsema_real_eip !60
  %574 = zext i1 %573 to i8, !mcsema_real_eip !60
  %575 = trunc i8 %574 to i1, !mcsema_real_eip !60
  %576 = zext i1 %575 to i8, !mcsema_real_eip !60
  store volatile i8 %576, i8* %OF_write, !mcsema_real_eip !60
  %577 = zext i32 %547 to i64, !mcsema_real_eip !60
  store volatile i64 %577, i64* %EAX_write, !mcsema_real_eip !60
  store volatile i64 247, i64* %EIP_write, !mcsema_real_eip !61
  %578 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %579 = add i64 %578, -56, !mcsema_real_eip !61
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !61
  %581 = load i32, i32* %EAX_read, !mcsema_real_eip !61
  %582 = ptrtoint i64* %580 to i64, !mcsema_real_eip !61
  %583 = inttoptr i64 %582 to i32*, !mcsema_real_eip !61
  store i32 %581, i32* %583, !mcsema_real_eip !61
  store volatile i64 250, i64* %EIP_write, !mcsema_real_eip !62
  %584 = load i8, i8* %ZF_read, !mcsema_real_eip !62
  %585 = trunc i8 %584 to i1, !mcsema_real_eip !62
  %586 = icmp eq i1 %585, true, !mcsema_real_eip !62
  br i1 %586, label %block_23f, label %block_100, !mcsema_real_eip !62

block_100:                                        ; preds = %block_ef
  store volatile i64 256, i64* %EIP_write, !mcsema_real_eip !63
  br label %block_105, !mcsema_real_eip !63

block_105:                                        ; preds = %block_100
  store volatile i64 261, i64* %EIP_write, !mcsema_real_eip !64
  %587 = load i64, i64* %RBP_read, !mcsema_real_eip !64
  %588 = add i64 %587, -12, !mcsema_real_eip !64
  %589 = inttoptr i64 %588 to i64*, !mcsema_real_eip !64
  %590 = ptrtoint i64* %589 to i64, !mcsema_real_eip !64
  %591 = inttoptr i64 %590 to i32*, !mcsema_real_eip !64
  %592 = load i32, i32* %591, !mcsema_real_eip !64
  %593 = zext i32 %592 to i64, !mcsema_real_eip !64
  store volatile i64 %593, i64* %EAX_write, !mcsema_real_eip !64
  store volatile i64 264, i64* %EIP_write, !mcsema_real_eip !65
  %594 = load i32, i32* %EAX_read, !mcsema_real_eip !65
  %595 = sub i32 %594, 74636, !mcsema_real_eip !65
  %596 = xor i32 %595, %594, !mcsema_real_eip !65
  %597 = xor i32 %596, 74636, !mcsema_real_eip !65
  %598 = and i32 %597, 16, !mcsema_real_eip !65
  %599 = icmp ne i32 %598, 0, !mcsema_real_eip !65
  %600 = zext i1 %599 to i8, !mcsema_real_eip !65
  store volatile i8 %600, i8* %AF_write, !mcsema_real_eip !65
  %601 = trunc i32 %595 to i8, !mcsema_real_eip !65
  %602 = call i8 @llvm.ctpop.i8(i8 %601), !mcsema_real_eip !65
  %603 = trunc i8 %602 to i1, !mcsema_real_eip !65
  %604 = zext i1 %603 to i8, !mcsema_real_eip !65
  %605 = xor i8 %604, 1, !mcsema_real_eip !65
  %606 = trunc i8 %605 to i1, !mcsema_real_eip !65
  %607 = zext i1 %606 to i8, !mcsema_real_eip !65
  store volatile i8 %607, i8* %PF_write, !mcsema_real_eip !65
  %608 = icmp eq i32 %595, 0, !mcsema_real_eip !65
  %609 = zext i1 %608 to i8, !mcsema_real_eip !65
  store volatile i8 %609, i8* %ZF_write, !mcsema_real_eip !65
  %610 = lshr i32 %595, 31, !mcsema_real_eip !65
  %611 = trunc i32 %610 to i1, !mcsema_real_eip !65
  %612 = zext i1 %611 to i8, !mcsema_real_eip !65
  %613 = trunc i8 %612 to i1, !mcsema_real_eip !65
  %614 = zext i1 %613 to i8, !mcsema_real_eip !65
  store volatile i8 %614, i8* %SF_write, !mcsema_real_eip !65
  %615 = icmp ult i32 %594, 74636, !mcsema_real_eip !65
  %616 = zext i1 %615 to i8, !mcsema_real_eip !65
  store volatile i8 %616, i8* %CF_write, !mcsema_real_eip !65
  %617 = xor i32 %594, 74636, !mcsema_real_eip !65
  %618 = xor i32 %594, %595, !mcsema_real_eip !65
  %619 = and i32 %617, %618, !mcsema_real_eip !65
  %620 = lshr i32 %619, 31, !mcsema_real_eip !65
  %621 = trunc i32 %620 to i1, !mcsema_real_eip !65
  %622 = zext i1 %621 to i8, !mcsema_real_eip !65
  %623 = trunc i8 %622 to i1, !mcsema_real_eip !65
  %624 = zext i1 %623 to i8, !mcsema_real_eip !65
  store volatile i8 %624, i8* %OF_write, !mcsema_real_eip !65
  %625 = zext i32 %595 to i64, !mcsema_real_eip !65
  store volatile i64 %625, i64* %EAX_write, !mcsema_real_eip !65
  store volatile i64 269, i64* %EIP_write, !mcsema_real_eip !66
  %626 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %627 = add i64 %626, -60, !mcsema_real_eip !66
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !66
  %629 = load i32, i32* %EAX_read, !mcsema_real_eip !66
  %630 = ptrtoint i64* %628 to i64, !mcsema_real_eip !66
  %631 = inttoptr i64 %630 to i32*, !mcsema_real_eip !66
  store i32 %629, i32* %631, !mcsema_real_eip !66
  store volatile i64 272, i64* %EIP_write, !mcsema_real_eip !67
  %632 = load i8, i8* %ZF_read, !mcsema_real_eip !67
  %633 = trunc i8 %632 to i1, !mcsema_real_eip !67
  %634 = icmp eq i1 %633, true, !mcsema_real_eip !67
  br i1 %634, label %block_24f, label %block_116, !mcsema_real_eip !67

block_116:                                        ; preds = %block_105
  store volatile i64 278, i64* %EIP_write, !mcsema_real_eip !68
  br label %block_11b, !mcsema_real_eip !68

block_11b:                                        ; preds = %block_116
  store volatile i64 283, i64* %EIP_write, !mcsema_real_eip !69
  %635 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %636 = add i64 %635, -12, !mcsema_real_eip !69
  %637 = inttoptr i64 %636 to i64*, !mcsema_real_eip !69
  %638 = ptrtoint i64* %637 to i64, !mcsema_real_eip !69
  %639 = inttoptr i64 %638 to i32*, !mcsema_real_eip !69
  %640 = load i32, i32* %639, !mcsema_real_eip !69
  %641 = zext i32 %640 to i64, !mcsema_real_eip !69
  store volatile i64 %641, i64* %EAX_write, !mcsema_real_eip !69
  store volatile i64 286, i64* %EIP_write, !mcsema_real_eip !70
  %642 = load i32, i32* %EAX_read, !mcsema_real_eip !70
  %643 = sub i32 %642, 74637, !mcsema_real_eip !70
  %644 = xor i32 %643, %642, !mcsema_real_eip !70
  %645 = xor i32 %644, 74637, !mcsema_real_eip !70
  %646 = and i32 %645, 16, !mcsema_real_eip !70
  %647 = icmp ne i32 %646, 0, !mcsema_real_eip !70
  %648 = zext i1 %647 to i8, !mcsema_real_eip !70
  store volatile i8 %648, i8* %AF_write, !mcsema_real_eip !70
  %649 = trunc i32 %643 to i8, !mcsema_real_eip !70
  %650 = call i8 @llvm.ctpop.i8(i8 %649), !mcsema_real_eip !70
  %651 = trunc i8 %650 to i1, !mcsema_real_eip !70
  %652 = zext i1 %651 to i8, !mcsema_real_eip !70
  %653 = xor i8 %652, 1, !mcsema_real_eip !70
  %654 = trunc i8 %653 to i1, !mcsema_real_eip !70
  %655 = zext i1 %654 to i8, !mcsema_real_eip !70
  store volatile i8 %655, i8* %PF_write, !mcsema_real_eip !70
  %656 = icmp eq i32 %643, 0, !mcsema_real_eip !70
  %657 = zext i1 %656 to i8, !mcsema_real_eip !70
  store volatile i8 %657, i8* %ZF_write, !mcsema_real_eip !70
  %658 = lshr i32 %643, 31, !mcsema_real_eip !70
  %659 = trunc i32 %658 to i1, !mcsema_real_eip !70
  %660 = zext i1 %659 to i8, !mcsema_real_eip !70
  %661 = trunc i8 %660 to i1, !mcsema_real_eip !70
  %662 = zext i1 %661 to i8, !mcsema_real_eip !70
  store volatile i8 %662, i8* %SF_write, !mcsema_real_eip !70
  %663 = icmp ult i32 %642, 74637, !mcsema_real_eip !70
  %664 = zext i1 %663 to i8, !mcsema_real_eip !70
  store volatile i8 %664, i8* %CF_write, !mcsema_real_eip !70
  %665 = xor i32 %642, 74637, !mcsema_real_eip !70
  %666 = xor i32 %642, %643, !mcsema_real_eip !70
  %667 = and i32 %665, %666, !mcsema_real_eip !70
  %668 = lshr i32 %667, 31, !mcsema_real_eip !70
  %669 = trunc i32 %668 to i1, !mcsema_real_eip !70
  %670 = zext i1 %669 to i8, !mcsema_real_eip !70
  %671 = trunc i8 %670 to i1, !mcsema_real_eip !70
  %672 = zext i1 %671 to i8, !mcsema_real_eip !70
  store volatile i8 %672, i8* %OF_write, !mcsema_real_eip !70
  %673 = zext i32 %643 to i64, !mcsema_real_eip !70
  store volatile i64 %673, i64* %EAX_write, !mcsema_real_eip !70
  store volatile i64 291, i64* %EIP_write, !mcsema_real_eip !71
  %674 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %675 = add i64 %674, -64, !mcsema_real_eip !71
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !71
  %677 = load i32, i32* %EAX_read, !mcsema_real_eip !71
  %678 = ptrtoint i64* %676 to i64, !mcsema_real_eip !71
  %679 = inttoptr i64 %678 to i32*, !mcsema_real_eip !71
  store i32 %677, i32* %679, !mcsema_real_eip !71
  store volatile i64 294, i64* %EIP_write, !mcsema_real_eip !72
  %680 = load i8, i8* %ZF_read, !mcsema_real_eip !72
  %681 = trunc i8 %680 to i1, !mcsema_real_eip !72
  %682 = icmp eq i1 %681, true, !mcsema_real_eip !72
  br i1 %682, label %block_25f, label %block_12c, !mcsema_real_eip !72

block_12c:                                        ; preds = %block_11b
  store volatile i64 300, i64* %EIP_write, !mcsema_real_eip !73
  br label %block_131, !mcsema_real_eip !73

block_131:                                        ; preds = %block_12c
  store volatile i64 305, i64* %EIP_write, !mcsema_real_eip !74
  %683 = load i64, i64* %RBP_read, !mcsema_real_eip !74
  %684 = add i64 %683, -12, !mcsema_real_eip !74
  %685 = inttoptr i64 %684 to i64*, !mcsema_real_eip !74
  %686 = ptrtoint i64* %685 to i64, !mcsema_real_eip !74
  %687 = inttoptr i64 %686 to i32*, !mcsema_real_eip !74
  %688 = load i32, i32* %687, !mcsema_real_eip !74
  %689 = zext i32 %688 to i64, !mcsema_real_eip !74
  store volatile i64 %689, i64* %EAX_write, !mcsema_real_eip !74
  store volatile i64 308, i64* %EIP_write, !mcsema_real_eip !75
  %690 = load i32, i32* %EAX_read, !mcsema_real_eip !75
  %691 = sub i32 %690, 74639, !mcsema_real_eip !75
  %692 = xor i32 %691, %690, !mcsema_real_eip !75
  %693 = xor i32 %692, 74639, !mcsema_real_eip !75
  %694 = and i32 %693, 16, !mcsema_real_eip !75
  %695 = icmp ne i32 %694, 0, !mcsema_real_eip !75
  %696 = zext i1 %695 to i8, !mcsema_real_eip !75
  store volatile i8 %696, i8* %AF_write, !mcsema_real_eip !75
  %697 = trunc i32 %691 to i8, !mcsema_real_eip !75
  %698 = call i8 @llvm.ctpop.i8(i8 %697), !mcsema_real_eip !75
  %699 = trunc i8 %698 to i1, !mcsema_real_eip !75
  %700 = zext i1 %699 to i8, !mcsema_real_eip !75
  %701 = xor i8 %700, 1, !mcsema_real_eip !75
  %702 = trunc i8 %701 to i1, !mcsema_real_eip !75
  %703 = zext i1 %702 to i8, !mcsema_real_eip !75
  store volatile i8 %703, i8* %PF_write, !mcsema_real_eip !75
  %704 = icmp eq i32 %691, 0, !mcsema_real_eip !75
  %705 = zext i1 %704 to i8, !mcsema_real_eip !75
  store volatile i8 %705, i8* %ZF_write, !mcsema_real_eip !75
  %706 = lshr i32 %691, 31, !mcsema_real_eip !75
  %707 = trunc i32 %706 to i1, !mcsema_real_eip !75
  %708 = zext i1 %707 to i8, !mcsema_real_eip !75
  %709 = trunc i8 %708 to i1, !mcsema_real_eip !75
  %710 = zext i1 %709 to i8, !mcsema_real_eip !75
  store volatile i8 %710, i8* %SF_write, !mcsema_real_eip !75
  %711 = icmp ult i32 %690, 74639, !mcsema_real_eip !75
  %712 = zext i1 %711 to i8, !mcsema_real_eip !75
  store volatile i8 %712, i8* %CF_write, !mcsema_real_eip !75
  %713 = xor i32 %690, 74639, !mcsema_real_eip !75
  %714 = xor i32 %690, %691, !mcsema_real_eip !75
  %715 = and i32 %713, %714, !mcsema_real_eip !75
  %716 = lshr i32 %715, 31, !mcsema_real_eip !75
  %717 = trunc i32 %716 to i1, !mcsema_real_eip !75
  %718 = zext i1 %717 to i8, !mcsema_real_eip !75
  %719 = trunc i8 %718 to i1, !mcsema_real_eip !75
  %720 = zext i1 %719 to i8, !mcsema_real_eip !75
  store volatile i8 %720, i8* %OF_write, !mcsema_real_eip !75
  %721 = zext i32 %691 to i64, !mcsema_real_eip !75
  store volatile i64 %721, i64* %EAX_write, !mcsema_real_eip !75
  store volatile i64 313, i64* %EIP_write, !mcsema_real_eip !76
  %722 = load i64, i64* %RBP_read, !mcsema_real_eip !76
  %723 = add i64 %722, -68, !mcsema_real_eip !76
  %724 = inttoptr i64 %723 to i64*, !mcsema_real_eip !76
  %725 = load i32, i32* %EAX_read, !mcsema_real_eip !76
  %726 = ptrtoint i64* %724 to i64, !mcsema_real_eip !76
  %727 = inttoptr i64 %726 to i32*, !mcsema_real_eip !76
  store i32 %725, i32* %727, !mcsema_real_eip !76
  store volatile i64 316, i64* %EIP_write, !mcsema_real_eip !77
  %728 = load i8, i8* %ZF_read, !mcsema_real_eip !77
  %729 = trunc i8 %728 to i1, !mcsema_real_eip !77
  %730 = icmp eq i1 %729, true, !mcsema_real_eip !77
  br i1 %730, label %block_26f, label %block_142, !mcsema_real_eip !77

block_142:                                        ; preds = %block_131
  store volatile i64 322, i64* %EIP_write, !mcsema_real_eip !78
  br label %block_147, !mcsema_real_eip !78

block_147:                                        ; preds = %block_142
  store volatile i64 327, i64* %EIP_write, !mcsema_real_eip !79
  %731 = load i64, i64* %RBP_read, !mcsema_real_eip !79
  %732 = add i64 %731, -12, !mcsema_real_eip !79
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !79
  %734 = ptrtoint i64* %733 to i64, !mcsema_real_eip !79
  %735 = inttoptr i64 %734 to i32*, !mcsema_real_eip !79
  %736 = load i32, i32* %735, !mcsema_real_eip !79
  %737 = zext i32 %736 to i64, !mcsema_real_eip !79
  store volatile i64 %737, i64* %EAX_write, !mcsema_real_eip !79
  store volatile i64 330, i64* %EIP_write, !mcsema_real_eip !80
  %738 = load i32, i32* %EAX_read, !mcsema_real_eip !80
  %739 = sub i32 %738, 74640, !mcsema_real_eip !80
  %740 = xor i32 %739, %738, !mcsema_real_eip !80
  %741 = xor i32 %740, 74640, !mcsema_real_eip !80
  %742 = and i32 %741, 16, !mcsema_real_eip !80
  %743 = icmp ne i32 %742, 0, !mcsema_real_eip !80
  %744 = zext i1 %743 to i8, !mcsema_real_eip !80
  store volatile i8 %744, i8* %AF_write, !mcsema_real_eip !80
  %745 = trunc i32 %739 to i8, !mcsema_real_eip !80
  %746 = call i8 @llvm.ctpop.i8(i8 %745), !mcsema_real_eip !80
  %747 = trunc i8 %746 to i1, !mcsema_real_eip !80
  %748 = zext i1 %747 to i8, !mcsema_real_eip !80
  %749 = xor i8 %748, 1, !mcsema_real_eip !80
  %750 = trunc i8 %749 to i1, !mcsema_real_eip !80
  %751 = zext i1 %750 to i8, !mcsema_real_eip !80
  store volatile i8 %751, i8* %PF_write, !mcsema_real_eip !80
  %752 = icmp eq i32 %739, 0, !mcsema_real_eip !80
  %753 = zext i1 %752 to i8, !mcsema_real_eip !80
  store volatile i8 %753, i8* %ZF_write, !mcsema_real_eip !80
  %754 = lshr i32 %739, 31, !mcsema_real_eip !80
  %755 = trunc i32 %754 to i1, !mcsema_real_eip !80
  %756 = zext i1 %755 to i8, !mcsema_real_eip !80
  %757 = trunc i8 %756 to i1, !mcsema_real_eip !80
  %758 = zext i1 %757 to i8, !mcsema_real_eip !80
  store volatile i8 %758, i8* %SF_write, !mcsema_real_eip !80
  %759 = icmp ult i32 %738, 74640, !mcsema_real_eip !80
  %760 = zext i1 %759 to i8, !mcsema_real_eip !80
  store volatile i8 %760, i8* %CF_write, !mcsema_real_eip !80
  %761 = xor i32 %738, 74640, !mcsema_real_eip !80
  %762 = xor i32 %738, %739, !mcsema_real_eip !80
  %763 = and i32 %761, %762, !mcsema_real_eip !80
  %764 = lshr i32 %763, 31, !mcsema_real_eip !80
  %765 = trunc i32 %764 to i1, !mcsema_real_eip !80
  %766 = zext i1 %765 to i8, !mcsema_real_eip !80
  %767 = trunc i8 %766 to i1, !mcsema_real_eip !80
  %768 = zext i1 %767 to i8, !mcsema_real_eip !80
  store volatile i8 %768, i8* %OF_write, !mcsema_real_eip !80
  %769 = zext i32 %739 to i64, !mcsema_real_eip !80
  store volatile i64 %769, i64* %EAX_write, !mcsema_real_eip !80
  store volatile i64 335, i64* %EIP_write, !mcsema_real_eip !81
  %770 = load i64, i64* %RBP_read, !mcsema_real_eip !81
  %771 = add i64 %770, -72, !mcsema_real_eip !81
  %772 = inttoptr i64 %771 to i64*, !mcsema_real_eip !81
  %773 = load i32, i32* %EAX_read, !mcsema_real_eip !81
  %774 = ptrtoint i64* %772 to i64, !mcsema_real_eip !81
  %775 = inttoptr i64 %774 to i32*, !mcsema_real_eip !81
  store i32 %773, i32* %775, !mcsema_real_eip !81
  store volatile i64 338, i64* %EIP_write, !mcsema_real_eip !82
  %776 = load i8, i8* %ZF_read, !mcsema_real_eip !82
  %777 = trunc i8 %776 to i1, !mcsema_real_eip !82
  %778 = icmp eq i1 %777, true, !mcsema_real_eip !82
  br i1 %778, label %block_27f, label %block_158, !mcsema_real_eip !82

block_158:                                        ; preds = %block_147
  store volatile i64 344, i64* %EIP_write, !mcsema_real_eip !83
  br label %block_15d, !mcsema_real_eip !83

block_15d:                                        ; preds = %block_158
  store volatile i64 349, i64* %EIP_write, !mcsema_real_eip !84
  %779 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %780 = add i64 %779, -12, !mcsema_real_eip !84
  %781 = inttoptr i64 %780 to i64*, !mcsema_real_eip !84
  %782 = ptrtoint i64* %781 to i64, !mcsema_real_eip !84
  %783 = inttoptr i64 %782 to i32*, !mcsema_real_eip !84
  %784 = load i32, i32* %783, !mcsema_real_eip !84
  %785 = zext i32 %784 to i64, !mcsema_real_eip !84
  store volatile i64 %785, i64* %EAX_write, !mcsema_real_eip !84
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !85
  %786 = load i32, i32* %EAX_read, !mcsema_real_eip !85
  %787 = sub i32 %786, 74641, !mcsema_real_eip !85
  %788 = xor i32 %787, %786, !mcsema_real_eip !85
  %789 = xor i32 %788, 74641, !mcsema_real_eip !85
  %790 = and i32 %789, 16, !mcsema_real_eip !85
  %791 = icmp ne i32 %790, 0, !mcsema_real_eip !85
  %792 = zext i1 %791 to i8, !mcsema_real_eip !85
  store volatile i8 %792, i8* %AF_write, !mcsema_real_eip !85
  %793 = trunc i32 %787 to i8, !mcsema_real_eip !85
  %794 = call i8 @llvm.ctpop.i8(i8 %793), !mcsema_real_eip !85
  %795 = trunc i8 %794 to i1, !mcsema_real_eip !85
  %796 = zext i1 %795 to i8, !mcsema_real_eip !85
  %797 = xor i8 %796, 1, !mcsema_real_eip !85
  %798 = trunc i8 %797 to i1, !mcsema_real_eip !85
  %799 = zext i1 %798 to i8, !mcsema_real_eip !85
  store volatile i8 %799, i8* %PF_write, !mcsema_real_eip !85
  %800 = icmp eq i32 %787, 0, !mcsema_real_eip !85
  %801 = zext i1 %800 to i8, !mcsema_real_eip !85
  store volatile i8 %801, i8* %ZF_write, !mcsema_real_eip !85
  %802 = lshr i32 %787, 31, !mcsema_real_eip !85
  %803 = trunc i32 %802 to i1, !mcsema_real_eip !85
  %804 = zext i1 %803 to i8, !mcsema_real_eip !85
  %805 = trunc i8 %804 to i1, !mcsema_real_eip !85
  %806 = zext i1 %805 to i8, !mcsema_real_eip !85
  store volatile i8 %806, i8* %SF_write, !mcsema_real_eip !85
  %807 = icmp ult i32 %786, 74641, !mcsema_real_eip !85
  %808 = zext i1 %807 to i8, !mcsema_real_eip !85
  store volatile i8 %808, i8* %CF_write, !mcsema_real_eip !85
  %809 = xor i32 %786, 74641, !mcsema_real_eip !85
  %810 = xor i32 %786, %787, !mcsema_real_eip !85
  %811 = and i32 %809, %810, !mcsema_real_eip !85
  %812 = lshr i32 %811, 31, !mcsema_real_eip !85
  %813 = trunc i32 %812 to i1, !mcsema_real_eip !85
  %814 = zext i1 %813 to i8, !mcsema_real_eip !85
  %815 = trunc i8 %814 to i1, !mcsema_real_eip !85
  %816 = zext i1 %815 to i8, !mcsema_real_eip !85
  store volatile i8 %816, i8* %OF_write, !mcsema_real_eip !85
  %817 = zext i32 %787 to i64, !mcsema_real_eip !85
  store volatile i64 %817, i64* %EAX_write, !mcsema_real_eip !85
  store volatile i64 357, i64* %EIP_write, !mcsema_real_eip !86
  %818 = load i64, i64* %RBP_read, !mcsema_real_eip !86
  %819 = add i64 %818, -76, !mcsema_real_eip !86
  %820 = inttoptr i64 %819 to i64*, !mcsema_real_eip !86
  %821 = load i32, i32* %EAX_read, !mcsema_real_eip !86
  %822 = ptrtoint i64* %820 to i64, !mcsema_real_eip !86
  %823 = inttoptr i64 %822 to i32*, !mcsema_real_eip !86
  store i32 %821, i32* %823, !mcsema_real_eip !86
  store volatile i64 360, i64* %EIP_write, !mcsema_real_eip !87
  %824 = load i8, i8* %ZF_read, !mcsema_real_eip !87
  %825 = trunc i8 %824 to i1, !mcsema_real_eip !87
  %826 = icmp eq i1 %825, true, !mcsema_real_eip !87
  br i1 %826, label %block_28f, label %block_16e, !mcsema_real_eip !87

block_16e:                                        ; preds = %block_15d
  store volatile i64 366, i64* %EIP_write, !mcsema_real_eip !88
  br label %block_173, !mcsema_real_eip !88

block_173:                                        ; preds = %block_16e
  store volatile i64 371, i64* %EIP_write, !mcsema_real_eip !89
  %827 = load i64, i64* %RBP_read, !mcsema_real_eip !89
  %828 = add i64 %827, -12, !mcsema_real_eip !89
  %829 = inttoptr i64 %828 to i64*, !mcsema_real_eip !89
  %830 = ptrtoint i64* %829 to i64, !mcsema_real_eip !89
  %831 = inttoptr i64 %830 to i32*, !mcsema_real_eip !89
  %832 = load i32, i32* %831, !mcsema_real_eip !89
  %833 = zext i32 %832 to i64, !mcsema_real_eip !89
  store volatile i64 %833, i64* %EAX_write, !mcsema_real_eip !89
  store volatile i64 374, i64* %EIP_write, !mcsema_real_eip !90
  %834 = load i32, i32* %EAX_read, !mcsema_real_eip !90
  %835 = sub i32 %834, 74642, !mcsema_real_eip !90
  %836 = xor i32 %835, %834, !mcsema_real_eip !90
  %837 = xor i32 %836, 74642, !mcsema_real_eip !90
  %838 = and i32 %837, 16, !mcsema_real_eip !90
  %839 = icmp ne i32 %838, 0, !mcsema_real_eip !90
  %840 = zext i1 %839 to i8, !mcsema_real_eip !90
  store volatile i8 %840, i8* %AF_write, !mcsema_real_eip !90
  %841 = trunc i32 %835 to i8, !mcsema_real_eip !90
  %842 = call i8 @llvm.ctpop.i8(i8 %841), !mcsema_real_eip !90
  %843 = trunc i8 %842 to i1, !mcsema_real_eip !90
  %844 = zext i1 %843 to i8, !mcsema_real_eip !90
  %845 = xor i8 %844, 1, !mcsema_real_eip !90
  %846 = trunc i8 %845 to i1, !mcsema_real_eip !90
  %847 = zext i1 %846 to i8, !mcsema_real_eip !90
  store volatile i8 %847, i8* %PF_write, !mcsema_real_eip !90
  %848 = icmp eq i32 %835, 0, !mcsema_real_eip !90
  %849 = zext i1 %848 to i8, !mcsema_real_eip !90
  store volatile i8 %849, i8* %ZF_write, !mcsema_real_eip !90
  %850 = lshr i32 %835, 31, !mcsema_real_eip !90
  %851 = trunc i32 %850 to i1, !mcsema_real_eip !90
  %852 = zext i1 %851 to i8, !mcsema_real_eip !90
  %853 = trunc i8 %852 to i1, !mcsema_real_eip !90
  %854 = zext i1 %853 to i8, !mcsema_real_eip !90
  store volatile i8 %854, i8* %SF_write, !mcsema_real_eip !90
  %855 = icmp ult i32 %834, 74642, !mcsema_real_eip !90
  %856 = zext i1 %855 to i8, !mcsema_real_eip !90
  store volatile i8 %856, i8* %CF_write, !mcsema_real_eip !90
  %857 = xor i32 %834, 74642, !mcsema_real_eip !90
  %858 = xor i32 %834, %835, !mcsema_real_eip !90
  %859 = and i32 %857, %858, !mcsema_real_eip !90
  %860 = lshr i32 %859, 31, !mcsema_real_eip !90
  %861 = trunc i32 %860 to i1, !mcsema_real_eip !90
  %862 = zext i1 %861 to i8, !mcsema_real_eip !90
  %863 = trunc i8 %862 to i1, !mcsema_real_eip !90
  %864 = zext i1 %863 to i8, !mcsema_real_eip !90
  store volatile i8 %864, i8* %OF_write, !mcsema_real_eip !90
  %865 = zext i32 %835 to i64, !mcsema_real_eip !90
  store volatile i64 %865, i64* %EAX_write, !mcsema_real_eip !90
  store volatile i64 379, i64* %EIP_write, !mcsema_real_eip !91
  %866 = load i64, i64* %RBP_read, !mcsema_real_eip !91
  %867 = add i64 %866, -80, !mcsema_real_eip !91
  %868 = inttoptr i64 %867 to i64*, !mcsema_real_eip !91
  %869 = load i32, i32* %EAX_read, !mcsema_real_eip !91
  %870 = ptrtoint i64* %868 to i64, !mcsema_real_eip !91
  %871 = inttoptr i64 %870 to i32*, !mcsema_real_eip !91
  store i32 %869, i32* %871, !mcsema_real_eip !91
  store volatile i64 382, i64* %EIP_write, !mcsema_real_eip !92
  %872 = load i8, i8* %ZF_read, !mcsema_real_eip !92
  %873 = trunc i8 %872 to i1, !mcsema_real_eip !92
  %874 = icmp eq i1 %873, true, !mcsema_real_eip !92
  br i1 %874, label %block_29f, label %block_184, !mcsema_real_eip !92

block_184:                                        ; preds = %block_173
  store volatile i64 388, i64* %EIP_write, !mcsema_real_eip !93
  br label %block_189, !mcsema_real_eip !93

block_189:                                        ; preds = %block_184
  store volatile i64 393, i64* %EIP_write, !mcsema_real_eip !94
  %875 = load i64, i64* %RBP_read, !mcsema_real_eip !94
  %876 = add i64 %875, -12, !mcsema_real_eip !94
  %877 = inttoptr i64 %876 to i64*, !mcsema_real_eip !94
  %878 = ptrtoint i64* %877 to i64, !mcsema_real_eip !94
  %879 = inttoptr i64 %878 to i32*, !mcsema_real_eip !94
  %880 = load i32, i32* %879, !mcsema_real_eip !94
  %881 = zext i32 %880 to i64, !mcsema_real_eip !94
  store volatile i64 %881, i64* %EAX_write, !mcsema_real_eip !94
  store volatile i64 396, i64* %EIP_write, !mcsema_real_eip !95
  %882 = load i32, i32* %EAX_read, !mcsema_real_eip !95
  %883 = sub i32 %882, 74643, !mcsema_real_eip !95
  %884 = xor i32 %883, %882, !mcsema_real_eip !95
  %885 = xor i32 %884, 74643, !mcsema_real_eip !95
  %886 = and i32 %885, 16, !mcsema_real_eip !95
  %887 = icmp ne i32 %886, 0, !mcsema_real_eip !95
  %888 = zext i1 %887 to i8, !mcsema_real_eip !95
  store volatile i8 %888, i8* %AF_write, !mcsema_real_eip !95
  %889 = trunc i32 %883 to i8, !mcsema_real_eip !95
  %890 = call i8 @llvm.ctpop.i8(i8 %889), !mcsema_real_eip !95
  %891 = trunc i8 %890 to i1, !mcsema_real_eip !95
  %892 = zext i1 %891 to i8, !mcsema_real_eip !95
  %893 = xor i8 %892, 1, !mcsema_real_eip !95
  %894 = trunc i8 %893 to i1, !mcsema_real_eip !95
  %895 = zext i1 %894 to i8, !mcsema_real_eip !95
  store volatile i8 %895, i8* %PF_write, !mcsema_real_eip !95
  %896 = icmp eq i32 %883, 0, !mcsema_real_eip !95
  %897 = zext i1 %896 to i8, !mcsema_real_eip !95
  store volatile i8 %897, i8* %ZF_write, !mcsema_real_eip !95
  %898 = lshr i32 %883, 31, !mcsema_real_eip !95
  %899 = trunc i32 %898 to i1, !mcsema_real_eip !95
  %900 = zext i1 %899 to i8, !mcsema_real_eip !95
  %901 = trunc i8 %900 to i1, !mcsema_real_eip !95
  %902 = zext i1 %901 to i8, !mcsema_real_eip !95
  store volatile i8 %902, i8* %SF_write, !mcsema_real_eip !95
  %903 = icmp ult i32 %882, 74643, !mcsema_real_eip !95
  %904 = zext i1 %903 to i8, !mcsema_real_eip !95
  store volatile i8 %904, i8* %CF_write, !mcsema_real_eip !95
  %905 = xor i32 %882, 74643, !mcsema_real_eip !95
  %906 = xor i32 %882, %883, !mcsema_real_eip !95
  %907 = and i32 %905, %906, !mcsema_real_eip !95
  %908 = lshr i32 %907, 31, !mcsema_real_eip !95
  %909 = trunc i32 %908 to i1, !mcsema_real_eip !95
  %910 = zext i1 %909 to i8, !mcsema_real_eip !95
  %911 = trunc i8 %910 to i1, !mcsema_real_eip !95
  %912 = zext i1 %911 to i8, !mcsema_real_eip !95
  store volatile i8 %912, i8* %OF_write, !mcsema_real_eip !95
  %913 = zext i32 %883 to i64, !mcsema_real_eip !95
  store volatile i64 %913, i64* %EAX_write, !mcsema_real_eip !95
  store volatile i64 401, i64* %EIP_write, !mcsema_real_eip !96
  %914 = load i64, i64* %RBP_read, !mcsema_real_eip !96
  %915 = add i64 %914, -84, !mcsema_real_eip !96
  %916 = inttoptr i64 %915 to i64*, !mcsema_real_eip !96
  %917 = load i32, i32* %EAX_read, !mcsema_real_eip !96
  %918 = ptrtoint i64* %916 to i64, !mcsema_real_eip !96
  %919 = inttoptr i64 %918 to i32*, !mcsema_real_eip !96
  store i32 %917, i32* %919, !mcsema_real_eip !96
  store volatile i64 404, i64* %EIP_write, !mcsema_real_eip !97
  %920 = load i8, i8* %ZF_read, !mcsema_real_eip !97
  %921 = trunc i8 %920 to i1, !mcsema_real_eip !97
  %922 = icmp eq i1 %921, true, !mcsema_real_eip !97
  br i1 %922, label %block_2af, label %block_19a, !mcsema_real_eip !97

block_19a:                                        ; preds = %block_189
  store volatile i64 410, i64* %EIP_write, !mcsema_real_eip !98
  br label %block_2bf, !mcsema_real_eip !98

block_19f:                                        ; preds = %block_0
  store volatile i64 415, i64* %EIP_write, !mcsema_real_eip !99
  %923 = load i64, i64* %RBP_read, !mcsema_real_eip !99
  %924 = add i64 %923, -8, !mcsema_real_eip !99
  %925 = inttoptr i64 %924 to i64*, !mcsema_real_eip !99
  %926 = ptrtoint i64* %925 to i64, !mcsema_real_eip !99
  %927 = inttoptr i64 %926 to i32*, !mcsema_real_eip !99
  %928 = load i32, i32* %927, !mcsema_real_eip !99
  %929 = zext i32 %928 to i64, !mcsema_real_eip !99
  store volatile i64 %929, i64* %EAX_write, !mcsema_real_eip !99
  store volatile i64 418, i64* %EIP_write, !mcsema_real_eip !100
  %930 = load i32, i32* %EAX_read, !mcsema_real_eip !100
  %931 = add i32 0, %930, !mcsema_real_eip !100
  %932 = xor i32 %931, %930, !mcsema_real_eip !100
  %933 = xor i32 %932, 0, !mcsema_real_eip !100
  %934 = and i32 %933, 16, !mcsema_real_eip !100
  %935 = icmp ne i32 %934, 0, !mcsema_real_eip !100
  %936 = zext i1 %935 to i8, !mcsema_real_eip !100
  store volatile i8 %936, i8* %AF_write, !mcsema_real_eip !100
  %937 = lshr i32 %931, 31, !mcsema_real_eip !100
  %938 = trunc i32 %937 to i1, !mcsema_real_eip !100
  %939 = zext i1 %938 to i8, !mcsema_real_eip !100
  %940 = trunc i8 %939 to i1, !mcsema_real_eip !100
  %941 = zext i1 %940 to i8, !mcsema_real_eip !100
  store volatile i8 %941, i8* %SF_write, !mcsema_real_eip !100
  %942 = icmp eq i32 %931, 0, !mcsema_real_eip !100
  %943 = zext i1 %942 to i8, !mcsema_real_eip !100
  store volatile i8 %943, i8* %ZF_write, !mcsema_real_eip !100
  %944 = xor i32 %930, 0, !mcsema_real_eip !100
  %945 = xor i32 %944, -1, !mcsema_real_eip !100
  %946 = xor i32 %930, %931, !mcsema_real_eip !100
  %947 = and i32 %945, %946, !mcsema_real_eip !100
  %948 = lshr i32 %947, 31, !mcsema_real_eip !100
  %949 = and i32 %948, 1, !mcsema_real_eip !100
  %950 = trunc i32 %949 to i1, !mcsema_real_eip !100
  %951 = zext i1 %950 to i8, !mcsema_real_eip !100
  %952 = trunc i8 %951 to i1, !mcsema_real_eip !100
  %953 = zext i1 %952 to i8, !mcsema_real_eip !100
  store volatile i8 %953, i8* %OF_write, !mcsema_real_eip !100
  %954 = trunc i32 %931 to i8, !mcsema_real_eip !100
  %955 = call i8 @llvm.ctpop.i8(i8 %954), !mcsema_real_eip !100
  %956 = trunc i8 %955 to i1, !mcsema_real_eip !100
  %957 = zext i1 %956 to i8, !mcsema_real_eip !100
  %958 = xor i8 %957, 1, !mcsema_real_eip !100
  %959 = trunc i8 %958 to i1, !mcsema_real_eip !100
  %960 = zext i1 %959 to i8, !mcsema_real_eip !100
  store volatile i8 %960, i8* %PF_write, !mcsema_real_eip !100
  %961 = icmp ult i32 %931, %930, !mcsema_real_eip !100
  %962 = zext i1 %961 to i8, !mcsema_real_eip !100
  store volatile i8 %962, i8* %CF_write, !mcsema_real_eip !100
  %963 = zext i32 %931 to i64, !mcsema_real_eip !100
  store volatile i64 %963, i64* %EAX_write, !mcsema_real_eip !100
  store volatile i64 421, i64* %EIP_write, !mcsema_real_eip !101
  %964 = load i64, i64* %RBP_read, !mcsema_real_eip !101
  %965 = add i64 %964, -8, !mcsema_real_eip !101
  %966 = inttoptr i64 %965 to i64*, !mcsema_real_eip !101
  %967 = load i32, i32* %EAX_read, !mcsema_real_eip !101
  %968 = ptrtoint i64* %966 to i64, !mcsema_real_eip !101
  %969 = inttoptr i64 %968 to i32*, !mcsema_real_eip !101
  store i32 %967, i32* %969, !mcsema_real_eip !101
  store volatile i64 424, i64* %EIP_write, !mcsema_real_eip !102
  br label %block_2c8, !mcsema_real_eip !102

block_1ad:                                        ; preds = %block_21
  store volatile i64 429, i64* %EIP_write, !mcsema_real_eip !103
  %970 = load i64, i64* %RBP_read, !mcsema_real_eip !103
  %971 = add i64 %970, -8, !mcsema_real_eip !103
  %972 = inttoptr i64 %971 to i64*, !mcsema_real_eip !103
  %973 = ptrtoint i64* %972 to i64, !mcsema_real_eip !103
  %974 = inttoptr i64 %973 to i32*, !mcsema_real_eip !103
  %975 = load i32, i32* %974, !mcsema_real_eip !103
  %976 = zext i32 %975 to i64, !mcsema_real_eip !103
  store volatile i64 %976, i64* %EAX_write, !mcsema_real_eip !103
  store volatile i64 432, i64* %EIP_write, !mcsema_real_eip !104
  %977 = load i32, i32* %EAX_read, !mcsema_real_eip !104
  %978 = add i32 1, %977, !mcsema_real_eip !104
  %979 = xor i32 %978, %977, !mcsema_real_eip !104
  %980 = xor i32 %979, 1, !mcsema_real_eip !104
  %981 = and i32 %980, 16, !mcsema_real_eip !104
  %982 = icmp ne i32 %981, 0, !mcsema_real_eip !104
  %983 = zext i1 %982 to i8, !mcsema_real_eip !104
  store volatile i8 %983, i8* %AF_write, !mcsema_real_eip !104
  %984 = lshr i32 %978, 31, !mcsema_real_eip !104
  %985 = trunc i32 %984 to i1, !mcsema_real_eip !104
  %986 = zext i1 %985 to i8, !mcsema_real_eip !104
  %987 = trunc i8 %986 to i1, !mcsema_real_eip !104
  %988 = zext i1 %987 to i8, !mcsema_real_eip !104
  store volatile i8 %988, i8* %SF_write, !mcsema_real_eip !104
  %989 = icmp eq i32 %978, 0, !mcsema_real_eip !104
  %990 = zext i1 %989 to i8, !mcsema_real_eip !104
  store volatile i8 %990, i8* %ZF_write, !mcsema_real_eip !104
  %991 = xor i32 %977, 1, !mcsema_real_eip !104
  %992 = xor i32 %991, -1, !mcsema_real_eip !104
  %993 = xor i32 %977, %978, !mcsema_real_eip !104
  %994 = and i32 %992, %993, !mcsema_real_eip !104
  %995 = lshr i32 %994, 31, !mcsema_real_eip !104
  %996 = and i32 %995, 1, !mcsema_real_eip !104
  %997 = trunc i32 %996 to i1, !mcsema_real_eip !104
  %998 = zext i1 %997 to i8, !mcsema_real_eip !104
  %999 = trunc i8 %998 to i1, !mcsema_real_eip !104
  %1000 = zext i1 %999 to i8, !mcsema_real_eip !104
  store volatile i8 %1000, i8* %OF_write, !mcsema_real_eip !104
  %1001 = trunc i32 %978 to i8, !mcsema_real_eip !104
  %1002 = call i8 @llvm.ctpop.i8(i8 %1001), !mcsema_real_eip !104
  %1003 = trunc i8 %1002 to i1, !mcsema_real_eip !104
  %1004 = zext i1 %1003 to i8, !mcsema_real_eip !104
  %1005 = xor i8 %1004, 1, !mcsema_real_eip !104
  %1006 = trunc i8 %1005 to i1, !mcsema_real_eip !104
  %1007 = zext i1 %1006 to i8, !mcsema_real_eip !104
  store volatile i8 %1007, i8* %PF_write, !mcsema_real_eip !104
  %1008 = icmp ult i32 %978, %977, !mcsema_real_eip !104
  %1009 = zext i1 %1008 to i8, !mcsema_real_eip !104
  store volatile i8 %1009, i8* %CF_write, !mcsema_real_eip !104
  %1010 = zext i32 %978 to i64, !mcsema_real_eip !104
  store volatile i64 %1010, i64* %EAX_write, !mcsema_real_eip !104
  store volatile i64 435, i64* %EIP_write, !mcsema_real_eip !105
  %1011 = load i64, i64* %RBP_read, !mcsema_real_eip !105
  %1012 = add i64 %1011, -8, !mcsema_real_eip !105
  %1013 = inttoptr i64 %1012 to i64*, !mcsema_real_eip !105
  %1014 = load i32, i32* %EAX_read, !mcsema_real_eip !105
  %1015 = ptrtoint i64* %1013 to i64, !mcsema_real_eip !105
  %1016 = inttoptr i64 %1015 to i32*, !mcsema_real_eip !105
  store i32 %1014, i32* %1016, !mcsema_real_eip !105
  store volatile i64 438, i64* %EIP_write, !mcsema_real_eip !106
  br label %block_2c8, !mcsema_real_eip !106

block_1bb:                                        ; preds = %block_35
  store volatile i64 443, i64* %EIP_write, !mcsema_real_eip !107
  %1017 = load i64, i64* %RBP_read, !mcsema_real_eip !107
  %1018 = add i64 %1017, -8, !mcsema_real_eip !107
  %1019 = inttoptr i64 %1018 to i64*, !mcsema_real_eip !107
  %1020 = ptrtoint i64* %1019 to i64, !mcsema_real_eip !107
  %1021 = inttoptr i64 %1020 to i32*, !mcsema_real_eip !107
  %1022 = load i32, i32* %1021, !mcsema_real_eip !107
  %1023 = zext i32 %1022 to i64, !mcsema_real_eip !107
  store volatile i64 %1023, i64* %EAX_write, !mcsema_real_eip !107
  store volatile i64 446, i64* %EIP_write, !mcsema_real_eip !108
  %1024 = load i32, i32* %EAX_read, !mcsema_real_eip !108
  %1025 = add i32 2, %1024, !mcsema_real_eip !108
  %1026 = xor i32 %1025, %1024, !mcsema_real_eip !108
  %1027 = xor i32 %1026, 2, !mcsema_real_eip !108
  %1028 = and i32 %1027, 16, !mcsema_real_eip !108
  %1029 = icmp ne i32 %1028, 0, !mcsema_real_eip !108
  %1030 = zext i1 %1029 to i8, !mcsema_real_eip !108
  store volatile i8 %1030, i8* %AF_write, !mcsema_real_eip !108
  %1031 = lshr i32 %1025, 31, !mcsema_real_eip !108
  %1032 = trunc i32 %1031 to i1, !mcsema_real_eip !108
  %1033 = zext i1 %1032 to i8, !mcsema_real_eip !108
  %1034 = trunc i8 %1033 to i1, !mcsema_real_eip !108
  %1035 = zext i1 %1034 to i8, !mcsema_real_eip !108
  store volatile i8 %1035, i8* %SF_write, !mcsema_real_eip !108
  %1036 = icmp eq i32 %1025, 0, !mcsema_real_eip !108
  %1037 = zext i1 %1036 to i8, !mcsema_real_eip !108
  store volatile i8 %1037, i8* %ZF_write, !mcsema_real_eip !108
  %1038 = xor i32 %1024, 2, !mcsema_real_eip !108
  %1039 = xor i32 %1038, -1, !mcsema_real_eip !108
  %1040 = xor i32 %1024, %1025, !mcsema_real_eip !108
  %1041 = and i32 %1039, %1040, !mcsema_real_eip !108
  %1042 = lshr i32 %1041, 31, !mcsema_real_eip !108
  %1043 = and i32 %1042, 1, !mcsema_real_eip !108
  %1044 = trunc i32 %1043 to i1, !mcsema_real_eip !108
  %1045 = zext i1 %1044 to i8, !mcsema_real_eip !108
  %1046 = trunc i8 %1045 to i1, !mcsema_real_eip !108
  %1047 = zext i1 %1046 to i8, !mcsema_real_eip !108
  store volatile i8 %1047, i8* %OF_write, !mcsema_real_eip !108
  %1048 = trunc i32 %1025 to i8, !mcsema_real_eip !108
  %1049 = call i8 @llvm.ctpop.i8(i8 %1048), !mcsema_real_eip !108
  %1050 = trunc i8 %1049 to i1, !mcsema_real_eip !108
  %1051 = zext i1 %1050 to i8, !mcsema_real_eip !108
  %1052 = xor i8 %1051, 1, !mcsema_real_eip !108
  %1053 = trunc i8 %1052 to i1, !mcsema_real_eip !108
  %1054 = zext i1 %1053 to i8, !mcsema_real_eip !108
  store volatile i8 %1054, i8* %PF_write, !mcsema_real_eip !108
  %1055 = icmp ult i32 %1025, %1024, !mcsema_real_eip !108
  %1056 = zext i1 %1055 to i8, !mcsema_real_eip !108
  store volatile i8 %1056, i8* %CF_write, !mcsema_real_eip !108
  %1057 = zext i32 %1025 to i64, !mcsema_real_eip !108
  store volatile i64 %1057, i64* %EAX_write, !mcsema_real_eip !108
  store volatile i64 449, i64* %EIP_write, !mcsema_real_eip !109
  %1058 = load i64, i64* %RBP_read, !mcsema_real_eip !109
  %1059 = add i64 %1058, -8, !mcsema_real_eip !109
  %1060 = inttoptr i64 %1059 to i64*, !mcsema_real_eip !109
  %1061 = load i32, i32* %EAX_read, !mcsema_real_eip !109
  %1062 = ptrtoint i64* %1060 to i64, !mcsema_real_eip !109
  %1063 = inttoptr i64 %1062 to i32*, !mcsema_real_eip !109
  store i32 %1061, i32* %1063, !mcsema_real_eip !109
  store volatile i64 452, i64* %EIP_write, !mcsema_real_eip !110
  br label %block_2c8, !mcsema_real_eip !110

block_1c9:                                        ; preds = %block_49
  store volatile i64 457, i64* %EIP_write, !mcsema_real_eip !111
  %1064 = load i64, i64* %RBP_read, !mcsema_real_eip !111
  %1065 = add i64 %1064, -8, !mcsema_real_eip !111
  %1066 = inttoptr i64 %1065 to i64*, !mcsema_real_eip !111
  %1067 = ptrtoint i64* %1066 to i64, !mcsema_real_eip !111
  %1068 = inttoptr i64 %1067 to i32*, !mcsema_real_eip !111
  %1069 = load i32, i32* %1068, !mcsema_real_eip !111
  %1070 = zext i32 %1069 to i64, !mcsema_real_eip !111
  store volatile i64 %1070, i64* %EAX_write, !mcsema_real_eip !111
  store volatile i64 460, i64* %EIP_write, !mcsema_real_eip !112
  %1071 = load i32, i32* %EAX_read, !mcsema_real_eip !112
  %1072 = add i32 4, %1071, !mcsema_real_eip !112
  %1073 = xor i32 %1072, %1071, !mcsema_real_eip !112
  %1074 = xor i32 %1073, 4, !mcsema_real_eip !112
  %1075 = and i32 %1074, 16, !mcsema_real_eip !112
  %1076 = icmp ne i32 %1075, 0, !mcsema_real_eip !112
  %1077 = zext i1 %1076 to i8, !mcsema_real_eip !112
  store volatile i8 %1077, i8* %AF_write, !mcsema_real_eip !112
  %1078 = lshr i32 %1072, 31, !mcsema_real_eip !112
  %1079 = trunc i32 %1078 to i1, !mcsema_real_eip !112
  %1080 = zext i1 %1079 to i8, !mcsema_real_eip !112
  %1081 = trunc i8 %1080 to i1, !mcsema_real_eip !112
  %1082 = zext i1 %1081 to i8, !mcsema_real_eip !112
  store volatile i8 %1082, i8* %SF_write, !mcsema_real_eip !112
  %1083 = icmp eq i32 %1072, 0, !mcsema_real_eip !112
  %1084 = zext i1 %1083 to i8, !mcsema_real_eip !112
  store volatile i8 %1084, i8* %ZF_write, !mcsema_real_eip !112
  %1085 = xor i32 %1071, 4, !mcsema_real_eip !112
  %1086 = xor i32 %1085, -1, !mcsema_real_eip !112
  %1087 = xor i32 %1071, %1072, !mcsema_real_eip !112
  %1088 = and i32 %1086, %1087, !mcsema_real_eip !112
  %1089 = lshr i32 %1088, 31, !mcsema_real_eip !112
  %1090 = and i32 %1089, 1, !mcsema_real_eip !112
  %1091 = trunc i32 %1090 to i1, !mcsema_real_eip !112
  %1092 = zext i1 %1091 to i8, !mcsema_real_eip !112
  %1093 = trunc i8 %1092 to i1, !mcsema_real_eip !112
  %1094 = zext i1 %1093 to i8, !mcsema_real_eip !112
  store volatile i8 %1094, i8* %OF_write, !mcsema_real_eip !112
  %1095 = trunc i32 %1072 to i8, !mcsema_real_eip !112
  %1096 = call i8 @llvm.ctpop.i8(i8 %1095), !mcsema_real_eip !112
  %1097 = trunc i8 %1096 to i1, !mcsema_real_eip !112
  %1098 = zext i1 %1097 to i8, !mcsema_real_eip !112
  %1099 = xor i8 %1098, 1, !mcsema_real_eip !112
  %1100 = trunc i8 %1099 to i1, !mcsema_real_eip !112
  %1101 = zext i1 %1100 to i8, !mcsema_real_eip !112
  store volatile i8 %1101, i8* %PF_write, !mcsema_real_eip !112
  %1102 = icmp ult i32 %1072, %1071, !mcsema_real_eip !112
  %1103 = zext i1 %1102 to i8, !mcsema_real_eip !112
  store volatile i8 %1103, i8* %CF_write, !mcsema_real_eip !112
  %1104 = zext i32 %1072 to i64, !mcsema_real_eip !112
  store volatile i64 %1104, i64* %EAX_write, !mcsema_real_eip !112
  store volatile i64 463, i64* %EIP_write, !mcsema_real_eip !113
  %1105 = load i64, i64* %RBP_read, !mcsema_real_eip !113
  %1106 = add i64 %1105, -8, !mcsema_real_eip !113
  %1107 = inttoptr i64 %1106 to i64*, !mcsema_real_eip !113
  %1108 = load i32, i32* %EAX_read, !mcsema_real_eip !113
  %1109 = ptrtoint i64* %1107 to i64, !mcsema_real_eip !113
  %1110 = inttoptr i64 %1109 to i32*, !mcsema_real_eip !113
  store i32 %1108, i32* %1110, !mcsema_real_eip !113
  store volatile i64 466, i64* %EIP_write, !mcsema_real_eip !114
  br label %block_2c8, !mcsema_real_eip !114

block_1d7:                                        ; preds = %block_5d
  store volatile i64 471, i64* %EIP_write, !mcsema_real_eip !115
  %1111 = load i64, i64* %RBP_read, !mcsema_real_eip !115
  %1112 = add i64 %1111, -8, !mcsema_real_eip !115
  %1113 = inttoptr i64 %1112 to i64*, !mcsema_real_eip !115
  %1114 = ptrtoint i64* %1113 to i64, !mcsema_real_eip !115
  %1115 = inttoptr i64 %1114 to i32*, !mcsema_real_eip !115
  %1116 = load i32, i32* %1115, !mcsema_real_eip !115
  %1117 = zext i32 %1116 to i64, !mcsema_real_eip !115
  store volatile i64 %1117, i64* %EAX_write, !mcsema_real_eip !115
  store volatile i64 474, i64* %EIP_write, !mcsema_real_eip !116
  %1118 = load i32, i32* %EAX_read, !mcsema_real_eip !116
  %1119 = add i32 6, %1118, !mcsema_real_eip !116
  %1120 = xor i32 %1119, %1118, !mcsema_real_eip !116
  %1121 = xor i32 %1120, 6, !mcsema_real_eip !116
  %1122 = and i32 %1121, 16, !mcsema_real_eip !116
  %1123 = icmp ne i32 %1122, 0, !mcsema_real_eip !116
  %1124 = zext i1 %1123 to i8, !mcsema_real_eip !116
  store volatile i8 %1124, i8* %AF_write, !mcsema_real_eip !116
  %1125 = lshr i32 %1119, 31, !mcsema_real_eip !116
  %1126 = trunc i32 %1125 to i1, !mcsema_real_eip !116
  %1127 = zext i1 %1126 to i8, !mcsema_real_eip !116
  %1128 = trunc i8 %1127 to i1, !mcsema_real_eip !116
  %1129 = zext i1 %1128 to i8, !mcsema_real_eip !116
  store volatile i8 %1129, i8* %SF_write, !mcsema_real_eip !116
  %1130 = icmp eq i32 %1119, 0, !mcsema_real_eip !116
  %1131 = zext i1 %1130 to i8, !mcsema_real_eip !116
  store volatile i8 %1131, i8* %ZF_write, !mcsema_real_eip !116
  %1132 = xor i32 %1118, 6, !mcsema_real_eip !116
  %1133 = xor i32 %1132, -1, !mcsema_real_eip !116
  %1134 = xor i32 %1118, %1119, !mcsema_real_eip !116
  %1135 = and i32 %1133, %1134, !mcsema_real_eip !116
  %1136 = lshr i32 %1135, 31, !mcsema_real_eip !116
  %1137 = and i32 %1136, 1, !mcsema_real_eip !116
  %1138 = trunc i32 %1137 to i1, !mcsema_real_eip !116
  %1139 = zext i1 %1138 to i8, !mcsema_real_eip !116
  %1140 = trunc i8 %1139 to i1, !mcsema_real_eip !116
  %1141 = zext i1 %1140 to i8, !mcsema_real_eip !116
  store volatile i8 %1141, i8* %OF_write, !mcsema_real_eip !116
  %1142 = trunc i32 %1119 to i8, !mcsema_real_eip !116
  %1143 = call i8 @llvm.ctpop.i8(i8 %1142), !mcsema_real_eip !116
  %1144 = trunc i8 %1143 to i1, !mcsema_real_eip !116
  %1145 = zext i1 %1144 to i8, !mcsema_real_eip !116
  %1146 = xor i8 %1145, 1, !mcsema_real_eip !116
  %1147 = trunc i8 %1146 to i1, !mcsema_real_eip !116
  %1148 = zext i1 %1147 to i8, !mcsema_real_eip !116
  store volatile i8 %1148, i8* %PF_write, !mcsema_real_eip !116
  %1149 = icmp ult i32 %1119, %1118, !mcsema_real_eip !116
  %1150 = zext i1 %1149 to i8, !mcsema_real_eip !116
  store volatile i8 %1150, i8* %CF_write, !mcsema_real_eip !116
  %1151 = zext i32 %1119 to i64, !mcsema_real_eip !116
  store volatile i64 %1151, i64* %EAX_write, !mcsema_real_eip !116
  store volatile i64 477, i64* %EIP_write, !mcsema_real_eip !117
  %1152 = load i64, i64* %RBP_read, !mcsema_real_eip !117
  %1153 = add i64 %1152, -8, !mcsema_real_eip !117
  %1154 = inttoptr i64 %1153 to i64*, !mcsema_real_eip !117
  %1155 = load i32, i32* %EAX_read, !mcsema_real_eip !117
  %1156 = ptrtoint i64* %1154 to i64, !mcsema_real_eip !117
  %1157 = inttoptr i64 %1156 to i32*, !mcsema_real_eip !117
  store i32 %1155, i32* %1157, !mcsema_real_eip !117
  store volatile i64 480, i64* %EIP_write, !mcsema_real_eip !118
  br label %block_2c8, !mcsema_real_eip !118

block_1e5:                                        ; preds = %block_71
  store volatile i64 485, i64* %EIP_write, !mcsema_real_eip !119
  %1158 = load i64, i64* %RBP_read, !mcsema_real_eip !119
  %1159 = add i64 %1158, -8, !mcsema_real_eip !119
  %1160 = inttoptr i64 %1159 to i64*, !mcsema_real_eip !119
  %1161 = ptrtoint i64* %1160 to i64, !mcsema_real_eip !119
  %1162 = inttoptr i64 %1161 to i32*, !mcsema_real_eip !119
  %1163 = load i32, i32* %1162, !mcsema_real_eip !119
  %1164 = zext i32 %1163 to i64, !mcsema_real_eip !119
  store volatile i64 %1164, i64* %EAX_write, !mcsema_real_eip !119
  store volatile i64 488, i64* %EIP_write, !mcsema_real_eip !120
  %1165 = load i32, i32* %EAX_read, !mcsema_real_eip !120
  %1166 = add i32 12, %1165, !mcsema_real_eip !120
  %1167 = xor i32 %1166, %1165, !mcsema_real_eip !120
  %1168 = xor i32 %1167, 12, !mcsema_real_eip !120
  %1169 = and i32 %1168, 16, !mcsema_real_eip !120
  %1170 = icmp ne i32 %1169, 0, !mcsema_real_eip !120
  %1171 = zext i1 %1170 to i8, !mcsema_real_eip !120
  store volatile i8 %1171, i8* %AF_write, !mcsema_real_eip !120
  %1172 = lshr i32 %1166, 31, !mcsema_real_eip !120
  %1173 = trunc i32 %1172 to i1, !mcsema_real_eip !120
  %1174 = zext i1 %1173 to i8, !mcsema_real_eip !120
  %1175 = trunc i8 %1174 to i1, !mcsema_real_eip !120
  %1176 = zext i1 %1175 to i8, !mcsema_real_eip !120
  store volatile i8 %1176, i8* %SF_write, !mcsema_real_eip !120
  %1177 = icmp eq i32 %1166, 0, !mcsema_real_eip !120
  %1178 = zext i1 %1177 to i8, !mcsema_real_eip !120
  store volatile i8 %1178, i8* %ZF_write, !mcsema_real_eip !120
  %1179 = xor i32 %1165, 12, !mcsema_real_eip !120
  %1180 = xor i32 %1179, -1, !mcsema_real_eip !120
  %1181 = xor i32 %1165, %1166, !mcsema_real_eip !120
  %1182 = and i32 %1180, %1181, !mcsema_real_eip !120
  %1183 = lshr i32 %1182, 31, !mcsema_real_eip !120
  %1184 = and i32 %1183, 1, !mcsema_real_eip !120
  %1185 = trunc i32 %1184 to i1, !mcsema_real_eip !120
  %1186 = zext i1 %1185 to i8, !mcsema_real_eip !120
  %1187 = trunc i8 %1186 to i1, !mcsema_real_eip !120
  %1188 = zext i1 %1187 to i8, !mcsema_real_eip !120
  store volatile i8 %1188, i8* %OF_write, !mcsema_real_eip !120
  %1189 = trunc i32 %1166 to i8, !mcsema_real_eip !120
  %1190 = call i8 @llvm.ctpop.i8(i8 %1189), !mcsema_real_eip !120
  %1191 = trunc i8 %1190 to i1, !mcsema_real_eip !120
  %1192 = zext i1 %1191 to i8, !mcsema_real_eip !120
  %1193 = xor i8 %1192, 1, !mcsema_real_eip !120
  %1194 = trunc i8 %1193 to i1, !mcsema_real_eip !120
  %1195 = zext i1 %1194 to i8, !mcsema_real_eip !120
  store volatile i8 %1195, i8* %PF_write, !mcsema_real_eip !120
  %1196 = icmp ult i32 %1166, %1165, !mcsema_real_eip !120
  %1197 = zext i1 %1196 to i8, !mcsema_real_eip !120
  store volatile i8 %1197, i8* %CF_write, !mcsema_real_eip !120
  %1198 = zext i32 %1166 to i64, !mcsema_real_eip !120
  store volatile i64 %1198, i64* %EAX_write, !mcsema_real_eip !120
  store volatile i64 491, i64* %EIP_write, !mcsema_real_eip !121
  %1199 = load i64, i64* %RBP_read, !mcsema_real_eip !121
  %1200 = add i64 %1199, -8, !mcsema_real_eip !121
  %1201 = inttoptr i64 %1200 to i64*, !mcsema_real_eip !121
  %1202 = load i32, i32* %EAX_read, !mcsema_real_eip !121
  %1203 = ptrtoint i64* %1201 to i64, !mcsema_real_eip !121
  %1204 = inttoptr i64 %1203 to i32*, !mcsema_real_eip !121
  store i32 %1202, i32* %1204, !mcsema_real_eip !121
  store volatile i64 494, i64* %EIP_write, !mcsema_real_eip !122
  br label %block_2c8, !mcsema_real_eip !122

block_1f3:                                        ; preds = %block_85
  store volatile i64 499, i64* %EIP_write, !mcsema_real_eip !123
  %1205 = load i64, i64* %RBP_read, !mcsema_real_eip !123
  %1206 = add i64 %1205, -8, !mcsema_real_eip !123
  %1207 = inttoptr i64 %1206 to i64*, !mcsema_real_eip !123
  %1208 = ptrtoint i64* %1207 to i64, !mcsema_real_eip !123
  %1209 = inttoptr i64 %1208 to i32*, !mcsema_real_eip !123
  %1210 = load i32, i32* %1209, !mcsema_real_eip !123
  %1211 = zext i32 %1210 to i64, !mcsema_real_eip !123
  store volatile i64 %1211, i64* %EAX_write, !mcsema_real_eip !123
  store volatile i64 502, i64* %EIP_write, !mcsema_real_eip !124
  %1212 = load i32, i32* %EAX_read, !mcsema_real_eip !124
  %1213 = add i32 13, %1212, !mcsema_real_eip !124
  %1214 = xor i32 %1213, %1212, !mcsema_real_eip !124
  %1215 = xor i32 %1214, 13, !mcsema_real_eip !124
  %1216 = and i32 %1215, 16, !mcsema_real_eip !124
  %1217 = icmp ne i32 %1216, 0, !mcsema_real_eip !124
  %1218 = zext i1 %1217 to i8, !mcsema_real_eip !124
  store volatile i8 %1218, i8* %AF_write, !mcsema_real_eip !124
  %1219 = lshr i32 %1213, 31, !mcsema_real_eip !124
  %1220 = trunc i32 %1219 to i1, !mcsema_real_eip !124
  %1221 = zext i1 %1220 to i8, !mcsema_real_eip !124
  %1222 = trunc i8 %1221 to i1, !mcsema_real_eip !124
  %1223 = zext i1 %1222 to i8, !mcsema_real_eip !124
  store volatile i8 %1223, i8* %SF_write, !mcsema_real_eip !124
  %1224 = icmp eq i32 %1213, 0, !mcsema_real_eip !124
  %1225 = zext i1 %1224 to i8, !mcsema_real_eip !124
  store volatile i8 %1225, i8* %ZF_write, !mcsema_real_eip !124
  %1226 = xor i32 %1212, 13, !mcsema_real_eip !124
  %1227 = xor i32 %1226, -1, !mcsema_real_eip !124
  %1228 = xor i32 %1212, %1213, !mcsema_real_eip !124
  %1229 = and i32 %1227, %1228, !mcsema_real_eip !124
  %1230 = lshr i32 %1229, 31, !mcsema_real_eip !124
  %1231 = and i32 %1230, 1, !mcsema_real_eip !124
  %1232 = trunc i32 %1231 to i1, !mcsema_real_eip !124
  %1233 = zext i1 %1232 to i8, !mcsema_real_eip !124
  %1234 = trunc i8 %1233 to i1, !mcsema_real_eip !124
  %1235 = zext i1 %1234 to i8, !mcsema_real_eip !124
  store volatile i8 %1235, i8* %OF_write, !mcsema_real_eip !124
  %1236 = trunc i32 %1213 to i8, !mcsema_real_eip !124
  %1237 = call i8 @llvm.ctpop.i8(i8 %1236), !mcsema_real_eip !124
  %1238 = trunc i8 %1237 to i1, !mcsema_real_eip !124
  %1239 = zext i1 %1238 to i8, !mcsema_real_eip !124
  %1240 = xor i8 %1239, 1, !mcsema_real_eip !124
  %1241 = trunc i8 %1240 to i1, !mcsema_real_eip !124
  %1242 = zext i1 %1241 to i8, !mcsema_real_eip !124
  store volatile i8 %1242, i8* %PF_write, !mcsema_real_eip !124
  %1243 = icmp ult i32 %1213, %1212, !mcsema_real_eip !124
  %1244 = zext i1 %1243 to i8, !mcsema_real_eip !124
  store volatile i8 %1244, i8* %CF_write, !mcsema_real_eip !124
  %1245 = zext i32 %1213 to i64, !mcsema_real_eip !124
  store volatile i64 %1245, i64* %EAX_write, !mcsema_real_eip !124
  store volatile i64 505, i64* %EIP_write, !mcsema_real_eip !125
  %1246 = load i64, i64* %RBP_read, !mcsema_real_eip !125
  %1247 = add i64 %1246, -8, !mcsema_real_eip !125
  %1248 = inttoptr i64 %1247 to i64*, !mcsema_real_eip !125
  %1249 = load i32, i32* %EAX_read, !mcsema_real_eip !125
  %1250 = ptrtoint i64* %1248 to i64, !mcsema_real_eip !125
  %1251 = inttoptr i64 %1250 to i32*, !mcsema_real_eip !125
  store i32 %1249, i32* %1251, !mcsema_real_eip !125
  store volatile i64 508, i64* %EIP_write, !mcsema_real_eip !126
  br label %block_2c8, !mcsema_real_eip !126

block_201:                                        ; preds = %block_99
  store volatile i64 513, i64* %EIP_write, !mcsema_real_eip !127
  %1252 = load i64, i64* %RBP_read, !mcsema_real_eip !127
  %1253 = add i64 %1252, -8, !mcsema_real_eip !127
  %1254 = inttoptr i64 %1253 to i64*, !mcsema_real_eip !127
  %1255 = ptrtoint i64* %1254 to i64, !mcsema_real_eip !127
  %1256 = inttoptr i64 %1255 to i32*, !mcsema_real_eip !127
  %1257 = load i32, i32* %1256, !mcsema_real_eip !127
  %1258 = zext i32 %1257 to i64, !mcsema_real_eip !127
  store volatile i64 %1258, i64* %EAX_write, !mcsema_real_eip !127
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !128
  %1259 = load i32, i32* %EAX_read, !mcsema_real_eip !128
  %1260 = add i32 19, %1259, !mcsema_real_eip !128
  %1261 = xor i32 %1260, %1259, !mcsema_real_eip !128
  %1262 = xor i32 %1261, 19, !mcsema_real_eip !128
  %1263 = and i32 %1262, 16, !mcsema_real_eip !128
  %1264 = icmp ne i32 %1263, 0, !mcsema_real_eip !128
  %1265 = zext i1 %1264 to i8, !mcsema_real_eip !128
  store volatile i8 %1265, i8* %AF_write, !mcsema_real_eip !128
  %1266 = lshr i32 %1260, 31, !mcsema_real_eip !128
  %1267 = trunc i32 %1266 to i1, !mcsema_real_eip !128
  %1268 = zext i1 %1267 to i8, !mcsema_real_eip !128
  %1269 = trunc i8 %1268 to i1, !mcsema_real_eip !128
  %1270 = zext i1 %1269 to i8, !mcsema_real_eip !128
  store volatile i8 %1270, i8* %SF_write, !mcsema_real_eip !128
  %1271 = icmp eq i32 %1260, 0, !mcsema_real_eip !128
  %1272 = zext i1 %1271 to i8, !mcsema_real_eip !128
  store volatile i8 %1272, i8* %ZF_write, !mcsema_real_eip !128
  %1273 = xor i32 %1259, 19, !mcsema_real_eip !128
  %1274 = xor i32 %1273, -1, !mcsema_real_eip !128
  %1275 = xor i32 %1259, %1260, !mcsema_real_eip !128
  %1276 = and i32 %1274, %1275, !mcsema_real_eip !128
  %1277 = lshr i32 %1276, 31, !mcsema_real_eip !128
  %1278 = and i32 %1277, 1, !mcsema_real_eip !128
  %1279 = trunc i32 %1278 to i1, !mcsema_real_eip !128
  %1280 = zext i1 %1279 to i8, !mcsema_real_eip !128
  %1281 = trunc i8 %1280 to i1, !mcsema_real_eip !128
  %1282 = zext i1 %1281 to i8, !mcsema_real_eip !128
  store volatile i8 %1282, i8* %OF_write, !mcsema_real_eip !128
  %1283 = trunc i32 %1260 to i8, !mcsema_real_eip !128
  %1284 = call i8 @llvm.ctpop.i8(i8 %1283), !mcsema_real_eip !128
  %1285 = trunc i8 %1284 to i1, !mcsema_real_eip !128
  %1286 = zext i1 %1285 to i8, !mcsema_real_eip !128
  %1287 = xor i8 %1286, 1, !mcsema_real_eip !128
  %1288 = trunc i8 %1287 to i1, !mcsema_real_eip !128
  %1289 = zext i1 %1288 to i8, !mcsema_real_eip !128
  store volatile i8 %1289, i8* %PF_write, !mcsema_real_eip !128
  %1290 = icmp ult i32 %1260, %1259, !mcsema_real_eip !128
  %1291 = zext i1 %1290 to i8, !mcsema_real_eip !128
  store volatile i8 %1291, i8* %CF_write, !mcsema_real_eip !128
  %1292 = zext i32 %1260 to i64, !mcsema_real_eip !128
  store volatile i64 %1292, i64* %EAX_write, !mcsema_real_eip !128
  store volatile i64 519, i64* %EIP_write, !mcsema_real_eip !129
  %1293 = load i64, i64* %RBP_read, !mcsema_real_eip !129
  %1294 = add i64 %1293, -8, !mcsema_real_eip !129
  %1295 = inttoptr i64 %1294 to i64*, !mcsema_real_eip !129
  %1296 = load i32, i32* %EAX_read, !mcsema_real_eip !129
  %1297 = ptrtoint i64* %1295 to i64, !mcsema_real_eip !129
  %1298 = inttoptr i64 %1297 to i32*, !mcsema_real_eip !129
  store i32 %1296, i32* %1298, !mcsema_real_eip !129
  store volatile i64 522, i64* %EIP_write, !mcsema_real_eip !130
  br label %block_2c8, !mcsema_real_eip !130

block_20f:                                        ; preds = %block_ad
  store volatile i64 527, i64* %EIP_write, !mcsema_real_eip !131
  %1299 = load i64, i64* %RBP_read, !mcsema_real_eip !131
  %1300 = add i64 %1299, -8, !mcsema_real_eip !131
  %1301 = inttoptr i64 %1300 to i64*, !mcsema_real_eip !131
  %1302 = ptrtoint i64* %1301 to i64, !mcsema_real_eip !131
  %1303 = inttoptr i64 %1302 to i32*, !mcsema_real_eip !131
  %1304 = load i32, i32* %1303, !mcsema_real_eip !131
  %1305 = zext i32 %1304 to i64, !mcsema_real_eip !131
  store volatile i64 %1305, i64* %EAX_write, !mcsema_real_eip !131
  store volatile i64 530, i64* %EIP_write, !mcsema_real_eip !132
  %1306 = load i32, i32* %EAX_read, !mcsema_real_eip !132
  %1307 = add i32 255, %1306, !mcsema_real_eip !132
  %1308 = xor i32 %1307, %1306, !mcsema_real_eip !132
  %1309 = xor i32 %1308, 255, !mcsema_real_eip !132
  %1310 = and i32 %1309, 16, !mcsema_real_eip !132
  %1311 = icmp ne i32 %1310, 0, !mcsema_real_eip !132
  %1312 = zext i1 %1311 to i8, !mcsema_real_eip !132
  store volatile i8 %1312, i8* %AF_write, !mcsema_real_eip !132
  %1313 = lshr i32 %1307, 31, !mcsema_real_eip !132
  %1314 = trunc i32 %1313 to i1, !mcsema_real_eip !132
  %1315 = zext i1 %1314 to i8, !mcsema_real_eip !132
  %1316 = trunc i8 %1315 to i1, !mcsema_real_eip !132
  %1317 = zext i1 %1316 to i8, !mcsema_real_eip !132
  store volatile i8 %1317, i8* %SF_write, !mcsema_real_eip !132
  %1318 = icmp eq i32 %1307, 0, !mcsema_real_eip !132
  %1319 = zext i1 %1318 to i8, !mcsema_real_eip !132
  store volatile i8 %1319, i8* %ZF_write, !mcsema_real_eip !132
  %1320 = xor i32 %1306, 255, !mcsema_real_eip !132
  %1321 = xor i32 %1320, -1, !mcsema_real_eip !132
  %1322 = xor i32 %1306, %1307, !mcsema_real_eip !132
  %1323 = and i32 %1321, %1322, !mcsema_real_eip !132
  %1324 = lshr i32 %1323, 31, !mcsema_real_eip !132
  %1325 = and i32 %1324, 1, !mcsema_real_eip !132
  %1326 = trunc i32 %1325 to i1, !mcsema_real_eip !132
  %1327 = zext i1 %1326 to i8, !mcsema_real_eip !132
  %1328 = trunc i8 %1327 to i1, !mcsema_real_eip !132
  %1329 = zext i1 %1328 to i8, !mcsema_real_eip !132
  store volatile i8 %1329, i8* %OF_write, !mcsema_real_eip !132
  %1330 = trunc i32 %1307 to i8, !mcsema_real_eip !132
  %1331 = call i8 @llvm.ctpop.i8(i8 %1330), !mcsema_real_eip !132
  %1332 = trunc i8 %1331 to i1, !mcsema_real_eip !132
  %1333 = zext i1 %1332 to i8, !mcsema_real_eip !132
  %1334 = xor i8 %1333, 1, !mcsema_real_eip !132
  %1335 = trunc i8 %1334 to i1, !mcsema_real_eip !132
  %1336 = zext i1 %1335 to i8, !mcsema_real_eip !132
  store volatile i8 %1336, i8* %PF_write, !mcsema_real_eip !132
  %1337 = icmp ult i32 %1307, %1306, !mcsema_real_eip !132
  %1338 = zext i1 %1337 to i8, !mcsema_real_eip !132
  store volatile i8 %1338, i8* %CF_write, !mcsema_real_eip !132
  %1339 = zext i32 %1307 to i64, !mcsema_real_eip !132
  store volatile i64 %1339, i64* %EAX_write, !mcsema_real_eip !132
  store volatile i64 535, i64* %EIP_write, !mcsema_real_eip !133
  %1340 = load i64, i64* %RBP_read, !mcsema_real_eip !133
  %1341 = add i64 %1340, -8, !mcsema_real_eip !133
  %1342 = inttoptr i64 %1341 to i64*, !mcsema_real_eip !133
  %1343 = load i32, i32* %EAX_read, !mcsema_real_eip !133
  %1344 = ptrtoint i64* %1342 to i64, !mcsema_real_eip !133
  %1345 = inttoptr i64 %1344 to i32*, !mcsema_real_eip !133
  store i32 %1343, i32* %1345, !mcsema_real_eip !133
  store volatile i64 538, i64* %EIP_write, !mcsema_real_eip !134
  br label %block_2c8, !mcsema_real_eip !134

block_21f:                                        ; preds = %block_c3
  store volatile i64 543, i64* %EIP_write, !mcsema_real_eip !135
  %1346 = load i64, i64* %RBP_read, !mcsema_real_eip !135
  %1347 = add i64 %1346, -8, !mcsema_real_eip !135
  %1348 = inttoptr i64 %1347 to i64*, !mcsema_real_eip !135
  %1349 = ptrtoint i64* %1348 to i64, !mcsema_real_eip !135
  %1350 = inttoptr i64 %1349 to i32*, !mcsema_real_eip !135
  %1351 = load i32, i32* %1350, !mcsema_real_eip !135
  %1352 = zext i32 %1351 to i64, !mcsema_real_eip !135
  store volatile i64 %1352, i64* %EAX_write, !mcsema_real_eip !135
  store volatile i64 546, i64* %EIP_write, !mcsema_real_eip !136
  %1353 = load i32, i32* %EAX_read, !mcsema_real_eip !136
  %1354 = add i32 74633, %1353, !mcsema_real_eip !136
  %1355 = xor i32 %1354, %1353, !mcsema_real_eip !136
  %1356 = xor i32 %1355, 74633, !mcsema_real_eip !136
  %1357 = and i32 %1356, 16, !mcsema_real_eip !136
  %1358 = icmp ne i32 %1357, 0, !mcsema_real_eip !136
  %1359 = zext i1 %1358 to i8, !mcsema_real_eip !136
  store volatile i8 %1359, i8* %AF_write, !mcsema_real_eip !136
  %1360 = lshr i32 %1354, 31, !mcsema_real_eip !136
  %1361 = trunc i32 %1360 to i1, !mcsema_real_eip !136
  %1362 = zext i1 %1361 to i8, !mcsema_real_eip !136
  %1363 = trunc i8 %1362 to i1, !mcsema_real_eip !136
  %1364 = zext i1 %1363 to i8, !mcsema_real_eip !136
  store volatile i8 %1364, i8* %SF_write, !mcsema_real_eip !136
  %1365 = icmp eq i32 %1354, 0, !mcsema_real_eip !136
  %1366 = zext i1 %1365 to i8, !mcsema_real_eip !136
  store volatile i8 %1366, i8* %ZF_write, !mcsema_real_eip !136
  %1367 = xor i32 %1353, 74633, !mcsema_real_eip !136
  %1368 = xor i32 %1367, -1, !mcsema_real_eip !136
  %1369 = xor i32 %1353, %1354, !mcsema_real_eip !136
  %1370 = and i32 %1368, %1369, !mcsema_real_eip !136
  %1371 = lshr i32 %1370, 31, !mcsema_real_eip !136
  %1372 = and i32 %1371, 1, !mcsema_real_eip !136
  %1373 = trunc i32 %1372 to i1, !mcsema_real_eip !136
  %1374 = zext i1 %1373 to i8, !mcsema_real_eip !136
  %1375 = trunc i8 %1374 to i1, !mcsema_real_eip !136
  %1376 = zext i1 %1375 to i8, !mcsema_real_eip !136
  store volatile i8 %1376, i8* %OF_write, !mcsema_real_eip !136
  %1377 = trunc i32 %1354 to i8, !mcsema_real_eip !136
  %1378 = call i8 @llvm.ctpop.i8(i8 %1377), !mcsema_real_eip !136
  %1379 = trunc i8 %1378 to i1, !mcsema_real_eip !136
  %1380 = zext i1 %1379 to i8, !mcsema_real_eip !136
  %1381 = xor i8 %1380, 1, !mcsema_real_eip !136
  %1382 = trunc i8 %1381 to i1, !mcsema_real_eip !136
  %1383 = zext i1 %1382 to i8, !mcsema_real_eip !136
  store volatile i8 %1383, i8* %PF_write, !mcsema_real_eip !136
  %1384 = icmp ult i32 %1354, %1353, !mcsema_real_eip !136
  %1385 = zext i1 %1384 to i8, !mcsema_real_eip !136
  store volatile i8 %1385, i8* %CF_write, !mcsema_real_eip !136
  %1386 = zext i32 %1354 to i64, !mcsema_real_eip !136
  store volatile i64 %1386, i64* %EAX_write, !mcsema_real_eip !136
  store volatile i64 551, i64* %EIP_write, !mcsema_real_eip !137
  %1387 = load i64, i64* %RBP_read, !mcsema_real_eip !137
  %1388 = add i64 %1387, -8, !mcsema_real_eip !137
  %1389 = inttoptr i64 %1388 to i64*, !mcsema_real_eip !137
  %1390 = load i32, i32* %EAX_read, !mcsema_real_eip !137
  %1391 = ptrtoint i64* %1389 to i64, !mcsema_real_eip !137
  %1392 = inttoptr i64 %1391 to i32*, !mcsema_real_eip !137
  store i32 %1390, i32* %1392, !mcsema_real_eip !137
  store volatile i64 554, i64* %EIP_write, !mcsema_real_eip !138
  br label %block_2c8, !mcsema_real_eip !138

block_22f:                                        ; preds = %block_d9
  store volatile i64 559, i64* %EIP_write, !mcsema_real_eip !139
  %1393 = load i64, i64* %RBP_read, !mcsema_real_eip !139
  %1394 = add i64 %1393, -8, !mcsema_real_eip !139
  %1395 = inttoptr i64 %1394 to i64*, !mcsema_real_eip !139
  %1396 = ptrtoint i64* %1395 to i64, !mcsema_real_eip !139
  %1397 = inttoptr i64 %1396 to i32*, !mcsema_real_eip !139
  %1398 = load i32, i32* %1397, !mcsema_real_eip !139
  %1399 = zext i32 %1398 to i64, !mcsema_real_eip !139
  store volatile i64 %1399, i64* %EAX_write, !mcsema_real_eip !139
  store volatile i64 562, i64* %EIP_write, !mcsema_real_eip !140
  %1400 = load i32, i32* %EAX_read, !mcsema_real_eip !140
  %1401 = add i32 74634, %1400, !mcsema_real_eip !140
  %1402 = xor i32 %1401, %1400, !mcsema_real_eip !140
  %1403 = xor i32 %1402, 74634, !mcsema_real_eip !140
  %1404 = and i32 %1403, 16, !mcsema_real_eip !140
  %1405 = icmp ne i32 %1404, 0, !mcsema_real_eip !140
  %1406 = zext i1 %1405 to i8, !mcsema_real_eip !140
  store volatile i8 %1406, i8* %AF_write, !mcsema_real_eip !140
  %1407 = lshr i32 %1401, 31, !mcsema_real_eip !140
  %1408 = trunc i32 %1407 to i1, !mcsema_real_eip !140
  %1409 = zext i1 %1408 to i8, !mcsema_real_eip !140
  %1410 = trunc i8 %1409 to i1, !mcsema_real_eip !140
  %1411 = zext i1 %1410 to i8, !mcsema_real_eip !140
  store volatile i8 %1411, i8* %SF_write, !mcsema_real_eip !140
  %1412 = icmp eq i32 %1401, 0, !mcsema_real_eip !140
  %1413 = zext i1 %1412 to i8, !mcsema_real_eip !140
  store volatile i8 %1413, i8* %ZF_write, !mcsema_real_eip !140
  %1414 = xor i32 %1400, 74634, !mcsema_real_eip !140
  %1415 = xor i32 %1414, -1, !mcsema_real_eip !140
  %1416 = xor i32 %1400, %1401, !mcsema_real_eip !140
  %1417 = and i32 %1415, %1416, !mcsema_real_eip !140
  %1418 = lshr i32 %1417, 31, !mcsema_real_eip !140
  %1419 = and i32 %1418, 1, !mcsema_real_eip !140
  %1420 = trunc i32 %1419 to i1, !mcsema_real_eip !140
  %1421 = zext i1 %1420 to i8, !mcsema_real_eip !140
  %1422 = trunc i8 %1421 to i1, !mcsema_real_eip !140
  %1423 = zext i1 %1422 to i8, !mcsema_real_eip !140
  store volatile i8 %1423, i8* %OF_write, !mcsema_real_eip !140
  %1424 = trunc i32 %1401 to i8, !mcsema_real_eip !140
  %1425 = call i8 @llvm.ctpop.i8(i8 %1424), !mcsema_real_eip !140
  %1426 = trunc i8 %1425 to i1, !mcsema_real_eip !140
  %1427 = zext i1 %1426 to i8, !mcsema_real_eip !140
  %1428 = xor i8 %1427, 1, !mcsema_real_eip !140
  %1429 = trunc i8 %1428 to i1, !mcsema_real_eip !140
  %1430 = zext i1 %1429 to i8, !mcsema_real_eip !140
  store volatile i8 %1430, i8* %PF_write, !mcsema_real_eip !140
  %1431 = icmp ult i32 %1401, %1400, !mcsema_real_eip !140
  %1432 = zext i1 %1431 to i8, !mcsema_real_eip !140
  store volatile i8 %1432, i8* %CF_write, !mcsema_real_eip !140
  %1433 = zext i32 %1401 to i64, !mcsema_real_eip !140
  store volatile i64 %1433, i64* %EAX_write, !mcsema_real_eip !140
  store volatile i64 567, i64* %EIP_write, !mcsema_real_eip !141
  %1434 = load i64, i64* %RBP_read, !mcsema_real_eip !141
  %1435 = add i64 %1434, -8, !mcsema_real_eip !141
  %1436 = inttoptr i64 %1435 to i64*, !mcsema_real_eip !141
  %1437 = load i32, i32* %EAX_read, !mcsema_real_eip !141
  %1438 = ptrtoint i64* %1436 to i64, !mcsema_real_eip !141
  %1439 = inttoptr i64 %1438 to i32*, !mcsema_real_eip !141
  store i32 %1437, i32* %1439, !mcsema_real_eip !141
  store volatile i64 570, i64* %EIP_write, !mcsema_real_eip !142
  br label %block_2c8, !mcsema_real_eip !142

block_23f:                                        ; preds = %block_ef
  store volatile i64 575, i64* %EIP_write, !mcsema_real_eip !143
  %1440 = load i64, i64* %RBP_read, !mcsema_real_eip !143
  %1441 = add i64 %1440, -8, !mcsema_real_eip !143
  %1442 = inttoptr i64 %1441 to i64*, !mcsema_real_eip !143
  %1443 = ptrtoint i64* %1442 to i64, !mcsema_real_eip !143
  %1444 = inttoptr i64 %1443 to i32*, !mcsema_real_eip !143
  %1445 = load i32, i32* %1444, !mcsema_real_eip !143
  %1446 = zext i32 %1445 to i64, !mcsema_real_eip !143
  store volatile i64 %1446, i64* %EAX_write, !mcsema_real_eip !143
  store volatile i64 578, i64* %EIP_write, !mcsema_real_eip !144
  %1447 = load i32, i32* %EAX_read, !mcsema_real_eip !144
  %1448 = add i32 74635, %1447, !mcsema_real_eip !144
  %1449 = xor i32 %1448, %1447, !mcsema_real_eip !144
  %1450 = xor i32 %1449, 74635, !mcsema_real_eip !144
  %1451 = and i32 %1450, 16, !mcsema_real_eip !144
  %1452 = icmp ne i32 %1451, 0, !mcsema_real_eip !144
  %1453 = zext i1 %1452 to i8, !mcsema_real_eip !144
  store volatile i8 %1453, i8* %AF_write, !mcsema_real_eip !144
  %1454 = lshr i32 %1448, 31, !mcsema_real_eip !144
  %1455 = trunc i32 %1454 to i1, !mcsema_real_eip !144
  %1456 = zext i1 %1455 to i8, !mcsema_real_eip !144
  %1457 = trunc i8 %1456 to i1, !mcsema_real_eip !144
  %1458 = zext i1 %1457 to i8, !mcsema_real_eip !144
  store volatile i8 %1458, i8* %SF_write, !mcsema_real_eip !144
  %1459 = icmp eq i32 %1448, 0, !mcsema_real_eip !144
  %1460 = zext i1 %1459 to i8, !mcsema_real_eip !144
  store volatile i8 %1460, i8* %ZF_write, !mcsema_real_eip !144
  %1461 = xor i32 %1447, 74635, !mcsema_real_eip !144
  %1462 = xor i32 %1461, -1, !mcsema_real_eip !144
  %1463 = xor i32 %1447, %1448, !mcsema_real_eip !144
  %1464 = and i32 %1462, %1463, !mcsema_real_eip !144
  %1465 = lshr i32 %1464, 31, !mcsema_real_eip !144
  %1466 = and i32 %1465, 1, !mcsema_real_eip !144
  %1467 = trunc i32 %1466 to i1, !mcsema_real_eip !144
  %1468 = zext i1 %1467 to i8, !mcsema_real_eip !144
  %1469 = trunc i8 %1468 to i1, !mcsema_real_eip !144
  %1470 = zext i1 %1469 to i8, !mcsema_real_eip !144
  store volatile i8 %1470, i8* %OF_write, !mcsema_real_eip !144
  %1471 = trunc i32 %1448 to i8, !mcsema_real_eip !144
  %1472 = call i8 @llvm.ctpop.i8(i8 %1471), !mcsema_real_eip !144
  %1473 = trunc i8 %1472 to i1, !mcsema_real_eip !144
  %1474 = zext i1 %1473 to i8, !mcsema_real_eip !144
  %1475 = xor i8 %1474, 1, !mcsema_real_eip !144
  %1476 = trunc i8 %1475 to i1, !mcsema_real_eip !144
  %1477 = zext i1 %1476 to i8, !mcsema_real_eip !144
  store volatile i8 %1477, i8* %PF_write, !mcsema_real_eip !144
  %1478 = icmp ult i32 %1448, %1447, !mcsema_real_eip !144
  %1479 = zext i1 %1478 to i8, !mcsema_real_eip !144
  store volatile i8 %1479, i8* %CF_write, !mcsema_real_eip !144
  %1480 = zext i32 %1448 to i64, !mcsema_real_eip !144
  store volatile i64 %1480, i64* %EAX_write, !mcsema_real_eip !144
  store volatile i64 583, i64* %EIP_write, !mcsema_real_eip !145
  %1481 = load i64, i64* %RBP_read, !mcsema_real_eip !145
  %1482 = add i64 %1481, -8, !mcsema_real_eip !145
  %1483 = inttoptr i64 %1482 to i64*, !mcsema_real_eip !145
  %1484 = load i32, i32* %EAX_read, !mcsema_real_eip !145
  %1485 = ptrtoint i64* %1483 to i64, !mcsema_real_eip !145
  %1486 = inttoptr i64 %1485 to i32*, !mcsema_real_eip !145
  store i32 %1484, i32* %1486, !mcsema_real_eip !145
  store volatile i64 586, i64* %EIP_write, !mcsema_real_eip !146
  br label %block_2c8, !mcsema_real_eip !146

block_24f:                                        ; preds = %block_105
  store volatile i64 591, i64* %EIP_write, !mcsema_real_eip !147
  %1487 = load i64, i64* %RBP_read, !mcsema_real_eip !147
  %1488 = add i64 %1487, -8, !mcsema_real_eip !147
  %1489 = inttoptr i64 %1488 to i64*, !mcsema_real_eip !147
  %1490 = ptrtoint i64* %1489 to i64, !mcsema_real_eip !147
  %1491 = inttoptr i64 %1490 to i32*, !mcsema_real_eip !147
  %1492 = load i32, i32* %1491, !mcsema_real_eip !147
  %1493 = zext i32 %1492 to i64, !mcsema_real_eip !147
  store volatile i64 %1493, i64* %EAX_write, !mcsema_real_eip !147
  store volatile i64 594, i64* %EIP_write, !mcsema_real_eip !148
  %1494 = load i32, i32* %EAX_read, !mcsema_real_eip !148
  %1495 = add i32 74636, %1494, !mcsema_real_eip !148
  %1496 = xor i32 %1495, %1494, !mcsema_real_eip !148
  %1497 = xor i32 %1496, 74636, !mcsema_real_eip !148
  %1498 = and i32 %1497, 16, !mcsema_real_eip !148
  %1499 = icmp ne i32 %1498, 0, !mcsema_real_eip !148
  %1500 = zext i1 %1499 to i8, !mcsema_real_eip !148
  store volatile i8 %1500, i8* %AF_write, !mcsema_real_eip !148
  %1501 = lshr i32 %1495, 31, !mcsema_real_eip !148
  %1502 = trunc i32 %1501 to i1, !mcsema_real_eip !148
  %1503 = zext i1 %1502 to i8, !mcsema_real_eip !148
  %1504 = trunc i8 %1503 to i1, !mcsema_real_eip !148
  %1505 = zext i1 %1504 to i8, !mcsema_real_eip !148
  store volatile i8 %1505, i8* %SF_write, !mcsema_real_eip !148
  %1506 = icmp eq i32 %1495, 0, !mcsema_real_eip !148
  %1507 = zext i1 %1506 to i8, !mcsema_real_eip !148
  store volatile i8 %1507, i8* %ZF_write, !mcsema_real_eip !148
  %1508 = xor i32 %1494, 74636, !mcsema_real_eip !148
  %1509 = xor i32 %1508, -1, !mcsema_real_eip !148
  %1510 = xor i32 %1494, %1495, !mcsema_real_eip !148
  %1511 = and i32 %1509, %1510, !mcsema_real_eip !148
  %1512 = lshr i32 %1511, 31, !mcsema_real_eip !148
  %1513 = and i32 %1512, 1, !mcsema_real_eip !148
  %1514 = trunc i32 %1513 to i1, !mcsema_real_eip !148
  %1515 = zext i1 %1514 to i8, !mcsema_real_eip !148
  %1516 = trunc i8 %1515 to i1, !mcsema_real_eip !148
  %1517 = zext i1 %1516 to i8, !mcsema_real_eip !148
  store volatile i8 %1517, i8* %OF_write, !mcsema_real_eip !148
  %1518 = trunc i32 %1495 to i8, !mcsema_real_eip !148
  %1519 = call i8 @llvm.ctpop.i8(i8 %1518), !mcsema_real_eip !148
  %1520 = trunc i8 %1519 to i1, !mcsema_real_eip !148
  %1521 = zext i1 %1520 to i8, !mcsema_real_eip !148
  %1522 = xor i8 %1521, 1, !mcsema_real_eip !148
  %1523 = trunc i8 %1522 to i1, !mcsema_real_eip !148
  %1524 = zext i1 %1523 to i8, !mcsema_real_eip !148
  store volatile i8 %1524, i8* %PF_write, !mcsema_real_eip !148
  %1525 = icmp ult i32 %1495, %1494, !mcsema_real_eip !148
  %1526 = zext i1 %1525 to i8, !mcsema_real_eip !148
  store volatile i8 %1526, i8* %CF_write, !mcsema_real_eip !148
  %1527 = zext i32 %1495 to i64, !mcsema_real_eip !148
  store volatile i64 %1527, i64* %EAX_write, !mcsema_real_eip !148
  store volatile i64 599, i64* %EIP_write, !mcsema_real_eip !149
  %1528 = load i64, i64* %RBP_read, !mcsema_real_eip !149
  %1529 = add i64 %1528, -8, !mcsema_real_eip !149
  %1530 = inttoptr i64 %1529 to i64*, !mcsema_real_eip !149
  %1531 = load i32, i32* %EAX_read, !mcsema_real_eip !149
  %1532 = ptrtoint i64* %1530 to i64, !mcsema_real_eip !149
  %1533 = inttoptr i64 %1532 to i32*, !mcsema_real_eip !149
  store i32 %1531, i32* %1533, !mcsema_real_eip !149
  store volatile i64 602, i64* %EIP_write, !mcsema_real_eip !150
  br label %block_2c8, !mcsema_real_eip !150

block_25f:                                        ; preds = %block_11b
  store volatile i64 607, i64* %EIP_write, !mcsema_real_eip !151
  %1534 = load i64, i64* %RBP_read, !mcsema_real_eip !151
  %1535 = add i64 %1534, -8, !mcsema_real_eip !151
  %1536 = inttoptr i64 %1535 to i64*, !mcsema_real_eip !151
  %1537 = ptrtoint i64* %1536 to i64, !mcsema_real_eip !151
  %1538 = inttoptr i64 %1537 to i32*, !mcsema_real_eip !151
  %1539 = load i32, i32* %1538, !mcsema_real_eip !151
  %1540 = zext i32 %1539 to i64, !mcsema_real_eip !151
  store volatile i64 %1540, i64* %EAX_write, !mcsema_real_eip !151
  store volatile i64 610, i64* %EIP_write, !mcsema_real_eip !152
  %1541 = load i32, i32* %EAX_read, !mcsema_real_eip !152
  %1542 = add i32 74637, %1541, !mcsema_real_eip !152
  %1543 = xor i32 %1542, %1541, !mcsema_real_eip !152
  %1544 = xor i32 %1543, 74637, !mcsema_real_eip !152
  %1545 = and i32 %1544, 16, !mcsema_real_eip !152
  %1546 = icmp ne i32 %1545, 0, !mcsema_real_eip !152
  %1547 = zext i1 %1546 to i8, !mcsema_real_eip !152
  store volatile i8 %1547, i8* %AF_write, !mcsema_real_eip !152
  %1548 = lshr i32 %1542, 31, !mcsema_real_eip !152
  %1549 = trunc i32 %1548 to i1, !mcsema_real_eip !152
  %1550 = zext i1 %1549 to i8, !mcsema_real_eip !152
  %1551 = trunc i8 %1550 to i1, !mcsema_real_eip !152
  %1552 = zext i1 %1551 to i8, !mcsema_real_eip !152
  store volatile i8 %1552, i8* %SF_write, !mcsema_real_eip !152
  %1553 = icmp eq i32 %1542, 0, !mcsema_real_eip !152
  %1554 = zext i1 %1553 to i8, !mcsema_real_eip !152
  store volatile i8 %1554, i8* %ZF_write, !mcsema_real_eip !152
  %1555 = xor i32 %1541, 74637, !mcsema_real_eip !152
  %1556 = xor i32 %1555, -1, !mcsema_real_eip !152
  %1557 = xor i32 %1541, %1542, !mcsema_real_eip !152
  %1558 = and i32 %1556, %1557, !mcsema_real_eip !152
  %1559 = lshr i32 %1558, 31, !mcsema_real_eip !152
  %1560 = and i32 %1559, 1, !mcsema_real_eip !152
  %1561 = trunc i32 %1560 to i1, !mcsema_real_eip !152
  %1562 = zext i1 %1561 to i8, !mcsema_real_eip !152
  %1563 = trunc i8 %1562 to i1, !mcsema_real_eip !152
  %1564 = zext i1 %1563 to i8, !mcsema_real_eip !152
  store volatile i8 %1564, i8* %OF_write, !mcsema_real_eip !152
  %1565 = trunc i32 %1542 to i8, !mcsema_real_eip !152
  %1566 = call i8 @llvm.ctpop.i8(i8 %1565), !mcsema_real_eip !152
  %1567 = trunc i8 %1566 to i1, !mcsema_real_eip !152
  %1568 = zext i1 %1567 to i8, !mcsema_real_eip !152
  %1569 = xor i8 %1568, 1, !mcsema_real_eip !152
  %1570 = trunc i8 %1569 to i1, !mcsema_real_eip !152
  %1571 = zext i1 %1570 to i8, !mcsema_real_eip !152
  store volatile i8 %1571, i8* %PF_write, !mcsema_real_eip !152
  %1572 = icmp ult i32 %1542, %1541, !mcsema_real_eip !152
  %1573 = zext i1 %1572 to i8, !mcsema_real_eip !152
  store volatile i8 %1573, i8* %CF_write, !mcsema_real_eip !152
  %1574 = zext i32 %1542 to i64, !mcsema_real_eip !152
  store volatile i64 %1574, i64* %EAX_write, !mcsema_real_eip !152
  store volatile i64 615, i64* %EIP_write, !mcsema_real_eip !153
  %1575 = load i64, i64* %RBP_read, !mcsema_real_eip !153
  %1576 = add i64 %1575, -8, !mcsema_real_eip !153
  %1577 = inttoptr i64 %1576 to i64*, !mcsema_real_eip !153
  %1578 = load i32, i32* %EAX_read, !mcsema_real_eip !153
  %1579 = ptrtoint i64* %1577 to i64, !mcsema_real_eip !153
  %1580 = inttoptr i64 %1579 to i32*, !mcsema_real_eip !153
  store i32 %1578, i32* %1580, !mcsema_real_eip !153
  store volatile i64 618, i64* %EIP_write, !mcsema_real_eip !154
  br label %block_2c8, !mcsema_real_eip !154

block_26f:                                        ; preds = %block_131
  store volatile i64 623, i64* %EIP_write, !mcsema_real_eip !155
  %1581 = load i64, i64* %RBP_read, !mcsema_real_eip !155
  %1582 = add i64 %1581, -8, !mcsema_real_eip !155
  %1583 = inttoptr i64 %1582 to i64*, !mcsema_real_eip !155
  %1584 = ptrtoint i64* %1583 to i64, !mcsema_real_eip !155
  %1585 = inttoptr i64 %1584 to i32*, !mcsema_real_eip !155
  %1586 = load i32, i32* %1585, !mcsema_real_eip !155
  %1587 = zext i32 %1586 to i64, !mcsema_real_eip !155
  store volatile i64 %1587, i64* %EAX_write, !mcsema_real_eip !155
  store volatile i64 626, i64* %EIP_write, !mcsema_real_eip !156
  %1588 = load i32, i32* %EAX_read, !mcsema_real_eip !156
  %1589 = add i32 74639, %1588, !mcsema_real_eip !156
  %1590 = xor i32 %1589, %1588, !mcsema_real_eip !156
  %1591 = xor i32 %1590, 74639, !mcsema_real_eip !156
  %1592 = and i32 %1591, 16, !mcsema_real_eip !156
  %1593 = icmp ne i32 %1592, 0, !mcsema_real_eip !156
  %1594 = zext i1 %1593 to i8, !mcsema_real_eip !156
  store volatile i8 %1594, i8* %AF_write, !mcsema_real_eip !156
  %1595 = lshr i32 %1589, 31, !mcsema_real_eip !156
  %1596 = trunc i32 %1595 to i1, !mcsema_real_eip !156
  %1597 = zext i1 %1596 to i8, !mcsema_real_eip !156
  %1598 = trunc i8 %1597 to i1, !mcsema_real_eip !156
  %1599 = zext i1 %1598 to i8, !mcsema_real_eip !156
  store volatile i8 %1599, i8* %SF_write, !mcsema_real_eip !156
  %1600 = icmp eq i32 %1589, 0, !mcsema_real_eip !156
  %1601 = zext i1 %1600 to i8, !mcsema_real_eip !156
  store volatile i8 %1601, i8* %ZF_write, !mcsema_real_eip !156
  %1602 = xor i32 %1588, 74639, !mcsema_real_eip !156
  %1603 = xor i32 %1602, -1, !mcsema_real_eip !156
  %1604 = xor i32 %1588, %1589, !mcsema_real_eip !156
  %1605 = and i32 %1603, %1604, !mcsema_real_eip !156
  %1606 = lshr i32 %1605, 31, !mcsema_real_eip !156
  %1607 = and i32 %1606, 1, !mcsema_real_eip !156
  %1608 = trunc i32 %1607 to i1, !mcsema_real_eip !156
  %1609 = zext i1 %1608 to i8, !mcsema_real_eip !156
  %1610 = trunc i8 %1609 to i1, !mcsema_real_eip !156
  %1611 = zext i1 %1610 to i8, !mcsema_real_eip !156
  store volatile i8 %1611, i8* %OF_write, !mcsema_real_eip !156
  %1612 = trunc i32 %1589 to i8, !mcsema_real_eip !156
  %1613 = call i8 @llvm.ctpop.i8(i8 %1612), !mcsema_real_eip !156
  %1614 = trunc i8 %1613 to i1, !mcsema_real_eip !156
  %1615 = zext i1 %1614 to i8, !mcsema_real_eip !156
  %1616 = xor i8 %1615, 1, !mcsema_real_eip !156
  %1617 = trunc i8 %1616 to i1, !mcsema_real_eip !156
  %1618 = zext i1 %1617 to i8, !mcsema_real_eip !156
  store volatile i8 %1618, i8* %PF_write, !mcsema_real_eip !156
  %1619 = icmp ult i32 %1589, %1588, !mcsema_real_eip !156
  %1620 = zext i1 %1619 to i8, !mcsema_real_eip !156
  store volatile i8 %1620, i8* %CF_write, !mcsema_real_eip !156
  %1621 = zext i32 %1589 to i64, !mcsema_real_eip !156
  store volatile i64 %1621, i64* %EAX_write, !mcsema_real_eip !156
  store volatile i64 631, i64* %EIP_write, !mcsema_real_eip !157
  %1622 = load i64, i64* %RBP_read, !mcsema_real_eip !157
  %1623 = add i64 %1622, -8, !mcsema_real_eip !157
  %1624 = inttoptr i64 %1623 to i64*, !mcsema_real_eip !157
  %1625 = load i32, i32* %EAX_read, !mcsema_real_eip !157
  %1626 = ptrtoint i64* %1624 to i64, !mcsema_real_eip !157
  %1627 = inttoptr i64 %1626 to i32*, !mcsema_real_eip !157
  store i32 %1625, i32* %1627, !mcsema_real_eip !157
  store volatile i64 634, i64* %EIP_write, !mcsema_real_eip !158
  br label %block_2c8, !mcsema_real_eip !158

block_27f:                                        ; preds = %block_147
  store volatile i64 639, i64* %EIP_write, !mcsema_real_eip !159
  %1628 = load i64, i64* %RBP_read, !mcsema_real_eip !159
  %1629 = add i64 %1628, -8, !mcsema_real_eip !159
  %1630 = inttoptr i64 %1629 to i64*, !mcsema_real_eip !159
  %1631 = ptrtoint i64* %1630 to i64, !mcsema_real_eip !159
  %1632 = inttoptr i64 %1631 to i32*, !mcsema_real_eip !159
  %1633 = load i32, i32* %1632, !mcsema_real_eip !159
  %1634 = zext i32 %1633 to i64, !mcsema_real_eip !159
  store volatile i64 %1634, i64* %EAX_write, !mcsema_real_eip !159
  store volatile i64 642, i64* %EIP_write, !mcsema_real_eip !160
  %1635 = load i32, i32* %EAX_read, !mcsema_real_eip !160
  %1636 = add i32 74640, %1635, !mcsema_real_eip !160
  %1637 = xor i32 %1636, %1635, !mcsema_real_eip !160
  %1638 = xor i32 %1637, 74640, !mcsema_real_eip !160
  %1639 = and i32 %1638, 16, !mcsema_real_eip !160
  %1640 = icmp ne i32 %1639, 0, !mcsema_real_eip !160
  %1641 = zext i1 %1640 to i8, !mcsema_real_eip !160
  store volatile i8 %1641, i8* %AF_write, !mcsema_real_eip !160
  %1642 = lshr i32 %1636, 31, !mcsema_real_eip !160
  %1643 = trunc i32 %1642 to i1, !mcsema_real_eip !160
  %1644 = zext i1 %1643 to i8, !mcsema_real_eip !160
  %1645 = trunc i8 %1644 to i1, !mcsema_real_eip !160
  %1646 = zext i1 %1645 to i8, !mcsema_real_eip !160
  store volatile i8 %1646, i8* %SF_write, !mcsema_real_eip !160
  %1647 = icmp eq i32 %1636, 0, !mcsema_real_eip !160
  %1648 = zext i1 %1647 to i8, !mcsema_real_eip !160
  store volatile i8 %1648, i8* %ZF_write, !mcsema_real_eip !160
  %1649 = xor i32 %1635, 74640, !mcsema_real_eip !160
  %1650 = xor i32 %1649, -1, !mcsema_real_eip !160
  %1651 = xor i32 %1635, %1636, !mcsema_real_eip !160
  %1652 = and i32 %1650, %1651, !mcsema_real_eip !160
  %1653 = lshr i32 %1652, 31, !mcsema_real_eip !160
  %1654 = and i32 %1653, 1, !mcsema_real_eip !160
  %1655 = trunc i32 %1654 to i1, !mcsema_real_eip !160
  %1656 = zext i1 %1655 to i8, !mcsema_real_eip !160
  %1657 = trunc i8 %1656 to i1, !mcsema_real_eip !160
  %1658 = zext i1 %1657 to i8, !mcsema_real_eip !160
  store volatile i8 %1658, i8* %OF_write, !mcsema_real_eip !160
  %1659 = trunc i32 %1636 to i8, !mcsema_real_eip !160
  %1660 = call i8 @llvm.ctpop.i8(i8 %1659), !mcsema_real_eip !160
  %1661 = trunc i8 %1660 to i1, !mcsema_real_eip !160
  %1662 = zext i1 %1661 to i8, !mcsema_real_eip !160
  %1663 = xor i8 %1662, 1, !mcsema_real_eip !160
  %1664 = trunc i8 %1663 to i1, !mcsema_real_eip !160
  %1665 = zext i1 %1664 to i8, !mcsema_real_eip !160
  store volatile i8 %1665, i8* %PF_write, !mcsema_real_eip !160
  %1666 = icmp ult i32 %1636, %1635, !mcsema_real_eip !160
  %1667 = zext i1 %1666 to i8, !mcsema_real_eip !160
  store volatile i8 %1667, i8* %CF_write, !mcsema_real_eip !160
  %1668 = zext i32 %1636 to i64, !mcsema_real_eip !160
  store volatile i64 %1668, i64* %EAX_write, !mcsema_real_eip !160
  store volatile i64 647, i64* %EIP_write, !mcsema_real_eip !161
  %1669 = load i64, i64* %RBP_read, !mcsema_real_eip !161
  %1670 = add i64 %1669, -8, !mcsema_real_eip !161
  %1671 = inttoptr i64 %1670 to i64*, !mcsema_real_eip !161
  %1672 = load i32, i32* %EAX_read, !mcsema_real_eip !161
  %1673 = ptrtoint i64* %1671 to i64, !mcsema_real_eip !161
  %1674 = inttoptr i64 %1673 to i32*, !mcsema_real_eip !161
  store i32 %1672, i32* %1674, !mcsema_real_eip !161
  store volatile i64 650, i64* %EIP_write, !mcsema_real_eip !162
  br label %block_2c8, !mcsema_real_eip !162

block_28f:                                        ; preds = %block_15d
  store volatile i64 655, i64* %EIP_write, !mcsema_real_eip !163
  %1675 = load i64, i64* %RBP_read, !mcsema_real_eip !163
  %1676 = add i64 %1675, -8, !mcsema_real_eip !163
  %1677 = inttoptr i64 %1676 to i64*, !mcsema_real_eip !163
  %1678 = ptrtoint i64* %1677 to i64, !mcsema_real_eip !163
  %1679 = inttoptr i64 %1678 to i32*, !mcsema_real_eip !163
  %1680 = load i32, i32* %1679, !mcsema_real_eip !163
  %1681 = zext i32 %1680 to i64, !mcsema_real_eip !163
  store volatile i64 %1681, i64* %EAX_write, !mcsema_real_eip !163
  store volatile i64 658, i64* %EIP_write, !mcsema_real_eip !164
  %1682 = load i32, i32* %EAX_read, !mcsema_real_eip !164
  %1683 = add i32 74641, %1682, !mcsema_real_eip !164
  %1684 = xor i32 %1683, %1682, !mcsema_real_eip !164
  %1685 = xor i32 %1684, 74641, !mcsema_real_eip !164
  %1686 = and i32 %1685, 16, !mcsema_real_eip !164
  %1687 = icmp ne i32 %1686, 0, !mcsema_real_eip !164
  %1688 = zext i1 %1687 to i8, !mcsema_real_eip !164
  store volatile i8 %1688, i8* %AF_write, !mcsema_real_eip !164
  %1689 = lshr i32 %1683, 31, !mcsema_real_eip !164
  %1690 = trunc i32 %1689 to i1, !mcsema_real_eip !164
  %1691 = zext i1 %1690 to i8, !mcsema_real_eip !164
  %1692 = trunc i8 %1691 to i1, !mcsema_real_eip !164
  %1693 = zext i1 %1692 to i8, !mcsema_real_eip !164
  store volatile i8 %1693, i8* %SF_write, !mcsema_real_eip !164
  %1694 = icmp eq i32 %1683, 0, !mcsema_real_eip !164
  %1695 = zext i1 %1694 to i8, !mcsema_real_eip !164
  store volatile i8 %1695, i8* %ZF_write, !mcsema_real_eip !164
  %1696 = xor i32 %1682, 74641, !mcsema_real_eip !164
  %1697 = xor i32 %1696, -1, !mcsema_real_eip !164
  %1698 = xor i32 %1682, %1683, !mcsema_real_eip !164
  %1699 = and i32 %1697, %1698, !mcsema_real_eip !164
  %1700 = lshr i32 %1699, 31, !mcsema_real_eip !164
  %1701 = and i32 %1700, 1, !mcsema_real_eip !164
  %1702 = trunc i32 %1701 to i1, !mcsema_real_eip !164
  %1703 = zext i1 %1702 to i8, !mcsema_real_eip !164
  %1704 = trunc i8 %1703 to i1, !mcsema_real_eip !164
  %1705 = zext i1 %1704 to i8, !mcsema_real_eip !164
  store volatile i8 %1705, i8* %OF_write, !mcsema_real_eip !164
  %1706 = trunc i32 %1683 to i8, !mcsema_real_eip !164
  %1707 = call i8 @llvm.ctpop.i8(i8 %1706), !mcsema_real_eip !164
  %1708 = trunc i8 %1707 to i1, !mcsema_real_eip !164
  %1709 = zext i1 %1708 to i8, !mcsema_real_eip !164
  %1710 = xor i8 %1709, 1, !mcsema_real_eip !164
  %1711 = trunc i8 %1710 to i1, !mcsema_real_eip !164
  %1712 = zext i1 %1711 to i8, !mcsema_real_eip !164
  store volatile i8 %1712, i8* %PF_write, !mcsema_real_eip !164
  %1713 = icmp ult i32 %1683, %1682, !mcsema_real_eip !164
  %1714 = zext i1 %1713 to i8, !mcsema_real_eip !164
  store volatile i8 %1714, i8* %CF_write, !mcsema_real_eip !164
  %1715 = zext i32 %1683 to i64, !mcsema_real_eip !164
  store volatile i64 %1715, i64* %EAX_write, !mcsema_real_eip !164
  store volatile i64 663, i64* %EIP_write, !mcsema_real_eip !165
  %1716 = load i64, i64* %RBP_read, !mcsema_real_eip !165
  %1717 = add i64 %1716, -8, !mcsema_real_eip !165
  %1718 = inttoptr i64 %1717 to i64*, !mcsema_real_eip !165
  %1719 = load i32, i32* %EAX_read, !mcsema_real_eip !165
  %1720 = ptrtoint i64* %1718 to i64, !mcsema_real_eip !165
  %1721 = inttoptr i64 %1720 to i32*, !mcsema_real_eip !165
  store i32 %1719, i32* %1721, !mcsema_real_eip !165
  store volatile i64 666, i64* %EIP_write, !mcsema_real_eip !166
  br label %block_2c8, !mcsema_real_eip !166

block_29f:                                        ; preds = %block_173
  store volatile i64 671, i64* %EIP_write, !mcsema_real_eip !167
  %1722 = load i64, i64* %RBP_read, !mcsema_real_eip !167
  %1723 = add i64 %1722, -8, !mcsema_real_eip !167
  %1724 = inttoptr i64 %1723 to i64*, !mcsema_real_eip !167
  %1725 = ptrtoint i64* %1724 to i64, !mcsema_real_eip !167
  %1726 = inttoptr i64 %1725 to i32*, !mcsema_real_eip !167
  %1727 = load i32, i32* %1726, !mcsema_real_eip !167
  %1728 = zext i32 %1727 to i64, !mcsema_real_eip !167
  store volatile i64 %1728, i64* %EAX_write, !mcsema_real_eip !167
  store volatile i64 674, i64* %EIP_write, !mcsema_real_eip !168
  %1729 = load i32, i32* %EAX_read, !mcsema_real_eip !168
  %1730 = add i32 74642, %1729, !mcsema_real_eip !168
  %1731 = xor i32 %1730, %1729, !mcsema_real_eip !168
  %1732 = xor i32 %1731, 74642, !mcsema_real_eip !168
  %1733 = and i32 %1732, 16, !mcsema_real_eip !168
  %1734 = icmp ne i32 %1733, 0, !mcsema_real_eip !168
  %1735 = zext i1 %1734 to i8, !mcsema_real_eip !168
  store volatile i8 %1735, i8* %AF_write, !mcsema_real_eip !168
  %1736 = lshr i32 %1730, 31, !mcsema_real_eip !168
  %1737 = trunc i32 %1736 to i1, !mcsema_real_eip !168
  %1738 = zext i1 %1737 to i8, !mcsema_real_eip !168
  %1739 = trunc i8 %1738 to i1, !mcsema_real_eip !168
  %1740 = zext i1 %1739 to i8, !mcsema_real_eip !168
  store volatile i8 %1740, i8* %SF_write, !mcsema_real_eip !168
  %1741 = icmp eq i32 %1730, 0, !mcsema_real_eip !168
  %1742 = zext i1 %1741 to i8, !mcsema_real_eip !168
  store volatile i8 %1742, i8* %ZF_write, !mcsema_real_eip !168
  %1743 = xor i32 %1729, 74642, !mcsema_real_eip !168
  %1744 = xor i32 %1743, -1, !mcsema_real_eip !168
  %1745 = xor i32 %1729, %1730, !mcsema_real_eip !168
  %1746 = and i32 %1744, %1745, !mcsema_real_eip !168
  %1747 = lshr i32 %1746, 31, !mcsema_real_eip !168
  %1748 = and i32 %1747, 1, !mcsema_real_eip !168
  %1749 = trunc i32 %1748 to i1, !mcsema_real_eip !168
  %1750 = zext i1 %1749 to i8, !mcsema_real_eip !168
  %1751 = trunc i8 %1750 to i1, !mcsema_real_eip !168
  %1752 = zext i1 %1751 to i8, !mcsema_real_eip !168
  store volatile i8 %1752, i8* %OF_write, !mcsema_real_eip !168
  %1753 = trunc i32 %1730 to i8, !mcsema_real_eip !168
  %1754 = call i8 @llvm.ctpop.i8(i8 %1753), !mcsema_real_eip !168
  %1755 = trunc i8 %1754 to i1, !mcsema_real_eip !168
  %1756 = zext i1 %1755 to i8, !mcsema_real_eip !168
  %1757 = xor i8 %1756, 1, !mcsema_real_eip !168
  %1758 = trunc i8 %1757 to i1, !mcsema_real_eip !168
  %1759 = zext i1 %1758 to i8, !mcsema_real_eip !168
  store volatile i8 %1759, i8* %PF_write, !mcsema_real_eip !168
  %1760 = icmp ult i32 %1730, %1729, !mcsema_real_eip !168
  %1761 = zext i1 %1760 to i8, !mcsema_real_eip !168
  store volatile i8 %1761, i8* %CF_write, !mcsema_real_eip !168
  %1762 = zext i32 %1730 to i64, !mcsema_real_eip !168
  store volatile i64 %1762, i64* %EAX_write, !mcsema_real_eip !168
  store volatile i64 679, i64* %EIP_write, !mcsema_real_eip !169
  %1763 = load i64, i64* %RBP_read, !mcsema_real_eip !169
  %1764 = add i64 %1763, -8, !mcsema_real_eip !169
  %1765 = inttoptr i64 %1764 to i64*, !mcsema_real_eip !169
  %1766 = load i32, i32* %EAX_read, !mcsema_real_eip !169
  %1767 = ptrtoint i64* %1765 to i64, !mcsema_real_eip !169
  %1768 = inttoptr i64 %1767 to i32*, !mcsema_real_eip !169
  store i32 %1766, i32* %1768, !mcsema_real_eip !169
  store volatile i64 682, i64* %EIP_write, !mcsema_real_eip !170
  br label %block_2c8, !mcsema_real_eip !170

block_2af:                                        ; preds = %block_189
  store volatile i64 687, i64* %EIP_write, !mcsema_real_eip !171
  %1769 = load i64, i64* %RBP_read, !mcsema_real_eip !171
  %1770 = add i64 %1769, -8, !mcsema_real_eip !171
  %1771 = inttoptr i64 %1770 to i64*, !mcsema_real_eip !171
  %1772 = ptrtoint i64* %1771 to i64, !mcsema_real_eip !171
  %1773 = inttoptr i64 %1772 to i32*, !mcsema_real_eip !171
  %1774 = load i32, i32* %1773, !mcsema_real_eip !171
  %1775 = zext i32 %1774 to i64, !mcsema_real_eip !171
  store volatile i64 %1775, i64* %EAX_write, !mcsema_real_eip !171
  store volatile i64 690, i64* %EIP_write, !mcsema_real_eip !172
  %1776 = load i32, i32* %EAX_read, !mcsema_real_eip !172
  %1777 = add i32 74643, %1776, !mcsema_real_eip !172
  %1778 = xor i32 %1777, %1776, !mcsema_real_eip !172
  %1779 = xor i32 %1778, 74643, !mcsema_real_eip !172
  %1780 = and i32 %1779, 16, !mcsema_real_eip !172
  %1781 = icmp ne i32 %1780, 0, !mcsema_real_eip !172
  %1782 = zext i1 %1781 to i8, !mcsema_real_eip !172
  store volatile i8 %1782, i8* %AF_write, !mcsema_real_eip !172
  %1783 = lshr i32 %1777, 31, !mcsema_real_eip !172
  %1784 = trunc i32 %1783 to i1, !mcsema_real_eip !172
  %1785 = zext i1 %1784 to i8, !mcsema_real_eip !172
  %1786 = trunc i8 %1785 to i1, !mcsema_real_eip !172
  %1787 = zext i1 %1786 to i8, !mcsema_real_eip !172
  store volatile i8 %1787, i8* %SF_write, !mcsema_real_eip !172
  %1788 = icmp eq i32 %1777, 0, !mcsema_real_eip !172
  %1789 = zext i1 %1788 to i8, !mcsema_real_eip !172
  store volatile i8 %1789, i8* %ZF_write, !mcsema_real_eip !172
  %1790 = xor i32 %1776, 74643, !mcsema_real_eip !172
  %1791 = xor i32 %1790, -1, !mcsema_real_eip !172
  %1792 = xor i32 %1776, %1777, !mcsema_real_eip !172
  %1793 = and i32 %1791, %1792, !mcsema_real_eip !172
  %1794 = lshr i32 %1793, 31, !mcsema_real_eip !172
  %1795 = and i32 %1794, 1, !mcsema_real_eip !172
  %1796 = trunc i32 %1795 to i1, !mcsema_real_eip !172
  %1797 = zext i1 %1796 to i8, !mcsema_real_eip !172
  %1798 = trunc i8 %1797 to i1, !mcsema_real_eip !172
  %1799 = zext i1 %1798 to i8, !mcsema_real_eip !172
  store volatile i8 %1799, i8* %OF_write, !mcsema_real_eip !172
  %1800 = trunc i32 %1777 to i8, !mcsema_real_eip !172
  %1801 = call i8 @llvm.ctpop.i8(i8 %1800), !mcsema_real_eip !172
  %1802 = trunc i8 %1801 to i1, !mcsema_real_eip !172
  %1803 = zext i1 %1802 to i8, !mcsema_real_eip !172
  %1804 = xor i8 %1803, 1, !mcsema_real_eip !172
  %1805 = trunc i8 %1804 to i1, !mcsema_real_eip !172
  %1806 = zext i1 %1805 to i8, !mcsema_real_eip !172
  store volatile i8 %1806, i8* %PF_write, !mcsema_real_eip !172
  %1807 = icmp ult i32 %1777, %1776, !mcsema_real_eip !172
  %1808 = zext i1 %1807 to i8, !mcsema_real_eip !172
  store volatile i8 %1808, i8* %CF_write, !mcsema_real_eip !172
  %1809 = zext i32 %1777 to i64, !mcsema_real_eip !172
  store volatile i64 %1809, i64* %EAX_write, !mcsema_real_eip !172
  store volatile i64 695, i64* %EIP_write, !mcsema_real_eip !173
  %1810 = load i64, i64* %RBP_read, !mcsema_real_eip !173
  %1811 = add i64 %1810, -8, !mcsema_real_eip !173
  %1812 = inttoptr i64 %1811 to i64*, !mcsema_real_eip !173
  %1813 = load i32, i32* %EAX_read, !mcsema_real_eip !173
  %1814 = ptrtoint i64* %1812 to i64, !mcsema_real_eip !173
  %1815 = inttoptr i64 %1814 to i32*, !mcsema_real_eip !173
  store i32 %1813, i32* %1815, !mcsema_real_eip !173
  store volatile i64 698, i64* %EIP_write, !mcsema_real_eip !174
  br label %block_2c8, !mcsema_real_eip !174

block_2bf:                                        ; preds = %block_19a
  store volatile i64 703, i64* %EIP_write, !mcsema_real_eip !175
  %1816 = load i64, i64* %RBP_read, !mcsema_real_eip !175
  %1817 = add i64 %1816, -8, !mcsema_real_eip !175
  %1818 = inttoptr i64 %1817 to i64*, !mcsema_real_eip !175
  %1819 = ptrtoint i64* %1818 to i64, !mcsema_real_eip !175
  %1820 = inttoptr i64 %1819 to i32*, !mcsema_real_eip !175
  %1821 = load i32, i32* %1820, !mcsema_real_eip !175
  %1822 = zext i32 %1821 to i64, !mcsema_real_eip !175
  store volatile i64 %1822, i64* %EAX_write, !mcsema_real_eip !175
  store volatile i64 706, i64* %EIP_write, !mcsema_real_eip !176
  %1823 = load i32, i32* %EAX_read, !mcsema_real_eip !176
  %1824 = add i32 0, %1823, !mcsema_real_eip !176
  %1825 = xor i32 %1824, %1823, !mcsema_real_eip !176
  %1826 = xor i32 %1825, 0, !mcsema_real_eip !176
  %1827 = and i32 %1826, 16, !mcsema_real_eip !176
  %1828 = icmp ne i32 %1827, 0, !mcsema_real_eip !176
  %1829 = zext i1 %1828 to i8, !mcsema_real_eip !176
  store volatile i8 %1829, i8* %AF_write, !mcsema_real_eip !176
  %1830 = lshr i32 %1824, 31, !mcsema_real_eip !176
  %1831 = trunc i32 %1830 to i1, !mcsema_real_eip !176
  %1832 = zext i1 %1831 to i8, !mcsema_real_eip !176
  %1833 = trunc i8 %1832 to i1, !mcsema_real_eip !176
  %1834 = zext i1 %1833 to i8, !mcsema_real_eip !176
  store volatile i8 %1834, i8* %SF_write, !mcsema_real_eip !176
  %1835 = icmp eq i32 %1824, 0, !mcsema_real_eip !176
  %1836 = zext i1 %1835 to i8, !mcsema_real_eip !176
  store volatile i8 %1836, i8* %ZF_write, !mcsema_real_eip !176
  %1837 = xor i32 %1823, 0, !mcsema_real_eip !176
  %1838 = xor i32 %1837, -1, !mcsema_real_eip !176
  %1839 = xor i32 %1823, %1824, !mcsema_real_eip !176
  %1840 = and i32 %1838, %1839, !mcsema_real_eip !176
  %1841 = lshr i32 %1840, 31, !mcsema_real_eip !176
  %1842 = and i32 %1841, 1, !mcsema_real_eip !176
  %1843 = trunc i32 %1842 to i1, !mcsema_real_eip !176
  %1844 = zext i1 %1843 to i8, !mcsema_real_eip !176
  %1845 = trunc i8 %1844 to i1, !mcsema_real_eip !176
  %1846 = zext i1 %1845 to i8, !mcsema_real_eip !176
  store volatile i8 %1846, i8* %OF_write, !mcsema_real_eip !176
  %1847 = trunc i32 %1824 to i8, !mcsema_real_eip !176
  %1848 = call i8 @llvm.ctpop.i8(i8 %1847), !mcsema_real_eip !176
  %1849 = trunc i8 %1848 to i1, !mcsema_real_eip !176
  %1850 = zext i1 %1849 to i8, !mcsema_real_eip !176
  %1851 = xor i8 %1850, 1, !mcsema_real_eip !176
  %1852 = trunc i8 %1851 to i1, !mcsema_real_eip !176
  %1853 = zext i1 %1852 to i8, !mcsema_real_eip !176
  store volatile i8 %1853, i8* %PF_write, !mcsema_real_eip !176
  %1854 = icmp ult i32 %1824, %1823, !mcsema_real_eip !176
  %1855 = zext i1 %1854 to i8, !mcsema_real_eip !176
  store volatile i8 %1855, i8* %CF_write, !mcsema_real_eip !176
  %1856 = zext i32 %1824 to i64, !mcsema_real_eip !176
  store volatile i64 %1856, i64* %EAX_write, !mcsema_real_eip !176
  store volatile i64 709, i64* %EIP_write, !mcsema_real_eip !177
  %1857 = load i64, i64* %RBP_read, !mcsema_real_eip !177
  %1858 = add i64 %1857, -8, !mcsema_real_eip !177
  %1859 = inttoptr i64 %1858 to i64*, !mcsema_real_eip !177
  %1860 = load i32, i32* %EAX_read, !mcsema_real_eip !177
  %1861 = ptrtoint i64* %1859 to i64, !mcsema_real_eip !177
  %1862 = inttoptr i64 %1861 to i32*, !mcsema_real_eip !177
  store i32 %1860, i32* %1862, !mcsema_real_eip !177
  br label %block_2c8, !mcsema_real_eip !178

block_2c8:                                        ; preds = %block_2bf, %block_2af, %block_29f, %block_28f, %block_27f, %block_26f, %block_25f, %block_24f, %block_23f, %block_22f, %block_21f, %block_20f, %block_201, %block_1f3, %block_1e5, %block_1d7, %block_1c9, %block_1bb, %block_1ad, %block_19f
  store volatile i64 712, i64* %EIP_write, !mcsema_real_eip !178
  %1863 = load i64, i64* %RBP_read, !mcsema_real_eip !178
  %1864 = add i64 %1863, -8, !mcsema_real_eip !178
  %1865 = inttoptr i64 %1864 to i64*, !mcsema_real_eip !178
  %1866 = ptrtoint i64* %1865 to i64, !mcsema_real_eip !178
  %1867 = inttoptr i64 %1866 to i32*, !mcsema_real_eip !178
  %1868 = load i32, i32* %1867, !mcsema_real_eip !178
  %1869 = zext i32 %1868 to i64, !mcsema_real_eip !178
  store volatile i64 %1869, i64* %EAX_write, !mcsema_real_eip !178
  store volatile i64 715, i64* %EIP_write, !mcsema_real_eip !179
  %1870 = load i64, i64* %RSP_read, !mcsema_real_eip !179
  %1871 = inttoptr i64 %1870 to i64*, !mcsema_real_eip !179
  %1872 = load i64, i64* %1871, !mcsema_real_eip !179
  store volatile i64 %1872, i64* %RBP_write, !mcsema_real_eip !179
  %1873 = add i64 %1870, 8, !mcsema_real_eip !179
  store volatile i64 %1873, i64* %RSP_write, !mcsema_real_eip !179
  store volatile i64 716, i64* %EIP_write, !mcsema_real_eip !180
  %1874 = load i64, i64* %RSP_read, !mcsema_real_eip !180
  %1875 = add i64 %1874, 8, !mcsema_real_eip !180
  %1876 = inttoptr i64 %1874 to i64*, !mcsema_real_eip !180
  %1877 = load i64, i64* %1876, !mcsema_real_eip !180
  store volatile i64 %1877, i64* %RIP_write, !mcsema_real_eip !180
  store volatile i64 %1875, i64* %RSP_write, !mcsema_real_eip !180
  ret void, !mcsema_real_eip !180
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @switches() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 7}
!4 = !{i64 14}
!5 = !{i64 17}
!6 = !{i64 19}
!7 = !{i64 22}
!8 = !{i64 28}
!9 = !{i64 33}
!10 = !{i64 36}
!11 = !{i64 39}
!12 = !{i64 42}
!13 = !{i64 48}
!14 = !{i64 53}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 62}
!18 = !{i64 68}
!19 = !{i64 73}
!20 = !{i64 76}
!21 = !{i64 79}
!22 = !{i64 82}
!23 = !{i64 88}
!24 = !{i64 93}
!25 = !{i64 96}
!26 = !{i64 99}
!27 = !{i64 102}
!28 = !{i64 108}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 128}
!34 = !{i64 133}
!35 = !{i64 136}
!36 = !{i64 139}
!37 = !{i64 142}
!38 = !{i64 148}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 159}
!42 = !{i64 162}
!43 = !{i64 168}
!44 = !{i64 173}
!45 = !{i64 176}
!46 = !{i64 181}
!47 = !{i64 184}
!48 = !{i64 190}
!49 = !{i64 195}
!50 = !{i64 198}
!51 = !{i64 203}
!52 = !{i64 206}
!53 = !{i64 212}
!54 = !{i64 217}
!55 = !{i64 220}
!56 = !{i64 225}
!57 = !{i64 228}
!58 = !{i64 234}
!59 = !{i64 239}
!60 = !{i64 242}
!61 = !{i64 247}
!62 = !{i64 250}
!63 = !{i64 256}
!64 = !{i64 261}
!65 = !{i64 264}
!66 = !{i64 269}
!67 = !{i64 272}
!68 = !{i64 278}
!69 = !{i64 283}
!70 = !{i64 286}
!71 = !{i64 291}
!72 = !{i64 294}
!73 = !{i64 300}
!74 = !{i64 305}
!75 = !{i64 308}
!76 = !{i64 313}
!77 = !{i64 316}
!78 = !{i64 322}
!79 = !{i64 327}
!80 = !{i64 330}
!81 = !{i64 335}
!82 = !{i64 338}
!83 = !{i64 344}
!84 = !{i64 349}
!85 = !{i64 352}
!86 = !{i64 357}
!87 = !{i64 360}
!88 = !{i64 366}
!89 = !{i64 371}
!90 = !{i64 374}
!91 = !{i64 379}
!92 = !{i64 382}
!93 = !{i64 388}
!94 = !{i64 393}
!95 = !{i64 396}
!96 = !{i64 401}
!97 = !{i64 404}
!98 = !{i64 410}
!99 = !{i64 415}
!100 = !{i64 418}
!101 = !{i64 421}
!102 = !{i64 424}
!103 = !{i64 429}
!104 = !{i64 432}
!105 = !{i64 435}
!106 = !{i64 438}
!107 = !{i64 443}
!108 = !{i64 446}
!109 = !{i64 449}
!110 = !{i64 452}
!111 = !{i64 457}
!112 = !{i64 460}
!113 = !{i64 463}
!114 = !{i64 466}
!115 = !{i64 471}
!116 = !{i64 474}
!117 = !{i64 477}
!118 = !{i64 480}
!119 = !{i64 485}
!120 = !{i64 488}
!121 = !{i64 491}
!122 = !{i64 494}
!123 = !{i64 499}
!124 = !{i64 502}
!125 = !{i64 505}
!126 = !{i64 508}
!127 = !{i64 513}
!128 = !{i64 516}
!129 = !{i64 519}
!130 = !{i64 522}
!131 = !{i64 527}
!132 = !{i64 530}
!133 = !{i64 535}
!134 = !{i64 538}
!135 = !{i64 543}
!136 = !{i64 546}
!137 = !{i64 551}
!138 = !{i64 554}
!139 = !{i64 559}
!140 = !{i64 562}
!141 = !{i64 567}
!142 = !{i64 570}
!143 = !{i64 575}
!144 = !{i64 578}
!145 = !{i64 583}
!146 = !{i64 586}
!147 = !{i64 591}
!148 = !{i64 594}
!149 = !{i64 599}
!150 = !{i64 602}
!151 = !{i64 607}
!152 = !{i64 610}
!153 = !{i64 615}
!154 = !{i64 618}
!155 = !{i64 623}
!156 = !{i64 626}
!157 = !{i64 631}
!158 = !{i64 634}
!159 = !{i64 639}
!160 = !{i64 642}
!161 = !{i64 647}
!162 = !{i64 650}
!163 = !{i64 655}
!164 = !{i64 658}
!165 = !{i64 663}
!166 = !{i64 666}
!167 = !{i64 671}
!168 = !{i64 674}
!169 = !{i64 679}
!170 = !{i64 682}
!171 = !{i64 687}
!172 = !{i64 690}
!173 = !{i64 695}
!174 = !{i64 698}
!175 = !{i64 703}
!176 = !{i64 706}
!177 = !{i64 709}
!178 = !{i64 712}
!179 = !{i64 715}
!180 = !{i64 716}
