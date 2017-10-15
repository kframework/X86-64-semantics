; ModuleID = 'Output/test_11.clang.lifted.bc'
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_c8 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %39 = add i64 %38, -16, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i64, i64* %RDI_read, !mcsema_real_eip !3
  store i64 %41, i64* %40, !mcsema_real_eip !3
  store volatile i64 12, i64* %EIP_write, !mcsema_real_eip !4
  %42 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %43 = add i64 %42, -16, !mcsema_real_eip !4
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !4
  %45 = load i64, i64* %44, !mcsema_real_eip !4
  store volatile i64 %45, i64* %RDI_write, !mcsema_real_eip !4
  store volatile i64 16, i64* %EIP_write, !mcsema_real_eip !5
  %46 = load i64, i64* %RDI_read, !mcsema_real_eip !5
  %47 = load i64, i64* %RSP_read, !mcsema_real_eip !5
  %48 = sub i64 %47, 8, !mcsema_real_eip !5
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !5
  store i64 -2415393069852865332, i64* %49, !mcsema_real_eip !5
  store volatile i64 %48, i64* %RSP_write, !mcsema_real_eip !5
  %50 = call x86_64_sysvcc i64 @_strlen(i64 %46), !mcsema_real_eip !5
  store volatile i64 %50, i64* %RAX_write, !mcsema_real_eip !5
  store volatile i64 21, i64* %EIP_write, !mcsema_real_eip !6
  %51 = load i64, i64* %RAX_read, !mcsema_real_eip !6
  %52 = add i64 1, %51, !mcsema_real_eip !6
  %53 = xor i64 %52, %51, !mcsema_real_eip !6
  %54 = xor i64 %53, 1, !mcsema_real_eip !6
  %55 = and i64 %54, 16, !mcsema_real_eip !6
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !6
  %57 = zext i1 %56 to i8, !mcsema_real_eip !6
  store volatile i8 %57, i8* %AF_write, !mcsema_real_eip !6
  %58 = lshr i64 %52, 63, !mcsema_real_eip !6
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !6
  %60 = zext i1 %59 to i8, !mcsema_real_eip !6
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !6
  %62 = zext i1 %61 to i8, !mcsema_real_eip !6
  store volatile i8 %62, i8* %SF_write, !mcsema_real_eip !6
  %63 = icmp eq i64 %52, 0, !mcsema_real_eip !6
  %64 = zext i1 %63 to i8, !mcsema_real_eip !6
  store volatile i8 %64, i8* %ZF_write, !mcsema_real_eip !6
  %65 = xor i64 %51, 1, !mcsema_real_eip !6
  %66 = xor i64 %65, -1, !mcsema_real_eip !6
  %67 = xor i64 %51, %52, !mcsema_real_eip !6
  %68 = and i64 %66, %67, !mcsema_real_eip !6
  %69 = lshr i64 %68, 63, !mcsema_real_eip !6
  %70 = and i64 %69, 1, !mcsema_real_eip !6
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !6
  %72 = zext i1 %71 to i8, !mcsema_real_eip !6
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !6
  %74 = zext i1 %73 to i8, !mcsema_real_eip !6
  store volatile i8 %74, i8* %OF_write, !mcsema_real_eip !6
  %75 = trunc i64 %52 to i8, !mcsema_real_eip !6
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !6
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !6
  %78 = zext i1 %77 to i8, !mcsema_real_eip !6
  %79 = xor i8 %78, 1, !mcsema_real_eip !6
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !6
  %81 = zext i1 %80 to i8, !mcsema_real_eip !6
  store volatile i8 %81, i8* %PF_write, !mcsema_real_eip !6
  %82 = icmp ult i64 %52, %51, !mcsema_real_eip !6
  %83 = zext i1 %82 to i8, !mcsema_real_eip !6
  store volatile i8 %83, i8* %CF_write, !mcsema_real_eip !6
  store volatile i64 %52, i64* %RAX_write, !mcsema_real_eip !6
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !7
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %85 = add i64 %84, -24, !mcsema_real_eip !7
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !7
  %87 = load i64, i64* %RAX_read, !mcsema_real_eip !7
  store i64 %87, i64* %86, !mcsema_real_eip !7
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !8
  %88 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %89 = add i64 %88, -24, !mcsema_real_eip !8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !8
  %91 = load i64, i64* %90, !mcsema_real_eip !8
  store volatile i64 %91, i64* %RDI_write, !mcsema_real_eip !8
  store volatile i64 33, i64* %EIP_write, !mcsema_real_eip !9
  %92 = load i64, i64* %RDI_read, !mcsema_real_eip !9
  %93 = load i64, i64* %RSP_read, !mcsema_real_eip !9
  %94 = sub i64 %93, 8, !mcsema_real_eip !9
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %95, !mcsema_real_eip !9
  store volatile i64 %94, i64* %RSP_write, !mcsema_real_eip !9
  %96 = call x86_64_sysvcc i64 @_malloc(i64 %92), !mcsema_real_eip !9
  store volatile i64 %96, i64* %RAX_write, !mcsema_real_eip !9
  store volatile i64 38, i64* %EIP_write, !mcsema_real_eip !10
  %97 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %98 = add i64 %97, -32, !mcsema_real_eip !10
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !10
  %100 = load i64, i64* %RAX_read, !mcsema_real_eip !10
  store i64 %100, i64* %99, !mcsema_real_eip !10
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !11
  %101 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %102 = add i64 %101, -32, !mcsema_real_eip !11
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !11
  %104 = load i64, i64* %103, !mcsema_real_eip !11
  %105 = sub i64 %104, 0, !mcsema_real_eip !11
  %106 = xor i64 %105, %104, !mcsema_real_eip !11
  %107 = xor i64 %106, 0, !mcsema_real_eip !11
  %108 = and i64 %107, 16, !mcsema_real_eip !11
  %109 = icmp ne i64 %108, 0, !mcsema_real_eip !11
  %110 = zext i1 %109 to i8, !mcsema_real_eip !11
  store volatile i8 %110, i8* %AF_write, !mcsema_real_eip !11
  %111 = trunc i64 %105 to i8, !mcsema_real_eip !11
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !11
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !11
  %114 = zext i1 %113 to i8, !mcsema_real_eip !11
  %115 = xor i8 %114, 1, !mcsema_real_eip !11
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !11
  %117 = zext i1 %116 to i8, !mcsema_real_eip !11
  store volatile i8 %117, i8* %PF_write, !mcsema_real_eip !11
  %118 = icmp eq i64 %105, 0, !mcsema_real_eip !11
  %119 = zext i1 %118 to i8, !mcsema_real_eip !11
  store volatile i8 %119, i8* %ZF_write, !mcsema_real_eip !11
  %120 = lshr i64 %105, 63, !mcsema_real_eip !11
  %121 = trunc i64 %120 to i1, !mcsema_real_eip !11
  %122 = zext i1 %121 to i8, !mcsema_real_eip !11
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !11
  %124 = zext i1 %123 to i8, !mcsema_real_eip !11
  store volatile i8 %124, i8* %SF_write, !mcsema_real_eip !11
  %125 = icmp ult i64 %104, 0, !mcsema_real_eip !11
  %126 = zext i1 %125 to i8, !mcsema_real_eip !11
  store volatile i8 %126, i8* %CF_write, !mcsema_real_eip !11
  %127 = xor i64 %104, 0, !mcsema_real_eip !11
  %128 = xor i64 %104, %105, !mcsema_real_eip !11
  %129 = and i64 %127, %128, !mcsema_real_eip !11
  %130 = lshr i64 %129, 63, !mcsema_real_eip !11
  %131 = trunc i64 %130 to i1, !mcsema_real_eip !11
  %132 = zext i1 %131 to i8, !mcsema_real_eip !11
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !11
  %134 = zext i1 %133 to i8, !mcsema_real_eip !11
  store volatile i8 %134, i8* %OF_write, !mcsema_real_eip !11
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !12
  %135 = load i8, i8* %ZF_read, !mcsema_real_eip !12
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !12
  %137 = icmp eq i1 %136, true, !mcsema_real_eip !12
  br i1 %137, label %block_b6, label %block_35, !mcsema_real_eip !12

