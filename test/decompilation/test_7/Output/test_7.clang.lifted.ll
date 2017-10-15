; ModuleID = 'Output/test_7.clang.lifted.bc'
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
  %11 = add i64 %10, 40, !mcsema_real_eip !3
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !3
  %13 = load i64, i64* %12, !mcsema_real_eip !3
  store volatile i64 %13, i64* %RAX_write, !mcsema_real_eip !3
  store volatile i64 9, i64* %EIP_write, !mcsema_real_eip !4
  %14 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %15 = add i64 %14, 32, !mcsema_real_eip !4
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !4
  %17 = load i64, i64* %16, !mcsema_real_eip !4
  store volatile i64 %17, i64* %R10_write, !mcsema_real_eip !4
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !5
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %19 = add i64 %18, 24, !mcsema_real_eip !5
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !5
  %21 = load i64, i64* %20, !mcsema_real_eip !5
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
  %30 = add i64 %29, -12, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = load i32, i32* %EDI_read, !mcsema_real_eip !7
  %33 = ptrtoint i64* %31 to i64, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !7
  store i32 %32, i32* %34, !mcsema_real_eip !7
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !8
  %35 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %36 = add i64 %35, -24, !mcsema_real_eip !8
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !8
  %38 = load i64, i64* %RSI_read, !mcsema_real_eip !8
  store i64 %38, i64* %37, !mcsema_real_eip !8
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !9
  %39 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %40 = add i64 %39, -32, !mcsema_real_eip !9
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !9
  %42 = load i64, i64* %RDX_read, !mcsema_real_eip !9
  store i64 %42, i64* %41, !mcsema_real_eip !9
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !10
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %44 = add i64 %43, -40, !mcsema_real_eip !10
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !10
  %46 = load i64, i64* %RCX_read, !mcsema_real_eip !10
  store i64 %46, i64* %45, !mcsema_real_eip !10
  store volatile i64 35, i64* %EIP_write, !mcsema_real_eip !11
  %47 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %48 = add i64 %47, -44, !mcsema_real_eip !11
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !11
  %50 = load i32, i32* %R8D_read, !mcsema_real_eip !11
  %51 = ptrtoint i64* %49 to i64, !mcsema_real_eip !11
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !11
  store i32 %50, i32* %52, !mcsema_real_eip !11
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !12
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %54 = add i64 %53, -48, !mcsema_real_eip !12
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !12
  %56 = load i32, i32* %R9D_read, !mcsema_real_eip !12
  %57 = ptrtoint i64* %55 to i64, !mcsema_real_eip !12
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !12
  store i32 %56, i32* %58, !mcsema_real_eip !12
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !13
  %59 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %60 = add i64 %59, -52, !mcsema_real_eip !13
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !13
  %62 = load i32, i32* %EBX_read, !mcsema_real_eip !13
  %63 = ptrtoint i64* %61 to i64, !mcsema_real_eip !13
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !13
  store i32 %62, i32* %64, !mcsema_real_eip !13
  store volatile i64 46, i64* %EIP_write, !mcsema_real_eip !14
  %65 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %66 = add i64 %65, -64, !mcsema_real_eip !14
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !14
  %68 = load i64, i64* %R11_read, !mcsema_real_eip !14
  store i64 %68, i64* %67, !mcsema_real_eip !14
  store volatile i64 50, i64* %EIP_write, !mcsema_real_eip !15
  %69 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %70 = add i64 %69, -72, !mcsema_real_eip !15
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !15
  %72 = load i64, i64* %R10_read, !mcsema_real_eip !15
  store i64 %72, i64* %71, !mcsema_real_eip !15
  store volatile i64 54, i64* %EIP_write, !mcsema_real_eip !16
  %73 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %74 = add i64 %73, -80, !mcsema_real_eip !16
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !16
  %76 = load i64, i64* %RAX_read, !mcsema_real_eip !16
  store i64 %76, i64* %75, !mcsema_real_eip !16
  store volatile i64 58, i64* %EIP_write, !mcsema_real_eip !17
  %77 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %78 = add i64 %77, -84, !mcsema_real_eip !17
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !17
  %80 = ptrtoint i64* %79 to i64, !mcsema_real_eip !17
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %81, !mcsema_real_eip !17
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !18
  %82 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %83 = add i64 %82, -12, !mcsema_real_eip !18
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !18
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !18
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !18
  %87 = load i32, i32* %86, !mcsema_real_eip !18
  %88 = zext i32 %87 to i64, !mcsema_real_eip !18
  store volatile i64 %88, i64* %EDI_write, !mcsema_real_eip !18
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !19
  %89 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %90 = add i64 %89, -84, !mcsema_real_eip !19
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !19
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !19
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !19
  %94 = load i32, i32* %93, !mcsema_real_eip !19
  %95 = load i32, i32* %EDI_read, !mcsema_real_eip !19
  %96 = add i32 %95, %94, !mcsema_real_eip !19
  %97 = xor i32 %96, %94, !mcsema_real_eip !19
  %98 = xor i32 %97, %95, !mcsema_real_eip !19
  %99 = and i32 %98, 16, !mcsema_real_eip !19
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !19
  %101 = zext i1 %100 to i8, !mcsema_real_eip !19
  store volatile i8 %101, i8* %AF_write, !mcsema_real_eip !19
  %102 = lshr i32 %96, 31, !mcsema_real_eip !19
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !19
  %104 = zext i1 %103 to i8, !mcsema_real_eip !19
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !19
  %106 = zext i1 %105 to i8, !mcsema_real_eip !19
  store volatile i8 %106, i8* %SF_write, !mcsema_real_eip !19
  %107 = icmp eq i32 %96, 0, !mcsema_real_eip !19
  %108 = zext i1 %107 to i8, !mcsema_real_eip !19
  store volatile i8 %108, i8* %ZF_write, !mcsema_real_eip !19
  %109 = xor i32 %94, %95, !mcsema_real_eip !19
  %110 = xor i32 %109, -1, !mcsema_real_eip !19
  %111 = xor i32 %94, %96, !mcsema_real_eip !19
  %112 = and i32 %110, %111, !mcsema_real_eip !19
  %113 = lshr i32 %112, 31, !mcsema_real_eip !19
  %114 = and i32 %113, 1, !mcsema_real_eip !19
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !19
  %116 = zext i1 %115 to i8, !mcsema_real_eip !19
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !19
  %118 = zext i1 %117 to i8, !mcsema_real_eip !19
  store volatile i8 %118, i8* %OF_write, !mcsema_real_eip !19
  %119 = trunc i32 %96 to i8, !mcsema_real_eip !19
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !19
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !19
  %122 = zext i1 %121 to i8, !mcsema_real_eip !19
  %123 = xor i8 %122, 1, !mcsema_real_eip !19
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !19
  %125 = zext i1 %124 to i8, !mcsema_real_eip !19
  store volatile i8 %125, i8* %PF_write, !mcsema_real_eip !19
  %126 = icmp ult i32 %96, %94, !mcsema_real_eip !19
  %127 = zext i1 %126 to i8, !mcsema_real_eip !19
  store volatile i8 %127, i8* %CF_write, !mcsema_real_eip !19
  %128 = zext i32 %96 to i64, !mcsema_real_eip !19
  store volatile i64 %128, i64* %EDI_write, !mcsema_real_eip !19
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !20
  %129 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %130 = add i64 %129, -84, !mcsema_real_eip !20
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !20
  %132 = load i32, i32* %EDI_read, !mcsema_real_eip !20
  %133 = ptrtoint i64* %131 to i64, !mcsema_real_eip !20
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !20
  store i32 %132, i32* %134, !mcsema_real_eip !20
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !21
  %135 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %136 = add i64 %135, -88, !mcsema_real_eip !21
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !21
  %138 = ptrtoint i64* %137 to i64, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !21
  store i32 0, i32* %139, !mcsema_real_eip !21
  br label %block_51, !mcsema_real_eip !22

block_51:                                         ; preds = %block_5d, %block_0
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !22
  %140 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %141 = add i64 %140, -88, !mcsema_real_eip !22
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !22
  %143 = ptrtoint i64* %142 to i64, !mcsema_real_eip !22
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !22
  %145 = load i32, i32* %144, !mcsema_real_eip !22
  %146 = zext i32 %145 to i64, !mcsema_real_eip !22
  store volatile i64 %146, i64* %EAX_write, !mcsema_real_eip !22
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !23
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %148 = add i64 %147, -44, !mcsema_real_eip !23
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !23
  %150 = load i32, i32* %EAX_read, !mcsema_real_eip !23
  %151 = ptrtoint i64* %149 to i64, !mcsema_real_eip !23
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !23
  %153 = load i32, i32* %152, !mcsema_real_eip !23
  %154 = sub i32 %150, %153, !mcsema_real_eip !23
  %155 = xor i32 %154, %150, !mcsema_real_eip !23
  %156 = xor i32 %155, %153, !mcsema_real_eip !23
  %157 = and i32 %156, 16, !mcsema_real_eip !23
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !23
  %159 = zext i1 %158 to i8, !mcsema_real_eip !23
  store volatile i8 %159, i8* %AF_write, !mcsema_real_eip !23
  %160 = trunc i32 %154 to i8, !mcsema_real_eip !23
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !23
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !23
  %163 = zext i1 %162 to i8, !mcsema_real_eip !23
  %164 = xor i8 %163, 1, !mcsema_real_eip !23
  %165 = trunc i8 %164 to i1, !mcsema_real_eip !23
  %166 = zext i1 %165 to i8, !mcsema_real_eip !23
  store volatile i8 %166, i8* %PF_write, !mcsema_real_eip !23
  %167 = icmp eq i32 %154, 0, !mcsema_real_eip !23
  %168 = zext i1 %167 to i8, !mcsema_real_eip !23
  store volatile i8 %168, i8* %ZF_write, !mcsema_real_eip !23
  %169 = lshr i32 %154, 31, !mcsema_real_eip !23
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !23
  %171 = zext i1 %170 to i8, !mcsema_real_eip !23
  %172 = trunc i8 %171 to i1, !mcsema_real_eip !23
  %173 = zext i1 %172 to i8, !mcsema_real_eip !23
  store volatile i8 %173, i8* %SF_write, !mcsema_real_eip !23
  %174 = icmp ult i32 %150, %153, !mcsema_real_eip !23
  %175 = zext i1 %174 to i8, !mcsema_real_eip !23
  store volatile i8 %175, i8* %CF_write, !mcsema_real_eip !23
  %176 = xor i32 %150, %153, !mcsema_real_eip !23
  %177 = xor i32 %150, %154, !mcsema_real_eip !23
  %178 = and i32 %176, %177, !mcsema_real_eip !23
  %179 = lshr i32 %178, 31, !mcsema_real_eip !23
  %180 = trunc i32 %179 to i1, !mcsema_real_eip !23
  %181 = zext i1 %180 to i8, !mcsema_real_eip !23
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !23
  %183 = zext i1 %182 to i8, !mcsema_real_eip !23
  store volatile i8 %183, i8* %OF_write, !mcsema_real_eip !23
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !24
  %184 = load i8, i8* %SF_read, !mcsema_real_eip !24
  %185 = trunc i8 %184 to i1, !mcsema_real_eip !24
  %186 = load i8, i8* %OF_read, !mcsema_real_eip !24
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !24
  %188 = icmp eq i1 %185, %187, !mcsema_real_eip !24
  br i1 %188, label %block_7c, label %block_5d, !mcsema_real_eip !24

block_5d:                                         ; preds = %block_51
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !25
  %189 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %190 = add i64 %189, -88, !mcsema_real_eip !25
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !25
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !25
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !25
  %194 = load i32, i32* %193, !mcsema_real_eip !25
  %195 = sext i32 %194 to i64, !mcsema_real_eip !25
  store volatile i64 %195, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !26
  %196 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %197 = add i64 %196, -24, !mcsema_real_eip !26
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !26
  %199 = load i64, i64* %198, !mcsema_real_eip !26
  store volatile i64 %199, i64* %RCX_write, !mcsema_real_eip !26
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !27
  %200 = load i64, i64* %RCX_read, !mcsema_real_eip !27
  %201 = add i64 %200, 0, !mcsema_real_eip !27
  %202 = load i64, i64* %RAX_read, !mcsema_real_eip !27
  %203 = mul i64 %202, 4, !mcsema_real_eip !27
  %204 = add i64 %201, %203, !mcsema_real_eip !27
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !27
  %206 = ptrtoint i64* %205 to i64, !mcsema_real_eip !27
  %207 = inttoptr i64 %206 to i32*, !mcsema_real_eip !27
  %208 = load i32, i32* %207, !mcsema_real_eip !27
  %209 = zext i32 %208 to i64, !mcsema_real_eip !27
  store volatile i64 %209, i64* %EDX_write, !mcsema_real_eip !27
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !28
  %210 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %211 = add i64 %210, -84, !mcsema_real_eip !28
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !28
  %213 = ptrtoint i64* %212 to i64, !mcsema_real_eip !28
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !28
  %215 = load i32, i32* %214, !mcsema_real_eip !28
  %216 = load i32, i32* %EDX_read, !mcsema_real_eip !28
  %217 = add i32 %216, %215, !mcsema_real_eip !28
  %218 = xor i32 %217, %215, !mcsema_real_eip !28
  %219 = xor i32 %218, %216, !mcsema_real_eip !28
  %220 = and i32 %219, 16, !mcsema_real_eip !28
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !28
  %222 = zext i1 %221 to i8, !mcsema_real_eip !28
  store volatile i8 %222, i8* %AF_write, !mcsema_real_eip !28
  %223 = lshr i32 %217, 31, !mcsema_real_eip !28
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !28
  %225 = zext i1 %224 to i8, !mcsema_real_eip !28
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !28
  %227 = zext i1 %226 to i8, !mcsema_real_eip !28
  store volatile i8 %227, i8* %SF_write, !mcsema_real_eip !28
  %228 = icmp eq i32 %217, 0, !mcsema_real_eip !28
  %229 = zext i1 %228 to i8, !mcsema_real_eip !28
  store volatile i8 %229, i8* %ZF_write, !mcsema_real_eip !28
  %230 = xor i32 %215, %216, !mcsema_real_eip !28
  %231 = xor i32 %230, -1, !mcsema_real_eip !28
  %232 = xor i32 %215, %217, !mcsema_real_eip !28
  %233 = and i32 %231, %232, !mcsema_real_eip !28
  %234 = lshr i32 %233, 31, !mcsema_real_eip !28
  %235 = and i32 %234, 1, !mcsema_real_eip !28
  %236 = trunc i32 %235 to i1, !mcsema_real_eip !28
  %237 = zext i1 %236 to i8, !mcsema_real_eip !28
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !28
  %239 = zext i1 %238 to i8, !mcsema_real_eip !28
  store volatile i8 %239, i8* %OF_write, !mcsema_real_eip !28
  %240 = trunc i32 %217 to i8, !mcsema_real_eip !28
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !28
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !28
  %243 = zext i1 %242 to i8, !mcsema_real_eip !28
  %244 = xor i8 %243, 1, !mcsema_real_eip !28
  %245 = trunc i8 %244 to i1, !mcsema_real_eip !28
  %246 = zext i1 %245 to i8, !mcsema_real_eip !28
  store volatile i8 %246, i8* %PF_write, !mcsema_real_eip !28
  %247 = icmp ult i32 %217, %215, !mcsema_real_eip !28
  %248 = zext i1 %247 to i8, !mcsema_real_eip !28
  store volatile i8 %248, i8* %CF_write, !mcsema_real_eip !28
  %249 = zext i32 %217 to i64, !mcsema_real_eip !28
  store volatile i64 %249, i64* %EDX_write, !mcsema_real_eip !28
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !29
  %250 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %251 = add i64 %250, -84, !mcsema_real_eip !29
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !29
  %253 = load i32, i32* %EDX_read, !mcsema_real_eip !29
  %254 = ptrtoint i64* %252 to i64, !mcsema_real_eip !29
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !29
  store i32 %253, i32* %255, !mcsema_real_eip !29
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !30
  %256 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %257 = add i64 %256, -88, !mcsema_real_eip !30
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !30
  %259 = ptrtoint i64* %258 to i64, !mcsema_real_eip !30
  %260 = inttoptr i64 %259 to i32*, !mcsema_real_eip !30
  %261 = load i32, i32* %260, !mcsema_real_eip !30
  %262 = zext i32 %261 to i64, !mcsema_real_eip !30
  store volatile i64 %262, i64* %EAX_write, !mcsema_real_eip !30
  store volatile i64 113, i64* %EIP_write, !mcsema_real_eip !31
  %263 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %264 = add i32 1, %263, !mcsema_real_eip !31
  %265 = xor i32 %264, %263, !mcsema_real_eip !31
  %266 = xor i32 %265, 1, !mcsema_real_eip !31
  %267 = and i32 %266, 16, !mcsema_real_eip !31
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !31
  %269 = zext i1 %268 to i8, !mcsema_real_eip !31
  store volatile i8 %269, i8* %AF_write, !mcsema_real_eip !31
  %270 = lshr i32 %264, 31, !mcsema_real_eip !31
  %271 = trunc i32 %270 to i1, !mcsema_real_eip !31
  %272 = zext i1 %271 to i8, !mcsema_real_eip !31
  %273 = trunc i8 %272 to i1, !mcsema_real_eip !31
  %274 = zext i1 %273 to i8, !mcsema_real_eip !31
  store volatile i8 %274, i8* %SF_write, !mcsema_real_eip !31
  %275 = icmp eq i32 %264, 0, !mcsema_real_eip !31
  %276 = zext i1 %275 to i8, !mcsema_real_eip !31
  store volatile i8 %276, i8* %ZF_write, !mcsema_real_eip !31
  %277 = xor i32 %263, 1, !mcsema_real_eip !31
  %278 = xor i32 %277, -1, !mcsema_real_eip !31
  %279 = xor i32 %263, %264, !mcsema_real_eip !31
  %280 = and i32 %278, %279, !mcsema_real_eip !31
  %281 = lshr i32 %280, 31, !mcsema_real_eip !31
  %282 = and i32 %281, 1, !mcsema_real_eip !31
  %283 = trunc i32 %282 to i1, !mcsema_real_eip !31
  %284 = zext i1 %283 to i8, !mcsema_real_eip !31
  %285 = trunc i8 %284 to i1, !mcsema_real_eip !31
  %286 = zext i1 %285 to i8, !mcsema_real_eip !31
  store volatile i8 %286, i8* %OF_write, !mcsema_real_eip !31
  %287 = trunc i32 %264 to i8, !mcsema_real_eip !31
  %288 = call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !31
  %289 = trunc i8 %288 to i1, !mcsema_real_eip !31
  %290 = zext i1 %289 to i8, !mcsema_real_eip !31
  %291 = xor i8 %290, 1, !mcsema_real_eip !31
  %292 = trunc i8 %291 to i1, !mcsema_real_eip !31
  %293 = zext i1 %292 to i8, !mcsema_real_eip !31
  store volatile i8 %293, i8* %PF_write, !mcsema_real_eip !31
  %294 = icmp ult i32 %264, %263, !mcsema_real_eip !31
  %295 = zext i1 %294 to i8, !mcsema_real_eip !31
  store volatile i8 %295, i8* %CF_write, !mcsema_real_eip !31
  %296 = zext i32 %264 to i64, !mcsema_real_eip !31
  store volatile i64 %296, i64* %EAX_write, !mcsema_real_eip !31
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !32
  %297 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %298 = add i64 %297, -88, !mcsema_real_eip !32
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !32
  %300 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %301 = ptrtoint i64* %299 to i64, !mcsema_real_eip !32
  %302 = inttoptr i64 %301 to i32*, !mcsema_real_eip !32
  store i32 %300, i32* %302, !mcsema_real_eip !32
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !33
  br label %block_51, !mcsema_real_eip !33

