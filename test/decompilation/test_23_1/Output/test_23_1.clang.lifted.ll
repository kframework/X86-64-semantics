; ModuleID = 'Output/test_23_1.clang.lifted.bc'
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

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_111 = internal constant %0 <{ [13 x i8] c"ssssdddd\00%d\0A\00" }>, align 64
@data_120 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\11\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %46 = ptrtoint i64* %45 to i64, !mcsema_real_eip !4
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %47, !mcsema_real_eip !4
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !5
  %48 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %49 = add i64 %48, -12, !mcsema_real_eip !5
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !5
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !5
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %52, !mcsema_real_eip !5
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !6
  %53 = ptrtoint %0* @data_111 to i64, !mcsema_real_eip !6
  %54 = add i64 %53, 0, !mcsema_real_eip !6
  %55 = add i64 0, %54, !mcsema_real_eip !6
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !6
  %57 = load i64, i64* %56, !mcsema_real_eip !6
  store volatile i64 %57, i64* %RAX_write, !mcsema_real_eip !6
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !7
  %58 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %59 = add i64 %58, -21, !mcsema_real_eip !7
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !7
  %61 = load i64, i64* %RAX_read, !mcsema_real_eip !7
  store i64 %61, i64* %60, !mcsema_real_eip !7
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !8
  %62 = ptrtoint %0* @data_111 to i64, !mcsema_real_eip !8
  %63 = add i64 %62, 8, !mcsema_real_eip !8
  %64 = add i64 0, %63, !mcsema_real_eip !8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !8
  %66 = ptrtoint i64* %65 to i64, !mcsema_real_eip !8
  %67 = inttoptr i64 %66 to i8*, !mcsema_real_eip !8
  %68 = load i8, i8* %67, !mcsema_real_eip !8
  store volatile i8 %68, i8* %CL_write, !mcsema_real_eip !8
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !9
  %69 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %70 = add i64 %69, -13, !mcsema_real_eip !9
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !9
  %72 = load i8, i8* %CL_read, !mcsema_real_eip !9
  %73 = ptrtoint i64* %71 to i64, !mcsema_real_eip !9
  %74 = inttoptr i64 %73 to i8*, !mcsema_real_eip !9
  store i8 %72, i8* %74, !mcsema_real_eip !9
  br label %block_33, !mcsema_real_eip !10

block_33:                                         ; preds = %block_dc, %block_0
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !10
  %75 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %76 = add i64 %75, -8, !mcsema_real_eip !10
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !10
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !10
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !10
  %80 = load i32, i32* %79, !mcsema_real_eip !10
  %81 = sub i32 %80, 8, !mcsema_real_eip !10
  %82 = xor i32 %81, %80, !mcsema_real_eip !10
  %83 = xor i32 %82, 8, !mcsema_real_eip !10
  %84 = and i32 %83, 16, !mcsema_real_eip !10
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !10
  %86 = zext i1 %85 to i8, !mcsema_real_eip !10
  store volatile i8 %86, i8* %AF_write, !mcsema_real_eip !10
  %87 = trunc i32 %81 to i8, !mcsema_real_eip !10
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !10
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !10
  %90 = zext i1 %89 to i8, !mcsema_real_eip !10
  %91 = xor i8 %90, 1, !mcsema_real_eip !10
  %92 = trunc i8 %91 to i1, !mcsema_real_eip !10
  %93 = zext i1 %92 to i8, !mcsema_real_eip !10
  store volatile i8 %93, i8* %PF_write, !mcsema_real_eip !10
  %94 = icmp eq i32 %81, 0, !mcsema_real_eip !10
  %95 = zext i1 %94 to i8, !mcsema_real_eip !10
  store volatile i8 %95, i8* %ZF_write, !mcsema_real_eip !10
  %96 = lshr i32 %81, 31, !mcsema_real_eip !10
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !10
  %98 = zext i1 %97 to i8, !mcsema_real_eip !10
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !10
  %100 = zext i1 %99 to i8, !mcsema_real_eip !10
  store volatile i8 %100, i8* %SF_write, !mcsema_real_eip !10
  %101 = icmp ult i32 %80, 8, !mcsema_real_eip !10
  %102 = zext i1 %101 to i8, !mcsema_real_eip !10
  store volatile i8 %102, i8* %CF_write, !mcsema_real_eip !10
  %103 = xor i32 %80, 8, !mcsema_real_eip !10
  %104 = xor i32 %80, %81, !mcsema_real_eip !10
  %105 = and i32 %103, %104, !mcsema_real_eip !10
  %106 = lshr i32 %105, 31, !mcsema_real_eip !10
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !10
  %108 = zext i1 %107 to i8, !mcsema_real_eip !10
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !10
  %110 = zext i1 %109 to i8, !mcsema_real_eip !10
  store volatile i8 %110, i8* %OF_write, !mcsema_real_eip !10
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !11
  %111 = load i8, i8* %SF_read, !mcsema_real_eip !11
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !11
  %113 = load i8, i8* %OF_read, !mcsema_real_eip !11
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !11
  %115 = icmp eq i1 %112, %114, !mcsema_real_eip !11
  br i1 %115, label %block_ea, label %block_3d, !mcsema_real_eip !11

