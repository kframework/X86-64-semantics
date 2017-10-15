; ModuleID = 'Output/test_1.clang.lifted.bc'
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

@data_b3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %7 = add i64 %6, -4, !mcsema_real_eip !2
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !2
  %9 = load i32, i32* %EDI_read, !mcsema_real_eip !2
  %10 = ptrtoint i64* %8 to i64, !mcsema_real_eip !2
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !2
  store i32 %9, i32* %11, !mcsema_real_eip !2
  store volatile i64 7, i64* %EIP_write, !mcsema_real_eip !3
  %12 = load i64, i64* %RBP_read, !mcsema_real_eip !3
  %13 = add i64 %12, -8, !mcsema_real_eip !3
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !3
  %15 = load i32, i32* %ESI_read, !mcsema_real_eip !3
  %16 = ptrtoint i64* %14 to i64, !mcsema_real_eip !3
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !3
  store i32 %15, i32* %17, !mcsema_real_eip !3
  store volatile i64 10, i64* %EIP_write, !mcsema_real_eip !4
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %19 = add i64 %18, -4, !mcsema_real_eip !4
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !4
  %21 = ptrtoint i64* %20 to i64, !mcsema_real_eip !4
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !4
  %23 = load i32, i32* %22, !mcsema_real_eip !4
  %24 = zext i32 %23 to i64, !mcsema_real_eip !4
  store volatile i64 %24, i64* %ESI_write, !mcsema_real_eip !4
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !5
  %25 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %26 = add i64 %25, -8, !mcsema_real_eip !5
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !5
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !5
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !5
  %30 = load i32, i32* %29, !mcsema_real_eip !5
  %31 = load i32, i32* %ESI_read, !mcsema_real_eip !5
  %32 = add i32 %31, %30, !mcsema_real_eip !5
  %33 = xor i32 %32, %30, !mcsema_real_eip !5
  %34 = xor i32 %33, %31, !mcsema_real_eip !5
  %35 = and i32 %34, 16, !mcsema_real_eip !5
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !5
  %37 = zext i1 %36 to i8, !mcsema_real_eip !5
  store volatile i8 %37, i8* %AF_write, !mcsema_real_eip !5
  %38 = lshr i32 %32, 31, !mcsema_real_eip !5
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !5
  %40 = zext i1 %39 to i8, !mcsema_real_eip !5
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !5
  %42 = zext i1 %41 to i8, !mcsema_real_eip !5
  store volatile i8 %42, i8* %SF_write, !mcsema_real_eip !5
  %43 = icmp eq i32 %32, 0, !mcsema_real_eip !5
  %44 = zext i1 %43 to i8, !mcsema_real_eip !5
  store volatile i8 %44, i8* %ZF_write, !mcsema_real_eip !5
  %45 = xor i32 %30, %31, !mcsema_real_eip !5
  %46 = xor i32 %45, -1, !mcsema_real_eip !5
  %47 = xor i32 %30, %32, !mcsema_real_eip !5
  %48 = and i32 %46, %47, !mcsema_real_eip !5
  %49 = lshr i32 %48, 31, !mcsema_real_eip !5
  %50 = and i32 %49, 1, !mcsema_real_eip !5
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !5
  %52 = zext i1 %51 to i8, !mcsema_real_eip !5
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !5
  %54 = zext i1 %53 to i8, !mcsema_real_eip !5
  store volatile i8 %54, i8* %OF_write, !mcsema_real_eip !5
  %55 = trunc i32 %32 to i8, !mcsema_real_eip !5
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !5
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !5
  %58 = zext i1 %57 to i8, !mcsema_real_eip !5
  %59 = xor i8 %58, 1, !mcsema_real_eip !5
  %60 = trunc i8 %59 to i1, !mcsema_real_eip !5
  %61 = zext i1 %60 to i8, !mcsema_real_eip !5
  store volatile i8 %61, i8* %PF_write, !mcsema_real_eip !5
  %62 = icmp ult i32 %32, %30, !mcsema_real_eip !5
  %63 = zext i1 %62 to i8, !mcsema_real_eip !5
  store volatile i8 %63, i8* %CF_write, !mcsema_real_eip !5
  %64 = zext i32 %32 to i64, !mcsema_real_eip !5
  store volatile i64 %64, i64* %ESI_write, !mcsema_real_eip !5
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !6
  %65 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %66 = add i64 %65, -12, !mcsema_real_eip !6
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !6
  %68 = load i32, i32* %ESI_read, !mcsema_real_eip !6
  %69 = ptrtoint i64* %67 to i64, !mcsema_real_eip !6
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !6
  store i32 %68, i32* %70, !mcsema_real_eip !6
  br label %block_13, !mcsema_real_eip !7

