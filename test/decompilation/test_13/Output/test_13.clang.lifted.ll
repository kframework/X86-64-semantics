; ModuleID = 'Output/test_13.clang.lifted.bc'
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
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_180 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\83\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"l\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00T\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %39 = add i64 %38, -8, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = load i64, i64* %RDI_read, !mcsema_real_eip !3
  store i64 %41, i64* %40, !mcsema_real_eip !3
  store volatile i64 12, i64* %EIP_write, !mcsema_real_eip !4
  %42 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %43 = add i64 %42, -12, !mcsema_real_eip !4
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !4
  %45 = load i32, i32* %ESI_read, !mcsema_real_eip !4
  %46 = ptrtoint i64* %44 to i64, !mcsema_real_eip !4
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !4
  store i32 %45, i32* %47, !mcsema_real_eip !4
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !5
  %48 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %49 = add i64 %48, -16, !mcsema_real_eip !5
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !5
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !5
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %52, !mcsema_real_eip !5
  store volatile i64 22, i64* %EIP_write, !mcsema_real_eip !6
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %54 = add i64 %53, -12, !mcsema_real_eip !6
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !6
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !6
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !6
  %58 = load i32, i32* %57, !mcsema_real_eip !6
  %59 = sext i32 %58 to i64, !mcsema_real_eip !6
  store volatile i64 %59, i64* %RDI_write, !mcsema_real_eip !6
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !7
  %60 = load i64, i64* %RDI_read, !mcsema_real_eip !7
  %61 = and i64 3, 63, !mcsema_real_eip !7
  %62 = sub i64 3, 1, !mcsema_real_eip !7
  %63 = icmp ne i64 %61, 0, !mcsema_real_eip !7
  %64 = select i1 %63, i64 %62, i64 0, !mcsema_real_eip !7
  %65 = select i1 %63, i64 1, i64 0, !mcsema_real_eip !7
  %66 = shl i64 %60, %64, !mcsema_real_eip !7
  %67 = shl i64 1, 63, !mcsema_real_eip !7
  %68 = and i64 %66, %67, !mcsema_real_eip !7
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !7
  %70 = load i8, i8* %CF_read, !mcsema_real_eip !7
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !7
  %72 = select i1 %63, i1 %69, i1 %71, !mcsema_real_eip !7
  %73 = shl i64 %66, %65, !mcsema_real_eip !7
  %74 = icmp eq i64 %61, 1, !mcsema_real_eip !7
  %75 = load i8, i8* %OF_read, !mcsema_real_eip !7
  %76 = trunc i8 %75 to i1, !mcsema_real_eip !7
  %77 = and i64 %73, -9223372036854775808, !mcsema_real_eip !7
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !7
  %79 = xor i1 %78, %72, !mcsema_real_eip !7
  %80 = select i1 %74, i1 %79, i1 %76, !mcsema_real_eip !7
  %81 = zext i1 %80 to i8, !mcsema_real_eip !7
  store volatile i8 %81, i8* %OF_write, !mcsema_real_eip !7
  %82 = zext i1 %72 to i8, !mcsema_real_eip !7
  store volatile i8 %82, i8* %CF_write, !mcsema_real_eip !7
  %83 = load i8, i8* %ZF_read, !mcsema_real_eip !7
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !7
  %85 = icmp eq i64 %73, 0, !mcsema_real_eip !7
  %86 = select i1 %63, i1 %85, i1 %84, !mcsema_real_eip !7
  %87 = zext i1 %86 to i8, !mcsema_real_eip !7
  store volatile i8 %87, i8* %ZF_write, !mcsema_real_eip !7
  %88 = load i8, i8* %SF_read, !mcsema_real_eip !7
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !7
  %90 = icmp slt i64 %73, 0, !mcsema_real_eip !7
  %91 = select i1 %63, i1 %90, i1 %89, !mcsema_real_eip !7
  %92 = zext i1 %91 to i8, !mcsema_real_eip !7
  store volatile i8 %92, i8* %SF_write, !mcsema_real_eip !7
  %93 = load i8, i8* %PF_read, !mcsema_real_eip !7
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !7
  %95 = trunc i64 %73 to i8, !mcsema_real_eip !7
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !7
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !7
  %98 = zext i1 %97 to i8, !mcsema_real_eip !7
  %99 = xor i8 %98, 1, !mcsema_real_eip !7
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !7
  %101 = zext i1 %100 to i8, !mcsema_real_eip !7
  store volatile i8 %101, i8* %PF_write, !mcsema_real_eip !7
  %102 = load i8, i8* %PF_read, !mcsema_real_eip !7
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !7
  %104 = select i1 %63, i1 %103, i1 %94, !mcsema_real_eip !7
  %105 = zext i1 %104 to i8, !mcsema_real_eip !7
  store volatile i8 %105, i8* %PF_write, !mcsema_real_eip !7
  store volatile i64 %73, i64* %RDI_write, !mcsema_real_eip !7
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !8
  %106 = load i64, i64* %RDI_read, !mcsema_real_eip !8
  %107 = load i64, i64* %RSP_read, !mcsema_real_eip !8
  %108 = sub i64 %107, 8, !mcsema_real_eip !8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !8
  store i64 -2415393069852865332, i64* %109, !mcsema_real_eip !8
  store volatile i64 %108, i64* %RSP_write, !mcsema_real_eip !8
  %110 = call x86_64_sysvcc i64 @_malloc(i64 %106), !mcsema_real_eip !8
  store volatile i64 %110, i64* %RAX_write, !mcsema_real_eip !8
  store volatile i64 35, i64* %EIP_write, !mcsema_real_eip !9
  %111 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %112 = add i64 %111, -24, !mcsema_real_eip !9
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !9
  %114 = load i64, i64* %RAX_read, !mcsema_real_eip !9
  store i64 %114, i64* %113, !mcsema_real_eip !9
  br label %block_27, !mcsema_real_eip !10

block_27:                                         ; preds = %block_67, %block_0
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !10
  %115 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %116 = add i64 %115, -16, !mcsema_real_eip !10
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !10
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !10
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !10
  %120 = load i32, i32* %119, !mcsema_real_eip !10
  %121 = zext i32 %120 to i64, !mcsema_real_eip !10
  store volatile i64 %121, i64* %EAX_write, !mcsema_real_eip !10
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !11
  %122 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %123 = add i64 %122, -12, !mcsema_real_eip !11
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !11
  %125 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %126 = ptrtoint i64* %124 to i64, !mcsema_real_eip !11
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !11
  %128 = load i32, i32* %127, !mcsema_real_eip !11
  %129 = sub i32 %125, %128, !mcsema_real_eip !11
  %130 = xor i32 %129, %125, !mcsema_real_eip !11
  %131 = xor i32 %130, %128, !mcsema_real_eip !11
  %132 = and i32 %131, 16, !mcsema_real_eip !11
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !11
  %134 = zext i1 %133 to i8, !mcsema_real_eip !11
  store volatile i8 %134, i8* %AF_write, !mcsema_real_eip !11
  %135 = trunc i32 %129 to i8, !mcsema_real_eip !11
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !11
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !11
  %138 = zext i1 %137 to i8, !mcsema_real_eip !11
  %139 = xor i8 %138, 1, !mcsema_real_eip !11
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !11
  %141 = zext i1 %140 to i8, !mcsema_real_eip !11
  store volatile i8 %141, i8* %PF_write, !mcsema_real_eip !11
  %142 = icmp eq i32 %129, 0, !mcsema_real_eip !11
  %143 = zext i1 %142 to i8, !mcsema_real_eip !11
  store volatile i8 %143, i8* %ZF_write, !mcsema_real_eip !11
  %144 = lshr i32 %129, 31, !mcsema_real_eip !11
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !11
  %146 = zext i1 %145 to i8, !mcsema_real_eip !11
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !11
  %148 = zext i1 %147 to i8, !mcsema_real_eip !11
  store volatile i8 %148, i8* %SF_write, !mcsema_real_eip !11
  %149 = icmp ult i32 %125, %128, !mcsema_real_eip !11
  %150 = zext i1 %149 to i8, !mcsema_real_eip !11
  store volatile i8 %150, i8* %CF_write, !mcsema_real_eip !11
  %151 = xor i32 %125, %128, !mcsema_real_eip !11
  %152 = xor i32 %125, %129, !mcsema_real_eip !11
  %153 = and i32 %151, %152, !mcsema_real_eip !11
  %154 = lshr i32 %153, 31, !mcsema_real_eip !11
  %155 = trunc i32 %154 to i1, !mcsema_real_eip !11
  %156 = zext i1 %155 to i8, !mcsema_real_eip !11
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !11
  %158 = zext i1 %157 to i8, !mcsema_real_eip !11
  store volatile i8 %158, i8* %OF_write, !mcsema_real_eip !11
  store volatile i64 45, i64* %EIP_write, !mcsema_real_eip !12
  %159 = load i8, i8* %SF_read, !mcsema_real_eip !12
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !12
  %161 = load i8, i8* %OF_read, !mcsema_real_eip !12
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !12
  %163 = icmp eq i1 %160, %162, !mcsema_real_eip !12
  br i1 %163, label %block_75, label %block_33, !mcsema_real_eip !12

