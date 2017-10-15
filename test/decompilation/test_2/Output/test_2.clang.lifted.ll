; ModuleID = 'Output/test_2.clang.lifted.bc'
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_ea = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_f0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"d\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !2
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !2
  %11 = load i32, i32* %10, !mcsema_real_eip !2
  %12 = zext i32 %11 to i64, !mcsema_real_eip !2
  store volatile i64 %12, i64* %EAX_write, !mcsema_real_eip !2
  store volatile i64 7, i64* %EIP_write, !mcsema_real_eip !3
  %13 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %14 = add i64 %13, 16, !mcsema_real_eip !3
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !3
  %16 = ptrtoint i64* %15 to i64, !mcsema_real_eip !3
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !3
  %18 = load i32, i32* %17, !mcsema_real_eip !3
  %19 = zext i32 %18 to i64, !mcsema_real_eip !3
  store volatile i64 %19, i64* %R10D_write, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %20 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %21 = add i64 %20, -4, !mcsema_real_eip !4
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !4
  %23 = load i32, i32* %EDI_read, !mcsema_real_eip !4
  %24 = ptrtoint i64* %22 to i64, !mcsema_real_eip !4
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !4
  store i32 %23, i32* %25, !mcsema_real_eip !4
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !5
  %26 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %27 = add i64 %26, -8, !mcsema_real_eip !5
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !5
  %29 = load i32, i32* %ESI_read, !mcsema_real_eip !5
  %30 = ptrtoint i64* %28 to i64, !mcsema_real_eip !5
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !5
  store i32 %29, i32* %31, !mcsema_real_eip !5
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !6
  %32 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %33 = add i64 %32, -12, !mcsema_real_eip !6
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !6
  %35 = load i32, i32* %EDX_read, !mcsema_real_eip !6
  %36 = ptrtoint i64* %34 to i64, !mcsema_real_eip !6
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !6
  store i32 %35, i32* %37, !mcsema_real_eip !6
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !7
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %39 = add i64 %38, -16, !mcsema_real_eip !7
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !7
  %41 = load i32, i32* %ECX_read, !mcsema_real_eip !7
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !7
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !7
  store i32 %41, i32* %43, !mcsema_real_eip !7
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !8
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %45 = add i64 %44, -20, !mcsema_real_eip !8
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !8
  %47 = load i32, i32* %R8D_read, !mcsema_real_eip !8
  %48 = ptrtoint i64* %46 to i64, !mcsema_real_eip !8
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !8
  store i32 %47, i32* %49, !mcsema_real_eip !8
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !9
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %51 = add i64 %50, -24, !mcsema_real_eip !9
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !9
  %53 = load i32, i32* %R9D_read, !mcsema_real_eip !9
  %54 = ptrtoint i64* %52 to i64, !mcsema_real_eip !9
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !9
  store i32 %53, i32* %55, !mcsema_real_eip !9
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !10
  %56 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %57 = add i64 %56, -28, !mcsema_real_eip !10
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !10
  %59 = load i32, i32* %R10D_read, !mcsema_real_eip !10
  %60 = ptrtoint i64* %58 to i64, !mcsema_real_eip !10
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !10
  store i32 %59, i32* %61, !mcsema_real_eip !10
  store volatile i64 35, i64* %EIP_write, !mcsema_real_eip !11
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %63 = add i64 %62, -32, !mcsema_real_eip !11
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !11
  %65 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %66 = ptrtoint i64* %64 to i64, !mcsema_real_eip !11
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !11
  store i32 %65, i32* %67, !mcsema_real_eip !11
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !12
  %68 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %69 = add i64 %68, -4, !mcsema_real_eip !12
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !12
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !12
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !12
  %73 = load i32, i32* %72, !mcsema_real_eip !12
  %74 = zext i32 %73 to i64, !mcsema_real_eip !12
  store volatile i64 %74, i64* %EAX_write, !mcsema_real_eip !12
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !13
  %75 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %76 = add i64 %75, -8, !mcsema_real_eip !13
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !13
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !13
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !13
  %80 = load i32, i32* %79, !mcsema_real_eip !13
  %81 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %82 = add i32 %81, %80, !mcsema_real_eip !13
  %83 = xor i32 %82, %80, !mcsema_real_eip !13
  %84 = xor i32 %83, %81, !mcsema_real_eip !13
  %85 = and i32 %84, 16, !mcsema_real_eip !13
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !13
  %87 = zext i1 %86 to i8, !mcsema_real_eip !13
  store volatile i8 %87, i8* %AF_write, !mcsema_real_eip !13
  %88 = lshr i32 %82, 31, !mcsema_real_eip !13
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !13
  %90 = zext i1 %89 to i8, !mcsema_real_eip !13
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !13
  %92 = zext i1 %91 to i8, !mcsema_real_eip !13
  store volatile i8 %92, i8* %SF_write, !mcsema_real_eip !13
  %93 = icmp eq i32 %82, 0, !mcsema_real_eip !13
  %94 = zext i1 %93 to i8, !mcsema_real_eip !13
  store volatile i8 %94, i8* %ZF_write, !mcsema_real_eip !13
  %95 = xor i32 %80, %81, !mcsema_real_eip !13
  %96 = xor i32 %95, -1, !mcsema_real_eip !13
  %97 = xor i32 %80, %82, !mcsema_real_eip !13
  %98 = and i32 %96, %97, !mcsema_real_eip !13
  %99 = lshr i32 %98, 31, !mcsema_real_eip !13
  %100 = and i32 %99, 1, !mcsema_real_eip !13
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !13
  %102 = zext i1 %101 to i8, !mcsema_real_eip !13
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !13
  %104 = zext i1 %103 to i8, !mcsema_real_eip !13
  store volatile i8 %104, i8* %OF_write, !mcsema_real_eip !13
  %105 = trunc i32 %82 to i8, !mcsema_real_eip !13
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !13
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !13
  %108 = zext i1 %107 to i8, !mcsema_real_eip !13
  %109 = xor i8 %108, 1, !mcsema_real_eip !13
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !13
  %111 = zext i1 %110 to i8, !mcsema_real_eip !13
  store volatile i8 %111, i8* %PF_write, !mcsema_real_eip !13
  %112 = icmp ult i32 %82, %80, !mcsema_real_eip !13
  %113 = zext i1 %112 to i8, !mcsema_real_eip !13
  store volatile i8 %113, i8* %CF_write, !mcsema_real_eip !13
  %114 = zext i32 %82 to i64, !mcsema_real_eip !13
  store volatile i64 %114, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !14
  %115 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %116 = add i64 %115, -12, !mcsema_real_eip !14
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !14
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !14
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !14
  %120 = load i32, i32* %119, !mcsema_real_eip !14
  %121 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %122 = add i32 %121, %120, !mcsema_real_eip !14
  %123 = xor i32 %122, %120, !mcsema_real_eip !14
  %124 = xor i32 %123, %121, !mcsema_real_eip !14
  %125 = and i32 %124, 16, !mcsema_real_eip !14
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !14
  %127 = zext i1 %126 to i8, !mcsema_real_eip !14
  store volatile i8 %127, i8* %AF_write, !mcsema_real_eip !14
  %128 = lshr i32 %122, 31, !mcsema_real_eip !14
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !14
  %130 = zext i1 %129 to i8, !mcsema_real_eip !14
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !14
  %132 = zext i1 %131 to i8, !mcsema_real_eip !14
  store volatile i8 %132, i8* %SF_write, !mcsema_real_eip !14
  %133 = icmp eq i32 %122, 0, !mcsema_real_eip !14
  %134 = zext i1 %133 to i8, !mcsema_real_eip !14
  store volatile i8 %134, i8* %ZF_write, !mcsema_real_eip !14
  %135 = xor i32 %120, %121, !mcsema_real_eip !14
  %136 = xor i32 %135, -1, !mcsema_real_eip !14
  %137 = xor i32 %120, %122, !mcsema_real_eip !14
  %138 = and i32 %136, %137, !mcsema_real_eip !14
  %139 = lshr i32 %138, 31, !mcsema_real_eip !14
  %140 = and i32 %139, 1, !mcsema_real_eip !14
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !14
  %142 = zext i1 %141 to i8, !mcsema_real_eip !14
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !14
  %144 = zext i1 %143 to i8, !mcsema_real_eip !14
  store volatile i8 %144, i8* %OF_write, !mcsema_real_eip !14
  %145 = trunc i32 %122 to i8, !mcsema_real_eip !14
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !14
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !14
  %148 = zext i1 %147 to i8, !mcsema_real_eip !14
  %149 = xor i8 %148, 1, !mcsema_real_eip !14
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !14
  %151 = zext i1 %150 to i8, !mcsema_real_eip !14
  store volatile i8 %151, i8* %PF_write, !mcsema_real_eip !14
  %152 = icmp ult i32 %122, %120, !mcsema_real_eip !14
  %153 = zext i1 %152 to i8, !mcsema_real_eip !14
  store volatile i8 %153, i8* %CF_write, !mcsema_real_eip !14
  %154 = zext i32 %122 to i64, !mcsema_real_eip !14
  store volatile i64 %154, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !15
  %155 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %156 = add i64 %155, -16, !mcsema_real_eip !15
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !15
  %158 = ptrtoint i64* %157 to i64, !mcsema_real_eip !15
  %159 = inttoptr i64 %158 to i32*, !mcsema_real_eip !15
  %160 = load i32, i32* %159, !mcsema_real_eip !15
  %161 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %162 = add i32 %161, %160, !mcsema_real_eip !15
  %163 = xor i32 %162, %160, !mcsema_real_eip !15
  %164 = xor i32 %163, %161, !mcsema_real_eip !15
  %165 = and i32 %164, 16, !mcsema_real_eip !15
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !15
  %167 = zext i1 %166 to i8, !mcsema_real_eip !15
  store volatile i8 %167, i8* %AF_write, !mcsema_real_eip !15
  %168 = lshr i32 %162, 31, !mcsema_real_eip !15
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !15
  %170 = zext i1 %169 to i8, !mcsema_real_eip !15
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !15
  %172 = zext i1 %171 to i8, !mcsema_real_eip !15
  store volatile i8 %172, i8* %SF_write, !mcsema_real_eip !15
  %173 = icmp eq i32 %162, 0, !mcsema_real_eip !15
  %174 = zext i1 %173 to i8, !mcsema_real_eip !15
  store volatile i8 %174, i8* %ZF_write, !mcsema_real_eip !15
  %175 = xor i32 %160, %161, !mcsema_real_eip !15
  %176 = xor i32 %175, -1, !mcsema_real_eip !15
  %177 = xor i32 %160, %162, !mcsema_real_eip !15
  %178 = and i32 %176, %177, !mcsema_real_eip !15
  %179 = lshr i32 %178, 31, !mcsema_real_eip !15
  %180 = and i32 %179, 1, !mcsema_real_eip !15
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !15
  %182 = zext i1 %181 to i8, !mcsema_real_eip !15
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !15
  %184 = zext i1 %183 to i8, !mcsema_real_eip !15
  store volatile i8 %184, i8* %OF_write, !mcsema_real_eip !15
  %185 = trunc i32 %162 to i8, !mcsema_real_eip !15
  %186 = call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !15
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !15
  %188 = zext i1 %187 to i8, !mcsema_real_eip !15
  %189 = xor i8 %188, 1, !mcsema_real_eip !15
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !15
  %191 = zext i1 %190 to i8, !mcsema_real_eip !15
  store volatile i8 %191, i8* %PF_write, !mcsema_real_eip !15
  %192 = icmp ult i32 %162, %160, !mcsema_real_eip !15
  %193 = zext i1 %192 to i8, !mcsema_real_eip !15
  store volatile i8 %193, i8* %CF_write, !mcsema_real_eip !15
  %194 = zext i32 %162 to i64, !mcsema_real_eip !15
  store volatile i64 %194, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 50, i64* %EIP_write, !mcsema_real_eip !16
  %195 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %196 = add i64 %195, -20, !mcsema_real_eip !16
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !16
  %198 = ptrtoint i64* %197 to i64, !mcsema_real_eip !16
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !16
  %200 = load i32, i32* %199, !mcsema_real_eip !16
  %201 = load i32, i32* %EAX_read, !mcsema_real_eip !16
  %202 = add i32 %201, %200, !mcsema_real_eip !16
  %203 = xor i32 %202, %200, !mcsema_real_eip !16
  %204 = xor i32 %203, %201, !mcsema_real_eip !16
  %205 = and i32 %204, 16, !mcsema_real_eip !16
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !16
  %207 = zext i1 %206 to i8, !mcsema_real_eip !16
  store volatile i8 %207, i8* %AF_write, !mcsema_real_eip !16
  %208 = lshr i32 %202, 31, !mcsema_real_eip !16
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !16
  %210 = zext i1 %209 to i8, !mcsema_real_eip !16
  %211 = trunc i8 %210 to i1, !mcsema_real_eip !16
  %212 = zext i1 %211 to i8, !mcsema_real_eip !16
  store volatile i8 %212, i8* %SF_write, !mcsema_real_eip !16
  %213 = icmp eq i32 %202, 0, !mcsema_real_eip !16
  %214 = zext i1 %213 to i8, !mcsema_real_eip !16
  store volatile i8 %214, i8* %ZF_write, !mcsema_real_eip !16
  %215 = xor i32 %200, %201, !mcsema_real_eip !16
  %216 = xor i32 %215, -1, !mcsema_real_eip !16
  %217 = xor i32 %200, %202, !mcsema_real_eip !16
  %218 = and i32 %216, %217, !mcsema_real_eip !16
  %219 = lshr i32 %218, 31, !mcsema_real_eip !16
  %220 = and i32 %219, 1, !mcsema_real_eip !16
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !16
  %222 = zext i1 %221 to i8, !mcsema_real_eip !16
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !16
  %224 = zext i1 %223 to i8, !mcsema_real_eip !16
  store volatile i8 %224, i8* %OF_write, !mcsema_real_eip !16
  %225 = trunc i32 %202 to i8, !mcsema_real_eip !16
  %226 = call i8 @llvm.ctpop.i8(i8 %225), !mcsema_real_eip !16
  %227 = trunc i8 %226 to i1, !mcsema_real_eip !16
  %228 = zext i1 %227 to i8, !mcsema_real_eip !16
  %229 = xor i8 %228, 1, !mcsema_real_eip !16
  %230 = trunc i8 %229 to i1, !mcsema_real_eip !16
  %231 = zext i1 %230 to i8, !mcsema_real_eip !16
  store volatile i8 %231, i8* %PF_write, !mcsema_real_eip !16
  %232 = icmp ult i32 %202, %200, !mcsema_real_eip !16
  %233 = zext i1 %232 to i8, !mcsema_real_eip !16
  store volatile i8 %233, i8* %CF_write, !mcsema_real_eip !16
  %234 = zext i32 %202 to i64, !mcsema_real_eip !16
  store volatile i64 %234, i64* %EAX_write, !mcsema_real_eip !16
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !17
  %235 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %236 = add i64 %235, -24, !mcsema_real_eip !17
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !17
  %238 = ptrtoint i64* %237 to i64, !mcsema_real_eip !17
  %239 = inttoptr i64 %238 to i32*, !mcsema_real_eip !17
  %240 = load i32, i32* %239, !mcsema_real_eip !17
  %241 = load i32, i32* %EAX_read, !mcsema_real_eip !17
  %242 = add i32 %241, %240, !mcsema_real_eip !17
  %243 = xor i32 %242, %240, !mcsema_real_eip !17
  %244 = xor i32 %243, %241, !mcsema_real_eip !17
  %245 = and i32 %244, 16, !mcsema_real_eip !17
  %246 = icmp ne i32 %245, 0, !mcsema_real_eip !17
  %247 = zext i1 %246 to i8, !mcsema_real_eip !17
  store volatile i8 %247, i8* %AF_write, !mcsema_real_eip !17
  %248 = lshr i32 %242, 31, !mcsema_real_eip !17
  %249 = trunc i32 %248 to i1, !mcsema_real_eip !17
  %250 = zext i1 %249 to i8, !mcsema_real_eip !17
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !17
  %252 = zext i1 %251 to i8, !mcsema_real_eip !17
  store volatile i8 %252, i8* %SF_write, !mcsema_real_eip !17
  %253 = icmp eq i32 %242, 0, !mcsema_real_eip !17
  %254 = zext i1 %253 to i8, !mcsema_real_eip !17
  store volatile i8 %254, i8* %ZF_write, !mcsema_real_eip !17
  %255 = xor i32 %240, %241, !mcsema_real_eip !17
  %256 = xor i32 %255, -1, !mcsema_real_eip !17
  %257 = xor i32 %240, %242, !mcsema_real_eip !17
  %258 = and i32 %256, %257, !mcsema_real_eip !17
  %259 = lshr i32 %258, 31, !mcsema_real_eip !17
  %260 = and i32 %259, 1, !mcsema_real_eip !17
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !17
  %262 = zext i1 %261 to i8, !mcsema_real_eip !17
  %263 = trunc i8 %262 to i1, !mcsema_real_eip !17
  %264 = zext i1 %263 to i8, !mcsema_real_eip !17
  store volatile i8 %264, i8* %OF_write, !mcsema_real_eip !17
  %265 = trunc i32 %242 to i8, !mcsema_real_eip !17
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !17
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !17
  %268 = zext i1 %267 to i8, !mcsema_real_eip !17
  %269 = xor i8 %268, 1, !mcsema_real_eip !17
  %270 = trunc i8 %269 to i1, !mcsema_real_eip !17
  %271 = zext i1 %270 to i8, !mcsema_real_eip !17
  store volatile i8 %271, i8* %PF_write, !mcsema_real_eip !17
  %272 = icmp ult i32 %242, %240, !mcsema_real_eip !17
  %273 = zext i1 %272 to i8, !mcsema_real_eip !17
  store volatile i8 %273, i8* %CF_write, !mcsema_real_eip !17
  %274 = zext i32 %242 to i64, !mcsema_real_eip !17
  store volatile i64 %274, i64* %EAX_write, !mcsema_real_eip !17
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !18
  %275 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %276 = add i64 %275, -28, !mcsema_real_eip !18
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !18
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !18
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !18
  %280 = load i32, i32* %279, !mcsema_real_eip !18
  %281 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %282 = add i32 %281, %280, !mcsema_real_eip !18
  %283 = xor i32 %282, %280, !mcsema_real_eip !18
  %284 = xor i32 %283, %281, !mcsema_real_eip !18
  %285 = and i32 %284, 16, !mcsema_real_eip !18
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !18
  %287 = zext i1 %286 to i8, !mcsema_real_eip !18
  store volatile i8 %287, i8* %AF_write, !mcsema_real_eip !18
  %288 = lshr i32 %282, 31, !mcsema_real_eip !18
  %289 = trunc i32 %288 to i1, !mcsema_real_eip !18
  %290 = zext i1 %289 to i8, !mcsema_real_eip !18
  %291 = trunc i8 %290 to i1, !mcsema_real_eip !18
  %292 = zext i1 %291 to i8, !mcsema_real_eip !18
  store volatile i8 %292, i8* %SF_write, !mcsema_real_eip !18
  %293 = icmp eq i32 %282, 0, !mcsema_real_eip !18
  %294 = zext i1 %293 to i8, !mcsema_real_eip !18
  store volatile i8 %294, i8* %ZF_write, !mcsema_real_eip !18
  %295 = xor i32 %280, %281, !mcsema_real_eip !18
  %296 = xor i32 %295, -1, !mcsema_real_eip !18
  %297 = xor i32 %280, %282, !mcsema_real_eip !18
  %298 = and i32 %296, %297, !mcsema_real_eip !18
  %299 = lshr i32 %298, 31, !mcsema_real_eip !18
  %300 = and i32 %299, 1, !mcsema_real_eip !18
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !18
  %302 = zext i1 %301 to i8, !mcsema_real_eip !18
  %303 = trunc i8 %302 to i1, !mcsema_real_eip !18
  %304 = zext i1 %303 to i8, !mcsema_real_eip !18
  store volatile i8 %304, i8* %OF_write, !mcsema_real_eip !18
  %305 = trunc i32 %282 to i8, !mcsema_real_eip !18
  %306 = call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !18
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !18
  %308 = zext i1 %307 to i8, !mcsema_real_eip !18
  %309 = xor i8 %308, 1, !mcsema_real_eip !18
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !18
  %311 = zext i1 %310 to i8, !mcsema_real_eip !18
  store volatile i8 %311, i8* %PF_write, !mcsema_real_eip !18
  %312 = icmp ult i32 %282, %280, !mcsema_real_eip !18
  %313 = zext i1 %312 to i8, !mcsema_real_eip !18
  store volatile i8 %313, i8* %CF_write, !mcsema_real_eip !18
  %314 = zext i32 %282 to i64, !mcsema_real_eip !18
  store volatile i64 %314, i64* %EAX_write, !mcsema_real_eip !18
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !19
  %315 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %316 = add i64 %315, -36, !mcsema_real_eip !19
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !19
  %318 = load i32, i32* %EAX_read, !mcsema_real_eip !19
  %319 = ptrtoint i64* %317 to i64, !mcsema_real_eip !19
  %320 = inttoptr i64 %319 to i32*, !mcsema_real_eip !19
  store i32 %318, i32* %320, !mcsema_real_eip !19
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !20
  %321 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %322 = add i64 %321, -36, !mcsema_real_eip !20
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !20
  %324 = ptrtoint i64* %323 to i64, !mcsema_real_eip !20
  %325 = inttoptr i64 %324 to i32*, !mcsema_real_eip !20
  %326 = load i32, i32* %325, !mcsema_real_eip !20
  %327 = sub i32 %326, 40, !mcsema_real_eip !20
  %328 = xor i32 %327, %326, !mcsema_real_eip !20
  %329 = xor i32 %328, 40, !mcsema_real_eip !20
  %330 = and i32 %329, 16, !mcsema_real_eip !20
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !20
  %332 = zext i1 %331 to i8, !mcsema_real_eip !20
  store volatile i8 %332, i8* %AF_write, !mcsema_real_eip !20
  %333 = trunc i32 %327 to i8, !mcsema_real_eip !20
  %334 = call i8 @llvm.ctpop.i8(i8 %333), !mcsema_real_eip !20
  %335 = trunc i8 %334 to i1, !mcsema_real_eip !20
  %336 = zext i1 %335 to i8, !mcsema_real_eip !20
  %337 = xor i8 %336, 1, !mcsema_real_eip !20
  %338 = trunc i8 %337 to i1, !mcsema_real_eip !20
  %339 = zext i1 %338 to i8, !mcsema_real_eip !20
  store volatile i8 %339, i8* %PF_write, !mcsema_real_eip !20
  %340 = icmp eq i32 %327, 0, !mcsema_real_eip !20
  %341 = zext i1 %340 to i8, !mcsema_real_eip !20
  store volatile i8 %341, i8* %ZF_write, !mcsema_real_eip !20
  %342 = lshr i32 %327, 31, !mcsema_real_eip !20
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !20
  %344 = zext i1 %343 to i8, !mcsema_real_eip !20
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !20
  %346 = zext i1 %345 to i8, !mcsema_real_eip !20
  store volatile i8 %346, i8* %SF_write, !mcsema_real_eip !20
  %347 = icmp ult i32 %326, 40, !mcsema_real_eip !20
  %348 = zext i1 %347 to i8, !mcsema_real_eip !20
  store volatile i8 %348, i8* %CF_write, !mcsema_real_eip !20
  %349 = xor i32 %326, 40, !mcsema_real_eip !20
  %350 = xor i32 %326, %327, !mcsema_real_eip !20
  %351 = and i32 %349, %350, !mcsema_real_eip !20
  %352 = lshr i32 %351, 31, !mcsema_real_eip !20
  %353 = trunc i32 %352 to i1, !mcsema_real_eip !20
  %354 = zext i1 %353 to i8, !mcsema_real_eip !20
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !20
  %356 = zext i1 %355 to i8, !mcsema_real_eip !20
  store volatile i8 %356, i8* %OF_write, !mcsema_real_eip !20
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !21
  %357 = load i8, i8* %ZF_read, !mcsema_real_eip !21
  %358 = trunc i8 %357 to i1, !mcsema_real_eip !21
  %359 = icmp eq i1 %358, true, !mcsema_real_eip !21
  %360 = load i8, i8* %SF_read, !mcsema_real_eip !21
  %361 = trunc i8 %360 to i1, !mcsema_real_eip !21
  %362 = load i8, i8* %OF_read, !mcsema_real_eip !21
  %363 = trunc i8 %362 to i1, !mcsema_real_eip !21
  %364 = icmp eq i1 %361, %363, !mcsema_real_eip !21
  %365 = icmp eq i1 %364, false, !mcsema_real_eip !21
  %366 = or i1 %359, %365, !mcsema_real_eip !21
  br i1 %366, label %block_56, label %block_48, !mcsema_real_eip !21

