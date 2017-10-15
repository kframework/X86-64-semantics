; ModuleID = 'Output/test_33.clang.lifted.bc'
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64
@data_110 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"y\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\80\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %39 = add i64 %38, -8, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i32, i32* %EDI_read, !mcsema_real_eip !3
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !3
  store i32 %41, i32* %43, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %45 = add i64 %44, -12, !mcsema_real_eip !4
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !4
  %47 = load i32, i32* %ESI_read, !mcsema_real_eip !4
  %48 = ptrtoint i64* %46 to i64, !mcsema_real_eip !4
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !4
  store i32 %47, i32* %49, !mcsema_real_eip !4
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !5
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %51 = add i64 %50, -8, !mcsema_real_eip !5
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !5
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !5
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !5
  %55 = load i32, i32* %54, !mcsema_real_eip !5
  %56 = sub i32 %55, 0, !mcsema_real_eip !5
  %57 = xor i32 %56, %55, !mcsema_real_eip !5
  %58 = xor i32 %57, 0, !mcsema_real_eip !5
  %59 = and i32 %58, 16, !mcsema_real_eip !5
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !5
  %61 = zext i1 %60 to i8, !mcsema_real_eip !5
  store volatile i8 %61, i8* %AF_write, !mcsema_real_eip !5
  %62 = trunc i32 %56 to i8, !mcsema_real_eip !5
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !5
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !5
  %65 = zext i1 %64 to i8, !mcsema_real_eip !5
  %66 = xor i8 %65, 1, !mcsema_real_eip !5
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !5
  %68 = zext i1 %67 to i8, !mcsema_real_eip !5
  store volatile i8 %68, i8* %PF_write, !mcsema_real_eip !5
  %69 = icmp eq i32 %56, 0, !mcsema_real_eip !5
  %70 = zext i1 %69 to i8, !mcsema_real_eip !5
  store volatile i8 %70, i8* %ZF_write, !mcsema_real_eip !5
  %71 = lshr i32 %56, 31, !mcsema_real_eip !5
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !5
  %73 = zext i1 %72 to i8, !mcsema_real_eip !5
  %74 = trunc i8 %73 to i1, !mcsema_real_eip !5
  %75 = zext i1 %74 to i8, !mcsema_real_eip !5
  store volatile i8 %75, i8* %SF_write, !mcsema_real_eip !5
  %76 = icmp ult i32 %55, 0, !mcsema_real_eip !5
  %77 = zext i1 %76 to i8, !mcsema_real_eip !5
  store volatile i8 %77, i8* %CF_write, !mcsema_real_eip !5
  %78 = xor i32 %55, 0, !mcsema_real_eip !5
  %79 = xor i32 %55, %56, !mcsema_real_eip !5
  %80 = and i32 %78, %79, !mcsema_real_eip !5
  %81 = lshr i32 %80, 31, !mcsema_real_eip !5
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !5
  %83 = zext i1 %82 to i8, !mcsema_real_eip !5
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !5
  %85 = zext i1 %84 to i8, !mcsema_real_eip !5
  store volatile i8 %85, i8* %OF_write, !mcsema_real_eip !5
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !6
  %86 = load i8, i8* %ZF_read, !mcsema_real_eip !6
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !6
  %88 = icmp eq i1 %87, false, !mcsema_real_eip !6
  br i1 %88, label %block_26, label %block_18, !mcsema_real_eip !6

block_18:                                         ; preds = %block_0
  store volatile i64 24, i64* %EIP_write, !mcsema_real_eip !7
  %89 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %90 = add i64 %89, -12, !mcsema_real_eip !7
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !7
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !7
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !7
  %94 = load i32, i32* %93, !mcsema_real_eip !7
  %95 = zext i32 %94 to i64, !mcsema_real_eip !7
  store volatile i64 %95, i64* %EAX_write, !mcsema_real_eip !7
  store volatile i64 27, i64* %EIP_write, !mcsema_real_eip !8
  %96 = load i32, i32* %EAX_read, !mcsema_real_eip !8
  %97 = add i32 1, %96, !mcsema_real_eip !8
  %98 = xor i32 %97, %96, !mcsema_real_eip !8
  %99 = xor i32 %98, 1, !mcsema_real_eip !8
  %100 = and i32 %99, 16, !mcsema_real_eip !8
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !8
  %102 = zext i1 %101 to i8, !mcsema_real_eip !8
  store volatile i8 %102, i8* %AF_write, !mcsema_real_eip !8
  %103 = lshr i32 %97, 31, !mcsema_real_eip !8
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !8
  %105 = zext i1 %104 to i8, !mcsema_real_eip !8
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !8
  %107 = zext i1 %106 to i8, !mcsema_real_eip !8
  store volatile i8 %107, i8* %SF_write, !mcsema_real_eip !8
  %108 = icmp eq i32 %97, 0, !mcsema_real_eip !8
  %109 = zext i1 %108 to i8, !mcsema_real_eip !8
  store volatile i8 %109, i8* %ZF_write, !mcsema_real_eip !8
  %110 = xor i32 %96, 1, !mcsema_real_eip !8
  %111 = xor i32 %110, -1, !mcsema_real_eip !8
  %112 = xor i32 %96, %97, !mcsema_real_eip !8
  %113 = and i32 %111, %112, !mcsema_real_eip !8
  %114 = lshr i32 %113, 31, !mcsema_real_eip !8
  %115 = and i32 %114, 1, !mcsema_real_eip !8
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !8
  %117 = zext i1 %116 to i8, !mcsema_real_eip !8
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !8
  %119 = zext i1 %118 to i8, !mcsema_real_eip !8
  store volatile i8 %119, i8* %OF_write, !mcsema_real_eip !8
  %120 = trunc i32 %97 to i8, !mcsema_real_eip !8
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !8
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !8
  %123 = zext i1 %122 to i8, !mcsema_real_eip !8
  %124 = xor i8 %123, 1, !mcsema_real_eip !8
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !8
  %126 = zext i1 %125 to i8, !mcsema_real_eip !8
  store volatile i8 %126, i8* %PF_write, !mcsema_real_eip !8
  %127 = icmp ult i32 %97, %96, !mcsema_real_eip !8
  %128 = zext i1 %127 to i8, !mcsema_real_eip !8
  store volatile i8 %128, i8* %CF_write, !mcsema_real_eip !8
  %129 = zext i32 %97 to i64, !mcsema_real_eip !8
  store volatile i64 %129, i64* %EAX_write, !mcsema_real_eip !8
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !9
  %130 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %131 = add i64 %130, -4, !mcsema_real_eip !9
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !9
  %133 = load i32, i32* %EAX_read, !mcsema_real_eip !9
  %134 = ptrtoint i64* %132 to i64, !mcsema_real_eip !9
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !9
  store i32 %133, i32* %135, !mcsema_real_eip !9
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !10
  br label %block_70, !mcsema_real_eip !10