block_33:                                         ; preds = %block_27
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !13
  %164 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %165 = add i64 %164, -16, !mcsema_real_eip !13
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !13
  %167 = ptrtoint i64* %166 to i64, !mcsema_real_eip !13
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !13
  %169 = load i32, i32* %168, !mcsema_real_eip !13
  %170 = sext i32 %169 to i64, !mcsema_real_eip !13
  store volatile i64 %170, i64* %RAX_write, !mcsema_real_eip !13
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !14
  %171 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %172 = add i64 %171, -8, !mcsema_real_eip !14
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !14
  %174 = load i64, i64* %173, !mcsema_real_eip !14
  store volatile i64 %174, i64* %RCX_write, !mcsema_real_eip !14
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !15
  %175 = load i64, i64* %RCX_read, !mcsema_real_eip !15
  %176 = add i64 %175, 0, !mcsema_real_eip !15
  %177 = load i64, i64* %RAX_read, !mcsema_real_eip !15
  %178 = mul i64 %177, 8, !mcsema_real_eip !15
  %179 = add i64 %176, %178, !mcsema_real_eip !15
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !15
  %181 = load i64, i64* %180, !mcsema_real_eip !15
  store volatile i64 %181, i64* %RAX_write, !mcsema_real_eip !15
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !16
  %182 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %183 = add i64 %182, -32, !mcsema_real_eip !16
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !16
  %185 = load i64, i64* %RAX_read, !mcsema_real_eip !16
  store i64 %185, i64* %184, !mcsema_real_eip !16
  store volatile i64 67, i64* %EIP_write, !mcsema_real_eip !17
  %186 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %187 = add i64 %186, -32, !mcsema_real_eip !17
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !17
  %189 = load i64, i64* %188, !mcsema_real_eip !17
  store volatile i64 %189, i64* %RDI_write, !mcsema_real_eip !17
  store volatile i64 71, i64* %EIP_write, !mcsema_real_eip !18
  %190 = load i64, i64* %RSP_read, !mcsema_real_eip !18
  %191 = sub i64 %190, 8, !mcsema_real_eip !18
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !18
  store i64 76, i64* %192, !mcsema_real_eip !18
  store volatile i64 %191, i64* %RSP_write, !mcsema_real_eip !18
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !18
  store volatile i64 76, i64* %EIP_write, !mcsema_real_eip !19
  %193 = load i32, i32* %EAX_read, !mcsema_real_eip !19
  %194 = sub i32 %193, 0, !mcsema_real_eip !19
  %195 = xor i32 %194, %193, !mcsema_real_eip !19
  %196 = xor i32 %195, 0, !mcsema_real_eip !19
  %197 = and i32 %196, 16, !mcsema_real_eip !19
  %198 = icmp ne i32 %197, 0, !mcsema_real_eip !19
  %199 = zext i1 %198 to i8, !mcsema_real_eip !19
  store volatile i8 %199, i8* %AF_write, !mcsema_real_eip !19
  %200 = trunc i32 %194 to i8, !mcsema_real_eip !19
  %201 = call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !19
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !19
  %203 = zext i1 %202 to i8, !mcsema_real_eip !19
  %204 = xor i8 %203, 1, !mcsema_real_eip !19
  %205 = trunc i8 %204 to i1, !mcsema_real_eip !19
  %206 = zext i1 %205 to i8, !mcsema_real_eip !19
  store volatile i8 %206, i8* %PF_write, !mcsema_real_eip !19
  %207 = icmp eq i32 %194, 0, !mcsema_real_eip !19
  %208 = zext i1 %207 to i8, !mcsema_real_eip !19
  store volatile i8 %208, i8* %ZF_write, !mcsema_real_eip !19
  %209 = lshr i32 %194, 31, !mcsema_real_eip !19
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !19
  %211 = zext i1 %210 to i8, !mcsema_real_eip !19
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !19
  %213 = zext i1 %212 to i8, !mcsema_real_eip !19
  store volatile i8 %213, i8* %SF_write, !mcsema_real_eip !19
  %214 = icmp ult i32 %193, 0, !mcsema_real_eip !19
  %215 = zext i1 %214 to i8, !mcsema_real_eip !19
  store volatile i8 %215, i8* %CF_write, !mcsema_real_eip !19
  %216 = xor i32 %193, 0, !mcsema_real_eip !19
  %217 = xor i32 %193, %194, !mcsema_real_eip !19
  %218 = and i32 %216, %217, !mcsema_real_eip !19
  %219 = lshr i32 %218, 31, !mcsema_real_eip !19
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !19
  %221 = zext i1 %220 to i8, !mcsema_real_eip !19
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !19
  %223 = zext i1 %222 to i8, !mcsema_real_eip !19
  store volatile i8 %223, i8* %OF_write, !mcsema_real_eip !19
  store volatile i64 79, i64* %EIP_write, !mcsema_real_eip !20
  %224 = load i8, i8* %ZF_read, !mcsema_real_eip !20
  %225 = trunc i8 %224 to i1, !mcsema_real_eip !20
  %226 = icmp eq i1 %225, false, !mcsema_real_eip !20
  br i1 %226, label %block_62, label %block_55, !mcsema_real_eip !20

block_55:                                         ; preds = %block_33
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !21
  %227 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %228 = add i64 %227, -32, !mcsema_real_eip !21
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !21
  %230 = load i64, i64* %229, !mcsema_real_eip !21
  store volatile i64 %230, i64* %RDI_write, !mcsema_real_eip !21
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !22
  %231 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %232 = add i64 %231, -32, !mcsema_real_eip !22
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !22
  %234 = load i64, i64* %233, !mcsema_real_eip !22
  store volatile i64 %234, i64* %RSI_write, !mcsema_real_eip !22
  store volatile i64 93, i64* %EIP_write, !mcsema_real_eip !23
  %235 = load i64, i64* %RSP_read, !mcsema_real_eip !23
  %236 = sub i64 %235, 8, !mcsema_real_eip !23
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !23
  store i64 98, i64* %237, !mcsema_real_eip !23
  store volatile i64 %236, i64* %RSP_write, !mcsema_real_eip !23
  call x86_64_sysvcc void @doStuff(%RegState* %0), !mcsema_real_eip !23
  br label %block_62, !mcsema_real_eip !24

block_62:                                         ; preds = %block_55, %block_33
  store volatile i64 98, i64* %EIP_write, !mcsema_real_eip !24
  br label %block_67, !mcsema_real_eip !24

block_67:                                         ; preds = %block_62
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !25
  %238 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %239 = add i64 %238, -16, !mcsema_real_eip !25
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !25
  %241 = ptrtoint i64* %240 to i64, !mcsema_real_eip !25
  %242 = inttoptr i64 %241 to i32*, !mcsema_real_eip !25
  %243 = load i32, i32* %242, !mcsema_real_eip !25
  %244 = zext i32 %243 to i64, !mcsema_real_eip !25
  store volatile i64 %244, i64* %EAX_write, !mcsema_real_eip !25
  store volatile i64 106, i64* %EIP_write, !mcsema_real_eip !26
  %245 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %246 = add i32 1, %245, !mcsema_real_eip !26
  %247 = xor i32 %246, %245, !mcsema_real_eip !26
  %248 = xor i32 %247, 1, !mcsema_real_eip !26
  %249 = and i32 %248, 16, !mcsema_real_eip !26
  %250 = icmp ne i32 %249, 0, !mcsema_real_eip !26
  %251 = zext i1 %250 to i8, !mcsema_real_eip !26
  store volatile i8 %251, i8* %AF_write, !mcsema_real_eip !26
  %252 = lshr i32 %246, 31, !mcsema_real_eip !26
  %253 = trunc i32 %252 to i1, !mcsema_real_eip !26
  %254 = zext i1 %253 to i8, !mcsema_real_eip !26
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !26
  %256 = zext i1 %255 to i8, !mcsema_real_eip !26
  store volatile i8 %256, i8* %SF_write, !mcsema_real_eip !26
  %257 = icmp eq i32 %246, 0, !mcsema_real_eip !26
  %258 = zext i1 %257 to i8, !mcsema_real_eip !26
  store volatile i8 %258, i8* %ZF_write, !mcsema_real_eip !26
  %259 = xor i32 %245, 1, !mcsema_real_eip !26
  %260 = xor i32 %259, -1, !mcsema_real_eip !26
  %261 = xor i32 %245, %246, !mcsema_real_eip !26
  %262 = and i32 %260, %261, !mcsema_real_eip !26
  %263 = lshr i32 %262, 31, !mcsema_real_eip !26
  %264 = and i32 %263, 1, !mcsema_real_eip !26
  %265 = trunc i32 %264 to i1, !mcsema_real_eip !26
  %266 = zext i1 %265 to i8, !mcsema_real_eip !26
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !26
  %268 = zext i1 %267 to i8, !mcsema_real_eip !26
  store volatile i8 %268, i8* %OF_write, !mcsema_real_eip !26
  %269 = trunc i32 %246 to i8, !mcsema_real_eip !26
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !26
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !26
  %272 = zext i1 %271 to i8, !mcsema_real_eip !26
  %273 = xor i8 %272, 1, !mcsema_real_eip !26
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !26
  %275 = zext i1 %274 to i8, !mcsema_real_eip !26
  store volatile i8 %275, i8* %PF_write, !mcsema_real_eip !26
  %276 = icmp ult i32 %246, %245, !mcsema_real_eip !26
  %277 = zext i1 %276 to i8, !mcsema_real_eip !26
  store volatile i8 %277, i8* %CF_write, !mcsema_real_eip !26
  %278 = zext i32 %246 to i64, !mcsema_real_eip !26
  store volatile i64 %278, i64* %EAX_write, !mcsema_real_eip !26
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !27
  %279 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %280 = add i64 %279, -16, !mcsema_real_eip !27
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !27
  %282 = load i32, i32* %EAX_read, !mcsema_real_eip !27
  %283 = ptrtoint i64* %281 to i64, !mcsema_real_eip !27
  %284 = inttoptr i64 %283 to i32*, !mcsema_real_eip !27
  store i32 %282, i32* %284, !mcsema_real_eip !27
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !28
  br label %block_27, !mcsema_real_eip !28