block_48:                                         ; preds = %block_0
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !22
  %367 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %368 = add i64 %367, -36, !mcsema_real_eip !22
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !22
  %370 = ptrtoint i64* %369 to i64, !mcsema_real_eip !22
  %371 = inttoptr i64 %370 to i32*, !mcsema_real_eip !22
  %372 = load i32, i32* %371, !mcsema_real_eip !22
  %373 = zext i32 %372 to i64, !mcsema_real_eip !22
  store volatile i64 %373, i64* %EAX_write, !mcsema_real_eip !22
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !23
  %374 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %375 = add i64 %374, -32, !mcsema_real_eip !23
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !23
  %377 = ptrtoint i64* %376 to i64, !mcsema_real_eip !23
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !23
  %379 = load i32, i32* %378, !mcsema_real_eip !23
  %380 = load i32, i32* %EAX_read, !mcsema_real_eip !23
  %381 = add i32 %380, %379, !mcsema_real_eip !23
  %382 = xor i32 %381, %379, !mcsema_real_eip !23
  %383 = xor i32 %382, %380, !mcsema_real_eip !23
  %384 = and i32 %383, 16, !mcsema_real_eip !23
  %385 = icmp ne i32 %384, 0, !mcsema_real_eip !23
  %386 = zext i1 %385 to i8, !mcsema_real_eip !23
  store volatile i8 %386, i8* %AF_write, !mcsema_real_eip !23
  %387 = lshr i32 %381, 31, !mcsema_real_eip !23
  %388 = trunc i32 %387 to i1, !mcsema_real_eip !23
  %389 = zext i1 %388 to i8, !mcsema_real_eip !23
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !23
  %391 = zext i1 %390 to i8, !mcsema_real_eip !23
  store volatile i8 %391, i8* %SF_write, !mcsema_real_eip !23
  %392 = icmp eq i32 %381, 0, !mcsema_real_eip !23
  %393 = zext i1 %392 to i8, !mcsema_real_eip !23
  store volatile i8 %393, i8* %ZF_write, !mcsema_real_eip !23
  %394 = xor i32 %379, %380, !mcsema_real_eip !23
  %395 = xor i32 %394, -1, !mcsema_real_eip !23
  %396 = xor i32 %379, %381, !mcsema_real_eip !23
  %397 = and i32 %395, %396, !mcsema_real_eip !23
  %398 = lshr i32 %397, 31, !mcsema_real_eip !23
  %399 = and i32 %398, 1, !mcsema_real_eip !23
  %400 = trunc i32 %399 to i1, !mcsema_real_eip !23
  %401 = zext i1 %400 to i8, !mcsema_real_eip !23
  %402 = trunc i8 %401 to i1, !mcsema_real_eip !23
  %403 = zext i1 %402 to i8, !mcsema_real_eip !23
  store volatile i8 %403, i8* %OF_write, !mcsema_real_eip !23
  %404 = trunc i32 %381 to i8, !mcsema_real_eip !23
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !23
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !23
  %407 = zext i1 %406 to i8, !mcsema_real_eip !23
  %408 = xor i8 %407, 1, !mcsema_real_eip !23
  %409 = trunc i8 %408 to i1, !mcsema_real_eip !23
  %410 = zext i1 %409 to i8, !mcsema_real_eip !23
  store volatile i8 %410, i8* %PF_write, !mcsema_real_eip !23
  %411 = icmp ult i32 %381, %379, !mcsema_real_eip !23
  %412 = zext i1 %411 to i8, !mcsema_real_eip !23
  store volatile i8 %412, i8* %CF_write, !mcsema_real_eip !23
  %413 = zext i32 %381 to i64, !mcsema_real_eip !23
  store volatile i64 %413, i64* %EAX_write, !mcsema_real_eip !23
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !24
  %414 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %415 = add i64 %414, -40, !mcsema_real_eip !24
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !24
  %417 = load i32, i32* %EAX_read, !mcsema_real_eip !24
  %418 = ptrtoint i64* %416 to i64, !mcsema_real_eip !24
  %419 = inttoptr i64 %418 to i32*, !mcsema_real_eip !24
  store i32 %417, i32* %419, !mcsema_real_eip !24
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !25
  br label %block_5f, !mcsema_real_eip !25