block_3d:                                         ; preds = %block_33
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !12
  %116 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %117 = add i64 %116, -8, !mcsema_real_eip !12
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !12
  %119 = ptrtoint i64* %118 to i64, !mcsema_real_eip !12
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !12
  %121 = load i32, i32* %120, !mcsema_real_eip !12
  %122 = sext i32 %121 to i64, !mcsema_real_eip !12
  store volatile i64 %122, i64* %RAX_write, !mcsema_real_eip !12
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !13
  %123 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %124 = add i64 %123, -21, !mcsema_real_eip !13
  %125 = load i64, i64* %RAX_read, !mcsema_real_eip !13
  %126 = add i64 %124, %125, !mcsema_real_eip !13
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !13
  %128 = ptrtoint i64* %127 to i64, !mcsema_real_eip !13
  %129 = inttoptr i64 %128 to i8*, !mcsema_real_eip !13
  %130 = load i8, i8* %129, !mcsema_real_eip !13
  %131 = sext i8 %130 to i32, !mcsema_real_eip !13
  %132 = zext i32 %131 to i64, !mcsema_real_eip !13
  store volatile i64 %132, i64* %ECX_write, !mcsema_real_eip !13
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !14
  %133 = load i32, i32* %ECX_read, !mcsema_real_eip !14
  %134 = zext i32 %133 to i64, !mcsema_real_eip !14
  store volatile i64 %134, i64* %EDX_write, !mcsema_real_eip !14
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !15
  %135 = load i32, i32* %EDX_read, !mcsema_real_eip !15
  %136 = sub i32 %135, 97, !mcsema_real_eip !15
  %137 = xor i32 %136, %135, !mcsema_real_eip !15
  %138 = xor i32 %137, 97, !mcsema_real_eip !15
  %139 = and i32 %138, 16, !mcsema_real_eip !15
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !15
  %141 = zext i1 %140 to i8, !mcsema_real_eip !15
  store volatile i8 %141, i8* %AF_write, !mcsema_real_eip !15
  %142 = trunc i32 %136 to i8, !mcsema_real_eip !15
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !15
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !15
  %145 = zext i1 %144 to i8, !mcsema_real_eip !15
  %146 = xor i8 %145, 1, !mcsema_real_eip !15
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !15
  %148 = zext i1 %147 to i8, !mcsema_real_eip !15
  store volatile i8 %148, i8* %PF_write, !mcsema_real_eip !15
  %149 = icmp eq i32 %136, 0, !mcsema_real_eip !15
  %150 = zext i1 %149 to i8, !mcsema_real_eip !15
  store volatile i8 %150, i8* %ZF_write, !mcsema_real_eip !15
  %151 = lshr i32 %136, 31, !mcsema_real_eip !15
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !15
  %153 = zext i1 %152 to i8, !mcsema_real_eip !15
  %154 = trunc i8 %153 to i1, !mcsema_real_eip !15
  %155 = zext i1 %154 to i8, !mcsema_real_eip !15
  store volatile i8 %155, i8* %SF_write, !mcsema_real_eip !15
  %156 = icmp ult i32 %135, 97, !mcsema_real_eip !15
  %157 = zext i1 %156 to i8, !mcsema_real_eip !15
  store volatile i8 %157, i8* %CF_write, !mcsema_real_eip !15
  %158 = xor i32 %135, 97, !mcsema_real_eip !15
  %159 = xor i32 %135, %136, !mcsema_real_eip !15
  %160 = and i32 %158, %159, !mcsema_real_eip !15
  %161 = lshr i32 %160, 31, !mcsema_real_eip !15
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !15
  %163 = zext i1 %162 to i8, !mcsema_real_eip !15
  %164 = trunc i8 %163 to i1, !mcsema_real_eip !15
  %165 = zext i1 %164 to i8, !mcsema_real_eip !15
  store volatile i8 %165, i8* %OF_write, !mcsema_real_eip !15
  %166 = zext i32 %136 to i64, !mcsema_real_eip !15
  store volatile i64 %166, i64* %EDX_write, !mcsema_real_eip !15
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !16
  %167 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %168 = add i64 %167, -28, !mcsema_real_eip !16
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !16
  %170 = load i32, i32* %ECX_read, !mcsema_real_eip !16
  %171 = ptrtoint i64* %169 to i64, !mcsema_real_eip !16
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !16
  store i32 %170, i32* %172, !mcsema_real_eip !16
  store volatile i64 78, i64* %EIP_write, !mcsema_real_eip !17
  %173 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %174 = add i64 %173, -32, !mcsema_real_eip !17
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !17
  %176 = load i32, i32* %EDX_read, !mcsema_real_eip !17
  %177 = ptrtoint i64* %175 to i64, !mcsema_real_eip !17
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !17
  store i32 %176, i32* %178, !mcsema_real_eip !17
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !18
  %179 = load i8, i8* %ZF_read, !mcsema_real_eip !18
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !18
  %181 = icmp eq i1 %180, true, !mcsema_real_eip !18
  br i1 %181, label %block_b4, label %block_57, !mcsema_real_eip !18

block_57:                                         ; preds = %block_3d
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !19
  br label %block_5c, !mcsema_real_eip !19

block_5c:                                         ; preds = %block_57
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !20
  %182 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %183 = add i64 %182, -28, !mcsema_real_eip !20
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !20
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !20
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !20
  %187 = load i32, i32* %186, !mcsema_real_eip !20
  %188 = zext i32 %187 to i64, !mcsema_real_eip !20
  store volatile i64 %188, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !21
  %189 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %190 = sub i32 %189, 100, !mcsema_real_eip !21
  %191 = xor i32 %190, %189, !mcsema_real_eip !21
  %192 = xor i32 %191, 100, !mcsema_real_eip !21
  %193 = and i32 %192, 16, !mcsema_real_eip !21
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !21
  %195 = zext i1 %194 to i8, !mcsema_real_eip !21
  store volatile i8 %195, i8* %AF_write, !mcsema_real_eip !21
  %196 = trunc i32 %190 to i8, !mcsema_real_eip !21
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !21
  %198 = trunc i8 %197 to i1, !mcsema_real_eip !21
  %199 = zext i1 %198 to i8, !mcsema_real_eip !21
  %200 = xor i8 %199, 1, !mcsema_real_eip !21
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !21
  %202 = zext i1 %201 to i8, !mcsema_real_eip !21
  store volatile i8 %202, i8* %PF_write, !mcsema_real_eip !21
  %203 = icmp eq i32 %190, 0, !mcsema_real_eip !21
  %204 = zext i1 %203 to i8, !mcsema_real_eip !21
  store volatile i8 %204, i8* %ZF_write, !mcsema_real_eip !21
  %205 = lshr i32 %190, 31, !mcsema_real_eip !21
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !21
  %207 = zext i1 %206 to i8, !mcsema_real_eip !21
  %208 = trunc i8 %207 to i1, !mcsema_real_eip !21
  %209 = zext i1 %208 to i8, !mcsema_real_eip !21
  store volatile i8 %209, i8* %SF_write, !mcsema_real_eip !21
  %210 = icmp ult i32 %189, 100, !mcsema_real_eip !21
  %211 = zext i1 %210 to i8, !mcsema_real_eip !21
  store volatile i8 %211, i8* %CF_write, !mcsema_real_eip !21
  %212 = xor i32 %189, 100, !mcsema_real_eip !21
  %213 = xor i32 %189, %190, !mcsema_real_eip !21
  %214 = and i32 %212, %213, !mcsema_real_eip !21
  %215 = lshr i32 %214, 31, !mcsema_real_eip !21
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !21
  %217 = zext i1 %216 to i8, !mcsema_real_eip !21
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !21
  %219 = zext i1 %218 to i8, !mcsema_real_eip !21
  store volatile i8 %219, i8* %OF_write, !mcsema_real_eip !21
  %220 = zext i32 %190 to i64, !mcsema_real_eip !21
  store volatile i64 %220, i64* %EAX_write, !mcsema_real_eip !21
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !22
  %221 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %222 = add i64 %221, -36, !mcsema_real_eip !22
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !22
  %224 = load i32, i32* %EAX_read, !mcsema_real_eip !22
  %225 = ptrtoint i64* %223 to i64, !mcsema_real_eip !22
  %226 = inttoptr i64 %225 to i32*, !mcsema_real_eip !22
  store i32 %224, i32* %226, !mcsema_real_eip !22
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !23
  %227 = load i8, i8* %ZF_read, !mcsema_real_eip !23
  %228 = trunc i8 %227 to i1, !mcsema_real_eip !23
  %229 = icmp eq i1 %228, true, !mcsema_real_eip !23
  br i1 %229, label %block_c2, label %block_6b, !mcsema_real_eip !23