block_75:                                         ; preds = %block_27
  store volatile i64 117, i64* %EIP_write, !mcsema_real_eip !29
  %285 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %286 = add i64 %285, -24, !mcsema_real_eip !29
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !29
  %288 = load i64, i64* %287, !mcsema_real_eip !29
  store volatile i64 %288, i64* %RAX_write, !mcsema_real_eip !29
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !30
  %289 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %290 = add i64 %289, 1, !mcsema_real_eip !30
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !30
  %292 = ptrtoint i64* %291 to i64, !mcsema_real_eip !30
  %293 = inttoptr i64 %292 to i8*, !mcsema_real_eip !30
  store i8 2, i8* %293, !mcsema_real_eip !30
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !31
  %294 = load i64, i64* %RSP_read, !mcsema_real_eip !31
  %295 = add i64 32, %294, !mcsema_real_eip !31
  %296 = xor i64 %295, %294, !mcsema_real_eip !31
  %297 = xor i64 %296, 32, !mcsema_real_eip !31
  %298 = and i64 %297, 16, !mcsema_real_eip !31
  %299 = icmp ne i64 %298, 0, !mcsema_real_eip !31
  %300 = zext i1 %299 to i8, !mcsema_real_eip !31
  store volatile i8 %300, i8* %AF_write, !mcsema_real_eip !31
  %301 = lshr i64 %295, 63, !mcsema_real_eip !31
  %302 = trunc i64 %301 to i1, !mcsema_real_eip !31
  %303 = zext i1 %302 to i8, !mcsema_real_eip !31
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !31
  %305 = zext i1 %304 to i8, !mcsema_real_eip !31
  store volatile i8 %305, i8* %SF_write, !mcsema_real_eip !31
  %306 = icmp eq i64 %295, 0, !mcsema_real_eip !31
  %307 = zext i1 %306 to i8, !mcsema_real_eip !31
  store volatile i8 %307, i8* %ZF_write, !mcsema_real_eip !31
  %308 = xor i64 %294, 32, !mcsema_real_eip !31
  %309 = xor i64 %308, -1, !mcsema_real_eip !31
  %310 = xor i64 %294, %295, !mcsema_real_eip !31
  %311 = and i64 %309, %310, !mcsema_real_eip !31
  %312 = lshr i64 %311, 63, !mcsema_real_eip !31
  %313 = and i64 %312, 1, !mcsema_real_eip !31
  %314 = trunc i64 %313 to i1, !mcsema_real_eip !31
  %315 = zext i1 %314 to i8, !mcsema_real_eip !31
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !31
  %317 = zext i1 %316 to i8, !mcsema_real_eip !31
  store volatile i8 %317, i8* %OF_write, !mcsema_real_eip !31
  %318 = trunc i64 %295 to i8, !mcsema_real_eip !31
  %319 = call i8 @llvm.ctpop.i8(i8 %318), !mcsema_real_eip !31
  %320 = trunc i8 %319 to i1, !mcsema_real_eip !31
  %321 = zext i1 %320 to i8, !mcsema_real_eip !31
  %322 = xor i8 %321, 1, !mcsema_real_eip !31
  %323 = trunc i8 %322 to i1, !mcsema_real_eip !31
  %324 = zext i1 %323 to i8, !mcsema_real_eip !31
  store volatile i8 %324, i8* %PF_write, !mcsema_real_eip !31
  %325 = icmp ult i64 %295, %294, !mcsema_real_eip !31
  %326 = zext i1 %325 to i8, !mcsema_real_eip !31
  store volatile i8 %326, i8* %CF_write, !mcsema_real_eip !31
  store volatile i64 %295, i64* %RSP_write, !mcsema_real_eip !31
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !32
  %327 = load i64, i64* %RSP_read, !mcsema_real_eip !32
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !32
  %329 = load i64, i64* %328, !mcsema_real_eip !32
  store volatile i64 %329, i64* %RBP_write, !mcsema_real_eip !32
  %330 = add i64 %327, 8, !mcsema_real_eip !32
  store volatile i64 %330, i64* %RSP_write, !mcsema_real_eip !32
  store volatile i64 130, i64* %EIP_write, !mcsema_real_eip !33
  %331 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  %332 = add i64 %331, 8, !mcsema_real_eip !33
  %333 = inttoptr i64 %331 to i64*, !mcsema_real_eip !33
  %334 = load i64, i64* %333, !mcsema_real_eip !33
  store volatile i64 %334, i64* %RIP_write, !mcsema_real_eip !33
  store volatile i64 %332, i64* %RSP_write, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !34
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !34
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !34
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !34
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !34
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !34
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !34
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !34
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !34
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !34
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !34
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !34
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !34
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !34
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !34
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !34
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !34
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !34
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !34
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !34
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !34
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !34
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !34
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !34
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !34
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !34
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !34
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !34
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !34
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !34
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !34
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !34
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !34
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !34
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !34
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !34
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !34
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !34
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !34
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !34
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !34
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !34
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !34
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !34
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !34
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !34
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !34
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !34
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !34
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !34
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !34
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !34
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !34
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !34
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !34
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !34
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !34
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !34
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !34
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !34
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !34
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !34
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !34
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !34
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !34
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !34
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !34
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !34
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !34
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !34
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !34
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !34
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !34
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !34
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !34
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !34
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !34
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !34
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !34
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !34
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !34
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !34
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !34
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !34
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !34
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !34
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !34
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !34
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !34
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !34
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !34
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !34
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !34
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !34
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !34
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !34
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !34
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !34
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !34
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !34
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !34
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !34
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !34
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !34
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !34
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !34
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !34
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !34
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !34
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !34
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !34
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !34
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !34
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !34
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !34
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !34
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !34
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !34
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !34
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !34
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !34
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !34
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !34
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !34
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !34
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !34
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !34
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !34
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !34
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !34
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !34
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !34
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !34
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !34
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !34
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !34
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !34
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !34
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !34
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !34
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !34
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !34
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !34
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !34
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !34
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !34
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !34
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !34
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !34
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !34
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !34
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !34
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !34
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !34
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !34
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !34
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !34
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !34
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !34
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !34
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !34
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !34
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !34
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !34
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !34
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !34
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !34
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !34
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !34
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !34
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !34
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !34
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !34
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !34
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !34
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !34
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !34
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !34
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !34
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !34
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !34
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !34
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !34
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !34
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !34
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !34
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !34
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !34
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !34
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !34
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !34
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !34
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !34
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !34
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !34
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !34
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !34
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !34
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !34
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !34
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !34
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !34
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !34
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !34
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !34
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !34
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !34
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !34
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !34
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !34
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !34
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !34
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !34
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !34
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !34
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !34
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !34
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !34
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !34
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !34
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !34
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !34
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !34
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !34
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !34
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !34
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !34
  br label %block_90, !mcsema_real_eip !34

