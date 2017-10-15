; ModuleID = 'Output/test_25.clang.lifted.bc'
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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

%0 = type <{ [14 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_a4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64
@data_b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\A4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %7 = sext i8 48 to i64, !mcsema_real_eip !2
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
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %39 = add i64 %38, -4, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !3
  store i32 0, i32* %42, !mcsema_real_eip !3
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !4
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %44 = add i64 %43, -8, !mcsema_real_eip !4
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !4
  %46 = load i32, i32* %EDI_read, !mcsema_real_eip !4
  %47 = ptrtoint i64* %45 to i64, !mcsema_real_eip !4
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !4
  store i32 %46, i32* %48, !mcsema_real_eip !4
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !5
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %50 = add i64 %49, -16, !mcsema_real_eip !5
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !5
  %52 = load i64, i64* %RSI_read, !mcsema_real_eip !5
  store i64 %52, i64* %51, !mcsema_real_eip !5
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !6
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %54 = add i64 %53, -20, !mcsema_real_eip !6
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !6
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !6
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %57, !mcsema_real_eip !6
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !7
  %58 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %59 = add i64 %58, -16, !mcsema_real_eip !7
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !7
  %61 = load i64, i64* %60, !mcsema_real_eip !7
  store volatile i64 %61, i64* %RSI_write, !mcsema_real_eip !7
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !8
  %62 = load i64, i64* %RSI_read, !mcsema_real_eip !8
  %63 = add i64 %62, 8, !mcsema_real_eip !8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !8
  %65 = load i64, i64* %64, !mcsema_real_eip !8
  store volatile i64 %65, i64* %RDI_write, !mcsema_real_eip !8
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !9
  %66 = load i64, i64* %RDI_read, !mcsema_real_eip !9
  %67 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %68 = sub i64 %67, 8, !mcsema_real_eip !9
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %69, !mcsema_real_eip !9
  store volatile i64 %68, i64* %RSP_write, !mcsema_real_eip !9
  %70 = call x86_64_sysvcc i64 @_strlen(i64 %66), !mcsema_real_eip !9
  store volatile i64 %70, i64* %RAX_write, !mcsema_real_eip !9
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !10
  %71 = load i32, i32* %EAX_read, !mcsema_real_eip !10
  %72 = zext i32 %71 to i64, !mcsema_real_eip !10
  store volatile i64 %72, i64* %ECX_write, !mcsema_real_eip !10
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !11
  %73 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %74 = add i64 %73, -24, !mcsema_real_eip !11
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !11
  %76 = load i32, i32* %ECX_read, !mcsema_real_eip !11
  %77 = ptrtoint i64* %75 to i64, !mcsema_real_eip !11
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !11
  store i32 %76, i32* %78, !mcsema_real_eip !11
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !12
  %79 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %80 = add i64 %79, -28, !mcsema_real_eip !12
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !12
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !12
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !12
  store i32 0, i32* %83, !mcsema_real_eip !12
  br label %block_36, !mcsema_real_eip !13

block_36:                                         ; preds = %block_42, %block_0
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !13
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %85 = add i64 %84, -28, !mcsema_real_eip !13
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !13
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !13
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !13
  %89 = load i32, i32* %88, !mcsema_real_eip !13
  %90 = zext i32 %89 to i64, !mcsema_real_eip !13
  store volatile i64 %90, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 57, i64* %EIP_write, !mcsema_real_eip !14
  %91 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %92 = add i64 %91, -24, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !14
  %94 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %95 = ptrtoint i64* %93 to i64, !mcsema_real_eip !14
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !14
  %97 = load i32, i32* %96, !mcsema_real_eip !14
  %98 = sub i32 %94, %97, !mcsema_real_eip !14
  %99 = xor i32 %98, %94, !mcsema_real_eip !14
  %100 = xor i32 %99, %97, !mcsema_real_eip !14
  %101 = and i32 %100, 16, !mcsema_real_eip !14
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !14
  %103 = zext i1 %102 to i8, !mcsema_real_eip !14
  store volatile i8 %103, i8* %AF_write, !mcsema_real_eip !14
  %104 = trunc i32 %98 to i8, !mcsema_real_eip !14
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !14
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !14
  %107 = zext i1 %106 to i8, !mcsema_real_eip !14
  %108 = xor i8 %107, 1, !mcsema_real_eip !14
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !14
  %110 = zext i1 %109 to i8, !mcsema_real_eip !14
  store volatile i8 %110, i8* %PF_write, !mcsema_real_eip !14
  %111 = icmp eq i32 %98, 0, !mcsema_real_eip !14
  %112 = zext i1 %111 to i8, !mcsema_real_eip !14
  store volatile i8 %112, i8* %ZF_write, !mcsema_real_eip !14
  %113 = lshr i32 %98, 31, !mcsema_real_eip !14
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !14
  %115 = zext i1 %114 to i8, !mcsema_real_eip !14
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !14
  %117 = zext i1 %116 to i8, !mcsema_real_eip !14
  store volatile i8 %117, i8* %SF_write, !mcsema_real_eip !14
  %118 = icmp ult i32 %94, %97, !mcsema_real_eip !14
  %119 = zext i1 %118 to i8, !mcsema_real_eip !14
  store volatile i8 %119, i8* %CF_write, !mcsema_real_eip !14
  %120 = xor i32 %94, %97, !mcsema_real_eip !14
  %121 = xor i32 %94, %98, !mcsema_real_eip !14
  %122 = and i32 %120, %121, !mcsema_real_eip !14
  %123 = lshr i32 %122, 31, !mcsema_real_eip !14
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !14
  %125 = zext i1 %124 to i8, !mcsema_real_eip !14
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !14
  %127 = zext i1 %126 to i8, !mcsema_real_eip !14
  store volatile i8 %127, i8* %OF_write, !mcsema_real_eip !14
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !15
  %128 = load i8, i8* %SF_read, !mcsema_real_eip !15
  %129 = trunc i8 %128 to i1, !mcsema_real_eip !15
  %130 = load i8, i8* %OF_read, !mcsema_real_eip !15
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !15
  %132 = icmp eq i1 %129, %131, !mcsema_real_eip !15
  br i1 %132, label %block_82, label %block_42, !mcsema_real_eip !15

block_42:                                         ; preds = %block_36
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !16
  %133 = ptrtoint %0* @data_a4 to i64, !mcsema_real_eip !16
  %134 = add i64 %133, 0, !mcsema_real_eip !16
  store volatile i64 %134, i64* %RDI_write, !mcsema_real_eip !16
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !17
  %135 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %136 = add i64 %135, -16, !mcsema_real_eip !17
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !17
  %138 = load i64, i64* %137, !mcsema_real_eip !17
  store volatile i64 %138, i64* %RAX_write, !mcsema_real_eip !17
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !18
  %139 = load i64, i64* %RAX_read, !mcsema_real_eip !18
  %140 = add i64 %139, 8, !mcsema_real_eip !18
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !18
  %142 = load i64, i64* %141, !mcsema_real_eip !18
  store volatile i64 %142, i64* %RSI_write, !mcsema_real_eip !18
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !19
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !19
  store volatile i64 86, i64* %EIP_write, !mcsema_real_eip !20
  %143 = load i64, i64* %RDI_read, !mcsema_real_eip !20
  %144 = load i64, i64* %RSI_read, !mcsema_real_eip !20
  %145 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %146 = sub i64 %145, 8, !mcsema_real_eip !20
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !20
  store i64 -2415393069852865332, i64* %147, !mcsema_real_eip !20
  store volatile i64 %146, i64* %RSP_write, !mcsema_real_eip !20
  %148 = call x86_64_sysvcc i64 @_printf(i64 %143, i64 %144), !mcsema_real_eip !20
  store volatile i64 %148, i64* %RAX_write, !mcsema_real_eip !20
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !21
  %149 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %150 = add i64 %149, -28, !mcsema_real_eip !21
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !21
  %152 = ptrtoint i64* %151 to i64, !mcsema_real_eip !21
  %153 = inttoptr i64 %152 to i32*, !mcsema_real_eip !21
  %154 = load i32, i32* %153, !mcsema_real_eip !21
  %155 = sext i32 %154 to i64, !mcsema_real_eip !21
  store volatile i64 %155, i64* %RSI_write, !mcsema_real_eip !21
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !22
  %156 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %157 = add i64 %156, -16, !mcsema_real_eip !22
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !22
  %159 = load i64, i64* %158, !mcsema_real_eip !22
  store volatile i64 %159, i64* %RDI_write, !mcsema_real_eip !22
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !23
  %160 = load i64, i64* %RDI_read, !mcsema_real_eip !23
  %161 = add i64 %160, 8, !mcsema_real_eip !23
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !23
  %163 = load i64, i64* %162, !mcsema_real_eip !23
  store volatile i64 %163, i64* %RDI_write, !mcsema_real_eip !23
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !24
  %164 = load i64, i64* %RDI_read, !mcsema_real_eip !24
  %165 = add i64 %164, 0, !mcsema_real_eip !24
  %166 = load i64, i64* %RSI_read, !mcsema_real_eip !24
  %167 = add i64 %165, %166, !mcsema_real_eip !24
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !24
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !24
  %170 = inttoptr i64 %169 to i8*, !mcsema_real_eip !24
  %171 = load i8, i8* %170, !mcsema_real_eip !24
  %172 = sext i8 %171 to i32, !mcsema_real_eip !24
  %173 = zext i32 %172 to i64, !mcsema_real_eip !24
  store volatile i64 %173, i64* %ECX_write, !mcsema_real_eip !24
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !25
  %174 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %175 = add i64 %174, -20, !mcsema_real_eip !25
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !25
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !25
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !25
  %179 = load i32, i32* %178, !mcsema_real_eip !25
  %180 = load i32, i32* %ECX_read, !mcsema_real_eip !25
  %181 = add i32 %180, %179, !mcsema_real_eip !25
  %182 = xor i32 %181, %179, !mcsema_real_eip !25
  %183 = xor i32 %182, %180, !mcsema_real_eip !25
  %184 = and i32 %183, 16, !mcsema_real_eip !25
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !25
  %186 = zext i1 %185 to i8, !mcsema_real_eip !25
  store volatile i8 %186, i8* %AF_write, !mcsema_real_eip !25
  %187 = lshr i32 %181, 31, !mcsema_real_eip !25
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !25
  %189 = zext i1 %188 to i8, !mcsema_real_eip !25
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !25
  %191 = zext i1 %190 to i8, !mcsema_real_eip !25
  store volatile i8 %191, i8* %SF_write, !mcsema_real_eip !25
  %192 = icmp eq i32 %181, 0, !mcsema_real_eip !25
  %193 = zext i1 %192 to i8, !mcsema_real_eip !25
  store volatile i8 %193, i8* %ZF_write, !mcsema_real_eip !25
  %194 = xor i32 %179, %180, !mcsema_real_eip !25
  %195 = xor i32 %194, -1, !mcsema_real_eip !25
  %196 = xor i32 %179, %181, !mcsema_real_eip !25
  %197 = and i32 %195, %196, !mcsema_real_eip !25
  %198 = lshr i32 %197, 31, !mcsema_real_eip !25
  %199 = and i32 %198, 1, !mcsema_real_eip !25
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !25
  %201 = zext i1 %200 to i8, !mcsema_real_eip !25
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !25
  %203 = zext i1 %202 to i8, !mcsema_real_eip !25
  store volatile i8 %203, i8* %OF_write, !mcsema_real_eip !25
  %204 = trunc i32 %181 to i8, !mcsema_real_eip !25
  %205 = call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !25
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !25
  %207 = zext i1 %206 to i8, !mcsema_real_eip !25
  %208 = xor i8 %207, 1, !mcsema_real_eip !25
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !25
  %210 = zext i1 %209 to i8, !mcsema_real_eip !25
  store volatile i8 %210, i8* %PF_write, !mcsema_real_eip !25
  %211 = icmp ult i32 %181, %179, !mcsema_real_eip !25
  %212 = zext i1 %211 to i8, !mcsema_real_eip !25
  store volatile i8 %212, i8* %CF_write, !mcsema_real_eip !25
  %213 = zext i32 %181 to i64, !mcsema_real_eip !25
  store volatile i64 %213, i64* %ECX_write, !mcsema_real_eip !25
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !26
  %214 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %215 = add i64 %214, -20, !mcsema_real_eip !26
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !26
  %217 = load i32, i32* %ECX_read, !mcsema_real_eip !26
  %218 = ptrtoint i64* %216 to i64, !mcsema_real_eip !26
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !26
  store i32 %217, i32* %219, !mcsema_real_eip !26
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !27
  %220 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %221 = add i64 %220, -32, !mcsema_real_eip !27
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !27
  %223 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %224 = ptrtoint i64* %222 to i64, !mcsema_real_eip !27
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !27
  store i32 %223, i32* %225, !mcsema_real_eip !27
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !28
  %226 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %227 = add i64 %226, -28, !mcsema_real_eip !28
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !28
  %229 = ptrtoint i64* %228 to i64, !mcsema_real_eip !28
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !28
  %231 = load i32, i32* %230, !mcsema_real_eip !28
  %232 = zext i32 %231 to i64, !mcsema_real_eip !28
  store volatile i64 %232, i64* %EAX_write, !mcsema_real_eip !28
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !29
  %233 = load i32, i32* %EAX_read, !mcsema_real_eip !29
  %234 = add i32 1, %233, !mcsema_real_eip !29
  %235 = xor i32 %234, %233, !mcsema_real_eip !29
  %236 = xor i32 %235, 1, !mcsema_real_eip !29
  %237 = and i32 %236, 16, !mcsema_real_eip !29
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !29
  %239 = zext i1 %238 to i8, !mcsema_real_eip !29
  store volatile i8 %239, i8* %AF_write, !mcsema_real_eip !29
  %240 = lshr i32 %234, 31, !mcsema_real_eip !29
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !29
  %242 = zext i1 %241 to i8, !mcsema_real_eip !29
  %243 = trunc i8 %242 to i1, !mcsema_real_eip !29
  %244 = zext i1 %243 to i8, !mcsema_real_eip !29
  store volatile i8 %244, i8* %SF_write, !mcsema_real_eip !29
  %245 = icmp eq i32 %234, 0, !mcsema_real_eip !29
  %246 = zext i1 %245 to i8, !mcsema_real_eip !29
  store volatile i8 %246, i8* %ZF_write, !mcsema_real_eip !29
  %247 = xor i32 %233, 1, !mcsema_real_eip !29
  %248 = xor i32 %247, -1, !mcsema_real_eip !29
  %249 = xor i32 %233, %234, !mcsema_real_eip !29
  %250 = and i32 %248, %249, !mcsema_real_eip !29
  %251 = lshr i32 %250, 31, !mcsema_real_eip !29
  %252 = and i32 %251, 1, !mcsema_real_eip !29
  %253 = trunc i32 %252 to i1, !mcsema_real_eip !29
  %254 = zext i1 %253 to i8, !mcsema_real_eip !29
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !29
  %256 = zext i1 %255 to i8, !mcsema_real_eip !29
  store volatile i8 %256, i8* %OF_write, !mcsema_real_eip !29
  %257 = trunc i32 %234 to i8, !mcsema_real_eip !29
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !29
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !29
  %260 = zext i1 %259 to i8, !mcsema_real_eip !29
  %261 = xor i8 %260, 1, !mcsema_real_eip !29
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !29
  %263 = zext i1 %262 to i8, !mcsema_real_eip !29
  store volatile i8 %263, i8* %PF_write, !mcsema_real_eip !29
  %264 = icmp ult i32 %234, %233, !mcsema_real_eip !29
  %265 = zext i1 %264 to i8, !mcsema_real_eip !29
  store volatile i8 %265, i8* %CF_write, !mcsema_real_eip !29
  %266 = zext i32 %234 to i64, !mcsema_real_eip !29
  store volatile i64 %266, i64* %EAX_write, !mcsema_real_eip !29
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !30
  %267 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %268 = add i64 %267, -28, !mcsema_real_eip !30
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !30
  %270 = load i32, i32* %EAX_read, !mcsema_real_eip !30
  %271 = ptrtoint i64* %269 to i64, !mcsema_real_eip !30
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !30
  store i32 %270, i32* %272, !mcsema_real_eip !30
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !31
  br label %block_36, !mcsema_real_eip !31

block_82:                                         ; preds = %block_36
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !32
  %273 = ptrtoint %0* @data_a4 to i64, !mcsema_real_eip !32
  %274 = add i64 %273, 10, !mcsema_real_eip !32
  store volatile i64 %274, i64* %RDI_write, !mcsema_real_eip !32
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !33
  %275 = load i64, i64* %RBP_read, !mcsema_real_eip !33
  %276 = add i64 %275, -24, !mcsema_real_eip !33
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !33
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !33
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !33
  %280 = load i32, i32* %279, !mcsema_real_eip !33
  %281 = zext i32 %280 to i64, !mcsema_real_eip !33
  store volatile i64 %281, i64* %ESI_write, !mcsema_real_eip !33
  store volatile i64 143, i64* %EIP_write, !mcsema_real_eip !34
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !34
  store volatile i64 145, i64* %EIP_write, !mcsema_real_eip !35
  %282 = load i64, i64* %RDI_read, !mcsema_real_eip !35
  %283 = load i64, i64* %RSI_read, !mcsema_real_eip !35
  %284 = load i64, i64* %RSP_read, !mcsema_real_eip !35
  %285 = sub i64 %284, 8, !mcsema_real_eip !35
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %286, !mcsema_real_eip !35
  store volatile i64 %285, i64* %RSP_write, !mcsema_real_eip !35
  %287 = call x86_64_sysvcc i64 @_printf(i64 %282, i64 %283), !mcsema_real_eip !35
  store volatile i64 %287, i64* %RAX_write, !mcsema_real_eip !35
  store volatile i64 150, i64* %EIP_write, !mcsema_real_eip !36
  %288 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %289 = add i64 %288, -24, !mcsema_real_eip !36
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !36
  %291 = ptrtoint i64* %290 to i64, !mcsema_real_eip !36
  %292 = inttoptr i64 %291 to i32*, !mcsema_real_eip !36
  %293 = load i32, i32* %292, !mcsema_real_eip !36
  %294 = zext i32 %293 to i64, !mcsema_real_eip !36
  store volatile i64 %294, i64* %ESI_write, !mcsema_real_eip !36
  store volatile i64 153, i64* %EIP_write, !mcsema_real_eip !37
  %295 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %296 = add i64 %295, -36, !mcsema_real_eip !37
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !37
  %298 = load i32, i32* %EAX_read, !mcsema_real_eip !37
  %299 = ptrtoint i64* %297 to i64, !mcsema_real_eip !37
  %300 = inttoptr i64 %299 to i32*, !mcsema_real_eip !37
  store i32 %298, i32* %300, !mcsema_real_eip !37
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !38
  %301 = load i32, i32* %ESI_read, !mcsema_real_eip !38
  %302 = zext i32 %301 to i64, !mcsema_real_eip !38
  store volatile i64 %302, i64* %EAX_write, !mcsema_real_eip !38
  store volatile i64 158, i64* %EIP_write, !mcsema_real_eip !39
  %303 = load i64, i64* %RSP_read, !mcsema_real_eip !39
  %304 = add i64 48, %303, !mcsema_real_eip !39
  %305 = xor i64 %304, %303, !mcsema_real_eip !39
  %306 = xor i64 %305, 48, !mcsema_real_eip !39
  %307 = and i64 %306, 16, !mcsema_real_eip !39
  %308 = icmp ne i64 %307, 0, !mcsema_real_eip !39
  %309 = zext i1 %308 to i8, !mcsema_real_eip !39
  store volatile i8 %309, i8* %AF_write, !mcsema_real_eip !39
  %310 = lshr i64 %304, 63, !mcsema_real_eip !39
  %311 = trunc i64 %310 to i1, !mcsema_real_eip !39
  %312 = zext i1 %311 to i8, !mcsema_real_eip !39
  %313 = trunc i8 %312 to i1, !mcsema_real_eip !39
  %314 = zext i1 %313 to i8, !mcsema_real_eip !39
  store volatile i8 %314, i8* %SF_write, !mcsema_real_eip !39
  %315 = icmp eq i64 %304, 0, !mcsema_real_eip !39
  %316 = zext i1 %315 to i8, !mcsema_real_eip !39
  store volatile i8 %316, i8* %ZF_write, !mcsema_real_eip !39
  %317 = xor i64 %303, 48, !mcsema_real_eip !39
  %318 = xor i64 %317, -1, !mcsema_real_eip !39
  %319 = xor i64 %303, %304, !mcsema_real_eip !39
  %320 = and i64 %318, %319, !mcsema_real_eip !39
  %321 = lshr i64 %320, 63, !mcsema_real_eip !39
  %322 = and i64 %321, 1, !mcsema_real_eip !39
  %323 = trunc i64 %322 to i1, !mcsema_real_eip !39
  %324 = zext i1 %323 to i8, !mcsema_real_eip !39
  %325 = trunc i8 %324 to i1, !mcsema_real_eip !39
  %326 = zext i1 %325 to i8, !mcsema_real_eip !39
  store volatile i8 %326, i8* %OF_write, !mcsema_real_eip !39
  %327 = trunc i64 %304 to i8, !mcsema_real_eip !39
  %328 = call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !39
  %329 = trunc i8 %328 to i1, !mcsema_real_eip !39
  %330 = zext i1 %329 to i8, !mcsema_real_eip !39
  %331 = xor i8 %330, 1, !mcsema_real_eip !39
  %332 = trunc i8 %331 to i1, !mcsema_real_eip !39
  %333 = zext i1 %332 to i8, !mcsema_real_eip !39
  store volatile i8 %333, i8* %PF_write, !mcsema_real_eip !39
  %334 = icmp ult i64 %304, %303, !mcsema_real_eip !39
  %335 = zext i1 %334 to i8, !mcsema_real_eip !39
  store volatile i8 %335, i8* %CF_write, !mcsema_real_eip !39
  store volatile i64 %304, i64* %RSP_write, !mcsema_real_eip !39
  store volatile i64 162, i64* %EIP_write, !mcsema_real_eip !40
  %336 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !40
  %338 = load i64, i64* %337, !mcsema_real_eip !40
  store volatile i64 %338, i64* %RBP_write, !mcsema_real_eip !40
  %339 = add i64 %336, 8, !mcsema_real_eip !40
  store volatile i64 %339, i64* %RSP_write, !mcsema_real_eip !40
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !41
  %340 = load i64, i64* %RSP_read, !mcsema_real_eip !41
  %341 = add i64 %340, 8, !mcsema_real_eip !41
  %342 = inttoptr i64 %340 to i64*, !mcsema_real_eip !41
  %343 = load i64, i64* %342, !mcsema_real_eip !41
  store volatile i64 %343, i64* %RIP_write, !mcsema_real_eip !41
  store volatile i64 %341, i64* %RSP_write, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

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
!4 = !{i64 15}
!5 = !{i64 18}
!6 = !{i64 22}
!7 = !{i64 29}
!8 = !{i64 33}
!9 = !{i64 37}
!10 = !{i64 42}
!11 = !{i64 44}
!12 = !{i64 47}
!13 = !{i64 54}
!14 = !{i64 57}
!15 = !{i64 60}
!16 = !{i64 66}
!17 = !{i64 76}
!18 = !{i64 80}
!19 = !{i64 84}
!20 = !{i64 86}
!21 = !{i64 91}
!22 = !{i64 95}
!23 = !{i64 99}
!24 = !{i64 103}
!25 = !{i64 107}
!26 = !{i64 110}
!27 = !{i64 113}
!28 = !{i64 116}
!29 = !{i64 119}
!30 = !{i64 122}
!31 = !{i64 125}
!32 = !{i64 130}
!33 = !{i64 140}
!34 = !{i64 143}
!35 = !{i64 145}
!36 = !{i64 150}
!37 = !{i64 153}
!38 = !{i64 156}
!39 = !{i64 158}
!40 = !{i64 162}
!41 = !{i64 163}
