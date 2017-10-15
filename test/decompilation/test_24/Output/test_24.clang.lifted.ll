; ModuleID = 'Output/test_24.clang.lifted.bc'
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
module asm "  .globl to_byte;"
module asm "  .globl _to_byte;"
module asm "  .type _to_byte,@function"
module asm "_to_byte:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq to_byte@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _to_byte,0b-_to_byte;"
module asm "  .cfi_endproc;"
module asm "  .globl read_bytes;"
module asm "  .globl _read_bytes;"
module asm "  .type _read_bytes,@function"
module asm "_read_bytes:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read_bytes@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read_bytes,0b-_read_bytes;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl keycomp;"
module asm "  .type keycomp,@function"
module asm "keycomp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size keycomp,0b-keycomp;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_420 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c" \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %7 = sext i8 80 to i64, !mcsema_real_eip !2
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
  %51 = load i32, i32* %EAX_read, !mcsema_real_eip !6
  %52 = zext i32 %51 to i64, !mcsema_real_eip !6
  store volatile i64 %52, i64* %ECX_write, !mcsema_real_eip !6
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !7
  %53 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %54 = add i64 %53, -32, !mcsema_real_eip !7
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !7
  %56 = load i32, i32* %ECX_read, !mcsema_real_eip !7
  %57 = ptrtoint i64* %55 to i64, !mcsema_real_eip !7
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !7
  store i32 %56, i32* %58, !mcsema_real_eip !7
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !8
  %59 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %60 = add i64 %59, -32, !mcsema_real_eip !8
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !8
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !8
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !8
  %64 = load i32, i32* %63, !mcsema_real_eip !8
  %65 = sub i32 %64, 37, !mcsema_real_eip !8
  %66 = xor i32 %65, %64, !mcsema_real_eip !8
  %67 = xor i32 %66, 37, !mcsema_real_eip !8
  %68 = and i32 %67, 16, !mcsema_real_eip !8
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !8
  %70 = zext i1 %69 to i8, !mcsema_real_eip !8
  store volatile i8 %70, i8* %AF_write, !mcsema_real_eip !8
  %71 = trunc i32 %65 to i8, !mcsema_real_eip !8
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !8
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !8
  %74 = zext i1 %73 to i8, !mcsema_real_eip !8
  %75 = xor i8 %74, 1, !mcsema_real_eip !8
  %76 = trunc i8 %75 to i1, !mcsema_real_eip !8
  %77 = zext i1 %76 to i8, !mcsema_real_eip !8
  store volatile i8 %77, i8* %PF_write, !mcsema_real_eip !8
  %78 = icmp eq i32 %65, 0, !mcsema_real_eip !8
  %79 = zext i1 %78 to i8, !mcsema_real_eip !8
  store volatile i8 %79, i8* %ZF_write, !mcsema_real_eip !8
  %80 = lshr i32 %65, 31, !mcsema_real_eip !8
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !8
  %82 = zext i1 %81 to i8, !mcsema_real_eip !8
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !8
  %84 = zext i1 %83 to i8, !mcsema_real_eip !8
  store volatile i8 %84, i8* %SF_write, !mcsema_real_eip !8
  %85 = icmp ult i32 %64, 37, !mcsema_real_eip !8
  %86 = zext i1 %85 to i8, !mcsema_real_eip !8
  store volatile i8 %86, i8* %CF_write, !mcsema_real_eip !8
  %87 = xor i32 %64, 37, !mcsema_real_eip !8
  %88 = xor i32 %64, %65, !mcsema_real_eip !8
  %89 = and i32 %87, %88, !mcsema_real_eip !8
  %90 = lshr i32 %89, 31, !mcsema_real_eip !8
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !8
  %92 = zext i1 %91 to i8, !mcsema_real_eip !8
  %93 = trunc i8 %92 to i1, !mcsema_real_eip !8
  %94 = zext i1 %93 to i8, !mcsema_real_eip !8
  store volatile i8 %94, i8* %OF_write, !mcsema_real_eip !8
  store volatile i64 30, i64* %EIP_write, !mcsema_real_eip !9
  %95 = load i8, i8* %ZF_read, !mcsema_real_eip !9
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !9
  %97 = icmp eq i1 %96, true, !mcsema_real_eip !9
  br i1 %97, label %block_2f, label %block_24, !mcsema_real_eip !9

block_24:                                         ; preds = %block_0
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !10
  %98 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %99 = add i64 %98, -32, !mcsema_real_eip !10
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !10
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !10
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !10
  %103 = load i32, i32* %102, !mcsema_real_eip !10
  %104 = zext i32 %103 to i64, !mcsema_real_eip !10
  store volatile i64 %104, i64* %EAX_write, !mcsema_real_eip !10
  store volatile i64 39, i64* %EIP_write, !mcsema_real_eip !11
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %106 = add i64 %105, -4, !mcsema_real_eip !11
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !11
  %108 = load i32, i32* %EAX_read, !mcsema_real_eip !11
  %109 = ptrtoint i64* %107 to i64, !mcsema_real_eip !11
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !11
  store i32 %108, i32* %110, !mcsema_real_eip !11
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !12
  br label %block_417, !mcsema_real_eip !12

block_2f:                                         ; preds = %block_0
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !13
  %111 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %112 = add i64 %111, -16, !mcsema_real_eip !13
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !13
  %114 = load i64, i64* %113, !mcsema_real_eip !13
  store volatile i64 %114, i64* %RAX_write, !mcsema_real_eip !13
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !14
  %115 = load i64, i64* %RAX_read, !mcsema_real_eip !14
  %116 = add i64 4, %115, !mcsema_real_eip !14
  %117 = xor i64 %116, %115, !mcsema_real_eip !14
  %118 = xor i64 %117, 4, !mcsema_real_eip !14
  %119 = and i64 %118, 16, !mcsema_real_eip !14
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !14
  %121 = zext i1 %120 to i8, !mcsema_real_eip !14
  store volatile i8 %121, i8* %AF_write, !mcsema_real_eip !14
  %122 = lshr i64 %116, 63, !mcsema_real_eip !14
  %123 = trunc i64 %122 to i1, !mcsema_real_eip !14
  %124 = zext i1 %123 to i8, !mcsema_real_eip !14
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !14
  %126 = zext i1 %125 to i8, !mcsema_real_eip !14
  store volatile i8 %126, i8* %SF_write, !mcsema_real_eip !14
  %127 = icmp eq i64 %116, 0, !mcsema_real_eip !14
  %128 = zext i1 %127 to i8, !mcsema_real_eip !14
  store volatile i8 %128, i8* %ZF_write, !mcsema_real_eip !14
  %129 = xor i64 %115, 4, !mcsema_real_eip !14
  %130 = xor i64 %129, -1, !mcsema_real_eip !14
  %131 = xor i64 %115, %116, !mcsema_real_eip !14
  %132 = and i64 %130, %131, !mcsema_real_eip !14
  %133 = lshr i64 %132, 63, !mcsema_real_eip !14
  %134 = and i64 %133, 1, !mcsema_real_eip !14
  %135 = trunc i64 %134 to i1, !mcsema_real_eip !14
  %136 = zext i1 %135 to i8, !mcsema_real_eip !14
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !14
  %138 = zext i1 %137 to i8, !mcsema_real_eip !14
  store volatile i8 %138, i8* %OF_write, !mcsema_real_eip !14
  %139 = trunc i64 %116 to i8, !mcsema_real_eip !14
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !14
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !14
  %142 = zext i1 %141 to i8, !mcsema_real_eip !14
  %143 = xor i8 %142, 1, !mcsema_real_eip !14
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !14
  %145 = zext i1 %144 to i8, !mcsema_real_eip !14
  store volatile i8 %145, i8* %PF_write, !mcsema_real_eip !14
  %146 = icmp ult i64 %116, %115, !mcsema_real_eip !14
  %147 = zext i1 %146 to i8, !mcsema_real_eip !14
  store volatile i8 %147, i8* %CF_write, !mcsema_real_eip !14
  store volatile i64 %116, i64* %RAX_write, !mcsema_real_eip !14
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !15
  %148 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %149 = add i64 %148, -16, !mcsema_real_eip !15
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !15
  %151 = load i64, i64* %RAX_read, !mcsema_real_eip !15
  store i64 %151, i64* %150, !mcsema_real_eip !15
  store volatile i64 59, i64* %EIP_write, !mcsema_real_eip !16
  %152 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %153 = add i64 %152, -16, !mcsema_real_eip !16
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !16
  %155 = load i64, i64* %154, !mcsema_real_eip !16
  store volatile i64 %155, i64* %RAX_write, !mcsema_real_eip !16
  store volatile i64 63, i64* %EIP_write, !mcsema_real_eip !17
  %156 = load i64, i64* %RAX_read, !mcsema_real_eip !17
  %157 = add i64 %156, 0, !mcsema_real_eip !17
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !17
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !17
  %160 = inttoptr i64 %159 to i8*, !mcsema_real_eip !17
  %161 = load i8, i8* %160, !mcsema_real_eip !17
  %162 = sext i8 %161 to i32, !mcsema_real_eip !17
  %163 = zext i32 %162 to i64, !mcsema_real_eip !17
  store volatile i64 %163, i64* %ECX_write, !mcsema_real_eip !17
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !18
  %164 = load i32, i32* %ECX_read, !mcsema_real_eip !18
  %165 = sub i32 %164, 100, !mcsema_real_eip !18
  %166 = xor i32 %165, %164, !mcsema_real_eip !18
  %167 = xor i32 %166, 100, !mcsema_real_eip !18
  %168 = and i32 %167, 16, !mcsema_real_eip !18
  %169 = icmp ne i32 %168, 0, !mcsema_real_eip !18
  %170 = zext i1 %169 to i8, !mcsema_real_eip !18
  store volatile i8 %170, i8* %AF_write, !mcsema_real_eip !18
  %171 = trunc i32 %165 to i8, !mcsema_real_eip !18
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !18
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !18
  %174 = zext i1 %173 to i8, !mcsema_real_eip !18
  %175 = xor i8 %174, 1, !mcsema_real_eip !18
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !18
  %177 = zext i1 %176 to i8, !mcsema_real_eip !18
  store volatile i8 %177, i8* %PF_write, !mcsema_real_eip !18
  %178 = icmp eq i32 %165, 0, !mcsema_real_eip !18
  %179 = zext i1 %178 to i8, !mcsema_real_eip !18
  store volatile i8 %179, i8* %ZF_write, !mcsema_real_eip !18
  %180 = lshr i32 %165, 31, !mcsema_real_eip !18
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !18
  %182 = zext i1 %181 to i8, !mcsema_real_eip !18
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !18
  %184 = zext i1 %183 to i8, !mcsema_real_eip !18
  store volatile i8 %184, i8* %SF_write, !mcsema_real_eip !18
  %185 = icmp ult i32 %164, 100, !mcsema_real_eip !18
  %186 = zext i1 %185 to i8, !mcsema_real_eip !18
  store volatile i8 %186, i8* %CF_write, !mcsema_real_eip !18
  %187 = xor i32 %164, 100, !mcsema_real_eip !18
  %188 = xor i32 %164, %165, !mcsema_real_eip !18
  %189 = and i32 %187, %188, !mcsema_real_eip !18
  %190 = lshr i32 %189, 31, !mcsema_real_eip !18
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !18
  %192 = zext i1 %191 to i8, !mcsema_real_eip !18
  %193 = trunc i8 %192 to i1, !mcsema_real_eip !18
  %194 = zext i1 %193 to i8, !mcsema_real_eip !18
  store volatile i8 %194, i8* %OF_write, !mcsema_real_eip !18
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !19
  %195 = load i8, i8* %ZF_read, !mcsema_real_eip !19
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !19
  %197 = icmp eq i1 %196, true, !mcsema_real_eip !19
  br i1 %197, label %block_57, label %block_4b, !mcsema_real_eip !19

block_4b:                                         ; preds = %block_2f
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !20
  %198 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %199 = add i64 %198, -4, !mcsema_real_eip !20
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !20
  %201 = ptrtoint i64* %200 to i64, !mcsema_real_eip !20
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !20
  store i32 -2, i32* %202, !mcsema_real_eip !20
  store volatile i64 82, i64* %EIP_write, !mcsema_real_eip !21
  br label %block_417, !mcsema_real_eip !21

block_57:                                         ; preds = %block_2f
  store volatile i64 87, i64* %EIP_write, !mcsema_real_eip !22
  %203 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %204 = add i64 %203, -16, !mcsema_real_eip !22
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !22
  %206 = load i64, i64* %205, !mcsema_real_eip !22
  store volatile i64 %206, i64* %RAX_write, !mcsema_real_eip !22
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !23
  %207 = load i64, i64* %RAX_read, !mcsema_real_eip !23
  %208 = add i64 %207, 1, !mcsema_real_eip !23
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !23
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !23
  %211 = inttoptr i64 %210 to i8*, !mcsema_real_eip !23
  %212 = load i8, i8* %211, !mcsema_real_eip !23
  %213 = zext i8 %212 to i32, !mcsema_real_eip !23
  %214 = zext i32 %213 to i64, !mcsema_real_eip !23
  store volatile i64 %214, i64* %EDI_write, !mcsema_real_eip !23
  store volatile i64 95, i64* %EIP_write, !mcsema_real_eip !24
  %215 = load i64, i64* %RDI_read, !mcsema_real_eip !24
  %216 = load i64, i64* %RSP_read, !mcsema_real_eip !24
  %217 = sub i64 %216, 8, !mcsema_real_eip !24
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !24
  store i64 -2415393069852865332, i64* %218, !mcsema_real_eip !24
  store volatile i64 %217, i64* %RSP_write, !mcsema_real_eip !24
  %219 = call x86_64_sysvcc i64 @_to_byte(i64 %215), !mcsema_real_eip !24
  store volatile i64 %219, i64* %RAX_write, !mcsema_real_eip !24
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !25
  %220 = load i32, i32* %EAX_read, !mcsema_real_eip !25
  %221 = sub i32 %220, 9, !mcsema_real_eip !25
  %222 = xor i32 %221, %220, !mcsema_real_eip !25
  %223 = xor i32 %222, 9, !mcsema_real_eip !25
  %224 = and i32 %223, 16, !mcsema_real_eip !25
  %225 = icmp ne i32 %224, 0, !mcsema_real_eip !25
  %226 = zext i1 %225 to i8, !mcsema_real_eip !25
  store volatile i8 %226, i8* %AF_write, !mcsema_real_eip !25
  %227 = trunc i32 %221 to i8, !mcsema_real_eip !25
  %228 = call i8 @llvm.ctpop.i8(i8 %227), !mcsema_real_eip !25
  %229 = trunc i8 %228 to i1, !mcsema_real_eip !25
  %230 = zext i1 %229 to i8, !mcsema_real_eip !25
  %231 = xor i8 %230, 1, !mcsema_real_eip !25
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !25
  %233 = zext i1 %232 to i8, !mcsema_real_eip !25
  store volatile i8 %233, i8* %PF_write, !mcsema_real_eip !25
  %234 = icmp eq i32 %221, 0, !mcsema_real_eip !25
  %235 = zext i1 %234 to i8, !mcsema_real_eip !25
  store volatile i8 %235, i8* %ZF_write, !mcsema_real_eip !25
  %236 = lshr i32 %221, 31, !mcsema_real_eip !25
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !25
  %238 = zext i1 %237 to i8, !mcsema_real_eip !25
  %239 = trunc i8 %238 to i1, !mcsema_real_eip !25
  %240 = zext i1 %239 to i8, !mcsema_real_eip !25
  store volatile i8 %240, i8* %SF_write, !mcsema_real_eip !25
  %241 = icmp ult i32 %220, 9, !mcsema_real_eip !25
  %242 = zext i1 %241 to i8, !mcsema_real_eip !25
  store volatile i8 %242, i8* %CF_write, !mcsema_real_eip !25
  %243 = xor i32 %220, 9, !mcsema_real_eip !25
  %244 = xor i32 %220, %221, !mcsema_real_eip !25
  %245 = and i32 %243, %244, !mcsema_real_eip !25
  %246 = lshr i32 %245, 31, !mcsema_real_eip !25
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !25
  %248 = zext i1 %247 to i8, !mcsema_real_eip !25
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !25
  %250 = zext i1 %249 to i8, !mcsema_real_eip !25
  store volatile i8 %250, i8* %OF_write, !mcsema_real_eip !25
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !26
  %251 = load i8, i8* %ZF_read, !mcsema_real_eip !26
  %252 = trunc i8 %251 to i1, !mcsema_real_eip !26
  %253 = icmp eq i1 %252, true, !mcsema_real_eip !26
  br i1 %253, label %block_79, label %block_6d, !mcsema_real_eip !26

block_6d:                                         ; preds = %block_57
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !27
  %254 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %255 = add i64 %254, -4, !mcsema_real_eip !27
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !27
  %257 = ptrtoint i64* %256 to i64, !mcsema_real_eip !27
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !27
  store i32 -3, i32* %258, !mcsema_real_eip !27
  store volatile i64 116, i64* %EIP_write, !mcsema_real_eip !28
  br label %block_417, !mcsema_real_eip !28

block_79:                                         ; preds = %block_57
  store volatile i64 121, i64* %EIP_write, !mcsema_real_eip !29
  %259 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %260 = add i64 %259, -16, !mcsema_real_eip !29
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !29
  %262 = load i64, i64* %261, !mcsema_real_eip !29
  store volatile i64 %262, i64* %RAX_write, !mcsema_real_eip !29
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !30
  %263 = load i64, i64* %RAX_read, !mcsema_real_eip !30
  %264 = add i64 %263, 2, !mcsema_real_eip !30
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !30
  %266 = ptrtoint i64* %265 to i64, !mcsema_real_eip !30
  %267 = inttoptr i64 %266 to i8*, !mcsema_real_eip !30
  %268 = load i8, i8* %267, !mcsema_real_eip !30
  %269 = zext i8 %268 to i32, !mcsema_real_eip !30
  %270 = zext i32 %269 to i64, !mcsema_real_eip !30
  store volatile i64 %270, i64* %EDI_write, !mcsema_real_eip !30
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !31
  %271 = load i64, i64* %RDI_read, !mcsema_real_eip !31
  %272 = load i64, i64* %RSP_read, !mcsema_real_eip !31
  %273 = sub i64 %272, 8, !mcsema_real_eip !31
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !31
  store i64 -2415393069852865332, i64* %274, !mcsema_real_eip !31
  store volatile i64 %273, i64* %RSP_write, !mcsema_real_eip !31
  %275 = call x86_64_sysvcc i64 @_to_byte(i64 %271), !mcsema_real_eip !31
  store volatile i64 %275, i64* %RAX_write, !mcsema_real_eip !31
  store volatile i64 134, i64* %EIP_write, !mcsema_real_eip !32
  %276 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %277 = add i64 %276, -24, !mcsema_real_eip !32
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !32
  %279 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %280 = ptrtoint i64* %278 to i64, !mcsema_real_eip !32
  %281 = inttoptr i64 %280 to i32*, !mcsema_real_eip !32
  store i32 %279, i32* %281, !mcsema_real_eip !32
  store volatile i64 137, i64* %EIP_write, !mcsema_real_eip !33
  %282 = load i64, i64* %RBP_read, !mcsema_real_eip !33
  %283 = add i64 %282, -24, !mcsema_real_eip !33
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !33
  %285 = ptrtoint i64* %284 to i64, !mcsema_real_eip !33
  %286 = inttoptr i64 %285 to i32*, !mcsema_real_eip !33
  %287 = load i32, i32* %286, !mcsema_real_eip !33
  %288 = zext i32 %287 to i64, !mcsema_real_eip !33
  store volatile i64 %288, i64* %EAX_write, !mcsema_real_eip !33
  store volatile i64 140, i64* %EIP_write, !mcsema_real_eip !34
  %289 = load i32, i32* %EAX_read, !mcsema_real_eip !34
  %290 = and i32 1, 31, !mcsema_real_eip !34
  %291 = sub i32 1, 1, !mcsema_real_eip !34
  %292 = icmp ne i32 %290, 0, !mcsema_real_eip !34
  %293 = select i1 %292, i32 %291, i32 0, !mcsema_real_eip !34
  %294 = select i1 %292, i32 1, i32 0, !mcsema_real_eip !34
  %295 = shl i32 %289, %293, !mcsema_real_eip !34
  %296 = shl i32 1, 31, !mcsema_real_eip !34
  %297 = and i32 %295, %296, !mcsema_real_eip !34
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !34
  %299 = load i8, i8* %CF_read, !mcsema_real_eip !34
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !34
  %301 = select i1 %292, i1 %298, i1 %300, !mcsema_real_eip !34
  %302 = shl i32 %295, %294, !mcsema_real_eip !34
  %303 = icmp eq i32 %290, 1, !mcsema_real_eip !34
  %304 = load i8, i8* %OF_read, !mcsema_real_eip !34
  %305 = trunc i8 %304 to i1, !mcsema_real_eip !34
  %306 = and i32 %302, -2147483648, !mcsema_real_eip !34
  %307 = icmp ne i32 %306, 0, !mcsema_real_eip !34
  %308 = xor i1 %307, %301, !mcsema_real_eip !34
  %309 = select i1 %303, i1 %308, i1 %305, !mcsema_real_eip !34
  %310 = zext i1 %309 to i8, !mcsema_real_eip !34
  store volatile i8 %310, i8* %OF_write, !mcsema_real_eip !34
  %311 = zext i1 %301 to i8, !mcsema_real_eip !34
  store volatile i8 %311, i8* %CF_write, !mcsema_real_eip !34
  %312 = load i8, i8* %ZF_read, !mcsema_real_eip !34
  %313 = trunc i8 %312 to i1, !mcsema_real_eip !34
  %314 = icmp eq i32 %302, 0, !mcsema_real_eip !34
  %315 = select i1 %292, i1 %314, i1 %313, !mcsema_real_eip !34
  %316 = zext i1 %315 to i8, !mcsema_real_eip !34
  store volatile i8 %316, i8* %ZF_write, !mcsema_real_eip !34
  %317 = load i8, i8* %SF_read, !mcsema_real_eip !34
  %318 = trunc i8 %317 to i1, !mcsema_real_eip !34
  %319 = icmp slt i32 %302, 0, !mcsema_real_eip !34
  %320 = select i1 %292, i1 %319, i1 %318, !mcsema_real_eip !34
  %321 = zext i1 %320 to i8, !mcsema_real_eip !34
  store volatile i8 %321, i8* %SF_write, !mcsema_real_eip !34
  %322 = load i8, i8* %PF_read, !mcsema_real_eip !34
  %323 = trunc i8 %322 to i1, !mcsema_real_eip !34
  %324 = trunc i32 %302 to i8, !mcsema_real_eip !34
  %325 = call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !34
  %326 = trunc i8 %325 to i1, !mcsema_real_eip !34
  %327 = zext i1 %326 to i8, !mcsema_real_eip !34
  %328 = xor i8 %327, 1, !mcsema_real_eip !34
  %329 = trunc i8 %328 to i1, !mcsema_real_eip !34
  %330 = zext i1 %329 to i8, !mcsema_real_eip !34
  store volatile i8 %330, i8* %PF_write, !mcsema_real_eip !34
  %331 = load i8, i8* %PF_read, !mcsema_real_eip !34
  %332 = trunc i8 %331 to i1, !mcsema_real_eip !34
  %333 = select i1 %292, i1 %332, i1 %323, !mcsema_real_eip !34
  %334 = zext i1 %333 to i8, !mcsema_real_eip !34
  store volatile i8 %334, i8* %PF_write, !mcsema_real_eip !34
  %335 = zext i32 %302 to i64, !mcsema_real_eip !34
  store volatile i64 %335, i64* %EAX_write, !mcsema_real_eip !34
  store volatile i64 143, i64* %EIP_write, !mcsema_real_eip !35
  %336 = load i32, i32* %EAX_read, !mcsema_real_eip !35
  %337 = sub i32 %336, 26, !mcsema_real_eip !35
  %338 = xor i32 %337, %336, !mcsema_real_eip !35
  %339 = xor i32 %338, 26, !mcsema_real_eip !35
  %340 = and i32 %339, 16, !mcsema_real_eip !35
  %341 = icmp ne i32 %340, 0, !mcsema_real_eip !35
  %342 = zext i1 %341 to i8, !mcsema_real_eip !35
  store volatile i8 %342, i8* %AF_write, !mcsema_real_eip !35
  %343 = trunc i32 %337 to i8, !mcsema_real_eip !35
  %344 = call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !35
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !35
  %346 = zext i1 %345 to i8, !mcsema_real_eip !35
  %347 = xor i8 %346, 1, !mcsema_real_eip !35
  %348 = trunc i8 %347 to i1, !mcsema_real_eip !35
  %349 = zext i1 %348 to i8, !mcsema_real_eip !35
  store volatile i8 %349, i8* %PF_write, !mcsema_real_eip !35
  %350 = icmp eq i32 %337, 0, !mcsema_real_eip !35
  %351 = zext i1 %350 to i8, !mcsema_real_eip !35
  store volatile i8 %351, i8* %ZF_write, !mcsema_real_eip !35
  %352 = lshr i32 %337, 31, !mcsema_real_eip !35
  %353 = trunc i32 %352 to i1, !mcsema_real_eip !35
  %354 = zext i1 %353 to i8, !mcsema_real_eip !35
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !35
  %356 = zext i1 %355 to i8, !mcsema_real_eip !35
  store volatile i8 %356, i8* %SF_write, !mcsema_real_eip !35
  %357 = icmp ult i32 %336, 26, !mcsema_real_eip !35
  %358 = zext i1 %357 to i8, !mcsema_real_eip !35
  store volatile i8 %358, i8* %CF_write, !mcsema_real_eip !35
  %359 = xor i32 %336, 26, !mcsema_real_eip !35
  %360 = xor i32 %336, %337, !mcsema_real_eip !35
  %361 = and i32 %359, %360, !mcsema_real_eip !35
  %362 = lshr i32 %361, 31, !mcsema_real_eip !35
  %363 = trunc i32 %362 to i1, !mcsema_real_eip !35
  %364 = zext i1 %363 to i8, !mcsema_real_eip !35
  %365 = trunc i8 %364 to i1, !mcsema_real_eip !35
  %366 = zext i1 %365 to i8, !mcsema_real_eip !35
  store volatile i8 %366, i8* %OF_write, !mcsema_real_eip !35
  store volatile i64 146, i64* %EIP_write, !mcsema_real_eip !36
  %367 = load i8, i8* %ZF_read, !mcsema_real_eip !36
  %368 = trunc i8 %367 to i1, !mcsema_real_eip !36
  %369 = icmp eq i1 %368, true, !mcsema_real_eip !36
  br i1 %369, label %block_a4, label %block_98, !mcsema_real_eip !36

block_98:                                         ; preds = %block_79
  store volatile i64 152, i64* %EIP_write, !mcsema_real_eip !37
  %370 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %371 = add i64 %370, -4, !mcsema_real_eip !37
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !37
  %373 = ptrtoint i64* %372 to i64, !mcsema_real_eip !37
  %374 = inttoptr i64 %373 to i32*, !mcsema_real_eip !37
  store i32 -4, i32* %374, !mcsema_real_eip !37
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !38
  br label %block_417, !mcsema_real_eip !38

block_a4:                                         ; preds = %block_79
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !39
  %375 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %376 = add i64 %375, -16, !mcsema_real_eip !39
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !39
  %378 = load i64, i64* %377, !mcsema_real_eip !39
  store volatile i64 %378, i64* %RAX_write, !mcsema_real_eip !39
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !40
  %379 = load i64, i64* %RAX_read, !mcsema_real_eip !40
  %380 = add i64 %379, 3, !mcsema_real_eip !40
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !40
  %382 = ptrtoint i64* %381 to i64, !mcsema_real_eip !40
  %383 = inttoptr i64 %382 to i8*, !mcsema_real_eip !40
  %384 = load i8, i8* %383, !mcsema_real_eip !40
  %385 = zext i8 %384 to i32, !mcsema_real_eip !40
  %386 = zext i32 %385 to i64, !mcsema_real_eip !40
  store volatile i64 %386, i64* %EDI_write, !mcsema_real_eip !40
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !41
  %387 = load i64, i64* %RDI_read, !mcsema_real_eip !41
  %388 = load i64, i64* %RSP_read, !mcsema_real_eip !41
  %389 = sub i64 %388, 8, !mcsema_real_eip !41
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %390, !mcsema_real_eip !41
  store volatile i64 %389, i64* %RSP_write, !mcsema_real_eip !41
  %391 = call x86_64_sysvcc i64 @_to_byte(i64 %387), !mcsema_real_eip !41
  store volatile i64 %391, i64* %RAX_write, !mcsema_real_eip !41
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !42
  %392 = zext i32 2 to i64, !mcsema_real_eip !42
  store volatile i64 %392, i64* %EDI_write, !mcsema_real_eip !42
  store volatile i64 182, i64* %EIP_write, !mcsema_real_eip !43
  %393 = load i64, i64* %RBP_read, !mcsema_real_eip !43
  %394 = add i64 %393, -28, !mcsema_real_eip !43
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !43
  %396 = load i32, i32* %EAX_read, !mcsema_real_eip !43
  %397 = ptrtoint i64* %395 to i64, !mcsema_real_eip !43
  %398 = inttoptr i64 %397 to i32*, !mcsema_real_eip !43
  store i32 %396, i32* %398, !mcsema_real_eip !43
  store volatile i64 185, i64* %EIP_write, !mcsema_real_eip !44
  %399 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %400 = add i64 %399, -28, !mcsema_real_eip !44
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !44
  %402 = ptrtoint i64* %401 to i64, !mcsema_real_eip !44
  %403 = inttoptr i64 %402 to i32*, !mcsema_real_eip !44
  %404 = load i32, i32* %403, !mcsema_real_eip !44
  %405 = zext i32 %404 to i64, !mcsema_real_eip !44
  store volatile i64 %405, i64* %EAX_write, !mcsema_real_eip !44
  store volatile i64 188, i64* %EIP_write, !mcsema_real_eip !45
  %406 = load i32, i32* %EAX_read, !mcsema_real_eip !45
  %407 = add i32 1, %406, !mcsema_real_eip !45
  %408 = xor i32 %407, %406, !mcsema_real_eip !45
  %409 = xor i32 %408, 1, !mcsema_real_eip !45
  %410 = and i32 %409, 16, !mcsema_real_eip !45
  %411 = icmp ne i32 %410, 0, !mcsema_real_eip !45
  %412 = zext i1 %411 to i8, !mcsema_real_eip !45
  store volatile i8 %412, i8* %AF_write, !mcsema_real_eip !45
  %413 = lshr i32 %407, 31, !mcsema_real_eip !45
  %414 = trunc i32 %413 to i1, !mcsema_real_eip !45
  %415 = zext i1 %414 to i8, !mcsema_real_eip !45
  %416 = trunc i8 %415 to i1, !mcsema_real_eip !45
  %417 = zext i1 %416 to i8, !mcsema_real_eip !45
  store volatile i8 %417, i8* %SF_write, !mcsema_real_eip !45
  %418 = icmp eq i32 %407, 0, !mcsema_real_eip !45
  %419 = zext i1 %418 to i8, !mcsema_real_eip !45
  store volatile i8 %419, i8* %ZF_write, !mcsema_real_eip !45
  %420 = xor i32 %406, 1, !mcsema_real_eip !45
  %421 = xor i32 %420, -1, !mcsema_real_eip !45
  %422 = xor i32 %406, %407, !mcsema_real_eip !45
  %423 = and i32 %421, %422, !mcsema_real_eip !45
  %424 = lshr i32 %423, 31, !mcsema_real_eip !45
  %425 = and i32 %424, 1, !mcsema_real_eip !45
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !45
  %427 = zext i1 %426 to i8, !mcsema_real_eip !45
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !45
  %429 = zext i1 %428 to i8, !mcsema_real_eip !45
  store volatile i8 %429, i8* %OF_write, !mcsema_real_eip !45
  %430 = trunc i32 %407 to i8, !mcsema_real_eip !45
  %431 = call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !45
  %432 = trunc i8 %431 to i1, !mcsema_real_eip !45
  %433 = zext i1 %432 to i8, !mcsema_real_eip !45
  %434 = xor i8 %433, 1, !mcsema_real_eip !45
  %435 = trunc i8 %434 to i1, !mcsema_real_eip !45
  %436 = zext i1 %435 to i8, !mcsema_real_eip !45
  store volatile i8 %436, i8* %PF_write, !mcsema_real_eip !45
  %437 = icmp ult i32 %407, %406, !mcsema_real_eip !45
  %438 = zext i1 %437 to i8, !mcsema_real_eip !45
  store volatile i8 %438, i8* %CF_write, !mcsema_real_eip !45
  %439 = zext i32 %407 to i64, !mcsema_real_eip !45
  store volatile i64 %439, i64* %EAX_write, !mcsema_real_eip !45
  store volatile i64 191, i64* %EIP_write, !mcsema_real_eip !46
  %440 = load i32, i32* %EAX_read, !mcsema_real_eip !46
  %441 = and i32 %440, -2147483648, !mcsema_real_eip !46
  %442 = icmp eq i32 %441, 0, !mcsema_real_eip !46
  %443 = select i1 %442, i32 0, i32 -1, !mcsema_real_eip !46
  %444 = zext i32 %443 to i64, !mcsema_real_eip !46
  store volatile i64 %444, i64* %EDX_write, !mcsema_real_eip !46
  store volatile i64 192, i64* %EIP_write, !mcsema_real_eip !47
  %445 = load i32, i32* %EDI_read, !mcsema_real_eip !47
  %446 = load i32, i32* %EAX_read, !mcsema_real_eip !47
  %447 = load i32, i32* %EDX_read, !mcsema_real_eip !47
  %448 = zext i32 %447 to i64, !mcsema_real_eip !47
  %449 = shl i64 %448, 32, !mcsema_real_eip !47
  %450 = sext i32 %446 to i64, !mcsema_real_eip !47
  %451 = or i64 %449, %450, !mcsema_real_eip !47
  %452 = sext i32 %445 to i64, !mcsema_real_eip !47
  %453 = sdiv i64 %451, %452, !mcsema_real_eip !47
  %454 = srem i64 %451, %452, !mcsema_real_eip !47
  %455 = trunc i64 %454 to i32, !mcsema_real_eip !47
  %456 = trunc i64 %453 to i32, !mcsema_real_eip !47
  %457 = zext i32 %455 to i64, !mcsema_real_eip !47
  store volatile i64 %457, i64* %EDX_write, !mcsema_real_eip !47
  %458 = zext i32 %456 to i64, !mcsema_real_eip !47
  store volatile i64 %458, i64* %EAX_write, !mcsema_real_eip !47
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !48
  %459 = load i32, i32* %EAX_read, !mcsema_real_eip !48
  %460 = sub i32 %459, 7, !mcsema_real_eip !48
  %461 = xor i32 %460, %459, !mcsema_real_eip !48
  %462 = xor i32 %461, 7, !mcsema_real_eip !48
  %463 = and i32 %462, 16, !mcsema_real_eip !48
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !48
  %465 = zext i1 %464 to i8, !mcsema_real_eip !48
  store volatile i8 %465, i8* %AF_write, !mcsema_real_eip !48
  %466 = trunc i32 %460 to i8, !mcsema_real_eip !48
  %467 = call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !48
  %468 = trunc i8 %467 to i1, !mcsema_real_eip !48
  %469 = zext i1 %468 to i8, !mcsema_real_eip !48
  %470 = xor i8 %469, 1, !mcsema_real_eip !48
  %471 = trunc i8 %470 to i1, !mcsema_real_eip !48
  %472 = zext i1 %471 to i8, !mcsema_real_eip !48
  store volatile i8 %472, i8* %PF_write, !mcsema_real_eip !48
  %473 = icmp eq i32 %460, 0, !mcsema_real_eip !48
  %474 = zext i1 %473 to i8, !mcsema_real_eip !48
  store volatile i8 %474, i8* %ZF_write, !mcsema_real_eip !48
  %475 = lshr i32 %460, 31, !mcsema_real_eip !48
  %476 = trunc i32 %475 to i1, !mcsema_real_eip !48
  %477 = zext i1 %476 to i8, !mcsema_real_eip !48
  %478 = trunc i8 %477 to i1, !mcsema_real_eip !48
  %479 = zext i1 %478 to i8, !mcsema_real_eip !48
  store volatile i8 %479, i8* %SF_write, !mcsema_real_eip !48
  %480 = icmp ult i32 %459, 7, !mcsema_real_eip !48
  %481 = zext i1 %480 to i8, !mcsema_real_eip !48
  store volatile i8 %481, i8* %CF_write, !mcsema_real_eip !48
  %482 = xor i32 %459, 7, !mcsema_real_eip !48
  %483 = xor i32 %459, %460, !mcsema_real_eip !48
  %484 = and i32 %482, %483, !mcsema_real_eip !48
  %485 = lshr i32 %484, 31, !mcsema_real_eip !48
  %486 = trunc i32 %485 to i1, !mcsema_real_eip !48
  %487 = zext i1 %486 to i8, !mcsema_real_eip !48
  %488 = trunc i8 %487 to i1, !mcsema_real_eip !48
  %489 = zext i1 %488 to i8, !mcsema_real_eip !48
  store volatile i8 %489, i8* %OF_write, !mcsema_real_eip !48
  store volatile i64 197, i64* %EIP_write, !mcsema_real_eip !49
  %490 = load i8, i8* %ZF_read, !mcsema_real_eip !49
  %491 = trunc i8 %490 to i1, !mcsema_real_eip !49
  %492 = icmp eq i1 %491, true, !mcsema_real_eip !49
  br i1 %492, label %block_d7, label %block_cb, !mcsema_real_eip !49

