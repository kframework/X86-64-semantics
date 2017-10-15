; ModuleID = 'Output/test_28_1.clang.lifted.bc'
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

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_51 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"(\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %7 = sext i8 16 to i64, !mcsema_real_eip !2
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
  %38 = ptrtoint %0* @data_51 to i64, !mcsema_real_eip !3
  %39 = add i64 %38, 0, !mcsema_real_eip !3
  store volatile i64 %39, i64* %RAX_write, !mcsema_real_eip !3
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !4
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %41 = add i64 %40, -4, !mcsema_real_eip !4
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !4
  %43 = load i32, i32* %EDI_read, !mcsema_real_eip !4
  %44 = ptrtoint i64* %42 to i64, !mcsema_real_eip !4
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !4
  store i32 %43, i32* %45, !mcsema_real_eip !4
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !5
  %46 = load i64, i64* %RAX_read, !mcsema_real_eip !5
  store volatile i64 %46, i64* %RDI_write, !mcsema_real_eip !5
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !6
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !6
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !7
  %47 = load i64, i64* %RDI_read, !mcsema_real_eip !7
  %48 = load i64, i64* %RSI_read, !mcsema_real_eip !7
  %49 = load i64, i64* %RDX_read, !mcsema_real_eip !7
  %50 = load i64, i64* %RCX_read, !mcsema_real_eip !7
  %51 = load i64, i64* %R8_read, !mcsema_real_eip !7
  %52 = load i64, i64* %R9_read, !mcsema_real_eip !7
  %53 = load i64, i64* %RSP_read, !mcsema_real_eip !7
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !7
  %55 = load i64, i64* %54, !mcsema_real_eip !7
  %56 = add i64 %53, 8, !mcsema_real_eip !7
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !7
  %58 = load i64, i64* %57, !mcsema_real_eip !7
  %59 = add i64 %56, 8, !mcsema_real_eip !7
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !7
  %61 = load i64, i64* %60, !mcsema_real_eip !7
  %62 = add i64 %59, 8, !mcsema_real_eip !7
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !7
  %64 = load i64, i64* %63, !mcsema_real_eip !7
  %65 = add i64 %62, 8, !mcsema_real_eip !7
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !7
  %67 = load i64, i64* %66, !mcsema_real_eip !7
  %68 = add i64 %65, 8, !mcsema_real_eip !7
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !7
  %70 = load i64, i64* %69, !mcsema_real_eip !7
  %71 = add i64 %68, 8, !mcsema_real_eip !7
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !7
  %73 = load i64, i64* %72, !mcsema_real_eip !7
  %74 = add i64 %71, 8, !mcsema_real_eip !7
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !7
  %76 = load i64, i64* %75, !mcsema_real_eip !7
  %77 = add i64 %74, 8, !mcsema_real_eip !7
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !7
  %79 = load i64, i64* %78, !mcsema_real_eip !7
  %80 = add i64 %77, 8, !mcsema_real_eip !7
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !7
  %82 = load i64, i64* %81, !mcsema_real_eip !7
  %83 = load i64, i64* %RSP_read, !mcsema_real_eip !7
  %84 = sub i64 %83, 8, !mcsema_real_eip !7
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %85, !mcsema_real_eip !7
  store volatile i64 %84, i64* %RSP_write, !mcsema_real_eip !7
  %86 = call x86_64_sysvcc i64 @_printf(i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67, i64 %70, i64 %73, i64 %76, i64 %79, i64 %82), !mcsema_real_eip !7
  store volatile i64 %86, i64* %RAX_write, !mcsema_real_eip !7
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !8
  %87 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %88 = add i64 %87, -8, !mcsema_real_eip !8
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !8
  %90 = load i32, i32* %EAX_read, !mcsema_real_eip !8
  %91 = ptrtoint i64* %89 to i64, !mcsema_real_eip !8
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !8
  store i32 %90, i32* %92, !mcsema_real_eip !8
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !9
  %93 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %94 = add i64 16, %93, !mcsema_real_eip !9
  %95 = xor i64 %94, %93, !mcsema_real_eip !9
  %96 = xor i64 %95, 16, !mcsema_real_eip !9
  %97 = and i64 %96, 16, !mcsema_real_eip !9
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !9
  %99 = zext i1 %98 to i8, !mcsema_real_eip !9
  store volatile i8 %99, i8* %AF_write, !mcsema_real_eip !9
  %100 = lshr i64 %94, 63, !mcsema_real_eip !9
  %101 = trunc i64 %100 to i1, !mcsema_real_eip !9
  %102 = zext i1 %101 to i8, !mcsema_real_eip !9
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !9
  %104 = zext i1 %103 to i8, !mcsema_real_eip !9
  store volatile i8 %104, i8* %SF_write, !mcsema_real_eip !9
  %105 = icmp eq i64 %94, 0, !mcsema_real_eip !9
  %106 = zext i1 %105 to i8, !mcsema_real_eip !9
  store volatile i8 %106, i8* %ZF_write, !mcsema_real_eip !9
  %107 = xor i64 %93, 16, !mcsema_real_eip !9
  %108 = xor i64 %107, -1, !mcsema_real_eip !9
  %109 = xor i64 %93, %94, !mcsema_real_eip !9
  %110 = and i64 %108, %109, !mcsema_real_eip !9
  %111 = lshr i64 %110, 63, !mcsema_real_eip !9
  %112 = and i64 %111, 1, !mcsema_real_eip !9
  %113 = trunc i64 %112 to i1, !mcsema_real_eip !9
  %114 = zext i1 %113 to i8, !mcsema_real_eip !9
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !9
  %116 = zext i1 %115 to i8, !mcsema_real_eip !9
  store volatile i8 %116, i8* %OF_write, !mcsema_real_eip !9
  %117 = trunc i64 %94 to i8, !mcsema_real_eip !9
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !9
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !9
  %120 = zext i1 %119 to i8, !mcsema_real_eip !9
  %121 = xor i8 %120, 1, !mcsema_real_eip !9
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !9
  %123 = zext i1 %122 to i8, !mcsema_real_eip !9
  store volatile i8 %123, i8* %PF_write, !mcsema_real_eip !9
  %124 = icmp ult i64 %94, %93, !mcsema_real_eip !9
  %125 = zext i1 %124 to i8, !mcsema_real_eip !9
  store volatile i8 %125, i8* %CF_write, !mcsema_real_eip !9
  store volatile i64 %94, i64* %RSP_write, !mcsema_real_eip !9
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !10
  %126 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !10
  %128 = load i64, i64* %127, !mcsema_real_eip !10
  store volatile i64 %128, i64* %RBP_write, !mcsema_real_eip !10
  %129 = add i64 %126, 8, !mcsema_real_eip !10
  store volatile i64 %129, i64* %RSP_write, !mcsema_real_eip !10
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !11
  %130 = load i64, i64* %RSP_read, !mcsema_real_eip !11
  %131 = add i64 %130, 8, !mcsema_real_eip !11
  %132 = inttoptr i64 %130 to i64*, !mcsema_real_eip !11
  %133 = load i64, i64* %132, !mcsema_real_eip !11
  store volatile i64 %133, i64* %RIP_write, !mcsema_real_eip !11
  store volatile i64 %131, i64* %RSP_write, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !12
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !12
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !12
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !12
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !12
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !12
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !12
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !12
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !12
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !12
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !12
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !12
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !12
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !12
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !12
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !12
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !12
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !12
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !12
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !12
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !12
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !12
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !12
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !12
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !12
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !12
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !12
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !12
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !12
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !12
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !12
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !12
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !12
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !12
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !12
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !12
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !12
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !12
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !12
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !12
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !12
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !12
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !12
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !12
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !12
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !12
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !12
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !12
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !12
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !12
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !12
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !12
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !12
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !12
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !12
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !12
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !12
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !12
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !12
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !12
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !12
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !12
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !12
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !12
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !12
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !12
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !12
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !12
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !12
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !12
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !12
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !12
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !12
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !12
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !12
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !12
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !12
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !12
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !12
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !12
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !12
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !12
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !12
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !12
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !12
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !12
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !12
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !12
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !12
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !12
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !12
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !12
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !12
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !12
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !12
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !12
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !12
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !12
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !12
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !12
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !12
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !12
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !12
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !12
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !12
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !12
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !12
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !12
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !12
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !12
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !12
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !12
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !12
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !12
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !12
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !12
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !12
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !12
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !12
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !12
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !12
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !12
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !12
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !12
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !12
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !12
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !12
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !12
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !12
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !12
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !12
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !12
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !12
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !12
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !12
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !12
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !12
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !12
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !12
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !12
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !12
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !12
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !12
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !12
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !12
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !12
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !12
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !12
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !12
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !12
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !12
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !12
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !12
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !12
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !12
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !12
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !12
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !12
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !12
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !12
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !12
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !12
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !12
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !12
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !12
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !12
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !12
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !12
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !12
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !12
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !12
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !12
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !12
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !12
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !12
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !12
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !12
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !12
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !12
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !12
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !12
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !12
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !12
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !12
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !12
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !12
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !12
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !12
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !12
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !12
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !12
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !12
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !12
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !12
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !12
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !12
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !12
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !12
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !12
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !12
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !12
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !12
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !12
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !12
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !12
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !12
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !12
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !12
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !12
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !12
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !12
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !12
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !12
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !12
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !12
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !12
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !12
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !12
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !12
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !12
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !12
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !12
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !12
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !12
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !12
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !12
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !12
  br label %block_30, !mcsema_real_eip !12

