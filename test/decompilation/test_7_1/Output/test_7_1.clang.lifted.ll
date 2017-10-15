; ModuleID = 'Output/test_7_1.clang.lifted.bc'
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_b7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_c0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c".\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %7 = add i64 %6, 16, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = load i64, i64* %8, !mcsema_real_eip !2
  store volatile i64 %9, i64* %RAX_write, !mcsema_real_eip !2
  store volatile i64 8, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %11 = add i64 %10, -4, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i32, i32* %EDI_read, !mcsema_real_eip !3
  %14 = ptrtoint i64* %12 to i64, !mcsema_real_eip !3
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !3
  store i32 %13, i32* %15, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %16 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %17 = add i64 %16, -8, !mcsema_real_eip !4
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !4
  %19 = load i32, i32* %ESI_read, !mcsema_real_eip !4
  %20 = ptrtoint i64* %18 to i64, !mcsema_real_eip !4
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !4
  store i32 %19, i32* %21, !mcsema_real_eip !4
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !5
  %22 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %23 = add i64 %22, -12, !mcsema_real_eip !5
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !5
  %25 = load i32, i32* %EDX_read, !mcsema_real_eip !5
  %26 = ptrtoint i64* %24 to i64, !mcsema_real_eip !5
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !5
  store i32 %25, i32* %27, !mcsema_real_eip !5
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !6
  %28 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %29 = add i64 %28, -16, !mcsema_real_eip !6
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !6
  %31 = load i32, i32* %ECX_read, !mcsema_real_eip !6
  %32 = ptrtoint i64* %30 to i64, !mcsema_real_eip !6
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !6
  store i32 %31, i32* %33, !mcsema_real_eip !6
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !7
  %34 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %35 = add i64 %34, -20, !mcsema_real_eip !7
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !7
  %37 = load i32, i32* %R8D_read, !mcsema_real_eip !7
  %38 = ptrtoint i64* %36 to i64, !mcsema_real_eip !7
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !7
  store i32 %37, i32* %39, !mcsema_real_eip !7
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !8
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %41 = add i64 %40, -24, !mcsema_real_eip !8
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !8
  %43 = load i32, i32* %R9D_read, !mcsema_real_eip !8
  %44 = ptrtoint i64* %42 to i64, !mcsema_real_eip !8
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !8
  store i32 %43, i32* %45, !mcsema_real_eip !8
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !9
  %46 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %47 = add i64 %46, -32, !mcsema_real_eip !9
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !9
  %49 = load i64, i64* %RAX_read, !mcsema_real_eip !9
  store i64 %49, i64* %48, !mcsema_real_eip !9
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !10
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %51 = add i64 %50, -32, !mcsema_real_eip !10
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !10
  %53 = load i64, i64* %52, !mcsema_real_eip !10
  store volatile i64 %53, i64* %RAX_write, !mcsema_real_eip !10
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !11
  %54 = load i64, i64* %RAX_read, !mcsema_real_eip !11
  %55 = add i64 %54, 0, !mcsema_real_eip !11
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !11
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !11
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !11
  %59 = load i32, i32* %58, !mcsema_real_eip !11
  %60 = zext i32 %59 to i64, !mcsema_real_eip !11
  store volatile i64 %60, i64* %ECX_write, !mcsema_real_eip !11
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !12
  %61 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %62 = add i64 %61, -36, !mcsema_real_eip !12
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !12
  %64 = load i32, i32* %ECX_read, !mcsema_real_eip !12
  %65 = ptrtoint i64* %63 to i64, !mcsema_real_eip !12
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !12
  store i32 %64, i32* %66, !mcsema_real_eip !12
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !13
  %67 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %68 = add i64 %67, -36, !mcsema_real_eip !13
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !13
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !13
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !13
  %72 = load i32, i32* %71, !mcsema_real_eip !13
  %73 = zext i32 %72 to i64, !mcsema_real_eip !13
  store volatile i64 %73, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !14
  %74 = load i64, i64* %RSP_read, !mcsema_real_eip !14
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !14
  %76 = load i64, i64* %75, !mcsema_real_eip !14
  store volatile i64 %76, i64* %RBP_write, !mcsema_real_eip !14
  %77 = add i64 %74, 8, !mcsema_real_eip !14
  store volatile i64 %77, i64* %RSP_write, !mcsema_real_eip !14
  store volatile i64 45, i64* %EIP_write, !mcsema_real_eip !15
  %78 = load i64, i64* %RSP_read, !mcsema_real_eip !15
  %79 = add i64 %78, 8, !mcsema_real_eip !15
  %80 = inttoptr i64 %78 to i64*, !mcsema_real_eip !15
  %81 = load i64, i64* %80, !mcsema_real_eip !15
  store volatile i64 %81, i64* %RIP_write, !mcsema_real_eip !15
  store volatile i64 %79, i64* %RSP_write, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !16
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !16
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !16
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !16
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !16
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !16
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !16
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !16
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !16
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !16
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !16
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !16
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !16
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !16
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !16
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !16
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !16
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !16
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !16
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !16
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !16
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !16
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !16
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !16
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !16
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !16
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !16
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !16
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !16
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !16
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !16
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !16
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !16
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !16
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !16
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !16
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !16
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !16
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !16
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !16
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !16
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !16
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !16
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !16
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !16
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !16
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !16
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !16
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !16
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !16
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !16
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !16
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !16
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !16
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !16
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !16
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !16
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !16
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !16
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !16
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !16
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !16
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !16
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !16
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !16
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !16
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !16
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !16
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !16
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !16
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !16
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !16
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !16
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !16
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !16
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !16
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !16
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !16
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !16
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !16
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !16
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !16
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !16
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !16
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !16
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !16
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !16
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !16
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !16
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !16
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !16
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !16
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !16
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !16
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !16
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !16
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !16
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !16
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !16
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !16
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !16
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !16
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !16
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !16
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !16
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !16
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !16
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !16
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !16
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !16
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !16
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !16
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !16
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !16
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !16
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !16
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !16
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !16
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !16
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !16
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !16
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !16
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !16
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !16
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !16
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !16
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !16
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !16
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !16
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !16
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !16
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !16
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !16
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !16
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !16
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !16
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !16
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !16
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !16
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !16
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !16
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !16
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !16
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !16
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !16
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !16
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !16
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !16
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !16
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !16
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !16
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !16
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !16
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !16
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !16
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !16
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !16
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !16
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !16
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !16
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !16
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !16
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !16
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !16
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !16
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !16
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !16
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !16
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !16
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !16
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !16
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !16
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !16
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !16
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !16
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !16
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !16
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !16
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !16
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !16
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !16
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !16
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !16
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !16
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !16
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !16
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !16
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !16
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !16
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !16
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !16
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !16
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !16
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !16
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !16
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !16
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !16
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !16
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !16
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !16
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !16
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !16
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !16
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !16
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !16
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !16
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !16
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !16
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !16
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !16
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !16
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !16
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !16
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !16
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !16
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !16
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !16
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !16
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !16
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !16
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !16
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !16
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !16
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !16
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !16
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !16
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !16
  br label %block_30, !mcsema_real_eip !16