block_7c:                                         ; preds = %block_51
  store volatile i64 124, i64* %EIP_write, !mcsema_real_eip !34
  %303 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %304 = add i64 %303, -32, !mcsema_real_eip !34
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !34
  %306 = load i64, i64* %305, !mcsema_real_eip !34
  store volatile i64 %306, i64* %RAX_write, !mcsema_real_eip !34
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !35
  %307 = load i64, i64* %RAX_read, !mcsema_real_eip !35
  %308 = add i64 %307, 0, !mcsema_real_eip !35
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !35
  %310 = ptrtoint i64* %309 to i64, !mcsema_real_eip !35
  %311 = inttoptr i64 %310 to i32*, !mcsema_real_eip !35
  %312 = load i32, i32* %311, !mcsema_real_eip !35
  %313 = zext i32 %312 to i64, !mcsema_real_eip !35
  store volatile i64 %313, i64* %ECX_write, !mcsema_real_eip !35
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !36
  %314 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %315 = add i64 %314, -84, !mcsema_real_eip !36
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !36
  %317 = ptrtoint i64* %316 to i64, !mcsema_real_eip !36
  %318 = inttoptr i64 %317 to i32*, !mcsema_real_eip !36
  %319 = load i32, i32* %318, !mcsema_real_eip !36
  %320 = load i32, i32* %ECX_read, !mcsema_real_eip !36
  %321 = add i32 %320, %319, !mcsema_real_eip !36
  %322 = xor i32 %321, %319, !mcsema_real_eip !36
  %323 = xor i32 %322, %320, !mcsema_real_eip !36
  %324 = and i32 %323, 16, !mcsema_real_eip !36
  %325 = icmp ne i32 %324, 0, !mcsema_real_eip !36
  %326 = zext i1 %325 to i8, !mcsema_real_eip !36
  store volatile i8 %326, i8* %AF_write, !mcsema_real_eip !36
  %327 = lshr i32 %321, 31, !mcsema_real_eip !36
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !36
  %329 = zext i1 %328 to i8, !mcsema_real_eip !36
  %330 = trunc i8 %329 to i1, !mcsema_real_eip !36
  %331 = zext i1 %330 to i8, !mcsema_real_eip !36
  store volatile i8 %331, i8* %SF_write, !mcsema_real_eip !36
  %332 = icmp eq i32 %321, 0, !mcsema_real_eip !36
  %333 = zext i1 %332 to i8, !mcsema_real_eip !36
  store volatile i8 %333, i8* %ZF_write, !mcsema_real_eip !36
  %334 = xor i32 %319, %320, !mcsema_real_eip !36
  %335 = xor i32 %334, -1, !mcsema_real_eip !36
  %336 = xor i32 %319, %321, !mcsema_real_eip !36
  %337 = and i32 %335, %336, !mcsema_real_eip !36
  %338 = lshr i32 %337, 31, !mcsema_real_eip !36
  %339 = and i32 %338, 1, !mcsema_real_eip !36
  %340 = trunc i32 %339 to i1, !mcsema_real_eip !36
  %341 = zext i1 %340 to i8, !mcsema_real_eip !36
  %342 = trunc i8 %341 to i1, !mcsema_real_eip !36
  %343 = zext i1 %342 to i8, !mcsema_real_eip !36
  store volatile i8 %343, i8* %OF_write, !mcsema_real_eip !36
  %344 = trunc i32 %321 to i8, !mcsema_real_eip !36
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !36
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !36
  %347 = zext i1 %346 to i8, !mcsema_real_eip !36
  %348 = xor i8 %347, 1, !mcsema_real_eip !36
  %349 = trunc i8 %348 to i1, !mcsema_real_eip !36
  %350 = zext i1 %349 to i8, !mcsema_real_eip !36
  store volatile i8 %350, i8* %PF_write, !mcsema_real_eip !36
  %351 = icmp ult i32 %321, %319, !mcsema_real_eip !36
  %352 = zext i1 %351 to i8, !mcsema_real_eip !36
  store volatile i8 %352, i8* %CF_write, !mcsema_real_eip !36
  %353 = zext i32 %321 to i64, !mcsema_real_eip !36
  store volatile i64 %353, i64* %ECX_write, !mcsema_real_eip !36
  store volatile i64 133, i64* %EIP_write, !mcsema_real_eip !37
  %354 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %355 = add i64 %354, -84, !mcsema_real_eip !37
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !37
  %357 = load i32, i32* %ECX_read, !mcsema_real_eip !37
  %358 = ptrtoint i64* %356 to i64, !mcsema_real_eip !37
  %359 = inttoptr i64 %358 to i32*, !mcsema_real_eip !37
  store i32 %357, i32* %359, !mcsema_real_eip !37
  store volatile i64 136, i64* %EIP_write, !mcsema_real_eip !38
  %360 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %361 = add i64 %360, -92, !mcsema_real_eip !38
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !38
  %363 = ptrtoint i64* %362 to i64, !mcsema_real_eip !38
  %364 = inttoptr i64 %363 to i32*, !mcsema_real_eip !38
  store i32 0, i32* %364, !mcsema_real_eip !38
  br label %block_8f, !mcsema_real_eip !39

block_8f:                                         ; preds = %block_9b, %block_7c
  store volatile i64 143, i64* %EIP_write, !mcsema_real_eip !39
  %365 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %366 = add i64 %365, -92, !mcsema_real_eip !39
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !39
  %368 = ptrtoint i64* %367 to i64, !mcsema_real_eip !39
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !39
  %370 = load i32, i32* %369, !mcsema_real_eip !39
  %371 = zext i32 %370 to i64, !mcsema_real_eip !39
  store volatile i64 %371, i64* %EAX_write, !mcsema_real_eip !39
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !40
  %372 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %373 = add i64 %372, -48, !mcsema_real_eip !40
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !40
  %375 = load i32, i32* %EAX_read, !mcsema_real_eip !40
  %376 = ptrtoint i64* %374 to i64, !mcsema_real_eip !40
  %377 = inttoptr i64 %376 to i32*, !mcsema_real_eip !40
  %378 = load i32, i32* %377, !mcsema_real_eip !40
  %379 = sub i32 %375, %378, !mcsema_real_eip !40
  %380 = xor i32 %379, %375, !mcsema_real_eip !40
  %381 = xor i32 %380, %378, !mcsema_real_eip !40
  %382 = and i32 %381, 16, !mcsema_real_eip !40
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !40
  %384 = zext i1 %383 to i8, !mcsema_real_eip !40
  store volatile i8 %384, i8* %AF_write, !mcsema_real_eip !40
  %385 = trunc i32 %379 to i8, !mcsema_real_eip !40
  %386 = call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !40
  %387 = trunc i8 %386 to i1, !mcsema_real_eip !40
  %388 = zext i1 %387 to i8, !mcsema_real_eip !40
  %389 = xor i8 %388, 1, !mcsema_real_eip !40
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !40
  %391 = zext i1 %390 to i8, !mcsema_real_eip !40
  store volatile i8 %391, i8* %PF_write, !mcsema_real_eip !40
  %392 = icmp eq i32 %379, 0, !mcsema_real_eip !40
  %393 = zext i1 %392 to i8, !mcsema_real_eip !40
  store volatile i8 %393, i8* %ZF_write, !mcsema_real_eip !40
  %394 = lshr i32 %379, 31, !mcsema_real_eip !40
  %395 = trunc i32 %394 to i1, !mcsema_real_eip !40
  %396 = zext i1 %395 to i8, !mcsema_real_eip !40
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !40
  %398 = zext i1 %397 to i8, !mcsema_real_eip !40
  store volatile i8 %398, i8* %SF_write, !mcsema_real_eip !40
  %399 = icmp ult i32 %375, %378, !mcsema_real_eip !40
  %400 = zext i1 %399 to i8, !mcsema_real_eip !40
  store volatile i8 %400, i8* %CF_write, !mcsema_real_eip !40
  %401 = xor i32 %375, %378, !mcsema_real_eip !40
  %402 = xor i32 %375, %379, !mcsema_real_eip !40
  %403 = and i32 %401, %402, !mcsema_real_eip !40
  %404 = lshr i32 %403, 31, !mcsema_real_eip !40
  %405 = trunc i32 %404 to i1, !mcsema_real_eip !40
  %406 = zext i1 %405 to i8, !mcsema_real_eip !40
  %407 = trunc i8 %406 to i1, !mcsema_real_eip !40
  %408 = zext i1 %407 to i8, !mcsema_real_eip !40
  store volatile i8 %408, i8* %OF_write, !mcsema_real_eip !40
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !41
  %409 = load i8, i8* %SF_read, !mcsema_real_eip !41
  %410 = trunc i8 %409 to i1, !mcsema_real_eip !41
  %411 = load i8, i8* %OF_read, !mcsema_real_eip !41
  %412 = trunc i8 %411 to i1, !mcsema_real_eip !41
  %413 = icmp eq i1 %410, %412, !mcsema_real_eip !41
  br i1 %413, label %block_ba, label %block_9b, !mcsema_real_eip !41

block_9b:                                         ; preds = %block_8f
  store volatile i64 155, i64* %EIP_write, !mcsema_real_eip !42
  %414 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %415 = add i64 %414, -92, !mcsema_real_eip !42
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !42
  %417 = ptrtoint i64* %416 to i64, !mcsema_real_eip !42
  %418 = inttoptr i64 %417 to i32*, !mcsema_real_eip !42
  %419 = load i32, i32* %418, !mcsema_real_eip !42
  %420 = sext i32 %419 to i64, !mcsema_real_eip !42
  store volatile i64 %420, i64* %RAX_write, !mcsema_real_eip !42
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !43
  %421 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %422 = add i64 %421, -40, !mcsema_real_eip !43
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !43
  %424 = load i64, i64* %423, !mcsema_real_eip !43
  store volatile i64 %424, i64* %RCX_write, !mcsema_real_eip !43
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !44
  %425 = load i64, i64* %RCX_read, !mcsema_real_eip !44
  %426 = add i64 %425, 0, !mcsema_real_eip !44
  %427 = load i64, i64* %RAX_read, !mcsema_real_eip !44
  %428 = mul i64 %427, 4, !mcsema_real_eip !44
  %429 = add i64 %426, %428, !mcsema_real_eip !44
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !44
  %431 = ptrtoint i64* %430 to i64, !mcsema_real_eip !44
  %432 = inttoptr i64 %431 to i32*, !mcsema_real_eip !44
  %433 = load i32, i32* %432, !mcsema_real_eip !44
  %434 = zext i32 %433 to i64, !mcsema_real_eip !44
  store volatile i64 %434, i64* %EDX_write, !mcsema_real_eip !44
  store volatile i64 166, i64* %EIP_write, !mcsema_real_eip !45
  %435 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %436 = add i64 %435, -84, !mcsema_real_eip !45
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !45
  %438 = ptrtoint i64* %437 to i64, !mcsema_real_eip !45
  %439 = inttoptr i64 %438 to i32*, !mcsema_real_eip !45
  %440 = load i32, i32* %439, !mcsema_real_eip !45
  %441 = load i32, i32* %EDX_read, !mcsema_real_eip !45
  %442 = add i32 %441, %440, !mcsema_real_eip !45
  %443 = xor i32 %442, %440, !mcsema_real_eip !45
  %444 = xor i32 %443, %441, !mcsema_real_eip !45
  %445 = and i32 %444, 16, !mcsema_real_eip !45
  %446 = icmp ne i32 %445, 0, !mcsema_real_eip !45
  %447 = zext i1 %446 to i8, !mcsema_real_eip !45
  store volatile i8 %447, i8* %AF_write, !mcsema_real_eip !45
  %448 = lshr i32 %442, 31, !mcsema_real_eip !45
  %449 = trunc i32 %448 to i1, !mcsema_real_eip !45
  %450 = zext i1 %449 to i8, !mcsema_real_eip !45
  %451 = trunc i8 %450 to i1, !mcsema_real_eip !45
  %452 = zext i1 %451 to i8, !mcsema_real_eip !45
  store volatile i8 %452, i8* %SF_write, !mcsema_real_eip !45
  %453 = icmp eq i32 %442, 0, !mcsema_real_eip !45
  %454 = zext i1 %453 to i8, !mcsema_real_eip !45
  store volatile i8 %454, i8* %ZF_write, !mcsema_real_eip !45
  %455 = xor i32 %440, %441, !mcsema_real_eip !45
  %456 = xor i32 %455, -1, !mcsema_real_eip !45
  %457 = xor i32 %440, %442, !mcsema_real_eip !45
  %458 = and i32 %456, %457, !mcsema_real_eip !45
  %459 = lshr i32 %458, 31, !mcsema_real_eip !45
  %460 = and i32 %459, 1, !mcsema_real_eip !45
  %461 = trunc i32 %460 to i1, !mcsema_real_eip !45
  %462 = zext i1 %461 to i8, !mcsema_real_eip !45
  %463 = trunc i8 %462 to i1, !mcsema_real_eip !45
  %464 = zext i1 %463 to i8, !mcsema_real_eip !45
  store volatile i8 %464, i8* %OF_write, !mcsema_real_eip !45
  %465 = trunc i32 %442 to i8, !mcsema_real_eip !45
  %466 = call i8 @llvm.ctpop.i8(i8 %465), !mcsema_real_eip !45
  %467 = trunc i8 %466 to i1, !mcsema_real_eip !45
  %468 = zext i1 %467 to i8, !mcsema_real_eip !45
  %469 = xor i8 %468, 1, !mcsema_real_eip !45
  %470 = trunc i8 %469 to i1, !mcsema_real_eip !45
  %471 = zext i1 %470 to i8, !mcsema_real_eip !45
  store volatile i8 %471, i8* %PF_write, !mcsema_real_eip !45
  %472 = icmp ult i32 %442, %440, !mcsema_real_eip !45
  %473 = zext i1 %472 to i8, !mcsema_real_eip !45
  store volatile i8 %473, i8* %CF_write, !mcsema_real_eip !45
  %474 = zext i32 %442 to i64, !mcsema_real_eip !45
  store volatile i64 %474, i64* %EDX_write, !mcsema_real_eip !45
  store volatile i64 169, i64* %EIP_write, !mcsema_real_eip !46
  %475 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %476 = add i64 %475, -84, !mcsema_real_eip !46
  %477 = inttoptr i64 %476 to i64*, !mcsema_real_eip !46
  %478 = load i32, i32* %EDX_read, !mcsema_real_eip !46
  %479 = ptrtoint i64* %477 to i64, !mcsema_real_eip !46
  %480 = inttoptr i64 %479 to i32*, !mcsema_real_eip !46
  store i32 %478, i32* %480, !mcsema_real_eip !46
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !47
  %481 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %482 = add i64 %481, -92, !mcsema_real_eip !47
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !47
  %484 = ptrtoint i64* %483 to i64, !mcsema_real_eip !47
  %485 = inttoptr i64 %484 to i32*, !mcsema_real_eip !47
  %486 = load i32, i32* %485, !mcsema_real_eip !47
  %487 = zext i32 %486 to i64, !mcsema_real_eip !47
  store volatile i64 %487, i64* %EAX_write, !mcsema_real_eip !47
  store volatile i64 175, i64* %EIP_write, !mcsema_real_eip !48
  %488 = load i32, i32* %EAX_read, !mcsema_real_eip !48
  %489 = add i32 1, %488, !mcsema_real_eip !48
  %490 = xor i32 %489, %488, !mcsema_real_eip !48
  %491 = xor i32 %490, 1, !mcsema_real_eip !48
  %492 = and i32 %491, 16, !mcsema_real_eip !48
  %493 = icmp ne i32 %492, 0, !mcsema_real_eip !48
  %494 = zext i1 %493 to i8, !mcsema_real_eip !48
  store volatile i8 %494, i8* %AF_write, !mcsema_real_eip !48
  %495 = lshr i32 %489, 31, !mcsema_real_eip !48
  %496 = trunc i32 %495 to i1, !mcsema_real_eip !48
  %497 = zext i1 %496 to i8, !mcsema_real_eip !48
  %498 = trunc i8 %497 to i1, !mcsema_real_eip !48
  %499 = zext i1 %498 to i8, !mcsema_real_eip !48
  store volatile i8 %499, i8* %SF_write, !mcsema_real_eip !48
  %500 = icmp eq i32 %489, 0, !mcsema_real_eip !48
  %501 = zext i1 %500 to i8, !mcsema_real_eip !48
  store volatile i8 %501, i8* %ZF_write, !mcsema_real_eip !48
  %502 = xor i32 %488, 1, !mcsema_real_eip !48
  %503 = xor i32 %502, -1, !mcsema_real_eip !48
  %504 = xor i32 %488, %489, !mcsema_real_eip !48
  %505 = and i32 %503, %504, !mcsema_real_eip !48
  %506 = lshr i32 %505, 31, !mcsema_real_eip !48
  %507 = and i32 %506, 1, !mcsema_real_eip !48
  %508 = trunc i32 %507 to i1, !mcsema_real_eip !48
  %509 = zext i1 %508 to i8, !mcsema_real_eip !48
  %510 = trunc i8 %509 to i1, !mcsema_real_eip !48
  %511 = zext i1 %510 to i8, !mcsema_real_eip !48
  store volatile i8 %511, i8* %OF_write, !mcsema_real_eip !48
  %512 = trunc i32 %489 to i8, !mcsema_real_eip !48
  %513 = call i8 @llvm.ctpop.i8(i8 %512), !mcsema_real_eip !48
  %514 = trunc i8 %513 to i1, !mcsema_real_eip !48
  %515 = zext i1 %514 to i8, !mcsema_real_eip !48
  %516 = xor i8 %515, 1, !mcsema_real_eip !48
  %517 = trunc i8 %516 to i1, !mcsema_real_eip !48
  %518 = zext i1 %517 to i8, !mcsema_real_eip !48
  store volatile i8 %518, i8* %PF_write, !mcsema_real_eip !48
  %519 = icmp ult i32 %489, %488, !mcsema_real_eip !48
  %520 = zext i1 %519 to i8, !mcsema_real_eip !48
  store volatile i8 %520, i8* %CF_write, !mcsema_real_eip !48
  %521 = zext i32 %489 to i64, !mcsema_real_eip !48
  store volatile i64 %521, i64* %EAX_write, !mcsema_real_eip !48
  store volatile i64 178, i64* %EIP_write, !mcsema_real_eip !49
  %522 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %523 = add i64 %522, -92, !mcsema_real_eip !49
  %524 = inttoptr i64 %523 to i64*, !mcsema_real_eip !49
  %525 = load i32, i32* %EAX_read, !mcsema_real_eip !49
  %526 = ptrtoint i64* %524 to i64, !mcsema_real_eip !49
  %527 = inttoptr i64 %526 to i32*, !mcsema_real_eip !49
  store i32 %525, i32* %527, !mcsema_real_eip !49
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !50
  br label %block_8f, !mcsema_real_eip !50

