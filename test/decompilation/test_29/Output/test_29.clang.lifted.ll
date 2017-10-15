; ModuleID = 'Output/test_29.clang.lifted.bc'
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_ee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64
@data_100 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"^\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %39 = add i64 %38, -4, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i32, i32* %EDI_read, !mcsema_real_eip !3
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !3
  store i32 %41, i32* %43, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %45 = add i64 %44, -16, !mcsema_real_eip !4
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !4
  %47 = load i64, i64* %RSI_read, !mcsema_real_eip !4
  store i64 %47, i64* %46, !mcsema_real_eip !4
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !5
  %48 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %49 = add i64 %48, -20, !mcsema_real_eip !5
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !5
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !5
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !5
  store i32 3, i32* %52, !mcsema_real_eip !5
  br label %block_16, !mcsema_real_eip !6

block_16:                                         ; preds = %block_22, %block_0
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !6
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %54 = add i64 %53, -20, !mcsema_real_eip !6
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !6
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !6
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !6
  %58 = load i32, i32* %57, !mcsema_real_eip !6
  %59 = zext i32 %58 to i64, !mcsema_real_eip !6
  store volatile i64 %59, i64* %EAX_write, !mcsema_real_eip !6
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !7
  %60 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %61 = add i64 %60, -4, !mcsema_real_eip !7
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !7
  %63 = load i32, i32* %EAX_read, !mcsema_real_eip !7
  %64 = ptrtoint i64* %62 to i64, !mcsema_real_eip !7
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !7
  %66 = load i32, i32* %65, !mcsema_real_eip !7
  %67 = sub i32 %63, %66, !mcsema_real_eip !7
  %68 = xor i32 %67, %63, !mcsema_real_eip !7
  %69 = xor i32 %68, %66, !mcsema_real_eip !7
  %70 = and i32 %69, 16, !mcsema_real_eip !7
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !7
  %72 = zext i1 %71 to i8, !mcsema_real_eip !7
  store volatile i8 %72, i8* %AF_write, !mcsema_real_eip !7
  %73 = trunc i32 %67 to i8, !mcsema_real_eip !7
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !7
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !7
  %76 = zext i1 %75 to i8, !mcsema_real_eip !7
  %77 = xor i8 %76, 1, !mcsema_real_eip !7
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !7
  %79 = zext i1 %78 to i8, !mcsema_real_eip !7
  store volatile i8 %79, i8* %PF_write, !mcsema_real_eip !7
  %80 = icmp eq i32 %67, 0, !mcsema_real_eip !7
  %81 = zext i1 %80 to i8, !mcsema_real_eip !7
  store volatile i8 %81, i8* %ZF_write, !mcsema_real_eip !7
  %82 = lshr i32 %67, 31, !mcsema_real_eip !7
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !7
  %84 = zext i1 %83 to i8, !mcsema_real_eip !7
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !7
  %86 = zext i1 %85 to i8, !mcsema_real_eip !7
  store volatile i8 %86, i8* %SF_write, !mcsema_real_eip !7
  %87 = icmp ult i32 %63, %66, !mcsema_real_eip !7
  %88 = zext i1 %87 to i8, !mcsema_real_eip !7
  store volatile i8 %88, i8* %CF_write, !mcsema_real_eip !7
  %89 = xor i32 %63, %66, !mcsema_real_eip !7
  %90 = xor i32 %63, %67, !mcsema_real_eip !7
  %91 = and i32 %89, %90, !mcsema_real_eip !7
  %92 = lshr i32 %91, 31, !mcsema_real_eip !7
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !7
  %94 = zext i1 %93 to i8, !mcsema_real_eip !7
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !7
  %96 = zext i1 %95 to i8, !mcsema_real_eip !7
  store volatile i8 %96, i8* %OF_write, !mcsema_real_eip !7
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !8
  %97 = load i8, i8* %CF_read, !mcsema_real_eip !8
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !8
  %99 = icmp eq i1 %98, true, !mcsema_real_eip !8
  %100 = load i8, i8* %ZF_read, !mcsema_real_eip !8
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !8
  %102 = icmp eq i1 %101, true, !mcsema_real_eip !8
  %103 = or i1 %99, %102, !mcsema_real_eip !8
  br i1 %103, label %block_4d, label %block_22, !mcsema_real_eip !8