block_cb:                                         ; preds = %block_a4
  store volatile i64 203, i64* %EIP_write, !mcsema_real_eip !50
  %493 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %494 = add i64 %493, -4, !mcsema_real_eip !50
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !50
  %496 = ptrtoint i64* %495 to i64, !mcsema_real_eip !50
  %497 = inttoptr i64 %496 to i32*, !mcsema_real_eip !50
  store i32 -5, i32* %497, !mcsema_real_eip !50
  store volatile i64 210, i64* %EIP_write, !mcsema_real_eip !51
  br label %block_417, !mcsema_real_eip !51

block_d7:                                         ; preds = %block_a4
  store volatile i64 215, i64* %EIP_write, !mcsema_real_eip !52
  %498 = load i64, i64* %RBP_read, !mcsema_real_eip !52
  %499 = add i64 %498, -16, !mcsema_real_eip !52
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !52
  %501 = load i64, i64* %500, !mcsema_real_eip !52
  store volatile i64 %501, i64* %RAX_write, !mcsema_real_eip !52
  store volatile i64 219, i64* %EIP_write, !mcsema_real_eip !53
  %502 = load i64, i64* %RAX_read, !mcsema_real_eip !53
  %503 = add i64 %502, 4, !mcsema_real_eip !53
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !53
  %505 = ptrtoint i64* %504 to i64, !mcsema_real_eip !53
  %506 = inttoptr i64 %505 to i8*, !mcsema_real_eip !53
  %507 = load i8, i8* %506, !mcsema_real_eip !53
  %508 = sext i8 %507 to i32, !mcsema_real_eip !53
  %509 = zext i32 %508 to i64, !mcsema_real_eip !53
  store volatile i64 %509, i64* %ECX_write, !mcsema_real_eip !53
  store volatile i64 223, i64* %EIP_write, !mcsema_real_eip !54
  %510 = load i32, i32* %ECX_read, !mcsema_real_eip !54
  %511 = and i32 %510, 15, !mcsema_real_eip !54
  %512 = lshr i32 %511, 31, !mcsema_real_eip !54
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !54
  %514 = zext i1 %513 to i8, !mcsema_real_eip !54
  %515 = trunc i8 %514 to i1, !mcsema_real_eip !54
  %516 = zext i1 %515 to i8, !mcsema_real_eip !54
  store volatile i8 %516, i8* %SF_write, !mcsema_real_eip !54
  %517 = icmp eq i32 %511, 0, !mcsema_real_eip !54
  %518 = zext i1 %517 to i8, !mcsema_real_eip !54
  store volatile i8 %518, i8* %ZF_write, !mcsema_real_eip !54
  %519 = trunc i32 %511 to i8, !mcsema_real_eip !54
  %520 = call i8 @llvm.ctpop.i8(i8 %519), !mcsema_real_eip !54
  %521 = trunc i8 %520 to i1, !mcsema_real_eip !54
  %522 = zext i1 %521 to i8, !mcsema_real_eip !54
  %523 = xor i8 %522, 1, !mcsema_real_eip !54
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !54
  %525 = zext i1 %524 to i8, !mcsema_real_eip !54
  store volatile i8 %525, i8* %PF_write, !mcsema_real_eip !54
  %526 = trunc i8 0 to i1, !mcsema_real_eip !54
  %527 = zext i1 %526 to i8, !mcsema_real_eip !54
  store volatile i8 %527, i8* %OF_write, !mcsema_real_eip !54
  %528 = trunc i8 0 to i1, !mcsema_real_eip !54
  %529 = zext i1 %528 to i8, !mcsema_real_eip !54
  store volatile i8 %529, i8* %CF_write, !mcsema_real_eip !54
  %530 = zext i32 %511 to i64, !mcsema_real_eip !54
  store volatile i64 %530, i64* %ECX_write, !mcsema_real_eip !54
  store volatile i64 226, i64* %EIP_write, !mcsema_real_eip !55
  %531 = load i32, i32* %ECX_read, !mcsema_real_eip !55
  %532 = sub i32 %531, 1, !mcsema_real_eip !55
  %533 = xor i32 %532, %531, !mcsema_real_eip !55
  %534 = xor i32 %533, 1, !mcsema_real_eip !55
  %535 = and i32 %534, 16, !mcsema_real_eip !55
  %536 = icmp ne i32 %535, 0, !mcsema_real_eip !55
  %537 = zext i1 %536 to i8, !mcsema_real_eip !55
  store volatile i8 %537, i8* %AF_write, !mcsema_real_eip !55
  %538 = trunc i32 %532 to i8, !mcsema_real_eip !55
  %539 = call i8 @llvm.ctpop.i8(i8 %538), !mcsema_real_eip !55
  %540 = trunc i8 %539 to i1, !mcsema_real_eip !55
  %541 = zext i1 %540 to i8, !mcsema_real_eip !55
  %542 = xor i8 %541, 1, !mcsema_real_eip !55
  %543 = trunc i8 %542 to i1, !mcsema_real_eip !55
  %544 = zext i1 %543 to i8, !mcsema_real_eip !55
  store volatile i8 %544, i8* %PF_write, !mcsema_real_eip !55
  %545 = icmp eq i32 %532, 0, !mcsema_real_eip !55
  %546 = zext i1 %545 to i8, !mcsema_real_eip !55
  store volatile i8 %546, i8* %ZF_write, !mcsema_real_eip !55
  %547 = lshr i32 %532, 31, !mcsema_real_eip !55
  %548 = trunc i32 %547 to i1, !mcsema_real_eip !55
  %549 = zext i1 %548 to i8, !mcsema_real_eip !55
  %550 = trunc i8 %549 to i1, !mcsema_real_eip !55
  %551 = zext i1 %550 to i8, !mcsema_real_eip !55
  store volatile i8 %551, i8* %SF_write, !mcsema_real_eip !55
  %552 = icmp ult i32 %531, 1, !mcsema_real_eip !55
  %553 = zext i1 %552 to i8, !mcsema_real_eip !55
  store volatile i8 %553, i8* %CF_write, !mcsema_real_eip !55
  %554 = xor i32 %531, 1, !mcsema_real_eip !55
  %555 = xor i32 %531, %532, !mcsema_real_eip !55
  %556 = and i32 %554, %555, !mcsema_real_eip !55
  %557 = lshr i32 %556, 31, !mcsema_real_eip !55
  %558 = trunc i32 %557 to i1, !mcsema_real_eip !55
  %559 = zext i1 %558 to i8, !mcsema_real_eip !55
  %560 = trunc i8 %559 to i1, !mcsema_real_eip !55
  %561 = zext i1 %560 to i8, !mcsema_real_eip !55
  store volatile i8 %561, i8* %OF_write, !mcsema_real_eip !55
  store volatile i64 229, i64* %EIP_write, !mcsema_real_eip !56
  %562 = load i8, i8* %ZF_read, !mcsema_real_eip !56
  %563 = trunc i8 %562 to i1, !mcsema_real_eip !56
  %564 = icmp eq i1 %563, false, !mcsema_real_eip !56
  br i1 %564, label %block_10e, label %block_eb, !mcsema_real_eip !56

block_eb:                                         ; preds = %block_d7
  store volatile i64 235, i64* %EIP_write, !mcsema_real_eip !57
  %565 = load i64, i64* %RBP_read, !mcsema_real_eip !57
  %566 = add i64 %565, -16, !mcsema_real_eip !57
  %567 = inttoptr i64 %566 to i64*, !mcsema_real_eip !57
  %568 = load i64, i64* %567, !mcsema_real_eip !57
  store volatile i64 %568, i64* %RAX_write, !mcsema_real_eip !57
  store volatile i64 239, i64* %EIP_write, !mcsema_real_eip !58
  %569 = load i64, i64* %RAX_read, !mcsema_real_eip !58
  %570 = add i64 %569, 4, !mcsema_real_eip !58
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !58
  %572 = ptrtoint i64* %571 to i64, !mcsema_real_eip !58
  %573 = inttoptr i64 %572 to i8*, !mcsema_real_eip !58
  %574 = load i8, i8* %573, !mcsema_real_eip !58
  %575 = sext i8 %574 to i32, !mcsema_real_eip !58
  %576 = zext i32 %575 to i64, !mcsema_real_eip !58
  store volatile i64 %576, i64* %ECX_write, !mcsema_real_eip !58
  store volatile i64 243, i64* %EIP_write, !mcsema_real_eip !59
  %577 = load i32, i32* %ECX_read, !mcsema_real_eip !59
  %578 = and i32 %577, 240, !mcsema_real_eip !59
  %579 = lshr i32 %578, 31, !mcsema_real_eip !59
  %580 = trunc i32 %579 to i1, !mcsema_real_eip !59
  %581 = zext i1 %580 to i8, !mcsema_real_eip !59
  %582 = trunc i8 %581 to i1, !mcsema_real_eip !59
  %583 = zext i1 %582 to i8, !mcsema_real_eip !59
  store volatile i8 %583, i8* %SF_write, !mcsema_real_eip !59
  %584 = icmp eq i32 %578, 0, !mcsema_real_eip !59
  %585 = zext i1 %584 to i8, !mcsema_real_eip !59
  store volatile i8 %585, i8* %ZF_write, !mcsema_real_eip !59
  %586 = trunc i32 %578 to i8, !mcsema_real_eip !59
  %587 = call i8 @llvm.ctpop.i8(i8 %586), !mcsema_real_eip !59
  %588 = trunc i8 %587 to i1, !mcsema_real_eip !59
  %589 = zext i1 %588 to i8, !mcsema_real_eip !59
  %590 = xor i8 %589, 1, !mcsema_real_eip !59
  %591 = trunc i8 %590 to i1, !mcsema_real_eip !59
  %592 = zext i1 %591 to i8, !mcsema_real_eip !59
  store volatile i8 %592, i8* %PF_write, !mcsema_real_eip !59
  %593 = trunc i8 0 to i1, !mcsema_real_eip !59
  %594 = zext i1 %593 to i8, !mcsema_real_eip !59
  store volatile i8 %594, i8* %OF_write, !mcsema_real_eip !59
  %595 = trunc i8 0 to i1, !mcsema_real_eip !59
  %596 = zext i1 %595 to i8, !mcsema_real_eip !59
  store volatile i8 %596, i8* %CF_write, !mcsema_real_eip !59
  %597 = zext i32 %578 to i64, !mcsema_real_eip !59
  store volatile i64 %597, i64* %ECX_write, !mcsema_real_eip !59
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !60
  %598 = load i32, i32* %ECX_read, !mcsema_real_eip !60
  %599 = sub i32 %598, 48, !mcsema_real_eip !60
  %600 = xor i32 %599, %598, !mcsema_real_eip !60
  %601 = xor i32 %600, 48, !mcsema_real_eip !60
  %602 = and i32 %601, 16, !mcsema_real_eip !60
  %603 = icmp ne i32 %602, 0, !mcsema_real_eip !60
  %604 = zext i1 %603 to i8, !mcsema_real_eip !60
  store volatile i8 %604, i8* %AF_write, !mcsema_real_eip !60
  %605 = trunc i32 %599 to i8, !mcsema_real_eip !60
  %606 = call i8 @llvm.ctpop.i8(i8 %605), !mcsema_real_eip !60
  %607 = trunc i8 %606 to i1, !mcsema_real_eip !60
  %608 = zext i1 %607 to i8, !mcsema_real_eip !60
  %609 = xor i8 %608, 1, !mcsema_real_eip !60
  %610 = trunc i8 %609 to i1, !mcsema_real_eip !60
  %611 = zext i1 %610 to i8, !mcsema_real_eip !60
  store volatile i8 %611, i8* %PF_write, !mcsema_real_eip !60
  %612 = icmp eq i32 %599, 0, !mcsema_real_eip !60
  %613 = zext i1 %612 to i8, !mcsema_real_eip !60
  store volatile i8 %613, i8* %ZF_write, !mcsema_real_eip !60
  %614 = lshr i32 %599, 31, !mcsema_real_eip !60
  %615 = trunc i32 %614 to i1, !mcsema_real_eip !60
  %616 = zext i1 %615 to i8, !mcsema_real_eip !60
  %617 = trunc i8 %616 to i1, !mcsema_real_eip !60
  %618 = zext i1 %617 to i8, !mcsema_real_eip !60
  store volatile i8 %618, i8* %SF_write, !mcsema_real_eip !60
  %619 = icmp ult i32 %598, 48, !mcsema_real_eip !60
  %620 = zext i1 %619 to i8, !mcsema_real_eip !60
  store volatile i8 %620, i8* %CF_write, !mcsema_real_eip !60
  %621 = xor i32 %598, 48, !mcsema_real_eip !60
  %622 = xor i32 %598, %599, !mcsema_real_eip !60
  %623 = and i32 %621, %622, !mcsema_real_eip !60
  %624 = lshr i32 %623, 31, !mcsema_real_eip !60
  %625 = trunc i32 %624 to i1, !mcsema_real_eip !60
  %626 = zext i1 %625 to i8, !mcsema_real_eip !60
  %627 = trunc i8 %626 to i1, !mcsema_real_eip !60
  %628 = zext i1 %627 to i8, !mcsema_real_eip !60
  store volatile i8 %628, i8* %OF_write, !mcsema_real_eip !60
  store volatile i64 252, i64* %EIP_write, !mcsema_real_eip !61
  %629 = load i8, i8* %ZF_read, !mcsema_real_eip !61
  %630 = trunc i8 %629 to i1, !mcsema_real_eip !61
  %631 = icmp eq i1 %630, false, !mcsema_real_eip !61
  br i1 %631, label %block_10e, label %block_102, !mcsema_real_eip !61

block_102:                                        ; preds = %block_eb
  store volatile i64 258, i64* %EIP_write, !mcsema_real_eip !62
  %632 = load i64, i64* %RBP_read, !mcsema_real_eip !62
  %633 = add i64 %632, -20, !mcsema_real_eip !62
  %634 = inttoptr i64 %633 to i64*, !mcsema_real_eip !62
  %635 = ptrtoint i64* %634 to i64, !mcsema_real_eip !62
  %636 = inttoptr i64 %635 to i32*, !mcsema_real_eip !62
  store i32 -4, i32* %636, !mcsema_real_eip !62
  store volatile i64 265, i64* %EIP_write, !mcsema_real_eip !63
  br label %block_11a, !mcsema_real_eip !63

block_10e:                                        ; preds = %block_eb, %block_d7
  store volatile i64 270, i64* %EIP_write, !mcsema_real_eip !64
  %637 = load i64, i64* %RBP_read, !mcsema_real_eip !64
  %638 = add i64 %637, -4, !mcsema_real_eip !64
  %639 = inttoptr i64 %638 to i64*, !mcsema_real_eip !64
  %640 = ptrtoint i64* %639 to i64, !mcsema_real_eip !64
  %641 = inttoptr i64 %640 to i32*, !mcsema_real_eip !64
  store i32 -6, i32* %641, !mcsema_real_eip !64
  store volatile i64 277, i64* %EIP_write, !mcsema_real_eip !65
  br label %block_417, !mcsema_real_eip !65

block_11a:                                        ; preds = %block_102
  store volatile i64 282, i64* %EIP_write, !mcsema_real_eip !66
  %642 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %643 = add i64 %642, -16, !mcsema_real_eip !66
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !66
  %645 = load i64, i64* %644, !mcsema_real_eip !66
  store volatile i64 %645, i64* %RAX_write, !mcsema_real_eip !66
  store volatile i64 286, i64* %EIP_write, !mcsema_real_eip !67
  %646 = load i64, i64* %RAX_read, !mcsema_real_eip !67
  %647 = add i64 %646, 5, !mcsema_real_eip !67
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !67
  %649 = ptrtoint i64* %648 to i64, !mcsema_real_eip !67
  %650 = inttoptr i64 %649 to i8*, !mcsema_real_eip !67
  %651 = load i8, i8* %650, !mcsema_real_eip !67
  %652 = sext i8 %651 to i32, !mcsema_real_eip !67
  %653 = zext i32 %652 to i64, !mcsema_real_eip !67
  store volatile i64 %653, i64* %ECX_write, !mcsema_real_eip !67
  store volatile i64 290, i64* %EIP_write, !mcsema_real_eip !68
  %654 = load i32, i32* %ECX_read, !mcsema_real_eip !68
  %655 = and i32 %654, 15, !mcsema_real_eip !68
  %656 = lshr i32 %655, 31, !mcsema_real_eip !68
  %657 = trunc i32 %656 to i1, !mcsema_real_eip !68
  %658 = zext i1 %657 to i8, !mcsema_real_eip !68
  %659 = trunc i8 %658 to i1, !mcsema_real_eip !68
  %660 = zext i1 %659 to i8, !mcsema_real_eip !68
  store volatile i8 %660, i8* %SF_write, !mcsema_real_eip !68
  %661 = icmp eq i32 %655, 0, !mcsema_real_eip !68
  %662 = zext i1 %661 to i8, !mcsema_real_eip !68
  store volatile i8 %662, i8* %ZF_write, !mcsema_real_eip !68
  %663 = trunc i32 %655 to i8, !mcsema_real_eip !68
  %664 = call i8 @llvm.ctpop.i8(i8 %663), !mcsema_real_eip !68
  %665 = trunc i8 %664 to i1, !mcsema_real_eip !68
  %666 = zext i1 %665 to i8, !mcsema_real_eip !68
  %667 = xor i8 %666, 1, !mcsema_real_eip !68
  %668 = trunc i8 %667 to i1, !mcsema_real_eip !68
  %669 = zext i1 %668 to i8, !mcsema_real_eip !68
  store volatile i8 %669, i8* %PF_write, !mcsema_real_eip !68
  %670 = trunc i8 0 to i1, !mcsema_real_eip !68
  %671 = zext i1 %670 to i8, !mcsema_real_eip !68
  store volatile i8 %671, i8* %OF_write, !mcsema_real_eip !68
  %672 = trunc i8 0 to i1, !mcsema_real_eip !68
  %673 = zext i1 %672 to i8, !mcsema_real_eip !68
  store volatile i8 %673, i8* %CF_write, !mcsema_real_eip !68
  %674 = zext i32 %655 to i64, !mcsema_real_eip !68
  store volatile i64 %674, i64* %ECX_write, !mcsema_real_eip !68
  store volatile i64 293, i64* %EIP_write, !mcsema_real_eip !69
  %675 = load i8, i8* %CL_read, !mcsema_real_eip !69
  store volatile i8 %675, i8* %DL_write, !mcsema_real_eip !69
  store volatile i64 295, i64* %EIP_write, !mcsema_real_eip !70
  %676 = load i64, i64* %RBP_read, !mcsema_real_eip !70
  %677 = add i64 %676, -33, !mcsema_real_eip !70
  %678 = inttoptr i64 %677 to i64*, !mcsema_real_eip !70
  %679 = load i8, i8* %DL_read, !mcsema_real_eip !70
  %680 = ptrtoint i64* %678 to i64, !mcsema_real_eip !70
  %681 = inttoptr i64 %680 to i8*, !mcsema_real_eip !70
  store i8 %679, i8* %681, !mcsema_real_eip !70
  store volatile i64 298, i64* %EIP_write, !mcsema_real_eip !71
  %682 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %683 = add i64 %682, -16, !mcsema_real_eip !71
  %684 = inttoptr i64 %683 to i64*, !mcsema_real_eip !71
  %685 = load i64, i64* %684, !mcsema_real_eip !71
  store volatile i64 %685, i64* %RAX_write, !mcsema_real_eip !71
  store volatile i64 302, i64* %EIP_write, !mcsema_real_eip !72
  %686 = load i64, i64* %RAX_read, !mcsema_real_eip !72
  %687 = add i64 %686, 5, !mcsema_real_eip !72
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !72
  %689 = ptrtoint i64* %688 to i64, !mcsema_real_eip !72
  %690 = inttoptr i64 %689 to i8*, !mcsema_real_eip !72
  %691 = load i8, i8* %690, !mcsema_real_eip !72
  %692 = sext i8 %691 to i32, !mcsema_real_eip !72
  %693 = zext i32 %692 to i64, !mcsema_real_eip !72
  store volatile i64 %693, i64* %ECX_write, !mcsema_real_eip !72
  store volatile i64 306, i64* %EIP_write, !mcsema_real_eip !73
  %694 = load i32, i32* %ECX_read, !mcsema_real_eip !73
  %695 = and i32 %694, 240, !mcsema_real_eip !73
  %696 = lshr i32 %695, 31, !mcsema_real_eip !73
  %697 = trunc i32 %696 to i1, !mcsema_real_eip !73
  %698 = zext i1 %697 to i8, !mcsema_real_eip !73
  %699 = trunc i8 %698 to i1, !mcsema_real_eip !73
  %700 = zext i1 %699 to i8, !mcsema_real_eip !73
  store volatile i8 %700, i8* %SF_write, !mcsema_real_eip !73
  %701 = icmp eq i32 %695, 0, !mcsema_real_eip !73
  %702 = zext i1 %701 to i8, !mcsema_real_eip !73
  store volatile i8 %702, i8* %ZF_write, !mcsema_real_eip !73
  %703 = trunc i32 %695 to i8, !mcsema_real_eip !73
  %704 = call i8 @llvm.ctpop.i8(i8 %703), !mcsema_real_eip !73
  %705 = trunc i8 %704 to i1, !mcsema_real_eip !73
  %706 = zext i1 %705 to i8, !mcsema_real_eip !73
  %707 = xor i8 %706, 1, !mcsema_real_eip !73
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !73
  %709 = zext i1 %708 to i8, !mcsema_real_eip !73
  store volatile i8 %709, i8* %PF_write, !mcsema_real_eip !73
  %710 = trunc i8 0 to i1, !mcsema_real_eip !73
  %711 = zext i1 %710 to i8, !mcsema_real_eip !73
  store volatile i8 %711, i8* %OF_write, !mcsema_real_eip !73
  %712 = trunc i8 0 to i1, !mcsema_real_eip !73
  %713 = zext i1 %712 to i8, !mcsema_real_eip !73
  store volatile i8 %713, i8* %CF_write, !mcsema_real_eip !73
  %714 = zext i32 %695 to i64, !mcsema_real_eip !73
  store volatile i64 %714, i64* %ECX_write, !mcsema_real_eip !73
  store volatile i64 312, i64* %EIP_write, !mcsema_real_eip !74
  %715 = load i8, i8* %CL_read, !mcsema_real_eip !74
  store volatile i8 %715, i8* %DL_write, !mcsema_real_eip !74
  store volatile i64 314, i64* %EIP_write, !mcsema_real_eip !75
  %716 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %717 = add i64 %716, -34, !mcsema_real_eip !75
  %718 = inttoptr i64 %717 to i64*, !mcsema_real_eip !75
  %719 = load i8, i8* %DL_read, !mcsema_real_eip !75
  %720 = ptrtoint i64* %718 to i64, !mcsema_real_eip !75
  %721 = inttoptr i64 %720 to i8*, !mcsema_real_eip !75
  store i8 %719, i8* %721, !mcsema_real_eip !75
  store volatile i64 317, i64* %EIP_write, !mcsema_real_eip !76
  %722 = load i64, i64* %RBP_read, !mcsema_real_eip !76
  %723 = add i64 %722, -33, !mcsema_real_eip !76
  %724 = inttoptr i64 %723 to i64*, !mcsema_real_eip !76
  %725 = ptrtoint i64* %724 to i64, !mcsema_real_eip !76
  %726 = inttoptr i64 %725 to i8*, !mcsema_real_eip !76
  %727 = load i8, i8* %726, !mcsema_real_eip !76
  %728 = zext i8 %727 to i32, !mcsema_real_eip !76
  %729 = zext i32 %728 to i64, !mcsema_real_eip !76
  store volatile i64 %729, i64* %ECX_write, !mcsema_real_eip !76
  store volatile i64 321, i64* %EIP_write, !mcsema_real_eip !77
  %730 = load i32, i32* %ECX_read, !mcsema_real_eip !77
  %731 = sub i32 %730, 3, !mcsema_real_eip !77
  %732 = xor i32 %731, %730, !mcsema_real_eip !77
  %733 = xor i32 %732, 3, !mcsema_real_eip !77
  %734 = and i32 %733, 16, !mcsema_real_eip !77
  %735 = icmp ne i32 %734, 0, !mcsema_real_eip !77
  %736 = zext i1 %735 to i8, !mcsema_real_eip !77
  store volatile i8 %736, i8* %AF_write, !mcsema_real_eip !77
  %737 = trunc i32 %731 to i8, !mcsema_real_eip !77
  %738 = call i8 @llvm.ctpop.i8(i8 %737), !mcsema_real_eip !77
  %739 = trunc i8 %738 to i1, !mcsema_real_eip !77
  %740 = zext i1 %739 to i8, !mcsema_real_eip !77
  %741 = xor i8 %740, 1, !mcsema_real_eip !77
  %742 = trunc i8 %741 to i1, !mcsema_real_eip !77
  %743 = zext i1 %742 to i8, !mcsema_real_eip !77
  store volatile i8 %743, i8* %PF_write, !mcsema_real_eip !77
  %744 = icmp eq i32 %731, 0, !mcsema_real_eip !77
  %745 = zext i1 %744 to i8, !mcsema_real_eip !77
  store volatile i8 %745, i8* %ZF_write, !mcsema_real_eip !77
  %746 = lshr i32 %731, 31, !mcsema_real_eip !77
  %747 = trunc i32 %746 to i1, !mcsema_real_eip !77
  %748 = zext i1 %747 to i8, !mcsema_real_eip !77
  %749 = trunc i8 %748 to i1, !mcsema_real_eip !77
  %750 = zext i1 %749 to i8, !mcsema_real_eip !77
  store volatile i8 %750, i8* %SF_write, !mcsema_real_eip !77
  %751 = icmp ult i32 %730, 3, !mcsema_real_eip !77
  %752 = zext i1 %751 to i8, !mcsema_real_eip !77
  store volatile i8 %752, i8* %CF_write, !mcsema_real_eip !77
  %753 = xor i32 %730, 3, !mcsema_real_eip !77
  %754 = xor i32 %730, %731, !mcsema_real_eip !77
  %755 = and i32 %753, %754, !mcsema_real_eip !77
  %756 = lshr i32 %755, 31, !mcsema_real_eip !77
  %757 = trunc i32 %756 to i1, !mcsema_real_eip !77
  %758 = zext i1 %757 to i8, !mcsema_real_eip !77
  %759 = trunc i8 %758 to i1, !mcsema_real_eip !77
  %760 = zext i1 %759 to i8, !mcsema_real_eip !77
  store volatile i8 %760, i8* %OF_write, !mcsema_real_eip !77
  store volatile i64 324, i64* %EIP_write, !mcsema_real_eip !78
  %761 = load i8, i8* %ZF_read, !mcsema_real_eip !78
  %762 = trunc i8 %761 to i1, !mcsema_real_eip !78
  %763 = icmp eq i1 %762, false, !mcsema_real_eip !78
  br i1 %763, label %block_165, label %block_14a, !mcsema_real_eip !78

block_14a:                                        ; preds = %block_11a
  store volatile i64 330, i64* %EIP_write, !mcsema_real_eip !79
  %764 = load i64, i64* %RBP_read, !mcsema_real_eip !79
  %765 = add i64 %764, -34, !mcsema_real_eip !79
  %766 = inttoptr i64 %765 to i64*, !mcsema_real_eip !79
  %767 = ptrtoint i64* %766 to i64, !mcsema_real_eip !79
  %768 = inttoptr i64 %767 to i8*, !mcsema_real_eip !79
  %769 = load i8, i8* %768, !mcsema_real_eip !79
  %770 = zext i8 %769 to i32, !mcsema_real_eip !79
  %771 = zext i32 %770 to i64, !mcsema_real_eip !79
  store volatile i64 %771, i64* %EAX_write, !mcsema_real_eip !79
  store volatile i64 334, i64* %EIP_write, !mcsema_real_eip !80
  %772 = load i32, i32* %EAX_read, !mcsema_real_eip !80
  %773 = sub i32 %772, 96, !mcsema_real_eip !80
  %774 = xor i32 %773, %772, !mcsema_real_eip !80
  %775 = xor i32 %774, 96, !mcsema_real_eip !80
  %776 = and i32 %775, 16, !mcsema_real_eip !80
  %777 = icmp ne i32 %776, 0, !mcsema_real_eip !80
  %778 = zext i1 %777 to i8, !mcsema_real_eip !80
  store volatile i8 %778, i8* %AF_write, !mcsema_real_eip !80
  %779 = trunc i32 %773 to i8, !mcsema_real_eip !80
  %780 = call i8 @llvm.ctpop.i8(i8 %779), !mcsema_real_eip !80
  %781 = trunc i8 %780 to i1, !mcsema_real_eip !80
  %782 = zext i1 %781 to i8, !mcsema_real_eip !80
  %783 = xor i8 %782, 1, !mcsema_real_eip !80
  %784 = trunc i8 %783 to i1, !mcsema_real_eip !80
  %785 = zext i1 %784 to i8, !mcsema_real_eip !80
  store volatile i8 %785, i8* %PF_write, !mcsema_real_eip !80
  %786 = icmp eq i32 %773, 0, !mcsema_real_eip !80
  %787 = zext i1 %786 to i8, !mcsema_real_eip !80
  store volatile i8 %787, i8* %ZF_write, !mcsema_real_eip !80
  %788 = lshr i32 %773, 31, !mcsema_real_eip !80
  %789 = trunc i32 %788 to i1, !mcsema_real_eip !80
  %790 = zext i1 %789 to i8, !mcsema_real_eip !80
  %791 = trunc i8 %790 to i1, !mcsema_real_eip !80
  %792 = zext i1 %791 to i8, !mcsema_real_eip !80
  store volatile i8 %792, i8* %SF_write, !mcsema_real_eip !80
  %793 = icmp ult i32 %772, 96, !mcsema_real_eip !80
  %794 = zext i1 %793 to i8, !mcsema_real_eip !80
  store volatile i8 %794, i8* %CF_write, !mcsema_real_eip !80
  %795 = xor i32 %772, 96, !mcsema_real_eip !80
  %796 = xor i32 %772, %773, !mcsema_real_eip !80
  %797 = and i32 %795, %796, !mcsema_real_eip !80
  %798 = lshr i32 %797, 31, !mcsema_real_eip !80
  %799 = trunc i32 %798 to i1, !mcsema_real_eip !80
  %800 = zext i1 %799 to i8, !mcsema_real_eip !80
  %801 = trunc i8 %800 to i1, !mcsema_real_eip !80
  %802 = zext i1 %801 to i8, !mcsema_real_eip !80
  store volatile i8 %802, i8* %OF_write, !mcsema_real_eip !80
  store volatile i64 337, i64* %EIP_write, !mcsema_real_eip !81
  %803 = load i8, i8* %ZF_read, !mcsema_real_eip !81
  %804 = trunc i8 %803 to i1, !mcsema_real_eip !81
  %805 = icmp eq i1 %804, false, !mcsema_real_eip !81
  br i1 %805, label %block_165, label %block_157, !mcsema_real_eip !81

block_157:                                        ; preds = %block_14a
  store volatile i64 343, i64* %EIP_write, !mcsema_real_eip !82
  %806 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %807 = add i64 %806, -20, !mcsema_real_eip !82
  %808 = inttoptr i64 %807 to i64*, !mcsema_real_eip !82
  %809 = ptrtoint i64* %808 to i64, !mcsema_real_eip !82
  %810 = inttoptr i64 %809 to i32*, !mcsema_real_eip !82
  %811 = load i32, i32* %810, !mcsema_real_eip !82
  %812 = zext i32 %811 to i64, !mcsema_real_eip !82
  store volatile i64 %812, i64* %EAX_write, !mcsema_real_eip !82
  store volatile i64 346, i64* %EIP_write, !mcsema_real_eip !83
  %813 = load i32, i32* %EAX_read, !mcsema_real_eip !83
  %814 = add i32 4, %813, !mcsema_real_eip !83
  %815 = xor i32 %814, %813, !mcsema_real_eip !83
  %816 = xor i32 %815, 4, !mcsema_real_eip !83
  %817 = and i32 %816, 16, !mcsema_real_eip !83
  %818 = icmp ne i32 %817, 0, !mcsema_real_eip !83
  %819 = zext i1 %818 to i8, !mcsema_real_eip !83
  store volatile i8 %819, i8* %AF_write, !mcsema_real_eip !83
  %820 = lshr i32 %814, 31, !mcsema_real_eip !83
  %821 = trunc i32 %820 to i1, !mcsema_real_eip !83
  %822 = zext i1 %821 to i8, !mcsema_real_eip !83
  %823 = trunc i8 %822 to i1, !mcsema_real_eip !83
  %824 = zext i1 %823 to i8, !mcsema_real_eip !83
  store volatile i8 %824, i8* %SF_write, !mcsema_real_eip !83
  %825 = icmp eq i32 %814, 0, !mcsema_real_eip !83
  %826 = zext i1 %825 to i8, !mcsema_real_eip !83
  store volatile i8 %826, i8* %ZF_write, !mcsema_real_eip !83
  %827 = xor i32 %813, 4, !mcsema_real_eip !83
  %828 = xor i32 %827, -1, !mcsema_real_eip !83
  %829 = xor i32 %813, %814, !mcsema_real_eip !83
  %830 = and i32 %828, %829, !mcsema_real_eip !83
  %831 = lshr i32 %830, 31, !mcsema_real_eip !83
  %832 = and i32 %831, 1, !mcsema_real_eip !83
  %833 = trunc i32 %832 to i1, !mcsema_real_eip !83
  %834 = zext i1 %833 to i8, !mcsema_real_eip !83
  %835 = trunc i8 %834 to i1, !mcsema_real_eip !83
  %836 = zext i1 %835 to i8, !mcsema_real_eip !83
  store volatile i8 %836, i8* %OF_write, !mcsema_real_eip !83
  %837 = trunc i32 %814 to i8, !mcsema_real_eip !83
  %838 = call i8 @llvm.ctpop.i8(i8 %837), !mcsema_real_eip !83
  %839 = trunc i8 %838 to i1, !mcsema_real_eip !83
  %840 = zext i1 %839 to i8, !mcsema_real_eip !83
  %841 = xor i8 %840, 1, !mcsema_real_eip !83
  %842 = trunc i8 %841 to i1, !mcsema_real_eip !83
  %843 = zext i1 %842 to i8, !mcsema_real_eip !83
  store volatile i8 %843, i8* %PF_write, !mcsema_real_eip !83
  %844 = icmp ult i32 %814, %813, !mcsema_real_eip !83
  %845 = zext i1 %844 to i8, !mcsema_real_eip !83
  store volatile i8 %845, i8* %CF_write, !mcsema_real_eip !83
  %846 = zext i32 %814 to i64, !mcsema_real_eip !83
  store volatile i64 %846, i64* %EAX_write, !mcsema_real_eip !83
  store volatile i64 349, i64* %EIP_write, !mcsema_real_eip !84
  %847 = load i64, i64* %RBP_read, !mcsema_real_eip !84
  %848 = add i64 %847, -20, !mcsema_real_eip !84
  %849 = inttoptr i64 %848 to i64*, !mcsema_real_eip !84
  %850 = load i32, i32* %EAX_read, !mcsema_real_eip !84
  %851 = ptrtoint i64* %849 to i64, !mcsema_real_eip !84
  %852 = inttoptr i64 %851 to i32*, !mcsema_real_eip !84
  store i32 %850, i32* %852, !mcsema_real_eip !84
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !85
  br label %block_16e, !mcsema_real_eip !85