block_30:                                         ; preds = %entry
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !16
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !16
  %3 = sub i64 %2, 8, !mcsema_real_eip !16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !16
  store i64 %1, i64* %4, !mcsema_real_eip !16
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !16
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !17
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !17
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !17
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !18
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %7 = sext i8 80 to i64, !mcsema_real_eip !18
  %8 = sub i64 %6, %7, !mcsema_real_eip !18
  %9 = xor i64 %8, %6, !mcsema_real_eip !18
  %10 = xor i64 %9, %7, !mcsema_real_eip !18
  %11 = and i64 %10, 16, !mcsema_real_eip !18
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !18
  %13 = zext i1 %12 to i8, !mcsema_real_eip !18
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !18
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !18
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !18
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !18
  %17 = zext i1 %16 to i8, !mcsema_real_eip !18
  %18 = xor i8 %17, 1, !mcsema_real_eip !18
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !18
  %20 = zext i1 %19 to i8, !mcsema_real_eip !18
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !18
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !18
  %22 = zext i1 %21 to i8, !mcsema_real_eip !18
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !18
  %23 = lshr i64 %8, 63, !mcsema_real_eip !18
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !18
  %25 = zext i1 %24 to i8, !mcsema_real_eip !18
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !18
  %27 = zext i1 %26 to i8, !mcsema_real_eip !18
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !18
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !18
  %29 = zext i1 %28 to i8, !mcsema_real_eip !18
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !18
  %30 = xor i64 %6, %7, !mcsema_real_eip !18
  %31 = xor i64 %6, %8, !mcsema_real_eip !18
  %32 = and i64 %30, %31, !mcsema_real_eip !18
  %33 = lshr i64 %32, 63, !mcsema_real_eip !18
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !18
  %35 = zext i1 %34 to i8, !mcsema_real_eip !18
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !18
  %37 = zext i1 %36 to i8, !mcsema_real_eip !18
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !18
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !18
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !19
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %39 = add i64 %38, -4, !mcsema_real_eip !19
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !19
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !19
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %42, !mcsema_real_eip !19
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !20
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %44 = add i64 %43, -52, !mcsema_real_eip !20
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !20
  %46 = ptrtoint i64* %45 to i64, !mcsema_real_eip !20
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %47, !mcsema_real_eip !20
  br label %block_46, !mcsema_real_eip !21

