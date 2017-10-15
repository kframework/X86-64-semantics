; ModuleID = 'Output/test_26.clang.lifted.bc'
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
module asm "  .globl sub_110;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_110(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_20d = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\0C\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\FD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %6 = load i64, i64* %RBX_read, !mcsema_real_eip !2
  %7 = load i64, i64* %RSP_read, !mcsema_real_eip !2
  %8 = sub i64 %7, 8, !mcsema_real_eip !2
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %9, !mcsema_real_eip !2
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !2
  store volatile i64 5, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %11 = add i64 %10, 48, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i64, i64* %12, !mcsema_real_eip !3
  store volatile i64 %13, i64* %RAX_write, !mcsema_real_eip !3
  store volatile i64 9, i64* %EIP_write, !mcsema_real_eip !4
  %14 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %15 = add i64 %14, 40, !mcsema_real_eip !4
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !4
  %17 = load i64, i64* %16, !mcsema_real_eip !4
  store volatile i64 %17, i64* %R10_write, !mcsema_real_eip !4
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !5
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %19 = add i64 %18, 24, !mcsema_real_eip !5
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !5
  %21 = ptrtoint i64* %20 to i64, !mcsema_real_eip !5
  store volatile i64 %21, i64* %R11_write, !mcsema_real_eip !5
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !6
  %22 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %23 = add i64 %22, 16, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !6
  %27 = load i32, i32* %26, !mcsema_real_eip !6
  %28 = zext i32 %27 to i64, !mcsema_real_eip !6
  store volatile i64 %28, i64* %EBX_write, !mcsema_real_eip !6
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !7
  %29 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %30 = add i64 %29, -56, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = load i64, i64* %RDI_read, !mcsema_real_eip !7
  store i64 %32, i64* %31, !mcsema_real_eip !7
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !8
  %33 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %34 = add i64 %33, -48, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !8
  %36 = load i32, i32* %ESI_read, !mcsema_real_eip !8
  %37 = ptrtoint i64* %35 to i64, !mcsema_real_eip !8
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !8
  store i32 %36, i32* %38, !mcsema_real_eip !8
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !9
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %40 = add i64 %39, -32, !mcsema_real_eip !9
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !9
  %42 = load i32, i32* %ESI_read, !mcsema_real_eip !9
  %43 = ptrtoint i64* %41 to i64, !mcsema_real_eip !9
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !9
  store i32 %42, i32* %44, !mcsema_real_eip !9
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !10
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %46 = add i64 %45, -56, !mcsema_real_eip !10
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !10
  %48 = load i64, i64* %47, !mcsema_real_eip !10
  store volatile i64 %48, i64* %RDI_write, !mcsema_real_eip !10
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !11
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %50 = add i64 %49, -40, !mcsema_real_eip !11
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !11
  %52 = load i64, i64* %RDI_read, !mcsema_real_eip !11
  store i64 %52, i64* %51, !mcsema_real_eip !11
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !12
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %54 = add i64 %53, -64, !mcsema_real_eip !12
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !12
  %56 = load i64, i64* %RDX_read, !mcsema_real_eip !12
  store i64 %56, i64* %55, !mcsema_real_eip !12
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !13
  %57 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %58 = add i64 %57, -72, !mcsema_real_eip !13
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !13
  %60 = load i64, i64* %RCX_read, !mcsema_real_eip !13
  store i64 %60, i64* %59, !mcsema_real_eip !13
  store volatile i64 46, i64* %EIP_write, !mcsema_real_eip !14
  %61 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %62 = add i64 %61, -76, !mcsema_real_eip !14
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !14
  %64 = load i32, i32* %R8D_read, !mcsema_real_eip !14
  %65 = ptrtoint i64* %63 to i64, !mcsema_real_eip !14
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !14
  store i32 %64, i32* %66, !mcsema_real_eip !14
  store volatile i64 50, i64* %EIP_write, !mcsema_real_eip !15
  %67 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %68 = add i64 %67, -80, !mcsema_real_eip !15
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !15
  %70 = load i32, i32* %R9D_read, !mcsema_real_eip !15
  %71 = ptrtoint i64* %69 to i64, !mcsema_real_eip !15
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !15
  store i32 %70, i32* %72, !mcsema_real_eip !15
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !16
  %73 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %74 = add i64 %73, -84, !mcsema_real_eip !16
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !16
  %76 = load i32, i32* %EBX_read, !mcsema_real_eip !16
  %77 = ptrtoint i64* %75 to i64, !mcsema_real_eip !16
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !16
  store i32 %76, i32* %78, !mcsema_real_eip !16
  store volatile i64 57, i64* %EIP_write, !mcsema_real_eip !17
  %79 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %80 = add i64 %79, -96, !mcsema_real_eip !17
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !17
  %82 = load i64, i64* %R10_read, !mcsema_real_eip !17
  store i64 %82, i64* %81, !mcsema_real_eip !17
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !18
  %83 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %84 = add i64 %83, -104, !mcsema_real_eip !18
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !18
  %86 = load i64, i64* %RAX_read, !mcsema_real_eip !18
  store i64 %86, i64* %85, !mcsema_real_eip !18
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !19
  %87 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %88 = add i64 %87, -40, !mcsema_real_eip !19
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !19
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !19
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !19
  %92 = load i32, i32* %91, !mcsema_real_eip !19
  %93 = zext i32 %92 to i64, !mcsema_real_eip !19
  store volatile i64 %93, i64* %ESI_write, !mcsema_real_eip !19
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !20
  %94 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %95 = add i64 %94, -64, !mcsema_real_eip !20
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !20
  %97 = load i64, i64* %96, !mcsema_real_eip !20
  store volatile i64 %97, i64* %RCX_write, !mcsema_real_eip !20
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !21
  %98 = load i64, i64* %RCX_read, !mcsema_real_eip !21
  %99 = add i64 %98, 0, !mcsema_real_eip !21
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !21
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !21
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !21
  %103 = load i32, i32* %102, !mcsema_real_eip !21
  %104 = zext i32 %103 to i64, !mcsema_real_eip !21
  store volatile i64 %104, i64* %R8D_write, !mcsema_real_eip !21
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !22
  %105 = load i32, i32* %ESI_read, !mcsema_real_eip !22
  %106 = load i32, i32* %R8D_read, !mcsema_real_eip !22
  %107 = add i32 %106, %105, !mcsema_real_eip !22
  %108 = xor i32 %107, %105, !mcsema_real_eip !22
  %109 = xor i32 %108, %106, !mcsema_real_eip !22
  %110 = and i32 %109, 16, !mcsema_real_eip !22
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !22
  %112 = zext i1 %111 to i8, !mcsema_real_eip !22
  store volatile i8 %112, i8* %AF_write, !mcsema_real_eip !22
  %113 = lshr i32 %107, 31, !mcsema_real_eip !22
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !22
  %115 = zext i1 %114 to i8, !mcsema_real_eip !22
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !22
  %117 = zext i1 %116 to i8, !mcsema_real_eip !22
  store volatile i8 %117, i8* %SF_write, !mcsema_real_eip !22
  %118 = icmp eq i32 %107, 0, !mcsema_real_eip !22
  %119 = zext i1 %118 to i8, !mcsema_real_eip !22
  store volatile i8 %119, i8* %ZF_write, !mcsema_real_eip !22
  %120 = xor i32 %105, %106, !mcsema_real_eip !22
  %121 = xor i32 %120, -1, !mcsema_real_eip !22
  %122 = xor i32 %105, %107, !mcsema_real_eip !22
  %123 = and i32 %121, %122, !mcsema_real_eip !22
  %124 = lshr i32 %123, 31, !mcsema_real_eip !22
  %125 = and i32 %124, 1, !mcsema_real_eip !22
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !22
  %127 = zext i1 %126 to i8, !mcsema_real_eip !22
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !22
  %129 = zext i1 %128 to i8, !mcsema_real_eip !22
  store volatile i8 %129, i8* %OF_write, !mcsema_real_eip !22
  %130 = trunc i32 %107 to i8, !mcsema_real_eip !22
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !22
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !22
  %133 = zext i1 %132 to i8, !mcsema_real_eip !22
  %134 = xor i8 %133, 1, !mcsema_real_eip !22
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !22
  %136 = zext i1 %135 to i8, !mcsema_real_eip !22
  store volatile i8 %136, i8* %PF_write, !mcsema_real_eip !22
  %137 = icmp ult i32 %107, %105, !mcsema_real_eip !22
  %138 = zext i1 %137 to i8, !mcsema_real_eip !22
  store volatile i8 %138, i8* %CF_write, !mcsema_real_eip !22
  %139 = zext i32 %107 to i64, !mcsema_real_eip !22
  store volatile i64 %139, i64* %ESI_write, !mcsema_real_eip !22
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !23
  %140 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %141 = add i64 %140, -72, !mcsema_real_eip !23
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !23
  %143 = load i64, i64* %142, !mcsema_real_eip !23
  store volatile i64 %143, i64* %RCX_write, !mcsema_real_eip !23
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !24
  %144 = load i64, i64* %RCX_read, !mcsema_real_eip !24
  %145 = add i64 %144, 0, !mcsema_real_eip !24
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !24
  %147 = ptrtoint i64* %146 to i64, !mcsema_real_eip !24
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !24
  %149 = load i32, i32* %148, !mcsema_real_eip !24
  %150 = zext i32 %149 to i64, !mcsema_real_eip !24
  store volatile i64 %150, i64* %R8D_write, !mcsema_real_eip !24
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !25
  %151 = load i32, i32* %ESI_read, !mcsema_real_eip !25
  %152 = load i32, i32* %R8D_read, !mcsema_real_eip !25
  %153 = add i32 %152, %151, !mcsema_real_eip !25
  %154 = xor i32 %153, %151, !mcsema_real_eip !25
  %155 = xor i32 %154, %152, !mcsema_real_eip !25
  %156 = and i32 %155, 16, !mcsema_real_eip !25
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !25
  %158 = zext i1 %157 to i8, !mcsema_real_eip !25
  store volatile i8 %158, i8* %AF_write, !mcsema_real_eip !25
  %159 = lshr i32 %153, 31, !mcsema_real_eip !25
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !25
  %161 = zext i1 %160 to i8, !mcsema_real_eip !25
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !25
  %163 = zext i1 %162 to i8, !mcsema_real_eip !25
  store volatile i8 %163, i8* %SF_write, !mcsema_real_eip !25
  %164 = icmp eq i32 %153, 0, !mcsema_real_eip !25
  %165 = zext i1 %164 to i8, !mcsema_real_eip !25
  store volatile i8 %165, i8* %ZF_write, !mcsema_real_eip !25
  %166 = xor i32 %151, %152, !mcsema_real_eip !25
  %167 = xor i32 %166, -1, !mcsema_real_eip !25
  %168 = xor i32 %151, %153, !mcsema_real_eip !25
  %169 = and i32 %167, %168, !mcsema_real_eip !25
  %170 = lshr i32 %169, 31, !mcsema_real_eip !25
  %171 = and i32 %170, 1, !mcsema_real_eip !25
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !25
  %173 = zext i1 %172 to i8, !mcsema_real_eip !25
  %174 = trunc i8 %173 to i1, !mcsema_real_eip !25
  %175 = zext i1 %174 to i8, !mcsema_real_eip !25
  store volatile i8 %175, i8* %OF_write, !mcsema_real_eip !25
  %176 = trunc i32 %153 to i8, !mcsema_real_eip !25
  %177 = call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !25
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !25
  %179 = zext i1 %178 to i8, !mcsema_real_eip !25
  %180 = xor i8 %179, 1, !mcsema_real_eip !25
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !25
  %182 = zext i1 %181 to i8, !mcsema_real_eip !25
  store volatile i8 %182, i8* %PF_write, !mcsema_real_eip !25
  %183 = icmp ult i32 %153, %151, !mcsema_real_eip !25
  %184 = zext i1 %183 to i8, !mcsema_real_eip !25
  store volatile i8 %184, i8* %CF_write, !mcsema_real_eip !25
  %185 = zext i32 %153 to i64, !mcsema_real_eip !25
  store volatile i64 %185, i64* %ESI_write, !mcsema_real_eip !25
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !26
  %186 = load i64, i64* %R11_read, !mcsema_real_eip !26
  %187 = add i64 %186, 0, !mcsema_real_eip !26
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !26
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !26
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !26
  %191 = load i32, i32* %190, !mcsema_real_eip !26
  %192 = zext i32 %191 to i64, !mcsema_real_eip !26
  store volatile i64 %192, i64* %R8D_write, !mcsema_real_eip !26
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !27
  %193 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %194 = add i64 %193, -96, !mcsema_real_eip !27
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !27
  %196 = load i64, i64* %195, !mcsema_real_eip !27
  store volatile i64 %196, i64* %RCX_write, !mcsema_real_eip !27
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !28
  %197 = load i64, i64* %RCX_read, !mcsema_real_eip !28
  %198 = add i64 %197, 0, !mcsema_real_eip !28
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !28
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !28
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !28
  %202 = load i32, i32* %201, !mcsema_real_eip !28
  %203 = zext i32 %202 to i64, !mcsema_real_eip !28
  store volatile i64 %203, i64* %R9D_write, !mcsema_real_eip !28
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !29
  %204 = load i32, i32* %R8D_read, !mcsema_real_eip !29
  %205 = load i32, i32* %R9D_read, !mcsema_real_eip !29
  %206 = add i32 %205, %204, !mcsema_real_eip !29
  %207 = xor i32 %206, %204, !mcsema_real_eip !29
  %208 = xor i32 %207, %205, !mcsema_real_eip !29
  %209 = and i32 %208, 16, !mcsema_real_eip !29
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !29
  %211 = zext i1 %210 to i8, !mcsema_real_eip !29
  store volatile i8 %211, i8* %AF_write, !mcsema_real_eip !29
  %212 = lshr i32 %206, 31, !mcsema_real_eip !29
  %213 = trunc i32 %212 to i1, !mcsema_real_eip !29
  %214 = zext i1 %213 to i8, !mcsema_real_eip !29
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !29
  %216 = zext i1 %215 to i8, !mcsema_real_eip !29
  store volatile i8 %216, i8* %SF_write, !mcsema_real_eip !29
  %217 = icmp eq i32 %206, 0, !mcsema_real_eip !29
  %218 = zext i1 %217 to i8, !mcsema_real_eip !29
  store volatile i8 %218, i8* %ZF_write, !mcsema_real_eip !29
  %219 = xor i32 %204, %205, !mcsema_real_eip !29
  %220 = xor i32 %219, -1, !mcsema_real_eip !29
  %221 = xor i32 %204, %206, !mcsema_real_eip !29
  %222 = and i32 %220, %221, !mcsema_real_eip !29
  %223 = lshr i32 %222, 31, !mcsema_real_eip !29
  %224 = and i32 %223, 1, !mcsema_real_eip !29
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !29
  %226 = zext i1 %225 to i8, !mcsema_real_eip !29
  %227 = trunc i8 %226 to i1, !mcsema_real_eip !29
  %228 = zext i1 %227 to i8, !mcsema_real_eip !29
  store volatile i8 %228, i8* %OF_write, !mcsema_real_eip !29
  %229 = trunc i32 %206 to i8, !mcsema_real_eip !29
  %230 = call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !29
  %231 = trunc i8 %230 to i1, !mcsema_real_eip !29
  %232 = zext i1 %231 to i8, !mcsema_real_eip !29
  %233 = xor i8 %232, 1, !mcsema_real_eip !29
  %234 = trunc i8 %233 to i1, !mcsema_real_eip !29
  %235 = zext i1 %234 to i8, !mcsema_real_eip !29
  store volatile i8 %235, i8* %PF_write, !mcsema_real_eip !29
  %236 = icmp ult i32 %206, %204, !mcsema_real_eip !29
  %237 = zext i1 %236 to i8, !mcsema_real_eip !29
  store volatile i8 %237, i8* %CF_write, !mcsema_real_eip !29
  %238 = zext i32 %206 to i64, !mcsema_real_eip !29
  store volatile i64 %238, i64* %R8D_write, !mcsema_real_eip !29
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !30
  %239 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %240 = add i64 %239, 0, !mcsema_real_eip !30
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !30
  %242 = ptrtoint i64* %241 to i64, !mcsema_real_eip !30
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !30
  %244 = load i32, i32* %243, !mcsema_real_eip !30
  %245 = zext i32 %244 to i64, !mcsema_real_eip !30
  store volatile i64 %245, i64* %R9D_write, !mcsema_real_eip !30
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !31
  %246 = load i32, i32* %R8D_read, !mcsema_real_eip !31
  %247 = load i32, i32* %R9D_read, !mcsema_real_eip !31
  %248 = add i32 %247, %246, !mcsema_real_eip !31
  %249 = xor i32 %248, %246, !mcsema_real_eip !31
  %250 = xor i32 %249, %247, !mcsema_real_eip !31
  %251 = and i32 %250, 16, !mcsema_real_eip !31
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !31
  %253 = zext i1 %252 to i8, !mcsema_real_eip !31
  store volatile i8 %253, i8* %AF_write, !mcsema_real_eip !31
  %254 = lshr i32 %248, 31, !mcsema_real_eip !31
  %255 = trunc i32 %254 to i1, !mcsema_real_eip !31
  %256 = zext i1 %255 to i8, !mcsema_real_eip !31
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !31
  %258 = zext i1 %257 to i8, !mcsema_real_eip !31
  store volatile i8 %258, i8* %SF_write, !mcsema_real_eip !31
  %259 = icmp eq i32 %248, 0, !mcsema_real_eip !31
  %260 = zext i1 %259 to i8, !mcsema_real_eip !31
  store volatile i8 %260, i8* %ZF_write, !mcsema_real_eip !31
  %261 = xor i32 %246, %247, !mcsema_real_eip !31
  %262 = xor i32 %261, -1, !mcsema_real_eip !31
  %263 = xor i32 %246, %248, !mcsema_real_eip !31
  %264 = and i32 %262, %263, !mcsema_real_eip !31
  %265 = lshr i32 %264, 31, !mcsema_real_eip !31
  %266 = and i32 %265, 1, !mcsema_real_eip !31
  %267 = trunc i32 %266 to i1, !mcsema_real_eip !31
  %268 = zext i1 %267 to i8, !mcsema_real_eip !31
  %269 = trunc i8 %268 to i1, !mcsema_real_eip !31
  %270 = zext i1 %269 to i8, !mcsema_real_eip !31
  store volatile i8 %270, i8* %OF_write, !mcsema_real_eip !31
  %271 = trunc i32 %248 to i8, !mcsema_real_eip !31
  %272 = call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !31
  %273 = trunc i8 %272 to i1, !mcsema_real_eip !31
  %274 = zext i1 %273 to i8, !mcsema_real_eip !31
  %275 = xor i8 %274, 1, !mcsema_real_eip !31
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !31
  %277 = zext i1 %276 to i8, !mcsema_real_eip !31
  store volatile i8 %277, i8* %PF_write, !mcsema_real_eip !31
  %278 = icmp ult i32 %248, %246, !mcsema_real_eip !31
  %279 = zext i1 %278 to i8, !mcsema_real_eip !31
  store volatile i8 %279, i8* %CF_write, !mcsema_real_eip !31
  %280 = zext i32 %248 to i64, !mcsema_real_eip !31
  store volatile i64 %280, i64* %R8D_write, !mcsema_real_eip !31
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !32
  %281 = load i32, i32* %ESI_read, !mcsema_real_eip !32
  %282 = load i32, i32* %R8D_read, !mcsema_real_eip !32
  %283 = add i32 %282, %281, !mcsema_real_eip !32
  %284 = xor i32 %283, %281, !mcsema_real_eip !32
  %285 = xor i32 %284, %282, !mcsema_real_eip !32
  %286 = and i32 %285, 16, !mcsema_real_eip !32
  %287 = icmp ne i32 %286, 0, !mcsema_real_eip !32
  %288 = zext i1 %287 to i8, !mcsema_real_eip !32
  store volatile i8 %288, i8* %AF_write, !mcsema_real_eip !32
  %289 = lshr i32 %283, 31, !mcsema_real_eip !32
  %290 = trunc i32 %289 to i1, !mcsema_real_eip !32
  %291 = zext i1 %290 to i8, !mcsema_real_eip !32
  %292 = trunc i8 %291 to i1, !mcsema_real_eip !32
  %293 = zext i1 %292 to i8, !mcsema_real_eip !32
  store volatile i8 %293, i8* %SF_write, !mcsema_real_eip !32
  %294 = icmp eq i32 %283, 0, !mcsema_real_eip !32
  %295 = zext i1 %294 to i8, !mcsema_real_eip !32
  store volatile i8 %295, i8* %ZF_write, !mcsema_real_eip !32
  %296 = xor i32 %281, %282, !mcsema_real_eip !32
  %297 = xor i32 %296, -1, !mcsema_real_eip !32
  %298 = xor i32 %281, %283, !mcsema_real_eip !32
  %299 = and i32 %297, %298, !mcsema_real_eip !32
  %300 = lshr i32 %299, 31, !mcsema_real_eip !32
  %301 = and i32 %300, 1, !mcsema_real_eip !32
  %302 = trunc i32 %301 to i1, !mcsema_real_eip !32
  %303 = zext i1 %302 to i8, !mcsema_real_eip !32
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !32
  %305 = zext i1 %304 to i8, !mcsema_real_eip !32
  store volatile i8 %305, i8* %OF_write, !mcsema_real_eip !32
  %306 = trunc i32 %283 to i8, !mcsema_real_eip !32
  %307 = call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !32
  %308 = trunc i8 %307 to i1, !mcsema_real_eip !32
  %309 = zext i1 %308 to i8, !mcsema_real_eip !32
  %310 = xor i8 %309, 1, !mcsema_real_eip !32
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !32
  %312 = zext i1 %311 to i8, !mcsema_real_eip !32
  store volatile i8 %312, i8* %PF_write, !mcsema_real_eip !32
  %313 = icmp ult i32 %283, %281, !mcsema_real_eip !32
  %314 = zext i1 %313 to i8, !mcsema_real_eip !32
  store volatile i8 %314, i8* %CF_write, !mcsema_real_eip !32
  %315 = zext i32 %283 to i64, !mcsema_real_eip !32
  store volatile i64 %315, i64* %ESI_write, !mcsema_real_eip !32
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !33
  %316 = load i64, i64* %RBP_read, !mcsema_real_eip !33
  %317 = add i64 %316, -120, !mcsema_real_eip !33
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !33
  %319 = load i32, i32* %ESI_read, !mcsema_real_eip !33
  %320 = ptrtoint i64* %318 to i64, !mcsema_real_eip !33
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !33
  store i32 %319, i32* %321, !mcsema_real_eip !33
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !34
  %322 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %323 = add i64 %322, -36, !mcsema_real_eip !34
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !34
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !34
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !34
  %327 = load i32, i32* %326, !mcsema_real_eip !34
  %328 = zext i32 %327 to i64, !mcsema_real_eip !34
  store volatile i64 %328, i64* %ESI_write, !mcsema_real_eip !34
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !35
  %329 = load i64, i64* %RBP_read, !mcsema_real_eip !35
  %330 = add i64 %329, -64, !mcsema_real_eip !35
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !35
  %332 = load i64, i64* %331, !mcsema_real_eip !35
  store volatile i64 %332, i64* %RAX_write, !mcsema_real_eip !35
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !36
  %333 = load i64, i64* %RAX_read, !mcsema_real_eip !36
  %334 = add i64 %333, 4, !mcsema_real_eip !36
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !36
  %336 = ptrtoint i64* %335 to i64, !mcsema_real_eip !36
  %337 = inttoptr i64 %336 to i32*, !mcsema_real_eip !36
  %338 = load i32, i32* %337, !mcsema_real_eip !36
  %339 = zext i32 %338 to i64, !mcsema_real_eip !36
  store volatile i64 %339, i64* %R8D_write, !mcsema_real_eip !36
  store volatile i64 124, i64* %EIP_write, !mcsema_real_eip !37
  %340 = load i32, i32* %ESI_read, !mcsema_real_eip !37
  %341 = load i32, i32* %R8D_read, !mcsema_real_eip !37
  %342 = add i32 %341, %340, !mcsema_real_eip !37
  %343 = xor i32 %342, %340, !mcsema_real_eip !37
  %344 = xor i32 %343, %341, !mcsema_real_eip !37
  %345 = and i32 %344, 16, !mcsema_real_eip !37
  %346 = icmp ne i32 %345, 0, !mcsema_real_eip !37
  %347 = zext i1 %346 to i8, !mcsema_real_eip !37
  store volatile i8 %347, i8* %AF_write, !mcsema_real_eip !37
  %348 = lshr i32 %342, 31, !mcsema_real_eip !37
  %349 = trunc i32 %348 to i1, !mcsema_real_eip !37
  %350 = zext i1 %349 to i8, !mcsema_real_eip !37
  %351 = trunc i8 %350 to i1, !mcsema_real_eip !37
  %352 = zext i1 %351 to i8, !mcsema_real_eip !37
  store volatile i8 %352, i8* %SF_write, !mcsema_real_eip !37
  %353 = icmp eq i32 %342, 0, !mcsema_real_eip !37
  %354 = zext i1 %353 to i8, !mcsema_real_eip !37
  store volatile i8 %354, i8* %ZF_write, !mcsema_real_eip !37
  %355 = xor i32 %340, %341, !mcsema_real_eip !37
  %356 = xor i32 %355, -1, !mcsema_real_eip !37
  %357 = xor i32 %340, %342, !mcsema_real_eip !37
  %358 = and i32 %356, %357, !mcsema_real_eip !37
  %359 = lshr i32 %358, 31, !mcsema_real_eip !37
  %360 = and i32 %359, 1, !mcsema_real_eip !37
  %361 = trunc i32 %360 to i1, !mcsema_real_eip !37
  %362 = zext i1 %361 to i8, !mcsema_real_eip !37
  %363 = trunc i8 %362 to i1, !mcsema_real_eip !37
  %364 = zext i1 %363 to i8, !mcsema_real_eip !37
  store volatile i8 %364, i8* %OF_write, !mcsema_real_eip !37
  %365 = trunc i32 %342 to i8, !mcsema_real_eip !37
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !37
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !37
  %368 = zext i1 %367 to i8, !mcsema_real_eip !37
  %369 = xor i8 %368, 1, !mcsema_real_eip !37
  %370 = trunc i8 %369 to i1, !mcsema_real_eip !37
  %371 = zext i1 %370 to i8, !mcsema_real_eip !37
  store volatile i8 %371, i8* %PF_write, !mcsema_real_eip !37
  %372 = icmp ult i32 %342, %340, !mcsema_real_eip !37
  %373 = zext i1 %372 to i8, !mcsema_real_eip !37
  store volatile i8 %373, i8* %CF_write, !mcsema_real_eip !37
  %374 = zext i32 %342 to i64, !mcsema_real_eip !37
  store volatile i64 %374, i64* %ESI_write, !mcsema_real_eip !37
  store volatile i64 127, i64* %EIP_write, !mcsema_real_eip !38
  %375 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %376 = add i64 %375, -72, !mcsema_real_eip !38
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !38
  %378 = load i64, i64* %377, !mcsema_real_eip !38
  store volatile i64 %378, i64* %RAX_write, !mcsema_real_eip !38
  store volatile i64 131, i64* %EIP_write, !mcsema_real_eip !39
  %379 = load i64, i64* %RAX_read, !mcsema_real_eip !39
  %380 = add i64 %379, 4, !mcsema_real_eip !39
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !39
  %382 = ptrtoint i64* %381 to i64, !mcsema_real_eip !39
  %383 = inttoptr i64 %382 to i32*, !mcsema_real_eip !39
  %384 = load i32, i32* %383, !mcsema_real_eip !39
  %385 = zext i32 %384 to i64, !mcsema_real_eip !39
  store volatile i64 %385, i64* %R8D_write, !mcsema_real_eip !39
  store volatile i64 135, i64* %EIP_write, !mcsema_real_eip !40
  %386 = load i32, i32* %ESI_read, !mcsema_real_eip !40
  %387 = load i32, i32* %R8D_read, !mcsema_real_eip !40
  %388 = add i32 %387, %386, !mcsema_real_eip !40
  %389 = xor i32 %388, %386, !mcsema_real_eip !40
  %390 = xor i32 %389, %387, !mcsema_real_eip !40
  %391 = and i32 %390, 16, !mcsema_real_eip !40
  %392 = icmp ne i32 %391, 0, !mcsema_real_eip !40
  %393 = zext i1 %392 to i8, !mcsema_real_eip !40
  store volatile i8 %393, i8* %AF_write, !mcsema_real_eip !40
  %394 = lshr i32 %388, 31, !mcsema_real_eip !40
  %395 = trunc i32 %394 to i1, !mcsema_real_eip !40
  %396 = zext i1 %395 to i8, !mcsema_real_eip !40
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !40
  %398 = zext i1 %397 to i8, !mcsema_real_eip !40
  store volatile i8 %398, i8* %SF_write, !mcsema_real_eip !40
  %399 = icmp eq i32 %388, 0, !mcsema_real_eip !40
  %400 = zext i1 %399 to i8, !mcsema_real_eip !40
  store volatile i8 %400, i8* %ZF_write, !mcsema_real_eip !40
  %401 = xor i32 %386, %387, !mcsema_real_eip !40
  %402 = xor i32 %401, -1, !mcsema_real_eip !40
  %403 = xor i32 %386, %388, !mcsema_real_eip !40
  %404 = and i32 %402, %403, !mcsema_real_eip !40
  %405 = lshr i32 %404, 31, !mcsema_real_eip !40
  %406 = and i32 %405, 1, !mcsema_real_eip !40
  %407 = trunc i32 %406 to i1, !mcsema_real_eip !40
  %408 = zext i1 %407 to i8, !mcsema_real_eip !40
  %409 = trunc i8 %408 to i1, !mcsema_real_eip !40
  %410 = zext i1 %409 to i8, !mcsema_real_eip !40
  store volatile i8 %410, i8* %OF_write, !mcsema_real_eip !40
  %411 = trunc i32 %388 to i8, !mcsema_real_eip !40
  %412 = call i8 @llvm.ctpop.i8(i8 %411), !mcsema_real_eip !40
  %413 = trunc i8 %412 to i1, !mcsema_real_eip !40
  %414 = zext i1 %413 to i8, !mcsema_real_eip !40
  %415 = xor i8 %414, 1, !mcsema_real_eip !40
  %416 = trunc i8 %415 to i1, !mcsema_real_eip !40
  %417 = zext i1 %416 to i8, !mcsema_real_eip !40
  store volatile i8 %417, i8* %PF_write, !mcsema_real_eip !40
  %418 = icmp ult i32 %388, %386, !mcsema_real_eip !40
  %419 = zext i1 %418 to i8, !mcsema_real_eip !40
  store volatile i8 %419, i8* %CF_write, !mcsema_real_eip !40
  %420 = zext i32 %388 to i64, !mcsema_real_eip !40
  store volatile i64 %420, i64* %ESI_write, !mcsema_real_eip !40
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !41
  %421 = load i64, i64* %R11_read, !mcsema_real_eip !41
  %422 = add i64 %421, 4, !mcsema_real_eip !41
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !41
  %424 = ptrtoint i64* %423 to i64, !mcsema_real_eip !41
  %425 = inttoptr i64 %424 to i32*, !mcsema_real_eip !41
  %426 = load i32, i32* %425, !mcsema_real_eip !41
  %427 = zext i32 %426 to i64, !mcsema_real_eip !41
  store volatile i64 %427, i64* %R8D_write, !mcsema_real_eip !41
  store volatile i64 142, i64* %EIP_write, !mcsema_real_eip !42
  %428 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %429 = add i64 %428, -96, !mcsema_real_eip !42
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !42
  %431 = load i64, i64* %430, !mcsema_real_eip !42
  store volatile i64 %431, i64* %RAX_write, !mcsema_real_eip !42
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !43
  %432 = load i64, i64* %RAX_read, !mcsema_real_eip !43
  %433 = add i64 %432, 4, !mcsema_real_eip !43
  %434 = inttoptr i64 %433 to i64*, !mcsema_real_eip !43
  %435 = ptrtoint i64* %434 to i64, !mcsema_real_eip !43
  %436 = inttoptr i64 %435 to i32*, !mcsema_real_eip !43
  %437 = load i32, i32* %436, !mcsema_real_eip !43
  %438 = zext i32 %437 to i64, !mcsema_real_eip !43
  store volatile i64 %438, i64* %R9D_write, !mcsema_real_eip !43
  store volatile i64 150, i64* %EIP_write, !mcsema_real_eip !44
  %439 = load i32, i32* %R8D_read, !mcsema_real_eip !44
  %440 = load i32, i32* %R9D_read, !mcsema_real_eip !44
  %441 = add i32 %440, %439, !mcsema_real_eip !44
  %442 = xor i32 %441, %439, !mcsema_real_eip !44
  %443 = xor i32 %442, %440, !mcsema_real_eip !44
  %444 = and i32 %443, 16, !mcsema_real_eip !44
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !44
  %446 = zext i1 %445 to i8, !mcsema_real_eip !44
  store volatile i8 %446, i8* %AF_write, !mcsema_real_eip !44
  %447 = lshr i32 %441, 31, !mcsema_real_eip !44
  %448 = trunc i32 %447 to i1, !mcsema_real_eip !44
  %449 = zext i1 %448 to i8, !mcsema_real_eip !44
  %450 = trunc i8 %449 to i1, !mcsema_real_eip !44
  %451 = zext i1 %450 to i8, !mcsema_real_eip !44
  store volatile i8 %451, i8* %SF_write, !mcsema_real_eip !44
  %452 = icmp eq i32 %441, 0, !mcsema_real_eip !44
  %453 = zext i1 %452 to i8, !mcsema_real_eip !44
  store volatile i8 %453, i8* %ZF_write, !mcsema_real_eip !44
  %454 = xor i32 %439, %440, !mcsema_real_eip !44
  %455 = xor i32 %454, -1, !mcsema_real_eip !44
  %456 = xor i32 %439, %441, !mcsema_real_eip !44
  %457 = and i32 %455, %456, !mcsema_real_eip !44
  %458 = lshr i32 %457, 31, !mcsema_real_eip !44
  %459 = and i32 %458, 1, !mcsema_real_eip !44
  %460 = trunc i32 %459 to i1, !mcsema_real_eip !44
  %461 = zext i1 %460 to i8, !mcsema_real_eip !44
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !44
  %463 = zext i1 %462 to i8, !mcsema_real_eip !44
  store volatile i8 %463, i8* %OF_write, !mcsema_real_eip !44
  %464 = trunc i32 %441 to i8, !mcsema_real_eip !44
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !44
  %466 = trunc i8 %465 to i1, !mcsema_real_eip !44
  %467 = zext i1 %466 to i8, !mcsema_real_eip !44
  %468 = xor i8 %467, 1, !mcsema_real_eip !44
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !44
  %470 = zext i1 %469 to i8, !mcsema_real_eip !44
  store volatile i8 %470, i8* %PF_write, !mcsema_real_eip !44
  %471 = icmp ult i32 %441, %439, !mcsema_real_eip !44
  %472 = zext i1 %471 to i8, !mcsema_real_eip !44
  store volatile i8 %472, i8* %CF_write, !mcsema_real_eip !44
  %473 = zext i32 %441 to i64, !mcsema_real_eip !44
  store volatile i64 %473, i64* %R8D_write, !mcsema_real_eip !44
  store volatile i64 153, i64* %EIP_write, !mcsema_real_eip !45
  %474 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %475 = add i64 %474, -104, !mcsema_real_eip !45
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !45
  %477 = load i64, i64* %476, !mcsema_real_eip !45
  store volatile i64 %477, i64* %RAX_write, !mcsema_real_eip !45
  store volatile i64 157, i64* %EIP_write, !mcsema_real_eip !46
  %478 = load i64, i64* %RAX_read, !mcsema_real_eip !46
  %479 = add i64 %478, 4, !mcsema_real_eip !46
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !46
  %481 = ptrtoint i64* %480 to i64, !mcsema_real_eip !46
  %482 = inttoptr i64 %481 to i32*, !mcsema_real_eip !46
  %483 = load i32, i32* %482, !mcsema_real_eip !46
  %484 = zext i32 %483 to i64, !mcsema_real_eip !46
  store volatile i64 %484, i64* %R9D_write, !mcsema_real_eip !46
  store volatile i64 161, i64* %EIP_write, !mcsema_real_eip !47
  %485 = load i32, i32* %R8D_read, !mcsema_real_eip !47
  %486 = load i32, i32* %R9D_read, !mcsema_real_eip !47
  %487 = add i32 %486, %485, !mcsema_real_eip !47
  %488 = xor i32 %487, %485, !mcsema_real_eip !47
  %489 = xor i32 %488, %486, !mcsema_real_eip !47
  %490 = and i32 %489, 16, !mcsema_real_eip !47
  %491 = icmp ne i32 %490, 0, !mcsema_real_eip !47
  %492 = zext i1 %491 to i8, !mcsema_real_eip !47
  store volatile i8 %492, i8* %AF_write, !mcsema_real_eip !47
  %493 = lshr i32 %487, 31, !mcsema_real_eip !47
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !47
  %495 = zext i1 %494 to i8, !mcsema_real_eip !47
  %496 = trunc i8 %495 to i1, !mcsema_real_eip !47
  %497 = zext i1 %496 to i8, !mcsema_real_eip !47
  store volatile i8 %497, i8* %SF_write, !mcsema_real_eip !47
  %498 = icmp eq i32 %487, 0, !mcsema_real_eip !47
  %499 = zext i1 %498 to i8, !mcsema_real_eip !47
  store volatile i8 %499, i8* %ZF_write, !mcsema_real_eip !47
  %500 = xor i32 %485, %486, !mcsema_real_eip !47
  %501 = xor i32 %500, -1, !mcsema_real_eip !47
  %502 = xor i32 %485, %487, !mcsema_real_eip !47
  %503 = and i32 %501, %502, !mcsema_real_eip !47
  %504 = lshr i32 %503, 31, !mcsema_real_eip !47
  %505 = and i32 %504, 1, !mcsema_real_eip !47
  %506 = trunc i32 %505 to i1, !mcsema_real_eip !47
  %507 = zext i1 %506 to i8, !mcsema_real_eip !47
  %508 = trunc i8 %507 to i1, !mcsema_real_eip !47
  %509 = zext i1 %508 to i8, !mcsema_real_eip !47
  store volatile i8 %509, i8* %OF_write, !mcsema_real_eip !47
  %510 = trunc i32 %487 to i8, !mcsema_real_eip !47
  %511 = call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !47
  %512 = trunc i8 %511 to i1, !mcsema_real_eip !47
  %513 = zext i1 %512 to i8, !mcsema_real_eip !47
  %514 = xor i8 %513, 1, !mcsema_real_eip !47
  %515 = trunc i8 %514 to i1, !mcsema_real_eip !47
  %516 = zext i1 %515 to i8, !mcsema_real_eip !47
  store volatile i8 %516, i8* %PF_write, !mcsema_real_eip !47
  %517 = icmp ult i32 %487, %485, !mcsema_real_eip !47
  %518 = zext i1 %517 to i8, !mcsema_real_eip !47
  store volatile i8 %518, i8* %CF_write, !mcsema_real_eip !47
  %519 = zext i32 %487 to i64, !mcsema_real_eip !47
  store volatile i64 %519, i64* %R8D_write, !mcsema_real_eip !47
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !48
  %520 = load i32, i32* %ESI_read, !mcsema_real_eip !48
  %521 = load i32, i32* %R8D_read, !mcsema_real_eip !48
  %522 = add i32 %521, %520, !mcsema_real_eip !48
  %523 = xor i32 %522, %520, !mcsema_real_eip !48
  %524 = xor i32 %523, %521, !mcsema_real_eip !48
  %525 = and i32 %524, 16, !mcsema_real_eip !48
  %526 = icmp ne i32 %525, 0, !mcsema_real_eip !48
  %527 = zext i1 %526 to i8, !mcsema_real_eip !48
  store volatile i8 %527, i8* %AF_write, !mcsema_real_eip !48
  %528 = lshr i32 %522, 31, !mcsema_real_eip !48
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !48
  %530 = zext i1 %529 to i8, !mcsema_real_eip !48
  %531 = trunc i8 %530 to i1, !mcsema_real_eip !48
  %532 = zext i1 %531 to i8, !mcsema_real_eip !48
  store volatile i8 %532, i8* %SF_write, !mcsema_real_eip !48
  %533 = icmp eq i32 %522, 0, !mcsema_real_eip !48
  %534 = zext i1 %533 to i8, !mcsema_real_eip !48
  store volatile i8 %534, i8* %ZF_write, !mcsema_real_eip !48
  %535 = xor i32 %520, %521, !mcsema_real_eip !48
  %536 = xor i32 %535, -1, !mcsema_real_eip !48
  %537 = xor i32 %520, %522, !mcsema_real_eip !48
  %538 = and i32 %536, %537, !mcsema_real_eip !48
  %539 = lshr i32 %538, 31, !mcsema_real_eip !48
  %540 = and i32 %539, 1, !mcsema_real_eip !48
  %541 = trunc i32 %540 to i1, !mcsema_real_eip !48
  %542 = zext i1 %541 to i8, !mcsema_real_eip !48
  %543 = trunc i8 %542 to i1, !mcsema_real_eip !48
  %544 = zext i1 %543 to i8, !mcsema_real_eip !48
  store volatile i8 %544, i8* %OF_write, !mcsema_real_eip !48
  %545 = trunc i32 %522 to i8, !mcsema_real_eip !48
  %546 = call i8 @llvm.ctpop.i8(i8 %545), !mcsema_real_eip !48
  %547 = trunc i8 %546 to i1, !mcsema_real_eip !48
  %548 = zext i1 %547 to i8, !mcsema_real_eip !48
  %549 = xor i8 %548, 1, !mcsema_real_eip !48
  %550 = trunc i8 %549 to i1, !mcsema_real_eip !48
  %551 = zext i1 %550 to i8, !mcsema_real_eip !48
  store volatile i8 %551, i8* %PF_write, !mcsema_real_eip !48
  %552 = icmp ult i32 %522, %520, !mcsema_real_eip !48
  %553 = zext i1 %552 to i8, !mcsema_real_eip !48
  store volatile i8 %553, i8* %CF_write, !mcsema_real_eip !48
  %554 = zext i32 %522 to i64, !mcsema_real_eip !48
  store volatile i64 %554, i64* %ESI_write, !mcsema_real_eip !48
  store volatile i64 167, i64* %EIP_write, !mcsema_real_eip !49
  %555 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %556 = add i64 %555, -116, !mcsema_real_eip !49
  %557 = inttoptr i64 %556 to i64*, !mcsema_real_eip !49
  %558 = load i32, i32* %ESI_read, !mcsema_real_eip !49
  %559 = ptrtoint i64* %557 to i64, !mcsema_real_eip !49
  %560 = inttoptr i64 %559 to i32*, !mcsema_real_eip !49
  store i32 %558, i32* %560, !mcsema_real_eip !49
  store volatile i64 170, i64* %EIP_write, !mcsema_real_eip !50
  %561 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %562 = add i64 %561, -32, !mcsema_real_eip !50
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !50
  %564 = ptrtoint i64* %563 to i64, !mcsema_real_eip !50
  %565 = inttoptr i64 %564 to i32*, !mcsema_real_eip !50
  %566 = load i32, i32* %565, !mcsema_real_eip !50
  %567 = zext i32 %566 to i64, !mcsema_real_eip !50
  store volatile i64 %567, i64* %ESI_write, !mcsema_real_eip !50
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !51
  %568 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %569 = add i64 %568, -64, !mcsema_real_eip !51
  %570 = inttoptr i64 %569 to i64*, !mcsema_real_eip !51
  %571 = load i64, i64* %570, !mcsema_real_eip !51
  store volatile i64 %571, i64* %RAX_write, !mcsema_real_eip !51
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !52
  %572 = load i64, i64* %RAX_read, !mcsema_real_eip !52
  %573 = add i64 %572, 8, !mcsema_real_eip !52
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !52
  %575 = ptrtoint i64* %574 to i64, !mcsema_real_eip !52
  %576 = inttoptr i64 %575 to i32*, !mcsema_real_eip !52
  %577 = load i32, i32* %576, !mcsema_real_eip !52
  %578 = zext i32 %577 to i64, !mcsema_real_eip !52
  store volatile i64 %578, i64* %R8D_write, !mcsema_real_eip !52
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !53
  %579 = load i32, i32* %ESI_read, !mcsema_real_eip !53
  %580 = load i32, i32* %R8D_read, !mcsema_real_eip !53
  %581 = add i32 %580, %579, !mcsema_real_eip !53
  %582 = xor i32 %581, %579, !mcsema_real_eip !53
  %583 = xor i32 %582, %580, !mcsema_real_eip !53
  %584 = and i32 %583, 16, !mcsema_real_eip !53
  %585 = icmp ne i32 %584, 0, !mcsema_real_eip !53
  %586 = zext i1 %585 to i8, !mcsema_real_eip !53
  store volatile i8 %586, i8* %AF_write, !mcsema_real_eip !53
  %587 = lshr i32 %581, 31, !mcsema_real_eip !53
  %588 = trunc i32 %587 to i1, !mcsema_real_eip !53
  %589 = zext i1 %588 to i8, !mcsema_real_eip !53
  %590 = trunc i8 %589 to i1, !mcsema_real_eip !53
  %591 = zext i1 %590 to i8, !mcsema_real_eip !53
  store volatile i8 %591, i8* %SF_write, !mcsema_real_eip !53
  %592 = icmp eq i32 %581, 0, !mcsema_real_eip !53
  %593 = zext i1 %592 to i8, !mcsema_real_eip !53
  store volatile i8 %593, i8* %ZF_write, !mcsema_real_eip !53
  %594 = xor i32 %579, %580, !mcsema_real_eip !53
  %595 = xor i32 %594, -1, !mcsema_real_eip !53
  %596 = xor i32 %579, %581, !mcsema_real_eip !53
  %597 = and i32 %595, %596, !mcsema_real_eip !53
  %598 = lshr i32 %597, 31, !mcsema_real_eip !53
  %599 = and i32 %598, 1, !mcsema_real_eip !53
  %600 = trunc i32 %599 to i1, !mcsema_real_eip !53
  %601 = zext i1 %600 to i8, !mcsema_real_eip !53
  %602 = trunc i8 %601 to i1, !mcsema_real_eip !53
  %603 = zext i1 %602 to i8, !mcsema_real_eip !53
  store volatile i8 %603, i8* %OF_write, !mcsema_real_eip !53
  %604 = trunc i32 %581 to i8, !mcsema_real_eip !53
  %605 = call i8 @llvm.ctpop.i8(i8 %604), !mcsema_real_eip !53
  %606 = trunc i8 %605 to i1, !mcsema_real_eip !53
  %607 = zext i1 %606 to i8, !mcsema_real_eip !53
  %608 = xor i8 %607, 1, !mcsema_real_eip !53
  %609 = trunc i8 %608 to i1, !mcsema_real_eip !53
  %610 = zext i1 %609 to i8, !mcsema_real_eip !53
  store volatile i8 %610, i8* %PF_write, !mcsema_real_eip !53
  %611 = icmp ult i32 %581, %579, !mcsema_real_eip !53
  %612 = zext i1 %611 to i8, !mcsema_real_eip !53
  store volatile i8 %612, i8* %CF_write, !mcsema_real_eip !53
  %613 = zext i32 %581 to i64, !mcsema_real_eip !53
  store volatile i64 %613, i64* %ESI_write, !mcsema_real_eip !53
  store volatile i64 184, i64* %EIP_write, !mcsema_real_eip !54
  %614 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %615 = add i64 %614, -72, !mcsema_real_eip !54
  %616 = inttoptr i64 %615 to i64*, !mcsema_real_eip !54
  %617 = load i64, i64* %616, !mcsema_real_eip !54
  store volatile i64 %617, i64* %RAX_write, !mcsema_real_eip !54
  store volatile i64 188, i64* %EIP_write, !mcsema_real_eip !55
  %618 = load i64, i64* %RAX_read, !mcsema_real_eip !55
  %619 = add i64 %618, 8, !mcsema_real_eip !55
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !55
  %621 = ptrtoint i64* %620 to i64, !mcsema_real_eip !55
  %622 = inttoptr i64 %621 to i32*, !mcsema_real_eip !55
  %623 = load i32, i32* %622, !mcsema_real_eip !55
  %624 = zext i32 %623 to i64, !mcsema_real_eip !55
  store volatile i64 %624, i64* %R8D_write, !mcsema_real_eip !55
  store volatile i64 192, i64* %EIP_write, !mcsema_real_eip !56
  %625 = load i32, i32* %ESI_read, !mcsema_real_eip !56
  %626 = load i32, i32* %R8D_read, !mcsema_real_eip !56
  %627 = add i32 %626, %625, !mcsema_real_eip !56
  %628 = xor i32 %627, %625, !mcsema_real_eip !56
  %629 = xor i32 %628, %626, !mcsema_real_eip !56
  %630 = and i32 %629, 16, !mcsema_real_eip !56
  %631 = icmp ne i32 %630, 0, !mcsema_real_eip !56
  %632 = zext i1 %631 to i8, !mcsema_real_eip !56
  store volatile i8 %632, i8* %AF_write, !mcsema_real_eip !56
  %633 = lshr i32 %627, 31, !mcsema_real_eip !56
  %634 = trunc i32 %633 to i1, !mcsema_real_eip !56
  %635 = zext i1 %634 to i8, !mcsema_real_eip !56
  %636 = trunc i8 %635 to i1, !mcsema_real_eip !56
  %637 = zext i1 %636 to i8, !mcsema_real_eip !56
  store volatile i8 %637, i8* %SF_write, !mcsema_real_eip !56
  %638 = icmp eq i32 %627, 0, !mcsema_real_eip !56
  %639 = zext i1 %638 to i8, !mcsema_real_eip !56
  store volatile i8 %639, i8* %ZF_write, !mcsema_real_eip !56
  %640 = xor i32 %625, %626, !mcsema_real_eip !56
  %641 = xor i32 %640, -1, !mcsema_real_eip !56
  %642 = xor i32 %625, %627, !mcsema_real_eip !56
  %643 = and i32 %641, %642, !mcsema_real_eip !56
  %644 = lshr i32 %643, 31, !mcsema_real_eip !56
  %645 = and i32 %644, 1, !mcsema_real_eip !56
  %646 = trunc i32 %645 to i1, !mcsema_real_eip !56
  %647 = zext i1 %646 to i8, !mcsema_real_eip !56
  %648 = trunc i8 %647 to i1, !mcsema_real_eip !56
  %649 = zext i1 %648 to i8, !mcsema_real_eip !56
  store volatile i8 %649, i8* %OF_write, !mcsema_real_eip !56
  %650 = trunc i32 %627 to i8, !mcsema_real_eip !56
  %651 = call i8 @llvm.ctpop.i8(i8 %650), !mcsema_real_eip !56
  %652 = trunc i8 %651 to i1, !mcsema_real_eip !56
  %653 = zext i1 %652 to i8, !mcsema_real_eip !56
  %654 = xor i8 %653, 1, !mcsema_real_eip !56
  %655 = trunc i8 %654 to i1, !mcsema_real_eip !56
  %656 = zext i1 %655 to i8, !mcsema_real_eip !56
  store volatile i8 %656, i8* %PF_write, !mcsema_real_eip !56
  %657 = icmp ult i32 %627, %625, !mcsema_real_eip !56
  %658 = zext i1 %657 to i8, !mcsema_real_eip !56
  store volatile i8 %658, i8* %CF_write, !mcsema_real_eip !56
  %659 = zext i32 %627 to i64, !mcsema_real_eip !56
  store volatile i64 %659, i64* %ESI_write, !mcsema_real_eip !56
  store volatile i64 195, i64* %EIP_write, !mcsema_real_eip !57
  %660 = load i64, i64* %R11_read, !mcsema_real_eip !57
  %661 = add i64 %660, 8, !mcsema_real_eip !57
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !57
  %663 = ptrtoint i64* %662 to i64, !mcsema_real_eip !57
  %664 = inttoptr i64 %663 to i32*, !mcsema_real_eip !57
  %665 = load i32, i32* %664, !mcsema_real_eip !57
  %666 = zext i32 %665 to i64, !mcsema_real_eip !57
  store volatile i64 %666, i64* %R8D_write, !mcsema_real_eip !57
  store volatile i64 199, i64* %EIP_write, !mcsema_real_eip !58
  %667 = load i64, i64* %RBP_read, !mcsema_real_eip !58
  %668 = add i64 %667, -96, !mcsema_real_eip !58
  %669 = inttoptr i64 %668 to i64*, !mcsema_real_eip !58
  %670 = load i64, i64* %669, !mcsema_real_eip !58
  store volatile i64 %670, i64* %RAX_write, !mcsema_real_eip !58
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !59
  %671 = load i64, i64* %RAX_read, !mcsema_real_eip !59
  %672 = add i64 %671, 8, !mcsema_real_eip !59
  %673 = inttoptr i64 %672 to i64*, !mcsema_real_eip !59
  %674 = ptrtoint i64* %673 to i64, !mcsema_real_eip !59
  %675 = inttoptr i64 %674 to i32*, !mcsema_real_eip !59
  %676 = load i32, i32* %675, !mcsema_real_eip !59
  %677 = zext i32 %676 to i64, !mcsema_real_eip !59
  store volatile i64 %677, i64* %R9D_write, !mcsema_real_eip !59
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !60
  %678 = load i32, i32* %R8D_read, !mcsema_real_eip !60
  %679 = load i32, i32* %R9D_read, !mcsema_real_eip !60
  %680 = add i32 %679, %678, !mcsema_real_eip !60
  %681 = xor i32 %680, %678, !mcsema_real_eip !60
  %682 = xor i32 %681, %679, !mcsema_real_eip !60
  %683 = and i32 %682, 16, !mcsema_real_eip !60
  %684 = icmp ne i32 %683, 0, !mcsema_real_eip !60
  %685 = zext i1 %684 to i8, !mcsema_real_eip !60
  store volatile i8 %685, i8* %AF_write, !mcsema_real_eip !60
  %686 = lshr i32 %680, 31, !mcsema_real_eip !60
  %687 = trunc i32 %686 to i1, !mcsema_real_eip !60
  %688 = zext i1 %687 to i8, !mcsema_real_eip !60
  %689 = trunc i8 %688 to i1, !mcsema_real_eip !60
  %690 = zext i1 %689 to i8, !mcsema_real_eip !60
  store volatile i8 %690, i8* %SF_write, !mcsema_real_eip !60
  %691 = icmp eq i32 %680, 0, !mcsema_real_eip !60
  %692 = zext i1 %691 to i8, !mcsema_real_eip !60
  store volatile i8 %692, i8* %ZF_write, !mcsema_real_eip !60
  %693 = xor i32 %678, %679, !mcsema_real_eip !60
  %694 = xor i32 %693, -1, !mcsema_real_eip !60
  %695 = xor i32 %678, %680, !mcsema_real_eip !60
  %696 = and i32 %694, %695, !mcsema_real_eip !60
  %697 = lshr i32 %696, 31, !mcsema_real_eip !60
  %698 = and i32 %697, 1, !mcsema_real_eip !60
  %699 = trunc i32 %698 to i1, !mcsema_real_eip !60
  %700 = zext i1 %699 to i8, !mcsema_real_eip !60
  %701 = trunc i8 %700 to i1, !mcsema_real_eip !60
  %702 = zext i1 %701 to i8, !mcsema_real_eip !60
  store volatile i8 %702, i8* %OF_write, !mcsema_real_eip !60
  %703 = trunc i32 %680 to i8, !mcsema_real_eip !60
  %704 = call i8 @llvm.ctpop.i8(i8 %703), !mcsema_real_eip !60
  %705 = trunc i8 %704 to i1, !mcsema_real_eip !60
  %706 = zext i1 %705 to i8, !mcsema_real_eip !60
  %707 = xor i8 %706, 1, !mcsema_real_eip !60
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !60
  %709 = zext i1 %708 to i8, !mcsema_real_eip !60
  store volatile i8 %709, i8* %PF_write, !mcsema_real_eip !60
  %710 = icmp ult i32 %680, %678, !mcsema_real_eip !60
  %711 = zext i1 %710 to i8, !mcsema_real_eip !60
  store volatile i8 %711, i8* %CF_write, !mcsema_real_eip !60
  %712 = zext i32 %680 to i64, !mcsema_real_eip !60
  store volatile i64 %712, i64* %R8D_write, !mcsema_real_eip !60
  store volatile i64 210, i64* %EIP_write, !mcsema_real_eip !61
  %713 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %714 = add i64 %713, -104, !mcsema_real_eip !61
  %715 = inttoptr i64 %714 to i64*, !mcsema_real_eip !61
  %716 = load i64, i64* %715, !mcsema_real_eip !61
  store volatile i64 %716, i64* %RAX_write, !mcsema_real_eip !61
  store volatile i64 214, i64* %EIP_write, !mcsema_real_eip !62
  %717 = load i64, i64* %RAX_read, !mcsema_real_eip !62
  %718 = add i64 %717, 8, !mcsema_real_eip !62
  %719 = inttoptr i64 %718 to i64*, !mcsema_real_eip !62
  %720 = ptrtoint i64* %719 to i64, !mcsema_real_eip !62
  %721 = inttoptr i64 %720 to i32*, !mcsema_real_eip !62
  %722 = load i32, i32* %721, !mcsema_real_eip !62
  %723 = zext i32 %722 to i64, !mcsema_real_eip !62
  store volatile i64 %723, i64* %R9D_write, !mcsema_real_eip !62
  store volatile i64 218, i64* %EIP_write, !mcsema_real_eip !63
  %724 = load i32, i32* %R8D_read, !mcsema_real_eip !63
  %725 = load i32, i32* %R9D_read, !mcsema_real_eip !63
  %726 = add i32 %725, %724, !mcsema_real_eip !63
  %727 = xor i32 %726, %724, !mcsema_real_eip !63
  %728 = xor i32 %727, %725, !mcsema_real_eip !63
  %729 = and i32 %728, 16, !mcsema_real_eip !63
  %730 = icmp ne i32 %729, 0, !mcsema_real_eip !63
  %731 = zext i1 %730 to i8, !mcsema_real_eip !63
  store volatile i8 %731, i8* %AF_write, !mcsema_real_eip !63
  %732 = lshr i32 %726, 31, !mcsema_real_eip !63
  %733 = trunc i32 %732 to i1, !mcsema_real_eip !63
  %734 = zext i1 %733 to i8, !mcsema_real_eip !63
  %735 = trunc i8 %734 to i1, !mcsema_real_eip !63
  %736 = zext i1 %735 to i8, !mcsema_real_eip !63
  store volatile i8 %736, i8* %SF_write, !mcsema_real_eip !63
  %737 = icmp eq i32 %726, 0, !mcsema_real_eip !63
  %738 = zext i1 %737 to i8, !mcsema_real_eip !63
  store volatile i8 %738, i8* %ZF_write, !mcsema_real_eip !63
  %739 = xor i32 %724, %725, !mcsema_real_eip !63
  %740 = xor i32 %739, -1, !mcsema_real_eip !63
  %741 = xor i32 %724, %726, !mcsema_real_eip !63
  %742 = and i32 %740, %741, !mcsema_real_eip !63
  %743 = lshr i32 %742, 31, !mcsema_real_eip !63
  %744 = and i32 %743, 1, !mcsema_real_eip !63
  %745 = trunc i32 %744 to i1, !mcsema_real_eip !63
  %746 = zext i1 %745 to i8, !mcsema_real_eip !63
  %747 = trunc i8 %746 to i1, !mcsema_real_eip !63
  %748 = zext i1 %747 to i8, !mcsema_real_eip !63
  store volatile i8 %748, i8* %OF_write, !mcsema_real_eip !63
  %749 = trunc i32 %726 to i8, !mcsema_real_eip !63
  %750 = call i8 @llvm.ctpop.i8(i8 %749), !mcsema_real_eip !63
  %751 = trunc i8 %750 to i1, !mcsema_real_eip !63
  %752 = zext i1 %751 to i8, !mcsema_real_eip !63
  %753 = xor i8 %752, 1, !mcsema_real_eip !63
  %754 = trunc i8 %753 to i1, !mcsema_real_eip !63
  %755 = zext i1 %754 to i8, !mcsema_real_eip !63
  store volatile i8 %755, i8* %PF_write, !mcsema_real_eip !63
  %756 = icmp ult i32 %726, %724, !mcsema_real_eip !63
  %757 = zext i1 %756 to i8, !mcsema_real_eip !63
  store volatile i8 %757, i8* %CF_write, !mcsema_real_eip !63
  %758 = zext i32 %726 to i64, !mcsema_real_eip !63
  store volatile i64 %758, i64* %R8D_write, !mcsema_real_eip !63
  store volatile i64 221, i64* %EIP_write, !mcsema_real_eip !64
  %759 = load i32, i32* %ESI_read, !mcsema_real_eip !64
  %760 = load i32, i32* %R8D_read, !mcsema_real_eip !64
  %761 = add i32 %760, %759, !mcsema_real_eip !64
  %762 = xor i32 %761, %759, !mcsema_real_eip !64
  %763 = xor i32 %762, %760, !mcsema_real_eip !64
  %764 = and i32 %763, 16, !mcsema_real_eip !64
  %765 = icmp ne i32 %764, 0, !mcsema_real_eip !64
  %766 = zext i1 %765 to i8, !mcsema_real_eip !64
  store volatile i8 %766, i8* %AF_write, !mcsema_real_eip !64
  %767 = lshr i32 %761, 31, !mcsema_real_eip !64
  %768 = trunc i32 %767 to i1, !mcsema_real_eip !64
  %769 = zext i1 %768 to i8, !mcsema_real_eip !64
  %770 = trunc i8 %769 to i1, !mcsema_real_eip !64
  %771 = zext i1 %770 to i8, !mcsema_real_eip !64
  store volatile i8 %771, i8* %SF_write, !mcsema_real_eip !64
  %772 = icmp eq i32 %761, 0, !mcsema_real_eip !64
  %773 = zext i1 %772 to i8, !mcsema_real_eip !64
  store volatile i8 %773, i8* %ZF_write, !mcsema_real_eip !64
  %774 = xor i32 %759, %760, !mcsema_real_eip !64
  %775 = xor i32 %774, -1, !mcsema_real_eip !64
  %776 = xor i32 %759, %761, !mcsema_real_eip !64
  %777 = and i32 %775, %776, !mcsema_real_eip !64
  %778 = lshr i32 %777, 31, !mcsema_real_eip !64
  %779 = and i32 %778, 1, !mcsema_real_eip !64
  %780 = trunc i32 %779 to i1, !mcsema_real_eip !64
  %781 = zext i1 %780 to i8, !mcsema_real_eip !64
  %782 = trunc i8 %781 to i1, !mcsema_real_eip !64
  %783 = zext i1 %782 to i8, !mcsema_real_eip !64
  store volatile i8 %783, i8* %OF_write, !mcsema_real_eip !64
  %784 = trunc i32 %761 to i8, !mcsema_real_eip !64
  %785 = call i8 @llvm.ctpop.i8(i8 %784), !mcsema_real_eip !64
  %786 = trunc i8 %785 to i1, !mcsema_real_eip !64
  %787 = zext i1 %786 to i8, !mcsema_real_eip !64
  %788 = xor i8 %787, 1, !mcsema_real_eip !64
  %789 = trunc i8 %788 to i1, !mcsema_real_eip !64
  %790 = zext i1 %789 to i8, !mcsema_real_eip !64
  store volatile i8 %790, i8* %PF_write, !mcsema_real_eip !64
  %791 = icmp ult i32 %761, %759, !mcsema_real_eip !64
  %792 = zext i1 %791 to i8, !mcsema_real_eip !64
  store volatile i8 %792, i8* %CF_write, !mcsema_real_eip !64
  %793 = zext i32 %761 to i64, !mcsema_real_eip !64
  store volatile i64 %793, i64* %ESI_write, !mcsema_real_eip !64
  store volatile i64 224, i64* %EIP_write, !mcsema_real_eip !65
  %794 = load i64, i64* %RBP_read, !mcsema_real_eip !65
  %795 = add i64 %794, -112, !mcsema_real_eip !65
  %796 = inttoptr i64 %795 to i64*, !mcsema_real_eip !65
  %797 = load i32, i32* %ESI_read, !mcsema_real_eip !65
  %798 = ptrtoint i64* %796 to i64, !mcsema_real_eip !65
  %799 = inttoptr i64 %798 to i32*, !mcsema_real_eip !65
  store i32 %797, i32* %799, !mcsema_real_eip !65
  store volatile i64 227, i64* %EIP_write, !mcsema_real_eip !66
  %800 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %801 = add i64 %800, -16, !mcsema_real_eip !66
  %802 = inttoptr i64 %801 to i64*, !mcsema_real_eip !66
  %803 = load i32, i32* %ESI_read, !mcsema_real_eip !66
  %804 = ptrtoint i64* %802 to i64, !mcsema_real_eip !66
  %805 = inttoptr i64 %804 to i32*, !mcsema_real_eip !66
  store i32 %803, i32* %805, !mcsema_real_eip !66
  store volatile i64 230, i64* %EIP_write, !mcsema_real_eip !67
  %806 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %807 = add i64 %806, -120, !mcsema_real_eip !67
  %808 = inttoptr i64 %807 to i64*, !mcsema_real_eip !67
  %809 = load i64, i64* %808, !mcsema_real_eip !67
  store volatile i64 %809, i64* %RAX_write, !mcsema_real_eip !67
  store volatile i64 234, i64* %EIP_write, !mcsema_real_eip !68
  %810 = load i64, i64* %RBP_read, !mcsema_real_eip !68
  %811 = add i64 %810, -24, !mcsema_real_eip !68
  %812 = inttoptr i64 %811 to i64*, !mcsema_real_eip !68
  %813 = load i64, i64* %RAX_read, !mcsema_real_eip !68
  store i64 %813, i64* %812, !mcsema_real_eip !68
  store volatile i64 238, i64* %EIP_write, !mcsema_real_eip !69
  %814 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %815 = add i64 %814, -16, !mcsema_real_eip !69
  %816 = inttoptr i64 %815 to i64*, !mcsema_real_eip !69
  %817 = ptrtoint i64* %816 to i64, !mcsema_real_eip !69
  %818 = inttoptr i64 %817 to i32*, !mcsema_real_eip !69
  %819 = load i32, i32* %818, !mcsema_real_eip !69
  %820 = zext i32 %819 to i64, !mcsema_real_eip !69
  store volatile i64 %820, i64* %ESI_write, !mcsema_real_eip !69
  store volatile i64 241, i64* %EIP_write, !mcsema_real_eip !70
  %821 = load i64, i64* %RBP_read, !mcsema_real_eip !70
  %822 = add i64 %821, -128, !mcsema_real_eip !70
  %823 = inttoptr i64 %822 to i64*, !mcsema_real_eip !70
  %824 = load i32, i32* %ESI_read, !mcsema_real_eip !70
  %825 = ptrtoint i64* %823 to i64, !mcsema_real_eip !70
  %826 = inttoptr i64 %825 to i32*, !mcsema_real_eip !70
  store i32 %824, i32* %826, !mcsema_real_eip !70
  store volatile i64 244, i64* %EIP_write, !mcsema_real_eip !71
  %827 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %828 = add i64 %827, -24, !mcsema_real_eip !71
  %829 = inttoptr i64 %828 to i64*, !mcsema_real_eip !71
  %830 = load i64, i64* %829, !mcsema_real_eip !71
  store volatile i64 %830, i64* %RAX_write, !mcsema_real_eip !71
  store volatile i64 248, i64* %EIP_write, !mcsema_real_eip !72
  %831 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %832 = add i64 %831, -136, !mcsema_real_eip !72
  %833 = inttoptr i64 %832 to i64*, !mcsema_real_eip !72
  %834 = load i64, i64* %RAX_read, !mcsema_real_eip !72
  store i64 %834, i64* %833, !mcsema_real_eip !72
  store volatile i64 255, i64* %EIP_write, !mcsema_real_eip !73
  %835 = load i64, i64* %RBP_read, !mcsema_real_eip !73
  %836 = add i64 %835, -136, !mcsema_real_eip !73
  %837 = inttoptr i64 %836 to i64*, !mcsema_real_eip !73
  %838 = load i64, i64* %837, !mcsema_real_eip !73
  store volatile i64 %838, i64* %RAX_write, !mcsema_real_eip !73
  store volatile i64 262, i64* %EIP_write, !mcsema_real_eip !74
  %839 = load i64, i64* %RBP_read, !mcsema_real_eip !74
  %840 = add i64 %839, -128, !mcsema_real_eip !74
  %841 = inttoptr i64 %840 to i64*, !mcsema_real_eip !74
  %842 = ptrtoint i64* %841 to i64, !mcsema_real_eip !74
  %843 = inttoptr i64 %842 to i32*, !mcsema_real_eip !74
  %844 = load i32, i32* %843, !mcsema_real_eip !74
  %845 = zext i32 %844 to i64, !mcsema_real_eip !74
  store volatile i64 %845, i64* %EDX_write, !mcsema_real_eip !74
  store volatile i64 265, i64* %EIP_write, !mcsema_real_eip !75
  %846 = load i64, i64* %RSP_read, !mcsema_real_eip !75
  %847 = inttoptr i64 %846 to i64*, !mcsema_real_eip !75
  %848 = load i64, i64* %847, !mcsema_real_eip !75
  store volatile i64 %848, i64* %RBX_write, !mcsema_real_eip !75
  %849 = add i64 %846, 8, !mcsema_real_eip !75
  store volatile i64 %849, i64* %RSP_write, !mcsema_real_eip !75
  store volatile i64 266, i64* %EIP_write, !mcsema_real_eip !76
  %850 = load i64, i64* %RSP_read, !mcsema_real_eip !76
  %851 = inttoptr i64 %850 to i64*, !mcsema_real_eip !76
  %852 = load i64, i64* %851, !mcsema_real_eip !76
  store volatile i64 %852, i64* %RBP_write, !mcsema_real_eip !76
  %853 = add i64 %850, 8, !mcsema_real_eip !76
  store volatile i64 %853, i64* %RSP_write, !mcsema_real_eip !76
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !77
  %854 = load i64, i64* %RSP_read, !mcsema_real_eip !77
  %855 = add i64 %854, 8, !mcsema_real_eip !77
  %856 = inttoptr i64 %854 to i64*, !mcsema_real_eip !77
  %857 = load i64, i64* %856, !mcsema_real_eip !77
  store volatile i64 %857, i64* %RIP_write, !mcsema_real_eip !77
  store volatile i64 %855, i64* %RSP_write, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_110(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !78
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !78
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !78
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !78
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !78
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !78
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !78
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !78
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !78
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !78
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !78
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !78
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !78
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !78
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !78
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !78
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !78
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !78
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !78
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !78
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !78
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !78
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !78
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !78
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !78
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !78
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !78
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !78
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !78
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !78
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !78
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !78
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !78
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !78
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !78
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !78
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !78
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !78
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !78
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !78
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !78
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !78
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !78
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !78
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !78
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !78
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !78
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !78
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !78
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !78
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !78
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !78
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !78
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !78
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !78
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !78
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !78
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !78
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !78
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !78
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !78
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !78
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !78
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !78
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !78
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !78
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !78
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !78
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !78
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !78
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !78
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !78
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !78
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !78
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !78
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !78
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !78
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !78
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !78
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !78
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !78
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !78
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !78
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !78
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !78
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !78
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !78
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !78
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !78
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !78
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !78
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !78
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !78
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !78
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !78
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !78
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !78
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !78
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !78
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !78
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !78
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !78
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !78
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !78
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !78
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !78
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !78
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !78
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !78
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !78
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !78
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !78
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !78
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !78
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !78
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !78
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !78
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !78
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !78
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !78
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !78
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !78
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !78
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !78
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !78
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !78
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !78
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !78
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !78
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !78
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !78
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !78
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !78
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !78
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !78
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !78
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !78
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !78
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !78
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !78
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !78
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !78
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !78
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !78
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !78
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !78
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !78
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !78
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !78
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !78
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !78
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !78
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !78
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !78
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !78
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !78
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !78
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !78
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !78
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !78
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !78
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !78
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !78
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !78
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !78
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !78
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !78
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !78
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !78
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !78
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !78
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !78
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !78
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !78
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !78
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !78
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !78
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !78
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !78
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !78
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !78
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !78
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !78
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !78
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !78
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !78
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !78
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !78
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !78
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !78
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !78
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !78
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !78
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !78
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !78
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !78
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !78
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !78
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !78
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !78
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !78
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !78
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !78
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !78
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !78
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !78
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !78
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !78
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !78
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !78
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !78
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !78
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !78
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !78
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !78
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !78
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !78
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !78
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !78
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !78
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !78
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !78
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !78
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !78
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !78
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !78
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !78
  br label %block_110, !mcsema_real_eip !78

block_110:                                        ; preds = %entry
  store volatile i64 272, i64* %EIP_write, !mcsema_real_eip !78
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !78
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !78
  %3 = sub i64 %2, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %1, i64* %4, !mcsema_real_eip !78
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !78
  store volatile i64 273, i64* %EIP_write, !mcsema_real_eip !79
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !79
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !79
  store volatile i64 276, i64* %EIP_write, !mcsema_real_eip !80
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !80
  %7 = sub i64 %6, 144, !mcsema_real_eip !80
  %8 = xor i64 %7, %6, !mcsema_real_eip !80
  %9 = xor i64 %8, 144, !mcsema_real_eip !80
  %10 = and i64 %9, 16, !mcsema_real_eip !80
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !80
  %12 = zext i1 %11 to i8, !mcsema_real_eip !80
  store volatile i8 %12, i8* %AF_write, !mcsema_real_eip !80
  %13 = trunc i64 %7 to i8, !mcsema_real_eip !80
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !80
  %15 = trunc i8 %14 to i1, !mcsema_real_eip !80
  %16 = zext i1 %15 to i8, !mcsema_real_eip !80
  %17 = xor i8 %16, 1, !mcsema_real_eip !80
  %18 = trunc i8 %17 to i1, !mcsema_real_eip !80
  %19 = zext i1 %18 to i8, !mcsema_real_eip !80
  store volatile i8 %19, i8* %PF_write, !mcsema_real_eip !80
  %20 = icmp eq i64 %7, 0, !mcsema_real_eip !80
  %21 = zext i1 %20 to i8, !mcsema_real_eip !80
  store volatile i8 %21, i8* %ZF_write, !mcsema_real_eip !80
  %22 = lshr i64 %7, 63, !mcsema_real_eip !80
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !80
  %24 = zext i1 %23 to i8, !mcsema_real_eip !80
  %25 = trunc i8 %24 to i1, !mcsema_real_eip !80
  %26 = zext i1 %25 to i8, !mcsema_real_eip !80
  store volatile i8 %26, i8* %SF_write, !mcsema_real_eip !80
  %27 = icmp ult i64 %6, 144, !mcsema_real_eip !80
  %28 = zext i1 %27 to i8, !mcsema_real_eip !80
  store volatile i8 %28, i8* %CF_write, !mcsema_real_eip !80
  %29 = xor i64 %6, 144, !mcsema_real_eip !80
  %30 = xor i64 %6, %7, !mcsema_real_eip !80
  %31 = and i64 %29, %30, !mcsema_real_eip !80
  %32 = lshr i64 %31, 63, !mcsema_real_eip !80
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !80
  %34 = zext i1 %33 to i8, !mcsema_real_eip !80
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !80
  %36 = zext i1 %35 to i8, !mcsema_real_eip !80
  store volatile i8 %36, i8* %OF_write, !mcsema_real_eip !80
  store volatile i64 %7, i64* %RSP_write, !mcsema_real_eip !80
  store volatile i64 283, i64* %EIP_write, !mcsema_real_eip !81
  %37 = ptrtoint %0* @data_20d to i64, !mcsema_real_eip !81
  %38 = add i64 %37, 0, !mcsema_real_eip !81
  store volatile i64 %38, i64* %RDI_write, !mcsema_real_eip !81
  store volatile i64 293, i64* %EIP_write, !mcsema_real_eip !82
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %40 = add i64 %39, -4, !mcsema_real_eip !82
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !82
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !82
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !82
  store i32 0, i32* %43, !mcsema_real_eip !82
  store volatile i64 300, i64* %EIP_write, !mcsema_real_eip !83
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !83
  %45 = add i64 %44, -16, !mcsema_real_eip !83
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !83
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !83
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !83
  store i32 10, i32* %48, !mcsema_real_eip !83
  store volatile i64 307, i64* %EIP_write, !mcsema_real_eip !84
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %50 = add i64 %49, -12, !mcsema_real_eip !84
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !84
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !84
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %53, !mcsema_real_eip !84
  store volatile i64 314, i64* %EIP_write, !mcsema_real_eip !85
  %54 = load i64, i64* %RBP_read, !mcsema_real_eip !85
  %55 = add i64 %54, -8, !mcsema_real_eip !85
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !85
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !85
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !85
  store i32 10, i32* %58, !mcsema_real_eip !85
  store volatile i64 321, i64* %EIP_write, !mcsema_real_eip !86
  %59 = zext i32 24 to i64, !mcsema_real_eip !86
  store volatile i64 %59, i64* %EAX_write, !mcsema_real_eip !86
  store volatile i64 326, i64* %EIP_write, !mcsema_real_eip !87
  %60 = load i32, i32* %EAX_read, !mcsema_real_eip !87
  %61 = zext i32 %60 to i64, !mcsema_real_eip !87
  store volatile i64 %61, i64* %ECX_write, !mcsema_real_eip !87
  store volatile i64 328, i64* %EIP_write, !mcsema_real_eip !88
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !88
  %63 = add i64 %62, -88, !mcsema_real_eip !88
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !88
  %65 = load i64, i64* %RDI_read, !mcsema_real_eip !88
  store i64 %65, i64* %64, !mcsema_real_eip !88
  store volatile i64 332, i64* %EIP_write, !mcsema_real_eip !89
  %66 = load i64, i64* %RCX_read, !mcsema_real_eip !89
  store volatile i64 %66, i64* %RDI_write, !mcsema_real_eip !89
  store volatile i64 335, i64* %EIP_write, !mcsema_real_eip !90
  %67 = load i64, i64* %RDI_read, !mcsema_real_eip !90
  %68 = load i64, i64* %RSP_read, !mcsema_real_eip !90
  %69 = sub i64 %68, 8, !mcsema_real_eip !90
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !90
  store i64 -2415393069852865332, i64* %70, !mcsema_real_eip !90
  store volatile i64 %69, i64* %RSP_write, !mcsema_real_eip !90
  %71 = call x86_64_sysvcc i64 @_malloc(i64 %67), !mcsema_real_eip !90
  store volatile i64 %71, i64* %RAX_write, !mcsema_real_eip !90
  store volatile i64 340, i64* %EIP_write, !mcsema_real_eip !91
  %72 = load i64, i64* %RBP_read, !mcsema_real_eip !91
  %73 = add i64 %72, -24, !mcsema_real_eip !91
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !91
  %75 = load i64, i64* %RAX_read, !mcsema_real_eip !91
  store i64 %75, i64* %74, !mcsema_real_eip !91
  store volatile i64 344, i64* %EIP_write, !mcsema_real_eip !92
  %76 = load i64, i64* %RAX_read, !mcsema_real_eip !92
  %77 = add i64 %76, 0, !mcsema_real_eip !92
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !92
  %79 = ptrtoint i64* %78 to i64, !mcsema_real_eip !92
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !92
  store i32 5, i32* %80, !mcsema_real_eip !92
  store volatile i64 350, i64* %EIP_write, !mcsema_real_eip !93
  %81 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %82 = add i64 %81, -24, !mcsema_real_eip !93
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !93
  %84 = load i64, i64* %83, !mcsema_real_eip !93
  store volatile i64 %84, i64* %RAX_write, !mcsema_real_eip !93
  store volatile i64 354, i64* %EIP_write, !mcsema_real_eip !94
  %85 = load i64, i64* %RAX_read, !mcsema_real_eip !94
  %86 = add i64 %85, 4, !mcsema_real_eip !94
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !94
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !94
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !94
  store i32 5, i32* %89, !mcsema_real_eip !94
  store volatile i64 361, i64* %EIP_write, !mcsema_real_eip !95
  %90 = load i64, i64* %RBP_read, !mcsema_real_eip !95
  %91 = add i64 %90, -24, !mcsema_real_eip !95
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !95
  %93 = load i64, i64* %92, !mcsema_real_eip !95
  store volatile i64 %93, i64* %RAX_write, !mcsema_real_eip !95
  store volatile i64 365, i64* %EIP_write, !mcsema_real_eip !96
  %94 = load i64, i64* %RAX_read, !mcsema_real_eip !96
  %95 = add i64 %94, 8, !mcsema_real_eip !96
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !96
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !96
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %98, !mcsema_real_eip !96
  store volatile i64 372, i64* %EIP_write, !mcsema_real_eip !97
  %99 = load i64, i64* %RBP_read, !mcsema_real_eip !97
  %100 = add i64 %99, -24, !mcsema_real_eip !97
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !97
  %102 = load i64, i64* %101, !mcsema_real_eip !97
  store volatile i64 %102, i64* %RAX_write, !mcsema_real_eip !97
  store volatile i64 376, i64* %EIP_write, !mcsema_real_eip !98
  %103 = load i64, i64* %RBP_read, !mcsema_real_eip !98
  %104 = add i64 %103, -8, !mcsema_real_eip !98
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !98
  %106 = ptrtoint i64* %105 to i64, !mcsema_real_eip !98
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !98
  %108 = load i32, i32* %107, !mcsema_real_eip !98
  %109 = zext i32 %108 to i64, !mcsema_real_eip !98
  store volatile i64 %109, i64* %EDX_write, !mcsema_real_eip !98
  store volatile i64 379, i64* %EIP_write, !mcsema_real_eip !99
  %110 = load i64, i64* %RBP_read, !mcsema_real_eip !99
  %111 = add i64 %110, -48, !mcsema_real_eip !99
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !99
  %113 = load i32, i32* %EDX_read, !mcsema_real_eip !99
  %114 = ptrtoint i64* %112 to i64, !mcsema_real_eip !99
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !99
  store i32 %113, i32* %115, !mcsema_real_eip !99
  store volatile i64 382, i64* %EIP_write, !mcsema_real_eip !100
  %116 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %117 = add i64 %116, -16, !mcsema_real_eip !100
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !100
  %119 = load i64, i64* %118, !mcsema_real_eip !100
  store volatile i64 %119, i64* %RCX_write, !mcsema_real_eip !100
  store volatile i64 386, i64* %EIP_write, !mcsema_real_eip !101
  %120 = load i64, i64* %RBP_read, !mcsema_real_eip !101
  %121 = add i64 %120, -56, !mcsema_real_eip !101
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !101
  %123 = load i64, i64* %RCX_read, !mcsema_real_eip !101
  store i64 %123, i64* %122, !mcsema_real_eip !101
  store volatile i64 390, i64* %EIP_write, !mcsema_real_eip !102
  %124 = load i64, i64* %RBP_read, !mcsema_real_eip !102
  %125 = add i64 %124, -56, !mcsema_real_eip !102
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !102
  %127 = load i64, i64* %126, !mcsema_real_eip !102
  store volatile i64 %127, i64* %RDI_write, !mcsema_real_eip !102
  store volatile i64 394, i64* %EIP_write, !mcsema_real_eip !103
  %128 = load i64, i64* %RBP_read, !mcsema_real_eip !103
  %129 = add i64 %128, -48, !mcsema_real_eip !103
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !103
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !103
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !103
  %133 = load i32, i32* %132, !mcsema_real_eip !103
  %134 = zext i32 %133 to i64, !mcsema_real_eip !103
  store volatile i64 %134, i64* %ESI_write, !mcsema_real_eip !103
  store volatile i64 397, i64* %EIP_write, !mcsema_real_eip !104
  %135 = load i64, i64* %RBP_read, !mcsema_real_eip !104
  %136 = add i64 %135, -8, !mcsema_real_eip !104
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !104
  %138 = ptrtoint i64* %137 to i64, !mcsema_real_eip !104
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !104
  %140 = load i32, i32* %139, !mcsema_real_eip !104
  %141 = zext i32 %140 to i64, !mcsema_real_eip !104
  store volatile i64 %141, i64* %EDX_write, !mcsema_real_eip !104
  store volatile i64 400, i64* %EIP_write, !mcsema_real_eip !105
  %142 = load i64, i64* %RSP_read, !mcsema_real_eip !105
  store volatile i64 %142, i64* %RCX_write, !mcsema_real_eip !105
  store volatile i64 403, i64* %EIP_write, !mcsema_real_eip !106
  %143 = load i64, i64* %RCX_read, !mcsema_real_eip !106
  %144 = add i64 %143, 16, !mcsema_real_eip !106
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !106
  %146 = load i32, i32* %EDX_read, !mcsema_real_eip !106
  %147 = ptrtoint i64* %145 to i64, !mcsema_real_eip !106
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !106
  store i32 %146, i32* %148, !mcsema_real_eip !106
  store volatile i64 406, i64* %EIP_write, !mcsema_real_eip !107
  %149 = load i64, i64* %RBP_read, !mcsema_real_eip !107
  %150 = add i64 %149, -16, !mcsema_real_eip !107
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !107
  %152 = load i64, i64* %151, !mcsema_real_eip !107
  store volatile i64 %152, i64* %R8_write, !mcsema_real_eip !107
  store volatile i64 410, i64* %EIP_write, !mcsema_real_eip !108
  %153 = load i64, i64* %RCX_read, !mcsema_real_eip !108
  %154 = add i64 %153, 8, !mcsema_real_eip !108
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !108
  %156 = load i64, i64* %R8_read, !mcsema_real_eip !108
  store i64 %156, i64* %155, !mcsema_real_eip !108
  store volatile i64 414, i64* %EIP_write, !mcsema_real_eip !109
  %157 = load i64, i64* %RCX_read, !mcsema_real_eip !109
  %158 = add i64 %157, 32, !mcsema_real_eip !109
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !109
  %160 = load i64, i64* %RAX_read, !mcsema_real_eip !109
  store i64 %160, i64* %159, !mcsema_real_eip !109
  store volatile i64 418, i64* %EIP_write, !mcsema_real_eip !110
  %161 = load i64, i64* %RBP_read, !mcsema_real_eip !110
  %162 = add i64 %161, -16, !mcsema_real_eip !110
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !110
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !110
  store volatile i64 %164, i64* %R8_write, !mcsema_real_eip !110
  store volatile i64 422, i64* %EIP_write, !mcsema_real_eip !111
  %165 = load i64, i64* %RCX_read, !mcsema_real_eip !111
  %166 = add i64 %165, 24, !mcsema_real_eip !111
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !111
  %168 = load i64, i64* %R8_read, !mcsema_real_eip !111
  store i64 %168, i64* %167, !mcsema_real_eip !111
  store volatile i64 426, i64* %EIP_write, !mcsema_real_eip !112
  %169 = load i64, i64* %RCX_read, !mcsema_real_eip !112
  %170 = add i64 %169, 0, !mcsema_real_eip !112
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !112
  %172 = ptrtoint i64* %171 to i64, !mcsema_real_eip !112
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !112
  store i32 3, i32* %173, !mcsema_real_eip !112
  store volatile i64 432, i64* %EIP_write, !mcsema_real_eip !113
  %174 = zext i32 1 to i64, !mcsema_real_eip !113
  store volatile i64 %174, i64* %EDX_write, !mcsema_real_eip !113
  store volatile i64 437, i64* %EIP_write, !mcsema_real_eip !114
  %175 = zext i32 2 to i64, !mcsema_real_eip !114
  store volatile i64 %175, i64* %R9D_write, !mcsema_real_eip !114
  store volatile i64 443, i64* %EIP_write, !mcsema_real_eip !115
  %176 = load i64, i64* %RBP_read, !mcsema_real_eip !115
  %177 = add i64 %176, -92, !mcsema_real_eip !115
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !115
  %179 = load i32, i32* %EDX_read, !mcsema_real_eip !115
  %180 = ptrtoint i64* %178 to i64, !mcsema_real_eip !115
  %181 = inttoptr i64 %180 to i32*, !mcsema_real_eip !115
  store i32 %179, i32* %181, !mcsema_real_eip !115
  store volatile i64 446, i64* %EIP_write, !mcsema_real_eip !116
  %182 = load i64, i64* %R8_read, !mcsema_real_eip !116
  store volatile i64 %182, i64* %RDX_write, !mcsema_real_eip !116
  store volatile i64 449, i64* %EIP_write, !mcsema_real_eip !117
  %183 = load i64, i64* %RAX_read, !mcsema_real_eip !117
  store volatile i64 %183, i64* %RCX_write, !mcsema_real_eip !117
  store volatile i64 452, i64* %EIP_write, !mcsema_real_eip !118
  %184 = load i64, i64* %RBP_read, !mcsema_real_eip !118
  %185 = add i64 %184, -92, !mcsema_real_eip !118
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !118
  %187 = ptrtoint i64* %186 to i64, !mcsema_real_eip !118
  %188 = inttoptr i64 %187 to i32*, !mcsema_real_eip !118
  %189 = load i32, i32* %188, !mcsema_real_eip !118
  %190 = zext i32 %189 to i64, !mcsema_real_eip !118
  store volatile i64 %190, i64* %R8D_write, !mcsema_real_eip !118
  store volatile i64 456, i64* %EIP_write, !mcsema_real_eip !119
  %191 = load i64, i64* %RSP_read, !mcsema_real_eip !119
  %192 = sub i64 %191, 8, !mcsema_real_eip !119
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !119
  store i64 461, i64* %193, !mcsema_real_eip !119
  store volatile i64 %192, i64* %RSP_write, !mcsema_real_eip !119
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !119
  store volatile i64 461, i64* %EIP_write, !mcsema_real_eip !120
  %194 = load i64, i64* %RBP_read, !mcsema_real_eip !120
  %195 = add i64 %194, -64, !mcsema_real_eip !120
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !120
  %197 = load i32, i32* %EDX_read, !mcsema_real_eip !120
  %198 = ptrtoint i64* %196 to i64, !mcsema_real_eip !120
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !120
  store i32 %197, i32* %199, !mcsema_real_eip !120
  store volatile i64 464, i64* %EIP_write, !mcsema_real_eip !121
  %200 = load i64, i64* %RBP_read, !mcsema_real_eip !121
  %201 = add i64 %200, -72, !mcsema_real_eip !121
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !121
  %203 = load i64, i64* %RAX_read, !mcsema_real_eip !121
  store i64 %203, i64* %202, !mcsema_real_eip !121
  store volatile i64 468, i64* %EIP_write, !mcsema_real_eip !122
  %204 = load i64, i64* %RBP_read, !mcsema_real_eip !122
  %205 = add i64 %204, -72, !mcsema_real_eip !122
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !122
  %207 = load i64, i64* %206, !mcsema_real_eip !122
  store volatile i64 %207, i64* %RAX_write, !mcsema_real_eip !122
  store volatile i64 472, i64* %EIP_write, !mcsema_real_eip !123
  %208 = load i64, i64* %RBP_read, !mcsema_real_eip !123
  %209 = add i64 %208, -40, !mcsema_real_eip !123
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !123
  %211 = load i64, i64* %RAX_read, !mcsema_real_eip !123
  store i64 %211, i64* %210, !mcsema_real_eip !123
  store volatile i64 476, i64* %EIP_write, !mcsema_real_eip !124
  %212 = load i64, i64* %RBP_read, !mcsema_real_eip !124
  %213 = add i64 %212, -64, !mcsema_real_eip !124
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !124
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !124
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !124
  %217 = load i32, i32* %216, !mcsema_real_eip !124
  %218 = zext i32 %217 to i64, !mcsema_real_eip !124
  store volatile i64 %218, i64* %EDX_write, !mcsema_real_eip !124
  store volatile i64 479, i64* %EIP_write, !mcsema_real_eip !125
  %219 = load i64, i64* %RBP_read, !mcsema_real_eip !125
  %220 = add i64 %219, -32, !mcsema_real_eip !125
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !125
  %222 = load i32, i32* %EDX_read, !mcsema_real_eip !125
  %223 = ptrtoint i64* %221 to i64, !mcsema_real_eip !125
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !125
  store i32 %222, i32* %224, !mcsema_real_eip !125
  store volatile i64 482, i64* %EIP_write, !mcsema_real_eip !126
  %225 = load i64, i64* %RBP_read, !mcsema_real_eip !126
  %226 = add i64 %225, -40, !mcsema_real_eip !126
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !126
  %228 = ptrtoint i64* %227 to i64, !mcsema_real_eip !126
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !126
  %230 = load i32, i32* %229, !mcsema_real_eip !126
  %231 = zext i32 %230 to i64, !mcsema_real_eip !126
  store volatile i64 %231, i64* %EDX_write, !mcsema_real_eip !126
  store volatile i64 485, i64* %EIP_write, !mcsema_real_eip !127
  %232 = load i64, i64* %RBP_read, !mcsema_real_eip !127
  %233 = add i64 %232, -36, !mcsema_real_eip !127
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !127
  %235 = ptrtoint i64* %234 to i64, !mcsema_real_eip !127
  %236 = inttoptr i64 %235 to i32*, !mcsema_real_eip !127
  %237 = load i32, i32* %236, !mcsema_real_eip !127
  %238 = load i32, i32* %EDX_read, !mcsema_real_eip !127
  %239 = add i32 %238, %237, !mcsema_real_eip !127
  %240 = xor i32 %239, %237, !mcsema_real_eip !127
  %241 = xor i32 %240, %238, !mcsema_real_eip !127
  %242 = and i32 %241, 16, !mcsema_real_eip !127
  %243 = icmp ne i32 %242, 0, !mcsema_real_eip !127
  %244 = zext i1 %243 to i8, !mcsema_real_eip !127
  store volatile i8 %244, i8* %AF_write, !mcsema_real_eip !127
  %245 = lshr i32 %239, 31, !mcsema_real_eip !127
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !127
  %247 = zext i1 %246 to i8, !mcsema_real_eip !127
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !127
  %249 = zext i1 %248 to i8, !mcsema_real_eip !127
  store volatile i8 %249, i8* %SF_write, !mcsema_real_eip !127
  %250 = icmp eq i32 %239, 0, !mcsema_real_eip !127
  %251 = zext i1 %250 to i8, !mcsema_real_eip !127
  store volatile i8 %251, i8* %ZF_write, !mcsema_real_eip !127
  %252 = xor i32 %237, %238, !mcsema_real_eip !127
  %253 = xor i32 %252, -1, !mcsema_real_eip !127
  %254 = xor i32 %237, %239, !mcsema_real_eip !127
  %255 = and i32 %253, %254, !mcsema_real_eip !127
  %256 = lshr i32 %255, 31, !mcsema_real_eip !127
  %257 = and i32 %256, 1, !mcsema_real_eip !127
  %258 = trunc i32 %257 to i1, !mcsema_real_eip !127
  %259 = zext i1 %258 to i8, !mcsema_real_eip !127
  %260 = trunc i8 %259 to i1, !mcsema_real_eip !127
  %261 = zext i1 %260 to i8, !mcsema_real_eip !127
  store volatile i8 %261, i8* %OF_write, !mcsema_real_eip !127
  %262 = trunc i32 %239 to i8, !mcsema_real_eip !127
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !127
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !127
  %265 = zext i1 %264 to i8, !mcsema_real_eip !127
  %266 = xor i8 %265, 1, !mcsema_real_eip !127
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !127
  %268 = zext i1 %267 to i8, !mcsema_real_eip !127
  store volatile i8 %268, i8* %PF_write, !mcsema_real_eip !127
  %269 = icmp ult i32 %239, %237, !mcsema_real_eip !127
  %270 = zext i1 %269 to i8, !mcsema_real_eip !127
  store volatile i8 %270, i8* %CF_write, !mcsema_real_eip !127
  %271 = zext i32 %239 to i64, !mcsema_real_eip !127
  store volatile i64 %271, i64* %EDX_write, !mcsema_real_eip !127
  store volatile i64 488, i64* %EIP_write, !mcsema_real_eip !128
  %272 = load i64, i64* %RBP_read, !mcsema_real_eip !128
  %273 = add i64 %272, -32, !mcsema_real_eip !128
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !128
  %275 = ptrtoint i64* %274 to i64, !mcsema_real_eip !128
  %276 = inttoptr i64 %275 to i32*, !mcsema_real_eip !128
  %277 = load i32, i32* %276, !mcsema_real_eip !128
  %278 = load i32, i32* %EDX_read, !mcsema_real_eip !128
  %279 = add i32 %278, %277, !mcsema_real_eip !128
  %280 = xor i32 %279, %277, !mcsema_real_eip !128
  %281 = xor i32 %280, %278, !mcsema_real_eip !128
  %282 = and i32 %281, 16, !mcsema_real_eip !128
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !128
  %284 = zext i1 %283 to i8, !mcsema_real_eip !128
  store volatile i8 %284, i8* %AF_write, !mcsema_real_eip !128
  %285 = lshr i32 %279, 31, !mcsema_real_eip !128
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !128
  %287 = zext i1 %286 to i8, !mcsema_real_eip !128
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !128
  %289 = zext i1 %288 to i8, !mcsema_real_eip !128
  store volatile i8 %289, i8* %SF_write, !mcsema_real_eip !128
  %290 = icmp eq i32 %279, 0, !mcsema_real_eip !128
  %291 = zext i1 %290 to i8, !mcsema_real_eip !128
  store volatile i8 %291, i8* %ZF_write, !mcsema_real_eip !128
  %292 = xor i32 %277, %278, !mcsema_real_eip !128
  %293 = xor i32 %292, -1, !mcsema_real_eip !128
  %294 = xor i32 %277, %279, !mcsema_real_eip !128
  %295 = and i32 %293, %294, !mcsema_real_eip !128
  %296 = lshr i32 %295, 31, !mcsema_real_eip !128
  %297 = and i32 %296, 1, !mcsema_real_eip !128
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !128
  %299 = zext i1 %298 to i8, !mcsema_real_eip !128
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !128
  %301 = zext i1 %300 to i8, !mcsema_real_eip !128
  store volatile i8 %301, i8* %OF_write, !mcsema_real_eip !128
  %302 = trunc i32 %279 to i8, !mcsema_real_eip !128
  %303 = call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !128
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !128
  %305 = zext i1 %304 to i8, !mcsema_real_eip !128
  %306 = xor i8 %305, 1, !mcsema_real_eip !128
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !128
  %308 = zext i1 %307 to i8, !mcsema_real_eip !128
  store volatile i8 %308, i8* %PF_write, !mcsema_real_eip !128
  %309 = icmp ult i32 %279, %277, !mcsema_real_eip !128
  %310 = zext i1 %309 to i8, !mcsema_real_eip !128
  store volatile i8 %310, i8* %CF_write, !mcsema_real_eip !128
  %311 = zext i32 %279 to i64, !mcsema_real_eip !128
  store volatile i64 %311, i64* %EDX_write, !mcsema_real_eip !128
  store volatile i64 491, i64* %EIP_write, !mcsema_real_eip !129
  %312 = load i64, i64* %RBP_read, !mcsema_real_eip !129
  %313 = add i64 %312, -76, !mcsema_real_eip !129
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !129
  %315 = load i32, i32* %EDX_read, !mcsema_real_eip !129
  %316 = ptrtoint i64* %314 to i64, !mcsema_real_eip !129
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !129
  store i32 %315, i32* %317, !mcsema_real_eip !129
  store volatile i64 494, i64* %EIP_write, !mcsema_real_eip !130
  %318 = load i64, i64* %RBP_read, !mcsema_real_eip !130
  %319 = add i64 %318, -76, !mcsema_real_eip !130
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !130
  %321 = ptrtoint i64* %320 to i64, !mcsema_real_eip !130
  %322 = inttoptr i64 %321 to i32*, !mcsema_real_eip !130
  %323 = load i32, i32* %322, !mcsema_real_eip !130
  %324 = zext i32 %323 to i64, !mcsema_real_eip !130
  store volatile i64 %324, i64* %ESI_write, !mcsema_real_eip !130
  store volatile i64 497, i64* %EIP_write, !mcsema_real_eip !131
  %325 = load i64, i64* %RBP_read, !mcsema_real_eip !131
  %326 = add i64 %325, -88, !mcsema_real_eip !131
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !131
  %328 = load i64, i64* %327, !mcsema_real_eip !131
  store volatile i64 %328, i64* %RDI_write, !mcsema_real_eip !131
  store volatile i64 501, i64* %EIP_write, !mcsema_real_eip !132
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !132
  store volatile i64 503, i64* %EIP_write, !mcsema_real_eip !133
  %329 = load i64, i64* %RDI_read, !mcsema_real_eip !133
  %330 = load i64, i64* %RSI_read, !mcsema_real_eip !133
  %331 = load i64, i64* %RDX_read, !mcsema_real_eip !133
  %332 = load i64, i64* %RCX_read, !mcsema_real_eip !133
  %333 = load i64, i64* %R8_read, !mcsema_real_eip !133
  %334 = load i64, i64* %R9_read, !mcsema_real_eip !133
  %335 = load i64, i64* %RSP_read, !mcsema_real_eip !133
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !133
  %337 = load i64, i64* %336, !mcsema_real_eip !133
  %338 = add i64 %335, 8, !mcsema_real_eip !133
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !133
  %340 = load i64, i64* %339, !mcsema_real_eip !133
  %341 = add i64 %338, 8, !mcsema_real_eip !133
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !133
  %343 = load i64, i64* %342, !mcsema_real_eip !133
  %344 = add i64 %341, 8, !mcsema_real_eip !133
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !133
  %346 = load i64, i64* %345, !mcsema_real_eip !133
  %347 = add i64 %344, 8, !mcsema_real_eip !133
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !133
  %349 = load i64, i64* %348, !mcsema_real_eip !133
  %350 = add i64 %347, 8, !mcsema_real_eip !133
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !133
  %352 = load i64, i64* %351, !mcsema_real_eip !133
  %353 = add i64 %350, 8, !mcsema_real_eip !133
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !133
  %355 = load i64, i64* %354, !mcsema_real_eip !133
  %356 = add i64 %353, 8, !mcsema_real_eip !133
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !133
  %358 = load i64, i64* %357, !mcsema_real_eip !133
  %359 = add i64 %356, 8, !mcsema_real_eip !133
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !133
  %361 = load i64, i64* %360, !mcsema_real_eip !133
  %362 = add i64 %359, 8, !mcsema_real_eip !133
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !133
  %364 = load i64, i64* %363, !mcsema_real_eip !133
  %365 = load i64, i64* %RSP_read, !mcsema_real_eip !133
  %366 = sub i64 %365, 8, !mcsema_real_eip !133
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !133
  store i64 -2415393069852865332, i64* %367, !mcsema_real_eip !133
  store volatile i64 %366, i64* %RSP_write, !mcsema_real_eip !133
  %368 = call x86_64_sysvcc i64 @_printf(i64 %329, i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %337, i64 %340, i64 %343, i64 %346, i64 %349, i64 %352, i64 %355, i64 %358, i64 %361, i64 %364), !mcsema_real_eip !133
  store volatile i64 %368, i64* %RAX_write, !mcsema_real_eip !133
  store volatile i64 508, i64* %EIP_write, !mcsema_real_eip !134
  %369 = load i64, i64* %RBP_read, !mcsema_real_eip !134
  %370 = add i64 %369, -76, !mcsema_real_eip !134
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !134
  %372 = ptrtoint i64* %371 to i64, !mcsema_real_eip !134
  %373 = inttoptr i64 %372 to i32*, !mcsema_real_eip !134
  %374 = load i32, i32* %373, !mcsema_real_eip !134
  %375 = zext i32 %374 to i64, !mcsema_real_eip !134
  store volatile i64 %375, i64* %EDX_write, !mcsema_real_eip !134
  store volatile i64 511, i64* %EIP_write, !mcsema_real_eip !135
  %376 = load i64, i64* %RBP_read, !mcsema_real_eip !135
  %377 = add i64 %376, -96, !mcsema_real_eip !135
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !135
  %379 = load i32, i32* %EAX_read, !mcsema_real_eip !135
  %380 = ptrtoint i64* %378 to i64, !mcsema_real_eip !135
  %381 = inttoptr i64 %380 to i32*, !mcsema_real_eip !135
  store i32 %379, i32* %381, !mcsema_real_eip !135
  store volatile i64 514, i64* %EIP_write, !mcsema_real_eip !136
  %382 = load i32, i32* %EDX_read, !mcsema_real_eip !136
  %383 = zext i32 %382 to i64, !mcsema_real_eip !136
  store volatile i64 %383, i64* %EAX_write, !mcsema_real_eip !136
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !137
  %384 = load i64, i64* %RSP_read, !mcsema_real_eip !137
  %385 = add i64 144, %384, !mcsema_real_eip !137
  %386 = xor i64 %385, %384, !mcsema_real_eip !137
  %387 = xor i64 %386, 144, !mcsema_real_eip !137
  %388 = and i64 %387, 16, !mcsema_real_eip !137
  %389 = icmp ne i64 %388, 0, !mcsema_real_eip !137
  %390 = zext i1 %389 to i8, !mcsema_real_eip !137
  store volatile i8 %390, i8* %AF_write, !mcsema_real_eip !137
  %391 = lshr i64 %385, 63, !mcsema_real_eip !137
  %392 = trunc i64 %391 to i1, !mcsema_real_eip !137
  %393 = zext i1 %392 to i8, !mcsema_real_eip !137
  %394 = trunc i8 %393 to i1, !mcsema_real_eip !137
  %395 = zext i1 %394 to i8, !mcsema_real_eip !137
  store volatile i8 %395, i8* %SF_write, !mcsema_real_eip !137
  %396 = icmp eq i64 %385, 0, !mcsema_real_eip !137
  %397 = zext i1 %396 to i8, !mcsema_real_eip !137
  store volatile i8 %397, i8* %ZF_write, !mcsema_real_eip !137
  %398 = xor i64 %384, 144, !mcsema_real_eip !137
  %399 = xor i64 %398, -1, !mcsema_real_eip !137
  %400 = xor i64 %384, %385, !mcsema_real_eip !137
  %401 = and i64 %399, %400, !mcsema_real_eip !137
  %402 = lshr i64 %401, 63, !mcsema_real_eip !137
  %403 = and i64 %402, 1, !mcsema_real_eip !137
  %404 = trunc i64 %403 to i1, !mcsema_real_eip !137
  %405 = zext i1 %404 to i8, !mcsema_real_eip !137
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !137
  %407 = zext i1 %406 to i8, !mcsema_real_eip !137
  store volatile i8 %407, i8* %OF_write, !mcsema_real_eip !137
  %408 = trunc i64 %385 to i8, !mcsema_real_eip !137
  %409 = call i8 @llvm.ctpop.i8(i8 %408), !mcsema_real_eip !137
  %410 = trunc i8 %409 to i1, !mcsema_real_eip !137
  %411 = zext i1 %410 to i8, !mcsema_real_eip !137
  %412 = xor i8 %411, 1, !mcsema_real_eip !137
  %413 = trunc i8 %412 to i1, !mcsema_real_eip !137
  %414 = zext i1 %413 to i8, !mcsema_real_eip !137
  store volatile i8 %414, i8* %PF_write, !mcsema_real_eip !137
  %415 = icmp ult i64 %385, %384, !mcsema_real_eip !137
  %416 = zext i1 %415 to i8, !mcsema_real_eip !137
  store volatile i8 %416, i8* %CF_write, !mcsema_real_eip !137
  store volatile i64 %385, i64* %RSP_write, !mcsema_real_eip !137
  store volatile i64 523, i64* %EIP_write, !mcsema_real_eip !138
  %417 = load i64, i64* %RSP_read, !mcsema_real_eip !138
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !138
  %419 = load i64, i64* %418, !mcsema_real_eip !138
  store volatile i64 %419, i64* %RBP_write, !mcsema_real_eip !138
  %420 = add i64 %417, 8, !mcsema_real_eip !138
  store volatile i64 %420, i64* %RSP_write, !mcsema_real_eip !138
  store volatile i64 524, i64* %EIP_write, !mcsema_real_eip !139
  %421 = load i64, i64* %RSP_read, !mcsema_real_eip !139
  %422 = add i64 %421, 8, !mcsema_real_eip !139
  %423 = inttoptr i64 %421 to i64*, !mcsema_real_eip !139
  %424 = load i64, i64* %423, !mcsema_real_eip !139
  store volatile i64 %424, i64* %RIP_write, !mcsema_real_eip !139
  store volatile i64 %422, i64* %RSP_write, !mcsema_real_eip !139
  ret void, !mcsema_real_eip !139
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
!3 = !{i64 5}
!4 = !{i64 9}
!5 = !{i64 13}
!6 = !{i64 17}
!7 = !{i64 20}
!8 = !{i64 24}
!9 = !{i64 27}
!10 = !{i64 30}
!11 = !{i64 34}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 46}
!15 = !{i64 50}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 61}
!19 = !{i64 65}
!20 = !{i64 68}
!21 = !{i64 72}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 82}
!25 = !{i64 85}
!26 = !{i64 88}
!27 = !{i64 91}
!28 = !{i64 95}
!29 = !{i64 98}
!30 = !{i64 101}
!31 = !{i64 104}
!32 = !{i64 107}
!33 = !{i64 110}
!34 = !{i64 113}
!35 = !{i64 116}
!36 = !{i64 120}
!37 = !{i64 124}
!38 = !{i64 127}
!39 = !{i64 131}
!40 = !{i64 135}
!41 = !{i64 138}
!42 = !{i64 142}
!43 = !{i64 146}
!44 = !{i64 150}
!45 = !{i64 153}
!46 = !{i64 157}
!47 = !{i64 161}
!48 = !{i64 164}
!49 = !{i64 167}
!50 = !{i64 170}
!51 = !{i64 173}
!52 = !{i64 177}
!53 = !{i64 181}
!54 = !{i64 184}
!55 = !{i64 188}
!56 = !{i64 192}
!57 = !{i64 195}
!58 = !{i64 199}
!59 = !{i64 203}
!60 = !{i64 207}
!61 = !{i64 210}
!62 = !{i64 214}
!63 = !{i64 218}
!64 = !{i64 221}
!65 = !{i64 224}
!66 = !{i64 227}
!67 = !{i64 230}
!68 = !{i64 234}
!69 = !{i64 238}
!70 = !{i64 241}
!71 = !{i64 244}
!72 = !{i64 248}
!73 = !{i64 255}
!74 = !{i64 262}
!75 = !{i64 265}
!76 = !{i64 266}
!77 = !{i64 267}
!78 = !{i64 272}
!79 = !{i64 273}
!80 = !{i64 276}
!81 = !{i64 283}
!82 = !{i64 293}
!83 = !{i64 300}
!84 = !{i64 307}
!85 = !{i64 314}
!86 = !{i64 321}
!87 = !{i64 326}
!88 = !{i64 328}
!89 = !{i64 332}
!90 = !{i64 335}
!91 = !{i64 340}
!92 = !{i64 344}
!93 = !{i64 350}
!94 = !{i64 354}
!95 = !{i64 361}
!96 = !{i64 365}
!97 = !{i64 372}
!98 = !{i64 376}
!99 = !{i64 379}
!100 = !{i64 382}
!101 = !{i64 386}
!102 = !{i64 390}
!103 = !{i64 394}
!104 = !{i64 397}
!105 = !{i64 400}
!106 = !{i64 403}
!107 = !{i64 406}
!108 = !{i64 410}
!109 = !{i64 414}
!110 = !{i64 418}
!111 = !{i64 422}
!112 = !{i64 426}
!113 = !{i64 432}
!114 = !{i64 437}
!115 = !{i64 443}
!116 = !{i64 446}
!117 = !{i64 449}
!118 = !{i64 452}
!119 = !{i64 456}
!120 = !{i64 461}
!121 = !{i64 464}
!122 = !{i64 468}
!123 = !{i64 472}
!124 = !{i64 476}
!125 = !{i64 479}
!126 = !{i64 482}
!127 = !{i64 485}
!128 = !{i64 488}
!129 = !{i64 491}
!130 = !{i64 494}
!131 = !{i64 497}
!132 = !{i64 501}
!133 = !{i64 503}
!134 = !{i64 508}
!135 = !{i64 511}
!136 = !{i64 514}
!137 = !{i64 516}
!138 = !{i64 523}
!139 = !{i64 524}
