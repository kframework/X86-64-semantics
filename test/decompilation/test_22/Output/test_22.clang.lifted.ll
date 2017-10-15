; ModuleID = 'Output/test_22.clang.lifted.bc'
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
module asm "  .globl timespi;"
module asm "  .type timespi,@function"
module asm "timespi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size timespi,0b-timespi;"
module asm "  .cfi_endproc;"

%0 = type <{ [8 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_20 = internal constant %0 <{ [8 x i8] c"\18-DT\FB!\09@" }>, align 64
@data_28 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\1C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  br label %fpuinst_LD_F80m, !mcsema_real_eip !2

fpuinst_LD_F80m:                                  ; preds = %block_0
  %6 = load i64, i64* %RBP_read, !mcsema_real_eip !2
  %7 = add i64 %6, 16, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = bitcast i64* %8 to x86_fp80*, !mcsema_real_eip !2
  %10 = load x86_fp80, x86_fp80* %9, !mcsema_real_eip !2
  %11 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !2
  store volatile x86_fp80 %11, x86_fp80* %ST7_write, !mcsema_real_eip !2
  %12 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !2
  store volatile x86_fp80 %12, x86_fp80* %ST6_write, !mcsema_real_eip !2
  %13 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !2
  store volatile x86_fp80 %13, x86_fp80* %ST5_write, !mcsema_real_eip !2
  %14 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !2
  store volatile x86_fp80 %14, x86_fp80* %ST4_write, !mcsema_real_eip !2
  %15 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !2
  store volatile x86_fp80 %15, x86_fp80* %ST3_write, !mcsema_real_eip !2
  %16 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !2
  store volatile x86_fp80 %16, x86_fp80* %ST2_write, !mcsema_real_eip !2
  %17 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !2
  store volatile x86_fp80 %17, x86_fp80* %ST1_write, !mcsema_real_eip !2
  store volatile x86_fp80 %10, x86_fp80* %ST0_write, !mcsema_real_eip !2
  store volatile i64 7, i64* %EIP_write, !mcsema_real_eip !3
  br label %fpuinst_ST_FP80m, !mcsema_real_eip !3

fpuinst_ST_FP80m:                                 ; preds = %fpuinst_LD_F80m
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %19 = add i64 %18, -16, !mcsema_real_eip !3
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !3
  %21 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !3
  %22 = bitcast i64* %20 to x86_fp80*, !mcsema_real_eip !3
  store x86_fp80 %21, x86_fp80* %22, !mcsema_real_eip !3
  %23 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !3
  %24 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !3
  store volatile x86_fp80 %24, x86_fp80* %ST0_write, !mcsema_real_eip !3
  %25 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !3
  store volatile x86_fp80 %25, x86_fp80* %ST1_write, !mcsema_real_eip !3
  %26 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !3
  store volatile x86_fp80 %26, x86_fp80* %ST2_write, !mcsema_real_eip !3
  %27 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !3
  store volatile x86_fp80 %27, x86_fp80* %ST3_write, !mcsema_real_eip !3
  %28 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !3
  store volatile x86_fp80 %28, x86_fp80* %ST4_write, !mcsema_real_eip !3
  %29 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !3
  store volatile x86_fp80 %29, x86_fp80* %ST5_write, !mcsema_real_eip !3
  %30 = load x86_fp80, x86_fp80* %ST7_read, !mcsema_real_eip !3
  store volatile x86_fp80 %30, x86_fp80* %ST6_write, !mcsema_real_eip !3
  store volatile x86_fp80 %23, x86_fp80* %ST7_write, !mcsema_real_eip !3
  store volatile i64 10, i64* %EIP_write, !mcsema_real_eip !4
  br label %fpuinst_LD_F64m, !mcsema_real_eip !4

fpuinst_LD_F64m:                                  ; preds = %fpuinst_ST_FP80m
  %31 = ptrtoint %0* @data_20 to i64, !mcsema_real_eip !4
  %32 = add i64 %31, 0, !mcsema_real_eip !4
  %33 = add i64 0, %32, !mcsema_real_eip !4
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !4
  %35 = bitcast i64* %34 to double*, !mcsema_real_eip !4
  %36 = load double, double* %35, !mcsema_real_eip !4
  %37 = fpext double %36 to x86_fp80, !mcsema_real_eip !4
  %38 = fptrunc x86_fp80 %37 to double, !mcsema_real_eip !4
  %39 = fpext double %38 to x86_fp80, !mcsema_real_eip !4
  %40 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !4
  store volatile x86_fp80 %40, x86_fp80* %ST7_write, !mcsema_real_eip !4
  %41 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !4
  store volatile x86_fp80 %41, x86_fp80* %ST6_write, !mcsema_real_eip !4
  %42 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !4
  store volatile x86_fp80 %42, x86_fp80* %ST5_write, !mcsema_real_eip !4
  %43 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !4
  store volatile x86_fp80 %43, x86_fp80* %ST4_write, !mcsema_real_eip !4
  %44 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !4
  store volatile x86_fp80 %44, x86_fp80* %ST3_write, !mcsema_real_eip !4
  %45 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !4
  store volatile x86_fp80 %45, x86_fp80* %ST2_write, !mcsema_real_eip !4
  %46 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !4
  store volatile x86_fp80 %46, x86_fp80* %ST1_write, !mcsema_real_eip !4
  store volatile x86_fp80 %39, x86_fp80* %ST0_write, !mcsema_real_eip !4
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !5
  br label %fpuinst_LD_Frr, !mcsema_real_eip !5

fpuinst_LD_Frr:                                   ; preds = %fpuinst_LD_F64m
  %47 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !5
  %48 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !5
  store volatile x86_fp80 %48, x86_fp80* %ST7_write, !mcsema_real_eip !5
  %49 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !5
  store volatile x86_fp80 %49, x86_fp80* %ST6_write, !mcsema_real_eip !5
  %50 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !5
  store volatile x86_fp80 %50, x86_fp80* %ST5_write, !mcsema_real_eip !5
  %51 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !5
  store volatile x86_fp80 %51, x86_fp80* %ST4_write, !mcsema_real_eip !5
  %52 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !5
  store volatile x86_fp80 %52, x86_fp80* %ST3_write, !mcsema_real_eip !5
  %53 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !5
  store volatile x86_fp80 %53, x86_fp80* %ST2_write, !mcsema_real_eip !5
  %54 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !5
  store volatile x86_fp80 %54, x86_fp80* %ST1_write, !mcsema_real_eip !5
  store volatile x86_fp80 %47, x86_fp80* %ST0_write, !mcsema_real_eip !5
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !6
  br label %fpuinst_ST_FP80m1, !mcsema_real_eip !6

fpuinst_ST_FP80m1:                                ; preds = %fpuinst_LD_Frr
  %55 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %56 = add i64 %55, -32, !mcsema_real_eip !6
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !6
  %58 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !6
  %59 = bitcast i64* %57 to x86_fp80*, !mcsema_real_eip !6
  store x86_fp80 %58, x86_fp80* %59, !mcsema_real_eip !6
  %60 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !6
  %61 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !6
  store volatile x86_fp80 %61, x86_fp80* %ST0_write, !mcsema_real_eip !6
  %62 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !6
  store volatile x86_fp80 %62, x86_fp80* %ST1_write, !mcsema_real_eip !6
  %63 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !6
  store volatile x86_fp80 %63, x86_fp80* %ST2_write, !mcsema_real_eip !6
  %64 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !6
  store volatile x86_fp80 %64, x86_fp80* %ST3_write, !mcsema_real_eip !6
  %65 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !6
  store volatile x86_fp80 %65, x86_fp80* %ST4_write, !mcsema_real_eip !6
  %66 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !6
  store volatile x86_fp80 %66, x86_fp80* %ST5_write, !mcsema_real_eip !6
  %67 = load x86_fp80, x86_fp80* %ST7_read, !mcsema_real_eip !6
  store volatile x86_fp80 %67, x86_fp80* %ST6_write, !mcsema_real_eip !6
  store volatile x86_fp80 %60, x86_fp80* %ST7_write, !mcsema_real_eip !6
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !7
  br label %fpuinst_LD_F80m2, !mcsema_real_eip !7

fpuinst_LD_F80m2:                                 ; preds = %fpuinst_ST_FP80m1
  %68 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %69 = add i64 %68, -16, !mcsema_real_eip !7
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !7
  %71 = bitcast i64* %70 to x86_fp80*, !mcsema_real_eip !7
  %72 = load x86_fp80, x86_fp80* %71, !mcsema_real_eip !7
  %73 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !7
  store volatile x86_fp80 %73, x86_fp80* %ST7_write, !mcsema_real_eip !7
  %74 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !7
  store volatile x86_fp80 %74, x86_fp80* %ST6_write, !mcsema_real_eip !7
  %75 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !7
  store volatile x86_fp80 %75, x86_fp80* %ST5_write, !mcsema_real_eip !7
  %76 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !7
  store volatile x86_fp80 %76, x86_fp80* %ST4_write, !mcsema_real_eip !7
  %77 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !7
  store volatile x86_fp80 %77, x86_fp80* %ST3_write, !mcsema_real_eip !7
  %78 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !7
  store volatile x86_fp80 %78, x86_fp80* %ST2_write, !mcsema_real_eip !7
  %79 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !7
  store volatile x86_fp80 %79, x86_fp80* %ST1_write, !mcsema_real_eip !7
  store volatile x86_fp80 %72, x86_fp80* %ST0_write, !mcsema_real_eip !7
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !8
  br label %fpuinst_MUL_FPrST0, !mcsema_real_eip !8

fpuinst_MUL_FPrST0:                               ; preds = %fpuinst_LD_F80m2
  %80 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !8
  %81 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !8
  %82 = fmul x86_fp80 %80, %81, !mcsema_real_eip !8
  store volatile x86_fp80 %82, x86_fp80* %ST1_write, !mcsema_real_eip !8
  %83 = trunc i8 0 to i1, !mcsema_real_eip !8
  %84 = zext i1 %83 to i8, !mcsema_real_eip !8
  store volatile i8 %84, i8* %FPU_FLAG_C1_write, !mcsema_real_eip !8
  %85 = load x86_fp80, x86_fp80* %ST0_read, !mcsema_real_eip !8
  %86 = load x86_fp80, x86_fp80* %ST1_read, !mcsema_real_eip !8
  store volatile x86_fp80 %86, x86_fp80* %ST0_write, !mcsema_real_eip !8
  %87 = load x86_fp80, x86_fp80* %ST2_read, !mcsema_real_eip !8
  store volatile x86_fp80 %87, x86_fp80* %ST1_write, !mcsema_real_eip !8
  %88 = load x86_fp80, x86_fp80* %ST3_read, !mcsema_real_eip !8
  store volatile x86_fp80 %88, x86_fp80* %ST2_write, !mcsema_real_eip !8
  %89 = load x86_fp80, x86_fp80* %ST4_read, !mcsema_real_eip !8
  store volatile x86_fp80 %89, x86_fp80* %ST3_write, !mcsema_real_eip !8
  %90 = load x86_fp80, x86_fp80* %ST5_read, !mcsema_real_eip !8
  store volatile x86_fp80 %90, x86_fp80* %ST4_write, !mcsema_real_eip !8
  %91 = load x86_fp80, x86_fp80* %ST6_read, !mcsema_real_eip !8
  store volatile x86_fp80 %91, x86_fp80* %ST5_write, !mcsema_real_eip !8
  %92 = load x86_fp80, x86_fp80* %ST7_read, !mcsema_real_eip !8
  store volatile x86_fp80 %92, x86_fp80* %ST6_write, !mcsema_real_eip !8
  store volatile x86_fp80 %85, x86_fp80* %ST7_write, !mcsema_real_eip !8
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !9
  %93 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !9
  %95 = load i64, i64* %94, !mcsema_real_eip !9
  store volatile i64 %95, i64* %RBP_write, !mcsema_real_eip !9
  %96 = add i64 %93, 8, !mcsema_real_eip !9
  store volatile i64 %96, i64* %RSP_write, !mcsema_real_eip !9
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !10
  %97 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %98 = add i64 %97, 8, !mcsema_real_eip !10
  %99 = inttoptr i64 %97 to i64*, !mcsema_real_eip !10
  %100 = load i64, i64* %99, !mcsema_real_eip !10
  store volatile i64 %100, i64* %RIP_write, !mcsema_real_eip !10
  store volatile i64 %98, i64* %RSP_write, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: naked noinline
declare void @timespi() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 7}
!4 = !{i64 10}
!5 = !{i64 16}
!6 = !{i64 18}
!7 = !{i64 21}
!8 = !{i64 24}
!9 = !{i64 26}
!10 = !{i64 27}
