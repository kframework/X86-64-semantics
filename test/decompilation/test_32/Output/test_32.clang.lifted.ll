; ModuleID = 'Output/test_32.clang.lifted.bc'
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_d2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64
@data_d8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"Z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %39 = add i64 %38, -16, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i64, i64* %RDI_read, !mcsema_real_eip !3
  store i64 %41, i64* %40, !mcsema_real_eip !3
  store volatile i64 12, i64* %EIP_write, !mcsema_real_eip !4
  %42 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %43 = add i64 %42, -16, !mcsema_real_eip !4
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !4
  %45 = load i64, i64* %44, !mcsema_real_eip !4
  %46 = sub i64 %45, 2, !mcsema_real_eip !4
  %47 = xor i64 %46, %45, !mcsema_real_eip !4
  %48 = xor i64 %47, 2, !mcsema_real_eip !4
  %49 = and i64 %48, 16, !mcsema_real_eip !4
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !4
  %51 = zext i1 %50 to i8, !mcsema_real_eip !4
  store volatile i8 %51, i8* %AF_write, !mcsema_real_eip !4
  %52 = trunc i64 %46 to i8, !mcsema_real_eip !4
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !4
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !4
  %55 = zext i1 %54 to i8, !mcsema_real_eip !4
  %56 = xor i8 %55, 1, !mcsema_real_eip !4
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !4
  %58 = zext i1 %57 to i8, !mcsema_real_eip !4
  store volatile i8 %58, i8* %PF_write, !mcsema_real_eip !4
  %59 = icmp eq i64 %46, 0, !mcsema_real_eip !4
  %60 = zext i1 %59 to i8, !mcsema_real_eip !4
  store volatile i8 %60, i8* %ZF_write, !mcsema_real_eip !4
  %61 = lshr i64 %46, 63, !mcsema_real_eip !4
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !4
  %63 = zext i1 %62 to i8, !mcsema_real_eip !4
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !4
  %65 = zext i1 %64 to i8, !mcsema_real_eip !4
  store volatile i8 %65, i8* %SF_write, !mcsema_real_eip !4
  %66 = icmp ult i64 %45, 2, !mcsema_real_eip !4
  %67 = zext i1 %66 to i8, !mcsema_real_eip !4
  store volatile i8 %67, i8* %CF_write, !mcsema_real_eip !4
  %68 = xor i64 %45, 2, !mcsema_real_eip !4
  %69 = xor i64 %45, %46, !mcsema_real_eip !4
  %70 = and i64 %68, %69, !mcsema_real_eip !4
  %71 = lshr i64 %70, 63, !mcsema_real_eip !4
  %72 = trunc i64 %71 to i1, !mcsema_real_eip !4
  %73 = zext i1 %72 to i8, !mcsema_real_eip !4
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !4
  %75 = zext i1 %74 to i8, !mcsema_real_eip !4
  store volatile i8 %75, i8* %OF_write, !mcsema_real_eip !4
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !5
  %76 = load i8, i8* %CF_read, !mcsema_real_eip !5
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !5
  %78 = icmp eq i1 %77, false, !mcsema_real_eip !5
  br i1 %78, label %block_24, label %block_17, !mcsema_real_eip !5

block_17:                                         ; preds = %block_0
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !6
  %79 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %80 = add i64 %79, -8, !mcsema_real_eip !6
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !6
  store i64 1, i64* %81, !mcsema_real_eip !6
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !7
  br label %block_50, !mcsema_real_eip !7

