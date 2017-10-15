; ModuleID = 'Output/test_12.clang.lifted.bc'
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
module asm "  .globl open;"
module asm "  .globl _open;"
module asm "  .type _open,@function"
module asm "_open:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq open@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _open,0b-_open;"
module asm "  .cfi_endproc;"
module asm "  .globl close;"
module asm "  .globl _close;"
module asm "  .type _close,@function"
module asm "_close:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq close@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _close,0b-_close;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_50 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"M\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %38 = load i32, i32* %ESI_read, !mcsema_real_eip !3
  %39 = load i32, i32* %ESI_read, !mcsema_real_eip !3
  %40 = xor i32 %38, %39, !mcsema_real_eip !3
  %41 = trunc i8 0 to i1, !mcsema_real_eip !3
  %42 = zext i1 %41 to i8, !mcsema_real_eip !3
  store volatile i8 %42, i8* %CF_write, !mcsema_real_eip !3
  %43 = trunc i8 0 to i1, !mcsema_real_eip !3
  %44 = zext i1 %43 to i8, !mcsema_real_eip !3
  store volatile i8 %44, i8* %OF_write, !mcsema_real_eip !3
  %45 = lshr i32 %40, 31, !mcsema_real_eip !3
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !3
  %47 = zext i1 %46 to i8, !mcsema_real_eip !3
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !3
  %49 = zext i1 %48 to i8, !mcsema_real_eip !3
  store volatile i8 %49, i8* %SF_write, !mcsema_real_eip !3
  %50 = icmp eq i32 %40, 0, !mcsema_real_eip !3
  %51 = zext i1 %50 to i8, !mcsema_real_eip !3
  store volatile i8 %51, i8* %ZF_write, !mcsema_real_eip !3
  %52 = trunc i32 %40 to i8, !mcsema_real_eip !3
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !3
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !3
  %55 = zext i1 %54 to i8, !mcsema_real_eip !3
  %56 = xor i8 %55, 1, !mcsema_real_eip !3
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !3
  %58 = zext i1 %57 to i8, !mcsema_real_eip !3
  store volatile i8 %58, i8* %PF_write, !mcsema_real_eip !3
  %59 = zext i32 %40 to i64, !mcsema_real_eip !3
  store volatile i64 %59, i64* %ESI_write, !mcsema_real_eip !3
  store volatile i64 10, i64* %EIP_write, !mcsema_real_eip !4
  %60 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %61 = add i64 %60, -16, !mcsema_real_eip !4
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !4
  %63 = load i64, i64* %RDI_read, !mcsema_real_eip !4
  store i64 %63, i64* %62, !mcsema_real_eip !4
  store volatile i64 14, i64* %EIP_write, !mcsema_real_eip !5
  %64 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %65 = add i64 %64, -16, !mcsema_real_eip !5
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !5
  %67 = load i64, i64* %66, !mcsema_real_eip !5
  store volatile i64 %67, i64* %RDI_write, !mcsema_real_eip !5
  store volatile i64 18, i64* %EIP_write, !mcsema_real_eip !6
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !6
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !7
  %68 = load i64, i64* %RDI_read, !mcsema_real_eip !7
  %69 = load i64, i64* %RSI_read, !mcsema_real_eip !7
  %70 = load i64, i64* %RSP_read, !mcsema_real_eip !7
  %71 = sub i64 %70, 8, !mcsema_real_eip !7
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %72, !mcsema_real_eip !7
  store volatile i64 %71, i64* %RSP_write, !mcsema_real_eip !7
  %73 = call x86_64_sysvcc i64 @_open(i64 %68, i64 %69), !mcsema_real_eip !7
  store volatile i64 %73, i64* %RAX_write, !mcsema_real_eip !7
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !8
  %74 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %75 = add i64 %74, -20, !mcsema_real_eip !8
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !8
  %77 = load i32, i32* %EAX_read, !mcsema_real_eip !8
  %78 = ptrtoint i64* %76 to i64, !mcsema_real_eip !8
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !8
  store i32 %77, i32* %79, !mcsema_real_eip !8
  store volatile i64 28, i64* %EIP_write, !mcsema_real_eip !9
  %80 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %81 = add i64 %80, -20, !mcsema_real_eip !9
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !9
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !9
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !9
  %85 = load i32, i32* %84, !mcsema_real_eip !9
  %86 = sub i32 %85, -1, !mcsema_real_eip !9
  %87 = xor i32 %86, %85, !mcsema_real_eip !9
  %88 = xor i32 %87, -1, !mcsema_real_eip !9
  %89 = and i32 %88, 16, !mcsema_real_eip !9
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !9
  %91 = zext i1 %90 to i8, !mcsema_real_eip !9
  store volatile i8 %91, i8* %AF_write, !mcsema_real_eip !9
  %92 = trunc i32 %86 to i8, !mcsema_real_eip !9
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !9
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !9
  %95 = zext i1 %94 to i8, !mcsema_real_eip !9
  %96 = xor i8 %95, 1, !mcsema_real_eip !9
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !9
  %98 = zext i1 %97 to i8, !mcsema_real_eip !9
  store volatile i8 %98, i8* %PF_write, !mcsema_real_eip !9
  %99 = icmp eq i32 %86, 0, !mcsema_real_eip !9
  %100 = zext i1 %99 to i8, !mcsema_real_eip !9
  store volatile i8 %100, i8* %ZF_write, !mcsema_real_eip !9
  %101 = lshr i32 %86, 31, !mcsema_real_eip !9
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !9
  %103 = zext i1 %102 to i8, !mcsema_real_eip !9
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !9
  %105 = zext i1 %104 to i8, !mcsema_real_eip !9
  store volatile i8 %105, i8* %SF_write, !mcsema_real_eip !9
  %106 = icmp ult i32 %85, -1, !mcsema_real_eip !9
  %107 = zext i1 %106 to i8, !mcsema_real_eip !9
  store volatile i8 %107, i8* %CF_write, !mcsema_real_eip !9
  %108 = xor i32 %85, -1, !mcsema_real_eip !9
  %109 = xor i32 %85, %86, !mcsema_real_eip !9
  %110 = and i32 %108, %109, !mcsema_real_eip !9
  %111 = lshr i32 %110, 31, !mcsema_real_eip !9
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !9
  %113 = zext i1 %112 to i8, !mcsema_real_eip !9
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !9
  %115 = zext i1 %114 to i8, !mcsema_real_eip !9
  store volatile i8 %115, i8* %OF_write, !mcsema_real_eip !9
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !10
  %116 = load i8, i8* %ZF_read, !mcsema_real_eip !10
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !10
  %118 = icmp eq i1 %117, true, !mcsema_real_eip !10
  br i1 %118, label %block_3d, label %block_26, !mcsema_real_eip !10

