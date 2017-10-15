; ModuleID = 'Output/test_31.clang.lifted.bc'
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_a0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %38 = zext i32 1 to i64, !mcsema_real_eip !3
  store volatile i64 %38, i64* %EAX_write, !mcsema_real_eip !3
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !4
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %40 = add i64 %39, -8, !mcsema_real_eip !4
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !4
  %42 = load i32, i32* %EDI_read, !mcsema_real_eip !4
  %43 = ptrtoint i64* %41 to i64, !mcsema_real_eip !4
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !4
  store i32 %42, i32* %44, !mcsema_real_eip !4
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !5
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %46 = add i64 %45, -8, !mcsema_real_eip !5
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !5
  %48 = load i32, i32* %EAX_read, !mcsema_real_eip !5
  %49 = ptrtoint i64* %47 to i64, !mcsema_real_eip !5
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !5
  %51 = load i32, i32* %50, !mcsema_real_eip !5
  %52 = sub i32 %48, %51, !mcsema_real_eip !5
  %53 = xor i32 %52, %48, !mcsema_real_eip !5
  %54 = xor i32 %53, %51, !mcsema_real_eip !5
  %55 = and i32 %54, 16, !mcsema_real_eip !5
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !5
  %57 = zext i1 %56 to i8, !mcsema_real_eip !5
  store volatile i8 %57, i8* %AF_write, !mcsema_real_eip !5
  %58 = trunc i32 %52 to i8, !mcsema_real_eip !5
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !5
  %60 = trunc i8 %59 to i1, !mcsema_real_eip !5
  %61 = zext i1 %60 to i8, !mcsema_real_eip !5
  %62 = xor i8 %61, 1, !mcsema_real_eip !5
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !5
  %64 = zext i1 %63 to i8, !mcsema_real_eip !5
  store volatile i8 %64, i8* %PF_write, !mcsema_real_eip !5
  %65 = icmp eq i32 %52, 0, !mcsema_real_eip !5
  %66 = zext i1 %65 to i8, !mcsema_real_eip !5
  store volatile i8 %66, i8* %ZF_write, !mcsema_real_eip !5
  %67 = lshr i32 %52, 31, !mcsema_real_eip !5
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !5
  %69 = zext i1 %68 to i8, !mcsema_real_eip !5
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !5
  %71 = zext i1 %70 to i8, !mcsema_real_eip !5
  store volatile i8 %71, i8* %SF_write, !mcsema_real_eip !5
  %72 = icmp ult i32 %48, %51, !mcsema_real_eip !5
  %73 = zext i1 %72 to i8, !mcsema_real_eip !5
  store volatile i8 %73, i8* %CF_write, !mcsema_real_eip !5
  %74 = xor i32 %48, %51, !mcsema_real_eip !5
  %75 = xor i32 %48, %52, !mcsema_real_eip !5
  %76 = and i32 %74, %75, !mcsema_real_eip !5
  %77 = lshr i32 %76, 31, !mcsema_real_eip !5
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !5
  %79 = zext i1 %78 to i8, !mcsema_real_eip !5
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !5
  %81 = zext i1 %80 to i8, !mcsema_real_eip !5
  store volatile i8 %81, i8* %OF_write, !mcsema_real_eip !5
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !6
  %82 = load i8, i8* %ZF_read, !mcsema_real_eip !6
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !6
  %84 = icmp eq i1 %83, true, !mcsema_real_eip !6
  br i1 %84, label %block_24, label %block_19, !mcsema_real_eip !6