block_ba:                                         ; preds = %block_8f
  store volatile i64 186, i64* %EIP_write, !mcsema_real_eip !51
  %528 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %529 = add i64 %528, -52, !mcsema_real_eip !51
  %530 = inttoptr i64 %529 to i64*, !mcsema_real_eip !51
  %531 = ptrtoint i64* %530 to i64, !mcsema_real_eip !51
  %532 = inttoptr i64 %531 to i32*, !mcsema_real_eip !51
  %533 = load i32, i32* %532, !mcsema_real_eip !51
  %534 = zext i32 %533 to i64, !mcsema_real_eip !51
  store volatile i64 %534, i64* %EAX_write, !mcsema_real_eip !51
  store volatile i64 189, i64* %EIP_write, !mcsema_real_eip !52
  %535 = load i64, i64* %RBP_read, !mcsema_real_eip !52
  %536 = add i64 %535, -84, !mcsema_real_eip !52
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !52
  %538 = ptrtoint i64* %537 to i64, !mcsema_real_eip !52
  %539 = inttoptr i64 %538 to i32*, !mcsema_real_eip !52
  %540 = load i32, i32* %539, !mcsema_real_eip !52
  %541 = load i32, i32* %EAX_read, !mcsema_real_eip !52
  %542 = add i32 %541, %540, !mcsema_real_eip !52
  %543 = xor i32 %542, %540, !mcsema_real_eip !52
  %544 = xor i32 %543, %541, !mcsema_real_eip !52
  %545 = and i32 %544, 16, !mcsema_real_eip !52
  %546 = icmp ne i32 %545, 0, !mcsema_real_eip !52
  %547 = zext i1 %546 to i8, !mcsema_real_eip !52
  store volatile i8 %547, i8* %AF_write, !mcsema_real_eip !52
  %548 = lshr i32 %542, 31, !mcsema_real_eip !52
  %549 = trunc i32 %548 to i1, !mcsema_real_eip !52
  %550 = zext i1 %549 to i8, !mcsema_real_eip !52
  %551 = trunc i8 %550 to i1, !mcsema_real_eip !52
  %552 = zext i1 %551 to i8, !mcsema_real_eip !52
  store volatile i8 %552, i8* %SF_write, !mcsema_real_eip !52
  %553 = icmp eq i32 %542, 0, !mcsema_real_eip !52
  %554 = zext i1 %553 to i8, !mcsema_real_eip !52
  store volatile i8 %554, i8* %ZF_write, !mcsema_real_eip !52
  %555 = xor i32 %540, %541, !mcsema_real_eip !52
  %556 = xor i32 %555, -1, !mcsema_real_eip !52
  %557 = xor i32 %540, %542, !mcsema_real_eip !52
  %558 = and i32 %556, %557, !mcsema_real_eip !52
  %559 = lshr i32 %558, 31, !mcsema_real_eip !52
  %560 = and i32 %559, 1, !mcsema_real_eip !52
  %561 = trunc i32 %560 to i1, !mcsema_real_eip !52
  %562 = zext i1 %561 to i8, !mcsema_real_eip !52
  %563 = trunc i8 %562 to i1, !mcsema_real_eip !52
  %564 = zext i1 %563 to i8, !mcsema_real_eip !52
  store volatile i8 %564, i8* %OF_write, !mcsema_real_eip !52
  %565 = trunc i32 %542 to i8, !mcsema_real_eip !52
  %566 = call i8 @llvm.ctpop.i8(i8 %565), !mcsema_real_eip !52
  %567 = trunc i8 %566 to i1, !mcsema_real_eip !52
  %568 = zext i1 %567 to i8, !mcsema_real_eip !52
  %569 = xor i8 %568, 1, !mcsema_real_eip !52
  %570 = trunc i8 %569 to i1, !mcsema_real_eip !52
  %571 = zext i1 %570 to i8, !mcsema_real_eip !52
  store volatile i8 %571, i8* %PF_write, !mcsema_real_eip !52
  %572 = icmp ult i32 %542, %540, !mcsema_real_eip !52
  %573 = zext i1 %572 to i8, !mcsema_real_eip !52
  store volatile i8 %573, i8* %CF_write, !mcsema_real_eip !52
  %574 = zext i32 %542 to i64, !mcsema_real_eip !52
  store volatile i64 %574, i64* %EAX_write, !mcsema_real_eip !52
  store volatile i64 192, i64* %EIP_write, !mcsema_real_eip !53
  %575 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %576 = add i64 %575, -84, !mcsema_real_eip !53
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !53
  %578 = load i32, i32* %EAX_read, !mcsema_real_eip !53
  %579 = ptrtoint i64* %577 to i64, !mcsema_real_eip !53
  %580 = inttoptr i64 %579 to i32*, !mcsema_real_eip !53
  store i32 %578, i32* %580, !mcsema_real_eip !53
  store volatile i64 195, i64* %EIP_write, !mcsema_real_eip !54
  %581 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %582 = add i64 %581, -96, !mcsema_real_eip !54
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !54
  %584 = ptrtoint i64* %583 to i64, !mcsema_real_eip !54
  %585 = inttoptr i64 %584 to i32*, !mcsema_real_eip !54
  store i32 0, i32* %585, !mcsema_real_eip !54
  br label %block_ca, !mcsema_real_eip !55

block_ca:                                         ; preds = %block_d6, %block_ba
  store volatile i64 202, i64* %EIP_write, !mcsema_real_eip !55
  %586 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %587 = add i64 %586, -96, !mcsema_real_eip !55
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !55
  %589 = ptrtoint i64* %588 to i64, !mcsema_real_eip !55
  %590 = inttoptr i64 %589 to i32*, !mcsema_real_eip !55
  %591 = load i32, i32* %590, !mcsema_real_eip !55
  %592 = zext i32 %591 to i64, !mcsema_real_eip !55
  store volatile i64 %592, i64* %EAX_write, !mcsema_real_eip !55
  store volatile i64 205, i64* %EIP_write, !mcsema_real_eip !56
  %593 = load i64, i64* %RBP_read, !mcsema_real_eip !56
  %594 = add i64 %593, -44, !mcsema_real_eip !56
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !56
  %596 = load i32, i32* %EAX_read, !mcsema_real_eip !56
  %597 = ptrtoint i64* %595 to i64, !mcsema_real_eip !56
  %598 = inttoptr i64 %597 to i32*, !mcsema_real_eip !56
  %599 = load i32, i32* %598, !mcsema_real_eip !56
  %600 = sub i32 %596, %599, !mcsema_real_eip !56
  %601 = xor i32 %600, %596, !mcsema_real_eip !56
  %602 = xor i32 %601, %599, !mcsema_real_eip !56
  %603 = and i32 %602, 16, !mcsema_real_eip !56
  %604 = icmp ne i32 %603, 0, !mcsema_real_eip !56
  %605 = zext i1 %604 to i8, !mcsema_real_eip !56
  store volatile i8 %605, i8* %AF_write, !mcsema_real_eip !56
  %606 = trunc i32 %600 to i8, !mcsema_real_eip !56
  %607 = call i8 @llvm.ctpop.i8(i8 %606), !mcsema_real_eip !56
  %608 = trunc i8 %607 to i1, !mcsema_real_eip !56
  %609 = zext i1 %608 to i8, !mcsema_real_eip !56
  %610 = xor i8 %609, 1, !mcsema_real_eip !56
  %611 = trunc i8 %610 to i1, !mcsema_real_eip !56
  %612 = zext i1 %611 to i8, !mcsema_real_eip !56
  store volatile i8 %612, i8* %PF_write, !mcsema_real_eip !56
  %613 = icmp eq i32 %600, 0, !mcsema_real_eip !56
  %614 = zext i1 %613 to i8, !mcsema_real_eip !56
  store volatile i8 %614, i8* %ZF_write, !mcsema_real_eip !56
  %615 = lshr i32 %600, 31, !mcsema_real_eip !56
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !56
  %617 = zext i1 %616 to i8, !mcsema_real_eip !56
  %618 = trunc i8 %617 to i1, !mcsema_real_eip !56
  %619 = zext i1 %618 to i8, !mcsema_real_eip !56
  store volatile i8 %619, i8* %SF_write, !mcsema_real_eip !56
  %620 = icmp ult i32 %596, %599, !mcsema_real_eip !56
  %621 = zext i1 %620 to i8, !mcsema_real_eip !56
  store volatile i8 %621, i8* %CF_write, !mcsema_real_eip !56
  %622 = xor i32 %596, %599, !mcsema_real_eip !56
  %623 = xor i32 %596, %600, !mcsema_real_eip !56
  %624 = and i32 %622, %623, !mcsema_real_eip !56
  %625 = lshr i32 %624, 31, !mcsema_real_eip !56
  %626 = trunc i32 %625 to i1, !mcsema_real_eip !56
  %627 = zext i1 %626 to i8, !mcsema_real_eip !56
  %628 = trunc i8 %627 to i1, !mcsema_real_eip !56
  %629 = zext i1 %628 to i8, !mcsema_real_eip !56
  store volatile i8 %629, i8* %OF_write, !mcsema_real_eip !56
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !57
  %630 = load i8, i8* %SF_read, !mcsema_real_eip !57
  %631 = trunc i8 %630 to i1, !mcsema_real_eip !57
  %632 = load i8, i8* %OF_read, !mcsema_real_eip !57
  %633 = trunc i8 %632 to i1, !mcsema_real_eip !57
  %634 = icmp eq i1 %631, %633, !mcsema_real_eip !57
  br i1 %634, label %block_f5, label %block_d6, !mcsema_real_eip !57