block_22:                                         ; preds = %block_16
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !9
  %104 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %105 = add i64 %104, -20, !mcsema_real_eip !9
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !9
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !9
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !9
  %109 = load i32, i32* %108, !mcsema_real_eip !9
  %110 = zext i32 %109 to i64, !mcsema_real_eip !9
  store volatile i64 %110, i64* %EAX_write, !mcsema_real_eip !9
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !10
  %111 = load i32, i32* %EAX_read, !mcsema_real_eip !10
  %112 = sub i32 %111, 1, !mcsema_real_eip !10
  %113 = xor i32 %112, %111, !mcsema_real_eip !10
  %114 = xor i32 %113, 1, !mcsema_real_eip !10
  %115 = and i32 %114, 16, !mcsema_real_eip !10
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !10
  %117 = zext i1 %116 to i8, !mcsema_real_eip !10
  store volatile i8 %117, i8* %AF_write, !mcsema_real_eip !10
  %118 = trunc i32 %112 to i8, !mcsema_real_eip !10
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !10
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !10
  %121 = zext i1 %120 to i8, !mcsema_real_eip !10
  %122 = xor i8 %121, 1, !mcsema_real_eip !10
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !10
  %124 = zext i1 %123 to i8, !mcsema_real_eip !10
  store volatile i8 %124, i8* %PF_write, !mcsema_real_eip !10
  %125 = icmp eq i32 %112, 0, !mcsema_real_eip !10
  %126 = zext i1 %125 to i8, !mcsema_real_eip !10
  store volatile i8 %126, i8* %ZF_write, !mcsema_real_eip !10
  %127 = lshr i32 %112, 31, !mcsema_real_eip !10
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !10
  %129 = zext i1 %128 to i8, !mcsema_real_eip !10
  %130 = trunc i8 %129 to i1, !mcsema_real_eip !10
  %131 = zext i1 %130 to i8, !mcsema_real_eip !10
  store volatile i8 %131, i8* %SF_write, !mcsema_real_eip !10
  %132 = icmp ult i32 %111, 1, !mcsema_real_eip !10
  %133 = zext i1 %132 to i8, !mcsema_real_eip !10
  store volatile i8 %133, i8* %CF_write, !mcsema_real_eip !10
  %134 = xor i32 %111, 1, !mcsema_real_eip !10
  %135 = xor i32 %111, %112, !mcsema_real_eip !10
  %136 = and i32 %134, %135, !mcsema_real_eip !10
  %137 = lshr i32 %136, 31, !mcsema_real_eip !10
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !10
  %139 = zext i1 %138 to i8, !mcsema_real_eip !10
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !10
  %141 = zext i1 %140 to i8, !mcsema_real_eip !10
  store volatile i8 %141, i8* %OF_write, !mcsema_real_eip !10
  %142 = zext i32 %112 to i64, !mcsema_real_eip !10
  store volatile i64 %142, i64* %EAX_write, !mcsema_real_eip !10
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !11
  %143 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %144 = zext i32 %143 to i64, !mcsema_real_eip !11
  store volatile i64 %144, i64* %EAX_write, !mcsema_real_eip !11
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !12
  %145 = load i32, i32* %EAX_read, !mcsema_real_eip !12
  %146 = zext i32 %145 to i64, !mcsema_real_eip !12
  store volatile i64 %146, i64* %ECX_write, !mcsema_real_eip !12
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !13
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %148 = add i64 %147, -16, !mcsema_real_eip !13
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !13
  %150 = load i64, i64* %149, !mcsema_real_eip !13
  store volatile i64 %150, i64* %RDX_write, !mcsema_real_eip !13
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !14
  %151 = load i64, i64* %RDX_read, !mcsema_real_eip !14
  %152 = add i64 %151, 0, !mcsema_real_eip !14
  %153 = load i64, i64* %RCX_read, !mcsema_real_eip !14
  %154 = mul i64 %153, 4, !mcsema_real_eip !14
  %155 = add i64 %152, %154, !mcsema_real_eip !14
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !14
  %157 = ptrtoint i64* %156 to i64, !mcsema_real_eip !14
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !14
  %159 = load i32, i32* %158, !mcsema_real_eip !14
  %160 = zext i32 %159 to i64, !mcsema_real_eip !14
  store volatile i64 %160, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !15
  %161 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %162 = add i64 %161, -20, !mcsema_real_eip !15
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !15
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !15
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !15
  %166 = load i32, i32* %165, !mcsema_real_eip !15
  %167 = zext i32 %166 to i64, !mcsema_real_eip !15
  store volatile i64 %167, i64* %ESI_write, !mcsema_real_eip !15
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !16
  %168 = load i32, i32* %ESI_read, !mcsema_real_eip !16
  %169 = zext i32 %168 to i64, !mcsema_real_eip !16
  store volatile i64 %169, i64* %ECX_write, !mcsema_real_eip !16
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !17
  %170 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %171 = add i64 %170, -16, !mcsema_real_eip !17
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !17
  %173 = load i64, i64* %172, !mcsema_real_eip !17
  store volatile i64 %173, i64* %RDX_write, !mcsema_real_eip !17
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !18
  %174 = load i64, i64* %RDX_read, !mcsema_real_eip !18
  %175 = add i64 %174, 0, !mcsema_real_eip !18
  %176 = load i64, i64* %RCX_read, !mcsema_real_eip !18
  %177 = mul i64 %176, 4, !mcsema_real_eip !18
  %178 = add i64 %175, %177, !mcsema_real_eip !18
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !18
  %180 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %181 = ptrtoint i64* %179 to i64, !mcsema_real_eip !18
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !18
  store i32 %180, i32* %182, !mcsema_real_eip !18
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !19
  %183 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %184 = add i64 %183, -20, !mcsema_real_eip !19
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !19
  %186 = ptrtoint i64* %185 to i64, !mcsema_real_eip !19
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !19
  %188 = load i32, i32* %187, !mcsema_real_eip !19
  %189 = zext i32 %188 to i64, !mcsema_real_eip !19
  store volatile i64 %189, i64* %EAX_write, !mcsema_real_eip !19
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !20
  %190 = load i32, i32* %EAX_read, !mcsema_real_eip !20
  %191 = add i32 -1, %190, !mcsema_real_eip !20
  %192 = xor i32 %191, %190, !mcsema_real_eip !20
  %193 = xor i32 %192, -1, !mcsema_real_eip !20
  %194 = and i32 %193, 16, !mcsema_real_eip !20
  %195 = icmp ne i32 %194, 0, !mcsema_real_eip !20
  %196 = zext i1 %195 to i8, !mcsema_real_eip !20
  store volatile i8 %196, i8* %AF_write, !mcsema_real_eip !20
  %197 = lshr i32 %191, 31, !mcsema_real_eip !20
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !20
  %199 = zext i1 %198 to i8, !mcsema_real_eip !20
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !20
  %201 = zext i1 %200 to i8, !mcsema_real_eip !20
  store volatile i8 %201, i8* %SF_write, !mcsema_real_eip !20
  %202 = icmp eq i32 %191, 0, !mcsema_real_eip !20
  %203 = zext i1 %202 to i8, !mcsema_real_eip !20
  store volatile i8 %203, i8* %ZF_write, !mcsema_real_eip !20
  %204 = xor i32 %190, -1, !mcsema_real_eip !20
  %205 = xor i32 %204, -1, !mcsema_real_eip !20
  %206 = xor i32 %190, %191, !mcsema_real_eip !20
  %207 = and i32 %205, %206, !mcsema_real_eip !20
  %208 = lshr i32 %207, 31, !mcsema_real_eip !20
  %209 = and i32 %208, 1, !mcsema_real_eip !20
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !20
  %211 = zext i1 %210 to i8, !mcsema_real_eip !20
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !20
  %213 = zext i1 %212 to i8, !mcsema_real_eip !20
  store volatile i8 %213, i8* %OF_write, !mcsema_real_eip !20
  %214 = trunc i32 %191 to i8, !mcsema_real_eip !20
  %215 = call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !20
  %216 = trunc i8 %215 to i1, !mcsema_real_eip !20
  %217 = zext i1 %216 to i8, !mcsema_real_eip !20
  %218 = xor i8 %217, 1, !mcsema_real_eip !20
  %219 = trunc i8 %218 to i1, !mcsema_real_eip !20
  %220 = zext i1 %219 to i8, !mcsema_real_eip !20
  store volatile i8 %220, i8* %PF_write, !mcsema_real_eip !20
  %221 = icmp ult i32 %191, %190, !mcsema_real_eip !20
  %222 = zext i1 %221 to i8, !mcsema_real_eip !20
  store volatile i8 %222, i8* %CF_write, !mcsema_real_eip !20
  %223 = zext i32 %191 to i64, !mcsema_real_eip !20
  store volatile i64 %223, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !21
  %224 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %225 = add i64 %224, -20, !mcsema_real_eip !21
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !21
  %227 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %228 = ptrtoint i64* %226 to i64, !mcsema_real_eip !21
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !21
  store i32 %227, i32* %229, !mcsema_real_eip !21
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !22
  br label %block_16, !mcsema_real_eip !22