block_35:                                         ; preds = %block_0
  store volatile i64 53, i64* %EIP_write, !mcsema_real_eip !13
  %138 = load i32, i32* %ESI_read, !mcsema_real_eip !13
  %139 = load i32, i32* %ESI_read, !mcsema_real_eip !13
  %140 = xor i32 %138, %139, !mcsema_real_eip !13
  %141 = trunc i8 0 to i1, !mcsema_real_eip !13
  %142 = zext i1 %141 to i8, !mcsema_real_eip !13
  store volatile i8 %142, i8* %CF_write, !mcsema_real_eip !13
  %143 = trunc i8 0 to i1, !mcsema_real_eip !13
  %144 = zext i1 %143 to i8, !mcsema_real_eip !13
  store volatile i8 %144, i8* %OF_write, !mcsema_real_eip !13
  %145 = lshr i32 %140, 31, !mcsema_real_eip !13
  %146 = trunc i32 %145 to i1, !mcsema_real_eip !13
  %147 = zext i1 %146 to i8, !mcsema_real_eip !13
  %148 = trunc i8 %147 to i1, !mcsema_real_eip !13
  %149 = zext i1 %148 to i8, !mcsema_real_eip !13
  store volatile i8 %149, i8* %SF_write, !mcsema_real_eip !13
  %150 = icmp eq i32 %140, 0, !mcsema_real_eip !13
  %151 = zext i1 %150 to i8, !mcsema_real_eip !13
  store volatile i8 %151, i8* %ZF_write, !mcsema_real_eip !13
  %152 = trunc i32 %140 to i8, !mcsema_real_eip !13
  %153 = call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !13
  %154 = trunc i8 %153 to i1, !mcsema_real_eip !13
  %155 = zext i1 %154 to i8, !mcsema_real_eip !13
  %156 = xor i8 %155, 1, !mcsema_real_eip !13
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !13
  %158 = zext i1 %157 to i8, !mcsema_real_eip !13
  store volatile i8 %158, i8* %PF_write, !mcsema_real_eip !13
  %159 = zext i32 %140 to i64, !mcsema_real_eip !13
  store volatile i64 %159, i64* %ESI_write, !mcsema_real_eip !13
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !14
  %160 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %161 = add i64 %160, -16, !mcsema_real_eip !14
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !14
  %163 = load i64, i64* %162, !mcsema_real_eip !14
  store volatile i64 %163, i64* %RAX_write, !mcsema_real_eip !14
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !15
  %164 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %165 = add i64 %164, -40, !mcsema_real_eip !15
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !15
  %167 = load i64, i64* %RAX_read, !mcsema_real_eip !15
  store i64 %167, i64* %166, !mcsema_real_eip !15
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !16
  %168 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %169 = add i64 %168, -32, !mcsema_real_eip !16
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !16
  %171 = load i64, i64* %170, !mcsema_real_eip !16
  store volatile i64 %171, i64* %RAX_write, !mcsema_real_eip !16
  store volatile i64 67, i64* %EIP_write, !mcsema_real_eip !17
  %172 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %173 = add i64 %172, -48, !mcsema_real_eip !17
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !17
  %175 = load i64, i64* %RAX_read, !mcsema_real_eip !17
  store i64 %175, i64* %174, !mcsema_real_eip !17
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !18
  %176 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %177 = add i64 %176, -32, !mcsema_real_eip !18
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !18
  %179 = load i64, i64* %178, !mcsema_real_eip !18
  store volatile i64 %179, i64* %RDI_write, !mcsema_real_eip !18
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !19
  %180 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %181 = add i64 %180, -24, !mcsema_real_eip !19
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !19
  %183 = load i64, i64* %182, !mcsema_real_eip !19
  store volatile i64 %183, i64* %RDX_write, !mcsema_real_eip !19
  store volatile i64 79, i64* %EIP_write, !mcsema_real_eip !20
  %184 = load i64, i64* %RDI_read, !mcsema_real_eip !20
  %185 = load i64, i64* %RSI_read, !mcsema_real_eip !20
  %186 = load i64, i64* %RDX_read, !mcsema_real_eip !20
  %187 = load i64, i64* %RSP_read, !mcsema_real_eip !20
  %188 = sub i64 %187, 8, !mcsema_real_eip !20
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !20
  store i64 -2415393069852865332, i64* %189, !mcsema_real_eip !20
  store volatile i64 %188, i64* %RSP_write, !mcsema_real_eip !20
  %190 = call x86_64_sysvcc i64 @_memset(i64 %184, i64 %185, i64 %186), !mcsema_real_eip !20
  store volatile i64 %190, i64* %RAX_write, !mcsema_real_eip !20
  br label %block_54, !mcsema_real_eip !21