block_d6:                                         ; preds = %block_ca
  store volatile i64 214, i64* %EIP_write, !mcsema_real_eip !58
  %635 = load i64, i64* %RBP_read, !mcsema_real_eip !58
  %636 = add i64 %635, -96, !mcsema_real_eip !58
  %637 = inttoptr i64 %636 to i64*, !mcsema_real_eip !58
  %638 = ptrtoint i64* %637 to i64, !mcsema_real_eip !58
  %639 = inttoptr i64 %638 to i32*, !mcsema_real_eip !58
  %640 = load i32, i32* %639, !mcsema_real_eip !58
  %641 = sext i32 %640 to i64, !mcsema_real_eip !58
  store volatile i64 %641, i64* %RAX_write, !mcsema_real_eip !58
  store volatile i64 218, i64* %EIP_write, !mcsema_real_eip !59
  %642 = load i64, i64* %RBP_read, !mcsema_real_eip !59
  %643 = add i64 %642, -64, !mcsema_real_eip !59
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !59
  %645 = load i64, i64* %644, !mcsema_real_eip !59
  store volatile i64 %645, i64* %RCX_write, !mcsema_real_eip !59
  store volatile i64 222, i64* %EIP_write, !mcsema_real_eip !60
  %646 = load i64, i64* %RCX_read, !mcsema_real_eip !60
  %647 = add i64 %646, 0, !mcsema_real_eip !60
  %648 = load i64, i64* %RAX_read, !mcsema_real_eip !60
  %649 = mul i64 %648, 4, !mcsema_real_eip !60
  %650 = add i64 %647, %649, !mcsema_real_eip !60
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !60
  %652 = ptrtoint i64* %651 to i64, !mcsema_real_eip !60
  %653 = inttoptr i64 %652 to i32*, !mcsema_real_eip !60
  %654 = load i32, i32* %653, !mcsema_real_eip !60
  %655 = zext i32 %654 to i64, !mcsema_real_eip !60
  store volatile i64 %655, i64* %EDX_write, !mcsema_real_eip !60
  store volatile i64 225, i64* %EIP_write, !mcsema_real_eip !61
  %656 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %657 = add i64 %656, -84, !mcsema_real_eip !61
  %658 = inttoptr i64 %657 to i64*, !mcsema_real_eip !61
  %659 = ptrtoint i64* %658 to i64, !mcsema_real_eip !61
  %660 = inttoptr i64 %659 to i32*, !mcsema_real_eip !61
  %661 = load i32, i32* %660, !mcsema_real_eip !61
  %662 = load i32, i32* %EDX_read, !mcsema_real_eip !61
  %663 = add i32 %662, %661, !mcsema_real_eip !61
  %664 = xor i32 %663, %661, !mcsema_real_eip !61
  %665 = xor i32 %664, %662, !mcsema_real_eip !61
  %666 = and i32 %665, 16, !mcsema_real_eip !61
  %667 = icmp ne i32 %666, 0, !mcsema_real_eip !61
  %668 = zext i1 %667 to i8, !mcsema_real_eip !61
  store volatile i8 %668, i8* %AF_write, !mcsema_real_eip !61
  %669 = lshr i32 %663, 31, !mcsema_real_eip !61
  %670 = trunc i32 %669 to i1, !mcsema_real_eip !61
  %671 = zext i1 %670 to i8, !mcsema_real_eip !61
  %672 = trunc i8 %671 to i1, !mcsema_real_eip !61
  %673 = zext i1 %672 to i8, !mcsema_real_eip !61
  store volatile i8 %673, i8* %SF_write, !mcsema_real_eip !61
  %674 = icmp eq i32 %663, 0, !mcsema_real_eip !61
  %675 = zext i1 %674 to i8, !mcsema_real_eip !61
  store volatile i8 %675, i8* %ZF_write, !mcsema_real_eip !61
  %676 = xor i32 %661, %662, !mcsema_real_eip !61
  %677 = xor i32 %676, -1, !mcsema_real_eip !61
  %678 = xor i32 %661, %663, !mcsema_real_eip !61
  %679 = and i32 %677, %678, !mcsema_real_eip !61
  %680 = lshr i32 %679, 31, !mcsema_real_eip !61
  %681 = and i32 %680, 1, !mcsema_real_eip !61
  %682 = trunc i32 %681 to i1, !mcsema_real_eip !61
  %683 = zext i1 %682 to i8, !mcsema_real_eip !61
  %684 = trunc i8 %683 to i1, !mcsema_real_eip !61
  %685 = zext i1 %684 to i8, !mcsema_real_eip !61
  store volatile i8 %685, i8* %OF_write, !mcsema_real_eip !61
  %686 = trunc i32 %663 to i8, !mcsema_real_eip !61
  %687 = call i8 @llvm.ctpop.i8(i8 %686), !mcsema_real_eip !61
  %688 = trunc i8 %687 to i1, !mcsema_real_eip !61
  %689 = zext i1 %688 to i8, !mcsema_real_eip !61
  %690 = xor i8 %689, 1, !mcsema_real_eip !61
  %691 = trunc i8 %690 to i1, !mcsema_real_eip !61
  %692 = zext i1 %691 to i8, !mcsema_real_eip !61
  store volatile i8 %692, i8* %PF_write, !mcsema_real_eip !61
  %693 = icmp ult i32 %663, %661, !mcsema_real_eip !61
  %694 = zext i1 %693 to i8, !mcsema_real_eip !61
  store volatile i8 %694, i8* %CF_write, !mcsema_real_eip !61
  %695 = zext i32 %663 to i64, !mcsema_real_eip !61
  store volatile i64 %695, i64* %EDX_write, !mcsema_real_eip !61
  store volatile i64 228, i64* %EIP_write, !mcsema_real_eip !62
  %696 = load i64, i64* %RBP_read, !mcsema_real_eip !62
  %697 = add i64 %696, -84, !mcsema_real_eip !62
  %698 = inttoptr i64 %697 to i64*, !mcsema_real_eip !62
  %699 = load i32, i32* %EDX_read, !mcsema_real_eip !62
  %700 = ptrtoint i64* %698 to i64, !mcsema_real_eip !62
  %701 = inttoptr i64 %700 to i32*, !mcsema_real_eip !62
  store i32 %699, i32* %701, !mcsema_real_eip !62
  store volatile i64 231, i64* %EIP_write, !mcsema_real_eip !63
  %702 = load i64, i64* %RBP_read, !mcsema_real_eip !63
  %703 = add i64 %702, -96, !mcsema_real_eip !63
  %704 = inttoptr i64 %703 to i64*, !mcsema_real_eip !63
  %705 = ptrtoint i64* %704 to i64, !mcsema_real_eip !63
  %706 = inttoptr i64 %705 to i32*, !mcsema_real_eip !63
  %707 = load i32, i32* %706, !mcsema_real_eip !63
  %708 = zext i32 %707 to i64, !mcsema_real_eip !63
  store volatile i64 %708, i64* %EAX_write, !mcsema_real_eip !63
  store volatile i64 234, i64* %EIP_write, !mcsema_real_eip !64
  %709 = load i32, i32* %EAX_read, !mcsema_real_eip !64
  %710 = add i32 1, %709, !mcsema_real_eip !64
  %711 = xor i32 %710, %709, !mcsema_real_eip !64
  %712 = xor i32 %711, 1, !mcsema_real_eip !64
  %713 = and i32 %712, 16, !mcsema_real_eip !64
  %714 = icmp ne i32 %713, 0, !mcsema_real_eip !64
  %715 = zext i1 %714 to i8, !mcsema_real_eip !64
  store volatile i8 %715, i8* %AF_write, !mcsema_real_eip !64
  %716 = lshr i32 %710, 31, !mcsema_real_eip !64
  %717 = trunc i32 %716 to i1, !mcsema_real_eip !64
  %718 = zext i1 %717 to i8, !mcsema_real_eip !64
  %719 = trunc i8 %718 to i1, !mcsema_real_eip !64
  %720 = zext i1 %719 to i8, !mcsema_real_eip !64
  store volatile i8 %720, i8* %SF_write, !mcsema_real_eip !64
  %721 = icmp eq i32 %710, 0, !mcsema_real_eip !64
  %722 = zext i1 %721 to i8, !mcsema_real_eip !64
  store volatile i8 %722, i8* %ZF_write, !mcsema_real_eip !64
  %723 = xor i32 %709, 1, !mcsema_real_eip !64
  %724 = xor i32 %723, -1, !mcsema_real_eip !64
  %725 = xor i32 %709, %710, !mcsema_real_eip !64
  %726 = and i32 %724, %725, !mcsema_real_eip !64
  %727 = lshr i32 %726, 31, !mcsema_real_eip !64
  %728 = and i32 %727, 1, !mcsema_real_eip !64
  %729 = trunc i32 %728 to i1, !mcsema_real_eip !64
  %730 = zext i1 %729 to i8, !mcsema_real_eip !64
  %731 = trunc i8 %730 to i1, !mcsema_real_eip !64
  %732 = zext i1 %731 to i8, !mcsema_real_eip !64
  store volatile i8 %732, i8* %OF_write, !mcsema_real_eip !64
  %733 = trunc i32 %710 to i8, !mcsema_real_eip !64
  %734 = call i8 @llvm.ctpop.i8(i8 %733), !mcsema_real_eip !64
  %735 = trunc i8 %734 to i1, !mcsema_real_eip !64
  %736 = zext i1 %735 to i8, !mcsema_real_eip !64
  %737 = xor i8 %736, 1, !mcsema_real_eip !64
  %738 = trunc i8 %737 to i1, !mcsema_real_eip !64
  %739 = zext i1 %738 to i8, !mcsema_real_eip !64
  store volatile i8 %739, i8* %PF_write, !mcsema_real_eip !64
  %740 = icmp ult i32 %710, %709, !mcsema_real_eip !64
  %741 = zext i1 %740 to i8, !mcsema_real_eip !64
  store volatile i8 %741, i8* %CF_write, !mcsema_real_eip !64
  %742 = zext i32 %710 to i64, !mcsema_real_eip !64
  store volatile i64 %742, i64* %EAX_write, !mcsema_real_eip !64
  store volatile i64 237, i64* %EIP_write, !mcsema_real_eip !65
  %743 = load i64, i64* %RBP_read, !mcsema_real_eip !65
  %744 = add i64 %743, -96, !mcsema_real_eip !65
  %745 = inttoptr i64 %744 to i64*, !mcsema_real_eip !65
  %746 = load i32, i32* %EAX_read, !mcsema_real_eip !65
  %747 = ptrtoint i64* %745 to i64, !mcsema_real_eip !65
  %748 = inttoptr i64 %747 to i32*, !mcsema_real_eip !65
  store i32 %746, i32* %748, !mcsema_real_eip !65
  store volatile i64 240, i64* %EIP_write, !mcsema_real_eip !66
  br label %block_ca, !mcsema_real_eip !66

block_f5:                                         ; preds = %block_ca
  store volatile i64 245, i64* %EIP_write, !mcsema_real_eip !67
  %749 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %750 = add i64 %749, -72, !mcsema_real_eip !67
  %751 = inttoptr i64 %750 to i64*, !mcsema_real_eip !67
  %752 = load i64, i64* %751, !mcsema_real_eip !67
  store volatile i64 %752, i64* %RAX_write, !mcsema_real_eip !67
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !68
  %753 = load i64, i64* %RAX_read, !mcsema_real_eip !68
  %754 = add i64 %753, 0, !mcsema_real_eip !68
  %755 = inttoptr i64 %754 to i64*, !mcsema_real_eip !68
  %756 = ptrtoint i64* %755 to i64, !mcsema_real_eip !68
  %757 = inttoptr i64 %756 to i32*, !mcsema_real_eip !68
  %758 = load i32, i32* %757, !mcsema_real_eip !68
  %759 = zext i32 %758 to i64, !mcsema_real_eip !68
  store volatile i64 %759, i64* %ECX_write, !mcsema_real_eip !68
  store volatile i64 251, i64* %EIP_write, !mcsema_real_eip !69
  %760 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %761 = add i64 %760, -84, !mcsema_real_eip !69
  %762 = inttoptr i64 %761 to i64*, !mcsema_real_eip !69
  %763 = ptrtoint i64* %762 to i64, !mcsema_real_eip !69
  %764 = inttoptr i64 %763 to i32*, !mcsema_real_eip !69
  %765 = load i32, i32* %764, !mcsema_real_eip !69
  %766 = load i32, i32* %ECX_read, !mcsema_real_eip !69
  %767 = add i32 %766, %765, !mcsema_real_eip !69
  %768 = xor i32 %767, %765, !mcsema_real_eip !69
  %769 = xor i32 %768, %766, !mcsema_real_eip !69
  %770 = and i32 %769, 16, !mcsema_real_eip !69
  %771 = icmp ne i32 %770, 0, !mcsema_real_eip !69
  %772 = zext i1 %771 to i8, !mcsema_real_eip !69
  store volatile i8 %772, i8* %AF_write, !mcsema_real_eip !69
  %773 = lshr i32 %767, 31, !mcsema_real_eip !69
  %774 = trunc i32 %773 to i1, !mcsema_real_eip !69
  %775 = zext i1 %774 to i8, !mcsema_real_eip !69
  %776 = trunc i8 %775 to i1, !mcsema_real_eip !69
  %777 = zext i1 %776 to i8, !mcsema_real_eip !69
  store volatile i8 %777, i8* %SF_write, !mcsema_real_eip !69
  %778 = icmp eq i32 %767, 0, !mcsema_real_eip !69
  %779 = zext i1 %778 to i8, !mcsema_real_eip !69
  store volatile i8 %779, i8* %ZF_write, !mcsema_real_eip !69
  %780 = xor i32 %765, %766, !mcsema_real_eip !69
  %781 = xor i32 %780, -1, !mcsema_real_eip !69
  %782 = xor i32 %765, %767, !mcsema_real_eip !69
  %783 = and i32 %781, %782, !mcsema_real_eip !69
  %784 = lshr i32 %783, 31, !mcsema_real_eip !69
  %785 = and i32 %784, 1, !mcsema_real_eip !69
  %786 = trunc i32 %785 to i1, !mcsema_real_eip !69
  %787 = zext i1 %786 to i8, !mcsema_real_eip !69
  %788 = trunc i8 %787 to i1, !mcsema_real_eip !69
  %789 = zext i1 %788 to i8, !mcsema_real_eip !69
  store volatile i8 %789, i8* %OF_write, !mcsema_real_eip !69
  %790 = trunc i32 %767 to i8, !mcsema_real_eip !69
  %791 = call i8 @llvm.ctpop.i8(i8 %790), !mcsema_real_eip !69
  %792 = trunc i8 %791 to i1, !mcsema_real_eip !69
  %793 = zext i1 %792 to i8, !mcsema_real_eip !69
  %794 = xor i8 %793, 1, !mcsema_real_eip !69
  %795 = trunc i8 %794 to i1, !mcsema_real_eip !69
  %796 = zext i1 %795 to i8, !mcsema_real_eip !69
  store volatile i8 %796, i8* %PF_write, !mcsema_real_eip !69
  %797 = icmp ult i32 %767, %765, !mcsema_real_eip !69
  %798 = zext i1 %797 to i8, !mcsema_real_eip !69
  store volatile i8 %798, i8* %CF_write, !mcsema_real_eip !69
  %799 = zext i32 %767 to i64, !mcsema_real_eip !69
  store volatile i64 %799, i64* %ECX_write, !mcsema_real_eip !69
  store volatile i64 254, i64* %EIP_write, !mcsema_real_eip !70
  %800 = load i64, i64* %RBP_read, !mcsema_real_eip !70
  %801 = add i64 %800, -84, !mcsema_real_eip !70
  %802 = inttoptr i64 %801 to i64*, !mcsema_real_eip !70
  %803 = load i32, i32* %ECX_read, !mcsema_real_eip !70
  %804 = ptrtoint i64* %802 to i64, !mcsema_real_eip !70
  %805 = inttoptr i64 %804 to i32*, !mcsema_real_eip !70
  store i32 %803, i32* %805, !mcsema_real_eip !70
  store volatile i64 257, i64* %EIP_write, !mcsema_real_eip !71
  %806 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %807 = add i64 %806, -100, !mcsema_real_eip !71
  %808 = inttoptr i64 %807 to i64*, !mcsema_real_eip !71
  %809 = ptrtoint i64* %808 to i64, !mcsema_real_eip !71
  %810 = inttoptr i64 %809 to i32*, !mcsema_real_eip !71
  store i32 0, i32* %810, !mcsema_real_eip !71
  br label %block_108, !mcsema_real_eip !72

block_108:                                        ; preds = %block_114, %block_f5
  store volatile i64 264, i64* %EIP_write, !mcsema_real_eip !72
  %811 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %812 = add i64 %811, -100, !mcsema_real_eip !72
  %813 = inttoptr i64 %812 to i64*, !mcsema_real_eip !72
  %814 = ptrtoint i64* %813 to i64, !mcsema_real_eip !72
  %815 = inttoptr i64 %814 to i32*, !mcsema_real_eip !72
  %816 = load i32, i32* %815, !mcsema_real_eip !72
  %817 = zext i32 %816 to i64, !mcsema_real_eip !72
  store volatile i64 %817, i64* %EAX_write, !mcsema_real_eip !72
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !73
  %818 = load i64, i64* %RBP_read, !mcsema_real_eip !73
  %819 = add i64 %818, -48, !mcsema_real_eip !73
  %820 = inttoptr i64 %819 to i64*, !mcsema_real_eip !73
  %821 = load i32, i32* %EAX_read, !mcsema_real_eip !73
  %822 = ptrtoint i64* %820 to i64, !mcsema_real_eip !73
  %823 = inttoptr i64 %822 to i32*, !mcsema_real_eip !73
  %824 = load i32, i32* %823, !mcsema_real_eip !73
  %825 = sub i32 %821, %824, !mcsema_real_eip !73
  %826 = xor i32 %825, %821, !mcsema_real_eip !73
  %827 = xor i32 %826, %824, !mcsema_real_eip !73
  %828 = and i32 %827, 16, !mcsema_real_eip !73
  %829 = icmp ne i32 %828, 0, !mcsema_real_eip !73
  %830 = zext i1 %829 to i8, !mcsema_real_eip !73
  store volatile i8 %830, i8* %AF_write, !mcsema_real_eip !73
  %831 = trunc i32 %825 to i8, !mcsema_real_eip !73
  %832 = call i8 @llvm.ctpop.i8(i8 %831), !mcsema_real_eip !73
  %833 = trunc i8 %832 to i1, !mcsema_real_eip !73
  %834 = zext i1 %833 to i8, !mcsema_real_eip !73
  %835 = xor i8 %834, 1, !mcsema_real_eip !73
  %836 = trunc i8 %835 to i1, !mcsema_real_eip !73
  %837 = zext i1 %836 to i8, !mcsema_real_eip !73
  store volatile i8 %837, i8* %PF_write, !mcsema_real_eip !73
  %838 = icmp eq i32 %825, 0, !mcsema_real_eip !73
  %839 = zext i1 %838 to i8, !mcsema_real_eip !73
  store volatile i8 %839, i8* %ZF_write, !mcsema_real_eip !73
  %840 = lshr i32 %825, 31, !mcsema_real_eip !73
  %841 = trunc i32 %840 to i1, !mcsema_real_eip !73
  %842 = zext i1 %841 to i8, !mcsema_real_eip !73
  %843 = trunc i8 %842 to i1, !mcsema_real_eip !73
  %844 = zext i1 %843 to i8, !mcsema_real_eip !73
  store volatile i8 %844, i8* %SF_write, !mcsema_real_eip !73
  %845 = icmp ult i32 %821, %824, !mcsema_real_eip !73
  %846 = zext i1 %845 to i8, !mcsema_real_eip !73
  store volatile i8 %846, i8* %CF_write, !mcsema_real_eip !73
  %847 = xor i32 %821, %824, !mcsema_real_eip !73
  %848 = xor i32 %821, %825, !mcsema_real_eip !73
  %849 = and i32 %847, %848, !mcsema_real_eip !73
  %850 = lshr i32 %849, 31, !mcsema_real_eip !73
  %851 = trunc i32 %850 to i1, !mcsema_real_eip !73
  %852 = zext i1 %851 to i8, !mcsema_real_eip !73
  %853 = trunc i8 %852 to i1, !mcsema_real_eip !73
  %854 = zext i1 %853 to i8, !mcsema_real_eip !73
  store volatile i8 %854, i8* %OF_write, !mcsema_real_eip !73
  store volatile i64 270, i64* %EIP_write, !mcsema_real_eip !74
  %855 = load i8, i8* %SF_read, !mcsema_real_eip !74
  %856 = trunc i8 %855 to i1, !mcsema_real_eip !74
  %857 = load i8, i8* %OF_read, !mcsema_real_eip !74
  %858 = trunc i8 %857 to i1, !mcsema_real_eip !74
  %859 = icmp eq i1 %856, %858, !mcsema_real_eip !74
  br i1 %859, label %block_133, label %block_114, !mcsema_real_eip !74