block_4d:                                         ; preds = %block_16
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !23
  %230 = ptrtoint %0* @data_ee to i64, !mcsema_real_eip !23
  %231 = add i64 %230, 0, !mcsema_real_eip !23
  store volatile i64 %231, i64* %RDI_write, !mcsema_real_eip !23
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !24
  %232 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %233 = add i64 %232, -4, !mcsema_real_eip !24
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !24
  %235 = ptrtoint i64* %234 to i64, !mcsema_real_eip !24
  %236 = inttoptr i64 %235 to i32*, !mcsema_real_eip !24
  %237 = load i32, i32* %236, !mcsema_real_eip !24
  %238 = zext i32 %237 to i64, !mcsema_real_eip !24
  store volatile i64 %238, i64* %ESI_write, !mcsema_real_eip !24
  store volatile i64 90, i64* %EIP_write, !mcsema_real_eip !25
  %239 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %240 = add i64 %239, -16, !mcsema_real_eip !25
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !25
  %242 = load i64, i64* %241, !mcsema_real_eip !25
  store volatile i64 %242, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !26
  %243 = load i64, i64* %RAX_read, !mcsema_real_eip !26
  %244 = add i64 %243, 0, !mcsema_real_eip !26
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !26
  %246 = ptrtoint i64* %245 to i64, !mcsema_real_eip !26
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !26
  %248 = load i32, i32* %247, !mcsema_real_eip !26
  %249 = zext i32 %248 to i64, !mcsema_real_eip !26
  store volatile i64 %249, i64* %EDX_write, !mcsema_real_eip !26
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !27
  %250 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %251 = add i64 %250, -16, !mcsema_real_eip !27
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !27
  %253 = load i64, i64* %252, !mcsema_real_eip !27
  store volatile i64 %253, i64* %RAX_write, !mcsema_real_eip !27
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !28
  %254 = load i64, i64* %RAX_read, !mcsema_real_eip !28
  %255 = add i64 %254, 4, !mcsema_real_eip !28
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !28
  %257 = ptrtoint i64* %256 to i64, !mcsema_real_eip !28
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !28
  %259 = load i32, i32* %258, !mcsema_real_eip !28
  %260 = zext i32 %259 to i64, !mcsema_real_eip !28
  store volatile i64 %260, i64* %ECX_write, !mcsema_real_eip !28
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !29
  %261 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %262 = add i64 %261, -16, !mcsema_real_eip !29
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !29
  %264 = load i64, i64* %263, !mcsema_real_eip !29
  store volatile i64 %264, i64* %RAX_write, !mcsema_real_eip !29
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !30
  %265 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %266 = add i64 %265, 8, !mcsema_real_eip !30
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !30
  %268 = ptrtoint i64* %267 to i64, !mcsema_real_eip !30
  %269 = inttoptr i64 %268 to i32*, !mcsema_real_eip !30
  %270 = load i32, i32* %269, !mcsema_real_eip !30
  %271 = zext i32 %270 to i64, !mcsema_real_eip !30
  store volatile i64 %271, i64* %R8D_write, !mcsema_real_eip !30
  store volatile i64 111, i64* %EIP_write, !mcsema_real_eip !31
  %272 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %273 = add i64 %272, -16, !mcsema_real_eip !31
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !31
  %275 = load i64, i64* %274, !mcsema_real_eip !31
  store volatile i64 %275, i64* %RAX_write, !mcsema_real_eip !31
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !32
  %276 = load i64, i64* %RAX_read, !mcsema_real_eip !32
  %277 = add i64 %276, 12, !mcsema_real_eip !32
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !32
  %279 = ptrtoint i64* %278 to i64, !mcsema_real_eip !32
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !32
  %281 = load i32, i32* %280, !mcsema_real_eip !32
  %282 = zext i32 %281 to i64, !mcsema_real_eip !32
  store volatile i64 %282, i64* %R9D_write, !mcsema_real_eip !32
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !33
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !33
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !34
  %283 = load i64, i64* %RDI_read, !mcsema_real_eip !34
  %284 = load i64, i64* %RSI_read, !mcsema_real_eip !34
  %285 = load i64, i64* %RDX_read, !mcsema_real_eip !34
  %286 = load i64, i64* %RCX_read, !mcsema_real_eip !34
  %287 = load i64, i64* %R8_read, !mcsema_real_eip !34
  %288 = load i64, i64* %R9_read, !mcsema_real_eip !34
  %289 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !34
  %291 = load i64, i64* %290, !mcsema_real_eip !34
  %292 = add i64 %289, 8, !mcsema_real_eip !34
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !34
  %294 = load i64, i64* %293, !mcsema_real_eip !34
  %295 = add i64 %292, 8, !mcsema_real_eip !34
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !34
  %297 = load i64, i64* %296, !mcsema_real_eip !34
  %298 = add i64 %295, 8, !mcsema_real_eip !34
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !34
  %300 = load i64, i64* %299, !mcsema_real_eip !34
  %301 = add i64 %298, 8, !mcsema_real_eip !34
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !34
  %303 = load i64, i64* %302, !mcsema_real_eip !34
  %304 = add i64 %301, 8, !mcsema_real_eip !34
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !34
  %306 = load i64, i64* %305, !mcsema_real_eip !34
  %307 = add i64 %304, 8, !mcsema_real_eip !34
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !34
  %309 = load i64, i64* %308, !mcsema_real_eip !34
  %310 = add i64 %307, 8, !mcsema_real_eip !34
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !34
  %312 = load i64, i64* %311, !mcsema_real_eip !34
  %313 = add i64 %310, 8, !mcsema_real_eip !34
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !34
  %315 = load i64, i64* %314, !mcsema_real_eip !34
  %316 = add i64 %313, 8, !mcsema_real_eip !34
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !34
  %318 = load i64, i64* %317, !mcsema_real_eip !34
  %319 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %320 = sub i64 %319, 8, !mcsema_real_eip !34
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !34
  store i64 -2415393069852865332, i64* %321, !mcsema_real_eip !34
  store volatile i64 %320, i64* %RSP_write, !mcsema_real_eip !34
  %322 = call x86_64_sysvcc i64 @_printf(i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %291, i64 %294, i64 %297, i64 %300, i64 %303, i64 %306, i64 %309, i64 %312, i64 %315, i64 %318), !mcsema_real_eip !34
  store volatile i64 %322, i64* %RAX_write, !mcsema_real_eip !34
  store volatile i64 126, i64* %EIP_write, !mcsema_real_eip !35
  %323 = load i64, i64* %RBP_read, !mcsema_real_eip !35
  %324 = add i64 %323, -24, !mcsema_real_eip !35
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !35
  %326 = load i32, i32* %EAX_read, !mcsema_real_eip !35
  %327 = ptrtoint i64* %325 to i64, !mcsema_real_eip !35
  %328 = inttoptr i64 %327 to i32*, !mcsema_real_eip !35
  store i32 %326, i32* %328, !mcsema_real_eip !35
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !36
  %329 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %330 = add i64 32, %329, !mcsema_real_eip !36
  %331 = xor i64 %330, %329, !mcsema_real_eip !36
  %332 = xor i64 %331, 32, !mcsema_real_eip !36
  %333 = and i64 %332, 16, !mcsema_real_eip !36
  %334 = icmp ne i64 %333, 0, !mcsema_real_eip !36
  %335 = zext i1 %334 to i8, !mcsema_real_eip !36
  store volatile i8 %335, i8* %AF_write, !mcsema_real_eip !36
  %336 = lshr i64 %330, 63, !mcsema_real_eip !36
  %337 = trunc i64 %336 to i1, !mcsema_real_eip !36
  %338 = zext i1 %337 to i8, !mcsema_real_eip !36
  %339 = trunc i8 %338 to i1, !mcsema_real_eip !36
  %340 = zext i1 %339 to i8, !mcsema_real_eip !36
  store volatile i8 %340, i8* %SF_write, !mcsema_real_eip !36
  %341 = icmp eq i64 %330, 0, !mcsema_real_eip !36
  %342 = zext i1 %341 to i8, !mcsema_real_eip !36
  store volatile i8 %342, i8* %ZF_write, !mcsema_real_eip !36
  %343 = xor i64 %329, 32, !mcsema_real_eip !36
  %344 = xor i64 %343, -1, !mcsema_real_eip !36
  %345 = xor i64 %329, %330, !mcsema_real_eip !36
  %346 = and i64 %344, %345, !mcsema_real_eip !36
  %347 = lshr i64 %346, 63, !mcsema_real_eip !36
  %348 = and i64 %347, 1, !mcsema_real_eip !36
  %349 = trunc i64 %348 to i1, !mcsema_real_eip !36
  %350 = zext i1 %349 to i8, !mcsema_real_eip !36
  %351 = trunc i8 %350 to i1, !mcsema_real_eip !36
  %352 = zext i1 %351 to i8, !mcsema_real_eip !36
  store volatile i8 %352, i8* %OF_write, !mcsema_real_eip !36
  %353 = trunc i64 %330 to i8, !mcsema_real_eip !36
  %354 = call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !36
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !36
  %356 = zext i1 %355 to i8, !mcsema_real_eip !36
  %357 = xor i8 %356, 1, !mcsema_real_eip !36
  %358 = trunc i8 %357 to i1, !mcsema_real_eip !36
  %359 = zext i1 %358 to i8, !mcsema_real_eip !36
  store volatile i8 %359, i8* %PF_write, !mcsema_real_eip !36
  %360 = icmp ult i64 %330, %329, !mcsema_real_eip !36
  %361 = zext i1 %360 to i8, !mcsema_real_eip !36
  store volatile i8 %361, i8* %CF_write, !mcsema_real_eip !36
  store volatile i64 %330, i64* %RSP_write, !mcsema_real_eip !36
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !37
  %362 = load i64, i64* %RSP_read, !mcsema_real_eip !37
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !37
  %364 = load i64, i64* %363, !mcsema_real_eip !37
  store volatile i64 %364, i64* %RBP_write, !mcsema_real_eip !37
  %365 = add i64 %362, 8, !mcsema_real_eip !37
  store volatile i64 %365, i64* %RSP_write, !mcsema_real_eip !37
  store volatile i64 134, i64* %EIP_write, !mcsema_real_eip !38
  %366 = load i64, i64* %RSP_read, !mcsema_real_eip !38
  %367 = add i64 %366, 8, !mcsema_real_eip !38
  %368 = inttoptr i64 %366 to i64*, !mcsema_real_eip !38
  %369 = load i64, i64* %368, !mcsema_real_eip !38
  store volatile i64 %369, i64* %RIP_write, !mcsema_real_eip !38
  store volatile i64 %367, i64* %RSP_write, !mcsema_real_eip !38
  ret void, !mcsema_real_eip !38
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !39
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !39
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !39
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !39
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !39
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !39
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !39
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !39
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !39
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !39
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !39
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !39
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !39
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !39
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !39
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !39
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !39
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !39
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !39
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !39
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !39
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !39
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !39
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !39
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !39
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !39
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !39
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !39
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !39
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !39
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !39
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !39
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !39
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !39
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !39
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !39
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !39
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !39
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !39
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !39
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !39
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !39
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !39
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !39
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !39
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !39
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !39
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !39
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !39
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !39
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !39
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !39
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !39
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !39
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !39
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !39
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !39
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !39
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !39
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !39
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !39
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !39
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !39
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !39
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !39
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !39
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !39
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !39
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !39
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !39
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !39
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !39
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !39
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !39
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !39
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !39
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !39
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !39
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !39
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !39
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !39
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !39
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !39
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !39
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !39
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !39
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !39
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !39
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !39
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !39
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !39
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !39
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !39
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !39
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !39
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !39
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !39
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !39
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !39
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !39
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !39
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !39
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !39
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !39
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !39
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !39
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !39
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !39
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !39
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !39
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !39
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !39
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !39
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !39
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !39
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !39
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !39
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !39
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !39
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !39
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !39
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !39
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !39
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !39
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !39
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !39
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !39
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !39
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !39
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !39
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !39
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !39
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !39
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !39
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !39
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !39
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !39
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !39
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !39
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !39
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !39
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !39
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !39
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !39
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !39
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !39
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !39
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !39
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !39
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !39
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !39
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !39
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !39
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !39
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !39
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !39
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !39
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !39
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !39
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !39
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !39
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !39
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !39
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !39
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !39
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !39
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !39
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !39
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !39
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !39
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !39
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !39
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !39
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !39
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !39
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !39
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !39
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !39
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !39
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !39
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !39
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !39
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !39
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !39
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !39
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !39
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !39
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !39
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !39
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !39
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !39
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !39
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !39
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !39
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !39
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !39
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !39
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !39
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !39
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !39
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !39
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !39
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !39
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !39
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !39
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !39
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !39
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !39
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !39
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !39
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !39
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !39
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !39
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !39
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !39
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !39
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !39
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !39
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !39
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !39
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !39
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !39
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !39
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !39
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !39
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !39
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !39
  br label %block_90, !mcsema_real_eip !39