block_26:                                         ; preds = %block_0
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !11
  %136 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %137 = add i64 %136, -12, !mcsema_real_eip !11
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !11
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !11
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !11
  %141 = load i32, i32* %140, !mcsema_real_eip !11
  %142 = sub i32 %141, 0, !mcsema_real_eip !11
  %143 = xor i32 %142, %141, !mcsema_real_eip !11
  %144 = xor i32 %143, 0, !mcsema_real_eip !11
  %145 = and i32 %144, 16, !mcsema_real_eip !11
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !11
  %147 = zext i1 %146 to i8, !mcsema_real_eip !11
  store volatile i8 %147, i8* %AF_write, !mcsema_real_eip !11
  %148 = trunc i32 %142 to i8, !mcsema_real_eip !11
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !11
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !11
  %151 = zext i1 %150 to i8, !mcsema_real_eip !11
  %152 = xor i8 %151, 1, !mcsema_real_eip !11
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !11
  %154 = zext i1 %153 to i8, !mcsema_real_eip !11
  store volatile i8 %154, i8* %PF_write, !mcsema_real_eip !11
  %155 = icmp eq i32 %142, 0, !mcsema_real_eip !11
  %156 = zext i1 %155 to i8, !mcsema_real_eip !11
  store volatile i8 %156, i8* %ZF_write, !mcsema_real_eip !11
  %157 = lshr i32 %142, 31, !mcsema_real_eip !11
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !11
  %159 = zext i1 %158 to i8, !mcsema_real_eip !11
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !11
  %161 = zext i1 %160 to i8, !mcsema_real_eip !11
  store volatile i8 %161, i8* %SF_write, !mcsema_real_eip !11
  %162 = icmp ult i32 %141, 0, !mcsema_real_eip !11
  %163 = zext i1 %162 to i8, !mcsema_real_eip !11
  store volatile i8 %163, i8* %CF_write, !mcsema_real_eip !11
  %164 = xor i32 %141, 0, !mcsema_real_eip !11
  %165 = xor i32 %141, %142, !mcsema_real_eip !11
  %166 = and i32 %164, %165, !mcsema_real_eip !11
  %167 = lshr i32 %166, 31, !mcsema_real_eip !11
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !11
  %169 = zext i1 %168 to i8, !mcsema_real_eip !11
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !11
  %171 = zext i1 %170 to i8, !mcsema_real_eip !11
  store volatile i8 %171, i8* %OF_write, !mcsema_real_eip !11
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !12
  %172 = load i8, i8* %ZF_read, !mcsema_real_eip !12
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !12
  %174 = icmp eq i1 %173, false, !mcsema_real_eip !12
  br i1 %174, label %block_4a, label %block_30, !mcsema_real_eip !12

block_30:                                         ; preds = %block_26
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !13
  %175 = zext i32 1 to i64, !mcsema_real_eip !13
  store volatile i64 %175, i64* %ESI_write, !mcsema_real_eip !13
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !14
  %176 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %177 = add i64 %176, -8, !mcsema_real_eip !14
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !14
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !14
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !14
  %181 = load i32, i32* %180, !mcsema_real_eip !14
  %182 = zext i32 %181 to i64, !mcsema_real_eip !14
  store volatile i64 %182, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !15
  %183 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %184 = sub i32 %183, 1, !mcsema_real_eip !15
  %185 = xor i32 %184, %183, !mcsema_real_eip !15
  %186 = xor i32 %185, 1, !mcsema_real_eip !15
  %187 = and i32 %186, 16, !mcsema_real_eip !15
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !15
  %189 = zext i1 %188 to i8, !mcsema_real_eip !15
  store volatile i8 %189, i8* %AF_write, !mcsema_real_eip !15
  %190 = trunc i32 %184 to i8, !mcsema_real_eip !15
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !15
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !15
  %193 = zext i1 %192 to i8, !mcsema_real_eip !15
  %194 = xor i8 %193, 1, !mcsema_real_eip !15
  %195 = trunc i8 %194 to i1, !mcsema_real_eip !15
  %196 = zext i1 %195 to i8, !mcsema_real_eip !15
  store volatile i8 %196, i8* %PF_write, !mcsema_real_eip !15
  %197 = icmp eq i32 %184, 0, !mcsema_real_eip !15
  %198 = zext i1 %197 to i8, !mcsema_real_eip !15
  store volatile i8 %198, i8* %ZF_write, !mcsema_real_eip !15
  %199 = lshr i32 %184, 31, !mcsema_real_eip !15
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !15
  %201 = zext i1 %200 to i8, !mcsema_real_eip !15
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !15
  %203 = zext i1 %202 to i8, !mcsema_real_eip !15
  store volatile i8 %203, i8* %SF_write, !mcsema_real_eip !15
  %204 = icmp ult i32 %183, 1, !mcsema_real_eip !15
  %205 = zext i1 %204 to i8, !mcsema_real_eip !15
  store volatile i8 %205, i8* %CF_write, !mcsema_real_eip !15
  %206 = xor i32 %183, 1, !mcsema_real_eip !15
  %207 = xor i32 %183, %184, !mcsema_real_eip !15
  %208 = and i32 %206, %207, !mcsema_real_eip !15
  %209 = lshr i32 %208, 31, !mcsema_real_eip !15
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !15
  %211 = zext i1 %210 to i8, !mcsema_real_eip !15
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !15
  %213 = zext i1 %212 to i8, !mcsema_real_eip !15
  store volatile i8 %213, i8* %OF_write, !mcsema_real_eip !15
  %214 = zext i32 %184 to i64, !mcsema_real_eip !15
  store volatile i64 %214, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !16
  %215 = load i32, i32* %EAX_read, !mcsema_real_eip !16
  %216 = zext i32 %215 to i64, !mcsema_real_eip !16
  store volatile i64 %216, i64* %EDI_write, !mcsema_real_eip !16
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !17
  %217 = load i64, i64* %RSP_read, !mcsema_real_eip !17
  %218 = sub i64 %217, 8, !mcsema_real_eip !17
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !17
  store i64 66, i64* %219, !mcsema_real_eip !17
  store volatile i64 %218, i64* %RSP_write, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !18
  %220 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %221 = add i64 %220, -4, !mcsema_real_eip !18
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !18
  %223 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %224 = ptrtoint i64* %222 to i64, !mcsema_real_eip !18
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !18
  store i32 %223, i32* %225, !mcsema_real_eip !18
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !19
  br label %block_70, !mcsema_real_eip !19