block_114:                                        ; preds = %block_108
  store volatile i64 276, i64* %EIP_write, !mcsema_real_eip !75
  %860 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %861 = add i64 %860, -100, !mcsema_real_eip !75
  %862 = inttoptr i64 %861 to i64*, !mcsema_real_eip !75
  %863 = ptrtoint i64* %862 to i64, !mcsema_real_eip !75
  %864 = inttoptr i64 %863 to i32*, !mcsema_real_eip !75
  %865 = load i32, i32* %864, !mcsema_real_eip !75
  %866 = sext i32 %865 to i64, !mcsema_real_eip !75
  store volatile i64 %866, i64* %RAX_write, !mcsema_real_eip !75
  store volatile i64 280, i64* %EIP_write, !mcsema_real_eip !76
  %867 = load i64, i64* %RBP_read, !mcsema_real_eip !76
  %868 = add i64 %867, -80, !mcsema_real_eip !76
  %869 = inttoptr i64 %868 to i64*, !mcsema_real_eip !76
  %870 = load i64, i64* %869, !mcsema_real_eip !76
  store volatile i64 %870, i64* %RCX_write, !mcsema_real_eip !76
  store volatile i64 284, i64* %EIP_write, !mcsema_real_eip !77
  %871 = load i64, i64* %RCX_read, !mcsema_real_eip !77
  %872 = add i64 %871, 0, !mcsema_real_eip !77
  %873 = load i64, i64* %RAX_read, !mcsema_real_eip !77
  %874 = mul i64 %873, 4, !mcsema_real_eip !77
  %875 = add i64 %872, %874, !mcsema_real_eip !77
  %876 = inttoptr i64 %875 to i64*, !mcsema_real_eip !77
  %877 = ptrtoint i64* %876 to i64, !mcsema_real_eip !77
  %878 = inttoptr i64 %877 to i32*, !mcsema_real_eip !77
  %879 = load i32, i32* %878, !mcsema_real_eip !77
  %880 = zext i32 %879 to i64, !mcsema_real_eip !77
  store volatile i64 %880, i64* %EDX_write, !mcsema_real_eip !77
  store volatile i64 287, i64* %EIP_write, !mcsema_real_eip !78
  %881 = load i64, i64* %RBP_read, !mcsema_real_eip !78
  %882 = add i64 %881, -84, !mcsema_real_eip !78
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !78
  %884 = ptrtoint i64* %883 to i64, !mcsema_real_eip !78
  %885 = inttoptr i64 %884 to i32*, !mcsema_real_eip !78
  %886 = load i32, i32* %885, !mcsema_real_eip !78
  %887 = load i32, i32* %EDX_read, !mcsema_real_eip !78
  %888 = add i32 %887, %886, !mcsema_real_eip !78
  %889 = xor i32 %888, %886, !mcsema_real_eip !78
  %890 = xor i32 %889, %887, !mcsema_real_eip !78
  %891 = and i32 %890, 16, !mcsema_real_eip !78
  %892 = icmp ne i32 %891, 0, !mcsema_real_eip !78
  %893 = zext i1 %892 to i8, !mcsema_real_eip !78
  store volatile i8 %893, i8* %AF_write, !mcsema_real_eip !78
  %894 = lshr i32 %888, 31, !mcsema_real_eip !78
  %895 = trunc i32 %894 to i1, !mcsema_real_eip !78
  %896 = zext i1 %895 to i8, !mcsema_real_eip !78
  %897 = trunc i8 %896 to i1, !mcsema_real_eip !78
  %898 = zext i1 %897 to i8, !mcsema_real_eip !78
  store volatile i8 %898, i8* %SF_write, !mcsema_real_eip !78
  %899 = icmp eq i32 %888, 0, !mcsema_real_eip !78
  %900 = zext i1 %899 to i8, !mcsema_real_eip !78
  store volatile i8 %900, i8* %ZF_write, !mcsema_real_eip !78
  %901 = xor i32 %886, %887, !mcsema_real_eip !78
  %902 = xor i32 %901, -1, !mcsema_real_eip !78
  %903 = xor i32 %886, %888, !mcsema_real_eip !78
  %904 = and i32 %902, %903, !mcsema_real_eip !78
  %905 = lshr i32 %904, 31, !mcsema_real_eip !78
  %906 = and i32 %905, 1, !mcsema_real_eip !78
  %907 = trunc i32 %906 to i1, !mcsema_real_eip !78
  %908 = zext i1 %907 to i8, !mcsema_real_eip !78
  %909 = trunc i8 %908 to i1, !mcsema_real_eip !78
  %910 = zext i1 %909 to i8, !mcsema_real_eip !78
  store volatile i8 %910, i8* %OF_write, !mcsema_real_eip !78
  %911 = trunc i32 %888 to i8, !mcsema_real_eip !78
  %912 = call i8 @llvm.ctpop.i8(i8 %911), !mcsema_real_eip !78
  %913 = trunc i8 %912 to i1, !mcsema_real_eip !78
  %914 = zext i1 %913 to i8, !mcsema_real_eip !78
  %915 = xor i8 %914, 1, !mcsema_real_eip !78
  %916 = trunc i8 %915 to i1, !mcsema_real_eip !78
  %917 = zext i1 %916 to i8, !mcsema_real_eip !78
  store volatile i8 %917, i8* %PF_write, !mcsema_real_eip !78
  %918 = icmp ult i32 %888, %886, !mcsema_real_eip !78
  %919 = zext i1 %918 to i8, !mcsema_real_eip !78
  store volatile i8 %919, i8* %CF_write, !mcsema_real_eip !78
  %920 = zext i32 %888 to i64, !mcsema_real_eip !78
  store volatile i64 %920, i64* %EDX_write, !mcsema_real_eip !78
  store volatile i64 290, i64* %EIP_write, !mcsema_real_eip !79
  %921 = load i64, i64* %RBP_read, !mcsema_real_eip !79
  %922 = add i64 %921, -84, !mcsema_real_eip !79
  %923 = inttoptr i64 %922 to i64*, !mcsema_real_eip !79
  %924 = load i32, i32* %EDX_read, !mcsema_real_eip !79
  %925 = ptrtoint i64* %923 to i64, !mcsema_real_eip !79
  %926 = inttoptr i64 %925 to i32*, !mcsema_real_eip !79
  store i32 %924, i32* %926, !mcsema_real_eip !79
  store volatile i64 293, i64* %EIP_write, !mcsema_real_eip !80
  %927 = load i64, i64* %RBP_read, !mcsema_real_eip !80
  %928 = add i64 %927, -100, !mcsema_real_eip !80
  %929 = inttoptr i64 %928 to i64*, !mcsema_real_eip !80
  %930 = ptrtoint i64* %929 to i64, !mcsema_real_eip !80
  %931 = inttoptr i64 %930 to i32*, !mcsema_real_eip !80
  %932 = load i32, i32* %931, !mcsema_real_eip !80
  %933 = zext i32 %932 to i64, !mcsema_real_eip !80
  store volatile i64 %933, i64* %EAX_write, !mcsema_real_eip !80
  store volatile i64 296, i64* %EIP_write, !mcsema_real_eip !81
  %934 = load i32, i32* %EAX_read, !mcsema_real_eip !81
  %935 = add i32 1, %934, !mcsema_real_eip !81
  %936 = xor i32 %935, %934, !mcsema_real_eip !81
  %937 = xor i32 %936, 1, !mcsema_real_eip !81
  %938 = and i32 %937, 16, !mcsema_real_eip !81
  %939 = icmp ne i32 %938, 0, !mcsema_real_eip !81
  %940 = zext i1 %939 to i8, !mcsema_real_eip !81
  store volatile i8 %940, i8* %AF_write, !mcsema_real_eip !81
  %941 = lshr i32 %935, 31, !mcsema_real_eip !81
  %942 = trunc i32 %941 to i1, !mcsema_real_eip !81
  %943 = zext i1 %942 to i8, !mcsema_real_eip !81
  %944 = trunc i8 %943 to i1, !mcsema_real_eip !81
  %945 = zext i1 %944 to i8, !mcsema_real_eip !81
  store volatile i8 %945, i8* %SF_write, !mcsema_real_eip !81
  %946 = icmp eq i32 %935, 0, !mcsema_real_eip !81
  %947 = zext i1 %946 to i8, !mcsema_real_eip !81
  store volatile i8 %947, i8* %ZF_write, !mcsema_real_eip !81
  %948 = xor i32 %934, 1, !mcsema_real_eip !81
  %949 = xor i32 %948, -1, !mcsema_real_eip !81
  %950 = xor i32 %934, %935, !mcsema_real_eip !81
  %951 = and i32 %949, %950, !mcsema_real_eip !81
  %952 = lshr i32 %951, 31, !mcsema_real_eip !81
  %953 = and i32 %952, 1, !mcsema_real_eip !81
  %954 = trunc i32 %953 to i1, !mcsema_real_eip !81
  %955 = zext i1 %954 to i8, !mcsema_real_eip !81
  %956 = trunc i8 %955 to i1, !mcsema_real_eip !81
  %957 = zext i1 %956 to i8, !mcsema_real_eip !81
  store volatile i8 %957, i8* %OF_write, !mcsema_real_eip !81
  %958 = trunc i32 %935 to i8, !mcsema_real_eip !81
  %959 = call i8 @llvm.ctpop.i8(i8 %958), !mcsema_real_eip !81
  %960 = trunc i8 %959 to i1, !mcsema_real_eip !81
  %961 = zext i1 %960 to i8, !mcsema_real_eip !81
  %962 = xor i8 %961, 1, !mcsema_real_eip !81
  %963 = trunc i8 %962 to i1, !mcsema_real_eip !81
  %964 = zext i1 %963 to i8, !mcsema_real_eip !81
  store volatile i8 %964, i8* %PF_write, !mcsema_real_eip !81
  %965 = icmp ult i32 %935, %934, !mcsema_real_eip !81
  %966 = zext i1 %965 to i8, !mcsema_real_eip !81
  store volatile i8 %966, i8* %CF_write, !mcsema_real_eip !81
  %967 = zext i32 %935 to i64, !mcsema_real_eip !81
  store volatile i64 %967, i64* %EAX_write, !mcsema_real_eip !81
  store volatile i64 299, i64* %EIP_write, !mcsema_real_eip !82
  %968 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %969 = add i64 %968, -100, !mcsema_real_eip !82
  %970 = inttoptr i64 %969 to i64*, !mcsema_real_eip !82
  %971 = load i32, i32* %EAX_read, !mcsema_real_eip !82
  %972 = ptrtoint i64* %970 to i64, !mcsema_real_eip !82
  %973 = inttoptr i64 %972 to i32*, !mcsema_real_eip !82
  store i32 %971, i32* %973, !mcsema_real_eip !82
  store volatile i64 302, i64* %EIP_write, !mcsema_real_eip !83
  br label %block_108, !mcsema_real_eip !83

block_133:                                        ; preds = %block_108
  store volatile i64 307, i64* %EIP_write, !mcsema_real_eip !84
  %974 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %975 = add i64 %974, -84, !mcsema_real_eip !84
  %976 = inttoptr i64 %975 to i64*, !mcsema_real_eip !84
  %977 = ptrtoint i64* %976 to i64, !mcsema_real_eip !84
  %978 = inttoptr i64 %977 to i32*, !mcsema_real_eip !84
  %979 = load i32, i32* %978, !mcsema_real_eip !84
  %980 = zext i32 %979 to i64, !mcsema_real_eip !84
  store volatile i64 %980, i64* %EAX_write, !mcsema_real_eip !84
  store volatile i64 310, i64* %EIP_write, !mcsema_real_eip !85
  %981 = load i64, i64* %RSP_read, !mcsema_real_eip !85
  %982 = inttoptr i64 %981 to i64*, !mcsema_real_eip !85
  %983 = load i64, i64* %982, !mcsema_real_eip !85
  store volatile i64 %983, i64* %RBX_write, !mcsema_real_eip !85
  %984 = add i64 %981, 8, !mcsema_real_eip !85
  store volatile i64 %984, i64* %RSP_write, !mcsema_real_eip !85
  store volatile i64 311, i64* %EIP_write, !mcsema_real_eip !86
  %985 = load i64, i64* %RSP_read, !mcsema_real_eip !86
  %986 = inttoptr i64 %985 to i64*, !mcsema_real_eip !86
  %987 = load i64, i64* %986, !mcsema_real_eip !86
  store volatile i64 %987, i64* %RBP_write, !mcsema_real_eip !86
  %988 = add i64 %985, 8, !mcsema_real_eip !86
  store volatile i64 %988, i64* %RSP_write, !mcsema_real_eip !86
  store volatile i64 312, i64* %EIP_write, !mcsema_real_eip !87
  %989 = load i64, i64* %RSP_read, !mcsema_real_eip !87
  %990 = add i64 %989, 8, !mcsema_real_eip !87
  %991 = inttoptr i64 %989 to i64*, !mcsema_real_eip !87
  %992 = load i64, i64* %991, !mcsema_real_eip !87
  store volatile i64 %992, i64* %RIP_write, !mcsema_real_eip !87
  store volatile i64 %990, i64* %RSP_write, !mcsema_real_eip !87
  ret void, !mcsema_real_eip !87
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !88
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !88
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !88
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !88
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !88
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !88
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !88
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !88
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !88
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !88
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !88
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !88
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !88
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !88
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !88
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !88
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !88
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !88
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !88
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !88
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !88
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !88
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !88
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !88
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !88
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !88
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !88
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !88
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !88
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !88
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !88
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !88
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !88
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !88
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !88
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !88
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !88
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !88
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !88
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !88
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !88
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !88
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !88
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !88
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !88
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !88
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !88
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !88
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !88
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !88
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !88
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !88
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !88
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !88
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !88
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !88
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !88
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !88
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !88
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !88
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !88
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !88
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !88
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !88
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !88
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !88
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !88
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !88
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !88
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !88
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !88
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !88
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !88
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !88
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !88
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !88
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !88
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !88
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !88
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !88
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !88
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !88
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !88
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !88
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !88
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !88
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !88
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !88
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !88
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !88
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !88
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !88
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !88
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !88
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !88
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !88
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !88
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !88
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !88
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !88
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !88
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !88
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !88
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !88
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !88
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !88
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !88
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !88
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !88
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !88
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !88
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !88
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !88
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !88
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !88
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !88
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !88
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !88
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !88
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !88
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !88
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !88
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !88
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !88
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !88
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !88
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !88
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !88
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !88
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !88
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !88
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !88
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !88
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !88
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !88
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !88
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !88
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !88
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !88
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !88
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !88
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !88
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !88
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !88
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !88
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !88
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !88
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !88
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !88
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !88
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !88
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !88
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !88
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !88
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !88
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !88
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !88
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !88
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !88
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !88
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !88
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !88
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !88
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !88
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !88
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !88
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !88
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !88
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !88
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !88
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !88
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !88
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !88
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !88
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !88
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !88
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !88
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !88
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !88
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !88
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !88
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !88
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !88
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !88
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !88
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !88
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !88
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !88
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !88
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !88
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !88
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !88
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !88
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !88
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !88
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !88
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !88
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !88
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !88
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !88
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !88
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !88
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !88
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !88
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !88
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !88
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !88
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !88
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !88
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !88
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !88
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !88
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !88
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !88
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !88
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !88
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !88
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !88
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !88
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !88
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !88
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !88
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !88
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !88
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !88
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !88
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !88
  br label %block_140, !mcsema_real_eip !88

block_140:                                        ; preds = %entry
  store volatile i64 320, i64* %EIP_write, !mcsema_real_eip !88
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !88
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !88
  %3 = sub i64 %2, 8, !mcsema_real_eip !88
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !88
  store i64 %1, i64* %4, !mcsema_real_eip !88
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !88
  store volatile i64 321, i64* %EIP_write, !mcsema_real_eip !89
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !89
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !89
  store volatile i64 324, i64* %EIP_write, !mcsema_real_eip !90
  %6 = load i64, i64* %R14_read, !mcsema_real_eip !90
  %7 = load i64, i64* %RSP_read, !mcsema_real_eip !90
  %8 = sub i64 %7, 8, !mcsema_real_eip !90
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !90
  store i64 %6, i64* %9, !mcsema_real_eip !90
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !90
  store volatile i64 326, i64* %EIP_write, !mcsema_real_eip !91
  %10 = load i64, i64* %RBX_read, !mcsema_real_eip !91
  %11 = load i64, i64* %RSP_read, !mcsema_real_eip !91
  %12 = sub i64 %11, 8, !mcsema_real_eip !91
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !91
  store i64 %10, i64* %13, !mcsema_real_eip !91
  store volatile i64 %12, i64* %RSP_write, !mcsema_real_eip !91
  store volatile i64 327, i64* %EIP_write, !mcsema_real_eip !92
  %14 = load i64, i64* %RSP_read, !mcsema_real_eip !92
  %15 = sub i64 %14, 160, !mcsema_real_eip !92
  %16 = xor i64 %15, %14, !mcsema_real_eip !92
  %17 = xor i64 %16, 160, !mcsema_real_eip !92
  %18 = and i64 %17, 16, !mcsema_real_eip !92
  %19 = icmp ne i64 %18, 0, !mcsema_real_eip !92
  %20 = zext i1 %19 to i8, !mcsema_real_eip !92
  store volatile i8 %20, i8* %AF_write, !mcsema_real_eip !92
  %21 = trunc i64 %15 to i8, !mcsema_real_eip !92
  %22 = call i8 @llvm.ctpop.i8(i8 %21), !mcsema_real_eip !92
  %23 = trunc i8 %22 to i1, !mcsema_real_eip !92
  %24 = zext i1 %23 to i8, !mcsema_real_eip !92
  %25 = xor i8 %24, 1, !mcsema_real_eip !92
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !92
  %27 = zext i1 %26 to i8, !mcsema_real_eip !92
  store volatile i8 %27, i8* %PF_write, !mcsema_real_eip !92
  %28 = icmp eq i64 %15, 0, !mcsema_real_eip !92
  %29 = zext i1 %28 to i8, !mcsema_real_eip !92
  store volatile i8 %29, i8* %ZF_write, !mcsema_real_eip !92
  %30 = lshr i64 %15, 63, !mcsema_real_eip !92
  %31 = trunc i64 %30 to i1, !mcsema_real_eip !92
  %32 = zext i1 %31 to i8, !mcsema_real_eip !92
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !92
  %34 = zext i1 %33 to i8, !mcsema_real_eip !92
  store volatile i8 %34, i8* %SF_write, !mcsema_real_eip !92
  %35 = icmp ult i64 %14, 160, !mcsema_real_eip !92
  %36 = zext i1 %35 to i8, !mcsema_real_eip !92
  store volatile i8 %36, i8* %CF_write, !mcsema_real_eip !92
  %37 = xor i64 %14, 160, !mcsema_real_eip !92
  %38 = xor i64 %14, %15, !mcsema_real_eip !92
  %39 = and i64 %37, %38, !mcsema_real_eip !92
  %40 = lshr i64 %39, 63, !mcsema_real_eip !92
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !92
  %42 = zext i1 %41 to i8, !mcsema_real_eip !92
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !92
  %44 = zext i1 %43 to i8, !mcsema_real_eip !92
  store volatile i8 %44, i8* %OF_write, !mcsema_real_eip !92
  store volatile i64 %15, i64* %RSP_write, !mcsema_real_eip !92
  store volatile i64 334, i64* %EIP_write, !mcsema_real_eip !93
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %46 = add i64 %45, -20, !mcsema_real_eip !93
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !93
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !93
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %49, !mcsema_real_eip !93
  store volatile i64 341, i64* %EIP_write, !mcsema_real_eip !94
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !94
  %51 = add i64 %50, -24, !mcsema_real_eip !94
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !94
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !94
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !94
  store i32 1, i32* %54, !mcsema_real_eip !94
  store volatile i64 348, i64* %EIP_write, !mcsema_real_eip !95
  %55 = load i64, i64* %RBP_read, !mcsema_real_eip !95
  %56 = add i64 %55, -68, !mcsema_real_eip !95
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !95
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !95
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !95
  store i32 0, i32* %59, !mcsema_real_eip !95
  br label %block_163, !mcsema_real_eip !96

