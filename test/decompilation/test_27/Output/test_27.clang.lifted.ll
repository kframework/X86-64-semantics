; ModuleID = 'Output/test_27.clang.lifted.bc'
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %6 = load i64, i64* %R15_read, !mcsema_real_eip !2
  %7 = load i64, i64* %RSP_read, !mcsema_real_eip !2
  %8 = sub i64 %7, 8, !mcsema_real_eip !2
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %9, !mcsema_real_eip !2
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !2
  store volatile i64 6, i64* %EIP_write, !mcsema_real_eip !3
  %10 = load i64, i64* %R14_read, !mcsema_real_eip !3
  %11 = load i64, i64* %RSP_read, !mcsema_real_eip !3
  %12 = sub i64 %11, 8, !mcsema_real_eip !3
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !3
  store i64 %10, i64* %13, !mcsema_real_eip !3
  store volatile i64 %12, i64* %RSP_write, !mcsema_real_eip !3
  store volatile i64 8, i64* %EIP_write, !mcsema_real_eip !4
  %14 = load i64, i64* %RBX_read, !mcsema_real_eip !4
  %15 = load i64, i64* %RSP_read, !mcsema_real_eip !4
  %16 = sub i64 %15, 8, !mcsema_real_eip !4
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !4
  store i64 %14, i64* %17, !mcsema_real_eip !4
  store volatile i64 %16, i64* %RSP_write, !mcsema_real_eip !4
  store volatile i64 9, i64* %EIP_write, !mcsema_real_eip !5
  %18 = load i64, i64* %RSP_read, !mcsema_real_eip !5
  %19 = sext i8 104 to i64, !mcsema_real_eip !5
  %20 = sub i64 %18, %19, !mcsema_real_eip !5
  %21 = xor i64 %20, %18, !mcsema_real_eip !5
  %22 = xor i64 %21, %19, !mcsema_real_eip !5
  %23 = and i64 %22, 16, !mcsema_real_eip !5
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !5
  %25 = zext i1 %24 to i8, !mcsema_real_eip !5
  store volatile i8 %25, i8* %AF_write, !mcsema_real_eip !5
  %26 = trunc i64 %20 to i8, !mcsema_real_eip !5
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !5
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !5
  %29 = zext i1 %28 to i8, !mcsema_real_eip !5
  %30 = xor i8 %29, 1, !mcsema_real_eip !5
  %31 = trunc i8 %30 to i1, !mcsema_real_eip !5
  %32 = zext i1 %31 to i8, !mcsema_real_eip !5
  store volatile i8 %32, i8* %PF_write, !mcsema_real_eip !5
  %33 = icmp eq i64 %20, 0, !mcsema_real_eip !5
  %34 = zext i1 %33 to i8, !mcsema_real_eip !5
  store volatile i8 %34, i8* %ZF_write, !mcsema_real_eip !5
  %35 = lshr i64 %20, 63, !mcsema_real_eip !5
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !5
  %37 = zext i1 %36 to i8, !mcsema_real_eip !5
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !5
  %39 = zext i1 %38 to i8, !mcsema_real_eip !5
  store volatile i8 %39, i8* %SF_write, !mcsema_real_eip !5
  %40 = icmp ult i64 %18, %19, !mcsema_real_eip !5
  %41 = zext i1 %40 to i8, !mcsema_real_eip !5
  store volatile i8 %41, i8* %CF_write, !mcsema_real_eip !5
  %42 = xor i64 %18, %19, !mcsema_real_eip !5
  %43 = xor i64 %18, %20, !mcsema_real_eip !5
  %44 = and i64 %42, %43, !mcsema_real_eip !5
  %45 = lshr i64 %44, 63, !mcsema_real_eip !5
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !5
  %47 = zext i1 %46 to i8, !mcsema_real_eip !5
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !5
  %49 = zext i1 %48 to i8, !mcsema_real_eip !5
  store volatile i8 %49, i8* %OF_write, !mcsema_real_eip !5
  store volatile i64 %20, i64* %RSP_write, !mcsema_real_eip !5
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !6
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %51 = add i64 %50, 48, !mcsema_real_eip !6
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !6
  %53 = load i64, i64* %52, !mcsema_real_eip !6
  store volatile i64 %53, i64* %RAX_write, !mcsema_real_eip !6
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !7
  %54 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %55 = add i64 %54, 40, !mcsema_real_eip !7
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !7
  %57 = load i64, i64* %56, !mcsema_real_eip !7
  store volatile i64 %57, i64* %R10_write, !mcsema_real_eip !7
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !8
  %58 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %59 = add i64 %58, 24, !mcsema_real_eip !8
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !8
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !8
  store volatile i64 %61, i64* %R11_write, !mcsema_real_eip !8
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !9
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %63 = add i64 %62, 16, !mcsema_real_eip !9
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !9
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !9
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !9
  %67 = load i32, i32* %66, !mcsema_real_eip !9
  %68 = zext i32 %67 to i64, !mcsema_real_eip !9
  store volatile i64 %68, i64* %EBX_write, !mcsema_real_eip !9
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !10
  %69 = zext i32 12 to i64, !mcsema_real_eip !10
  store volatile i64 %69, i64* %R14D_write, !mcsema_real_eip !10
  store volatile i64 34, i64* %EIP_write, !mcsema_real_eip !11
  %70 = load i32, i32* %R14D_read, !mcsema_real_eip !11
  %71 = zext i32 %70 to i64, !mcsema_real_eip !11
  store volatile i64 %71, i64* %R15D_write, !mcsema_real_eip !11
  store volatile i64 37, i64* %EIP_write, !mcsema_real_eip !12
  %72 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %73 = add i64 %72, -56, !mcsema_real_eip !12
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !12
  %75 = load i64, i64* %RDI_read, !mcsema_real_eip !12
  store i64 %75, i64* %74, !mcsema_real_eip !12
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !13
  %76 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %77 = add i64 %76, -48, !mcsema_real_eip !13
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !13
  %79 = load i32, i32* %ESI_read, !mcsema_real_eip !13
  %80 = ptrtoint i64* %78 to i64, !mcsema_real_eip !13
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !13
  store i32 %79, i32* %81, !mcsema_real_eip !13
  store volatile i64 44, i64* %EIP_write, !mcsema_real_eip !14
  %82 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %83 = add i64 %82, -56, !mcsema_real_eip !14
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !14
  %85 = load i64, i64* %84, !mcsema_real_eip !14
  store volatile i64 %85, i64* %RDI_write, !mcsema_real_eip !14
  store volatile i64 48, i64* %EIP_write, !mcsema_real_eip !15
  %86 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %87 = add i64 %86, -40, !mcsema_real_eip !15
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !15
  %89 = load i64, i64* %RDI_read, !mcsema_real_eip !15
  store i64 %89, i64* %88, !mcsema_real_eip !15
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !16
  %90 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %91 = add i64 %90, -48, !mcsema_real_eip !16
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !16
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !16
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !16
  %95 = load i32, i32* %94, !mcsema_real_eip !16
  %96 = zext i32 %95 to i64, !mcsema_real_eip !16
  store volatile i64 %96, i64* %ESI_write, !mcsema_real_eip !16
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !17
  %97 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %98 = add i64 %97, -32, !mcsema_real_eip !17
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !17
  %100 = load i32, i32* %ESI_read, !mcsema_real_eip !17
  %101 = ptrtoint i64* %99 to i64, !mcsema_real_eip !17
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !17
  store i32 %100, i32* %102, !mcsema_real_eip !17
  store volatile i64 58, i64* %EIP_write, !mcsema_real_eip !18
  %103 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %104 = add i64 %103, -64, !mcsema_real_eip !18
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !18
  %106 = load i64, i64* %RDX_read, !mcsema_real_eip !18
  store i64 %106, i64* %105, !mcsema_real_eip !18
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !19
  %107 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %108 = add i64 %107, -72, !mcsema_real_eip !19
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !19
  %110 = load i64, i64* %RCX_read, !mcsema_real_eip !19
  store i64 %110, i64* %109, !mcsema_real_eip !19
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !20
  %111 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %112 = add i64 %111, -76, !mcsema_real_eip !20
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !20
  %114 = load i32, i32* %R8D_read, !mcsema_real_eip !20
  %115 = ptrtoint i64* %113 to i64, !mcsema_real_eip !20
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !20
  store i32 %114, i32* %116, !mcsema_real_eip !20
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !21
  %117 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %118 = add i64 %117, -80, !mcsema_real_eip !21
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !21
  %120 = load i32, i32* %R9D_read, !mcsema_real_eip !21
  %121 = ptrtoint i64* %119 to i64, !mcsema_real_eip !21
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !21
  store i32 %120, i32* %122, !mcsema_real_eip !21
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !22
  %123 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %124 = add i64 %123, -84, !mcsema_real_eip !22
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !22
  %126 = load i32, i32* %EBX_read, !mcsema_real_eip !22
  %127 = ptrtoint i64* %125 to i64, !mcsema_real_eip !22
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !22
  store i32 %126, i32* %128, !mcsema_real_eip !22
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !23
  %129 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %130 = add i64 %129, -96, !mcsema_real_eip !23
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !23
  %132 = load i64, i64* %R10_read, !mcsema_real_eip !23
  store i64 %132, i64* %131, !mcsema_real_eip !23
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !24
  %133 = load i64, i64* %RBP_read, !mcsema_real_eip !24
  %134 = add i64 %133, -104, !mcsema_real_eip !24
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !24
  %136 = load i64, i64* %RAX_read, !mcsema_real_eip !24
  store i64 %136, i64* %135, !mcsema_real_eip !24
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !25
  %137 = load i64, i64* %R15_read, !mcsema_real_eip !25
  store volatile i64 %137, i64* %RDI_write, !mcsema_real_eip !25
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !26
  %138 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %139 = add i64 %138, -120, !mcsema_real_eip !26
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !26
  %141 = load i64, i64* %R11_read, !mcsema_real_eip !26
  store i64 %141, i64* %140, !mcsema_real_eip !26
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !27
  %142 = load i64, i64* %RDI_read, !mcsema_real_eip !27
  %143 = load i64, i64* %RSP_read, !mcsema_real_eip !27
  %144 = sub i64 %143, 8, !mcsema_real_eip !27
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !27
  store i64 -2415393069852865332, i64* %145, !mcsema_real_eip !27
  store volatile i64 %144, i64* %RSP_write, !mcsema_real_eip !27
  %146 = call x86_64_sysvcc i64 @_malloc(i64 %142), !mcsema_real_eip !27
  store volatile i64 %146, i64* %RAX_write, !mcsema_real_eip !27
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !28
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %148 = add i64 %147, -112, !mcsema_real_eip !28
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !28
  %150 = load i64, i64* %RAX_read, !mcsema_real_eip !28
  store i64 %150, i64* %149, !mcsema_real_eip !28
  store volatile i64 101, i64* %EIP_write, !mcsema_real_eip !29
  %151 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %152 = add i64 %151, -40, !mcsema_real_eip !29
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !29
  %154 = ptrtoint i64* %153 to i64, !mcsema_real_eip !29
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !29
  %156 = load i32, i32* %155, !mcsema_real_eip !29
  %157 = zext i32 %156 to i64, !mcsema_real_eip !29
  store volatile i64 %157, i64* %ESI_write, !mcsema_real_eip !29
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !30
  %158 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %159 = add i64 %158, -64, !mcsema_real_eip !30
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !30
  %161 = load i64, i64* %160, !mcsema_real_eip !30
  store volatile i64 %161, i64* %RAX_write, !mcsema_real_eip !30
  store volatile i64 108, i64* %EIP_write, !mcsema_real_eip !31
  %162 = load i64, i64* %RAX_read, !mcsema_real_eip !31
  %163 = add i64 %162, 0, !mcsema_real_eip !31
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !31
  %165 = ptrtoint i64* %164 to i64, !mcsema_real_eip !31
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !31
  %167 = load i32, i32* %166, !mcsema_real_eip !31
  %168 = load i32, i32* %ESI_read, !mcsema_real_eip !31
  %169 = add i32 %168, %167, !mcsema_real_eip !31
  %170 = xor i32 %169, %167, !mcsema_real_eip !31
  %171 = xor i32 %170, %168, !mcsema_real_eip !31
  %172 = and i32 %171, 16, !mcsema_real_eip !31
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !31
  %174 = zext i1 %173 to i8, !mcsema_real_eip !31
  store volatile i8 %174, i8* %AF_write, !mcsema_real_eip !31
  %175 = lshr i32 %169, 31, !mcsema_real_eip !31
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !31
  %177 = zext i1 %176 to i8, !mcsema_real_eip !31
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !31
  %179 = zext i1 %178 to i8, !mcsema_real_eip !31
  store volatile i8 %179, i8* %SF_write, !mcsema_real_eip !31
  %180 = icmp eq i32 %169, 0, !mcsema_real_eip !31
  %181 = zext i1 %180 to i8, !mcsema_real_eip !31
  store volatile i8 %181, i8* %ZF_write, !mcsema_real_eip !31
  %182 = xor i32 %167, %168, !mcsema_real_eip !31
  %183 = xor i32 %182, -1, !mcsema_real_eip !31
  %184 = xor i32 %167, %169, !mcsema_real_eip !31
  %185 = and i32 %183, %184, !mcsema_real_eip !31
  %186 = lshr i32 %185, 31, !mcsema_real_eip !31
  %187 = and i32 %186, 1, !mcsema_real_eip !31
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !31
  %189 = zext i1 %188 to i8, !mcsema_real_eip !31
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !31
  %191 = zext i1 %190 to i8, !mcsema_real_eip !31
  store volatile i8 %191, i8* %OF_write, !mcsema_real_eip !31
  %192 = trunc i32 %169 to i8, !mcsema_real_eip !31
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !31
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !31
  %195 = zext i1 %194 to i8, !mcsema_real_eip !31
  %196 = xor i8 %195, 1, !mcsema_real_eip !31
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !31
  %198 = zext i1 %197 to i8, !mcsema_real_eip !31
  store volatile i8 %198, i8* %PF_write, !mcsema_real_eip !31
  %199 = icmp ult i32 %169, %167, !mcsema_real_eip !31
  %200 = zext i1 %199 to i8, !mcsema_real_eip !31
  store volatile i8 %200, i8* %CF_write, !mcsema_real_eip !31
  %201 = zext i32 %169 to i64, !mcsema_real_eip !31
  store volatile i64 %201, i64* %ESI_write, !mcsema_real_eip !31
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !32
  %202 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %203 = add i64 %202, -72, !mcsema_real_eip !32
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !32
  %205 = load i64, i64* %204, !mcsema_real_eip !32
  store volatile i64 %205, i64* %RAX_write, !mcsema_real_eip !32
  store volatile i64 114, i64* %EIP_write, !mcsema_real_eip !33
  %206 = load i64, i64* %RAX_read, !mcsema_real_eip !33
  %207 = add i64 %206, 0, !mcsema_real_eip !33
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !33
  %209 = ptrtoint i64* %208 to i64, !mcsema_real_eip !33
  %210 = inttoptr i64 %209 to i32*, !mcsema_real_eip !33
  %211 = load i32, i32* %210, !mcsema_real_eip !33
  %212 = load i32, i32* %ESI_read, !mcsema_real_eip !33
  %213 = add i32 %212, %211, !mcsema_real_eip !33
  %214 = xor i32 %213, %211, !mcsema_real_eip !33
  %215 = xor i32 %214, %212, !mcsema_real_eip !33
  %216 = and i32 %215, 16, !mcsema_real_eip !33
  %217 = icmp ne i32 %216, 0, !mcsema_real_eip !33
  %218 = zext i1 %217 to i8, !mcsema_real_eip !33
  store volatile i8 %218, i8* %AF_write, !mcsema_real_eip !33
  %219 = lshr i32 %213, 31, !mcsema_real_eip !33
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !33
  %221 = zext i1 %220 to i8, !mcsema_real_eip !33
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !33
  %223 = zext i1 %222 to i8, !mcsema_real_eip !33
  store volatile i8 %223, i8* %SF_write, !mcsema_real_eip !33
  %224 = icmp eq i32 %213, 0, !mcsema_real_eip !33
  %225 = zext i1 %224 to i8, !mcsema_real_eip !33
  store volatile i8 %225, i8* %ZF_write, !mcsema_real_eip !33
  %226 = xor i32 %211, %212, !mcsema_real_eip !33
  %227 = xor i32 %226, -1, !mcsema_real_eip !33
  %228 = xor i32 %211, %213, !mcsema_real_eip !33
  %229 = and i32 %227, %228, !mcsema_real_eip !33
  %230 = lshr i32 %229, 31, !mcsema_real_eip !33
  %231 = and i32 %230, 1, !mcsema_real_eip !33
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !33
  %233 = zext i1 %232 to i8, !mcsema_real_eip !33
  %234 = trunc i8 %233 to i1, !mcsema_real_eip !33
  %235 = zext i1 %234 to i8, !mcsema_real_eip !33
  store volatile i8 %235, i8* %OF_write, !mcsema_real_eip !33
  %236 = trunc i32 %213 to i8, !mcsema_real_eip !33
  %237 = call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !33
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !33
  %239 = zext i1 %238 to i8, !mcsema_real_eip !33
  %240 = xor i8 %239, 1, !mcsema_real_eip !33
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !33
  %242 = zext i1 %241 to i8, !mcsema_real_eip !33
  store volatile i8 %242, i8* %PF_write, !mcsema_real_eip !33
  %243 = icmp ult i32 %213, %211, !mcsema_real_eip !33
  %244 = zext i1 %243 to i8, !mcsema_real_eip !33
  store volatile i8 %244, i8* %CF_write, !mcsema_real_eip !33
  %245 = zext i32 %213 to i64, !mcsema_real_eip !33
  store volatile i64 %245, i64* %ESI_write, !mcsema_real_eip !33
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !34
  %246 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %247 = add i64 %246, -120, !mcsema_real_eip !34
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !34
  %249 = load i64, i64* %248, !mcsema_real_eip !34
  store volatile i64 %249, i64* %RAX_write, !mcsema_real_eip !34
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !35
  %250 = load i64, i64* %RAX_read, !mcsema_real_eip !35
  %251 = add i64 %250, 0, !mcsema_real_eip !35
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !35
  %253 = ptrtoint i64* %252 to i64, !mcsema_real_eip !35
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !35
  %255 = load i32, i32* %254, !mcsema_real_eip !35
  %256 = zext i32 %255 to i64, !mcsema_real_eip !35
  store volatile i64 %256, i64* %R8D_write, !mcsema_real_eip !35
  store volatile i64 123, i64* %EIP_write, !mcsema_real_eip !36
  %257 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %258 = add i64 %257, -96, !mcsema_real_eip !36
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !36
  %260 = load i64, i64* %259, !mcsema_real_eip !36
  store volatile i64 %260, i64* %RCX_write, !mcsema_real_eip !36
  store volatile i64 127, i64* %EIP_write, !mcsema_real_eip !37
  %261 = load i64, i64* %RCX_read, !mcsema_real_eip !37
  %262 = add i64 %261, 0, !mcsema_real_eip !37
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !37
  %264 = ptrtoint i64* %263 to i64, !mcsema_real_eip !37
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !37
  %266 = load i32, i32* %265, !mcsema_real_eip !37
  %267 = load i32, i32* %R8D_read, !mcsema_real_eip !37
  %268 = add i32 %267, %266, !mcsema_real_eip !37
  %269 = xor i32 %268, %266, !mcsema_real_eip !37
  %270 = xor i32 %269, %267, !mcsema_real_eip !37
  %271 = and i32 %270, 16, !mcsema_real_eip !37
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !37
  %273 = zext i1 %272 to i8, !mcsema_real_eip !37
  store volatile i8 %273, i8* %AF_write, !mcsema_real_eip !37
  %274 = lshr i32 %268, 31, !mcsema_real_eip !37
  %275 = trunc i32 %274 to i1, !mcsema_real_eip !37
  %276 = zext i1 %275 to i8, !mcsema_real_eip !37
  %277 = trunc i8 %276 to i1, !mcsema_real_eip !37
  %278 = zext i1 %277 to i8, !mcsema_real_eip !37
  store volatile i8 %278, i8* %SF_write, !mcsema_real_eip !37
  %279 = icmp eq i32 %268, 0, !mcsema_real_eip !37
  %280 = zext i1 %279 to i8, !mcsema_real_eip !37
  store volatile i8 %280, i8* %ZF_write, !mcsema_real_eip !37
  %281 = xor i32 %266, %267, !mcsema_real_eip !37
  %282 = xor i32 %281, -1, !mcsema_real_eip !37
  %283 = xor i32 %266, %268, !mcsema_real_eip !37
  %284 = and i32 %282, %283, !mcsema_real_eip !37
  %285 = lshr i32 %284, 31, !mcsema_real_eip !37
  %286 = and i32 %285, 1, !mcsema_real_eip !37
  %287 = trunc i32 %286 to i1, !mcsema_real_eip !37
  %288 = zext i1 %287 to i8, !mcsema_real_eip !37
  %289 = trunc i8 %288 to i1, !mcsema_real_eip !37
  %290 = zext i1 %289 to i8, !mcsema_real_eip !37
  store volatile i8 %290, i8* %OF_write, !mcsema_real_eip !37
  %291 = trunc i32 %268 to i8, !mcsema_real_eip !37
  %292 = call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !37
  %293 = trunc i8 %292 to i1, !mcsema_real_eip !37
  %294 = zext i1 %293 to i8, !mcsema_real_eip !37
  %295 = xor i8 %294, 1, !mcsema_real_eip !37
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !37
  %297 = zext i1 %296 to i8, !mcsema_real_eip !37
  store volatile i8 %297, i8* %PF_write, !mcsema_real_eip !37
  %298 = icmp ult i32 %268, %266, !mcsema_real_eip !37
  %299 = zext i1 %298 to i8, !mcsema_real_eip !37
  store volatile i8 %299, i8* %CF_write, !mcsema_real_eip !37
  %300 = zext i32 %268 to i64, !mcsema_real_eip !37
  store volatile i64 %300, i64* %R8D_write, !mcsema_real_eip !37
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !38
  %301 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %302 = add i64 %301, -104, !mcsema_real_eip !38
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !38
  %304 = load i64, i64* %303, !mcsema_real_eip !38
  store volatile i64 %304, i64* %RCX_write, !mcsema_real_eip !38
  store volatile i64 134, i64* %EIP_write, !mcsema_real_eip !39
  %305 = load i64, i64* %RCX_read, !mcsema_real_eip !39
  %306 = add i64 %305, 0, !mcsema_real_eip !39
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !39
  %308 = ptrtoint i64* %307 to i64, !mcsema_real_eip !39
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !39
  %310 = load i32, i32* %309, !mcsema_real_eip !39
  %311 = load i32, i32* %R8D_read, !mcsema_real_eip !39
  %312 = add i32 %311, %310, !mcsema_real_eip !39
  %313 = xor i32 %312, %310, !mcsema_real_eip !39
  %314 = xor i32 %313, %311, !mcsema_real_eip !39
  %315 = and i32 %314, 16, !mcsema_real_eip !39
  %316 = icmp ne i32 %315, 0, !mcsema_real_eip !39
  %317 = zext i1 %316 to i8, !mcsema_real_eip !39
  store volatile i8 %317, i8* %AF_write, !mcsema_real_eip !39
  %318 = lshr i32 %312, 31, !mcsema_real_eip !39
  %319 = trunc i32 %318 to i1, !mcsema_real_eip !39
  %320 = zext i1 %319 to i8, !mcsema_real_eip !39
  %321 = trunc i8 %320 to i1, !mcsema_real_eip !39
  %322 = zext i1 %321 to i8, !mcsema_real_eip !39
  store volatile i8 %322, i8* %SF_write, !mcsema_real_eip !39
  %323 = icmp eq i32 %312, 0, !mcsema_real_eip !39
  %324 = zext i1 %323 to i8, !mcsema_real_eip !39
  store volatile i8 %324, i8* %ZF_write, !mcsema_real_eip !39
  %325 = xor i32 %310, %311, !mcsema_real_eip !39
  %326 = xor i32 %325, -1, !mcsema_real_eip !39
  %327 = xor i32 %310, %312, !mcsema_real_eip !39
  %328 = and i32 %326, %327, !mcsema_real_eip !39
  %329 = lshr i32 %328, 31, !mcsema_real_eip !39
  %330 = and i32 %329, 1, !mcsema_real_eip !39
  %331 = trunc i32 %330 to i1, !mcsema_real_eip !39
  %332 = zext i1 %331 to i8, !mcsema_real_eip !39
  %333 = trunc i8 %332 to i1, !mcsema_real_eip !39
  %334 = zext i1 %333 to i8, !mcsema_real_eip !39
  store volatile i8 %334, i8* %OF_write, !mcsema_real_eip !39
  %335 = trunc i32 %312 to i8, !mcsema_real_eip !39
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !39
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !39
  %338 = zext i1 %337 to i8, !mcsema_real_eip !39
  %339 = xor i8 %338, 1, !mcsema_real_eip !39
  %340 = trunc i8 %339 to i1, !mcsema_real_eip !39
  %341 = zext i1 %340 to i8, !mcsema_real_eip !39
  store volatile i8 %341, i8* %PF_write, !mcsema_real_eip !39
  %342 = icmp ult i32 %312, %310, !mcsema_real_eip !39
  %343 = zext i1 %342 to i8, !mcsema_real_eip !39
  store volatile i8 %343, i8* %CF_write, !mcsema_real_eip !39
  %344 = zext i32 %312 to i64, !mcsema_real_eip !39
  store volatile i64 %344, i64* %R8D_write, !mcsema_real_eip !39
  store volatile i64 137, i64* %EIP_write, !mcsema_real_eip !40
  %345 = load i32, i32* %ESI_read, !mcsema_real_eip !40
  %346 = load i32, i32* %R8D_read, !mcsema_real_eip !40
  %347 = add i32 %346, %345, !mcsema_real_eip !40
  %348 = xor i32 %347, %345, !mcsema_real_eip !40
  %349 = xor i32 %348, %346, !mcsema_real_eip !40
  %350 = and i32 %349, 16, !mcsema_real_eip !40
  %351 = icmp ne i32 %350, 0, !mcsema_real_eip !40
  %352 = zext i1 %351 to i8, !mcsema_real_eip !40
  store volatile i8 %352, i8* %AF_write, !mcsema_real_eip !40
  %353 = lshr i32 %347, 31, !mcsema_real_eip !40
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !40
  %355 = zext i1 %354 to i8, !mcsema_real_eip !40
  %356 = trunc i8 %355 to i1, !mcsema_real_eip !40
  %357 = zext i1 %356 to i8, !mcsema_real_eip !40
  store volatile i8 %357, i8* %SF_write, !mcsema_real_eip !40
  %358 = icmp eq i32 %347, 0, !mcsema_real_eip !40
  %359 = zext i1 %358 to i8, !mcsema_real_eip !40
  store volatile i8 %359, i8* %ZF_write, !mcsema_real_eip !40
  %360 = xor i32 %345, %346, !mcsema_real_eip !40
  %361 = xor i32 %360, -1, !mcsema_real_eip !40
  %362 = xor i32 %345, %347, !mcsema_real_eip !40
  %363 = and i32 %361, %362, !mcsema_real_eip !40
  %364 = lshr i32 %363, 31, !mcsema_real_eip !40
  %365 = and i32 %364, 1, !mcsema_real_eip !40
  %366 = trunc i32 %365 to i1, !mcsema_real_eip !40
  %367 = zext i1 %366 to i8, !mcsema_real_eip !40
  %368 = trunc i8 %367 to i1, !mcsema_real_eip !40
  %369 = zext i1 %368 to i8, !mcsema_real_eip !40
  store volatile i8 %369, i8* %OF_write, !mcsema_real_eip !40
  %370 = trunc i32 %347 to i8, !mcsema_real_eip !40
  %371 = call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !40
  %372 = trunc i8 %371 to i1, !mcsema_real_eip !40
  %373 = zext i1 %372 to i8, !mcsema_real_eip !40
  %374 = xor i8 %373, 1, !mcsema_real_eip !40
  %375 = trunc i8 %374 to i1, !mcsema_real_eip !40
  %376 = zext i1 %375 to i8, !mcsema_real_eip !40
  store volatile i8 %376, i8* %PF_write, !mcsema_real_eip !40
  %377 = icmp ult i32 %347, %345, !mcsema_real_eip !40
  %378 = zext i1 %377 to i8, !mcsema_real_eip !40
  store volatile i8 %378, i8* %CF_write, !mcsema_real_eip !40
  %379 = zext i32 %347 to i64, !mcsema_real_eip !40
  store volatile i64 %379, i64* %ESI_write, !mcsema_real_eip !40
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !41
  %380 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %381 = add i64 %380, -112, !mcsema_real_eip !41
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !41
  %383 = load i64, i64* %382, !mcsema_real_eip !41
  store volatile i64 %383, i64* %RCX_write, !mcsema_real_eip !41
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !42
  %384 = load i64, i64* %RCX_read, !mcsema_real_eip !42
  %385 = add i64 %384, 0, !mcsema_real_eip !42
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !42
  %387 = load i32, i32* %ESI_read, !mcsema_real_eip !42
  %388 = ptrtoint i64* %386 to i64, !mcsema_real_eip !42
  %389 = inttoptr i64 %388 to i32*, !mcsema_real_eip !42
  store i32 %387, i32* %389, !mcsema_real_eip !42
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !43
  %390 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %391 = add i64 %390, -36, !mcsema_real_eip !43
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !43
  %393 = ptrtoint i64* %392 to i64, !mcsema_real_eip !43
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !43
  %395 = load i32, i32* %394, !mcsema_real_eip !43
  %396 = zext i32 %395 to i64, !mcsema_real_eip !43
  store volatile i64 %396, i64* %ESI_write, !mcsema_real_eip !43
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !44
  %397 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %398 = add i64 %397, -64, !mcsema_real_eip !44
  %399 = inttoptr i64 %398 to i64*, !mcsema_real_eip !44
  %400 = load i64, i64* %399, !mcsema_real_eip !44
  store volatile i64 %400, i64* %RCX_write, !mcsema_real_eip !44
  store volatile i64 153, i64* %EIP_write, !mcsema_real_eip !45
  %401 = load i64, i64* %RCX_read, !mcsema_real_eip !45
  %402 = add i64 %401, 4, !mcsema_real_eip !45
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !45
  %404 = ptrtoint i64* %403 to i64, !mcsema_real_eip !45
  %405 = inttoptr i64 %404 to i32*, !mcsema_real_eip !45
  %406 = load i32, i32* %405, !mcsema_real_eip !45
  %407 = load i32, i32* %ESI_read, !mcsema_real_eip !45
  %408 = add i32 %407, %406, !mcsema_real_eip !45
  %409 = xor i32 %408, %406, !mcsema_real_eip !45
  %410 = xor i32 %409, %407, !mcsema_real_eip !45
  %411 = and i32 %410, 16, !mcsema_real_eip !45
  %412 = icmp ne i32 %411, 0, !mcsema_real_eip !45
  %413 = zext i1 %412 to i8, !mcsema_real_eip !45
  store volatile i8 %413, i8* %AF_write, !mcsema_real_eip !45
  %414 = lshr i32 %408, 31, !mcsema_real_eip !45
  %415 = trunc i32 %414 to i1, !mcsema_real_eip !45
  %416 = zext i1 %415 to i8, !mcsema_real_eip !45
  %417 = trunc i8 %416 to i1, !mcsema_real_eip !45
  %418 = zext i1 %417 to i8, !mcsema_real_eip !45
  store volatile i8 %418, i8* %SF_write, !mcsema_real_eip !45
  %419 = icmp eq i32 %408, 0, !mcsema_real_eip !45
  %420 = zext i1 %419 to i8, !mcsema_real_eip !45
  store volatile i8 %420, i8* %ZF_write, !mcsema_real_eip !45
  %421 = xor i32 %406, %407, !mcsema_real_eip !45
  %422 = xor i32 %421, -1, !mcsema_real_eip !45
  %423 = xor i32 %406, %408, !mcsema_real_eip !45
  %424 = and i32 %422, %423, !mcsema_real_eip !45
  %425 = lshr i32 %424, 31, !mcsema_real_eip !45
  %426 = and i32 %425, 1, !mcsema_real_eip !45
  %427 = trunc i32 %426 to i1, !mcsema_real_eip !45
  %428 = zext i1 %427 to i8, !mcsema_real_eip !45
  %429 = trunc i8 %428 to i1, !mcsema_real_eip !45
  %430 = zext i1 %429 to i8, !mcsema_real_eip !45
  store volatile i8 %430, i8* %OF_write, !mcsema_real_eip !45
  %431 = trunc i32 %408 to i8, !mcsema_real_eip !45
  %432 = call i8 @llvm.ctpop.i8(i8 %431), !mcsema_real_eip !45
  %433 = trunc i8 %432 to i1, !mcsema_real_eip !45
  %434 = zext i1 %433 to i8, !mcsema_real_eip !45
  %435 = xor i8 %434, 1, !mcsema_real_eip !45
  %436 = trunc i8 %435 to i1, !mcsema_real_eip !45
  %437 = zext i1 %436 to i8, !mcsema_real_eip !45
  store volatile i8 %437, i8* %PF_write, !mcsema_real_eip !45
  %438 = icmp ult i32 %408, %406, !mcsema_real_eip !45
  %439 = zext i1 %438 to i8, !mcsema_real_eip !45
  store volatile i8 %439, i8* %CF_write, !mcsema_real_eip !45
  %440 = zext i32 %408 to i64, !mcsema_real_eip !45
  store volatile i64 %440, i64* %ESI_write, !mcsema_real_eip !45
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !46
  %441 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %442 = add i64 %441, -72, !mcsema_real_eip !46
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !46
  %444 = load i64, i64* %443, !mcsema_real_eip !46
  store volatile i64 %444, i64* %RCX_write, !mcsema_real_eip !46
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !47
  %445 = load i64, i64* %RCX_read, !mcsema_real_eip !47
  %446 = add i64 %445, 4, !mcsema_real_eip !47
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !47
  %448 = ptrtoint i64* %447 to i64, !mcsema_real_eip !47
  %449 = inttoptr i64 %448 to i32*, !mcsema_real_eip !47
  %450 = load i32, i32* %449, !mcsema_real_eip !47
  %451 = load i32, i32* %ESI_read, !mcsema_real_eip !47
  %452 = add i32 %451, %450, !mcsema_real_eip !47
  %453 = xor i32 %452, %450, !mcsema_real_eip !47
  %454 = xor i32 %453, %451, !mcsema_real_eip !47
  %455 = and i32 %454, 16, !mcsema_real_eip !47
  %456 = icmp ne i32 %455, 0, !mcsema_real_eip !47
  %457 = zext i1 %456 to i8, !mcsema_real_eip !47
  store volatile i8 %457, i8* %AF_write, !mcsema_real_eip !47
  %458 = lshr i32 %452, 31, !mcsema_real_eip !47
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !47
  %460 = zext i1 %459 to i8, !mcsema_real_eip !47
  %461 = trunc i8 %460 to i1, !mcsema_real_eip !47
  %462 = zext i1 %461 to i8, !mcsema_real_eip !47
  store volatile i8 %462, i8* %SF_write, !mcsema_real_eip !47
  %463 = icmp eq i32 %452, 0, !mcsema_real_eip !47
  %464 = zext i1 %463 to i8, !mcsema_real_eip !47
  store volatile i8 %464, i8* %ZF_write, !mcsema_real_eip !47
  %465 = xor i32 %450, %451, !mcsema_real_eip !47
  %466 = xor i32 %465, -1, !mcsema_real_eip !47
  %467 = xor i32 %450, %452, !mcsema_real_eip !47
  %468 = and i32 %466, %467, !mcsema_real_eip !47
  %469 = lshr i32 %468, 31, !mcsema_real_eip !47
  %470 = and i32 %469, 1, !mcsema_real_eip !47
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !47
  %472 = zext i1 %471 to i8, !mcsema_real_eip !47
  %473 = trunc i8 %472 to i1, !mcsema_real_eip !47
  %474 = zext i1 %473 to i8, !mcsema_real_eip !47
  store volatile i8 %474, i8* %OF_write, !mcsema_real_eip !47
  %475 = trunc i32 %452 to i8, !mcsema_real_eip !47
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !47
  %477 = trunc i8 %476 to i1, !mcsema_real_eip !47
  %478 = zext i1 %477 to i8, !mcsema_real_eip !47
  %479 = xor i8 %478, 1, !mcsema_real_eip !47
  %480 = trunc i8 %479 to i1, !mcsema_real_eip !47
  %481 = zext i1 %480 to i8, !mcsema_real_eip !47
  store volatile i8 %481, i8* %PF_write, !mcsema_real_eip !47
  %482 = icmp ult i32 %452, %450, !mcsema_real_eip !47
  %483 = zext i1 %482 to i8, !mcsema_real_eip !47
  store volatile i8 %483, i8* %CF_write, !mcsema_real_eip !47
  %484 = zext i32 %452 to i64, !mcsema_real_eip !47
  store volatile i64 %484, i64* %ESI_write, !mcsema_real_eip !47
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !48
  %485 = load i64, i64* %RAX_read, !mcsema_real_eip !48
  %486 = add i64 %485, 4, !mcsema_real_eip !48
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !48
  %488 = ptrtoint i64* %487 to i64, !mcsema_real_eip !48
  %489 = inttoptr i64 %488 to i32*, !mcsema_real_eip !48
  %490 = load i32, i32* %489, !mcsema_real_eip !48
  %491 = zext i32 %490 to i64, !mcsema_real_eip !48
  store volatile i64 %491, i64* %R8D_write, !mcsema_real_eip !48
  store volatile i64 167, i64* %EIP_write, !mcsema_real_eip !49
  %492 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %493 = add i64 %492, -96, !mcsema_real_eip !49
  %494 = inttoptr i64 %493 to i64*, !mcsema_real_eip !49
  %495 = load i64, i64* %494, !mcsema_real_eip !49
  store volatile i64 %495, i64* %RCX_write, !mcsema_real_eip !49
  store volatile i64 171, i64* %EIP_write, !mcsema_real_eip !50
  %496 = load i64, i64* %RCX_read, !mcsema_real_eip !50
  %497 = add i64 %496, 4, !mcsema_real_eip !50
  %498 = inttoptr i64 %497 to i64*, !mcsema_real_eip !50
  %499 = ptrtoint i64* %498 to i64, !mcsema_real_eip !50
  %500 = inttoptr i64 %499 to i32*, !mcsema_real_eip !50
  %501 = load i32, i32* %500, !mcsema_real_eip !50
  %502 = load i32, i32* %R8D_read, !mcsema_real_eip !50
  %503 = add i32 %502, %501, !mcsema_real_eip !50
  %504 = xor i32 %503, %501, !mcsema_real_eip !50
  %505 = xor i32 %504, %502, !mcsema_real_eip !50
  %506 = and i32 %505, 16, !mcsema_real_eip !50
  %507 = icmp ne i32 %506, 0, !mcsema_real_eip !50
  %508 = zext i1 %507 to i8, !mcsema_real_eip !50
  store volatile i8 %508, i8* %AF_write, !mcsema_real_eip !50
  %509 = lshr i32 %503, 31, !mcsema_real_eip !50
  %510 = trunc i32 %509 to i1, !mcsema_real_eip !50
  %511 = zext i1 %510 to i8, !mcsema_real_eip !50
  %512 = trunc i8 %511 to i1, !mcsema_real_eip !50
  %513 = zext i1 %512 to i8, !mcsema_real_eip !50
  store volatile i8 %513, i8* %SF_write, !mcsema_real_eip !50
  %514 = icmp eq i32 %503, 0, !mcsema_real_eip !50
  %515 = zext i1 %514 to i8, !mcsema_real_eip !50
  store volatile i8 %515, i8* %ZF_write, !mcsema_real_eip !50
  %516 = xor i32 %501, %502, !mcsema_real_eip !50
  %517 = xor i32 %516, -1, !mcsema_real_eip !50
  %518 = xor i32 %501, %503, !mcsema_real_eip !50
  %519 = and i32 %517, %518, !mcsema_real_eip !50
  %520 = lshr i32 %519, 31, !mcsema_real_eip !50
  %521 = and i32 %520, 1, !mcsema_real_eip !50
  %522 = trunc i32 %521 to i1, !mcsema_real_eip !50
  %523 = zext i1 %522 to i8, !mcsema_real_eip !50
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !50
  %525 = zext i1 %524 to i8, !mcsema_real_eip !50
  store volatile i8 %525, i8* %OF_write, !mcsema_real_eip !50
  %526 = trunc i32 %503 to i8, !mcsema_real_eip !50
  %527 = call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !50
  %528 = trunc i8 %527 to i1, !mcsema_real_eip !50
  %529 = zext i1 %528 to i8, !mcsema_real_eip !50
  %530 = xor i8 %529, 1, !mcsema_real_eip !50
  %531 = trunc i8 %530 to i1, !mcsema_real_eip !50
  %532 = zext i1 %531 to i8, !mcsema_real_eip !50
  store volatile i8 %532, i8* %PF_write, !mcsema_real_eip !50
  %533 = icmp ult i32 %503, %501, !mcsema_real_eip !50
  %534 = zext i1 %533 to i8, !mcsema_real_eip !50
  store volatile i8 %534, i8* %CF_write, !mcsema_real_eip !50
  %535 = zext i32 %503 to i64, !mcsema_real_eip !50
  store volatile i64 %535, i64* %R8D_write, !mcsema_real_eip !50
  store volatile i64 175, i64* %EIP_write, !mcsema_real_eip !51
  %536 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %537 = add i64 %536, -104, !mcsema_real_eip !51
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !51
  %539 = load i64, i64* %538, !mcsema_real_eip !51
  store volatile i64 %539, i64* %RCX_write, !mcsema_real_eip !51
  store volatile i64 179, i64* %EIP_write, !mcsema_real_eip !52
  %540 = load i64, i64* %RCX_read, !mcsema_real_eip !52
  %541 = add i64 %540, 4, !mcsema_real_eip !52
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !52
  %543 = ptrtoint i64* %542 to i64, !mcsema_real_eip !52
  %544 = inttoptr i64 %543 to i32*, !mcsema_real_eip !52
  %545 = load i32, i32* %544, !mcsema_real_eip !52
  %546 = load i32, i32* %R8D_read, !mcsema_real_eip !52
  %547 = add i32 %546, %545, !mcsema_real_eip !52
  %548 = xor i32 %547, %545, !mcsema_real_eip !52
  %549 = xor i32 %548, %546, !mcsema_real_eip !52
  %550 = and i32 %549, 16, !mcsema_real_eip !52
  %551 = icmp ne i32 %550, 0, !mcsema_real_eip !52
  %552 = zext i1 %551 to i8, !mcsema_real_eip !52
  store volatile i8 %552, i8* %AF_write, !mcsema_real_eip !52
  %553 = lshr i32 %547, 31, !mcsema_real_eip !52
  %554 = trunc i32 %553 to i1, !mcsema_real_eip !52
  %555 = zext i1 %554 to i8, !mcsema_real_eip !52
  %556 = trunc i8 %555 to i1, !mcsema_real_eip !52
  %557 = zext i1 %556 to i8, !mcsema_real_eip !52
  store volatile i8 %557, i8* %SF_write, !mcsema_real_eip !52
  %558 = icmp eq i32 %547, 0, !mcsema_real_eip !52
  %559 = zext i1 %558 to i8, !mcsema_real_eip !52
  store volatile i8 %559, i8* %ZF_write, !mcsema_real_eip !52
  %560 = xor i32 %545, %546, !mcsema_real_eip !52
  %561 = xor i32 %560, -1, !mcsema_real_eip !52
  %562 = xor i32 %545, %547, !mcsema_real_eip !52
  %563 = and i32 %561, %562, !mcsema_real_eip !52
  %564 = lshr i32 %563, 31, !mcsema_real_eip !52
  %565 = and i32 %564, 1, !mcsema_real_eip !52
  %566 = trunc i32 %565 to i1, !mcsema_real_eip !52
  %567 = zext i1 %566 to i8, !mcsema_real_eip !52
  %568 = trunc i8 %567 to i1, !mcsema_real_eip !52
  %569 = zext i1 %568 to i8, !mcsema_real_eip !52
  store volatile i8 %569, i8* %OF_write, !mcsema_real_eip !52
  %570 = trunc i32 %547 to i8, !mcsema_real_eip !52
  %571 = call i8 @llvm.ctpop.i8(i8 %570), !mcsema_real_eip !52
  %572 = trunc i8 %571 to i1, !mcsema_real_eip !52
  %573 = zext i1 %572 to i8, !mcsema_real_eip !52
  %574 = xor i8 %573, 1, !mcsema_real_eip !52
  %575 = trunc i8 %574 to i1, !mcsema_real_eip !52
  %576 = zext i1 %575 to i8, !mcsema_real_eip !52
  store volatile i8 %576, i8* %PF_write, !mcsema_real_eip !52
  %577 = icmp ult i32 %547, %545, !mcsema_real_eip !52
  %578 = zext i1 %577 to i8, !mcsema_real_eip !52
  store volatile i8 %578, i8* %CF_write, !mcsema_real_eip !52
  %579 = zext i32 %547 to i64, !mcsema_real_eip !52
  store volatile i64 %579, i64* %R8D_write, !mcsema_real_eip !52
  store volatile i64 183, i64* %EIP_write, !mcsema_real_eip !53
  %580 = load i32, i32* %ESI_read, !mcsema_real_eip !53
  %581 = load i32, i32* %R8D_read, !mcsema_real_eip !53
  %582 = add i32 %581, %580, !mcsema_real_eip !53
  %583 = xor i32 %582, %580, !mcsema_real_eip !53
  %584 = xor i32 %583, %581, !mcsema_real_eip !53
  %585 = and i32 %584, 16, !mcsema_real_eip !53
  %586 = icmp ne i32 %585, 0, !mcsema_real_eip !53
  %587 = zext i1 %586 to i8, !mcsema_real_eip !53
  store volatile i8 %587, i8* %AF_write, !mcsema_real_eip !53
  %588 = lshr i32 %582, 31, !mcsema_real_eip !53
  %589 = trunc i32 %588 to i1, !mcsema_real_eip !53
  %590 = zext i1 %589 to i8, !mcsema_real_eip !53
  %591 = trunc i8 %590 to i1, !mcsema_real_eip !53
  %592 = zext i1 %591 to i8, !mcsema_real_eip !53
  store volatile i8 %592, i8* %SF_write, !mcsema_real_eip !53
  %593 = icmp eq i32 %582, 0, !mcsema_real_eip !53
  %594 = zext i1 %593 to i8, !mcsema_real_eip !53
  store volatile i8 %594, i8* %ZF_write, !mcsema_real_eip !53
  %595 = xor i32 %580, %581, !mcsema_real_eip !53
  %596 = xor i32 %595, -1, !mcsema_real_eip !53
  %597 = xor i32 %580, %582, !mcsema_real_eip !53
  %598 = and i32 %596, %597, !mcsema_real_eip !53
  %599 = lshr i32 %598, 31, !mcsema_real_eip !53
  %600 = and i32 %599, 1, !mcsema_real_eip !53
  %601 = trunc i32 %600 to i1, !mcsema_real_eip !53
  %602 = zext i1 %601 to i8, !mcsema_real_eip !53
  %603 = trunc i8 %602 to i1, !mcsema_real_eip !53
  %604 = zext i1 %603 to i8, !mcsema_real_eip !53
  store volatile i8 %604, i8* %OF_write, !mcsema_real_eip !53
  %605 = trunc i32 %582 to i8, !mcsema_real_eip !53
  %606 = call i8 @llvm.ctpop.i8(i8 %605), !mcsema_real_eip !53
  %607 = trunc i8 %606 to i1, !mcsema_real_eip !53
  %608 = zext i1 %607 to i8, !mcsema_real_eip !53
  %609 = xor i8 %608, 1, !mcsema_real_eip !53
  %610 = trunc i8 %609 to i1, !mcsema_real_eip !53
  %611 = zext i1 %610 to i8, !mcsema_real_eip !53
  store volatile i8 %611, i8* %PF_write, !mcsema_real_eip !53
  %612 = icmp ult i32 %582, %580, !mcsema_real_eip !53
  %613 = zext i1 %612 to i8, !mcsema_real_eip !53
  store volatile i8 %613, i8* %CF_write, !mcsema_real_eip !53
  %614 = zext i32 %582 to i64, !mcsema_real_eip !53
  store volatile i64 %614, i64* %ESI_write, !mcsema_real_eip !53
  store volatile i64 186, i64* %EIP_write, !mcsema_real_eip !54
  %615 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %616 = add i64 %615, -112, !mcsema_real_eip !54
  %617 = inttoptr i64 %616 to i64*, !mcsema_real_eip !54
  %618 = load i64, i64* %617, !mcsema_real_eip !54
  store volatile i64 %618, i64* %RCX_write, !mcsema_real_eip !54
  store volatile i64 190, i64* %EIP_write, !mcsema_real_eip !55
  %619 = load i64, i64* %RCX_read, !mcsema_real_eip !55
  %620 = add i64 %619, 4, !mcsema_real_eip !55
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !55
  %622 = load i32, i32* %ESI_read, !mcsema_real_eip !55
  %623 = ptrtoint i64* %621 to i64, !mcsema_real_eip !55
  %624 = inttoptr i64 %623 to i32*, !mcsema_real_eip !55
  store i32 %622, i32* %624, !mcsema_real_eip !55
  store volatile i64 193, i64* %EIP_write, !mcsema_real_eip !56
  %625 = load i64, i64* %RBP_read, !mcsema_real_eip !56
  %626 = add i64 %625, -32, !mcsema_real_eip !56
  %627 = inttoptr i64 %626 to i64*, !mcsema_real_eip !56
  %628 = ptrtoint i64* %627 to i64, !mcsema_real_eip !56
  %629 = inttoptr i64 %628 to i32*, !mcsema_real_eip !56
  %630 = load i32, i32* %629, !mcsema_real_eip !56
  %631 = zext i32 %630 to i64, !mcsema_real_eip !56
  store volatile i64 %631, i64* %ESI_write, !mcsema_real_eip !56
  store volatile i64 196, i64* %EIP_write, !mcsema_real_eip !57
  %632 = load i64, i64* %RBP_read, !mcsema_real_eip !57
  %633 = add i64 %632, -64, !mcsema_real_eip !57
  %634 = inttoptr i64 %633 to i64*, !mcsema_real_eip !57
  %635 = load i64, i64* %634, !mcsema_real_eip !57
  store volatile i64 %635, i64* %RCX_write, !mcsema_real_eip !57
  store volatile i64 200, i64* %EIP_write, !mcsema_real_eip !58
  %636 = load i64, i64* %RCX_read, !mcsema_real_eip !58
  %637 = add i64 %636, 8, !mcsema_real_eip !58
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !58
  %639 = ptrtoint i64* %638 to i64, !mcsema_real_eip !58
  %640 = inttoptr i64 %639 to i32*, !mcsema_real_eip !58
  %641 = load i32, i32* %640, !mcsema_real_eip !58
  %642 = load i32, i32* %ESI_read, !mcsema_real_eip !58
  %643 = add i32 %642, %641, !mcsema_real_eip !58
  %644 = xor i32 %643, %641, !mcsema_real_eip !58
  %645 = xor i32 %644, %642, !mcsema_real_eip !58
  %646 = and i32 %645, 16, !mcsema_real_eip !58
  %647 = icmp ne i32 %646, 0, !mcsema_real_eip !58
  %648 = zext i1 %647 to i8, !mcsema_real_eip !58
  store volatile i8 %648, i8* %AF_write, !mcsema_real_eip !58
  %649 = lshr i32 %643, 31, !mcsema_real_eip !58
  %650 = trunc i32 %649 to i1, !mcsema_real_eip !58
  %651 = zext i1 %650 to i8, !mcsema_real_eip !58
  %652 = trunc i8 %651 to i1, !mcsema_real_eip !58
  %653 = zext i1 %652 to i8, !mcsema_real_eip !58
  store volatile i8 %653, i8* %SF_write, !mcsema_real_eip !58
  %654 = icmp eq i32 %643, 0, !mcsema_real_eip !58
  %655 = zext i1 %654 to i8, !mcsema_real_eip !58
  store volatile i8 %655, i8* %ZF_write, !mcsema_real_eip !58
  %656 = xor i32 %641, %642, !mcsema_real_eip !58
  %657 = xor i32 %656, -1, !mcsema_real_eip !58
  %658 = xor i32 %641, %643, !mcsema_real_eip !58
  %659 = and i32 %657, %658, !mcsema_real_eip !58
  %660 = lshr i32 %659, 31, !mcsema_real_eip !58
  %661 = and i32 %660, 1, !mcsema_real_eip !58
  %662 = trunc i32 %661 to i1, !mcsema_real_eip !58
  %663 = zext i1 %662 to i8, !mcsema_real_eip !58
  %664 = trunc i8 %663 to i1, !mcsema_real_eip !58
  %665 = zext i1 %664 to i8, !mcsema_real_eip !58
  store volatile i8 %665, i8* %OF_write, !mcsema_real_eip !58
  %666 = trunc i32 %643 to i8, !mcsema_real_eip !58
  %667 = call i8 @llvm.ctpop.i8(i8 %666), !mcsema_real_eip !58
  %668 = trunc i8 %667 to i1, !mcsema_real_eip !58
  %669 = zext i1 %668 to i8, !mcsema_real_eip !58
  %670 = xor i8 %669, 1, !mcsema_real_eip !58
  %671 = trunc i8 %670 to i1, !mcsema_real_eip !58
  %672 = zext i1 %671 to i8, !mcsema_real_eip !58
  store volatile i8 %672, i8* %PF_write, !mcsema_real_eip !58
  %673 = icmp ult i32 %643, %641, !mcsema_real_eip !58
  %674 = zext i1 %673 to i8, !mcsema_real_eip !58
  store volatile i8 %674, i8* %CF_write, !mcsema_real_eip !58
  %675 = zext i32 %643 to i64, !mcsema_real_eip !58
  store volatile i64 %675, i64* %ESI_write, !mcsema_real_eip !58
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !59
  %676 = load i64, i64* %RBP_read, !mcsema_real_eip !59
  %677 = add i64 %676, -72, !mcsema_real_eip !59
  %678 = inttoptr i64 %677 to i64*, !mcsema_real_eip !59
  %679 = load i64, i64* %678, !mcsema_real_eip !59
  store volatile i64 %679, i64* %RCX_write, !mcsema_real_eip !59
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !60
  %680 = load i64, i64* %RCX_read, !mcsema_real_eip !60
  %681 = add i64 %680, 8, !mcsema_real_eip !60
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !60
  %683 = ptrtoint i64* %682 to i64, !mcsema_real_eip !60
  %684 = inttoptr i64 %683 to i32*, !mcsema_real_eip !60
  %685 = load i32, i32* %684, !mcsema_real_eip !60
  %686 = load i32, i32* %ESI_read, !mcsema_real_eip !60
  %687 = add i32 %686, %685, !mcsema_real_eip !60
  %688 = xor i32 %687, %685, !mcsema_real_eip !60
  %689 = xor i32 %688, %686, !mcsema_real_eip !60
  %690 = and i32 %689, 16, !mcsema_real_eip !60
  %691 = icmp ne i32 %690, 0, !mcsema_real_eip !60
  %692 = zext i1 %691 to i8, !mcsema_real_eip !60
  store volatile i8 %692, i8* %AF_write, !mcsema_real_eip !60
  %693 = lshr i32 %687, 31, !mcsema_real_eip !60
  %694 = trunc i32 %693 to i1, !mcsema_real_eip !60
  %695 = zext i1 %694 to i8, !mcsema_real_eip !60
  %696 = trunc i8 %695 to i1, !mcsema_real_eip !60
  %697 = zext i1 %696 to i8, !mcsema_real_eip !60
  store volatile i8 %697, i8* %SF_write, !mcsema_real_eip !60
  %698 = icmp eq i32 %687, 0, !mcsema_real_eip !60
  %699 = zext i1 %698 to i8, !mcsema_real_eip !60
  store volatile i8 %699, i8* %ZF_write, !mcsema_real_eip !60
  %700 = xor i32 %685, %686, !mcsema_real_eip !60
  %701 = xor i32 %700, -1, !mcsema_real_eip !60
  %702 = xor i32 %685, %687, !mcsema_real_eip !60
  %703 = and i32 %701, %702, !mcsema_real_eip !60
  %704 = lshr i32 %703, 31, !mcsema_real_eip !60
  %705 = and i32 %704, 1, !mcsema_real_eip !60
  %706 = trunc i32 %705 to i1, !mcsema_real_eip !60
  %707 = zext i1 %706 to i8, !mcsema_real_eip !60
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !60
  %709 = zext i1 %708 to i8, !mcsema_real_eip !60
  store volatile i8 %709, i8* %OF_write, !mcsema_real_eip !60
  %710 = trunc i32 %687 to i8, !mcsema_real_eip !60
  %711 = call i8 @llvm.ctpop.i8(i8 %710), !mcsema_real_eip !60
  %712 = trunc i8 %711 to i1, !mcsema_real_eip !60
  %713 = zext i1 %712 to i8, !mcsema_real_eip !60
  %714 = xor i8 %713, 1, !mcsema_real_eip !60
  %715 = trunc i8 %714 to i1, !mcsema_real_eip !60
  %716 = zext i1 %715 to i8, !mcsema_real_eip !60
  store volatile i8 %716, i8* %PF_write, !mcsema_real_eip !60
  %717 = icmp ult i32 %687, %685, !mcsema_real_eip !60
  %718 = zext i1 %717 to i8, !mcsema_real_eip !60
  store volatile i8 %718, i8* %CF_write, !mcsema_real_eip !60
  %719 = zext i32 %687 to i64, !mcsema_real_eip !60
  store volatile i64 %719, i64* %ESI_write, !mcsema_real_eip !60
  store volatile i64 210, i64* %EIP_write, !mcsema_real_eip !61
  %720 = load i64, i64* %RAX_read, !mcsema_real_eip !61
  %721 = add i64 %720, 8, !mcsema_real_eip !61
  %722 = inttoptr i64 %721 to i64*, !mcsema_real_eip !61
  %723 = ptrtoint i64* %722 to i64, !mcsema_real_eip !61
  %724 = inttoptr i64 %723 to i32*, !mcsema_real_eip !61
  %725 = load i32, i32* %724, !mcsema_real_eip !61
  %726 = zext i32 %725 to i64, !mcsema_real_eip !61
  store volatile i64 %726, i64* %R8D_write, !mcsema_real_eip !61
  store volatile i64 214, i64* %EIP_write, !mcsema_real_eip !62
  %727 = load i64, i64* %RBP_read, !mcsema_real_eip !62
  %728 = add i64 %727, -96, !mcsema_real_eip !62
  %729 = inttoptr i64 %728 to i64*, !mcsema_real_eip !62
  %730 = load i64, i64* %729, !mcsema_real_eip !62
  store volatile i64 %730, i64* %RCX_write, !mcsema_real_eip !62
  store volatile i64 218, i64* %EIP_write, !mcsema_real_eip !63
  %731 = load i64, i64* %RCX_read, !mcsema_real_eip !63
  %732 = add i64 %731, 8, !mcsema_real_eip !63
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !63
  %734 = ptrtoint i64* %733 to i64, !mcsema_real_eip !63
  %735 = inttoptr i64 %734 to i32*, !mcsema_real_eip !63
  %736 = load i32, i32* %735, !mcsema_real_eip !63
  %737 = load i32, i32* %R8D_read, !mcsema_real_eip !63
  %738 = add i32 %737, %736, !mcsema_real_eip !63
  %739 = xor i32 %738, %736, !mcsema_real_eip !63
  %740 = xor i32 %739, %737, !mcsema_real_eip !63
  %741 = and i32 %740, 16, !mcsema_real_eip !63
  %742 = icmp ne i32 %741, 0, !mcsema_real_eip !63
  %743 = zext i1 %742 to i8, !mcsema_real_eip !63
  store volatile i8 %743, i8* %AF_write, !mcsema_real_eip !63
  %744 = lshr i32 %738, 31, !mcsema_real_eip !63
  %745 = trunc i32 %744 to i1, !mcsema_real_eip !63
  %746 = zext i1 %745 to i8, !mcsema_real_eip !63
  %747 = trunc i8 %746 to i1, !mcsema_real_eip !63
  %748 = zext i1 %747 to i8, !mcsema_real_eip !63
  store volatile i8 %748, i8* %SF_write, !mcsema_real_eip !63
  %749 = icmp eq i32 %738, 0, !mcsema_real_eip !63
  %750 = zext i1 %749 to i8, !mcsema_real_eip !63
  store volatile i8 %750, i8* %ZF_write, !mcsema_real_eip !63
  %751 = xor i32 %736, %737, !mcsema_real_eip !63
  %752 = xor i32 %751, -1, !mcsema_real_eip !63
  %753 = xor i32 %736, %738, !mcsema_real_eip !63
  %754 = and i32 %752, %753, !mcsema_real_eip !63
  %755 = lshr i32 %754, 31, !mcsema_real_eip !63
  %756 = and i32 %755, 1, !mcsema_real_eip !63
  %757 = trunc i32 %756 to i1, !mcsema_real_eip !63
  %758 = zext i1 %757 to i8, !mcsema_real_eip !63
  %759 = trunc i8 %758 to i1, !mcsema_real_eip !63
  %760 = zext i1 %759 to i8, !mcsema_real_eip !63
  store volatile i8 %760, i8* %OF_write, !mcsema_real_eip !63
  %761 = trunc i32 %738 to i8, !mcsema_real_eip !63
  %762 = call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !63
  %763 = trunc i8 %762 to i1, !mcsema_real_eip !63
  %764 = zext i1 %763 to i8, !mcsema_real_eip !63
  %765 = xor i8 %764, 1, !mcsema_real_eip !63
  %766 = trunc i8 %765 to i1, !mcsema_real_eip !63
  %767 = zext i1 %766 to i8, !mcsema_real_eip !63
  store volatile i8 %767, i8* %PF_write, !mcsema_real_eip !63
  %768 = icmp ult i32 %738, %736, !mcsema_real_eip !63
  %769 = zext i1 %768 to i8, !mcsema_real_eip !63
  store volatile i8 %769, i8* %CF_write, !mcsema_real_eip !63
  %770 = zext i32 %738 to i64, !mcsema_real_eip !63
  store volatile i64 %770, i64* %R8D_write, !mcsema_real_eip !63
  store volatile i64 222, i64* %EIP_write, !mcsema_real_eip !64
  %771 = load i64, i64* %RBP_read, !mcsema_real_eip !64
  %772 = add i64 %771, -104, !mcsema_real_eip !64
  %773 = inttoptr i64 %772 to i64*, !mcsema_real_eip !64
  %774 = load i64, i64* %773, !mcsema_real_eip !64
  store volatile i64 %774, i64* %RCX_write, !mcsema_real_eip !64
  store volatile i64 226, i64* %EIP_write, !mcsema_real_eip !65
  %775 = load i64, i64* %RCX_read, !mcsema_real_eip !65
  %776 = add i64 %775, 8, !mcsema_real_eip !65
  %777 = inttoptr i64 %776 to i64*, !mcsema_real_eip !65
  %778 = ptrtoint i64* %777 to i64, !mcsema_real_eip !65
  %779 = inttoptr i64 %778 to i32*, !mcsema_real_eip !65
  %780 = load i32, i32* %779, !mcsema_real_eip !65
  %781 = load i32, i32* %R8D_read, !mcsema_real_eip !65
  %782 = add i32 %781, %780, !mcsema_real_eip !65
  %783 = xor i32 %782, %780, !mcsema_real_eip !65
  %784 = xor i32 %783, %781, !mcsema_real_eip !65
  %785 = and i32 %784, 16, !mcsema_real_eip !65
  %786 = icmp ne i32 %785, 0, !mcsema_real_eip !65
  %787 = zext i1 %786 to i8, !mcsema_real_eip !65
  store volatile i8 %787, i8* %AF_write, !mcsema_real_eip !65
  %788 = lshr i32 %782, 31, !mcsema_real_eip !65
  %789 = trunc i32 %788 to i1, !mcsema_real_eip !65
  %790 = zext i1 %789 to i8, !mcsema_real_eip !65
  %791 = trunc i8 %790 to i1, !mcsema_real_eip !65
  %792 = zext i1 %791 to i8, !mcsema_real_eip !65
  store volatile i8 %792, i8* %SF_write, !mcsema_real_eip !65
  %793 = icmp eq i32 %782, 0, !mcsema_real_eip !65
  %794 = zext i1 %793 to i8, !mcsema_real_eip !65
  store volatile i8 %794, i8* %ZF_write, !mcsema_real_eip !65
  %795 = xor i32 %780, %781, !mcsema_real_eip !65
  %796 = xor i32 %795, -1, !mcsema_real_eip !65
  %797 = xor i32 %780, %782, !mcsema_real_eip !65
  %798 = and i32 %796, %797, !mcsema_real_eip !65
  %799 = lshr i32 %798, 31, !mcsema_real_eip !65
  %800 = and i32 %799, 1, !mcsema_real_eip !65
  %801 = trunc i32 %800 to i1, !mcsema_real_eip !65
  %802 = zext i1 %801 to i8, !mcsema_real_eip !65
  %803 = trunc i8 %802 to i1, !mcsema_real_eip !65
  %804 = zext i1 %803 to i8, !mcsema_real_eip !65
  store volatile i8 %804, i8* %OF_write, !mcsema_real_eip !65
  %805 = trunc i32 %782 to i8, !mcsema_real_eip !65
  %806 = call i8 @llvm.ctpop.i8(i8 %805), !mcsema_real_eip !65
  %807 = trunc i8 %806 to i1, !mcsema_real_eip !65
  %808 = zext i1 %807 to i8, !mcsema_real_eip !65
  %809 = xor i8 %808, 1, !mcsema_real_eip !65
  %810 = trunc i8 %809 to i1, !mcsema_real_eip !65
  %811 = zext i1 %810 to i8, !mcsema_real_eip !65
  store volatile i8 %811, i8* %PF_write, !mcsema_real_eip !65
  %812 = icmp ult i32 %782, %780, !mcsema_real_eip !65
  %813 = zext i1 %812 to i8, !mcsema_real_eip !65
  store volatile i8 %813, i8* %CF_write, !mcsema_real_eip !65
  %814 = zext i32 %782 to i64, !mcsema_real_eip !65
  store volatile i64 %814, i64* %R8D_write, !mcsema_real_eip !65
  store volatile i64 230, i64* %EIP_write, !mcsema_real_eip !66
  %815 = load i32, i32* %ESI_read, !mcsema_real_eip !66
  %816 = load i32, i32* %R8D_read, !mcsema_real_eip !66
  %817 = add i32 %816, %815, !mcsema_real_eip !66
  %818 = xor i32 %817, %815, !mcsema_real_eip !66
  %819 = xor i32 %818, %816, !mcsema_real_eip !66
  %820 = and i32 %819, 16, !mcsema_real_eip !66
  %821 = icmp ne i32 %820, 0, !mcsema_real_eip !66
  %822 = zext i1 %821 to i8, !mcsema_real_eip !66
  store volatile i8 %822, i8* %AF_write, !mcsema_real_eip !66
  %823 = lshr i32 %817, 31, !mcsema_real_eip !66
  %824 = trunc i32 %823 to i1, !mcsema_real_eip !66
  %825 = zext i1 %824 to i8, !mcsema_real_eip !66
  %826 = trunc i8 %825 to i1, !mcsema_real_eip !66
  %827 = zext i1 %826 to i8, !mcsema_real_eip !66
  store volatile i8 %827, i8* %SF_write, !mcsema_real_eip !66
  %828 = icmp eq i32 %817, 0, !mcsema_real_eip !66
  %829 = zext i1 %828 to i8, !mcsema_real_eip !66
  store volatile i8 %829, i8* %ZF_write, !mcsema_real_eip !66
  %830 = xor i32 %815, %816, !mcsema_real_eip !66
  %831 = xor i32 %830, -1, !mcsema_real_eip !66
  %832 = xor i32 %815, %817, !mcsema_real_eip !66
  %833 = and i32 %831, %832, !mcsema_real_eip !66
  %834 = lshr i32 %833, 31, !mcsema_real_eip !66
  %835 = and i32 %834, 1, !mcsema_real_eip !66
  %836 = trunc i32 %835 to i1, !mcsema_real_eip !66
  %837 = zext i1 %836 to i8, !mcsema_real_eip !66
  %838 = trunc i8 %837 to i1, !mcsema_real_eip !66
  %839 = zext i1 %838 to i8, !mcsema_real_eip !66
  store volatile i8 %839, i8* %OF_write, !mcsema_real_eip !66
  %840 = trunc i32 %817 to i8, !mcsema_real_eip !66
  %841 = call i8 @llvm.ctpop.i8(i8 %840), !mcsema_real_eip !66
  %842 = trunc i8 %841 to i1, !mcsema_real_eip !66
  %843 = zext i1 %842 to i8, !mcsema_real_eip !66
  %844 = xor i8 %843, 1, !mcsema_real_eip !66
  %845 = trunc i8 %844 to i1, !mcsema_real_eip !66
  %846 = zext i1 %845 to i8, !mcsema_real_eip !66
  store volatile i8 %846, i8* %PF_write, !mcsema_real_eip !66
  %847 = icmp ult i32 %817, %815, !mcsema_real_eip !66
  %848 = zext i1 %847 to i8, !mcsema_real_eip !66
  store volatile i8 %848, i8* %CF_write, !mcsema_real_eip !66
  %849 = zext i32 %817 to i64, !mcsema_real_eip !66
  store volatile i64 %849, i64* %ESI_write, !mcsema_real_eip !66
  store volatile i64 233, i64* %EIP_write, !mcsema_real_eip !67
  %850 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %851 = add i64 %850, -112, !mcsema_real_eip !67
  %852 = inttoptr i64 %851 to i64*, !mcsema_real_eip !67
  %853 = load i64, i64* %852, !mcsema_real_eip !67
  store volatile i64 %853, i64* %RCX_write, !mcsema_real_eip !67
  store volatile i64 237, i64* %EIP_write, !mcsema_real_eip !68
  %854 = load i64, i64* %RCX_read, !mcsema_real_eip !68
  %855 = add i64 %854, 8, !mcsema_real_eip !68
  %856 = inttoptr i64 %855 to i64*, !mcsema_real_eip !68
  %857 = load i32, i32* %ESI_read, !mcsema_real_eip !68
  %858 = ptrtoint i64* %856 to i64, !mcsema_real_eip !68
  %859 = inttoptr i64 %858 to i32*, !mcsema_real_eip !68
  store i32 %857, i32* %859, !mcsema_real_eip !68
  store volatile i64 240, i64* %EIP_write, !mcsema_real_eip !69
  %860 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %861 = add i64 %860, -112, !mcsema_real_eip !69
  %862 = inttoptr i64 %861 to i64*, !mcsema_real_eip !69
  %863 = load i64, i64* %862, !mcsema_real_eip !69
  store volatile i64 %863, i64* %RAX_write, !mcsema_real_eip !69
  store volatile i64 244, i64* %EIP_write, !mcsema_real_eip !70
  %864 = load i64, i64* %RSP_read, !mcsema_real_eip !70
  %865 = add i64 104, %864, !mcsema_real_eip !70
  %866 = xor i64 %865, %864, !mcsema_real_eip !70
  %867 = xor i64 %866, 104, !mcsema_real_eip !70
  %868 = and i64 %867, 16, !mcsema_real_eip !70
  %869 = icmp ne i64 %868, 0, !mcsema_real_eip !70
  %870 = zext i1 %869 to i8, !mcsema_real_eip !70
  store volatile i8 %870, i8* %AF_write, !mcsema_real_eip !70
  %871 = lshr i64 %865, 63, !mcsema_real_eip !70
  %872 = trunc i64 %871 to i1, !mcsema_real_eip !70
  %873 = zext i1 %872 to i8, !mcsema_real_eip !70
  %874 = trunc i8 %873 to i1, !mcsema_real_eip !70
  %875 = zext i1 %874 to i8, !mcsema_real_eip !70
  store volatile i8 %875, i8* %SF_write, !mcsema_real_eip !70
  %876 = icmp eq i64 %865, 0, !mcsema_real_eip !70
  %877 = zext i1 %876 to i8, !mcsema_real_eip !70
  store volatile i8 %877, i8* %ZF_write, !mcsema_real_eip !70
  %878 = xor i64 %864, 104, !mcsema_real_eip !70
  %879 = xor i64 %878, -1, !mcsema_real_eip !70
  %880 = xor i64 %864, %865, !mcsema_real_eip !70
  %881 = and i64 %879, %880, !mcsema_real_eip !70
  %882 = lshr i64 %881, 63, !mcsema_real_eip !70
  %883 = and i64 %882, 1, !mcsema_real_eip !70
  %884 = trunc i64 %883 to i1, !mcsema_real_eip !70
  %885 = zext i1 %884 to i8, !mcsema_real_eip !70
  %886 = trunc i8 %885 to i1, !mcsema_real_eip !70
  %887 = zext i1 %886 to i8, !mcsema_real_eip !70
  store volatile i8 %887, i8* %OF_write, !mcsema_real_eip !70
  %888 = trunc i64 %865 to i8, !mcsema_real_eip !70
  %889 = call i8 @llvm.ctpop.i8(i8 %888), !mcsema_real_eip !70
  %890 = trunc i8 %889 to i1, !mcsema_real_eip !70
  %891 = zext i1 %890 to i8, !mcsema_real_eip !70
  %892 = xor i8 %891, 1, !mcsema_real_eip !70
  %893 = trunc i8 %892 to i1, !mcsema_real_eip !70
  %894 = zext i1 %893 to i8, !mcsema_real_eip !70
  store volatile i8 %894, i8* %PF_write, !mcsema_real_eip !70
  %895 = icmp ult i64 %865, %864, !mcsema_real_eip !70
  %896 = zext i1 %895 to i8, !mcsema_real_eip !70
  store volatile i8 %896, i8* %CF_write, !mcsema_real_eip !70
  store volatile i64 %865, i64* %RSP_write, !mcsema_real_eip !70
  store volatile i64 248, i64* %EIP_write, !mcsema_real_eip !71
  %897 = load i64, i64* %RSP_read, !mcsema_real_eip !71
  %898 = inttoptr i64 %897 to i64*, !mcsema_real_eip !71
  %899 = load i64, i64* %898, !mcsema_real_eip !71
  store volatile i64 %899, i64* %RBX_write, !mcsema_real_eip !71
  %900 = add i64 %897, 8, !mcsema_real_eip !71
  store volatile i64 %900, i64* %RSP_write, !mcsema_real_eip !71
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !72
  %901 = load i64, i64* %RSP_read, !mcsema_real_eip !72
  %902 = inttoptr i64 %901 to i64*, !mcsema_real_eip !72
  %903 = load i64, i64* %902, !mcsema_real_eip !72
  store volatile i64 %903, i64* %R14_write, !mcsema_real_eip !72
  %904 = add i64 %901, 8, !mcsema_real_eip !72
  store volatile i64 %904, i64* %RSP_write, !mcsema_real_eip !72
  store volatile i64 251, i64* %EIP_write, !mcsema_real_eip !73
  %905 = load i64, i64* %RSP_read, !mcsema_real_eip !73
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !73
  %907 = load i64, i64* %906, !mcsema_real_eip !73
  store volatile i64 %907, i64* %R15_write, !mcsema_real_eip !73
  %908 = add i64 %905, 8, !mcsema_real_eip !73
  store volatile i64 %908, i64* %RSP_write, !mcsema_real_eip !73
  store volatile i64 253, i64* %EIP_write, !mcsema_real_eip !74
  %909 = load i64, i64* %RSP_read, !mcsema_real_eip !74
  %910 = inttoptr i64 %909 to i64*, !mcsema_real_eip !74
  %911 = load i64, i64* %910, !mcsema_real_eip !74
  store volatile i64 %911, i64* %RBP_write, !mcsema_real_eip !74
  %912 = add i64 %909, 8, !mcsema_real_eip !74
  store volatile i64 %912, i64* %RSP_write, !mcsema_real_eip !74
  store volatile i64 254, i64* %EIP_write, !mcsema_real_eip !75
  %913 = load i64, i64* %RSP_read, !mcsema_real_eip !75
  %914 = add i64 %913, 8, !mcsema_real_eip !75
  %915 = inttoptr i64 %913 to i64*, !mcsema_real_eip !75
  %916 = load i64, i64* %915, !mcsema_real_eip !75
  store volatile i64 %916, i64* %RIP_write, !mcsema_real_eip !75
  store volatile i64 %914, i64* %RSP_write, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !76
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !76
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !76
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !76
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !76
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !76
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !76
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !76
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !76
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !76
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !76
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !76
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !76
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !76
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !76
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !76
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !76
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !76
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !76
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !76
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !76
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !76
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !76
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !76
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !76
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !76
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !76
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !76
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !76
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !76
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !76
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !76
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !76
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !76
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !76
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !76
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !76
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !76
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !76
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !76
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !76
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !76
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !76
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !76
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !76
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !76
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !76
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !76
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !76
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !76
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !76
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !76
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !76
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !76
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !76
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !76
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !76
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !76
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !76
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !76
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !76
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !76
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !76
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !76
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !76
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !76
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !76
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !76
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !76
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !76
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !76
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !76
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !76
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !76
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !76
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !76
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !76
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !76
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !76
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !76
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !76
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !76
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !76
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !76
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !76
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !76
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !76
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !76
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !76
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !76
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !76
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !76
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !76
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !76
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !76
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !76
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !76
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !76
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !76
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !76
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !76
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !76
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !76
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !76
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !76
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !76
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !76
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !76
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !76
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !76
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !76
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !76
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !76
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !76
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !76
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !76
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !76
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !76
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !76
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !76
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !76
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !76
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !76
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !76
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !76
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !76
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !76
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !76
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !76
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !76
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !76
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !76
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !76
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !76
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !76
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !76
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !76
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !76
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !76
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !76
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !76
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !76
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !76
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !76
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !76
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !76
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !76
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !76
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !76
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !76
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !76
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !76
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !76
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !76
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !76
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !76
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !76
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !76
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !76
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !76
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !76
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !76
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !76
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !76
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !76
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !76
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !76
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !76
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !76
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !76
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !76
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !76
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !76
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !76
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !76
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !76
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !76
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !76
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !76
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !76
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !76
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !76
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !76
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !76
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !76
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !76
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !76
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !76
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !76
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !76
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !76
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !76
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !76
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !76
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !76
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !76
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !76
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !76
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !76
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !76
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !76
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !76
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !76
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !76
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !76
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !76
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !76
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !76
  br label %block_100, !mcsema_real_eip !76