block_54:                                         ; preds = %block_8c, %block_35
  store volatile i64 84, i64* %EIP_write, !mcsema_real_eip !21
  %191 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %192 = add i64 %191, -40, !mcsema_real_eip !21
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !21
  %194 = load i64, i64* %193, !mcsema_real_eip !21
  store volatile i64 %194, i64* %RAX_write, !mcsema_real_eip !21
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !22
  %195 = load i64, i64* %RAX_read, !mcsema_real_eip !22
  %196 = add i64 %195, 0, !mcsema_real_eip !22
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !22
  %198 = ptrtoint i64* %197 to i64, !mcsema_real_eip !22
  %199 = inttoptr i64 %198 to i8*, !mcsema_real_eip !22
  %200 = load i8, i8* %199, !mcsema_real_eip !22
  %201 = sext i8 %200 to i32, !mcsema_real_eip !22
  %202 = zext i32 %201 to i64, !mcsema_real_eip !22
  store volatile i64 %202, i64* %ECX_write, !mcsema_real_eip !22
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !23
  %203 = load i32, i32* %ECX_read, !mcsema_real_eip !23
  %204 = sub i32 %203, 0, !mcsema_real_eip !23
  %205 = xor i32 %204, %203, !mcsema_real_eip !23
  %206 = xor i32 %205, 0, !mcsema_real_eip !23
  %207 = and i32 %206, 16, !mcsema_real_eip !23
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !23
  %209 = zext i1 %208 to i8, !mcsema_real_eip !23
  store volatile i8 %209, i8* %AF_write, !mcsema_real_eip !23
  %210 = trunc i32 %204 to i8, !mcsema_real_eip !23
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !23
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !23
  %213 = zext i1 %212 to i8, !mcsema_real_eip !23
  %214 = xor i8 %213, 1, !mcsema_real_eip !23
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !23
  %216 = zext i1 %215 to i8, !mcsema_real_eip !23
  store volatile i8 %216, i8* %PF_write, !mcsema_real_eip !23
  %217 = icmp eq i32 %204, 0, !mcsema_real_eip !23
  %218 = zext i1 %217 to i8, !mcsema_real_eip !23
  store volatile i8 %218, i8* %ZF_write, !mcsema_real_eip !23
  %219 = lshr i32 %204, 31, !mcsema_real_eip !23
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !23
  %221 = zext i1 %220 to i8, !mcsema_real_eip !23
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !23
  %223 = zext i1 %222 to i8, !mcsema_real_eip !23
  store volatile i8 %223, i8* %SF_write, !mcsema_real_eip !23
  %224 = icmp ult i32 %203, 0, !mcsema_real_eip !23
  %225 = zext i1 %224 to i8, !mcsema_real_eip !23
  store volatile i8 %225, i8* %CF_write, !mcsema_real_eip !23
  %226 = xor i32 %203, 0, !mcsema_real_eip !23
  %227 = xor i32 %203, %204, !mcsema_real_eip !23
  %228 = and i32 %226, %227, !mcsema_real_eip !23
  %229 = lshr i32 %228, 31, !mcsema_real_eip !23
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !23
  %231 = zext i1 %230 to i8, !mcsema_real_eip !23
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !23
  %233 = zext i1 %232 to i8, !mcsema_real_eip !23
  store volatile i8 %233, i8* %OF_write, !mcsema_real_eip !23
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !24
  %234 = load i8, i8* %ZF_read, !mcsema_real_eip !24
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !24
  %236 = icmp eq i1 %235, true, !mcsema_real_eip !24
  br i1 %236, label %block_a9, label %block_64, !mcsema_real_eip !24