block_163:                                        ; preds = %block_16d, %block_140
  store volatile i64 355, i64* %EIP_write, !mcsema_real_eip !96
  %60 = load i64, i64* %RBP_read, !mcsema_real_eip !96
  %61 = add i64 %60, -68, !mcsema_real_eip !96
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !96
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !96
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !96
  %65 = load i32, i32* %64, !mcsema_real_eip !96
  %66 = sub i32 %65, 10, !mcsema_real_eip !96
  %67 = xor i32 %66, %65, !mcsema_real_eip !96
  %68 = xor i32 %67, 10, !mcsema_real_eip !96
  %69 = and i32 %68, 16, !mcsema_real_eip !96
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !96
  %71 = zext i1 %70 to i8, !mcsema_real_eip !96
  store volatile i8 %71, i8* %AF_write, !mcsema_real_eip !96
  %72 = trunc i32 %66 to i8, !mcsema_real_eip !96
  %73 = call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !96
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !96
  %75 = zext i1 %74 to i8, !mcsema_real_eip !96
  %76 = xor i8 %75, 1, !mcsema_real_eip !96
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !96
  %78 = zext i1 %77 to i8, !mcsema_real_eip !96
  store volatile i8 %78, i8* %PF_write, !mcsema_real_eip !96
  %79 = icmp eq i32 %66, 0, !mcsema_real_eip !96
  %80 = zext i1 %79 to i8, !mcsema_real_eip !96
  store volatile i8 %80, i8* %ZF_write, !mcsema_real_eip !96
  %81 = lshr i32 %66, 31, !mcsema_real_eip !96
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !96
  %83 = zext i1 %82 to i8, !mcsema_real_eip !96
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !96
  %85 = zext i1 %84 to i8, !mcsema_real_eip !96
  store volatile i8 %85, i8* %SF_write, !mcsema_real_eip !96
  %86 = icmp ult i32 %65, 10, !mcsema_real_eip !96
  %87 = zext i1 %86 to i8, !mcsema_real_eip !96
  store volatile i8 %87, i8* %CF_write, !mcsema_real_eip !96
  %88 = xor i32 %65, 10, !mcsema_real_eip !96
  %89 = xor i32 %65, %66, !mcsema_real_eip !96
  %90 = and i32 %88, %89, !mcsema_real_eip !96
  %91 = lshr i32 %90, 31, !mcsema_real_eip !96
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !96
  %93 = zext i1 %92 to i8, !mcsema_real_eip !96
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !96
  %95 = zext i1 %94 to i8, !mcsema_real_eip !96
  store volatile i8 %95, i8* %OF_write, !mcsema_real_eip !96
  store volatile i64 359, i64* %EIP_write, !mcsema_real_eip !97
  %96 = load i8, i8* %SF_read, !mcsema_real_eip !97
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !97
  %98 = load i8, i8* %OF_read, !mcsema_real_eip !97
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !97
  %100 = icmp eq i1 %97, %99, !mcsema_real_eip !97
  br i1 %100, label %block_189, label %block_16d, !mcsema_real_eip !97

block_16d:                                        ; preds = %block_163
  store volatile i64 365, i64* %EIP_write, !mcsema_real_eip !98
  %101 = load i64, i64* %RBP_read, !mcsema_real_eip !98
  %102 = add i64 %101, -68, !mcsema_real_eip !98
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !98
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !98
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !98
  %106 = load i32, i32* %105, !mcsema_real_eip !98
  %107 = zext i32 %106 to i64, !mcsema_real_eip !98
  store volatile i64 %107, i64* %EAX_write, !mcsema_real_eip !98
  store volatile i64 368, i64* %EIP_write, !mcsema_real_eip !99
  %108 = load i32, i32* %EAX_read, !mcsema_real_eip !99
  %109 = add i32 1, %108, !mcsema_real_eip !99
  %110 = xor i32 %109, %108, !mcsema_real_eip !99
  %111 = xor i32 %110, 1, !mcsema_real_eip !99
  %112 = and i32 %111, 16, !mcsema_real_eip !99
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !99
  %114 = zext i1 %113 to i8, !mcsema_real_eip !99
  store volatile i8 %114, i8* %AF_write, !mcsema_real_eip !99
  %115 = lshr i32 %109, 31, !mcsema_real_eip !99
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !99
  %117 = zext i1 %116 to i8, !mcsema_real_eip !99
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !99
  %119 = zext i1 %118 to i8, !mcsema_real_eip !99
  store volatile i8 %119, i8* %SF_write, !mcsema_real_eip !99
  %120 = icmp eq i32 %109, 0, !mcsema_real_eip !99
  %121 = zext i1 %120 to i8, !mcsema_real_eip !99
  store volatile i8 %121, i8* %ZF_write, !mcsema_real_eip !99
  %122 = xor i32 %108, 1, !mcsema_real_eip !99
  %123 = xor i32 %122, -1, !mcsema_real_eip !99
  %124 = xor i32 %108, %109, !mcsema_real_eip !99
  %125 = and i32 %123, %124, !mcsema_real_eip !99
  %126 = lshr i32 %125, 31, !mcsema_real_eip !99
  %127 = and i32 %126, 1, !mcsema_real_eip !99
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !99
  %129 = zext i1 %128 to i8, !mcsema_real_eip !99
  %130 = trunc i8 %129 to i1, !mcsema_real_eip !99
  %131 = zext i1 %130 to i8, !mcsema_real_eip !99
  store volatile i8 %131, i8* %OF_write, !mcsema_real_eip !99
  %132 = trunc i32 %109 to i8, !mcsema_real_eip !99
  %133 = call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !99
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !99
  %135 = zext i1 %134 to i8, !mcsema_real_eip !99
  %136 = xor i8 %135, 1, !mcsema_real_eip !99
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !99
  %138 = zext i1 %137 to i8, !mcsema_real_eip !99
  store volatile i8 %138, i8* %PF_write, !mcsema_real_eip !99
  %139 = icmp ult i32 %109, %108, !mcsema_real_eip !99
  %140 = zext i1 %139 to i8, !mcsema_real_eip !99
  store volatile i8 %140, i8* %CF_write, !mcsema_real_eip !99
  %141 = zext i32 %109 to i64, !mcsema_real_eip !99
  store volatile i64 %141, i64* %EAX_write, !mcsema_real_eip !99
  store volatile i64 371, i64* %EIP_write, !mcsema_real_eip !100
  %142 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %143 = add i64 %142, -68, !mcsema_real_eip !100
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !100
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !100
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !100
  %147 = load i32, i32* %146, !mcsema_real_eip !100
  %148 = sext i32 %147 to i64, !mcsema_real_eip !100
  store volatile i64 %148, i64* %RCX_write, !mcsema_real_eip !100
  store volatile i64 375, i64* %EIP_write, !mcsema_real_eip !101
  %149 = load i64, i64* %RBP_read, !mcsema_real_eip !101
  %150 = add i64 %149, -64, !mcsema_real_eip !101
  %151 = load i64, i64* %RCX_read, !mcsema_real_eip !101
  %152 = mul i64 %151, 4, !mcsema_real_eip !101
  %153 = add i64 %150, %152, !mcsema_real_eip !101
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !101
  %155 = load i32, i32* %EAX_read, !mcsema_real_eip !101
  %156 = ptrtoint i64* %154 to i64, !mcsema_real_eip !101
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !101
  store i32 %155, i32* %157, !mcsema_real_eip !101
  store volatile i64 379, i64* %EIP_write, !mcsema_real_eip !102
  %158 = load i64, i64* %RBP_read, !mcsema_real_eip !102
  %159 = add i64 %158, -68, !mcsema_real_eip !102
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !102
  %161 = ptrtoint i64* %160 to i64, !mcsema_real_eip !102
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !102
  %163 = load i32, i32* %162, !mcsema_real_eip !102
  %164 = zext i32 %163 to i64, !mcsema_real_eip !102
  store volatile i64 %164, i64* %EAX_write, !mcsema_real_eip !102
  store volatile i64 382, i64* %EIP_write, !mcsema_real_eip !103
  %165 = load i32, i32* %EAX_read, !mcsema_real_eip !103
  %166 = add i32 1, %165, !mcsema_real_eip !103
  %167 = xor i32 %166, %165, !mcsema_real_eip !103
  %168 = xor i32 %167, 1, !mcsema_real_eip !103
  %169 = and i32 %168, 16, !mcsema_real_eip !103
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !103
  %171 = zext i1 %170 to i8, !mcsema_real_eip !103
  store volatile i8 %171, i8* %AF_write, !mcsema_real_eip !103
  %172 = lshr i32 %166, 31, !mcsema_real_eip !103
  %173 = trunc i32 %172 to i1, !mcsema_real_eip !103
  %174 = zext i1 %173 to i8, !mcsema_real_eip !103
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !103
  %176 = zext i1 %175 to i8, !mcsema_real_eip !103
  store volatile i8 %176, i8* %SF_write, !mcsema_real_eip !103
  %177 = icmp eq i32 %166, 0, !mcsema_real_eip !103
  %178 = zext i1 %177 to i8, !mcsema_real_eip !103
  store volatile i8 %178, i8* %ZF_write, !mcsema_real_eip !103
  %179 = xor i32 %165, 1, !mcsema_real_eip !103
  %180 = xor i32 %179, -1, !mcsema_real_eip !103
  %181 = xor i32 %165, %166, !mcsema_real_eip !103
  %182 = and i32 %180, %181, !mcsema_real_eip !103
  %183 = lshr i32 %182, 31, !mcsema_real_eip !103
  %184 = and i32 %183, 1, !mcsema_real_eip !103
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !103
  %186 = zext i1 %185 to i8, !mcsema_real_eip !103
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !103
  %188 = zext i1 %187 to i8, !mcsema_real_eip !103
  store volatile i8 %188, i8* %OF_write, !mcsema_real_eip !103
  %189 = trunc i32 %166 to i8, !mcsema_real_eip !103
  %190 = call i8 @llvm.ctpop.i8(i8 %189), !mcsema_real_eip !103
  %191 = trunc i8 %190 to i1, !mcsema_real_eip !103
  %192 = zext i1 %191 to i8, !mcsema_real_eip !103
  %193 = xor i8 %192, 1, !mcsema_real_eip !103
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !103
  %195 = zext i1 %194 to i8, !mcsema_real_eip !103
  store volatile i8 %195, i8* %PF_write, !mcsema_real_eip !103
  %196 = icmp ult i32 %166, %165, !mcsema_real_eip !103
  %197 = zext i1 %196 to i8, !mcsema_real_eip !103
  store volatile i8 %197, i8* %CF_write, !mcsema_real_eip !103
  %198 = zext i32 %166 to i64, !mcsema_real_eip !103
  store volatile i64 %198, i64* %EAX_write, !mcsema_real_eip !103
  store volatile i64 385, i64* %EIP_write, !mcsema_real_eip !104
  %199 = load i64, i64* %RBP_read, !mcsema_real_eip !104
  %200 = add i64 %199, -68, !mcsema_real_eip !104
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !104
  %202 = load i32, i32* %EAX_read, !mcsema_real_eip !104
  %203 = ptrtoint i64* %201 to i64, !mcsema_real_eip !104
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !104
  store i32 %202, i32* %204, !mcsema_real_eip !104
  store volatile i64 388, i64* %EIP_write, !mcsema_real_eip !105
  br label %block_163, !mcsema_real_eip !105

block_189:                                        ; preds = %block_163
  store volatile i64 393, i64* %EIP_write, !mcsema_real_eip !106
  %205 = zext i32 40 to i64, !mcsema_real_eip !106
  store volatile i64 %205, i64* %EAX_write, !mcsema_real_eip !106
  store volatile i64 398, i64* %EIP_write, !mcsema_real_eip !107
  %206 = load i32, i32* %EAX_read, !mcsema_real_eip !107
  %207 = zext i32 %206 to i64, !mcsema_real_eip !107
  store volatile i64 %207, i64* %EDI_write, !mcsema_real_eip !107
  store volatile i64 400, i64* %EIP_write, !mcsema_real_eip !108
  %208 = load i64, i64* %RBP_read, !mcsema_real_eip !108
  %209 = add i64 %208, -24, !mcsema_real_eip !108
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !108
  %211 = ptrtoint i64* %210 to i64, !mcsema_real_eip !108
  store volatile i64 %211, i64* %RCX_write, !mcsema_real_eip !108
  store volatile i64 404, i64* %EIP_write, !mcsema_real_eip !109
  %212 = load i64, i64* %RBP_read, !mcsema_real_eip !109
  %213 = add i64 %212, -80, !mcsema_real_eip !109
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !109
  %215 = load i64, i64* %RCX_read, !mcsema_real_eip !109
  store i64 %215, i64* %214, !mcsema_real_eip !109
  store volatile i64 408, i64* %EIP_write, !mcsema_real_eip !110
  %216 = load i64, i64* %RDI_read, !mcsema_real_eip !110
  %217 = load i64, i64* %RSP_read, !mcsema_real_eip !110
  %218 = sub i64 %217, 8, !mcsema_real_eip !110
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !110
  store i64 -2415393069852865332, i64* %219, !mcsema_real_eip !110
  store volatile i64 %218, i64* %RSP_write, !mcsema_real_eip !110
  %220 = call x86_64_sysvcc i64 @_malloc(i64 %216), !mcsema_real_eip !110
  store volatile i64 %220, i64* %RAX_write, !mcsema_real_eip !110
  store volatile i64 413, i64* %EIP_write, !mcsema_real_eip !111
  %221 = load i64, i64* %RBP_read, !mcsema_real_eip !111
  %222 = add i64 %221, -88, !mcsema_real_eip !111
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !111
  %224 = load i64, i64* %RAX_read, !mcsema_real_eip !111
  store i64 %224, i64* %223, !mcsema_real_eip !111
  store volatile i64 417, i64* %EIP_write, !mcsema_real_eip !112
  %225 = load i64, i64* %RBP_read, !mcsema_real_eip !112
  %226 = add i64 %225, -92, !mcsema_real_eip !112
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !112
  %228 = ptrtoint i64* %227 to i64, !mcsema_real_eip !112
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !112
  store i32 0, i32* %229, !mcsema_real_eip !112
  br label %block_1a8, !mcsema_real_eip !113

block_1a8:                                        ; preds = %block_1b2, %block_189
  store volatile i64 424, i64* %EIP_write, !mcsema_real_eip !113
  %230 = load i64, i64* %RBP_read, !mcsema_real_eip !113
  %231 = add i64 %230, -92, !mcsema_real_eip !113
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !113
  %233 = ptrtoint i64* %232 to i64, !mcsema_real_eip !113
  %234 = inttoptr i64 %233 to i32*, !mcsema_real_eip !113
  %235 = load i32, i32* %234, !mcsema_real_eip !113
  %236 = sub i32 %235, 10, !mcsema_real_eip !113
  %237 = xor i32 %236, %235, !mcsema_real_eip !113
  %238 = xor i32 %237, 10, !mcsema_real_eip !113
  %239 = and i32 %238, 16, !mcsema_real_eip !113
  %240 = icmp ne i32 %239, 0, !mcsema_real_eip !113
  %241 = zext i1 %240 to i8, !mcsema_real_eip !113
  store volatile i8 %241, i8* %AF_write, !mcsema_real_eip !113
  %242 = trunc i32 %236 to i8, !mcsema_real_eip !113
  %243 = call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !113
  %244 = trunc i8 %243 to i1, !mcsema_real_eip !113
  %245 = zext i1 %244 to i8, !mcsema_real_eip !113
  %246 = xor i8 %245, 1, !mcsema_real_eip !113
  %247 = trunc i8 %246 to i1, !mcsema_real_eip !113
  %248 = zext i1 %247 to i8, !mcsema_real_eip !113
  store volatile i8 %248, i8* %PF_write, !mcsema_real_eip !113
  %249 = icmp eq i32 %236, 0, !mcsema_real_eip !113
  %250 = zext i1 %249 to i8, !mcsema_real_eip !113
  store volatile i8 %250, i8* %ZF_write, !mcsema_real_eip !113
  %251 = lshr i32 %236, 31, !mcsema_real_eip !113
  %252 = trunc i32 %251 to i1, !mcsema_real_eip !113
  %253 = zext i1 %252 to i8, !mcsema_real_eip !113
  %254 = trunc i8 %253 to i1, !mcsema_real_eip !113
  %255 = zext i1 %254 to i8, !mcsema_real_eip !113
  store volatile i8 %255, i8* %SF_write, !mcsema_real_eip !113
  %256 = icmp ult i32 %235, 10, !mcsema_real_eip !113
  %257 = zext i1 %256 to i8, !mcsema_real_eip !113
  store volatile i8 %257, i8* %CF_write, !mcsema_real_eip !113
  %258 = xor i32 %235, 10, !mcsema_real_eip !113
  %259 = xor i32 %235, %236, !mcsema_real_eip !113
  %260 = and i32 %258, %259, !mcsema_real_eip !113
  %261 = lshr i32 %260, 31, !mcsema_real_eip !113
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !113
  %263 = zext i1 %262 to i8, !mcsema_real_eip !113
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !113
  %265 = zext i1 %264 to i8, !mcsema_real_eip !113
  store volatile i8 %265, i8* %OF_write, !mcsema_real_eip !113
  store volatile i64 428, i64* %EIP_write, !mcsema_real_eip !114
  %266 = load i8, i8* %SF_read, !mcsema_real_eip !114
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !114
  %268 = load i8, i8* %OF_read, !mcsema_real_eip !114
  %269 = trunc i8 %268 to i1, !mcsema_real_eip !114
  %270 = icmp eq i1 %267, %269, !mcsema_real_eip !114
  br i1 %270, label %block_1d1, label %block_1b2, !mcsema_real_eip !114

