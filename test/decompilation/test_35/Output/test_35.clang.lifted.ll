; ModuleID = 'Output/test_35.clang.lifted.bc'
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
module asm "  .globl pthread_create;"
module asm "  .globl _pthread_create;"
module asm "  .type _pthread_create,@function"
module asm "_pthread_create:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq pthread_create@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _pthread_create,0b-_pthread_create;"
module asm "  .cfi_endproc;"
module asm "  .globl pthread_join;"
module asm "  .globl _pthread_join;"
module asm "  .type _pthread_join,@function"
module asm "_pthread_join:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq pthread_join@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _pthread_join,0b-_pthread_join;"
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

%0 = type <{ [8 x i8] }>
%1 = type <{ [14 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_98 = internal global %0 <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 64
@data_a0 = internal constant %1 <{ [14 x i8] c"Thread 1: %d\0A\00" }>, align 64
@data_b0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\22\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"g\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %10 = ptrtoint %0* @data_98 to i64, !mcsema_real_eip !3
  %11 = add i64 %10, 0, !mcsema_real_eip !3
  %12 = add i64 0, %11, !mcsema_real_eip !3
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !3
  %14 = ptrtoint i64* %13 to i64, !mcsema_real_eip !3
  %15 = inttoptr i64 %14 to i64 addrspace(257)*, !mcsema_real_eip !3
  %16 = load volatile i64, i64 addrspace(257)* %15, !mcsema_real_eip !3
  store volatile i64 %16, i64* %RDI_write, !mcsema_real_eip !3
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !4
  %17 = load i64, i64* %RDI_read, !mcsema_real_eip !4
  %18 = load i64, i64* %RDI_read, !mcsema_real_eip !4
  %19 = add i64 %18, 1, !mcsema_real_eip !4
  %20 = icmp eq i64 %19, 0, !mcsema_real_eip !4
  %21 = zext i1 %20 to i8, !mcsema_real_eip !4
  store volatile i8 %21, i8* %ZF_write, !mcsema_real_eip !4
  %22 = trunc i64 %19 to i8, !mcsema_real_eip !4
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !4
  %24 = trunc i8 %23 to i1, !mcsema_real_eip !4
  %25 = zext i1 %24 to i8, !mcsema_real_eip !4
  %26 = xor i8 %25, 1, !mcsema_real_eip !4
  %27 = trunc i8 %26 to i1, !mcsema_real_eip !4
  %28 = zext i1 %27 to i8, !mcsema_real_eip !4
  store volatile i8 %28, i8* %PF_write, !mcsema_real_eip !4
  %29 = lshr i64 %19, 63, !mcsema_real_eip !4
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !4
  %31 = zext i1 %30 to i8, !mcsema_real_eip !4
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !4
  %33 = zext i1 %32 to i8, !mcsema_real_eip !4
  store volatile i8 %33, i8* %SF_write, !mcsema_real_eip !4
  %34 = xor i64 %18, 1, !mcsema_real_eip !4
  %35 = xor i64 %34, -1, !mcsema_real_eip !4
  %36 = xor i64 %18, %19, !mcsema_real_eip !4
  %37 = and i64 %35, %36, !mcsema_real_eip !4
  %38 = lshr i64 %37, 63, !mcsema_real_eip !4
  %39 = and i64 %38, 1, !mcsema_real_eip !4
  %40 = trunc i64 %39 to i1, !mcsema_real_eip !4
  %41 = zext i1 %40 to i8, !mcsema_real_eip !4
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !4
  %43 = zext i1 %42 to i8, !mcsema_real_eip !4
  store volatile i8 %43, i8* %OF_write, !mcsema_real_eip !4
  store volatile i64 %19, i64* %RDI_write, !mcsema_real_eip !4
  %44 = load i64, i64* %RDI_read, !mcsema_real_eip !4
  %45 = xor i64 %17, %44, !mcsema_real_eip !4
  %46 = xor i64 %45, 1, !mcsema_real_eip !4
  %47 = and i64 %46, 16, !mcsema_real_eip !4
  %48 = icmp ne i64 %47, 0, !mcsema_real_eip !4
  %49 = zext i1 %48 to i8, !mcsema_real_eip !4
  store volatile i8 %49, i8* %AF_write, !mcsema_real_eip !4
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !5
  %50 = ptrtoint %0* @data_98 to i64, !mcsema_real_eip !5
  %51 = add i64 %50, 0, !mcsema_real_eip !5
  %52 = add i64 0, %51, !mcsema_real_eip !5
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !5
  %54 = load i64, i64* %RDI_read, !mcsema_real_eip !5
  %55 = ptrtoint i64* %53 to i64, !mcsema_real_eip !5
  %56 = inttoptr i64 %55 to i64 addrspace(257)*, !mcsema_real_eip !5
  store volatile i64 %54, i64 addrspace(257)* %56, !mcsema_real_eip !5
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !6
  %57 = load i64, i64* %RDI_read, !mcsema_real_eip !6
  store volatile i64 %57, i64* %RAX_write, !mcsema_real_eip !6
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !7
  %58 = load i64, i64* %RSP_read, !mcsema_real_eip !7
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !7
  %60 = load i64, i64* %59, !mcsema_real_eip !7
  store volatile i64 %60, i64* %RBP_write, !mcsema_real_eip !7
  %61 = add i64 %58, 8, !mcsema_real_eip !7
  store volatile i64 %61, i64* %RSP_write, !mcsema_real_eip !7
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !8
  %62 = load i64, i64* %RSP_read, !mcsema_real_eip !8
  %63 = add i64 %62, 8, !mcsema_real_eip !8
  %64 = inttoptr i64 %62 to i64*, !mcsema_real_eip !8
  %65 = load i64, i64* %64, !mcsema_real_eip !8
  store volatile i64 %65, i64* %RIP_write, !mcsema_real_eip !8
  store volatile i64 %63, i64* %RSP_write, !mcsema_real_eip !8
  ret void, !mcsema_real_eip !8
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !9
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !9
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !9
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !9
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !9
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !9
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !9
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !9
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !9
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !9
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !9
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !9
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !9
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !9
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !9
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !9
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !9
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !9
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !9
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !9
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !9
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !9
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !9
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !9
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !9
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !9
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !9
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !9
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !9
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !9
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !9
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !9
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !9
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !9
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !9
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !9
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !9
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !9
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !9
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !9
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !9
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !9
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !9
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !9
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !9
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !9
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !9
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !9
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !9
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !9
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !9
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !9
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !9
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !9
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !9
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !9
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !9
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !9
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !9
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !9
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !9
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !9
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !9
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !9
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !9
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !9
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !9
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !9
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !9
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !9
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !9
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !9
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !9
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !9
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !9
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !9
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !9
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !9
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !9
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !9
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !9
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !9
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !9
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !9
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !9
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !9
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !9
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !9
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !9
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !9
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !9
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !9
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !9
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !9
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !9
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !9
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !9
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !9
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !9
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !9
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !9
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !9
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !9
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !9
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !9
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !9
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !9
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !9
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !9
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !9
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !9
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !9
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !9
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !9
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !9
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !9
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !9
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !9
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !9
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !9
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !9
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !9
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !9
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !9
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !9
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !9
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !9
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !9
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !9
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !9
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !9
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !9
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !9
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !9
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !9
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !9
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !9
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !9
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !9
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !9
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !9
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !9
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !9
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !9
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !9
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !9
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !9
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !9
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !9
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !9
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !9
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !9
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !9
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !9
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !9
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !9
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !9
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !9
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !9
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !9
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !9
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !9
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !9
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !9
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !9
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !9
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !9
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !9
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !9
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !9
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !9
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !9
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !9
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !9
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !9
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !9
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !9
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !9
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !9
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !9
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !9
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !9
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !9
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !9
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !9
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !9
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !9
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !9
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !9
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !9
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !9
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !9
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !9
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !9
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !9
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !9
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !9
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !9
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !9
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !9
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !9
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !9
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !9
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !9
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !9
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !9
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !9
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !9
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !9
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !9
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !9
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !9
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !9
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !9
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !9
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !9
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !9
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !9
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !9
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !9
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !9
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !9
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !9
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !9
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !9
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !9
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !9
  br label %block_30, !mcsema_real_eip !9

block_30:                                         ; preds = %entry
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !9
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %3 = sub i64 %2, 8, !mcsema_real_eip !9
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !9
  store i64 %1, i64* %4, !mcsema_real_eip !9
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !9
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !10
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !10
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !11
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !11
  %7 = sext i8 48 to i64, !mcsema_real_eip !11
  %8 = sub i64 %6, %7, !mcsema_real_eip !11
  %9 = xor i64 %8, %6, !mcsema_real_eip !11
  %10 = xor i64 %9, %7, !mcsema_real_eip !11
  %11 = and i64 %10, 16, !mcsema_real_eip !11
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !11
  %13 = zext i1 %12 to i8, !mcsema_real_eip !11
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !11
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !11
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !11
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !11
  %17 = zext i1 %16 to i8, !mcsema_real_eip !11
  %18 = xor i8 %17, 1, !mcsema_real_eip !11
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !11
  %20 = zext i1 %19 to i8, !mcsema_real_eip !11
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !11
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !11
  %22 = zext i1 %21 to i8, !mcsema_real_eip !11
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !11
  %23 = lshr i64 %8, 63, !mcsema_real_eip !11
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !11
  %25 = zext i1 %24 to i8, !mcsema_real_eip !11
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !11
  %27 = zext i1 %26 to i8, !mcsema_real_eip !11
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !11
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !11
  %29 = zext i1 %28 to i8, !mcsema_real_eip !11
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !11
  %30 = xor i64 %6, %7, !mcsema_real_eip !11
  %31 = xor i64 %6, %8, !mcsema_real_eip !11
  %32 = and i64 %30, %31, !mcsema_real_eip !11
  %33 = lshr i64 %32, 63, !mcsema_real_eip !11
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !11
  %35 = zext i1 %34 to i8, !mcsema_real_eip !11
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !11
  %37 = zext i1 %36 to i8, !mcsema_real_eip !11
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !11
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !11
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !12
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %39 = add i64 %38, -16, !mcsema_real_eip !12
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !12
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !12
  store volatile i64 %41, i64* %RDI_write, !mcsema_real_eip !12
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !13
  %42 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %43 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %44 = xor i32 %42, %43, !mcsema_real_eip !13
  %45 = trunc i8 0 to i1, !mcsema_real_eip !13
  %46 = zext i1 %45 to i8, !mcsema_real_eip !13
  store volatile i8 %46, i8* %CF_write, !mcsema_real_eip !13
  %47 = trunc i8 0 to i1, !mcsema_real_eip !13
  %48 = zext i1 %47 to i8, !mcsema_real_eip !13
  store volatile i8 %48, i8* %OF_write, !mcsema_real_eip !13
  %49 = lshr i32 %44, 31, !mcsema_real_eip !13
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !13
  %51 = zext i1 %50 to i8, !mcsema_real_eip !13
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !13
  %53 = zext i1 %52 to i8, !mcsema_real_eip !13
  store volatile i8 %53, i8* %SF_write, !mcsema_real_eip !13
  %54 = icmp eq i32 %44, 0, !mcsema_real_eip !13
  %55 = zext i1 %54 to i8, !mcsema_real_eip !13
  store volatile i8 %55, i8* %ZF_write, !mcsema_real_eip !13
  %56 = trunc i32 %44 to i8, !mcsema_real_eip !13
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !13
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !13
  %59 = zext i1 %58 to i8, !mcsema_real_eip !13
  %60 = xor i8 %59, 1, !mcsema_real_eip !13
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !13
  %62 = zext i1 %61 to i8, !mcsema_real_eip !13
  store volatile i8 %62, i8* %PF_write, !mcsema_real_eip !13
  %63 = zext i32 %44 to i64, !mcsema_real_eip !13
  store volatile i64 %63, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !14
  %64 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %65 = zext i32 %64 to i64, !mcsema_real_eip !14
  store volatile i64 %65, i64* %ECX_write, !mcsema_real_eip !14
  store volatile i64 64, i64* %EIP_write, !mcsema_real_eip !15
  %66 = ptrtoint void ()* @callback_sub_0 to i64, !mcsema_real_eip !15
  store volatile i64 %66, i64* %RDX_write, !mcsema_real_eip !15
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !16
  %67 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %68 = add i64 %67, -4, !mcsema_real_eip !16
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !16
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !16
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %71, !mcsema_real_eip !16
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !17
  %72 = load i64, i64* %RCX_read, !mcsema_real_eip !17
  store volatile i64 %72, i64* %RSI_write, !mcsema_real_eip !17
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !18
  %73 = load i64, i64* %RDI_read, !mcsema_real_eip !18
  %74 = load i64, i64* %RSI_read, !mcsema_real_eip !18
  %75 = load i64, i64* %RDX_read, !mcsema_real_eip !18
  %76 = load i64, i64* %RCX_read, !mcsema_real_eip !18
  %77 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %78 = sub i64 %77, 8, !mcsema_real_eip !18
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !18
  store i64 -2415393069852865332, i64* %79, !mcsema_real_eip !18
  store volatile i64 %78, i64* %RSP_write, !mcsema_real_eip !18
  %80 = call x86_64_sysvcc i64 @_pthread_create(i64 %73, i64 %74, i64 %75, i64 %76), !mcsema_real_eip !18
  store volatile i64 %80, i64* %RAX_write, !mcsema_real_eip !18
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !19
  %81 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %82 = add i64 %81, -24, !mcsema_real_eip !19
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !19
  %84 = ptrtoint i64* %83 to i64, !mcsema_real_eip !19
  store volatile i64 %84, i64* %RCX_write, !mcsema_real_eip !19
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !20
  %85 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %86 = add i64 %85, -16, !mcsema_real_eip !20
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !20
  %88 = load i64, i64* %87, !mcsema_real_eip !20
  store volatile i64 %88, i64* %RDI_write, !mcsema_real_eip !20
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !21
  %89 = load i64, i64* %RCX_read, !mcsema_real_eip !21
  store volatile i64 %89, i64* %RSI_write, !mcsema_real_eip !21
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !22
  %90 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %91 = add i64 %90, -28, !mcsema_real_eip !22
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !22
  %93 = load i32, i32* %EAX_read, !mcsema_real_eip !22
  %94 = ptrtoint i64* %92 to i64, !mcsema_real_eip !22
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !22
  store i32 %93, i32* %95, !mcsema_real_eip !22
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !23
  %96 = load i64, i64* %RDI_read, !mcsema_real_eip !23
  %97 = load i64, i64* %RSI_read, !mcsema_real_eip !23
  %98 = load i64, i64* %RSP_read, !mcsema_real_eip !23
  %99 = sub i64 %98, 8, !mcsema_real_eip !23
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %100, !mcsema_real_eip !23
  store volatile i64 %99, i64* %RSP_write, !mcsema_real_eip !23
  %101 = call x86_64_sysvcc i64 @_pthread_join(i64 %96, i64 %97), !mcsema_real_eip !23
  store volatile i64 %101, i64* %RAX_write, !mcsema_real_eip !23
  store volatile i64 108, i64* %EIP_write, !mcsema_real_eip !24
  %102 = ptrtoint %1* @data_a0 to i64, !mcsema_real_eip !24
  %103 = add i64 %102, 0, !mcsema_real_eip !24
  store volatile i64 %103, i64* %RDI_write, !mcsema_real_eip !24
  store volatile i64 118, i64* %EIP_write, !mcsema_real_eip !25
  %104 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %105 = add i64 %104, -24, !mcsema_real_eip !25
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %107 = load i64, i64* %106, !mcsema_real_eip !25
  store volatile i64 %107, i64* %RCX_write, !mcsema_real_eip !25
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !26
  %108 = load i32, i32* %ECX_read, !mcsema_real_eip !26
  %109 = zext i32 %108 to i64, !mcsema_real_eip !26
  store volatile i64 %109, i64* %R8D_write, !mcsema_real_eip !26
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !27
  %110 = load i32, i32* %R8D_read, !mcsema_real_eip !27
  %111 = zext i32 %110 to i64, !mcsema_real_eip !27
  store volatile i64 %111, i64* %ESI_write, !mcsema_real_eip !27
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !28
  %112 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %113 = add i64 %112, -32, !mcsema_real_eip !28
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !28
  %115 = load i32, i32* %EAX_read, !mcsema_real_eip !28
  %116 = ptrtoint i64* %114 to i64, !mcsema_real_eip !28
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !28
  store i32 %115, i32* %117, !mcsema_real_eip !28
  store volatile i64 131, i64* %EIP_write, !mcsema_real_eip !29
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !29
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !30
  %118 = load i64, i64* %RDI_read, !mcsema_real_eip !30
  %119 = load i64, i64* %RSI_read, !mcsema_real_eip !30
  %120 = load i64, i64* %RDX_read, !mcsema_real_eip !30
  %121 = load i64, i64* %RCX_read, !mcsema_real_eip !30
  %122 = load i64, i64* %R8_read, !mcsema_real_eip !30
  %123 = load i64, i64* %R9_read, !mcsema_real_eip !30
  %124 = load i64, i64* %RSP_read, !mcsema_real_eip !30
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !30
  %126 = load i64, i64* %125, !mcsema_real_eip !30
  %127 = add i64 %124, 8, !mcsema_real_eip !30
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !30
  %129 = load i64, i64* %128, !mcsema_real_eip !30
  %130 = add i64 %127, 8, !mcsema_real_eip !30
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !30
  %132 = load i64, i64* %131, !mcsema_real_eip !30
  %133 = add i64 %130, 8, !mcsema_real_eip !30
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !30
  %135 = load i64, i64* %134, !mcsema_real_eip !30
  %136 = add i64 %133, 8, !mcsema_real_eip !30
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !30
  %138 = load i64, i64* %137, !mcsema_real_eip !30
  %139 = add i64 %136, 8, !mcsema_real_eip !30
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !30
  %141 = load i64, i64* %140, !mcsema_real_eip !30
  %142 = add i64 %139, 8, !mcsema_real_eip !30
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !30
  %144 = load i64, i64* %143, !mcsema_real_eip !30
  %145 = add i64 %142, 8, !mcsema_real_eip !30
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !30
  %147 = load i64, i64* %146, !mcsema_real_eip !30
  %148 = add i64 %145, 8, !mcsema_real_eip !30
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !30
  %150 = load i64, i64* %149, !mcsema_real_eip !30
  %151 = add i64 %148, 8, !mcsema_real_eip !30
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !30
  %153 = load i64, i64* %152, !mcsema_real_eip !30
  %154 = load i64, i64* %RSP_read, !mcsema_real_eip !30
  %155 = sub i64 %154, 8, !mcsema_real_eip !30
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !30
  store i64 -2415393069852865332, i64* %156, !mcsema_real_eip !30
  store volatile i64 %155, i64* %RSP_write, !mcsema_real_eip !30
  %157 = call x86_64_sysvcc i64 @_printf(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %126, i64 %129, i64 %132, i64 %135, i64 %138, i64 %141, i64 %144, i64 %147, i64 %150, i64 %153), !mcsema_real_eip !30
  store volatile i64 %157, i64* %RAX_write, !mcsema_real_eip !30
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !31
  %158 = load i32, i32* %ESI_read, !mcsema_real_eip !31
  %159 = load i32, i32* %ESI_read, !mcsema_real_eip !31
  %160 = xor i32 %158, %159, !mcsema_real_eip !31
  %161 = trunc i8 0 to i1, !mcsema_real_eip !31
  %162 = zext i1 %161 to i8, !mcsema_real_eip !31
  store volatile i8 %162, i8* %CF_write, !mcsema_real_eip !31
  %163 = trunc i8 0 to i1, !mcsema_real_eip !31
  %164 = zext i1 %163 to i8, !mcsema_real_eip !31
  store volatile i8 %164, i8* %OF_write, !mcsema_real_eip !31
  %165 = lshr i32 %160, 31, !mcsema_real_eip !31
  %166 = trunc i32 %165 to i1, !mcsema_real_eip !31
  %167 = zext i1 %166 to i8, !mcsema_real_eip !31
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !31
  %169 = zext i1 %168 to i8, !mcsema_real_eip !31
  store volatile i8 %169, i8* %SF_write, !mcsema_real_eip !31
  %170 = icmp eq i32 %160, 0, !mcsema_real_eip !31
  %171 = zext i1 %170 to i8, !mcsema_real_eip !31
  store volatile i8 %171, i8* %ZF_write, !mcsema_real_eip !31
  %172 = trunc i32 %160 to i8, !mcsema_real_eip !31
  %173 = call i8 @llvm.ctpop.i8(i8 %172), !mcsema_real_eip !31
  %174 = trunc i8 %173 to i1, !mcsema_real_eip !31
  %175 = zext i1 %174 to i8, !mcsema_real_eip !31
  %176 = xor i8 %175, 1, !mcsema_real_eip !31
  %177 = trunc i8 %176 to i1, !mcsema_real_eip !31
  %178 = zext i1 %177 to i8, !mcsema_real_eip !31
  store volatile i8 %178, i8* %PF_write, !mcsema_real_eip !31
  %179 = zext i32 %160 to i64, !mcsema_real_eip !31
  store volatile i64 %179, i64* %ESI_write, !mcsema_real_eip !31
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !32
  %180 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %181 = add i64 %180, -36, !mcsema_real_eip !32
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !32
  %183 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %184 = ptrtoint i64* %182 to i64, !mcsema_real_eip !32
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !32
  store i32 %183, i32* %185, !mcsema_real_eip !32
  store volatile i64 143, i64* %EIP_write, !mcsema_real_eip !33
  %186 = load i32, i32* %ESI_read, !mcsema_real_eip !33
  %187 = zext i32 %186 to i64, !mcsema_real_eip !33
  store volatile i64 %187, i64* %EAX_write, !mcsema_real_eip !33
  store volatile i64 145, i64* %EIP_write, !mcsema_real_eip !34
  %188 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %189 = add i64 48, %188, !mcsema_real_eip !34
  %190 = xor i64 %189, %188, !mcsema_real_eip !34
  %191 = xor i64 %190, 48, !mcsema_real_eip !34
  %192 = and i64 %191, 16, !mcsema_real_eip !34
  %193 = icmp ne i64 %192, 0, !mcsema_real_eip !34
  %194 = zext i1 %193 to i8, !mcsema_real_eip !34
  store volatile i8 %194, i8* %AF_write, !mcsema_real_eip !34
  %195 = lshr i64 %189, 63, !mcsema_real_eip !34
  %196 = trunc i64 %195 to i1, !mcsema_real_eip !34
  %197 = zext i1 %196 to i8, !mcsema_real_eip !34
  %198 = trunc i8 %197 to i1, !mcsema_real_eip !34
  %199 = zext i1 %198 to i8, !mcsema_real_eip !34
  store volatile i8 %199, i8* %SF_write, !mcsema_real_eip !34
  %200 = icmp eq i64 %189, 0, !mcsema_real_eip !34
  %201 = zext i1 %200 to i8, !mcsema_real_eip !34
  store volatile i8 %201, i8* %ZF_write, !mcsema_real_eip !34
  %202 = xor i64 %188, 48, !mcsema_real_eip !34
  %203 = xor i64 %202, -1, !mcsema_real_eip !34
  %204 = xor i64 %188, %189, !mcsema_real_eip !34
  %205 = and i64 %203, %204, !mcsema_real_eip !34
  %206 = lshr i64 %205, 63, !mcsema_real_eip !34
  %207 = and i64 %206, 1, !mcsema_real_eip !34
  %208 = trunc i64 %207 to i1, !mcsema_real_eip !34
  %209 = zext i1 %208 to i8, !mcsema_real_eip !34
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !34
  %211 = zext i1 %210 to i8, !mcsema_real_eip !34
  store volatile i8 %211, i8* %OF_write, !mcsema_real_eip !34
  %212 = trunc i64 %189 to i8, !mcsema_real_eip !34
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !34
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !34
  %215 = zext i1 %214 to i8, !mcsema_real_eip !34
  %216 = xor i8 %215, 1, !mcsema_real_eip !34
  %217 = trunc i8 %216 to i1, !mcsema_real_eip !34
  %218 = zext i1 %217 to i8, !mcsema_real_eip !34
  store volatile i8 %218, i8* %PF_write, !mcsema_real_eip !34
  %219 = icmp ult i64 %189, %188, !mcsema_real_eip !34
  %220 = zext i1 %219 to i8, !mcsema_real_eip !34
  store volatile i8 %220, i8* %CF_write, !mcsema_real_eip !34
  store volatile i64 %189, i64* %RSP_write, !mcsema_real_eip !34
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !35
  %221 = load i64, i64* %RSP_read, !mcsema_real_eip !35
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !35
  %223 = load i64, i64* %222, !mcsema_real_eip !35
  store volatile i64 %223, i64* %RBP_write, !mcsema_real_eip !35
  %224 = add i64 %221, 8, !mcsema_real_eip !35
  store volatile i64 %224, i64* %RSP_write, !mcsema_real_eip !35
  store volatile i64 150, i64* %EIP_write, !mcsema_real_eip !36
  %225 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %226 = add i64 %225, 8, !mcsema_real_eip !36
  %227 = inttoptr i64 %225 to i64*, !mcsema_real_eip !36
  %228 = load i64, i64* %227, !mcsema_real_eip !36
  store volatile i64 %228, i64* %RIP_write, !mcsema_real_eip !36
  store volatile i64 %226, i64* %RSP_write, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

declare x86_64_sysvcc i64 @pthread_create(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare x86_64_sysvcc i64 @pthread_join(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_pthread_create(i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_pthread_join(i64, i64) #2

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
!4 = !{i64 17}
!5 = !{i64 20}
!6 = !{i64 29}
!7 = !{i64 32}
!8 = !{i64 33}
!9 = !{i64 48}
!10 = !{i64 49}
!11 = !{i64 52}
!12 = !{i64 56}
!13 = !{i64 60}
!14 = !{i64 62}
!15 = !{i64 64}
!16 = !{i64 74}
!17 = !{i64 81}
!18 = !{i64 84}
!19 = !{i64 89}
!20 = !{i64 93}
!21 = !{i64 97}
!22 = !{i64 100}
!23 = !{i64 103}
!24 = !{i64 108}
!25 = !{i64 118}
!26 = !{i64 122}
!27 = !{i64 125}
!28 = !{i64 128}
!29 = !{i64 131}
!30 = !{i64 133}
!31 = !{i64 138}
!32 = !{i64 140}
!33 = !{i64 143}
!34 = !{i64 145}
!35 = !{i64 149}
!36 = !{i64 150}