block_13:                                         ; preds = %block_50, %block_0
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !7
  %71 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %72 = add i64 %71, -4, !mcsema_real_eip !7
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !7
  %74 = ptrtoint i64* %73 to i64, !mcsema_real_eip !7
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !7
  %76 = load i32, i32* %75, !mcsema_real_eip !7
  %77 = sub i32 %76, 0, !mcsema_real_eip !7
  %78 = xor i32 %77, %76, !mcsema_real_eip !7
  %79 = xor i32 %78, 0, !mcsema_real_eip !7
  %80 = and i32 %79, 16, !mcsema_real_eip !7
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !7
  %82 = zext i1 %81 to i8, !mcsema_real_eip !7
  store volatile i8 %82, i8* %AF_write, !mcsema_real_eip !7
  %83 = trunc i32 %77 to i8, !mcsema_real_eip !7
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !7
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !7
  %86 = zext i1 %85 to i8, !mcsema_real_eip !7
  %87 = xor i8 %86, 1, !mcsema_real_eip !7
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !7
  %89 = zext i1 %88 to i8, !mcsema_real_eip !7
  store volatile i8 %89, i8* %PF_write, !mcsema_real_eip !7
  %90 = icmp eq i32 %77, 0, !mcsema_real_eip !7
  %91 = zext i1 %90 to i8, !mcsema_real_eip !7
  store volatile i8 %91, i8* %ZF_write, !mcsema_real_eip !7
  %92 = lshr i32 %77, 31, !mcsema_real_eip !7
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !7
  %94 = zext i1 %93 to i8, !mcsema_real_eip !7
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !7
  %96 = zext i1 %95 to i8, !mcsema_real_eip !7
  store volatile i8 %96, i8* %SF_write, !mcsema_real_eip !7
  %97 = icmp ult i32 %76, 0, !mcsema_real_eip !7
  %98 = zext i1 %97 to i8, !mcsema_real_eip !7
  store volatile i8 %98, i8* %CF_write, !mcsema_real_eip !7
  %99 = xor i32 %76, 0, !mcsema_real_eip !7
  %100 = xor i32 %76, %77, !mcsema_real_eip !7
  %101 = and i32 %99, %100, !mcsema_real_eip !7
  %102 = lshr i32 %101, 31, !mcsema_real_eip !7
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !7
  %104 = zext i1 %103 to i8, !mcsema_real_eip !7
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !7
  %106 = zext i1 %105 to i8, !mcsema_real_eip !7
  store volatile i8 %106, i8* %OF_write, !mcsema_real_eip !7
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !8
  %107 = load i8, i8* %SF_read, !mcsema_real_eip !8
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !8
  %109 = load i8, i8* %OF_read, !mcsema_real_eip !8
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !8
  %111 = icmp eq i1 %108, %110, !mcsema_real_eip !8
  %112 = icmp eq i1 %111, false, !mcsema_real_eip !8
  br i1 %112, label %block_5e, label %block_1d, !mcsema_real_eip !8