block_165:                                        ; preds = %block_14a, %block_11a
  store volatile i64 357, i64* %EIP_write, !mcsema_real_eip !86
  %853 = load i64, i64* %RBP_read, !mcsema_real_eip !86
  %854 = add i64 %853, -20, !mcsema_real_eip !86
  %855 = inttoptr i64 %854 to i64*, !mcsema_real_eip !86
  %856 = ptrtoint i64* %855 to i64, !mcsema_real_eip !86
  %857 = inttoptr i64 %856 to i32*, !mcsema_real_eip !86
  %858 = load i32, i32* %857, !mcsema_real_eip !86
  %859 = zext i32 %858 to i64, !mcsema_real_eip !86
  store volatile i64 %859, i64* %EAX_write, !mcsema_real_eip !86
  store volatile i64 360, i64* %EIP_write, !mcsema_real_eip !87
  %860 = load i32, i32* %EAX_read, !mcsema_real_eip !87
  %861 = add i32 5, %860, !mcsema_real_eip !87
  %862 = xor i32 %861, %860, !mcsema_real_eip !87
  %863 = xor i32 %862, 5, !mcsema_real_eip !87
  %864 = and i32 %863, 16, !mcsema_real_eip !87
  %865 = icmp ne i32 %864, 0, !mcsema_real_eip !87
  %866 = zext i1 %865 to i8, !mcsema_real_eip !87
  store volatile i8 %866, i8* %AF_write, !mcsema_real_eip !87
  %867 = lshr i32 %861, 31, !mcsema_real_eip !87
  %868 = trunc i32 %867 to i1, !mcsema_real_eip !87
  %869 = zext i1 %868 to i8, !mcsema_real_eip !87
  %870 = trunc i8 %869 to i1, !mcsema_real_eip !87
  %871 = zext i1 %870 to i8, !mcsema_real_eip !87
  store volatile i8 %871, i8* %SF_write, !mcsema_real_eip !87
  %872 = icmp eq i32 %861, 0, !mcsema_real_eip !87
  %873 = zext i1 %872 to i8, !mcsema_real_eip !87
  store volatile i8 %873, i8* %ZF_write, !mcsema_real_eip !87
  %874 = xor i32 %860, 5, !mcsema_real_eip !87
  %875 = xor i32 %874, -1, !mcsema_real_eip !87
  %876 = xor i32 %860, %861, !mcsema_real_eip !87
  %877 = and i32 %875, %876, !mcsema_real_eip !87
  %878 = lshr i32 %877, 31, !mcsema_real_eip !87
  %879 = and i32 %878, 1, !mcsema_real_eip !87
  %880 = trunc i32 %879 to i1, !mcsema_real_eip !87
  %881 = zext i1 %880 to i8, !mcsema_real_eip !87
  %882 = trunc i8 %881 to i1, !mcsema_real_eip !87
  %883 = zext i1 %882 to i8, !mcsema_real_eip !87
  store volatile i8 %883, i8* %OF_write, !mcsema_real_eip !87
  %884 = trunc i32 %861 to i8, !mcsema_real_eip !87
  %885 = call i8 @llvm.ctpop.i8(i8 %884), !mcsema_real_eip !87
  %886 = trunc i8 %885 to i1, !mcsema_real_eip !87
  %887 = zext i1 %886 to i8, !mcsema_real_eip !87
  %888 = xor i8 %887, 1, !mcsema_real_eip !87
  %889 = trunc i8 %888 to i1, !mcsema_real_eip !87
  %890 = zext i1 %889 to i8, !mcsema_real_eip !87
  store volatile i8 %890, i8* %PF_write, !mcsema_real_eip !87
  %891 = icmp ult i32 %861, %860, !mcsema_real_eip !87
  %892 = zext i1 %891 to i8, !mcsema_real_eip !87
  store volatile i8 %892, i8* %CF_write, !mcsema_real_eip !87
  %893 = zext i32 %861 to i64, !mcsema_real_eip !87
  store volatile i64 %893, i64* %EAX_write, !mcsema_real_eip !87
  store volatile i64 363, i64* %EIP_write, !mcsema_real_eip !88
  %894 = load i64, i64* %RBP_read, !mcsema_real_eip !88
  %895 = add i64 %894, -20, !mcsema_real_eip !88
  %896 = inttoptr i64 %895 to i64*, !mcsema_real_eip !88
  %897 = load i32, i32* %EAX_read, !mcsema_real_eip !88
  %898 = ptrtoint i64* %896 to i64, !mcsema_real_eip !88
  %899 = inttoptr i64 %898 to i32*, !mcsema_real_eip !88
  store i32 %897, i32* %899, !mcsema_real_eip !88
  br label %block_16e, !mcsema_real_eip !89

block_16e:                                        ; preds = %block_165, %block_157
  store volatile i64 366, i64* %EIP_write, !mcsema_real_eip !89
  %900 = load i64, i64* %RBP_read, !mcsema_real_eip !89
  %901 = add i64 %900, -16, !mcsema_real_eip !89
  %902 = inttoptr i64 %901 to i64*, !mcsema_real_eip !89
  %903 = load i64, i64* %902, !mcsema_real_eip !89
  store volatile i64 %903, i64* %RAX_write, !mcsema_real_eip !89
  store volatile i64 370, i64* %EIP_write, !mcsema_real_eip !90
  %904 = load i64, i64* %RAX_read, !mcsema_real_eip !90
  %905 = add i64 %904, 6, !mcsema_real_eip !90
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !90
  %907 = ptrtoint i64* %906 to i64, !mcsema_real_eip !90
  %908 = inttoptr i64 %907 to i8*, !mcsema_real_eip !90
  %909 = load i8, i8* %908, !mcsema_real_eip !90
  %910 = zext i8 %909 to i32, !mcsema_real_eip !90
  %911 = zext i32 %910 to i64, !mcsema_real_eip !90
  store volatile i64 %911, i64* %EDI_write, !mcsema_real_eip !90
  store volatile i64 374, i64* %EIP_write, !mcsema_real_eip !91
  %912 = load i64, i64* %RDI_read, !mcsema_real_eip !91
  %913 = load i64, i64* %RSP_read, !mcsema_real_eip !91
  %914 = sub i64 %913, 8, !mcsema_real_eip !91
  %915 = inttoptr i64 %914 to i64*, !mcsema_real_eip !91
  store i64 -2415393069852865332, i64* %915, !mcsema_real_eip !91
  store volatile i64 %914, i64* %RSP_write, !mcsema_real_eip !91
  %916 = call x86_64_sysvcc i64 @_to_byte(i64 %912), !mcsema_real_eip !91
  store volatile i64 %916, i64* %RAX_write, !mcsema_real_eip !91
  store volatile i64 379, i64* %EIP_write, !mcsema_real_eip !92
  %917 = load i8, i8* %AL_read, !mcsema_real_eip !92
  store volatile i8 %917, i8* %CL_write, !mcsema_real_eip !92
  store volatile i64 381, i64* %EIP_write, !mcsema_real_eip !93
  %918 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %919 = add i64 %918, -35, !mcsema_real_eip !93
  %920 = inttoptr i64 %919 to i64*, !mcsema_real_eip !93
  %921 = load i8, i8* %CL_read, !mcsema_real_eip !93
  %922 = ptrtoint i64* %920 to i64, !mcsema_real_eip !93
  %923 = inttoptr i64 %922 to i8*, !mcsema_real_eip !93
  store i8 %921, i8* %923, !mcsema_real_eip !93
  store volatile i64 384, i64* %EIP_write, !mcsema_real_eip !94
  %924 = load i64, i64* %RBP_read, !mcsema_real_eip !94
  %925 = add i64 %924, -16, !mcsema_real_eip !94
  %926 = inttoptr i64 %925 to i64*, !mcsema_real_eip !94
  %927 = load i64, i64* %926, !mcsema_real_eip !94
  store volatile i64 %927, i64* %RDX_write, !mcsema_real_eip !94
  store volatile i64 388, i64* %EIP_write, !mcsema_real_eip !95
  %928 = load i64, i64* %RDX_read, !mcsema_real_eip !95
  %929 = add i64 %928, 7, !mcsema_real_eip !95
  %930 = inttoptr i64 %929 to i64*, !mcsema_real_eip !95
  %931 = ptrtoint i64* %930 to i64, !mcsema_real_eip !95
  %932 = inttoptr i64 %931 to i8*, !mcsema_real_eip !95
  %933 = load i8, i8* %932, !mcsema_real_eip !95
  %934 = zext i8 %933 to i32, !mcsema_real_eip !95
  %935 = zext i32 %934 to i64, !mcsema_real_eip !95
  store volatile i64 %935, i64* %EDI_write, !mcsema_real_eip !95
  store volatile i64 392, i64* %EIP_write, !mcsema_real_eip !96
  %936 = load i64, i64* %RDI_read, !mcsema_real_eip !96
  %937 = load i64, i64* %RSP_read, !mcsema_real_eip !96
  %938 = sub i64 %937, 8, !mcsema_real_eip !96
  %939 = inttoptr i64 %938 to i64*, !mcsema_real_eip !96
  store i64 -2415393069852865332, i64* %939, !mcsema_real_eip !96
  store volatile i64 %938, i64* %RSP_write, !mcsema_real_eip !96
  %940 = call x86_64_sysvcc i64 @_to_byte(i64 %936), !mcsema_real_eip !96
  store volatile i64 %940, i64* %RAX_write, !mcsema_real_eip !96
  store volatile i64 397, i64* %EIP_write, !mcsema_real_eip !97
  %941 = load i64, i64* %RBP_read, !mcsema_real_eip !97
  %942 = add i64 %941, -35, !mcsema_real_eip !97
  %943 = inttoptr i64 %942 to i64*, !mcsema_real_eip !97
  %944 = ptrtoint i64* %943 to i64, !mcsema_real_eip !97
  %945 = inttoptr i64 %944 to i8*, !mcsema_real_eip !97
  %946 = load i8, i8* %945, !mcsema_real_eip !97
  %947 = zext i8 %946 to i32, !mcsema_real_eip !97
  %948 = zext i32 %947 to i64, !mcsema_real_eip !97
  store volatile i64 %948, i64* %EDI_write, !mcsema_real_eip !97
  store volatile i64 401, i64* %EIP_write, !mcsema_real_eip !98
  %949 = load i32, i32* %EDI_read, !mcsema_real_eip !98
  %950 = load i32, i32* %EAX_read, !mcsema_real_eip !98
  %951 = or i32 %949, %950, !mcsema_real_eip !98
  %952 = trunc i8 0 to i1, !mcsema_real_eip !98
  %953 = zext i1 %952 to i8, !mcsema_real_eip !98
  store volatile i8 %953, i8* %OF_write, !mcsema_real_eip !98
  %954 = trunc i8 0 to i1, !mcsema_real_eip !98
  %955 = zext i1 %954 to i8, !mcsema_real_eip !98
  store volatile i8 %955, i8* %CF_write, !mcsema_real_eip !98
  %956 = lshr i32 %951, 31, !mcsema_real_eip !98
  %957 = trunc i32 %956 to i1, !mcsema_real_eip !98
  %958 = zext i1 %957 to i8, !mcsema_real_eip !98
  %959 = trunc i8 %958 to i1, !mcsema_real_eip !98
  %960 = zext i1 %959 to i8, !mcsema_real_eip !98
  store volatile i8 %960, i8* %SF_write, !mcsema_real_eip !98
  %961 = icmp eq i32 %951, 0, !mcsema_real_eip !98
  %962 = zext i1 %961 to i8, !mcsema_real_eip !98
  store volatile i8 %962, i8* %ZF_write, !mcsema_real_eip !98
  %963 = trunc i32 %951 to i8, !mcsema_real_eip !98
  %964 = call i8 @llvm.ctpop.i8(i8 %963), !mcsema_real_eip !98
  %965 = trunc i8 %964 to i1, !mcsema_real_eip !98
  %966 = zext i1 %965 to i8, !mcsema_real_eip !98
  %967 = xor i8 %966, 1, !mcsema_real_eip !98
  %968 = trunc i8 %967 to i1, !mcsema_real_eip !98
  %969 = zext i1 %968 to i8, !mcsema_real_eip !98
  store volatile i8 %969, i8* %PF_write, !mcsema_real_eip !98
  %970 = zext i32 %951 to i64, !mcsema_real_eip !98
  store volatile i64 %970, i64* %EDI_write, !mcsema_real_eip !98
  store volatile i64 403, i64* %EIP_write, !mcsema_real_eip !99
  %971 = load i8, i8* %DIL_read, !mcsema_real_eip !99
  store volatile i8 %971, i8* %CL_write, !mcsema_real_eip !99
  store volatile i64 406, i64* %EIP_write, !mcsema_real_eip !100
  %972 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %973 = add i64 %972, -35, !mcsema_real_eip !100
  %974 = inttoptr i64 %973 to i64*, !mcsema_real_eip !100
  %975 = load i8, i8* %CL_read, !mcsema_real_eip !100
  %976 = ptrtoint i64* %974 to i64, !mcsema_real_eip !100
  %977 = inttoptr i64 %976 to i8*, !mcsema_real_eip !100
  store i8 %975, i8* %977, !mcsema_real_eip !100
  store volatile i64 409, i64* %EIP_write, !mcsema_real_eip !101
  %978 = load i64, i64* %RBP_read, !mcsema_real_eip !101
  %979 = add i64 %978, -35, !mcsema_real_eip !101
  %980 = inttoptr i64 %979 to i64*, !mcsema_real_eip !101
  %981 = ptrtoint i64* %980 to i64, !mcsema_real_eip !101
  %982 = inttoptr i64 %981 to i8*, !mcsema_real_eip !101
  %983 = load i8, i8* %982, !mcsema_real_eip !101
  %984 = zext i8 %983 to i32, !mcsema_real_eip !101
  %985 = zext i32 %984 to i64, !mcsema_real_eip !101
  store volatile i64 %985, i64* %EAX_write, !mcsema_real_eip !101
  store volatile i64 413, i64* %EIP_write, !mcsema_real_eip !102
  %986 = load i32, i32* %EAX_read, !mcsema_real_eip !102
  %987 = xor i32 %986, -1, !mcsema_real_eip !102
  %988 = trunc i8 0 to i1, !mcsema_real_eip !102
  %989 = zext i1 %988 to i8, !mcsema_real_eip !102
  store volatile i8 %989, i8* %CF_write, !mcsema_real_eip !102
  %990 = trunc i8 0 to i1, !mcsema_real_eip !102
  %991 = zext i1 %990 to i8, !mcsema_real_eip !102
  store volatile i8 %991, i8* %OF_write, !mcsema_real_eip !102
  %992 = lshr i32 %987, 31, !mcsema_real_eip !102
  %993 = trunc i32 %992 to i1, !mcsema_real_eip !102
  %994 = zext i1 %993 to i8, !mcsema_real_eip !102
  %995 = trunc i8 %994 to i1, !mcsema_real_eip !102
  %996 = zext i1 %995 to i8, !mcsema_real_eip !102
  store volatile i8 %996, i8* %SF_write, !mcsema_real_eip !102
  %997 = icmp eq i32 %987, 0, !mcsema_real_eip !102
  %998 = zext i1 %997 to i8, !mcsema_real_eip !102
  store volatile i8 %998, i8* %ZF_write, !mcsema_real_eip !102
  %999 = trunc i32 %987 to i8, !mcsema_real_eip !102
  %1000 = call i8 @llvm.ctpop.i8(i8 %999), !mcsema_real_eip !102
  %1001 = trunc i8 %1000 to i1, !mcsema_real_eip !102
  %1002 = zext i1 %1001 to i8, !mcsema_real_eip !102
  %1003 = xor i8 %1002, 1, !mcsema_real_eip !102
  %1004 = trunc i8 %1003 to i1, !mcsema_real_eip !102
  %1005 = zext i1 %1004 to i8, !mcsema_real_eip !102
  store volatile i8 %1005, i8* %PF_write, !mcsema_real_eip !102
  %1006 = zext i32 %987 to i64, !mcsema_real_eip !102
  store volatile i64 %1006, i64* %EAX_write, !mcsema_real_eip !102
  store volatile i64 416, i64* %EIP_write, !mcsema_real_eip !103
  %1007 = load i32, i32* %EAX_read, !mcsema_real_eip !103
  %1008 = sub i32 %1007, 70, !mcsema_real_eip !103
  %1009 = xor i32 %1008, %1007, !mcsema_real_eip !103
  %1010 = xor i32 %1009, 70, !mcsema_real_eip !103
  %1011 = and i32 %1010, 16, !mcsema_real_eip !103
  %1012 = icmp ne i32 %1011, 0, !mcsema_real_eip !103
  %1013 = zext i1 %1012 to i8, !mcsema_real_eip !103
  store volatile i8 %1013, i8* %AF_write, !mcsema_real_eip !103
  %1014 = trunc i32 %1008 to i8, !mcsema_real_eip !103
  %1015 = call i8 @llvm.ctpop.i8(i8 %1014), !mcsema_real_eip !103
  %1016 = trunc i8 %1015 to i1, !mcsema_real_eip !103
  %1017 = zext i1 %1016 to i8, !mcsema_real_eip !103
  %1018 = xor i8 %1017, 1, !mcsema_real_eip !103
  %1019 = trunc i8 %1018 to i1, !mcsema_real_eip !103
  %1020 = zext i1 %1019 to i8, !mcsema_real_eip !103
  store volatile i8 %1020, i8* %PF_write, !mcsema_real_eip !103
  %1021 = icmp eq i32 %1008, 0, !mcsema_real_eip !103
  %1022 = zext i1 %1021 to i8, !mcsema_real_eip !103
  store volatile i8 %1022, i8* %ZF_write, !mcsema_real_eip !103
  %1023 = lshr i32 %1008, 31, !mcsema_real_eip !103
  %1024 = trunc i32 %1023 to i1, !mcsema_real_eip !103
  %1025 = zext i1 %1024 to i8, !mcsema_real_eip !103
  %1026 = trunc i8 %1025 to i1, !mcsema_real_eip !103
  %1027 = zext i1 %1026 to i8, !mcsema_real_eip !103
  store volatile i8 %1027, i8* %SF_write, !mcsema_real_eip !103
  %1028 = icmp ult i32 %1007, 70, !mcsema_real_eip !103
  %1029 = zext i1 %1028 to i8, !mcsema_real_eip !103
  store volatile i8 %1029, i8* %CF_write, !mcsema_real_eip !103
  %1030 = xor i32 %1007, 70, !mcsema_real_eip !103
  %1031 = xor i32 %1007, %1008, !mcsema_real_eip !103
  %1032 = and i32 %1030, %1031, !mcsema_real_eip !103
  %1033 = lshr i32 %1032, 31, !mcsema_real_eip !103
  %1034 = trunc i32 %1033 to i1, !mcsema_real_eip !103
  %1035 = zext i1 %1034 to i8, !mcsema_real_eip !103
  %1036 = trunc i8 %1035 to i1, !mcsema_real_eip !103
  %1037 = zext i1 %1036 to i8, !mcsema_real_eip !103
  store volatile i8 %1037, i8* %OF_write, !mcsema_real_eip !103
  store volatile i64 419, i64* %EIP_write, !mcsema_real_eip !104
  %1038 = load i8, i8* %ZF_read, !mcsema_real_eip !104
  %1039 = trunc i8 %1038 to i1, !mcsema_real_eip !104
  %1040 = icmp eq i1 %1039, false, !mcsema_real_eip !104
  br i1 %1040, label %block_1b7, label %block_1a9, !mcsema_real_eip !104

block_1a9:                                        ; preds = %block_16e
  store volatile i64 425, i64* %EIP_write, !mcsema_real_eip !105
  %1041 = load i64, i64* %RBP_read, !mcsema_real_eip !105
  %1042 = add i64 %1041, -20, !mcsema_real_eip !105
  %1043 = inttoptr i64 %1042 to i64*, !mcsema_real_eip !105
  %1044 = ptrtoint i64* %1043 to i64, !mcsema_real_eip !105
  %1045 = inttoptr i64 %1044 to i32*, !mcsema_real_eip !105
  %1046 = load i32, i32* %1045, !mcsema_real_eip !105
  %1047 = zext i32 %1046 to i64, !mcsema_real_eip !105
  store volatile i64 %1047, i64* %EAX_write, !mcsema_real_eip !105
  store volatile i64 428, i64* %EIP_write, !mcsema_real_eip !106
  %1048 = load i32, i32* %EAX_read, !mcsema_real_eip !106
  %1049 = sub i32 %1048, 1, !mcsema_real_eip !106
  %1050 = xor i32 %1049, %1048, !mcsema_real_eip !106
  %1051 = xor i32 %1050, 1, !mcsema_real_eip !106
  %1052 = and i32 %1051, 16, !mcsema_real_eip !106
  %1053 = icmp ne i32 %1052, 0, !mcsema_real_eip !106
  %1054 = zext i1 %1053 to i8, !mcsema_real_eip !106
  store volatile i8 %1054, i8* %AF_write, !mcsema_real_eip !106
  %1055 = trunc i32 %1049 to i8, !mcsema_real_eip !106
  %1056 = call i8 @llvm.ctpop.i8(i8 %1055), !mcsema_real_eip !106
  %1057 = trunc i8 %1056 to i1, !mcsema_real_eip !106
  %1058 = zext i1 %1057 to i8, !mcsema_real_eip !106
  %1059 = xor i8 %1058, 1, !mcsema_real_eip !106
  %1060 = trunc i8 %1059 to i1, !mcsema_real_eip !106
  %1061 = zext i1 %1060 to i8, !mcsema_real_eip !106
  store volatile i8 %1061, i8* %PF_write, !mcsema_real_eip !106
  %1062 = icmp eq i32 %1049, 0, !mcsema_real_eip !106
  %1063 = zext i1 %1062 to i8, !mcsema_real_eip !106
  store volatile i8 %1063, i8* %ZF_write, !mcsema_real_eip !106
  %1064 = lshr i32 %1049, 31, !mcsema_real_eip !106
  %1065 = trunc i32 %1064 to i1, !mcsema_real_eip !106
  %1066 = zext i1 %1065 to i8, !mcsema_real_eip !106
  %1067 = trunc i8 %1066 to i1, !mcsema_real_eip !106
  %1068 = zext i1 %1067 to i8, !mcsema_real_eip !106
  store volatile i8 %1068, i8* %SF_write, !mcsema_real_eip !106
  %1069 = icmp ult i32 %1048, 1, !mcsema_real_eip !106
  %1070 = zext i1 %1069 to i8, !mcsema_real_eip !106
  store volatile i8 %1070, i8* %CF_write, !mcsema_real_eip !106
  %1071 = xor i32 %1048, 1, !mcsema_real_eip !106
  %1072 = xor i32 %1048, %1049, !mcsema_real_eip !106
  %1073 = and i32 %1071, %1072, !mcsema_real_eip !106
  %1074 = lshr i32 %1073, 31, !mcsema_real_eip !106
  %1075 = trunc i32 %1074 to i1, !mcsema_real_eip !106
  %1076 = zext i1 %1075 to i8, !mcsema_real_eip !106
  %1077 = trunc i8 %1076 to i1, !mcsema_real_eip !106
  %1078 = zext i1 %1077 to i8, !mcsema_real_eip !106
  store volatile i8 %1078, i8* %OF_write, !mcsema_real_eip !106
  %1079 = zext i32 %1049 to i64, !mcsema_real_eip !106
  store volatile i64 %1079, i64* %EAX_write, !mcsema_real_eip !106
  store volatile i64 431, i64* %EIP_write, !mcsema_real_eip !107
  %1080 = load i64, i64* %RBP_read, !mcsema_real_eip !107
  %1081 = add i64 %1080, -20, !mcsema_real_eip !107
  %1082 = inttoptr i64 %1081 to i64*, !mcsema_real_eip !107
  %1083 = load i32, i32* %EAX_read, !mcsema_real_eip !107
  %1084 = ptrtoint i64* %1082 to i64, !mcsema_real_eip !107
  %1085 = inttoptr i64 %1084 to i32*, !mcsema_real_eip !107
  store i32 %1083, i32* %1085, !mcsema_real_eip !107
  store volatile i64 434, i64* %EIP_write, !mcsema_real_eip !108
  br label %block_1c2, !mcsema_real_eip !108

block_1b7:                                        ; preds = %block_16e
  store volatile i64 439, i64* %EIP_write, !mcsema_real_eip !109
  %1086 = load i64, i64* %RBP_read, !mcsema_real_eip !109
  %1087 = add i64 %1086, -20, !mcsema_real_eip !109
  %1088 = inttoptr i64 %1087 to i64*, !mcsema_real_eip !109
  %1089 = ptrtoint i64* %1088 to i64, !mcsema_real_eip !109
  %1090 = inttoptr i64 %1089 to i32*, !mcsema_real_eip !109
  %1091 = load i32, i32* %1090, !mcsema_real_eip !109
  %1092 = zext i32 %1091 to i64, !mcsema_real_eip !109
  store volatile i64 %1092, i64* %ECX_write, !mcsema_real_eip !109
  store volatile i64 442, i64* %EIP_write, !mcsema_real_eip !110
  %1093 = load i64, i64* %RBP_read, !mcsema_real_eip !110
  %1094 = add i64 %1093, -20, !mcsema_real_eip !110
  %1095 = inttoptr i64 %1094 to i64*, !mcsema_real_eip !110
  %1096 = ptrtoint i64* %1095 to i64, !mcsema_real_eip !110
  %1097 = inttoptr i64 %1096 to i32*, !mcsema_real_eip !110
  %1098 = load i32, i32* %1097, !mcsema_real_eip !110
  %1099 = zext i32 %1098 to i64, !mcsema_real_eip !110
  store volatile i64 %1099, i64* %EAX_write, !mcsema_real_eip !110
  store volatile i64 445, i64* %EIP_write, !mcsema_real_eip !111
  %1100 = load i32, i32* %EAX_read, !mcsema_real_eip !111
  %1101 = load i8, i8* %CL_read, !mcsema_real_eip !111
  %1102 = zext i8 %1101 to i32, !mcsema_real_eip !111
  %1103 = and i32 %1102, 31, !mcsema_real_eip !111
  %1104 = sub i32 %1102, 1, !mcsema_real_eip !111
  %1105 = icmp ne i32 %1103, 0, !mcsema_real_eip !111
  %1106 = select i1 %1105, i32 %1104, i32 0, !mcsema_real_eip !111
  %1107 = select i1 %1105, i32 1, i32 0, !mcsema_real_eip !111
  %1108 = shl i32 %1100, %1106, !mcsema_real_eip !111
  %1109 = shl i32 1, 31, !mcsema_real_eip !111
  %1110 = and i32 %1108, %1109, !mcsema_real_eip !111
  %1111 = icmp ne i32 %1110, 0, !mcsema_real_eip !111
  %1112 = load i8, i8* %CF_read, !mcsema_real_eip !111
  %1113 = trunc i8 %1112 to i1, !mcsema_real_eip !111
  %1114 = select i1 %1105, i1 %1111, i1 %1113, !mcsema_real_eip !111
  %1115 = shl i32 %1108, %1107, !mcsema_real_eip !111
  %1116 = icmp eq i32 %1103, 1, !mcsema_real_eip !111
  %1117 = load i8, i8* %OF_read, !mcsema_real_eip !111
  %1118 = trunc i8 %1117 to i1, !mcsema_real_eip !111
  %1119 = and i32 %1115, -2147483648, !mcsema_real_eip !111
  %1120 = icmp ne i32 %1119, 0, !mcsema_real_eip !111
  %1121 = xor i1 %1120, %1114, !mcsema_real_eip !111
  %1122 = select i1 %1116, i1 %1121, i1 %1118, !mcsema_real_eip !111
  %1123 = zext i1 %1122 to i8, !mcsema_real_eip !111
  store volatile i8 %1123, i8* %OF_write, !mcsema_real_eip !111
  %1124 = zext i1 %1114 to i8, !mcsema_real_eip !111
  store volatile i8 %1124, i8* %CF_write, !mcsema_real_eip !111
  %1125 = load i8, i8* %ZF_read, !mcsema_real_eip !111
  %1126 = trunc i8 %1125 to i1, !mcsema_real_eip !111
  %1127 = icmp eq i32 %1115, 0, !mcsema_real_eip !111
  %1128 = select i1 %1105, i1 %1127, i1 %1126, !mcsema_real_eip !111
  %1129 = zext i1 %1128 to i8, !mcsema_real_eip !111
  store volatile i8 %1129, i8* %ZF_write, !mcsema_real_eip !111
  %1130 = load i8, i8* %SF_read, !mcsema_real_eip !111
  %1131 = trunc i8 %1130 to i1, !mcsema_real_eip !111
  %1132 = icmp slt i32 %1115, 0, !mcsema_real_eip !111
  %1133 = select i1 %1105, i1 %1132, i1 %1131, !mcsema_real_eip !111
  %1134 = zext i1 %1133 to i8, !mcsema_real_eip !111
  store volatile i8 %1134, i8* %SF_write, !mcsema_real_eip !111
  %1135 = load i8, i8* %PF_read, !mcsema_real_eip !111
  %1136 = trunc i8 %1135 to i1, !mcsema_real_eip !111
  %1137 = trunc i32 %1115 to i8, !mcsema_real_eip !111
  %1138 = call i8 @llvm.ctpop.i8(i8 %1137), !mcsema_real_eip !111
  %1139 = trunc i8 %1138 to i1, !mcsema_real_eip !111
  %1140 = zext i1 %1139 to i8, !mcsema_real_eip !111
  %1141 = xor i8 %1140, 1, !mcsema_real_eip !111
  %1142 = trunc i8 %1141 to i1, !mcsema_real_eip !111
  %1143 = zext i1 %1142 to i8, !mcsema_real_eip !111
  store volatile i8 %1143, i8* %PF_write, !mcsema_real_eip !111
  %1144 = load i8, i8* %PF_read, !mcsema_real_eip !111
  %1145 = trunc i8 %1144 to i1, !mcsema_real_eip !111
  %1146 = select i1 %1105, i1 %1145, i1 %1136, !mcsema_real_eip !111
  %1147 = zext i1 %1146 to i8, !mcsema_real_eip !111
  store volatile i8 %1147, i8* %PF_write, !mcsema_real_eip !111
  %1148 = zext i32 %1115 to i64, !mcsema_real_eip !111
  store volatile i64 %1148, i64* %EAX_write, !mcsema_real_eip !111
  store volatile i64 447, i64* %EIP_write, !mcsema_real_eip !112
  %1149 = load i64, i64* %RBP_read, !mcsema_real_eip !112
  %1150 = add i64 %1149, -20, !mcsema_real_eip !112
  %1151 = inttoptr i64 %1150 to i64*, !mcsema_real_eip !112
  %1152 = load i32, i32* %EAX_read, !mcsema_real_eip !112
  %1153 = ptrtoint i64* %1151 to i64, !mcsema_real_eip !112
  %1154 = inttoptr i64 %1153 to i32*, !mcsema_real_eip !112
  store i32 %1152, i32* %1154, !mcsema_real_eip !112
  br label %block_1c2, !mcsema_real_eip !113

block_1c2:                                        ; preds = %block_1b7, %block_1a9
  store volatile i64 450, i64* %EIP_write, !mcsema_real_eip !113
  %1155 = load i64, i64* %RBP_read, !mcsema_real_eip !113
  %1156 = add i64 %1155, -20, !mcsema_real_eip !113
  %1157 = inttoptr i64 %1156 to i64*, !mcsema_real_eip !113
  %1158 = ptrtoint i64* %1157 to i64, !mcsema_real_eip !113
  %1159 = inttoptr i64 %1158 to i32*, !mcsema_real_eip !113
  %1160 = load i32, i32* %1159, !mcsema_real_eip !113
  %1161 = sub i32 %1160, 0, !mcsema_real_eip !113
  %1162 = xor i32 %1161, %1160, !mcsema_real_eip !113
  %1163 = xor i32 %1162, 0, !mcsema_real_eip !113
  %1164 = and i32 %1163, 16, !mcsema_real_eip !113
  %1165 = icmp ne i32 %1164, 0, !mcsema_real_eip !113
  %1166 = zext i1 %1165 to i8, !mcsema_real_eip !113
  store volatile i8 %1166, i8* %AF_write, !mcsema_real_eip !113
  %1167 = trunc i32 %1161 to i8, !mcsema_real_eip !113
  %1168 = call i8 @llvm.ctpop.i8(i8 %1167), !mcsema_real_eip !113
  %1169 = trunc i8 %1168 to i1, !mcsema_real_eip !113
  %1170 = zext i1 %1169 to i8, !mcsema_real_eip !113
  %1171 = xor i8 %1170, 1, !mcsema_real_eip !113
  %1172 = trunc i8 %1171 to i1, !mcsema_real_eip !113
  %1173 = zext i1 %1172 to i8, !mcsema_real_eip !113
  store volatile i8 %1173, i8* %PF_write, !mcsema_real_eip !113
  %1174 = icmp eq i32 %1161, 0, !mcsema_real_eip !113
  %1175 = zext i1 %1174 to i8, !mcsema_real_eip !113
  store volatile i8 %1175, i8* %ZF_write, !mcsema_real_eip !113
  %1176 = lshr i32 %1161, 31, !mcsema_real_eip !113
  %1177 = trunc i32 %1176 to i1, !mcsema_real_eip !113
  %1178 = zext i1 %1177 to i8, !mcsema_real_eip !113
  %1179 = trunc i8 %1178 to i1, !mcsema_real_eip !113
  %1180 = zext i1 %1179 to i8, !mcsema_real_eip !113
  store volatile i8 %1180, i8* %SF_write, !mcsema_real_eip !113
  %1181 = icmp ult i32 %1160, 0, !mcsema_real_eip !113
  %1182 = zext i1 %1181 to i8, !mcsema_real_eip !113
  store volatile i8 %1182, i8* %CF_write, !mcsema_real_eip !113
  %1183 = xor i32 %1160, 0, !mcsema_real_eip !113
  %1184 = xor i32 %1160, %1161, !mcsema_real_eip !113
  %1185 = and i32 %1183, %1184, !mcsema_real_eip !113
  %1186 = lshr i32 %1185, 31, !mcsema_real_eip !113
  %1187 = trunc i32 %1186 to i1, !mcsema_real_eip !113
  %1188 = zext i1 %1187 to i8, !mcsema_real_eip !113
  %1189 = trunc i8 %1188 to i1, !mcsema_real_eip !113
  %1190 = zext i1 %1189 to i8, !mcsema_real_eip !113
  store volatile i8 %1190, i8* %OF_write, !mcsema_real_eip !113
  store volatile i64 454, i64* %EIP_write, !mcsema_real_eip !114
  %1191 = load i8, i8* %ZF_read, !mcsema_real_eip !114
  %1192 = trunc i8 %1191 to i1, !mcsema_real_eip !114
  %1193 = icmp eq i1 %1192, true, !mcsema_real_eip !114
  br i1 %1193, label %block_1d8, label %block_1cc, !mcsema_real_eip !114

block_1cc:                                        ; preds = %block_1c2
  store volatile i64 460, i64* %EIP_write, !mcsema_real_eip !115
  %1194 = load i64, i64* %RBP_read, !mcsema_real_eip !115
  %1195 = add i64 %1194, -4, !mcsema_real_eip !115
  %1196 = inttoptr i64 %1195 to i64*, !mcsema_real_eip !115
  %1197 = ptrtoint i64* %1196 to i64, !mcsema_real_eip !115
  %1198 = inttoptr i64 %1197 to i32*, !mcsema_real_eip !115
  store i32 -7, i32* %1198, !mcsema_real_eip !115
  store volatile i64 467, i64* %EIP_write, !mcsema_real_eip !116
  br label %block_417, !mcsema_real_eip !116