block_6b:                                         ; preds = %block_5c
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !24
  br label %block_70, !mcsema_real_eip !24

block_70:                                         ; preds = %block_6b
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !25
  %230 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %231 = add i64 %230, -28, !mcsema_real_eip !25
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !25
  %233 = ptrtoint i64* %232 to i64, !mcsema_real_eip !25
  %234 = inttoptr i64 %233 to i32*, !mcsema_real_eip !25
  %235 = load i32, i32* %234, !mcsema_real_eip !25
  %236 = zext i32 %235 to i64, !mcsema_real_eip !25
  store volatile i64 %236, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !26
  %237 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %238 = sub i32 %237, 115, !mcsema_real_eip !26
  %239 = xor i32 %238, %237, !mcsema_real_eip !26
  %240 = xor i32 %239, 115, !mcsema_real_eip !26
  %241 = and i32 %240, 16, !mcsema_real_eip !26
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !26
  %243 = zext i1 %242 to i8, !mcsema_real_eip !26
  store volatile i8 %243, i8* %AF_write, !mcsema_real_eip !26
  %244 = trunc i32 %238 to i8, !mcsema_real_eip !26
  %245 = call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !26
  %246 = trunc i8 %245 to i1, !mcsema_real_eip !26
  %247 = zext i1 %246 to i8, !mcsema_real_eip !26
  %248 = xor i8 %247, 1, !mcsema_real_eip !26
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !26
  %250 = zext i1 %249 to i8, !mcsema_real_eip !26
  store volatile i8 %250, i8* %PF_write, !mcsema_real_eip !26
  %251 = icmp eq i32 %238, 0, !mcsema_real_eip !26
  %252 = zext i1 %251 to i8, !mcsema_real_eip !26
  store volatile i8 %252, i8* %ZF_write, !mcsema_real_eip !26
  %253 = lshr i32 %238, 31, !mcsema_real_eip !26
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !26
  %255 = zext i1 %254 to i8, !mcsema_real_eip !26
  %256 = trunc i8 %255 to i1, !mcsema_real_eip !26
  %257 = zext i1 %256 to i8, !mcsema_real_eip !26
  store volatile i8 %257, i8* %SF_write, !mcsema_real_eip !26
  %258 = icmp ult i32 %237, 115, !mcsema_real_eip !26
  %259 = zext i1 %258 to i8, !mcsema_real_eip !26
  store volatile i8 %259, i8* %CF_write, !mcsema_real_eip !26
  %260 = xor i32 %237, 115, !mcsema_real_eip !26
  %261 = xor i32 %237, %238, !mcsema_real_eip !26
  %262 = and i32 %260, %261, !mcsema_real_eip !26
  %263 = lshr i32 %262, 31, !mcsema_real_eip !26
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !26
  %265 = zext i1 %264 to i8, !mcsema_real_eip !26
  %266 = trunc i8 %265 to i1, !mcsema_real_eip !26
  %267 = zext i1 %266 to i8, !mcsema_real_eip !26
  store volatile i8 %267, i8* %OF_write, !mcsema_real_eip !26
  %268 = zext i32 %238 to i64, !mcsema_real_eip !26
  store volatile i64 %268, i64* %EAX_write, !mcsema_real_eip !26
  store volatile i64 118, i64* %EIP_write, !mcsema_real_eip !27
  %269 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %270 = add i64 %269, -40, !mcsema_real_eip !27
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !27
  %272 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %273 = ptrtoint i64* %271 to i64, !mcsema_real_eip !27
  %274 = inttoptr i64 %273 to i32*, !mcsema_real_eip !27
  store i32 %272, i32* %274, !mcsema_real_eip !27
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !28
  %275 = load i8, i8* %ZF_read, !mcsema_real_eip !28
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !28
  %277 = icmp eq i1 %276, true, !mcsema_real_eip !28
  br i1 %277, label %block_a6, label %block_7f, !mcsema_real_eip !28

block_7f:                                         ; preds = %block_70
  store volatile i64 127, i64* %EIP_write, !mcsema_real_eip !29
  br label %block_84, !mcsema_real_eip !29