block_1d:                                         ; preds = %block_13
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !9
  %113 = zext i32 2 to i64, !mcsema_real_eip !9
  store volatile i64 %113, i64* %EAX_write, !mcsema_real_eip !9
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !10
  %114 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %115 = add i64 %114, -4, !mcsema_real_eip !10
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !10
  %117 = ptrtoint i64* %116 to i64, !mcsema_real_eip !10
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !10
  %119 = load i32, i32* %118, !mcsema_real_eip !10
  %120 = zext i32 %119 to i64, !mcsema_real_eip !10
  store volatile i64 %120, i64* %ECX_write, !mcsema_real_eip !10
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !11
  %121 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %122 = add i64 %121, -20, !mcsema_real_eip !11
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !11
  %124 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %125 = ptrtoint i64* %123 to i64, !mcsema_real_eip !11
  %126 = inttoptr i64 %125 to i32*, !mcsema_real_eip !11
  store i32 %124, i32* %126, !mcsema_real_eip !11
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !12
  %127 = load i32, i32* %ECX_read, !mcsema_real_eip !12
  %128 = zext i32 %127 to i64, !mcsema_real_eip !12
  store volatile i64 %128, i64* %EAX_write, !mcsema_real_eip !12
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !13
  %129 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %130 = and i32 %129, -2147483648, !mcsema_real_eip !13
  %131 = icmp eq i32 %130, 0, !mcsema_real_eip !13
  %132 = select i1 %131, i32 0, i32 -1, !mcsema_real_eip !13
  %133 = zext i32 %132 to i64, !mcsema_real_eip !13
  store volatile i64 %133, i64* %EDX_write, !mcsema_real_eip !13
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !14
  %134 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %135 = add i64 %134, -20, !mcsema_real_eip !14
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !14
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !14
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !14
  %139 = load i32, i32* %138, !mcsema_real_eip !14
  %140 = zext i32 %139 to i64, !mcsema_real_eip !14
  store volatile i64 %140, i64* %ECX_write, !mcsema_real_eip !14
  store volatile i64 46, i64* %EIP_write, !mcsema_real_eip !15
  %141 = load i32, i32* %ECX_read, !mcsema_real_eip !15
  %142 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %143 = load i32, i32* %EDX_read, !mcsema_real_eip !15
  %144 = zext i32 %143 to i64, !mcsema_real_eip !15
  %145 = shl i64 %144, 32, !mcsema_real_eip !15
  %146 = sext i32 %142 to i64, !mcsema_real_eip !15
  %147 = or i64 %145, %146, !mcsema_real_eip !15
  %148 = sext i32 %141 to i64, !mcsema_real_eip !15
  %149 = sdiv i64 %147, %148, !mcsema_real_eip !15
  %150 = srem i64 %147, %148, !mcsema_real_eip !15
  %151 = trunc i64 %150 to i32, !mcsema_real_eip !15
  %152 = trunc i64 %149 to i32, !mcsema_real_eip !15
  %153 = zext i32 %151 to i64, !mcsema_real_eip !15
  store volatile i64 %153, i64* %EDX_write, !mcsema_real_eip !15
  %154 = zext i32 %152 to i64, !mcsema_real_eip !15
  store volatile i64 %154, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !16
  %155 = load i32, i32* %EDX_read, !mcsema_real_eip !16
  %156 = sub i32 %155, 0, !mcsema_real_eip !16
  %157 = xor i32 %156, %155, !mcsema_real_eip !16
  %158 = xor i32 %157, 0, !mcsema_real_eip !16
  %159 = and i32 %158, 16, !mcsema_real_eip !16
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !16
  %161 = zext i1 %160 to i8, !mcsema_real_eip !16
  store volatile i8 %161, i8* %AF_write, !mcsema_real_eip !16
  %162 = trunc i32 %156 to i8, !mcsema_real_eip !16
  %163 = call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !16
  %164 = trunc i8 %163 to i1, !mcsema_real_eip !16
  %165 = zext i1 %164 to i8, !mcsema_real_eip !16
  %166 = xor i8 %165, 1, !mcsema_real_eip !16
  %167 = trunc i8 %166 to i1, !mcsema_real_eip !16
  %168 = zext i1 %167 to i8, !mcsema_real_eip !16
  store volatile i8 %168, i8* %PF_write, !mcsema_real_eip !16
  %169 = icmp eq i32 %156, 0, !mcsema_real_eip !16
  %170 = zext i1 %169 to i8, !mcsema_real_eip !16
  store volatile i8 %170, i8* %ZF_write, !mcsema_real_eip !16
  %171 = lshr i32 %156, 31, !mcsema_real_eip !16
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !16
  %173 = zext i1 %172 to i8, !mcsema_real_eip !16
  %174 = trunc i8 %173 to i1, !mcsema_real_eip !16
  %175 = zext i1 %174 to i8, !mcsema_real_eip !16
  store volatile i8 %175, i8* %SF_write, !mcsema_real_eip !16
  %176 = icmp ult i32 %155, 0, !mcsema_real_eip !16
  %177 = zext i1 %176 to i8, !mcsema_real_eip !16
  store volatile i8 %177, i8* %CF_write, !mcsema_real_eip !16
  %178 = xor i32 %155, 0, !mcsema_real_eip !16
  %179 = xor i32 %155, %156, !mcsema_real_eip !16
  %180 = and i32 %178, %179, !mcsema_real_eip !16
  %181 = lshr i32 %180, 31, !mcsema_real_eip !16
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !16
  %183 = zext i1 %182 to i8, !mcsema_real_eip !16
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !16
  %185 = zext i1 %184 to i8, !mcsema_real_eip !16
  store volatile i8 %185, i8* %OF_write, !mcsema_real_eip !16
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !17
  %186 = load i8, i8* %ZF_read, !mcsema_real_eip !17
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !17
  %188 = icmp eq i1 %187, false, !mcsema_real_eip !17
  br i1 %188, label %block_47, label %block_39, !mcsema_real_eip !17