block_46:                                         ; preds = %block_50, %block_30
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !21
  %48 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %49 = add i64 %48, -52, !mcsema_real_eip !21
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !21
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !21
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !21
  %53 = load i32, i32* %52, !mcsema_real_eip !21
  %54 = sub i32 %53, 10, !mcsema_real_eip !21
  %55 = xor i32 %54, %53, !mcsema_real_eip !21
  %56 = xor i32 %55, 10, !mcsema_real_eip !21
  %57 = and i32 %56, 16, !mcsema_real_eip !21
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !21
  %59 = zext i1 %58 to i8, !mcsema_real_eip !21
  store volatile i8 %59, i8* %AF_write, !mcsema_real_eip !21
  %60 = trunc i32 %54 to i8, !mcsema_real_eip !21
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !21
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !21
  %63 = zext i1 %62 to i8, !mcsema_real_eip !21
  %64 = xor i8 %63, 1, !mcsema_real_eip !21
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !21
  %66 = zext i1 %65 to i8, !mcsema_real_eip !21
  store volatile i8 %66, i8* %PF_write, !mcsema_real_eip !21
  %67 = icmp eq i32 %54, 0, !mcsema_real_eip !21
  %68 = zext i1 %67 to i8, !mcsema_real_eip !21
  store volatile i8 %68, i8* %ZF_write, !mcsema_real_eip !21
  %69 = lshr i32 %54, 31, !mcsema_real_eip !21
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !21
  %71 = zext i1 %70 to i8, !mcsema_real_eip !21
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !21
  %73 = zext i1 %72 to i8, !mcsema_real_eip !21
  store volatile i8 %73, i8* %SF_write, !mcsema_real_eip !21
  %74 = icmp ult i32 %53, 10, !mcsema_real_eip !21
  %75 = zext i1 %74 to i8, !mcsema_real_eip !21
  store volatile i8 %75, i8* %CF_write, !mcsema_real_eip !21
  %76 = xor i32 %53, 10, !mcsema_real_eip !21
  %77 = xor i32 %53, %54, !mcsema_real_eip !21
  %78 = and i32 %76, %77, !mcsema_real_eip !21
  %79 = lshr i32 %78, 31, !mcsema_real_eip !21
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !21
  %81 = zext i1 %80 to i8, !mcsema_real_eip !21
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !21
  %83 = zext i1 %82 to i8, !mcsema_real_eip !21
  store volatile i8 %83, i8* %OF_write, !mcsema_real_eip !21
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !22
  %84 = load i8, i8* %SF_read, !mcsema_real_eip !22
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !22
  %86 = load i8, i8* %OF_read, !mcsema_real_eip !22
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !22
  %88 = icmp eq i1 %85, %87, !mcsema_real_eip !22
  br i1 %88, label %block_6a, label %block_50, !mcsema_real_eip !22