block_56:                                         ; preds = %block_0
  store volatile i64 86, i64* %EIP_write, !mcsema_real_eip !26
  %420 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %421 = add i64 %420, -36, !mcsema_real_eip !26
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !26
  %423 = ptrtoint i64* %422 to i64, !mcsema_real_eip !26
  %424 = inttoptr i64 %423 to i32*, !mcsema_real_eip !26
  %425 = load i32, i32* %424, !mcsema_real_eip !26
  %426 = zext i32 %425 to i64, !mcsema_real_eip !26
  store volatile i64 %426, i64* %EAX_write, !mcsema_real_eip !26
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !27
  %427 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %428 = add i64 %427, -32, !mcsema_real_eip !27
  %429 = inttoptr i64 %428 to i64*, !mcsema_real_eip !27
  %430 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %431 = ptrtoint i64* %429 to i64, !mcsema_real_eip !27
  %432 = inttoptr i64 %431 to i32*, !mcsema_real_eip !27
  %433 = load i32, i32* %432, !mcsema_real_eip !27
  %434 = sub i32 %430, %433, !mcsema_real_eip !27
  %435 = xor i32 %434, %430, !mcsema_real_eip !27
  %436 = xor i32 %435, %433, !mcsema_real_eip !27
  %437 = and i32 %436, 16, !mcsema_real_eip !27
  %438 = icmp ne i32 %437, 0, !mcsema_real_eip !27
  %439 = zext i1 %438 to i8, !mcsema_real_eip !27
  store volatile i8 %439, i8* %AF_write, !mcsema_real_eip !27
  %440 = trunc i32 %434 to i8, !mcsema_real_eip !27
  %441 = call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !27
  %442 = trunc i8 %441 to i1, !mcsema_real_eip !27
  %443 = zext i1 %442 to i8, !mcsema_real_eip !27
  %444 = xor i8 %443, 1, !mcsema_real_eip !27
  %445 = trunc i8 %444 to i1, !mcsema_real_eip !27
  %446 = zext i1 %445 to i8, !mcsema_real_eip !27
  store volatile i8 %446, i8* %PF_write, !mcsema_real_eip !27
  %447 = icmp eq i32 %434, 0, !mcsema_real_eip !27
  %448 = zext i1 %447 to i8, !mcsema_real_eip !27
  store volatile i8 %448, i8* %ZF_write, !mcsema_real_eip !27
  %449 = lshr i32 %434, 31, !mcsema_real_eip !27
  %450 = trunc i32 %449 to i1, !mcsema_real_eip !27
  %451 = zext i1 %450 to i8, !mcsema_real_eip !27
  %452 = trunc i8 %451 to i1, !mcsema_real_eip !27
  %453 = zext i1 %452 to i8, !mcsema_real_eip !27
  store volatile i8 %453, i8* %SF_write, !mcsema_real_eip !27
  %454 = icmp ult i32 %430, %433, !mcsema_real_eip !27
  %455 = zext i1 %454 to i8, !mcsema_real_eip !27
  store volatile i8 %455, i8* %CF_write, !mcsema_real_eip !27
  %456 = xor i32 %430, %433, !mcsema_real_eip !27
  %457 = xor i32 %430, %434, !mcsema_real_eip !27
  %458 = and i32 %456, %457, !mcsema_real_eip !27
  %459 = lshr i32 %458, 31, !mcsema_real_eip !27
  %460 = trunc i32 %459 to i1, !mcsema_real_eip !27
  %461 = zext i1 %460 to i8, !mcsema_real_eip !27
  %462 = trunc i8 %461 to i1, !mcsema_real_eip !27
  %463 = zext i1 %462 to i8, !mcsema_real_eip !27
  store volatile i8 %463, i8* %OF_write, !mcsema_real_eip !27
  %464 = zext i32 %434 to i64, !mcsema_real_eip !27
  store volatile i64 %464, i64* %EAX_write, !mcsema_real_eip !27
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !28
  %465 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %466 = add i64 %465, -40, !mcsema_real_eip !28
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !28
  %468 = load i32, i32* %EAX_read, !mcsema_real_eip !28
  %469 = ptrtoint i64* %467 to i64, !mcsema_real_eip !28
  %470 = inttoptr i64 %469 to i32*, !mcsema_real_eip !28
  store i32 %468, i32* %470, !mcsema_real_eip !28
  br label %block_5f, !mcsema_real_eip !29