block_4a:                                         ; preds = %block_26
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !20
  %226 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %227 = add i64 %226, -8, !mcsema_real_eip !20
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !20
  %229 = ptrtoint i64* %228 to i64, !mcsema_real_eip !20
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !20
  %231 = load i32, i32* %230, !mcsema_real_eip !20
  %232 = zext i32 %231 to i64, !mcsema_real_eip !20
  store volatile i64 %232, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !21
  %233 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %234 = sub i32 %233, 1, !mcsema_real_eip !21
  %235 = xor i32 %234, %233, !mcsema_real_eip !21
  %236 = xor i32 %235, 1, !mcsema_real_eip !21
  %237 = and i32 %236, 16, !mcsema_real_eip !21
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !21
  %239 = zext i1 %238 to i8, !mcsema_real_eip !21
  store volatile i8 %239, i8* %AF_write, !mcsema_real_eip !21
  %240 = trunc i32 %234 to i8, !mcsema_real_eip !21
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !21
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !21
  %243 = zext i1 %242 to i8, !mcsema_real_eip !21
  %244 = xor i8 %243, 1, !mcsema_real_eip !21
  %245 = trunc i8 %244 to i1, !mcsema_real_eip !21
  %246 = zext i1 %245 to i8, !mcsema_real_eip !21
  store volatile i8 %246, i8* %PF_write, !mcsema_real_eip !21
  %247 = icmp eq i32 %234, 0, !mcsema_real_eip !21
  %248 = zext i1 %247 to i8, !mcsema_real_eip !21
  store volatile i8 %248, i8* %ZF_write, !mcsema_real_eip !21
  %249 = lshr i32 %234, 31, !mcsema_real_eip !21
  %250 = trunc i32 %249 to i1, !mcsema_real_eip !21
  %251 = zext i1 %250 to i8, !mcsema_real_eip !21
  %252 = trunc i8 %251 to i1, !mcsema_real_eip !21
  %253 = zext i1 %252 to i8, !mcsema_real_eip !21
  store volatile i8 %253, i8* %SF_write, !mcsema_real_eip !21
  %254 = icmp ult i32 %233, 1, !mcsema_real_eip !21
  %255 = zext i1 %254 to i8, !mcsema_real_eip !21
  store volatile i8 %255, i8* %CF_write, !mcsema_real_eip !21
  %256 = xor i32 %233, 1, !mcsema_real_eip !21
  %257 = xor i32 %233, %234, !mcsema_real_eip !21
  %258 = and i32 %256, %257, !mcsema_real_eip !21
  %259 = lshr i32 %258, 31, !mcsema_real_eip !21
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !21
  %261 = zext i1 %260 to i8, !mcsema_real_eip !21
  %262 = trunc i8 %261 to i1, !mcsema_real_eip !21
  %263 = zext i1 %262 to i8, !mcsema_real_eip !21
  store volatile i8 %263, i8* %OF_write, !mcsema_real_eip !21
  %264 = zext i32 %234 to i64, !mcsema_real_eip !21
  store volatile i64 %264, i64* %EAX_write, !mcsema_real_eip !21
  store volatile i64 80, i64* %EIP_write, !mcsema_real_eip !22
  %265 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %266 = add i64 %265, -8, !mcsema_real_eip !22
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !22
  %268 = ptrtoint i64* %267 to i64, !mcsema_real_eip !22
  %269 = inttoptr i64 %268 to i32*, !mcsema_real_eip !22
  %270 = load i32, i32* %269, !mcsema_real_eip !22
  %271 = zext i32 %270 to i64, !mcsema_real_eip !22
  store volatile i64 %271, i64* %EDI_write, !mcsema_real_eip !22
  store volatile i64 83, i64* %EIP_write, !mcsema_real_eip !23
  %272 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %273 = add i64 %272, -12, !mcsema_real_eip !23
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !23
  %275 = ptrtoint i64* %274 to i64, !mcsema_real_eip !23
  %276 = inttoptr i64 %275 to i32*, !mcsema_real_eip !23
  %277 = load i32, i32* %276, !mcsema_real_eip !23
  %278 = zext i32 %277 to i64, !mcsema_real_eip !23
  store volatile i64 %278, i64* %ECX_write, !mcsema_real_eip !23
  store volatile i64 86, i64* %EIP_write, !mcsema_real_eip !24
  %279 = load i32, i32* %ECX_read, !mcsema_real_eip !24
  %280 = sub i32 %279, 1, !mcsema_real_eip !24
  %281 = xor i32 %280, %279, !mcsema_real_eip !24
  %282 = xor i32 %281, 1, !mcsema_real_eip !24
  %283 = and i32 %282, 16, !mcsema_real_eip !24
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !24
  %285 = zext i1 %284 to i8, !mcsema_real_eip !24
  store volatile i8 %285, i8* %AF_write, !mcsema_real_eip !24
  %286 = trunc i32 %280 to i8, !mcsema_real_eip !24
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !24
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !24
  %289 = zext i1 %288 to i8, !mcsema_real_eip !24
  %290 = xor i8 %289, 1, !mcsema_real_eip !24
  %291 = trunc i8 %290 to i1, !mcsema_real_eip !24
  %292 = zext i1 %291 to i8, !mcsema_real_eip !24
  store volatile i8 %292, i8* %PF_write, !mcsema_real_eip !24
  %293 = icmp eq i32 %280, 0, !mcsema_real_eip !24
  %294 = zext i1 %293 to i8, !mcsema_real_eip !24
  store volatile i8 %294, i8* %ZF_write, !mcsema_real_eip !24
  %295 = lshr i32 %280, 31, !mcsema_real_eip !24
  %296 = trunc i32 %295 to i1, !mcsema_real_eip !24
  %297 = zext i1 %296 to i8, !mcsema_real_eip !24
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !24
  %299 = zext i1 %298 to i8, !mcsema_real_eip !24
  store volatile i8 %299, i8* %SF_write, !mcsema_real_eip !24
  %300 = icmp ult i32 %279, 1, !mcsema_real_eip !24
  %301 = zext i1 %300 to i8, !mcsema_real_eip !24
  store volatile i8 %301, i8* %CF_write, !mcsema_real_eip !24
  %302 = xor i32 %279, 1, !mcsema_real_eip !24
  %303 = xor i32 %279, %280, !mcsema_real_eip !24
  %304 = and i32 %302, %303, !mcsema_real_eip !24
  %305 = lshr i32 %304, 31, !mcsema_real_eip !24
  %306 = trunc i32 %305 to i1, !mcsema_real_eip !24
  %307 = zext i1 %306 to i8, !mcsema_real_eip !24
  %308 = trunc i8 %307 to i1, !mcsema_real_eip !24
  %309 = zext i1 %308 to i8, !mcsema_real_eip !24
  store volatile i8 %309, i8* %OF_write, !mcsema_real_eip !24
  %310 = zext i32 %280 to i64, !mcsema_real_eip !24
  store volatile i64 %310, i64* %ECX_write, !mcsema_real_eip !24
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !25
  %311 = load i32, i32* %ECX_read, !mcsema_real_eip !25
  %312 = zext i32 %311 to i64, !mcsema_real_eip !25
  store volatile i64 %312, i64* %ESI_write, !mcsema_real_eip !25
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !26
  %313 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %314 = add i64 %313, -16, !mcsema_real_eip !26
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !26
  %316 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %317 = ptrtoint i64* %315 to i64, !mcsema_real_eip !26
  %318 = inttoptr i64 %317 to i32*, !mcsema_real_eip !26
  store i32 %316, i32* %318, !mcsema_real_eip !26
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !27
  %319 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  %320 = sub i64 %319, 8, !mcsema_real_eip !27
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !27
  store i64 99, i64* %321, !mcsema_real_eip !27
  store volatile i64 %320, i64* %RSP_write, !mcsema_real_eip !27
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !27
  store volatile i64 99, i64* %EIP_write, !mcsema_real_eip !28
  %322 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %323 = add i64 %322, -16, !mcsema_real_eip !28
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !28
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !28
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !28
  %327 = load i32, i32* %326, !mcsema_real_eip !28
  %328 = zext i32 %327 to i64, !mcsema_real_eip !28
  store volatile i64 %328, i64* %EDI_write, !mcsema_real_eip !28
  store volatile i64 102, i64* %EIP_write, !mcsema_real_eip !29
  %329 = load i32, i32* %EAX_read, !mcsema_real_eip !29
  %330 = zext i32 %329 to i64, !mcsema_real_eip !29
  store volatile i64 %330, i64* %ESI_write, !mcsema_real_eip !29
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !30
  %331 = load i64, i64* %RSP_read, !mcsema_real_eip !30
  %332 = sub i64 %331, 8, !mcsema_real_eip !30
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !30
  store i64 109, i64* %333, !mcsema_real_eip !30
  store volatile i64 %332, i64* %RSP_write, !mcsema_real_eip !30
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !30
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !31
  %334 = load i64, i64* %RBP_read, !mcsema_real_eip !31
  %335 = add i64 %334, -4, !mcsema_real_eip !31
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !31
  %337 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %338 = ptrtoint i64* %336 to i64, !mcsema_real_eip !31
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !31
  store i32 %337, i32* %339, !mcsema_real_eip !31
  br label %block_70, !mcsema_real_eip !32