block_39:                                         ; preds = %block_1d
  store volatile i64 57, i64* %EIP_write, !mcsema_real_eip !18
  %189 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %190 = add i64 %189, -12, !mcsema_real_eip !18
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !18
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !18
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !18
  %194 = load i32, i32* %193, !mcsema_real_eip !18
  %195 = zext i32 %194 to i64, !mcsema_real_eip !18
  store volatile i64 %195, i64* %EAX_write, !mcsema_real_eip !18
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !19
  %196 = load i32, i32* %EAX_read, !mcsema_real_eip !19
  %197 = add i32 10, %196, !mcsema_real_eip !19
  %198 = xor i32 %197, %196, !mcsema_real_eip !19
  %199 = xor i32 %198, 10, !mcsema_real_eip !19
  %200 = and i32 %199, 16, !mcsema_real_eip !19
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !19
  %202 = zext i1 %201 to i8, !mcsema_real_eip !19
  store volatile i8 %202, i8* %AF_write, !mcsema_real_eip !19
  %203 = lshr i32 %197, 31, !mcsema_real_eip !19
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !19
  %205 = zext i1 %204 to i8, !mcsema_real_eip !19
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !19
  %207 = zext i1 %206 to i8, !mcsema_real_eip !19
  store volatile i8 %207, i8* %SF_write, !mcsema_real_eip !19
  %208 = icmp eq i32 %197, 0, !mcsema_real_eip !19
  %209 = zext i1 %208 to i8, !mcsema_real_eip !19
  store volatile i8 %209, i8* %ZF_write, !mcsema_real_eip !19
  %210 = xor i32 %196, 10, !mcsema_real_eip !19
  %211 = xor i32 %210, -1, !mcsema_real_eip !19
  %212 = xor i32 %196, %197, !mcsema_real_eip !19
  %213 = and i32 %211, %212, !mcsema_real_eip !19
  %214 = lshr i32 %213, 31, !mcsema_real_eip !19
  %215 = and i32 %214, 1, !mcsema_real_eip !19
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !19
  %217 = zext i1 %216 to i8, !mcsema_real_eip !19
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !19
  %219 = zext i1 %218 to i8, !mcsema_real_eip !19
  store volatile i8 %219, i8* %OF_write, !mcsema_real_eip !19
  %220 = trunc i32 %197 to i8, !mcsema_real_eip !19
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !19
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !19
  %223 = zext i1 %222 to i8, !mcsema_real_eip !19
  %224 = xor i8 %223, 1, !mcsema_real_eip !19
  %225 = trunc i8 %224 to i1, !mcsema_real_eip !19
  %226 = zext i1 %225 to i8, !mcsema_real_eip !19
  store volatile i8 %226, i8* %PF_write, !mcsema_real_eip !19
  %227 = icmp ult i32 %197, %196, !mcsema_real_eip !19
  %228 = zext i1 %227 to i8, !mcsema_real_eip !19
  store volatile i8 %228, i8* %CF_write, !mcsema_real_eip !19
  %229 = zext i32 %197 to i64, !mcsema_real_eip !19
  store volatile i64 %229, i64* %EAX_write, !mcsema_real_eip !19
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !20
  %230 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %231 = add i64 %230, -16, !mcsema_real_eip !20
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !20
  %233 = load i32, i32* %EAX_read, !mcsema_real_eip !20
  %234 = ptrtoint i64* %232 to i64, !mcsema_real_eip !20
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !20
  store i32 %233, i32* %235, !mcsema_real_eip !20
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !21
  br label %block_50, !mcsema_real_eip !21

