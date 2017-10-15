; ModuleID = 'Output/test_5.clang.lifted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_50 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %11 = add i64 %10, -12, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i32, i32* %ESI_read, !mcsema_real_eip !3
  %14 = ptrtoint i64* %12 to i64, !mcsema_real_eip !3
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !3
  store i32 %13, i32* %15, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %16 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %17 = add i64 %16, -16, !mcsema_real_eip !4
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !4
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !4
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %20, !mcsema_real_eip !4
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !5
  %21 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %22 = add i64 %21, -20, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %25, !mcsema_real_eip !5
  br label %block_19, !mcsema_real_eip !6

block_19:                                         ; preds = %block_25, %block_0
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !6
  %26 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %27 = add i64 %26, -20, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !6
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !6
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !6
  %31 = load i32, i32* %30, !mcsema_real_eip !6
  %32 = zext i32 %31 to i64, !mcsema_real_eip !6
  store volatile i64 %32, i64* %EAX_write, !mcsema_real_eip !6
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !7
  %33 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %34 = add i64 %33, -12, !mcsema_real_eip !7
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !7
  %36 = load i32, i32* %EAX_read, !mcsema_real_eip !7
  %37 = ptrtoint i64* %35 to i64, !mcsema_real_eip !7
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !7
  %39 = load i32, i32* %38, !mcsema_real_eip !7
  %40 = sub i32 %36, %39, !mcsema_real_eip !7
  %41 = xor i32 %40, %36, !mcsema_real_eip !7
  %42 = xor i32 %41, %39, !mcsema_real_eip !7
  %43 = and i32 %42, 16, !mcsema_real_eip !7
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !7
  %45 = zext i1 %44 to i8, !mcsema_real_eip !7
  store volatile i8 %45, i8* %AF_write, !mcsema_real_eip !7
  %46 = trunc i32 %40 to i8, !mcsema_real_eip !7
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !7
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !7
  %49 = zext i1 %48 to i8, !mcsema_real_eip !7
  %50 = xor i8 %49, 1, !mcsema_real_eip !7
  %51 = trunc i8 %50 to i1, !mcsema_real_eip !7
  %52 = zext i1 %51 to i8, !mcsema_real_eip !7
  store volatile i8 %52, i8* %PF_write, !mcsema_real_eip !7
  %53 = icmp eq i32 %40, 0, !mcsema_real_eip !7
  %54 = zext i1 %53 to i8, !mcsema_real_eip !7
  store volatile i8 %54, i8* %ZF_write, !mcsema_real_eip !7
  %55 = lshr i32 %40, 31, !mcsema_real_eip !7
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !7
  %57 = zext i1 %56 to i8, !mcsema_real_eip !7
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !7
  %59 = zext i1 %58 to i8, !mcsema_real_eip !7
  store volatile i8 %59, i8* %SF_write, !mcsema_real_eip !7
  %60 = icmp ult i32 %36, %39, !mcsema_real_eip !7
  %61 = zext i1 %60 to i8, !mcsema_real_eip !7
  store volatile i8 %61, i8* %CF_write, !mcsema_real_eip !7
  %62 = xor i32 %36, %39, !mcsema_real_eip !7
  %63 = xor i32 %36, %40, !mcsema_real_eip !7
  %64 = and i32 %62, %63, !mcsema_real_eip !7
  %65 = lshr i32 %64, 31, !mcsema_real_eip !7
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !7
  %67 = zext i1 %66 to i8, !mcsema_real_eip !7
  %68 = trunc i8 %67 to i1, !mcsema_real_eip !7
  %69 = zext i1 %68 to i8, !mcsema_real_eip !7
  store volatile i8 %69, i8* %OF_write, !mcsema_real_eip !7
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !8
  %70 = load i8, i8* %SF_read, !mcsema_real_eip !8
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !8
  %72 = load i8, i8* %OF_read, !mcsema_real_eip !8
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !8
  %74 = icmp eq i1 %71, %73, !mcsema_real_eip !8
  br i1 %74, label %block_44, label %block_25, !mcsema_real_eip !8