block_19:                                         ; preds = %block_0
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !7
  %85 = load i32, i32* %EAX_read, !mcsema_real_eip !7
  %86 = load i32, i32* %EAX_read, !mcsema_real_eip !7
  %87 = xor i32 %85, %86, !mcsema_real_eip !7
  %88 = trunc i8 0 to i1, !mcsema_real_eip !7
  %89 = zext i1 %88 to i8, !mcsema_real_eip !7
  store volatile i8 %89, i8* %CF_write, !mcsema_real_eip !7
  %90 = trunc i8 0 to i1, !mcsema_real_eip !7
  %91 = zext i1 %90 to i8, !mcsema_real_eip !7
  store volatile i8 %91, i8* %OF_write, !mcsema_real_eip !7
  %92 = lshr i32 %87, 31, !mcsema_real_eip !7
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !7
  %94 = zext i1 %93 to i8, !mcsema_real_eip !7
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !7
  %96 = zext i1 %95 to i8, !mcsema_real_eip !7
  store volatile i8 %96, i8* %SF_write, !mcsema_real_eip !7
  %97 = icmp eq i32 %87, 0, !mcsema_real_eip !7
  %98 = zext i1 %97 to i8, !mcsema_real_eip !7
  store volatile i8 %98, i8* %ZF_write, !mcsema_real_eip !7
  %99 = trunc i32 %87 to i8, !mcsema_real_eip !7
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !7
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !7
  %102 = zext i1 %101 to i8, !mcsema_real_eip !7
  %103 = xor i8 %102, 1, !mcsema_real_eip !7
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !7
  %105 = zext i1 %104 to i8, !mcsema_real_eip !7
  store volatile i8 %105, i8* %PF_write, !mcsema_real_eip !7
  %106 = zext i32 %87 to i64, !mcsema_real_eip !7
  store volatile i64 %106, i64* %EAX_write, !mcsema_real_eip !7
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !8
  %107 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %108 = add i64 %107, -8, !mcsema_real_eip !8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !8
  %110 = load i32, i32* %EAX_read, !mcsema_real_eip !8
  %111 = ptrtoint i64* %109 to i64, !mcsema_real_eip !8
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !8
  %113 = load i32, i32* %112, !mcsema_real_eip !8
  %114 = sub i32 %110, %113, !mcsema_real_eip !8
  %115 = xor i32 %114, %110, !mcsema_real_eip !8
  %116 = xor i32 %115, %113, !mcsema_real_eip !8
  %117 = and i32 %116, 16, !mcsema_real_eip !8
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !8
  %119 = zext i1 %118 to i8, !mcsema_real_eip !8
  store volatile i8 %119, i8* %AF_write, !mcsema_real_eip !8
  %120 = trunc i32 %114 to i8, !mcsema_real_eip !8
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !8
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !8
  %123 = zext i1 %122 to i8, !mcsema_real_eip !8
  %124 = xor i8 %123, 1, !mcsema_real_eip !8
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !8
  %126 = zext i1 %125 to i8, !mcsema_real_eip !8
  store volatile i8 %126, i8* %PF_write, !mcsema_real_eip !8
  %127 = icmp eq i32 %114, 0, !mcsema_real_eip !8
  %128 = zext i1 %127 to i8, !mcsema_real_eip !8
  store volatile i8 %128, i8* %ZF_write, !mcsema_real_eip !8
  %129 = lshr i32 %114, 31, !mcsema_real_eip !8
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !8
  %131 = zext i1 %130 to i8, !mcsema_real_eip !8
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !8
  %133 = zext i1 %132 to i8, !mcsema_real_eip !8
  store volatile i8 %133, i8* %SF_write, !mcsema_real_eip !8
  %134 = icmp ult i32 %110, %113, !mcsema_real_eip !8
  %135 = zext i1 %134 to i8, !mcsema_real_eip !8
  store volatile i8 %135, i8* %CF_write, !mcsema_real_eip !8
  %136 = xor i32 %110, %113, !mcsema_real_eip !8
  %137 = xor i32 %110, %114, !mcsema_real_eip !8
  %138 = and i32 %136, %137, !mcsema_real_eip !8
  %139 = lshr i32 %138, 31, !mcsema_real_eip !8
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !8
  %141 = zext i1 %140 to i8, !mcsema_real_eip !8
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !8
  %143 = zext i1 %142 to i8, !mcsema_real_eip !8
  store volatile i8 %143, i8* %OF_write, !mcsema_real_eip !8
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !9
  %144 = load i8, i8* %ZF_read, !mcsema_real_eip !9
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !9
  %146 = icmp eq i1 %145, false, !mcsema_real_eip !9
  br i1 %146, label %block_30, label %block_24, !mcsema_real_eip !9

block_24:                                         ; preds = %block_19, %block_0
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !10
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %148 = add i64 %147, -4, !mcsema_real_eip !10
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !10
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !10
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !10
  store i32 1, i32* %151, !mcsema_real_eip !10
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !11
  br label %block_53, !mcsema_real_eip !11