block_1d8:                                        ; preds = %block_1c2
  store volatile i64 472, i64* %EIP_write, !mcsema_real_eip !117
  %1199 = load i32, i32* %EDI_read, !mcsema_real_eip !117
  %1200 = load i32, i32* %EDI_read, !mcsema_real_eip !117
  %1201 = xor i32 %1199, %1200, !mcsema_real_eip !117
  %1202 = trunc i8 0 to i1, !mcsema_real_eip !117
  %1203 = zext i1 %1202 to i8, !mcsema_real_eip !117
  store volatile i8 %1203, i8* %CF_write, !mcsema_real_eip !117
  %1204 = trunc i8 0 to i1, !mcsema_real_eip !117
  %1205 = zext i1 %1204 to i8, !mcsema_real_eip !117
  store volatile i8 %1205, i8* %OF_write, !mcsema_real_eip !117
  %1206 = lshr i32 %1201, 31, !mcsema_real_eip !117
  %1207 = trunc i32 %1206 to i1, !mcsema_real_eip !117
  %1208 = zext i1 %1207 to i8, !mcsema_real_eip !117
  %1209 = trunc i8 %1208 to i1, !mcsema_real_eip !117
  %1210 = zext i1 %1209 to i8, !mcsema_real_eip !117
  store volatile i8 %1210, i8* %SF_write, !mcsema_real_eip !117
  %1211 = icmp eq i32 %1201, 0, !mcsema_real_eip !117
  %1212 = zext i1 %1211 to i8, !mcsema_real_eip !117
  store volatile i8 %1212, i8* %ZF_write, !mcsema_real_eip !117
  %1213 = trunc i32 %1201 to i8, !mcsema_real_eip !117
  %1214 = call i8 @llvm.ctpop.i8(i8 %1213), !mcsema_real_eip !117
  %1215 = trunc i8 %1214 to i1, !mcsema_real_eip !117
  %1216 = zext i1 %1215 to i8, !mcsema_real_eip !117
  %1217 = xor i8 %1216, 1, !mcsema_real_eip !117
  %1218 = trunc i8 %1217 to i1, !mcsema_real_eip !117
  %1219 = zext i1 %1218 to i8, !mcsema_real_eip !117
  store volatile i8 %1219, i8* %PF_write, !mcsema_real_eip !117
  %1220 = zext i32 %1201 to i64, !mcsema_real_eip !117
  store volatile i64 %1220, i64* %EDI_write, !mcsema_real_eip !117
  store volatile i64 474, i64* %EIP_write, !mcsema_real_eip !118
  %1221 = zext i32 4 to i64, !mcsema_real_eip !118
  store volatile i64 %1221, i64* %EDX_write, !mcsema_real_eip !118
  store volatile i64 479, i64* %EIP_write, !mcsema_real_eip !119
  %1222 = load i64, i64* %RBP_read, !mcsema_real_eip !119
  %1223 = add i64 %1222, -16, !mcsema_real_eip !119
  %1224 = inttoptr i64 %1223 to i64*, !mcsema_real_eip !119
  %1225 = load i64, i64* %1224, !mcsema_real_eip !119
  store volatile i64 %1225, i64* %RAX_write, !mcsema_real_eip !119
  store volatile i64 483, i64* %EIP_write, !mcsema_real_eip !120
  %1226 = load i64, i64* %RAX_read, !mcsema_real_eip !120
  %1227 = add i64 8, %1226, !mcsema_real_eip !120
  %1228 = xor i64 %1227, %1226, !mcsema_real_eip !120
  %1229 = xor i64 %1228, 8, !mcsema_real_eip !120
  %1230 = and i64 %1229, 16, !mcsema_real_eip !120
  %1231 = icmp ne i64 %1230, 0, !mcsema_real_eip !120
  %1232 = zext i1 %1231 to i8, !mcsema_real_eip !120
  store volatile i8 %1232, i8* %AF_write, !mcsema_real_eip !120
  %1233 = lshr i64 %1227, 63, !mcsema_real_eip !120
  %1234 = trunc i64 %1233 to i1, !mcsema_real_eip !120
  %1235 = zext i1 %1234 to i8, !mcsema_real_eip !120
  %1236 = trunc i8 %1235 to i1, !mcsema_real_eip !120
  %1237 = zext i1 %1236 to i8, !mcsema_real_eip !120
  store volatile i8 %1237, i8* %SF_write, !mcsema_real_eip !120
  %1238 = icmp eq i64 %1227, 0, !mcsema_real_eip !120
  %1239 = zext i1 %1238 to i8, !mcsema_real_eip !120
  store volatile i8 %1239, i8* %ZF_write, !mcsema_real_eip !120
  %1240 = xor i64 %1226, 8, !mcsema_real_eip !120
  %1241 = xor i64 %1240, -1, !mcsema_real_eip !120
  %1242 = xor i64 %1226, %1227, !mcsema_real_eip !120
  %1243 = and i64 %1241, %1242, !mcsema_real_eip !120
  %1244 = lshr i64 %1243, 63, !mcsema_real_eip !120
  %1245 = and i64 %1244, 1, !mcsema_real_eip !120
  %1246 = trunc i64 %1245 to i1, !mcsema_real_eip !120
  %1247 = zext i1 %1246 to i8, !mcsema_real_eip !120
  %1248 = trunc i8 %1247 to i1, !mcsema_real_eip !120
  %1249 = zext i1 %1248 to i8, !mcsema_real_eip !120
  store volatile i8 %1249, i8* %OF_write, !mcsema_real_eip !120
  %1250 = trunc i64 %1227 to i8, !mcsema_real_eip !120
  %1251 = call i8 @llvm.ctpop.i8(i8 %1250), !mcsema_real_eip !120
  %1252 = trunc i8 %1251 to i1, !mcsema_real_eip !120
  %1253 = zext i1 %1252 to i8, !mcsema_real_eip !120
  %1254 = xor i8 %1253, 1, !mcsema_real_eip !120
  %1255 = trunc i8 %1254 to i1, !mcsema_real_eip !120
  %1256 = zext i1 %1255 to i8, !mcsema_real_eip !120
  store volatile i8 %1256, i8* %PF_write, !mcsema_real_eip !120
  %1257 = icmp ult i64 %1227, %1226, !mcsema_real_eip !120
  %1258 = zext i1 %1257 to i8, !mcsema_real_eip !120
  store volatile i8 %1258, i8* %CF_write, !mcsema_real_eip !120
  store volatile i64 %1227, i64* %RAX_write, !mcsema_real_eip !120
  store volatile i64 487, i64* %EIP_write, !mcsema_real_eip !121
  %1259 = load i64, i64* %RAX_read, !mcsema_real_eip !121
  store volatile i64 %1259, i64* %RSI_write, !mcsema_real_eip !121
  store volatile i64 490, i64* %EIP_write, !mcsema_real_eip !122
  %1260 = load i64, i64* %RDI_read, !mcsema_real_eip !122
  %1261 = load i64, i64* %RSI_read, !mcsema_real_eip !122
  %1262 = load i64, i64* %RDX_read, !mcsema_real_eip !122
  %1263 = load i64, i64* %RSP_read, !mcsema_real_eip !122
  %1264 = sub i64 %1263, 8, !mcsema_real_eip !122
  %1265 = inttoptr i64 %1264 to i64*, !mcsema_real_eip !122
  store i64 -2415393069852865332, i64* %1265, !mcsema_real_eip !122
  store volatile i64 %1264, i64* %RSP_write, !mcsema_real_eip !122
  %1266 = call x86_64_sysvcc i64 @_read_bytes(i64 %1260, i64 %1261, i64 %1262), !mcsema_real_eip !122
  store volatile i64 %1266, i64* %RAX_write, !mcsema_real_eip !122
  store volatile i64 495, i64* %EIP_write, !mcsema_real_eip !123
  %1267 = load i16, i16* %AX_read, !mcsema_real_eip !123
  store volatile i16 %1267, i16* %CX_write, !mcsema_real_eip !123
  store volatile i64 498, i64* %EIP_write, !mcsema_real_eip !124
  %1268 = load i64, i64* %RBP_read, !mcsema_real_eip !124
  %1269 = add i64 %1268, -38, !mcsema_real_eip !124
  %1270 = inttoptr i64 %1269 to i64*, !mcsema_real_eip !124
  %1271 = load i16, i16* %CX_read, !mcsema_real_eip !124
  %1272 = ptrtoint i64* %1270 to i64, !mcsema_real_eip !124
  %1273 = inttoptr i64 %1272 to i16*, !mcsema_real_eip !124
  store i16 %1271, i16* %1273, !mcsema_real_eip !124
  store volatile i64 502, i64* %EIP_write, !mcsema_real_eip !125
  %1274 = load i64, i64* %RBP_read, !mcsema_real_eip !125
  %1275 = add i64 %1274, -38, !mcsema_real_eip !125
  %1276 = inttoptr i64 %1275 to i64*, !mcsema_real_eip !125
  %1277 = ptrtoint i64* %1276 to i64, !mcsema_real_eip !125
  %1278 = inttoptr i64 %1277 to i16*, !mcsema_real_eip !125
  %1279 = load i16, i16* %1278, !mcsema_real_eip !125
  %1280 = zext i16 %1279 to i32, !mcsema_real_eip !125
  %1281 = zext i32 %1280 to i64, !mcsema_real_eip !125
  store volatile i64 %1281, i64* %EAX_write, !mcsema_real_eip !125
  store volatile i64 506, i64* %EIP_write, !mcsema_real_eip !126
  %1282 = load i32, i32* %EAX_read, !mcsema_real_eip !126
  %1283 = or i32 %1282, 21845, !mcsema_real_eip !126
  %1284 = trunc i8 0 to i1, !mcsema_real_eip !126
  %1285 = zext i1 %1284 to i8, !mcsema_real_eip !126
  store volatile i8 %1285, i8* %OF_write, !mcsema_real_eip !126
  %1286 = trunc i8 0 to i1, !mcsema_real_eip !126
  %1287 = zext i1 %1286 to i8, !mcsema_real_eip !126
  store volatile i8 %1287, i8* %CF_write, !mcsema_real_eip !126
  %1288 = lshr i32 %1283, 31, !mcsema_real_eip !126
  %1289 = trunc i32 %1288 to i1, !mcsema_real_eip !126
  %1290 = zext i1 %1289 to i8, !mcsema_real_eip !126
  %1291 = trunc i8 %1290 to i1, !mcsema_real_eip !126
  %1292 = zext i1 %1291 to i8, !mcsema_real_eip !126
  store volatile i8 %1292, i8* %SF_write, !mcsema_real_eip !126
  %1293 = icmp eq i32 %1283, 0, !mcsema_real_eip !126
  %1294 = zext i1 %1293 to i8, !mcsema_real_eip !126
  store volatile i8 %1294, i8* %ZF_write, !mcsema_real_eip !126
  %1295 = trunc i32 %1283 to i8, !mcsema_real_eip !126
  %1296 = call i8 @llvm.ctpop.i8(i8 %1295), !mcsema_real_eip !126
  %1297 = trunc i8 %1296 to i1, !mcsema_real_eip !126
  %1298 = zext i1 %1297 to i8, !mcsema_real_eip !126
  %1299 = xor i8 %1298, 1, !mcsema_real_eip !126
  %1300 = trunc i8 %1299 to i1, !mcsema_real_eip !126
  %1301 = zext i1 %1300 to i8, !mcsema_real_eip !126
  store volatile i8 %1301, i8* %PF_write, !mcsema_real_eip !126
  %1302 = zext i32 %1283 to i64, !mcsema_real_eip !126
  store volatile i64 %1302, i64* %EAX_write, !mcsema_real_eip !126
  store volatile i64 511, i64* %EIP_write, !mcsema_real_eip !127
  %1303 = load i32, i32* %EAX_read, !mcsema_real_eip !127
  %1304 = sub i32 %1303, 56663, !mcsema_real_eip !127
  %1305 = xor i32 %1304, %1303, !mcsema_real_eip !127
  %1306 = xor i32 %1305, 56663, !mcsema_real_eip !127
  %1307 = and i32 %1306, 16, !mcsema_real_eip !127
  %1308 = icmp ne i32 %1307, 0, !mcsema_real_eip !127
  %1309 = zext i1 %1308 to i8, !mcsema_real_eip !127
  store volatile i8 %1309, i8* %AF_write, !mcsema_real_eip !127
  %1310 = trunc i32 %1304 to i8, !mcsema_real_eip !127
  %1311 = call i8 @llvm.ctpop.i8(i8 %1310), !mcsema_real_eip !127
  %1312 = trunc i8 %1311 to i1, !mcsema_real_eip !127
  %1313 = zext i1 %1312 to i8, !mcsema_real_eip !127
  %1314 = xor i8 %1313, 1, !mcsema_real_eip !127
  %1315 = trunc i8 %1314 to i1, !mcsema_real_eip !127
  %1316 = zext i1 %1315 to i8, !mcsema_real_eip !127
  store volatile i8 %1316, i8* %PF_write, !mcsema_real_eip !127
  %1317 = icmp eq i32 %1304, 0, !mcsema_real_eip !127
  %1318 = zext i1 %1317 to i8, !mcsema_real_eip !127
  store volatile i8 %1318, i8* %ZF_write, !mcsema_real_eip !127
  %1319 = lshr i32 %1304, 31, !mcsema_real_eip !127
  %1320 = trunc i32 %1319 to i1, !mcsema_real_eip !127
  %1321 = zext i1 %1320 to i8, !mcsema_real_eip !127
  %1322 = trunc i8 %1321 to i1, !mcsema_real_eip !127
  %1323 = zext i1 %1322 to i8, !mcsema_real_eip !127
  store volatile i8 %1323, i8* %SF_write, !mcsema_real_eip !127
  %1324 = icmp ult i32 %1303, 56663, !mcsema_real_eip !127
  %1325 = zext i1 %1324 to i8, !mcsema_real_eip !127
  store volatile i8 %1325, i8* %CF_write, !mcsema_real_eip !127
  %1326 = xor i32 %1303, 56663, !mcsema_real_eip !127
  %1327 = xor i32 %1303, %1304, !mcsema_real_eip !127
  %1328 = and i32 %1326, %1327, !mcsema_real_eip !127
  %1329 = lshr i32 %1328, 31, !mcsema_real_eip !127
  %1330 = trunc i32 %1329 to i1, !mcsema_real_eip !127
  %1331 = zext i1 %1330 to i8, !mcsema_real_eip !127
  %1332 = trunc i8 %1331 to i1, !mcsema_real_eip !127
  %1333 = zext i1 %1332 to i8, !mcsema_real_eip !127
  store volatile i8 %1333, i8* %OF_write, !mcsema_real_eip !127
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !128
  %1334 = load i8, i8* %ZF_read, !mcsema_real_eip !128
  %1335 = trunc i8 %1334 to i1, !mcsema_real_eip !128
  %1336 = icmp eq i1 %1335, false, !mcsema_real_eip !128
  br i1 %1336, label %block_22a, label %block_20a, !mcsema_real_eip !128

block_20a:                                        ; preds = %block_1d8
  store volatile i64 522, i64* %EIP_write, !mcsema_real_eip !129
  %1337 = load i64, i64* %RBP_read, !mcsema_real_eip !129
  %1338 = add i64 %1337, -38, !mcsema_real_eip !129
  %1339 = inttoptr i64 %1338 to i64*, !mcsema_real_eip !129
  %1340 = ptrtoint i64* %1339 to i64, !mcsema_real_eip !129
  %1341 = inttoptr i64 %1340 to i16*, !mcsema_real_eip !129
  %1342 = load i16, i16* %1341, !mcsema_real_eip !129
  %1343 = zext i16 %1342 to i32, !mcsema_real_eip !129
  %1344 = zext i32 %1343 to i64, !mcsema_real_eip !129
  store volatile i64 %1344, i64* %EAX_write, !mcsema_real_eip !129
  store volatile i64 526, i64* %EIP_write, !mcsema_real_eip !130
  %1345 = load i32, i32* %EAX_read, !mcsema_real_eip !130
  %1346 = or i32 %1345, 43690, !mcsema_real_eip !130
  %1347 = trunc i8 0 to i1, !mcsema_real_eip !130
  %1348 = zext i1 %1347 to i8, !mcsema_real_eip !130
  store volatile i8 %1348, i8* %OF_write, !mcsema_real_eip !130
  %1349 = trunc i8 0 to i1, !mcsema_real_eip !130
  %1350 = zext i1 %1349 to i8, !mcsema_real_eip !130
  store volatile i8 %1350, i8* %CF_write, !mcsema_real_eip !130
  %1351 = lshr i32 %1346, 31, !mcsema_real_eip !130
  %1352 = trunc i32 %1351 to i1, !mcsema_real_eip !130
  %1353 = zext i1 %1352 to i8, !mcsema_real_eip !130
  %1354 = trunc i8 %1353 to i1, !mcsema_real_eip !130
  %1355 = zext i1 %1354 to i8, !mcsema_real_eip !130
  store volatile i8 %1355, i8* %SF_write, !mcsema_real_eip !130
  %1356 = icmp eq i32 %1346, 0, !mcsema_real_eip !130
  %1357 = zext i1 %1356 to i8, !mcsema_real_eip !130
  store volatile i8 %1357, i8* %ZF_write, !mcsema_real_eip !130
  %1358 = trunc i32 %1346 to i8, !mcsema_real_eip !130
  %1359 = call i8 @llvm.ctpop.i8(i8 %1358), !mcsema_real_eip !130
  %1360 = trunc i8 %1359 to i1, !mcsema_real_eip !130
  %1361 = zext i1 %1360 to i8, !mcsema_real_eip !130
  %1362 = xor i8 %1361, 1, !mcsema_real_eip !130
  %1363 = trunc i8 %1362 to i1, !mcsema_real_eip !130
  %1364 = zext i1 %1363 to i8, !mcsema_real_eip !130
  store volatile i8 %1364, i8* %PF_write, !mcsema_real_eip !130
  %1365 = zext i32 %1346 to i64, !mcsema_real_eip !130
  store volatile i64 %1365, i64* %EAX_write, !mcsema_real_eip !130
  store volatile i64 531, i64* %EIP_write, !mcsema_real_eip !131
  %1366 = load i32, i32* %EAX_read, !mcsema_real_eip !131
  %1367 = sub i32 %1366, 65211, !mcsema_real_eip !131
  %1368 = xor i32 %1367, %1366, !mcsema_real_eip !131
  %1369 = xor i32 %1368, 65211, !mcsema_real_eip !131
  %1370 = and i32 %1369, 16, !mcsema_real_eip !131
  %1371 = icmp ne i32 %1370, 0, !mcsema_real_eip !131
  %1372 = zext i1 %1371 to i8, !mcsema_real_eip !131
  store volatile i8 %1372, i8* %AF_write, !mcsema_real_eip !131
  %1373 = trunc i32 %1367 to i8, !mcsema_real_eip !131
  %1374 = call i8 @llvm.ctpop.i8(i8 %1373), !mcsema_real_eip !131
  %1375 = trunc i8 %1374 to i1, !mcsema_real_eip !131
  %1376 = zext i1 %1375 to i8, !mcsema_real_eip !131
  %1377 = xor i8 %1376, 1, !mcsema_real_eip !131
  %1378 = trunc i8 %1377 to i1, !mcsema_real_eip !131
  %1379 = zext i1 %1378 to i8, !mcsema_real_eip !131
  store volatile i8 %1379, i8* %PF_write, !mcsema_real_eip !131
  %1380 = icmp eq i32 %1367, 0, !mcsema_real_eip !131
  %1381 = zext i1 %1380 to i8, !mcsema_real_eip !131
  store volatile i8 %1381, i8* %ZF_write, !mcsema_real_eip !131
  %1382 = lshr i32 %1367, 31, !mcsema_real_eip !131
  %1383 = trunc i32 %1382 to i1, !mcsema_real_eip !131
  %1384 = zext i1 %1383 to i8, !mcsema_real_eip !131
  %1385 = trunc i8 %1384 to i1, !mcsema_real_eip !131
  %1386 = zext i1 %1385 to i8, !mcsema_real_eip !131
  store volatile i8 %1386, i8* %SF_write, !mcsema_real_eip !131
  %1387 = icmp ult i32 %1366, 65211, !mcsema_real_eip !131
  %1388 = zext i1 %1387 to i8, !mcsema_real_eip !131
  store volatile i8 %1388, i8* %CF_write, !mcsema_real_eip !131
  %1389 = xor i32 %1366, 65211, !mcsema_real_eip !131
  %1390 = xor i32 %1366, %1367, !mcsema_real_eip !131
  %1391 = and i32 %1389, %1390, !mcsema_real_eip !131
  %1392 = lshr i32 %1391, 31, !mcsema_real_eip !131
  %1393 = trunc i32 %1392 to i1, !mcsema_real_eip !131
  %1394 = zext i1 %1393 to i8, !mcsema_real_eip !131
  %1395 = trunc i8 %1394 to i1, !mcsema_real_eip !131
  %1396 = zext i1 %1395 to i8, !mcsema_real_eip !131
  store volatile i8 %1396, i8* %OF_write, !mcsema_real_eip !131
  store volatile i64 536, i64* %EIP_write, !mcsema_real_eip !132
  %1397 = load i8, i8* %ZF_read, !mcsema_real_eip !132
  %1398 = trunc i8 %1397 to i1, !mcsema_real_eip !132
  %1399 = icmp eq i1 %1398, false, !mcsema_real_eip !132
  br i1 %1399, label %block_22a, label %block_21e, !mcsema_real_eip !132

block_21e:                                        ; preds = %block_20a
  store volatile i64 542, i64* %EIP_write, !mcsema_real_eip !133
  %1400 = load i64, i64* %RBP_read, !mcsema_real_eip !133
  %1401 = add i64 %1400, -20, !mcsema_real_eip !133
  %1402 = inttoptr i64 %1401 to i64*, !mcsema_real_eip !133
  %1403 = ptrtoint i64* %1402 to i64, !mcsema_real_eip !133
  %1404 = inttoptr i64 %1403 to i32*, !mcsema_real_eip !133
  store i32 43690, i32* %1404, !mcsema_real_eip !133
  store volatile i64 549, i64* %EIP_write, !mcsema_real_eip !134
  br label %block_231, !mcsema_real_eip !134

block_22a:                                        ; preds = %block_20a, %block_1d8
  store volatile i64 554, i64* %EIP_write, !mcsema_real_eip !135
  %1405 = load i64, i64* %RBP_read, !mcsema_real_eip !135
  %1406 = add i64 %1405, -20, !mcsema_real_eip !135
  %1407 = inttoptr i64 %1406 to i64*, !mcsema_real_eip !135
  %1408 = ptrtoint i64* %1407 to i64, !mcsema_real_eip !135
  %1409 = inttoptr i64 %1408 to i32*, !mcsema_real_eip !135
  store i32 48059, i32* %1409, !mcsema_real_eip !135
  br label %block_231, !mcsema_real_eip !136

block_231:                                        ; preds = %block_22a, %block_21e
  store volatile i64 561, i64* %EIP_write, !mcsema_real_eip !136
  %1410 = load i32, i32* %EDI_read, !mcsema_real_eip !136
  %1411 = load i32, i32* %EDI_read, !mcsema_real_eip !136
  %1412 = xor i32 %1410, %1411, !mcsema_real_eip !136
  %1413 = trunc i8 0 to i1, !mcsema_real_eip !136
  %1414 = zext i1 %1413 to i8, !mcsema_real_eip !136
  store volatile i8 %1414, i8* %CF_write, !mcsema_real_eip !136
  %1415 = trunc i8 0 to i1, !mcsema_real_eip !136
  %1416 = zext i1 %1415 to i8, !mcsema_real_eip !136
  store volatile i8 %1416, i8* %OF_write, !mcsema_real_eip !136
  %1417 = lshr i32 %1412, 31, !mcsema_real_eip !136
  %1418 = trunc i32 %1417 to i1, !mcsema_real_eip !136
  %1419 = zext i1 %1418 to i8, !mcsema_real_eip !136
  %1420 = trunc i8 %1419 to i1, !mcsema_real_eip !136
  %1421 = zext i1 %1420 to i8, !mcsema_real_eip !136
  store volatile i8 %1421, i8* %SF_write, !mcsema_real_eip !136
  %1422 = icmp eq i32 %1412, 0, !mcsema_real_eip !136
  %1423 = zext i1 %1422 to i8, !mcsema_real_eip !136
  store volatile i8 %1423, i8* %ZF_write, !mcsema_real_eip !136
  %1424 = trunc i32 %1412 to i8, !mcsema_real_eip !136
  %1425 = call i8 @llvm.ctpop.i8(i8 %1424), !mcsema_real_eip !136
  %1426 = trunc i8 %1425 to i1, !mcsema_real_eip !136
  %1427 = zext i1 %1426 to i8, !mcsema_real_eip !136
  %1428 = xor i8 %1427, 1, !mcsema_real_eip !136
  %1429 = trunc i8 %1428 to i1, !mcsema_real_eip !136
  %1430 = zext i1 %1429 to i8, !mcsema_real_eip !136
  store volatile i8 %1430, i8* %PF_write, !mcsema_real_eip !136
  %1431 = zext i32 %1412 to i64, !mcsema_real_eip !136
  store volatile i64 %1431, i64* %EDI_write, !mcsema_real_eip !136
  store volatile i64 563, i64* %EIP_write, !mcsema_real_eip !137
  %1432 = zext i32 8 to i64, !mcsema_real_eip !137
  store volatile i64 %1432, i64* %EDX_write, !mcsema_real_eip !137
  store volatile i64 568, i64* %EIP_write, !mcsema_real_eip !138
  %1433 = load i64, i64* %RBP_read, !mcsema_real_eip !138
  %1434 = add i64 %1433, -16, !mcsema_real_eip !138
  %1435 = inttoptr i64 %1434 to i64*, !mcsema_real_eip !138
  %1436 = load i64, i64* %1435, !mcsema_real_eip !138
  store volatile i64 %1436, i64* %RAX_write, !mcsema_real_eip !138
  store volatile i64 572, i64* %EIP_write, !mcsema_real_eip !139
  %1437 = load i64, i64* %RAX_read, !mcsema_real_eip !139
  %1438 = add i64 12, %1437, !mcsema_real_eip !139
  %1439 = xor i64 %1438, %1437, !mcsema_real_eip !139
  %1440 = xor i64 %1439, 12, !mcsema_real_eip !139
  %1441 = and i64 %1440, 16, !mcsema_real_eip !139
  %1442 = icmp ne i64 %1441, 0, !mcsema_real_eip !139
  %1443 = zext i1 %1442 to i8, !mcsema_real_eip !139
  store volatile i8 %1443, i8* %AF_write, !mcsema_real_eip !139
  %1444 = lshr i64 %1438, 63, !mcsema_real_eip !139
  %1445 = trunc i64 %1444 to i1, !mcsema_real_eip !139
  %1446 = zext i1 %1445 to i8, !mcsema_real_eip !139
  %1447 = trunc i8 %1446 to i1, !mcsema_real_eip !139
  %1448 = zext i1 %1447 to i8, !mcsema_real_eip !139
  store volatile i8 %1448, i8* %SF_write, !mcsema_real_eip !139
  %1449 = icmp eq i64 %1438, 0, !mcsema_real_eip !139
  %1450 = zext i1 %1449 to i8, !mcsema_real_eip !139
  store volatile i8 %1450, i8* %ZF_write, !mcsema_real_eip !139
  %1451 = xor i64 %1437, 12, !mcsema_real_eip !139
  %1452 = xor i64 %1451, -1, !mcsema_real_eip !139
  %1453 = xor i64 %1437, %1438, !mcsema_real_eip !139
  %1454 = and i64 %1452, %1453, !mcsema_real_eip !139
  %1455 = lshr i64 %1454, 63, !mcsema_real_eip !139
  %1456 = and i64 %1455, 1, !mcsema_real_eip !139
  %1457 = trunc i64 %1456 to i1, !mcsema_real_eip !139
  %1458 = zext i1 %1457 to i8, !mcsema_real_eip !139
  %1459 = trunc i8 %1458 to i1, !mcsema_real_eip !139
  %1460 = zext i1 %1459 to i8, !mcsema_real_eip !139
  store volatile i8 %1460, i8* %OF_write, !mcsema_real_eip !139
  %1461 = trunc i64 %1438 to i8, !mcsema_real_eip !139
  %1462 = call i8 @llvm.ctpop.i8(i8 %1461), !mcsema_real_eip !139
  %1463 = trunc i8 %1462 to i1, !mcsema_real_eip !139
  %1464 = zext i1 %1463 to i8, !mcsema_real_eip !139
  %1465 = xor i8 %1464, 1, !mcsema_real_eip !139
  %1466 = trunc i8 %1465 to i1, !mcsema_real_eip !139
  %1467 = zext i1 %1466 to i8, !mcsema_real_eip !139
  store volatile i8 %1467, i8* %PF_write, !mcsema_real_eip !139
  %1468 = icmp ult i64 %1438, %1437, !mcsema_real_eip !139
  %1469 = zext i1 %1468 to i8, !mcsema_real_eip !139
  store volatile i8 %1469, i8* %CF_write, !mcsema_real_eip !139
  store volatile i64 %1438, i64* %RAX_write, !mcsema_real_eip !139
  store volatile i64 576, i64* %EIP_write, !mcsema_real_eip !140
  %1470 = load i64, i64* %RAX_read, !mcsema_real_eip !140
  store volatile i64 %1470, i64* %RSI_write, !mcsema_real_eip !140
  store volatile i64 579, i64* %EIP_write, !mcsema_real_eip !141
  %1471 = load i64, i64* %RDI_read, !mcsema_real_eip !141
  %1472 = load i64, i64* %RSI_read, !mcsema_real_eip !141
  %1473 = load i64, i64* %RDX_read, !mcsema_real_eip !141
  %1474 = load i64, i64* %RSP_read, !mcsema_real_eip !141
  %1475 = sub i64 %1474, 8, !mcsema_real_eip !141
  %1476 = inttoptr i64 %1475 to i64*, !mcsema_real_eip !141
  store i64 -2415393069852865332, i64* %1476, !mcsema_real_eip !141
  store volatile i64 %1475, i64* %RSP_write, !mcsema_real_eip !141
  %1477 = call x86_64_sysvcc i64 @_read_bytes(i64 %1471, i64 %1472, i64 %1473), !mcsema_real_eip !141
  store volatile i64 %1477, i64* %RAX_write, !mcsema_real_eip !141
  store volatile i64 584, i64* %EIP_write, !mcsema_real_eip !142
  %1478 = load i64, i64* %RBP_read, !mcsema_real_eip !142
  %1479 = add i64 %1478, -44, !mcsema_real_eip !142
  %1480 = inttoptr i64 %1479 to i64*, !mcsema_real_eip !142
  %1481 = load i32, i32* %EAX_read, !mcsema_real_eip !142
  %1482 = ptrtoint i64* %1480 to i64, !mcsema_real_eip !142
  %1483 = inttoptr i64 %1482 to i32*, !mcsema_real_eip !142
  store i32 %1481, i32* %1483, !mcsema_real_eip !142
  store volatile i64 587, i64* %EIP_write, !mcsema_real_eip !143
  %1484 = load i64, i64* %RBP_read, !mcsema_real_eip !143
  %1485 = add i64 %1484, -44, !mcsema_real_eip !143
  %1486 = inttoptr i64 %1485 to i64*, !mcsema_real_eip !143
  %1487 = ptrtoint i64* %1486 to i64, !mcsema_real_eip !143
  %1488 = inttoptr i64 %1487 to i32*, !mcsema_real_eip !143
  %1489 = load i32, i32* %1488, !mcsema_real_eip !143
  %1490 = zext i32 %1489 to i64, !mcsema_real_eip !143
  store volatile i64 %1490, i64* %EAX_write, !mcsema_real_eip !143
  store volatile i64 590, i64* %EIP_write, !mcsema_real_eip !144
  %1491 = load i32, i32* %EAX_read, !mcsema_real_eip !144
  %1492 = xor i32 %1491, -1534560611, !mcsema_real_eip !144
  %1493 = trunc i8 0 to i1, !mcsema_real_eip !144
  %1494 = zext i1 %1493 to i8, !mcsema_real_eip !144
  store volatile i8 %1494, i8* %CF_write, !mcsema_real_eip !144
  %1495 = trunc i8 0 to i1, !mcsema_real_eip !144
  %1496 = zext i1 %1495 to i8, !mcsema_real_eip !144
  store volatile i8 %1496, i8* %OF_write, !mcsema_real_eip !144
  %1497 = lshr i32 %1492, 31, !mcsema_real_eip !144
  %1498 = trunc i32 %1497 to i1, !mcsema_real_eip !144
  %1499 = zext i1 %1498 to i8, !mcsema_real_eip !144
  %1500 = trunc i8 %1499 to i1, !mcsema_real_eip !144
  %1501 = zext i1 %1500 to i8, !mcsema_real_eip !144
  store volatile i8 %1501, i8* %SF_write, !mcsema_real_eip !144
  %1502 = icmp eq i32 %1492, 0, !mcsema_real_eip !144
  %1503 = zext i1 %1502 to i8, !mcsema_real_eip !144
  store volatile i8 %1503, i8* %ZF_write, !mcsema_real_eip !144
  %1504 = trunc i32 %1492 to i8, !mcsema_real_eip !144
  %1505 = call i8 @llvm.ctpop.i8(i8 %1504), !mcsema_real_eip !144
  %1506 = trunc i8 %1505 to i1, !mcsema_real_eip !144
  %1507 = zext i1 %1506 to i8, !mcsema_real_eip !144
  %1508 = xor i8 %1507, 1, !mcsema_real_eip !144
  %1509 = trunc i8 %1508 to i1, !mcsema_real_eip !144
  %1510 = zext i1 %1509 to i8, !mcsema_real_eip !144
  store volatile i8 %1510, i8* %PF_write, !mcsema_real_eip !144
  %1511 = zext i32 %1492 to i64, !mcsema_real_eip !144
  store volatile i64 %1511, i64* %EAX_write, !mcsema_real_eip !144
  store volatile i64 595, i64* %EIP_write, !mcsema_real_eip !145
  %1512 = load i64, i64* %RBP_read, !mcsema_real_eip !145
  %1513 = add i64 %1512, -48, !mcsema_real_eip !145
  %1514 = inttoptr i64 %1513 to i64*, !mcsema_real_eip !145
  %1515 = load i32, i32* %EAX_read, !mcsema_real_eip !145
  %1516 = ptrtoint i64* %1514 to i64, !mcsema_real_eip !145
  %1517 = inttoptr i64 %1516 to i32*, !mcsema_real_eip !145
  store i32 %1515, i32* %1517, !mcsema_real_eip !145
  store volatile i64 598, i64* %EIP_write, !mcsema_real_eip !146
  %1518 = load i64, i64* %RBP_read, !mcsema_real_eip !146
  %1519 = add i64 %1518, -48, !mcsema_real_eip !146
  %1520 = inttoptr i64 %1519 to i64*, !mcsema_real_eip !146
  %1521 = ptrtoint i64* %1520 to i64, !mcsema_real_eip !146
  %1522 = inttoptr i64 %1521 to i32*, !mcsema_real_eip !146
  %1523 = load i32, i32* %1522, !mcsema_real_eip !146
  %1524 = zext i32 %1523 to i64, !mcsema_real_eip !146
  store volatile i64 %1524, i64* %EAX_write, !mcsema_real_eip !146
  store volatile i64 601, i64* %EIP_write, !mcsema_real_eip !147
  %1525 = load i32, i32* %EAX_read, !mcsema_real_eip !147
  %1526 = and i32 16, 31, !mcsema_real_eip !147
  %1527 = sub i32 16, 1, !mcsema_real_eip !147
  %1528 = icmp ne i32 %1526, 0, !mcsema_real_eip !147
  %1529 = select i1 %1528, i32 %1527, i32 0, !mcsema_real_eip !147
  %1530 = select i1 %1528, i32 1, i32 0, !mcsema_real_eip !147
  %1531 = lshr i32 %1525, %1529, !mcsema_real_eip !147
  %1532 = and i32 %1531, 1, !mcsema_real_eip !147
  %1533 = icmp ne i32 %1532, 0, !mcsema_real_eip !147
  %1534 = load i8, i8* %CF_read, !mcsema_real_eip !147
  %1535 = trunc i8 %1534 to i1, !mcsema_real_eip !147
  %1536 = select i1 %1528, i1 %1533, i1 %1535, !mcsema_real_eip !147
  %1537 = lshr i32 %1531, %1530, !mcsema_real_eip !147
  %1538 = icmp eq i32 %1526, 1, !mcsema_real_eip !147
  %1539 = load i8, i8* %OF_read, !mcsema_real_eip !147
  %1540 = trunc i8 %1539 to i1, !mcsema_real_eip !147
  %1541 = and i32 %1525, -2147483648, !mcsema_real_eip !147
  %1542 = icmp ne i32 %1541, 0, !mcsema_real_eip !147
  %1543 = select i1 %1538, i1 %1542, i1 %1540, !mcsema_real_eip !147
  %1544 = zext i1 %1543 to i8, !mcsema_real_eip !147
  store volatile i8 %1544, i8* %OF_write, !mcsema_real_eip !147
  %1545 = zext i1 %1536 to i8, !mcsema_real_eip !147
  store volatile i8 %1545, i8* %CF_write, !mcsema_real_eip !147
  %1546 = load i8, i8* %ZF_read, !mcsema_real_eip !147
  %1547 = trunc i8 %1546 to i1, !mcsema_real_eip !147
  %1548 = icmp eq i32 %1537, 0, !mcsema_real_eip !147
  %1549 = select i1 %1528, i1 %1548, i1 %1547, !mcsema_real_eip !147
  %1550 = zext i1 %1549 to i8, !mcsema_real_eip !147
  store volatile i8 %1550, i8* %ZF_write, !mcsema_real_eip !147
  %1551 = load i8, i8* %SF_read, !mcsema_real_eip !147
  %1552 = trunc i8 %1551 to i1, !mcsema_real_eip !147
  %1553 = icmp slt i32 %1537, 0, !mcsema_real_eip !147
  %1554 = select i1 %1528, i1 %1553, i1 %1552, !mcsema_real_eip !147
  %1555 = zext i1 %1554 to i8, !mcsema_real_eip !147
  store volatile i8 %1555, i8* %SF_write, !mcsema_real_eip !147
  %1556 = load i8, i8* %PF_read, !mcsema_real_eip !147
  %1557 = trunc i8 %1556 to i1, !mcsema_real_eip !147
  %1558 = trunc i32 %1537 to i8, !mcsema_real_eip !147
  %1559 = call i8 @llvm.ctpop.i8(i8 %1558), !mcsema_real_eip !147
  %1560 = trunc i8 %1559 to i1, !mcsema_real_eip !147
  %1561 = zext i1 %1560 to i8, !mcsema_real_eip !147
  %1562 = xor i8 %1561, 1, !mcsema_real_eip !147
  %1563 = trunc i8 %1562 to i1, !mcsema_real_eip !147
  %1564 = zext i1 %1563 to i8, !mcsema_real_eip !147
  store volatile i8 %1564, i8* %PF_write, !mcsema_real_eip !147
  %1565 = load i8, i8* %PF_read, !mcsema_real_eip !147
  %1566 = trunc i8 %1565 to i1, !mcsema_real_eip !147
  %1567 = select i1 %1528, i1 %1566, i1 %1557, !mcsema_real_eip !147
  %1568 = zext i1 %1567 to i8, !mcsema_real_eip !147
  store volatile i8 %1568, i8* %PF_write, !mcsema_real_eip !147
  %1569 = zext i32 %1537 to i64, !mcsema_real_eip !147
  store volatile i64 %1569, i64* %EAX_write, !mcsema_real_eip !147
  store volatile i64 604, i64* %EIP_write, !mcsema_real_eip !148
  %1570 = load i64, i64* %RBP_read, !mcsema_real_eip !148
  %1571 = add i64 %1570, -52, !mcsema_real_eip !148
  %1572 = inttoptr i64 %1571 to i64*, !mcsema_real_eip !148
  %1573 = load i32, i32* %EAX_read, !mcsema_real_eip !148
  %1574 = ptrtoint i64* %1572 to i64, !mcsema_real_eip !148
  %1575 = inttoptr i64 %1574 to i32*, !mcsema_real_eip !148
  store i32 %1573, i32* %1575, !mcsema_real_eip !148
  store volatile i64 607, i64* %EIP_write, !mcsema_real_eip !149
  %1576 = load i64, i64* %RBP_read, !mcsema_real_eip !149
  %1577 = add i64 %1576, -48, !mcsema_real_eip !149
  %1578 = inttoptr i64 %1577 to i64*, !mcsema_real_eip !149
  %1579 = ptrtoint i64* %1578 to i64, !mcsema_real_eip !149
  %1580 = inttoptr i64 %1579 to i32*, !mcsema_real_eip !149
  %1581 = load i32, i32* %1580, !mcsema_real_eip !149
  %1582 = zext i32 %1581 to i64, !mcsema_real_eip !149
  store volatile i64 %1582, i64* %EAX_write, !mcsema_real_eip !149
  store volatile i64 610, i64* %EIP_write, !mcsema_real_eip !150
  %1583 = load i32, i32* %EAX_read, !mcsema_real_eip !150
  %1584 = and i32 %1583, 65535, !mcsema_real_eip !150
  %1585 = lshr i32 %1584, 31, !mcsema_real_eip !150
  %1586 = trunc i32 %1585 to i1, !mcsema_real_eip !150
  %1587 = zext i1 %1586 to i8, !mcsema_real_eip !150
  %1588 = trunc i8 %1587 to i1, !mcsema_real_eip !150
  %1589 = zext i1 %1588 to i8, !mcsema_real_eip !150
  store volatile i8 %1589, i8* %SF_write, !mcsema_real_eip !150
  %1590 = icmp eq i32 %1584, 0, !mcsema_real_eip !150
  %1591 = zext i1 %1590 to i8, !mcsema_real_eip !150
  store volatile i8 %1591, i8* %ZF_write, !mcsema_real_eip !150
  %1592 = trunc i32 %1584 to i8, !mcsema_real_eip !150
  %1593 = call i8 @llvm.ctpop.i8(i8 %1592), !mcsema_real_eip !150
  %1594 = trunc i8 %1593 to i1, !mcsema_real_eip !150
  %1595 = zext i1 %1594 to i8, !mcsema_real_eip !150
  %1596 = xor i8 %1595, 1, !mcsema_real_eip !150
  %1597 = trunc i8 %1596 to i1, !mcsema_real_eip !150
  %1598 = zext i1 %1597 to i8, !mcsema_real_eip !150
  store volatile i8 %1598, i8* %PF_write, !mcsema_real_eip !150
  %1599 = trunc i8 0 to i1, !mcsema_real_eip !150
  %1600 = zext i1 %1599 to i8, !mcsema_real_eip !150
  store volatile i8 %1600, i8* %OF_write, !mcsema_real_eip !150
  %1601 = trunc i8 0 to i1, !mcsema_real_eip !150
  %1602 = zext i1 %1601 to i8, !mcsema_real_eip !150
  store volatile i8 %1602, i8* %CF_write, !mcsema_real_eip !150
  %1603 = zext i32 %1584 to i64, !mcsema_real_eip !150
  store volatile i64 %1603, i64* %EAX_write, !mcsema_real_eip !150
  store volatile i64 615, i64* %EIP_write, !mcsema_real_eip !151
  %1604 = load i64, i64* %RBP_read, !mcsema_real_eip !151
  %1605 = add i64 %1604, -56, !mcsema_real_eip !151
  %1606 = inttoptr i64 %1605 to i64*, !mcsema_real_eip !151
  %1607 = load i32, i32* %EAX_read, !mcsema_real_eip !151
  %1608 = ptrtoint i64* %1606 to i64, !mcsema_real_eip !151
  %1609 = inttoptr i64 %1608 to i32*, !mcsema_real_eip !151
  store i32 %1607, i32* %1609, !mcsema_real_eip !151
  store volatile i64 618, i64* %EIP_write, !mcsema_real_eip !152
  %1610 = load i64, i64* %RBP_read, !mcsema_real_eip !152
  %1611 = add i64 %1610, -52, !mcsema_real_eip !152
  %1612 = inttoptr i64 %1611 to i64*, !mcsema_real_eip !152
  %1613 = ptrtoint i64* %1612 to i64, !mcsema_real_eip !152
  %1614 = inttoptr i64 %1613 to i32*, !mcsema_real_eip !152
  %1615 = load i32, i32* %1614, !mcsema_real_eip !152
  %1616 = sub i32 %1615, 79, !mcsema_real_eip !152
  %1617 = xor i32 %1616, %1615, !mcsema_real_eip !152
  %1618 = xor i32 %1617, 79, !mcsema_real_eip !152
  %1619 = and i32 %1618, 16, !mcsema_real_eip !152
  %1620 = icmp ne i32 %1619, 0, !mcsema_real_eip !152
  %1621 = zext i1 %1620 to i8, !mcsema_real_eip !152
  store volatile i8 %1621, i8* %AF_write, !mcsema_real_eip !152
  %1622 = trunc i32 %1616 to i8, !mcsema_real_eip !152
  %1623 = call i8 @llvm.ctpop.i8(i8 %1622), !mcsema_real_eip !152
  %1624 = trunc i8 %1623 to i1, !mcsema_real_eip !152
  %1625 = zext i1 %1624 to i8, !mcsema_real_eip !152
  %1626 = xor i8 %1625, 1, !mcsema_real_eip !152
  %1627 = trunc i8 %1626 to i1, !mcsema_real_eip !152
  %1628 = zext i1 %1627 to i8, !mcsema_real_eip !152
  store volatile i8 %1628, i8* %PF_write, !mcsema_real_eip !152
  %1629 = icmp eq i32 %1616, 0, !mcsema_real_eip !152
  %1630 = zext i1 %1629 to i8, !mcsema_real_eip !152
  store volatile i8 %1630, i8* %ZF_write, !mcsema_real_eip !152
  %1631 = lshr i32 %1616, 31, !mcsema_real_eip !152
  %1632 = trunc i32 %1631 to i1, !mcsema_real_eip !152
  %1633 = zext i1 %1632 to i8, !mcsema_real_eip !152
  %1634 = trunc i8 %1633 to i1, !mcsema_real_eip !152
  %1635 = zext i1 %1634 to i8, !mcsema_real_eip !152
  store volatile i8 %1635, i8* %SF_write, !mcsema_real_eip !152
  %1636 = icmp ult i32 %1615, 79, !mcsema_real_eip !152
  %1637 = zext i1 %1636 to i8, !mcsema_real_eip !152
  store volatile i8 %1637, i8* %CF_write, !mcsema_real_eip !152
  %1638 = xor i32 %1615, 79, !mcsema_real_eip !152
  %1639 = xor i32 %1615, %1616, !mcsema_real_eip !152
  %1640 = and i32 %1638, %1639, !mcsema_real_eip !152
  %1641 = lshr i32 %1640, 31, !mcsema_real_eip !152
  %1642 = trunc i32 %1641 to i1, !mcsema_real_eip !152
  %1643 = zext i1 %1642 to i8, !mcsema_real_eip !152
  %1644 = trunc i8 %1643 to i1, !mcsema_real_eip !152
  %1645 = zext i1 %1644 to i8, !mcsema_real_eip !152
  store volatile i8 %1645, i8* %OF_write, !mcsema_real_eip !152
  store volatile i64 622, i64* %EIP_write, !mcsema_real_eip !153
  %1646 = load i8, i8* %ZF_read, !mcsema_real_eip !153
  %1647 = trunc i8 %1646 to i1, !mcsema_real_eip !153
  %1648 = icmp eq i1 %1647, false, !mcsema_real_eip !153
  br i1 %1648, label %block_28c, label %block_274, !mcsema_real_eip !153