block_90:                                         ; preds = %entry
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !34
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !34
  %3 = sub i64 %2, 8, !mcsema_real_eip !34
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !34
  store i64 %1, i64* %4, !mcsema_real_eip !34
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !34
  store volatile i64 145, i64* %EIP_write, !mcsema_real_eip !35
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !35
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !35
  store volatile i64 148, i64* %EIP_write, !mcsema_real_eip !36
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %7 = sext i8 32 to i64, !mcsema_real_eip !36
  %8 = sub i64 %6, %7, !mcsema_real_eip !36
  %9 = xor i64 %8, %6, !mcsema_real_eip !36
  %10 = xor i64 %9, %7, !mcsema_real_eip !36
  %11 = and i64 %10, 16, !mcsema_real_eip !36
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !36
  %13 = zext i1 %12 to i8, !mcsema_real_eip !36
  store volatile i8 %13, i8* %AF_write, !mcsema_real_eip !36
  %14 = trunc i64 %8 to i8, !mcsema_real_eip !36
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !36
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !36
  %17 = zext i1 %16 to i8, !mcsema_real_eip !36
  %18 = xor i8 %17, 1, !mcsema_real_eip !36
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !36
  %20 = zext i1 %19 to i8, !mcsema_real_eip !36
  store volatile i8 %20, i8* %PF_write, !mcsema_real_eip !36
  %21 = icmp eq i64 %8, 0, !mcsema_real_eip !36
  %22 = zext i1 %21 to i8, !mcsema_real_eip !36
  store volatile i8 %22, i8* %ZF_write, !mcsema_real_eip !36
  %23 = lshr i64 %8, 63, !mcsema_real_eip !36
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !36
  %25 = zext i1 %24 to i8, !mcsema_real_eip !36
  %26 = trunc i8 %25 to i1, !mcsema_real_eip !36
  %27 = zext i1 %26 to i8, !mcsema_real_eip !36
  store volatile i8 %27, i8* %SF_write, !mcsema_real_eip !36
  %28 = icmp ult i64 %6, %7, !mcsema_real_eip !36
  %29 = zext i1 %28 to i8, !mcsema_real_eip !36
  store volatile i8 %29, i8* %CF_write, !mcsema_real_eip !36
  %30 = xor i64 %6, %7, !mcsema_real_eip !36
  %31 = xor i64 %6, %8, !mcsema_real_eip !36
  %32 = and i64 %30, %31, !mcsema_real_eip !36
  %33 = lshr i64 %32, 63, !mcsema_real_eip !36
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !36
  %35 = zext i1 %34 to i8, !mcsema_real_eip !36
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !36
  %37 = zext i1 %36 to i8, !mcsema_real_eip !36
  store volatile i8 %37, i8* %OF_write, !mcsema_real_eip !36
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !36
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !37
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %39 = add i64 %38, -8, !mcsema_real_eip !37
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !37
  %41 = load i64, i64* %RDI_read, !mcsema_real_eip !37
  store i64 %41, i64* %40, !mcsema_real_eip !37
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !38
  %42 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %43 = add i64 %42, -12, !mcsema_real_eip !38
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !38
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !38
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !38
  store i32 1, i32* %46, !mcsema_real_eip !38
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !39
  %47 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %48 = add i64 %47, -8, !mcsema_real_eip !39
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !39
  %50 = load i64, i64* %49, !mcsema_real_eip !39
  store volatile i64 %50, i64* %RDI_write, !mcsema_real_eip !39
  store volatile i64 167, i64* %EIP_write, !mcsema_real_eip !40
  %51 = load i64, i64* %RDI_read, !mcsema_real_eip !40
  %52 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %53 = sub i64 %52, 8, !mcsema_real_eip !40
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !40
  store i64 -2415393069852865332, i64* %54, !mcsema_real_eip !40
  store volatile i64 %53, i64* %RSP_write, !mcsema_real_eip !40
  %55 = call x86_64_sysvcc i64 @_strlen(i64 %51), !mcsema_real_eip !40
  store volatile i64 %55, i64* %RAX_write, !mcsema_real_eip !40
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !41
  %56 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %57 = zext i32 %56 to i64, !mcsema_real_eip !41
  store volatile i64 %57, i64* %ECX_write, !mcsema_real_eip !41
  store volatile i64 174, i64* %EIP_write, !mcsema_real_eip !42
  %58 = load i64, i64* %RBP_read, !mcsema_real_eip !42
  %59 = add i64 %58, -16, !mcsema_real_eip !42
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !42
  %61 = load i32, i32* %ECX_read, !mcsema_real_eip !42
  %62 = ptrtoint i64* %60 to i64, !mcsema_real_eip !42
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !42
  store i32 %61, i32* %63, !mcsema_real_eip !42
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !43
  %64 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %65 = add i64 %64, -16, !mcsema_real_eip !43
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !43
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !43
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !43
  %69 = load i32, i32* %68, !mcsema_real_eip !43
  %70 = sub i32 %69, 1, !mcsema_real_eip !43
  %71 = xor i32 %70, %69, !mcsema_real_eip !43
  %72 = xor i32 %71, 1, !mcsema_real_eip !43
  %73 = and i32 %72, 16, !mcsema_real_eip !43
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !43
  %75 = zext i1 %74 to i8, !mcsema_real_eip !43
  store volatile i8 %75, i8* %AF_write, !mcsema_real_eip !43
  %76 = trunc i32 %70 to i8, !mcsema_real_eip !43
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !43
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !43
  %79 = zext i1 %78 to i8, !mcsema_real_eip !43
  %80 = xor i8 %79, 1, !mcsema_real_eip !43
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !43
  %82 = zext i1 %81 to i8, !mcsema_real_eip !43
  store volatile i8 %82, i8* %PF_write, !mcsema_real_eip !43
  %83 = icmp eq i32 %70, 0, !mcsema_real_eip !43
  %84 = zext i1 %83 to i8, !mcsema_real_eip !43
  store volatile i8 %84, i8* %ZF_write, !mcsema_real_eip !43
  %85 = lshr i32 %70, 31, !mcsema_real_eip !43
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !43
  %87 = zext i1 %86 to i8, !mcsema_real_eip !43
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !43
  %89 = zext i1 %88 to i8, !mcsema_real_eip !43
  store volatile i8 %89, i8* %SF_write, !mcsema_real_eip !43
  %90 = icmp ult i32 %69, 1, !mcsema_real_eip !43
  %91 = zext i1 %90 to i8, !mcsema_real_eip !43
  store volatile i8 %91, i8* %CF_write, !mcsema_real_eip !43
  %92 = xor i32 %69, 1, !mcsema_real_eip !43
  %93 = xor i32 %69, %70, !mcsema_real_eip !43
  %94 = and i32 %92, %93, !mcsema_real_eip !43
  %95 = lshr i32 %94, 31, !mcsema_real_eip !43
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !43
  %97 = zext i1 %96 to i8, !mcsema_real_eip !43
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !43
  %99 = zext i1 %98 to i8, !mcsema_real_eip !43
  store volatile i8 %99, i8* %OF_write, !mcsema_real_eip !43
  store volatile i64 181, i64* %EIP_write, !mcsema_real_eip !44
  %100 = load i8, i8* %ZF_read, !mcsema_real_eip !44
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !44
  %102 = icmp eq i1 %101, true, !mcsema_real_eip !44
  %103 = load i8, i8* %SF_read, !mcsema_real_eip !44
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !44
  %105 = load i8, i8* %OF_read, !mcsema_real_eip !44
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !44
  %107 = icmp eq i1 %104, %106, !mcsema_real_eip !44
  %108 = icmp eq i1 %107, false, !mcsema_real_eip !44
  %109 = or i1 %102, %108, !mcsema_real_eip !44
  br i1 %109, label %block_f3, label %block_bb, !mcsema_real_eip !44