block_84:                                         ; preds = %block_7f
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !30
  %278 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %279 = add i64 %278, -28, !mcsema_real_eip !30
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !30
  %281 = ptrtoint i64* %280 to i64, !mcsema_real_eip !30
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !30
  %283 = load i32, i32* %282, !mcsema_real_eip !30
  %284 = zext i32 %283 to i64, !mcsema_real_eip !30
  store volatile i64 %284, i64* %EAX_write, !mcsema_real_eip !30
  store volatile i64 135, i64* %EIP_write, !mcsema_real_eip !31
  %285 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %286 = sub i32 %285, 119, !mcsema_real_eip !31
  %287 = xor i32 %286, %285, !mcsema_real_eip !31
  %288 = xor i32 %287, 119, !mcsema_real_eip !31
  %289 = and i32 %288, 16, !mcsema_real_eip !31
  %290 = icmp ne i32 %289, 0, !mcsema_real_eip !31
  %291 = zext i1 %290 to i8, !mcsema_real_eip !31
  store volatile i8 %291, i8* %AF_write, !mcsema_real_eip !31
  %292 = trunc i32 %286 to i8, !mcsema_real_eip !31
  %293 = call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !31
  %294 = trunc i8 %293 to i1, !mcsema_real_eip !31
  %295 = zext i1 %294 to i8, !mcsema_real_eip !31
  %296 = xor i8 %295, 1, !mcsema_real_eip !31
  %297 = trunc i8 %296 to i1, !mcsema_real_eip !31
  %298 = zext i1 %297 to i8, !mcsema_real_eip !31
  store volatile i8 %298, i8* %PF_write, !mcsema_real_eip !31
  %299 = icmp eq i32 %286, 0, !mcsema_real_eip !31
  %300 = zext i1 %299 to i8, !mcsema_real_eip !31
  store volatile i8 %300, i8* %ZF_write, !mcsema_real_eip !31
  %301 = lshr i32 %286, 31, !mcsema_real_eip !31
  %302 = trunc i32 %301 to i1, !mcsema_real_eip !31
  %303 = zext i1 %302 to i8, !mcsema_real_eip !31
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !31
  %305 = zext i1 %304 to i8, !mcsema_real_eip !31
  store volatile i8 %305, i8* %SF_write, !mcsema_real_eip !31
  %306 = icmp ult i32 %285, 119, !mcsema_real_eip !31
  %307 = zext i1 %306 to i8, !mcsema_real_eip !31
  store volatile i8 %307, i8* %CF_write, !mcsema_real_eip !31
  %308 = xor i32 %285, 119, !mcsema_real_eip !31
  %309 = xor i32 %285, %286, !mcsema_real_eip !31
  %310 = and i32 %308, %309, !mcsema_real_eip !31
  %311 = lshr i32 %310, 31, !mcsema_real_eip !31
  %312 = trunc i32 %311 to i1, !mcsema_real_eip !31
  %313 = zext i1 %312 to i8, !mcsema_real_eip !31
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !31
  %315 = zext i1 %314 to i8, !mcsema_real_eip !31
  store volatile i8 %315, i8* %OF_write, !mcsema_real_eip !31
  %316 = zext i32 %286 to i64, !mcsema_real_eip !31
  store volatile i64 %316, i64* %EAX_write, !mcsema_real_eip !31
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !32
  %317 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %318 = add i64 %317, -44, !mcsema_real_eip !32
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !32
  %320 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %321 = ptrtoint i64* %319 to i64, !mcsema_real_eip !32
  %322 = inttoptr i64 %321 to i32*, !mcsema_real_eip !32
  store i32 %320, i32* %322, !mcsema_real_eip !32
  store volatile i64 141, i64* %EIP_write, !mcsema_real_eip !33
  %323 = load i8, i8* %ZF_read, !mcsema_real_eip !33
  %324 = trunc i8 %323 to i1, !mcsema_real_eip !33
  %325 = icmp eq i1 %324, false, !mcsema_real_eip !33
  br i1 %325, label %block_d0, label %block_93, !mcsema_real_eip !33

block_93:                                         ; preds = %block_84
  store volatile i64 147, i64* %EIP_write, !mcsema_real_eip !34
  br label %block_98, !mcsema_real_eip !34

block_98:                                         ; preds = %block_93
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !35
  %326 = load i64, i64* %RBP_read, !mcsema_real_eip !35
  %327 = add i64 %326, -12, !mcsema_real_eip !35
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !35
  %329 = ptrtoint i64* %328 to i64, !mcsema_real_eip !35
  %330 = inttoptr i64 %329 to i32*, !mcsema_real_eip !35
  %331 = load i32, i32* %330, !mcsema_real_eip !35
  %332 = zext i32 %331 to i64, !mcsema_real_eip !35
  store volatile i64 %332, i64* %EAX_write, !mcsema_real_eip !35
  store volatile i64 155, i64* %EIP_write, !mcsema_real_eip !36
  %333 = load i32, i32* %EAX_read, !mcsema_real_eip !36
  %334 = add i32 1, %333, !mcsema_real_eip !36
  %335 = xor i32 %334, %333, !mcsema_real_eip !36
  %336 = xor i32 %335, 1, !mcsema_real_eip !36
  %337 = and i32 %336, 16, !mcsema_real_eip !36
  %338 = icmp ne i32 %337, 0, !mcsema_real_eip !36
  %339 = zext i1 %338 to i8, !mcsema_real_eip !36
  store volatile i8 %339, i8* %AF_write, !mcsema_real_eip !36
  %340 = lshr i32 %334, 31, !mcsema_real_eip !36
  %341 = trunc i32 %340 to i1, !mcsema_real_eip !36
  %342 = zext i1 %341 to i8, !mcsema_real_eip !36
  %343 = trunc i8 %342 to i1, !mcsema_real_eip !36
  %344 = zext i1 %343 to i8, !mcsema_real_eip !36
  store volatile i8 %344, i8* %SF_write, !mcsema_real_eip !36
  %345 = icmp eq i32 %334, 0, !mcsema_real_eip !36
  %346 = zext i1 %345 to i8, !mcsema_real_eip !36
  store volatile i8 %346, i8* %ZF_write, !mcsema_real_eip !36
  %347 = xor i32 %333, 1, !mcsema_real_eip !36
  %348 = xor i32 %347, -1, !mcsema_real_eip !36
  %349 = xor i32 %333, %334, !mcsema_real_eip !36
  %350 = and i32 %348, %349, !mcsema_real_eip !36
  %351 = lshr i32 %350, 31, !mcsema_real_eip !36
  %352 = and i32 %351, 1, !mcsema_real_eip !36
  %353 = trunc i32 %352 to i1, !mcsema_real_eip !36
  %354 = zext i1 %353 to i8, !mcsema_real_eip !36
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !36
  %356 = zext i1 %355 to i8, !mcsema_real_eip !36
  store volatile i8 %356, i8* %OF_write, !mcsema_real_eip !36
  %357 = trunc i32 %334 to i8, !mcsema_real_eip !36
  %358 = call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !36
  %359 = trunc i8 %358 to i1, !mcsema_real_eip !36
  %360 = zext i1 %359 to i8, !mcsema_real_eip !36
  %361 = xor i8 %360, 1, !mcsema_real_eip !36
  %362 = trunc i8 %361 to i1, !mcsema_real_eip !36
  %363 = zext i1 %362 to i8, !mcsema_real_eip !36
  store volatile i8 %363, i8* %PF_write, !mcsema_real_eip !36
  %364 = icmp ult i32 %334, %333, !mcsema_real_eip !36
  %365 = zext i1 %364 to i8, !mcsema_real_eip !36
  store volatile i8 %365, i8* %CF_write, !mcsema_real_eip !36
  %366 = zext i32 %334 to i64, !mcsema_real_eip !36
  store volatile i64 %366, i64* %EAX_write, !mcsema_real_eip !36
  store volatile i64 158, i64* %EIP_write, !mcsema_real_eip !37
  %367 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %368 = add i64 %367, -12, !mcsema_real_eip !37
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !37
  %370 = load i32, i32* %EAX_read, !mcsema_real_eip !37
  %371 = ptrtoint i64* %369 to i64, !mcsema_real_eip !37
  %372 = inttoptr i64 %371 to i32*, !mcsema_real_eip !37
  store i32 %370, i32* %372, !mcsema_real_eip !37
  store volatile i64 161, i64* %EIP_write, !mcsema_real_eip !38
  br label %block_dc, !mcsema_real_eip !38