block_64:                                         ; preds = %block_54
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !25
  %237 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %238 = add i64 %237, -40, !mcsema_real_eip !25
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !25
  %240 = load i64, i64* %239, !mcsema_real_eip !25
  store volatile i64 %240, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 104, i64* %EIP_write, !mcsema_real_eip !26
  %241 = load i64, i64* %RAX_read, !mcsema_real_eip !26
  %242 = add i64 %241, 0, !mcsema_real_eip !26
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !26
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !26
  %245 = inttoptr i64 %244 to i8*, !mcsema_real_eip !26
  %246 = load i8, i8* %245, !mcsema_real_eip !26
  %247 = sext i8 %246 to i32, !mcsema_real_eip !26
  %248 = zext i32 %247 to i64, !mcsema_real_eip !26
  store volatile i64 %248, i64* %ECX_write, !mcsema_real_eip !26
  store volatile i64 107, i64* %EIP_write, !mcsema_real_eip !27
  %249 = load i32, i32* %ECX_read, !mcsema_real_eip !27
  %250 = sub i32 %249, 47, !mcsema_real_eip !27
  %251 = xor i32 %250, %249, !mcsema_real_eip !27
  %252 = xor i32 %251, 47, !mcsema_real_eip !27
  %253 = and i32 %252, 16, !mcsema_real_eip !27
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !27
  %255 = zext i1 %254 to i8, !mcsema_real_eip !27
  store volatile i8 %255, i8* %AF_write, !mcsema_real_eip !27
  %256 = trunc i32 %250 to i8, !mcsema_real_eip !27
  %257 = call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !27
  %258 = trunc i8 %257 to i1, !mcsema_real_eip !27
  %259 = zext i1 %258 to i8, !mcsema_real_eip !27
  %260 = xor i8 %259, 1, !mcsema_real_eip !27
  %261 = trunc i8 %260 to i1, !mcsema_real_eip !27
  %262 = zext i1 %261 to i8, !mcsema_real_eip !27
  store volatile i8 %262, i8* %PF_write, !mcsema_real_eip !27
  %263 = icmp eq i32 %250, 0, !mcsema_real_eip !27
  %264 = zext i1 %263 to i8, !mcsema_real_eip !27
  store volatile i8 %264, i8* %ZF_write, !mcsema_real_eip !27
  %265 = lshr i32 %250, 31, !mcsema_real_eip !27
  %266 = trunc i32 %265 to i1, !mcsema_real_eip !27
  %267 = zext i1 %266 to i8, !mcsema_real_eip !27
  %268 = trunc i8 %267 to i1, !mcsema_real_eip !27
  %269 = zext i1 %268 to i8, !mcsema_real_eip !27
  store volatile i8 %269, i8* %SF_write, !mcsema_real_eip !27
  %270 = icmp ult i32 %249, 47, !mcsema_real_eip !27
  %271 = zext i1 %270 to i8, !mcsema_real_eip !27
  store volatile i8 %271, i8* %CF_write, !mcsema_real_eip !27
  %272 = xor i32 %249, 47, !mcsema_real_eip !27
  %273 = xor i32 %249, %250, !mcsema_real_eip !27
  %274 = and i32 %272, %273, !mcsema_real_eip !27
  %275 = lshr i32 %274, 31, !mcsema_real_eip !27
  %276 = trunc i32 %275 to i1, !mcsema_real_eip !27
  %277 = zext i1 %276 to i8, !mcsema_real_eip !27
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !27
  %279 = zext i1 %278 to i8, !mcsema_real_eip !27
  store volatile i8 %279, i8* %OF_write, !mcsema_real_eip !27
  store volatile i64 110, i64* %EIP_write, !mcsema_real_eip !28
  %280 = load i8, i8* %ZF_read, !mcsema_real_eip !28
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !28
  %282 = icmp eq i1 %281, false, !mcsema_real_eip !28
  br i1 %282, label %block_80, label %block_74, !mcsema_real_eip !28