block_30:                                         ; preds = %block_19
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !12
  %152 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %153 = add i64 %152, -8, !mcsema_real_eip !12
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !12
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !12
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !12
  %157 = load i32, i32* %156, !mcsema_real_eip !12
  %158 = zext i32 %157 to i64, !mcsema_real_eip !12
  store volatile i64 %158, i64* %EAX_write, !mcsema_real_eip !12
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !13
  %159 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %160 = sub i32 %159, 1, !mcsema_real_eip !13
  %161 = xor i32 %160, %159, !mcsema_real_eip !13
  %162 = xor i32 %161, 1, !mcsema_real_eip !13
  %163 = and i32 %162, 16, !mcsema_real_eip !13
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !13
  %165 = zext i1 %164 to i8, !mcsema_real_eip !13
  store volatile i8 %165, i8* %AF_write, !mcsema_real_eip !13
  %166 = trunc i32 %160 to i8, !mcsema_real_eip !13
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !13
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !13
  %169 = zext i1 %168 to i8, !mcsema_real_eip !13
  %170 = xor i8 %169, 1, !mcsema_real_eip !13
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !13
  %172 = zext i1 %171 to i8, !mcsema_real_eip !13
  store volatile i8 %172, i8* %PF_write, !mcsema_real_eip !13
  %173 = icmp eq i32 %160, 0, !mcsema_real_eip !13
  %174 = zext i1 %173 to i8, !mcsema_real_eip !13
  store volatile i8 %174, i8* %ZF_write, !mcsema_real_eip !13
  %175 = lshr i32 %160, 31, !mcsema_real_eip !13
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !13
  %177 = zext i1 %176 to i8, !mcsema_real_eip !13
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !13
  %179 = zext i1 %178 to i8, !mcsema_real_eip !13
  store volatile i8 %179, i8* %SF_write, !mcsema_real_eip !13
  %180 = icmp ult i32 %159, 1, !mcsema_real_eip !13
  %181 = zext i1 %180 to i8, !mcsema_real_eip !13
  store volatile i8 %181, i8* %CF_write, !mcsema_real_eip !13
  %182 = xor i32 %159, 1, !mcsema_real_eip !13
  %183 = xor i32 %159, %160, !mcsema_real_eip !13
  %184 = and i32 %182, %183, !mcsema_real_eip !13
  %185 = lshr i32 %184, 31, !mcsema_real_eip !13
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !13
  %187 = zext i1 %186 to i8, !mcsema_real_eip !13
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !13
  %189 = zext i1 %188 to i8, !mcsema_real_eip !13
  store volatile i8 %189, i8* %OF_write, !mcsema_real_eip !13
  %190 = zext i32 %160 to i64, !mcsema_real_eip !13
  store volatile i64 %190, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !14
  %191 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %192 = zext i32 %191 to i64, !mcsema_real_eip !14
  store volatile i64 %192, i64* %EDI_write, !mcsema_real_eip !14
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !15
  %193 = load i64, i64* %RSP_read, !mcsema_real_eip !15
  %194 = sub i64 %193, 8, !mcsema_real_eip !15
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !15
  store i64 61, i64* %195, !mcsema_real_eip !15
  store volatile i64 %194, i64* %RSP_write, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !16
  %196 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %197 = add i64 %196, -8, !mcsema_real_eip !16
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !16
  %199 = ptrtoint i64* %198 to i64, !mcsema_real_eip !16
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !16
  %201 = load i32, i32* %200, !mcsema_real_eip !16
  %202 = zext i32 %201 to i64, !mcsema_real_eip !16
  store volatile i64 %202, i64* %EDI_write, !mcsema_real_eip !16
  store volatile i64 64, i64* %EIP_write, !mcsema_real_eip !17
  %203 = load i32, i32* %EDI_read, !mcsema_real_eip !17
  %204 = sub i32 %203, 2, !mcsema_real_eip !17
  %205 = xor i32 %204, %203, !mcsema_real_eip !17
  %206 = xor i32 %205, 2, !mcsema_real_eip !17
  %207 = and i32 %206, 16, !mcsema_real_eip !17
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !17
  %209 = zext i1 %208 to i8, !mcsema_real_eip !17
  store volatile i8 %209, i8* %AF_write, !mcsema_real_eip !17
  %210 = trunc i32 %204 to i8, !mcsema_real_eip !17
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !17
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !17
  %213 = zext i1 %212 to i8, !mcsema_real_eip !17
  %214 = xor i8 %213, 1, !mcsema_real_eip !17
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !17
  %216 = zext i1 %215 to i8, !mcsema_real_eip !17
  store volatile i8 %216, i8* %PF_write, !mcsema_real_eip !17
  %217 = icmp eq i32 %204, 0, !mcsema_real_eip !17
  %218 = zext i1 %217 to i8, !mcsema_real_eip !17
  store volatile i8 %218, i8* %ZF_write, !mcsema_real_eip !17
  %219 = lshr i32 %204, 31, !mcsema_real_eip !17
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !17
  %221 = zext i1 %220 to i8, !mcsema_real_eip !17
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !17
  %223 = zext i1 %222 to i8, !mcsema_real_eip !17
  store volatile i8 %223, i8* %SF_write, !mcsema_real_eip !17
  %224 = icmp ult i32 %203, 2, !mcsema_real_eip !17
  %225 = zext i1 %224 to i8, !mcsema_real_eip !17
  store volatile i8 %225, i8* %CF_write, !mcsema_real_eip !17
  %226 = xor i32 %203, 2, !mcsema_real_eip !17
  %227 = xor i32 %203, %204, !mcsema_real_eip !17
  %228 = and i32 %226, %227, !mcsema_real_eip !17
  %229 = lshr i32 %228, 31, !mcsema_real_eip !17
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !17
  %231 = zext i1 %230 to i8, !mcsema_real_eip !17
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !17
  %233 = zext i1 %232 to i8, !mcsema_real_eip !17
  store volatile i8 %233, i8* %OF_write, !mcsema_real_eip !17
  %234 = zext i32 %204 to i64, !mcsema_real_eip !17
  store volatile i64 %234, i64* %EDI_write, !mcsema_real_eip !17
  store volatile i64 67, i64* %EIP_write, !mcsema_real_eip !18
  %235 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %236 = add i64 %235, -12, !mcsema_real_eip !18
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !18
  %238 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %239 = ptrtoint i64* %237 to i64, !mcsema_real_eip !18
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !18
  store i32 %238, i32* %240, !mcsema_real_eip !18
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !19
  %241 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %242 = sub i64 %241, 8, !mcsema_real_eip !19
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !19
  store i64 75, i64* %243, !mcsema_real_eip !19
  store volatile i64 %242, i64* %RSP_write, !mcsema_real_eip !19
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !19
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !20
  %244 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %245 = add i64 %244, -12, !mcsema_real_eip !20
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !20
  %247 = ptrtoint i64* %246 to i64, !mcsema_real_eip !20
  %248 = inttoptr i64 %247 to i32*, !mcsema_real_eip !20
  %249 = load i32, i32* %248, !mcsema_real_eip !20
  %250 = zext i32 %249 to i64, !mcsema_real_eip !20
  store volatile i64 %250, i64* %EDI_write, !mcsema_real_eip !20
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !21
  %251 = load i32, i32* %EDI_read, !mcsema_real_eip !21
  %252 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %253 = add i32 %252, %251, !mcsema_real_eip !21
  %254 = xor i32 %253, %251, !mcsema_real_eip !21
  %255 = xor i32 %254, %252, !mcsema_real_eip !21
  %256 = and i32 %255, 16, !mcsema_real_eip !21
  %257 = icmp ne i32 %256, 0, !mcsema_real_eip !21
  %258 = zext i1 %257 to i8, !mcsema_real_eip !21
  store volatile i8 %258, i8* %AF_write, !mcsema_real_eip !21
  %259 = lshr i32 %253, 31, !mcsema_real_eip !21
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !21
  %261 = zext i1 %260 to i8, !mcsema_real_eip !21
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !21
  %263 = zext i1 %262 to i8, !mcsema_real_eip !21
  store volatile i8 %263, i8* %SF_write, !mcsema_real_eip !21
  %264 = icmp eq i32 %253, 0, !mcsema_real_eip !21
  %265 = zext i1 %264 to i8, !mcsema_real_eip !21
  store volatile i8 %265, i8* %ZF_write, !mcsema_real_eip !21
  %266 = xor i32 %251, %252, !mcsema_real_eip !21
  %267 = xor i32 %266, -1, !mcsema_real_eip !21
  %268 = xor i32 %251, %253, !mcsema_real_eip !21
  %269 = and i32 %267, %268, !mcsema_real_eip !21
  %270 = lshr i32 %269, 31, !mcsema_real_eip !21
  %271 = and i32 %270, 1, !mcsema_real_eip !21
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !21
  %273 = zext i1 %272 to i8, !mcsema_real_eip !21
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !21
  %275 = zext i1 %274 to i8, !mcsema_real_eip !21
  store volatile i8 %275, i8* %OF_write, !mcsema_real_eip !21
  %276 = trunc i32 %253 to i8, !mcsema_real_eip !21
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !21
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !21
  %279 = zext i1 %278 to i8, !mcsema_real_eip !21
  %280 = xor i8 %279, 1, !mcsema_real_eip !21
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !21
  %282 = zext i1 %281 to i8, !mcsema_real_eip !21
  store volatile i8 %282, i8* %PF_write, !mcsema_real_eip !21
  %283 = icmp ult i32 %253, %251, !mcsema_real_eip !21
  %284 = zext i1 %283 to i8, !mcsema_real_eip !21
  store volatile i8 %284, i8* %CF_write, !mcsema_real_eip !21
  %285 = zext i32 %253 to i64, !mcsema_real_eip !21
  store volatile i64 %285, i64* %EDI_write, !mcsema_real_eip !21
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !22
  %286 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %287 = add i64 %286, -4, !mcsema_real_eip !22
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !22
  %289 = load i32, i32* %EDI_read, !mcsema_real_eip !22
  %290 = ptrtoint i64* %288 to i64, !mcsema_real_eip !22
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !22
  store i32 %289, i32* %291, !mcsema_real_eip !22
  br label %block_53, !mcsema_real_eip !23