block_24:                                         ; preds = %block_0
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !8
  %82 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %83 = add i64 %82, -16, !mcsema_real_eip !8
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !8
  %85 = load i64, i64* %84, !mcsema_real_eip !8
  store volatile i64 %85, i64* %RAX_write, !mcsema_real_eip !8
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !9
  %86 = load i64, i64* %RAX_read, !mcsema_real_eip !9
  %87 = sext i8 2 to i64, !mcsema_real_eip !9
  %88 = sub i64 %86, %87, !mcsema_real_eip !9
  %89 = xor i64 %88, %86, !mcsema_real_eip !9
  %90 = xor i64 %89, %87, !mcsema_real_eip !9
  %91 = and i64 %90, 16, !mcsema_real_eip !9
  %92 = icmp ne i64 %91, 0, !mcsema_real_eip !9
  %93 = zext i1 %92 to i8, !mcsema_real_eip !9
  store volatile i8 %93, i8* %AF_write, !mcsema_real_eip !9
  %94 = trunc i64 %88 to i8, !mcsema_real_eip !9
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !9
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !9
  %97 = zext i1 %96 to i8, !mcsema_real_eip !9
  %98 = xor i8 %97, 1, !mcsema_real_eip !9
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !9
  %100 = zext i1 %99 to i8, !mcsema_real_eip !9
  store volatile i8 %100, i8* %PF_write, !mcsema_real_eip !9
  %101 = icmp eq i64 %88, 0, !mcsema_real_eip !9
  %102 = zext i1 %101 to i8, !mcsema_real_eip !9
  store volatile i8 %102, i8* %ZF_write, !mcsema_real_eip !9
  %103 = lshr i64 %88, 63, !mcsema_real_eip !9
  %104 = trunc i64 %103 to i1, !mcsema_real_eip !9
  %105 = zext i1 %104 to i8, !mcsema_real_eip !9
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !9
  %107 = zext i1 %106 to i8, !mcsema_real_eip !9
  store volatile i8 %107, i8* %SF_write, !mcsema_real_eip !9
  %108 = icmp ult i64 %86, %87, !mcsema_real_eip !9
  %109 = zext i1 %108 to i8, !mcsema_real_eip !9
  store volatile i8 %109, i8* %CF_write, !mcsema_real_eip !9
  %110 = xor i64 %86, %87, !mcsema_real_eip !9
  %111 = xor i64 %86, %88, !mcsema_real_eip !9
  %112 = and i64 %110, %111, !mcsema_real_eip !9
  %113 = lshr i64 %112, 63, !mcsema_real_eip !9
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !9
  %115 = zext i1 %114 to i8, !mcsema_real_eip !9
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !9
  %117 = zext i1 %116 to i8, !mcsema_real_eip !9
  store volatile i8 %117, i8* %OF_write, !mcsema_real_eip !9
  store volatile i64 %88, i64* %RAX_write, !mcsema_real_eip !9
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !10
  %118 = load i64, i64* %RAX_read, !mcsema_real_eip !10
  store volatile i64 %118, i64* %RDI_write, !mcsema_real_eip !10
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !11
  %119 = load i64, i64* %RSP_read, !mcsema_real_eip !11
  %120 = sub i64 %119, 8, !mcsema_real_eip !11
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !11
  store i64 52, i64* %121, !mcsema_real_eip !11
  store volatile i64 %120, i64* %RSP_write, !mcsema_real_eip !11
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !11
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !12
  %122 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %123 = add i64 %122, -16, !mcsema_real_eip !12
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !12
  %125 = load i64, i64* %124, !mcsema_real_eip !12
  store volatile i64 %125, i64* %RDI_write, !mcsema_real_eip !12
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !13
  %126 = load i64, i64* %RDI_read, !mcsema_real_eip !13
  %127 = sext i8 1 to i64, !mcsema_real_eip !13
  %128 = sub i64 %126, %127, !mcsema_real_eip !13
  %129 = xor i64 %128, %126, !mcsema_real_eip !13
  %130 = xor i64 %129, %127, !mcsema_real_eip !13
  %131 = and i64 %130, 16, !mcsema_real_eip !13
  %132 = icmp ne i64 %131, 0, !mcsema_real_eip !13
  %133 = zext i1 %132 to i8, !mcsema_real_eip !13
  store volatile i8 %133, i8* %AF_write, !mcsema_real_eip !13
  %134 = trunc i64 %128 to i8, !mcsema_real_eip !13
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !13
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !13
  %137 = zext i1 %136 to i8, !mcsema_real_eip !13
  %138 = xor i8 %137, 1, !mcsema_real_eip !13
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !13
  %140 = zext i1 %139 to i8, !mcsema_real_eip !13
  store volatile i8 %140, i8* %PF_write, !mcsema_real_eip !13
  %141 = icmp eq i64 %128, 0, !mcsema_real_eip !13
  %142 = zext i1 %141 to i8, !mcsema_real_eip !13
  store volatile i8 %142, i8* %ZF_write, !mcsema_real_eip !13
  %143 = lshr i64 %128, 63, !mcsema_real_eip !13
  %144 = trunc i64 %143 to i1, !mcsema_real_eip !13
  %145 = zext i1 %144 to i8, !mcsema_real_eip !13
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !13
  %147 = zext i1 %146 to i8, !mcsema_real_eip !13
  store volatile i8 %147, i8* %SF_write, !mcsema_real_eip !13
  %148 = icmp ult i64 %126, %127, !mcsema_real_eip !13
  %149 = zext i1 %148 to i8, !mcsema_real_eip !13
  store volatile i8 %149, i8* %CF_write, !mcsema_real_eip !13
  %150 = xor i64 %126, %127, !mcsema_real_eip !13
  %151 = xor i64 %126, %128, !mcsema_real_eip !13
  %152 = and i64 %150, %151, !mcsema_real_eip !13
  %153 = lshr i64 %152, 63, !mcsema_real_eip !13
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !13
  %155 = zext i1 %154 to i8, !mcsema_real_eip !13
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !13
  %157 = zext i1 %156 to i8, !mcsema_real_eip !13
  store volatile i8 %157, i8* %OF_write, !mcsema_real_eip !13
  store volatile i64 %128, i64* %RDI_write, !mcsema_real_eip !13
  store volatile i64 60, i64* %EIP_write, !mcsema_real_eip !14
  %158 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %159 = add i64 %158, -24, !mcsema_real_eip !14
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !14
  %161 = load i64, i64* %RAX_read, !mcsema_real_eip !14
  store i64 %161, i64* %160, !mcsema_real_eip !14
  store volatile i64 64, i64* %EIP_write, !mcsema_real_eip !15
  %162 = load i64, i64* %RSP_read, !mcsema_real_eip !15
  %163 = sub i64 %162, 8, !mcsema_real_eip !15
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !15
  store i64 69, i64* %164, !mcsema_real_eip !15
  store volatile i64 %163, i64* %RSP_write, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !16
  %165 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %166 = add i64 %165, -24, !mcsema_real_eip !16
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !16
  %168 = load i64, i64* %167, !mcsema_real_eip !16
  store volatile i64 %168, i64* %RDI_write, !mcsema_real_eip !16
  store volatile i64 73, i64* %EIP_write, !mcsema_real_eip !17
  %169 = load i64, i64* %RDI_read, !mcsema_real_eip !17
  %170 = load i64, i64* %RAX_read, !mcsema_real_eip !17
  %171 = add i64 %170, %169, !mcsema_real_eip !17
  %172 = xor i64 %171, %169, !mcsema_real_eip !17
  %173 = xor i64 %172, %170, !mcsema_real_eip !17
  %174 = and i64 %173, 16, !mcsema_real_eip !17
  %175 = icmp ne i64 %174, 0, !mcsema_real_eip !17
  %176 = zext i1 %175 to i8, !mcsema_real_eip !17
  store volatile i8 %176, i8* %AF_write, !mcsema_real_eip !17
  %177 = lshr i64 %171, 63, !mcsema_real_eip !17
  %178 = trunc i64 %177 to i1, !mcsema_real_eip !17
  %179 = zext i1 %178 to i8, !mcsema_real_eip !17
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !17
  %181 = zext i1 %180 to i8, !mcsema_real_eip !17
  store volatile i8 %181, i8* %SF_write, !mcsema_real_eip !17
  %182 = icmp eq i64 %171, 0, !mcsema_real_eip !17
  %183 = zext i1 %182 to i8, !mcsema_real_eip !17
  store volatile i8 %183, i8* %ZF_write, !mcsema_real_eip !17
  %184 = xor i64 %169, %170, !mcsema_real_eip !17
  %185 = xor i64 %184, -1, !mcsema_real_eip !17
  %186 = xor i64 %169, %171, !mcsema_real_eip !17
  %187 = and i64 %185, %186, !mcsema_real_eip !17
  %188 = lshr i64 %187, 63, !mcsema_real_eip !17
  %189 = and i64 %188, 1, !mcsema_real_eip !17
  %190 = trunc i64 %189 to i1, !mcsema_real_eip !17
  %191 = zext i1 %190 to i8, !mcsema_real_eip !17
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !17
  %193 = zext i1 %192 to i8, !mcsema_real_eip !17
  store volatile i8 %193, i8* %OF_write, !mcsema_real_eip !17
  %194 = trunc i64 %171 to i8, !mcsema_real_eip !17
  %195 = call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !17
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !17
  %197 = zext i1 %196 to i8, !mcsema_real_eip !17
  %198 = xor i8 %197, 1, !mcsema_real_eip !17
  %199 = trunc i8 %198 to i1, !mcsema_real_eip !17
  %200 = zext i1 %199 to i8, !mcsema_real_eip !17
  store volatile i8 %200, i8* %PF_write, !mcsema_real_eip !17
  %201 = icmp ult i64 %171, %169, !mcsema_real_eip !17
  %202 = zext i1 %201 to i8, !mcsema_real_eip !17
  store volatile i8 %202, i8* %CF_write, !mcsema_real_eip !17
  store volatile i64 %171, i64* %RDI_write, !mcsema_real_eip !17
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !18
  %203 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %204 = add i64 %203, -8, !mcsema_real_eip !18
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !18
  %206 = load i64, i64* %RDI_read, !mcsema_real_eip !18
  store i64 %206, i64* %205, !mcsema_real_eip !18
  br label %block_50, !mcsema_real_eip !19