block_74:                                         ; preds = %block_64
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !29
  %283 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %284 = add i64 %283, -48, !mcsema_real_eip !29
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !29
  %286 = load i64, i64* %285, !mcsema_real_eip !29
  store volatile i64 %286, i64* %RAX_write, !mcsema_real_eip !29
  store volatile i64 120, i64* %EIP_write, !mcsema_real_eip !30
  %287 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %288 = add i64 %287, 0, !mcsema_real_eip !30
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !30
  %290 = ptrtoint i64* %289 to i64, !mcsema_real_eip !30
  %291 = inttoptr i64 %290 to i8*, !mcsema_real_eip !30
  store i8 92, i8* %291, !mcsema_real_eip !30
  store volatile i64 123, i64* %EIP_write, !mcsema_real_eip !31
  br label %block_8c, !mcsema_real_eip !31

block_80:                                         ; preds = %block_64
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !32
  %292 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %293 = add i64 %292, -40, !mcsema_real_eip !32
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !32
  %295 = load i64, i64* %294, !mcsema_real_eip !32
  store volatile i64 %295, i64* %RAX_write, !mcsema_real_eip !32
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !33
  %296 = load i64, i64* %RAX_read, !mcsema_real_eip !33
  %297 = add i64 %296, 0, !mcsema_real_eip !33
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !33
  %299 = ptrtoint i64* %298 to i64, !mcsema_real_eip !33
  %300 = inttoptr i64 %299 to i8*, !mcsema_real_eip !33
  %301 = load i8, i8* %300, !mcsema_real_eip !33
  store volatile i8 %301, i8* %CL_write, !mcsema_real_eip !33
  store volatile i64 134, i64* %EIP_write, !mcsema_real_eip !34
  %302 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %303 = add i64 %302, -48, !mcsema_real_eip !34
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !34
  %305 = load i64, i64* %304, !mcsema_real_eip !34
  store volatile i64 %305, i64* %RAX_write, !mcsema_real_eip !34
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !35
  %306 = load i64, i64* %RAX_read, !mcsema_real_eip !35
  %307 = add i64 %306, 0, !mcsema_real_eip !35
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !35
  %309 = load i8, i8* %CL_read, !mcsema_real_eip !35
  %310 = ptrtoint i64* %308 to i64, !mcsema_real_eip !35
  %311 = inttoptr i64 %310 to i8*, !mcsema_real_eip !35
  store i8 %309, i8* %311, !mcsema_real_eip !35
  br label %block_8c, !mcsema_real_eip !36