block_5f:                                         ; preds = %block_56, %block_48
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !29
  %471 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %472 = add i64 %471, -40, !mcsema_real_eip !29
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !29
  %474 = ptrtoint i64* %473 to i64, !mcsema_real_eip !29
  %475 = inttoptr i64 %474 to i32*, !mcsema_real_eip !29
  %476 = load i32, i32* %475, !mcsema_real_eip !29
  %477 = zext i32 %476 to i64, !mcsema_real_eip !29
  store volatile i64 %477, i64* %EAX_write, !mcsema_real_eip !29
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !30
  %478 = load i64, i64* %RSP_read, !mcsema_real_eip !30
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !30
  %480 = load i64, i64* %479, !mcsema_real_eip !30
  store volatile i64 %480, i64* %RBP_write, !mcsema_real_eip !30
  %481 = add i64 %478, 8, !mcsema_real_eip !30
  store volatile i64 %481, i64* %RSP_write, !mcsema_real_eip !30
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !31
  %482 = load i64, i64* %RSP_read, !mcsema_real_eip !31
  %483 = add i64 %482, 8, !mcsema_real_eip !31
  %484 = inttoptr i64 %482 to i64*, !mcsema_real_eip !31
  %485 = load i64, i64* %484, !mcsema_real_eip !31
  store volatile i64 %485, i64* %RIP_write, !mcsema_real_eip !31
  store volatile i64 %483, i64* %RSP_write, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !32
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !32
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !32
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !32
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !32
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !32
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !32
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !32
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !32
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !32
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !32
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !32
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !32
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !32
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !32
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !32
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !32
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !32
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !32
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !32
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !32
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !32
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !32
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !32
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !32
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !32
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !32
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !32
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !32
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !32
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !32
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !32
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !32
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !32
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !32
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !32
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !32
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !32
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !32
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !32
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !32
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !32
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !32
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !32
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !32
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !32
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !32
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !32
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !32
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !32
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !32
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !32
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !32
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !32
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !32
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !32
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !32
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !32
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !32
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !32
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !32
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !32
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !32
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !32
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !32
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !32
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !32
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !32
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !32
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !32
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !32
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !32
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !32
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !32
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !32
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !32
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !32
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !32
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !32
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !32
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !32
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !32
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !32
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !32
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !32
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !32
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !32
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !32
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !32
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !32
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !32
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !32
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !32
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !32
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !32
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !32
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !32
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !32
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !32
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !32
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !32
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !32
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !32
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !32
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !32
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !32
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !32
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !32
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !32
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !32
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !32
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !32
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !32
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !32
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !32
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !32
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !32
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !32
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !32
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !32
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !32
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !32
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !32
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !32
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !32
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !32
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !32
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !32
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !32
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !32
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !32
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !32
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !32
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !32
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !32
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !32
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !32
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !32
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !32
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !32
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !32
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !32
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !32
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !32
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !32
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !32
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !32
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !32
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !32
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !32
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !32
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !32
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !32
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !32
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !32
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !32
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !32
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !32
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !32
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !32
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !32
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !32
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !32
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !32
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !32
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !32
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !32
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !32
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !32
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !32
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !32
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !32
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !32
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !32
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !32
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !32
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !32
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !32
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !32
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !32
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !32
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !32
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !32
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !32
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !32
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !32
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !32
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !32
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !32
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !32
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !32
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !32
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !32
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !32
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !32
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !32
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !32
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !32
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !32
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !32
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !32
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !32
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !32
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !32
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !32
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !32
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !32
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !32
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !32
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !32
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !32
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !32
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !32
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !32
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !32
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !32
  br label %block_70, !mcsema_real_eip !32