block_bb:                                         ; preds = %block_90
  store volatile i64 187, i64* %EIP_write, !mcsema_real_eip !45
  %110 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %111 = add i64 %110, -8, !mcsema_real_eip !45
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !45
  %113 = load i64, i64* %112, !mcsema_real_eip !45
  store volatile i64 %113, i64* %RAX_write, !mcsema_real_eip !45
  store volatile i64 191, i64* %EIP_write, !mcsema_real_eip !46
  %114 = load i64, i64* %RAX_read, !mcsema_real_eip !46
  %115 = add i64 %114, 0, !mcsema_real_eip !46
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !46
  %117 = ptrtoint i64* %116 to i64, !mcsema_real_eip !46
  %118 = inttoptr i64 %117 to i8*, !mcsema_real_eip !46
  %119 = load i8, i8* %118, !mcsema_real_eip !46
  store volatile i8 %119, i8* %CL_write, !mcsema_real_eip !46
  store volatile i64 193, i64* %EIP_write, !mcsema_real_eip !47
  %120 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %121 = add i64 %120, -17, !mcsema_real_eip !47
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !47
  %123 = load i8, i8* %CL_read, !mcsema_real_eip !47
  %124 = ptrtoint i64* %122 to i64, !mcsema_real_eip !47
  %125 = inttoptr i64 %124 to i8*, !mcsema_real_eip !47
  store i8 %123, i8* %125, !mcsema_real_eip !47
  store volatile i64 196, i64* %EIP_write, !mcsema_real_eip !48
  %126 = load i64, i64* %RBP_read, !mcsema_real_eip !48
  %127 = add i64 %126, -16, !mcsema_real_eip !48
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !48
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !48
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !48
  %131 = load i32, i32* %130, !mcsema_real_eip !48
  %132 = zext i32 %131 to i64, !mcsema_real_eip !48
  store volatile i64 %132, i64* %EDX_write, !mcsema_real_eip !48
  store volatile i64 199, i64* %EIP_write, !mcsema_real_eip !49
  %133 = load i32, i32* %EDX_read, !mcsema_real_eip !49
  %134 = sub i32 %133, 1, !mcsema_real_eip !49
  %135 = xor i32 %134, %133, !mcsema_real_eip !49
  %136 = xor i32 %135, 1, !mcsema_real_eip !49
  %137 = and i32 %136, 16, !mcsema_real_eip !49
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !49
  %139 = zext i1 %138 to i8, !mcsema_real_eip !49
  store volatile i8 %139, i8* %AF_write, !mcsema_real_eip !49
  %140 = trunc i32 %134 to i8, !mcsema_real_eip !49
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !49
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !49
  %143 = zext i1 %142 to i8, !mcsema_real_eip !49
  %144 = xor i8 %143, 1, !mcsema_real_eip !49
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !49
  %146 = zext i1 %145 to i8, !mcsema_real_eip !49
  store volatile i8 %146, i8* %PF_write, !mcsema_real_eip !49
  %147 = icmp eq i32 %134, 0, !mcsema_real_eip !49
  %148 = zext i1 %147 to i8, !mcsema_real_eip !49
  store volatile i8 %148, i8* %ZF_write, !mcsema_real_eip !49
  %149 = lshr i32 %134, 31, !mcsema_real_eip !49
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !49
  %151 = zext i1 %150 to i8, !mcsema_real_eip !49
  %152 = trunc i8 %151 to i1, !mcsema_real_eip !49
  %153 = zext i1 %152 to i8, !mcsema_real_eip !49
  store volatile i8 %153, i8* %SF_write, !mcsema_real_eip !49
  %154 = icmp ult i32 %133, 1, !mcsema_real_eip !49
  %155 = zext i1 %154 to i8, !mcsema_real_eip !49
  store volatile i8 %155, i8* %CF_write, !mcsema_real_eip !49
  %156 = xor i32 %133, 1, !mcsema_real_eip !49
  %157 = xor i32 %133, %134, !mcsema_real_eip !49
  %158 = and i32 %156, %157, !mcsema_real_eip !49
  %159 = lshr i32 %158, 31, !mcsema_real_eip !49
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !49
  %161 = zext i1 %160 to i8, !mcsema_real_eip !49
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !49
  %163 = zext i1 %162 to i8, !mcsema_real_eip !49
  store volatile i8 %163, i8* %OF_write, !mcsema_real_eip !49
  %164 = zext i32 %134 to i64, !mcsema_real_eip !49
  store volatile i64 %164, i64* %EDX_write, !mcsema_real_eip !49
  store volatile i64 202, i64* %EIP_write, !mcsema_real_eip !50
  %165 = load i32, i32* %EDX_read, !mcsema_real_eip !50
  %166 = sext i32 %165 to i64, !mcsema_real_eip !50
  store volatile i64 %166, i64* %RAX_write, !mcsema_real_eip !50
  store volatile i64 205, i64* %EIP_write, !mcsema_real_eip !51
  %167 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %168 = add i64 %167, -8, !mcsema_real_eip !51
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !51
  %170 = load i64, i64* %169, !mcsema_real_eip !51
  store volatile i64 %170, i64* %RSI_write, !mcsema_real_eip !51
  store volatile i64 209, i64* %EIP_write, !mcsema_real_eip !52
  %171 = load i64, i64* %RSI_read, !mcsema_real_eip !52
  %172 = add i64 %171, 0, !mcsema_real_eip !52
  %173 = load i64, i64* %RAX_read, !mcsema_real_eip !52
  %174 = add i64 %172, %173, !mcsema_real_eip !52
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !52
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !52
  %177 = inttoptr i64 %176 to i8*, !mcsema_real_eip !52
  %178 = load i8, i8* %177, !mcsema_real_eip !52
  store volatile i8 %178, i8* %CL_write, !mcsema_real_eip !52
  store volatile i64 212, i64* %EIP_write, !mcsema_real_eip !53
  %179 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %180 = add i64 %179, -18, !mcsema_real_eip !53
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !53
  %182 = load i8, i8* %CL_read, !mcsema_real_eip !53
  %183 = ptrtoint i64* %181 to i64, !mcsema_real_eip !53
  %184 = inttoptr i64 %183 to i8*, !mcsema_real_eip !53
  store i8 %182, i8* %184, !mcsema_real_eip !53
  store volatile i64 215, i64* %EIP_write, !mcsema_real_eip !54
  %185 = load i64, i64* %RBP_read, !mcsema_real_eip !54
  %186 = add i64 %185, -17, !mcsema_real_eip !54
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !54
  %188 = ptrtoint i64* %187 to i64, !mcsema_real_eip !54
  %189 = inttoptr i64 %188 to i8*, !mcsema_real_eip !54
  %190 = load i8, i8* %189, !mcsema_real_eip !54
  %191 = sext i8 %190 to i32, !mcsema_real_eip !54
  %192 = zext i32 %191 to i64, !mcsema_real_eip !54
  store volatile i64 %192, i64* %EDX_write, !mcsema_real_eip !54
  store volatile i64 219, i64* %EIP_write, !mcsema_real_eip !55
  %193 = load i64, i64* %RBP_read, !mcsema_real_eip !55
  %194 = add i64 %193, -18, !mcsema_real_eip !55
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !55
  %196 = ptrtoint i64* %195 to i64, !mcsema_real_eip !55
  %197 = inttoptr i64 %196 to i8*, !mcsema_real_eip !55
  %198 = load i8, i8* %197, !mcsema_real_eip !55
  %199 = sext i8 %198 to i32, !mcsema_real_eip !55
  %200 = zext i32 %199 to i64, !mcsema_real_eip !55
  store volatile i64 %200, i64* %EDI_write, !mcsema_real_eip !55
  store volatile i64 223, i64* %EIP_write, !mcsema_real_eip !56
  %201 = load i32, i32* %EDX_read, !mcsema_real_eip !56
  %202 = load i32, i32* %EDI_read, !mcsema_real_eip !56
  %203 = sub i32 %201, %202, !mcsema_real_eip !56
  %204 = xor i32 %203, %201, !mcsema_real_eip !56
  %205 = xor i32 %204, %202, !mcsema_real_eip !56
  %206 = and i32 %205, 16, !mcsema_real_eip !56
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !56
  %208 = zext i1 %207 to i8, !mcsema_real_eip !56
  store volatile i8 %208, i8* %AF_write, !mcsema_real_eip !56
  %209 = trunc i32 %203 to i8, !mcsema_real_eip !56
  %210 = call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !56
  %211 = trunc i8 %210 to i1, !mcsema_real_eip !56
  %212 = zext i1 %211 to i8, !mcsema_real_eip !56
  %213 = xor i8 %212, 1, !mcsema_real_eip !56
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !56
  %215 = zext i1 %214 to i8, !mcsema_real_eip !56
  store volatile i8 %215, i8* %PF_write, !mcsema_real_eip !56
  %216 = icmp eq i32 %203, 0, !mcsema_real_eip !56
  %217 = zext i1 %216 to i8, !mcsema_real_eip !56
  store volatile i8 %217, i8* %ZF_write, !mcsema_real_eip !56
  %218 = lshr i32 %203, 31, !mcsema_real_eip !56
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !56
  %220 = zext i1 %219 to i8, !mcsema_real_eip !56
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !56
  %222 = zext i1 %221 to i8, !mcsema_real_eip !56
  store volatile i8 %222, i8* %SF_write, !mcsema_real_eip !56
  %223 = icmp ult i32 %201, %202, !mcsema_real_eip !56
  %224 = zext i1 %223 to i8, !mcsema_real_eip !56
  store volatile i8 %224, i8* %CF_write, !mcsema_real_eip !56
  %225 = xor i32 %201, %202, !mcsema_real_eip !56
  %226 = xor i32 %201, %203, !mcsema_real_eip !56
  %227 = and i32 %225, %226, !mcsema_real_eip !56
  %228 = lshr i32 %227, 31, !mcsema_real_eip !56
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !56
  %230 = zext i1 %229 to i8, !mcsema_real_eip !56
  %231 = trunc i8 %230 to i1, !mcsema_real_eip !56
  %232 = zext i1 %231 to i8, !mcsema_real_eip !56
  store volatile i8 %232, i8* %OF_write, !mcsema_real_eip !56
  store volatile i64 225, i64* %EIP_write, !mcsema_real_eip !57
  %233 = load i8, i8* %ZF_read, !mcsema_real_eip !57
  %234 = trunc i8 %233 to i1, !mcsema_real_eip !57
  %235 = icmp eq i1 %234, false, !mcsema_real_eip !57
  br i1 %235, label %block_ee, label %block_e7, !mcsema_real_eip !57

block_e7:                                         ; preds = %block_bb
  store volatile i64 231, i64* %EIP_write, !mcsema_real_eip !58
  %236 = load i64, i64* %RBP_read, !mcsema_real_eip !58
  %237 = add i64 %236, -12, !mcsema_real_eip !58
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !58
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !58
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !58
  store i32 0, i32* %240, !mcsema_real_eip !58
  br label %block_ee, !mcsema_real_eip !59

block_ee:                                         ; preds = %block_e7, %block_bb
  store volatile i64 238, i64* %EIP_write, !mcsema_real_eip !59
  br label %block_f3, !mcsema_real_eip !59

block_f3:                                         ; preds = %block_ee, %block_90
  store volatile i64 243, i64* %EIP_write, !mcsema_real_eip !60
  %241 = load i64, i64* %RBP_read, !mcsema_real_eip !60
  %242 = add i64 %241, -12, !mcsema_real_eip !60
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !60
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !60
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !60
  %246 = load i32, i32* %245, !mcsema_real_eip !60
  %247 = zext i32 %246 to i64, !mcsema_real_eip !60
  store volatile i64 %247, i64* %EAX_write, !mcsema_real_eip !60
  store volatile i64 246, i64* %EIP_write, !mcsema_real_eip !61
  %248 = load i64, i64* %RSP_read, !mcsema_real_eip !61
  %249 = add i64 32, %248, !mcsema_real_eip !61
  %250 = xor i64 %249, %248, !mcsema_real_eip !61
  %251 = xor i64 %250, 32, !mcsema_real_eip !61
  %252 = and i64 %251, 16, !mcsema_real_eip !61
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !61
  %254 = zext i1 %253 to i8, !mcsema_real_eip !61
  store volatile i8 %254, i8* %AF_write, !mcsema_real_eip !61
  %255 = lshr i64 %249, 63, !mcsema_real_eip !61
  %256 = trunc i64 %255 to i1, !mcsema_real_eip !61
  %257 = zext i1 %256 to i8, !mcsema_real_eip !61
  %258 = trunc i8 %257 to i1, !mcsema_real_eip !61
  %259 = zext i1 %258 to i8, !mcsema_real_eip !61
  store volatile i8 %259, i8* %SF_write, !mcsema_real_eip !61
  %260 = icmp eq i64 %249, 0, !mcsema_real_eip !61
  %261 = zext i1 %260 to i8, !mcsema_real_eip !61
  store volatile i8 %261, i8* %ZF_write, !mcsema_real_eip !61
  %262 = xor i64 %248, 32, !mcsema_real_eip !61
  %263 = xor i64 %262, -1, !mcsema_real_eip !61
  %264 = xor i64 %248, %249, !mcsema_real_eip !61
  %265 = and i64 %263, %264, !mcsema_real_eip !61
  %266 = lshr i64 %265, 63, !mcsema_real_eip !61
  %267 = and i64 %266, 1, !mcsema_real_eip !61
  %268 = trunc i64 %267 to i1, !mcsema_real_eip !61
  %269 = zext i1 %268 to i8, !mcsema_real_eip !61
  %270 = trunc i8 %269 to i1, !mcsema_real_eip !61
  %271 = zext i1 %270 to i8, !mcsema_real_eip !61
  store volatile i8 %271, i8* %OF_write, !mcsema_real_eip !61
  %272 = trunc i64 %249 to i8, !mcsema_real_eip !61
  %273 = call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !61
  %274 = trunc i8 %273 to i1, !mcsema_real_eip !61
  %275 = zext i1 %274 to i8, !mcsema_real_eip !61
  %276 = xor i8 %275, 1, !mcsema_real_eip !61
  %277 = trunc i8 %276 to i1, !mcsema_real_eip !61
  %278 = zext i1 %277 to i8, !mcsema_real_eip !61
  store volatile i8 %278, i8* %PF_write, !mcsema_real_eip !61
  %279 = icmp ult i64 %249, %248, !mcsema_real_eip !61
  %280 = zext i1 %279 to i8, !mcsema_real_eip !61
  store volatile i8 %280, i8* %CF_write, !mcsema_real_eip !61
  store volatile i64 %249, i64* %RSP_write, !mcsema_real_eip !61
  store volatile i64 250, i64* %EIP_write, !mcsema_real_eip !62
  %281 = load i64, i64* %RSP_read, !mcsema_real_eip !62
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !62
  %283 = load i64, i64* %282, !mcsema_real_eip !62
  store volatile i64 %283, i64* %RBP_write, !mcsema_real_eip !62
  %284 = add i64 %281, 8, !mcsema_real_eip !62
  store volatile i64 %284, i64* %RSP_write, !mcsema_real_eip !62
  store volatile i64 251, i64* %EIP_write, !mcsema_real_eip !63
  %285 = load i64, i64* %RSP_read, !mcsema_real_eip !63
  %286 = add i64 %285, 8, !mcsema_real_eip !63
  %287 = inttoptr i64 %285 to i64*, !mcsema_real_eip !63
  %288 = load i64, i64* %287, !mcsema_real_eip !63
  store volatile i64 %288, i64* %RIP_write, !mcsema_real_eip !63
  store volatile i64 %286, i64* %RSP_write, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !64
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !64
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !64
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !64
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !64
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !64
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !64
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !64
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !64
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !64
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !64
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !64
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !64
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !64
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !64
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !64
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !64
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !64
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !64
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !64
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !64
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !64
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !64
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !64
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !64
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !64
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !64
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !64
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !64
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !64
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !64
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !64
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !64
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !64
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !64
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !64
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !64
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !64
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !64
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !64
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !64
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !64
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !64
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !64
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !64
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !64
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !64
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !64
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !64
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !64
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !64
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !64
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !64
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !64
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !64
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !64
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !64
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !64
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !64
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !64
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !64
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !64
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !64
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !64
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !64
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !64
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !64
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !64
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !64
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !64
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !64
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !64
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !64
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !64
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !64
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !64
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !64
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !64
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !64
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !64
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !64
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !64
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !64
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !64
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !64
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !64
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !64
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !64
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !64
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !64
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !64
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !64
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !64
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !64
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !64
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !64
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !64
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !64
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !64
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !64
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !64
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !64
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !64
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !64
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !64
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !64
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !64
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !64
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !64
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !64
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !64
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !64
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !64
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !64
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !64
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !64
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !64
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !64
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !64
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !64
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !64
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !64
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !64
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !64
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !64
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !64
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !64
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !64
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !64
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !64
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !64
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !64
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !64
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !64
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !64
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !64
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !64
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !64
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !64
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !64
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !64
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !64
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !64
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !64
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !64
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !64
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !64
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !64
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !64
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !64
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !64
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !64
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !64
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !64
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !64
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !64
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !64
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !64
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !64
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !64
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !64
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !64
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !64
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !64
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !64
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !64
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !64
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !64
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !64
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !64
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !64
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !64
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !64
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !64
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !64
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !64
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !64
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !64
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !64
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !64
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !64
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !64
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !64
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !64
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !64
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !64
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !64
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !64
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !64
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !64
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !64
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !64
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !64
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !64
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !64
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !64
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !64
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !64
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !64
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !64
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !64
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !64
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !64
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !64
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !64
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !64
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !64
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !64
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !64
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !64
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !64
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !64
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !64
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !64
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !64
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !64
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !64
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !64
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !64
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !64
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !64
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !64
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !64
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !64
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !64
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !64
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !64
  br label %block_100, !mcsema_real_eip !64