block_70:                                         ; preds = %block_4a, %block_30, %block_18
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !32
  %340 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %341 = add i64 %340, -4, !mcsema_real_eip !32
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !32
  %343 = ptrtoint i64* %342 to i64, !mcsema_real_eip !32
  %344 = inttoptr i64 %343 to i32*, !mcsema_real_eip !32
  %345 = load i32, i32* %344, !mcsema_real_eip !32
  %346 = zext i32 %345 to i64, !mcsema_real_eip !32
  store volatile i64 %346, i64* %EAX_write, !mcsema_real_eip !32
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !33
  %347 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  %348 = add i64 16, %347, !mcsema_real_eip !33
  %349 = xor i64 %348, %347, !mcsema_real_eip !33
  %350 = xor i64 %349, 16, !mcsema_real_eip !33
  %351 = and i64 %350, 16, !mcsema_real_eip !33
  %352 = icmp ne i64 %351, 0, !mcsema_real_eip !33
  %353 = zext i1 %352 to i8, !mcsema_real_eip !33
  store volatile i8 %353, i8* %AF_write, !mcsema_real_eip !33
  %354 = lshr i64 %348, 63, !mcsema_real_eip !33
  %355 = trunc i64 %354 to i1, !mcsema_real_eip !33
  %356 = zext i1 %355 to i8, !mcsema_real_eip !33
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !33
  %358 = zext i1 %357 to i8, !mcsema_real_eip !33
  store volatile i8 %358, i8* %SF_write, !mcsema_real_eip !33
  %359 = icmp eq i64 %348, 0, !mcsema_real_eip !33
  %360 = zext i1 %359 to i8, !mcsema_real_eip !33
  store volatile i8 %360, i8* %ZF_write, !mcsema_real_eip !33
  %361 = xor i64 %347, 16, !mcsema_real_eip !33
  %362 = xor i64 %361, -1, !mcsema_real_eip !33
  %363 = xor i64 %347, %348, !mcsema_real_eip !33
  %364 = and i64 %362, %363, !mcsema_real_eip !33
  %365 = lshr i64 %364, 63, !mcsema_real_eip !33
  %366 = and i64 %365, 1, !mcsema_real_eip !33
  %367 = trunc i64 %366 to i1, !mcsema_real_eip !33
  %368 = zext i1 %367 to i8, !mcsema_real_eip !33
  %369 = trunc i8 %368 to i1, !mcsema_real_eip !33
  %370 = zext i1 %369 to i8, !mcsema_real_eip !33
  store volatile i8 %370, i8* %OF_write, !mcsema_real_eip !33
  %371 = trunc i64 %348 to i8, !mcsema_real_eip !33
  %372 = call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !33
  %373 = trunc i8 %372 to i1, !mcsema_real_eip !33
  %374 = zext i1 %373 to i8, !mcsema_real_eip !33
  %375 = xor i8 %374, 1, !mcsema_real_eip !33
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !33
  %377 = zext i1 %376 to i8, !mcsema_real_eip !33
  store volatile i8 %377, i8* %PF_write, !mcsema_real_eip !33
  %378 = icmp ult i64 %348, %347, !mcsema_real_eip !33
  %379 = zext i1 %378 to i8, !mcsema_real_eip !33
  store volatile i8 %379, i8* %CF_write, !mcsema_real_eip !33
  store volatile i64 %348, i64* %RSP_write, !mcsema_real_eip !33
  store volatile i64 119, i64* %EIP_write, !mcsema_real_eip !34
  %380 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !34
  %382 = load i64, i64* %381, !mcsema_real_eip !34
  store volatile i64 %382, i64* %RBP_write, !mcsema_real_eip !34
  %383 = add i64 %380, 8, !mcsema_real_eip !34
  store volatile i64 %383, i64* %RSP_write, !mcsema_real_eip !34
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !35
  %384 = load i64, i64* %RSP_read, !mcsema_real_eip !35
  %385 = add i64 %384, 8, !mcsema_real_eip !35
  %386 = inttoptr i64 %384 to i64*, !mcsema_real_eip !35
  %387 = load i64, i64* %386, !mcsema_real_eip !35
  store volatile i64 %387, i64* %RIP_write, !mcsema_real_eip !35
  store volatile i64 %385, i64* %RSP_write, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !36
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !36
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !36
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !36
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !36
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !36
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !36
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !36
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !36
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !36
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !36
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !36
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !36
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !36
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !36
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !36
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !36
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !36
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !36
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !36
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !36
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !36
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !36
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !36
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !36
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !36
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !36
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !36
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !36
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !36
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !36
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !36
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !36
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !36
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !36
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !36
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !36
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !36
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !36
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !36
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !36
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !36
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !36
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !36
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !36
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !36
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !36
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !36
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !36
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !36
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !36
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !36
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !36
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !36
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !36
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !36
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !36
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !36
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !36
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !36
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !36
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !36
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !36
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !36
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !36
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !36
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !36
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !36
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !36
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !36
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !36
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !36
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !36
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !36
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !36
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !36
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !36
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !36
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !36
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !36
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !36
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !36
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !36
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !36
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !36
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !36
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !36
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !36
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !36
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !36
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !36
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !36
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !36
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !36
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !36
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !36
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !36
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !36
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !36
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !36
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !36
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !36
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !36
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !36
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !36
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !36
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !36
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !36
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !36
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !36
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !36
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !36
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !36
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !36
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !36
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !36
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !36
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !36
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !36
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !36
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !36
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !36
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !36
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !36
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !36
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !36
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !36
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !36
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !36
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !36
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !36
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !36
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !36
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !36
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !36
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !36
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !36
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !36
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !36
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !36
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !36
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !36
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !36
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !36
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !36
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !36
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !36
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !36
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !36
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !36
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !36
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !36
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !36
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !36
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !36
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !36
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !36
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !36
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !36
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !36
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !36
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !36
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !36
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !36
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !36
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !36
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !36
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !36
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !36
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !36
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !36
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !36
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !36
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !36
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !36
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !36
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !36
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !36
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !36
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !36
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !36
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !36
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !36
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !36
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !36
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !36
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !36
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !36
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !36
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !36
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !36
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !36
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !36
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !36
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !36
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !36
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !36
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !36
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !36
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !36
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !36
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !36
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !36
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !36
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !36
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !36
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !36
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !36
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !36
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !36
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !36
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !36
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !36
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !36
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !36
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !36
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !36
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !36
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !36
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !36
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !36
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !36
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !36
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !36
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !36
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !36
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !36
  br label %block_80, !mcsema_real_eip !36