block_a6:                                         ; preds = %block_70
  store volatile i64 166, i64* %EIP_write, !mcsema_real_eip !39
  %373 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %374 = add i64 %373, -12, !mcsema_real_eip !39
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !39
  %376 = ptrtoint i64* %375 to i64, !mcsema_real_eip !39
  %377 = inttoptr i64 %376 to i32*, !mcsema_real_eip !39
  %378 = load i32, i32* %377, !mcsema_real_eip !39
  %379 = zext i32 %378 to i64, !mcsema_real_eip !39
  store volatile i64 %379, i64* %EAX_write, !mcsema_real_eip !39
  store volatile i64 169, i64* %EIP_write, !mcsema_real_eip !40
  %380 = load i32, i32* %EAX_read, !mcsema_real_eip !40
  %381 = add i32 2, %380, !mcsema_real_eip !40
  %382 = xor i32 %381, %380, !mcsema_real_eip !40
  %383 = xor i32 %382, 2, !mcsema_real_eip !40
  %384 = and i32 %383, 16, !mcsema_real_eip !40
  %385 = icmp ne i32 %384, 0, !mcsema_real_eip !40
  %386 = zext i1 %385 to i8, !mcsema_real_eip !40
  store volatile i8 %386, i8* %AF_write, !mcsema_real_eip !40
  %387 = lshr i32 %381, 31, !mcsema_real_eip !40
  %388 = trunc i32 %387 to i1, !mcsema_real_eip !40
  %389 = zext i1 %388 to i8, !mcsema_real_eip !40
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !40
  %391 = zext i1 %390 to i8, !mcsema_real_eip !40
  store volatile i8 %391, i8* %SF_write, !mcsema_real_eip !40
  %392 = icmp eq i32 %381, 0, !mcsema_real_eip !40
  %393 = zext i1 %392 to i8, !mcsema_real_eip !40
  store volatile i8 %393, i8* %ZF_write, !mcsema_real_eip !40
  %394 = xor i32 %380, 2, !mcsema_real_eip !40
  %395 = xor i32 %394, -1, !mcsema_real_eip !40
  %396 = xor i32 %380, %381, !mcsema_real_eip !40
  %397 = and i32 %395, %396, !mcsema_real_eip !40
  %398 = lshr i32 %397, 31, !mcsema_real_eip !40
  %399 = and i32 %398, 1, !mcsema_real_eip !40
  %400 = trunc i32 %399 to i1, !mcsema_real_eip !40
  %401 = zext i1 %400 to i8, !mcsema_real_eip !40
  %402 = trunc i8 %401 to i1, !mcsema_real_eip !40
  %403 = zext i1 %402 to i8, !mcsema_real_eip !40
  store volatile i8 %403, i8* %OF_write, !mcsema_real_eip !40
  %404 = trunc i32 %381 to i8, !mcsema_real_eip !40
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !40
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !40
  %407 = zext i1 %406 to i8, !mcsema_real_eip !40
  %408 = xor i8 %407, 1, !mcsema_real_eip !40
  %409 = trunc i8 %408 to i1, !mcsema_real_eip !40
  %410 = zext i1 %409 to i8, !mcsema_real_eip !40
  store volatile i8 %410, i8* %PF_write, !mcsema_real_eip !40
  %411 = icmp ult i32 %381, %380, !mcsema_real_eip !40
  %412 = zext i1 %411 to i8, !mcsema_real_eip !40
  store volatile i8 %412, i8* %CF_write, !mcsema_real_eip !40
  %413 = zext i32 %381 to i64, !mcsema_real_eip !40
  store volatile i64 %413, i64* %EAX_write, !mcsema_real_eip !40
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !41
  %414 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %415 = add i64 %414, -12, !mcsema_real_eip !41
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !41
  %417 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %418 = ptrtoint i64* %416 to i64, !mcsema_real_eip !41
  %419 = inttoptr i64 %418 to i32*, !mcsema_real_eip !41
  store i32 %417, i32* %419, !mcsema_real_eip !41
  store volatile i64 175, i64* %EIP_write, !mcsema_real_eip !42
  br label %block_dc, !mcsema_real_eip !42

block_b4:                                         ; preds = %block_3d
  store volatile i64 180, i64* %EIP_write, !mcsema_real_eip !43
  %420 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %421 = add i64 %420, -12, !mcsema_real_eip !43
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !43
  %423 = ptrtoint i64* %422 to i64, !mcsema_real_eip !43
  %424 = inttoptr i64 %423 to i32*, !mcsema_real_eip !43
  %425 = load i32, i32* %424, !mcsema_real_eip !43
  %426 = zext i32 %425 to i64, !mcsema_real_eip !43
  store volatile i64 %426, i64* %EAX_write, !mcsema_real_eip !43
  store volatile i64 183, i64* %EIP_write, !mcsema_real_eip !44
  %427 = load i32, i32* %EAX_read, !mcsema_real_eip !44
  %428 = sub i32 %427, 2, !mcsema_real_eip !44
  %429 = xor i32 %428, %427, !mcsema_real_eip !44
  %430 = xor i32 %429, 2, !mcsema_real_eip !44
  %431 = and i32 %430, 16, !mcsema_real_eip !44
  %432 = icmp ne i32 %431, 0, !mcsema_real_eip !44
  %433 = zext i1 %432 to i8, !mcsema_real_eip !44
  store volatile i8 %433, i8* %AF_write, !mcsema_real_eip !44
  %434 = trunc i32 %428 to i8, !mcsema_real_eip !44
  %435 = call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !44
  %436 = trunc i8 %435 to i1, !mcsema_real_eip !44
  %437 = zext i1 %436 to i8, !mcsema_real_eip !44
  %438 = xor i8 %437, 1, !mcsema_real_eip !44
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !44
  %440 = zext i1 %439 to i8, !mcsema_real_eip !44
  store volatile i8 %440, i8* %PF_write, !mcsema_real_eip !44
  %441 = icmp eq i32 %428, 0, !mcsema_real_eip !44
  %442 = zext i1 %441 to i8, !mcsema_real_eip !44
  store volatile i8 %442, i8* %ZF_write, !mcsema_real_eip !44
  %443 = lshr i32 %428, 31, !mcsema_real_eip !44
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !44
  %445 = zext i1 %444 to i8, !mcsema_real_eip !44
  %446 = trunc i8 %445 to i1, !mcsema_real_eip !44
  %447 = zext i1 %446 to i8, !mcsema_real_eip !44
  store volatile i8 %447, i8* %SF_write, !mcsema_real_eip !44
  %448 = icmp ult i32 %427, 2, !mcsema_real_eip !44
  %449 = zext i1 %448 to i8, !mcsema_real_eip !44
  store volatile i8 %449, i8* %CF_write, !mcsema_real_eip !44
  %450 = xor i32 %427, 2, !mcsema_real_eip !44
  %451 = xor i32 %427, %428, !mcsema_real_eip !44
  %452 = and i32 %450, %451, !mcsema_real_eip !44
  %453 = lshr i32 %452, 31, !mcsema_real_eip !44
  %454 = trunc i32 %453 to i1, !mcsema_real_eip !44
  %455 = zext i1 %454 to i8, !mcsema_real_eip !44
  %456 = trunc i8 %455 to i1, !mcsema_real_eip !44
  %457 = zext i1 %456 to i8, !mcsema_real_eip !44
  store volatile i8 %457, i8* %OF_write, !mcsema_real_eip !44
  %458 = zext i32 %428 to i64, !mcsema_real_eip !44
  store volatile i64 %458, i64* %EAX_write, !mcsema_real_eip !44
  store volatile i64 186, i64* %EIP_write, !mcsema_real_eip !45
  %459 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %460 = add i64 %459, -12, !mcsema_real_eip !45
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !45
  %462 = load i32, i32* %EAX_read, !mcsema_real_eip !45
  %463 = ptrtoint i64* %461 to i64, !mcsema_real_eip !45
  %464 = inttoptr i64 %463 to i32*, !mcsema_real_eip !45
  store i32 %462, i32* %464, !mcsema_real_eip !45
  store volatile i64 189, i64* %EIP_write, !mcsema_real_eip !46
  br label %block_dc, !mcsema_real_eip !46