block_100:                                        ; preds = %entry
  store volatile i64 256, i64* %EIP_write, !mcsema_real_eip !64
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !64
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !64
  %3 = sub i64 %2, 8, !mcsema_real_eip !64
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !64
  store i64 %1, i64* %4, !mcsema_real_eip !64
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !64
  store volatile i64 257, i64* %EIP_write, !mcsema_real_eip !65
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !65
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !65
  store volatile i64 260, i64* %EIP_write, !mcsema_real_eip !66
  %6 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %7 = add i64 %6, -8, !mcsema_real_eip !66
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !66
  %9 = load i64, i64* %RDI_read, !mcsema_real_eip !66
  store i64 %9, i64* %8, !mcsema_real_eip !66
  store volatile i64 264, i64* %EIP_write, !mcsema_real_eip !67
  %10 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %11 = add i64 %10, -16, !mcsema_real_eip !67
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !67
  %13 = load i64, i64* %RSI_read, !mcsema_real_eip !67
  store i64 %13, i64* %12, !mcsema_real_eip !67
  store volatile i64 268, i64* %EIP_write, !mcsema_real_eip !68
  %14 = load i64, i64* %RBP_read, !mcsema_real_eip !68
  %15 = add i64 %14, -8, !mcsema_real_eip !68
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !68
  %17 = load i64, i64* %16, !mcsema_real_eip !68
  store volatile i64 %17, i64* %RSI_write, !mcsema_real_eip !68
  store volatile i64 272, i64* %EIP_write, !mcsema_real_eip !69
  %18 = load i64, i64* %RBP_read, !mcsema_real_eip !69
  %19 = add i64 %18, -24, !mcsema_real_eip !69
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !69
  %21 = load i64, i64* %RSI_read, !mcsema_real_eip !69
  store i64 %21, i64* %20, !mcsema_real_eip !69
  store volatile i64 276, i64* %EIP_write, !mcsema_real_eip !70
  %22 = load i64, i64* %RBP_read, !mcsema_real_eip !70
  %23 = add i64 %22, -16, !mcsema_real_eip !70
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !70
  %25 = load i64, i64* %24, !mcsema_real_eip !70
  store volatile i64 %25, i64* %RSI_write, !mcsema_real_eip !70
  store volatile i64 280, i64* %EIP_write, !mcsema_real_eip !71
  %26 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %27 = add i64 %26, -32, !mcsema_real_eip !71
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !71
  %29 = load i64, i64* %RSI_read, !mcsema_real_eip !71
  store i64 %29, i64* %28, !mcsema_real_eip !71
  store volatile i64 284, i64* %EIP_write, !mcsema_real_eip !72
  %30 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %31 = add i64 %30, -24, !mcsema_real_eip !72
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !72
  %33 = load i64, i64* %32, !mcsema_real_eip !72
  store volatile i64 %33, i64* %RSI_write, !mcsema_real_eip !72
  store volatile i64 288, i64* %EIP_write, !mcsema_real_eip !73
  %34 = load i64, i64* %RSI_read, !mcsema_real_eip !73
  %35 = add i64 %34, 0, !mcsema_real_eip !73
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !73
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !73
  %38 = inttoptr i64 %37 to i8*, !mcsema_real_eip !73
  %39 = load i8, i8* %38, !mcsema_real_eip !73
  store volatile i8 %39, i8* %AL_write, !mcsema_real_eip !73
  store volatile i64 290, i64* %EIP_write, !mcsema_real_eip !74
  %40 = load i64, i64* %RBP_read, !mcsema_real_eip !74
  %41 = add i64 %40, -33, !mcsema_real_eip !74
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !74
  %43 = load i8, i8* %AL_read, !mcsema_real_eip !74
  %44 = ptrtoint i64* %42 to i64, !mcsema_real_eip !74
  %45 = inttoptr i64 %44 to i8*, !mcsema_real_eip !74
  store i8 %43, i8* %45, !mcsema_real_eip !74
  br label %block_125, !mcsema_real_eip !75

block_125:                                        ; preds = %block_154, %block_100
  store volatile i64 293, i64* %EIP_write, !mcsema_real_eip !75
  %46 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %47 = add i64 %46, -33, !mcsema_real_eip !75
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !75
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !75
  %50 = inttoptr i64 %49 to i8*, !mcsema_real_eip !75
  %51 = load i8, i8* %50, !mcsema_real_eip !75
  %52 = sext i8 %51 to i32, !mcsema_real_eip !75
  %53 = zext i32 %52 to i64, !mcsema_real_eip !75
  store volatile i64 %53, i64* %EAX_write, !mcsema_real_eip !75
  store volatile i64 297, i64* %EIP_write, !mcsema_real_eip !76
  %54 = load i32, i32* %EAX_read, !mcsema_real_eip !76
  %55 = sub i32 %54, 0, !mcsema_real_eip !76
  %56 = xor i32 %55, %54, !mcsema_real_eip !76
  %57 = xor i32 %56, 0, !mcsema_real_eip !76
  %58 = and i32 %57, 16, !mcsema_real_eip !76
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !76
  %60 = zext i1 %59 to i8, !mcsema_real_eip !76
  store volatile i8 %60, i8* %AF_write, !mcsema_real_eip !76
  %61 = trunc i32 %55 to i8, !mcsema_real_eip !76
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !76
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !76
  %64 = zext i1 %63 to i8, !mcsema_real_eip !76
  %65 = xor i8 %64, 1, !mcsema_real_eip !76
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !76
  %67 = zext i1 %66 to i8, !mcsema_real_eip !76
  store volatile i8 %67, i8* %PF_write, !mcsema_real_eip !76
  %68 = icmp eq i32 %55, 0, !mcsema_real_eip !76
  %69 = zext i1 %68 to i8, !mcsema_real_eip !76
  store volatile i8 %69, i8* %ZF_write, !mcsema_real_eip !76
  %70 = lshr i32 %55, 31, !mcsema_real_eip !76
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !76
  %72 = zext i1 %71 to i8, !mcsema_real_eip !76
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !76
  %74 = zext i1 %73 to i8, !mcsema_real_eip !76
  store volatile i8 %74, i8* %SF_write, !mcsema_real_eip !76
  %75 = icmp ult i32 %54, 0, !mcsema_real_eip !76
  %76 = zext i1 %75 to i8, !mcsema_real_eip !76
  store volatile i8 %76, i8* %CF_write, !mcsema_real_eip !76
  %77 = xor i32 %54, 0, !mcsema_real_eip !76
  %78 = xor i32 %54, %55, !mcsema_real_eip !76
  %79 = and i32 %77, %78, !mcsema_real_eip !76
  %80 = lshr i32 %79, 31, !mcsema_real_eip !76
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !76
  %82 = zext i1 %81 to i8, !mcsema_real_eip !76
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !76
  %84 = zext i1 %83 to i8, !mcsema_real_eip !76
  store volatile i8 %84, i8* %OF_write, !mcsema_real_eip !76
  store volatile i64 300, i64* %EIP_write, !mcsema_real_eip !77
  %85 = load i8, i8* %ZF_read, !mcsema_real_eip !77
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !77
  %87 = icmp eq i1 %86, true, !mcsema_real_eip !77
  br i1 %87, label %block_17a, label %block_132, !mcsema_real_eip !77

