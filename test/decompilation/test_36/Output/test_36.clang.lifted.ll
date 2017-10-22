; ModuleID = 'Output/test_36.clang.lifted.bc'
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

%0 = type <{ [8 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_78 = internal constant %0 <{ [8 x i8] c"\00\00\00\00\00\00\14@" }>, align 64
@data_80 = internal constant %1 <{ [4 x i8] c"%f\0A\00" }>, align 64
@data_88 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"(\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"E\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %9 = load i128, i128* %XMM0_read, !mcsema_real_eip !2
  %10 = trunc i128 %9 to i64, !mcsema_real_eip !2
  store i64 %10, i64* %8, !mcsema_real_eip !2
  store volatile i64 9, i64* %EIP_write, !mcsema_real_eip !3
  %11 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %12 = add i64 %11, -16, !mcsema_real_eip !3
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !3
  %14 = load i128, i128* %XMM1_read, !mcsema_real_eip !3
  %15 = trunc i128 %14 to i64, !mcsema_real_eip !3
  store i64 %15, i64* %13, !mcsema_real_eip !3
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !4
  store volatile i128 0, i128* %XMM0_write, !mcsema_real_eip !4
  %16 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %17 = add i64 %16, -8, !mcsema_real_eip !4
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !4
  %19 = load i64, i64* %18, !mcsema_real_eip !4
  %20 = zext i64 %19 to i128, !mcsema_real_eip !4
  store volatile i128 %20, i128* %XMM0_write, !mcsema_real_eip !4
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !5
  %21 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %22 = add i64 %21, -8, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = load i128, i128* %XMM0_read, !mcsema_real_eip !5
  %25 = trunc i128 %24 to i64, !mcsema_real_eip !5
  %26 = load i64, i64* %23, !mcsema_real_eip !5
  %27 = bitcast i64 %25 to double, !mcsema_real_eip !5
  %28 = bitcast i64 %26 to double, !mcsema_real_eip !5
  %29 = fmul double %27, %28, !mcsema_real_eip !5
  %30 = bitcast double %29 to i64, !mcsema_real_eip !5
  %31 = zext i64 %30 to i128, !mcsema_real_eip !5
  store volatile i128 %31, i128* %XMM0_write, !mcsema_real_eip !5
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !6
  store volatile i128 0, i128* %XMM1_write, !mcsema_real_eip !6
  %32 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %33 = add i64 %32, -16, !mcsema_real_eip !6
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !6
  %35 = load i64, i64* %34, !mcsema_real_eip !6
  %36 = zext i64 %35 to i128, !mcsema_real_eip !6
  store volatile i128 %36, i128* %XMM1_write, !mcsema_real_eip !6
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !7
  %37 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %38 = add i64 %37, -16, !mcsema_real_eip !7
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !7
  %40 = load i128, i128* %XMM1_read, !mcsema_real_eip !7
  %41 = trunc i128 %40 to i64, !mcsema_real_eip !7
  %42 = load i64, i64* %39, !mcsema_real_eip !7
  %43 = bitcast i64 %41 to double, !mcsema_real_eip !7
  %44 = bitcast i64 %42 to double, !mcsema_real_eip !7
  %45 = fmul double %43, %44, !mcsema_real_eip !7
  %46 = bitcast double %45 to i64, !mcsema_real_eip !7
  %47 = zext i64 %46 to i128, !mcsema_real_eip !7
  store volatile i128 %47, i128* %XMM1_write, !mcsema_real_eip !7
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !8
  %48 = load i128, i128* %XMM0_read, !mcsema_real_eip !8
  %49 = trunc i128 %48 to i64, !mcsema_real_eip !8
  %50 = load i128, i128* %XMM1_read, !mcsema_real_eip !8
  %51 = trunc i128 %50 to i64, !mcsema_real_eip !8
  %52 = bitcast i64 %49 to double, !mcsema_real_eip !8
  %53 = bitcast i64 %51 to double, !mcsema_real_eip !8
  %54 = fadd double %52, %53, !mcsema_real_eip !8
  %55 = bitcast double %54 to i64, !mcsema_real_eip !8
  %56 = zext i64 %55 to i128, !mcsema_real_eip !8
  store volatile i128 %56, i128* %XMM0_write, !mcsema_real_eip !8
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !9
  %57 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !9
  %59 = load i64, i64* %58, !mcsema_real_eip !9
  store volatile i64 %59, i64* %RBP_write, !mcsema_real_eip !9
  %60 = add i64 %57, 8, !mcsema_real_eip !9
  store volatile i64 %60, i64* %RSP_write, !mcsema_real_eip !9
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !10
  %61 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %62 = add i64 %61, 8, !mcsema_real_eip !10
  %63 = inttoptr i64 %61 to i64*, !mcsema_real_eip !10
  %64 = load i64, i64* %63, !mcsema_real_eip !10
  store volatile i64 %64, i64* %RIP_write, !mcsema_real_eip !10
  store volatile i64 %62, i64* %RSP_write, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !11
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !11
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !11
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !11
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !11
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !11
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !11
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !11
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !11
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !11
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !11
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !11
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !11
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !11
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !11
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !11
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !11
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !11
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !11
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !11
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !11
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !11
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !11
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !11
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !11
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !11
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !11
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !11
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !11
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !11
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !11
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !11
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !11
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !11
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !11
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !11
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !11
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !11
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !11
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !11
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !11
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !11
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !11
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !11
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !11
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !11
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !11
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !11
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !11
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !11
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !11
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !11
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !11
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !11
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !11
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !11
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !11
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !11
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !11
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !11
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !11
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !11
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !11
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !11
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !11
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !11
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !11
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !11
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !11
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !11
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !11
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !11
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !11
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !11
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !11
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !11
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !11
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !11
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !11
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !11
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !11
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !11
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !11
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !11
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !11
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !11
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !11
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !11
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !11
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !11
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !11
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !11
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !11
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !11
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !11
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !11
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !11
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !11
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !11
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !11
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !11
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !11
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !11
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !11
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !11
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !11
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !11
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !11
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !11
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !11
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !11
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !11
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !11
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !11
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !11
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !11
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !11
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !11
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !11
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !11
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !11
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !11
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !11
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !11
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !11
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !11
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !11
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !11
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !11
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !11
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !11
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !11
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !11
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !11
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !11
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !11
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !11
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !11
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !11
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !11
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !11
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !11
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !11
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !11
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !11
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !11
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !11
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !11
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !11
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !11
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !11
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !11
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !11
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !11
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !11
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !11
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !11
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !11
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !11
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !11
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !11
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !11
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !11
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !11
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !11
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !11
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !11
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !11
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !11
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !11
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !11
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !11
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !11
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !11
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !11
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !11
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !11
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !11
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !11
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !11
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !11
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !11
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !11
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !11
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !11
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !11
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !11
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !11
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !11
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !11
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !11
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !11
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !11
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !11
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !11
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !11
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !11
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !11
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !11
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !11
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !11
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !11
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !11
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !11
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !11
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !11
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !11
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !11
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !11
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !11
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !11
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !11
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !11
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !11
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !11
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !11
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !11
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !11
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !11
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !11
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !11
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !11
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !11
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !11
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !11
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !11
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !11
  br label %block_30, !mcsema_real_eip !11

block_30:                                         ; preds = %entry
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !11
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !11
  %3 = sub i64 %2, 8, !mcsema_real_eip !11
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !11
  store i64 %1, i64* %4, !mcsema_real_eip !11
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !11
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !12
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !12
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !12
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !13
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !13
  %7 = sext i8 32 to i64, !mcsema_real_eip !13
  %8 = sub i64 %6, %7, !mcsema_real_eip !13
  %9 = xor i64 %8, %6, !mcsema_real_eip !13
  %10 = xor i64 %9, %7, !mcsema_real_eip !13
  %11 = and i64 %10, 16, !mcsema_real_eip !13
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !13
  %13 = zext i1 %12 to i8, !mcsema_real_eip !13
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !13
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !13
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !13
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !13
  %17 = zext i1 %16 to i8, !mcsema_real_eip !13
  %18 = xor i8 %17, 1, !mcsema_real_eip !13
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !13
  %20 = zext i1 %19 to i8, !mcsema_real_eip !13
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !13
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !13
  %22 = zext i1 %21 to i8, !mcsema_real_eip !13
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !13
  %23 = lshr i64 %8, 63, !mcsema_real_eip !13
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !13
  %25 = zext i1 %24 to i8, !mcsema_real_eip !13
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !13
  %27 = zext i1 %26 to i8, !mcsema_real_eip !13
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !13
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !13
  %29 = zext i1 %28 to i8, !mcsema_real_eip !13
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !13
  %30 = xor i64 %6, %7, !mcsema_real_eip !13
  %31 = xor i64 %6, %8, !mcsema_real_eip !13
  %32 = and i64 %30, %31, !mcsema_real_eip !13
  %33 = lshr i64 %32, 63, !mcsema_real_eip !13
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !13
  %35 = zext i1 %34 to i8, !mcsema_real_eip !13
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !13
  %37 = zext i1 %36 to i8, !mcsema_real_eip !13
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !13
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !13
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !14
  store volatile i128 0, i128* %XMM0_write, !mcsema_real_eip !14
  %38 = ptrtoint %0* @data_78 to i64, !mcsema_real_eip !14
  %39 = add i64 %38, 0, !mcsema_real_eip !14
  %40 = add i64 0, %39, !mcsema_real_eip !14
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !14
  %42 = load i64, i64* %41, !mcsema_real_eip !14
  %43 = zext i64 %42 to i128, !mcsema_real_eip !14
  store volatile i128 %43, i128* %XMM0_write, !mcsema_real_eip !14
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !15
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %45 = add i64 %44, -4, !mcsema_real_eip !15
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !15
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !15
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %48, !mcsema_real_eip !15
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !16
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %50 = add i64 %49, -16, !mcsema_real_eip !16
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !16
  %52 = load i128, i128* %XMM0_read, !mcsema_real_eip !16
  %53 = trunc i128 %52 to i64, !mcsema_real_eip !16
  store i64 %53, i64* %51, !mcsema_real_eip !16
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !17
  store volatile i128 0, i128* %XMM1_write, !mcsema_real_eip !17
  %54 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %55 = add i64 %54, -16, !mcsema_real_eip !17
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !17
  %57 = load i64, i64* %56, !mcsema_real_eip !17
  %58 = zext i64 %57 to i128, !mcsema_real_eip !17
  store volatile i128 %58, i128* %XMM1_write, !mcsema_real_eip !17
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !18
  %59 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %60 = sub i64 %59, 8, !mcsema_real_eip !18
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !18
  store i64 87, i64* %61, !mcsema_real_eip !18
  store volatile i64 %60, i64* %RSP_write, !mcsema_real_eip !18
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !18
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !19
  %62 = ptrtoint %1* @data_80 to i64, !mcsema_real_eip !19
  %63 = add i64 %62, 0, !mcsema_real_eip !19
  store volatile i64 %63, i64* %RDI_write, !mcsema_real_eip !19
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !20
  store volatile i8 1, i8* %AL_write, !mcsema_real_eip !20
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !21
  %64 = load i64, i64* %RDI_read, !mcsema_real_eip !21
  %65 = load i64, i64* %RSI_read, !mcsema_real_eip !21
  %66 = load i64, i64* %RDX_read, !mcsema_real_eip !21
  %67 = load i64, i64* %RCX_read, !mcsema_real_eip !21
  %68 = load i64, i64* %R8_read, !mcsema_real_eip !21
  %69 = load i64, i64* %R9_read, !mcsema_real_eip !21
  %70 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !21
  %72 = load i64, i64* %71, !mcsema_real_eip !21
  %73 = add i64 %70, 8, !mcsema_real_eip !21
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !21
  %75 = load i64, i64* %74, !mcsema_real_eip !21
  %76 = add i64 %73, 8, !mcsema_real_eip !21
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !21
  %78 = load i64, i64* %77, !mcsema_real_eip !21
  %79 = add i64 %76, 8, !mcsema_real_eip !21
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !21
  %81 = load i64, i64* %80, !mcsema_real_eip !21
  %82 = add i64 %79, 8, !mcsema_real_eip !21
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !21
  %84 = load i64, i64* %83, !mcsema_real_eip !21
  %85 = add i64 %82, 8, !mcsema_real_eip !21
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !21
  %87 = load i64, i64* %86, !mcsema_real_eip !21
  %88 = add i64 %85, 8, !mcsema_real_eip !21
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !21
  %90 = load i64, i64* %89, !mcsema_real_eip !21
  %91 = add i64 %88, 8, !mcsema_real_eip !21
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !21
  %93 = load i64, i64* %92, !mcsema_real_eip !21
  %94 = add i64 %91, 8, !mcsema_real_eip !21
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !21
  %96 = load i64, i64* %95, !mcsema_real_eip !21
  %97 = add i64 %94, 8, !mcsema_real_eip !21
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !21
  %99 = load i64, i64* %98, !mcsema_real_eip !21
  %100 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %101 = sub i64 %100, 8, !mcsema_real_eip !21
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %102, !mcsema_real_eip !21
  store volatile i64 %101, i64* %RSP_write, !mcsema_real_eip !21
  %103 = call x86_64_sysvcc i64 @_printf(i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93, i64 %96, i64 %99), !mcsema_real_eip !21
  store volatile i64 %103, i64* %RAX_write, !mcsema_real_eip !21
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !22
  %104 = load i32, i32* %ECX_read, !mcsema_real_eip !22
  %105 = load i32, i32* %ECX_read, !mcsema_real_eip !22
  %106 = xor i32 %104, %105, !mcsema_real_eip !22
  %107 = trunc i8 0 to i1, !mcsema_real_eip !22
  %108 = zext i1 %107 to i8, !mcsema_real_eip !22
  store volatile i8 %108, i8* %CF_write, !mcsema_real_eip !22
  %109 = trunc i8 0 to i1, !mcsema_real_eip !22
  %110 = zext i1 %109 to i8, !mcsema_real_eip !22
  store volatile i8 %110, i8* %OF_write, !mcsema_real_eip !22
  %111 = lshr i32 %106, 31, !mcsema_real_eip !22
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !22
  %113 = zext i1 %112 to i8, !mcsema_real_eip !22
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !22
  %115 = zext i1 %114 to i8, !mcsema_real_eip !22
  store volatile i8 %115, i8* %SF_write, !mcsema_real_eip !22
  %116 = icmp eq i32 %106, 0, !mcsema_real_eip !22
  %117 = zext i1 %116 to i8, !mcsema_real_eip !22
  store volatile i8 %117, i8* %ZF_write, !mcsema_real_eip !22
  %118 = trunc i32 %106 to i8, !mcsema_real_eip !22
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !22
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !22
  %121 = zext i1 %120 to i8, !mcsema_real_eip !22
  %122 = xor i8 %121, 1, !mcsema_real_eip !22
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !22
  %124 = zext i1 %123 to i8, !mcsema_real_eip !22
  store volatile i8 %124, i8* %PF_write, !mcsema_real_eip !22
  %125 = zext i32 %106 to i64, !mcsema_real_eip !22
  store volatile i64 %125, i64* %ECX_write, !mcsema_real_eip !22
  store volatile i64 106, i64* %EIP_write, !mcsema_real_eip !23
  %126 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %127 = add i64 %126, -20, !mcsema_real_eip !23
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !23
  %129 = load i32, i32* %EAX_read, !mcsema_real_eip !23
  %130 = ptrtoint i64* %128 to i64, !mcsema_real_eip !23
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !23
  store i32 %129, i32* %131, !mcsema_real_eip !23
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !24
  %132 = load i32, i32* %ECX_read, !mcsema_real_eip !24
  %133 = zext i32 %132 to i64, !mcsema_real_eip !24
  store volatile i64 %133, i64* %EAX_write, !mcsema_real_eip !24
  store volatile i64 111, i64* %EIP_write, !mcsema_real_eip !25
  %134 = load i64, i64* %RSP_read, !mcsema_real_eip !25
  %135 = add i64 32, %134, !mcsema_real_eip !25
  %136 = xor i64 %135, %134, !mcsema_real_eip !25
  %137 = xor i64 %136, 32, !mcsema_real_eip !25
  %138 = and i64 %137, 16, !mcsema_real_eip !25
  %139 = icmp ne i64 %138, 0, !mcsema_real_eip !25
  %140 = zext i1 %139 to i8, !mcsema_real_eip !25
  store volatile i8 %140, i8* %AF_write, !mcsema_real_eip !25
  %141 = lshr i64 %135, 63, !mcsema_real_eip !25
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !25
  %143 = zext i1 %142 to i8, !mcsema_real_eip !25
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !25
  %145 = zext i1 %144 to i8, !mcsema_real_eip !25
  store volatile i8 %145, i8* %SF_write, !mcsema_real_eip !25
  %146 = icmp eq i64 %135, 0, !mcsema_real_eip !25
  %147 = zext i1 %146 to i8, !mcsema_real_eip !25
  store volatile i8 %147, i8* %ZF_write, !mcsema_real_eip !25
  %148 = xor i64 %134, 32, !mcsema_real_eip !25
  %149 = xor i64 %148, -1, !mcsema_real_eip !25
  %150 = xor i64 %134, %135, !mcsema_real_eip !25
  %151 = and i64 %149, %150, !mcsema_real_eip !25
  %152 = lshr i64 %151, 63, !mcsema_real_eip !25
  %153 = and i64 %152, 1, !mcsema_real_eip !25
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !25
  %155 = zext i1 %154 to i8, !mcsema_real_eip !25
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !25
  %157 = zext i1 %156 to i8, !mcsema_real_eip !25
  store volatile i8 %157, i8* %OF_write, !mcsema_real_eip !25
  %158 = trunc i64 %135 to i8, !mcsema_real_eip !25
  %159 = call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !25
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !25
  %161 = zext i1 %160 to i8, !mcsema_real_eip !25
  %162 = xor i8 %161, 1, !mcsema_real_eip !25
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !25
  %164 = zext i1 %163 to i8, !mcsema_real_eip !25
  store volatile i8 %164, i8* %PF_write, !mcsema_real_eip !25
  %165 = icmp ult i64 %135, %134, !mcsema_real_eip !25
  %166 = zext i1 %165 to i8, !mcsema_real_eip !25
  store volatile i8 %166, i8* %CF_write, !mcsema_real_eip !25
  store volatile i64 %135, i64* %RSP_write, !mcsema_real_eip !25
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !26
  %167 = load i64, i64* %RSP_read, !mcsema_real_eip !26
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !26
  %169 = load i64, i64* %168, !mcsema_real_eip !26
  store volatile i64 %169, i64* %RBP_write, !mcsema_real_eip !26
  %170 = add i64 %167, 8, !mcsema_real_eip !26
  store volatile i64 %170, i64* %RSP_write, !mcsema_real_eip !26
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !27
  %171 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  %172 = add i64 %171, 8, !mcsema_real_eip !27
  %173 = inttoptr i64 %171 to i64*, !mcsema_real_eip !27
  %174 = load i64, i64* %173, !mcsema_real_eip !27
  store volatile i64 %174, i64* %RIP_write, !mcsema_real_eip !27
  store volatile i64 %172, i64* %RSP_write, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
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
!3 = !{i64 9}
!4 = !{i64 14}
!5 = !{i64 19}
!6 = !{i64 24}
!7 = !{i64 29}
!8 = !{i64 34}
!9 = !{i64 38}
!10 = !{i64 39}
!11 = !{i64 48}
!12 = !{i64 49}
!13 = !{i64 52}
!14 = !{i64 56}
!15 = !{i64 65}
!16 = !{i64 72}
!17 = !{i64 77}
!18 = !{i64 82}
!19 = !{i64 87}
!20 = !{i64 97}
!21 = !{i64 99}
!22 = !{i64 104}
!23 = !{i64 106}
!24 = !{i64 109}
!25 = !{i64 111}
!26 = !{i64 115}
!27 = !{i64 116}
