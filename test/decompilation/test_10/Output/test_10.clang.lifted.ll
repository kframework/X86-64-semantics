; ModuleID = 'Output/test_10.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_80 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %9 = load i64, i64* %RDI_read, !mcsema_real_eip !2
  store i64 %9, i64* %8, !mcsema_real_eip !2
  store volatile i64 8, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %11 = add i64 %10, -16, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i64, i64* %RSI_read, !mcsema_real_eip !3
  store i64 %13, i64* %12, !mcsema_real_eip !3
  store volatile i64 12, i64* %EIP_write, !mcsema_real_eip !4
  %14 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %15 = add i64 %14, -8, !mcsema_real_eip !4
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !4
  %17 = load i64, i64* %16, !mcsema_real_eip !4
  store volatile i64 %17, i64* %RSI_write, !mcsema_real_eip !4
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !5
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %19 = add i64 %18, -24, !mcsema_real_eip !5
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !5
  %21 = load i64, i64* %RSI_read, !mcsema_real_eip !5
  store i64 %21, i64* %20, !mcsema_real_eip !5
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !6
  %22 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %23 = add i64 %22, -16, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = load i64, i64* %24, !mcsema_real_eip !6
  store volatile i64 %25, i64* %RSI_write, !mcsema_real_eip !6
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !7
  %26 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %27 = add i64 %26, -32, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !7
  %29 = load i64, i64* %RSI_read, !mcsema_real_eip !7
  store i64 %29, i64* %28, !mcsema_real_eip !7
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !8
  %30 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %31 = add i64 %30, -24, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = load i64, i64* %32, !mcsema_real_eip !8
  store volatile i64 %33, i64* %RSI_write, !mcsema_real_eip !8
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !9
  %34 = load i64, i64* %RSI_read, !mcsema_real_eip !9
  %35 = add i64 %34, 0, !mcsema_real_eip !9
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !9
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !9
  %38 = inttoptr i64 %37 to i8*, !mcsema_real_eip !9
  %39 = load i8, i8* %38, !mcsema_real_eip !9
  store volatile i8 %39, i8* %AL_write, !mcsema_real_eip !9
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !10
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %41 = add i64 %40, -33, !mcsema_real_eip !10
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !10
  %43 = load i8, i8* %AL_read, !mcsema_real_eip !10
  %44 = ptrtoint i64* %42 to i64, !mcsema_real_eip !10
  %45 = inttoptr i64 %44 to i8*, !mcsema_real_eip !10
  store i8 %43, i8* %45, !mcsema_real_eip !10
  br label %block_25, !mcsema_real_eip !11