block_132:                                        ; preds = %block_125
  store volatile i64 306, i64* %EIP_write, !mcsema_real_eip !78
  %88 = load i64, i64* %RBP_read, !mcsema_real_eip !78
  %89 = add i64 %88, -33, !mcsema_real_eip !78
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !78
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !78
  %92 = inttoptr i64 %91 to i8*, !mcsema_real_eip !78
  %93 = load i8, i8* %92, !mcsema_real_eip !78
  %94 = sext i8 %93 to i32, !mcsema_real_eip !78
  %95 = zext i32 %94 to i64, !mcsema_real_eip !78
  store volatile i64 %95, i64* %EAX_write, !mcsema_real_eip !78
  store volatile i64 310, i64* %EIP_write, !mcsema_real_eip !79
  %96 = load i32, i32* %EAX_read, !mcsema_real_eip !79
  %97 = sub i32 %96, 47, !mcsema_real_eip !79
  %98 = xor i32 %97, %96, !mcsema_real_eip !79
  %99 = xor i32 %98, 47, !mcsema_real_eip !79
  %100 = and i32 %99, 16, !mcsema_real_eip !79
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !79
  %102 = zext i1 %101 to i8, !mcsema_real_eip !79
  store volatile i8 %102, i8* %AF_write, !mcsema_real_eip !79
  %103 = trunc i32 %97 to i8, !mcsema_real_eip !79
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !79
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !79
  %106 = zext i1 %105 to i8, !mcsema_real_eip !79
  %107 = xor i8 %106, 1, !mcsema_real_eip !79
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !79
  %109 = zext i1 %108 to i8, !mcsema_real_eip !79
  store volatile i8 %109, i8* %PF_write, !mcsema_real_eip !79
  %110 = icmp eq i32 %97, 0, !mcsema_real_eip !79
  %111 = zext i1 %110 to i8, !mcsema_real_eip !79
  store volatile i8 %111, i8* %ZF_write, !mcsema_real_eip !79
  %112 = lshr i32 %97, 31, !mcsema_real_eip !79
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !79
  %114 = zext i1 %113 to i8, !mcsema_real_eip !79
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !79
  %116 = zext i1 %115 to i8, !mcsema_real_eip !79
  store volatile i8 %116, i8* %SF_write, !mcsema_real_eip !79
  %117 = icmp ult i32 %96, 47, !mcsema_real_eip !79
  %118 = zext i1 %117 to i8, !mcsema_real_eip !79
  store volatile i8 %118, i8* %CF_write, !mcsema_real_eip !79
  %119 = xor i32 %96, 47, !mcsema_real_eip !79
  %120 = xor i32 %96, %97, !mcsema_real_eip !79
  %121 = and i32 %119, %120, !mcsema_real_eip !79
  %122 = lshr i32 %121, 31, !mcsema_real_eip !79
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !79
  %124 = zext i1 %123 to i8, !mcsema_real_eip !79
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !79
  %126 = zext i1 %125 to i8, !mcsema_real_eip !79
  store volatile i8 %126, i8* %OF_write, !mcsema_real_eip !79
  store volatile i64 313, i64* %EIP_write, !mcsema_real_eip !80
  %127 = load i8, i8* %ZF_read, !mcsema_real_eip !80
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !80
  %129 = icmp eq i1 %128, false, !mcsema_real_eip !80
  br i1 %129, label %block_14b, label %block_13f, !mcsema_real_eip !80

block_13f:                                        ; preds = %block_132
  store volatile i64 319, i64* %EIP_write, !mcsema_real_eip !81
  %130 = load i64, i64* %RBP_read, !mcsema_real_eip !81
  %131 = add i64 %130, -32, !mcsema_real_eip !81
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !81
  %133 = load i64, i64* %132, !mcsema_real_eip !81
  store volatile i64 %133, i64* %RAX_write, !mcsema_real_eip !81
  store volatile i64 323, i64* %EIP_write, !mcsema_real_eip !82
  %134 = load i64, i64* %RAX_read, !mcsema_real_eip !82
  %135 = add i64 %134, 0, !mcsema_real_eip !82
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !82
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !82
  %138 = inttoptr i64 %137 to i8*, !mcsema_real_eip !82
  store i8 92, i8* %138, !mcsema_real_eip !82
  store volatile i64 326, i64* %EIP_write, !mcsema_real_eip !83
  br label %block_154, !mcsema_real_eip !83

block_14b:                                        ; preds = %block_132
  store volatile i64 331, i64* %EIP_write, !mcsema_real_eip !84
  %139 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %140 = add i64 %139, -33, !mcsema_real_eip !84
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !84
  %142 = ptrtoint i64* %141 to i64, !mcsema_real_eip !84
  %143 = inttoptr i64 %142 to i8*, !mcsema_real_eip !84
  %144 = load i8, i8* %143, !mcsema_real_eip !84
  store volatile i8 %144, i8* %AL_write, !mcsema_real_eip !84
  store volatile i64 334, i64* %EIP_write, !mcsema_real_eip !85
  %145 = load i64, i64* %RBP_read, !mcsema_real_eip !85
  %146 = add i64 %145, -32, !mcsema_real_eip !85
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !85
  %148 = load i64, i64* %147, !mcsema_real_eip !85
  store volatile i64 %148, i64* %RCX_write, !mcsema_real_eip !85
  store volatile i64 338, i64* %EIP_write, !mcsema_real_eip !86
  %149 = load i64, i64* %RCX_read, !mcsema_real_eip !86
  %150 = add i64 %149, 0, !mcsema_real_eip !86
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !86
  %152 = load i8, i8* %AL_read, !mcsema_real_eip !86
  %153 = ptrtoint i64* %151 to i64, !mcsema_real_eip !86
  %154 = inttoptr i64 %153 to i8*, !mcsema_real_eip !86
  store i8 %152, i8* %154, !mcsema_real_eip !86
  br label %block_154, !mcsema_real_eip !87