block_70:                                         ; preds = %entry
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !32
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !32
  %3 = sub i64 %2, 8, !mcsema_real_eip !32
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !32
  store i64 %1, i64* %4, !mcsema_real_eip !32
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !32
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !33
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !33
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !34
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %7 = sext i8 48 to i64, !mcsema_real_eip !34
  %8 = sub i64 %6, %7, !mcsema_real_eip !34
  %9 = xor i64 %8, %6, !mcsema_real_eip !34
  %10 = xor i64 %9, %7, !mcsema_real_eip !34
  %11 = and i64 %10, 16, !mcsema_real_eip !34
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !34
  %13 = zext i1 %12 to i8, !mcsema_real_eip !34
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !34
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !34
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !34
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !34
  %17 = zext i1 %16 to i8, !mcsema_real_eip !34
  %18 = xor i8 %17, 1, !mcsema_real_eip !34
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !34
  %20 = zext i1 %19 to i8, !mcsema_real_eip !34
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !34
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !34
  %22 = zext i1 %21 to i8, !mcsema_real_eip !34
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !34
  %23 = lshr i64 %8, 63, !mcsema_real_eip !34
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !34
  %25 = zext i1 %24 to i8, !mcsema_real_eip !34
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !34
  %27 = zext i1 %26 to i8, !mcsema_real_eip !34
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !34
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !34
  %29 = zext i1 %28 to i8, !mcsema_real_eip !34
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !34
  %30 = xor i64 %6, %7, !mcsema_real_eip !34
  %31 = xor i64 %6, %8, !mcsema_real_eip !34
  %32 = and i64 %30, %31, !mcsema_real_eip !34
  %33 = lshr i64 %32, 63, !mcsema_real_eip !34
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !34
  %35 = zext i1 %34 to i8, !mcsema_real_eip !34
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !34
  %37 = zext i1 %36 to i8, !mcsema_real_eip !34
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !34
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !34
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !35
  %38 = zext i32 10 to i64, !mcsema_real_eip !35
  store volatile i64 %38, i64* %EDI_write, !mcsema_real_eip !35
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !36
  %39 = zext i32 20 to i64, !mcsema_real_eip !36
  store volatile i64 %39, i64* %ESI_write, !mcsema_real_eip !36
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !37
  %40 = zext i32 30 to i64, !mcsema_real_eip !37
  store volatile i64 %40, i64* %EDX_write, !mcsema_real_eip !37
  store volatile i64 135, i64* %EIP_write, !mcsema_real_eip !38
  %41 = zext i32 40 to i64, !mcsema_real_eip !38
  store volatile i64 %41, i64* %ECX_write, !mcsema_real_eip !38
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !39
  %42 = zext i32 50 to i64, !mcsema_real_eip !39
  store volatile i64 %42, i64* %R8D_write, !mcsema_real_eip !39
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !40
  %43 = zext i32 60 to i64, !mcsema_real_eip !40
  store volatile i64 %43, i64* %R9D_write, !mcsema_real_eip !40
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !41
  %44 = zext i32 70 to i64, !mcsema_real_eip !41
  store volatile i64 %44, i64* %EAX_write, !mcsema_real_eip !41
  store volatile i64 157, i64* %EIP_write, !mcsema_real_eip !42
  %45 = zext i32 80 to i64, !mcsema_real_eip !42
  store volatile i64 %45, i64* %R10D_write, !mcsema_real_eip !42
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !43
  %46 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %47 = add i64 %46, -4, !mcsema_real_eip !43
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !43
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !43
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !43
  store i32 0, i32* %50, !mcsema_real_eip !43
  store volatile i64 170, i64* %EIP_write, !mcsema_real_eip !44
  %51 = load i64, i64* %RSP_read, !mcsema_real_eip !44
  %52 = add i64 %51, 0, !mcsema_real_eip !44
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !44
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !44
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !44
  store i32 70, i32* %55, !mcsema_real_eip !44
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !45
  %56 = load i64, i64* %RSP_read, !mcsema_real_eip !45
  %57 = add i64 %56, 8, !mcsema_real_eip !45
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !45
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !45
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !45
  store i32 80, i32* %60, !mcsema_real_eip !45
  store volatile i64 185, i64* %EIP_write, !mcsema_real_eip !46
  %61 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %62 = add i64 %61, -12, !mcsema_real_eip !46
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !46
  %64 = load i32, i32* %R10D_read, !mcsema_real_eip !46
  %65 = ptrtoint i64* %63 to i64, !mcsema_real_eip !46
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !46
  store i32 %64, i32* %66, !mcsema_real_eip !46
  store volatile i64 189, i64* %EIP_write, !mcsema_real_eip !47
  %67 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %68 = add i64 %67, -16, !mcsema_real_eip !47
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !47
  %70 = load i32, i32* %EAX_read, !mcsema_real_eip !47
  %71 = ptrtoint i64* %69 to i64, !mcsema_real_eip !47
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !47
  store i32 %70, i32* %72, !mcsema_real_eip !47
  store volatile i64 192, i64* %EIP_write, !mcsema_real_eip !48
  %73 = load i64, i64* %RSP_read, !mcsema_real_eip !48
  %74 = sub i64 %73, 8, !mcsema_real_eip !48
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !48
  store i64 197, i64* %75, !mcsema_real_eip !48
  store volatile i64 %74, i64* %RSP_write, !mcsema_real_eip !48
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !48
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !49
  %76 = ptrtoint %0* @data_ea to i64, !mcsema_real_eip !49
  %77 = add i64 %76, 0, !mcsema_real_eip !49
  store volatile i64 %77, i64* %RDI_write, !mcsema_real_eip !49
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !50
  %78 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %79 = add i64 %78, -8, !mcsema_real_eip !50
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !50
  %81 = load i32, i32* %EAX_read, !mcsema_real_eip !50
  %82 = ptrtoint i64* %80 to i64, !mcsema_real_eip !50
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !50
  store i32 %81, i32* %83, !mcsema_real_eip !50
  store volatile i64 210, i64* %EIP_write, !mcsema_real_eip !51
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %85 = add i64 %84, -8, !mcsema_real_eip !51
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !51
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !51
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !51
  %89 = load i32, i32* %88, !mcsema_real_eip !51
  %90 = zext i32 %89 to i64, !mcsema_real_eip !51
  store volatile i64 %90, i64* %ESI_write, !mcsema_real_eip !51
  store volatile i64 213, i64* %EIP_write, !mcsema_real_eip !52
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !52
  store volatile i64 215, i64* %EIP_write, !mcsema_real_eip !53
  %91 = load i64, i64* %RDI_read, !mcsema_real_eip !53
  %92 = load i64, i64* %RSI_read, !mcsema_real_eip !53
  %93 = load i64, i64* %RDX_read, !mcsema_real_eip !53
  %94 = load i64, i64* %RCX_read, !mcsema_real_eip !53
  %95 = load i64, i64* %R8_read, !mcsema_real_eip !53
  %96 = load i64, i64* %R9_read, !mcsema_real_eip !53
  %97 = load i64, i64* %RSP_read, !mcsema_real_eip !53
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !53
  %99 = load i64, i64* %98, !mcsema_real_eip !53
  %100 = add i64 %97, 8, !mcsema_real_eip !53
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !53
  %102 = load i64, i64* %101, !mcsema_real_eip !53
  %103 = add i64 %100, 8, !mcsema_real_eip !53
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !53
  %105 = load i64, i64* %104, !mcsema_real_eip !53
  %106 = add i64 %103, 8, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = load i64, i64* %107, !mcsema_real_eip !53
  %109 = add i64 %106, 8, !mcsema_real_eip !53
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !53
  %111 = load i64, i64* %110, !mcsema_real_eip !53
  %112 = add i64 %109, 8, !mcsema_real_eip !53
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !53
  %114 = load i64, i64* %113, !mcsema_real_eip !53
  %115 = add i64 %112, 8, !mcsema_real_eip !53
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !53
  %117 = load i64, i64* %116, !mcsema_real_eip !53
  %118 = add i64 %115, 8, !mcsema_real_eip !53
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !53
  %120 = load i64, i64* %119, !mcsema_real_eip !53
  %121 = add i64 %118, 8, !mcsema_real_eip !53
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !53
  %123 = load i64, i64* %122, !mcsema_real_eip !53
  %124 = add i64 %121, 8, !mcsema_real_eip !53
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !53
  %126 = load i64, i64* %125, !mcsema_real_eip !53
  %127 = load i64, i64* %RSP_read, !mcsema_real_eip !53
  %128 = sub i64 %127, 8, !mcsema_real_eip !53
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %129, !mcsema_real_eip !53
  store volatile i64 %128, i64* %RSP_write, !mcsema_real_eip !53
  %130 = call x86_64_sysvcc i64 @_printf(i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %99, i64 %102, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120, i64 %123, i64 %126), !mcsema_real_eip !53
  store volatile i64 %130, i64* %RAX_write, !mcsema_real_eip !53
  store volatile i64 220, i64* %EIP_write, !mcsema_real_eip !54
  %131 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %132 = add i64 %131, -8, !mcsema_real_eip !54
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !54
  %134 = ptrtoint i64* %133 to i64, !mcsema_real_eip !54
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !54
  %136 = load i32, i32* %135, !mcsema_real_eip !54
  %137 = zext i32 %136 to i64, !mcsema_real_eip !54
  store volatile i64 %137, i64* %ECX_write, !mcsema_real_eip !54
  store volatile i64 223, i64* %EIP_write, !mcsema_real_eip !55
  %138 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %139 = add i64 %138, -20, !mcsema_real_eip !55
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !55
  %141 = load i32, i32* %EAX_read, !mcsema_real_eip !55
  %142 = ptrtoint i64* %140 to i64, !mcsema_real_eip !55
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !55
  store i32 %141, i32* %143, !mcsema_real_eip !55
  store volatile i64 226, i64* %EIP_write, !mcsema_real_eip !56
  %144 = load i32, i32* %ECX_read, !mcsema_real_eip !56
  %145 = zext i32 %144 to i64, !mcsema_real_eip !56
  store volatile i64 %145, i64* %EAX_write, !mcsema_real_eip !56
  store volatile i64 228, i64* %EIP_write, !mcsema_real_eip !57
  %146 = load i64, i64* %RSP_read, !mcsema_real_eip !57
  %147 = add i64 48, %146, !mcsema_real_eip !57
  %148 = xor i64 %147, %146, !mcsema_real_eip !57
  %149 = xor i64 %148, 48, !mcsema_real_eip !57
  %150 = and i64 %149, 16, !mcsema_real_eip !57
  %151 = icmp ne i64 %150, 0, !mcsema_real_eip !57
  %152 = zext i1 %151 to i8, !mcsema_real_eip !57
  store volatile i8 %152, i8* %AF_write, !mcsema_real_eip !57
  %153 = lshr i64 %147, 63, !mcsema_real_eip !57
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !57
  %155 = zext i1 %154 to i8, !mcsema_real_eip !57
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !57
  %157 = zext i1 %156 to i8, !mcsema_real_eip !57
  store volatile i8 %157, i8* %SF_write, !mcsema_real_eip !57
  %158 = icmp eq i64 %147, 0, !mcsema_real_eip !57
  %159 = zext i1 %158 to i8, !mcsema_real_eip !57
  store volatile i8 %159, i8* %ZF_write, !mcsema_real_eip !57
  %160 = xor i64 %146, 48, !mcsema_real_eip !57
  %161 = xor i64 %160, -1, !mcsema_real_eip !57
  %162 = xor i64 %146, %147, !mcsema_real_eip !57
  %163 = and i64 %161, %162, !mcsema_real_eip !57
  %164 = lshr i64 %163, 63, !mcsema_real_eip !57
  %165 = and i64 %164, 1, !mcsema_real_eip !57
  %166 = trunc i64 %165 to i1, !mcsema_real_eip !57
  %167 = zext i1 %166 to i8, !mcsema_real_eip !57
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !57
  %169 = zext i1 %168 to i8, !mcsema_real_eip !57
  store volatile i8 %169, i8* %OF_write, !mcsema_real_eip !57
  %170 = trunc i64 %147 to i8, !mcsema_real_eip !57
  %171 = call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !57
  %172 = trunc i8 %171 to i1, !mcsema_real_eip !57
  %173 = zext i1 %172 to i8, !mcsema_real_eip !57
  %174 = xor i8 %173, 1, !mcsema_real_eip !57
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !57
  %176 = zext i1 %175 to i8, !mcsema_real_eip !57
  store volatile i8 %176, i8* %PF_write, !mcsema_real_eip !57
  %177 = icmp ult i64 %147, %146, !mcsema_real_eip !57
  %178 = zext i1 %177 to i8, !mcsema_real_eip !57
  store volatile i8 %178, i8* %CF_write, !mcsema_real_eip !57
  store volatile i64 %147, i64* %RSP_write, !mcsema_real_eip !57
  store volatile i64 232, i64* %EIP_write, !mcsema_real_eip !58
  %179 = load i64, i64* %RSP_read, !mcsema_real_eip !58
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !58
  %181 = load i64, i64* %180, !mcsema_real_eip !58
  store volatile i64 %181, i64* %RBP_write, !mcsema_real_eip !58
  %182 = add i64 %179, 8, !mcsema_real_eip !58
  store volatile i64 %182, i64* %RSP_write, !mcsema_real_eip !58
  store volatile i64 233, i64* %EIP_write, !mcsema_real_eip !59
  %183 = load i64, i64* %RSP_read, !mcsema_real_eip !59
  %184 = add i64 %183, 8, !mcsema_real_eip !59
  %185 = inttoptr i64 %183 to i64*, !mcsema_real_eip !59
  %186 = load i64, i64* %185, !mcsema_real_eip !59
  store volatile i64 %186, i64* %RIP_write, !mcsema_real_eip !59
  store volatile i64 %184, i64* %RSP_write, !mcsema_real_eip !59
  ret void, !mcsema_real_eip !59
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
!3 = !{i64 7}
!4 = !{i64 11}
!5 = !{i64 14}
!6 = !{i64 17}
!7 = !{i64 20}
!8 = !{i64 23}
!9 = !{i64 27}
!10 = !{i64 31}
!11 = !{i64 35}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 47}
!16 = !{i64 50}
!17 = !{i64 53}
!18 = !{i64 56}
!19 = !{i64 59}
!20 = !{i64 62}
!21 = !{i64 66}
!22 = !{i64 72}
!23 = !{i64 75}
!24 = !{i64 78}
!25 = !{i64 81}
!26 = !{i64 86}
!27 = !{i64 89}
!28 = !{i64 92}
!29 = !{i64 95}
!30 = !{i64 98}
!31 = !{i64 99}
!32 = !{i64 112}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 120}
!36 = !{i64 125}
!37 = !{i64 130}
!38 = !{i64 135}
!39 = !{i64 140}
!40 = !{i64 146}
!41 = !{i64 152}
!42 = !{i64 157}
!43 = !{i64 163}
!44 = !{i64 170}
!45 = !{i64 177}
!46 = !{i64 185}
!47 = !{i64 189}
!48 = !{i64 192}
!49 = !{i64 197}
!50 = !{i64 207}
!51 = !{i64 210}
!52 = !{i64 213}
!53 = !{i64 215}
!54 = !{i64 220}
!55 = !{i64 223}
!56 = !{i64 226}
!57 = !{i64 228}
!58 = !{i64 232}
!59 = !{i64 233}