block_25:                                         ; preds = %block_54, %block_0
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !11
  %46 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %47 = add i64 %46, -33, !mcsema_real_eip !11
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !11
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !11
  %50 = inttoptr i64 %49 to i8*, !mcsema_real_eip !11
  %51 = load i8, i8* %50, !mcsema_real_eip !11
  %52 = sext i8 %51 to i32, !mcsema_real_eip !11
  %53 = zext i32 %52 to i64, !mcsema_real_eip !11
  store volatile i64 %53, i64* %EAX_write, !mcsema_real_eip !11
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !12
  %54 = load i32, i32* %EAX_read, !mcsema_real_eip !12
  %55 = sub i32 %54, 0, !mcsema_real_eip !12
  %56 = xor i32 %55, %54, !mcsema_real_eip !12
  %57 = xor i32 %56, 0, !mcsema_real_eip !12
  %58 = and i32 %57, 16, !mcsema_real_eip !12
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !12
  %60 = zext i1 %59 to i8, !mcsema_real_eip !12
  store volatile i8 %60, i8* %AF_write, !mcsema_real_eip !12
  %61 = trunc i32 %55 to i8, !mcsema_real_eip !12
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !12
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !12
  %64 = zext i1 %63 to i8, !mcsema_real_eip !12
  %65 = xor i8 %64, 1, !mcsema_real_eip !12
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !12
  %67 = zext i1 %66 to i8, !mcsema_real_eip !12
  store volatile i8 %67, i8* %PF_write, !mcsema_real_eip !12
  %68 = icmp eq i32 %55, 0, !mcsema_real_eip !12
  %69 = zext i1 %68 to i8, !mcsema_real_eip !12
  store volatile i8 %69, i8* %ZF_write, !mcsema_real_eip !12
  %70 = lshr i32 %55, 31, !mcsema_real_eip !12
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !12
  %72 = zext i1 %71 to i8, !mcsema_real_eip !12
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !12
  %74 = zext i1 %73 to i8, !mcsema_real_eip !12
  store volatile i8 %74, i8* %SF_write, !mcsema_real_eip !12
  %75 = icmp ult i32 %54, 0, !mcsema_real_eip !12
  %76 = zext i1 %75 to i8, !mcsema_real_eip !12
  store volatile i8 %76, i8* %CF_write, !mcsema_real_eip !12
  %77 = xor i32 %54, 0, !mcsema_real_eip !12
  %78 = xor i32 %54, %55, !mcsema_real_eip !12
  %79 = and i32 %77, %78, !mcsema_real_eip !12
  %80 = lshr i32 %79, 31, !mcsema_real_eip !12
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !12
  %82 = zext i1 %81 to i8, !mcsema_real_eip !12
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !12
  %84 = zext i1 %83 to i8, !mcsema_real_eip !12
  store volatile i8 %84, i8* %OF_write, !mcsema_real_eip !12
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !13
  %85 = load i8, i8* %ZF_read, !mcsema_real_eip !13
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !13
  %87 = icmp eq i1 %86, true, !mcsema_real_eip !13
  br i1 %87, label %block_7a, label %block_32, !mcsema_real_eip !13

block_32:                                         ; preds = %block_25
  store volatile i64 50, i64* %EIP_write, !mcsema_real_eip !14
  %88 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %89 = add i64 %88, -33, !mcsema_real_eip !14
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !14
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !14
  %92 = inttoptr i64 %91 to i8*, !mcsema_real_eip !14
  %93 = load i8, i8* %92, !mcsema_real_eip !14
  %94 = sext i8 %93 to i32, !mcsema_real_eip !14
  %95 = zext i32 %94 to i64, !mcsema_real_eip !14
  store volatile i64 %95, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !15
  %96 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %97 = sub i32 %96, 47, !mcsema_real_eip !15
  %98 = xor i32 %97, %96, !mcsema_real_eip !15
  %99 = xor i32 %98, 47, !mcsema_real_eip !15
  %100 = and i32 %99, 16, !mcsema_real_eip !15
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !15
  %102 = zext i1 %101 to i8, !mcsema_real_eip !15
  store volatile i8 %102, i8* %AF_write, !mcsema_real_eip !15
  %103 = trunc i32 %97 to i8, !mcsema_real_eip !15
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !15
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !15
  %106 = zext i1 %105 to i8, !mcsema_real_eip !15
  %107 = xor i8 %106, 1, !mcsema_real_eip !15
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !15
  %109 = zext i1 %108 to i8, !mcsema_real_eip !15
  store volatile i8 %109, i8* %PF_write, !mcsema_real_eip !15
  %110 = icmp eq i32 %97, 0, !mcsema_real_eip !15
  %111 = zext i1 %110 to i8, !mcsema_real_eip !15
  store volatile i8 %111, i8* %ZF_write, !mcsema_real_eip !15
  %112 = lshr i32 %97, 31, !mcsema_real_eip !15
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !15
  %114 = zext i1 %113 to i8, !mcsema_real_eip !15
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !15
  %116 = zext i1 %115 to i8, !mcsema_real_eip !15
  store volatile i8 %116, i8* %SF_write, !mcsema_real_eip !15
  %117 = icmp ult i32 %96, 47, !mcsema_real_eip !15
  %118 = zext i1 %117 to i8, !mcsema_real_eip !15
  store volatile i8 %118, i8* %CF_write, !mcsema_real_eip !15
  %119 = xor i32 %96, 47, !mcsema_real_eip !15
  %120 = xor i32 %96, %97, !mcsema_real_eip !15
  %121 = and i32 %119, %120, !mcsema_real_eip !15
  %122 = lshr i32 %121, 31, !mcsema_real_eip !15
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !15
  %124 = zext i1 %123 to i8, !mcsema_real_eip !15
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !15
  %126 = zext i1 %125 to i8, !mcsema_real_eip !15
  store volatile i8 %126, i8* %OF_write, !mcsema_real_eip !15
  store volatile i64 57, i64* %EIP_write, !mcsema_real_eip !16
  %127 = load i8, i8* %ZF_read, !mcsema_real_eip !16
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !16
  %129 = icmp eq i1 %128, false, !mcsema_real_eip !16
  br i1 %129, label %block_4b, label %block_3f, !mcsema_real_eip !16

