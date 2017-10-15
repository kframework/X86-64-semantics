; ModuleID = 'Output/test_28.clang.lifted.bc'
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_80 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %39 = add i64 %38, -4, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i32, i32* %EDI_read, !mcsema_real_eip !3
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !3
  store i32 %41, i32* %43, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %45 = add i64 %44, -8, !mcsema_real_eip !4
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !4
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !4
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %48, !mcsema_real_eip !4
  br label %block_12, !mcsema_real_eip !5

block_12:                                         ; preds = %block_1e, %block_0
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !5
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %50 = add i64 %49, -8, !mcsema_real_eip !5
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !5
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !5
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !5
  %54 = load i32, i32* %53, !mcsema_real_eip !5
  %55 = zext i32 %54 to i64, !mcsema_real_eip !5
  store volatile i64 %55, i64* %EAX_write, !mcsema_real_eip !5
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !6
  %56 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %57 = add i64 %56, -4, !mcsema_real_eip !6
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !6
  %59 = load i32, i32* %EAX_read, !mcsema_real_eip !6
  %60 = ptrtoint i64* %58 to i64, !mcsema_real_eip !6
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !6
  %62 = load i32, i32* %61, !mcsema_real_eip !6
  %63 = sub i32 %59, %62, !mcsema_real_eip !6
  %64 = xor i32 %63, %59, !mcsema_real_eip !6
  %65 = xor i32 %64, %62, !mcsema_real_eip !6
  %66 = and i32 %65, 16, !mcsema_real_eip !6
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !6
  %68 = zext i1 %67 to i8, !mcsema_real_eip !6
  store volatile i8 %68, i8* %AF_write, !mcsema_real_eip !6
  %69 = trunc i32 %63 to i8, !mcsema_real_eip !6
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !6
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !6
  %72 = zext i1 %71 to i8, !mcsema_real_eip !6
  %73 = xor i8 %72, 1, !mcsema_real_eip !6
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !6
  %75 = zext i1 %74 to i8, !mcsema_real_eip !6
  store volatile i8 %75, i8* %PF_write, !mcsema_real_eip !6
  %76 = icmp eq i32 %63, 0, !mcsema_real_eip !6
  %77 = zext i1 %76 to i8, !mcsema_real_eip !6
  store volatile i8 %77, i8* %ZF_write, !mcsema_real_eip !6
  %78 = lshr i32 %63, 31, !mcsema_real_eip !6
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !6
  %80 = zext i1 %79 to i8, !mcsema_real_eip !6
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !6
  %82 = zext i1 %81 to i8, !mcsema_real_eip !6
  store volatile i8 %82, i8* %SF_write, !mcsema_real_eip !6
  %83 = icmp ult i32 %59, %62, !mcsema_real_eip !6
  %84 = zext i1 %83 to i8, !mcsema_real_eip !6
  store volatile i8 %84, i8* %CF_write, !mcsema_real_eip !6
  %85 = xor i32 %59, %62, !mcsema_real_eip !6
  %86 = xor i32 %59, %63, !mcsema_real_eip !6
  %87 = and i32 %85, %86, !mcsema_real_eip !6
  %88 = lshr i32 %87, 31, !mcsema_real_eip !6
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !6
  %90 = zext i1 %89 to i8, !mcsema_real_eip !6
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !6
  %92 = zext i1 %91 to i8, !mcsema_real_eip !6
  store volatile i8 %92, i8* %OF_write, !mcsema_real_eip !6
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !7
  %93 = load i8, i8* %SF_read, !mcsema_real_eip !7
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !7
  %95 = load i8, i8* %OF_read, !mcsema_real_eip !7
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !7
  %97 = icmp eq i1 %94, %96, !mcsema_real_eip !7
  br i1 %97, label %block_40, label %block_1e, !mcsema_real_eip !7