block_50:                                         ; preds = %block_24, %block_17
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !19
  %207 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %208 = add i64 %207, -8, !mcsema_real_eip !19
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !19
  %210 = load i64, i64* %209, !mcsema_real_eip !19
  store volatile i64 %210, i64* %RAX_write, !mcsema_real_eip !19
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !20
  %211 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %212 = add i64 32, %211, !mcsema_real_eip !20
  %213 = xor i64 %212, %211, !mcsema_real_eip !20
  %214 = xor i64 %213, 32, !mcsema_real_eip !20
  %215 = and i64 %214, 16, !mcsema_real_eip !20
  %216 = icmp ne i64 %215, 0, !mcsema_real_eip !20
  %217 = zext i1 %216 to i8, !mcsema_real_eip !20
  store volatile i8 %217, i8* %AF_write, !mcsema_real_eip !20
  %218 = lshr i64 %212, 63, !mcsema_real_eip !20
  %219 = trunc i64 %218 to i1, !mcsema_real_eip !20
  %220 = zext i1 %219 to i8, !mcsema_real_eip !20
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !20
  %222 = zext i1 %221 to i8, !mcsema_real_eip !20
  store volatile i8 %222, i8* %SF_write, !mcsema_real_eip !20
  %223 = icmp eq i64 %212, 0, !mcsema_real_eip !20
  %224 = zext i1 %223 to i8, !mcsema_real_eip !20
  store volatile i8 %224, i8* %ZF_write, !mcsema_real_eip !20
  %225 = xor i64 %211, 32, !mcsema_real_eip !20
  %226 = xor i64 %225, -1, !mcsema_real_eip !20
  %227 = xor i64 %211, %212, !mcsema_real_eip !20
  %228 = and i64 %226, %227, !mcsema_real_eip !20
  %229 = lshr i64 %228, 63, !mcsema_real_eip !20
  %230 = and i64 %229, 1, !mcsema_real_eip !20
  %231 = trunc i64 %230 to i1, !mcsema_real_eip !20
  %232 = zext i1 %231 to i8, !mcsema_real_eip !20
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !20
  %234 = zext i1 %233 to i8, !mcsema_real_eip !20
  store volatile i8 %234, i8* %OF_write, !mcsema_real_eip !20
  %235 = trunc i64 %212 to i8, !mcsema_real_eip !20
  %236 = call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !20
  %237 = trunc i8 %236 to i1, !mcsema_real_eip !20
  %238 = zext i1 %237 to i8, !mcsema_real_eip !20
  %239 = xor i8 %238, 1, !mcsema_real_eip !20
  %240 = trunc i8 %239 to i1, !mcsema_real_eip !20
  %241 = zext i1 %240 to i8, !mcsema_real_eip !20
  store volatile i8 %241, i8* %PF_write, !mcsema_real_eip !20
  %242 = icmp ult i64 %212, %211, !mcsema_real_eip !20
  %243 = zext i1 %242 to i8, !mcsema_real_eip !20
  store volatile i8 %243, i8* %CF_write, !mcsema_real_eip !20
  store volatile i64 %212, i64* %RSP_write, !mcsema_real_eip !20
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !21
  %244 = load i64, i64* %RSP_read, !mcsema_real_eip !21
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !21
  %246 = load i64, i64* %245, !mcsema_real_eip !21
  store volatile i64 %246, i64* %RBP_write, !mcsema_real_eip !21
  %247 = add i64 %244, 8, !mcsema_real_eip !21
  store volatile i64 %247, i64* %RSP_write, !mcsema_real_eip !21
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !22
  %248 = load i64, i64* %RSP_read, !mcsema_real_eip !22
  %249 = add i64 %248, 8, !mcsema_real_eip !22
  %250 = inttoptr i64 %248 to i64*, !mcsema_real_eip !22
  %251 = load i64, i64* %250, !mcsema_real_eip !22
  store volatile i64 %251, i64* %RIP_write, !mcsema_real_eip !22
  store volatile i64 %249, i64* %RSP_write, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !23
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !23
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !23
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !23
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !23
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !23
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !23
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !23
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !23
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !23
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !23
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !23
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !23
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !23
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !23
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !23
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !23
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !23
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !23
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !23
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !23
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !23
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !23
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !23
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !23
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !23
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !23
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !23
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !23
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !23
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !23
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !23
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !23
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !23
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !23
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !23
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !23
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !23
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !23
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !23
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !23
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !23
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !23
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !23
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !23
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !23
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !23
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !23
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !23
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !23
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !23
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !23
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !23
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !23
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !23
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !23
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !23
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !23
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !23
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !23
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !23
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !23
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !23
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !23
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !23
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !23
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !23
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !23
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !23
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !23
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !23
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !23
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !23
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !23
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !23
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !23
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !23
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !23
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !23
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !23
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !23
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !23
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !23
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !23
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !23
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !23
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !23
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !23
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !23
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !23
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !23
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !23
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !23
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !23
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !23
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !23
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !23
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !23
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !23
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !23
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !23
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !23
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !23
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !23
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !23
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !23
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !23
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !23
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !23
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !23
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !23
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !23
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !23
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !23
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !23
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !23
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !23
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !23
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !23
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !23
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !23
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !23
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !23
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !23
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !23
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !23
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !23
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !23
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !23
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !23
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !23
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !23
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !23
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !23
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !23
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !23
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !23
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !23
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !23
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !23
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !23
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !23
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !23
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !23
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !23
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !23
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !23
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !23
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !23
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !23
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !23
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !23
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !23
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !23
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !23
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !23
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !23
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !23
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !23
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !23
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !23
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !23
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !23
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !23
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !23
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !23
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !23
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !23
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !23
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !23
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !23
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !23
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !23
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !23
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !23
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !23
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !23
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !23
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !23
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !23
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !23
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !23
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !23
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !23
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !23
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !23
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !23
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !23
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !23
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !23
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !23
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !23
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !23
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !23
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !23
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !23
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !23
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !23
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !23
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !23
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !23
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !23
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !23
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !23
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !23
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !23
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !23
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !23
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !23
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !23
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !23
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !23
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !23
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !23
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !23
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !23
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !23
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !23
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !23
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !23
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !23
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !23
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !23
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !23
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !23
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !23
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !23
  br label %block_60, !mcsema_real_eip !23