block_80:                                         ; preds = %entry
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !36
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %3 = sub i64 %2, 8, !mcsema_real_eip !36
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !36
  store i64 %1, i64* %4, !mcsema_real_eip !36
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !36
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !37
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !37
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !37
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !38
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !38
  %7 = sext i8 32 to i64, !mcsema_real_eip !38
  %8 = sub i64 %6, %7, !mcsema_real_eip !38
  %9 = xor i64 %8, %6, !mcsema_real_eip !38
  %10 = xor i64 %9, %7, !mcsema_real_eip !38
  %11 = and i64 %10, 16, !mcsema_real_eip !38
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !38
  %13 = zext i1 %12 to i8, !mcsema_real_eip !38
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !38
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !38
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !38
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !38
  %17 = zext i1 %16 to i8, !mcsema_real_eip !38
  %18 = xor i8 %17, 1, !mcsema_real_eip !38
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !38
  %20 = zext i1 %19 to i8, !mcsema_real_eip !38
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !38
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !38
  %22 = zext i1 %21 to i8, !mcsema_real_eip !38
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !38
  %23 = lshr i64 %8, 63, !mcsema_real_eip !38
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !38
  %25 = zext i1 %24 to i8, !mcsema_real_eip !38
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !38
  %27 = zext i1 %26 to i8, !mcsema_real_eip !38
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !38
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !38
  %29 = zext i1 %28 to i8, !mcsema_real_eip !38
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !38
  %30 = xor i64 %6, %7, !mcsema_real_eip !38
  %31 = xor i64 %6, %8, !mcsema_real_eip !38
  %32 = and i64 %30, %31, !mcsema_real_eip !38
  %33 = lshr i64 %32, 63, !mcsema_real_eip !38
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !38
  %35 = zext i1 %34 to i8, !mcsema_real_eip !38
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !38
  %37 = zext i1 %36 to i8, !mcsema_real_eip !38
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !38
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !38
  store volatile i64 136, i64* %EIP_write, !mcsema_real_eip !39
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %39 = add i64 %38, -4, !mcsema_real_eip !39
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !39
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !39
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !39
  store i32 0, i32* %42, !mcsema_real_eip !39
  store volatile i64 143, i64* %EIP_write, !mcsema_real_eip !40
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %44 = add i64 %43, -8, !mcsema_real_eip !40
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !40
  %46 = load i32, i32* %EDI_read, !mcsema_real_eip !40
  %47 = ptrtoint i64* %45 to i64, !mcsema_real_eip !40
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !40
  store i32 %46, i32* %48, !mcsema_real_eip !40
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !41
  %49 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %50 = add i64 %49, -16, !mcsema_real_eip !41
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !41
  %52 = load i64, i64* %RSI_read, !mcsema_real_eip !41
  store i64 %52, i64* %51, !mcsema_real_eip !41
  store volatile i64 150, i64* %EIP_write, !mcsema_real_eip !42
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %54 = add i64 %53, -8, !mcsema_real_eip !42
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !42
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !42
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !42
  %58 = load i32, i32* %57, !mcsema_real_eip !42
  %59 = sub i32 %58, 2, !mcsema_real_eip !42
  %60 = xor i32 %59, %58, !mcsema_real_eip !42
  %61 = xor i32 %60, 2, !mcsema_real_eip !42
  %62 = and i32 %61, 16, !mcsema_real_eip !42
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !42
  %64 = zext i1 %63 to i8, !mcsema_real_eip !42
  store volatile i8 %64, i8* %AF_write, !mcsema_real_eip !42
  %65 = trunc i32 %59 to i8, !mcsema_real_eip !42
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !42
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !42
  %68 = zext i1 %67 to i8, !mcsema_real_eip !42
  %69 = xor i8 %68, 1, !mcsema_real_eip !42
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !42
  %71 = zext i1 %70 to i8, !mcsema_real_eip !42
  store volatile i8 %71, i8* %PF_write, !mcsema_real_eip !42
  %72 = icmp eq i32 %59, 0, !mcsema_real_eip !42
  %73 = zext i1 %72 to i8, !mcsema_real_eip !42
  store volatile i8 %73, i8* %ZF_write, !mcsema_real_eip !42
  %74 = lshr i32 %59, 31, !mcsema_real_eip !42
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !42
  %76 = zext i1 %75 to i8, !mcsema_real_eip !42
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !42
  %78 = zext i1 %77 to i8, !mcsema_real_eip !42
  store volatile i8 %78, i8* %SF_write, !mcsema_real_eip !42
  %79 = icmp ult i32 %58, 2, !mcsema_real_eip !42
  %80 = zext i1 %79 to i8, !mcsema_real_eip !42
  store volatile i8 %80, i8* %CF_write, !mcsema_real_eip !42
  %81 = xor i32 %58, 2, !mcsema_real_eip !42
  %82 = xor i32 %58, %59, !mcsema_real_eip !42
  %83 = and i32 %81, %82, !mcsema_real_eip !42
  %84 = lshr i32 %83, 31, !mcsema_real_eip !42
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !42
  %86 = zext i1 %85 to i8, !mcsema_real_eip !42
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !42
  %88 = zext i1 %87 to i8, !mcsema_real_eip !42
  store volatile i8 %88, i8* %OF_write, !mcsema_real_eip !42
  store volatile i64 154, i64* %EIP_write, !mcsema_real_eip !43
  %89 = load i8, i8* %ZF_read, !mcsema_real_eip !43
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !43
  %91 = icmp eq i1 %90, false, !mcsema_real_eip !43
  br i1 %91, label %block_b5, label %block_a0, !mcsema_real_eip !43