block_3f:                                         ; preds = %block_32
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !17
  %130 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %131 = add i64 %130, -32, !mcsema_real_eip !17
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !17
  %133 = load i64, i64* %132, !mcsema_real_eip !17
  store volatile i64 %133, i64* %RAX_write, !mcsema_real_eip !17
  store volatile i64 67, i64* %EIP_write, !mcsema_real_eip !18
  %134 = load i64, i64* %RAX_read, !mcsema_real_eip !18
  %135 = add i64 %134, 0, !mcsema_real_eip !18
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !18
  %138 = inttoptr i64 %137 to i8*, !mcsema_real_eip !18
  store i8 92, i8* %138, !mcsema_real_eip !18
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !19
  br label %block_54, !mcsema_real_eip !19

block_4b:                                         ; preds = %block_32
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !20
  %139 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %140 = add i64 %139, -33, !mcsema_real_eip !20
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !20
  %142 = ptrtoint i64* %141 to i64, !mcsema_real_eip !20
  %143 = inttoptr i64 %142 to i8*, !mcsema_real_eip !20
  %144 = load i8, i8* %143, !mcsema_real_eip !20
  store volatile i8 %144, i8* %AL_write, !mcsema_real_eip !20
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !21
  %145 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %146 = add i64 %145, -32, !mcsema_real_eip !21
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !21
  %148 = load i64, i64* %147, !mcsema_real_eip !21
  store volatile i64 %148, i64* %RCX_write, !mcsema_real_eip !21
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !22
  %149 = load i64, i64* %RCX_read, !mcsema_real_eip !22
  %150 = add i64 %149, 0, !mcsema_real_eip !22
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !22
  %152 = load i8, i8* %AL_read, !mcsema_real_eip !22
  %153 = ptrtoint i64* %151 to i64, !mcsema_real_eip !22
  %154 = inttoptr i64 %153 to i8*, !mcsema_real_eip !22
  store i8 %152, i8* %154, !mcsema_real_eip !22
  br label %block_54, !mcsema_real_eip !23