block_100:                                        ; preds = %entry
  store volatile i64 256, i64* %EIP_write, !mcsema_real_eip !76
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !76
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !76
  %3 = sub i64 %2, 8, !mcsema_real_eip !76
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !76
  store i64 %1, i64* %4, !mcsema_real_eip !76
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !76
  store volatile i64 257, i64* %EIP_write, !mcsema_real_eip !77
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !77
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !77
  store volatile i64 260, i64* %EIP_write, !mcsema_real_eip !78
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !78
  %7 = sub i64 %6, 128, !mcsema_real_eip !78
  %8 = xor i64 %7, %6, !mcsema_real_eip !78
  %9 = xor i64 %8, 128, !mcsema_real_eip !78
  %10 = and i64 %9, 16, !mcsema_real_eip !78
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !78
  %12 = zext i1 %11 to i8, !mcsema_real_eip !78
  store volatile i8 %12, i8* %AF_write, !mcsema_real_eip !78
  %13 = trunc i64 %7 to i8, !mcsema_real_eip !78
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !78
  %15 = trunc i8 %14 to i1, !mcsema_real_eip !78
  %16 = zext i1 %15 to i8, !mcsema_real_eip !78
  %17 = xor i8 %16, 1, !mcsema_real_eip !78
  %18 = trunc i8 %17 to i1, !mcsema_real_eip !78
  %19 = zext i1 %18 to i8, !mcsema_real_eip !78
  store volatile i8 %19, i8* %PF_write, !mcsema_real_eip !78
  %20 = icmp eq i64 %7, 0, !mcsema_real_eip !78
  %21 = zext i1 %20 to i8, !mcsema_real_eip !78
  store volatile i8 %21, i8* %ZF_write, !mcsema_real_eip !78
  %22 = lshr i64 %7, 63, !mcsema_real_eip !78
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !78
  %24 = zext i1 %23 to i8, !mcsema_real_eip !78
  %25 = trunc i8 %24 to i1, !mcsema_real_eip !78
  %26 = zext i1 %25 to i8, !mcsema_real_eip !78
  store volatile i8 %26, i8* %SF_write, !mcsema_real_eip !78
  %27 = icmp ult i64 %6, 128, !mcsema_real_eip !78
  %28 = zext i1 %27 to i8, !mcsema_real_eip !78
  store volatile i8 %28, i8* %CF_write, !mcsema_real_eip !78
  %29 = xor i64 %6, 128, !mcsema_real_eip !78
  %30 = xor i64 %6, %7, !mcsema_real_eip !78
  %31 = and i64 %29, %30, !mcsema_real_eip !78
  %32 = lshr i64 %31, 63, !mcsema_real_eip !78
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !78
  %34 = zext i1 %33 to i8, !mcsema_real_eip !78
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !78
  %36 = zext i1 %35 to i8, !mcsema_real_eip !78
  store volatile i8 %36, i8* %OF_write, !mcsema_real_eip !78
  store volatile i64 %7, i64* %RSP_write, !mcsema_real_eip !78
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !79
  %37 = zext i32 12 to i64, !mcsema_real_eip !79
  store volatile i64 %37, i64* %EAX_write, !mcsema_real_eip !79
  store volatile i64 272, i64* %EIP_write, !mcsema_real_eip !80
  %38 = load i32, i32* %EAX_read, !mcsema_real_eip !80
  %39 = zext i32 %38 to i64, !mcsema_real_eip !80
  store volatile i64 %39, i64* %EDI_write, !mcsema_real_eip !80
  store volatile i64 274, i64* %EIP_write, !mcsema_real_eip !81
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !81
  %41 = add i64 %40, -4, !mcsema_real_eip !81
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !81
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !81
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !81
  store i32 0, i32* %44, !mcsema_real_eip !81
  store volatile i64 281, i64* %EIP_write, !mcsema_real_eip !82
  %45 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %46 = add i64 %45, -16, !mcsema_real_eip !82
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !82
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !82
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !82
  store i32 10, i32* %49, !mcsema_real_eip !82
  store volatile i64 288, i64* %EIP_write, !mcsema_real_eip !83
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !83
  %51 = add i64 %50, -12, !mcsema_real_eip !83
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !83
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !83
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !83
  store i32 10, i32* %54, !mcsema_real_eip !83
  store volatile i64 295, i64* %EIP_write, !mcsema_real_eip !84
  %55 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %56 = add i64 %55, -8, !mcsema_real_eip !84
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !84
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !84
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %59, !mcsema_real_eip !84
  store volatile i64 302, i64* %EIP_write, !mcsema_real_eip !85
  %60 = load i64, i64* %RDI_read, !mcsema_real_eip !85
  %61 = load i64, i64* %RSP_read, !mcsema_real_eip !85
  %62 = sub i64 %61, 8, !mcsema_real_eip !85
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !85
  store i64 -2415393069852865332, i64* %63, !mcsema_real_eip !85
  store volatile i64 %62, i64* %RSP_write, !mcsema_real_eip !85
  %64 = call x86_64_sysvcc i64 @_malloc(i64 %60), !mcsema_real_eip !85
  store volatile i64 %64, i64* %RAX_write, !mcsema_real_eip !85
  store volatile i64 307, i64* %EIP_write, !mcsema_real_eip !86
  %65 = load i64, i64* %RBP_read, !mcsema_real_eip !86
  %66 = add i64 %65, -16, !mcsema_real_eip !86
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !86
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !86
  store volatile i64 %68, i64* %RDI_write, !mcsema_real_eip !86
  store volatile i64 311, i64* %EIP_write, !mcsema_real_eip !87
  %69 = zext i32 1 to i64, !mcsema_real_eip !87
  store volatile i64 %69, i64* %R8D_write, !mcsema_real_eip !87
  store volatile i64 317, i64* %EIP_write, !mcsema_real_eip !88
  %70 = zext i32 2 to i64, !mcsema_real_eip !88
  store volatile i64 %70, i64* %R9D_write, !mcsema_real_eip !88
  store volatile i64 323, i64* %EIP_write, !mcsema_real_eip !89
  %71 = zext i32 3 to i64, !mcsema_real_eip !89
  store volatile i64 %71, i64* %ECX_write, !mcsema_real_eip !89
  store volatile i64 328, i64* %EIP_write, !mcsema_real_eip !90
  %72 = load i64, i64* %RBP_read, !mcsema_real_eip !90
  %73 = add i64 %72, -24, !mcsema_real_eip !90
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !90
  %75 = load i64, i64* %RAX_read, !mcsema_real_eip !90
  store i64 %75, i64* %74, !mcsema_real_eip !90
  store volatile i64 332, i64* %EIP_write, !mcsema_real_eip !91
  %76 = load i64, i64* %RBP_read, !mcsema_real_eip !91
  %77 = add i64 %76, -24, !mcsema_real_eip !91
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !91
  %79 = load i64, i64* %78, !mcsema_real_eip !91
  store volatile i64 %79, i64* %RAX_write, !mcsema_real_eip !91
  store volatile i64 336, i64* %EIP_write, !mcsema_real_eip !92
  %80 = load i64, i64* %RAX_read, !mcsema_real_eip !92
  %81 = add i64 %80, 0, !mcsema_real_eip !92
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !92
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !92
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !92
  store i32 5, i32* %84, !mcsema_real_eip !92
  store volatile i64 342, i64* %EIP_write, !mcsema_real_eip !93
  %85 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %86 = add i64 %85, -24, !mcsema_real_eip !93
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !93
  %88 = load i64, i64* %87, !mcsema_real_eip !93
  store volatile i64 %88, i64* %RAX_write, !mcsema_real_eip !93
  store volatile i64 346, i64* %EIP_write, !mcsema_real_eip !94
  %89 = load i64, i64* %RAX_read, !mcsema_real_eip !94
  %90 = add i64 %89, 4, !mcsema_real_eip !94
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !94
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !94
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !94
  store i32 5, i32* %93, !mcsema_real_eip !94
  store volatile i64 353, i64* %EIP_write, !mcsema_real_eip !95
  %94 = load i64, i64* %RBP_read, !mcsema_real_eip !95
  %95 = add i64 %94, -24, !mcsema_real_eip !95
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !95
  %97 = load i64, i64* %96, !mcsema_real_eip !95
  store volatile i64 %97, i64* %RAX_write, !mcsema_real_eip !95
  store volatile i64 357, i64* %EIP_write, !mcsema_real_eip !96
  %98 = load i64, i64* %RAX_read, !mcsema_real_eip !96
  %99 = add i64 %98, 8, !mcsema_real_eip !96
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !96
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !96
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %102, !mcsema_real_eip !96
  store volatile i64 364, i64* %EIP_write, !mcsema_real_eip !97
  %103 = load i64, i64* %RBP_read, !mcsema_real_eip !97
  %104 = add i64 %103, -24, !mcsema_real_eip !97
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !97
  %106 = load i64, i64* %105, !mcsema_real_eip !97
  store volatile i64 %106, i64* %RAX_write, !mcsema_real_eip !97
  store volatile i64 368, i64* %EIP_write, !mcsema_real_eip !98
  %107 = load i64, i64* %RBP_read, !mcsema_real_eip !98
  %108 = add i64 %107, -24, !mcsema_real_eip !98
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !98
  %110 = load i64, i64* %109, !mcsema_real_eip !98
  store volatile i64 %110, i64* %RDX_write, !mcsema_real_eip !98
  store volatile i64 372, i64* %EIP_write, !mcsema_real_eip !99
  %111 = load i64, i64* %RBP_read, !mcsema_real_eip !99
  %112 = add i64 %111, -16, !mcsema_real_eip !99
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !99
  %114 = load i64, i64* %113, !mcsema_real_eip !99
  store volatile i64 %114, i64* %RSI_write, !mcsema_real_eip !99
  store volatile i64 376, i64* %EIP_write, !mcsema_real_eip !100
  %115 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %116 = add i64 %115, -48, !mcsema_real_eip !100
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !100
  %118 = load i64, i64* %RSI_read, !mcsema_real_eip !100
  store i64 %118, i64* %117, !mcsema_real_eip !100
  store volatile i64 380, i64* %EIP_write, !mcsema_real_eip !101
  %119 = load i64, i64* %RBP_read, !mcsema_real_eip !101
  %120 = add i64 %119, -8, !mcsema_real_eip !101
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !101
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !101
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !101
  %124 = load i32, i32* %123, !mcsema_real_eip !101
  %125 = zext i32 %124 to i64, !mcsema_real_eip !101
  store volatile i64 %125, i64* %R10D_write, !mcsema_real_eip !101
  store volatile i64 384, i64* %EIP_write, !mcsema_real_eip !102
  %126 = load i64, i64* %RBP_read, !mcsema_real_eip !102
  %127 = add i64 %126, -40, !mcsema_real_eip !102
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !102
  %129 = load i32, i32* %R10D_read, !mcsema_real_eip !102
  %130 = ptrtoint i64* %128 to i64, !mcsema_real_eip !102
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !102
  store i32 %129, i32* %131, !mcsema_real_eip !102
  store volatile i64 388, i64* %EIP_write, !mcsema_real_eip !103
  %132 = load i64, i64* %RBP_read, !mcsema_real_eip !103
  %133 = add i64 %132, -48, !mcsema_real_eip !103
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !103
  %135 = load i64, i64* %134, !mcsema_real_eip !103
  store volatile i64 %135, i64* %RSI_write, !mcsema_real_eip !103
  store volatile i64 392, i64* %EIP_write, !mcsema_real_eip !104
  %136 = load i64, i64* %RBP_read, !mcsema_real_eip !104
  %137 = add i64 %136, -40, !mcsema_real_eip !104
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !104
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !104
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !104
  %141 = load i32, i32* %140, !mcsema_real_eip !104
  %142 = zext i32 %141 to i64, !mcsema_real_eip !104
  store volatile i64 %142, i64* %R10D_write, !mcsema_real_eip !104
  store volatile i64 396, i64* %EIP_write, !mcsema_real_eip !105
  %143 = load i64, i64* %RBP_read, !mcsema_real_eip !105
  %144 = add i64 %143, -64, !mcsema_real_eip !105
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !105
  %146 = load i64, i64* %RDI_read, !mcsema_real_eip !105
  store i64 %146, i64* %145, !mcsema_real_eip !105
  store volatile i64 400, i64* %EIP_write, !mcsema_real_eip !106
  %147 = load i64, i64* %RSI_read, !mcsema_real_eip !106
  store volatile i64 %147, i64* %RDI_write, !mcsema_real_eip !106
  store volatile i64 403, i64* %EIP_write, !mcsema_real_eip !107
  %148 = load i32, i32* %R10D_read, !mcsema_real_eip !107
  %149 = zext i32 %148 to i64, !mcsema_real_eip !107
  store volatile i64 %149, i64* %ESI_write, !mcsema_real_eip !107
  store volatile i64 406, i64* %EIP_write, !mcsema_real_eip !108
  %150 = load i64, i64* %RBP_read, !mcsema_real_eip !108
  %151 = add i64 %150, -64, !mcsema_real_eip !108
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !108
  %153 = load i64, i64* %152, !mcsema_real_eip !108
  store volatile i64 %153, i64* %R11_write, !mcsema_real_eip !108
  store volatile i64 410, i64* %EIP_write, !mcsema_real_eip !109
  %154 = load i64, i64* %RBP_read, !mcsema_real_eip !109
  %155 = add i64 %154, -72, !mcsema_real_eip !109
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !109
  %157 = load i64, i64* %RDX_read, !mcsema_real_eip !109
  store i64 %157, i64* %156, !mcsema_real_eip !109
  store volatile i64 414, i64* %EIP_write, !mcsema_real_eip !110
  %158 = load i64, i64* %R11_read, !mcsema_real_eip !110
  store volatile i64 %158, i64* %RDX_write, !mcsema_real_eip !110
  store volatile i64 417, i64* %EIP_write, !mcsema_real_eip !111
  %159 = load i64, i64* %RBP_read, !mcsema_real_eip !111
  %160 = add i64 %159, -76, !mcsema_real_eip !111
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !111
  %162 = load i32, i32* %ECX_read, !mcsema_real_eip !111
  %163 = ptrtoint i64* %161 to i64, !mcsema_real_eip !111
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !111
  store i32 %162, i32* %164, !mcsema_real_eip !111
  store volatile i64 420, i64* %EIP_write, !mcsema_real_eip !112
  %165 = load i64, i64* %RAX_read, !mcsema_real_eip !112
  store volatile i64 %165, i64* %RCX_write, !mcsema_real_eip !112
  store volatile i64 423, i64* %EIP_write, !mcsema_real_eip !113
  %166 = load i64, i64* %RSP_read, !mcsema_real_eip !113
  %167 = add i64 %166, 0, !mcsema_real_eip !113
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !113
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !113
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !113
  store i32 3, i32* %170, !mcsema_real_eip !113
  store volatile i64 430, i64* %EIP_write, !mcsema_real_eip !114
  %171 = load i64, i64* %R11_read, !mcsema_real_eip !114
  %172 = add i64 %171, 0, !mcsema_real_eip !114
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !114
  %174 = load i64, i64* %173, !mcsema_real_eip !114
  store volatile i64 %174, i64* %RAX_write, !mcsema_real_eip !114
  store volatile i64 433, i64* %EIP_write, !mcsema_real_eip !115
  %175 = load i64, i64* %RSP_read, !mcsema_real_eip !115
  %176 = add i64 %175, 8, !mcsema_real_eip !115
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !115
  %178 = load i64, i64* %RAX_read, !mcsema_real_eip !115
  store i64 %178, i64* %177, !mcsema_real_eip !115
  store volatile i64 438, i64* %EIP_write, !mcsema_real_eip !116
  %179 = load i64, i64* %R11_read, !mcsema_real_eip !116
  %180 = add i64 %179, 8, !mcsema_real_eip !116
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !116
  %182 = ptrtoint i64* %181 to i64, !mcsema_real_eip !116
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !116
  %184 = load i32, i32* %183, !mcsema_real_eip !116
  %185 = zext i32 %184 to i64, !mcsema_real_eip !116
  store volatile i64 %185, i64* %R10D_write, !mcsema_real_eip !116
  store volatile i64 442, i64* %EIP_write, !mcsema_real_eip !117
  %186 = load i64, i64* %RSP_read, !mcsema_real_eip !117
  %187 = add i64 %186, 16, !mcsema_real_eip !117
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !117
  %189 = load i32, i32* %R10D_read, !mcsema_real_eip !117
  %190 = ptrtoint i64* %188 to i64, !mcsema_real_eip !117
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !117
  store i32 %189, i32* %191, !mcsema_real_eip !117
  store volatile i64 447, i64* %EIP_write, !mcsema_real_eip !118
  %192 = load i64, i64* %RSP_read, !mcsema_real_eip !118
  %193 = add i64 %192, 24, !mcsema_real_eip !118
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !118
  %195 = load i64, i64* %R11_read, !mcsema_real_eip !118
  store i64 %195, i64* %194, !mcsema_real_eip !118
  store volatile i64 452, i64* %EIP_write, !mcsema_real_eip !119
  %196 = load i64, i64* %RBP_read, !mcsema_real_eip !119
  %197 = add i64 %196, -72, !mcsema_real_eip !119
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !119
  %199 = load i64, i64* %198, !mcsema_real_eip !119
  store volatile i64 %199, i64* %RAX_write, !mcsema_real_eip !119
  store volatile i64 456, i64* %EIP_write, !mcsema_real_eip !120
  %200 = load i64, i64* %RSP_read, !mcsema_real_eip !120
  %201 = add i64 %200, 32, !mcsema_real_eip !120
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !120
  %203 = load i64, i64* %RAX_read, !mcsema_real_eip !120
  store i64 %203, i64* %202, !mcsema_real_eip !120
  store volatile i64 461, i64* %EIP_write, !mcsema_real_eip !121
  %204 = load i64, i64* %RSP_read, !mcsema_real_eip !121
  %205 = sub i64 %204, 8, !mcsema_real_eip !121
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !121
  store i64 466, i64* %206, !mcsema_real_eip !121
  store volatile i64 %205, i64* %RSP_write, !mcsema_real_eip !121
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !121
  store volatile i64 466, i64* %EIP_write, !mcsema_real_eip !122
  %207 = ptrtoint %0* @data_212 to i64, !mcsema_real_eip !122
  %208 = add i64 %207, 0, !mcsema_real_eip !122
  store volatile i64 %208, i64* %RDI_write, !mcsema_real_eip !122
  store volatile i64 476, i64* %EIP_write, !mcsema_real_eip !123
  %209 = load i64, i64* %RBP_read, !mcsema_real_eip !123
  %210 = add i64 %209, -32, !mcsema_real_eip !123
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !123
  %212 = load i64, i64* %RAX_read, !mcsema_real_eip !123
  store i64 %212, i64* %211, !mcsema_real_eip !123
  store volatile i64 480, i64* %EIP_write, !mcsema_real_eip !124
  %213 = load i64, i64* %RBP_read, !mcsema_real_eip !124
  %214 = add i64 %213, -32, !mcsema_real_eip !124
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !124
  %216 = load i64, i64* %215, !mcsema_real_eip !124
  store volatile i64 %216, i64* %RAX_write, !mcsema_real_eip !124
  store volatile i64 484, i64* %EIP_write, !mcsema_real_eip !125
  %217 = load i64, i64* %RAX_read, !mcsema_real_eip !125
  %218 = add i64 %217, 0, !mcsema_real_eip !125
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !125
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !125
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !125
  %222 = load i32, i32* %221, !mcsema_real_eip !125
  %223 = zext i32 %222 to i64, !mcsema_real_eip !125
  store volatile i64 %223, i64* %ESI_write, !mcsema_real_eip !125
  store volatile i64 486, i64* %EIP_write, !mcsema_real_eip !126
  %224 = load i64, i64* %RBP_read, !mcsema_real_eip !126
  %225 = add i64 %224, -32, !mcsema_real_eip !126
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !126
  %227 = load i64, i64* %226, !mcsema_real_eip !126
  store volatile i64 %227, i64* %RAX_write, !mcsema_real_eip !126
  store volatile i64 490, i64* %EIP_write, !mcsema_real_eip !127
  %228 = load i64, i64* %RAX_read, !mcsema_real_eip !127
  %229 = add i64 %228, 4, !mcsema_real_eip !127
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !127
  %231 = ptrtoint i64* %230 to i64, !mcsema_real_eip !127
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !127
  %233 = load i32, i32* %232, !mcsema_real_eip !127
  %234 = load i32, i32* %ESI_read, !mcsema_real_eip !127
  %235 = add i32 %234, %233, !mcsema_real_eip !127
  %236 = xor i32 %235, %233, !mcsema_real_eip !127
  %237 = xor i32 %236, %234, !mcsema_real_eip !127
  %238 = and i32 %237, 16, !mcsema_real_eip !127
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !127
  %240 = zext i1 %239 to i8, !mcsema_real_eip !127
  store volatile i8 %240, i8* %AF_write, !mcsema_real_eip !127
  %241 = lshr i32 %235, 31, !mcsema_real_eip !127
  %242 = trunc i32 %241 to i1, !mcsema_real_eip !127
  %243 = zext i1 %242 to i8, !mcsema_real_eip !127
  %244 = trunc i8 %243 to i1, !mcsema_real_eip !127
  %245 = zext i1 %244 to i8, !mcsema_real_eip !127
  store volatile i8 %245, i8* %SF_write, !mcsema_real_eip !127
  %246 = icmp eq i32 %235, 0, !mcsema_real_eip !127
  %247 = zext i1 %246 to i8, !mcsema_real_eip !127
  store volatile i8 %247, i8* %ZF_write, !mcsema_real_eip !127
  %248 = xor i32 %233, %234, !mcsema_real_eip !127
  %249 = xor i32 %248, -1, !mcsema_real_eip !127
  %250 = xor i32 %233, %235, !mcsema_real_eip !127
  %251 = and i32 %249, %250, !mcsema_real_eip !127
  %252 = lshr i32 %251, 31, !mcsema_real_eip !127
  %253 = and i32 %252, 1, !mcsema_real_eip !127
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !127
  %255 = zext i1 %254 to i8, !mcsema_real_eip !127
  %256 = trunc i8 %255 to i1, !mcsema_real_eip !127
  %257 = zext i1 %256 to i8, !mcsema_real_eip !127
  store volatile i8 %257, i8* %OF_write, !mcsema_real_eip !127
  %258 = trunc i32 %235 to i8, !mcsema_real_eip !127
  %259 = call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !127
  %260 = trunc i8 %259 to i1, !mcsema_real_eip !127
  %261 = zext i1 %260 to i8, !mcsema_real_eip !127
  %262 = xor i8 %261, 1, !mcsema_real_eip !127
  %263 = trunc i8 %262 to i1, !mcsema_real_eip !127
  %264 = zext i1 %263 to i8, !mcsema_real_eip !127
  store volatile i8 %264, i8* %PF_write, !mcsema_real_eip !127
  %265 = icmp ult i32 %235, %233, !mcsema_real_eip !127
  %266 = zext i1 %265 to i8, !mcsema_real_eip !127
  store volatile i8 %266, i8* %CF_write, !mcsema_real_eip !127
  %267 = zext i32 %235 to i64, !mcsema_real_eip !127
  store volatile i64 %267, i64* %ESI_write, !mcsema_real_eip !127
  store volatile i64 493, i64* %EIP_write, !mcsema_real_eip !128
  %268 = load i64, i64* %RBP_read, !mcsema_real_eip !128
  %269 = add i64 %268, -32, !mcsema_real_eip !128
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !128
  %271 = load i64, i64* %270, !mcsema_real_eip !128
  store volatile i64 %271, i64* %RAX_write, !mcsema_real_eip !128
  store volatile i64 497, i64* %EIP_write, !mcsema_real_eip !129
  %272 = load i64, i64* %RAX_read, !mcsema_real_eip !129
  %273 = add i64 %272, 8, !mcsema_real_eip !129
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !129
  %275 = ptrtoint i64* %274 to i64, !mcsema_real_eip !129
  %276 = inttoptr i64 %275 to i32*, !mcsema_real_eip !129
  %277 = load i32, i32* %276, !mcsema_real_eip !129
  %278 = load i32, i32* %ESI_read, !mcsema_real_eip !129
  %279 = add i32 %278, %277, !mcsema_real_eip !129
  %280 = xor i32 %279, %277, !mcsema_real_eip !129
  %281 = xor i32 %280, %278, !mcsema_real_eip !129
  %282 = and i32 %281, 16, !mcsema_real_eip !129
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !129
  %284 = zext i1 %283 to i8, !mcsema_real_eip !129
  store volatile i8 %284, i8* %AF_write, !mcsema_real_eip !129
  %285 = lshr i32 %279, 31, !mcsema_real_eip !129
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !129
  %287 = zext i1 %286 to i8, !mcsema_real_eip !129
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !129
  %289 = zext i1 %288 to i8, !mcsema_real_eip !129
  store volatile i8 %289, i8* %SF_write, !mcsema_real_eip !129
  %290 = icmp eq i32 %279, 0, !mcsema_real_eip !129
  %291 = zext i1 %290 to i8, !mcsema_real_eip !129
  store volatile i8 %291, i8* %ZF_write, !mcsema_real_eip !129
  %292 = xor i32 %277, %278, !mcsema_real_eip !129
  %293 = xor i32 %292, -1, !mcsema_real_eip !129
  %294 = xor i32 %277, %279, !mcsema_real_eip !129
  %295 = and i32 %293, %294, !mcsema_real_eip !129
  %296 = lshr i32 %295, 31, !mcsema_real_eip !129
  %297 = and i32 %296, 1, !mcsema_real_eip !129
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !129
  %299 = zext i1 %298 to i8, !mcsema_real_eip !129
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !129
  %301 = zext i1 %300 to i8, !mcsema_real_eip !129
  store volatile i8 %301, i8* %OF_write, !mcsema_real_eip !129
  %302 = trunc i32 %279 to i8, !mcsema_real_eip !129
  %303 = call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !129
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !129
  %305 = zext i1 %304 to i8, !mcsema_real_eip !129
  %306 = xor i8 %305, 1, !mcsema_real_eip !129
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !129
  %308 = zext i1 %307 to i8, !mcsema_real_eip !129
  store volatile i8 %308, i8* %PF_write, !mcsema_real_eip !129
  %309 = icmp ult i32 %279, %277, !mcsema_real_eip !129
  %310 = zext i1 %309 to i8, !mcsema_real_eip !129
  store volatile i8 %310, i8* %CF_write, !mcsema_real_eip !129
  %311 = zext i32 %279 to i64, !mcsema_real_eip !129
  store volatile i64 %311, i64* %ESI_write, !mcsema_real_eip !129
  store volatile i64 500, i64* %EIP_write, !mcsema_real_eip !130
  %312 = load i64, i64* %RBP_read, !mcsema_real_eip !130
  %313 = add i64 %312, -52, !mcsema_real_eip !130
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !130
  %315 = load i32, i32* %ESI_read, !mcsema_real_eip !130
  %316 = ptrtoint i64* %314 to i64, !mcsema_real_eip !130
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !130
  store i32 %315, i32* %317, !mcsema_real_eip !130
  store volatile i64 503, i64* %EIP_write, !mcsema_real_eip !131
  %318 = load i64, i64* %RBP_read, !mcsema_real_eip !131
  %319 = add i64 %318, -52, !mcsema_real_eip !131
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !131
  %321 = ptrtoint i64* %320 to i64, !mcsema_real_eip !131
  %322 = inttoptr i64 %321 to i32*, !mcsema_real_eip !131
  %323 = load i32, i32* %322, !mcsema_real_eip !131
  %324 = zext i32 %323 to i64, !mcsema_real_eip !131
  store volatile i64 %324, i64* %ESI_write, !mcsema_real_eip !131
  store volatile i64 506, i64* %EIP_write, !mcsema_real_eip !132
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !132
  store volatile i64 508, i64* %EIP_write, !mcsema_real_eip !133
  %325 = load i64, i64* %RDI_read, !mcsema_real_eip !133
  %326 = load i64, i64* %RSI_read, !mcsema_real_eip !133
  %327 = load i64, i64* %RDX_read, !mcsema_real_eip !133
  %328 = load i64, i64* %RCX_read, !mcsema_real_eip !133
  %329 = load i64, i64* %R8_read, !mcsema_real_eip !133
  %330 = load i64, i64* %R9_read, !mcsema_real_eip !133
  %331 = load i64, i64* %RSP_read, !mcsema_real_eip !133
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !133
  %333 = load i64, i64* %332, !mcsema_real_eip !133
  %334 = add i64 %331, 8, !mcsema_real_eip !133
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !133
  %336 = load i64, i64* %335, !mcsema_real_eip !133
  %337 = add i64 %334, 8, !mcsema_real_eip !133
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !133
  %339 = load i64, i64* %338, !mcsema_real_eip !133
  %340 = add i64 %337, 8, !mcsema_real_eip !133
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !133
  %342 = load i64, i64* %341, !mcsema_real_eip !133
  %343 = add i64 %340, 8, !mcsema_real_eip !133
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !133
  %345 = load i64, i64* %344, !mcsema_real_eip !133
  %346 = add i64 %343, 8, !mcsema_real_eip !133
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !133
  %348 = load i64, i64* %347, !mcsema_real_eip !133
  %349 = add i64 %346, 8, !mcsema_real_eip !133
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !133
  %351 = load i64, i64* %350, !mcsema_real_eip !133
  %352 = add i64 %349, 8, !mcsema_real_eip !133
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !133
  %354 = load i64, i64* %353, !mcsema_real_eip !133
  %355 = add i64 %352, 8, !mcsema_real_eip !133
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !133
  %357 = load i64, i64* %356, !mcsema_real_eip !133
  %358 = add i64 %355, 8, !mcsema_real_eip !133
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !133
  %360 = load i64, i64* %359, !mcsema_real_eip !133
  %361 = load i64, i64* %RSP_read, !mcsema_real_eip !133
  %362 = sub i64 %361, 8, !mcsema_real_eip !133
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !133
  store i64 -2415393069852865332, i64* %363, !mcsema_real_eip !133
  store volatile i64 %362, i64* %RSP_write, !mcsema_real_eip !133
  %364 = call x86_64_sysvcc i64 @_printf(i64 %325, i64 %326, i64 %327, i64 %328, i64 %329, i64 %330, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360), !mcsema_real_eip !133
  store volatile i64 %364, i64* %RAX_write, !mcsema_real_eip !133
  store volatile i64 513, i64* %EIP_write, !mcsema_real_eip !134
  %365 = load i64, i64* %RBP_read, !mcsema_real_eip !134
  %366 = add i64 %365, -52, !mcsema_real_eip !134
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !134
  %368 = ptrtoint i64* %367 to i64, !mcsema_real_eip !134
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !134
  %370 = load i32, i32* %369, !mcsema_real_eip !134
  %371 = zext i32 %370 to i64, !mcsema_real_eip !134
  store volatile i64 %371, i64* %ESI_write, !mcsema_real_eip !134
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !135
  %372 = load i64, i64* %RBP_read, !mcsema_real_eip !135
  %373 = add i64 %372, -80, !mcsema_real_eip !135
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !135
  %375 = load i32, i32* %EAX_read, !mcsema_real_eip !135
  %376 = ptrtoint i64* %374 to i64, !mcsema_real_eip !135
  %377 = inttoptr i64 %376 to i32*, !mcsema_real_eip !135
  store i32 %375, i32* %377, !mcsema_real_eip !135
  store volatile i64 519, i64* %EIP_write, !mcsema_real_eip !136
  %378 = load i32, i32* %ESI_read, !mcsema_real_eip !136
  %379 = zext i32 %378 to i64, !mcsema_real_eip !136
  store volatile i64 %379, i64* %EAX_write, !mcsema_real_eip !136
  store volatile i64 521, i64* %EIP_write, !mcsema_real_eip !137
  %380 = load i64, i64* %RSP_read, !mcsema_real_eip !137
  %381 = add i64 128, %380, !mcsema_real_eip !137
  %382 = xor i64 %381, %380, !mcsema_real_eip !137
  %383 = xor i64 %382, 128, !mcsema_real_eip !137
  %384 = and i64 %383, 16, !mcsema_real_eip !137
  %385 = icmp ne i64 %384, 0, !mcsema_real_eip !137
  %386 = zext i1 %385 to i8, !mcsema_real_eip !137
  store volatile i8 %386, i8* %AF_write, !mcsema_real_eip !137
  %387 = lshr i64 %381, 63, !mcsema_real_eip !137
  %388 = trunc i64 %387 to i1, !mcsema_real_eip !137
  %389 = zext i1 %388 to i8, !mcsema_real_eip !137
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !137
  %391 = zext i1 %390 to i8, !mcsema_real_eip !137
  store volatile i8 %391, i8* %SF_write, !mcsema_real_eip !137
  %392 = icmp eq i64 %381, 0, !mcsema_real_eip !137
  %393 = zext i1 %392 to i8, !mcsema_real_eip !137
  store volatile i8 %393, i8* %ZF_write, !mcsema_real_eip !137
  %394 = xor i64 %380, 128, !mcsema_real_eip !137
  %395 = xor i64 %394, -1, !mcsema_real_eip !137
  %396 = xor i64 %380, %381, !mcsema_real_eip !137
  %397 = and i64 %395, %396, !mcsema_real_eip !137
  %398 = lshr i64 %397, 63, !mcsema_real_eip !137
  %399 = and i64 %398, 1, !mcsema_real_eip !137
  %400 = trunc i64 %399 to i1, !mcsema_real_eip !137
  %401 = zext i1 %400 to i8, !mcsema_real_eip !137
  %402 = trunc i8 %401 to i1, !mcsema_real_eip !137
  %403 = zext i1 %402 to i8, !mcsema_real_eip !137
  store volatile i8 %403, i8* %OF_write, !mcsema_real_eip !137
  %404 = trunc i64 %381 to i8, !mcsema_real_eip !137
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !137
  %406 = trunc i8 %405 to i1, !mcsema_real_eip !137
  %407 = zext i1 %406 to i8, !mcsema_real_eip !137
  %408 = xor i8 %407, 1, !mcsema_real_eip !137
  %409 = trunc i8 %408 to i1, !mcsema_real_eip !137
  %410 = zext i1 %409 to i8, !mcsema_real_eip !137
  store volatile i8 %410, i8* %PF_write, !mcsema_real_eip !137
  %411 = icmp ult i64 %381, %380, !mcsema_real_eip !137
  %412 = zext i1 %411 to i8, !mcsema_real_eip !137
  store volatile i8 %412, i8* %CF_write, !mcsema_real_eip !137
  store volatile i64 %381, i64* %RSP_write, !mcsema_real_eip !137
  store volatile i64 528, i64* %EIP_write, !mcsema_real_eip !138
  %413 = load i64, i64* %RSP_read, !mcsema_real_eip !138
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !138
  %415 = load i64, i64* %414, !mcsema_real_eip !138
  store volatile i64 %415, i64* %RBP_write, !mcsema_real_eip !138
  %416 = add i64 %413, 8, !mcsema_real_eip !138
  store volatile i64 %416, i64* %RSP_write, !mcsema_real_eip !138
  store volatile i64 529, i64* %EIP_write, !mcsema_real_eip !139
  %417 = load i64, i64* %RSP_read, !mcsema_real_eip !139
  %418 = add i64 %417, 8, !mcsema_real_eip !139
  %419 = inttoptr i64 %417 to i64*, !mcsema_real_eip !139
  %420 = load i64, i64* %419, !mcsema_real_eip !139
  store volatile i64 %420, i64* %RIP_write, !mcsema_real_eip !139
  store volatile i64 %418, i64* %RSP_write, !mcsema_real_eip !139
  ret void, !mcsema_real_eip !139
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
!3 = !{i64 6}
!4 = !{i64 8}
!5 = !{i64 9}
!6 = !{i64 13}
!7 = !{i64 17}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 28}
!11 = !{i64 34}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 48}
!16 = !{i64 52}
!17 = !{i64 55}
!18 = !{i64 58}
!19 = !{i64 62}
!20 = !{i64 66}
!21 = !{i64 70}
!22 = !{i64 74}
!23 = !{i64 77}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 88}
!27 = !{i64 92}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 108}
!32 = !{i64 110}
!33 = !{i64 114}
!34 = !{i64 116}
!35 = !{i64 120}
!36 = !{i64 123}
!37 = !{i64 127}
!38 = !{i64 130}
!39 = !{i64 134}
!40 = !{i64 137}
!41 = !{i64 140}
!42 = !{i64 144}
!43 = !{i64 146}
!44 = !{i64 149}
!45 = !{i64 153}
!46 = !{i64 156}
!47 = !{i64 160}
!48 = !{i64 163}
!49 = !{i64 167}
!50 = !{i64 171}
!51 = !{i64 175}
!52 = !{i64 179}
!53 = !{i64 183}
!54 = !{i64 186}
!55 = !{i64 190}
!56 = !{i64 193}
!57 = !{i64 196}
!58 = !{i64 200}
!59 = !{i64 203}
!60 = !{i64 207}
!61 = !{i64 210}
!62 = !{i64 214}
!63 = !{i64 218}
!64 = !{i64 222}
!65 = !{i64 226}
!66 = !{i64 230}
!67 = !{i64 233}
!68 = !{i64 237}
!69 = !{i64 240}
!70 = !{i64 244}
!71 = !{i64 248}
!72 = !{i64 249}
!73 = !{i64 251}
!74 = !{i64 253}
!75 = !{i64 254}
!76 = !{i64 256}
!77 = !{i64 257}
!78 = !{i64 260}
!79 = !{i64 267}
!80 = !{i64 272}
!81 = !{i64 274}
!82 = !{i64 281}
!83 = !{i64 288}
!84 = !{i64 295}
!85 = !{i64 302}
!86 = !{i64 307}
!87 = !{i64 311}
!88 = !{i64 317}
!89 = !{i64 323}
!90 = !{i64 328}
!91 = !{i64 332}
!92 = !{i64 336}
!93 = !{i64 342}
!94 = !{i64 346}
!95 = !{i64 353}
!96 = !{i64 357}
!97 = !{i64 364}
!98 = !{i64 368}
!99 = !{i64 372}
!100 = !{i64 376}
!101 = !{i64 380}
!102 = !{i64 384}
!103 = !{i64 388}
!104 = !{i64 392}
!105 = !{i64 396}
!106 = !{i64 400}
!107 = !{i64 403}
!108 = !{i64 406}
!109 = !{i64 410}
!110 = !{i64 414}
!111 = !{i64 417}
!112 = !{i64 420}
!113 = !{i64 423}
!114 = !{i64 430}
!115 = !{i64 433}
!116 = !{i64 438}
!117 = !{i64 442}
!118 = !{i64 447}
!119 = !{i64 452}
!120 = !{i64 456}
!121 = !{i64 461}
!122 = !{i64 466}
!123 = !{i64 476}
!124 = !{i64 480}
!125 = !{i64 484}
!126 = !{i64 486}
!127 = !{i64 490}
!128 = !{i64 493}
!129 = !{i64 497}
!130 = !{i64 500}
!131 = !{i64 503}
!132 = !{i64 506}
!133 = !{i64 508}
!134 = !{i64 513}
!135 = !{i64 516}
!136 = !{i64 519}
!137 = !{i64 521}
!138 = !{i64 528}
!139 = !{i64 529}