block_a0:                                         ; preds = %block_80
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !44
  %92 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %93 = add i64 %92, -16, !mcsema_real_eip !44
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !44
  %95 = load i64, i64* %94, !mcsema_real_eip !44
  store volatile i64 %95, i64* %RAX_write, !mcsema_real_eip !44
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !45
  %96 = load i64, i64* %RAX_read, !mcsema_real_eip !45
  %97 = add i64 %96, 8, !mcsema_real_eip !45
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !45
  %99 = load i64, i64* %98, !mcsema_real_eip !45
  store volatile i64 %99, i64* %RDI_write, !mcsema_real_eip !45
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !46
  %100 = load i64, i64* %RDI_read, !mcsema_real_eip !46
  %101 = load i64, i64* %RSP_read, !mcsema_real_eip !46
  %102 = sub i64 %101, 8, !mcsema_real_eip !46
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !46
  store i64 -2415393069852865332, i64* %103, !mcsema_real_eip !46
  store volatile i64 %102, i64* %RSP_write, !mcsema_real_eip !46
  %104 = call x86_64_sysvcc i64 @_atoi(i64 %100), !mcsema_real_eip !46
  store volatile i64 %104, i64* %RAX_write, !mcsema_real_eip !46
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !47
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %106 = add i64 %105, -24, !mcsema_real_eip !47
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !47
  %108 = load i32, i32* %EAX_read, !mcsema_real_eip !47
  %109 = ptrtoint i64* %107 to i64, !mcsema_real_eip !47
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !47
  store i32 %108, i32* %110, !mcsema_real_eip !47
  store volatile i64 176, i64* %EIP_write, !mcsema_real_eip !48
  br label %block_c2, !mcsema_real_eip !48

block_b5:                                         ; preds = %block_80
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !49
  %111 = zext i32 8 to i64, !mcsema_real_eip !49
  store volatile i64 %111, i64* %EAX_write, !mcsema_real_eip !49
  store volatile i64 186, i64* %EIP_write, !mcsema_real_eip !50
  %112 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %113 = add i64 %112, -24, !mcsema_real_eip !50
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !50
  %115 = load i32, i32* %EAX_read, !mcsema_real_eip !50
  %116 = ptrtoint i64* %114 to i64, !mcsema_real_eip !50
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !50
  store i32 %115, i32* %117, !mcsema_real_eip !50
  store volatile i64 189, i64* %EIP_write, !mcsema_real_eip !51
  br label %block_c2, !mcsema_real_eip !51