block_274:                                        ; preds = %block_231
  store volatile i64 628, i64* %EIP_write, !mcsema_real_eip !154
  %1649 = load i64, i64* %RBP_read, !mcsema_real_eip !154
  %1650 = add i64 %1649, -56, !mcsema_real_eip !154
  %1651 = inttoptr i64 %1650 to i64*, !mcsema_real_eip !154
  %1652 = ptrtoint i64* %1651 to i64, !mcsema_real_eip !154
  %1653 = inttoptr i64 %1652 to i32*, !mcsema_real_eip !154
  %1654 = load i32, i32* %1653, !mcsema_real_eip !154
  %1655 = zext i32 %1654 to i64, !mcsema_real_eip !154
  store volatile i64 %1655, i64* %EAX_write, !mcsema_real_eip !154
  store volatile i64 631, i64* %EIP_write, !mcsema_real_eip !155
  %1656 = load i64, i64* %RBP_read, !mcsema_real_eip !155
  %1657 = add i64 %1656, -20, !mcsema_real_eip !155
  %1658 = inttoptr i64 %1657 to i64*, !mcsema_real_eip !155
  %1659 = load i32, i32* %EAX_read, !mcsema_real_eip !155
  %1660 = ptrtoint i64* %1658 to i64, !mcsema_real_eip !155
  %1661 = inttoptr i64 %1660 to i32*, !mcsema_real_eip !155
  %1662 = load i32, i32* %1661, !mcsema_real_eip !155
  %1663 = sub i32 %1659, %1662, !mcsema_real_eip !155
  %1664 = xor i32 %1663, %1659, !mcsema_real_eip !155
  %1665 = xor i32 %1664, %1662, !mcsema_real_eip !155
  %1666 = and i32 %1665, 16, !mcsema_real_eip !155
  %1667 = icmp ne i32 %1666, 0, !mcsema_real_eip !155
  %1668 = zext i1 %1667 to i8, !mcsema_real_eip !155
  store volatile i8 %1668, i8* %AF_write, !mcsema_real_eip !155
  %1669 = trunc i32 %1663 to i8, !mcsema_real_eip !155
  %1670 = call i8 @llvm.ctpop.i8(i8 %1669), !mcsema_real_eip !155
  %1671 = trunc i8 %1670 to i1, !mcsema_real_eip !155
  %1672 = zext i1 %1671 to i8, !mcsema_real_eip !155
  %1673 = xor i8 %1672, 1, !mcsema_real_eip !155
  %1674 = trunc i8 %1673 to i1, !mcsema_real_eip !155
  %1675 = zext i1 %1674 to i8, !mcsema_real_eip !155
  store volatile i8 %1675, i8* %PF_write, !mcsema_real_eip !155
  %1676 = icmp eq i32 %1663, 0, !mcsema_real_eip !155
  %1677 = zext i1 %1676 to i8, !mcsema_real_eip !155
  store volatile i8 %1677, i8* %ZF_write, !mcsema_real_eip !155
  %1678 = lshr i32 %1663, 31, !mcsema_real_eip !155
  %1679 = trunc i32 %1678 to i1, !mcsema_real_eip !155
  %1680 = zext i1 %1679 to i8, !mcsema_real_eip !155
  %1681 = trunc i8 %1680 to i1, !mcsema_real_eip !155
  %1682 = zext i1 %1681 to i8, !mcsema_real_eip !155
  store volatile i8 %1682, i8* %SF_write, !mcsema_real_eip !155
  %1683 = icmp ult i32 %1659, %1662, !mcsema_real_eip !155
  %1684 = zext i1 %1683 to i8, !mcsema_real_eip !155
  store volatile i8 %1684, i8* %CF_write, !mcsema_real_eip !155
  %1685 = xor i32 %1659, %1662, !mcsema_real_eip !155
  %1686 = xor i32 %1659, %1663, !mcsema_real_eip !155
  %1687 = and i32 %1685, %1686, !mcsema_real_eip !155
  %1688 = lshr i32 %1687, 31, !mcsema_real_eip !155
  %1689 = trunc i32 %1688 to i1, !mcsema_real_eip !155
  %1690 = zext i1 %1689 to i8, !mcsema_real_eip !155
  %1691 = trunc i8 %1690 to i1, !mcsema_real_eip !155
  %1692 = zext i1 %1691 to i8, !mcsema_real_eip !155
  store volatile i8 %1692, i8* %OF_write, !mcsema_real_eip !155
  store volatile i64 634, i64* %EIP_write, !mcsema_real_eip !156
  %1693 = load i8, i8* %ZF_read, !mcsema_real_eip !156
  %1694 = trunc i8 %1693 to i1, !mcsema_real_eip !156
  %1695 = icmp eq i1 %1694, false, !mcsema_real_eip !156
  br i1 %1695, label %block_28c, label %block_280, !mcsema_real_eip !156

block_280:                                        ; preds = %block_274
  store volatile i64 640, i64* %EIP_write, !mcsema_real_eip !157
  %1696 = load i64, i64* %RBP_read, !mcsema_real_eip !157
  %1697 = add i64 %1696, -20, !mcsema_real_eip !157
  %1698 = inttoptr i64 %1697 to i64*, !mcsema_real_eip !157
  %1699 = ptrtoint i64* %1698 to i64, !mcsema_real_eip !157
  %1700 = inttoptr i64 %1699 to i32*, !mcsema_real_eip !157
  store i32 0, i32* %1700, !mcsema_real_eip !157
  store volatile i64 647, i64* %EIP_write, !mcsema_real_eip !158
  br label %block_293, !mcsema_real_eip !158

block_28c:                                        ; preds = %block_274, %block_231
  store volatile i64 652, i64* %EIP_write, !mcsema_real_eip !159
  %1701 = load i64, i64* %RBP_read, !mcsema_real_eip !159
  %1702 = add i64 %1701, -20, !mcsema_real_eip !159
  %1703 = inttoptr i64 %1702 to i64*, !mcsema_real_eip !159
  %1704 = ptrtoint i64* %1703 to i64, !mcsema_real_eip !159
  %1705 = inttoptr i64 %1704 to i32*, !mcsema_real_eip !159
  store i32 48351, i32* %1705, !mcsema_real_eip !159
  br label %block_293, !mcsema_real_eip !160

block_293:                                        ; preds = %block_28c, %block_280
  store volatile i64 659, i64* %EIP_write, !mcsema_real_eip !160
  %1706 = zext i32 8 to i64, !mcsema_real_eip !160
  store volatile i64 %1706, i64* %EDX_write, !mcsema_real_eip !160
  store volatile i64 664, i64* %EIP_write, !mcsema_real_eip !161
  %1707 = load i64, i64* %RBP_read, !mcsema_real_eip !161
  %1708 = add i64 %1707, -20, !mcsema_real_eip !161
  %1709 = inttoptr i64 %1708 to i64*, !mcsema_real_eip !161
  %1710 = ptrtoint i64* %1709 to i64, !mcsema_real_eip !161
  %1711 = inttoptr i64 %1710 to i32*, !mcsema_real_eip !161
  %1712 = load i32, i32* %1711, !mcsema_real_eip !161
  %1713 = zext i32 %1712 to i64, !mcsema_real_eip !161
  store volatile i64 %1713, i64* %EDI_write, !mcsema_real_eip !161
  store volatile i64 667, i64* %EIP_write, !mcsema_real_eip !162
  %1714 = load i64, i64* %RBP_read, !mcsema_real_eip !162
  %1715 = add i64 %1714, -16, !mcsema_real_eip !162
  %1716 = inttoptr i64 %1715 to i64*, !mcsema_real_eip !162
  %1717 = load i64, i64* %1716, !mcsema_real_eip !162
  store volatile i64 %1717, i64* %RAX_write, !mcsema_real_eip !162
  store volatile i64 671, i64* %EIP_write, !mcsema_real_eip !163
  %1718 = load i64, i64* %RAX_read, !mcsema_real_eip !163
  %1719 = add i64 20, %1718, !mcsema_real_eip !163
  %1720 = xor i64 %1719, %1718, !mcsema_real_eip !163
  %1721 = xor i64 %1720, 20, !mcsema_real_eip !163
  %1722 = and i64 %1721, 16, !mcsema_real_eip !163
  %1723 = icmp ne i64 %1722, 0, !mcsema_real_eip !163
  %1724 = zext i1 %1723 to i8, !mcsema_real_eip !163
  store volatile i8 %1724, i8* %AF_write, !mcsema_real_eip !163
  %1725 = lshr i64 %1719, 63, !mcsema_real_eip !163
  %1726 = trunc i64 %1725 to i1, !mcsema_real_eip !163
  %1727 = zext i1 %1726 to i8, !mcsema_real_eip !163
  %1728 = trunc i8 %1727 to i1, !mcsema_real_eip !163
  %1729 = zext i1 %1728 to i8, !mcsema_real_eip !163
  store volatile i8 %1729, i8* %SF_write, !mcsema_real_eip !163
  %1730 = icmp eq i64 %1719, 0, !mcsema_real_eip !163
  %1731 = zext i1 %1730 to i8, !mcsema_real_eip !163
  store volatile i8 %1731, i8* %ZF_write, !mcsema_real_eip !163
  %1732 = xor i64 %1718, 20, !mcsema_real_eip !163
  %1733 = xor i64 %1732, -1, !mcsema_real_eip !163
  %1734 = xor i64 %1718, %1719, !mcsema_real_eip !163
  %1735 = and i64 %1733, %1734, !mcsema_real_eip !163
  %1736 = lshr i64 %1735, 63, !mcsema_real_eip !163
  %1737 = and i64 %1736, 1, !mcsema_real_eip !163
  %1738 = trunc i64 %1737 to i1, !mcsema_real_eip !163
  %1739 = zext i1 %1738 to i8, !mcsema_real_eip !163
  %1740 = trunc i8 %1739 to i1, !mcsema_real_eip !163
  %1741 = zext i1 %1740 to i8, !mcsema_real_eip !163
  store volatile i8 %1741, i8* %OF_write, !mcsema_real_eip !163
  %1742 = trunc i64 %1719 to i8, !mcsema_real_eip !163
  %1743 = call i8 @llvm.ctpop.i8(i8 %1742), !mcsema_real_eip !163
  %1744 = trunc i8 %1743 to i1, !mcsema_real_eip !163
  %1745 = zext i1 %1744 to i8, !mcsema_real_eip !163
  %1746 = xor i8 %1745, 1, !mcsema_real_eip !163
  %1747 = trunc i8 %1746 to i1, !mcsema_real_eip !163
  %1748 = zext i1 %1747 to i8, !mcsema_real_eip !163
  store volatile i8 %1748, i8* %PF_write, !mcsema_real_eip !163
  %1749 = icmp ult i64 %1719, %1718, !mcsema_real_eip !163
  %1750 = zext i1 %1749 to i8, !mcsema_real_eip !163
  store volatile i8 %1750, i8* %CF_write, !mcsema_real_eip !163
  store volatile i64 %1719, i64* %RAX_write, !mcsema_real_eip !163
  store volatile i64 675, i64* %EIP_write, !mcsema_real_eip !164
  %1751 = load i64, i64* %RAX_read, !mcsema_real_eip !164
  store volatile i64 %1751, i64* %RSI_write, !mcsema_real_eip !164
  store volatile i64 678, i64* %EIP_write, !mcsema_real_eip !165
  %1752 = load i64, i64* %RDI_read, !mcsema_real_eip !165
  %1753 = load i64, i64* %RSI_read, !mcsema_real_eip !165
  %1754 = load i64, i64* %RDX_read, !mcsema_real_eip !165
  %1755 = load i64, i64* %RSP_read, !mcsema_real_eip !165
  %1756 = sub i64 %1755, 8, !mcsema_real_eip !165
  %1757 = inttoptr i64 %1756 to i64*, !mcsema_real_eip !165
  store i64 -2415393069852865332, i64* %1757, !mcsema_real_eip !165
  store volatile i64 %1756, i64* %RSP_write, !mcsema_real_eip !165
  %1758 = call x86_64_sysvcc i64 @_read_bytes(i64 %1752, i64 %1753, i64 %1754), !mcsema_real_eip !165
  store volatile i64 %1758, i64* %RAX_write, !mcsema_real_eip !165
  store volatile i64 683, i64* %EIP_write, !mcsema_real_eip !166
  %1759 = load i64, i64* %RBP_read, !mcsema_real_eip !166
  %1760 = add i64 %1759, -60, !mcsema_real_eip !166
  %1761 = inttoptr i64 %1760 to i64*, !mcsema_real_eip !166
  %1762 = load i32, i32* %EAX_read, !mcsema_real_eip !166
  %1763 = ptrtoint i64* %1761 to i64, !mcsema_real_eip !166
  %1764 = inttoptr i64 %1763 to i32*, !mcsema_real_eip !166
  store i32 %1762, i32* %1764, !mcsema_real_eip !166
  store volatile i64 686, i64* %EIP_write, !mcsema_real_eip !167
  %1765 = load i64, i64* %RBP_read, !mcsema_real_eip !167
  %1766 = add i64 %1765, -60, !mcsema_real_eip !167
  %1767 = inttoptr i64 %1766 to i64*, !mcsema_real_eip !167
  %1768 = ptrtoint i64* %1767 to i64, !mcsema_real_eip !167
  %1769 = inttoptr i64 %1768 to i32*, !mcsema_real_eip !167
  %1770 = load i32, i32* %1769, !mcsema_real_eip !167
  %1771 = zext i32 %1770 to i64, !mcsema_real_eip !167
  store volatile i64 %1771, i64* %EAX_write, !mcsema_real_eip !167
  store volatile i64 689, i64* %EIP_write, !mcsema_real_eip !168
  %1772 = load i32, i32* %EAX_read, !mcsema_real_eip !168
  %1773 = sub i32 %1772, 3, !mcsema_real_eip !168
  %1774 = xor i32 %1773, %1772, !mcsema_real_eip !168
  %1775 = xor i32 %1774, 3, !mcsema_real_eip !168
  %1776 = and i32 %1775, 16, !mcsema_real_eip !168
  %1777 = icmp ne i32 %1776, 0, !mcsema_real_eip !168
  %1778 = zext i1 %1777 to i8, !mcsema_real_eip !168
  store volatile i8 %1778, i8* %AF_write, !mcsema_real_eip !168
  %1779 = trunc i32 %1773 to i8, !mcsema_real_eip !168
  %1780 = call i8 @llvm.ctpop.i8(i8 %1779), !mcsema_real_eip !168
  %1781 = trunc i8 %1780 to i1, !mcsema_real_eip !168
  %1782 = zext i1 %1781 to i8, !mcsema_real_eip !168
  %1783 = xor i8 %1782, 1, !mcsema_real_eip !168
  %1784 = trunc i8 %1783 to i1, !mcsema_real_eip !168
  %1785 = zext i1 %1784 to i8, !mcsema_real_eip !168
  store volatile i8 %1785, i8* %PF_write, !mcsema_real_eip !168
  %1786 = icmp eq i32 %1773, 0, !mcsema_real_eip !168
  %1787 = zext i1 %1786 to i8, !mcsema_real_eip !168
  store volatile i8 %1787, i8* %ZF_write, !mcsema_real_eip !168
  %1788 = lshr i32 %1773, 31, !mcsema_real_eip !168
  %1789 = trunc i32 %1788 to i1, !mcsema_real_eip !168
  %1790 = zext i1 %1789 to i8, !mcsema_real_eip !168
  %1791 = trunc i8 %1790 to i1, !mcsema_real_eip !168
  %1792 = zext i1 %1791 to i8, !mcsema_real_eip !168
  store volatile i8 %1792, i8* %SF_write, !mcsema_real_eip !168
  %1793 = icmp ult i32 %1772, 3, !mcsema_real_eip !168
  %1794 = zext i1 %1793 to i8, !mcsema_real_eip !168
  store volatile i8 %1794, i8* %CF_write, !mcsema_real_eip !168
  %1795 = xor i32 %1772, 3, !mcsema_real_eip !168
  %1796 = xor i32 %1772, %1773, !mcsema_real_eip !168
  %1797 = and i32 %1795, %1796, !mcsema_real_eip !168
  %1798 = lshr i32 %1797, 31, !mcsema_real_eip !168
  %1799 = trunc i32 %1798 to i1, !mcsema_real_eip !168
  %1800 = zext i1 %1799 to i8, !mcsema_real_eip !168
  %1801 = trunc i8 %1800 to i1, !mcsema_real_eip !168
  %1802 = zext i1 %1801 to i8, !mcsema_real_eip !168
  store volatile i8 %1802, i8* %OF_write, !mcsema_real_eip !168
  %1803 = zext i32 %1773 to i64, !mcsema_real_eip !168
  store volatile i64 %1803, i64* %EAX_write, !mcsema_real_eip !168
  store volatile i64 692, i64* %EIP_write, !mcsema_real_eip !169
  %1804 = load i64, i64* %RBP_read, !mcsema_real_eip !169
  %1805 = add i64 %1804, -60, !mcsema_real_eip !169
  %1806 = inttoptr i64 %1805 to i64*, !mcsema_real_eip !169
  %1807 = load i32, i32* %EAX_read, !mcsema_real_eip !169
  %1808 = ptrtoint i64* %1806 to i64, !mcsema_real_eip !169
  %1809 = inttoptr i64 %1808 to i32*, !mcsema_real_eip !169
  store i32 %1807, i32* %1809, !mcsema_real_eip !169
  store volatile i64 695, i64* %EIP_write, !mcsema_real_eip !170
  %1810 = load i64, i64* %RBP_read, !mcsema_real_eip !170
  %1811 = add i64 %1810, -60, !mcsema_real_eip !170
  %1812 = inttoptr i64 %1811 to i64*, !mcsema_real_eip !170
  %1813 = ptrtoint i64* %1812 to i64, !mcsema_real_eip !170
  %1814 = inttoptr i64 %1813 to i32*, !mcsema_real_eip !170
  %1815 = load i32, i32* %1814, !mcsema_real_eip !170
  %1816 = zext i32 %1815 to i64, !mcsema_real_eip !170
  store volatile i64 %1816, i64* %EAX_write, !mcsema_real_eip !170
  store volatile i64 698, i64* %EIP_write, !mcsema_real_eip !171
  %1817 = load i32, i32* %EAX_read, !mcsema_real_eip !171
  %1818 = and i32 %1817, 7, !mcsema_real_eip !171
  %1819 = lshr i32 %1818, 31, !mcsema_real_eip !171
  %1820 = trunc i32 %1819 to i1, !mcsema_real_eip !171
  %1821 = zext i1 %1820 to i8, !mcsema_real_eip !171
  %1822 = trunc i8 %1821 to i1, !mcsema_real_eip !171
  %1823 = zext i1 %1822 to i8, !mcsema_real_eip !171
  store volatile i8 %1823, i8* %SF_write, !mcsema_real_eip !171
  %1824 = icmp eq i32 %1818, 0, !mcsema_real_eip !171
  %1825 = zext i1 %1824 to i8, !mcsema_real_eip !171
  store volatile i8 %1825, i8* %ZF_write, !mcsema_real_eip !171
  %1826 = trunc i32 %1818 to i8, !mcsema_real_eip !171
  %1827 = call i8 @llvm.ctpop.i8(i8 %1826), !mcsema_real_eip !171
  %1828 = trunc i8 %1827 to i1, !mcsema_real_eip !171
  %1829 = zext i1 %1828 to i8, !mcsema_real_eip !171
  %1830 = xor i8 %1829, 1, !mcsema_real_eip !171
  %1831 = trunc i8 %1830 to i1, !mcsema_real_eip !171
  %1832 = zext i1 %1831 to i8, !mcsema_real_eip !171
  store volatile i8 %1832, i8* %PF_write, !mcsema_real_eip !171
  %1833 = trunc i8 0 to i1, !mcsema_real_eip !171
  %1834 = zext i1 %1833 to i8, !mcsema_real_eip !171
  store volatile i8 %1834, i8* %OF_write, !mcsema_real_eip !171
  %1835 = trunc i8 0 to i1, !mcsema_real_eip !171
  %1836 = zext i1 %1835 to i8, !mcsema_real_eip !171
  store volatile i8 %1836, i8* %CF_write, !mcsema_real_eip !171
  %1837 = zext i32 %1818 to i64, !mcsema_real_eip !171
  store volatile i64 %1837, i64* %EAX_write, !mcsema_real_eip !171
  store volatile i64 701, i64* %EIP_write, !mcsema_real_eip !172
  %1838 = load i32, i32* %EAX_read, !mcsema_real_eip !172
  %1839 = sub i32 %1838, 0, !mcsema_real_eip !172
  %1840 = xor i32 %1839, %1838, !mcsema_real_eip !172
  %1841 = xor i32 %1840, 0, !mcsema_real_eip !172
  %1842 = and i32 %1841, 16, !mcsema_real_eip !172
  %1843 = icmp ne i32 %1842, 0, !mcsema_real_eip !172
  %1844 = zext i1 %1843 to i8, !mcsema_real_eip !172
  store volatile i8 %1844, i8* %AF_write, !mcsema_real_eip !172
  %1845 = trunc i32 %1839 to i8, !mcsema_real_eip !172
  %1846 = call i8 @llvm.ctpop.i8(i8 %1845), !mcsema_real_eip !172
  %1847 = trunc i8 %1846 to i1, !mcsema_real_eip !172
  %1848 = zext i1 %1847 to i8, !mcsema_real_eip !172
  %1849 = xor i8 %1848, 1, !mcsema_real_eip !172
  %1850 = trunc i8 %1849 to i1, !mcsema_real_eip !172
  %1851 = zext i1 %1850 to i8, !mcsema_real_eip !172
  store volatile i8 %1851, i8* %PF_write, !mcsema_real_eip !172
  %1852 = icmp eq i32 %1839, 0, !mcsema_real_eip !172
  %1853 = zext i1 %1852 to i8, !mcsema_real_eip !172
  store volatile i8 %1853, i8* %ZF_write, !mcsema_real_eip !172
  %1854 = lshr i32 %1839, 31, !mcsema_real_eip !172
  %1855 = trunc i32 %1854 to i1, !mcsema_real_eip !172
  %1856 = zext i1 %1855 to i8, !mcsema_real_eip !172
  %1857 = trunc i8 %1856 to i1, !mcsema_real_eip !172
  %1858 = zext i1 %1857 to i8, !mcsema_real_eip !172
  store volatile i8 %1858, i8* %SF_write, !mcsema_real_eip !172
  %1859 = icmp ult i32 %1838, 0, !mcsema_real_eip !172
  %1860 = zext i1 %1859 to i8, !mcsema_real_eip !172
  store volatile i8 %1860, i8* %CF_write, !mcsema_real_eip !172
  %1861 = xor i32 %1838, 0, !mcsema_real_eip !172
  %1862 = xor i32 %1838, %1839, !mcsema_real_eip !172
  %1863 = and i32 %1861, %1862, !mcsema_real_eip !172
  %1864 = lshr i32 %1863, 31, !mcsema_real_eip !172
  %1865 = trunc i32 %1864 to i1, !mcsema_real_eip !172
  %1866 = zext i1 %1865 to i8, !mcsema_real_eip !172
  %1867 = trunc i8 %1866 to i1, !mcsema_real_eip !172
  %1868 = zext i1 %1867 to i8, !mcsema_real_eip !172
  store volatile i8 %1868, i8* %OF_write, !mcsema_real_eip !172
  store volatile i64 704, i64* %EIP_write, !mcsema_real_eip !173
  %1869 = load i8, i8* %ZF_read, !mcsema_real_eip !173
  %1870 = trunc i8 %1869 to i1, !mcsema_real_eip !173
  %1871 = icmp eq i1 %1870, true, !mcsema_real_eip !173
  br i1 %1871, label %block_2d2, label %block_2c6, !mcsema_real_eip !173

block_2c6:                                        ; preds = %block_293
  store volatile i64 710, i64* %EIP_write, !mcsema_real_eip !174
  %1872 = load i64, i64* %RBP_read, !mcsema_real_eip !174
  %1873 = add i64 %1872, -4, !mcsema_real_eip !174
  %1874 = inttoptr i64 %1873 to i64*, !mcsema_real_eip !174
  %1875 = ptrtoint i64* %1874 to i64, !mcsema_real_eip !174
  %1876 = inttoptr i64 %1875 to i32*, !mcsema_real_eip !174
  store i32 -21, i32* %1876, !mcsema_real_eip !174
  store volatile i64 717, i64* %EIP_write, !mcsema_real_eip !175
  br label %block_417, !mcsema_real_eip !175