block_54:                                         ; preds = %block_4b, %block_3f
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !23
  %155 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %156 = add i64 %155, -24, !mcsema_real_eip !23
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !23
  %158 = load i64, i64* %157, !mcsema_real_eip !23
  store volatile i64 %158, i64* %RAX_write, !mcsema_real_eip !23
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !24
  %159 = load i64, i64* %RAX_read, !mcsema_real_eip !24
  %160 = add i64 1, %159, !mcsema_real_eip !24
  %161 = xor i64 %160, %159, !mcsema_real_eip !24
  %162 = xor i64 %161, 1, !mcsema_real_eip !24
  %163 = and i64 %162, 16, !mcsema_real_eip !24
  %164 = icmp ne i64 %163, 0, !mcsema_real_eip !24
  %165 = zext i1 %164 to i8, !mcsema_real_eip !24
  store volatile i8 %165, i8* %AF_write, !mcsema_real_eip !24
  %166 = lshr i64 %160, 63, !mcsema_real_eip !24
  %167 = trunc i64 %166 to i1, !mcsema_real_eip !24
  %168 = zext i1 %167 to i8, !mcsema_real_eip !24
  %169 = trunc i8 %168 to i1, !mcsema_real_eip !24
  %170 = zext i1 %169 to i8, !mcsema_real_eip !24
  store volatile i8 %170, i8* %SF_write, !mcsema_real_eip !24
  %171 = icmp eq i64 %160, 0, !mcsema_real_eip !24
  %172 = zext i1 %171 to i8, !mcsema_real_eip !24
  store volatile i8 %172, i8* %ZF_write, !mcsema_real_eip !24
  %173 = xor i64 %159, 1, !mcsema_real_eip !24
  %174 = xor i64 %173, -1, !mcsema_real_eip !24
  %175 = xor i64 %159, %160, !mcsema_real_eip !24
  %176 = and i64 %174, %175, !mcsema_real_eip !24
  %177 = lshr i64 %176, 63, !mcsema_real_eip !24
  %178 = and i64 %177, 1, !mcsema_real_eip !24
  %179 = trunc i64 %178 to i1, !mcsema_real_eip !24
  %180 = zext i1 %179 to i8, !mcsema_real_eip !24
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !24
  %182 = zext i1 %181 to i8, !mcsema_real_eip !24
  store volatile i8 %182, i8* %OF_write, !mcsema_real_eip !24
  %183 = trunc i64 %160 to i8, !mcsema_real_eip !24
  %184 = call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !24
  %185 = trunc i8 %184 to i1, !mcsema_real_eip !24
  %186 = zext i1 %185 to i8, !mcsema_real_eip !24
  %187 = xor i8 %186, 1, !mcsema_real_eip !24
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !24
  %189 = zext i1 %188 to i8, !mcsema_real_eip !24
  store volatile i8 %189, i8* %PF_write, !mcsema_real_eip !24
  %190 = icmp ult i64 %160, %159, !mcsema_real_eip !24
  %191 = zext i1 %190 to i8, !mcsema_real_eip !24
  store volatile i8 %191, i8* %CF_write, !mcsema_real_eip !24
  store volatile i64 %160, i64* %RAX_write, !mcsema_real_eip !24
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !25
  %192 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %193 = add i64 %192, -24, !mcsema_real_eip !25
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !25
  %195 = load i64, i64* %RAX_read, !mcsema_real_eip !25
  store i64 %195, i64* %194, !mcsema_real_eip !25
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !26
  %196 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %197 = add i64 %196, -32, !mcsema_real_eip !26
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !26
  %199 = load i64, i64* %198, !mcsema_real_eip !26
  store volatile i64 %199, i64* %RAX_write, !mcsema_real_eip !26
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !27
  %200 = load i64, i64* %RAX_read, !mcsema_real_eip !27
  %201 = add i64 1, %200, !mcsema_real_eip !27
  %202 = xor i64 %201, %200, !mcsema_real_eip !27
  %203 = xor i64 %202, 1, !mcsema_real_eip !27
  %204 = and i64 %203, 16, !mcsema_real_eip !27
  %205 = icmp ne i64 %204, 0, !mcsema_real_eip !27
  %206 = zext i1 %205 to i8, !mcsema_real_eip !27
  store volatile i8 %206, i8* %AF_write, !mcsema_real_eip !27
  %207 = lshr i64 %201, 63, !mcsema_real_eip !27
  %208 = trunc i64 %207 to i1, !mcsema_real_eip !27
  %209 = zext i1 %208 to i8, !mcsema_real_eip !27
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !27
  %211 = zext i1 %210 to i8, !mcsema_real_eip !27
  store volatile i8 %211, i8* %SF_write, !mcsema_real_eip !27
  %212 = icmp eq i64 %201, 0, !mcsema_real_eip !27
  %213 = zext i1 %212 to i8, !mcsema_real_eip !27
  store volatile i8 %213, i8* %ZF_write, !mcsema_real_eip !27
  %214 = xor i64 %200, 1, !mcsema_real_eip !27
  %215 = xor i64 %214, -1, !mcsema_real_eip !27
  %216 = xor i64 %200, %201, !mcsema_real_eip !27
  %217 = and i64 %215, %216, !mcsema_real_eip !27
  %218 = lshr i64 %217, 63, !mcsema_real_eip !27
  %219 = and i64 %218, 1, !mcsema_real_eip !27
  %220 = trunc i64 %219 to i1, !mcsema_real_eip !27
  %221 = zext i1 %220 to i8, !mcsema_real_eip !27
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !27
  %223 = zext i1 %222 to i8, !mcsema_real_eip !27
  store volatile i8 %223, i8* %OF_write, !mcsema_real_eip !27
  %224 = trunc i64 %201 to i8, !mcsema_real_eip !27
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !27
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !27
  %227 = zext i1 %226 to i8, !mcsema_real_eip !27
  %228 = xor i8 %227, 1, !mcsema_real_eip !27
  %229 = trunc i8 %228 to i1, !mcsema_real_eip !27
  %230 = zext i1 %229 to i8, !mcsema_real_eip !27
  store volatile i8 %230, i8* %PF_write, !mcsema_real_eip !27
  %231 = icmp ult i64 %201, %200, !mcsema_real_eip !27
  %232 = zext i1 %231 to i8, !mcsema_real_eip !27
  store volatile i8 %232, i8* %CF_write, !mcsema_real_eip !27
  store volatile i64 %201, i64* %RAX_write, !mcsema_real_eip !27
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !28
  %233 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %234 = add i64 %233, -32, !mcsema_real_eip !28
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !28
  %236 = load i64, i64* %RAX_read, !mcsema_real_eip !28
  store i64 %236, i64* %235, !mcsema_real_eip !28
  store volatile i64 108, i64* %EIP_write, !mcsema_real_eip !29
  %237 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %238 = add i64 %237, -24, !mcsema_real_eip !29
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !29
  %240 = load i64, i64* %239, !mcsema_real_eip !29
  store volatile i64 %240, i64* %RAX_write, !mcsema_real_eip !29
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !30
  %241 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %242 = add i64 %241, 0, !mcsema_real_eip !30
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !30
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !30
  %245 = inttoptr i64 %244 to i8*, !mcsema_real_eip !30
  %246 = load i8, i8* %245, !mcsema_real_eip !30
  store volatile i8 %246, i8* %CL_write, !mcsema_real_eip !30
  store volatile i64 114, i64* %EIP_write, !mcsema_real_eip !31
  %247 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %248 = add i64 %247, -33, !mcsema_real_eip !31
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !31
  %250 = load i8, i8* %CL_read, !mcsema_real_eip !31
  %251 = ptrtoint i64* %249 to i64, !mcsema_real_eip !31
  %252 = inttoptr i64 %251 to i8*, !mcsema_real_eip !31
  store i8 %250, i8* %252, !mcsema_real_eip !31
  store volatile i64 117, i64* %EIP_write, !mcsema_real_eip !32
  br label %block_25, !mcsema_real_eip !32