block_26:                                         ; preds = %block_0
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !11
  %119 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %120 = add i64 %119, -20, !mcsema_real_eip !11
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !11
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !11
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !11
  %124 = load i32, i32* %123, !mcsema_real_eip !11
  %125 = zext i32 %124 to i64, !mcsema_real_eip !11
  store volatile i64 %125, i64* %EDI_write, !mcsema_real_eip !11
  store volatile i64 41, i64* %EIP_write, !mcsema_real_eip !12
  %126 = load i64, i64* %RDI_read, !mcsema_real_eip !12
  %127 = load i64, i64* %RSP_read, !mcsema_real_eip !12
  %128 = sub i64 %127, 8, !mcsema_real_eip !12
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %129, !mcsema_real_eip !12
  store volatile i64 %128, i64* %RSP_write, !mcsema_real_eip !12
  %130 = call x86_64_sysvcc i64 @_close(i64 %126), !mcsema_real_eip !12
  store volatile i64 %130, i64* %RAX_write, !mcsema_real_eip !12
  store volatile i64 46, i64* %EIP_write, !mcsema_real_eip !13
  %131 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %132 = add i64 %131, -4, !mcsema_real_eip !13
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !13
  %134 = ptrtoint i64* %133 to i64, !mcsema_real_eip !13
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %135, !mcsema_real_eip !13
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !14
  %136 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %137 = add i64 %136, -24, !mcsema_real_eip !14
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !14
  %139 = load i32, i32* %EAX_read, !mcsema_real_eip !14
  %140 = ptrtoint i64* %138 to i64, !mcsema_real_eip !14
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !14
  store i32 %139, i32* %141, !mcsema_real_eip !14
  store volatile i64 56, i64* %EIP_write, !mcsema_real_eip !15
  br label %block_44, !mcsema_real_eip !15

block_3d:                                         ; preds = %block_0
  store volatile i64 61, i64* %EIP_write, !mcsema_real_eip !16
  %142 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %143 = add i64 %142, -4, !mcsema_real_eip !16
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !16
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !16
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !16
  store i32 -1, i32* %146, !mcsema_real_eip !16
  br label %block_44, !mcsema_real_eip !17