block_c2:                                         ; preds = %block_5c
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !47
  %465 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %466 = add i64 %465, -12, !mcsema_real_eip !47
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !47
  %468 = ptrtoint i64* %467 to i64, !mcsema_real_eip !47
  %469 = inttoptr i64 %468 to i32*, !mcsema_real_eip !47
  %470 = load i32, i32* %469, !mcsema_real_eip !47
  %471 = zext i32 %470 to i64, !mcsema_real_eip !47
  store volatile i64 %471, i64* %EAX_write, !mcsema_real_eip !47
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !48
  %472 = load i32, i32* %EAX_read, !mcsema_real_eip !48
  %473 = sub i32 %472, 1, !mcsema_real_eip !48
  %474 = xor i32 %473, %472, !mcsema_real_eip !48
  %475 = xor i32 %474, 1, !mcsema_real_eip !48
  %476 = and i32 %475, 16, !mcsema_real_eip !48
  %477 = icmp ne i32 %476, 0, !mcsema_real_eip !48
  %478 = zext i1 %477 to i8, !mcsema_real_eip !48
  store volatile i8 %478, i8* %AF_write, !mcsema_real_eip !48
  %479 = trunc i32 %473 to i8, !mcsema_real_eip !48
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !48
  %481 = trunc i8 %480 to i1, !mcsema_real_eip !48
  %482 = zext i1 %481 to i8, !mcsema_real_eip !48
  %483 = xor i8 %482, 1, !mcsema_real_eip !48
  %484 = trunc i8 %483 to i1, !mcsema_real_eip !48
  %485 = zext i1 %484 to i8, !mcsema_real_eip !48
  store volatile i8 %485, i8* %PF_write, !mcsema_real_eip !48
  %486 = icmp eq i32 %473, 0, !mcsema_real_eip !48
  %487 = zext i1 %486 to i8, !mcsema_real_eip !48
  store volatile i8 %487, i8* %ZF_write, !mcsema_real_eip !48
  %488 = lshr i32 %473, 31, !mcsema_real_eip !48
  %489 = trunc i32 %488 to i1, !mcsema_real_eip !48
  %490 = zext i1 %489 to i8, !mcsema_real_eip !48
  %491 = trunc i8 %490 to i1, !mcsema_real_eip !48
  %492 = zext i1 %491 to i8, !mcsema_real_eip !48
  store volatile i8 %492, i8* %SF_write, !mcsema_real_eip !48
  %493 = icmp ult i32 %472, 1, !mcsema_real_eip !48
  %494 = zext i1 %493 to i8, !mcsema_real_eip !48
  store volatile i8 %494, i8* %CF_write, !mcsema_real_eip !48
  %495 = xor i32 %472, 1, !mcsema_real_eip !48
  %496 = xor i32 %472, %473, !mcsema_real_eip !48
  %497 = and i32 %495, %496, !mcsema_real_eip !48
  %498 = lshr i32 %497, 31, !mcsema_real_eip !48
  %499 = trunc i32 %498 to i1, !mcsema_real_eip !48
  %500 = zext i1 %499 to i8, !mcsema_real_eip !48
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !48
  %502 = zext i1 %501 to i8, !mcsema_real_eip !48
  store volatile i8 %502, i8* %OF_write, !mcsema_real_eip !48
  %503 = zext i32 %473 to i64, !mcsema_real_eip !48
  store volatile i64 %503, i64* %EAX_write, !mcsema_real_eip !48
  store volatile i64 200, i64* %EIP_write, !mcsema_real_eip !49
  %504 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %505 = add i64 %504, -12, !mcsema_real_eip !49
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !49
  %507 = load i32, i32* %EAX_read, !mcsema_real_eip !49
  %508 = ptrtoint i64* %506 to i64, !mcsema_real_eip !49
  %509 = inttoptr i64 %508 to i32*, !mcsema_real_eip !49
  store i32 %507, i32* %509, !mcsema_real_eip !49
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !50
  br label %block_dc, !mcsema_real_eip !50

block_d0:                                         ; preds = %block_84
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !51
  %510 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %511 = add i64 %510, -4, !mcsema_real_eip !51
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !51
  %513 = ptrtoint i64* %512 to i64, !mcsema_real_eip !51
  %514 = inttoptr i64 %513 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %514, !mcsema_real_eip !51
  store volatile i64 215, i64* %EIP_write, !mcsema_real_eip !52
  br label %block_108, !mcsema_real_eip !52