block_25:                                         ; preds = %block_19
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !9
  %75 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %76 = add i64 %75, -20, !mcsema_real_eip !9
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !9
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !9
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !9
  %80 = load i32, i32* %79, !mcsema_real_eip !9
  %81 = sext i32 %80 to i64, !mcsema_real_eip !9
  store volatile i64 %81, i64* %RAX_write, !mcsema_real_eip !9
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !10
  %82 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %83 = add i64 %82, -8, !mcsema_real_eip !10
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !10
  %85 = load i64, i64* %84, !mcsema_real_eip !10
  store volatile i64 %85, i64* %RCX_write, !mcsema_real_eip !10
  store volatile i64 45, i64* %EIP_write, !mcsema_real_eip !11
  %86 = load i64, i64* %RCX_read, !mcsema_real_eip !11
  %87 = add i64 %86, 0, !mcsema_real_eip !11
  %88 = load i64, i64* %RAX_read, !mcsema_real_eip !11
  %89 = mul i64 %88, 4, !mcsema_real_eip !11
  %90 = add i64 %87, %89, !mcsema_real_eip !11
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !11
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !11
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !11
  %94 = load i32, i32* %93, !mcsema_real_eip !11
  %95 = zext i32 %94 to i64, !mcsema_real_eip !11
  store volatile i64 %95, i64* %EDX_write, !mcsema_real_eip !11
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !12
  %96 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %97 = add i64 %96, -16, !mcsema_real_eip !12
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !12
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !12
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !12
  %101 = load i32, i32* %100, !mcsema_real_eip !12
  %102 = load i32, i32* %EDX_read, !mcsema_real_eip !12
  %103 = add i32 %102, %101, !mcsema_real_eip !12
  %104 = xor i32 %103, %101, !mcsema_real_eip !12
  %105 = xor i32 %104, %102, !mcsema_real_eip !12
  %106 = and i32 %105, 16, !mcsema_real_eip !12
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !12
  %108 = zext i1 %107 to i8, !mcsema_real_eip !12
  store volatile i8 %108, i8* %AF_write, !mcsema_real_eip !12
  %109 = lshr i32 %103, 31, !mcsema_real_eip !12
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !12
  %111 = zext i1 %110 to i8, !mcsema_real_eip !12
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !12
  %113 = zext i1 %112 to i8, !mcsema_real_eip !12
  store volatile i8 %113, i8* %SF_write, !mcsema_real_eip !12
  %114 = icmp eq i32 %103, 0, !mcsema_real_eip !12
  %115 = zext i1 %114 to i8, !mcsema_real_eip !12
  store volatile i8 %115, i8* %ZF_write, !mcsema_real_eip !12
  %116 = xor i32 %101, %102, !mcsema_real_eip !12
  %117 = xor i32 %116, -1, !mcsema_real_eip !12
  %118 = xor i32 %101, %103, !mcsema_real_eip !12
  %119 = and i32 %117, %118, !mcsema_real_eip !12
  %120 = lshr i32 %119, 31, !mcsema_real_eip !12
  %121 = and i32 %120, 1, !mcsema_real_eip !12
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !12
  %123 = zext i1 %122 to i8, !mcsema_real_eip !12
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !12
  %125 = zext i1 %124 to i8, !mcsema_real_eip !12
  store volatile i8 %125, i8* %OF_write, !mcsema_real_eip !12
  %126 = trunc i32 %103 to i8, !mcsema_real_eip !12
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !12
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !12
  %129 = zext i1 %128 to i8, !mcsema_real_eip !12
  %130 = xor i8 %129, 1, !mcsema_real_eip !12
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !12
  %132 = zext i1 %131 to i8, !mcsema_real_eip !12
  store volatile i8 %132, i8* %PF_write, !mcsema_real_eip !12
  %133 = icmp ult i32 %103, %101, !mcsema_real_eip !12
  %134 = zext i1 %133 to i8, !mcsema_real_eip !12
  store volatile i8 %134, i8* %CF_write, !mcsema_real_eip !12
  %135 = zext i32 %103 to i64, !mcsema_real_eip !12
  store volatile i64 %135, i64* %EDX_write, !mcsema_real_eip !12
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !13
  %136 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %137 = add i64 %136, -16, !mcsema_real_eip !13
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !13
  %139 = load i32, i32* %EDX_read, !mcsema_real_eip !13
  %140 = ptrtoint i64* %138 to i64, !mcsema_real_eip !13
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !13
  store i32 %139, i32* %141, !mcsema_real_eip !13
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !14
  %142 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %143 = add i64 %142, -20, !mcsema_real_eip !14
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !14
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !14
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !14
  %147 = load i32, i32* %146, !mcsema_real_eip !14
  %148 = zext i32 %147 to i64, !mcsema_real_eip !14
  store volatile i64 %148, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 57, i64* %EIP_write, !mcsema_real_eip !15
  %149 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %150 = add i32 1, %149, !mcsema_real_eip !15
  %151 = xor i32 %150, %149, !mcsema_real_eip !15
  %152 = xor i32 %151, 1, !mcsema_real_eip !15
  %153 = and i32 %152, 16, !mcsema_real_eip !15
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !15
  %155 = zext i1 %154 to i8, !mcsema_real_eip !15
  store volatile i8 %155, i8* %AF_write, !mcsema_real_eip !15
  %156 = lshr i32 %150, 31, !mcsema_real_eip !15
  %157 = trunc i32 %156 to i1, !mcsema_real_eip !15
  %158 = zext i1 %157 to i8, !mcsema_real_eip !15
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !15
  %160 = zext i1 %159 to i8, !mcsema_real_eip !15
  store volatile i8 %160, i8* %SF_write, !mcsema_real_eip !15
  %161 = icmp eq i32 %150, 0, !mcsema_real_eip !15
  %162 = zext i1 %161 to i8, !mcsema_real_eip !15
  store volatile i8 %162, i8* %ZF_write, !mcsema_real_eip !15
  %163 = xor i32 %149, 1, !mcsema_real_eip !15
  %164 = xor i32 %163, -1, !mcsema_real_eip !15
  %165 = xor i32 %149, %150, !mcsema_real_eip !15
  %166 = and i32 %164, %165, !mcsema_real_eip !15
  %167 = lshr i32 %166, 31, !mcsema_real_eip !15
  %168 = and i32 %167, 1, !mcsema_real_eip !15
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !15
  %170 = zext i1 %169 to i8, !mcsema_real_eip !15
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !15
  %172 = zext i1 %171 to i8, !mcsema_real_eip !15
  store volatile i8 %172, i8* %OF_write, !mcsema_real_eip !15
  %173 = trunc i32 %150 to i8, !mcsema_real_eip !15
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !15
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !15
  %176 = zext i1 %175 to i8, !mcsema_real_eip !15
  %177 = xor i8 %176, 1, !mcsema_real_eip !15
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !15
  %179 = zext i1 %178 to i8, !mcsema_real_eip !15
  store volatile i8 %179, i8* %PF_write, !mcsema_real_eip !15
  %180 = icmp ult i32 %150, %149, !mcsema_real_eip !15
  %181 = zext i1 %180 to i8, !mcsema_real_eip !15
  store volatile i8 %181, i8* %CF_write, !mcsema_real_eip !15
  %182 = zext i32 %150 to i64, !mcsema_real_eip !15
  store volatile i64 %182, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !16
  %183 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %184 = add i64 %183, -20, !mcsema_real_eip !16
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !16
  %186 = load i32, i32* %EAX_read, !mcsema_real_eip !16
  %187 = ptrtoint i64* %185 to i64, !mcsema_real_eip !16
  %188 = inttoptr i64 %187 to i32*, !mcsema_real_eip !16
  store i32 %186, i32* %188, !mcsema_real_eip !16
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !17
  br label %block_19, !mcsema_real_eip !17