block_1b2:                                        ; preds = %block_1a8
  store volatile i64 434, i64* %EIP_write, !mcsema_real_eip !115
  %271 = load i64, i64* %RBP_read, !mcsema_real_eip !115
  %272 = add i64 %271, -92, !mcsema_real_eip !115
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !115
  %274 = ptrtoint i64* %273 to i64, !mcsema_real_eip !115
  %275 = inttoptr i64 %274 to i32*, !mcsema_real_eip !115
  %276 = load i32, i32* %275, !mcsema_real_eip !115
  %277 = zext i32 %276 to i64, !mcsema_real_eip !115
  store volatile i64 %277, i64* %EAX_write, !mcsema_real_eip !115
  store volatile i64 437, i64* %EIP_write, !mcsema_real_eip !116
  %278 = load i32, i32* %EAX_read, !mcsema_real_eip !116
  %279 = add i32 1, %278, !mcsema_real_eip !116
  %280 = xor i32 %279, %278, !mcsema_real_eip !116
  %281 = xor i32 %280, 1, !mcsema_real_eip !116
  %282 = and i32 %281, 16, !mcsema_real_eip !116
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !116
  %284 = zext i1 %283 to i8, !mcsema_real_eip !116
  store volatile i8 %284, i8* %AF_write, !mcsema_real_eip !116
  %285 = lshr i32 %279, 31, !mcsema_real_eip !116
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !116
  %287 = zext i1 %286 to i8, !mcsema_real_eip !116
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !116
  %289 = zext i1 %288 to i8, !mcsema_real_eip !116
  store volatile i8 %289, i8* %SF_write, !mcsema_real_eip !116
  %290 = icmp eq i32 %279, 0, !mcsema_real_eip !116
  %291 = zext i1 %290 to i8, !mcsema_real_eip !116
  store volatile i8 %291, i8* %ZF_write, !mcsema_real_eip !116
  %292 = xor i32 %278, 1, !mcsema_real_eip !116
  %293 = xor i32 %292, -1, !mcsema_real_eip !116
  %294 = xor i32 %278, %279, !mcsema_real_eip !116
  %295 = and i32 %293, %294, !mcsema_real_eip !116
  %296 = lshr i32 %295, 31, !mcsema_real_eip !116
  %297 = and i32 %296, 1, !mcsema_real_eip !116
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !116
  %299 = zext i1 %298 to i8, !mcsema_real_eip !116
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !116
  %301 = zext i1 %300 to i8, !mcsema_real_eip !116
  store volatile i8 %301, i8* %OF_write, !mcsema_real_eip !116
  %302 = trunc i32 %279 to i8, !mcsema_real_eip !116
  %303 = call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !116
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !116
  %305 = zext i1 %304 to i8, !mcsema_real_eip !116
  %306 = xor i8 %305, 1, !mcsema_real_eip !116
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !116
  %308 = zext i1 %307 to i8, !mcsema_real_eip !116
  store volatile i8 %308, i8* %PF_write, !mcsema_real_eip !116
  %309 = icmp ult i32 %279, %278, !mcsema_real_eip !116
  %310 = zext i1 %309 to i8, !mcsema_real_eip !116
  store volatile i8 %310, i8* %CF_write, !mcsema_real_eip !116
  %311 = zext i32 %279 to i64, !mcsema_real_eip !116
  store volatile i64 %311, i64* %EAX_write, !mcsema_real_eip !116
  store volatile i64 440, i64* %EIP_write, !mcsema_real_eip !117
  %312 = load i64, i64* %RBP_read, !mcsema_real_eip !117
  %313 = add i64 %312, -92, !mcsema_real_eip !117
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !117
  %315 = ptrtoint i64* %314 to i64, !mcsema_real_eip !117
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !117
  %317 = load i32, i32* %316, !mcsema_real_eip !117
  %318 = sext i32 %317 to i64, !mcsema_real_eip !117
  store volatile i64 %318, i64* %RCX_write, !mcsema_real_eip !117
  store volatile i64 444, i64* %EIP_write, !mcsema_real_eip !118
  %319 = load i64, i64* %RBP_read, !mcsema_real_eip !118
  %320 = add i64 %319, -88, !mcsema_real_eip !118
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !118
  %322 = load i64, i64* %321, !mcsema_real_eip !118
  store volatile i64 %322, i64* %RDX_write, !mcsema_real_eip !118
  store volatile i64 448, i64* %EIP_write, !mcsema_real_eip !119
  %323 = load i64, i64* %RDX_read, !mcsema_real_eip !119
  %324 = add i64 %323, 0, !mcsema_real_eip !119
  %325 = load i64, i64* %RCX_read, !mcsema_real_eip !119
  %326 = mul i64 %325, 4, !mcsema_real_eip !119
  %327 = add i64 %324, %326, !mcsema_real_eip !119
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !119
  %329 = load i32, i32* %EAX_read, !mcsema_real_eip !119
  %330 = ptrtoint i64* %328 to i64, !mcsema_real_eip !119
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !119
  store i32 %329, i32* %331, !mcsema_real_eip !119
  store volatile i64 451, i64* %EIP_write, !mcsema_real_eip !120
  %332 = load i64, i64* %RBP_read, !mcsema_real_eip !120
  %333 = add i64 %332, -92, !mcsema_real_eip !120
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !120
  %335 = ptrtoint i64* %334 to i64, !mcsema_real_eip !120
  %336 = inttoptr i64 %335 to i32*, !mcsema_real_eip !120
  %337 = load i32, i32* %336, !mcsema_real_eip !120
  %338 = zext i32 %337 to i64, !mcsema_real_eip !120
  store volatile i64 %338, i64* %EAX_write, !mcsema_real_eip !120
  store volatile i64 454, i64* %EIP_write, !mcsema_real_eip !121
  %339 = load i32, i32* %EAX_read, !mcsema_real_eip !121
  %340 = add i32 1, %339, !mcsema_real_eip !121
  %341 = xor i32 %340, %339, !mcsema_real_eip !121
  %342 = xor i32 %341, 1, !mcsema_real_eip !121
  %343 = and i32 %342, 16, !mcsema_real_eip !121
  %344 = icmp ne i32 %343, 0, !mcsema_real_eip !121
  %345 = zext i1 %344 to i8, !mcsema_real_eip !121
  store volatile i8 %345, i8* %AF_write, !mcsema_real_eip !121
  %346 = lshr i32 %340, 31, !mcsema_real_eip !121
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !121
  %348 = zext i1 %347 to i8, !mcsema_real_eip !121
  %349 = trunc i8 %348 to i1, !mcsema_real_eip !121
  %350 = zext i1 %349 to i8, !mcsema_real_eip !121
  store volatile i8 %350, i8* %SF_write, !mcsema_real_eip !121
  %351 = icmp eq i32 %340, 0, !mcsema_real_eip !121
  %352 = zext i1 %351 to i8, !mcsema_real_eip !121
  store volatile i8 %352, i8* %ZF_write, !mcsema_real_eip !121
  %353 = xor i32 %339, 1, !mcsema_real_eip !121
  %354 = xor i32 %353, -1, !mcsema_real_eip !121
  %355 = xor i32 %339, %340, !mcsema_real_eip !121
  %356 = and i32 %354, %355, !mcsema_real_eip !121
  %357 = lshr i32 %356, 31, !mcsema_real_eip !121
  %358 = and i32 %357, 1, !mcsema_real_eip !121
  %359 = trunc i32 %358 to i1, !mcsema_real_eip !121
  %360 = zext i1 %359 to i8, !mcsema_real_eip !121
  %361 = trunc i8 %360 to i1, !mcsema_real_eip !121
  %362 = zext i1 %361 to i8, !mcsema_real_eip !121
  store volatile i8 %362, i8* %OF_write, !mcsema_real_eip !121
  %363 = trunc i32 %340 to i8, !mcsema_real_eip !121
  %364 = call i8 @llvm.ctpop.i8(i8 %363), !mcsema_real_eip !121
  %365 = trunc i8 %364 to i1, !mcsema_real_eip !121
  %366 = zext i1 %365 to i8, !mcsema_real_eip !121
  %367 = xor i8 %366, 1, !mcsema_real_eip !121
  %368 = trunc i8 %367 to i1, !mcsema_real_eip !121
  %369 = zext i1 %368 to i8, !mcsema_real_eip !121
  store volatile i8 %369, i8* %PF_write, !mcsema_real_eip !121
  %370 = icmp ult i32 %340, %339, !mcsema_real_eip !121
  %371 = zext i1 %370 to i8, !mcsema_real_eip !121
  store volatile i8 %371, i8* %CF_write, !mcsema_real_eip !121
  %372 = zext i32 %340 to i64, !mcsema_real_eip !121
  store volatile i64 %372, i64* %EAX_write, !mcsema_real_eip !121
  store volatile i64 457, i64* %EIP_write, !mcsema_real_eip !122
  %373 = load i64, i64* %RBP_read, !mcsema_real_eip !122
  %374 = add i64 %373, -92, !mcsema_real_eip !122
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !122
  %376 = load i32, i32* %EAX_read, !mcsema_real_eip !122
  %377 = ptrtoint i64* %375 to i64, !mcsema_real_eip !122
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !122
  store i32 %376, i32* %378, !mcsema_real_eip !122
  store volatile i64 460, i64* %EIP_write, !mcsema_real_eip !123
  br label %block_1a8, !mcsema_real_eip !123