block_44:                                         ; preds = %block_3d, %block_26
  store volatile i64 68, i64* %EIP_write, !mcsema_real_eip !17
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %148 = add i64 %147, -4, !mcsema_real_eip !17
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !17
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !17
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !17
  %152 = load i32, i32* %151, !mcsema_real_eip !17
  %153 = zext i32 %152 to i64, !mcsema_real_eip !17
  store volatile i64 %153, i64* %EAX_write, !mcsema_real_eip !17
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !18
  %154 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %155 = add i64 32, %154, !mcsema_real_eip !18
  %156 = xor i64 %155, %154, !mcsema_real_eip !18
  %157 = xor i64 %156, 32, !mcsema_real_eip !18
  %158 = and i64 %157, 16, !mcsema_real_eip !18
  %159 = icmp ne i64 %158, 0, !mcsema_real_eip !18
  %160 = zext i1 %159 to i8, !mcsema_real_eip !18
  store volatile i8 %160, i8* %AF_write, !mcsema_real_eip !18
  %161 = lshr i64 %155, 63, !mcsema_real_eip !18
  %162 = trunc i64 %161 to i1, !mcsema_real_eip !18
  %163 = zext i1 %162 to i8, !mcsema_real_eip !18
  %164 = trunc i8 %163 to i1, !mcsema_real_eip !18
  %165 = zext i1 %164 to i8, !mcsema_real_eip !18
  store volatile i8 %165, i8* %SF_write, !mcsema_real_eip !18
  %166 = icmp eq i64 %155, 0, !mcsema_real_eip !18
  %167 = zext i1 %166 to i8, !mcsema_real_eip !18
  store volatile i8 %167, i8* %ZF_write, !mcsema_real_eip !18
  %168 = xor i64 %154, 32, !mcsema_real_eip !18
  %169 = xor i64 %168, -1, !mcsema_real_eip !18
  %170 = xor i64 %154, %155, !mcsema_real_eip !18
  %171 = and i64 %169, %170, !mcsema_real_eip !18
  %172 = lshr i64 %171, 63, !mcsema_real_eip !18
  %173 = and i64 %172, 1, !mcsema_real_eip !18
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !18
  %175 = zext i1 %174 to i8, !mcsema_real_eip !18
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !18
  %177 = zext i1 %176 to i8, !mcsema_real_eip !18
  store volatile i8 %177, i8* %OF_write, !mcsema_real_eip !18
  %178 = trunc i64 %155 to i8, !mcsema_real_eip !18
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !18
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !18
  %181 = zext i1 %180 to i8, !mcsema_real_eip !18
  %182 = xor i8 %181, 1, !mcsema_real_eip !18
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !18
  %184 = zext i1 %183 to i8, !mcsema_real_eip !18
  store volatile i8 %184, i8* %PF_write, !mcsema_real_eip !18
  %185 = icmp ult i64 %155, %154, !mcsema_real_eip !18
  %186 = zext i1 %185 to i8, !mcsema_real_eip !18
  store volatile i8 %186, i8* %CF_write, !mcsema_real_eip !18
  store volatile i64 %155, i64* %RSP_write, !mcsema_real_eip !18
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !19
  %187 = load i64, i64* %RSP_read, !mcsema_real_eip !19
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !19
  %189 = load i64, i64* %188, !mcsema_real_eip !19
  store volatile i64 %189, i64* %RBP_write, !mcsema_real_eip !19
  %190 = add i64 %187, 8, !mcsema_real_eip !19
  store volatile i64 %190, i64* %RSP_write, !mcsema_real_eip !19
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !20
  %191 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %192 = add i64 %191, 8, !mcsema_real_eip !20
  %193 = inttoptr i64 %191 to i64*, !mcsema_real_eip !20
  %194 = load i64, i64* %193, !mcsema_real_eip !20
  store volatile i64 %194, i64* %RIP_write, !mcsema_real_eip !20
  store volatile i64 %192, i64* %RSP_write, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

declare x86_64_sysvcc i64 @close(i64 inreg)

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_open(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_close(i64) #2

; Function Attrs: naked noinline
declare void @foo() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 10}
!5 = !{i64 14}
!6 = !{i64 18}
!7 = !{i64 20}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 32}
!11 = !{i64 38}
!12 = !{i64 41}
!13 = !{i64 46}
!14 = !{i64 53}
!15 = !{i64 56}
!16 = !{i64 61}
!17 = !{i64 68}
!18 = !{i64 71}
!19 = !{i64 75}
!20 = !{i64 76}