block_44:                                         ; preds = %block_19
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !18
  %189 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %190 = add i64 %189, -16, !mcsema_real_eip !18
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !18
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !18
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !18
  %194 = load i32, i32* %193, !mcsema_real_eip !18
  %195 = zext i32 %194 to i64, !mcsema_real_eip !18
  store volatile i64 %195, i64* %EAX_write, !mcsema_real_eip !18
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !19
  %196 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !19
  %198 = load i64, i64* %197, !mcsema_real_eip !19
  store volatile i64 %198, i64* %RBP_write, !mcsema_real_eip !19
  %199 = add i64 %196, 8, !mcsema_real_eip !19
  store volatile i64 %199, i64* %RSP_write, !mcsema_real_eip !19
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !20
  %200 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %201 = add i64 %200, 8, !mcsema_real_eip !20
  %202 = inttoptr i64 %200 to i64*, !mcsema_real_eip !20
  %203 = load i64, i64* %202, !mcsema_real_eip !20
  store volatile i64 %203, i64* %RIP_write, !mcsema_real_eip !20
  store volatile i64 %201, i64* %RSP_write, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @foo() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 11}
!5 = !{i64 18}
!6 = !{i64 25}
!7 = !{i64 28}
!8 = !{i64 31}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 45}
!12 = !{i64 48}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 57}
!16 = !{i64 60}
!17 = !{i64 63}
!18 = !{i64 68}
!19 = !{i64 71}
!20 = !{i64 72}
