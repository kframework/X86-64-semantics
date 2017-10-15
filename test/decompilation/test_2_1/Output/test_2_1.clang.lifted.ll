; ModuleID = 'Output/test_2_1.clang.lifted.bc'
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

@data_d2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_d8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
  %39 = add i64 %38, 24, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !3
  %43 = load i32, i32* %42, !mcsema_real_eip !3
  %44 = zext i32 %43 to i64, !mcsema_real_eip !3
  store volatile i64 %44, i64* %EAX_write, !mcsema_real_eip !3
  store volatile i64 11, i64* %EIP_write, !mcsema_real_eip !4
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %46 = add i64 %45, 16, !mcsema_real_eip !4
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !4
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !4
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !4
  %50 = load i32, i32* %49, !mcsema_real_eip !4
  %51 = zext i32 %50 to i64, !mcsema_real_eip !4
  store volatile i64 %51, i64* %R10D_write, !mcsema_real_eip !4
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !5
  %52 = ptrtoint %0* @data_d2 to i64, !mcsema_real_eip !5
  %53 = add i64 %52, 0, !mcsema_real_eip !5
  store volatile i64 %53, i64* %R11_write, !mcsema_real_eip !5
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !6
  %54 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %55 = add i64 %54, -4, !mcsema_real_eip !6
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !6
  %57 = load i32, i32* %EDI_read, !mcsema_real_eip !6
  %58 = ptrtoint i64* %56 to i64, !mcsema_real_eip !6
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !6
  store i32 %57, i32* %59, !mcsema_real_eip !6
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !7
  %60 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %61 = add i64 %60, -8, !mcsema_real_eip !7
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !7
  %63 = load i32, i32* %ESI_read, !mcsema_real_eip !7
  %64 = ptrtoint i64* %62 to i64, !mcsema_real_eip !7
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !7
  store i32 %63, i32* %65, !mcsema_real_eip !7
  store volatile i64 31, i64* %EIP_write, !mcsema_real_eip !8
  %66 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %67 = add i64 %66, -12, !mcsema_real_eip !8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !8
  %69 = load i32, i32* %EDX_read, !mcsema_real_eip !8
  %70 = ptrtoint i64* %68 to i64, !mcsema_real_eip !8
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !8
  store i32 %69, i32* %71, !mcsema_real_eip !8
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !9
  %72 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %73 = add i64 %72, -16, !mcsema_real_eip !9
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !9
  %75 = load i32, i32* %ECX_read, !mcsema_real_eip !9
  %76 = ptrtoint i64* %74 to i64, !mcsema_real_eip !9
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !9
  store i32 %75, i32* %77, !mcsema_real_eip !9
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !10
  %78 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %79 = add i64 %78, -20, !mcsema_real_eip !10
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !10
  %81 = load i32, i32* %R8D_read, !mcsema_real_eip !10
  %82 = ptrtoint i64* %80 to i64, !mcsema_real_eip !10
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !10
  store i32 %81, i32* %83, !mcsema_real_eip !10
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !11
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %85 = add i64 %84, -24, !mcsema_real_eip !11
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !11
  %87 = load i32, i32* %R9D_read, !mcsema_real_eip !11
  %88 = ptrtoint i64* %86 to i64, !mcsema_real_eip !11
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !11
  store i32 %87, i32* %89, !mcsema_real_eip !11
  store volatile i64 45, i64* %EIP_write, !mcsema_real_eip !12
  %90 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %91 = add i64 %90, -28, !mcsema_real_eip !12
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !12
  %93 = load i32, i32* %R10D_read, !mcsema_real_eip !12
  %94 = ptrtoint i64* %92 to i64, !mcsema_real_eip !12
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !12
  store i32 %93, i32* %95, !mcsema_real_eip !12
  store volatile i64 49, i64* %EIP_write, !mcsema_real_eip !13
  %96 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %97 = add i64 %96, -32, !mcsema_real_eip !13
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !13
  %99 = load i32, i32* %EAX_read, !mcsema_real_eip !13
  %100 = ptrtoint i64* %98 to i64, !mcsema_real_eip !13
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !13
  store i32 %99, i32* %101, !mcsema_real_eip !13
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !14
  %102 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %103 = add i64 %102, -28, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !14
  %105 = ptrtoint i64* %104 to i64, !mcsema_real_eip !14
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !14
  %107 = load i32, i32* %106, !mcsema_real_eip !14
  %108 = zext i32 %107 to i64, !mcsema_real_eip !14
  store volatile i64 %108, i64* %EAX_write, !mcsema_real_eip !14
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !15
  %109 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %110 = add i64 %109, -32, !mcsema_real_eip !15
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !15
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !15
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !15
  %114 = load i32, i32* %113, !mcsema_real_eip !15
  %115 = load i32, i32* %EAX_read, !mcsema_real_eip !15
  %116 = add i32 %115, %114, !mcsema_real_eip !15
  %117 = xor i32 %116, %114, !mcsema_real_eip !15
  %118 = xor i32 %117, %115, !mcsema_real_eip !15
  %119 = and i32 %118, 16, !mcsema_real_eip !15
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !15
  %121 = zext i1 %120 to i8, !mcsema_real_eip !15
  store volatile i8 %121, i8* %AF_write, !mcsema_real_eip !15
  %122 = lshr i32 %116, 31, !mcsema_real_eip !15
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !15
  %124 = zext i1 %123 to i8, !mcsema_real_eip !15
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !15
  %126 = zext i1 %125 to i8, !mcsema_real_eip !15
  store volatile i8 %126, i8* %SF_write, !mcsema_real_eip !15
  %127 = icmp eq i32 %116, 0, !mcsema_real_eip !15
  %128 = zext i1 %127 to i8, !mcsema_real_eip !15
  store volatile i8 %128, i8* %ZF_write, !mcsema_real_eip !15
  %129 = xor i32 %114, %115, !mcsema_real_eip !15
  %130 = xor i32 %129, -1, !mcsema_real_eip !15
  %131 = xor i32 %114, %116, !mcsema_real_eip !15
  %132 = and i32 %130, %131, !mcsema_real_eip !15
  %133 = lshr i32 %132, 31, !mcsema_real_eip !15
  %134 = and i32 %133, 1, !mcsema_real_eip !15
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !15
  %136 = zext i1 %135 to i8, !mcsema_real_eip !15
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !15
  %138 = zext i1 %137 to i8, !mcsema_real_eip !15
  store volatile i8 %138, i8* %OF_write, !mcsema_real_eip !15
  %139 = trunc i32 %116 to i8, !mcsema_real_eip !15
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !15
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !15
  %142 = zext i1 %141 to i8, !mcsema_real_eip !15
  %143 = xor i8 %142, 1, !mcsema_real_eip !15
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !15
  %145 = zext i1 %144 to i8, !mcsema_real_eip !15
  store volatile i8 %145, i8* %PF_write, !mcsema_real_eip !15
  %146 = icmp ult i32 %116, %114, !mcsema_real_eip !15
  %147 = zext i1 %146 to i8, !mcsema_real_eip !15
  store volatile i8 %147, i8* %CF_write, !mcsema_real_eip !15
  %148 = zext i32 %116 to i64, !mcsema_real_eip !15
  store volatile i64 %148, i64* %EAX_write, !mcsema_real_eip !15
  store volatile i64 58, i64* %EIP_write, !mcsema_real_eip !16
  %149 = load i64, i64* %R11_read, !mcsema_real_eip !16
  store volatile i64 %149, i64* %RDI_write, !mcsema_real_eip !16
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !17
  %150 = load i32, i32* %EAX_read, !mcsema_real_eip !17
  %151 = zext i32 %150 to i64, !mcsema_real_eip !17
  store volatile i64 %151, i64* %ESI_write, !mcsema_real_eip !17
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !18
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !18
  store volatile i64 65, i64* %EIP_write, !mcsema_real_eip !19
  %152 = load i64, i64* %RDI_read, !mcsema_real_eip !19
  %153 = load i64, i64* %RSI_read, !mcsema_real_eip !19
  %154 = load i64, i64* %RDX_read, !mcsema_real_eip !19
  %155 = load i64, i64* %RCX_read, !mcsema_real_eip !19
  %156 = load i64, i64* %R8_read, !mcsema_real_eip !19
  %157 = load i64, i64* %R9_read, !mcsema_real_eip !19
  %158 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !19
  %160 = load i64, i64* %159, !mcsema_real_eip !19
  %161 = add i64 %158, 8, !mcsema_real_eip !19
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !19
  %163 = load i64, i64* %162, !mcsema_real_eip !19
  %164 = add i64 %161, 8, !mcsema_real_eip !19
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !19
  %166 = load i64, i64* %165, !mcsema_real_eip !19
  %167 = add i64 %164, 8, !mcsema_real_eip !19
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !19
  %169 = load i64, i64* %168, !mcsema_real_eip !19
  %170 = add i64 %167, 8, !mcsema_real_eip !19
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !19
  %172 = load i64, i64* %171, !mcsema_real_eip !19
  %173 = add i64 %170, 8, !mcsema_real_eip !19
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !19
  %175 = load i64, i64* %174, !mcsema_real_eip !19
  %176 = add i64 %173, 8, !mcsema_real_eip !19
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !19
  %178 = load i64, i64* %177, !mcsema_real_eip !19
  %179 = add i64 %176, 8, !mcsema_real_eip !19
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !19
  %181 = load i64, i64* %180, !mcsema_real_eip !19
  %182 = add i64 %179, 8, !mcsema_real_eip !19
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !19
  %184 = load i64, i64* %183, !mcsema_real_eip !19
  %185 = add i64 %182, 8, !mcsema_real_eip !19
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !19
  %187 = load i64, i64* %186, !mcsema_real_eip !19
  %188 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %189 = sub i64 %188, 8, !mcsema_real_eip !19
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %190, !mcsema_real_eip !19
  store volatile i64 %189, i64* %RSP_write, !mcsema_real_eip !19
  %191 = call x86_64_sysvcc i64 @_printf(i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %160, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175, i64 %178, i64 %181, i64 %184, i64 %187), !mcsema_real_eip !19
  store volatile i64 %191, i64* %RAX_write, !mcsema_real_eip !19
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !20
  %192 = load i32, i32* %ECX_read, !mcsema_real_eip !20
  %193 = load i32, i32* %ECX_read, !mcsema_real_eip !20
  %194 = xor i32 %192, %193, !mcsema_real_eip !20
  %195 = trunc i8 0 to i1, !mcsema_real_eip !20
  %196 = zext i1 %195 to i8, !mcsema_real_eip !20
  store volatile i8 %196, i8* %CF_write, !mcsema_real_eip !20
  %197 = trunc i8 0 to i1, !mcsema_real_eip !20
  %198 = zext i1 %197 to i8, !mcsema_real_eip !20
  store volatile i8 %198, i8* %OF_write, !mcsema_real_eip !20
  %199 = lshr i32 %194, 31, !mcsema_real_eip !20
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !20
  %201 = zext i1 %200 to i8, !mcsema_real_eip !20
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !20
  %203 = zext i1 %202 to i8, !mcsema_real_eip !20
  store volatile i8 %203, i8* %SF_write, !mcsema_real_eip !20
  %204 = icmp eq i32 %194, 0, !mcsema_real_eip !20
  %205 = zext i1 %204 to i8, !mcsema_real_eip !20
  store volatile i8 %205, i8* %ZF_write, !mcsema_real_eip !20
  %206 = trunc i32 %194 to i8, !mcsema_real_eip !20
  %207 = call i8 @llvm.ctpop.i8(i8 %206), !mcsema_real_eip !20
  %208 = trunc i8 %207 to i1, !mcsema_real_eip !20
  %209 = zext i1 %208 to i8, !mcsema_real_eip !20
  %210 = xor i8 %209, 1, !mcsema_real_eip !20
  %211 = trunc i8 %210 to i1, !mcsema_real_eip !20
  %212 = zext i1 %211 to i8, !mcsema_real_eip !20
  store volatile i8 %212, i8* %PF_write, !mcsema_real_eip !20
  %213 = zext i32 %194 to i64, !mcsema_real_eip !20
  store volatile i64 %213, i64* %ECX_write, !mcsema_real_eip !20
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !21
  %214 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %215 = add i64 %214, -36, !mcsema_real_eip !21
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !21
  %217 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %218 = ptrtoint i64* %216 to i64, !mcsema_real_eip !21
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !21
  store i32 %217, i32* %219, !mcsema_real_eip !21
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !22
  %220 = load i32, i32* %ECX_read, !mcsema_real_eip !22
  %221 = zext i32 %220 to i64, !mcsema_real_eip !22
  store volatile i64 %221, i64* %EAX_write, !mcsema_real_eip !22
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !23
  %222 = load i64, i64* %RSP_read, !mcsema_real_eip !23
  %223 = add i64 48, %222, !mcsema_real_eip !23
  %224 = xor i64 %223, %222, !mcsema_real_eip !23
  %225 = xor i64 %224, 48, !mcsema_real_eip !23
  %226 = and i64 %225, 16, !mcsema_real_eip !23
  %227 = icmp ne i64 %226, 0, !mcsema_real_eip !23
  %228 = zext i1 %227 to i8, !mcsema_real_eip !23
  store volatile i8 %228, i8* %AF_write, !mcsema_real_eip !23
  %229 = lshr i64 %223, 63, !mcsema_real_eip !23
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !23
  %231 = zext i1 %230 to i8, !mcsema_real_eip !23
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !23
  %233 = zext i1 %232 to i8, !mcsema_real_eip !23
  store volatile i8 %233, i8* %SF_write, !mcsema_real_eip !23
  %234 = icmp eq i64 %223, 0, !mcsema_real_eip !23
  %235 = zext i1 %234 to i8, !mcsema_real_eip !23
  store volatile i8 %235, i8* %ZF_write, !mcsema_real_eip !23
  %236 = xor i64 %222, 48, !mcsema_real_eip !23
  %237 = xor i64 %236, -1, !mcsema_real_eip !23
  %238 = xor i64 %222, %223, !mcsema_real_eip !23
  %239 = and i64 %237, %238, !mcsema_real_eip !23
  %240 = lshr i64 %239, 63, !mcsema_real_eip !23
  %241 = and i64 %240, 1, !mcsema_real_eip !23
  %242 = trunc i64 %241 to i1, !mcsema_real_eip !23
  %243 = zext i1 %242 to i8, !mcsema_real_eip !23
  %244 = trunc i8 %243 to i1, !mcsema_real_eip !23
  %245 = zext i1 %244 to i8, !mcsema_real_eip !23
  store volatile i8 %245, i8* %OF_write, !mcsema_real_eip !23
  %246 = trunc i64 %223 to i8, !mcsema_real_eip !23
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !23
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !23
  %249 = zext i1 %248 to i8, !mcsema_real_eip !23
  %250 = xor i8 %249, 1, !mcsema_real_eip !23
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !23
  %252 = zext i1 %251 to i8, !mcsema_real_eip !23
  store volatile i8 %252, i8* %PF_write, !mcsema_real_eip !23
  %253 = icmp ult i64 %223, %222, !mcsema_real_eip !23
  %254 = zext i1 %253 to i8, !mcsema_real_eip !23
  store volatile i8 %254, i8* %CF_write, !mcsema_real_eip !23
  store volatile i64 %223, i64* %RSP_write, !mcsema_real_eip !23
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !24
  %255 = load i64, i64* %RSP_read, !mcsema_real_eip !24
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !24
  %257 = load i64, i64* %256, !mcsema_real_eip !24
  store volatile i64 %257, i64* %RBP_write, !mcsema_real_eip !24
  %258 = add i64 %255, 8, !mcsema_real_eip !24
  store volatile i64 %258, i64* %RSP_write, !mcsema_real_eip !24
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !25
  %259 = load i64, i64* %RSP_read, !mcsema_real_eip !25
  %260 = add i64 %259, 8, !mcsema_real_eip !25
  %261 = inttoptr i64 %259 to i64*, !mcsema_real_eip !25
  %262 = load i64, i64* %261, !mcsema_real_eip !25
  store volatile i64 %262, i64* %RIP_write, !mcsema_real_eip !25
  store volatile i64 %260, i64* %RSP_write, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !26
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !26
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !26
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !26
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !26
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !26
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !26
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !26
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !26
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !26
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !26
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !26
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !26
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !26
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !26
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !26
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !26
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !26
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !26
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !26
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !26
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !26
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !26
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !26
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !26
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !26
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !26
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !26
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !26
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !26
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !26
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !26
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !26
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !26
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !26
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !26
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !26
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !26
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !26
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !26
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !26
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !26
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !26
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !26
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !26
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !26
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !26
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !26
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !26
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !26
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !26
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !26
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !26
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !26
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !26
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !26
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !26
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !26
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !26
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !26
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !26
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !26
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !26
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !26
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !26
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !26
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !26
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !26
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !26
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !26
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !26
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !26
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !26
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !26
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !26
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !26
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !26
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !26
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !26
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !26
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !26
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !26
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !26
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !26
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !26
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !26
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !26
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !26
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !26
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !26
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !26
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !26
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !26
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !26
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !26
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !26
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !26
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !26
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !26
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !26
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !26
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !26
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !26
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !26
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !26
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !26
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !26
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !26
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !26
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !26
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !26
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !26
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !26
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !26
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !26
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !26
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !26
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !26
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !26
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !26
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !26
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !26
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !26
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !26
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !26
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !26
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !26
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !26
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !26
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !26
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !26
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !26
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !26
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !26
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !26
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !26
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !26
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !26
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !26
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !26
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !26
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !26
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !26
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !26
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !26
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !26
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !26
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !26
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !26
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !26
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !26
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !26
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !26
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !26
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !26
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !26
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !26
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !26
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !26
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !26
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !26
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !26
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !26
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !26
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !26
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !26
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !26
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !26
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !26
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !26
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !26
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !26
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !26
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !26
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !26
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !26
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !26
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !26
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !26
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !26
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !26
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !26
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !26
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !26
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !26
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !26
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !26
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !26
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !26
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !26
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !26
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !26
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !26
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !26
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !26
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !26
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !26
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !26
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !26
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !26
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !26
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !26
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !26
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !26
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !26
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !26
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !26
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !26
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !26
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !26
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !26
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !26
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !26
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !26
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !26
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !26
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !26
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !26
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !26
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !26
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !26
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !26
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !26
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !26
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !26
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !26
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !26
  br label %block_60, !mcsema_real_eip !26