block_53:                                         ; preds = %block_30, %block_24
  store volatile i64 83, i64* %EIP_write, !mcsema_real_eip !23
  %292 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %293 = add i64 %292, -4, !mcsema_real_eip !23
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !23
  %295 = ptrtoint i64* %294 to i64, !mcsema_real_eip !23
  %296 = inttoptr i64 %295 to i32*, !mcsema_real_eip !23
  %297 = load i32, i32* %296, !mcsema_real_eip !23
  %298 = zext i32 %297 to i64, !mcsema_real_eip !23
  store volatile i64 %298, i64* %EAX_write, !mcsema_real_eip !23
  store volatile i64 86, i64* %EIP_write, !mcsema_real_eip !24
  %299 = load i64, i64* %RSP_read, !mcsema_real_eip !24
  %300 = add i64 16, %299, !mcsema_real_eip !24
  %301 = xor i64 %300, %299, !mcsema_real_eip !24
  %302 = xor i64 %301, 16, !mcsema_real_eip !24
  %303 = and i64 %302, 16, !mcsema_real_eip !24
  %304 = icmp ne i64 %303, 0, !mcsema_real_eip !24
  %305 = zext i1 %304 to i8, !mcsema_real_eip !24
  store volatile i8 %305, i8* %AF_write, !mcsema_real_eip !24
  %306 = lshr i64 %300, 63, !mcsema_real_eip !24
  %307 = trunc i64 %306 to i1, !mcsema_real_eip !24
  %308 = zext i1 %307 to i8, !mcsema_real_eip !24
  %309 = trunc i8 %308 to i1, !mcsema_real_eip !24
  %310 = zext i1 %309 to i8, !mcsema_real_eip !24
  store volatile i8 %310, i8* %SF_write, !mcsema_real_eip !24
  %311 = icmp eq i64 %300, 0, !mcsema_real_eip !24
  %312 = zext i1 %311 to i8, !mcsema_real_eip !24
  store volatile i8 %312, i8* %ZF_write, !mcsema_real_eip !24
  %313 = xor i64 %299, 16, !mcsema_real_eip !24
  %314 = xor i64 %313, -1, !mcsema_real_eip !24
  %315 = xor i64 %299, %300, !mcsema_real_eip !24
  %316 = and i64 %314, %315, !mcsema_real_eip !24
  %317 = lshr i64 %316, 63, !mcsema_real_eip !24
  %318 = and i64 %317, 1, !mcsema_real_eip !24
  %319 = trunc i64 %318 to i1, !mcsema_real_eip !24
  %320 = zext i1 %319 to i8, !mcsema_real_eip !24
  %321 = trunc i8 %320 to i1, !mcsema_real_eip !24
  %322 = zext i1 %321 to i8, !mcsema_real_eip !24
  store volatile i8 %322, i8* %OF_write, !mcsema_real_eip !24
  %323 = trunc i64 %300 to i8, !mcsema_real_eip !24
  %324 = call i8 @llvm.ctpop.i8(i8 %323), !mcsema_real_eip !24
  %325 = trunc i8 %324 to i1, !mcsema_real_eip !24
  %326 = zext i1 %325 to i8, !mcsema_real_eip !24
  %327 = xor i8 %326, 1, !mcsema_real_eip !24
  %328 = trunc i8 %327 to i1, !mcsema_real_eip !24
  %329 = zext i1 %328 to i8, !mcsema_real_eip !24
  store volatile i8 %329, i8* %PF_write, !mcsema_real_eip !24
  %330 = icmp ult i64 %300, %299, !mcsema_real_eip !24
  %331 = zext i1 %330 to i8, !mcsema_real_eip !24
  store volatile i8 %331, i8* %CF_write, !mcsema_real_eip !24
  store volatile i64 %300, i64* %RSP_write, !mcsema_real_eip !24
  store volatile i64 90, i64* %EIP_write, !mcsema_real_eip !25
  %332 = load i64, i64* %RSP_read, !mcsema_real_eip !25
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !25
  %334 = load i64, i64* %333, !mcsema_real_eip !25
  store volatile i64 %334, i64* %RBP_write, !mcsema_real_eip !25
  %335 = add i64 %332, 8, !mcsema_real_eip !25
  store volatile i64 %335, i64* %RSP_write, !mcsema_real_eip !25
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !26
  %336 = load i64, i64* %RSP_read, !mcsema_real_eip !26
  %337 = add i64 %336, 8, !mcsema_real_eip !26
  %338 = inttoptr i64 %336 to i64*, !mcsema_real_eip !26
  %339 = load i64, i64* %338, !mcsema_real_eip !26
  store volatile i64 %339, i64* %RIP_write, !mcsema_real_eip !26
  store volatile i64 %337, i64* %RSP_write, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !27
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !27
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !27
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !27
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !27
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !27
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !27
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !27
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !27
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !27
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !27
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !27
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !27
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !27
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !27
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !27
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !27
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !27
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !27
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !27
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !27
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !27
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !27
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !27
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !27
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !27
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !27
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !27
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !27
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !27
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !27
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !27
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !27
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !27
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !27
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !27
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !27
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !27
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !27
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !27
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !27
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !27
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !27
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !27
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !27
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !27
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !27
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !27
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !27
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !27
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !27
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !27
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !27
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !27
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !27
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !27
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !27
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !27
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !27
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !27
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !27
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !27
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !27
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !27
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !27
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !27
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !27
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !27
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !27
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !27
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !27
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !27
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !27
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !27
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !27
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !27
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !27
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !27
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !27
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !27
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !27
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !27
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !27
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !27
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !27
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !27
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !27
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !27
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !27
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !27
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !27
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !27
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !27
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !27
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !27
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !27
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !27
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !27
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !27
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !27
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !27
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !27
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !27
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !27
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !27
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !27
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !27
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !27
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !27
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !27
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !27
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !27
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !27
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !27
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !27
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !27
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !27
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !27
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !27
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !27
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !27
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !27
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !27
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !27
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !27
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !27
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !27
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !27
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !27
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !27
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !27
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !27
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !27
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !27
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !27
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !27
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !27
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !27
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !27
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !27
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !27
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !27
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !27
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !27
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !27
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !27
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !27
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !27
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !27
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !27
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !27
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !27
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !27
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !27
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !27
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !27
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !27
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !27
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !27
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !27
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !27
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !27
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !27
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !27
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !27
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !27
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !27
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !27
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !27
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !27
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !27
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !27
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !27
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !27
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !27
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !27
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !27
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !27
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !27
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !27
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !27
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !27
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !27
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !27
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !27
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !27
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !27
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !27
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !27
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !27
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !27
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !27
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !27
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !27
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !27
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !27
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !27
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !27
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !27
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !27
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !27
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !27
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !27
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !27
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !27
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !27
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !27
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !27
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !27
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !27
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !27
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !27
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !27
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !27
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !27
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !27
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !27
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !27
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !27
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !27
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !27
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !27
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !27
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !27
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !27
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !27
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !27
  br label %block_60, !mcsema_real_eip !27