block_60:                                         ; preds = %entry
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !23
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !23
  %3 = sub i64 %2, 8, !mcsema_real_eip !23
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !23
  store i64 %1, i64* %4, !mcsema_real_eip !23
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !23
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !24
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !24
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !24
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !25
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !25
  %7 = sext i8 32 to i64, !mcsema_real_eip !25
  %8 = sub i64 %6, %7, !mcsema_real_eip !25
  %9 = xor i64 %8, %6, !mcsema_real_eip !25
  %10 = xor i64 %9, %7, !mcsema_real_eip !25
  %11 = and i64 %10, 16, !mcsema_real_eip !25
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !25
  %13 = zext i1 %12 to i8, !mcsema_real_eip !25
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !25
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !25
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !25
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !25
  %17 = zext i1 %16 to i8, !mcsema_real_eip !25
  %18 = xor i8 %17, 1, !mcsema_real_eip !25
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !25
  %20 = zext i1 %19 to i8, !mcsema_real_eip !25
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !25
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !25
  %22 = zext i1 %21 to i8, !mcsema_real_eip !25
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !25
  %23 = lshr i64 %8, 63, !mcsema_real_eip !25
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !25
  %25 = zext i1 %24 to i8, !mcsema_real_eip !25
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !25
  %27 = zext i1 %26 to i8, !mcsema_real_eip !25
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !25
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !25
  %29 = zext i1 %28 to i8, !mcsema_real_eip !25
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !25
  %30 = xor i64 %6, %7, !mcsema_real_eip !25
  %31 = xor i64 %6, %8, !mcsema_real_eip !25
  %32 = and i64 %30, %31, !mcsema_real_eip !25
  %33 = lshr i64 %32, 63, !mcsema_real_eip !25
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !25
  %35 = zext i1 %34 to i8, !mcsema_real_eip !25
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !25
  %37 = zext i1 %36 to i8, !mcsema_real_eip !25
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !25
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !25
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !26
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %39 = add i64 %38, -4, !mcsema_real_eip !26
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !26
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !26
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %42, !mcsema_real_eip !26
  store volatile i64 111, i64* %EIP_write, !mcsema_real_eip !27
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %44 = add i64 %43, -8, !mcsema_real_eip !27
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !27
  %46 = load i32, i32* %EDI_read, !mcsema_real_eip !27
  %47 = ptrtoint i64* %45 to i64, !mcsema_real_eip !27
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !27
  store i32 %46, i32* %48, !mcsema_real_eip !27
  store volatile i64 114, i64* %EIP_write, !mcsema_real_eip !28
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %50 = add i64 %49, -16, !mcsema_real_eip !28
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !28
  %52 = load i64, i64* %RSI_read, !mcsema_real_eip !28
  store i64 %52, i64* %51, !mcsema_real_eip !28
  store volatile i64 118, i64* %EIP_write, !mcsema_real_eip !29
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %54 = add i64 %53, -8, !mcsema_real_eip !29
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !29
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !29
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !29
  %58 = load i32, i32* %57, !mcsema_real_eip !29
  %59 = sub i32 %58, 2, !mcsema_real_eip !29
  %60 = xor i32 %59, %58, !mcsema_real_eip !29
  %61 = xor i32 %60, 2, !mcsema_real_eip !29
  %62 = and i32 %61, 16, !mcsema_real_eip !29
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !29
  %64 = zext i1 %63 to i8, !mcsema_real_eip !29
  store volatile i8 %64, i8* %AF_write, !mcsema_real_eip !29
  %65 = trunc i32 %59 to i8, !mcsema_real_eip !29
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !29
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !29
  %68 = zext i1 %67 to i8, !mcsema_real_eip !29
  %69 = xor i8 %68, 1, !mcsema_real_eip !29
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !29
  %71 = zext i1 %70 to i8, !mcsema_real_eip !29
  store volatile i8 %71, i8* %PF_write, !mcsema_real_eip !29
  %72 = icmp eq i32 %59, 0, !mcsema_real_eip !29
  %73 = zext i1 %72 to i8, !mcsema_real_eip !29
  store volatile i8 %73, i8* %ZF_write, !mcsema_real_eip !29
  %74 = lshr i32 %59, 31, !mcsema_real_eip !29
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !29
  %76 = zext i1 %75 to i8, !mcsema_real_eip !29
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !29
  %78 = zext i1 %77 to i8, !mcsema_real_eip !29
  store volatile i8 %78, i8* %SF_write, !mcsema_real_eip !29
  %79 = icmp ult i32 %58, 2, !mcsema_real_eip !29
  %80 = zext i1 %79 to i8, !mcsema_real_eip !29
  store volatile i8 %80, i8* %CF_write, !mcsema_real_eip !29
  %81 = xor i32 %58, 2, !mcsema_real_eip !29
  %82 = xor i32 %58, %59, !mcsema_real_eip !29
  %83 = and i32 %81, %82, !mcsema_real_eip !29
  %84 = lshr i32 %83, 31, !mcsema_real_eip !29
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !29
  %86 = zext i1 %85 to i8, !mcsema_real_eip !29
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !29
  %88 = zext i1 %87 to i8, !mcsema_real_eip !29
  store volatile i8 %88, i8* %OF_write, !mcsema_real_eip !29
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !30
  %89 = load i8, i8* %ZF_read, !mcsema_real_eip !30
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !30
  %91 = icmp eq i1 %90, false, !mcsema_real_eip !30
  br i1 %91, label %block_95, label %block_80, !mcsema_real_eip !30