block_154:                                        ; preds = %block_14b, %block_13f
  store volatile i64 340, i64* %EIP_write, !mcsema_real_eip !87
  %155 = load i64, i64* %RBP_read, !mcsema_real_eip !87
  %156 = add i64 %155, -24, !mcsema_real_eip !87
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !87
  %158 = load i64, i64* %157, !mcsema_real_eip !87
  store volatile i64 %158, i64* %RAX_write, !mcsema_real_eip !87
  store volatile i64 344, i64* %EIP_write, !mcsema_real_eip !88
  %159 = load i64, i64* %RAX_read, !mcsema_real_eip !88
  %160 = add i64 1, %159, !mcsema_real_eip !88
  %161 = xor i64 %160, %159, !mcsema_real_eip !88
  %162 = xor i64 %161, 1, !mcsema_real_eip !88
  %163 = and i64 %162, 16, !mcsema_real_eip !88
  %164 = icmp ne i64 %163, 0, !mcsema_real_eip !88
  %165 = zext i1 %164 to i8, !mcsema_real_eip !88
  store volatile i8 %165, i8* %AF_write, !mcsema_real_eip !88
  %166 = lshr i64 %160, 63, !mcsema_real_eip !88
  %167 = trunc i64 %166 to i1, !mcsema_real_eip !88
  %168 = zext i1 %167 to i8, !mcsema_real_eip !88
  %169 = trunc i8 %168 to i1, !mcsema_real_eip !88
  %170 = zext i1 %169 to i8, !mcsema_real_eip !88
  store volatile i8 %170, i8* %SF_write, !mcsema_real_eip !88
  %171 = icmp eq i64 %160, 0, !mcsema_real_eip !88
  %172 = zext i1 %171 to i8, !mcsema_real_eip !88
  store volatile i8 %172, i8* %ZF_write, !mcsema_real_eip !88
  %173 = xor i64 %159, 1, !mcsema_real_eip !88
  %174 = xor i64 %173, -1, !mcsema_real_eip !88
  %175 = xor i64 %159, %160, !mcsema_real_eip !88
  %176 = and i64 %174, %175, !mcsema_real_eip !88
  %177 = lshr i64 %176, 63, !mcsema_real_eip !88
  %178 = and i64 %177, 1, !mcsema_real_eip !88
  %179 = trunc i64 %178 to i1, !mcsema_real_eip !88
  %180 = zext i1 %179 to i8, !mcsema_real_eip !88
  %181 = trunc i8 %180 to i1, !mcsema_real_eip !88
  %182 = zext i1 %181 to i8, !mcsema_real_eip !88
  store volatile i8 %182, i8* %OF_write, !mcsema_real_eip !88
  %183 = trunc i64 %160 to i8, !mcsema_real_eip !88
  %184 = call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !88
  %185 = trunc i8 %184 to i1, !mcsema_real_eip !88
  %186 = zext i1 %185 to i8, !mcsema_real_eip !88
  %187 = xor i8 %186, 1, !mcsema_real_eip !88
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !88
  %189 = zext i1 %188 to i8, !mcsema_real_eip !88
  store volatile i8 %189, i8* %PF_write, !mcsema_real_eip !88
  %190 = icmp ult i64 %160, %159, !mcsema_real_eip !88
  %191 = zext i1 %190 to i8, !mcsema_real_eip !88
  store volatile i8 %191, i8* %CF_write, !mcsema_real_eip !88
  store volatile i64 %160, i64* %RAX_write, !mcsema_real_eip !88
  store volatile i64 348, i64* %EIP_write, !mcsema_real_eip !89
  %192 = load i64, i64* %RBP_read, !mcsema_real_eip !89
  %193 = add i64 %192, -24, !mcsema_real_eip !89
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !89
  %195 = load i64, i64* %RAX_read, !mcsema_real_eip !89
  store i64 %195, i64* %194, !mcsema_real_eip !89
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !90
  %196 = load i64, i64* %RBP_read, !mcsema_real_eip !90
  %197 = add i64 %196, -32, !mcsema_real_eip !90
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !90
  %199 = load i64, i64* %198, !mcsema_real_eip !90
  store volatile i64 %199, i64* %RAX_write, !mcsema_real_eip !90
  store volatile i64 356, i64* %EIP_write, !mcsema_real_eip !91
  %200 = load i64, i64* %RAX_read, !mcsema_real_eip !91
  %201 = add i64 1, %200, !mcsema_real_eip !91
  %202 = xor i64 %201, %200, !mcsema_real_eip !91
  %203 = xor i64 %202, 1, !mcsema_real_eip !91
  %204 = and i64 %203, 16, !mcsema_real_eip !91
  %205 = icmp ne i64 %204, 0, !mcsema_real_eip !91
  %206 = zext i1 %205 to i8, !mcsema_real_eip !91
  store volatile i8 %206, i8* %AF_write, !mcsema_real_eip !91
  %207 = lshr i64 %201, 63, !mcsema_real_eip !91
  %208 = trunc i64 %207 to i1, !mcsema_real_eip !91
  %209 = zext i1 %208 to i8, !mcsema_real_eip !91
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !91
  %211 = zext i1 %210 to i8, !mcsema_real_eip !91
  store volatile i8 %211, i8* %SF_write, !mcsema_real_eip !91
  %212 = icmp eq i64 %201, 0, !mcsema_real_eip !91
  %213 = zext i1 %212 to i8, !mcsema_real_eip !91
  store volatile i8 %213, i8* %ZF_write, !mcsema_real_eip !91
  %214 = xor i64 %200, 1, !mcsema_real_eip !91
  %215 = xor i64 %214, -1, !mcsema_real_eip !91
  %216 = xor i64 %200, %201, !mcsema_real_eip !91
  %217 = and i64 %215, %216, !mcsema_real_eip !91
  %218 = lshr i64 %217, 63, !mcsema_real_eip !91
  %219 = and i64 %218, 1, !mcsema_real_eip !91
  %220 = trunc i64 %219 to i1, !mcsema_real_eip !91
  %221 = zext i1 %220 to i8, !mcsema_real_eip !91
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !91
  %223 = zext i1 %222 to i8, !mcsema_real_eip !91
  store volatile i8 %223, i8* %OF_write, !mcsema_real_eip !91
  %224 = trunc i64 %201 to i8, !mcsema_real_eip !91
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !91
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !91
  %227 = zext i1 %226 to i8, !mcsema_real_eip !91
  %228 = xor i8 %227, 1, !mcsema_real_eip !91
  %229 = trunc i8 %228 to i1, !mcsema_real_eip !91
  %230 = zext i1 %229 to i8, !mcsema_real_eip !91
  store volatile i8 %230, i8* %PF_write, !mcsema_real_eip !91
  %231 = icmp ult i64 %201, %200, !mcsema_real_eip !91
  %232 = zext i1 %231 to i8, !mcsema_real_eip !91
  store volatile i8 %232, i8* %CF_write, !mcsema_real_eip !91
  store volatile i64 %201, i64* %RAX_write, !mcsema_real_eip !91
  store volatile i64 360, i64* %EIP_write, !mcsema_real_eip !92
  %233 = load i64, i64* %RBP_read, !mcsema_real_eip !92
  %234 = add i64 %233, -32, !mcsema_real_eip !92
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !92
  %236 = load i64, i64* %RAX_read, !mcsema_real_eip !92
  store i64 %236, i64* %235, !mcsema_real_eip !92
  store volatile i64 364, i64* %EIP_write, !mcsema_real_eip !93
  %237 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %238 = add i64 %237, -24, !mcsema_real_eip !93
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !93
  %240 = load i64, i64* %239, !mcsema_real_eip !93
  store volatile i64 %240, i64* %RAX_write, !mcsema_real_eip !93
  store volatile i64 368, i64* %EIP_write, !mcsema_real_eip !94
  %241 = load i64, i64* %RAX_read, !mcsema_real_eip !94
  %242 = add i64 %241, 0, !mcsema_real_eip !94
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !94
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !94
  %245 = inttoptr i64 %244 to i8*, !mcsema_real_eip !94
  %246 = load i8, i8* %245, !mcsema_real_eip !94
  store volatile i8 %246, i8* %CL_write, !mcsema_real_eip !94
  store volatile i64 370, i64* %EIP_write, !mcsema_real_eip !95
  %247 = load i64, i64* %RBP_read, !mcsema_real_eip !95
  %248 = add i64 %247, -33, !mcsema_real_eip !95
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !95
  %250 = load i8, i8* %CL_read, !mcsema_real_eip !95
  %251 = ptrtoint i64* %249 to i64, !mcsema_real_eip !95
  %252 = inttoptr i64 %251 to i8*, !mcsema_real_eip !95
  store i8 %250, i8* %252, !mcsema_real_eip !95
  store volatile i64 373, i64* %EIP_write, !mcsema_real_eip !96
  br label %block_125, !mcsema_real_eip !96

block_17a:                                        ; preds = %block_125
  store volatile i64 378, i64* %EIP_write, !mcsema_real_eip !97
  %253 = load i64, i64* %RSP_read, !mcsema_real_eip !97
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !97
  %255 = load i64, i64* %254, !mcsema_real_eip !97
  store volatile i64 %255, i64* %RBP_write, !mcsema_real_eip !97
  %256 = add i64 %253, 8, !mcsema_real_eip !97
  store volatile i64 %256, i64* %RSP_write, !mcsema_real_eip !97
  store volatile i64 379, i64* %EIP_write, !mcsema_real_eip !98
  %257 = load i64, i64* %RSP_read, !mcsema_real_eip !98
  %258 = add i64 %257, 8, !mcsema_real_eip !98
  %259 = inttoptr i64 %257 to i64*, !mcsema_real_eip !98
  %260 = load i64, i64* %259, !mcsema_real_eip !98
  store volatile i64 %260, i64* %RIP_write, !mcsema_real_eip !98
  store volatile i64 %258, i64* %RSP_write, !mcsema_real_eip !98
  ret void, !mcsema_real_eip !98
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!0 = !{i64 0}
!1 = !{i64 1}
!2 = !{i64 4}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 15}
!6 = !{i64 22}
!7 = !{i64 26}
!8 = !{i64 30}
!9 = !{i64 35}
!10 = !{i64 39}
!11 = !{i64 42}
!12 = !{i64 45}
!13 = !{i64 51}
!14 = !{i64 55}
!15 = !{i64 59}
!16 = !{i64 63}
!17 = !{i64 67}
!18 = !{i64 71}
!19 = !{i64 76}
!20 = !{i64 79}
!21 = !{i64 85}
!22 = !{i64 89}
!23 = !{i64 93}
!24 = !{i64 98}
!25 = !{i64 103}
!26 = !{i64 106}
!27 = !{i64 109}
!28 = !{i64 112}
!29 = !{i64 117}
!30 = !{i64 121}
!31 = !{i64 125}
!32 = !{i64 129}
!33 = !{i64 130}
!34 = !{i64 144}
!35 = !{i64 145}
!36 = !{i64 148}
!37 = !{i64 152}
!38 = !{i64 156}
!39 = !{i64 163}
!40 = !{i64 167}
!41 = !{i64 172}
!42 = !{i64 174}
!43 = !{i64 177}
!44 = !{i64 181}
!45 = !{i64 187}
!46 = !{i64 191}
!47 = !{i64 193}
!48 = !{i64 196}
!49 = !{i64 199}
!50 = !{i64 202}
!51 = !{i64 205}
!52 = !{i64 209}
!53 = !{i64 212}
!54 = !{i64 215}
!55 = !{i64 219}
!56 = !{i64 223}
!57 = !{i64 225}
!58 = !{i64 231}
!59 = !{i64 238}
!60 = !{i64 243}
!61 = !{i64 246}
!62 = !{i64 250}
!63 = !{i64 251}
!64 = !{i64 256}
!65 = !{i64 257}
!66 = !{i64 260}
!67 = !{i64 264}
!68 = !{i64 268}
!69 = !{i64 272}
!70 = !{i64 276}
!71 = !{i64 280}
!72 = !{i64 284}
!73 = !{i64 288}
!74 = !{i64 290}
!75 = !{i64 293}
!76 = !{i64 297}
!77 = !{i64 300}
!78 = !{i64 306}
!79 = !{i64 310}
!80 = !{i64 313}
!81 = !{i64 319}
!82 = !{i64 323}
!83 = !{i64 326}
!84 = !{i64 331}
!85 = !{i64 334}
!86 = !{i64 338}
!87 = !{i64 340}
!88 = !{i64 344}
!89 = !{i64 348}
!90 = !{i64 352}
!91 = !{i64 356}
!92 = !{i64 360}
!93 = !{i64 364}
!94 = !{i64 368}
!95 = !{i64 370}
!96 = !{i64 373}
!97 = !{i64 378}
!98 = !{i64 379}