block_1d1:                                        ; preds = %block_1a8
  store volatile i64 465, i64* %EIP_write, !mcsema_real_eip !124
  %379 = zext i32 10 to i64, !mcsema_real_eip !124
  store volatile i64 %379, i64* %EAX_write, !mcsema_real_eip !124
  store volatile i64 470, i64* %EIP_write, !mcsema_real_eip !125
  %380 = load i64, i64* %RBP_read, !mcsema_real_eip !125
  %381 = add i64 %380, -64, !mcsema_real_eip !125
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !125
  %383 = ptrtoint i64* %382 to i64, !mcsema_real_eip !125
  store volatile i64 %383, i64* %RCX_write, !mcsema_real_eip !125
  store volatile i64 474, i64* %EIP_write, !mcsema_real_eip !126
  %384 = load i64, i64* %RBP_read, !mcsema_real_eip !126
  %385 = add i64 %384, -24, !mcsema_real_eip !126
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !126
  %387 = ptrtoint i64* %386 to i64, !mcsema_real_eip !126
  %388 = inttoptr i64 %387 to i32*, !mcsema_real_eip !126
  %389 = load i32, i32* %388, !mcsema_real_eip !126
  %390 = zext i32 %389 to i64, !mcsema_real_eip !126
  store volatile i64 %390, i64* %EDI_write, !mcsema_real_eip !126
  store volatile i64 477, i64* %EIP_write, !mcsema_real_eip !127
  %391 = load i64, i64* %RBP_read, !mcsema_real_eip !127
  %392 = add i64 %391, -80, !mcsema_real_eip !127
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !127
  %394 = load i64, i64* %393, !mcsema_real_eip !127
  store volatile i64 %394, i64* %RDX_write, !mcsema_real_eip !127
  store volatile i64 481, i64* %EIP_write, !mcsema_real_eip !128
  %395 = load i64, i64* %RBP_read, !mcsema_real_eip !128
  %396 = add i64 %395, -88, !mcsema_real_eip !128
  %397 = inttoptr i64 %396 to i64*, !mcsema_real_eip !128
  %398 = load i64, i64* %397, !mcsema_real_eip !128
  store volatile i64 %398, i64* %RSI_write, !mcsema_real_eip !128
  store volatile i64 485, i64* %EIP_write, !mcsema_real_eip !129
  %399 = load i64, i64* %RBP_read, !mcsema_real_eip !129
  %400 = add i64 %399, -24, !mcsema_real_eip !129
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !129
  %402 = ptrtoint i64* %401 to i64, !mcsema_real_eip !129
  %403 = inttoptr i64 %402 to i32*, !mcsema_real_eip !129
  %404 = load i32, i32* %403, !mcsema_real_eip !129
  %405 = zext i32 %404 to i64, !mcsema_real_eip !129
  store volatile i64 %405, i64* %R8D_write, !mcsema_real_eip !129
  store volatile i64 489, i64* %EIP_write, !mcsema_real_eip !130
  %406 = load i64, i64* %RBP_read, !mcsema_real_eip !130
  %407 = add i64 %406, -80, !mcsema_real_eip !130
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !130
  %409 = load i64, i64* %408, !mcsema_real_eip !130
  store volatile i64 %409, i64* %R9_write, !mcsema_real_eip !130
  store volatile i64 493, i64* %EIP_write, !mcsema_real_eip !131
  %410 = load i64, i64* %RBP_read, !mcsema_real_eip !131
  %411 = add i64 %410, -88, !mcsema_real_eip !131
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !131
  %413 = load i64, i64* %412, !mcsema_real_eip !131
  store volatile i64 %413, i64* %R10_write, !mcsema_real_eip !131
  store volatile i64 497, i64* %EIP_write, !mcsema_real_eip !132
  %414 = load i64, i64* %RBP_read, !mcsema_real_eip !132
  %415 = add i64 %414, -104, !mcsema_real_eip !132
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !132
  %417 = load i64, i64* %RSI_read, !mcsema_real_eip !132
  store i64 %417, i64* %416, !mcsema_real_eip !132
  store volatile i64 501, i64* %EIP_write, !mcsema_real_eip !133
  %418 = load i64, i64* %RCX_read, !mcsema_real_eip !133
  store volatile i64 %418, i64* %RSI_write, !mcsema_real_eip !133
  store volatile i64 504, i64* %EIP_write, !mcsema_real_eip !134
  %419 = load i64, i64* %RBP_read, !mcsema_real_eip !134
  %420 = add i64 %419, -104, !mcsema_real_eip !134
  %421 = inttoptr i64 %420 to i64*, !mcsema_real_eip !134
  %422 = load i64, i64* %421, !mcsema_real_eip !134
  store volatile i64 %422, i64* %R11_write, !mcsema_real_eip !134
  store volatile i64 508, i64* %EIP_write, !mcsema_real_eip !135
  %423 = load i64, i64* %RBP_read, !mcsema_real_eip !135
  %424 = add i64 %423, -112, !mcsema_real_eip !135
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !135
  %426 = load i64, i64* %RCX_read, !mcsema_real_eip !135
  store i64 %426, i64* %425, !mcsema_real_eip !135
  store volatile i64 512, i64* %EIP_write, !mcsema_real_eip !136
  %427 = load i64, i64* %R11_read, !mcsema_real_eip !136
  store volatile i64 %427, i64* %RCX_write, !mcsema_real_eip !136
  store volatile i64 515, i64* %EIP_write, !mcsema_real_eip !137
  %428 = load i64, i64* %RBP_read, !mcsema_real_eip !137
  %429 = add i64 %428, -116, !mcsema_real_eip !137
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !137
  %431 = load i32, i32* %R8D_read, !mcsema_real_eip !137
  %432 = ptrtoint i64* %430 to i64, !mcsema_real_eip !137
  %433 = inttoptr i64 %432 to i32*, !mcsema_real_eip !137
  store i32 %431, i32* %433, !mcsema_real_eip !137
  store volatile i64 519, i64* %EIP_write, !mcsema_real_eip !138
  %434 = load i32, i32* %EAX_read, !mcsema_real_eip !138
  %435 = zext i32 %434 to i64, !mcsema_real_eip !138
  store volatile i64 %435, i64* %R8D_write, !mcsema_real_eip !138
  store volatile i64 522, i64* %EIP_write, !mcsema_real_eip !139
  %436 = load i64, i64* %RBP_read, !mcsema_real_eip !139
  %437 = add i64 %436, -128, !mcsema_real_eip !139
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !139
  %439 = load i64, i64* %R9_read, !mcsema_real_eip !139
  store i64 %439, i64* %438, !mcsema_real_eip !139
  store volatile i64 526, i64* %EIP_write, !mcsema_real_eip !140
  %440 = load i32, i32* %EAX_read, !mcsema_real_eip !140
  %441 = zext i32 %440 to i64, !mcsema_real_eip !140
  store volatile i64 %441, i64* %R9D_write, !mcsema_real_eip !140
  store volatile i64 529, i64* %EIP_write, !mcsema_real_eip !141
  %442 = load i64, i64* %RBP_read, !mcsema_real_eip !141
  %443 = add i64 %442, -116, !mcsema_real_eip !141
  %444 = inttoptr i64 %443 to i64*, !mcsema_real_eip !141
  %445 = ptrtoint i64* %444 to i64, !mcsema_real_eip !141
  %446 = inttoptr i64 %445 to i32*, !mcsema_real_eip !141
  %447 = load i32, i32* %446, !mcsema_real_eip !141
  %448 = zext i32 %447 to i64, !mcsema_real_eip !141
  store volatile i64 %448, i64* %EAX_write, !mcsema_real_eip !141
  store volatile i64 532, i64* %EIP_write, !mcsema_real_eip !142
  %449 = load i64, i64* %RSP_read, !mcsema_real_eip !142
  %450 = add i64 %449, 0, !mcsema_real_eip !142
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !142
  %452 = load i32, i32* %EAX_read, !mcsema_real_eip !142
  %453 = ptrtoint i64* %451 to i64, !mcsema_real_eip !142
  %454 = inttoptr i64 %453 to i32*, !mcsema_real_eip !142
  store i32 %452, i32* %454, !mcsema_real_eip !142
  store volatile i64 535, i64* %EIP_write, !mcsema_real_eip !143
  %455 = load i64, i64* %RBP_read, !mcsema_real_eip !143
  %456 = add i64 %455, -112, !mcsema_real_eip !143
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !143
  %458 = load i64, i64* %457, !mcsema_real_eip !143
  store volatile i64 %458, i64* %RBX_write, !mcsema_real_eip !143
  store volatile i64 539, i64* %EIP_write, !mcsema_real_eip !144
  %459 = load i64, i64* %RSP_read, !mcsema_real_eip !144
  %460 = add i64 %459, 8, !mcsema_real_eip !144
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !144
  %462 = load i64, i64* %RBX_read, !mcsema_real_eip !144
  store i64 %462, i64* %461, !mcsema_real_eip !144
  store volatile i64 544, i64* %EIP_write, !mcsema_real_eip !145
  %463 = load i64, i64* %RBP_read, !mcsema_real_eip !145
  %464 = add i64 %463, -128, !mcsema_real_eip !145
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !145
  %466 = load i64, i64* %465, !mcsema_real_eip !145
  store volatile i64 %466, i64* %R14_write, !mcsema_real_eip !145
  store volatile i64 548, i64* %EIP_write, !mcsema_real_eip !146
  %467 = load i64, i64* %RSP_read, !mcsema_real_eip !146
  %468 = add i64 %467, 16, !mcsema_real_eip !146
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !146
  %470 = load i64, i64* %R14_read, !mcsema_real_eip !146
  store i64 %470, i64* %469, !mcsema_real_eip !146
  store volatile i64 553, i64* %EIP_write, !mcsema_real_eip !147
  %471 = load i64, i64* %RSP_read, !mcsema_real_eip !147
  %472 = add i64 %471, 24, !mcsema_real_eip !147
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !147
  %474 = load i64, i64* %R10_read, !mcsema_real_eip !147
  store i64 %474, i64* %473, !mcsema_real_eip !147
  store volatile i64 558, i64* %EIP_write, !mcsema_real_eip !148
  %475 = load i64, i64* %RSP_read, !mcsema_real_eip !148
  %476 = sub i64 %475, 8, !mcsema_real_eip !148
  %477 = inttoptr i64 %476 to i64*, !mcsema_real_eip !148
  store i64 563, i64* %477, !mcsema_real_eip !148
  store volatile i64 %476, i64* %RSP_write, !mcsema_real_eip !148
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !148
  store volatile i64 563, i64* %EIP_write, !mcsema_real_eip !149
  %478 = ptrtoint %0* @data_261 to i64, !mcsema_real_eip !149
  %479 = add i64 %478, 0, !mcsema_real_eip !149
  store volatile i64 %479, i64* %RDI_write, !mcsema_real_eip !149
  store volatile i64 573, i64* %EIP_write, !mcsema_real_eip !150
  %480 = load i64, i64* %RBP_read, !mcsema_real_eip !150
  %481 = add i64 %480, -96, !mcsema_real_eip !150
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !150
  %483 = load i32, i32* %EAX_read, !mcsema_real_eip !150
  %484 = ptrtoint i64* %482 to i64, !mcsema_real_eip !150
  %485 = inttoptr i64 %484 to i32*, !mcsema_real_eip !150
  store i32 %483, i32* %485, !mcsema_real_eip !150
  store volatile i64 576, i64* %EIP_write, !mcsema_real_eip !151
  %486 = load i64, i64* %RBP_read, !mcsema_real_eip !151
  %487 = add i64 %486, -96, !mcsema_real_eip !151
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !151
  %489 = ptrtoint i64* %488 to i64, !mcsema_real_eip !151
  %490 = inttoptr i64 %489 to i32*, !mcsema_real_eip !151
  %491 = load i32, i32* %490, !mcsema_real_eip !151
  %492 = zext i32 %491 to i64, !mcsema_real_eip !151
  store volatile i64 %492, i64* %ESI_write, !mcsema_real_eip !151
  store volatile i64 579, i64* %EIP_write, !mcsema_real_eip !152
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !152
  store volatile i64 581, i64* %EIP_write, !mcsema_real_eip !153
  %493 = load i64, i64* %RDI_read, !mcsema_real_eip !153
  %494 = load i64, i64* %RSI_read, !mcsema_real_eip !153
  %495 = load i64, i64* %RDX_read, !mcsema_real_eip !153
  %496 = load i64, i64* %RCX_read, !mcsema_real_eip !153
  %497 = load i64, i64* %R8_read, !mcsema_real_eip !153
  %498 = load i64, i64* %R9_read, !mcsema_real_eip !153
  %499 = load i64, i64* %RSP_read, !mcsema_real_eip !153
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !153
  %501 = load i64, i64* %500, !mcsema_real_eip !153
  %502 = add i64 %499, 8, !mcsema_real_eip !153
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !153
  %504 = load i64, i64* %503, !mcsema_real_eip !153
  %505 = add i64 %502, 8, !mcsema_real_eip !153
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !153
  %507 = load i64, i64* %506, !mcsema_real_eip !153
  %508 = add i64 %505, 8, !mcsema_real_eip !153
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !153
  %510 = load i64, i64* %509, !mcsema_real_eip !153
  %511 = add i64 %508, 8, !mcsema_real_eip !153
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !153
  %513 = load i64, i64* %512, !mcsema_real_eip !153
  %514 = add i64 %511, 8, !mcsema_real_eip !153
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !153
  %516 = load i64, i64* %515, !mcsema_real_eip !153
  %517 = add i64 %514, 8, !mcsema_real_eip !153
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !153
  %519 = load i64, i64* %518, !mcsema_real_eip !153
  %520 = add i64 %517, 8, !mcsema_real_eip !153
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !153
  %522 = load i64, i64* %521, !mcsema_real_eip !153
  %523 = add i64 %520, 8, !mcsema_real_eip !153
  %524 = inttoptr i64 %523 to i64*, !mcsema_real_eip !153
  %525 = load i64, i64* %524, !mcsema_real_eip !153
  %526 = add i64 %523, 8, !mcsema_real_eip !153
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !153
  %528 = load i64, i64* %527, !mcsema_real_eip !153
  %529 = load i64, i64* %RSP_read, !mcsema_real_eip !153
  %530 = sub i64 %529, 8, !mcsema_real_eip !153
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !153
  store i64 -2415393069852865332, i64* %531, !mcsema_real_eip !153
  store volatile i64 %530, i64* %RSP_write, !mcsema_real_eip !153
  %532 = call x86_64_sysvcc i64 @_printf(i64 %493, i64 %494, i64 %495, i64 %496, i64 %497, i64 %498, i64 %501, i64 %504, i64 %507, i64 %510, i64 %513, i64 %516, i64 %519, i64 %522, i64 %525, i64 %528), !mcsema_real_eip !153
  store volatile i64 %532, i64* %RAX_write, !mcsema_real_eip !153
  store volatile i64 586, i64* %EIP_write, !mcsema_real_eip !154
  %533 = load i64, i64* %RBP_read, !mcsema_real_eip !154
  %534 = add i64 %533, -96, !mcsema_real_eip !154
  %535 = inttoptr i64 %534 to i64*, !mcsema_real_eip !154
  %536 = ptrtoint i64* %535 to i64, !mcsema_real_eip !154
  %537 = inttoptr i64 %536 to i32*, !mcsema_real_eip !154
  %538 = load i32, i32* %537, !mcsema_real_eip !154
  %539 = zext i32 %538 to i64, !mcsema_real_eip !154
  store volatile i64 %539, i64* %ESI_write, !mcsema_real_eip !154
  store volatile i64 589, i64* %EIP_write, !mcsema_real_eip !155
  %540 = load i64, i64* %RBP_read, !mcsema_real_eip !155
  %541 = add i64 %540, -132, !mcsema_real_eip !155
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !155
  %543 = load i32, i32* %EAX_read, !mcsema_real_eip !155
  %544 = ptrtoint i64* %542 to i64, !mcsema_real_eip !155
  %545 = inttoptr i64 %544 to i32*, !mcsema_real_eip !155
  store i32 %543, i32* %545, !mcsema_real_eip !155
  store volatile i64 595, i64* %EIP_write, !mcsema_real_eip !156
  %546 = load i32, i32* %ESI_read, !mcsema_real_eip !156
  %547 = zext i32 %546 to i64, !mcsema_real_eip !156
  store volatile i64 %547, i64* %EAX_write, !mcsema_real_eip !156
  store volatile i64 597, i64* %EIP_write, !mcsema_real_eip !157
  %548 = load i64, i64* %RSP_read, !mcsema_real_eip !157
  %549 = add i64 160, %548, !mcsema_real_eip !157
  %550 = xor i64 %549, %548, !mcsema_real_eip !157
  %551 = xor i64 %550, 160, !mcsema_real_eip !157
  %552 = and i64 %551, 16, !mcsema_real_eip !157
  %553 = icmp ne i64 %552, 0, !mcsema_real_eip !157
  %554 = zext i1 %553 to i8, !mcsema_real_eip !157
  store volatile i8 %554, i8* %AF_write, !mcsema_real_eip !157
  %555 = lshr i64 %549, 63, !mcsema_real_eip !157
  %556 = trunc i64 %555 to i1, !mcsema_real_eip !157
  %557 = zext i1 %556 to i8, !mcsema_real_eip !157
  %558 = trunc i8 %557 to i1, !mcsema_real_eip !157
  %559 = zext i1 %558 to i8, !mcsema_real_eip !157
  store volatile i8 %559, i8* %SF_write, !mcsema_real_eip !157
  %560 = icmp eq i64 %549, 0, !mcsema_real_eip !157
  %561 = zext i1 %560 to i8, !mcsema_real_eip !157
  store volatile i8 %561, i8* %ZF_write, !mcsema_real_eip !157
  %562 = xor i64 %548, 160, !mcsema_real_eip !157
  %563 = xor i64 %562, -1, !mcsema_real_eip !157
  %564 = xor i64 %548, %549, !mcsema_real_eip !157
  %565 = and i64 %563, %564, !mcsema_real_eip !157
  %566 = lshr i64 %565, 63, !mcsema_real_eip !157
  %567 = and i64 %566, 1, !mcsema_real_eip !157
  %568 = trunc i64 %567 to i1, !mcsema_real_eip !157
  %569 = zext i1 %568 to i8, !mcsema_real_eip !157
  %570 = trunc i8 %569 to i1, !mcsema_real_eip !157
  %571 = zext i1 %570 to i8, !mcsema_real_eip !157
  store volatile i8 %571, i8* %OF_write, !mcsema_real_eip !157
  %572 = trunc i64 %549 to i8, !mcsema_real_eip !157
  %573 = call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !157
  %574 = trunc i8 %573 to i1, !mcsema_real_eip !157
  %575 = zext i1 %574 to i8, !mcsema_real_eip !157
  %576 = xor i8 %575, 1, !mcsema_real_eip !157
  %577 = trunc i8 %576 to i1, !mcsema_real_eip !157
  %578 = zext i1 %577 to i8, !mcsema_real_eip !157
  store volatile i8 %578, i8* %PF_write, !mcsema_real_eip !157
  %579 = icmp ult i64 %549, %548, !mcsema_real_eip !157
  %580 = zext i1 %579 to i8, !mcsema_real_eip !157
  store volatile i8 %580, i8* %CF_write, !mcsema_real_eip !157
  store volatile i64 %549, i64* %RSP_write, !mcsema_real_eip !157
  store volatile i64 604, i64* %EIP_write, !mcsema_real_eip !158
  %581 = load i64, i64* %RSP_read, !mcsema_real_eip !158
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !158
  %583 = load i64, i64* %582, !mcsema_real_eip !158
  store volatile i64 %583, i64* %RBX_write, !mcsema_real_eip !158
  %584 = add i64 %581, 8, !mcsema_real_eip !158
  store volatile i64 %584, i64* %RSP_write, !mcsema_real_eip !158
  store volatile i64 605, i64* %EIP_write, !mcsema_real_eip !159
  %585 = load i64, i64* %RSP_read, !mcsema_real_eip !159
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !159
  %587 = load i64, i64* %586, !mcsema_real_eip !159
  store volatile i64 %587, i64* %R14_write, !mcsema_real_eip !159
  %588 = add i64 %585, 8, !mcsema_real_eip !159
  store volatile i64 %588, i64* %RSP_write, !mcsema_real_eip !159
  store volatile i64 607, i64* %EIP_write, !mcsema_real_eip !160
  %589 = load i64, i64* %RSP_read, !mcsema_real_eip !160
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !160
  %591 = load i64, i64* %590, !mcsema_real_eip !160
  store volatile i64 %591, i64* %RBP_write, !mcsema_real_eip !160
  %592 = add i64 %589, 8, !mcsema_real_eip !160
  store volatile i64 %592, i64* %RSP_write, !mcsema_real_eip !160
  store volatile i64 608, i64* %EIP_write, !mcsema_real_eip !161
  %593 = load i64, i64* %RSP_read, !mcsema_real_eip !161
  %594 = add i64 %593, 8, !mcsema_real_eip !161
  %595 = inttoptr i64 %593 to i64*, !mcsema_real_eip !161
  %596 = load i64, i64* %595, !mcsema_real_eip !161
  store volatile i64 %596, i64* %RIP_write, !mcsema_real_eip !161
  store volatile i64 %594, i64* %RSP_write, !mcsema_real_eip !161
  ret void, !mcsema_real_eip !161
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
!8 = !{i64 23}
!9 = !{i64 27}
!10 = !{i64 31}
!11 = !{i64 35}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 46}
!15 = !{i64 50}
!16 = !{i64 54}
!17 = !{i64 58}
!18 = !{i64 65}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 74}
!22 = !{i64 81}
!23 = !{i64 84}
!24 = !{i64 87}
!25 = !{i64 93}
!26 = !{i64 97}
!27 = !{i64 101}
!28 = !{i64 104}
!29 = !{i64 107}
!30 = !{i64 110}
!31 = !{i64 113}
!32 = !{i64 116}
!33 = !{i64 119}
!34 = !{i64 124}
!35 = !{i64 128}
!36 = !{i64 130}
!37 = !{i64 133}
!38 = !{i64 136}
!39 = !{i64 143}
!40 = !{i64 146}
!41 = !{i64 149}
!42 = !{i64 155}
!43 = !{i64 159}
!44 = !{i64 163}
!45 = !{i64 166}
!46 = !{i64 169}
!47 = !{i64 172}
!48 = !{i64 175}
!49 = !{i64 178}
!50 = !{i64 181}
!51 = !{i64 186}
!52 = !{i64 189}
!53 = !{i64 192}
!54 = !{i64 195}
!55 = !{i64 202}
!56 = !{i64 205}
!57 = !{i64 208}
!58 = !{i64 214}
!59 = !{i64 218}
!60 = !{i64 222}
!61 = !{i64 225}
!62 = !{i64 228}
!63 = !{i64 231}
!64 = !{i64 234}
!65 = !{i64 237}
!66 = !{i64 240}
!67 = !{i64 245}
!68 = !{i64 249}
!69 = !{i64 251}
!70 = !{i64 254}
!71 = !{i64 257}
!72 = !{i64 264}
!73 = !{i64 267}
!74 = !{i64 270}
!75 = !{i64 276}
!76 = !{i64 280}
!77 = !{i64 284}
!78 = !{i64 287}
!79 = !{i64 290}
!80 = !{i64 293}
!81 = !{i64 296}
!82 = !{i64 299}
!83 = !{i64 302}
!84 = !{i64 307}
!85 = !{i64 310}
!86 = !{i64 311}
!87 = !{i64 312}
!88 = !{i64 320}
!89 = !{i64 321}
!90 = !{i64 324}
!91 = !{i64 326}
!92 = !{i64 327}
!93 = !{i64 334}
!94 = !{i64 341}
!95 = !{i64 348}
!96 = !{i64 355}
!97 = !{i64 359}
!98 = !{i64 365}
!99 = !{i64 368}
!100 = !{i64 371}
!101 = !{i64 375}
!102 = !{i64 379}
!103 = !{i64 382}
!104 = !{i64 385}
!105 = !{i64 388}
!106 = !{i64 393}
!107 = !{i64 398}
!108 = !{i64 400}
!109 = !{i64 404}
!110 = !{i64 408}
!111 = !{i64 413}
!112 = !{i64 417}
!113 = !{i64 424}
!114 = !{i64 428}
!115 = !{i64 434}
!116 = !{i64 437}
!117 = !{i64 440}
!118 = !{i64 444}
!119 = !{i64 448}
!120 = !{i64 451}
!121 = !{i64 454}
!122 = !{i64 457}
!123 = !{i64 460}
!124 = !{i64 465}
!125 = !{i64 470}
!126 = !{i64 474}
!127 = !{i64 477}
!128 = !{i64 481}
!129 = !{i64 485}
!130 = !{i64 489}
!131 = !{i64 493}
!132 = !{i64 497}
!133 = !{i64 501}
!134 = !{i64 504}
!135 = !{i64 508}
!136 = !{i64 512}
!137 = !{i64 515}
!138 = !{i64 519}
!139 = !{i64 522}
!140 = !{i64 526}
!141 = !{i64 529}
!142 = !{i64 532}
!143 = !{i64 535}
!144 = !{i64 539}
!145 = !{i64 544}
!146 = !{i64 548}
!147 = !{i64 553}
!148 = !{i64 558}
!149 = !{i64 563}
!150 = !{i64 573}
!151 = !{i64 576}
!152 = !{i64 579}
!153 = !{i64 581}
!154 = !{i64 586}
!155 = !{i64 589}
!156 = !{i64 595}
!157 = !{i64 597}
!158 = !{i64 604}
!159 = !{i64 605}
!160 = !{i64 607}
!161 = !{i64 608}