block_8c:                                         ; preds = %block_80, %block_74
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !36
  %312 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %313 = add i64 %312, -40, !mcsema_real_eip !36
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !36
  %315 = load i64, i64* %314, !mcsema_real_eip !36
  store volatile i64 %315, i64* %RAX_write, !mcsema_real_eip !36
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !37
  %316 = load i64, i64* %RAX_read, !mcsema_real_eip !37
  %317 = add i64 1, %316, !mcsema_real_eip !37
  %318 = xor i64 %317, %316, !mcsema_real_eip !37
  %319 = xor i64 %318, 1, !mcsema_real_eip !37
  %320 = and i64 %319, 16, !mcsema_real_eip !37
  %321 = icmp ne i64 %320, 0, !mcsema_real_eip !37
  %322 = zext i1 %321 to i8, !mcsema_real_eip !37
  store volatile i8 %322, i8* %AF_write, !mcsema_real_eip !37
  %323 = lshr i64 %317, 63, !mcsema_real_eip !37
  %324 = trunc i64 %323 to i1, !mcsema_real_eip !37
  %325 = zext i1 %324 to i8, !mcsema_real_eip !37
  %326 = trunc i8 %325 to i1, !mcsema_real_eip !37
  %327 = zext i1 %326 to i8, !mcsema_real_eip !37
  store volatile i8 %327, i8* %SF_write, !mcsema_real_eip !37
  %328 = icmp eq i64 %317, 0, !mcsema_real_eip !37
  %329 = zext i1 %328 to i8, !mcsema_real_eip !37
  store volatile i8 %329, i8* %ZF_write, !mcsema_real_eip !37
  %330 = xor i64 %316, 1, !mcsema_real_eip !37
  %331 = xor i64 %330, -1, !mcsema_real_eip !37
  %332 = xor i64 %316, %317, !mcsema_real_eip !37
  %333 = and i64 %331, %332, !mcsema_real_eip !37
  %334 = lshr i64 %333, 63, !mcsema_real_eip !37
  %335 = and i64 %334, 1, !mcsema_real_eip !37
  %336 = trunc i64 %335 to i1, !mcsema_real_eip !37
  %337 = zext i1 %336 to i8, !mcsema_real_eip !37
  %338 = trunc i8 %337 to i1, !mcsema_real_eip !37
  %339 = zext i1 %338 to i8, !mcsema_real_eip !37
  store volatile i8 %339, i8* %OF_write, !mcsema_real_eip !37
  %340 = trunc i64 %317 to i8, !mcsema_real_eip !37
  %341 = call i8 @llvm.ctpop.i8(i8 %340), !mcsema_real_eip !37
  %342 = trunc i8 %341 to i1, !mcsema_real_eip !37
  %343 = zext i1 %342 to i8, !mcsema_real_eip !37
  %344 = xor i8 %343, 1, !mcsema_real_eip !37
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !37
  %346 = zext i1 %345 to i8, !mcsema_real_eip !37
  store volatile i8 %346, i8* %PF_write, !mcsema_real_eip !37
  %347 = icmp ult i64 %317, %316, !mcsema_real_eip !37
  %348 = zext i1 %347 to i8, !mcsema_real_eip !37
  store volatile i8 %348, i8* %CF_write, !mcsema_real_eip !37
  store volatile i64 %317, i64* %RAX_write, !mcsema_real_eip !37
  store volatile i64 148, i64* %EIP_write, !mcsema_real_eip !38
  %349 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %350 = add i64 %349, -40, !mcsema_real_eip !38
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !38
  %352 = load i64, i64* %RAX_read, !mcsema_real_eip !38
  store i64 %352, i64* %351, !mcsema_real_eip !38
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !39
  %353 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %354 = add i64 %353, -48, !mcsema_real_eip !39
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !39
  %356 = load i64, i64* %355, !mcsema_real_eip !39
  store volatile i64 %356, i64* %RAX_write, !mcsema_real_eip !39
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !40
  %357 = load i64, i64* %RAX_read, !mcsema_real_eip !40
  %358 = add i64 1, %357, !mcsema_real_eip !40
  %359 = xor i64 %358, %357, !mcsema_real_eip !40
  %360 = xor i64 %359, 1, !mcsema_real_eip !40
  %361 = and i64 %360, 16, !mcsema_real_eip !40
  %362 = icmp ne i64 %361, 0, !mcsema_real_eip !40
  %363 = zext i1 %362 to i8, !mcsema_real_eip !40
  store volatile i8 %363, i8* %AF_write, !mcsema_real_eip !40
  %364 = lshr i64 %358, 63, !mcsema_real_eip !40
  %365 = trunc i64 %364 to i1, !mcsema_real_eip !40
  %366 = zext i1 %365 to i8, !mcsema_real_eip !40
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !40
  %368 = zext i1 %367 to i8, !mcsema_real_eip !40
  store volatile i8 %368, i8* %SF_write, !mcsema_real_eip !40
  %369 = icmp eq i64 %358, 0, !mcsema_real_eip !40
  %370 = zext i1 %369 to i8, !mcsema_real_eip !40
  store volatile i8 %370, i8* %ZF_write, !mcsema_real_eip !40
  %371 = xor i64 %357, 1, !mcsema_real_eip !40
  %372 = xor i64 %371, -1, !mcsema_real_eip !40
  %373 = xor i64 %357, %358, !mcsema_real_eip !40
  %374 = and i64 %372, %373, !mcsema_real_eip !40
  %375 = lshr i64 %374, 63, !mcsema_real_eip !40
  %376 = and i64 %375, 1, !mcsema_real_eip !40
  %377 = trunc i64 %376 to i1, !mcsema_real_eip !40
  %378 = zext i1 %377 to i8, !mcsema_real_eip !40
  %379 = trunc i8 %378 to i1, !mcsema_real_eip !40
  %380 = zext i1 %379 to i8, !mcsema_real_eip !40
  store volatile i8 %380, i8* %OF_write, !mcsema_real_eip !40
  %381 = trunc i64 %358 to i8, !mcsema_real_eip !40
  %382 = call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !40
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !40
  %384 = zext i1 %383 to i8, !mcsema_real_eip !40
  %385 = xor i8 %384, 1, !mcsema_real_eip !40
  %386 = trunc i8 %385 to i1, !mcsema_real_eip !40
  %387 = zext i1 %386 to i8, !mcsema_real_eip !40
  store volatile i8 %387, i8* %PF_write, !mcsema_real_eip !40
  %388 = icmp ult i64 %358, %357, !mcsema_real_eip !40
  %389 = zext i1 %388 to i8, !mcsema_real_eip !40
  store volatile i8 %389, i8* %CF_write, !mcsema_real_eip !40
  store volatile i64 %358, i64* %RAX_write, !mcsema_real_eip !40
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !41
  %390 = load i64, i64* %RBP_read, !mcsema_real_eip !41
  %391 = add i64 %390, -48, !mcsema_real_eip !41
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !41
  %393 = load i64, i64* %RAX_read, !mcsema_real_eip !41
  store i64 %393, i64* %392, !mcsema_real_eip !41
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !42
  br label %block_54, !mcsema_real_eip !42