block_1e:                                         ; preds = %block_12
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !8
  %98 = ptrtoint %0* @data_71 to i64, !mcsema_real_eip !8
  %99 = add i64 %98, 0, !mcsema_real_eip !8
  store volatile i64 %99, i64* %RDI_write, !mcsema_real_eip !8
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !9
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !9
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !10
  %100 = load i64, i64* %RDI_read, !mcsema_real_eip !10
  %101 = load i64, i64* %RSI_read, !mcsema_real_eip !10
  %102 = load i64, i64* %RDX_read, !mcsema_real_eip !10
  %103 = load i64, i64* %RCX_read, !mcsema_real_eip !10
  %104 = load i64, i64* %R8_read, !mcsema_real_eip !10
  %105 = load i64, i64* %R9_read, !mcsema_real_eip !10
  %106 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !10
  %108 = load i64, i64* %107, !mcsema_real_eip !10
  %109 = add i64 %106, 8, !mcsema_real_eip !10
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !10
  %111 = load i64, i64* %110, !mcsema_real_eip !10
  %112 = add i64 %109, 8, !mcsema_real_eip !10
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !10
  %114 = load i64, i64* %113, !mcsema_real_eip !10
  %115 = add i64 %112, 8, !mcsema_real_eip !10
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !10
  %117 = load i64, i64* %116, !mcsema_real_eip !10
  %118 = add i64 %115, 8, !mcsema_real_eip !10
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !10
  %120 = load i64, i64* %119, !mcsema_real_eip !10
  %121 = add i64 %118, 8, !mcsema_real_eip !10
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !10
  %123 = load i64, i64* %122, !mcsema_real_eip !10
  %124 = add i64 %121, 8, !mcsema_real_eip !10
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !10
  %126 = load i64, i64* %125, !mcsema_real_eip !10
  %127 = add i64 %124, 8, !mcsema_real_eip !10
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !10
  %129 = load i64, i64* %128, !mcsema_real_eip !10
  %130 = add i64 %127, 8, !mcsema_real_eip !10
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !10
  %132 = load i64, i64* %131, !mcsema_real_eip !10
  %133 = add i64 %130, 8, !mcsema_real_eip !10
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !10
  %135 = load i64, i64* %134, !mcsema_real_eip !10
  %136 = load i64, i64* %RSP_read, !mcsema_real_eip !10
  %137 = sub i64 %136, 8, !mcsema_real_eip !10
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %138, !mcsema_real_eip !10
  store volatile i64 %137, i64* %RSP_write, !mcsema_real_eip !10
  %139 = call x86_64_sysvcc i64 @_printf(i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120, i64 %123, i64 %126, i64 %129, i64 %132, i64 %135), !mcsema_real_eip !10
  store volatile i64 %139, i64* %RAX_write, !mcsema_real_eip !10
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !11
  %140 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %141 = add i64 %140, -12, !mcsema_real_eip !11
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !11
  %143 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %144 = ptrtoint i64* %142 to i64, !mcsema_real_eip !11
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !11
  store i32 %143, i32* %145, !mcsema_real_eip !11
  store volatile i64 50, i64* %EIP_write, !mcsema_real_eip !12
  %146 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %147 = add i64 %146, -8, !mcsema_real_eip !12
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !12
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !12
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !12
  %151 = load i32, i32* %150, !mcsema_real_eip !12
  %152 = zext i32 %151 to i64, !mcsema_real_eip !12
  store volatile i64 %152, i64* %EAX_write, !mcsema_real_eip !12
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !13
  %153 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %154 = add i32 1, %153, !mcsema_real_eip !13
  %155 = xor i32 %154, %153, !mcsema_real_eip !13
  %156 = xor i32 %155, 1, !mcsema_real_eip !13
  %157 = and i32 %156, 16, !mcsema_real_eip !13
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !13
  %159 = zext i1 %158 to i8, !mcsema_real_eip !13
  store volatile i8 %159, i8* %AF_write, !mcsema_real_eip !13
  %160 = lshr i32 %154, 31, !mcsema_real_eip !13
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !13
  %162 = zext i1 %161 to i8, !mcsema_real_eip !13
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !13
  %164 = zext i1 %163 to i8, !mcsema_real_eip !13
  store volatile i8 %164, i8* %SF_write, !mcsema_real_eip !13
  %165 = icmp eq i32 %154, 0, !mcsema_real_eip !13
  %166 = zext i1 %165 to i8, !mcsema_real_eip !13
  store volatile i8 %166, i8* %ZF_write, !mcsema_real_eip !13
  %167 = xor i32 %153, 1, !mcsema_real_eip !13
  %168 = xor i32 %167, -1, !mcsema_real_eip !13
  %169 = xor i32 %153, %154, !mcsema_real_eip !13
  %170 = and i32 %168, %169, !mcsema_real_eip !13
  %171 = lshr i32 %170, 31, !mcsema_real_eip !13
  %172 = and i32 %171, 1, !mcsema_real_eip !13
  %173 = trunc i32 %172 to i1, !mcsema_real_eip !13
  %174 = zext i1 %173 to i8, !mcsema_real_eip !13
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !13
  %176 = zext i1 %175 to i8, !mcsema_real_eip !13
  store volatile i8 %176, i8* %OF_write, !mcsema_real_eip !13
  %177 = trunc i32 %154 to i8, !mcsema_real_eip !13
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !13
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !13
  %180 = zext i1 %179 to i8, !mcsema_real_eip !13
  %181 = xor i8 %180, 1, !mcsema_real_eip !13
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !13
  %183 = zext i1 %182 to i8, !mcsema_real_eip !13
  store volatile i8 %183, i8* %PF_write, !mcsema_real_eip !13
  %184 = icmp ult i32 %154, %153, !mcsema_real_eip !13
  %185 = zext i1 %184 to i8, !mcsema_real_eip !13
  store volatile i8 %185, i8* %CF_write, !mcsema_real_eip !13
  %186 = zext i32 %154 to i64, !mcsema_real_eip !13
  store volatile i64 %186, i64* %EAX_write, !mcsema_real_eip !13
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !14
  %187 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %188 = add i64 %187, -8, !mcsema_real_eip !14
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !14
  %190 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %191 = ptrtoint i64* %189 to i64, !mcsema_real_eip !14
  %192 = inttoptr i64 %191 to i32*, !mcsema_real_eip !14
  store i32 %190, i32* %192, !mcsema_real_eip !14
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !15
  br label %block_12, !mcsema_real_eip !15