block_2d2:                                        ; preds = %block_293
  store volatile i64 722, i64* %EIP_write, !mcsema_real_eip !176
  %1877 = load i64, i64* %RBP_read, !mcsema_real_eip !176
  %1878 = add i64 %1877, -60, !mcsema_real_eip !176
  %1879 = inttoptr i64 %1878 to i64*, !mcsema_real_eip !176
  %1880 = ptrtoint i64* %1879 to i64, !mcsema_real_eip !176
  %1881 = inttoptr i64 %1880 to i32*, !mcsema_real_eip !176
  %1882 = load i32, i32* %1881, !mcsema_real_eip !176
  %1883 = zext i32 %1882 to i64, !mcsema_real_eip !176
  store volatile i64 %1883, i64* %EAX_write, !mcsema_real_eip !176
  store volatile i64 725, i64* %EIP_write, !mcsema_real_eip !177
  %1884 = load i32, i32* %EAX_read, !mcsema_real_eip !177
  %1885 = sub i32 %1884, -2147483648, !mcsema_real_eip !177
  %1886 = xor i32 %1885, %1884, !mcsema_real_eip !177
  %1887 = xor i32 %1886, -2147483648, !mcsema_real_eip !177
  %1888 = and i32 %1887, 16, !mcsema_real_eip !177
  %1889 = icmp ne i32 %1888, 0, !mcsema_real_eip !177
  %1890 = zext i1 %1889 to i8, !mcsema_real_eip !177
  store volatile i8 %1890, i8* %AF_write, !mcsema_real_eip !177
  %1891 = trunc i32 %1885 to i8, !mcsema_real_eip !177
  %1892 = call i8 @llvm.ctpop.i8(i8 %1891), !mcsema_real_eip !177
  %1893 = trunc i8 %1892 to i1, !mcsema_real_eip !177
  %1894 = zext i1 %1893 to i8, !mcsema_real_eip !177
  %1895 = xor i8 %1894, 1, !mcsema_real_eip !177
  %1896 = trunc i8 %1895 to i1, !mcsema_real_eip !177
  %1897 = zext i1 %1896 to i8, !mcsema_real_eip !177
  store volatile i8 %1897, i8* %PF_write, !mcsema_real_eip !177
  %1898 = icmp eq i32 %1885, 0, !mcsema_real_eip !177
  %1899 = zext i1 %1898 to i8, !mcsema_real_eip !177
  store volatile i8 %1899, i8* %ZF_write, !mcsema_real_eip !177
  %1900 = lshr i32 %1885, 31, !mcsema_real_eip !177
  %1901 = trunc i32 %1900 to i1, !mcsema_real_eip !177
  %1902 = zext i1 %1901 to i8, !mcsema_real_eip !177
  %1903 = trunc i8 %1902 to i1, !mcsema_real_eip !177
  %1904 = zext i1 %1903 to i8, !mcsema_real_eip !177
  store volatile i8 %1904, i8* %SF_write, !mcsema_real_eip !177
  %1905 = icmp ult i32 %1884, -2147483648, !mcsema_real_eip !177
  %1906 = zext i1 %1905 to i8, !mcsema_real_eip !177
  store volatile i8 %1906, i8* %CF_write, !mcsema_real_eip !177
  %1907 = xor i32 %1884, -2147483648, !mcsema_real_eip !177
  %1908 = xor i32 %1884, %1885, !mcsema_real_eip !177
  %1909 = and i32 %1907, %1908, !mcsema_real_eip !177
  %1910 = lshr i32 %1909, 31, !mcsema_real_eip !177
  %1911 = trunc i32 %1910 to i1, !mcsema_real_eip !177
  %1912 = zext i1 %1911 to i8, !mcsema_real_eip !177
  %1913 = trunc i8 %1912 to i1, !mcsema_real_eip !177
  %1914 = zext i1 %1913 to i8, !mcsema_real_eip !177
  store volatile i8 %1914, i8* %OF_write, !mcsema_real_eip !177
  %1915 = zext i32 %1885 to i64, !mcsema_real_eip !177
  store volatile i64 %1915, i64* %EAX_write, !mcsema_real_eip !177
  store volatile i64 730, i64* %EIP_write, !mcsema_real_eip !178
  %1916 = load i64, i64* %RBP_read, !mcsema_real_eip !178
  %1917 = add i64 %1916, -60, !mcsema_real_eip !178
  %1918 = inttoptr i64 %1917 to i64*, !mcsema_real_eip !178
  %1919 = load i32, i32* %EAX_read, !mcsema_real_eip !178
  %1920 = ptrtoint i64* %1918 to i64, !mcsema_real_eip !178
  %1921 = inttoptr i64 %1920 to i32*, !mcsema_real_eip !178
  store i32 %1919, i32* %1921, !mcsema_real_eip !178
  store volatile i64 733, i64* %EIP_write, !mcsema_real_eip !179
  %1922 = load i64, i64* %RBP_read, !mcsema_real_eip !179
  %1923 = add i64 %1922, -60, !mcsema_real_eip !179
  %1924 = inttoptr i64 %1923 to i64*, !mcsema_real_eip !179
  %1925 = ptrtoint i64* %1924 to i64, !mcsema_real_eip !179
  %1926 = inttoptr i64 %1925 to i32*, !mcsema_real_eip !179
  %1927 = load i32, i32* %1926, !mcsema_real_eip !179
  %1928 = sub i32 %1927, 268435455, !mcsema_real_eip !179
  %1929 = xor i32 %1928, %1927, !mcsema_real_eip !179
  %1930 = xor i32 %1929, 268435455, !mcsema_real_eip !179
  %1931 = and i32 %1930, 16, !mcsema_real_eip !179
  %1932 = icmp ne i32 %1931, 0, !mcsema_real_eip !179
  %1933 = zext i1 %1932 to i8, !mcsema_real_eip !179
  store volatile i8 %1933, i8* %AF_write, !mcsema_real_eip !179
  %1934 = trunc i32 %1928 to i8, !mcsema_real_eip !179
  %1935 = call i8 @llvm.ctpop.i8(i8 %1934), !mcsema_real_eip !179
  %1936 = trunc i8 %1935 to i1, !mcsema_real_eip !179
  %1937 = zext i1 %1936 to i8, !mcsema_real_eip !179
  %1938 = xor i8 %1937, 1, !mcsema_real_eip !179
  %1939 = trunc i8 %1938 to i1, !mcsema_real_eip !179
  %1940 = zext i1 %1939 to i8, !mcsema_real_eip !179
  store volatile i8 %1940, i8* %PF_write, !mcsema_real_eip !179
  %1941 = icmp eq i32 %1928, 0, !mcsema_real_eip !179
  %1942 = zext i1 %1941 to i8, !mcsema_real_eip !179
  store volatile i8 %1942, i8* %ZF_write, !mcsema_real_eip !179
  %1943 = lshr i32 %1928, 31, !mcsema_real_eip !179
  %1944 = trunc i32 %1943 to i1, !mcsema_real_eip !179
  %1945 = zext i1 %1944 to i8, !mcsema_real_eip !179
  %1946 = trunc i8 %1945 to i1, !mcsema_real_eip !179
  %1947 = zext i1 %1946 to i8, !mcsema_real_eip !179
  store volatile i8 %1947, i8* %SF_write, !mcsema_real_eip !179
  %1948 = icmp ult i32 %1927, 268435455, !mcsema_real_eip !179
  %1949 = zext i1 %1948 to i8, !mcsema_real_eip !179
  store volatile i8 %1949, i8* %CF_write, !mcsema_real_eip !179
  %1950 = xor i32 %1927, 268435455, !mcsema_real_eip !179
  %1951 = xor i32 %1927, %1928, !mcsema_real_eip !179
  %1952 = and i32 %1950, %1951, !mcsema_real_eip !179
  %1953 = lshr i32 %1952, 31, !mcsema_real_eip !179
  %1954 = trunc i32 %1953 to i1, !mcsema_real_eip !179
  %1955 = zext i1 %1954 to i8, !mcsema_real_eip !179
  %1956 = trunc i8 %1955 to i1, !mcsema_real_eip !179
  %1957 = zext i1 %1956 to i8, !mcsema_real_eip !179
  store volatile i8 %1957, i8* %OF_write, !mcsema_real_eip !179
  store volatile i64 740, i64* %EIP_write, !mcsema_real_eip !180
  %1958 = load i8, i8* %CF_read, !mcsema_real_eip !180
  %1959 = trunc i8 %1958 to i1, !mcsema_real_eip !180
  %1960 = icmp eq i1 %1959, true, !mcsema_real_eip !180
  %1961 = load i8, i8* %ZF_read, !mcsema_real_eip !180
  %1962 = trunc i8 %1961 to i1, !mcsema_real_eip !180
  %1963 = icmp eq i1 %1962, true, !mcsema_real_eip !180
  %1964 = or i1 %1960, %1963, !mcsema_real_eip !180
  br i1 %1964, label %block_2f6, label %block_2ea, !mcsema_real_eip !180

block_2ea:                                        ; preds = %block_2d2
  store volatile i64 746, i64* %EIP_write, !mcsema_real_eip !181
  %1965 = load i64, i64* %RBP_read, !mcsema_real_eip !181
  %1966 = add i64 %1965, -4, !mcsema_real_eip !181
  %1967 = inttoptr i64 %1966 to i64*, !mcsema_real_eip !181
  %1968 = ptrtoint i64* %1967 to i64, !mcsema_real_eip !181
  %1969 = inttoptr i64 %1968 to i32*, !mcsema_real_eip !181
  store i32 -22, i32* %1969, !mcsema_real_eip !181
  store volatile i64 753, i64* %EIP_write, !mcsema_real_eip !182
  br label %block_417, !mcsema_real_eip !182

block_2f6:                                        ; preds = %block_2d2
  store volatile i64 758, i64* %EIP_write, !mcsema_real_eip !183
  %1970 = zext i32 10000 to i64, !mcsema_real_eip !183
  store volatile i64 %1970, i64* %EAX_write, !mcsema_real_eip !183
  store volatile i64 763, i64* %EIP_write, !mcsema_real_eip !184
  %1971 = load i64, i64* %RBP_read, !mcsema_real_eip !184
  %1972 = add i64 %1971, -60, !mcsema_real_eip !184
  %1973 = inttoptr i64 %1972 to i64*, !mcsema_real_eip !184
  %1974 = ptrtoint i64* %1973 to i64, !mcsema_real_eip !184
  %1975 = inttoptr i64 %1974 to i32*, !mcsema_real_eip !184
  %1976 = load i32, i32* %1975, !mcsema_real_eip !184
  %1977 = zext i32 %1976 to i64, !mcsema_real_eip !184
  store volatile i64 %1977, i64* %ECX_write, !mcsema_real_eip !184
  store volatile i64 766, i64* %EIP_write, !mcsema_real_eip !185
  %1978 = load i32, i32* %ECX_read, !mcsema_real_eip !185
  %1979 = xor i32 %1978, 13631488, !mcsema_real_eip !185
  %1980 = trunc i8 0 to i1, !mcsema_real_eip !185
  %1981 = zext i1 %1980 to i8, !mcsema_real_eip !185
  store volatile i8 %1981, i8* %CF_write, !mcsema_real_eip !185
  %1982 = trunc i8 0 to i1, !mcsema_real_eip !185
  %1983 = zext i1 %1982 to i8, !mcsema_real_eip !185
  store volatile i8 %1983, i8* %OF_write, !mcsema_real_eip !185
  %1984 = lshr i32 %1979, 31, !mcsema_real_eip !185
  %1985 = trunc i32 %1984 to i1, !mcsema_real_eip !185
  %1986 = zext i1 %1985 to i8, !mcsema_real_eip !185
  %1987 = trunc i8 %1986 to i1, !mcsema_real_eip !185
  %1988 = zext i1 %1987 to i8, !mcsema_real_eip !185
  store volatile i8 %1988, i8* %SF_write, !mcsema_real_eip !185
  %1989 = icmp eq i32 %1979, 0, !mcsema_real_eip !185
  %1990 = zext i1 %1989 to i8, !mcsema_real_eip !185
  store volatile i8 %1990, i8* %ZF_write, !mcsema_real_eip !185
  %1991 = trunc i32 %1979 to i8, !mcsema_real_eip !185
  %1992 = call i8 @llvm.ctpop.i8(i8 %1991), !mcsema_real_eip !185
  %1993 = trunc i8 %1992 to i1, !mcsema_real_eip !185
  %1994 = zext i1 %1993 to i8, !mcsema_real_eip !185
  %1995 = xor i8 %1994, 1, !mcsema_real_eip !185
  %1996 = trunc i8 %1995 to i1, !mcsema_real_eip !185
  %1997 = zext i1 %1996 to i8, !mcsema_real_eip !185
  store volatile i8 %1997, i8* %PF_write, !mcsema_real_eip !185
  %1998 = zext i32 %1979 to i64, !mcsema_real_eip !185
  store volatile i64 %1998, i64* %ECX_write, !mcsema_real_eip !185
  store volatile i64 772, i64* %EIP_write, !mcsema_real_eip !186
  %1999 = load i64, i64* %RBP_read, !mcsema_real_eip !186
  %2000 = add i64 %1999, -60, !mcsema_real_eip !186
  %2001 = inttoptr i64 %2000 to i64*, !mcsema_real_eip !186
  %2002 = load i32, i32* %ECX_read, !mcsema_real_eip !186
  %2003 = ptrtoint i64* %2001 to i64, !mcsema_real_eip !186
  %2004 = inttoptr i64 %2003 to i32*, !mcsema_real_eip !186
  store i32 %2002, i32* %2004, !mcsema_real_eip !186
  store volatile i64 775, i64* %EIP_write, !mcsema_real_eip !187
  %2005 = load i64, i64* %RBP_read, !mcsema_real_eip !187
  %2006 = add i64 %2005, -60, !mcsema_real_eip !187
  %2007 = inttoptr i64 %2006 to i64*, !mcsema_real_eip !187
  %2008 = ptrtoint i64* %2007 to i64, !mcsema_real_eip !187
  %2009 = inttoptr i64 %2008 to i32*, !mcsema_real_eip !187
  %2010 = load i32, i32* %2009, !mcsema_real_eip !187
  %2011 = zext i32 %2010 to i64, !mcsema_real_eip !187
  store volatile i64 %2011, i64* %ECX_write, !mcsema_real_eip !187
  store volatile i64 778, i64* %EIP_write, !mcsema_real_eip !188
  %2012 = load i32, i32* %ECX_read, !mcsema_real_eip !188
  %2013 = and i32 4, 31, !mcsema_real_eip !188
  %2014 = sub i32 4, 1, !mcsema_real_eip !188
  %2015 = icmp ne i32 %2013, 0, !mcsema_real_eip !188
  %2016 = select i1 %2015, i32 %2014, i32 0, !mcsema_real_eip !188
  %2017 = select i1 %2015, i32 1, i32 0, !mcsema_real_eip !188
  %2018 = lshr i32 %2012, %2016, !mcsema_real_eip !188
  %2019 = and i32 %2018, 1, !mcsema_real_eip !188
  %2020 = icmp ne i32 %2019, 0, !mcsema_real_eip !188
  %2021 = load i8, i8* %CF_read, !mcsema_real_eip !188
  %2022 = trunc i8 %2021 to i1, !mcsema_real_eip !188
  %2023 = select i1 %2015, i1 %2020, i1 %2022, !mcsema_real_eip !188
  %2024 = lshr i32 %2018, %2017, !mcsema_real_eip !188
  %2025 = icmp eq i32 %2013, 1, !mcsema_real_eip !188
  %2026 = load i8, i8* %OF_read, !mcsema_real_eip !188
  %2027 = trunc i8 %2026 to i1, !mcsema_real_eip !188
  %2028 = and i32 %2012, -2147483648, !mcsema_real_eip !188
  %2029 = icmp ne i32 %2028, 0, !mcsema_real_eip !188
  %2030 = select i1 %2025, i1 %2029, i1 %2027, !mcsema_real_eip !188
  %2031 = zext i1 %2030 to i8, !mcsema_real_eip !188
  store volatile i8 %2031, i8* %OF_write, !mcsema_real_eip !188
  %2032 = zext i1 %2023 to i8, !mcsema_real_eip !188
  store volatile i8 %2032, i8* %CF_write, !mcsema_real_eip !188
  %2033 = load i8, i8* %ZF_read, !mcsema_real_eip !188
  %2034 = trunc i8 %2033 to i1, !mcsema_real_eip !188
  %2035 = icmp eq i32 %2024, 0, !mcsema_real_eip !188
  %2036 = select i1 %2015, i1 %2035, i1 %2034, !mcsema_real_eip !188
  %2037 = zext i1 %2036 to i8, !mcsema_real_eip !188
  store volatile i8 %2037, i8* %ZF_write, !mcsema_real_eip !188
  %2038 = load i8, i8* %SF_read, !mcsema_real_eip !188
  %2039 = trunc i8 %2038 to i1, !mcsema_real_eip !188
  %2040 = icmp slt i32 %2024, 0, !mcsema_real_eip !188
  %2041 = select i1 %2015, i1 %2040, i1 %2039, !mcsema_real_eip !188
  %2042 = zext i1 %2041 to i8, !mcsema_real_eip !188
  store volatile i8 %2042, i8* %SF_write, !mcsema_real_eip !188
  %2043 = load i8, i8* %PF_read, !mcsema_real_eip !188
  %2044 = trunc i8 %2043 to i1, !mcsema_real_eip !188
  %2045 = trunc i32 %2024 to i8, !mcsema_real_eip !188
  %2046 = call i8 @llvm.ctpop.i8(i8 %2045), !mcsema_real_eip !188
  %2047 = trunc i8 %2046 to i1, !mcsema_real_eip !188
  %2048 = zext i1 %2047 to i8, !mcsema_real_eip !188
  %2049 = xor i8 %2048, 1, !mcsema_real_eip !188
  %2050 = trunc i8 %2049 to i1, !mcsema_real_eip !188
  %2051 = zext i1 %2050 to i8, !mcsema_real_eip !188
  store volatile i8 %2051, i8* %PF_write, !mcsema_real_eip !188
  %2052 = load i8, i8* %PF_read, !mcsema_real_eip !188
  %2053 = trunc i8 %2052 to i1, !mcsema_real_eip !188
  %2054 = select i1 %2015, i1 %2053, i1 %2044, !mcsema_real_eip !188
  %2055 = zext i1 %2054 to i8, !mcsema_real_eip !188
  store volatile i8 %2055, i8* %PF_write, !mcsema_real_eip !188
  %2056 = zext i32 %2024 to i64, !mcsema_real_eip !188
  store volatile i64 %2056, i64* %ECX_write, !mcsema_real_eip !188
  store volatile i64 781, i64* %EIP_write, !mcsema_real_eip !189
  %2057 = load i64, i64* %RBP_read, !mcsema_real_eip !189
  %2058 = add i64 %2057, -60, !mcsema_real_eip !189
  %2059 = inttoptr i64 %2058 to i64*, !mcsema_real_eip !189
  %2060 = load i32, i32* %ECX_read, !mcsema_real_eip !189
  %2061 = ptrtoint i64* %2059 to i64, !mcsema_real_eip !189
  %2062 = inttoptr i64 %2061 to i32*, !mcsema_real_eip !189
  store i32 %2060, i32* %2062, !mcsema_real_eip !189
  store volatile i64 784, i64* %EIP_write, !mcsema_real_eip !190
  %2063 = load i64, i64* %RBP_read, !mcsema_real_eip !190
  %2064 = add i64 %2063, -60, !mcsema_real_eip !190
  %2065 = inttoptr i64 %2064 to i64*, !mcsema_real_eip !190
  %2066 = ptrtoint i64* %2065 to i64, !mcsema_real_eip !190
  %2067 = inttoptr i64 %2066 to i32*, !mcsema_real_eip !190
  %2068 = load i32, i32* %2067, !mcsema_real_eip !190
  %2069 = zext i32 %2068 to i64, !mcsema_real_eip !190
  store volatile i64 %2069, i64* %ECX_write, !mcsema_real_eip !190
  store volatile i64 787, i64* %EIP_write, !mcsema_real_eip !191
  %2070 = load i32, i32* %ECX_read, !mcsema_real_eip !191
  %2071 = sub i32 %2070, 226, !mcsema_real_eip !191
  %2072 = xor i32 %2071, %2070, !mcsema_real_eip !191
  %2073 = xor i32 %2072, 226, !mcsema_real_eip !191
  %2074 = and i32 %2073, 16, !mcsema_real_eip !191
  %2075 = icmp ne i32 %2074, 0, !mcsema_real_eip !191
  %2076 = zext i1 %2075 to i8, !mcsema_real_eip !191
  store volatile i8 %2076, i8* %AF_write, !mcsema_real_eip !191
  %2077 = trunc i32 %2071 to i8, !mcsema_real_eip !191
  %2078 = call i8 @llvm.ctpop.i8(i8 %2077), !mcsema_real_eip !191
  %2079 = trunc i8 %2078 to i1, !mcsema_real_eip !191
  %2080 = zext i1 %2079 to i8, !mcsema_real_eip !191
  %2081 = xor i8 %2080, 1, !mcsema_real_eip !191
  %2082 = trunc i8 %2081 to i1, !mcsema_real_eip !191
  %2083 = zext i1 %2082 to i8, !mcsema_real_eip !191
  store volatile i8 %2083, i8* %PF_write, !mcsema_real_eip !191
  %2084 = icmp eq i32 %2071, 0, !mcsema_real_eip !191
  %2085 = zext i1 %2084 to i8, !mcsema_real_eip !191
  store volatile i8 %2085, i8* %ZF_write, !mcsema_real_eip !191
  %2086 = lshr i32 %2071, 31, !mcsema_real_eip !191
  %2087 = trunc i32 %2086 to i1, !mcsema_real_eip !191
  %2088 = zext i1 %2087 to i8, !mcsema_real_eip !191
  %2089 = trunc i8 %2088 to i1, !mcsema_real_eip !191
  %2090 = zext i1 %2089 to i8, !mcsema_real_eip !191
  store volatile i8 %2090, i8* %SF_write, !mcsema_real_eip !191
  %2091 = icmp ult i32 %2070, 226, !mcsema_real_eip !191
  %2092 = zext i1 %2091 to i8, !mcsema_real_eip !191
  store volatile i8 %2092, i8* %CF_write, !mcsema_real_eip !191
  %2093 = xor i32 %2070, 226, !mcsema_real_eip !191
  %2094 = xor i32 %2070, %2071, !mcsema_real_eip !191
  %2095 = and i32 %2093, %2094, !mcsema_real_eip !191
  %2096 = lshr i32 %2095, 31, !mcsema_real_eip !191
  %2097 = trunc i32 %2096 to i1, !mcsema_real_eip !191
  %2098 = zext i1 %2097 to i8, !mcsema_real_eip !191
  %2099 = trunc i8 %2098 to i1, !mcsema_real_eip !191
  %2100 = zext i1 %2099 to i8, !mcsema_real_eip !191
  store volatile i8 %2100, i8* %OF_write, !mcsema_real_eip !191
  %2101 = zext i32 %2071 to i64, !mcsema_real_eip !191
  store volatile i64 %2101, i64* %ECX_write, !mcsema_real_eip !191
  store volatile i64 793, i64* %EIP_write, !mcsema_real_eip !192
  %2102 = load i64, i64* %RBP_read, !mcsema_real_eip !192
  %2103 = add i64 %2102, -60, !mcsema_real_eip !192
  %2104 = inttoptr i64 %2103 to i64*, !mcsema_real_eip !192
  %2105 = load i32, i32* %ECX_read, !mcsema_real_eip !192
  %2106 = ptrtoint i64* %2104 to i64, !mcsema_real_eip !192
  %2107 = inttoptr i64 %2106 to i32*, !mcsema_real_eip !192
  store i32 %2105, i32* %2107, !mcsema_real_eip !192
  store volatile i64 796, i64* %EIP_write, !mcsema_real_eip !193
  %2108 = load i64, i64* %RBP_read, !mcsema_real_eip !193
  %2109 = add i64 %2108, -60, !mcsema_real_eip !193
  %2110 = inttoptr i64 %2109 to i64*, !mcsema_real_eip !193
  %2111 = ptrtoint i64* %2110 to i64, !mcsema_real_eip !193
  %2112 = inttoptr i64 %2111 to i32*, !mcsema_real_eip !193
  %2113 = load i32, i32* %2112, !mcsema_real_eip !193
  %2114 = zext i32 %2113 to i64, !mcsema_real_eip !193
  store volatile i64 %2114, i64* %ECX_write, !mcsema_real_eip !193
  store volatile i64 799, i64* %EIP_write, !mcsema_real_eip !194
  %2115 = load i64, i64* %RBP_read, !mcsema_real_eip !194
  %2116 = add i64 %2115, -68, !mcsema_real_eip !194
  %2117 = inttoptr i64 %2116 to i64*, !mcsema_real_eip !194
  %2118 = load i32, i32* %EAX_read, !mcsema_real_eip !194
  %2119 = ptrtoint i64* %2117 to i64, !mcsema_real_eip !194
  %2120 = inttoptr i64 %2119 to i32*, !mcsema_real_eip !194
  store i32 %2118, i32* %2120, !mcsema_real_eip !194
  store volatile i64 802, i64* %EIP_write, !mcsema_real_eip !195
  %2121 = load i32, i32* %ECX_read, !mcsema_real_eip !195
  %2122 = zext i32 %2121 to i64, !mcsema_real_eip !195
  store volatile i64 %2122, i64* %EAX_write, !mcsema_real_eip !195
  store volatile i64 804, i64* %EIP_write, !mcsema_real_eip !196
  %2123 = load i32, i32* %EDX_read, !mcsema_real_eip !196
  %2124 = load i32, i32* %EDX_read, !mcsema_real_eip !196
  %2125 = xor i32 %2123, %2124, !mcsema_real_eip !196
  %2126 = trunc i8 0 to i1, !mcsema_real_eip !196
  %2127 = zext i1 %2126 to i8, !mcsema_real_eip !196
  store volatile i8 %2127, i8* %CF_write, !mcsema_real_eip !196
  %2128 = trunc i8 0 to i1, !mcsema_real_eip !196
  %2129 = zext i1 %2128 to i8, !mcsema_real_eip !196
  store volatile i8 %2129, i8* %OF_write, !mcsema_real_eip !196
  %2130 = lshr i32 %2125, 31, !mcsema_real_eip !196
  %2131 = trunc i32 %2130 to i1, !mcsema_real_eip !196
  %2132 = zext i1 %2131 to i8, !mcsema_real_eip !196
  %2133 = trunc i8 %2132 to i1, !mcsema_real_eip !196
  %2134 = zext i1 %2133 to i8, !mcsema_real_eip !196
  store volatile i8 %2134, i8* %SF_write, !mcsema_real_eip !196
  %2135 = icmp eq i32 %2125, 0, !mcsema_real_eip !196
  %2136 = zext i1 %2135 to i8, !mcsema_real_eip !196
  store volatile i8 %2136, i8* %ZF_write, !mcsema_real_eip !196
  %2137 = trunc i32 %2125 to i8, !mcsema_real_eip !196
  %2138 = call i8 @llvm.ctpop.i8(i8 %2137), !mcsema_real_eip !196
  %2139 = trunc i8 %2138 to i1, !mcsema_real_eip !196
  %2140 = zext i1 %2139 to i8, !mcsema_real_eip !196
  %2141 = xor i8 %2140, 1, !mcsema_real_eip !196
  %2142 = trunc i8 %2141 to i1, !mcsema_real_eip !196
  %2143 = zext i1 %2142 to i8, !mcsema_real_eip !196
  store volatile i8 %2143, i8* %PF_write, !mcsema_real_eip !196
  %2144 = zext i32 %2125 to i64, !mcsema_real_eip !196
  store volatile i64 %2144, i64* %EDX_write, !mcsema_real_eip !196
  store volatile i64 806, i64* %EIP_write, !mcsema_real_eip !197
  %2145 = load i64, i64* %RBP_read, !mcsema_real_eip !197
  %2146 = add i64 %2145, -68, !mcsema_real_eip !197
  %2147 = inttoptr i64 %2146 to i64*, !mcsema_real_eip !197
  %2148 = ptrtoint i64* %2147 to i64, !mcsema_real_eip !197
  %2149 = inttoptr i64 %2148 to i32*, !mcsema_real_eip !197
  %2150 = load i32, i32* %2149, !mcsema_real_eip !197
  %2151 = zext i32 %2150 to i64, !mcsema_real_eip !197
  store volatile i64 %2151, i64* %ECX_write, !mcsema_real_eip !197
  store volatile i64 809, i64* %EIP_write, !mcsema_real_eip !198
  %2152 = load i32, i32* %ECX_read, !mcsema_real_eip !198
  %2153 = load i32, i32* %EAX_read, !mcsema_real_eip !198
  %2154 = load i32, i32* %EDX_read, !mcsema_real_eip !198
  %2155 = zext i32 %2154 to i64, !mcsema_real_eip !198
  %2156 = shl i64 %2155, 32, !mcsema_real_eip !198
  %2157 = sext i32 %2153 to i64, !mcsema_real_eip !198
  %2158 = or i64 %2156, %2157, !mcsema_real_eip !198
  %2159 = zext i32 %2152 to i64, !mcsema_real_eip !198
  %2160 = udiv i64 %2158, %2159, !mcsema_real_eip !198
  %2161 = urem i64 %2158, %2159, !mcsema_real_eip !198
  %2162 = trunc i64 %2161 to i32, !mcsema_real_eip !198
  %2163 = trunc i64 %2160 to i32, !mcsema_real_eip !198
  %2164 = zext i32 %2162 to i64, !mcsema_real_eip !198
  store volatile i64 %2164, i64* %EDX_write, !mcsema_real_eip !198
  %2165 = zext i32 %2163 to i64, !mcsema_real_eip !198
  store volatile i64 %2165, i64* %EAX_write, !mcsema_real_eip !198
  store volatile i64 811, i64* %EIP_write, !mcsema_real_eip !199
  %2166 = load i64, i64* %RBP_read, !mcsema_real_eip !199
  %2167 = add i64 %2166, -60, !mcsema_real_eip !199
  %2168 = inttoptr i64 %2167 to i64*, !mcsema_real_eip !199
  %2169 = load i32, i32* %EAX_read, !mcsema_real_eip !199
  %2170 = ptrtoint i64* %2168 to i64, !mcsema_real_eip !199
  %2171 = inttoptr i64 %2170 to i32*, !mcsema_real_eip !199
  store i32 %2169, i32* %2171, !mcsema_real_eip !199
  store volatile i64 814, i64* %EIP_write, !mcsema_real_eip !200
  %2172 = load i64, i64* %RBP_read, !mcsema_real_eip !200
  %2173 = add i64 %2172, -60, !mcsema_real_eip !200
  %2174 = inttoptr i64 %2173 to i64*, !mcsema_real_eip !200
  %2175 = ptrtoint i64* %2174 to i64, !mcsema_real_eip !200
  %2176 = inttoptr i64 %2175 to i32*, !mcsema_real_eip !200
  %2177 = load i32, i32* %2176, !mcsema_real_eip !200
  %2178 = sub i32 %2177, 3, !mcsema_real_eip !200
  %2179 = xor i32 %2178, %2177, !mcsema_real_eip !200
  %2180 = xor i32 %2179, 3, !mcsema_real_eip !200
  %2181 = and i32 %2180, 16, !mcsema_real_eip !200
  %2182 = icmp ne i32 %2181, 0, !mcsema_real_eip !200
  %2183 = zext i1 %2182 to i8, !mcsema_real_eip !200
  store volatile i8 %2183, i8* %AF_write, !mcsema_real_eip !200
  %2184 = trunc i32 %2178 to i8, !mcsema_real_eip !200
  %2185 = call i8 @llvm.ctpop.i8(i8 %2184), !mcsema_real_eip !200
  %2186 = trunc i8 %2185 to i1, !mcsema_real_eip !200
  %2187 = zext i1 %2186 to i8, !mcsema_real_eip !200
  %2188 = xor i8 %2187, 1, !mcsema_real_eip !200
  %2189 = trunc i8 %2188 to i1, !mcsema_real_eip !200
  %2190 = zext i1 %2189 to i8, !mcsema_real_eip !200
  store volatile i8 %2190, i8* %PF_write, !mcsema_real_eip !200
  %2191 = icmp eq i32 %2178, 0, !mcsema_real_eip !200
  %2192 = zext i1 %2191 to i8, !mcsema_real_eip !200
  store volatile i8 %2192, i8* %ZF_write, !mcsema_real_eip !200
  %2193 = lshr i32 %2178, 31, !mcsema_real_eip !200
  %2194 = trunc i32 %2193 to i1, !mcsema_real_eip !200
  %2195 = zext i1 %2194 to i8, !mcsema_real_eip !200
  %2196 = trunc i8 %2195 to i1, !mcsema_real_eip !200
  %2197 = zext i1 %2196 to i8, !mcsema_real_eip !200
  store volatile i8 %2197, i8* %SF_write, !mcsema_real_eip !200
  %2198 = icmp ult i32 %2177, 3, !mcsema_real_eip !200
  %2199 = zext i1 %2198 to i8, !mcsema_real_eip !200
  store volatile i8 %2199, i8* %CF_write, !mcsema_real_eip !200
  %2200 = xor i32 %2177, 3, !mcsema_real_eip !200
  %2201 = xor i32 %2177, %2178, !mcsema_real_eip !200
  %2202 = and i32 %2200, %2201, !mcsema_real_eip !200
  %2203 = lshr i32 %2202, 31, !mcsema_real_eip !200
  %2204 = trunc i32 %2203 to i1, !mcsema_real_eip !200
  %2205 = zext i1 %2204 to i8, !mcsema_real_eip !200
  %2206 = trunc i8 %2205 to i1, !mcsema_real_eip !200
  %2207 = zext i1 %2206 to i8, !mcsema_real_eip !200
  store volatile i8 %2207, i8* %OF_write, !mcsema_real_eip !200
  store volatile i64 818, i64* %EIP_write, !mcsema_real_eip !201
  %2208 = load i8, i8* %ZF_read, !mcsema_real_eip !201
  %2209 = trunc i8 %2208 to i1, !mcsema_real_eip !201
  %2210 = icmp eq i1 %2209, true, !mcsema_real_eip !201
  br i1 %2210, label %block_343, label %block_338, !mcsema_real_eip !201

block_338:                                        ; preds = %block_2f6
  store volatile i64 824, i64* %EIP_write, !mcsema_real_eip !202
  %2211 = load i64, i64* %RBP_read, !mcsema_real_eip !202
  %2212 = add i64 %2211, -60, !mcsema_real_eip !202
  %2213 = inttoptr i64 %2212 to i64*, !mcsema_real_eip !202
  %2214 = ptrtoint i64* %2213 to i64, !mcsema_real_eip !202
  %2215 = inttoptr i64 %2214 to i32*, !mcsema_real_eip !202
  %2216 = load i32, i32* %2215, !mcsema_real_eip !202
  %2217 = zext i32 %2216 to i64, !mcsema_real_eip !202
  store volatile i64 %2217, i64* %EAX_write, !mcsema_real_eip !202
  store volatile i64 827, i64* %EIP_write, !mcsema_real_eip !203
  %2218 = load i64, i64* %RBP_read, !mcsema_real_eip !203
  %2219 = add i64 %2218, -4, !mcsema_real_eip !203
  %2220 = inttoptr i64 %2219 to i64*, !mcsema_real_eip !203
  %2221 = load i32, i32* %EAX_read, !mcsema_real_eip !203
  %2222 = ptrtoint i64* %2220 to i64, !mcsema_real_eip !203
  %2223 = inttoptr i64 %2222 to i32*, !mcsema_real_eip !203
  store i32 %2221, i32* %2223, !mcsema_real_eip !203
  store volatile i64 830, i64* %EIP_write, !mcsema_real_eip !204
  br label %block_417, !mcsema_real_eip !204