block_a9:                                         ; preds = %block_54
  store volatile i64 169, i64* %EIP_write, !mcsema_real_eip !43
  %394 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %395 = add i64 %394, -32, !mcsema_real_eip !43
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !43
  %397 = load i64, i64* %396, !mcsema_real_eip !43
  store volatile i64 %397, i64* %RAX_write, !mcsema_real_eip !43
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !44
  %398 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %399 = add i64 %398, -8, !mcsema_real_eip !44
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !44
  %401 = load i64, i64* %RAX_read, !mcsema_real_eip !44
  store i64 %401, i64* %400, !mcsema_real_eip !44
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !45
  br label %block_be, !mcsema_real_eip !45

block_b6:                                         ; preds = %block_0
  store volatile i64 182, i64* %EIP_write, !mcsema_real_eip !46
  %402 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %403 = add i64 %402, -8, !mcsema_real_eip !46
  %404 = inttoptr i64 %403 to i64*, !mcsema_real_eip !46
  store i64 0, i64* %404, !mcsema_real_eip !46
  br label %block_be, !mcsema_real_eip !47

block_be:                                         ; preds = %block_b6, %block_a9
  store volatile i64 190, i64* %EIP_write, !mcsema_real_eip !47
  %405 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %406 = add i64 %405, -8, !mcsema_real_eip !47
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !47
  %408 = load i64, i64* %407, !mcsema_real_eip !47
  store volatile i64 %408, i64* %RAX_write, !mcsema_real_eip !47
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !48
  %409 = load i64, i64* %RSP_read, !mcsema_real_eip !48
  %410 = add i64 48, %409, !mcsema_real_eip !48
  %411 = xor i64 %410, %409, !mcsema_real_eip !48
  %412 = xor i64 %411, 48, !mcsema_real_eip !48
  %413 = and i64 %412, 16, !mcsema_real_eip !48
  %414 = icmp ne i64 %413, 0, !mcsema_real_eip !48
  %415 = zext i1 %414 to i8, !mcsema_real_eip !48
  store volatile i8 %415, i8* %AF_write, !mcsema_real_eip !48
  %416 = lshr i64 %410, 63, !mcsema_real_eip !48
  %417 = trunc i64 %416 to i1, !mcsema_real_eip !48
  %418 = zext i1 %417 to i8, !mcsema_real_eip !48
  %419 = trunc i8 %418 to i1, !mcsema_real_eip !48
  %420 = zext i1 %419 to i8, !mcsema_real_eip !48
  store volatile i8 %420, i8* %SF_write, !mcsema_real_eip !48
  %421 = icmp eq i64 %410, 0, !mcsema_real_eip !48
  %422 = zext i1 %421 to i8, !mcsema_real_eip !48
  store volatile i8 %422, i8* %ZF_write, !mcsema_real_eip !48
  %423 = xor i64 %409, 48, !mcsema_real_eip !48
  %424 = xor i64 %423, -1, !mcsema_real_eip !48
  %425 = xor i64 %409, %410, !mcsema_real_eip !48
  %426 = and i64 %424, %425, !mcsema_real_eip !48
  %427 = lshr i64 %426, 63, !mcsema_real_eip !48
  %428 = and i64 %427, 1, !mcsema_real_eip !48
  %429 = trunc i64 %428 to i1, !mcsema_real_eip !48
  %430 = zext i1 %429 to i8, !mcsema_real_eip !48
  %431 = trunc i8 %430 to i1, !mcsema_real_eip !48
  %432 = zext i1 %431 to i8, !mcsema_real_eip !48
  store volatile i8 %432, i8* %OF_write, !mcsema_real_eip !48
  %433 = trunc i64 %410 to i8, !mcsema_real_eip !48
  %434 = call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !48
  %435 = trunc i8 %434 to i1, !mcsema_real_eip !48
  %436 = zext i1 %435 to i8, !mcsema_real_eip !48
  %437 = xor i8 %436, 1, !mcsema_real_eip !48
  %438 = trunc i8 %437 to i1, !mcsema_real_eip !48
  %439 = zext i1 %438 to i8, !mcsema_real_eip !48
  store volatile i8 %439, i8* %PF_write, !mcsema_real_eip !48
  %440 = icmp ult i64 %410, %409, !mcsema_real_eip !48
  %441 = zext i1 %440 to i8, !mcsema_real_eip !48
  store volatile i8 %441, i8* %CF_write, !mcsema_real_eip !48
  store volatile i64 %410, i64* %RSP_write, !mcsema_real_eip !48
  store volatile i64 198, i64* %EIP_write, !mcsema_real_eip !49
  %442 = load i64, i64* %RSP_read, !mcsema_real_eip !49
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !49
  %444 = load i64, i64* %443, !mcsema_real_eip !49
  store volatile i64 %444, i64* %RBP_write, !mcsema_real_eip !49
  %445 = add i64 %442, 8, !mcsema_real_eip !49
  store volatile i64 %445, i64* %RSP_write, !mcsema_real_eip !49
  store volatile i64 199, i64* %EIP_write, !mcsema_real_eip !50
  %446 = load i64, i64* %RSP_read, !mcsema_real_eip !50
  %447 = add i64 %446, 8, !mcsema_real_eip !50
  %448 = inttoptr i64 %446 to i64*, !mcsema_real_eip !50
  %449 = load i64, i64* %448, !mcsema_real_eip !50
  store volatile i64 %449, i64* %RIP_write, !mcsema_real_eip !50
  store volatile i64 %447, i64* %RSP_write, !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @doTrans() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 16}