block_40:                                         ; preds = %block_12
  store volatile i64 64, i64* %EIP_write, !mcsema_real_eip !16
  %193 = load i64, i64* %RSP_read, !mcsema_real_eip !16
  %194 = add i64 16, %193, !mcsema_real_eip !16
  %195 = xor i64 %194, %193, !mcsema_real_eip !16
  %196 = xor i64 %195, 16, !mcsema_real_eip !16
  %197 = and i64 %196, 16, !mcsema_real_eip !16
  %198 = icmp ne i64 %197, 0, !mcsema_real_eip !16
  %199 = zext i1 %198 to i8, !mcsema_real_eip !16
  store volatile i8 %199, i8* %AF_write, !mcsema_real_eip !16
  %200 = lshr i64 %194, 63, !mcsema_real_eip !16
  %201 = trunc i64 %200 to i1, !mcsema_real_eip !16
  %202 = zext i1 %201 to i8, !mcsema_real_eip !16
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !16
  %204 = zext i1 %203 to i8, !mcsema_real_eip !16
  store volatile i8 %204, i8* %SF_write, !mcsema_real_eip !16
  %205 = icmp eq i64 %194, 0, !mcsema_real_eip !16
  %206 = zext i1 %205 to i8, !mcsema_real_eip !16
  store volatile i8 %206, i8* %ZF_write, !mcsema_real_eip !16
  %207 = xor i64 %193, 16, !mcsema_real_eip !16
  %208 = xor i64 %207, -1, !mcsema_real_eip !16
  %209 = xor i64 %193, %194, !mcsema_real_eip !16
  %210 = and i64 %208, %209, !mcsema_real_eip !16
  %211 = lshr i64 %210, 63, !mcsema_real_eip !16
  %212 = and i64 %211, 1, !mcsema_real_eip !16
  %213 = trunc i64 %212 to i1, !mcsema_real_eip !16
  %214 = zext i1 %213 to i8, !mcsema_real_eip !16
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !16
  %216 = zext i1 %215 to i8, !mcsema_real_eip !16
  store volatile i8 %216, i8* %OF_write, !mcsema_real_eip !16
  %217 = trunc i64 %194 to i8, !mcsema_real_eip !16
  %218 = call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !16
  %219 = trunc i8 %218 to i1, !mcsema_real_eip !16
  %220 = zext i1 %219 to i8, !mcsema_real_eip !16
  %221 = xor i8 %220, 1, !mcsema_real_eip !16
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !16
  %223 = zext i1 %222 to i8, !mcsema_real_eip !16
  store volatile i8 %223, i8* %PF_write, !mcsema_real_eip !16
  %224 = icmp ult i64 %194, %193, !mcsema_real_eip !16
  %225 = zext i1 %224 to i8, !mcsema_real_eip !16
  store volatile i8 %225, i8* %CF_write, !mcsema_real_eip !16
  store volatile i64 %194, i64* %RSP_write, !mcsema_real_eip !16
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !17
  %226 = load i64, i64* %RSP_read, !mcsema_real_eip !17
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !17
  %228 = load i64, i64* %227, !mcsema_real_eip !17
  store volatile i64 %228, i64* %RBP_write, !mcsema_real_eip !17
  %229 = add i64 %226, 8, !mcsema_real_eip !17
  store volatile i64 %229, i64* %RSP_write, !mcsema_real_eip !17
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !18
  %230 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %231 = add i64 %230, 8, !mcsema_real_eip !18
  %232 = inttoptr i64 %230 to i64*, !mcsema_real_eip !18
  %233 = load i64, i64* %232, !mcsema_real_eip !18
  store volatile i64 %233, i64* %RIP_write, !mcsema_real_eip !18
  store volatile i64 %231, i64* %RSP_write, !mcsema_real_eip !18
  ret void, !mcsema_real_eip !18
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !19
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !19
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !19
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !19
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !19
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !19
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !19
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !19
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !19
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !19
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !19
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !19
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !19
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !19
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !19
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !19
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !19
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !19
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !19
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !19
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !19
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !19
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !19
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !19
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !19
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !19
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !19
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !19
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !19
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !19
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !19
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !19
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !19
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !19
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !19
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !19
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !19
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !19
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !19
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !19
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !19
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !19
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !19
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !19
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !19
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !19
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !19
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !19
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !19
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !19
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !19
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !19
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !19
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !19
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !19
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !19
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !19
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !19
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !19
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !19
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !19
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !19
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !19
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !19
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !19
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !19
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !19
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !19
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !19
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !19
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !19
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !19
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !19
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !19
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !19
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !19
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !19
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !19
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !19
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !19
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !19
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !19
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !19
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !19
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !19
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !19
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !19
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !19
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !19
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !19
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !19
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !19
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !19
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !19
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !19
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !19
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !19
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !19
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !19
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !19
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !19
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !19
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !19
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !19
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !19
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !19
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !19
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !19
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !19
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !19
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !19
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !19
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !19
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !19
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !19
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !19
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !19
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !19
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !19
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !19
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !19
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !19
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !19
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !19
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !19
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !19
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !19
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !19
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !19
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !19
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !19
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !19
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !19
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !19
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !19
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !19
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !19
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !19
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !19
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !19
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !19
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !19
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !19
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !19
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !19
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !19
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !19
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !19
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !19
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !19
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !19
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !19
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !19
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !19
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !19
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !19
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !19
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !19
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !19
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !19
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !19
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !19
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !19
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !19
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !19
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !19
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !19
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !19
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !19
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !19
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !19
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !19
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !19
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !19
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !19
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !19
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !19
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !19
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !19
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !19
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !19
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !19
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !19
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !19
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !19
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !19
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !19
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !19
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !19
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !19
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !19
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !19
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !19
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !19
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !19
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !19
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !19
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !19
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !19
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !19
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !19
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !19
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !19
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !19
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !19
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !19
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !19
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !19
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !19
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !19
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !19
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !19
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !19
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !19
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !19
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !19
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !19
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !19
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !19
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !19
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !19
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !19
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !19
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !19
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !19
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !19
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !19
  br label %block_50, !mcsema_real_eip !19