block_7a:                                         ; preds = %block_25
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !33
  %253 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !33
  %255 = load i64, i64* %254, !mcsema_real_eip !33
  store volatile i64 %255, i64* %RBP_write, !mcsema_real_eip !33
  %256 = add i64 %253, 8, !mcsema_real_eip !33
  store volatile i64 %256, i64* %RSP_write, !mcsema_real_eip !33
  store volatile i64 123, i64* %EIP_write, !mcsema_real_eip !34
  %257 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %258 = add i64 %257, 8, !mcsema_real_eip !34
  %259 = inttoptr i64 %257 to i64*, !mcsema_real_eip !34
  %260 = load i64, i64* %259, !mcsema_real_eip !34
  store volatile i64 %260, i64* %RIP_write, !mcsema_real_eip !34
  store volatile i64 %258, i64* %RSP_write, !mcsema_real_eip !34
  ret void, !mcsema_real_eip !34
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @demo3() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 16}
!6 = !{i64 20}
!7 = !{i64 24}
!8 = !{i64 28}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 44}
!14 = !{i64 50}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 63}
!18 = !{i64 67}
!19 = !{i64 70}
!20 = !{i64 75}
!21 = !{i64 78}
!22 = !{i64 82}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 92}
!26 = !{i64 96}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 108}
!30 = !{i64 112}
!31 = !{i64 114}
!32 = !{i64 117}
!33 = !{i64 122}
!34 = !{i64 123}