block_dc:                                         ; preds = %block_c2, %block_b4, %block_a6, %block_98
  store volatile i64 220, i64* %EIP_write, !mcsema_real_eip !53
  %515 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %516 = add i64 %515, -8, !mcsema_real_eip !53
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !53
  %518 = ptrtoint i64* %517 to i64, !mcsema_real_eip !53
  %519 = inttoptr i64 %518 to i32*, !mcsema_real_eip !53
  %520 = load i32, i32* %519, !mcsema_real_eip !53
  %521 = zext i32 %520 to i64, !mcsema_real_eip !53
  store volatile i64 %521, i64* %EAX_write, !mcsema_real_eip !53
  store volatile i64 223, i64* %EIP_write, !mcsema_real_eip !54
  %522 = load i32, i32* %EAX_read, !mcsema_real_eip !54
  %523 = add i32 1, %522, !mcsema_real_eip !54
  %524 = xor i32 %523, %522, !mcsema_real_eip !54
  %525 = xor i32 %524, 1, !mcsema_real_eip !54
  %526 = and i32 %525, 16, !mcsema_real_eip !54
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !54
  %528 = zext i1 %527 to i8, !mcsema_real_eip !54
  store volatile i8 %528, i8* %AF_write, !mcsema_real_eip !54
  %529 = lshr i32 %523, 31, !mcsema_real_eip !54
  %530 = trunc i32 %529 to i1, !mcsema_real_eip !54
  %531 = zext i1 %530 to i8, !mcsema_real_eip !54
  %532 = trunc i8 %531 to i1, !mcsema_real_eip !54
  %533 = zext i1 %532 to i8, !mcsema_real_eip !54
  store volatile i8 %533, i8* %SF_write, !mcsema_real_eip !54
  %534 = icmp eq i32 %523, 0, !mcsema_real_eip !54
  %535 = zext i1 %534 to i8, !mcsema_real_eip !54
  store volatile i8 %535, i8* %ZF_write, !mcsema_real_eip !54
  %536 = xor i32 %522, 1, !mcsema_real_eip !54
  %537 = xor i32 %536, -1, !mcsema_real_eip !54
  %538 = xor i32 %522, %523, !mcsema_real_eip !54
  %539 = and i32 %537, %538, !mcsema_real_eip !54
  %540 = lshr i32 %539, 31, !mcsema_real_eip !54
  %541 = and i32 %540, 1, !mcsema_real_eip !54
  %542 = trunc i32 %541 to i1, !mcsema_real_eip !54
  %543 = zext i1 %542 to i8, !mcsema_real_eip !54
  %544 = trunc i8 %543 to i1, !mcsema_real_eip !54
  %545 = zext i1 %544 to i8, !mcsema_real_eip !54
  store volatile i8 %545, i8* %OF_write, !mcsema_real_eip !54
  %546 = trunc i32 %523 to i8, !mcsema_real_eip !54
  %547 = call i8 @llvm.ctpop.i8(i8 %546), !mcsema_real_eip !54
  %548 = trunc i8 %547 to i1, !mcsema_real_eip !54
  %549 = zext i1 %548 to i8, !mcsema_real_eip !54
  %550 = xor i8 %549, 1, !mcsema_real_eip !54
  %551 = trunc i8 %550 to i1, !mcsema_real_eip !54
  %552 = zext i1 %551 to i8, !mcsema_real_eip !54
  store volatile i8 %552, i8* %PF_write, !mcsema_real_eip !54
  %553 = icmp ult i32 %523, %522, !mcsema_real_eip !54
  %554 = zext i1 %553 to i8, !mcsema_real_eip !54
  store volatile i8 %554, i8* %CF_write, !mcsema_real_eip !54
  %555 = zext i32 %523 to i64, !mcsema_real_eip !54
  store volatile i64 %555, i64* %EAX_write, !mcsema_real_eip !54
  store volatile i64 226, i64* %EIP_write, !mcsema_real_eip !55
  %556 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %557 = add i64 %556, -8, !mcsema_real_eip !55
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !55
  %559 = load i32, i32* %EAX_read, !mcsema_real_eip !55
  %560 = ptrtoint i64* %558 to i64, !mcsema_real_eip !55
  %561 = inttoptr i64 %560 to i32*, !mcsema_real_eip !55
  store i32 %559, i32* %561, !mcsema_real_eip !55
  store volatile i64 229, i64* %EIP_write, !mcsema_real_eip !56
  br label %block_33, !mcsema_real_eip !56

block_ea:                                         ; preds = %block_33
  store volatile i64 234, i64* %EIP_write, !mcsema_real_eip !57
  %562 = ptrtoint %0* @data_111 to i64, !mcsema_real_eip !57
  %563 = add i64 %562, 9, !mcsema_real_eip !57
  store volatile i64 %563, i64* %RDI_write, !mcsema_real_eip !57
  store volatile i64 244, i64* %EIP_write, !mcsema_real_eip !58
  %564 = load i64, i64* %RBP_read, !mcsema_real_eip !58
  %565 = add i64 %564, -12, !mcsema_real_eip !58
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !58
  %567 = ptrtoint i64* %566 to i64, !mcsema_real_eip !58
  %568 = inttoptr i64 %567 to i32*, !mcsema_real_eip !58
  %569 = load i32, i32* %568, !mcsema_real_eip !58
  %570 = zext i32 %569 to i64, !mcsema_real_eip !58
  store volatile i64 %570, i64* %ESI_write, !mcsema_real_eip !58
  store volatile i64 247, i64* %EIP_write, !mcsema_real_eip !59
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !59
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !60
  %571 = load i64, i64* %RDI_read, !mcsema_real_eip !60
  %572 = load i64, i64* %RSI_read, !mcsema_real_eip !60
  %573 = load i64, i64* %RSP_read, !mcsema_real_eip !60
  %574 = sub i64 %573, 8, !mcsema_real_eip !60
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %575, !mcsema_real_eip !60
  store volatile i64 %574, i64* %RSP_write, !mcsema_real_eip !60
  %576 = call x86_64_sysvcc i64 @_printf(i64 %571, i64 %572), !mcsema_real_eip !60
  store volatile i64 %576, i64* %RAX_write, !mcsema_real_eip !60
  store volatile i64 254, i64* %EIP_write, !mcsema_real_eip !61
  %577 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %578 = add i64 %577, -4, !mcsema_real_eip !61
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !61
  %580 = ptrtoint i64* %579 to i64, !mcsema_real_eip !61
  %581 = inttoptr i64 %580 to i32*, !mcsema_real_eip !61
  store i32 1, i32* %581, !mcsema_real_eip !61
  store volatile i64 261, i64* %EIP_write, !mcsema_real_eip !62
  %582 = load i64, i64* %RBP_read, !mcsema_real_eip !62
  %583 = add i64 %582, -48, !mcsema_real_eip !62
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !62
  %585 = load i32, i32* %EAX_read, !mcsema_real_eip !62
  %586 = ptrtoint i64* %584 to i64, !mcsema_real_eip !62
  %587 = inttoptr i64 %586 to i32*, !mcsema_real_eip !62
  store i32 %585, i32* %587, !mcsema_real_eip !62
  br label %block_108, !mcsema_real_eip !63