!6 = !{i64 21}
!7 = !{i64 25}
!8 = !{i64 29}
!9 = !{i64 33}
!10 = !{i64 38}
!11 = !{i64 42}
!12 = !{i64 47}
!13 = !{i64 53}
!14 = !{i64 55}
!15 = !{i64 59}
!16 = !{i64 63}
!17 = !{i64 67}
!18 = !{i64 71}
!19 = !{i64 75}
!20 = !{i64 79}
!21 = !{i64 84}
!22 = !{i64 88}
!23 = !{i64 91}
!24 = !{i64 94}
!25 = !{i64 100}
!26 = !{i64 104}
!27 = !{i64 107}
!28 = !{i64 110}
!29 = !{i64 116}
!30 = !{i64 120}
!31 = !{i64 123}
!32 = !{i64 128}
!33 = !{i64 132}
!34 = !{i64 134}
!35 = !{i64 138}
!36 = !{i64 140}
!37 = !{i64 144}
!38 = !{i64 148}
!39 = !{i64 152}
!40 = !{i64 156}
!41 = !{i64 160}
!42 = !{i64 164}
!43 = !{i64 169}
!44 = !{i64 173}
!45 = !{i64 177}
!46 = !{i64 182}
!47 = !{i64 190}
!48 = !{i64 194}
!49 = !{i64 198}
!50 = !{i64 199}