block_343:                                        ; preds = %block_2f6
  store volatile i64 835, i64* %EIP_write, !mcsema_real_eip !205
  %2224 = zext i32 4 to i64, !mcsema_real_eip !205
  store volatile i64 %2224, i64* %EDX_write, !mcsema_real_eip !205
  store volatile i64 840, i64* %EIP_write, !mcsema_real_eip !206
  %2225 = load i64, i64* %RBP_read, !mcsema_real_eip !206
  %2226 = add i64 %2225, -20, !mcsema_real_eip !206
  %2227 = inttoptr i64 %2226 to i64*, !mcsema_real_eip !206
  %2228 = ptrtoint i64* %2227 to i64, !mcsema_real_eip !206
  %2229 = inttoptr i64 %2228 to i32*, !mcsema_real_eip !206
  %2230 = load i32, i32* %2229, !mcsema_real_eip !206
  %2231 = zext i32 %2230 to i64, !mcsema_real_eip !206
  store volatile i64 %2231, i64* %EDI_write, !mcsema_real_eip !206
  store volatile i64 843, i64* %EIP_write, !mcsema_real_eip !207
  %2232 = load i64, i64* %RBP_read, !mcsema_real_eip !207
  %2233 = add i64 %2232, -16, !mcsema_real_eip !207
  %2234 = inttoptr i64 %2233 to i64*, !mcsema_real_eip !207
  %2235 = load i64, i64* %2234, !mcsema_real_eip !207
  store volatile i64 %2235, i64* %RAX_write, !mcsema_real_eip !207
  store volatile i64 847, i64* %EIP_write, !mcsema_real_eip !208
  %2236 = load i64, i64* %RAX_read, !mcsema_real_eip !208
  %2237 = add i64 28, %2236, !mcsema_real_eip !208
  %2238 = xor i64 %2237, %2236, !mcsema_real_eip !208
  %2239 = xor i64 %2238, 28, !mcsema_real_eip !208
  %2240 = and i64 %2239, 16, !mcsema_real_eip !208
  %2241 = icmp ne i64 %2240, 0, !mcsema_real_eip !208
  %2242 = zext i1 %2241 to i8, !mcsema_real_eip !208
  store volatile i8 %2242, i8* %AF_write, !mcsema_real_eip !208
  %2243 = lshr i64 %2237, 63, !mcsema_real_eip !208
  %2244 = trunc i64 %2243 to i1, !mcsema_real_eip !208
  %2245 = zext i1 %2244 to i8, !mcsema_real_eip !208
  %2246 = trunc i8 %2245 to i1, !mcsema_real_eip !208
  %2247 = zext i1 %2246 to i8, !mcsema_real_eip !208
  store volatile i8 %2247, i8* %SF_write, !mcsema_real_eip !208
  %2248 = icmp eq i64 %2237, 0, !mcsema_real_eip !208
  %2249 = zext i1 %2248 to i8, !mcsema_real_eip !208
  store volatile i8 %2249, i8* %ZF_write, !mcsema_real_eip !208
  %2250 = xor i64 %2236, 28, !mcsema_real_eip !208
  %2251 = xor i64 %2250, -1, !mcsema_real_eip !208
  %2252 = xor i64 %2236, %2237, !mcsema_real_eip !208
  %2253 = and i64 %2251, %2252, !mcsema_real_eip !208
  %2254 = lshr i64 %2253, 63, !mcsema_real_eip !208
  %2255 = and i64 %2254, 1, !mcsema_real_eip !208
  %2256 = trunc i64 %2255 to i1, !mcsema_real_eip !208
  %2257 = zext i1 %2256 to i8, !mcsema_real_eip !208
  %2258 = trunc i8 %2257 to i1, !mcsema_real_eip !208
  %2259 = zext i1 %2258 to i8, !mcsema_real_eip !208
  store volatile i8 %2259, i8* %OF_write, !mcsema_real_eip !208
  %2260 = trunc i64 %2237 to i8, !mcsema_real_eip !208
  %2261 = call i8 @llvm.ctpop.i8(i8 %2260), !mcsema_real_eip !208
  %2262 = trunc i8 %2261 to i1, !mcsema_real_eip !208
  %2263 = zext i1 %2262 to i8, !mcsema_real_eip !208
  %2264 = xor i8 %2263, 1, !mcsema_real_eip !208
  %2265 = trunc i8 %2264 to i1, !mcsema_real_eip !208
  %2266 = zext i1 %2265 to i8, !mcsema_real_eip !208
  store volatile i8 %2266, i8* %PF_write, !mcsema_real_eip !208
  %2267 = icmp ult i64 %2237, %2236, !mcsema_real_eip !208
  %2268 = zext i1 %2267 to i8, !mcsema_real_eip !208
  store volatile i8 %2268, i8* %CF_write, !mcsema_real_eip !208
  store volatile i64 %2237, i64* %RAX_write, !mcsema_real_eip !208
  store volatile i64 851, i64* %EIP_write, !mcsema_real_eip !209
  %2269 = load i64, i64* %RAX_read, !mcsema_real_eip !209
  store volatile i64 %2269, i64* %RSI_write, !mcsema_real_eip !209
  store volatile i64 854, i64* %EIP_write, !mcsema_real_eip !210
  %2270 = load i64, i64* %RDI_read, !mcsema_real_eip !210
  %2271 = load i64, i64* %RSI_read, !mcsema_real_eip !210
  %2272 = load i64, i64* %RDX_read, !mcsema_real_eip !210
  %2273 = load i64, i64* %RSP_read, !mcsema_real_eip !210
  %2274 = sub i64 %2273, 8, !mcsema_real_eip !210
  %2275 = inttoptr i64 %2274 to i64*, !mcsema_real_eip !210
  store i64 -2415393069852865332, i64* %2275, !mcsema_real_eip !210
  store volatile i64 %2274, i64* %RSP_write, !mcsema_real_eip !210
  %2276 = call x86_64_sysvcc i64 @_read_bytes(i64 %2270, i64 %2271, i64 %2272), !mcsema_real_eip !210
  store volatile i64 %2276, i64* %RAX_write, !mcsema_real_eip !210
  store volatile i64 859, i64* %EIP_write, !mcsema_real_eip !211
  %2277 = load i64, i64* %RBP_read, !mcsema_real_eip !211
  %2278 = add i64 %2277, -64, !mcsema_real_eip !211
  %2279 = inttoptr i64 %2278 to i64*, !mcsema_real_eip !211
  %2280 = load i32, i32* %EAX_read, !mcsema_real_eip !211
  %2281 = ptrtoint i64* %2279 to i64, !mcsema_real_eip !211
  %2282 = inttoptr i64 %2281 to i32*, !mcsema_real_eip !211
  store i32 %2280, i32* %2282, !mcsema_real_eip !211
  store volatile i64 862, i64* %EIP_write, !mcsema_real_eip !212
  %2283 = load i64, i64* %RBP_read, !mcsema_real_eip !212
  %2284 = add i64 %2283, -16, !mcsema_real_eip !212
  %2285 = inttoptr i64 %2284 to i64*, !mcsema_real_eip !212
  %2286 = load i64, i64* %2285, !mcsema_real_eip !212
  store volatile i64 %2286, i64* %RSI_write, !mcsema_real_eip !212
  store volatile i64 866, i64* %EIP_write, !mcsema_real_eip !213
  %2287 = load i64, i64* %RSI_read, !mcsema_real_eip !213
  %2288 = add i64 %2287, 28, !mcsema_real_eip !213
  %2289 = inttoptr i64 %2288 to i64*, !mcsema_real_eip !213
  %2290 = ptrtoint i64* %2289 to i64, !mcsema_real_eip !213
  %2291 = inttoptr i64 %2290 to i8*, !mcsema_real_eip !213
  %2292 = load i8, i8* %2291, !mcsema_real_eip !213
  %2293 = sext i8 %2292 to i32, !mcsema_real_eip !213
  %2294 = zext i32 %2293 to i64, !mcsema_real_eip !213
  store volatile i64 %2294, i64* %EAX_write, !mcsema_real_eip !213
  store volatile i64 870, i64* %EIP_write, !mcsema_real_eip !214
  %2295 = load i32, i32* %EAX_read, !mcsema_real_eip !214
  %2296 = sub i32 %2295, 100, !mcsema_real_eip !214
  %2297 = xor i32 %2296, %2295, !mcsema_real_eip !214
  %2298 = xor i32 %2297, 100, !mcsema_real_eip !214
  %2299 = and i32 %2298, 16, !mcsema_real_eip !214
  %2300 = icmp ne i32 %2299, 0, !mcsema_real_eip !214
  %2301 = zext i1 %2300 to i8, !mcsema_real_eip !214
  store volatile i8 %2301, i8* %AF_write, !mcsema_real_eip !214
  %2302 = trunc i32 %2296 to i8, !mcsema_real_eip !214
  %2303 = call i8 @llvm.ctpop.i8(i8 %2302), !mcsema_real_eip !214
  %2304 = trunc i8 %2303 to i1, !mcsema_real_eip !214
  %2305 = zext i1 %2304 to i8, !mcsema_real_eip !214
  %2306 = xor i8 %2305, 1, !mcsema_real_eip !214
  %2307 = trunc i8 %2306 to i1, !mcsema_real_eip !214
  %2308 = zext i1 %2307 to i8, !mcsema_real_eip !214
  store volatile i8 %2308, i8* %PF_write, !mcsema_real_eip !214
  %2309 = icmp eq i32 %2296, 0, !mcsema_real_eip !214
  %2310 = zext i1 %2309 to i8, !mcsema_real_eip !214
  store volatile i8 %2310, i8* %ZF_write, !mcsema_real_eip !214
  %2311 = lshr i32 %2296, 31, !mcsema_real_eip !214
  %2312 = trunc i32 %2311 to i1, !mcsema_real_eip !214
  %2313 = zext i1 %2312 to i8, !mcsema_real_eip !214
  %2314 = trunc i8 %2313 to i1, !mcsema_real_eip !214
  %2315 = zext i1 %2314 to i8, !mcsema_real_eip !214
  store volatile i8 %2315, i8* %SF_write, !mcsema_real_eip !214
  %2316 = icmp ult i32 %2295, 100, !mcsema_real_eip !214
  %2317 = zext i1 %2316 to i8, !mcsema_real_eip !214
  store volatile i8 %2317, i8* %CF_write, !mcsema_real_eip !214
  %2318 = xor i32 %2295, 100, !mcsema_real_eip !214
  %2319 = xor i32 %2295, %2296, !mcsema_real_eip !214
  %2320 = and i32 %2318, %2319, !mcsema_real_eip !214
  %2321 = lshr i32 %2320, 31, !mcsema_real_eip !214
  %2322 = trunc i32 %2321 to i1, !mcsema_real_eip !214
  %2323 = zext i1 %2322 to i8, !mcsema_real_eip !214
  %2324 = trunc i8 %2323 to i1, !mcsema_real_eip !214
  %2325 = zext i1 %2324 to i8, !mcsema_real_eip !214
  store volatile i8 %2325, i8* %OF_write, !mcsema_real_eip !214
  store volatile i64 873, i64* %EIP_write, !mcsema_real_eip !215
  %2326 = load i8, i8* %ZF_read, !mcsema_real_eip !215
  %2327 = trunc i8 %2326 to i1, !mcsema_real_eip !215
  %2328 = icmp eq i1 %2327, false, !mcsema_real_eip !215
  br i1 %2328, label %block_38e, label %block_36f, !mcsema_real_eip !215

block_36f:                                        ; preds = %block_343
  store volatile i64 879, i64* %EIP_write, !mcsema_real_eip !216
  %2329 = load i64, i64* %RBP_read, !mcsema_real_eip !216
  %2330 = add i64 %2329, -16, !mcsema_real_eip !216
  %2331 = inttoptr i64 %2330 to i64*, !mcsema_real_eip !216
  %2332 = load i64, i64* %2331, !mcsema_real_eip !216
  store volatile i64 %2332, i64* %RAX_write, !mcsema_real_eip !216
  store volatile i64 883, i64* %EIP_write, !mcsema_real_eip !217
  %2333 = load i64, i64* %RAX_read, !mcsema_real_eip !217
  %2334 = add i64 %2333, 29, !mcsema_real_eip !217
  %2335 = inttoptr i64 %2334 to i64*, !mcsema_real_eip !217
  %2336 = ptrtoint i64* %2335 to i64, !mcsema_real_eip !217
  %2337 = inttoptr i64 %2336 to i8*, !mcsema_real_eip !217
  %2338 = load i8, i8* %2337, !mcsema_real_eip !217
  %2339 = sext i8 %2338 to i32, !mcsema_real_eip !217
  %2340 = zext i32 %2339 to i64, !mcsema_real_eip !217
  store volatile i64 %2340, i64* %ECX_write, !mcsema_real_eip !217
  store volatile i64 887, i64* %EIP_write, !mcsema_real_eip !218
  %2341 = load i32, i32* %ECX_read, !mcsema_real_eip !218
  %2342 = sub i32 %2341, 100, !mcsema_real_eip !218
  %2343 = xor i32 %2342, %2341, !mcsema_real_eip !218
  %2344 = xor i32 %2343, 100, !mcsema_real_eip !218
  %2345 = and i32 %2344, 16, !mcsema_real_eip !218
  %2346 = icmp ne i32 %2345, 0, !mcsema_real_eip !218
  %2347 = zext i1 %2346 to i8, !mcsema_real_eip !218
  store volatile i8 %2347, i8* %AF_write, !mcsema_real_eip !218
  %2348 = trunc i32 %2342 to i8, !mcsema_real_eip !218
  %2349 = call i8 @llvm.ctpop.i8(i8 %2348), !mcsema_real_eip !218
  %2350 = trunc i8 %2349 to i1, !mcsema_real_eip !218
  %2351 = zext i1 %2350 to i8, !mcsema_real_eip !218
  %2352 = xor i8 %2351, 1, !mcsema_real_eip !218
  %2353 = trunc i8 %2352 to i1, !mcsema_real_eip !218
  %2354 = zext i1 %2353 to i8, !mcsema_real_eip !218
  store volatile i8 %2354, i8* %PF_write, !mcsema_real_eip !218
  %2355 = icmp eq i32 %2342, 0, !mcsema_real_eip !218
  %2356 = zext i1 %2355 to i8, !mcsema_real_eip !218
  store volatile i8 %2356, i8* %ZF_write, !mcsema_real_eip !218
  %2357 = lshr i32 %2342, 31, !mcsema_real_eip !218
  %2358 = trunc i32 %2357 to i1, !mcsema_real_eip !218
  %2359 = zext i1 %2358 to i8, !mcsema_real_eip !218
  %2360 = trunc i8 %2359 to i1, !mcsema_real_eip !218
  %2361 = zext i1 %2360 to i8, !mcsema_real_eip !218
  store volatile i8 %2361, i8* %SF_write, !mcsema_real_eip !218
  %2362 = icmp ult i32 %2341, 100, !mcsema_real_eip !218
  %2363 = zext i1 %2362 to i8, !mcsema_real_eip !218
  store volatile i8 %2363, i8* %CF_write, !mcsema_real_eip !218
  %2364 = xor i32 %2341, 100, !mcsema_real_eip !218
  %2365 = xor i32 %2341, %2342, !mcsema_real_eip !218
  %2366 = and i32 %2364, %2365, !mcsema_real_eip !218
  %2367 = lshr i32 %2366, 31, !mcsema_real_eip !218
  %2368 = trunc i32 %2367 to i1, !mcsema_real_eip !218
  %2369 = zext i1 %2368 to i8, !mcsema_real_eip !218
  %2370 = trunc i8 %2369 to i1, !mcsema_real_eip !218
  %2371 = zext i1 %2370 to i8, !mcsema_real_eip !218
  store volatile i8 %2371, i8* %OF_write, !mcsema_real_eip !218
  store volatile i64 890, i64* %EIP_write, !mcsema_real_eip !219
  %2372 = load i8, i8* %ZF_read, !mcsema_real_eip !219
  %2373 = trunc i8 %2372 to i1, !mcsema_real_eip !219
  %2374 = icmp eq i1 %2373, false, !mcsema_real_eip !219
  br i1 %2374, label %block_38e, label %block_380, !mcsema_real_eip !219

block_380:                                        ; preds = %block_36f
  store volatile i64 896, i64* %EIP_write, !mcsema_real_eip !220
  %2375 = load i64, i64* %RBP_read, !mcsema_real_eip !220
  %2376 = add i64 %2375, -64, !mcsema_real_eip !220
  %2377 = inttoptr i64 %2376 to i64*, !mcsema_real_eip !220
  %2378 = ptrtoint i64* %2377 to i64, !mcsema_real_eip !220
  %2379 = inttoptr i64 %2378 to i32*, !mcsema_real_eip !220
  %2380 = load i32, i32* %2379, !mcsema_real_eip !220
  %2381 = zext i32 %2380 to i64, !mcsema_real_eip !220
  store volatile i64 %2381, i64* %EAX_write, !mcsema_real_eip !220
  store volatile i64 899, i64* %EIP_write, !mcsema_real_eip !221
  %2382 = load i64, i64* %RBP_read, !mcsema_real_eip !221
  %2383 = add i64 %2382, -20, !mcsema_real_eip !221
  %2384 = inttoptr i64 %2383 to i64*, !mcsema_real_eip !221
  %2385 = ptrtoint i64* %2384 to i64, !mcsema_real_eip !221
  %2386 = inttoptr i64 %2385 to i32*, !mcsema_real_eip !221
  %2387 = load i32, i32* %2386, !mcsema_real_eip !221
  %2388 = load i32, i32* %EAX_read, !mcsema_real_eip !221
  %2389 = xor i32 %2387, %2388, !mcsema_real_eip !221
  %2390 = trunc i8 0 to i1, !mcsema_real_eip !221
  %2391 = zext i1 %2390 to i8, !mcsema_real_eip !221
  store volatile i8 %2391, i8* %CF_write, !mcsema_real_eip !221
  %2392 = trunc i8 0 to i1, !mcsema_real_eip !221
  %2393 = zext i1 %2392 to i8, !mcsema_real_eip !221
  store volatile i8 %2393, i8* %OF_write, !mcsema_real_eip !221
  %2394 = lshr i32 %2389, 31, !mcsema_real_eip !221
  %2395 = trunc i32 %2394 to i1, !mcsema_real_eip !221
  %2396 = zext i1 %2395 to i8, !mcsema_real_eip !221
  %2397 = trunc i8 %2396 to i1, !mcsema_real_eip !221
  %2398 = zext i1 %2397 to i8, !mcsema_real_eip !221
  store volatile i8 %2398, i8* %SF_write, !mcsema_real_eip !221
  %2399 = icmp eq i32 %2389, 0, !mcsema_real_eip !221
  %2400 = zext i1 %2399 to i8, !mcsema_real_eip !221
  store volatile i8 %2400, i8* %ZF_write, !mcsema_real_eip !221
  %2401 = trunc i32 %2389 to i8, !mcsema_real_eip !221
  %2402 = call i8 @llvm.ctpop.i8(i8 %2401), !mcsema_real_eip !221
  %2403 = trunc i8 %2402 to i1, !mcsema_real_eip !221
  %2404 = zext i1 %2403 to i8, !mcsema_real_eip !221
  %2405 = xor i8 %2404, 1, !mcsema_real_eip !221
  %2406 = trunc i8 %2405 to i1, !mcsema_real_eip !221
  %2407 = zext i1 %2406 to i8, !mcsema_real_eip !221
  store volatile i8 %2407, i8* %PF_write, !mcsema_real_eip !221
  %2408 = zext i32 %2389 to i64, !mcsema_real_eip !221
  store volatile i64 %2408, i64* %EAX_write, !mcsema_real_eip !221
  store volatile i64 902, i64* %EIP_write, !mcsema_real_eip !222
  %2409 = load i64, i64* %RBP_read, !mcsema_real_eip !222
  %2410 = add i64 %2409, -20, !mcsema_real_eip !222
  %2411 = inttoptr i64 %2410 to i64*, !mcsema_real_eip !222
  %2412 = load i32, i32* %EAX_read, !mcsema_real_eip !222
  %2413 = ptrtoint i64* %2411 to i64, !mcsema_real_eip !222
  %2414 = inttoptr i64 %2413 to i32*, !mcsema_real_eip !222
  store i32 %2412, i32* %2414, !mcsema_real_eip !222
  store volatile i64 905, i64* %EIP_write, !mcsema_real_eip !223
  br label %block_411, !mcsema_real_eip !223

block_38e:                                        ; preds = %block_36f, %block_343
  store volatile i64 910, i64* %EIP_write, !mcsema_real_eip !224
  %2415 = load i64, i64* %RBP_read, !mcsema_real_eip !224
  %2416 = add i64 %2415, -16, !mcsema_real_eip !224
  %2417 = inttoptr i64 %2416 to i64*, !mcsema_real_eip !224
  %2418 = load i64, i64* %2417, !mcsema_real_eip !224
  store volatile i64 %2418, i64* %RAX_write, !mcsema_real_eip !224
  store volatile i64 914, i64* %EIP_write, !mcsema_real_eip !225
  %2419 = load i64, i64* %RAX_read, !mcsema_real_eip !225
  %2420 = add i64 %2419, 28, !mcsema_real_eip !225
  %2421 = inttoptr i64 %2420 to i64*, !mcsema_real_eip !225
  %2422 = ptrtoint i64* %2421 to i64, !mcsema_real_eip !225
  %2423 = inttoptr i64 %2422 to i8*, !mcsema_real_eip !225
  %2424 = load i8, i8* %2423, !mcsema_real_eip !225
  %2425 = sext i8 %2424 to i32, !mcsema_real_eip !225
  %2426 = zext i32 %2425 to i64, !mcsema_real_eip !225
  store volatile i64 %2426, i64* %ECX_write, !mcsema_real_eip !225
  store volatile i64 918, i64* %EIP_write, !mcsema_real_eip !226
  %2427 = load i64, i64* %RBP_read, !mcsema_real_eip !226
  %2428 = add i64 %2427, -16, !mcsema_real_eip !226
  %2429 = inttoptr i64 %2428 to i64*, !mcsema_real_eip !226
  %2430 = load i64, i64* %2429, !mcsema_real_eip !226
  store volatile i64 %2430, i64* %RAX_write, !mcsema_real_eip !226
  store volatile i64 922, i64* %EIP_write, !mcsema_real_eip !227
  %2431 = load i64, i64* %RAX_read, !mcsema_real_eip !227
  %2432 = add i64 %2431, 29, !mcsema_real_eip !227
  %2433 = inttoptr i64 %2432 to i64*, !mcsema_real_eip !227
  %2434 = ptrtoint i64* %2433 to i64, !mcsema_real_eip !227
  %2435 = inttoptr i64 %2434 to i8*, !mcsema_real_eip !227
  %2436 = load i8, i8* %2435, !mcsema_real_eip !227
  %2437 = sext i8 %2436 to i32, !mcsema_real_eip !227
  %2438 = zext i32 %2437 to i64, !mcsema_real_eip !227
  store volatile i64 %2438, i64* %EDX_write, !mcsema_real_eip !227
  store volatile i64 926, i64* %EIP_write, !mcsema_real_eip !228
  %2439 = load i32, i32* %ECX_read, !mcsema_real_eip !228
  %2440 = load i32, i32* %EDX_read, !mcsema_real_eip !228
  %2441 = sub i32 %2439, %2440, !mcsema_real_eip !228
  %2442 = xor i32 %2441, %2439, !mcsema_real_eip !228
  %2443 = xor i32 %2442, %2440, !mcsema_real_eip !228
  %2444 = and i32 %2443, 16, !mcsema_real_eip !228
  %2445 = icmp ne i32 %2444, 0, !mcsema_real_eip !228
  %2446 = zext i1 %2445 to i8, !mcsema_real_eip !228
  store volatile i8 %2446, i8* %AF_write, !mcsema_real_eip !228
  %2447 = trunc i32 %2441 to i8, !mcsema_real_eip !228
  %2448 = call i8 @llvm.ctpop.i8(i8 %2447), !mcsema_real_eip !228
  %2449 = trunc i8 %2448 to i1, !mcsema_real_eip !228
  %2450 = zext i1 %2449 to i8, !mcsema_real_eip !228
  %2451 = xor i8 %2450, 1, !mcsema_real_eip !228
  %2452 = trunc i8 %2451 to i1, !mcsema_real_eip !228
  %2453 = zext i1 %2452 to i8, !mcsema_real_eip !228
  store volatile i8 %2453, i8* %PF_write, !mcsema_real_eip !228
  %2454 = icmp eq i32 %2441, 0, !mcsema_real_eip !228
  %2455 = zext i1 %2454 to i8, !mcsema_real_eip !228
  store volatile i8 %2455, i8* %ZF_write, !mcsema_real_eip !228
  %2456 = lshr i32 %2441, 31, !mcsema_real_eip !228
  %2457 = trunc i32 %2456 to i1, !mcsema_real_eip !228
  %2458 = zext i1 %2457 to i8, !mcsema_real_eip !228
  %2459 = trunc i8 %2458 to i1, !mcsema_real_eip !228
  %2460 = zext i1 %2459 to i8, !mcsema_real_eip !228
  store volatile i8 %2460, i8* %SF_write, !mcsema_real_eip !228
  %2461 = icmp ult i32 %2439, %2440, !mcsema_real_eip !228
  %2462 = zext i1 %2461 to i8, !mcsema_real_eip !228
  store volatile i8 %2462, i8* %CF_write, !mcsema_real_eip !228
  %2463 = xor i32 %2439, %2440, !mcsema_real_eip !228
  %2464 = xor i32 %2439, %2441, !mcsema_real_eip !228
  %2465 = and i32 %2463, %2464, !mcsema_real_eip !228
  %2466 = lshr i32 %2465, 31, !mcsema_real_eip !228
  %2467 = trunc i32 %2466 to i1, !mcsema_real_eip !228
  %2468 = zext i1 %2467 to i8, !mcsema_real_eip !228
  %2469 = trunc i8 %2468 to i1, !mcsema_real_eip !228
  %2470 = zext i1 %2469 to i8, !mcsema_real_eip !228
  store volatile i8 %2470, i8* %OF_write, !mcsema_real_eip !228
  store volatile i64 928, i64* %EIP_write, !mcsema_real_eip !229
  %2471 = load i8, i8* %ZF_read, !mcsema_real_eip !229
  %2472 = trunc i8 %2471 to i1, !mcsema_real_eip !229
  %2473 = icmp eq i1 %2472, false, !mcsema_real_eip !229
  br i1 %2473, label %block_406, label %block_3a6, !mcsema_real_eip !229