block_50:                                         ; preds = %block_46
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !23
  %89 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %90 = add i64 %89, -52, !mcsema_real_eip !23
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !23
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !23
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !23
  %94 = load i32, i32* %93, !mcsema_real_eip !23
  %95 = sext i32 %94 to i64, !mcsema_real_eip !23
  store volatile i64 %95, i64* %RAX_write, !mcsema_real_eip !23
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !24
  %96 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %97 = add i64 %96, -48, !mcsema_real_eip !24
  %98 = load i64, i64* %RAX_read, !mcsema_real_eip !24
  %99 = mul i64 %98, 4, !mcsema_real_eip !24
  %100 = add i64 %97, %99, !mcsema_real_eip !24
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !24
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !24
  store i32 21, i32* %103, !mcsema_real_eip !24
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !25
  %104 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %105 = add i64 %104, -52, !mcsema_real_eip !25
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !25
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !25
  %109 = load i32, i32* %108, !mcsema_real_eip !25
  %110 = zext i32 %109 to i64, !mcsema_real_eip !25
  store volatile i64 %110, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !26
  %111 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %112 = add i32 1, %111, !mcsema_real_eip !26
  %113 = xor i32 %112, %111, !mcsema_real_eip !26
  %114 = xor i32 %113, 1, !mcsema_real_eip !26
  %115 = and i32 %114, 16, !mcsema_real_eip !26
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !26
  %117 = zext i1 %116 to i8, !mcsema_real_eip !26
  store volatile i8 %117, i8* %AF_write, !mcsema_real_eip !26
  %118 = lshr i32 %112, 31, !mcsema_real_eip !26
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !26
  %120 = zext i1 %119 to i8, !mcsema_real_eip !26
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !26
  %122 = zext i1 %121 to i8, !mcsema_real_eip !26
  store volatile i8 %122, i8* %SF_write, !mcsema_real_eip !26
  %123 = icmp eq i32 %112, 0, !mcsema_real_eip !26
  %124 = zext i1 %123 to i8, !mcsema_real_eip !26
  store volatile i8 %124, i8* %ZF_write, !mcsema_real_eip !26
  %125 = xor i32 %111, 1, !mcsema_real_eip !26
  %126 = xor i32 %125, -1, !mcsema_real_eip !26
  %127 = xor i32 %111, %112, !mcsema_real_eip !26
  %128 = and i32 %126, %127, !mcsema_real_eip !26
  %129 = lshr i32 %128, 31, !mcsema_real_eip !26
  %130 = and i32 %129, 1, !mcsema_real_eip !26
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !26
  %132 = zext i1 %131 to i8, !mcsema_real_eip !26
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !26
  %134 = zext i1 %133 to i8, !mcsema_real_eip !26
  store volatile i8 %134, i8* %OF_write, !mcsema_real_eip !26
  %135 = trunc i32 %112 to i8, !mcsema_real_eip !26
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !26
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !26
  %138 = zext i1 %137 to i8, !mcsema_real_eip !26
  %139 = xor i8 %138, 1, !mcsema_real_eip !26
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !26
  %141 = zext i1 %140 to i8, !mcsema_real_eip !26
  store volatile i8 %141, i8* %PF_write, !mcsema_real_eip !26
  %142 = icmp ult i32 %112, %111, !mcsema_real_eip !26
  %143 = zext i1 %142 to i8, !mcsema_real_eip !26
  store volatile i8 %143, i8* %CF_write, !mcsema_real_eip !26
  %144 = zext i32 %112 to i64, !mcsema_real_eip !26
  store volatile i64 %144, i64* %EAX_write, !mcsema_real_eip !26
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !27
  %145 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %146 = add i64 %145, -52, !mcsema_real_eip !27
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !27
  %148 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %149 = ptrtoint i64* %147 to i64, !mcsema_real_eip !27
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !27
  store i32 %148, i32* %150, !mcsema_real_eip !27
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !28
  br label %block_46, !mcsema_real_eip !28

