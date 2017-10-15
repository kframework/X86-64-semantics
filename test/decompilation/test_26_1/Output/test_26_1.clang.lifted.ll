; ModuleID = 'Output/test_26_1.clang.lifted.bc'
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_162 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_168 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"~\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\E2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %7 = add i64 %6, 24, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = load i64, i64* %8, !mcsema_real_eip !2
  store volatile i64 %9, i64* %RAX_write, !mcsema_real_eip !2
  store volatile i64 8, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %11 = add i64 %10, 16, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i64, i64* %12, !mcsema_real_eip !3
  store volatile i64 %13, i64* %R10_write, !mcsema_real_eip !3
  store volatile i64 12, i64* %EIP_write, !mcsema_real_eip !4
  %14 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %15 = add i64 %14, -20, !mcsema_real_eip !4
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !4
  %17 = load i32, i32* %EDI_read, !mcsema_real_eip !4
  %18 = ptrtoint i64* %16 to i64, !mcsema_real_eip !4
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !4
  store i32 %17, i32* %19, !mcsema_real_eip !4
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !5
  %20 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %21 = add i64 %20, -24, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %23 = load i32, i32* %ESI_read, !mcsema_real_eip !5
  %24 = ptrtoint i64* %22 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 %23, i32* %25, !mcsema_real_eip !5
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !6
  %26 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %27 = add i64 %26, -28, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !6
  %29 = load i32, i32* %EDX_read, !mcsema_real_eip !6
  %30 = ptrtoint i64* %28 to i64, !mcsema_real_eip !6
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !6
  store i32 %29, i32* %31, !mcsema_real_eip !6
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !7
  %32 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %33 = add i64 %32, -32, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  %35 = load i32, i32* %ECX_read, !mcsema_real_eip !7
  %36 = ptrtoint i64* %34 to i64, !mcsema_real_eip !7
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !7
  store i32 %35, i32* %37, !mcsema_real_eip !7
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !8
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %39 = add i64 %38, -36, !mcsema_real_eip !8
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !8
  %41 = load i32, i32* %R8D_read, !mcsema_real_eip !8
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !8
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !8
  store i32 %41, i32* %43, !mcsema_real_eip !8
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !9
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %45 = add i64 %44, -40, !mcsema_real_eip !9
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !9
  %47 = load i32, i32* %R9D_read, !mcsema_real_eip !9
  %48 = ptrtoint i64* %46 to i64, !mcsema_real_eip !9
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !9
  store i32 %47, i32* %49, !mcsema_real_eip !9
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !10
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %51 = add i64 %50, -48, !mcsema_real_eip !10
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !10
  %53 = load i64, i64* %R10_read, !mcsema_real_eip !10
  store i64 %53, i64* %52, !mcsema_real_eip !10
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !11
  %54 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %55 = add i64 %54, -56, !mcsema_real_eip !11
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !11
  %57 = load i64, i64* %RAX_read, !mcsema_real_eip !11
  store i64 %57, i64* %56, !mcsema_real_eip !11
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !12
  %58 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %59 = add i64 %58, -48, !mcsema_real_eip !12
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !12
  %61 = load i64, i64* %60, !mcsema_real_eip !12
  store volatile i64 %61, i64* %R10_write, !mcsema_real_eip !12
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !13
  %62 = load i64, i64* %R10_read, !mcsema_real_eip !13
  %63 = add i64 %62, 0, !mcsema_real_eip !13
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !13
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !13
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !13
  %67 = load i32, i32* %66, !mcsema_real_eip !13
  %68 = zext i32 %67 to i64, !mcsema_real_eip !13
  store volatile i64 %68, i64* %ECX_write, !mcsema_real_eip !13
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !14
  %69 = load i64, i64* %RAX_read, !mcsema_real_eip !14
  %70 = add i64 %69, 0, !mcsema_real_eip !14
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !14
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !14
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !14
  %74 = load i32, i32* %73, !mcsema_real_eip !14
  %75 = zext i32 %74 to i64, !mcsema_real_eip !14
  store volatile i64 %75, i64* %EDX_write, !mcsema_real_eip !14
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !15
  %76 = load i32, i32* %ECX_read, !mcsema_real_eip !15
  %77 = load i32, i32* %EDX_read, !mcsema_real_eip !15
  %78 = add i32 %77, %76, !mcsema_real_eip !15
  %79 = xor i32 %78, %76, !mcsema_real_eip !15
  %80 = xor i32 %79, %77, !mcsema_real_eip !15
  %81 = and i32 %80, 16, !mcsema_real_eip !15
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !15
  %83 = zext i1 %82 to i8, !mcsema_real_eip !15
  store volatile i8 %83, i8* %AF_write, !mcsema_real_eip !15
  %84 = lshr i32 %78, 31, !mcsema_real_eip !15
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !15
  %86 = zext i1 %85 to i8, !mcsema_real_eip !15
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !15
  %88 = zext i1 %87 to i8, !mcsema_real_eip !15
  store volatile i8 %88, i8* %SF_write, !mcsema_real_eip !15
  %89 = icmp eq i32 %78, 0, !mcsema_real_eip !15
  %90 = zext i1 %89 to i8, !mcsema_real_eip !15
  store volatile i8 %90, i8* %ZF_write, !mcsema_real_eip !15
  %91 = xor i32 %76, %77, !mcsema_real_eip !15
  %92 = xor i32 %91, -1, !mcsema_real_eip !15
  %93 = xor i32 %76, %78, !mcsema_real_eip !15
  %94 = and i32 %92, %93, !mcsema_real_eip !15
  %95 = lshr i32 %94, 31, !mcsema_real_eip !15
  %96 = and i32 %95, 1, !mcsema_real_eip !15
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !15
  %98 = zext i1 %97 to i8, !mcsema_real_eip !15
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !15
  %100 = zext i1 %99 to i8, !mcsema_real_eip !15
  store volatile i8 %100, i8* %OF_write, !mcsema_real_eip !15
  %101 = trunc i32 %78 to i8, !mcsema_real_eip !15
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !15
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !15
  %104 = zext i1 %103 to i8, !mcsema_real_eip !15
  %105 = xor i8 %104, 1, !mcsema_real_eip !15
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !15
  %107 = zext i1 %106 to i8, !mcsema_real_eip !15
  store volatile i8 %107, i8* %PF_write, !mcsema_real_eip !15
  %108 = icmp ult i32 %78, %76, !mcsema_real_eip !15
  %109 = zext i1 %108 to i8, !mcsema_real_eip !15
  store volatile i8 %109, i8* %CF_write, !mcsema_real_eip !15
  %110 = zext i32 %78 to i64, !mcsema_real_eip !15
  store volatile i64 %110, i64* %ECX_write, !mcsema_real_eip !15
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !16
  %111 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %112 = add i64 %111, -72, !mcsema_real_eip !16
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !16
  %114 = load i32, i32* %ECX_read, !mcsema_real_eip !16
  %115 = ptrtoint i64* %113 to i64, !mcsema_real_eip !16
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !16
  store i32 %114, i32* %116, !mcsema_real_eip !16
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !17
  %117 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %118 = add i64 %117, -48, !mcsema_real_eip !17
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !17
  %120 = load i64, i64* %119, !mcsema_real_eip !17
  store volatile i64 %120, i64* %RAX_write, !mcsema_real_eip !17
  store volatile i64 58, i64* %EIP_write, !mcsema_real_eip !18
  %121 = load i64, i64* %RAX_read, !mcsema_real_eip !18
  %122 = add i64 %121, 4, !mcsema_real_eip !18
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !18
  %124 = ptrtoint i64* %123 to i64, !mcsema_real_eip !18
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !18
  %126 = load i32, i32* %125, !mcsema_real_eip !18
  %127 = zext i32 %126 to i64, !mcsema_real_eip !18
  store volatile i64 %127, i64* %ECX_write, !mcsema_real_eip !18
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !19
  %128 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %129 = add i64 %128, -56, !mcsema_real_eip !19
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !19
  %131 = load i64, i64* %130, !mcsema_real_eip !19
  store volatile i64 %131, i64* %RAX_write, !mcsema_real_eip !19
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !20
  %132 = load i64, i64* %RAX_read, !mcsema_real_eip !20
  %133 = add i64 %132, 4, !mcsema_real_eip !20
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !20
  %135 = ptrtoint i64* %134 to i64, !mcsema_real_eip !20
  %136 = inttoptr i64 %135 to i32*, !mcsema_real_eip !20
  %137 = load i32, i32* %136, !mcsema_real_eip !20
  %138 = zext i32 %137 to i64, !mcsema_real_eip !20
  store volatile i64 %138, i64* %EDX_write, !mcsema_real_eip !20
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !21
  %139 = load i32, i32* %ECX_read, !mcsema_real_eip !21
  %140 = load i32, i32* %EDX_read, !mcsema_real_eip !21
  %141 = add i32 %140, %139, !mcsema_real_eip !21
  %142 = xor i32 %141, %139, !mcsema_real_eip !21
  %143 = xor i32 %142, %140, !mcsema_real_eip !21
  %144 = and i32 %143, 16, !mcsema_real_eip !21
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !21
  %146 = zext i1 %145 to i8, !mcsema_real_eip !21
  store volatile i8 %146, i8* %AF_write, !mcsema_real_eip !21
  %147 = lshr i32 %141, 31, !mcsema_real_eip !21
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !21
  %149 = zext i1 %148 to i8, !mcsema_real_eip !21
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !21
  %151 = zext i1 %150 to i8, !mcsema_real_eip !21
  store volatile i8 %151, i8* %SF_write, !mcsema_real_eip !21
  %152 = icmp eq i32 %141, 0, !mcsema_real_eip !21
  %153 = zext i1 %152 to i8, !mcsema_real_eip !21
  store volatile i8 %153, i8* %ZF_write, !mcsema_real_eip !21
  %154 = xor i32 %139, %140, !mcsema_real_eip !21
  %155 = xor i32 %154, -1, !mcsema_real_eip !21
  %156 = xor i32 %139, %141, !mcsema_real_eip !21
  %157 = and i32 %155, %156, !mcsema_real_eip !21
  %158 = lshr i32 %157, 31, !mcsema_real_eip !21
  %159 = and i32 %158, 1, !mcsema_real_eip !21
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !21
  %161 = zext i1 %160 to i8, !mcsema_real_eip !21
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !21
  %163 = zext i1 %162 to i8, !mcsema_real_eip !21
  store volatile i8 %163, i8* %OF_write, !mcsema_real_eip !21
  %164 = trunc i32 %141 to i8, !mcsema_real_eip !21
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !21
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !21
  %167 = zext i1 %166 to i8, !mcsema_real_eip !21
  %168 = xor i8 %167, 1, !mcsema_real_eip !21
  %169 = trunc i8 %168 to i1, !mcsema_real_eip !21
  %170 = zext i1 %169 to i8, !mcsema_real_eip !21
  store volatile i8 %170, i8* %PF_write, !mcsema_real_eip !21
  %171 = icmp ult i32 %141, %139, !mcsema_real_eip !21
  %172 = zext i1 %171 to i8, !mcsema_real_eip !21
  store volatile i8 %172, i8* %CF_write, !mcsema_real_eip !21
  %173 = zext i32 %141 to i64, !mcsema_real_eip !21
  store volatile i64 %173, i64* %ECX_write, !mcsema_real_eip !21
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !22
  %174 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %175 = add i64 %174, -68, !mcsema_real_eip !22
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !22
  %177 = load i32, i32* %ECX_read, !mcsema_real_eip !22
  %178 = ptrtoint i64* %176 to i64, !mcsema_real_eip !22
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !22
  store i32 %177, i32* %179, !mcsema_real_eip !22
  store volatile i64 73, i64* %EIP_write, !mcsema_real_eip !23
  %180 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %181 = add i64 %180, -48, !mcsema_real_eip !23
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !23
  %183 = load i64, i64* %182, !mcsema_real_eip !23
  store volatile i64 %183, i64* %RAX_write, !mcsema_real_eip !23
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !24
  %184 = load i64, i64* %RAX_read, !mcsema_real_eip !24
  %185 = add i64 %184, 8, !mcsema_real_eip !24
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !24
  %187 = ptrtoint i64* %186 to i64, !mcsema_real_eip !24
  %188 = inttoptr i64 %187 to i32*, !mcsema_real_eip !24
  %189 = load i32, i32* %188, !mcsema_real_eip !24
  %190 = zext i32 %189 to i64, !mcsema_real_eip !24
  store volatile i64 %190, i64* %ECX_write, !mcsema_real_eip !24
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !25
  %191 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %192 = add i64 %191, -56, !mcsema_real_eip !25
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !25
  %194 = load i64, i64* %193, !mcsema_real_eip !25
  store volatile i64 %194, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !26
  %195 = load i64, i64* %RAX_read, !mcsema_real_eip !26
  %196 = add i64 %195, 8, !mcsema_real_eip !26
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !26
  %198 = ptrtoint i64* %197 to i64, !mcsema_real_eip !26
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !26
  %200 = load i32, i32* %199, !mcsema_real_eip !26
  %201 = zext i32 %200 to i64, !mcsema_real_eip !26
  store volatile i64 %201, i64* %EDX_write, !mcsema_real_eip !26
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !27
  %202 = load i32, i32* %ECX_read, !mcsema_real_eip !27
  %203 = load i32, i32* %EDX_read, !mcsema_real_eip !27
  %204 = add i32 %203, %202, !mcsema_real_eip !27
  %205 = xor i32 %204, %202, !mcsema_real_eip !27
  %206 = xor i32 %205, %203, !mcsema_real_eip !27
  %207 = and i32 %206, 16, !mcsema_real_eip !27
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !27
  %209 = zext i1 %208 to i8, !mcsema_real_eip !27
  store volatile i8 %209, i8* %AF_write, !mcsema_real_eip !27
  %210 = lshr i32 %204, 31, !mcsema_real_eip !27
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !27
  %212 = zext i1 %211 to i8, !mcsema_real_eip !27
  %213 = trunc i8 %212 to i1, !mcsema_real_eip !27
  %214 = zext i1 %213 to i8, !mcsema_real_eip !27
  store volatile i8 %214, i8* %SF_write, !mcsema_real_eip !27
  %215 = icmp eq i32 %204, 0, !mcsema_real_eip !27
  %216 = zext i1 %215 to i8, !mcsema_real_eip !27
  store volatile i8 %216, i8* %ZF_write, !mcsema_real_eip !27
  %217 = xor i32 %202, %203, !mcsema_real_eip !27
  %218 = xor i32 %217, -1, !mcsema_real_eip !27
  %219 = xor i32 %202, %204, !mcsema_real_eip !27
  %220 = and i32 %218, %219, !mcsema_real_eip !27
  %221 = lshr i32 %220, 31, !mcsema_real_eip !27
  %222 = and i32 %221, 1, !mcsema_real_eip !27
  %223 = trunc i32 %222 to i1, !mcsema_real_eip !27
  %224 = zext i1 %223 to i8, !mcsema_real_eip !27
  %225 = trunc i8 %224 to i1, !mcsema_real_eip !27
  %226 = zext i1 %225 to i8, !mcsema_real_eip !27
  store volatile i8 %226, i8* %OF_write, !mcsema_real_eip !27
  %227 = trunc i32 %204 to i8, !mcsema_real_eip !27
  %228 = call i8 @llvm.ctpop.i8(i8 %227), !mcsema_real_eip !27
  %229 = trunc i8 %228 to i1, !mcsema_real_eip !27
  %230 = zext i1 %229 to i8, !mcsema_real_eip !27
  %231 = xor i8 %230, 1, !mcsema_real_eip !27
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !27
  %233 = zext i1 %232 to i8, !mcsema_real_eip !27
  store volatile i8 %233, i8* %PF_write, !mcsema_real_eip !27
  %234 = icmp ult i32 %204, %202, !mcsema_real_eip !27
  %235 = zext i1 %234 to i8, !mcsema_real_eip !27
  store volatile i8 %235, i8* %CF_write, !mcsema_real_eip !27
  %236 = zext i32 %204 to i64, !mcsema_real_eip !27
  store volatile i64 %236, i64* %ECX_write, !mcsema_real_eip !27
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !28
  %237 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %238 = add i64 %237, -64, !mcsema_real_eip !28
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !28
  %240 = load i32, i32* %ECX_read, !mcsema_real_eip !28
  %241 = ptrtoint i64* %239 to i64, !mcsema_real_eip !28
  %242 = inttoptr i64 %241 to i32*, !mcsema_real_eip !28
  store i32 %240, i32* %242, !mcsema_real_eip !28
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !29
  %243 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %244 = add i64 %243, -8, !mcsema_real_eip !29
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !29
  %246 = load i32, i32* %ECX_read, !mcsema_real_eip !29
  %247 = ptrtoint i64* %245 to i64, !mcsema_real_eip !29
  %248 = inttoptr i64 %247 to i32*, !mcsema_real_eip !29
  store i32 %246, i32* %248, !mcsema_real_eip !29
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !30
  %249 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %250 = add i64 %249, -72, !mcsema_real_eip !30
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !30
  %252 = load i64, i64* %251, !mcsema_real_eip !30
  store volatile i64 %252, i64* %RAX_write, !mcsema_real_eip !30
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !31
  %253 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %254 = add i64 %253, -16, !mcsema_real_eip !31
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !31
  %256 = load i64, i64* %RAX_read, !mcsema_real_eip !31
  store i64 %256, i64* %255, !mcsema_real_eip !31
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !32
  %257 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %258 = add i64 %257, -8, !mcsema_real_eip !32
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !32
  %260 = ptrtoint i64* %259 to i64, !mcsema_real_eip !32
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !32
  %262 = load i32, i32* %261, !mcsema_real_eip !32
  %263 = zext i32 %262 to i64, !mcsema_real_eip !32
  store volatile i64 %263, i64* %ECX_write, !mcsema_real_eip !32
  store volatile i64 106, i64* %EIP_write, !mcsema_real_eip !33
  %264 = load i64, i64* %RBP_read, !mcsema_real_eip !33
  %265 = add i64 %264, -80, !mcsema_real_eip !33
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !33
  %267 = load i32, i32* %ECX_read, !mcsema_real_eip !33
  %268 = ptrtoint i64* %266 to i64, !mcsema_real_eip !33
  %269 = inttoptr i64 %268 to i32*, !mcsema_real_eip !33
  store i32 %267, i32* %269, !mcsema_real_eip !33
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !34
  %270 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %271 = add i64 %270, -16, !mcsema_real_eip !34
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !34
  %273 = load i64, i64* %272, !mcsema_real_eip !34
  store volatile i64 %273, i64* %RAX_write, !mcsema_real_eip !34
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !35
  %274 = load i64, i64* %RBP_read, !mcsema_real_eip !35
  %275 = add i64 %274, -88, !mcsema_real_eip !35
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !35
  %277 = load i64, i64* %RAX_read, !mcsema_real_eip !35
  store i64 %277, i64* %276, !mcsema_real_eip !35
  store volatile i64 117, i64* %EIP_write, !mcsema_real_eip !36
  %278 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %279 = add i64 %278, -88, !mcsema_real_eip !36
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !36
  %281 = load i64, i64* %280, !mcsema_real_eip !36
  store volatile i64 %281, i64* %RAX_write, !mcsema_real_eip !36
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !37
  %282 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %283 = add i64 %282, -80, !mcsema_real_eip !37
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !37
  %285 = ptrtoint i64* %284 to i64, !mcsema_real_eip !37
  %286 = inttoptr i64 %285 to i32*, !mcsema_real_eip !37
  %287 = load i32, i32* %286, !mcsema_real_eip !37
  %288 = zext i32 %287 to i64, !mcsema_real_eip !37
  store volatile i64 %288, i64* %EDX_write, !mcsema_real_eip !37
  store volatile i64 124, i64* %EIP_write, !mcsema_real_eip !38
  %289 = load i64, i64* %RSP_read, !mcsema_real_eip !38
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !38
  %291 = load i64, i64* %290, !mcsema_real_eip !38
  store volatile i64 %291, i64* %RBP_write, !mcsema_real_eip !38
  %292 = add i64 %289, 8, !mcsema_real_eip !38
  store volatile i64 %292, i64* %RSP_write, !mcsema_real_eip !38
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !39
  %293 = load i64, i64* %RSP_read, !mcsema_real_eip !39
  %294 = add i64 %293, 8, !mcsema_real_eip !39
  %295 = inttoptr i64 %293 to i64*, !mcsema_real_eip !39
  %296 = load i64, i64* %295, !mcsema_real_eip !39
  store volatile i64 %296, i64* %RIP_write, !mcsema_real_eip !39
  store volatile i64 %294, i64* %RSP_write, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !40
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !40
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !40
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !40
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !40
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !40
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !40
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !40
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !40
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !40
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !40
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !40
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !40
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !40
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !40
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !40
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !40
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !40
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !40
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !40
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !40
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !40
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !40
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !40
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !40
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !40
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !40
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !40
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !40
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !40
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !40
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !40
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !40
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !40
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !40
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !40
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !40
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !40
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !40
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !40
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !40
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !40
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !40
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !40
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !40
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !40
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !40
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !40
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !40
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !40
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !40
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !40
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !40
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !40
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !40
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !40
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !40
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !40
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !40
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !40
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !40
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !40
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !40
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !40
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !40
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !40
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !40
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !40
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !40
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !40
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !40
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !40
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !40
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !40
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !40
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !40
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !40
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !40
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !40
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !40
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !40
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !40
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !40
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !40
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !40
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !40
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !40
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !40
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !40
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !40
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !40
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !40
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !40
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !40
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !40
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !40
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !40
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !40
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !40
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !40
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !40
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !40
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !40
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !40
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !40
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !40
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !40
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !40
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !40
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !40
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !40
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !40
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !40
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !40
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !40
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !40
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !40
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !40
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !40
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !40
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !40
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !40
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !40
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !40
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !40
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !40
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !40
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !40
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !40
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !40
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !40
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !40
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !40
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !40
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !40
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !40
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !40
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !40
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !40
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !40
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !40
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !40
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !40
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !40
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !40
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !40
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !40
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !40
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !40
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !40
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !40
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !40
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !40
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !40
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !40
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !40
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !40
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !40
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !40
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !40
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !40
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !40
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !40
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !40
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !40
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !40
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !40
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !40
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !40
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !40
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !40
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !40
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !40
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !40
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !40
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !40
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !40
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !40
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !40
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !40
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !40
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !40
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !40
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !40
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !40
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !40
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !40
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !40
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !40
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !40
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !40
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !40
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !40
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !40
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !40
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !40
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !40
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !40
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !40
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !40
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !40
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !40
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !40
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !40
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !40
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !40
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !40
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !40
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !40
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !40
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !40
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !40
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !40
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !40
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !40
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !40
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !40
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !40
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !40
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !40
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !40
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !40
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !40
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !40
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !40
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !40
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !40
  br label %block_80, !mcsema_real_eip !40