block_3a6:                                        ; preds = %block_38e
  store volatile i64 934, i64* %EIP_write, !mcsema_real_eip !230
  %2474 = zext i32 15 to i64, !mcsema_real_eip !230
  store volatile i64 %2474, i64* %EAX_write, !mcsema_real_eip !230
  store volatile i64 939, i64* %EIP_write, !mcsema_real_eip !231
  %2475 = load i64, i64* %RBP_read, !mcsema_real_eip !231
  %2476 = add i64 %2475, -16, !mcsema_real_eip !231
  %2477 = inttoptr i64 %2476 to i64*, !mcsema_real_eip !231
  %2478 = load i64, i64* %2477, !mcsema_real_eip !231
  store volatile i64 %2478, i64* %RCX_write, !mcsema_real_eip !231
  store volatile i64 943, i64* %EIP_write, !mcsema_real_eip !232
  %2479 = load i64, i64* %RCX_read, !mcsema_real_eip !232
  %2480 = add i64 %2479, 31, !mcsema_real_eip !232
  %2481 = inttoptr i64 %2480 to i64*, !mcsema_real_eip !232
  %2482 = ptrtoint i64* %2481 to i64, !mcsema_real_eip !232
  %2483 = inttoptr i64 %2482 to i8*, !mcsema_real_eip !232
  %2484 = load i8, i8* %2483, !mcsema_real_eip !232
  %2485 = sext i8 %2484 to i32, !mcsema_real_eip !232
  %2486 = zext i32 %2485 to i64, !mcsema_real_eip !232
  store volatile i64 %2486, i64* %EDX_write, !mcsema_real_eip !232
  store volatile i64 947, i64* %EIP_write, !mcsema_real_eip !233
  %2487 = load i64, i64* %RBP_read, !mcsema_real_eip !233
  %2488 = add i64 %2487, -16, !mcsema_real_eip !233
  %2489 = inttoptr i64 %2488 to i64*, !mcsema_real_eip !233
  %2490 = load i64, i64* %2489, !mcsema_real_eip !233
  store volatile i64 %2490, i64* %RCX_write, !mcsema_real_eip !233
  store volatile i64 951, i64* %EIP_write, !mcsema_real_eip !234
  %2491 = load i64, i64* %RCX_read, !mcsema_real_eip !234
  %2492 = add i64 %2491, 30, !mcsema_real_eip !234
  %2493 = inttoptr i64 %2492 to i64*, !mcsema_real_eip !234
  %2494 = ptrtoint i64* %2493 to i64, !mcsema_real_eip !234
  %2495 = inttoptr i64 %2494 to i8*, !mcsema_real_eip !234
  %2496 = load i8, i8* %2495, !mcsema_real_eip !234
  %2497 = sext i8 %2496 to i32, !mcsema_real_eip !234
  %2498 = zext i32 %2497 to i64, !mcsema_real_eip !234
  store volatile i64 %2498, i64* %ESI_write, !mcsema_real_eip !234
  store volatile i64 955, i64* %EIP_write, !mcsema_real_eip !235
  %2499 = load i32, i32* %EDX_read, !mcsema_real_eip !235
  %2500 = load i32, i32* %ESI_read, !mcsema_real_eip !235
  %2501 = sub i32 %2499, %2500, !mcsema_real_eip !235
  %2502 = xor i32 %2501, %2499, !mcsema_real_eip !235
  %2503 = xor i32 %2502, %2500, !mcsema_real_eip !235
  %2504 = and i32 %2503, 16, !mcsema_real_eip !235
  %2505 = icmp ne i32 %2504, 0, !mcsema_real_eip !235
  %2506 = zext i1 %2505 to i8, !mcsema_real_eip !235
  store volatile i8 %2506, i8* %AF_write, !mcsema_real_eip !235
  %2507 = trunc i32 %2501 to i8, !mcsema_real_eip !235
  %2508 = call i8 @llvm.ctpop.i8(i8 %2507), !mcsema_real_eip !235
  %2509 = trunc i8 %2508 to i1, !mcsema_real_eip !235
  %2510 = zext i1 %2509 to i8, !mcsema_real_eip !235
  %2511 = xor i8 %2510, 1, !mcsema_real_eip !235
  %2512 = trunc i8 %2511 to i1, !mcsema_real_eip !235
  %2513 = zext i1 %2512 to i8, !mcsema_real_eip !235
  store volatile i8 %2513, i8* %PF_write, !mcsema_real_eip !235
  %2514 = icmp eq i32 %2501, 0, !mcsema_real_eip !235
  %2515 = zext i1 %2514 to i8, !mcsema_real_eip !235
  store volatile i8 %2515, i8* %ZF_write, !mcsema_real_eip !235
  %2516 = lshr i32 %2501, 31, !mcsema_real_eip !235
  %2517 = trunc i32 %2516 to i1, !mcsema_real_eip !235
  %2518 = zext i1 %2517 to i8, !mcsema_real_eip !235
  %2519 = trunc i8 %2518 to i1, !mcsema_real_eip !235
  %2520 = zext i1 %2519 to i8, !mcsema_real_eip !235
  store volatile i8 %2520, i8* %SF_write, !mcsema_real_eip !235
  %2521 = icmp ult i32 %2499, %2500, !mcsema_real_eip !235
  %2522 = zext i1 %2521 to i8, !mcsema_real_eip !235
  store volatile i8 %2522, i8* %CF_write, !mcsema_real_eip !235
  %2523 = xor i32 %2499, %2500, !mcsema_real_eip !235
  %2524 = xor i32 %2499, %2501, !mcsema_real_eip !235
  %2525 = and i32 %2523, %2524, !mcsema_real_eip !235
  %2526 = lshr i32 %2525, 31, !mcsema_real_eip !235
  %2527 = trunc i32 %2526 to i1, !mcsema_real_eip !235
  %2528 = zext i1 %2527 to i8, !mcsema_real_eip !235
  %2529 = trunc i8 %2528 to i1, !mcsema_real_eip !235
  %2530 = zext i1 %2529 to i8, !mcsema_real_eip !235
  store volatile i8 %2530, i8* %OF_write, !mcsema_real_eip !235
  %2531 = zext i32 %2501 to i64, !mcsema_real_eip !235
  store volatile i64 %2531, i64* %EDX_write, !mcsema_real_eip !235
  store volatile i64 957, i64* %EIP_write, !mcsema_real_eip !236
  %2532 = load i32, i32* %EAX_read, !mcsema_real_eip !236
  %2533 = load i32, i32* %EDX_read, !mcsema_real_eip !236
  %2534 = sub i32 %2532, %2533, !mcsema_real_eip !236
  %2535 = xor i32 %2534, %2532, !mcsema_real_eip !236
  %2536 = xor i32 %2535, %2533, !mcsema_real_eip !236
  %2537 = and i32 %2536, 16, !mcsema_real_eip !236
  %2538 = icmp ne i32 %2537, 0, !mcsema_real_eip !236
  %2539 = zext i1 %2538 to i8, !mcsema_real_eip !236
  store volatile i8 %2539, i8* %AF_write, !mcsema_real_eip !236
  %2540 = trunc i32 %2534 to i8, !mcsema_real_eip !236
  %2541 = call i8 @llvm.ctpop.i8(i8 %2540), !mcsema_real_eip !236
  %2542 = trunc i8 %2541 to i1, !mcsema_real_eip !236
  %2543 = zext i1 %2542 to i8, !mcsema_real_eip !236
  %2544 = xor i8 %2543, 1, !mcsema_real_eip !236
  %2545 = trunc i8 %2544 to i1, !mcsema_real_eip !236
  %2546 = zext i1 %2545 to i8, !mcsema_real_eip !236
  store volatile i8 %2546, i8* %PF_write, !mcsema_real_eip !236
  %2547 = icmp eq i32 %2534, 0, !mcsema_real_eip !236
  %2548 = zext i1 %2547 to i8, !mcsema_real_eip !236
  store volatile i8 %2548, i8* %ZF_write, !mcsema_real_eip !236
  %2549 = lshr i32 %2534, 31, !mcsema_real_eip !236
  %2550 = trunc i32 %2549 to i1, !mcsema_real_eip !236
  %2551 = zext i1 %2550 to i8, !mcsema_real_eip !236
  %2552 = trunc i8 %2551 to i1, !mcsema_real_eip !236
  %2553 = zext i1 %2552 to i8, !mcsema_real_eip !236
  store volatile i8 %2553, i8* %SF_write, !mcsema_real_eip !236
  %2554 = icmp ult i32 %2532, %2533, !mcsema_real_eip !236
  %2555 = zext i1 %2554 to i8, !mcsema_real_eip !236
  store volatile i8 %2555, i8* %CF_write, !mcsema_real_eip !236
  %2556 = xor i32 %2532, %2533, !mcsema_real_eip !236
  %2557 = xor i32 %2532, %2534, !mcsema_real_eip !236
  %2558 = and i32 %2556, %2557, !mcsema_real_eip !236
  %2559 = lshr i32 %2558, 31, !mcsema_real_eip !236
  %2560 = trunc i32 %2559 to i1, !mcsema_real_eip !236
  %2561 = zext i1 %2560 to i8, !mcsema_real_eip !236
  %2562 = trunc i8 %2561 to i1, !mcsema_real_eip !236
  %2563 = zext i1 %2562 to i8, !mcsema_real_eip !236
  store volatile i8 %2563, i8* %OF_write, !mcsema_real_eip !236
  %2564 = zext i32 %2534 to i64, !mcsema_real_eip !236
  store volatile i64 %2564, i64* %EAX_write, !mcsema_real_eip !236
  store volatile i64 959, i64* %EIP_write, !mcsema_real_eip !237
  %2565 = load i64, i64* %RBP_read, !mcsema_real_eip !237
  %2566 = add i64 %2565, -20, !mcsema_real_eip !237
  %2567 = inttoptr i64 %2566 to i64*, !mcsema_real_eip !237
  %2568 = ptrtoint i64* %2567 to i64, !mcsema_real_eip !237
  %2569 = inttoptr i64 %2568 to i32*, !mcsema_real_eip !237
  %2570 = load i32, i32* %2569, !mcsema_real_eip !237
  %2571 = load i32, i32* %EAX_read, !mcsema_real_eip !237
  %2572 = add i32 %2571, %2570, !mcsema_real_eip !237
  %2573 = xor i32 %2572, %2570, !mcsema_real_eip !237
  %2574 = xor i32 %2573, %2571, !mcsema_real_eip !237
  %2575 = and i32 %2574, 16, !mcsema_real_eip !237
  %2576 = icmp ne i32 %2575, 0, !mcsema_real_eip !237
  %2577 = zext i1 %2576 to i8, !mcsema_real_eip !237
  store volatile i8 %2577, i8* %AF_write, !mcsema_real_eip !237
  %2578 = lshr i32 %2572, 31, !mcsema_real_eip !237
  %2579 = trunc i32 %2578 to i1, !mcsema_real_eip !237
  %2580 = zext i1 %2579 to i8, !mcsema_real_eip !237
  %2581 = trunc i8 %2580 to i1, !mcsema_real_eip !237
  %2582 = zext i1 %2581 to i8, !mcsema_real_eip !237
  store volatile i8 %2582, i8* %SF_write, !mcsema_real_eip !237
  %2583 = icmp eq i32 %2572, 0, !mcsema_real_eip !237
  %2584 = zext i1 %2583 to i8, !mcsema_real_eip !237
  store volatile i8 %2584, i8* %ZF_write, !mcsema_real_eip !237
  %2585 = xor i32 %2570, %2571, !mcsema_real_eip !237
  %2586 = xor i32 %2585, -1, !mcsema_real_eip !237
  %2587 = xor i32 %2570, %2572, !mcsema_real_eip !237
  %2588 = and i32 %2586, %2587, !mcsema_real_eip !237
  %2589 = lshr i32 %2588, 31, !mcsema_real_eip !237
  %2590 = and i32 %2589, 1, !mcsema_real_eip !237
  %2591 = trunc i32 %2590 to i1, !mcsema_real_eip !237
  %2592 = zext i1 %2591 to i8, !mcsema_real_eip !237
  %2593 = trunc i8 %2592 to i1, !mcsema_real_eip !237
  %2594 = zext i1 %2593 to i8, !mcsema_real_eip !237
  store volatile i8 %2594, i8* %OF_write, !mcsema_real_eip !237
  %2595 = trunc i32 %2572 to i8, !mcsema_real_eip !237
  %2596 = call i8 @llvm.ctpop.i8(i8 %2595), !mcsema_real_eip !237
  %2597 = trunc i8 %2596 to i1, !mcsema_real_eip !237
  %2598 = zext i1 %2597 to i8, !mcsema_real_eip !237
  %2599 = xor i8 %2598, 1, !mcsema_real_eip !237
  %2600 = trunc i8 %2599 to i1, !mcsema_real_eip !237
  %2601 = zext i1 %2600 to i8, !mcsema_real_eip !237
  store volatile i8 %2601, i8* %PF_write, !mcsema_real_eip !237
  %2602 = icmp ult i32 %2572, %2570, !mcsema_real_eip !237
  %2603 = zext i1 %2602 to i8, !mcsema_real_eip !237
  store volatile i8 %2603, i8* %CF_write, !mcsema_real_eip !237
  %2604 = zext i32 %2572 to i64, !mcsema_real_eip !237
  store volatile i64 %2604, i64* %EAX_write, !mcsema_real_eip !237
  store volatile i64 962, i64* %EIP_write, !mcsema_real_eip !238
  %2605 = load i64, i64* %RBP_read, !mcsema_real_eip !238
  %2606 = add i64 %2605, -20, !mcsema_real_eip !238
  %2607 = inttoptr i64 %2606 to i64*, !mcsema_real_eip !238
  %2608 = load i32, i32* %EAX_read, !mcsema_real_eip !238
  %2609 = ptrtoint i64* %2607 to i64, !mcsema_real_eip !238
  %2610 = inttoptr i64 %2609 to i32*, !mcsema_real_eip !238
  store i32 %2608, i32* %2610, !mcsema_real_eip !238
  store volatile i64 965, i64* %EIP_write, !mcsema_real_eip !239
  %2611 = load i64, i64* %RBP_read, !mcsema_real_eip !239
  %2612 = add i64 %2611, -16, !mcsema_real_eip !239
  %2613 = inttoptr i64 %2612 to i64*, !mcsema_real_eip !239
  %2614 = load i64, i64* %2613, !mcsema_real_eip !239
  store volatile i64 %2614, i64* %RCX_write, !mcsema_real_eip !239
  store volatile i64 969, i64* %EIP_write, !mcsema_real_eip !240
  %2615 = load i64, i64* %RCX_read, !mcsema_real_eip !240
  %2616 = add i64 %2615, 28, !mcsema_real_eip !240
  %2617 = inttoptr i64 %2616 to i64*, !mcsema_real_eip !240
  %2618 = ptrtoint i64* %2617 to i64, !mcsema_real_eip !240
  %2619 = inttoptr i64 %2618 to i8*, !mcsema_real_eip !240
  %2620 = load i8, i8* %2619, !mcsema_real_eip !240
  %2621 = zext i8 %2620 to i32, !mcsema_real_eip !240
  %2622 = zext i32 %2621 to i64, !mcsema_real_eip !240
  store volatile i64 %2622, i64* %EDI_write, !mcsema_real_eip !240
  store volatile i64 973, i64* %EIP_write, !mcsema_real_eip !241
  %2623 = load i64, i64* %RDI_read, !mcsema_real_eip !241
  %2624 = load i64, i64* %RSP_read, !mcsema_real_eip !241
  %2625 = sub i64 %2624, 8, !mcsema_real_eip !241
  %2626 = inttoptr i64 %2625 to i64*, !mcsema_real_eip !241
  store i64 -2415393069852865332, i64* %2626, !mcsema_real_eip !241
  store volatile i64 %2625, i64* %RSP_write, !mcsema_real_eip !241
  %2627 = call x86_64_sysvcc i64 @_to_byte(i64 %2623), !mcsema_real_eip !241
  store volatile i64 %2627, i64* %RAX_write, !mcsema_real_eip !241
  store volatile i64 978, i64* %EIP_write, !mcsema_real_eip !242
  %2628 = load i64, i64* %RBP_read, !mcsema_real_eip !242
  %2629 = add i64 %2628, -20, !mcsema_real_eip !242
  %2630 = inttoptr i64 %2629 to i64*, !mcsema_real_eip !242
  %2631 = ptrtoint i64* %2630 to i64, !mcsema_real_eip !242
  %2632 = inttoptr i64 %2631 to i32*, !mcsema_real_eip !242
  %2633 = load i32, i32* %2632, !mcsema_real_eip !242
  %2634 = zext i32 %2633 to i64, !mcsema_real_eip !242
  store volatile i64 %2634, i64* %EDX_write, !mcsema_real_eip !242
  store volatile i64 981, i64* %EIP_write, !mcsema_real_eip !243
  %2635 = load i32, i32* %EDX_read, !mcsema_real_eip !243
  %2636 = load i32, i32* %EAX_read, !mcsema_real_eip !243
  %2637 = sub i32 %2635, %2636, !mcsema_real_eip !243
  %2638 = xor i32 %2637, %2635, !mcsema_real_eip !243
  %2639 = xor i32 %2638, %2636, !mcsema_real_eip !243
  %2640 = and i32 %2639, 16, !mcsema_real_eip !243
  %2641 = icmp ne i32 %2640, 0, !mcsema_real_eip !243
  %2642 = zext i1 %2641 to i8, !mcsema_real_eip !243
  store volatile i8 %2642, i8* %AF_write, !mcsema_real_eip !243
  %2643 = trunc i32 %2637 to i8, !mcsema_real_eip !243
  %2644 = call i8 @llvm.ctpop.i8(i8 %2643), !mcsema_real_eip !243
  %2645 = trunc i8 %2644 to i1, !mcsema_real_eip !243
  %2646 = zext i1 %2645 to i8, !mcsema_real_eip !243
  %2647 = xor i8 %2646, 1, !mcsema_real_eip !243
  %2648 = trunc i8 %2647 to i1, !mcsema_real_eip !243
  %2649 = zext i1 %2648 to i8, !mcsema_real_eip !243
  store volatile i8 %2649, i8* %PF_write, !mcsema_real_eip !243
  %2650 = icmp eq i32 %2637, 0, !mcsema_real_eip !243
  %2651 = zext i1 %2650 to i8, !mcsema_real_eip !243
  store volatile i8 %2651, i8* %ZF_write, !mcsema_real_eip !243
  %2652 = lshr i32 %2637, 31, !mcsema_real_eip !243
  %2653 = trunc i32 %2652 to i1, !mcsema_real_eip !243
  %2654 = zext i1 %2653 to i8, !mcsema_real_eip !243
  %2655 = trunc i8 %2654 to i1, !mcsema_real_eip !243
  %2656 = zext i1 %2655 to i8, !mcsema_real_eip !243
  store volatile i8 %2656, i8* %SF_write, !mcsema_real_eip !243
  %2657 = icmp ult i32 %2635, %2636, !mcsema_real_eip !243
  %2658 = zext i1 %2657 to i8, !mcsema_real_eip !243
  store volatile i8 %2658, i8* %CF_write, !mcsema_real_eip !243
  %2659 = xor i32 %2635, %2636, !mcsema_real_eip !243
  %2660 = xor i32 %2635, %2637, !mcsema_real_eip !243
  %2661 = and i32 %2659, %2660, !mcsema_real_eip !243
  %2662 = lshr i32 %2661, 31, !mcsema_real_eip !243
  %2663 = trunc i32 %2662 to i1, !mcsema_real_eip !243
  %2664 = zext i1 %2663 to i8, !mcsema_real_eip !243
  %2665 = trunc i8 %2664 to i1, !mcsema_real_eip !243
  %2666 = zext i1 %2665 to i8, !mcsema_real_eip !243
  store volatile i8 %2666, i8* %OF_write, !mcsema_real_eip !243
  %2667 = zext i32 %2637 to i64, !mcsema_real_eip !243
  store volatile i64 %2667, i64* %EDX_write, !mcsema_real_eip !243
  store volatile i64 983, i64* %EIP_write, !mcsema_real_eip !244
  %2668 = load i64, i64* %RBP_read, !mcsema_real_eip !244
  %2669 = add i64 %2668, -20, !mcsema_real_eip !244
  %2670 = inttoptr i64 %2669 to i64*, !mcsema_real_eip !244
  %2671 = load i32, i32* %EDX_read, !mcsema_real_eip !244
  %2672 = ptrtoint i64* %2670 to i64, !mcsema_real_eip !244
  %2673 = inttoptr i64 %2672 to i32*, !mcsema_real_eip !244
  store i32 %2671, i32* %2673, !mcsema_real_eip !244
  store volatile i64 986, i64* %EIP_write, !mcsema_real_eip !245
  %2674 = load i64, i64* %RBP_read, !mcsema_real_eip !245
  %2675 = add i64 %2674, -20, !mcsema_real_eip !245
  %2676 = inttoptr i64 %2675 to i64*, !mcsema_real_eip !245
  %2677 = ptrtoint i64* %2676 to i64, !mcsema_real_eip !245
  %2678 = inttoptr i64 %2677 to i32*, !mcsema_real_eip !245
  %2679 = load i32, i32* %2678, !mcsema_real_eip !245
  %2680 = sub i32 %2679, 0, !mcsema_real_eip !245
  %2681 = xor i32 %2680, %2679, !mcsema_real_eip !245
  %2682 = xor i32 %2681, 0, !mcsema_real_eip !245
  %2683 = and i32 %2682, 16, !mcsema_real_eip !245
  %2684 = icmp ne i32 %2683, 0, !mcsema_real_eip !245
  %2685 = zext i1 %2684 to i8, !mcsema_real_eip !245
  store volatile i8 %2685, i8* %AF_write, !mcsema_real_eip !245
  %2686 = trunc i32 %2680 to i8, !mcsema_real_eip !245
  %2687 = call i8 @llvm.ctpop.i8(i8 %2686), !mcsema_real_eip !245
  %2688 = trunc i8 %2687 to i1, !mcsema_real_eip !245
  %2689 = zext i1 %2688 to i8, !mcsema_real_eip !245
  %2690 = xor i8 %2689, 1, !mcsema_real_eip !245
  %2691 = trunc i8 %2690 to i1, !mcsema_real_eip !245
  %2692 = zext i1 %2691 to i8, !mcsema_real_eip !245
  store volatile i8 %2692, i8* %PF_write, !mcsema_real_eip !245
  %2693 = icmp eq i32 %2680, 0, !mcsema_real_eip !245
  %2694 = zext i1 %2693 to i8, !mcsema_real_eip !245
  store volatile i8 %2694, i8* %ZF_write, !mcsema_real_eip !245
  %2695 = lshr i32 %2680, 31, !mcsema_real_eip !245
  %2696 = trunc i32 %2695 to i1, !mcsema_real_eip !245
  %2697 = zext i1 %2696 to i8, !mcsema_real_eip !245
  %2698 = trunc i8 %2697 to i1, !mcsema_real_eip !245
  %2699 = zext i1 %2698 to i8, !mcsema_real_eip !245
  store volatile i8 %2699, i8* %SF_write, !mcsema_real_eip !245
  %2700 = icmp ult i32 %2679, 0, !mcsema_real_eip !245
  %2701 = zext i1 %2700 to i8, !mcsema_real_eip !245
  store volatile i8 %2701, i8* %CF_write, !mcsema_real_eip !245
  %2702 = xor i32 %2679, 0, !mcsema_real_eip !245
  %2703 = xor i32 %2679, %2680, !mcsema_real_eip !245
  %2704 = and i32 %2702, %2703, !mcsema_real_eip !245
  %2705 = lshr i32 %2704, 31, !mcsema_real_eip !245
  %2706 = trunc i32 %2705 to i1, !mcsema_real_eip !245
  %2707 = zext i1 %2706 to i8, !mcsema_real_eip !245
  %2708 = trunc i8 %2707 to i1, !mcsema_real_eip !245
  %2709 = zext i1 %2708 to i8, !mcsema_real_eip !245
  store volatile i8 %2709, i8* %OF_write, !mcsema_real_eip !245
  store volatile i64 990, i64* %EIP_write, !mcsema_real_eip !246
  %2710 = load i8, i8* %ZF_read, !mcsema_real_eip !246
  %2711 = trunc i8 %2710 to i1, !mcsema_real_eip !246
  %2712 = icmp eq i1 %2711, false, !mcsema_real_eip !246
  br i1 %2712, label %block_401, label %block_3e4, !mcsema_real_eip !246

block_3e4:                                        ; preds = %block_3a6
  store volatile i64 996, i64* %EIP_write, !mcsema_real_eip !247
  %2713 = load i64, i64* %RBP_read, !mcsema_real_eip !247
  %2714 = add i64 %2713, -16, !mcsema_real_eip !247
  %2715 = inttoptr i64 %2714 to i64*, !mcsema_real_eip !247
  %2716 = load i64, i64* %2715, !mcsema_real_eip !247
  store volatile i64 %2716, i64* %RAX_write, !mcsema_real_eip !247
  store volatile i64 1000, i64* %EIP_write, !mcsema_real_eip !248
  %2717 = load i64, i64* %RAX_read, !mcsema_real_eip !248
  %2718 = add i64 %2717, 31, !mcsema_real_eip !248
  %2719 = inttoptr i64 %2718 to i64*, !mcsema_real_eip !248
  %2720 = ptrtoint i64* %2719 to i64, !mcsema_real_eip !248
  %2721 = inttoptr i64 %2720 to i8*, !mcsema_real_eip !248
  %2722 = load i8, i8* %2721, !mcsema_real_eip !248
  %2723 = zext i8 %2722 to i32, !mcsema_real_eip !248
  %2724 = zext i32 %2723 to i64, !mcsema_real_eip !248
  store volatile i64 %2724, i64* %EDI_write, !mcsema_real_eip !248
  store volatile i64 1004, i64* %EIP_write, !mcsema_real_eip !249
  %2725 = load i64, i64* %RDI_read, !mcsema_real_eip !249
  %2726 = load i64, i64* %RSP_read, !mcsema_real_eip !249
  %2727 = sub i64 %2726, 8, !mcsema_real_eip !249
  %2728 = inttoptr i64 %2727 to i64*, !mcsema_real_eip !249
  store i64 -2415393069852865332, i64* %2728, !mcsema_real_eip !249
  store volatile i64 %2727, i64* %RSP_write, !mcsema_real_eip !249
  %2729 = call x86_64_sysvcc i64 @_to_byte(i64 %2725), !mcsema_real_eip !249
  store volatile i64 %2729, i64* %RAX_write, !mcsema_real_eip !249
  store volatile i64 1009, i64* %EIP_write, !mcsema_real_eip !250
  %2730 = load i32, i32* %EAX_read, !mcsema_real_eip !250
  %2731 = sub i32 %2730, 4, !mcsema_real_eip !250
  %2732 = xor i32 %2731, %2730, !mcsema_real_eip !250
  %2733 = xor i32 %2732, 4, !mcsema_real_eip !250
  %2734 = and i32 %2733, 16, !mcsema_real_eip !250
  %2735 = icmp ne i32 %2734, 0, !mcsema_real_eip !250
  %2736 = zext i1 %2735 to i8, !mcsema_real_eip !250
  store volatile i8 %2736, i8* %AF_write, !mcsema_real_eip !250
  %2737 = trunc i32 %2731 to i8, !mcsema_real_eip !250
  %2738 = call i8 @llvm.ctpop.i8(i8 %2737), !mcsema_real_eip !250
  %2739 = trunc i8 %2738 to i1, !mcsema_real_eip !250
  %2740 = zext i1 %2739 to i8, !mcsema_real_eip !250
  %2741 = xor i8 %2740, 1, !mcsema_real_eip !250
  %2742 = trunc i8 %2741 to i1, !mcsema_real_eip !250
  %2743 = zext i1 %2742 to i8, !mcsema_real_eip !250
  store volatile i8 %2743, i8* %PF_write, !mcsema_real_eip !250
  %2744 = icmp eq i32 %2731, 0, !mcsema_real_eip !250
  %2745 = zext i1 %2744 to i8, !mcsema_real_eip !250
  store volatile i8 %2745, i8* %ZF_write, !mcsema_real_eip !250
  %2746 = lshr i32 %2731, 31, !mcsema_real_eip !250
  %2747 = trunc i32 %2746 to i1, !mcsema_real_eip !250
  %2748 = zext i1 %2747 to i8, !mcsema_real_eip !250
  %2749 = trunc i8 %2748 to i1, !mcsema_real_eip !250
  %2750 = zext i1 %2749 to i8, !mcsema_real_eip !250
  store volatile i8 %2750, i8* %SF_write, !mcsema_real_eip !250
  %2751 = icmp ult i32 %2730, 4, !mcsema_real_eip !250
  %2752 = zext i1 %2751 to i8, !mcsema_real_eip !250
  store volatile i8 %2752, i8* %CF_write, !mcsema_real_eip !250
  %2753 = xor i32 %2730, 4, !mcsema_real_eip !250
  %2754 = xor i32 %2730, %2731, !mcsema_real_eip !250
  %2755 = and i32 %2753, %2754, !mcsema_real_eip !250
  %2756 = lshr i32 %2755, 31, !mcsema_real_eip !250
  %2757 = trunc i32 %2756 to i1, !mcsema_real_eip !250
  %2758 = zext i1 %2757 to i8, !mcsema_real_eip !250
  %2759 = trunc i8 %2758 to i1, !mcsema_real_eip !250
  %2760 = zext i1 %2759 to i8, !mcsema_real_eip !250
  store volatile i8 %2760, i8* %OF_write, !mcsema_real_eip !250
  store volatile i64 1012, i64* %EIP_write, !mcsema_real_eip !251
  %2761 = load i8, i8* %ZF_read, !mcsema_real_eip !251
  %2762 = trunc i8 %2761 to i1, !mcsema_real_eip !251
  %2763 = icmp eq i1 %2762, true, !mcsema_real_eip !251
  br i1 %2763, label %block_401, label %block_3fa, !mcsema_real_eip !251

block_3fa:                                        ; preds = %block_3e4
  store volatile i64 1018, i64* %EIP_write, !mcsema_real_eip !252
  %2764 = load i64, i64* %RBP_read, !mcsema_real_eip !252
  %2765 = add i64 %2764, -20, !mcsema_real_eip !252
  %2766 = inttoptr i64 %2765 to i64*, !mcsema_real_eip !252
  %2767 = ptrtoint i64* %2766 to i64, !mcsema_real_eip !252
  %2768 = inttoptr i64 %2767 to i32*, !mcsema_real_eip !252
  store i32 -32, i32* %2768, !mcsema_real_eip !252
  br label %block_401, !mcsema_real_eip !253

block_401:                                        ; preds = %block_3fa, %block_3e4, %block_3a6
  store volatile i64 1025, i64* %EIP_write, !mcsema_real_eip !253
  br label %block_40c, !mcsema_real_eip !253

block_406:                                        ; preds = %block_38e
  store volatile i64 1030, i64* %EIP_write, !mcsema_real_eip !254
  %2769 = load i64, i64* %RBP_read, !mcsema_real_eip !254
  %2770 = add i64 %2769, -64, !mcsema_real_eip !254
  %2771 = inttoptr i64 %2770 to i64*, !mcsema_real_eip !254
  %2772 = ptrtoint i64* %2771 to i64, !mcsema_real_eip !254
  %2773 = inttoptr i64 %2772 to i32*, !mcsema_real_eip !254
  %2774 = load i32, i32* %2773, !mcsema_real_eip !254
  %2775 = zext i32 %2774 to i64, !mcsema_real_eip !254
  store volatile i64 %2775, i64* %EAX_write, !mcsema_real_eip !254
  store volatile i64 1033, i64* %EIP_write, !mcsema_real_eip !255
  %2776 = load i64, i64* %RBP_read, !mcsema_real_eip !255
  %2777 = add i64 %2776, -20, !mcsema_real_eip !255
  %2778 = inttoptr i64 %2777 to i64*, !mcsema_real_eip !255
  %2779 = load i32, i32* %EAX_read, !mcsema_real_eip !255
  %2780 = ptrtoint i64* %2778 to i64, !mcsema_real_eip !255
  %2781 = inttoptr i64 %2780 to i32*, !mcsema_real_eip !255
  store i32 %2779, i32* %2781, !mcsema_real_eip !255
  br label %block_40c, !mcsema_real_eip !256

block_40c:                                        ; preds = %block_406, %block_401
  store volatile i64 1036, i64* %EIP_write, !mcsema_real_eip !256
  br label %block_411, !mcsema_real_eip !256

block_411:                                        ; preds = %block_40c, %block_380
  store volatile i64 1041, i64* %EIP_write, !mcsema_real_eip !257
  %2782 = load i64, i64* %RBP_read, !mcsema_real_eip !257
  %2783 = add i64 %2782, -20, !mcsema_real_eip !257
  %2784 = inttoptr i64 %2783 to i64*, !mcsema_real_eip !257
  %2785 = ptrtoint i64* %2784 to i64, !mcsema_real_eip !257
  %2786 = inttoptr i64 %2785 to i32*, !mcsema_real_eip !257
  %2787 = load i32, i32* %2786, !mcsema_real_eip !257
  %2788 = zext i32 %2787 to i64, !mcsema_real_eip !257
  store volatile i64 %2788, i64* %EAX_write, !mcsema_real_eip !257
  store volatile i64 1044, i64* %EIP_write, !mcsema_real_eip !258
  %2789 = load i64, i64* %RBP_read, !mcsema_real_eip !258
  %2790 = add i64 %2789, -4, !mcsema_real_eip !258
  %2791 = inttoptr i64 %2790 to i64*, !mcsema_real_eip !258
  %2792 = load i32, i32* %EAX_read, !mcsema_real_eip !258
  %2793 = ptrtoint i64* %2791 to i64, !mcsema_real_eip !258
  %2794 = inttoptr i64 %2793 to i32*, !mcsema_real_eip !258
  store i32 %2792, i32* %2794, !mcsema_real_eip !258
  br label %block_417, !mcsema_real_eip !259

block_417:                                        ; preds = %block_411, %block_338, %block_2ea, %block_2c6, %block_1cc, %block_10e, %block_cb, %block_98, %block_6d, %block_4b, %block_24
  store volatile i64 1047, i64* %EIP_write, !mcsema_real_eip !259
  %2795 = load i64, i64* %RBP_read, !mcsema_real_eip !259
  %2796 = add i64 %2795, -4, !mcsema_real_eip !259
  %2797 = inttoptr i64 %2796 to i64*, !mcsema_real_eip !259
  %2798 = ptrtoint i64* %2797 to i64, !mcsema_real_eip !259
  %2799 = inttoptr i64 %2798 to i32*, !mcsema_real_eip !259
  %2800 = load i32, i32* %2799, !mcsema_real_eip !259
  %2801 = zext i32 %2800 to i64, !mcsema_real_eip !259
  store volatile i64 %2801, i64* %EAX_write, !mcsema_real_eip !259
  store volatile i64 1050, i64* %EIP_write, !mcsema_real_eip !260
  %2802 = load i64, i64* %RSP_read, !mcsema_real_eip !260
  %2803 = add i64 80, %2802, !mcsema_real_eip !260
  %2804 = xor i64 %2803, %2802, !mcsema_real_eip !260
  %2805 = xor i64 %2804, 80, !mcsema_real_eip !260
  %2806 = and i64 %2805, 16, !mcsema_real_eip !260
  %2807 = icmp ne i64 %2806, 0, !mcsema_real_eip !260
  %2808 = zext i1 %2807 to i8, !mcsema_real_eip !260
  store volatile i8 %2808, i8* %AF_write, !mcsema_real_eip !260
  %2809 = lshr i64 %2803, 63, !mcsema_real_eip !260
  %2810 = trunc i64 %2809 to i1, !mcsema_real_eip !260
  %2811 = zext i1 %2810 to i8, !mcsema_real_eip !260
  %2812 = trunc i8 %2811 to i1, !mcsema_real_eip !260
  %2813 = zext i1 %2812 to i8, !mcsema_real_eip !260
  store volatile i8 %2813, i8* %SF_write, !mcsema_real_eip !260
  %2814 = icmp eq i64 %2803, 0, !mcsema_real_eip !260
  %2815 = zext i1 %2814 to i8, !mcsema_real_eip !260
  store volatile i8 %2815, i8* %ZF_write, !mcsema_real_eip !260
  %2816 = xor i64 %2802, 80, !mcsema_real_eip !260
  %2817 = xor i64 %2816, -1, !mcsema_real_eip !260
  %2818 = xor i64 %2802, %2803, !mcsema_real_eip !260
  %2819 = and i64 %2817, %2818, !mcsema_real_eip !260
  %2820 = lshr i64 %2819, 63, !mcsema_real_eip !260
  %2821 = and i64 %2820, 1, !mcsema_real_eip !260
  %2822 = trunc i64 %2821 to i1, !mcsema_real_eip !260
  %2823 = zext i1 %2822 to i8, !mcsema_real_eip !260
  %2824 = trunc i8 %2823 to i1, !mcsema_real_eip !260
  %2825 = zext i1 %2824 to i8, !mcsema_real_eip !260
  store volatile i8 %2825, i8* %OF_write, !mcsema_real_eip !260
  %2826 = trunc i64 %2803 to i8, !mcsema_real_eip !260
  %2827 = call i8 @llvm.ctpop.i8(i8 %2826), !mcsema_real_eip !260
  %2828 = trunc i8 %2827 to i1, !mcsema_real_eip !260
  %2829 = zext i1 %2828 to i8, !mcsema_real_eip !260
  %2830 = xor i8 %2829, 1, !mcsema_real_eip !260
  %2831 = trunc i8 %2830 to i1, !mcsema_real_eip !260
  %2832 = zext i1 %2831 to i8, !mcsema_real_eip !260
  store volatile i8 %2832, i8* %PF_write, !mcsema_real_eip !260
  %2833 = icmp ult i64 %2803, %2802, !mcsema_real_eip !260
  %2834 = zext i1 %2833 to i8, !mcsema_real_eip !260
  store volatile i8 %2834, i8* %CF_write, !mcsema_real_eip !260
  store volatile i64 %2803, i64* %RSP_write, !mcsema_real_eip !260
  store volatile i64 1054, i64* %EIP_write, !mcsema_real_eip !261
  %2835 = load i64, i64* %RSP_read, !mcsema_real_eip !261
  %2836 = inttoptr i64 %2835 to i64*, !mcsema_real_eip !261
  %2837 = load i64, i64* %2836, !mcsema_real_eip !261
  store volatile i64 %2837, i64* %RBP_write, !mcsema_real_eip !261
  %2838 = add i64 %2835, 8, !mcsema_real_eip !261
  store volatile i64 %2838, i64* %RSP_write, !mcsema_real_eip !261
  store volatile i64 1055, i64* %EIP_write, !mcsema_real_eip !262
  %2839 = load i64, i64* %RSP_read, !mcsema_real_eip !262
  %2840 = add i64 %2839, 8, !mcsema_real_eip !262
  %2841 = inttoptr i64 %2839 to i64*, !mcsema_real_eip !262
  %2842 = load i64, i64* %2841, !mcsema_real_eip !262
  store volatile i64 %2842, i64* %RIP_write, !mcsema_real_eip !262
  store volatile i64 %2840, i64* %RSP_write, !mcsema_real_eip !262
  ret void, !mcsema_real_eip !262
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @keycomp() #2

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
!7 = !{i64 23}
!8 = !{i64 26}
!9 = !{i64 30}
!10 = !{i64 36}
!11 = !{i64 39}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 51}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 66}
!19 = !{i64 69}
!20 = !{i64 75}
!21 = !{i64 82}
!22 = !{i64 87}
!23 = !{i64 91}
!24 = !{i64 95}
!25 = !{i64 100}
!26 = !{i64 103}
!27 = !{i64 109}
!28 = !{i64 116}
!29 = !{i64 121}
!30 = !{i64 125}
!31 = !{i64 129}
!32 = !{i64 134}
!33 = !{i64 137}
!34 = !{i64 140}
!35 = !{i64 143}
!36 = !{i64 146}
!37 = !{i64 152}
!38 = !{i64 159}
!39 = !{i64 164}
!40 = !{i64 168}
!41 = !{i64 172}
!42 = !{i64 177}
!43 = !{i64 182}
!44 = !{i64 185}
!45 = !{i64 188}
!46 = !{i64 191}
!47 = !{i64 192}
!48 = !{i64 194}
!49 = !{i64 197}
!50 = !{i64 203}
!51 = !{i64 210}
!52 = !{i64 215}
!53 = !{i64 219}
!54 = !{i64 223}
!55 = !{i64 226}
!56 = !{i64 229}
!57 = !{i64 235}
!58 = !{i64 239}
!59 = !{i64 243}
!60 = !{i64 249}
!61 = !{i64 252}
!62 = !{i64 258}
!63 = !{i64 265}
!64 = !{i64 270}
!65 = !{i64 277}
!66 = !{i64 282}
!67 = !{i64 286}
!68 = !{i64 290}
!69 = !{i64 293}
!70 = !{i64 295}
!71 = !{i64 298}
!72 = !{i64 302}
!73 = !{i64 306}
!74 = !{i64 312}
!75 = !{i64 314}
!76 = !{i64 317}
!77 = !{i64 321}
!78 = !{i64 324}
!79 = !{i64 330}
!80 = !{i64 334}
!81 = !{i64 337}
!82 = !{i64 343}
!83 = !{i64 346}
!84 = !{i64 349}
!85 = !{i64 352}
!86 = !{i64 357}
!87 = !{i64 360}
!88 = !{i64 363}
!89 = !{i64 366}
!90 = !{i64 370}
!91 = !{i64 374}
!92 = !{i64 379}
!93 = !{i64 381}
!94 = !{i64 384}
!95 = !{i64 388}
!96 = !{i64 392}
!97 = !{i64 397}
!98 = !{i64 401}
!99 = !{i64 403}
!100 = !{i64 406}
!101 = !{i64 409}
!102 = !{i64 413}
!103 = !{i64 416}
!104 = !{i64 419}
!105 = !{i64 425}
!106 = !{i64 428}
!107 = !{i64 431}
!108 = !{i64 434}
!109 = !{i64 439}
!110 = !{i64 442}
!111 = !{i64 445}
!112 = !{i64 447}
!113 = !{i64 450}
!114 = !{i64 454}
!115 = !{i64 460}
!116 = !{i64 467}
!117 = !{i64 472}
!118 = !{i64 474}
!119 = !{i64 479}
!120 = !{i64 483}
!121 = !{i64 487}
!122 = !{i64 490}
!123 = !{i64 495}
!124 = !{i64 498}
!125 = !{i64 502}
!126 = !{i64 506}
!127 = !{i64 511}
!128 = !{i64 516}
!129 = !{i64 522}
!130 = !{i64 526}
!131 = !{i64 531}
!132 = !{i64 536}
!133 = !{i64 542}
!134 = !{i64 549}
!135 = !{i64 554}
!136 = !{i64 561}
!137 = !{i64 563}
!138 = !{i64 568}
!139 = !{i64 572}
!140 = !{i64 576}
!141 = !{i64 579}
!142 = !{i64 584}
!143 = !{i64 587}
!144 = !{i64 590}
!145 = !{i64 595}
!146 = !{i64 598}
!147 = !{i64 601}
!148 = !{i64 604}
!149 = !{i64 607}
!150 = !{i64 610}
!151 = !{i64 615}
!152 = !{i64 618}
!153 = !{i64 622}
!154 = !{i64 628}
!155 = !{i64 631}
!156 = !{i64 634}
!157 = !{i64 640}
!158 = !{i64 647}
!159 = !{i64 652}
!160 = !{i64 659}
!161 = !{i64 664}
!162 = !{i64 667}
!163 = !{i64 671}
!164 = !{i64 675}
!165 = !{i64 678}
!166 = !{i64 683}
!167 = !{i64 686}
!168 = !{i64 689}
!169 = !{i64 692}
!170 = !{i64 695}
!171 = !{i64 698}
!172 = !{i64 701}
!173 = !{i64 704}
!174 = !{i64 710}
!175 = !{i64 717}
!176 = !{i64 722}
!177 = !{i64 725}
!178 = !{i64 730}
!179 = !{i64 733}
!180 = !{i64 740}
!181 = !{i64 746}
!182 = !{i64 753}
!183 = !{i64 758}
!184 = !{i64 763}
!185 = !{i64 766}
!186 = !{i64 772}
!187 = !{i64 775}
!188 = !{i64 778}
!189 = !{i64 781}
!190 = !{i64 784}
!191 = !{i64 787}
!192 = !{i64 793}
!193 = !{i64 796}
!194 = !{i64 799}
!195 = !{i64 802}
!196 = !{i64 804}
!197 = !{i64 806}
!198 = !{i64 809}
!199 = !{i64 811}
!200 = !{i64 814}
!201 = !{i64 818}
!202 = !{i64 824}
!203 = !{i64 827}
!204 = !{i64 830}
!205 = !{i64 835}
!206 = !{i64 840}
!207 = !{i64 843}
!208 = !{i64 847}
!209 = !{i64 851}
!210 = !{i64 854}
!211 = !{i64 859}
!212 = !{i64 862}
!213 = !{i64 866}
!214 = !{i64 870}
!215 = !{i64 873}
!216 = !{i64 879}
!217 = !{i64 883}
!218 = !{i64 887}
!219 = !{i64 890}
!220 = !{i64 896}
!221 = !{i64 899}
!222 = !{i64 902}
!223 = !{i64 905}
!224 = !{i64 910}
!225 = !{i64 914}
!226 = !{i64 918}
!227 = !{i64 922}
!228 = !{i64 926}
!229 = !{i64 928}
!230 = !{i64 934}
!231 = !{i64 939}
!232 = !{i64 943}
!233 = !{i64 947}
!234 = !{i64 951}
!235 = !{i64 955}
!236 = !{i64 957}
!237 = !{i64 959}
!238 = !{i64 962}
!239 = !{i64 965}
!240 = !{i64 969}
!241 = !{i64 973}
!242 = !{i64 978}
!243 = !{i64 981}
!244 = !{i64 983}
!245 = !{i64 986}
!246 = !{i64 990}
!247 = !{i64 996}
!248 = !{i64 1000}
!249 = !{i64 1004}
!250 = !{i64 1009}
!251 = !{i64 1012}
!252 = !{i64 1018}
!253 = !{i64 1025}
!254 = !{i64 1030}
!255 = !{i64 1033}
!256 = !{i64 1036}
!257 = !{i64 1041}
!258 = !{i64 1044}
!259 = !{i64 1047}
!260 = !{i64 1050}
!261 = !{i64 1054}
!262 = !{i64 1055}