block_47:                                         ; preds = %block_1d
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !22
  %236 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %237 = add i64 %236, -12, !mcsema_real_eip !22
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !22
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !22
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !22
  %241 = load i32, i32* %240, !mcsema_real_eip !22
  %242 = zext i32 %241 to i64, !mcsema_real_eip !22
  store volatile i64 %242, i64* %EAX_write, !mcsema_real_eip !22
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !23
  %243 = load i32, i32* %EAX_read, !mcsema_real_eip !23
  %244 = sub i32 %243, 10, !mcsema_real_eip !23
  %245 = xor i32 %244, %243, !mcsema_real_eip !23
  %246 = xor i32 %245, 10, !mcsema_real_eip !23
  %247 = and i32 %246, 16, !mcsema_real_eip !23
  %248 = icmp ne i32 %247, 0, !mcsema_real_eip !23
  %249 = zext i1 %248 to i8, !mcsema_real_eip !23
  store volatile i8 %249, i8* %AF_write, !mcsema_real_eip !23
  %250 = trunc i32 %244 to i8, !mcsema_real_eip !23
  %251 = call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !23
  %252 = trunc i8 %251 to i1, !mcsema_real_eip !23
  %253 = zext i1 %252 to i8, !mcsema_real_eip !23
  %254 = xor i8 %253, 1, !mcsema_real_eip !23
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !23
  %256 = zext i1 %255 to i8, !mcsema_real_eip !23
  store volatile i8 %256, i8* %PF_write, !mcsema_real_eip !23
  %257 = icmp eq i32 %244, 0, !mcsema_real_eip !23
  %258 = zext i1 %257 to i8, !mcsema_real_eip !23
  store volatile i8 %258, i8* %ZF_write, !mcsema_real_eip !23
  %259 = lshr i32 %244, 31, !mcsema_real_eip !23
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !23
  %261 = zext i1 %260 to i8, !mcsema_real_eip !23
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !23
  %263 = zext i1 %262 to i8, !mcsema_real_eip !23
  store volatile i8 %263, i8* %SF_write, !mcsema_real_eip !23
  %264 = icmp ult i32 %243, 10, !mcsema_real_eip !23
  %265 = zext i1 %264 to i8, !mcsema_real_eip !23
  store volatile i8 %265, i8* %CF_write, !mcsema_real_eip !23
  %266 = xor i32 %243, 10, !mcsema_real_eip !23
  %267 = xor i32 %243, %244, !mcsema_real_eip !23
  %268 = and i32 %266, %267, !mcsema_real_eip !23
  %269 = lshr i32 %268, 31, !mcsema_real_eip !23
  %270 = trunc i32 %269 to i1, !mcsema_real_eip !23
  %271 = zext i1 %270 to i8, !mcsema_real_eip !23
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !23
  %273 = zext i1 %272 to i8, !mcsema_real_eip !23
  store volatile i8 %273, i8* %OF_write, !mcsema_real_eip !23
  %274 = zext i32 %244 to i64, !mcsema_real_eip !23
  store volatile i64 %274, i64* %EAX_write, !mcsema_real_eip !23
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !24
  %275 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %276 = add i64 %275, -12, !mcsema_real_eip !24
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !24
  %278 = load i32, i32* %EAX_read, !mcsema_real_eip !24
  %279 = ptrtoint i64* %277 to i64, !mcsema_real_eip !24
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !24
  store i32 %278, i32* %280, !mcsema_real_eip !24
  br label %block_50, !mcsema_real_eip !25

block_50:                                         ; preds = %block_47, %block_39
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !25
  %281 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %282 = add i64 %281, -4, !mcsema_real_eip !25
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !25
  %284 = ptrtoint i64* %283 to i64, !mcsema_real_eip !25
  %285 = inttoptr i64 %284 to i32*, !mcsema_real_eip !25
  %286 = load i32, i32* %285, !mcsema_real_eip !25
  %287 = zext i32 %286 to i64, !mcsema_real_eip !25
  store volatile i64 %287, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 83, i64* %EIP_write, !mcsema_real_eip !26
  %288 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %289 = add i32 -1, %288, !mcsema_real_eip !26
  %290 = xor i32 %289, %288, !mcsema_real_eip !26
  %291 = xor i32 %290, -1, !mcsema_real_eip !26
  %292 = and i32 %291, 16, !mcsema_real_eip !26
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !26
  %294 = zext i1 %293 to i8, !mcsema_real_eip !26
  store volatile i8 %294, i8* %AF_write, !mcsema_real_eip !26
  %295 = lshr i32 %289, 31, !mcsema_real_eip !26
  %296 = trunc i32 %295 to i1, !mcsema_real_eip !26
  %297 = zext i1 %296 to i8, !mcsema_real_eip !26
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !26
  %299 = zext i1 %298 to i8, !mcsema_real_eip !26
  store volatile i8 %299, i8* %SF_write, !mcsema_real_eip !26
  %300 = icmp eq i32 %289, 0, !mcsema_real_eip !26
  %301 = zext i1 %300 to i8, !mcsema_real_eip !26
  store volatile i8 %301, i8* %ZF_write, !mcsema_real_eip !26
  %302 = xor i32 %288, -1, !mcsema_real_eip !26
  %303 = xor i32 %302, -1, !mcsema_real_eip !26
  %304 = xor i32 %288, %289, !mcsema_real_eip !26
  %305 = and i32 %303, %304, !mcsema_real_eip !26
  %306 = lshr i32 %305, 31, !mcsema_real_eip !26
  %307 = and i32 %306, 1, !mcsema_real_eip !26
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !26
  %309 = zext i1 %308 to i8, !mcsema_real_eip !26
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !26
  %311 = zext i1 %310 to i8, !mcsema_real_eip !26
  store volatile i8 %311, i8* %OF_write, !mcsema_real_eip !26
  %312 = trunc i32 %289 to i8, !mcsema_real_eip !26
  %313 = call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !26
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !26
  %315 = zext i1 %314 to i8, !mcsema_real_eip !26
  %316 = xor i8 %315, 1, !mcsema_real_eip !26
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !26
  %318 = zext i1 %317 to i8, !mcsema_real_eip !26
  store volatile i8 %318, i8* %PF_write, !mcsema_real_eip !26
  %319 = icmp ult i32 %289, %288, !mcsema_real_eip !26
  %320 = zext i1 %319 to i8, !mcsema_real_eip !26
  store volatile i8 %320, i8* %CF_write, !mcsema_real_eip !26
  %321 = zext i32 %289 to i64, !mcsema_real_eip !26
  store volatile i64 %321, i64* %EAX_write, !mcsema_real_eip !26
  store volatile i64 86, i64* %EIP_write, !mcsema_real_eip !27
  %322 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %323 = add i64 %322, -4, !mcsema_real_eip !27
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !27
  %325 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %326 = ptrtoint i64* %324 to i64, !mcsema_real_eip !27
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !27
  store i32 %325, i32* %327, !mcsema_real_eip !27
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !28
  br label %block_13, !mcsema_real_eip !28

