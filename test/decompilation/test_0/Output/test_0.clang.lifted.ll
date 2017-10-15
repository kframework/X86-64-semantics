; ModuleID = 'Output/test_0.clang.lifted.bc'
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"V\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !2
  %7 = sext i8 32 to i64, !mcsema_real_eip !2
  %8 = sub i64 %6, %7, !mcsema_real_eip !2
  %9 = xor i64 %8, %6, !mcsema_real_eip !2
  %10 = xor i64 %9, %7, !mcsema_real_eip !2
  %11 = and i64 %10, 16, !mcsema_real_eip !2
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !2
  %13 = zext i1 %12 to i8, !mcsema_real_eip !2
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !2
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !2
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !2
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !2
  %17 = zext i1 %16 to i8, !mcsema_real_eip !2
  %18 = xor i8 %17, 1, !mcsema_real_eip !2
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !2
  %20 = zext i1 %19 to i8, !mcsema_real_eip !2
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !2
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !2
  %22 = zext i1 %21 to i8, !mcsema_real_eip !2
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !2
  %23 = lshr i64 %8, 63, !mcsema_real_eip !2
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !2
  %25 = zext i1 %24 to i8, !mcsema_real_eip !2
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !2
  %27 = zext i1 %26 to i8, !mcsema_real_eip !2
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !2
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !2
  %29 = zext i1 %28 to i8, !mcsema_real_eip !2
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !2
  %30 = xor i64 %6, %7, !mcsema_real_eip !2
  %31 = xor i64 %6, %8, !mcsema_real_eip !2
  %32 = and i64 %30, %31, !mcsema_real_eip !2
  %33 = lshr i64 %32, 63, !mcsema_real_eip !2
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !2
  %35 = zext i1 %34 to i8, !mcsema_real_eip !2
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !2
  %37 = zext i1 %36 to i8, !mcsema_real_eip !2
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !2
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !2
  store volatile i64 8, i64* %EIP_write, !mcsema_real_eip !3
  %38 = ptrtoint %0* @data_56 to i64, !mcsema_real_eip !3
  %39 = add i64 %38, 0, !mcsema_real_eip !3
  store volatile i64 %39, i64* %RDI_write, !mcsema_real_eip !3
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !4
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %41 = add i64 %40, -16, !mcsema_real_eip !4
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !4
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !4
  store volatile i64 %43, i64* %RAX_write, !mcsema_real_eip !4
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !5
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %45 = add i64 %44, -4, !mcsema_real_eip !5
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !5
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !5
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %48, !mcsema_real_eip !5
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !6
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %50 = add i64 %49, -24, !mcsema_real_eip !6
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !6
  %52 = load i64, i64* %RAX_read, !mcsema_real_eip !6
  store i64 %52, i64* %51, !mcsema_real_eip !6
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !7
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %54 = add i64 %53, -24, !mcsema_real_eip !7
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !7
  %56 = load i64, i64* %55, !mcsema_real_eip !7
  store volatile i64 %56, i64* %RAX_write, !mcsema_real_eip !7
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !8
  %57 = load i64, i64* %RAX_read, !mcsema_real_eip !8
  %58 = add i64 %57, 0, !mcsema_real_eip !8
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !8
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !8
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %61, !mcsema_real_eip !8
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !9
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %63 = add i64 %62, -24, !mcsema_real_eip !9
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !9
  %65 = load i64, i64* %64, !mcsema_real_eip !9
  store volatile i64 %65, i64* %RAX_write, !mcsema_real_eip !9
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !10
  %66 = load i64, i64* %RAX_read, !mcsema_real_eip !10
  %67 = add i64 %66, 4, !mcsema_real_eip !10
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !10
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !10
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !10
  store i32 2, i32* %70, !mcsema_real_eip !10
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !11
  %71 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %72 = add i64 %71, -24, !mcsema_real_eip !11
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !11
  %74 = load i64, i64* %73, !mcsema_real_eip !11
  store volatile i64 %74, i64* %RAX_write, !mcsema_real_eip !11
  store volatile i64 58, i64* %EIP_write, !mcsema_real_eip !12
  %75 = load i64, i64* %RAX_read, !mcsema_real_eip !12
  %76 = add i64 %75, 4, !mcsema_real_eip !12
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !12
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !12
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !12
  %80 = load i32, i32* %79, !mcsema_real_eip !12
  %81 = zext i32 %80 to i64, !mcsema_real_eip !12
  store volatile i64 %81, i64* %ESI_write, !mcsema_real_eip !12
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !13
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !13
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !14
  %82 = load i64, i64* %RDI_read, !mcsema_real_eip !14
  %83 = load i64, i64* %RSI_read, !mcsema_real_eip !14
  %84 = load i64, i64* %RDX_read, !mcsema_real_eip !14
  %85 = load i64, i64* %RCX_read, !mcsema_real_eip !14
  %86 = load i64, i64* %R8_read, !mcsema_real_eip !14
  %87 = load i64, i64* %R9_read, !mcsema_real_eip !14
  %88 = load i64, i64* %RSP_read, !mcsema_real_eip !14
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !14
  %90 = load i64, i64* %89, !mcsema_real_eip !14
  %91 = add i64 %88, 8, !mcsema_real_eip !14
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !14
  %93 = load i64, i64* %92, !mcsema_real_eip !14
  %94 = add i64 %91, 8, !mcsema_real_eip !14
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !14
  %96 = load i64, i64* %95, !mcsema_real_eip !14
  %97 = add i64 %94, 8, !mcsema_real_eip !14
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !14
  %99 = load i64, i64* %98, !mcsema_real_eip !14
  %100 = add i64 %97, 8, !mcsema_real_eip !14
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !14
  %102 = load i64, i64* %101, !mcsema_real_eip !14
  %103 = add i64 %100, 8, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !14
  %105 = load i64, i64* %104, !mcsema_real_eip !14
  %106 = add i64 %103, 8, !mcsema_real_eip !14
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !14
  %108 = load i64, i64* %107, !mcsema_real_eip !14
  %109 = add i64 %106, 8, !mcsema_real_eip !14
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !14
  %111 = load i64, i64* %110, !mcsema_real_eip !14
  %112 = add i64 %109, 8, !mcsema_real_eip !14
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !14
  %114 = load i64, i64* %113, !mcsema_real_eip !14
  %115 = add i64 %112, 8, !mcsema_real_eip !14
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !14
  %117 = load i64, i64* %116, !mcsema_real_eip !14
  %118 = load i64, i64* %RSP_read, !mcsema_real_eip !14
  %119 = sub i64 %118, 8, !mcsema_real_eip !14
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %120, !mcsema_real_eip !14
  store volatile i64 %119, i64* %RSP_write, !mcsema_real_eip !14
  %121 = call x86_64_sysvcc i64 @_printf(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %90, i64 %93, i64 %96, i64 %99, i64 %102, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117), !mcsema_real_eip !14
  store volatile i64 %121, i64* %RAX_write, !mcsema_real_eip !14
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !15
  %122 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %123 = add i64 %122, -24, !mcsema_real_eip !15
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !15
  %125 = load i64, i64* %124, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RDI_write, !mcsema_real_eip !15
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !16
  %126 = load i64, i64* %RDI_read, !mcsema_real_eip !16
  %127 = add i64 %126, 4, !mcsema_real_eip !16
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !16
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !16
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !16
  %131 = load i32, i32* %130, !mcsema_real_eip !16
  %132 = zext i32 %131 to i64, !mcsema_real_eip !16
  store volatile i64 %132, i64* %ESI_write, !mcsema_real_eip !16
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !17
  %133 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %134 = add i64 %133, -28, !mcsema_real_eip !17
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !17
  %136 = load i32, i32* %EAX_read, !mcsema_real_eip !17
  %137 = ptrtoint i64* %135 to i64, !mcsema_real_eip !17
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !17
  store i32 %136, i32* %138, !mcsema_real_eip !17
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !18
  %139 = load i32, i32* %ESI_read, !mcsema_real_eip !18
  %140 = zext i32 %139 to i64, !mcsema_real_eip !18
  store volatile i64 %140, i64* %EAX_write, !mcsema_real_eip !18
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !19
  %141 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %142 = add i64 32, %141, !mcsema_real_eip !19
  %143 = xor i64 %142, %141, !mcsema_real_eip !19
  %144 = xor i64 %143, 32, !mcsema_real_eip !19
  %145 = and i64 %144, 16, !mcsema_real_eip !19
  %146 = icmp ne i64 %145, 0, !mcsema_real_eip !19
  %147 = zext i1 %146 to i8, !mcsema_real_eip !19
  store volatile i8 %147, i8* %AF_write, !mcsema_real_eip !19
  %148 = lshr i64 %142, 63, !mcsema_real_eip !19
  %149 = trunc i64 %148 to i1, !mcsema_real_eip !19
  %150 = zext i1 %149 to i8, !mcsema_real_eip !19
  %151 = trunc i8 %150 to i1, !mcsema_real_eip !19
  %152 = zext i1 %151 to i8, !mcsema_real_eip !19
  store volatile i8 %152, i8* %SF_write, !mcsema_real_eip !19
  %153 = icmp eq i64 %142, 0, !mcsema_real_eip !19
  %154 = zext i1 %153 to i8, !mcsema_real_eip !19
  store volatile i8 %154, i8* %ZF_write, !mcsema_real_eip !19
  %155 = xor i64 %141, 32, !mcsema_real_eip !19
  %156 = xor i64 %155, -1, !mcsema_real_eip !19
  %157 = xor i64 %141, %142, !mcsema_real_eip !19
  %158 = and i64 %156, %157, !mcsema_real_eip !19
  %159 = lshr i64 %158, 63, !mcsema_real_eip !19
  %160 = and i64 %159, 1, !mcsema_real_eip !19
  %161 = trunc i64 %160 to i1, !mcsema_real_eip !19
  %162 = zext i1 %161 to i8, !mcsema_real_eip !19
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !19
  %164 = zext i1 %163 to i8, !mcsema_real_eip !19
  store volatile i8 %164, i8* %OF_write, !mcsema_real_eip !19
  %165 = trunc i64 %142 to i8, !mcsema_real_eip !19
  %166 = call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !19
  %167 = trunc i8 %166 to i1, !mcsema_real_eip !19
  %168 = zext i1 %167 to i8, !mcsema_real_eip !19
  %169 = xor i8 %168, 1, !mcsema_real_eip !19
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !19
  %171 = zext i1 %170 to i8, !mcsema_real_eip !19
  store volatile i8 %171, i8* %PF_write, !mcsema_real_eip !19
  %172 = icmp ult i64 %142, %141, !mcsema_real_eip !19
  %173 = zext i1 %172 to i8, !mcsema_real_eip !19
  store volatile i8 %173, i8* %CF_write, !mcsema_real_eip !19
  store volatile i64 %142, i64* %RSP_write, !mcsema_real_eip !19
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !20
  %174 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !20
  %176 = load i64, i64* %175, !mcsema_real_eip !20
  store volatile i64 %176, i64* %RBP_write, !mcsema_real_eip !20
  %177 = add i64 %174, 8, !mcsema_real_eip !20
  store volatile i64 %177, i64* %RSP_write, !mcsema_real_eip !20
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !21
  %178 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %179 = add i64 %178, 8, !mcsema_real_eip !21
  %180 = inttoptr i64 %178 to i64*, !mcsema_real_eip !21
  %181 = load i64, i64* %180, !mcsema_real_eip !21
  store volatile i64 %181, i64* %RIP_write, !mcsema_real_eip !21
  store volatile i64 %179, i64* %RSP_write, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
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

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 18}
!5 = !{i64 22}
!6 = !{i64 29}
!7 = !{i64 33}
!8 = !{i64 37}
!9 = !{i64 43}
!10 = !{i64 47}
!11 = !{i64 54}
!12 = !{i64 58}
!13 = !{i64 61}
!14 = !{i64 63}
!15 = !{i64 68}
!16 = !{i64 72}
!17 = !{i64 75}
!18 = !{i64 78}
!19 = !{i64 80}
!20 = !{i64 84}
!21 = !{i64 85}