block_30:                                         ; preds = %entry
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !12
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !12
  %3 = sub i64 %2, 8, !mcsema_real_eip !12
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !12
  store i64 %1, i64* %4, !mcsema_real_eip !12
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !12
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !13
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !13
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !13
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !14
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !14
  %7 = sext i8 16 to i64, !mcsema_real_eip !14
  %8 = sub i64 %6, %7, !mcsema_real_eip !14
  %9 = xor i64 %8, %6, !mcsema_real_eip !14
  %10 = xor i64 %9, %7, !mcsema_real_eip !14
  %11 = and i64 %10, 16, !mcsema_real_eip !14
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !14
  %13 = zext i1 %12 to i8, !mcsema_real_eip !14
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !14
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !14
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !14
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !14
  %17 = zext i1 %16 to i8, !mcsema_real_eip !14
  %18 = xor i8 %17, 1, !mcsema_real_eip !14
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !14
  %20 = zext i1 %19 to i8, !mcsema_real_eip !14
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !14
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !14
  %22 = zext i1 %21 to i8, !mcsema_real_eip !14
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !14
  %23 = lshr i64 %8, 63, !mcsema_real_eip !14
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !14
  %25 = zext i1 %24 to i8, !mcsema_real_eip !14
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !14
  %27 = zext i1 %26 to i8, !mcsema_real_eip !14
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !14
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !14
  %29 = zext i1 %28 to i8, !mcsema_real_eip !14
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !14
  %30 = xor i64 %6, %7, !mcsema_real_eip !14
  %31 = xor i64 %6, %8, !mcsema_real_eip !14
  %32 = and i64 %30, %31, !mcsema_real_eip !14
  %33 = lshr i64 %32, 63, !mcsema_real_eip !14
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !14
  %35 = zext i1 %34 to i8, !mcsema_real_eip !14
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !14
  %37 = zext i1 %36 to i8, !mcsema_real_eip !14
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !14
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !14
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !15
  %38 = zext i32 2 to i64, !mcsema_real_eip !15
  store volatile i64 %38, i64* %EDI_write, !mcsema_real_eip !15
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !16
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %40 = add i64 %39, -4, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !16
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %43, !mcsema_real_eip !16
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !17
  %44 = load i64, i64* %RSP_read, !mcsema_real_eip !17
  %45 = sub i64 %44, 8, !mcsema_real_eip !17
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !17
  store i64 73, i64* %46, !mcsema_real_eip !17
  store volatile i64 %45, i64* %RSP_write, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  store volatile i64 73, i64* %EIP_write, !mcsema_real_eip !18
  %47 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %48 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %49 = xor i32 %47, %48, !mcsema_real_eip !18
  %50 = trunc i8 0 to i1, !mcsema_real_eip !18
  %51 = zext i1 %50 to i8, !mcsema_real_eip !18
  store volatile i8 %51, i8* %CF_write, !mcsema_real_eip !18
  %52 = trunc i8 0 to i1, !mcsema_real_eip !18
  %53 = zext i1 %52 to i8, !mcsema_real_eip !18
  store volatile i8 %53, i8* %OF_write, !mcsema_real_eip !18
  %54 = lshr i32 %49, 31, !mcsema_real_eip !18
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !18
  %56 = zext i1 %55 to i8, !mcsema_real_eip !18
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !18
  %58 = zext i1 %57 to i8, !mcsema_real_eip !18
  store volatile i8 %58, i8* %SF_write, !mcsema_real_eip !18
  %59 = icmp eq i32 %49, 0, !mcsema_real_eip !18
  %60 = zext i1 %59 to i8, !mcsema_real_eip !18
  store volatile i8 %60, i8* %ZF_write, !mcsema_real_eip !18
  %61 = trunc i32 %49 to i8, !mcsema_real_eip !18
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !18
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !18
  %64 = zext i1 %63 to i8, !mcsema_real_eip !18
  %65 = xor i8 %64, 1, !mcsema_real_eip !18
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !18
  %67 = zext i1 %66 to i8, !mcsema_real_eip !18
  store volatile i8 %67, i8* %PF_write, !mcsema_real_eip !18
  %68 = zext i32 %49 to i64, !mcsema_real_eip !18
  store volatile i64 %68, i64* %EAX_write, !mcsema_real_eip !18
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !19
  %69 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %70 = add i64 16, %69, !mcsema_real_eip !19
  %71 = xor i64 %70, %69, !mcsema_real_eip !19
  %72 = xor i64 %71, 16, !mcsema_real_eip !19
  %73 = and i64 %72, 16, !mcsema_real_eip !19
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !19
  %75 = zext i1 %74 to i8, !mcsema_real_eip !19
  store volatile i8 %75, i8* %AF_write, !mcsema_real_eip !19
  %76 = lshr i64 %70, 63, !mcsema_real_eip !19
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !19
  %78 = zext i1 %77 to i8, !mcsema_real_eip !19
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !19
  %80 = zext i1 %79 to i8, !mcsema_real_eip !19
  store volatile i8 %80, i8* %SF_write, !mcsema_real_eip !19
  %81 = icmp eq i64 %70, 0, !mcsema_real_eip !19
  %82 = zext i1 %81 to i8, !mcsema_real_eip !19
  store volatile i8 %82, i8* %ZF_write, !mcsema_real_eip !19
  %83 = xor i64 %69, 16, !mcsema_real_eip !19
  %84 = xor i64 %83, -1, !mcsema_real_eip !19
  %85 = xor i64 %69, %70, !mcsema_real_eip !19
  %86 = and i64 %84, %85, !mcsema_real_eip !19
  %87 = lshr i64 %86, 63, !mcsema_real_eip !19
  %88 = and i64 %87, 1, !mcsema_real_eip !19
  %89 = trunc i64 %88 to i1, !mcsema_real_eip !19
  %90 = zext i1 %89 to i8, !mcsema_real_eip !19
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !19
  %92 = zext i1 %91 to i8, !mcsema_real_eip !19
  store volatile i8 %92, i8* %OF_write, !mcsema_real_eip !19
  %93 = trunc i64 %70 to i8, !mcsema_real_eip !19
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !19
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !19
  %96 = zext i1 %95 to i8, !mcsema_real_eip !19
  %97 = xor i8 %96, 1, !mcsema_real_eip !19
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !19
  %99 = zext i1 %98 to i8, !mcsema_real_eip !19
  store volatile i8 %99, i8* %PF_write, !mcsema_real_eip !19
  %100 = icmp ult i64 %70, %69, !mcsema_real_eip !19
  %101 = zext i1 %100 to i8, !mcsema_real_eip !19
  store volatile i8 %101, i8* %CF_write, !mcsema_real_eip !19
  store volatile i64 %70, i64* %RSP_write, !mcsema_real_eip !19
  store volatile i64 79, i64* %EIP_write, !mcsema_real_eip !20
  %102 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !20
  %104 = load i64, i64* %103, !mcsema_real_eip !20
  store volatile i64 %104, i64* %RBP_write, !mcsema_real_eip !20
  %105 = add i64 %102, 8, !mcsema_real_eip !20
  store volatile i64 %105, i64* %RSP_write, !mcsema_real_eip !20
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !21
  %106 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %107 = add i64 %106, 8, !mcsema_real_eip !21
  %108 = inttoptr i64 %106 to i64*, !mcsema_real_eip !21
  %109 = load i64, i64* %108, !mcsema_real_eip !21
  store volatile i64 %109, i64* %RIP_write, !mcsema_real_eip !21
  store volatile i64 %107, i64* %RSP_write, !mcsema_real_eip !21
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
!5 = !{i64 21}
!6 = !{i64 24}
!7 = !{i64 26}
!8 = !{i64 31}
!9 = !{i64 34}
!10 = !{i64 38}
!11 = !{i64 39}
!12 = !{i64 48}
!13 = !{i64 49}
!14 = !{i64 52}
!15 = !{i64 56}
!16 = !{i64 61}
!17 = !{i64 68}
!18 = !{i64 73}
!19 = !{i64 75}
!20 = !{i64 79}
!21 = !{i64 80}