block_80:                                         ; preds = %entry
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !40
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %3 = sub i64 %2, 8, !mcsema_real_eip !40
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !40
  store i64 %1, i64* %4, !mcsema_real_eip !40
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !40
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !41
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !41
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !41
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !42
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !42
  %7 = sext i8 112 to i64, !mcsema_real_eip !42
  %8 = sub i64 %6, %7, !mcsema_real_eip !42
  %9 = xor i64 %8, %6, !mcsema_real_eip !42
  %10 = xor i64 %9, %7, !mcsema_real_eip !42
  %11 = and i64 %10, 16, !mcsema_real_eip !42
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !42
  %13 = zext i1 %12 to i8, !mcsema_real_eip !42
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !42
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !42
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !42
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !42
  %17 = zext i1 %16 to i8, !mcsema_real_eip !42
  %18 = xor i8 %17, 1, !mcsema_real_eip !42
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !42
  %20 = zext i1 %19 to i8, !mcsema_real_eip !42
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !42
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !42
  %22 = zext i1 %21 to i8, !mcsema_real_eip !42
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !42
  %23 = lshr i64 %8, 63, !mcsema_real_eip !42
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !42
  %25 = zext i1 %24 to i8, !mcsema_real_eip !42
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !42
  %27 = zext i1 %26 to i8, !mcsema_real_eip !42
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !42
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !42
  %29 = zext i1 %28 to i8, !mcsema_real_eip !42
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !42
  %30 = xor i64 %6, %7, !mcsema_real_eip !42
  %31 = xor i64 %6, %8, !mcsema_real_eip !42
  %32 = and i64 %30, %31, !mcsema_real_eip !42
  %33 = lshr i64 %32, 63, !mcsema_real_eip !42
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !42
  %35 = zext i1 %34 to i8, !mcsema_real_eip !42
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !42
  %37 = zext i1 %36 to i8, !mcsema_real_eip !42
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !42
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !42
  store volatile i64 136, i64* %EIP_write, !mcsema_real_eip !43
  %38 = ptrtoint %0* @data_162 to i64, !mcsema_real_eip !43
  %39 = add i64 %38, 0, !mcsema_real_eip !43
  store volatile i64 %39, i64* %RDI_write, !mcsema_real_eip !43
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !44
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %41 = add i64 %40, -4, !mcsema_real_eip !44
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !44
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !44
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !44
  store i32 0, i32* %44, !mcsema_real_eip !44
  store volatile i64 153, i64* %EIP_write, !mcsema_real_eip !45
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %46 = add i64 %45, -16, !mcsema_real_eip !45
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !45
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !45
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !45
  store i32 10, i32* %49, !mcsema_real_eip !45
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !46
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %51 = add i64 %50, -12, !mcsema_real_eip !46
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !46
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !46
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !46
  store i32 10, i32* %54, !mcsema_real_eip !46
  store volatile i64 167, i64* %EIP_write, !mcsema_real_eip !47
  %55 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %56 = add i64 %55, -8, !mcsema_real_eip !47
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !47
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !47
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !47
  store i32 10, i32* %59, !mcsema_real_eip !47
  store volatile i64 174, i64* %EIP_write, !mcsema_real_eip !48
  %60 = zext i32 24 to i64, !mcsema_real_eip !48
  store volatile i64 %60, i64* %EAX_write, !mcsema_real_eip !48
  store volatile i64 179, i64* %EIP_write, !mcsema_real_eip !49
  %61 = load i32, i32* %EAX_read, !mcsema_real_eip !49
  %62 = zext i32 %61 to i64, !mcsema_real_eip !49
  store volatile i64 %62, i64* %ECX_write, !mcsema_real_eip !49
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !50
  %63 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %64 = add i64 %63, -72, !mcsema_real_eip !50
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !50
  %66 = load i64, i64* %RDI_read, !mcsema_real_eip !50
  store i64 %66, i64* %65, !mcsema_real_eip !50
  store volatile i64 185, i64* %EIP_write, !mcsema_real_eip !51
  %67 = load i64, i64* %RCX_read, !mcsema_real_eip !51
  store volatile i64 %67, i64* %RDI_write, !mcsema_real_eip !51
  store volatile i64 188, i64* %EIP_write, !mcsema_real_eip !52
  %68 = load i64, i64* %RDI_read, !mcsema_real_eip !52
  %69 = load i64, i64* %RSP_read, !mcsema_real_eip !52
  %70 = sub i64 %69, 8, !mcsema_real_eip !52
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !52
  store i64 -2415393069852865332, i64* %71, !mcsema_real_eip !52
  store volatile i64 %70, i64* %RSP_write, !mcsema_real_eip !52
  %72 = call x86_64_sysvcc i64 @_malloc(i64 %68), !mcsema_real_eip !52
  store volatile i64 %72, i64* %RAX_write, !mcsema_real_eip !52
  store volatile i64 193, i64* %EIP_write, !mcsema_real_eip !53
  %73 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %74 = add i64 %73, -24, !mcsema_real_eip !53
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !53
  %76 = load i64, i64* %RAX_read, !mcsema_real_eip !53
  store i64 %76, i64* %75, !mcsema_real_eip !53
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !54
  %77 = load i64, i64* %RAX_read, !mcsema_real_eip !54
  %78 = add i64 %77, 0, !mcsema_real_eip !54
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !54
  %80 = ptrtoint i64* %79 to i64, !mcsema_real_eip !54
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !54
  store i32 5, i32* %81, !mcsema_real_eip !54
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !55
  %82 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %83 = add i64 %82, -24, !mcsema_real_eip !55
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !55
  %85 = load i64, i64* %84, !mcsema_real_eip !55
  store volatile i64 %85, i64* %RAX_write, !mcsema_real_eip !55
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !56
  %86 = load i64, i64* %RAX_read, !mcsema_real_eip !56
  %87 = add i64 %86, 4, !mcsema_real_eip !56
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !56
  %89 = ptrtoint i64* %88 to i64, !mcsema_real_eip !56
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !56
  store i32 5, i32* %90, !mcsema_real_eip !56
  store volatile i64 214, i64* %EIP_write, !mcsema_real_eip !57
  %91 = load i64, i64* %RBP_read, !mcsema_real_eip !57
  %92 = add i64 %91, -24, !mcsema_real_eip !57
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !57
  %94 = load i64, i64* %93, !mcsema_real_eip !57
  store volatile i64 %94, i64* %RAX_write, !mcsema_real_eip !57
  store volatile i64 218, i64* %EIP_write, !mcsema_real_eip !58
  %95 = load i64, i64* %RAX_read, !mcsema_real_eip !58
  %96 = add i64 %95, 8, !mcsema_real_eip !58
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !58
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !58
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !58
  store i32 5, i32* %99, !mcsema_real_eip !58
  store volatile i64 225, i64* %EIP_write, !mcsema_real_eip !59
  %100 = load i64, i64* %RBP_read, !mcsema_real_eip !59
  %101 = add i64 %100, -24, !mcsema_real_eip !59
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !59
  %103 = load i64, i64* %102, !mcsema_real_eip !59
  store volatile i64 %103, i64* %RAX_write, !mcsema_real_eip !59
  store volatile i64 229, i64* %EIP_write, !mcsema_real_eip !60
  %104 = load i64, i64* %RSP_read, !mcsema_real_eip !60
  store volatile i64 %104, i64* %RCX_write, !mcsema_real_eip !60
  store volatile i64 232, i64* %EIP_write, !mcsema_real_eip !61
  %105 = load i64, i64* %RCX_read, !mcsema_real_eip !61
  %106 = add i64 %105, 8, !mcsema_real_eip !61
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !61
  %108 = load i64, i64* %RAX_read, !mcsema_real_eip !61
  store i64 %108, i64* %107, !mcsema_real_eip !61
  store volatile i64 236, i64* %EIP_write, !mcsema_real_eip !62
  %109 = load i64, i64* %RBP_read, !mcsema_real_eip !62
  %110 = add i64 %109, -16, !mcsema_real_eip !62
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !62
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !62
  store volatile i64 %112, i64* %RAX_write, !mcsema_real_eip !62
  store volatile i64 240, i64* %EIP_write, !mcsema_real_eip !63
  %113 = load i64, i64* %RCX_read, !mcsema_real_eip !63
  %114 = add i64 %113, 0, !mcsema_real_eip !63
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !63
  %116 = load i64, i64* %RAX_read, !mcsema_real_eip !63
  store i64 %116, i64* %115, !mcsema_real_eip !63
  store volatile i64 243, i64* %EIP_write, !mcsema_real_eip !64
  %117 = zext i32 1 to i64, !mcsema_real_eip !64
  store volatile i64 %117, i64* %EDX_write, !mcsema_real_eip !64
  store volatile i64 248, i64* %EIP_write, !mcsema_real_eip !65
  %118 = zext i32 2 to i64, !mcsema_real_eip !65
  store volatile i64 %118, i64* %ESI_write, !mcsema_real_eip !65
  store volatile i64 253, i64* %EIP_write, !mcsema_real_eip !66
  %119 = zext i32 3 to i64, !mcsema_real_eip !66
  store volatile i64 %119, i64* %R8D_write, !mcsema_real_eip !66
  store volatile i64 259, i64* %EIP_write, !mcsema_real_eip !67
  %120 = load i32, i32* %EDX_read, !mcsema_real_eip !67
  %121 = zext i32 %120 to i64, !mcsema_real_eip !67
  store volatile i64 %121, i64* %EDI_write, !mcsema_real_eip !67
  store volatile i64 261, i64* %EIP_write, !mcsema_real_eip !68
  %122 = load i64, i64* %RBP_read, !mcsema_real_eip !68
  %123 = add i64 %122, -76, !mcsema_real_eip !68
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !68
  %125 = load i32, i32* %ESI_read, !mcsema_real_eip !68
  %126 = ptrtoint i64* %124 to i64, !mcsema_real_eip !68
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !68
  store i32 %125, i32* %127, !mcsema_real_eip !68
  store volatile i64 264, i64* %EIP_write, !mcsema_real_eip !69
  %128 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %129 = add i64 %128, -80, !mcsema_real_eip !69
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !69
  %131 = load i32, i32* %EDX_read, !mcsema_real_eip !69
  %132 = ptrtoint i64* %130 to i64, !mcsema_real_eip !69
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !69
  store i32 %131, i32* %133, !mcsema_real_eip !69
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !70
  %134 = load i32, i32* %R8D_read, !mcsema_real_eip !70
  %135 = zext i32 %134 to i64, !mcsema_real_eip !70
  store volatile i64 %135, i64* %EDX_write, !mcsema_real_eip !70
  store volatile i64 270, i64* %EIP_write, !mcsema_real_eip !71
  %136 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %137 = add i64 %136, -80, !mcsema_real_eip !71
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !71
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !71
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !71
  %141 = load i32, i32* %140, !mcsema_real_eip !71
  %142 = zext i32 %141 to i64, !mcsema_real_eip !71
  store volatile i64 %142, i64* %ECX_write, !mcsema_real_eip !71
  store volatile i64 273, i64* %EIP_write, !mcsema_real_eip !72
  %143 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %144 = add i64 %143, -76, !mcsema_real_eip !72
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !72
  %146 = ptrtoint i64* %145 to i64, !mcsema_real_eip !72
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !72
  %148 = load i32, i32* %147, !mcsema_real_eip !72
  %149 = zext i32 %148 to i64, !mcsema_real_eip !72
  store volatile i64 %149, i64* %R9D_write, !mcsema_real_eip !72
  store volatile i64 277, i64* %EIP_write, !mcsema_real_eip !73
  %150 = load i64, i64* %RBP_read, !mcsema_real_eip !73
  %151 = add i64 %150, -84, !mcsema_real_eip !73
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !73
  %153 = load i32, i32* %R8D_read, !mcsema_real_eip !73
  %154 = ptrtoint i64* %152 to i64, !mcsema_real_eip !73
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !73
  store i32 %153, i32* %155, !mcsema_real_eip !73
  store volatile i64 281, i64* %EIP_write, !mcsema_real_eip !74
  %156 = load i32, i32* %R9D_read, !mcsema_real_eip !74
  %157 = zext i32 %156 to i64, !mcsema_real_eip !74
  store volatile i64 %157, i64* %R8D_write, !mcsema_real_eip !74
  store volatile i64 284, i64* %EIP_write, !mcsema_real_eip !75
  %158 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %159 = add i64 %158, -84, !mcsema_real_eip !75
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !75
  %161 = ptrtoint i64* %160 to i64, !mcsema_real_eip !75
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !75
  %163 = load i32, i32* %162, !mcsema_real_eip !75
  %164 = zext i32 %163 to i64, !mcsema_real_eip !75
  store volatile i64 %164, i64* %R9D_write, !mcsema_real_eip !75
  store volatile i64 288, i64* %EIP_write, !mcsema_real_eip !76
  %165 = load i64, i64* %RSP_read, !mcsema_real_eip !76
  %166 = sub i64 %165, 8, !mcsema_real_eip !76
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !76
  store i64 293, i64* %167, !mcsema_real_eip !76
  store volatile i64 %166, i64* %RSP_write, !mcsema_real_eip !76
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !76
  store volatile i64 293, i64* %EIP_write, !mcsema_real_eip !77
  %168 = load i64, i64* %RBP_read, !mcsema_real_eip !77
  %169 = add i64 %168, -48, !mcsema_real_eip !77
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !77
  %171 = load i32, i32* %EDX_read, !mcsema_real_eip !77
  %172 = ptrtoint i64* %170 to i64, !mcsema_real_eip !77
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !77
  store i32 %171, i32* %173, !mcsema_real_eip !77
  store volatile i64 296, i64* %EIP_write, !mcsema_real_eip !78
  %174 = load i64, i64* %RBP_read, !mcsema_real_eip !78
  %175 = add i64 %174, -56, !mcsema_real_eip !78
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !78
  %177 = load i64, i64* %RAX_read, !mcsema_real_eip !78
  store i64 %177, i64* %176, !mcsema_real_eip !78
  store volatile i64 300, i64* %EIP_write, !mcsema_real_eip !79
  %178 = load i64, i64* %RBP_read, !mcsema_real_eip !79
  %179 = add i64 %178, -56, !mcsema_real_eip !79
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !79
  %181 = load i64, i64* %180, !mcsema_real_eip !79
  store volatile i64 %181, i64* %RAX_write, !mcsema_real_eip !79
  store volatile i64 304, i64* %EIP_write, !mcsema_real_eip !80
  %182 = load i64, i64* %RBP_read, !mcsema_real_eip !80
  %183 = add i64 %182, -40, !mcsema_real_eip !80
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !80
  %185 = load i64, i64* %RAX_read, !mcsema_real_eip !80
  store i64 %185, i64* %184, !mcsema_real_eip !80
  store volatile i64 308, i64* %EIP_write, !mcsema_real_eip !81
  %186 = load i64, i64* %RBP_read, !mcsema_real_eip !81
  %187 = add i64 %186, -48, !mcsema_real_eip !81
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !81
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !81
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !81
  %191 = load i32, i32* %190, !mcsema_real_eip !81
  %192 = zext i32 %191 to i64, !mcsema_real_eip !81
  store volatile i64 %192, i64* %ECX_write, !mcsema_real_eip !81
  store volatile i64 311, i64* %EIP_write, !mcsema_real_eip !82
  %193 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %194 = add i64 %193, -32, !mcsema_real_eip !82
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !82
  %196 = load i32, i32* %ECX_read, !mcsema_real_eip !82
  %197 = ptrtoint i64* %195 to i64, !mcsema_real_eip !82
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !82
  store i32 %196, i32* %198, !mcsema_real_eip !82
  store volatile i64 314, i64* %EIP_write, !mcsema_real_eip !83
  %199 = load i64, i64* %RBP_read, !mcsema_real_eip !83
  %200 = add i64 %199, -40, !mcsema_real_eip !83
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !83
  %202 = ptrtoint i64* %201 to i64, !mcsema_real_eip !83
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !83
  %204 = load i32, i32* %203, !mcsema_real_eip !83
  %205 = zext i32 %204 to i64, !mcsema_real_eip !83
  store volatile i64 %205, i64* %ECX_write, !mcsema_real_eip !83
  store volatile i64 317, i64* %EIP_write, !mcsema_real_eip !84
  %206 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %207 = add i64 %206, -36, !mcsema_real_eip !84
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !84
  %209 = ptrtoint i64* %208 to i64, !mcsema_real_eip !84
  %210 = inttoptr i64 %209 to i32*, !mcsema_real_eip !84
  %211 = load i32, i32* %210, !mcsema_real_eip !84
  %212 = load i32, i32* %ECX_read, !mcsema_real_eip !84
  %213 = add i32 %212, %211, !mcsema_real_eip !84
  %214 = xor i32 %213, %211, !mcsema_real_eip !84
  %215 = xor i32 %214, %212, !mcsema_real_eip !84
  %216 = and i32 %215, 16, !mcsema_real_eip !84
  %217 = icmp ne i32 %216, 0, !mcsema_real_eip !84
  %218 = zext i1 %217 to i8, !mcsema_real_eip !84
  store volatile i8 %218, i8* %AF_write, !mcsema_real_eip !84
  %219 = lshr i32 %213, 31, !mcsema_real_eip !84
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !84
  %221 = zext i1 %220 to i8, !mcsema_real_eip !84
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !84
  %223 = zext i1 %222 to i8, !mcsema_real_eip !84
  store volatile i8 %223, i8* %SF_write, !mcsema_real_eip !84
  %224 = icmp eq i32 %213, 0, !mcsema_real_eip !84
  %225 = zext i1 %224 to i8, !mcsema_real_eip !84
  store volatile i8 %225, i8* %ZF_write, !mcsema_real_eip !84
  %226 = xor i32 %211, %212, !mcsema_real_eip !84
  %227 = xor i32 %226, -1, !mcsema_real_eip !84
  %228 = xor i32 %211, %213, !mcsema_real_eip !84
  %229 = and i32 %227, %228, !mcsema_real_eip !84
  %230 = lshr i32 %229, 31, !mcsema_real_eip !84
  %231 = and i32 %230, 1, !mcsema_real_eip !84
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !84
  %233 = zext i1 %232 to i8, !mcsema_real_eip !84
  %234 = trunc i8 %233 to i1, !mcsema_real_eip !84
  %235 = zext i1 %234 to i8, !mcsema_real_eip !84
  store volatile i8 %235, i8* %OF_write, !mcsema_real_eip !84
  %236 = trunc i32 %213 to i8, !mcsema_real_eip !84
  %237 = call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !84
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !84
  %239 = zext i1 %238 to i8, !mcsema_real_eip !84
  %240 = xor i8 %239, 1, !mcsema_real_eip !84
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !84
  %242 = zext i1 %241 to i8, !mcsema_real_eip !84
  store volatile i8 %242, i8* %PF_write, !mcsema_real_eip !84
  %243 = icmp ult i32 %213, %211, !mcsema_real_eip !84
  %244 = zext i1 %243 to i8, !mcsema_real_eip !84
  store volatile i8 %244, i8* %CF_write, !mcsema_real_eip !84
  %245 = zext i32 %213 to i64, !mcsema_real_eip !84
  store volatile i64 %245, i64* %ECX_write, !mcsema_real_eip !84
  store volatile i64 320, i64* %EIP_write, !mcsema_real_eip !85
  %246 = load i64, i64* %RBP_read, !mcsema_real_eip !85
  %247 = add i64 %246, -32, !mcsema_real_eip !85
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !85
  %249 = ptrtoint i64* %248 to i64, !mcsema_real_eip !85
  %250 = inttoptr i64 %249 to i32*, !mcsema_real_eip !85
  %251 = load i32, i32* %250, !mcsema_real_eip !85
  %252 = load i32, i32* %ECX_read, !mcsema_real_eip !85
  %253 = add i32 %252, %251, !mcsema_real_eip !85
  %254 = xor i32 %253, %251, !mcsema_real_eip !85
  %255 = xor i32 %254, %252, !mcsema_real_eip !85
  %256 = and i32 %255, 16, !mcsema_real_eip !85
  %257 = icmp ne i32 %256, 0, !mcsema_real_eip !85
  %258 = zext i1 %257 to i8, !mcsema_real_eip !85
  store volatile i8 %258, i8* %AF_write, !mcsema_real_eip !85
  %259 = lshr i32 %253, 31, !mcsema_real_eip !85
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !85
  %261 = zext i1 %260 to i8, !mcsema_real_eip !85
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !85
  %263 = zext i1 %262 to i8, !mcsema_real_eip !85
  store volatile i8 %263, i8* %SF_write, !mcsema_real_eip !85
  %264 = icmp eq i32 %253, 0, !mcsema_real_eip !85
  %265 = zext i1 %264 to i8, !mcsema_real_eip !85
  store volatile i8 %265, i8* %ZF_write, !mcsema_real_eip !85
  %266 = xor i32 %251, %252, !mcsema_real_eip !85
  %267 = xor i32 %266, -1, !mcsema_real_eip !85
  %268 = xor i32 %251, %253, !mcsema_real_eip !85
  %269 = and i32 %267, %268, !mcsema_real_eip !85
  %270 = lshr i32 %269, 31, !mcsema_real_eip !85
  %271 = and i32 %270, 1, !mcsema_real_eip !85
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !85
  %273 = zext i1 %272 to i8, !mcsema_real_eip !85
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !85
  %275 = zext i1 %274 to i8, !mcsema_real_eip !85
  store volatile i8 %275, i8* %OF_write, !mcsema_real_eip !85
  %276 = trunc i32 %253 to i8, !mcsema_real_eip !85
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !85
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !85
  %279 = zext i1 %278 to i8, !mcsema_real_eip !85
  %280 = xor i8 %279, 1, !mcsema_real_eip !85
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !85
  %282 = zext i1 %281 to i8, !mcsema_real_eip !85
  store volatile i8 %282, i8* %PF_write, !mcsema_real_eip !85
  %283 = icmp ult i32 %253, %251, !mcsema_real_eip !85
  %284 = zext i1 %283 to i8, !mcsema_real_eip !85
  store volatile i8 %284, i8* %CF_write, !mcsema_real_eip !85
  %285 = zext i32 %253 to i64, !mcsema_real_eip !85
  store volatile i64 %285, i64* %ECX_write, !mcsema_real_eip !85
  store volatile i64 323, i64* %EIP_write, !mcsema_real_eip !86
  %286 = load i64, i64* %RBP_read, !mcsema_real_eip !86
  %287 = add i64 %286, -60, !mcsema_real_eip !86
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !86
  %289 = load i32, i32* %ECX_read, !mcsema_real_eip !86
  %290 = ptrtoint i64* %288 to i64, !mcsema_real_eip !86
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !86
  store i32 %289, i32* %291, !mcsema_real_eip !86
  store volatile i64 326, i64* %EIP_write, !mcsema_real_eip !87
  %292 = load i64, i64* %RBP_read, !mcsema_real_eip !87
  %293 = add i64 %292, -60, !mcsema_real_eip !87
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !87
  %295 = ptrtoint i64* %294 to i64, !mcsema_real_eip !87
  %296 = inttoptr i64 %295 to i32*, !mcsema_real_eip !87
  %297 = load i32, i32* %296, !mcsema_real_eip !87
  %298 = zext i32 %297 to i64, !mcsema_real_eip !87
  store volatile i64 %298, i64* %ESI_write, !mcsema_real_eip !87
  store volatile i64 329, i64* %EIP_write, !mcsema_real_eip !88
  %299 = load i64, i64* %RBP_read, !mcsema_real_eip !88
  %300 = add i64 %299, -72, !mcsema_real_eip !88
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !88
  %302 = load i64, i64* %301, !mcsema_real_eip !88
  store volatile i64 %302, i64* %RDI_write, !mcsema_real_eip !88
  store volatile i64 333, i64* %EIP_write, !mcsema_real_eip !89
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !89
  store volatile i64 335, i64* %EIP_write, !mcsema_real_eip !90
  %303 = load i64, i64* %RDI_read, !mcsema_real_eip !90
  %304 = load i64, i64* %RSI_read, !mcsema_real_eip !90
  %305 = load i64, i64* %RDX_read, !mcsema_real_eip !90
  %306 = load i64, i64* %RCX_read, !mcsema_real_eip !90
  %307 = load i64, i64* %R8_read, !mcsema_real_eip !90
  %308 = load i64, i64* %R9_read, !mcsema_real_eip !90
  %309 = load i64, i64* %RSP_read, !mcsema_real_eip !90
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !90
  %311 = load i64, i64* %310, !mcsema_real_eip !90
  %312 = add i64 %309, 8, !mcsema_real_eip !90
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !90
  %314 = load i64, i64* %313, !mcsema_real_eip !90
  %315 = add i64 %312, 8, !mcsema_real_eip !90
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !90
  %317 = load i64, i64* %316, !mcsema_real_eip !90
  %318 = add i64 %315, 8, !mcsema_real_eip !90
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !90
  %320 = load i64, i64* %319, !mcsema_real_eip !90
  %321 = add i64 %318, 8, !mcsema_real_eip !90
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !90
  %323 = load i64, i64* %322, !mcsema_real_eip !90
  %324 = add i64 %321, 8, !mcsema_real_eip !90
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !90
  %326 = load i64, i64* %325, !mcsema_real_eip !90
  %327 = add i64 %324, 8, !mcsema_real_eip !90
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !90
  %329 = load i64, i64* %328, !mcsema_real_eip !90
  %330 = add i64 %327, 8, !mcsema_real_eip !90
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !90
  %332 = load i64, i64* %331, !mcsema_real_eip !90
  %333 = add i64 %330, 8, !mcsema_real_eip !90
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !90
  %335 = load i64, i64* %334, !mcsema_real_eip !90
  %336 = add i64 %333, 8, !mcsema_real_eip !90
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !90
  %338 = load i64, i64* %337, !mcsema_real_eip !90
  %339 = load i64, i64* %RSP_read, !mcsema_real_eip !90
  %340 = sub i64 %339, 8, !mcsema_real_eip !90
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !90
  store i64 -2415393069852865332, i64* %341, !mcsema_real_eip !90
  store volatile i64 %340, i64* %RSP_write, !mcsema_real_eip !90
  %342 = call x86_64_sysvcc i64 @_printf(i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %311, i64 %314, i64 %317, i64 %320, i64 %323, i64 %326, i64 %329, i64 %332, i64 %335, i64 %338), !mcsema_real_eip !90
  store volatile i64 %342, i64* %RAX_write, !mcsema_real_eip !90
  store volatile i64 340, i64* %EIP_write, !mcsema_real_eip !91
  %343 = load i64, i64* %RBP_read, !mcsema_real_eip !91
  %344 = add i64 %343, -60, !mcsema_real_eip !91
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !91
  %346 = ptrtoint i64* %345 to i64, !mcsema_real_eip !91
  %347 = inttoptr i64 %346 to i32*, !mcsema_real_eip !91
  %348 = load i32, i32* %347, !mcsema_real_eip !91
  %349 = zext i32 %348 to i64, !mcsema_real_eip !91
  store volatile i64 %349, i64* %ECX_write, !mcsema_real_eip !91
  store volatile i64 343, i64* %EIP_write, !mcsema_real_eip !92
  %350 = load i64, i64* %RBP_read, !mcsema_real_eip !92
  %351 = add i64 %350, -88, !mcsema_real_eip !92
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !92
  %353 = load i32, i32* %EAX_read, !mcsema_real_eip !92
  %354 = ptrtoint i64* %352 to i64, !mcsema_real_eip !92
  %355 = inttoptr i64 %354 to i32*, !mcsema_real_eip !92
  store i32 %353, i32* %355, !mcsema_real_eip !92
  store volatile i64 346, i64* %EIP_write, !mcsema_real_eip !93
  %356 = load i32, i32* %ECX_read, !mcsema_real_eip !93
  %357 = zext i32 %356 to i64, !mcsema_real_eip !93
  store volatile i64 %357, i64* %EAX_write, !mcsema_real_eip !93
  store volatile i64 348, i64* %EIP_write, !mcsema_real_eip !94
  %358 = load i64, i64* %RSP_read, !mcsema_real_eip !94
  %359 = add i64 112, %358, !mcsema_real_eip !94
  %360 = xor i64 %359, %358, !mcsema_real_eip !94
  %361 = xor i64 %360, 112, !mcsema_real_eip !94
  %362 = and i64 %361, 16, !mcsema_real_eip !94
  %363 = icmp ne i64 %362, 0, !mcsema_real_eip !94
  %364 = zext i1 %363 to i8, !mcsema_real_eip !94
  store volatile i8 %364, i8* %AF_write, !mcsema_real_eip !94
  %365 = lshr i64 %359, 63, !mcsema_real_eip !94
  %366 = trunc i64 %365 to i1, !mcsema_real_eip !94
  %367 = zext i1 %366 to i8, !mcsema_real_eip !94
  %368 = trunc i8 %367 to i1, !mcsema_real_eip !94
  %369 = zext i1 %368 to i8, !mcsema_real_eip !94
  store volatile i8 %369, i8* %SF_write, !mcsema_real_eip !94
  %370 = icmp eq i64 %359, 0, !mcsema_real_eip !94
  %371 = zext i1 %370 to i8, !mcsema_real_eip !94
  store volatile i8 %371, i8* %ZF_write, !mcsema_real_eip !94
  %372 = xor i64 %358, 112, !mcsema_real_eip !94
  %373 = xor i64 %372, -1, !mcsema_real_eip !94
  %374 = xor i64 %358, %359, !mcsema_real_eip !94
  %375 = and i64 %373, %374, !mcsema_real_eip !94
  %376 = lshr i64 %375, 63, !mcsema_real_eip !94
  %377 = and i64 %376, 1, !mcsema_real_eip !94
  %378 = trunc i64 %377 to i1, !mcsema_real_eip !94
  %379 = zext i1 %378 to i8, !mcsema_real_eip !94
  %380 = trunc i8 %379 to i1, !mcsema_real_eip !94
  %381 = zext i1 %380 to i8, !mcsema_real_eip !94
  store volatile i8 %381, i8* %OF_write, !mcsema_real_eip !94
  %382 = trunc i64 %359 to i8, !mcsema_real_eip !94
  %383 = call i8 @llvm.ctpop.i8(i8 %382), !mcsema_real_eip !94
  %384 = trunc i8 %383 to i1, !mcsema_real_eip !94
  %385 = zext i1 %384 to i8, !mcsema_real_eip !94
  %386 = xor i8 %385, 1, !mcsema_real_eip !94
  %387 = trunc i8 %386 to i1, !mcsema_real_eip !94
  %388 = zext i1 %387 to i8, !mcsema_real_eip !94
  store volatile i8 %388, i8* %PF_write, !mcsema_real_eip !94
  %389 = icmp ult i64 %359, %358, !mcsema_real_eip !94
  %390 = zext i1 %389 to i8, !mcsema_real_eip !94
  store volatile i8 %390, i8* %CF_write, !mcsema_real_eip !94
  store volatile i64 %359, i64* %RSP_write, !mcsema_real_eip !94
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !95
  %391 = load i64, i64* %RSP_read, !mcsema_real_eip !95
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !95
  %393 = load i64, i64* %392, !mcsema_real_eip !95
  store volatile i64 %393, i64* %RBP_write, !mcsema_real_eip !95
  %394 = add i64 %391, 8, !mcsema_real_eip !95
  store volatile i64 %394, i64* %RSP_write, !mcsema_real_eip !95
  store volatile i64 353, i64* %EIP_write, !mcsema_real_eip !96
  %395 = load i64, i64* %RSP_read, !mcsema_real_eip !96
  %396 = add i64 %395, 8, !mcsema_real_eip !96
  %397 = inttoptr i64 %395 to i64*, !mcsema_real_eip !96
  %398 = load i64, i64* %397, !mcsema_real_eip !96
  store volatile i64 %398, i64* %RIP_write, !mcsema_real_eip !96
  store volatile i64 %396, i64* %RSP_write, !mcsema_real_eip !96
  ret void, !mcsema_real_eip !96
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

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
!4 = !{i64 12}
!5 = !{i64 15}
!6 = !{i64 18}
!7 = !{i64 21}
!8 = !{i64 24}
!9 = !{i64 28}
!10 = !{i64 32}
!11 = !{i64 36}
!12 = !{i64 40}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 49}
!16 = !{i64 51}
!17 = !{i64 54}
!18 = !{i64 58}
!19 = !{i64 61}
!20 = !{i64 65}
!21 = !{i64 68}
!22 = !{i64 70}
!23 = !{i64 73}
!24 = !{i64 77}
!25 = !{i64 80}
!26 = !{i64 84}
!27 = !{i64 87}
!28 = !{i64 89}
!29 = !{i64 92}
!30 = !{i64 95}
!31 = !{i64 99}
!32 = !{i64 103}
!33 = !{i64 106}
!34 = !{i64 109}
!35 = !{i64 113}
!36 = !{i64 117}
!37 = !{i64 121}
!38 = !{i64 124}
!39 = !{i64 125}
!40 = !{i64 128}
!41 = !{i64 129}
!42 = !{i64 132}
!43 = !{i64 136}
!44 = !{i64 146}
!45 = !{i64 153}
!46 = !{i64 160}
!47 = !{i64 167}
!48 = !{i64 174}
!49 = !{i64 179}
!50 = !{i64 181}
!51 = !{i64 185}
!52 = !{i64 188}
!53 = !{i64 193}
!54 = !{i64 197}
!55 = !{i64 203}
!56 = !{i64 207}
!57 = !{i64 214}
!58 = !{i64 218}
!59 = !{i64 225}
!60 = !{i64 229}
!61 = !{i64 232}
!62 = !{i64 236}
!63 = !{i64 240}
!64 = !{i64 243}
!65 = !{i64 248}
!66 = !{i64 253}
!67 = !{i64 259}
!68 = !{i64 261}
!69 = !{i64 264}
!70 = !{i64 267}
!71 = !{i64 270}
!72 = !{i64 273}
!73 = !{i64 277}
!74 = !{i64 281}
!75 = !{i64 284}
!76 = !{i64 288}
!77 = !{i64 293}
!78 = !{i64 296}
!79 = !{i64 300}
!80 = !{i64 304}
!81 = !{i64 308}
!82 = !{i64 311}
!83 = !{i64 314}
!84 = !{i64 317}
!85 = !{i64 320}
!86 = !{i64 323}
!87 = !{i64 326}
!88 = !{i64 329}
!89 = !{i64 333}
!90 = !{i64 335}
!91 = !{i64 340}
!92 = !{i64 343}
!93 = !{i64 346}
!94 = !{i64 348}
!95 = !{i64 352}
!96 = !{i64 353}