block_80:                                         ; preds = %block_60
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !31
  %92 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %93 = add i64 %92, -16, !mcsema_real_eip !31
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !31
  %95 = load i64, i64* %94, !mcsema_real_eip !31
  store volatile i64 %95, i64* %RAX_write, !mcsema_real_eip !31
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !32
  %96 = load i64, i64* %RAX_read, !mcsema_real_eip !32
  %97 = add i64 %96, 8, !mcsema_real_eip !32
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !32
  %99 = load i64, i64* %98, !mcsema_real_eip !32
  store volatile i64 %99, i64* %RDI_write, !mcsema_real_eip !32
  store volatile i64 136, i64* %EIP_write, !mcsema_real_eip !33
  %100 = load i64, i64* %RDI_read, !mcsema_real_eip !33
  %101 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  %102 = sub i64 %101, 8, !mcsema_real_eip !33
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !33
  store i64 -2415393069852865332, i64* %103, !mcsema_real_eip !33
  store volatile i64 %102, i64* %RSP_write, !mcsema_real_eip !33
  %104 = call x86_64_sysvcc i64 @_atoi(i64 %100), !mcsema_real_eip !33
  store volatile i64 %104, i64* %RAX_write, !mcsema_real_eip !33
  store volatile i64 141, i64* %EIP_write, !mcsema_real_eip !34
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %106 = add i64 %105, -24, !mcsema_real_eip !34
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !34
  %108 = load i32, i32* %EAX_read, !mcsema_real_eip !34
  %109 = ptrtoint i64* %107 to i64, !mcsema_real_eip !34
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !34
  store i32 %108, i32* %110, !mcsema_real_eip !34
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !35
  br label %block_a2, !mcsema_real_eip !35