block_90:                                         ; preds = %entry
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !39
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !39
  %3 = sub i64 %2, 8, !mcsema_real_eip !39
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !39
  store i64 %1, i64* %4, !mcsema_real_eip !39
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !39
  store volatile i64 145, i64* %EIP_write, !mcsema_real_eip !40
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !40
  store volatile i64 148, i64* %EIP_write, !mcsema_real_eip !41
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !41
  %7 = sext i8 48 to i64, !mcsema_real_eip !41
  %8 = sub i64 %6, %7, !mcsema_real_eip !41
  %9 = xor i64 %8, %6, !mcsema_real_eip !41
  %10 = xor i64 %9, %7, !mcsema_real_eip !41
  %11 = and i64 %10, 16, !mcsema_real_eip !41
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !41
  %13 = zext i1 %12 to i8, !mcsema_real_eip !41
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !41
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !41
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !41
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !41
  %17 = zext i1 %16 to i8, !mcsema_real_eip !41
  %18 = xor i8 %17, 1, !mcsema_real_eip !41
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !41
  %20 = zext i1 %19 to i8, !mcsema_real_eip !41
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !41
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !41
  %22 = zext i1 %21 to i8, !mcsema_real_eip !41
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !41
  %23 = lshr i64 %8, 63, !mcsema_real_eip !41
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !41
  %25 = zext i1 %24 to i8, !mcsema_real_eip !41
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !41
  %27 = zext i1 %26 to i8, !mcsema_real_eip !41
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !41
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !41
  %29 = zext i1 %28 to i8, !mcsema_real_eip !41
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !41
  %30 = xor i64 %6, %7, !mcsema_real_eip !41
  %31 = xor i64 %6, %8, !mcsema_real_eip !41
  %32 = and i64 %30, %31, !mcsema_real_eip !41
  %33 = lshr i64 %32, 63, !mcsema_real_eip !41
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !41
  %35 = zext i1 %34 to i8, !mcsema_real_eip !41
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !41
  %37 = zext i1 %36 to i8, !mcsema_real_eip !41
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !41
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !41
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !42
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %39 = add i64 %38, -4, !mcsema_real_eip !42
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !42
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !42
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !42
  store i32 0, i32* %42, !mcsema_real_eip !42
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !43
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %44 = add i64 %43, -36, !mcsema_real_eip !43
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !43
  %46 = ptrtoint i64* %45 to i64, !mcsema_real_eip !43
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !43
  store i32 0, i32* %47, !mcsema_real_eip !43
  br label %block_a6, !mcsema_real_eip !44