block_60:                                         ; preds = %entry
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !26
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !26
  %3 = sub i64 %2, 8, !mcsema_real_eip !26
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !26
  store i64 %1, i64* %4, !mcsema_real_eip !26
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !26
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !27
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !27
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !28
  %6 = load i64, i64* %RBX_read, !mcsema_real_eip !28
  %7 = load i64, i64* %RSP_read, !mcsema_real_eip !28
  %8 = sub i64 %7, 8, !mcsema_real_eip !28
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !28
  store i64 %6, i64* %9, !mcsema_real_eip !28
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !28
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !29
  %10 = load i64, i64* %RSP_read, !mcsema_real_eip !29
  %11 = sext i8 40 to i64, !mcsema_real_eip !29
  %12 = sub i64 %10, %11, !mcsema_real_eip !29
  %13 = xor i64 %12, %10, !mcsema_real_eip !29
  %14 = xor i64 %13, %11, !mcsema_real_eip !29
  %15 = and i64 %14, 16, !mcsema_real_eip !29
  %16 = icmp ne i64 %15, 0, !mcsema_real_eip !29
  %17 = zext i1 %16 to i8, !mcsema_real_eip !29
  store volatile i8 %17, i8* %AF_write, !mcsema_real_eip !29
  %18 = trunc i64 %12 to i8, !mcsema_real_eip !29
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !29
  %20 = trunc i8 %19 to i1, !mcsema_real_eip !29
  %21 = zext i1 %20 to i8, !mcsema_real_eip !29
  %22 = xor i8 %21, 1, !mcsema_real_eip !29
  %23 = trunc i8 %22 to i1, !mcsema_real_eip !29
  %24 = zext i1 %23 to i8, !mcsema_real_eip !29
  store volatile i8 %24, i8* %PF_write, !mcsema_real_eip !29
  %25 = icmp eq i64 %12, 0, !mcsema_real_eip !29
  %26 = zext i1 %25 to i8, !mcsema_real_eip !29
  store volatile i8 %26, i8* %ZF_write, !mcsema_real_eip !29
  %27 = lshr i64 %12, 63, !mcsema_real_eip !29
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !29
  %29 = zext i1 %28 to i8, !mcsema_real_eip !29
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !29
  %31 = zext i1 %30 to i8, !mcsema_real_eip !29
  store volatile i8 %31, i8* %SF_write, !mcsema_real_eip !29
  %32 = icmp ult i64 %10, %11, !mcsema_real_eip !29
  %33 = zext i1 %32 to i8, !mcsema_real_eip !29
  store volatile i8 %33, i8* %CF_write, !mcsema_real_eip !29
  %34 = xor i64 %10, %11, !mcsema_real_eip !29
  %35 = xor i64 %10, %12, !mcsema_real_eip !29
  %36 = and i64 %34, %35, !mcsema_real_eip !29
  %37 = lshr i64 %36, 63, !mcsema_real_eip !29
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !29
  %39 = zext i1 %38 to i8, !mcsema_real_eip !29
  %40 = trunc i8 %39 to i1, !mcsema_real_eip !29
  %41 = zext i1 %40 to i8, !mcsema_real_eip !29
  store volatile i8 %41, i8* %OF_write, !mcsema_real_eip !29
  store volatile i64 %12, i64* %RSP_write, !mcsema_real_eip !29
  store volatile i64 105, i64* %EIP_write, !mcsema_real_eip !30
  %42 = zext i32 100 to i64, !mcsema_real_eip !30
  store volatile i64 %42, i64* %EAX_write, !mcsema_real_eip !30
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !31
  %43 = zext i32 200 to i64, !mcsema_real_eip !31
  store volatile i64 %43, i64* %ECX_write, !mcsema_real_eip !31
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !32
  %44 = zext i32 300 to i64, !mcsema_real_eip !32
  store volatile i64 %44, i64* %EDX_write, !mcsema_real_eip !32
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !33
  %45 = zext i32 400 to i64, !mcsema_real_eip !33
  store volatile i64 %45, i64* %R8D_write, !mcsema_real_eip !33
  store volatile i64 126, i64* %EIP_write, !mcsema_real_eip !34
  %46 = zext i32 500 to i64, !mcsema_real_eip !34
  store volatile i64 %46, i64* %R9D_write, !mcsema_real_eip !34
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !35
  %47 = zext i32 600 to i64, !mcsema_real_eip !35
  store volatile i64 %47, i64* %R10D_write, !mcsema_real_eip !35
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !36
  %48 = zext i32 10 to i64, !mcsema_real_eip !36
  store volatile i64 %48, i64* %R11D_write, !mcsema_real_eip !36
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !37
  %49 = zext i32 20 to i64, !mcsema_real_eip !37
  store volatile i64 %49, i64* %EBX_write, !mcsema_real_eip !37
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !38
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %51 = add i64 %50, -12, !mcsema_real_eip !38
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !38
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !38
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !38
  store i32 0, i32* %54, !mcsema_real_eip !38
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !39
  %55 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %56 = add i64 %55, -16, !mcsema_real_eip !39
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !39
  %58 = load i32, i32* %EDI_read, !mcsema_real_eip !39
  %59 = ptrtoint i64* %57 to i64, !mcsema_real_eip !39
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !39
  store i32 %58, i32* %60, !mcsema_real_eip !39
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !40
  %61 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %62 = add i64 %61, -24, !mcsema_real_eip !40
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !40
  %64 = load i64, i64* %RSI_read, !mcsema_real_eip !40
  store i64 %64, i64* %63, !mcsema_real_eip !40
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !41
  %65 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %66 = zext i32 %65 to i64, !mcsema_real_eip !41
  store volatile i64 %66, i64* %EDI_write, !mcsema_real_eip !41
  store volatile i64 165, i64* %EIP_write, !mcsema_real_eip !42
  %67 = load i32, i32* %ECX_read, !mcsema_real_eip !42
  %68 = zext i32 %67 to i64, !mcsema_real_eip !42
  store volatile i64 %68, i64* %ESI_write, !mcsema_real_eip !42
  store volatile i64 167, i64* %EIP_write, !mcsema_real_eip !43
  %69 = load i32, i32* %R8D_read, !mcsema_real_eip !43
  %70 = zext i32 %69 to i64, !mcsema_real_eip !43
  store volatile i64 %70, i64* %ECX_write, !mcsema_real_eip !43
  store volatile i64 170, i64* %EIP_write, !mcsema_real_eip !44
  %71 = load i32, i32* %R9D_read, !mcsema_real_eip !44
  %72 = zext i32 %71 to i64, !mcsema_real_eip !44
  store volatile i64 %72, i64* %R8D_write, !mcsema_real_eip !44
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !45
  %73 = load i32, i32* %R10D_read, !mcsema_real_eip !45
  %74 = zext i32 %73 to i64, !mcsema_real_eip !45
  store volatile i64 %74, i64* %R9D_write, !mcsema_real_eip !45
  store volatile i64 176, i64* %EIP_write, !mcsema_real_eip !46
  %75 = load i64, i64* %RSP_read, !mcsema_real_eip !46
  %76 = add i64 %75, 0, !mcsema_real_eip !46
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !46
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !46
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !46
  store i32 10, i32* %79, !mcsema_real_eip !46
  store volatile i64 183, i64* %EIP_write, !mcsema_real_eip !47
  %80 = load i64, i64* %RSP_read, !mcsema_real_eip !47
  %81 = add i64 %80, 8, !mcsema_real_eip !47
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !47
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !47
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !47
  store i32 20, i32* %84, !mcsema_real_eip !47
  store volatile i64 191, i64* %EIP_write, !mcsema_real_eip !48
  %85 = load i64, i64* %RBP_read, !mcsema_real_eip !48
  %86 = add i64 %85, -28, !mcsema_real_eip !48
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !48
  %88 = load i32, i32* %EBX_read, !mcsema_real_eip !48
  %89 = ptrtoint i64* %87 to i64, !mcsema_real_eip !48
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !48
  store i32 %88, i32* %90, !mcsema_real_eip !48
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !49
  %91 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %92 = add i64 %91, -32, !mcsema_real_eip !49
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !49
  %94 = load i32, i32* %R11D_read, !mcsema_real_eip !49
  %95 = ptrtoint i64* %93 to i64, !mcsema_real_eip !49
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !49
  store i32 %94, i32* %96, !mcsema_real_eip !49
  store volatile i64 198, i64* %EIP_write, !mcsema_real_eip !50
  %97 = load i64, i64* %RSP_read, !mcsema_real_eip !50
  %98 = sub i64 %97, 8, !mcsema_real_eip !50
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !50
  store i64 203, i64* %99, !mcsema_real_eip !50
  store volatile i64 %98, i64* %RSP_write, !mcsema_real_eip !50
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !50
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !51
  %100 = load i64, i64* %RSP_read, !mcsema_real_eip !51
  %101 = add i64 40, %100, !mcsema_real_eip !51
  %102 = xor i64 %101, %100, !mcsema_real_eip !51
  %103 = xor i64 %102, 40, !mcsema_real_eip !51
  %104 = and i64 %103, 16, !mcsema_real_eip !51
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !51
  %106 = zext i1 %105 to i8, !mcsema_real_eip !51
  store volatile i8 %106, i8* %AF_write, !mcsema_real_eip !51
  %107 = lshr i64 %101, 63, !mcsema_real_eip !51
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !51
  %109 = zext i1 %108 to i8, !mcsema_real_eip !51
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !51
  %111 = zext i1 %110 to i8, !mcsema_real_eip !51
  store volatile i8 %111, i8* %SF_write, !mcsema_real_eip !51
  %112 = icmp eq i64 %101, 0, !mcsema_real_eip !51
  %113 = zext i1 %112 to i8, !mcsema_real_eip !51
  store volatile i8 %113, i8* %ZF_write, !mcsema_real_eip !51
  %114 = xor i64 %100, 40, !mcsema_real_eip !51
  %115 = xor i64 %114, -1, !mcsema_real_eip !51
  %116 = xor i64 %100, %101, !mcsema_real_eip !51
  %117 = and i64 %115, %116, !mcsema_real_eip !51
  %118 = lshr i64 %117, 63, !mcsema_real_eip !51
  %119 = and i64 %118, 1, !mcsema_real_eip !51
  %120 = trunc i64 %119 to i1, !mcsema_real_eip !51
  %121 = zext i1 %120 to i8, !mcsema_real_eip !51
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !51
  %123 = zext i1 %122 to i8, !mcsema_real_eip !51
  store volatile i8 %123, i8* %OF_write, !mcsema_real_eip !51
  %124 = trunc i64 %101 to i8, !mcsema_real_eip !51
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !51
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !51
  %127 = zext i1 %126 to i8, !mcsema_real_eip !51
  %128 = xor i8 %127, 1, !mcsema_real_eip !51
  %129 = trunc i8 %128 to i1, !mcsema_real_eip !51
  %130 = zext i1 %129 to i8, !mcsema_real_eip !51
  store volatile i8 %130, i8* %PF_write, !mcsema_real_eip !51
  %131 = icmp ult i64 %101, %100, !mcsema_real_eip !51
  %132 = zext i1 %131 to i8, !mcsema_real_eip !51
  store volatile i8 %132, i8* %CF_write, !mcsema_real_eip !51
  store volatile i64 %101, i64* %RSP_write, !mcsema_real_eip !51
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !52
  %133 = load i64, i64* %RSP_read, !mcsema_real_eip !52
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !52
  %135 = load i64, i64* %134, !mcsema_real_eip !52
  store volatile i64 %135, i64* %RBX_write, !mcsema_real_eip !52
  %136 = add i64 %133, 8, !mcsema_real_eip !52
  store volatile i64 %136, i64* %RSP_write, !mcsema_real_eip !52
  store volatile i64 208, i64* %EIP_write, !mcsema_real_eip !53
  %137 = load i64, i64* %RSP_read, !mcsema_real_eip !53
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !53
  %139 = load i64, i64* %138, !mcsema_real_eip !53
  store volatile i64 %139, i64* %RBP_write, !mcsema_real_eip !53
  %140 = add i64 %137, 8, !mcsema_real_eip !53
  store volatile i64 %140, i64* %RSP_write, !mcsema_real_eip !53
  store volatile i64 209, i64* %EIP_write, !mcsema_real_eip !54
  %141 = load i64, i64* %RSP_read, !mcsema_real_eip !54
  %142 = add i64 %141, 8, !mcsema_real_eip !54
  %143 = inttoptr i64 %141 to i64*, !mcsema_real_eip !54
  %144 = load i64, i64* %143, !mcsema_real_eip !54
  store volatile i64 %144, i64* %RIP_write, !mcsema_real_eip !54
  store volatile i64 %142, i64* %RSP_write, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
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
!6 = !{i64 25}
!7 = !{i64 28}
!8 = !{i64 31}
!9 = !{i64 34}
!10 = !{i64 37}
!11 = !{i64 41}
!12 = !{i64 45}
!13 = !{i64 49}
!14 = !{i64 52}
!15 = !{i64 55}
!16 = !{i64 58}
!17 = !{i64 61}
!18 = !{i64 63}
!19 = !{i64 65}
!20 = !{i64 70}
!21 = !{i64 72}
!22 = !{i64 75}
!23 = !{i64 77}
!24 = !{i64 81}
!25 = !{i64 82}
!26 = !{i64 96}
!27 = !{i64 97}
!28 = !{i64 100}
!29 = !{i64 101}
!30 = !{i64 105}
!31 = !{i64 110}
!32 = !{i64 115}
!33 = !{i64 120}
!34 = !{i64 126}
!35 = !{i64 132}
!36 = !{i64 138}
!37 = !{i64 144}
!38 = !{i64 149}
!39 = !{i64 156}
!40 = !{i64 159}
!41 = !{i64 163}
!42 = !{i64 165}
!43 = !{i64 167}
!44 = !{i64 170}
!45 = !{i64 173}
!46 = !{i64 176}
!47 = !{i64 183}
!48 = !{i64 191}
!49 = !{i64 194}
!50 = !{i64 198}
!51 = !{i64 203}
!52 = !{i64 207}
!53 = !{i64 208}
!54 = !{i64 209}