block_6a:                                         ; preds = %block_46
  store volatile i64 106, i64* %EIP_write, !mcsema_real_eip !29
  %151 = zext i32 10 to i64, !mcsema_real_eip !29
  store volatile i64 %151, i64* %EAX_write, !mcsema_real_eip !29
  store volatile i64 111, i64* %EIP_write, !mcsema_real_eip !30
  %152 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %153 = add i64 %152, -48, !mcsema_real_eip !30
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !30
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !30
  store volatile i64 %155, i64* %RCX_write, !mcsema_real_eip !30
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !31
  %156 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %157 = zext i32 %156 to i64, !mcsema_real_eip !31
  store volatile i64 %157, i64* %EDI_write, !mcsema_real_eip !31
  store volatile i64 117, i64* %EIP_write, !mcsema_real_eip !32
  %158 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %159 = zext i32 %158 to i64, !mcsema_real_eip !32
  store volatile i64 %159, i64* %ESI_write, !mcsema_real_eip !32
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !33
  %160 = load i32, i32* %EAX_read, !mcsema_real_eip !33
  %161 = zext i32 %160 to i64, !mcsema_real_eip !33
  store volatile i64 %161, i64* %EDX_write, !mcsema_real_eip !33
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !34
  %162 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %163 = add i64 %162, -64, !mcsema_real_eip !34
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !34
  %165 = load i64, i64* %RCX_read, !mcsema_real_eip !34
  store i64 %165, i64* %164, !mcsema_real_eip !34
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !35
  %166 = load i32, i32* %EAX_read, !mcsema_real_eip !35
  %167 = zext i32 %166 to i64, !mcsema_real_eip !35
  store volatile i64 %167, i64* %ECX_write, !mcsema_real_eip !35
  store volatile i64 127, i64* %EIP_write, !mcsema_real_eip !36
  %168 = load i32, i32* %EAX_read, !mcsema_real_eip !36
  %169 = zext i32 %168 to i64, !mcsema_real_eip !36
  store volatile i64 %169, i64* %R8D_write, !mcsema_real_eip !36
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !37
  %170 = load i32, i32* %EAX_read, !mcsema_real_eip !37
  %171 = zext i32 %170 to i64, !mcsema_real_eip !37
  store volatile i64 %171, i64* %R9D_write, !mcsema_real_eip !37
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !38
  %172 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %173 = add i64 %172, -64, !mcsema_real_eip !38
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !38
  %175 = load i64, i64* %174, !mcsema_real_eip !38
  store volatile i64 %175, i64* %R10_write, !mcsema_real_eip !38
  store volatile i64 137, i64* %EIP_write, !mcsema_real_eip !39
  %176 = load i64, i64* %RSP_read, !mcsema_real_eip !39
  %177 = add i64 %176, 0, !mcsema_real_eip !39
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !39
  %179 = load i64, i64* %R10_read, !mcsema_real_eip !39
  store i64 %179, i64* %178, !mcsema_real_eip !39
  store volatile i64 141, i64* %EIP_write, !mcsema_real_eip !40
  %180 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %181 = sub i64 %180, 8, !mcsema_real_eip !40
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !40
  store i64 146, i64* %182, !mcsema_real_eip !40
  store volatile i64 %181, i64* %RSP_write, !mcsema_real_eip !40
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !40
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !41
  %183 = ptrtoint %0* @data_b7 to i64, !mcsema_real_eip !41
  %184 = add i64 %183, 0, !mcsema_real_eip !41
  store volatile i64 %184, i64* %RDI_write, !mcsema_real_eip !41
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !42
  %185 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %186 = add i64 %185, -56, !mcsema_real_eip !42
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !42
  %188 = load i32, i32* %EAX_read, !mcsema_real_eip !42
  %189 = ptrtoint i64* %187 to i64, !mcsema_real_eip !42
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !42
  store i32 %188, i32* %190, !mcsema_real_eip !42
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !43
  %191 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %192 = add i64 %191, -56, !mcsema_real_eip !43
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !43
  %194 = ptrtoint i64* %193 to i64, !mcsema_real_eip !43
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !43
  %196 = load i32, i32* %195, !mcsema_real_eip !43
  %197 = zext i32 %196 to i64, !mcsema_real_eip !43
  store volatile i64 %197, i64* %ESI_write, !mcsema_real_eip !43
  store volatile i64 162, i64* %EIP_write, !mcsema_real_eip !44
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !44
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !45
  %198 = load i64, i64* %RDI_read, !mcsema_real_eip !45
  %199 = load i64, i64* %RSI_read, !mcsema_real_eip !45
  %200 = load i64, i64* %RDX_read, !mcsema_real_eip !45
  %201 = load i64, i64* %RCX_read, !mcsema_real_eip !45
  %202 = load i64, i64* %R8_read, !mcsema_real_eip !45
  %203 = load i64, i64* %R9_read, !mcsema_real_eip !45
  %204 = load i64, i64* %RSP_read, !mcsema_real_eip !45
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !45
  %206 = load i64, i64* %205, !mcsema_real_eip !45
  %207 = add i64 %204, 8, !mcsema_real_eip !45
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !45
  %209 = load i64, i64* %208, !mcsema_real_eip !45
  %210 = add i64 %207, 8, !mcsema_real_eip !45
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !45
  %212 = load i64, i64* %211, !mcsema_real_eip !45
  %213 = add i64 %210, 8, !mcsema_real_eip !45
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !45
  %215 = load i64, i64* %214, !mcsema_real_eip !45
  %216 = add i64 %213, 8, !mcsema_real_eip !45
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !45
  %218 = load i64, i64* %217, !mcsema_real_eip !45
  %219 = add i64 %216, 8, !mcsema_real_eip !45
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !45
  %221 = load i64, i64* %220, !mcsema_real_eip !45
  %222 = add i64 %219, 8, !mcsema_real_eip !45
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !45
  %224 = load i64, i64* %223, !mcsema_real_eip !45
  %225 = add i64 %222, 8, !mcsema_real_eip !45
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !45
  %227 = load i64, i64* %226, !mcsema_real_eip !45
  %228 = add i64 %225, 8, !mcsema_real_eip !45
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !45
  %230 = load i64, i64* %229, !mcsema_real_eip !45
  %231 = add i64 %228, 8, !mcsema_real_eip !45
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !45
  %233 = load i64, i64* %232, !mcsema_real_eip !45
  %234 = load i64, i64* %RSP_read, !mcsema_real_eip !45
  %235 = sub i64 %234, 8, !mcsema_real_eip !45
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !45
  store i64 -2415393069852865332, i64* %236, !mcsema_real_eip !45
  store volatile i64 %235, i64* %RSP_write, !mcsema_real_eip !45
  %237 = call x86_64_sysvcc i64 @_printf(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %206, i64 %209, i64 %212, i64 %215, i64 %218, i64 %221, i64 %224, i64 %227, i64 %230, i64 %233), !mcsema_real_eip !45
  store volatile i64 %237, i64* %RAX_write, !mcsema_real_eip !45
  store volatile i64 169, i64* %EIP_write, !mcsema_real_eip !46
  %238 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %239 = add i64 %238, -56, !mcsema_real_eip !46
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !46
  %241 = ptrtoint i64* %240 to i64, !mcsema_real_eip !46
  %242 = inttoptr i64 %241 to i32*, !mcsema_real_eip !46
  %243 = load i32, i32* %242, !mcsema_real_eip !46
  %244 = zext i32 %243 to i64, !mcsema_real_eip !46
  store volatile i64 %244, i64* %ECX_write, !mcsema_real_eip !46
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !47
  %245 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %246 = add i64 %245, -68, !mcsema_real_eip !47
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !47
  %248 = load i32, i32* %EAX_read, !mcsema_real_eip !47
  %249 = ptrtoint i64* %247 to i64, !mcsema_real_eip !47
  %250 = inttoptr i64 %249 to i32*, !mcsema_real_eip !47
  store i32 %248, i32* %250, !mcsema_real_eip !47
  store volatile i64 175, i64* %EIP_write, !mcsema_real_eip !48
  %251 = load i32, i32* %ECX_read, !mcsema_real_eip !48
  %252 = zext i32 %251 to i64, !mcsema_real_eip !48
  store volatile i64 %252, i64* %EAX_write, !mcsema_real_eip !48
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !49
  %253 = load i64, i64* %RSP_read, !mcsema_real_eip !49
  %254 = add i64 80, %253, !mcsema_real_eip !49
  %255 = xor i64 %254, %253, !mcsema_real_eip !49
  %256 = xor i64 %255, 80, !mcsema_real_eip !49
  %257 = and i64 %256, 16, !mcsema_real_eip !49
  %258 = icmp ne i64 %257, 0, !mcsema_real_eip !49
  %259 = zext i1 %258 to i8, !mcsema_real_eip !49
  store volatile i8 %259, i8* %AF_write, !mcsema_real_eip !49
  %260 = lshr i64 %254, 63, !mcsema_real_eip !49
  %261 = trunc i64 %260 to i1, !mcsema_real_eip !49
  %262 = zext i1 %261 to i8, !mcsema_real_eip !49
  %263 = trunc i8 %262 to i1, !mcsema_real_eip !49
  %264 = zext i1 %263 to i8, !mcsema_real_eip !49
  store volatile i8 %264, i8* %SF_write, !mcsema_real_eip !49
  %265 = icmp eq i64 %254, 0, !mcsema_real_eip !49
  %266 = zext i1 %265 to i8, !mcsema_real_eip !49
  store volatile i8 %266, i8* %ZF_write, !mcsema_real_eip !49
  %267 = xor i64 %253, 80, !mcsema_real_eip !49
  %268 = xor i64 %267, -1, !mcsema_real_eip !49
  %269 = xor i64 %253, %254, !mcsema_real_eip !49
  %270 = and i64 %268, %269, !mcsema_real_eip !49
  %271 = lshr i64 %270, 63, !mcsema_real_eip !49
  %272 = and i64 %271, 1, !mcsema_real_eip !49
  %273 = trunc i64 %272 to i1, !mcsema_real_eip !49
  %274 = zext i1 %273 to i8, !mcsema_real_eip !49
  %275 = trunc i8 %274 to i1, !mcsema_real_eip !49
  %276 = zext i1 %275 to i8, !mcsema_real_eip !49
  store volatile i8 %276, i8* %OF_write, !mcsema_real_eip !49
  %277 = trunc i64 %254 to i8, !mcsema_real_eip !49
  %278 = call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !49
  %279 = trunc i8 %278 to i1, !mcsema_real_eip !49
  %280 = zext i1 %279 to i8, !mcsema_real_eip !49
  %281 = xor i8 %280, 1, !mcsema_real_eip !49
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !49
  %283 = zext i1 %282 to i8, !mcsema_real_eip !49
  store volatile i8 %283, i8* %PF_write, !mcsema_real_eip !49
  %284 = icmp ult i64 %254, %253, !mcsema_real_eip !49
  %285 = zext i1 %284 to i8, !mcsema_real_eip !49
  store volatile i8 %285, i8* %CF_write, !mcsema_real_eip !49
  store volatile i64 %254, i64* %RSP_write, !mcsema_real_eip !49
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !50
  %286 = load i64, i64* %RSP_read, !mcsema_real_eip !50
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !50
  %288 = load i64, i64* %287, !mcsema_real_eip !50
  store volatile i64 %288, i64* %RBP_write, !mcsema_real_eip !50
  %289 = add i64 %286, 8, !mcsema_real_eip !50
  store volatile i64 %289, i64* %RSP_write, !mcsema_real_eip !50
  store volatile i64 182, i64* %EIP_write, !mcsema_real_eip !51
  %290 = load i64, i64* %RSP_read, !mcsema_real_eip !51
  %291 = add i64 %290, 8, !mcsema_real_eip !51
  %292 = inttoptr i64 %290 to i64*, !mcsema_real_eip !51
  %293 = load i64, i64* %292, !mcsema_real_eip !51
  store volatile i64 %293, i64* %RIP_write, !mcsema_real_eip !51
  store volatile i64 %291, i64* %RSP_write, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
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
!4 = !{i64 11}
!5 = !{i64 14}
!6 = !{i64 17}
!7 = !{i64 20}
!8 = !{i64 24}
!9 = !{i64 28}
!10 = !{i64 32}
!11 = !{i64 36}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 45}
!16 = !{i64 48}
!17 = !{i64 49}
!18 = !{i64 52}
!19 = !{i64 56}
!20 = !{i64 63}
!21 = !{i64 70}
!22 = !{i64 74}
!23 = !{i64 80}
!24 = !{i64 84}
!25 = !{i64 92}
!26 = !{i64 95}
!27 = !{i64 98}
!28 = !{i64 101}
!29 = !{i64 106}
!30 = !{i64 111}
!31 = !{i64 115}
!32 = !{i64 117}
!33 = !{i64 119}
!34 = !{i64 121}
!35 = !{i64 125}
!36 = !{i64 127}
!37 = !{i64 130}
!38 = !{i64 133}
!39 = !{i64 137}
!40 = !{i64 141}
!41 = !{i64 146}
!42 = !{i64 156}
!43 = !{i64 159}
!44 = !{i64 162}
!45 = !{i64 164}
!46 = !{i64 169}
!47 = !{i64 172}
!48 = !{i64 175}
!49 = !{i64 177}
!50 = !{i64 181}
!51 = !{i64 182}