block_a6:                                         ; preds = %block_b0, %block_90
  store volatile i64 166, i64* %EIP_write, !mcsema_real_eip !44
  %48 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %49 = add i64 %48, -36, !mcsema_real_eip !44
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !44
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !44
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !44
  %53 = load i32, i32* %52, !mcsema_real_eip !44
  %54 = sub i32 %53, 5, !mcsema_real_eip !44
  %55 = xor i32 %54, %53, !mcsema_real_eip !44
  %56 = xor i32 %55, 5, !mcsema_real_eip !44
  %57 = and i32 %56, 16, !mcsema_real_eip !44
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !44
  %59 = zext i1 %58 to i8, !mcsema_real_eip !44
  store volatile i8 %59, i8* %AF_write, !mcsema_real_eip !44
  %60 = trunc i32 %54 to i8, !mcsema_real_eip !44
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !44
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !44
  %63 = zext i1 %62 to i8, !mcsema_real_eip !44
  %64 = xor i8 %63, 1, !mcsema_real_eip !44
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !44
  %66 = zext i1 %65 to i8, !mcsema_real_eip !44
  store volatile i8 %66, i8* %PF_write, !mcsema_real_eip !44
  %67 = icmp eq i32 %54, 0, !mcsema_real_eip !44
  %68 = zext i1 %67 to i8, !mcsema_real_eip !44
  store volatile i8 %68, i8* %ZF_write, !mcsema_real_eip !44
  %69 = lshr i32 %54, 31, !mcsema_real_eip !44
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !44
  %71 = zext i1 %70 to i8, !mcsema_real_eip !44
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !44
  %73 = zext i1 %72 to i8, !mcsema_real_eip !44
  store volatile i8 %73, i8* %SF_write, !mcsema_real_eip !44
  %74 = icmp ult i32 %53, 5, !mcsema_real_eip !44
  %75 = zext i1 %74 to i8, !mcsema_real_eip !44
  store volatile i8 %75, i8* %CF_write, !mcsema_real_eip !44
  %76 = xor i32 %53, 5, !mcsema_real_eip !44
  %77 = xor i32 %53, %54, !mcsema_real_eip !44
  %78 = and i32 %76, %77, !mcsema_real_eip !44
  %79 = lshr i32 %78, 31, !mcsema_real_eip !44
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !44
  %81 = zext i1 %80 to i8, !mcsema_real_eip !44
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !44
  %83 = zext i1 %82 to i8, !mcsema_real_eip !44
  store volatile i8 %83, i8* %OF_write, !mcsema_real_eip !44
  store volatile i64 170, i64* %EIP_write, !mcsema_real_eip !45
  %84 = load i8, i8* %SF_read, !mcsema_real_eip !45
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !45
  %86 = load i8, i8* %OF_read, !mcsema_real_eip !45
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !45
  %88 = icmp eq i1 %85, %87, !mcsema_real_eip !45
  br i1 %88, label %block_e6, label %block_b0, !mcsema_real_eip !45