block_108:                                        ; preds = %block_ea, %block_d0
  store volatile i64 264, i64* %EIP_write, !mcsema_real_eip !63
  %588 = load i64, i64* %RBP_read, !mcsema_real_eip !63
  %589 = add i64 %588, -4, !mcsema_real_eip !63
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !63
  %591 = ptrtoint i64* %590 to i64, !mcsema_real_eip !63
  %592 = inttoptr i64 %591 to i32*, !mcsema_real_eip !63
  %593 = load i32, i32* %592, !mcsema_real_eip !63
  %594 = zext i32 %593 to i64, !mcsema_real_eip !63
  store volatile i64 %594, i64* %EAX_write, !mcsema_real_eip !63
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !64
  %595 = load i64, i64* %RSP_read, !mcsema_real_eip !64
  %596 = add i64 48, %595, !mcsema_real_eip !64
  %597 = xor i64 %596, %595, !mcsema_real_eip !64
  %598 = xor i64 %597, 48, !mcsema_real_eip !64
  %599 = and i64 %598, 16, !mcsema_real_eip !64
  %600 = icmp ne i64 %599, 0, !mcsema_real_eip !64
  %601 = zext i1 %600 to i8, !mcsema_real_eip !64
  store volatile i8 %601, i8* %AF_write, !mcsema_real_eip !64
  %602 = lshr i64 %596, 63, !mcsema_real_eip !64
  %603 = trunc i64 %602 to i1, !mcsema_real_eip !64
  %604 = zext i1 %603 to i8, !mcsema_real_eip !64
  %605 = trunc i8 %604 to i1, !mcsema_real_eip !64
  %606 = zext i1 %605 to i8, !mcsema_real_eip !64
  store volatile i8 %606, i8* %SF_write, !mcsema_real_eip !64
  %607 = icmp eq i64 %596, 0, !mcsema_real_eip !64
  %608 = zext i1 %607 to i8, !mcsema_real_eip !64
  store volatile i8 %608, i8* %ZF_write, !mcsema_real_eip !64
  %609 = xor i64 %595, 48, !mcsema_real_eip !64
  %610 = xor i64 %609, -1, !mcsema_real_eip !64
  %611 = xor i64 %595, %596, !mcsema_real_eip !64
  %612 = and i64 %610, %611, !mcsema_real_eip !64
  %613 = lshr i64 %612, 63, !mcsema_real_eip !64
  %614 = and i64 %613, 1, !mcsema_real_eip !64
  %615 = trunc i64 %614 to i1, !mcsema_real_eip !64
  %616 = zext i1 %615 to i8, !mcsema_real_eip !64
  %617 = trunc i8 %616 to i1, !mcsema_real_eip !64
  %618 = zext i1 %617 to i8, !mcsema_real_eip !64
  store volatile i8 %618, i8* %OF_write, !mcsema_real_eip !64
  %619 = trunc i64 %596 to i8, !mcsema_real_eip !64
  %620 = call i8 @llvm.ctpop.i8(i8 %619), !mcsema_real_eip !64
  %621 = trunc i8 %620 to i1, !mcsema_real_eip !64
  %622 = zext i1 %621 to i8, !mcsema_real_eip !64
  %623 = xor i8 %622, 1, !mcsema_real_eip !64
  %624 = trunc i8 %623 to i1, !mcsema_real_eip !64
  %625 = zext i1 %624 to i8, !mcsema_real_eip !64
  store volatile i8 %625, i8* %PF_write, !mcsema_real_eip !64
  %626 = icmp ult i64 %596, %595, !mcsema_real_eip !64
  %627 = zext i1 %626 to i8, !mcsema_real_eip !64
  store volatile i8 %627, i8* %CF_write, !mcsema_real_eip !64
  store volatile i64 %596, i64* %RSP_write, !mcsema_real_eip !64
  store volatile i64 271, i64* %EIP_write, !mcsema_real_eip !65
  %628 = load i64, i64* %RSP_read, !mcsema_real_eip !65
  %629 = inttoptr i64 %628 to i64*, !mcsema_real_eip !65
  %630 = load i64, i64* %629, !mcsema_real_eip !65
  store volatile i64 %630, i64* %RBP_write, !mcsema_real_eip !65
  %631 = add i64 %628, 8, !mcsema_real_eip !65
  store volatile i64 %631, i64* %RSP_write, !mcsema_real_eip !65
  store volatile i64 272, i64* %EIP_write, !mcsema_real_eip !66
  %632 = load i64, i64* %RSP_read, !mcsema_real_eip !66
  %633 = add i64 %632, 8, !mcsema_real_eip !66
  %634 = inttoptr i64 %632 to i64*, !mcsema_real_eip !66
  %635 = load i64, i64* %634, !mcsema_real_eip !66
  store volatile i64 %635, i64* %RIP_write, !mcsema_real_eip !66
  store volatile i64 %633, i64* %RSP_write, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!5 = !{i64 22}
!6 = !{i64 29}
!7 = !{i64 37}
!8 = !{i64 41}
!9 = !{i64 48}
!10 = !{i64 51}
!11 = !{i64 55}
!12 = !{i64 61}
!13 = !{i64 65}
!14 = !{i64 70}
!15 = !{i64 72}
!16 = !{i64 75}
!17 = !{i64 78}
!18 = !{i64 81}
!19 = !{i64 87}
!20 = !{i64 92}
!21 = !{i64 95}
!22 = !{i64 98}
!23 = !{i64 101}
!24 = !{i64 107}
!25 = !{i64 112}
!26 = !{i64 115}
!27 = !{i64 118}
!28 = !{i64 121}
!29 = !{i64 127}
!30 = !{i64 132}
!31 = !{i64 135}
!32 = !{i64 138}
!33 = !{i64 141}
!34 = !{i64 147}
!35 = !{i64 152}
!36 = !{i64 155}
!37 = !{i64 158}
!38 = !{i64 161}
!39 = !{i64 166}
!40 = !{i64 169}
!41 = !{i64 172}
!42 = !{i64 175}
!43 = !{i64 180}
!44 = !{i64 183}
!45 = !{i64 186}
!46 = !{i64 189}
!47 = !{i64 194}
!48 = !{i64 197}
!49 = !{i64 200}
!50 = !{i64 203}
!51 = !{i64 208}
!52 = !{i64 215}
!53 = !{i64 220}
!54 = !{i64 223}
!55 = !{i64 226}
!56 = !{i64 229}
!57 = !{i64 234}
!58 = !{i64 244}
!59 = !{i64 247}
!60 = !{i64 249}
!61 = !{i64 254}
!62 = !{i64 261}
!63 = !{i64 264}
!64 = !{i64 267}
!65 = !{i64 271}
!66 = !{i64 272}