block_c2:                                         ; preds = %block_b5, %block_a0
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !52
  %118 = load i64, i64* %RBP_read, !mcsema_real_eip !52
  %119 = add i64 %118, -24, !mcsema_real_eip !52
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !52
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !52
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !52
  %123 = load i32, i32* %122, !mcsema_real_eip !52
  %124 = zext i32 %123 to i64, !mcsema_real_eip !52
  store volatile i64 %124, i64* %EAX_write, !mcsema_real_eip !52
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !53
  %125 = zext i32 3 to i64, !mcsema_real_eip !53
  store volatile i64 %125, i64* %EDI_write, !mcsema_real_eip !53
  store volatile i64 202, i64* %EIP_write, !mcsema_real_eip !54
  %126 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %127 = add i64 %126, -20, !mcsema_real_eip !54
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !54
  %129 = load i32, i32* %EAX_read, !mcsema_real_eip !54
  %130 = ptrtoint i64* %128 to i64, !mcsema_real_eip !54
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !54
  store i32 %129, i32* %131, !mcsema_real_eip !54
  store volatile i64 205, i64* %EIP_write, !mcsema_real_eip !55
  %132 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %133 = add i64 %132, -20, !mcsema_real_eip !55
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !55
  %135 = ptrtoint i64* %134 to i64, !mcsema_real_eip !55
  %136 = inttoptr i64 %135 to i32*, !mcsema_real_eip !55
  %137 = load i32, i32* %136, !mcsema_real_eip !55
  %138 = zext i32 %137 to i64, !mcsema_real_eip !55
  store volatile i64 %138, i64* %ESI_write, !mcsema_real_eip !55
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !56
  %139 = load i64, i64* %RBP_read, !mcsema_real_eip !56
  %140 = add i64 %139, -20, !mcsema_real_eip !56
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !56
  %142 = ptrtoint i64* %141 to i64, !mcsema_real_eip !56
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !56
  %144 = load i32, i32* %143, !mcsema_real_eip !56
  %145 = zext i32 %144 to i64, !mcsema_real_eip !56
  store volatile i64 %145, i64* %EAX_write, !mcsema_real_eip !56
  store volatile i64 211, i64* %EIP_write, !mcsema_real_eip !57
  %146 = load i64, i64* %RBP_read, !mcsema_real_eip !57
  %147 = add i64 %146, -28, !mcsema_real_eip !57
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !57
  %149 = load i32, i32* %ESI_read, !mcsema_real_eip !57
  %150 = ptrtoint i64* %148 to i64, !mcsema_real_eip !57
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !57
  store i32 %149, i32* %151, !mcsema_real_eip !57
  store volatile i64 214, i64* %EIP_write, !mcsema_real_eip !58
  %152 = load i32, i32* %EAX_read, !mcsema_real_eip !58
  %153 = zext i32 %152 to i64, !mcsema_real_eip !58
  store volatile i64 %153, i64* %ESI_write, !mcsema_real_eip !58
  store volatile i64 216, i64* %EIP_write, !mcsema_real_eip !59
  %154 = load i64, i64* %RSP_read, !mcsema_real_eip !59
  %155 = sub i64 %154, 8, !mcsema_real_eip !59
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !59
  store i64 221, i64* %156, !mcsema_real_eip !59
  store volatile i64 %155, i64* %RSP_write, !mcsema_real_eip !59
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !59
  store volatile i64 221, i64* %EIP_write, !mcsema_real_eip !60
  %157 = ptrtoint %0* @data_100 to i64, !mcsema_real_eip !60
  %158 = add i64 %157, 0, !mcsema_real_eip !60
  store volatile i64 %158, i64* %RDI_write, !mcsema_real_eip !60
  store volatile i64 231, i64* %EIP_write, !mcsema_real_eip !61
  %159 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %160 = add i64 %159, -28, !mcsema_real_eip !61
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !61
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !61
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !61
  %164 = load i32, i32* %163, !mcsema_real_eip !61
  %165 = zext i32 %164 to i64, !mcsema_real_eip !61
  store volatile i64 %165, i64* %ESI_write, !mcsema_real_eip !61
  store volatile i64 234, i64* %EIP_write, !mcsema_real_eip !62
  %166 = load i32, i32* %EAX_read, !mcsema_real_eip !62
  %167 = zext i32 %166 to i64, !mcsema_real_eip !62
  store volatile i64 %167, i64* %EDX_write, !mcsema_real_eip !62
  store volatile i64 236, i64* %EIP_write, !mcsema_real_eip !63
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !63
  store volatile i64 238, i64* %EIP_write, !mcsema_real_eip !64
  %168 = load i64, i64* %RDI_read, !mcsema_real_eip !64
  %169 = load i64, i64* %RSI_read, !mcsema_real_eip !64
  %170 = load i64, i64* %RDX_read, !mcsema_real_eip !64
  %171 = load i64, i64* %RCX_read, !mcsema_real_eip !64
  %172 = load i64, i64* %R8_read, !mcsema_real_eip !64
  %173 = load i64, i64* %R9_read, !mcsema_real_eip !64
  %174 = load i64, i64* %RSP_read, !mcsema_real_eip !64
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !64
  %176 = load i64, i64* %175, !mcsema_real_eip !64
  %177 = add i64 %174, 8, !mcsema_real_eip !64
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !64
  %179 = load i64, i64* %178, !mcsema_real_eip !64
  %180 = add i64 %177, 8, !mcsema_real_eip !64
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !64
  %182 = load i64, i64* %181, !mcsema_real_eip !64
  %183 = add i64 %180, 8, !mcsema_real_eip !64
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !64
  %185 = load i64, i64* %184, !mcsema_real_eip !64
  %186 = add i64 %183, 8, !mcsema_real_eip !64
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !64
  %188 = load i64, i64* %187, !mcsema_real_eip !64
  %189 = add i64 %186, 8, !mcsema_real_eip !64
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !64
  %191 = load i64, i64* %190, !mcsema_real_eip !64
  %192 = add i64 %189, 8, !mcsema_real_eip !64
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !64
  %194 = load i64, i64* %193, !mcsema_real_eip !64
  %195 = add i64 %192, 8, !mcsema_real_eip !64
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !64
  %197 = load i64, i64* %196, !mcsema_real_eip !64
  %198 = add i64 %195, 8, !mcsema_real_eip !64
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !64
  %200 = load i64, i64* %199, !mcsema_real_eip !64
  %201 = add i64 %198, 8, !mcsema_real_eip !64
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !64
  %203 = load i64, i64* %202, !mcsema_real_eip !64
  %204 = load i64, i64* %RSP_read, !mcsema_real_eip !64
  %205 = sub i64 %204, 8, !mcsema_real_eip !64
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !64
  store i64 -2415393069852865332, i64* %206, !mcsema_real_eip !64
  store volatile i64 %205, i64* %RSP_write, !mcsema_real_eip !64
  %207 = call x86_64_sysvcc i64 @_printf(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %176, i64 %179, i64 %182, i64 %185, i64 %188, i64 %191, i64 %194, i64 %197, i64 %200, i64 %203), !mcsema_real_eip !64
  store volatile i64 %207, i64* %RAX_write, !mcsema_real_eip !64
  store volatile i64 243, i64* %EIP_write, !mcsema_real_eip !65
  %208 = load i32, i32* %EDX_read, !mcsema_real_eip !65
  %209 = load i32, i32* %EDX_read, !mcsema_real_eip !65
  %210 = xor i32 %208, %209, !mcsema_real_eip !65
  %211 = trunc i8 0 to i1, !mcsema_real_eip !65
  %212 = zext i1 %211 to i8, !mcsema_real_eip !65
  store volatile i8 %212, i8* %CF_write, !mcsema_real_eip !65
  %213 = trunc i8 0 to i1, !mcsema_real_eip !65
  %214 = zext i1 %213 to i8, !mcsema_real_eip !65
  store volatile i8 %214, i8* %OF_write, !mcsema_real_eip !65
  %215 = lshr i32 %210, 31, !mcsema_real_eip !65
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !65
  %217 = zext i1 %216 to i8, !mcsema_real_eip !65
  %218 = trunc i8 %217 to i1, !mcsema_real_eip !65
  %219 = zext i1 %218 to i8, !mcsema_real_eip !65
  store volatile i8 %219, i8* %SF_write, !mcsema_real_eip !65
  %220 = icmp eq i32 %210, 0, !mcsema_real_eip !65
  %221 = zext i1 %220 to i8, !mcsema_real_eip !65
  store volatile i8 %221, i8* %ZF_write, !mcsema_real_eip !65
  %222 = trunc i32 %210 to i8, !mcsema_real_eip !65
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !65
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !65
  %225 = zext i1 %224 to i8, !mcsema_real_eip !65
  %226 = xor i8 %225, 1, !mcsema_real_eip !65
  %227 = trunc i8 %226 to i1, !mcsema_real_eip !65
  %228 = zext i1 %227 to i8, !mcsema_real_eip !65
  store volatile i8 %228, i8* %PF_write, !mcsema_real_eip !65
  %229 = zext i32 %210 to i64, !mcsema_real_eip !65
  store volatile i64 %229, i64* %EDX_write, !mcsema_real_eip !65
  store volatile i64 245, i64* %EIP_write, !mcsema_real_eip !66
  %230 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %231 = add i64 %230, -32, !mcsema_real_eip !66
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !66
  %233 = load i32, i32* %EAX_read, !mcsema_real_eip !66
  %234 = ptrtoint i64* %232 to i64, !mcsema_real_eip !66
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !66
  store i32 %233, i32* %235, !mcsema_real_eip !66
  store volatile i64 248, i64* %EIP_write, !mcsema_real_eip !67
  %236 = load i32, i32* %EDX_read, !mcsema_real_eip !67
  %237 = zext i32 %236 to i64, !mcsema_real_eip !67
  store volatile i64 %237, i64* %EAX_write, !mcsema_real_eip !67
  store volatile i64 250, i64* %EIP_write, !mcsema_real_eip !68
  %238 = load i64, i64* %RSP_read, !mcsema_real_eip !68
  %239 = add i64 32, %238, !mcsema_real_eip !68
  %240 = xor i64 %239, %238, !mcsema_real_eip !68
  %241 = xor i64 %240, 32, !mcsema_real_eip !68
  %242 = and i64 %241, 16, !mcsema_real_eip !68
  %243 = icmp ne i64 %242, 0, !mcsema_real_eip !68
  %244 = zext i1 %243 to i8, !mcsema_real_eip !68
  store volatile i8 %244, i8* %AF_write, !mcsema_real_eip !68
  %245 = lshr i64 %239, 63, !mcsema_real_eip !68
  %246 = trunc i64 %245 to i1, !mcsema_real_eip !68
  %247 = zext i1 %246 to i8, !mcsema_real_eip !68
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !68
  %249 = zext i1 %248 to i8, !mcsema_real_eip !68
  store volatile i8 %249, i8* %SF_write, !mcsema_real_eip !68
  %250 = icmp eq i64 %239, 0, !mcsema_real_eip !68
  %251 = zext i1 %250 to i8, !mcsema_real_eip !68
  store volatile i8 %251, i8* %ZF_write, !mcsema_real_eip !68
  %252 = xor i64 %238, 32, !mcsema_real_eip !68
  %253 = xor i64 %252, -1, !mcsema_real_eip !68
  %254 = xor i64 %238, %239, !mcsema_real_eip !68
  %255 = and i64 %253, %254, !mcsema_real_eip !68
  %256 = lshr i64 %255, 63, !mcsema_real_eip !68
  %257 = and i64 %256, 1, !mcsema_real_eip !68
  %258 = trunc i64 %257 to i1, !mcsema_real_eip !68
  %259 = zext i1 %258 to i8, !mcsema_real_eip !68
  %260 = trunc i8 %259 to i1, !mcsema_real_eip !68
  %261 = zext i1 %260 to i8, !mcsema_real_eip !68
  store volatile i8 %261, i8* %OF_write, !mcsema_real_eip !68
  %262 = trunc i64 %239 to i8, !mcsema_real_eip !68
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !68
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !68
  %265 = zext i1 %264 to i8, !mcsema_real_eip !68
  %266 = xor i8 %265, 1, !mcsema_real_eip !68
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !68
  %268 = zext i1 %267 to i8, !mcsema_real_eip !68
  store volatile i8 %268, i8* %PF_write, !mcsema_real_eip !68
  %269 = icmp ult i64 %239, %238, !mcsema_real_eip !68
  %270 = zext i1 %269 to i8, !mcsema_real_eip !68
  store volatile i8 %270, i8* %CF_write, !mcsema_real_eip !68
  store volatile i64 %239, i64* %RSP_write, !mcsema_real_eip !68
  store volatile i64 254, i64* %EIP_write, !mcsema_real_eip !69
  %271 = load i64, i64* %RSP_read, !mcsema_real_eip !69
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !69
  %273 = load i64, i64* %272, !mcsema_real_eip !69
  store volatile i64 %273, i64* %RBP_write, !mcsema_real_eip !69
  %274 = add i64 %271, 8, !mcsema_real_eip !69
  store volatile i64 %274, i64* %RSP_write, !mcsema_real_eip !69
  store volatile i64 255, i64* %EIP_write, !mcsema_real_eip !70
  %275 = load i64, i64* %RSP_read, !mcsema_real_eip !70
  %276 = add i64 %275, 8, !mcsema_real_eip !70
  %277 = inttoptr i64 %275 to i64*, !mcsema_real_eip !70
  %278 = load i64, i64* %277, !mcsema_real_eip !70
  store volatile i64 %278, i64* %RIP_write, !mcsema_real_eip !70
  store volatile i64 %276, i64* %RSP_write, !mcsema_real_eip !70
  ret void, !mcsema_real_eip !70
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
!4 = !{i64 11}
!5 = !{i64 14}
!6 = !{i64 18}
!7 = !{i64 24}
!8 = !{i64 27}
!9 = !{i64 30}
!10 = !{i64 33}
!11 = !{i64 38}
!12 = !{i64 42}
!13 = !{i64 48}
!14 = !{i64 53}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 61}
!18 = !{i64 66}
!19 = !{i64 69}
!20 = !{i64 74}
!21 = !{i64 77}
!22 = !{i64 80}
!23 = !{i64 83}
!24 = !{i64 86}
!25 = !{i64 89}
!26 = !{i64 91}
!27 = !{i64 94}
!28 = !{i64 99}
!29 = !{i64 102}
!30 = !{i64 104}
!31 = !{i64 109}
!32 = !{i64 112}
!33 = !{i64 115}
!34 = !{i64 119}
!35 = !{i64 120}
!36 = !{i64 128}
!37 = !{i64 129}
!38 = !{i64 132}
!39 = !{i64 136}
!40 = !{i64 143}
!41 = !{i64 146}
!42 = !{i64 150}
!43 = !{i64 154}
!44 = !{i64 160}
!45 = !{i64 164}
!46 = !{i64 168}
!47 = !{i64 173}
!48 = !{i64 176}
!49 = !{i64 181}
!50 = !{i64 186}
!51 = !{i64 189}
!52 = !{i64 194}
!53 = !{i64 197}
!54 = !{i64 202}
!55 = !{i64 205}
!56 = !{i64 208}
!57 = !{i64 211}
!58 = !{i64 214}
!59 = !{i64 216}
!60 = !{i64 221}
!61 = !{i64 231}
!62 = !{i64 234}
!63 = !{i64 236}
!64 = !{i64 238}
!65 = !{i64 243}
!66 = !{i64 245}
!67 = !{i64 248}
!68 = !{i64 250}
!69 = !{i64 254}
!70 = !{i64 255}