block_5e:                                         ; preds = %block_13
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !29
  %328 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %329 = add i64 %328, -16, !mcsema_real_eip !29
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !29
  %331 = ptrtoint i64* %330 to i64, !mcsema_real_eip !29
  %332 = inttoptr i64 %331 to i32*, !mcsema_real_eip !29
  %333 = load i32, i32* %332, !mcsema_real_eip !29
  %334 = zext i32 %333 to i64, !mcsema_real_eip !29
  store volatile i64 %334, i64* %EAX_write, !mcsema_real_eip !29
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !30
  %335 = load i64, i64* %RSP_read, !mcsema_real_eip !30
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !30
  %337 = load i64, i64* %336, !mcsema_real_eip !30
  store volatile i64 %337, i64* %RBP_write, !mcsema_real_eip !30
  %338 = add i64 %335, 8, !mcsema_real_eip !30
  store volatile i64 %338, i64* %RSP_write, !mcsema_real_eip !30
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !31
  %339 = load i64, i64* %RSP_read, !mcsema_real_eip !31
  %340 = add i64 %339, 8, !mcsema_real_eip !31
  %341 = inttoptr i64 %339 to i64*, !mcsema_real_eip !31
  %342 = load i64, i64* %341, !mcsema_real_eip !31
  store volatile i64 %342, i64* %RIP_write, !mcsema_real_eip !31
  store volatile i64 %340, i64* %RSP_write, !mcsema_real_eip !31
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
  %7 = sext i8 16 to i64, !mcsema_real_eip !34
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
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %41 = add i64 %40, -4, !mcsema_real_eip !37
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !37
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !37
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !37
  store i32 0, i32* %44, !mcsema_real_eip !37
  store volatile i64 137, i64* %EIP_write, !mcsema_real_eip !38
  %45 = load i64, i64* %RSP_read, !mcsema_real_eip !38
  %46 = sub i64 %45, 8, !mcsema_real_eip !38
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !38
  store i64 142, i64* %47, !mcsema_real_eip !38
  store volatile i64 %46, i64* %RSP_write, !mcsema_real_eip !38
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !38
  store volatile i64 142, i64* %EIP_write, !mcsema_real_eip !39
  %48 = ptrtoint %0* @data_b3 to i64, !mcsema_real_eip !39
  %49 = add i64 %48, 0, !mcsema_real_eip !39
  store volatile i64 %49, i64* %RDI_write, !mcsema_real_eip !39
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !40
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %51 = add i64 %50, -8, !mcsema_real_eip !40
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !40
  %53 = load i32, i32* %EAX_read, !mcsema_real_eip !40
  %54 = ptrtoint i64* %52 to i64, !mcsema_real_eip !40
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !40
  store i32 %53, i32* %55, !mcsema_real_eip !40
  store volatile i64 155, i64* %EIP_write, !mcsema_real_eip !41
  %56 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %57 = add i64 %56, -8, !mcsema_real_eip !41
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !41
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !41
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !41
  %61 = load i32, i32* %60, !mcsema_real_eip !41
  %62 = zext i32 %61 to i64, !mcsema_real_eip !41
  store volatile i64 %62, i64* %ESI_write, !mcsema_real_eip !41
  store volatile i64 158, i64* %EIP_write, !mcsema_real_eip !42
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !42
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !43
  %63 = load i64, i64* %RDI_read, !mcsema_real_eip !43
  %64 = load i64, i64* %RSI_read, !mcsema_real_eip !43
  %65 = load i64, i64* %RDX_read, !mcsema_real_eip !43
  %66 = load i64, i64* %RCX_read, !mcsema_real_eip !43
  %67 = load i64, i64* %R8_read, !mcsema_real_eip !43
  %68 = load i64, i64* %R9_read, !mcsema_real_eip !43
  %69 = load i64, i64* %RSP_read, !mcsema_real_eip !43
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !43
  %71 = load i64, i64* %70, !mcsema_real_eip !43
  %72 = add i64 %69, 8, !mcsema_real_eip !43
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !43
  %74 = load i64, i64* %73, !mcsema_real_eip !43
  %75 = add i64 %72, 8, !mcsema_real_eip !43
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !43
  %77 = load i64, i64* %76, !mcsema_real_eip !43
  %78 = add i64 %75, 8, !mcsema_real_eip !43
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !43
  %80 = load i64, i64* %79, !mcsema_real_eip !43
  %81 = add i64 %78, 8, !mcsema_real_eip !43
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !43
  %83 = load i64, i64* %82, !mcsema_real_eip !43
  %84 = add i64 %81, 8, !mcsema_real_eip !43
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !43
  %86 = load i64, i64* %85, !mcsema_real_eip !43
  %87 = add i64 %84, 8, !mcsema_real_eip !43
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !43
  %89 = load i64, i64* %88, !mcsema_real_eip !43
  %90 = add i64 %87, 8, !mcsema_real_eip !43
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !43
  %92 = load i64, i64* %91, !mcsema_real_eip !43
  %93 = add i64 %90, 8, !mcsema_real_eip !43
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !43
  %95 = load i64, i64* %94, !mcsema_real_eip !43
  %96 = add i64 %93, 8, !mcsema_real_eip !43
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !43
  %98 = load i64, i64* %97, !mcsema_real_eip !43
  %99 = load i64, i64* %RSP_read, !mcsema_real_eip !43
  %100 = sub i64 %99, 8, !mcsema_real_eip !43
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !43
  store i64 -2415393069852865332, i64* %101, !mcsema_real_eip !43
  store volatile i64 %100, i64* %RSP_write, !mcsema_real_eip !43
  %102 = call x86_64_sysvcc i64 @_printf(i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %71, i64 %74, i64 %77, i64 %80, i64 %83, i64 %86, i64 %89, i64 %92, i64 %95, i64 %98), !mcsema_real_eip !43
  store volatile i64 %102, i64* %RAX_write, !mcsema_real_eip !43
  store volatile i64 165, i64* %EIP_write, !mcsema_real_eip !44
  %103 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %104 = add i64 %103, -8, !mcsema_real_eip !44
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !44
  %106 = ptrtoint i64* %105 to i64, !mcsema_real_eip !44
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !44
  %108 = load i32, i32* %107, !mcsema_real_eip !44
  %109 = zext i32 %108 to i64, !mcsema_real_eip !44
  store volatile i64 %109, i64* %ESI_write, !mcsema_real_eip !44
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !45
  %110 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %111 = add i64 %110, -12, !mcsema_real_eip !45
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !45
  %113 = load i32, i32* %EAX_read, !mcsema_real_eip !45
  %114 = ptrtoint i64* %112 to i64, !mcsema_real_eip !45
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !45
  store i32 %113, i32* %115, !mcsema_real_eip !45
  store volatile i64 171, i64* %EIP_write, !mcsema_real_eip !46
  %116 = load i32, i32* %ESI_read, !mcsema_real_eip !46
  %117 = zext i32 %116 to i64, !mcsema_real_eip !46
  store volatile i64 %117, i64* %EAX_write, !mcsema_real_eip !46
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !47
  %118 = load i64, i64* %RSP_read, !mcsema_real_eip !47
  %119 = add i64 16, %118, !mcsema_real_eip !47
  %120 = xor i64 %119, %118, !mcsema_real_eip !47
  %121 = xor i64 %120, 16, !mcsema_real_eip !47
  %122 = and i64 %121, 16, !mcsema_real_eip !47
  %123 = icmp ne i64 %122, 0, !mcsema_real_eip !47
  %124 = zext i1 %123 to i8, !mcsema_real_eip !47
  store volatile i8 %124, i8* %AF_write, !mcsema_real_eip !47
  %125 = lshr i64 %119, 63, !mcsema_real_eip !47
  %126 = trunc i64 %125 to i1, !mcsema_real_eip !47
  %127 = zext i1 %126 to i8, !mcsema_real_eip !47
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !47
  %129 = zext i1 %128 to i8, !mcsema_real_eip !47
  store volatile i8 %129, i8* %SF_write, !mcsema_real_eip !47
  %130 = icmp eq i64 %119, 0, !mcsema_real_eip !47
  %131 = zext i1 %130 to i8, !mcsema_real_eip !47
  store volatile i8 %131, i8* %ZF_write, !mcsema_real_eip !47
  %132 = xor i64 %118, 16, !mcsema_real_eip !47
  %133 = xor i64 %132, -1, !mcsema_real_eip !47
  %134 = xor i64 %118, %119, !mcsema_real_eip !47
  %135 = and i64 %133, %134, !mcsema_real_eip !47
  %136 = lshr i64 %135, 63, !mcsema_real_eip !47
  %137 = and i64 %136, 1, !mcsema_real_eip !47
  %138 = trunc i64 %137 to i1, !mcsema_real_eip !47
  %139 = zext i1 %138 to i8, !mcsema_real_eip !47
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !47
  %141 = zext i1 %140 to i8, !mcsema_real_eip !47
  store volatile i8 %141, i8* %OF_write, !mcsema_real_eip !47
  %142 = trunc i64 %119 to i8, !mcsema_real_eip !47
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !47
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !47
  %145 = zext i1 %144 to i8, !mcsema_real_eip !47
  %146 = xor i8 %145, 1, !mcsema_real_eip !47
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !47
  %148 = zext i1 %147 to i8, !mcsema_real_eip !47
  store volatile i8 %148, i8* %PF_write, !mcsema_real_eip !47
  %149 = icmp ult i64 %119, %118, !mcsema_real_eip !47
  %150 = zext i1 %149 to i8, !mcsema_real_eip !47
  store volatile i8 %150, i8* %CF_write, !mcsema_real_eip !47
  store volatile i64 %119, i64* %RSP_write, !mcsema_real_eip !47
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !48
  %151 = load i64, i64* %RSP_read, !mcsema_real_eip !48
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !48
  %153 = load i64, i64* %152, !mcsema_real_eip !48
  store volatile i64 %153, i64* %RBP_write, !mcsema_real_eip !48
  %154 = add i64 %151, 8, !mcsema_real_eip !48
  store volatile i64 %154, i64* %RSP_write, !mcsema_real_eip !48
  store volatile i64 178, i64* %EIP_write, !mcsema_real_eip !49
  %155 = load i64, i64* %RSP_read, !mcsema_real_eip !49
  %156 = add i64 %155, 8, !mcsema_real_eip !49
  %157 = inttoptr i64 %155 to i64*, !mcsema_real_eip !49
  %158 = load i64, i64* %157, !mcsema_real_eip !49
  store volatile i64 %158, i64* %RIP_write, !mcsema_real_eip !49
  store volatile i64 %156, i64* %RSP_write, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
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
!4 = !{i64 10}
!5 = !{i64 13}
!6 = !{i64 16}
!7 = !{i64 19}
!8 = !{i64 23}
!9 = !{i64 29}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 40}
!13 = !{i64 42}
!14 = !{i64 43}
!15 = !{i64 46}
!16 = !{i64 48}
!17 = !{i64 51}
!18 = !{i64 57}
!19 = !{i64 60}
!20 = !{i64 63}
!21 = !{i64 66}
!22 = !{i64 71}
!23 = !{i64 74}
!24 = !{i64 77}
!25 = !{i64 80}
!26 = !{i64 83}
!27 = !{i64 86}
!28 = !{i64 89}
!29 = !{i64 94}
!30 = !{i64 97}
!31 = !{i64 98}
!32 = !{i64 112}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 120}
!36 = !{i64 125}
!37 = !{i64 130}
!38 = !{i64 137}
!39 = !{i64 142}
!40 = !{i64 152}
!41 = !{i64 155}
!42 = !{i64 158}
!43 = !{i64 160}
!44 = !{i64 165}
!45 = !{i64 168}
!46 = !{i64 171}
!47 = !{i64 173}
!48 = !{i64 177}
!49 = !{i64 178}