block_95:                                         ; preds = %block_60
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !36
  %111 = zext i32 20 to i64, !mcsema_real_eip !36
  store volatile i64 %111, i64* %EAX_write, !mcsema_real_eip !36
  store volatile i64 154, i64* %EIP_write, !mcsema_real_eip !37
  %112 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %113 = add i64 %112, -24, !mcsema_real_eip !37
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !37
  %115 = load i32, i32* %EAX_read, !mcsema_real_eip !37
  %116 = ptrtoint i64* %114 to i64, !mcsema_real_eip !37
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !37
  store i32 %115, i32* %117, !mcsema_real_eip !37
  store volatile i64 157, i64* %EIP_write, !mcsema_real_eip !38
  br label %block_a2, !mcsema_real_eip !38

block_a2:                                         ; preds = %block_95, %block_80
  store volatile i64 162, i64* %EIP_write, !mcsema_real_eip !39
  %118 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %119 = add i64 %118, -24, !mcsema_real_eip !39
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !39
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !39
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !39
  %123 = load i32, i32* %122, !mcsema_real_eip !39
  %124 = zext i32 %123 to i64, !mcsema_real_eip !39
  store volatile i64 %124, i64* %EAX_write, !mcsema_real_eip !39
  store volatile i64 165, i64* %EIP_write, !mcsema_real_eip !40
  %125 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %126 = add i64 %125, -20, !mcsema_real_eip !40
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !40
  %128 = load i32, i32* %EAX_read, !mcsema_real_eip !40
  %129 = ptrtoint i64* %127 to i64, !mcsema_real_eip !40
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !40
  store i32 %128, i32* %130, !mcsema_real_eip !40
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !41
  %131 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %132 = add i64 %131, -20, !mcsema_real_eip !41
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !41
  %134 = ptrtoint i64* %133 to i64, !mcsema_real_eip !41
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !41
  %136 = load i32, i32* %135, !mcsema_real_eip !41
  %137 = sext i32 %136 to i64, !mcsema_real_eip !41
  store volatile i64 %137, i64* %RDI_write, !mcsema_real_eip !41
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !42
  %138 = load i64, i64* %RSP_read, !mcsema_real_eip !42
  %139 = sub i64 %138, 8, !mcsema_real_eip !42
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !42
  store i64 177, i64* %140, !mcsema_real_eip !42
  store volatile i64 %139, i64* %RSP_write, !mcsema_real_eip !42
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !42
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !43
  %141 = ptrtoint %0* @data_d2 to i64, !mcsema_real_eip !43
  %142 = add i64 %141, 0, !mcsema_real_eip !43
  store volatile i64 %142, i64* %RDI_write, !mcsema_real_eip !43
  store volatile i64 187, i64* %EIP_write, !mcsema_real_eip !44
  %143 = load i64, i64* %RAX_read, !mcsema_real_eip !44
  store volatile i64 %143, i64* %RSI_write, !mcsema_real_eip !44
  store volatile i64 190, i64* %EIP_write, !mcsema_real_eip !45
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !45
  store volatile i64 192, i64* %EIP_write, !mcsema_real_eip !46
  %144 = load i64, i64* %RDI_read, !mcsema_real_eip !46
  %145 = load i64, i64* %RSI_read, !mcsema_real_eip !46
  %146 = load i64, i64* %RDX_read, !mcsema_real_eip !46
  %147 = load i64, i64* %RCX_read, !mcsema_real_eip !46
  %148 = load i64, i64* %R8_read, !mcsema_real_eip !46
  %149 = load i64, i64* %R9_read, !mcsema_real_eip !46
  %150 = load i64, i64* %RSP_read, !mcsema_real_eip !46
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !46
  %152 = load i64, i64* %151, !mcsema_real_eip !46
  %153 = add i64 %150, 8, !mcsema_real_eip !46
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !46
  %155 = load i64, i64* %154, !mcsema_real_eip !46
  %156 = add i64 %153, 8, !mcsema_real_eip !46
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !46
  %158 = load i64, i64* %157, !mcsema_real_eip !46
  %159 = add i64 %156, 8, !mcsema_real_eip !46
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !46
  %161 = load i64, i64* %160, !mcsema_real_eip !46
  %162 = add i64 %159, 8, !mcsema_real_eip !46
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !46
  %164 = load i64, i64* %163, !mcsema_real_eip !46
  %165 = add i64 %162, 8, !mcsema_real_eip !46
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !46
  %167 = load i64, i64* %166, !mcsema_real_eip !46
  %168 = add i64 %165, 8, !mcsema_real_eip !46
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !46
  %170 = load i64, i64* %169, !mcsema_real_eip !46
  %171 = add i64 %168, 8, !mcsema_real_eip !46
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !46
  %173 = load i64, i64* %172, !mcsema_real_eip !46
  %174 = add i64 %171, 8, !mcsema_real_eip !46
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !46
  %176 = load i64, i64* %175, !mcsema_real_eip !46
  %177 = add i64 %174, 8, !mcsema_real_eip !46
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !46
  %179 = load i64, i64* %178, !mcsema_real_eip !46
  %180 = load i64, i64* %RSP_read, !mcsema_real_eip !46
  %181 = sub i64 %180, 8, !mcsema_real_eip !46
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !46
  store i64 -2415393069852865332, i64* %182, !mcsema_real_eip !46
  store volatile i64 %181, i64* %RSP_write, !mcsema_real_eip !46
  %183 = call x86_64_sysvcc i64 @_printf(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %152, i64 %155, i64 %158, i64 %161, i64 %164, i64 %167, i64 %170, i64 %173, i64 %176, i64 %179), !mcsema_real_eip !46
  store volatile i64 %183, i64* %RAX_write, !mcsema_real_eip !46
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !47
  %184 = load i32, i32* %ECX_read, !mcsema_real_eip !47
  %185 = load i32, i32* %ECX_read, !mcsema_real_eip !47
  %186 = xor i32 %184, %185, !mcsema_real_eip !47
  %187 = trunc i8 0 to i1, !mcsema_real_eip !47
  %188 = zext i1 %187 to i8, !mcsema_real_eip !47
  store volatile i8 %188, i8* %CF_write, !mcsema_real_eip !47
  %189 = trunc i8 0 to i1, !mcsema_real_eip !47
  %190 = zext i1 %189 to i8, !mcsema_real_eip !47
  store volatile i8 %190, i8* %OF_write, !mcsema_real_eip !47
  %191 = lshr i32 %186, 31, !mcsema_real_eip !47
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !47
  %193 = zext i1 %192 to i8, !mcsema_real_eip !47
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !47
  %195 = zext i1 %194 to i8, !mcsema_real_eip !47
  store volatile i8 %195, i8* %SF_write, !mcsema_real_eip !47
  %196 = icmp eq i32 %186, 0, !mcsema_real_eip !47
  %197 = zext i1 %196 to i8, !mcsema_real_eip !47
  store volatile i8 %197, i8* %ZF_write, !mcsema_real_eip !47
  %198 = trunc i32 %186 to i8, !mcsema_real_eip !47
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !47
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !47
  %201 = zext i1 %200 to i8, !mcsema_real_eip !47
  %202 = xor i8 %201, 1, !mcsema_real_eip !47
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !47
  %204 = zext i1 %203 to i8, !mcsema_real_eip !47
  store volatile i8 %204, i8* %PF_write, !mcsema_real_eip !47
  %205 = zext i32 %186 to i64, !mcsema_real_eip !47
  store volatile i64 %205, i64* %ECX_write, !mcsema_real_eip !47
  store volatile i64 199, i64* %EIP_write, !mcsema_real_eip !48
  %206 = load i64, i64* %RBP_read, !mcsema_real_eip !48
  %207 = add i64 %206, -28, !mcsema_real_eip !48
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !48
  %209 = load i32, i32* %EAX_read, !mcsema_real_eip !48
  %210 = ptrtoint i64* %208 to i64, !mcsema_real_eip !48
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !48
  store i32 %209, i32* %211, !mcsema_real_eip !48
  store volatile i64 202, i64* %EIP_write, !mcsema_real_eip !49
  %212 = load i32, i32* %ECX_read, !mcsema_real_eip !49
  %213 = zext i32 %212 to i64, !mcsema_real_eip !49
  store volatile i64 %213, i64* %EAX_write, !mcsema_real_eip !49
  store volatile i64 204, i64* %EIP_write, !mcsema_real_eip !50
  %214 = load i64, i64* %RSP_read, !mcsema_real_eip !50
  %215 = add i64 32, %214, !mcsema_real_eip !50
  %216 = xor i64 %215, %214, !mcsema_real_eip !50
  %217 = xor i64 %216, 32, !mcsema_real_eip !50
  %218 = and i64 %217, 16, !mcsema_real_eip !50
  %219 = icmp ne i64 %218, 0, !mcsema_real_eip !50
  %220 = zext i1 %219 to i8, !mcsema_real_eip !50
  store volatile i8 %220, i8* %AF_write, !mcsema_real_eip !50
  %221 = lshr i64 %215, 63, !mcsema_real_eip !50
  %222 = trunc i64 %221 to i1, !mcsema_real_eip !50
  %223 = zext i1 %222 to i8, !mcsema_real_eip !50
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !50
  %225 = zext i1 %224 to i8, !mcsema_real_eip !50
  store volatile i8 %225, i8* %SF_write, !mcsema_real_eip !50
  %226 = icmp eq i64 %215, 0, !mcsema_real_eip !50
  %227 = zext i1 %226 to i8, !mcsema_real_eip !50
  store volatile i8 %227, i8* %ZF_write, !mcsema_real_eip !50
  %228 = xor i64 %214, 32, !mcsema_real_eip !50
  %229 = xor i64 %228, -1, !mcsema_real_eip !50
  %230 = xor i64 %214, %215, !mcsema_real_eip !50
  %231 = and i64 %229, %230, !mcsema_real_eip !50
  %232 = lshr i64 %231, 63, !mcsema_real_eip !50
  %233 = and i64 %232, 1, !mcsema_real_eip !50
  %234 = trunc i64 %233 to i1, !mcsema_real_eip !50
  %235 = zext i1 %234 to i8, !mcsema_real_eip !50
  %236 = trunc i8 %235 to i1, !mcsema_real_eip !50
  %237 = zext i1 %236 to i8, !mcsema_real_eip !50
  store volatile i8 %237, i8* %OF_write, !mcsema_real_eip !50
  %238 = trunc i64 %215 to i8, !mcsema_real_eip !50
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !50
  %240 = trunc i8 %239 to i1, !mcsema_real_eip !50
  %241 = zext i1 %240 to i8, !mcsema_real_eip !50
  %242 = xor i8 %241, 1, !mcsema_real_eip !50
  %243 = trunc i8 %242 to i1, !mcsema_real_eip !50
  %244 = zext i1 %243 to i8, !mcsema_real_eip !50
  store volatile i8 %244, i8* %PF_write, !mcsema_real_eip !50
  %245 = icmp ult i64 %215, %214, !mcsema_real_eip !50
  %246 = zext i1 %245 to i8, !mcsema_real_eip !50
  store volatile i8 %246, i8* %CF_write, !mcsema_real_eip !50
  store volatile i64 %215, i64* %RSP_write, !mcsema_real_eip !50
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !51
  %247 = load i64, i64* %RSP_read, !mcsema_real_eip !51
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !51
  %249 = load i64, i64* %248, !mcsema_real_eip !51
  store volatile i64 %249, i64* %RBP_write, !mcsema_real_eip !51
  %250 = add i64 %247, 8, !mcsema_real_eip !51
  store volatile i64 %250, i64* %RSP_write, !mcsema_real_eip !51
  store volatile i64 209, i64* %EIP_write, !mcsema_real_eip !52
  %251 = load i64, i64* %RSP_read, !mcsema_real_eip !52
  %252 = add i64 %251, 8, !mcsema_real_eip !52
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !52
  %254 = load i64, i64* %253, !mcsema_real_eip !52
  store volatile i64 %254, i64* %RIP_write, !mcsema_real_eip !52
  store volatile i64 %252, i64* %RSP_write, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

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
!4 = !{i64 12}
!5 = !{i64 17}
!6 = !{i64 23}
!7 = !{i64 31}
!8 = !{i64 36}
!9 = !{i64 40}
!10 = !{i64 44}
!11 = !{i64 47}
!12 = !{i64 52}
!13 = !{i64 56}
!14 = !{i64 60}
!15 = !{i64 64}
!16 = !{i64 69}
!17 = !{i64 73}
!18 = !{i64 76}
!19 = !{i64 80}
!20 = !{i64 84}
!21 = !{i64 88}
!22 = !{i64 89}
!23 = !{i64 96}
!24 = !{i64 97}
!25 = !{i64 100}
!26 = !{i64 104}
!27 = !{i64 111}
!28 = !{i64 114}
!29 = !{i64 118}
!30 = !{i64 122}
!31 = !{i64 128}
!32 = !{i64 132}
!33 = !{i64 136}
!34 = !{i64 141}
!35 = !{i64 144}
!36 = !{i64 149}
!37 = !{i64 154}
!38 = !{i64 157}
!39 = !{i64 162}
!40 = !{i64 165}
!41 = !{i64 168}
!42 = !{i64 172}
!43 = !{i64 177}
!44 = !{i64 187}
!45 = !{i64 190}
!46 = !{i64 192}
!47 = !{i64 197}
!48 = !{i64 199}
!49 = !{i64 202}
!50 = !{i64 204}
!51 = !{i64 208}
!52 = !{i64 209}