block_50:                                         ; preds = %entry
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !19
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %3 = sub i64 %2, 8, !mcsema_real_eip !19
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !19
  store i64 %1, i64* %4, !mcsema_real_eip !19
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !19
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !20
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !20
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !21
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %7 = sext i8 16 to i64, !mcsema_real_eip !21
  %8 = sub i64 %6, %7, !mcsema_real_eip !21
  %9 = xor i64 %8, %6, !mcsema_real_eip !21
  %10 = xor i64 %9, %7, !mcsema_real_eip !21
  %11 = and i64 %10, 16, !mcsema_real_eip !21
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !21
  %13 = zext i1 %12 to i8, !mcsema_real_eip !21
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !21
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !21
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !21
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !21
  %17 = zext i1 %16 to i8, !mcsema_real_eip !21
  %18 = xor i8 %17, 1, !mcsema_real_eip !21
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !21
  %20 = zext i1 %19 to i8, !mcsema_real_eip !21
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !21
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !21
  %22 = zext i1 %21 to i8, !mcsema_real_eip !21
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !21
  %23 = lshr i64 %8, 63, !mcsema_real_eip !21
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !21
  %25 = zext i1 %24 to i8, !mcsema_real_eip !21
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !21
  %27 = zext i1 %26 to i8, !mcsema_real_eip !21
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !21
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !21
  %29 = zext i1 %28 to i8, !mcsema_real_eip !21
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !21
  %30 = xor i64 %6, %7, !mcsema_real_eip !21
  %31 = xor i64 %6, %8, !mcsema_real_eip !21
  %32 = and i64 %30, %31, !mcsema_real_eip !21
  %33 = lshr i64 %32, 63, !mcsema_real_eip !21
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !21
  %35 = zext i1 %34 to i8, !mcsema_real_eip !21
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !21
  %37 = zext i1 %36 to i8, !mcsema_real_eip !21
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !21
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !21
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !22
  %38 = zext i32 2 to i64, !mcsema_real_eip !22
  store volatile i64 %38, i64* %EDI_write, !mcsema_real_eip !22
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !23
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %40 = add i64 %39, -4, !mcsema_real_eip !23
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !23
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !23
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %43, !mcsema_real_eip !23
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !24
  %44 = load i64, i64* %RSP_read, !mcsema_real_eip !24
  %45 = sub i64 %44, 8, !mcsema_real_eip !24
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !24
  store i64 105, i64* %46, !mcsema_real_eip !24
  store volatile i64 %45, i64* %RSP_write, !mcsema_real_eip !24
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !24
  store volatile i64 105, i64* %EIP_write, !mcsema_real_eip !25
  %47 = load i32, i32* %EAX_read, !mcsema_real_eip !25
  %48 = load i32, i32* %EAX_read, !mcsema_real_eip !25
  %49 = xor i32 %47, %48, !mcsema_real_eip !25
  %50 = trunc i8 0 to i1, !mcsema_real_eip !25
  %51 = zext i1 %50 to i8, !mcsema_real_eip !25
  store volatile i8 %51, i8* %CF_write, !mcsema_real_eip !25
  %52 = trunc i8 0 to i1, !mcsema_real_eip !25
  %53 = zext i1 %52 to i8, !mcsema_real_eip !25
  store volatile i8 %53, i8* %OF_write, !mcsema_real_eip !25
  %54 = lshr i32 %49, 31, !mcsema_real_eip !25
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !25
  %56 = zext i1 %55 to i8, !mcsema_real_eip !25
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !25
  %58 = zext i1 %57 to i8, !mcsema_real_eip !25
  store volatile i8 %58, i8* %SF_write, !mcsema_real_eip !25
  %59 = icmp eq i32 %49, 0, !mcsema_real_eip !25
  %60 = zext i1 %59 to i8, !mcsema_real_eip !25
  store volatile i8 %60, i8* %ZF_write, !mcsema_real_eip !25
  %61 = trunc i32 %49 to i8, !mcsema_real_eip !25
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !25
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !25
  %64 = zext i1 %63 to i8, !mcsema_real_eip !25
  %65 = xor i8 %64, 1, !mcsema_real_eip !25
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !25
  %67 = zext i1 %66 to i8, !mcsema_real_eip !25
  store volatile i8 %67, i8* %PF_write, !mcsema_real_eip !25
  %68 = zext i32 %49 to i64, !mcsema_real_eip !25
  store volatile i64 %68, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !26
  %69 = load i64, i64* %RSP_read, !mcsema_real_eip !26
  %70 = add i64 16, %69, !mcsema_real_eip !26
  %71 = xor i64 %70, %69, !mcsema_real_eip !26
  %72 = xor i64 %71, 16, !mcsema_real_eip !26
  %73 = and i64 %72, 16, !mcsema_real_eip !26
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !26
  %75 = zext i1 %74 to i8, !mcsema_real_eip !26
  store volatile i8 %75, i8* %AF_write, !mcsema_real_eip !26
  %76 = lshr i64 %70, 63, !mcsema_real_eip !26
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !26
  %78 = zext i1 %77 to i8, !mcsema_real_eip !26
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !26
  %80 = zext i1 %79 to i8, !mcsema_real_eip !26
  store volatile i8 %80, i8* %SF_write, !mcsema_real_eip !26
  %81 = icmp eq i64 %70, 0, !mcsema_real_eip !26
  %82 = zext i1 %81 to i8, !mcsema_real_eip !26
  store volatile i8 %82, i8* %ZF_write, !mcsema_real_eip !26
  %83 = xor i64 %69, 16, !mcsema_real_eip !26
  %84 = xor i64 %83, -1, !mcsema_real_eip !26
  %85 = xor i64 %69, %70, !mcsema_real_eip !26
  %86 = and i64 %84, %85, !mcsema_real_eip !26
  %87 = lshr i64 %86, 63, !mcsema_real_eip !26
  %88 = and i64 %87, 1, !mcsema_real_eip !26
  %89 = trunc i64 %88 to i1, !mcsema_real_eip !26
  %90 = zext i1 %89 to i8, !mcsema_real_eip !26
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !26
  %92 = zext i1 %91 to i8, !mcsema_real_eip !26
  store volatile i8 %92, i8* %OF_write, !mcsema_real_eip !26
  %93 = trunc i64 %70 to i8, !mcsema_real_eip !26
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !26
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !26
  %96 = zext i1 %95 to i8, !mcsema_real_eip !26
  %97 = xor i8 %96, 1, !mcsema_real_eip !26
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !26
  %99 = zext i1 %98 to i8, !mcsema_real_eip !26
  store volatile i8 %99, i8* %PF_write, !mcsema_real_eip !26
  %100 = icmp ult i64 %70, %69, !mcsema_real_eip !26
  %101 = zext i1 %100 to i8, !mcsema_real_eip !26
  store volatile i8 %101, i8* %CF_write, !mcsema_real_eip !26
  store volatile i64 %70, i64* %RSP_write, !mcsema_real_eip !26
  store volatile i64 111, i64* %EIP_write, !mcsema_real_eip !27
  %102 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %104 = load i64, i64* %103, !mcsema_real_eip !27
  store volatile i64 %104, i64* %RBP_write, !mcsema_real_eip !27
  %105 = add i64 %102, 8, !mcsema_real_eip !27
  store volatile i64 %105, i64* %RSP_write, !mcsema_real_eip !27
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !28
  %106 = load i64, i64* %RSP_read, !mcsema_real_eip !28
  %107 = add i64 %106, 8, !mcsema_real_eip !28
  %108 = inttoptr i64 %106 to i64*, !mcsema_real_eip !28
  %109 = load i64, i64* %108, !mcsema_real_eip !28
  store volatile i64 %109, i64* %RIP_write, !mcsema_real_eip !28
  store volatile i64 %107, i64* %RSP_write, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
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
!5 = !{i64 18}
!6 = !{i64 21}
!7 = !{i64 24}
!8 = !{i64 30}
!9 = !{i64 40}
!10 = !{i64 42}
!11 = !{i64 47}
!12 = !{i64 50}
!13 = !{i64 53}
!14 = !{i64 56}
!15 = !{i64 59}
!16 = !{i64 64}
!17 = !{i64 68}
!18 = !{i64 69}
!19 = !{i64 80}
!20 = !{i64 81}
!21 = !{i64 84}
!22 = !{i64 88}
!23 = !{i64 93}
!24 = !{i64 100}
!25 = !{i64 105}
!26 = !{i64 107}
!27 = !{i64 111}
!28 = !{i64 112}