block_b0:                                         ; preds = %block_a6
  store volatile i64 176, i64* %EIP_write, !mcsema_real_eip !46
  %89 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %90 = add i64 %89, -32, !mcsema_real_eip !46
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !46
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !46
  store volatile i64 %92, i64* %RSI_write, !mcsema_real_eip !46
  store volatile i64 180, i64* %EIP_write, !mcsema_real_eip !47
  %93 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %94 = add i64 %93, -32, !mcsema_real_eip !47
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !47
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !47
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !47
  store i32 5, i32* %97, !mcsema_real_eip !47
  store volatile i64 187, i64* %EIP_write, !mcsema_real_eip !48
  %98 = load i64, i64* %RBP_read, !mcsema_real_eip !48
  %99 = add i64 %98, -28, !mcsema_real_eip !48
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !48
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !48
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !48
  store i32 6, i32* %102, !mcsema_real_eip !48
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !49
  %103 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %104 = add i64 %103, -24, !mcsema_real_eip !49
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !49
  %106 = ptrtoint i64* %105 to i64, !mcsema_real_eip !49
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !49
  store i32 7, i32* %107, !mcsema_real_eip !49
  store volatile i64 201, i64* %EIP_write, !mcsema_real_eip !50
  %108 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %109 = add i64 %108, -20, !mcsema_real_eip !50
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !50
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !50
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !50
  store i32 8, i32* %112, !mcsema_real_eip !50
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !51
  %113 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %114 = add i64 %113, -36, !mcsema_real_eip !51
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !51
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !51
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !51
  %118 = load i32, i32* %117, !mcsema_real_eip !51
  %119 = zext i32 %118 to i64, !mcsema_real_eip !51
  store volatile i64 %119, i64* %EDI_write, !mcsema_real_eip !51
  store volatile i64 211, i64* %EIP_write, !mcsema_real_eip !52
  %120 = load i64, i64* %RSP_read, !mcsema_real_eip !52
  %121 = sub i64 %120, 8, !mcsema_real_eip !52
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !52
  store i64 216, i64* %122, !mcsema_real_eip !52
  store volatile i64 %121, i64* %RSP_write, !mcsema_real_eip !52
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !52
  store volatile i64 216, i64* %EIP_write, !mcsema_real_eip !53
  %123 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %124 = add i64 %123, -36, !mcsema_real_eip !53
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !53
  %126 = ptrtoint i64* %125 to i64, !mcsema_real_eip !53
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !53
  %128 = load i32, i32* %127, !mcsema_real_eip !53
  %129 = zext i32 %128 to i64, !mcsema_real_eip !53
  store volatile i64 %129, i64* %EAX_write, !mcsema_real_eip !53
  store volatile i64 219, i64* %EIP_write, !mcsema_real_eip !54
  %130 = load i32, i32* %EAX_read, !mcsema_real_eip !54
  %131 = add i32 1, %130, !mcsema_real_eip !54
  %132 = xor i32 %131, %130, !mcsema_real_eip !54
  %133 = xor i32 %132, 1, !mcsema_real_eip !54
  %134 = and i32 %133, 16, !mcsema_real_eip !54
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !54
  %136 = zext i1 %135 to i8, !mcsema_real_eip !54
  store volatile i8 %136, i8* %AF_write, !mcsema_real_eip !54
  %137 = lshr i32 %131, 31, !mcsema_real_eip !54
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !54
  %139 = zext i1 %138 to i8, !mcsema_real_eip !54
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !54
  %141 = zext i1 %140 to i8, !mcsema_real_eip !54
  store volatile i8 %141, i8* %SF_write, !mcsema_real_eip !54
  %142 = icmp eq i32 %131, 0, !mcsema_real_eip !54
  %143 = zext i1 %142 to i8, !mcsema_real_eip !54
  store volatile i8 %143, i8* %ZF_write, !mcsema_real_eip !54
  %144 = xor i32 %130, 1, !mcsema_real_eip !54
  %145 = xor i32 %144, -1, !mcsema_real_eip !54
  %146 = xor i32 %130, %131, !mcsema_real_eip !54
  %147 = and i32 %145, %146, !mcsema_real_eip !54
  %148 = lshr i32 %147, 31, !mcsema_real_eip !54
  %149 = and i32 %148, 1, !mcsema_real_eip !54
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !54
  %151 = zext i1 %150 to i8, !mcsema_real_eip !54
  %152 = trunc i8 %151 to i1, !mcsema_real_eip !54
  %153 = zext i1 %152 to i8, !mcsema_real_eip !54
  store volatile i8 %153, i8* %OF_write, !mcsema_real_eip !54
  %154 = trunc i32 %131 to i8, !mcsema_real_eip !54
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !54
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !54
  %157 = zext i1 %156 to i8, !mcsema_real_eip !54
  %158 = xor i8 %157, 1, !mcsema_real_eip !54
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !54
  %160 = zext i1 %159 to i8, !mcsema_real_eip !54
  store volatile i8 %160, i8* %PF_write, !mcsema_real_eip !54
  %161 = icmp ult i32 %131, %130, !mcsema_real_eip !54
  %162 = zext i1 %161 to i8, !mcsema_real_eip !54
  store volatile i8 %162, i8* %CF_write, !mcsema_real_eip !54
  %163 = zext i32 %131 to i64, !mcsema_real_eip !54
  store volatile i64 %163, i64* %EAX_write, !mcsema_real_eip !54
  store volatile i64 222, i64* %EIP_write, !mcsema_real_eip !55
  %164 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %165 = add i64 %164, -36, !mcsema_real_eip !55
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !55
  %167 = load i32, i32* %EAX_read, !mcsema_real_eip !55
  %168 = ptrtoint i64* %166 to i64, !mcsema_real_eip !55
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !55
  store i32 %167, i32* %169, !mcsema_real_eip !55
  store volatile i64 225, i64* %EIP_write, !mcsema_real_eip !56
  br label %block_a6, !mcsema_real_eip !56