block_60:                                         ; preds = %entry
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !27
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  %3 = sub i64 %2, 8, !mcsema_real_eip !27
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !27
  store i64 %1, i64* %4, !mcsema_real_eip !27
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !27
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !28
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !28
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !28
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !29
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !29
  %7 = sext i8 16 to i64, !mcsema_real_eip !29
  %8 = sub i64 %6, %7, !mcsema_real_eip !29
  %9 = xor i64 %8, %6, !mcsema_real_eip !29
  %10 = xor i64 %9, %7, !mcsema_real_eip !29
  %11 = and i64 %10, 16, !mcsema_real_eip !29
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !29
  %13 = zext i1 %12 to i8, !mcsema_real_eip !29
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !29
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !29
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !29
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !29
  %17 = zext i1 %16 to i8, !mcsema_real_eip !29
  %18 = xor i8 %17, 1, !mcsema_real_eip !29
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !29
  %20 = zext i1 %19 to i8, !mcsema_real_eip !29
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !29
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !29
  %22 = zext i1 %21 to i8, !mcsema_real_eip !29
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !29
  %23 = lshr i64 %8, 63, !mcsema_real_eip !29
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !29
  %25 = zext i1 %24 to i8, !mcsema_real_eip !29
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !29
  %27 = zext i1 %26 to i8, !mcsema_real_eip !29
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !29
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !29
  %29 = zext i1 %28 to i8, !mcsema_real_eip !29
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !29
  %30 = xor i64 %6, %7, !mcsema_real_eip !29
  %31 = xor i64 %6, %8, !mcsema_real_eip !29
  %32 = and i64 %30, %31, !mcsema_real_eip !29
  %33 = lshr i64 %32, 63, !mcsema_real_eip !29
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !29
  %35 = zext i1 %34 to i8, !mcsema_real_eip !29
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !29
  %37 = zext i1 %36 to i8, !mcsema_real_eip !29
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !29
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !29
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !30
  %38 = zext i32 5 to i64, !mcsema_real_eip !30
  store volatile i64 %38, i64* %EDI_write, !mcsema_real_eip !30
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !31
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %40 = add i64 %39, -4, !mcsema_real_eip !31
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !31
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !31
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !31
  store i32 0, i32* %43, !mcsema_real_eip !31
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !32
  %44 = load i64, i64* %RSP_read, !mcsema_real_eip !32
  %45 = sub i64 %44, 8, !mcsema_real_eip !32
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !32
  store i64 121, i64* %46, !mcsema_real_eip !32
  store volatile i64 %45, i64* %RSP_write, !mcsema_real_eip !32
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !32
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !33
  %47 = ptrtoint %0* @data_99 to i64, !mcsema_real_eip !33
  %48 = add i64 %47, 0, !mcsema_real_eip !33
  store volatile i64 %48, i64* %RDI_write, !mcsema_real_eip !33
  store volatile i64 131, i64* %EIP_write, !mcsema_real_eip !34
  %49 = load i32, i32* %EAX_read, !mcsema_real_eip !34
  %50 = zext i32 %49 to i64, !mcsema_real_eip !34
  store volatile i64 %50, i64* %ESI_write, !mcsema_real_eip !34
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !35
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !35
  store volatile i64 135, i64* %EIP_write, !mcsema_real_eip !36
  %51 = load i64, i64* %RDI_read, !mcsema_real_eip !36
  %52 = load i64, i64* %RSI_read, !mcsema_real_eip !36
  %53 = load i64, i64* %RDX_read, !mcsema_real_eip !36
  %54 = load i64, i64* %RCX_read, !mcsema_real_eip !36
  %55 = load i64, i64* %R8_read, !mcsema_real_eip !36
  %56 = load i64, i64* %R9_read, !mcsema_real_eip !36
  %57 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !36
  %59 = load i64, i64* %58, !mcsema_real_eip !36
  %60 = add i64 %57, 8, !mcsema_real_eip !36
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !36
  %62 = load i64, i64* %61, !mcsema_real_eip !36
  %63 = add i64 %60, 8, !mcsema_real_eip !36
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !36
  %65 = load i64, i64* %64, !mcsema_real_eip !36
  %66 = add i64 %63, 8, !mcsema_real_eip !36
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !36
  %68 = load i64, i64* %67, !mcsema_real_eip !36
  %69 = add i64 %66, 8, !mcsema_real_eip !36
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !36
  %71 = load i64, i64* %70, !mcsema_real_eip !36
  %72 = add i64 %69, 8, !mcsema_real_eip !36
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !36
  %74 = load i64, i64* %73, !mcsema_real_eip !36
  %75 = add i64 %72, 8, !mcsema_real_eip !36
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !36
  %77 = load i64, i64* %76, !mcsema_real_eip !36
  %78 = add i64 %75, 8, !mcsema_real_eip !36
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !36
  %80 = load i64, i64* %79, !mcsema_real_eip !36
  %81 = add i64 %78, 8, !mcsema_real_eip !36
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !36
  %83 = load i64, i64* %82, !mcsema_real_eip !36
  %84 = add i64 %81, 8, !mcsema_real_eip !36
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !36
  %86 = load i64, i64* %85, !mcsema_real_eip !36
  %87 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %88 = sub i64 %87, 8, !mcsema_real_eip !36
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !36
  store i64 -2415393069852865332, i64* %89, !mcsema_real_eip !36
  store volatile i64 %88, i64* %RSP_write, !mcsema_real_eip !36
  %90 = call x86_64_sysvcc i64 @_printf(i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %59, i64 %62, i64 %65, i64 %68, i64 %71, i64 %74, i64 %77, i64 %80, i64 %83, i64 %86), !mcsema_real_eip !36
  store volatile i64 %90, i64* %RAX_write, !mcsema_real_eip !36
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !37
  %91 = load i32, i32* %ESI_read, !mcsema_real_eip !37
  %92 = load i32, i32* %ESI_read, !mcsema_real_eip !37
  %93 = xor i32 %91, %92, !mcsema_real_eip !37
  %94 = trunc i8 0 to i1, !mcsema_real_eip !37
  %95 = zext i1 %94 to i8, !mcsema_real_eip !37
  store volatile i8 %95, i8* %CF_write, !mcsema_real_eip !37
  %96 = trunc i8 0 to i1, !mcsema_real_eip !37
  %97 = zext i1 %96 to i8, !mcsema_real_eip !37
  store volatile i8 %97, i8* %OF_write, !mcsema_real_eip !37
  %98 = lshr i32 %93, 31, !mcsema_real_eip !37
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !37
  %100 = zext i1 %99 to i8, !mcsema_real_eip !37
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !37
  %102 = zext i1 %101 to i8, !mcsema_real_eip !37
  store volatile i8 %102, i8* %SF_write, !mcsema_real_eip !37
  %103 = icmp eq i32 %93, 0, !mcsema_real_eip !37
  %104 = zext i1 %103 to i8, !mcsema_real_eip !37
  store volatile i8 %104, i8* %ZF_write, !mcsema_real_eip !37
  %105 = trunc i32 %93 to i8, !mcsema_real_eip !37
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !37
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !37
  %108 = zext i1 %107 to i8, !mcsema_real_eip !37
  %109 = xor i8 %108, 1, !mcsema_real_eip !37
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !37
  %111 = zext i1 %110 to i8, !mcsema_real_eip !37
  store volatile i8 %111, i8* %PF_write, !mcsema_real_eip !37
  %112 = zext i32 %93 to i64, !mcsema_real_eip !37
  store volatile i64 %112, i64* %ESI_write, !mcsema_real_eip !37
  store volatile i64 142, i64* %EIP_write, !mcsema_real_eip !38
  %113 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %114 = add i64 %113, -8, !mcsema_real_eip !38
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !38
  %116 = load i32, i32* %EAX_read, !mcsema_real_eip !38
  %117 = ptrtoint i64* %115 to i64, !mcsema_real_eip !38
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !38
  store i32 %116, i32* %118, !mcsema_real_eip !38
  store volatile i64 145, i64* %EIP_write, !mcsema_real_eip !39
  %119 = load i32, i32* %ESI_read, !mcsema_real_eip !39
  %120 = zext i32 %119 to i64, !mcsema_real_eip !39
  store volatile i64 %120, i64* %EAX_write, !mcsema_real_eip !39
  store volatile i64 147, i64* %EIP_write, !mcsema_real_eip !40
  %121 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %122 = add i64 16, %121, !mcsema_real_eip !40
  %123 = xor i64 %122, %121, !mcsema_real_eip !40
  %124 = xor i64 %123, 16, !mcsema_real_eip !40
  %125 = and i64 %124, 16, !mcsema_real_eip !40
  %126 = icmp ne i64 %125, 0, !mcsema_real_eip !40
  %127 = zext i1 %126 to i8, !mcsema_real_eip !40
  store volatile i8 %127, i8* %AF_write, !mcsema_real_eip !40
  %128 = lshr i64 %122, 63, !mcsema_real_eip !40
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !40
  %130 = zext i1 %129 to i8, !mcsema_real_eip !40
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !40
  %132 = zext i1 %131 to i8, !mcsema_real_eip !40
  store volatile i8 %132, i8* %SF_write, !mcsema_real_eip !40
  %133 = icmp eq i64 %122, 0, !mcsema_real_eip !40
  %134 = zext i1 %133 to i8, !mcsema_real_eip !40
  store volatile i8 %134, i8* %ZF_write, !mcsema_real_eip !40
  %135 = xor i64 %121, 16, !mcsema_real_eip !40
  %136 = xor i64 %135, -1, !mcsema_real_eip !40
  %137 = xor i64 %121, %122, !mcsema_real_eip !40
  %138 = and i64 %136, %137, !mcsema_real_eip !40
  %139 = lshr i64 %138, 63, !mcsema_real_eip !40
  %140 = and i64 %139, 1, !mcsema_real_eip !40
  %141 = trunc i64 %140 to i1, !mcsema_real_eip !40
  %142 = zext i1 %141 to i8, !mcsema_real_eip !40
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !40
  %144 = zext i1 %143 to i8, !mcsema_real_eip !40
  store volatile i8 %144, i8* %OF_write, !mcsema_real_eip !40
  %145 = trunc i64 %122 to i8, !mcsema_real_eip !40
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !40
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !40
  %148 = zext i1 %147 to i8, !mcsema_real_eip !40
  %149 = xor i8 %148, 1, !mcsema_real_eip !40
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !40
  %151 = zext i1 %150 to i8, !mcsema_real_eip !40
  store volatile i8 %151, i8* %PF_write, !mcsema_real_eip !40
  %152 = icmp ult i64 %122, %121, !mcsema_real_eip !40
  %153 = zext i1 %152 to i8, !mcsema_real_eip !40
  store volatile i8 %153, i8* %CF_write, !mcsema_real_eip !40
  store volatile i64 %122, i64* %RSP_write, !mcsema_real_eip !40
  store volatile i64 151, i64* %EIP_write, !mcsema_real_eip !41
  %154 = load i64, i64* %RSP_read, !mcsema_real_eip !41
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !41
  %156 = load i64, i64* %155, !mcsema_real_eip !41
  store volatile i64 %156, i64* %RBP_write, !mcsema_real_eip !41
  %157 = add i64 %154, 8, !mcsema_real_eip !41
  store volatile i64 %157, i64* %RSP_write, !mcsema_real_eip !41
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !42
  %158 = load i64, i64* %RSP_read, !mcsema_real_eip !42
  %159 = add i64 %158, 8, !mcsema_real_eip !42
  %160 = inttoptr i64 %158 to i64*, !mcsema_real_eip !42
  %161 = load i64, i64* %160, !mcsema_real_eip !42
  store volatile i64 %161, i64* %RIP_write, !mcsema_real_eip !42
  store volatile i64 %159, i64* %RSP_write, !mcsema_real_eip !42
  ret void, !mcsema_real_eip !42
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
!4 = !{i64 13}
!5 = !{i64 16}
!6 = !{i64 19}
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 30}
!10 = !{i64 36}
!11 = !{i64 43}
!12 = !{i64 48}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 56}
!16 = !{i64 61}
!17 = !{i64 64}
!18 = !{i64 67}
!19 = !{i64 70}
!20 = !{i64 75}
!21 = !{i64 78}
!22 = !{i64 80}
!23 = !{i64 83}
!24 = !{i64 86}
!25 = !{i64 90}
!26 = !{i64 91}
!27 = !{i64 96}
!28 = !{i64 97}
!29 = !{i64 100}
!30 = !{i64 104}
!31 = !{i64 109}
!32 = !{i64 116}
!33 = !{i64 121}
!34 = !{i64 131}
!35 = !{i64 133}
!36 = !{i64 135}
!37 = !{i64 140}
!38 = !{i64 142}
!39 = !{i64 145}
!40 = !{i64 147}
!41 = !{i64 151}
!42 = !{i64 152}