block_e6:                                         ; preds = %block_a6
  store volatile i64 230, i64* %EIP_write, !mcsema_real_eip !57
  %170 = load i32, i32* %EAX_read, !mcsema_real_eip !57
  %171 = load i32, i32* %EAX_read, !mcsema_real_eip !57
  %172 = xor i32 %170, %171, !mcsema_real_eip !57
  %173 = trunc i8 0 to i1, !mcsema_real_eip !57
  %174 = zext i1 %173 to i8, !mcsema_real_eip !57
  store volatile i8 %174, i8* %CF_write, !mcsema_real_eip !57
  %175 = trunc i8 0 to i1, !mcsema_real_eip !57
  %176 = zext i1 %175 to i8, !mcsema_real_eip !57
  store volatile i8 %176, i8* %OF_write, !mcsema_real_eip !57
  %177 = lshr i32 %172, 31, !mcsema_real_eip !57
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !57
  %179 = zext i1 %178 to i8, !mcsema_real_eip !57
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !57
  %181 = zext i1 %180 to i8, !mcsema_real_eip !57
  store volatile i8 %181, i8* %SF_write, !mcsema_real_eip !57
  %182 = icmp eq i32 %172, 0, !mcsema_real_eip !57
  %183 = zext i1 %182 to i8, !mcsema_real_eip !57
  store volatile i8 %183, i8* %ZF_write, !mcsema_real_eip !57
  %184 = trunc i32 %172 to i8, !mcsema_real_eip !57
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !57
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !57
  %187 = zext i1 %186 to i8, !mcsema_real_eip !57
  %188 = xor i8 %187, 1, !mcsema_real_eip !57
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !57
  %190 = zext i1 %189 to i8, !mcsema_real_eip !57
  store volatile i8 %190, i8* %PF_write, !mcsema_real_eip !57
  %191 = zext i32 %172 to i64, !mcsema_real_eip !57
  store volatile i64 %191, i64* %EAX_write, !mcsema_real_eip !57
  store volatile i64 232, i64* %EIP_write, !mcsema_real_eip !58
  %192 = load i64, i64* %RSP_read, !mcsema_real_eip !58
  %193 = add i64 48, %192, !mcsema_real_eip !58
  %194 = xor i64 %193, %192, !mcsema_real_eip !58
  %195 = xor i64 %194, 48, !mcsema_real_eip !58
  %196 = and i64 %195, 16, !mcsema_real_eip !58
  %197 = icmp ne i64 %196, 0, !mcsema_real_eip !58
  %198 = zext i1 %197 to i8, !mcsema_real_eip !58
  store volatile i8 %198, i8* %AF_write, !mcsema_real_eip !58
  %199 = lshr i64 %193, 63, !mcsema_real_eip !58
  %200 = trunc i64 %199 to i1, !mcsema_real_eip !58
  %201 = zext i1 %200 to i8, !mcsema_real_eip !58
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !58
  %203 = zext i1 %202 to i8, !mcsema_real_eip !58
  store volatile i8 %203, i8* %SF_write, !mcsema_real_eip !58
  %204 = icmp eq i64 %193, 0, !mcsema_real_eip !58
  %205 = zext i1 %204 to i8, !mcsema_real_eip !58
  store volatile i8 %205, i8* %ZF_write, !mcsema_real_eip !58
  %206 = xor i64 %192, 48, !mcsema_real_eip !58
  %207 = xor i64 %206, -1, !mcsema_real_eip !58
  %208 = xor i64 %192, %193, !mcsema_real_eip !58
  %209 = and i64 %207, %208, !mcsema_real_eip !58
  %210 = lshr i64 %209, 63, !mcsema_real_eip !58
  %211 = and i64 %210, 1, !mcsema_real_eip !58
  %212 = trunc i64 %211 to i1, !mcsema_real_eip !58
  %213 = zext i1 %212 to i8, !mcsema_real_eip !58
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !58
  %215 = zext i1 %214 to i8, !mcsema_real_eip !58
  store volatile i8 %215, i8* %OF_write, !mcsema_real_eip !58
  %216 = trunc i64 %193 to i8, !mcsema_real_eip !58
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !58
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !58
  %219 = zext i1 %218 to i8, !mcsema_real_eip !58
  %220 = xor i8 %219, 1, !mcsema_real_eip !58
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !58
  %222 = zext i1 %221 to i8, !mcsema_real_eip !58
  store volatile i8 %222, i8* %PF_write, !mcsema_real_eip !58
  %223 = icmp ult i64 %193, %192, !mcsema_real_eip !58
  %224 = zext i1 %223 to i8, !mcsema_real_eip !58
  store volatile i8 %224, i8* %CF_write, !mcsema_real_eip !58
  store volatile i64 %193, i64* %RSP_write, !mcsema_real_eip !58
  store volatile i64 236, i64* %EIP_write, !mcsema_real_eip !59
  %225 = load i64, i64* %RSP_read, !mcsema_real_eip !59
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !59
  %227 = load i64, i64* %226, !mcsema_real_eip !59
  store volatile i64 %227, i64* %RBP_write, !mcsema_real_eip !59
  %228 = add i64 %225, 8, !mcsema_real_eip !59
  store volatile i64 %228, i64* %RSP_write, !mcsema_real_eip !59
  store volatile i64 237, i64* %EIP_write, !mcsema_real_eip !60
  %229 = load i64, i64* %RSP_read, !mcsema_real_eip !60
  %230 = add i64 %229, 8, !mcsema_real_eip !60
  %231 = inttoptr i64 %229 to i64*, !mcsema_real_eip !60
  %232 = load i64, i64* %231, !mcsema_real_eip !60
  store volatile i64 %232, i64* %RIP_write, !mcsema_real_eip !60
  store volatile i64 %230, i64* %RSP_write, !mcsema_real_eip !60
  ret void, !mcsema_real_eip !60
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
!5 = !{i64 15}
!6 = !{i64 22}
!7 = !{i64 25}
!8 = !{i64 28}
!9 = !{i64 34}
!10 = !{i64 37}
!11 = !{i64 40}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 56}
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 72}
!23 = !{i64 77}
!24 = !{i64 87}
!25 = !{i64 90}
!26 = !{i64 94}
!27 = !{i64 96}
!28 = !{i64 100}
!29 = !{i64 103}
!30 = !{i64 107}
!31 = !{i64 111}
!32 = !{i64 115}
!33 = !{i64 119}
!34 = !{i64 121}
!35 = !{i64 126}
!36 = !{i64 129}
!37 = !{i64 133}
!38 = !{i64 134}
!39 = !{i64 144}
!40 = !{i64 145}
!41 = !{i64 148}
!42 = !{i64 152}
!43 = !{i64 159}
!44 = !{i64 166}
!45 = !{i64 170}
!46 = !{i64 176}
!47 = !{i64 180}
!48 = !{i64 187}
!49 = !{i64 194}
!50 = !{i64 201}
!51 = !{i64 208}
!52 = !{i64 211}
!53 = !{i64 216}
!54 = !{i64 219}
!55 = !{i64 222}
!56 = !{i64 225}
!57 = !{i64 230}
!58 = !{i64 232}
!59 = !{i64 236}
!60 = !{i64 237}
