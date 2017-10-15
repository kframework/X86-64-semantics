; ModuleID = 'Output/test_23.clang.lifted.bc'
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
module asm "  .globl read;"
module asm "  .globl _read;"
module asm "  .type _read,@function"
module asm "_read:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read,0b-_read;"
module asm "  .cfi_endproc;"
module asm "  .globl exit;"
module asm "  .globl _exit;"
module asm "  .type _exit,@function"
module asm "_exit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq exit@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _exit,0b-_exit;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_b0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_b0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [77 x i8] }>
%1 = type <{ [95 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_350 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_39d = internal constant %1 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64
@data_400 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\A0\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %39 = add i64 %38, -4, !mcsema_real_eip !3
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !3
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !3
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !3
  store i32 0, i32* %42, !mcsema_real_eip !3
  br label %block_f, !mcsema_real_eip !4

block_f:                                          ; preds = %block_69, %block_0
  store volatile i64 15, i64* %EIP_write, !mcsema_real_eip !4
  %43 = load i64, i64* %RBP_read, !mcsema_real_eip !4
  %44 = add i64 %43, -4, !mcsema_real_eip !4
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !4
  %46 = ptrtoint i64* %45 to i64, !mcsema_real_eip !4
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !4
  %48 = load i32, i32* %47, !mcsema_real_eip !4
  %49 = sub i32 %48, 7, !mcsema_real_eip !4
  %50 = xor i32 %49, %48, !mcsema_real_eip !4
  %51 = xor i32 %50, 7, !mcsema_real_eip !4
  %52 = and i32 %51, 16, !mcsema_real_eip !4
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !4
  %54 = zext i1 %53 to i8, !mcsema_real_eip !4
  store volatile i8 %54, i8* %AF_write, !mcsema_real_eip !4
  %55 = trunc i32 %49 to i8, !mcsema_real_eip !4
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !4
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !4
  %58 = zext i1 %57 to i8, !mcsema_real_eip !4
  %59 = xor i8 %58, 1, !mcsema_real_eip !4
  %60 = trunc i8 %59 to i1, !mcsema_real_eip !4
  %61 = zext i1 %60 to i8, !mcsema_real_eip !4
  store volatile i8 %61, i8* %PF_write, !mcsema_real_eip !4
  %62 = icmp eq i32 %49, 0, !mcsema_real_eip !4
  %63 = zext i1 %62 to i8, !mcsema_real_eip !4
  store volatile i8 %63, i8* %ZF_write, !mcsema_real_eip !4
  %64 = lshr i32 %49, 31, !mcsema_real_eip !4
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !4
  %66 = zext i1 %65 to i8, !mcsema_real_eip !4
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !4
  %68 = zext i1 %67 to i8, !mcsema_real_eip !4
  store volatile i8 %68, i8* %SF_write, !mcsema_real_eip !4
  %69 = icmp ult i32 %48, 7, !mcsema_real_eip !4
  %70 = zext i1 %69 to i8, !mcsema_real_eip !4
  store volatile i8 %70, i8* %CF_write, !mcsema_real_eip !4
  %71 = xor i32 %48, 7, !mcsema_real_eip !4
  %72 = xor i32 %48, %49, !mcsema_real_eip !4
  %73 = and i32 %71, %72, !mcsema_real_eip !4
  %74 = lshr i32 %73, 31, !mcsema_real_eip !4
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !4
  %76 = zext i1 %75 to i8, !mcsema_real_eip !4
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !4
  %78 = zext i1 %77 to i8, !mcsema_real_eip !4
  store volatile i8 %78, i8* %OF_write, !mcsema_real_eip !4
  store volatile i64 19, i64* %EIP_write, !mcsema_real_eip !5
  %79 = load i8, i8* %SF_read, !mcsema_real_eip !5
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !5
  %81 = load i8, i8* %OF_read, !mcsema_real_eip !5
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !5
  %83 = icmp eq i1 %80, %82, !mcsema_real_eip !5
  br i1 %83, label %block_8b, label %block_19, !mcsema_real_eip !5

block_19:                                         ; preds = %block_f
  store volatile i64 25, i64* %EIP_write, !mcsema_real_eip !6
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %85 = add i64 %84, -8, !mcsema_real_eip !6
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !6
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !6
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %88, !mcsema_real_eip !6
  br label %block_20, !mcsema_real_eip !7

block_20:                                         ; preds = %block_2a, %block_19
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !7
  %89 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %90 = add i64 %89, -8, !mcsema_real_eip !7
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !7
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !7
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !7
  %94 = load i32, i32* %93, !mcsema_real_eip !7
  %95 = sub i32 %94, 11, !mcsema_real_eip !7
  %96 = xor i32 %95, %94, !mcsema_real_eip !7
  %97 = xor i32 %96, 11, !mcsema_real_eip !7
  %98 = and i32 %97, 16, !mcsema_real_eip !7
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !7
  %100 = zext i1 %99 to i8, !mcsema_real_eip !7
  store volatile i8 %100, i8* %AF_write, !mcsema_real_eip !7
  %101 = trunc i32 %95 to i8, !mcsema_real_eip !7
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !7
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !7
  %104 = zext i1 %103 to i8, !mcsema_real_eip !7
  %105 = xor i8 %104, 1, !mcsema_real_eip !7
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !7
  %107 = zext i1 %106 to i8, !mcsema_real_eip !7
  store volatile i8 %107, i8* %PF_write, !mcsema_real_eip !7
  %108 = icmp eq i32 %95, 0, !mcsema_real_eip !7
  %109 = zext i1 %108 to i8, !mcsema_real_eip !7
  store volatile i8 %109, i8* %ZF_write, !mcsema_real_eip !7
  %110 = lshr i32 %95, 31, !mcsema_real_eip !7
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !7
  %112 = zext i1 %111 to i8, !mcsema_real_eip !7
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !7
  %114 = zext i1 %113 to i8, !mcsema_real_eip !7
  store volatile i8 %114, i8* %SF_write, !mcsema_real_eip !7
  %115 = icmp ult i32 %94, 11, !mcsema_real_eip !7
  %116 = zext i1 %115 to i8, !mcsema_real_eip !7
  store volatile i8 %116, i8* %CF_write, !mcsema_real_eip !7
  %117 = xor i32 %94, 11, !mcsema_real_eip !7
  %118 = xor i32 %94, %95, !mcsema_real_eip !7
  %119 = and i32 %117, %118, !mcsema_real_eip !7
  %120 = lshr i32 %119, 31, !mcsema_real_eip !7
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !7
  %122 = zext i1 %121 to i8, !mcsema_real_eip !7
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !7
  %124 = zext i1 %123 to i8, !mcsema_real_eip !7
  store volatile i8 %124, i8* %OF_write, !mcsema_real_eip !7
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !8
  %125 = load i8, i8* %SF_read, !mcsema_real_eip !8
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !8
  %127 = load i8, i8* %OF_read, !mcsema_real_eip !8
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !8
  %129 = icmp eq i1 %126, %128, !mcsema_real_eip !8
  br i1 %129, label %block_69, label %block_2a, !mcsema_real_eip !8

block_2a:                                         ; preds = %block_20
  store volatile i64 42, i64* %EIP_write, !mcsema_real_eip !9
  %130 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !9
  %131 = add i64 %130, 0, !mcsema_real_eip !9
  store volatile i64 %131, i64* %RDI_write, !mcsema_real_eip !9
  store volatile i64 52, i64* %EIP_write, !mcsema_real_eip !10
  %132 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !10
  %133 = add i64 %132, 0, !mcsema_real_eip !10
  store volatile i64 %133, i64* %RAX_write, !mcsema_real_eip !10
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !11
  %134 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %135 = add i64 %134, -8, !mcsema_real_eip !11
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !11
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !11
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !11
  %139 = load i32, i32* %138, !mcsema_real_eip !11
  %140 = sext i32 %139 to i64, !mcsema_real_eip !11
  store volatile i64 %140, i64* %RCX_write, !mcsema_real_eip !11
  store volatile i64 66, i64* %EIP_write, !mcsema_real_eip !12
  %141 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %142 = add i64 %141, -4, !mcsema_real_eip !12
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !12
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !12
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !12
  %146 = load i32, i32* %145, !mcsema_real_eip !12
  %147 = sext i32 %146 to i64, !mcsema_real_eip !12
  store volatile i64 %147, i64* %RDX_write, !mcsema_real_eip !12
  store volatile i64 70, i64* %EIP_write, !mcsema_real_eip !13
  %148 = load i64, i64* %RDX_read, !mcsema_real_eip !13
  %149 = sext i64 %148 to i128, !mcsema_real_eip !13
  %150 = sext i64 11 to i128, !mcsema_real_eip !13
  %151 = mul i128 %149, %150, !mcsema_real_eip !13
  %152 = trunc i128 %151 to i64, !mcsema_real_eip !13
  %153 = sext i64 %152 to i128, !mcsema_real_eip !13
  %154 = icmp ne i128 %153, %151, !mcsema_real_eip !13
  %155 = icmp slt i64 %152, 0, !mcsema_real_eip !13
  %156 = zext i1 %155 to i8, !mcsema_real_eip !13
  store volatile i8 %156, i8* %SF_write, !mcsema_real_eip !13
  %157 = zext i1 %154 to i8, !mcsema_real_eip !13
  store volatile i8 %157, i8* %OF_write, !mcsema_real_eip !13
  %158 = zext i1 %154 to i8, !mcsema_real_eip !13
  store volatile i8 %158, i8* %CF_write, !mcsema_real_eip !13
  store volatile i64 %152, i64* %RDX_write, !mcsema_real_eip !13
  store volatile i64 74, i64* %EIP_write, !mcsema_real_eip !14
  %159 = load i64, i64* %RAX_read, !mcsema_real_eip !14
  %160 = load i64, i64* %RDX_read, !mcsema_real_eip !14
  %161 = add i64 %160, %159, !mcsema_real_eip !14
  %162 = xor i64 %161, %159, !mcsema_real_eip !14
  %163 = xor i64 %162, %160, !mcsema_real_eip !14
  %164 = and i64 %163, 16, !mcsema_real_eip !14
  %165 = icmp ne i64 %164, 0, !mcsema_real_eip !14
  %166 = zext i1 %165 to i8, !mcsema_real_eip !14
  store volatile i8 %166, i8* %AF_write, !mcsema_real_eip !14
  %167 = lshr i64 %161, 63, !mcsema_real_eip !14
  %168 = trunc i64 %167 to i1, !mcsema_real_eip !14
  %169 = zext i1 %168 to i8, !mcsema_real_eip !14
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !14
  %171 = zext i1 %170 to i8, !mcsema_real_eip !14
  store volatile i8 %171, i8* %SF_write, !mcsema_real_eip !14
  %172 = icmp eq i64 %161, 0, !mcsema_real_eip !14
  %173 = zext i1 %172 to i8, !mcsema_real_eip !14
  store volatile i8 %173, i8* %ZF_write, !mcsema_real_eip !14
  %174 = xor i64 %159, %160, !mcsema_real_eip !14
  %175 = xor i64 %174, -1, !mcsema_real_eip !14
  %176 = xor i64 %159, %161, !mcsema_real_eip !14
  %177 = and i64 %175, %176, !mcsema_real_eip !14
  %178 = lshr i64 %177, 63, !mcsema_real_eip !14
  %179 = and i64 %178, 1, !mcsema_real_eip !14
  %180 = trunc i64 %179 to i1, !mcsema_real_eip !14
  %181 = zext i1 %180 to i8, !mcsema_real_eip !14
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !14
  %183 = zext i1 %182 to i8, !mcsema_real_eip !14
  store volatile i8 %183, i8* %OF_write, !mcsema_real_eip !14
  %184 = trunc i64 %161 to i8, !mcsema_real_eip !14
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !14
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !14
  %187 = zext i1 %186 to i8, !mcsema_real_eip !14
  %188 = xor i8 %187, 1, !mcsema_real_eip !14
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !14
  %190 = zext i1 %189 to i8, !mcsema_real_eip !14
  store volatile i8 %190, i8* %PF_write, !mcsema_real_eip !14
  %191 = icmp ult i64 %161, %159, !mcsema_real_eip !14
  %192 = zext i1 %191 to i8, !mcsema_real_eip !14
  store volatile i8 %192, i8* %CF_write, !mcsema_real_eip !14
  store volatile i64 %161, i64* %RAX_write, !mcsema_real_eip !14
  store volatile i64 77, i64* %EIP_write, !mcsema_real_eip !15
  %193 = load i64, i64* %RAX_read, !mcsema_real_eip !15
  %194 = add i64 %193, 0, !mcsema_real_eip !15
  %195 = load i64, i64* %RCX_read, !mcsema_real_eip !15
  %196 = add i64 %194, %195, !mcsema_real_eip !15
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !15
  %198 = ptrtoint i64* %197 to i64, !mcsema_real_eip !15
  %199 = inttoptr i64 %198 to i8*, !mcsema_real_eip !15
  %200 = load i8, i8* %199, !mcsema_real_eip !15
  %201 = sext i8 %200 to i32, !mcsema_real_eip !15
  %202 = zext i32 %201 to i64, !mcsema_real_eip !15
  store volatile i64 %202, i64* %ESI_write, !mcsema_real_eip !15
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !16
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !16
  store volatile i64 83, i64* %EIP_write, !mcsema_real_eip !17
  %203 = load i64, i64* %RDI_read, !mcsema_real_eip !17
  %204 = load i64, i64* %RSI_read, !mcsema_real_eip !17
  %205 = load i64, i64* %RSP_read, !mcsema_real_eip !17
  %206 = sub i64 %205, 8, !mcsema_real_eip !17
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !17
  store i64 -2415393069852865332, i64* %207, !mcsema_real_eip !17
  store volatile i64 %206, i64* %RSP_write, !mcsema_real_eip !17
  %208 = call x86_64_sysvcc i64 @_printf(i64 %203, i64 %204), !mcsema_real_eip !17
  store volatile i64 %208, i64* %RAX_write, !mcsema_real_eip !17
  store volatile i64 88, i64* %EIP_write, !mcsema_real_eip !18
  %209 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %210 = add i64 %209, -12, !mcsema_real_eip !18
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !18
  %212 = load i32, i32* %EAX_read, !mcsema_real_eip !18
  %213 = ptrtoint i64* %211 to i64, !mcsema_real_eip !18
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !18
  store i32 %212, i32* %214, !mcsema_real_eip !18
  store volatile i64 91, i64* %EIP_write, !mcsema_real_eip !19
  %215 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %216 = add i64 %215, -8, !mcsema_real_eip !19
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !19
  %218 = ptrtoint i64* %217 to i64, !mcsema_real_eip !19
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !19
  %220 = load i32, i32* %219, !mcsema_real_eip !19
  %221 = zext i32 %220 to i64, !mcsema_real_eip !19
  store volatile i64 %221, i64* %EAX_write, !mcsema_real_eip !19
  store volatile i64 94, i64* %EIP_write, !mcsema_real_eip !20
  %222 = load i32, i32* %EAX_read, !mcsema_real_eip !20
  %223 = add i32 1, %222, !mcsema_real_eip !20
  %224 = xor i32 %223, %222, !mcsema_real_eip !20
  %225 = xor i32 %224, 1, !mcsema_real_eip !20
  %226 = and i32 %225, 16, !mcsema_real_eip !20
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !20
  %228 = zext i1 %227 to i8, !mcsema_real_eip !20
  store volatile i8 %228, i8* %AF_write, !mcsema_real_eip !20
  %229 = lshr i32 %223, 31, !mcsema_real_eip !20
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !20
  %231 = zext i1 %230 to i8, !mcsema_real_eip !20
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !20
  %233 = zext i1 %232 to i8, !mcsema_real_eip !20
  store volatile i8 %233, i8* %SF_write, !mcsema_real_eip !20
  %234 = icmp eq i32 %223, 0, !mcsema_real_eip !20
  %235 = zext i1 %234 to i8, !mcsema_real_eip !20
  store volatile i8 %235, i8* %ZF_write, !mcsema_real_eip !20
  %236 = xor i32 %222, 1, !mcsema_real_eip !20
  %237 = xor i32 %236, -1, !mcsema_real_eip !20
  %238 = xor i32 %222, %223, !mcsema_real_eip !20
  %239 = and i32 %237, %238, !mcsema_real_eip !20
  %240 = lshr i32 %239, 31, !mcsema_real_eip !20
  %241 = and i32 %240, 1, !mcsema_real_eip !20
  %242 = trunc i32 %241 to i1, !mcsema_real_eip !20
  %243 = zext i1 %242 to i8, !mcsema_real_eip !20
  %244 = trunc i8 %243 to i1, !mcsema_real_eip !20
  %245 = zext i1 %244 to i8, !mcsema_real_eip !20
  store volatile i8 %245, i8* %OF_write, !mcsema_real_eip !20
  %246 = trunc i32 %223 to i8, !mcsema_real_eip !20
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !20
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !20
  %249 = zext i1 %248 to i8, !mcsema_real_eip !20
  %250 = xor i8 %249, 1, !mcsema_real_eip !20
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !20
  %252 = zext i1 %251 to i8, !mcsema_real_eip !20
  store volatile i8 %252, i8* %PF_write, !mcsema_real_eip !20
  %253 = icmp ult i32 %223, %222, !mcsema_real_eip !20
  %254 = zext i1 %253 to i8, !mcsema_real_eip !20
  store volatile i8 %254, i8* %CF_write, !mcsema_real_eip !20
  %255 = zext i32 %223 to i64, !mcsema_real_eip !20
  store volatile i64 %255, i64* %EAX_write, !mcsema_real_eip !20
  store volatile i64 97, i64* %EIP_write, !mcsema_real_eip !21
  %256 = load i64, i64* %RBP_read, !mcsema_real_eip !21
  %257 = add i64 %256, -8, !mcsema_real_eip !21
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !21
  %259 = load i32, i32* %EAX_read, !mcsema_real_eip !21
  %260 = ptrtoint i64* %258 to i64, !mcsema_real_eip !21
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !21
  store i32 %259, i32* %261, !mcsema_real_eip !21
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !22
  br label %block_20, !mcsema_real_eip !22

block_69:                                         ; preds = %block_20
  store volatile i64 105, i64* %EIP_write, !mcsema_real_eip !23
  %262 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !23
  %263 = add i64 %262, 3, !mcsema_real_eip !23
  store volatile i64 %263, i64* %RDI_write, !mcsema_real_eip !23
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !24
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !24
  store volatile i64 117, i64* %EIP_write, !mcsema_real_eip !25
  %264 = load i64, i64* %RDI_read, !mcsema_real_eip !25
  %265 = load i64, i64* %RSI_read, !mcsema_real_eip !25
  %266 = load i64, i64* %RSP_read, !mcsema_real_eip !25
  %267 = sub i64 %266, 8, !mcsema_real_eip !25
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !25
  store i64 -2415393069852865332, i64* %268, !mcsema_real_eip !25
  store volatile i64 %267, i64* %RSP_write, !mcsema_real_eip !25
  %269 = call x86_64_sysvcc i64 @_printf(i64 %264, i64 %265), !mcsema_real_eip !25
  store volatile i64 %269, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 122, i64* %EIP_write, !mcsema_real_eip !26
  %270 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %271 = add i64 %270, -16, !mcsema_real_eip !26
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !26
  %273 = load i32, i32* %EAX_read, !mcsema_real_eip !26
  %274 = ptrtoint i64* %272 to i64, !mcsema_real_eip !26
  %275 = inttoptr i64 %274 to i32*, !mcsema_real_eip !26
  store i32 %273, i32* %275, !mcsema_real_eip !26
  store volatile i64 125, i64* %EIP_write, !mcsema_real_eip !27
  %276 = load i64, i64* %RBP_read, !mcsema_real_eip !27
  %277 = add i64 %276, -4, !mcsema_real_eip !27
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !27
  %279 = ptrtoint i64* %278 to i64, !mcsema_real_eip !27
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !27
  %281 = load i32, i32* %280, !mcsema_real_eip !27
  %282 = zext i32 %281 to i64, !mcsema_real_eip !27
  store volatile i64 %282, i64* %EAX_write, !mcsema_real_eip !27
  store volatile i64 128, i64* %EIP_write, !mcsema_real_eip !28
  %283 = load i32, i32* %EAX_read, !mcsema_real_eip !28
  %284 = add i32 1, %283, !mcsema_real_eip !28
  %285 = xor i32 %284, %283, !mcsema_real_eip !28
  %286 = xor i32 %285, 1, !mcsema_real_eip !28
  %287 = and i32 %286, 16, !mcsema_real_eip !28
  %288 = icmp ne i32 %287, 0, !mcsema_real_eip !28
  %289 = zext i1 %288 to i8, !mcsema_real_eip !28
  store volatile i8 %289, i8* %AF_write, !mcsema_real_eip !28
  %290 = lshr i32 %284, 31, !mcsema_real_eip !28
  %291 = trunc i32 %290 to i1, !mcsema_real_eip !28
  %292 = zext i1 %291 to i8, !mcsema_real_eip !28
  %293 = trunc i8 %292 to i1, !mcsema_real_eip !28
  %294 = zext i1 %293 to i8, !mcsema_real_eip !28
  store volatile i8 %294, i8* %SF_write, !mcsema_real_eip !28
  %295 = icmp eq i32 %284, 0, !mcsema_real_eip !28
  %296 = zext i1 %295 to i8, !mcsema_real_eip !28
  store volatile i8 %296, i8* %ZF_write, !mcsema_real_eip !28
  %297 = xor i32 %283, 1, !mcsema_real_eip !28
  %298 = xor i32 %297, -1, !mcsema_real_eip !28
  %299 = xor i32 %283, %284, !mcsema_real_eip !28
  %300 = and i32 %298, %299, !mcsema_real_eip !28
  %301 = lshr i32 %300, 31, !mcsema_real_eip !28
  %302 = and i32 %301, 1, !mcsema_real_eip !28
  %303 = trunc i32 %302 to i1, !mcsema_real_eip !28
  %304 = zext i1 %303 to i8, !mcsema_real_eip !28
  %305 = trunc i8 %304 to i1, !mcsema_real_eip !28
  %306 = zext i1 %305 to i8, !mcsema_real_eip !28
  store volatile i8 %306, i8* %OF_write, !mcsema_real_eip !28
  %307 = trunc i32 %284 to i8, !mcsema_real_eip !28
  %308 = call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !28
  %309 = trunc i8 %308 to i1, !mcsema_real_eip !28
  %310 = zext i1 %309 to i8, !mcsema_real_eip !28
  %311 = xor i8 %310, 1, !mcsema_real_eip !28
  %312 = trunc i8 %311 to i1, !mcsema_real_eip !28
  %313 = zext i1 %312 to i8, !mcsema_real_eip !28
  store volatile i8 %313, i8* %PF_write, !mcsema_real_eip !28
  %314 = icmp ult i32 %284, %283, !mcsema_real_eip !28
  %315 = zext i1 %314 to i8, !mcsema_real_eip !28
  store volatile i8 %315, i8* %CF_write, !mcsema_real_eip !28
  %316 = zext i32 %284 to i64, !mcsema_real_eip !28
  store volatile i64 %316, i64* %EAX_write, !mcsema_real_eip !28
  store volatile i64 131, i64* %EIP_write, !mcsema_real_eip !29
  %317 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %318 = add i64 %317, -4, !mcsema_real_eip !29
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !29
  %320 = load i32, i32* %EAX_read, !mcsema_real_eip !29
  %321 = ptrtoint i64* %319 to i64, !mcsema_real_eip !29
  %322 = inttoptr i64 %321 to i32*, !mcsema_real_eip !29
  store i32 %320, i32* %322, !mcsema_real_eip !29
  store volatile i64 134, i64* %EIP_write, !mcsema_real_eip !30
  br label %block_f, !mcsema_real_eip !30

block_8b:                                         ; preds = %block_f
  store volatile i64 139, i64* %EIP_write, !mcsema_real_eip !31
  %323 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !31
  %324 = add i64 %323, 3, !mcsema_real_eip !31
  store volatile i64 %324, i64* %RDI_write, !mcsema_real_eip !31
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !32
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !32
  store volatile i64 151, i64* %EIP_write, !mcsema_real_eip !33
  %325 = load i64, i64* %RDI_read, !mcsema_real_eip !33
  %326 = load i64, i64* %RSI_read, !mcsema_real_eip !33
  %327 = load i64, i64* %RSP_read, !mcsema_real_eip !33
  %328 = sub i64 %327, 8, !mcsema_real_eip !33
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !33
  store i64 -2415393069852865332, i64* %329, !mcsema_real_eip !33
  store volatile i64 %328, i64* %RSP_write, !mcsema_real_eip !33
  %330 = call x86_64_sysvcc i64 @_printf(i64 %325, i64 %326), !mcsema_real_eip !33
  store volatile i64 %330, i64* %RAX_write, !mcsema_real_eip !33
  store volatile i64 156, i64* %EIP_write, !mcsema_real_eip !34
  %331 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %332 = add i64 %331, -20, !mcsema_real_eip !34
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !34
  %334 = load i32, i32* %EAX_read, !mcsema_real_eip !34
  %335 = ptrtoint i64* %333 to i64, !mcsema_real_eip !34
  %336 = inttoptr i64 %335 to i32*, !mcsema_real_eip !34
  store i32 %334, i32* %336, !mcsema_real_eip !34
  store volatile i64 159, i64* %EIP_write, !mcsema_real_eip !35
  %337 = load i64, i64* %RSP_read, !mcsema_real_eip !35
  %338 = add i64 32, %337, !mcsema_real_eip !35
  %339 = xor i64 %338, %337, !mcsema_real_eip !35
  %340 = xor i64 %339, 32, !mcsema_real_eip !35
  %341 = and i64 %340, 16, !mcsema_real_eip !35
  %342 = icmp ne i64 %341, 0, !mcsema_real_eip !35
  %343 = zext i1 %342 to i8, !mcsema_real_eip !35
  store volatile i8 %343, i8* %AF_write, !mcsema_real_eip !35
  %344 = lshr i64 %338, 63, !mcsema_real_eip !35
  %345 = trunc i64 %344 to i1, !mcsema_real_eip !35
  %346 = zext i1 %345 to i8, !mcsema_real_eip !35
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !35
  %348 = zext i1 %347 to i8, !mcsema_real_eip !35
  store volatile i8 %348, i8* %SF_write, !mcsema_real_eip !35
  %349 = icmp eq i64 %338, 0, !mcsema_real_eip !35
  %350 = zext i1 %349 to i8, !mcsema_real_eip !35
  store volatile i8 %350, i8* %ZF_write, !mcsema_real_eip !35
  %351 = xor i64 %337, 32, !mcsema_real_eip !35
  %352 = xor i64 %351, -1, !mcsema_real_eip !35
  %353 = xor i64 %337, %338, !mcsema_real_eip !35
  %354 = and i64 %352, %353, !mcsema_real_eip !35
  %355 = lshr i64 %354, 63, !mcsema_real_eip !35
  %356 = and i64 %355, 1, !mcsema_real_eip !35
  %357 = trunc i64 %356 to i1, !mcsema_real_eip !35
  %358 = zext i1 %357 to i8, !mcsema_real_eip !35
  %359 = trunc i8 %358 to i1, !mcsema_real_eip !35
  %360 = zext i1 %359 to i8, !mcsema_real_eip !35
  store volatile i8 %360, i8* %OF_write, !mcsema_real_eip !35
  %361 = trunc i64 %338 to i8, !mcsema_real_eip !35
  %362 = call i8 @llvm.ctpop.i8(i8 %361), !mcsema_real_eip !35
  %363 = trunc i8 %362 to i1, !mcsema_real_eip !35
  %364 = zext i1 %363 to i8, !mcsema_real_eip !35
  %365 = xor i8 %364, 1, !mcsema_real_eip !35
  %366 = trunc i8 %365 to i1, !mcsema_real_eip !35
  %367 = zext i1 %366 to i8, !mcsema_real_eip !35
  store volatile i8 %367, i8* %PF_write, !mcsema_real_eip !35
  %368 = icmp ult i64 %338, %337, !mcsema_real_eip !35
  %369 = zext i1 %368 to i8, !mcsema_real_eip !35
  store volatile i8 %369, i8* %CF_write, !mcsema_real_eip !35
  store volatile i64 %338, i64* %RSP_write, !mcsema_real_eip !35
  store volatile i64 163, i64* %EIP_write, !mcsema_real_eip !36
  %370 = load i64, i64* %RSP_read, !mcsema_real_eip !36
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !36
  %372 = load i64, i64* %371, !mcsema_real_eip !36
  store volatile i64 %372, i64* %RBP_write, !mcsema_real_eip !36
  %373 = add i64 %370, 8, !mcsema_real_eip !36
  store volatile i64 %373, i64* %RSP_write, !mcsema_real_eip !36
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !37
  %374 = load i64, i64* %RSP_read, !mcsema_real_eip !37
  %375 = add i64 %374, 8, !mcsema_real_eip !37
  %376 = inttoptr i64 %374 to i64*, !mcsema_real_eip !37
  %377 = load i64, i64* %376, !mcsema_real_eip !37
  store volatile i64 %377, i64* %RIP_write, !mcsema_real_eip !37
  store volatile i64 %375, i64* %RSP_write, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !38
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !38
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !38
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !38
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !38
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !38
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !38
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !38
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !38
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !38
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !38
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !38
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !38
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !38
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !38
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !38
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !38
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !38
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !38
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !38
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !38
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !38
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !38
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !38
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !38
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !38
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !38
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !38
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !38
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !38
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !38
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !38
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !38
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !38
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !38
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !38
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !38
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !38
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !38
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !38
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !38
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !38
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !38
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !38
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !38
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !38
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !38
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !38
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !38
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !38
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !38
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !38
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !38
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !38
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !38
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !38
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !38
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !38
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !38
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !38
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !38
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !38
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !38
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !38
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !38
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !38
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !38
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !38
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !38
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !38
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !38
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !38
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !38
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !38
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !38
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !38
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !38
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !38
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !38
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !38
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !38
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !38
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !38
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !38
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !38
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !38
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !38
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !38
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !38
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !38
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !38
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !38
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !38
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !38
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !38
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !38
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !38
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !38
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !38
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !38
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !38
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !38
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !38
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !38
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !38
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !38
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !38
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !38
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !38
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !38
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !38
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !38
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !38
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !38
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !38
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !38
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !38
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !38
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !38
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !38
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !38
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !38
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !38
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !38
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !38
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !38
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !38
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !38
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !38
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !38
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !38
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !38
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !38
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !38
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !38
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !38
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !38
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !38
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !38
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !38
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !38
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !38
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !38
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !38
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !38
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !38
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !38
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !38
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !38
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !38
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !38
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !38
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !38
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !38
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !38
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !38
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !38
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !38
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !38
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !38
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !38
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !38
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !38
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !38
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !38
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !38
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !38
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !38
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !38
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !38
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !38
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !38
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !38
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !38
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !38
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !38
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !38
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !38
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !38
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !38
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !38
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !38
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !38
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !38
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !38
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !38
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !38
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !38
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !38
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !38
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !38
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !38
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !38
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !38
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !38
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !38
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !38
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !38
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !38
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !38
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !38
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !38
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !38
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !38
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !38
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !38
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !38
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !38
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !38
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !38
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !38
  br label %block_b0, !mcsema_real_eip !38

block_b0:                                         ; preds = %entry
  store volatile i64 176, i64* %EIP_write, !mcsema_real_eip !38
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !38
  %3 = sub i64 %2, 8, !mcsema_real_eip !38
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !38
  store i64 %1, i64* %4, !mcsema_real_eip !38
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !38
  store volatile i64 177, i64* %EIP_write, !mcsema_real_eip !39
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !39
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !39
  store volatile i64 180, i64* %EIP_write, !mcsema_real_eip !40
  %6 = load i64, i64* %RSP_read, !mcsema_real_eip !40
  %7 = sub i64 %6, 128, !mcsema_real_eip !40
  %8 = xor i64 %7, %6, !mcsema_real_eip !40
  %9 = xor i64 %8, 128, !mcsema_real_eip !40
  %10 = and i64 %9, 16, !mcsema_real_eip !40
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !40
  %12 = zext i1 %11 to i8, !mcsema_real_eip !40
  store volatile i8 %12, i8* %AF_write, !mcsema_real_eip !40
  %13 = trunc i64 %7 to i8, !mcsema_real_eip !40
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !40
  %15 = trunc i8 %14 to i1, !mcsema_real_eip !40
  %16 = zext i1 %15 to i8, !mcsema_real_eip !40
  %17 = xor i8 %16, 1, !mcsema_real_eip !40
  %18 = trunc i8 %17 to i1, !mcsema_real_eip !40
  %19 = zext i1 %18 to i8, !mcsema_real_eip !40
  store volatile i8 %19, i8* %PF_write, !mcsema_real_eip !40
  %20 = icmp eq i64 %7, 0, !mcsema_real_eip !40
  %21 = zext i1 %20 to i8, !mcsema_real_eip !40
  store volatile i8 %21, i8* %ZF_write, !mcsema_real_eip !40
  %22 = lshr i64 %7, 63, !mcsema_real_eip !40
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !40
  %24 = zext i1 %23 to i8, !mcsema_real_eip !40
  %25 = trunc i8 %24 to i1, !mcsema_real_eip !40
  %26 = zext i1 %25 to i8, !mcsema_real_eip !40
  store volatile i8 %26, i8* %SF_write, !mcsema_real_eip !40
  %27 = icmp ult i64 %6, 128, !mcsema_real_eip !40
  %28 = zext i1 %27 to i8, !mcsema_real_eip !40
  store volatile i8 %28, i8* %CF_write, !mcsema_real_eip !40
  %29 = xor i64 %6, 128, !mcsema_real_eip !40
  %30 = xor i64 %6, %7, !mcsema_real_eip !40
  %31 = and i64 %29, %30, !mcsema_real_eip !40
  %32 = lshr i64 %31, 63, !mcsema_real_eip !40
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !40
  %34 = zext i1 %33 to i8, !mcsema_real_eip !40
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !40
  %36 = zext i1 %35 to i8, !mcsema_real_eip !40
  store volatile i8 %36, i8* %OF_write, !mcsema_real_eip !40
  store volatile i64 %7, i64* %RSP_write, !mcsema_real_eip !40
  store volatile i64 187, i64* %EIP_write, !mcsema_real_eip !41
  %37 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %38 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %39 = xor i32 %37, %38, !mcsema_real_eip !41
  %40 = trunc i8 0 to i1, !mcsema_real_eip !41
  %41 = zext i1 %40 to i8, !mcsema_real_eip !41
  store volatile i8 %41, i8* %CF_write, !mcsema_real_eip !41
  %42 = trunc i8 0 to i1, !mcsema_real_eip !41
  %43 = zext i1 %42 to i8, !mcsema_real_eip !41
  store volatile i8 %43, i8* %OF_write, !mcsema_real_eip !41
  %44 = lshr i32 %39, 31, !mcsema_real_eip !41
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !41
  %46 = zext i1 %45 to i8, !mcsema_real_eip !41
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !41
  %48 = zext i1 %47 to i8, !mcsema_real_eip !41
  store volatile i8 %48, i8* %SF_write, !mcsema_real_eip !41
  %49 = icmp eq i32 %39, 0, !mcsema_real_eip !41
  %50 = zext i1 %49 to i8, !mcsema_real_eip !41
  store volatile i8 %50, i8* %ZF_write, !mcsema_real_eip !41
  %51 = trunc i32 %39 to i8, !mcsema_real_eip !41
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !41
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !41
  %54 = zext i1 %53 to i8, !mcsema_real_eip !41
  %55 = xor i8 %54, 1, !mcsema_real_eip !41
  %56 = trunc i8 %55 to i1, !mcsema_real_eip !41
  %57 = zext i1 %56 to i8, !mcsema_real_eip !41
  store volatile i8 %57, i8* %PF_write, !mcsema_real_eip !41
  %58 = zext i32 %39 to i64, !mcsema_real_eip !41
  store volatile i64 %58, i64* %EAX_write, !mcsema_real_eip !41
  store volatile i64 189, i64* %EIP_write, !mcsema_real_eip !42
  %59 = zext i32 28 to i64, !mcsema_real_eip !42
  store volatile i64 %59, i64* %ECX_write, !mcsema_real_eip !42
  store volatile i64 194, i64* %EIP_write, !mcsema_real_eip !43
  %60 = load i32, i32* %ECX_read, !mcsema_real_eip !43
  %61 = zext i32 %60 to i64, !mcsema_real_eip !43
  store volatile i64 %61, i64* %EDX_write, !mcsema_real_eip !43
  store volatile i64 196, i64* %EIP_write, !mcsema_real_eip !44
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !44
  %63 = add i64 %62, -64, !mcsema_real_eip !44
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !44
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !44
  store volatile i64 %65, i64* %R8_write, !mcsema_real_eip !44
  store volatile i64 200, i64* %EIP_write, !mcsema_real_eip !45
  %66 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !45
  %67 = add i64 %66, 0, !mcsema_real_eip !45
  store volatile i64 %67, i64* %R9_write, !mcsema_real_eip !45
  store volatile i64 210, i64* %EIP_write, !mcsema_real_eip !46
  %68 = load i64, i64* %RBP_read, !mcsema_real_eip !46
  %69 = add i64 %68, -4, !mcsema_real_eip !46
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !46
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !46
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !46
  store i32 0, i32* %72, !mcsema_real_eip !46
  store volatile i64 217, i64* %EIP_write, !mcsema_real_eip !47
  %73 = load i64, i64* %RBP_read, !mcsema_real_eip !47
  %74 = add i64 %73, -8, !mcsema_real_eip !47
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !47
  %76 = load i32, i32* %EDI_read, !mcsema_real_eip !47
  %77 = ptrtoint i64* %75 to i64, !mcsema_real_eip !47
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !47
  store i32 %76, i32* %78, !mcsema_real_eip !47
  store volatile i64 220, i64* %EIP_write, !mcsema_real_eip !48
  %79 = load i64, i64* %RBP_read, !mcsema_real_eip !48
  %80 = add i64 %79, -16, !mcsema_real_eip !48
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !48
  %82 = load i64, i64* %RSI_read, !mcsema_real_eip !48
  store i64 %82, i64* %81, !mcsema_real_eip !48
  store volatile i64 224, i64* %EIP_write, !mcsema_real_eip !49
  %83 = load i64, i64* %RBP_read, !mcsema_real_eip !49
  %84 = add i64 %83, -36, !mcsema_real_eip !49
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !49
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !49
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !49
  store i32 0, i32* %87, !mcsema_real_eip !49
  store volatile i64 231, i64* %EIP_write, !mcsema_real_eip !50
  %88 = load i64, i64* %RBP_read, !mcsema_real_eip !50
  %89 = add i64 %88, -20, !mcsema_real_eip !50
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !50
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !50
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !50
  store i32 1, i32* %92, !mcsema_real_eip !50
  store volatile i64 238, i64* %EIP_write, !mcsema_real_eip !51
  %93 = load i64, i64* %RBP_read, !mcsema_real_eip !51
  %94 = add i64 %93, -24, !mcsema_real_eip !51
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !51
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !51
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %97, !mcsema_real_eip !51
  store volatile i64 245, i64* %EIP_write, !mcsema_real_eip !52
  %98 = load i64, i64* %RBP_read, !mcsema_real_eip !52
  %99 = add i64 %98, -20, !mcsema_real_eip !52
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !52
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !52
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !52
  %103 = load i32, i32* %102, !mcsema_real_eip !52
  %104 = sext i32 %103 to i64, !mcsema_real_eip !52
  store volatile i64 %104, i64* %RSI_write, !mcsema_real_eip !52
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !53
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !53
  %106 = add i64 %105, -24, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = ptrtoint i64* %107 to i64, !mcsema_real_eip !53
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !53
  %110 = load i32, i32* %109, !mcsema_real_eip !53
  %111 = sext i32 %110 to i64, !mcsema_real_eip !53
  store volatile i64 %111, i64* %R10_write, !mcsema_real_eip !53
  store volatile i64 253, i64* %EIP_write, !mcsema_real_eip !54
  %112 = load i64, i64* %R10_read, !mcsema_real_eip !54
  %113 = sext i64 %112 to i128, !mcsema_real_eip !54
  %114 = sext i64 11 to i128, !mcsema_real_eip !54
  %115 = mul i128 %113, %114, !mcsema_real_eip !54
  %116 = trunc i128 %115 to i64, !mcsema_real_eip !54
  %117 = sext i64 %116 to i128, !mcsema_real_eip !54
  %118 = icmp ne i128 %117, %115, !mcsema_real_eip !54
  %119 = icmp slt i64 %116, 0, !mcsema_real_eip !54
  %120 = zext i1 %119 to i8, !mcsema_real_eip !54
  store volatile i8 %120, i8* %SF_write, !mcsema_real_eip !54
  %121 = zext i1 %118 to i8, !mcsema_real_eip !54
  store volatile i8 %121, i8* %OF_write, !mcsema_real_eip !54
  %122 = zext i1 %118 to i8, !mcsema_real_eip !54
  store volatile i8 %122, i8* %CF_write, !mcsema_real_eip !54
  store volatile i64 %116, i64* %R10_write, !mcsema_real_eip !54
  store volatile i64 257, i64* %EIP_write, !mcsema_real_eip !55
  %123 = load i64, i64* %R9_read, !mcsema_real_eip !55
  %124 = load i64, i64* %R10_read, !mcsema_real_eip !55
  %125 = add i64 %124, %123, !mcsema_real_eip !55
  %126 = xor i64 %125, %123, !mcsema_real_eip !55
  %127 = xor i64 %126, %124, !mcsema_real_eip !55
  %128 = and i64 %127, 16, !mcsema_real_eip !55
  %129 = icmp ne i64 %128, 0, !mcsema_real_eip !55
  %130 = zext i1 %129 to i8, !mcsema_real_eip !55
  store volatile i8 %130, i8* %AF_write, !mcsema_real_eip !55
  %131 = lshr i64 %125, 63, !mcsema_real_eip !55
  %132 = trunc i64 %131 to i1, !mcsema_real_eip !55
  %133 = zext i1 %132 to i8, !mcsema_real_eip !55
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !55
  %135 = zext i1 %134 to i8, !mcsema_real_eip !55
  store volatile i8 %135, i8* %SF_write, !mcsema_real_eip !55
  %136 = icmp eq i64 %125, 0, !mcsema_real_eip !55
  %137 = zext i1 %136 to i8, !mcsema_real_eip !55
  store volatile i8 %137, i8* %ZF_write, !mcsema_real_eip !55
  %138 = xor i64 %123, %124, !mcsema_real_eip !55
  %139 = xor i64 %138, -1, !mcsema_real_eip !55
  %140 = xor i64 %123, %125, !mcsema_real_eip !55
  %141 = and i64 %139, %140, !mcsema_real_eip !55
  %142 = lshr i64 %141, 63, !mcsema_real_eip !55
  %143 = and i64 %142, 1, !mcsema_real_eip !55
  %144 = trunc i64 %143 to i1, !mcsema_real_eip !55
  %145 = zext i1 %144 to i8, !mcsema_real_eip !55
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !55
  %147 = zext i1 %146 to i8, !mcsema_real_eip !55
  store volatile i8 %147, i8* %OF_write, !mcsema_real_eip !55
  %148 = trunc i64 %125 to i8, !mcsema_real_eip !55
  %149 = call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !55
  %150 = trunc i8 %149 to i1, !mcsema_real_eip !55
  %151 = zext i1 %150 to i8, !mcsema_real_eip !55
  %152 = xor i8 %151, 1, !mcsema_real_eip !55
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !55
  %154 = zext i1 %153 to i8, !mcsema_real_eip !55
  store volatile i8 %154, i8* %PF_write, !mcsema_real_eip !55
  %155 = icmp ult i64 %125, %123, !mcsema_real_eip !55
  %156 = zext i1 %155 to i8, !mcsema_real_eip !55
  store volatile i8 %156, i8* %CF_write, !mcsema_real_eip !55
  store volatile i64 %125, i64* %R9_write, !mcsema_real_eip !55
  store volatile i64 260, i64* %EIP_write, !mcsema_real_eip !56
  %157 = load i64, i64* %R9_read, !mcsema_real_eip !56
  %158 = add i64 %157, 0, !mcsema_real_eip !56
  %159 = load i64, i64* %RSI_read, !mcsema_real_eip !56
  %160 = add i64 %158, %159, !mcsema_real_eip !56
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !56
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !56
  %163 = inttoptr i64 %162 to i8*, !mcsema_real_eip !56
  store i8 88, i8* %163, !mcsema_real_eip !56
  store volatile i64 265, i64* %EIP_write, !mcsema_real_eip !57
  %164 = load i32, i32* %EAX_read, !mcsema_real_eip !57
  %165 = zext i32 %164 to i64, !mcsema_real_eip !57
  store volatile i64 %165, i64* %EDI_write, !mcsema_real_eip !57
  store volatile i64 267, i64* %EIP_write, !mcsema_real_eip !58
  %166 = load i64, i64* %R8_read, !mcsema_real_eip !58
  store volatile i64 %166, i64* %RSI_write, !mcsema_real_eip !58
  store volatile i64 270, i64* %EIP_write, !mcsema_real_eip !59
  %167 = load i64, i64* %RDI_read, !mcsema_real_eip !59
  %168 = load i64, i64* %RSI_read, !mcsema_real_eip !59
  %169 = load i64, i64* %RDX_read, !mcsema_real_eip !59
  %170 = load i64, i64* %RSP_read, !mcsema_real_eip !59
  %171 = sub i64 %170, 8, !mcsema_real_eip !59
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !59
  store i64 -2415393069852865332, i64* %172, !mcsema_real_eip !59
  store volatile i64 %171, i64* %RSP_write, !mcsema_real_eip !59
  %173 = call x86_64_sysvcc i64 @_read(i64 %167, i64 %168, i64 %169), !mcsema_real_eip !59
  store volatile i64 %173, i64* %RAX_write, !mcsema_real_eip !59
  store volatile i64 275, i64* %EIP_write, !mcsema_real_eip !60
  %174 = load i64, i64* %RBP_read, !mcsema_real_eip !60
  %175 = add i64 %174, -72, !mcsema_real_eip !60
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !60
  %177 = load i64, i64* %RAX_read, !mcsema_real_eip !60
  store i64 %177, i64* %176, !mcsema_real_eip !60
  br label %block_117, !mcsema_real_eip !61

block_117:                                        ; preds = %block_2f9, %block_b0
  store volatile i64 279, i64* %EIP_write, !mcsema_real_eip !61
  %178 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %179 = add i64 %178, -36, !mcsema_real_eip !61
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !61
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !61
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !61
  %183 = load i32, i32* %182, !mcsema_real_eip !61
  %184 = sub i32 %183, 28, !mcsema_real_eip !61
  %185 = xor i32 %184, %183, !mcsema_real_eip !61
  %186 = xor i32 %185, 28, !mcsema_real_eip !61
  %187 = and i32 %186, 16, !mcsema_real_eip !61
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !61
  %189 = zext i1 %188 to i8, !mcsema_real_eip !61
  store volatile i8 %189, i8* %AF_write, !mcsema_real_eip !61
  %190 = trunc i32 %184 to i8, !mcsema_real_eip !61
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !61
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !61
  %193 = zext i1 %192 to i8, !mcsema_real_eip !61
  %194 = xor i8 %193, 1, !mcsema_real_eip !61
  %195 = trunc i8 %194 to i1, !mcsema_real_eip !61
  %196 = zext i1 %195 to i8, !mcsema_real_eip !61
  store volatile i8 %196, i8* %PF_write, !mcsema_real_eip !61
  %197 = icmp eq i32 %184, 0, !mcsema_real_eip !61
  %198 = zext i1 %197 to i8, !mcsema_real_eip !61
  store volatile i8 %198, i8* %ZF_write, !mcsema_real_eip !61
  %199 = lshr i32 %184, 31, !mcsema_real_eip !61
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !61
  %201 = zext i1 %200 to i8, !mcsema_real_eip !61
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !61
  %203 = zext i1 %202 to i8, !mcsema_real_eip !61
  store volatile i8 %203, i8* %SF_write, !mcsema_real_eip !61
  %204 = icmp ult i32 %183, 28, !mcsema_real_eip !61
  %205 = zext i1 %204 to i8, !mcsema_real_eip !61
  store volatile i8 %205, i8* %CF_write, !mcsema_real_eip !61
  %206 = xor i32 %183, 28, !mcsema_real_eip !61
  %207 = xor i32 %183, %184, !mcsema_real_eip !61
  %208 = and i32 %206, %207, !mcsema_real_eip !61
  %209 = lshr i32 %208, 31, !mcsema_real_eip !61
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !61
  %211 = zext i1 %210 to i8, !mcsema_real_eip !61
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !61
  %213 = zext i1 %212 to i8, !mcsema_real_eip !61
  store volatile i8 %213, i8* %OF_write, !mcsema_real_eip !61
  store volatile i64 283, i64* %EIP_write, !mcsema_real_eip !62
  %214 = load i8, i8* %SF_read, !mcsema_real_eip !62
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !62
  %216 = load i8, i8* %OF_read, !mcsema_real_eip !62
  %217 = trunc i8 %216 to i1, !mcsema_real_eip !62
  %218 = icmp eq i1 %215, %217, !mcsema_real_eip !62
  br i1 %218, label %block_329, label %block_121, !mcsema_real_eip !62

block_121:                                        ; preds = %block_117
  store volatile i64 289, i64* %EIP_write, !mcsema_real_eip !63
  %219 = load i64, i64* %RBP_read, !mcsema_real_eip !63
  %220 = add i64 %219, -20, !mcsema_real_eip !63
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !63
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !63
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !63
  %224 = load i32, i32* %223, !mcsema_real_eip !63
  %225 = zext i32 %224 to i64, !mcsema_real_eip !63
  store volatile i64 %225, i64* %EAX_write, !mcsema_real_eip !63
  store volatile i64 292, i64* %EIP_write, !mcsema_real_eip !64
  %226 = load i64, i64* %RBP_read, !mcsema_real_eip !64
  %227 = add i64 %226, -28, !mcsema_real_eip !64
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !64
  %229 = load i32, i32* %EAX_read, !mcsema_real_eip !64
  %230 = ptrtoint i64* %228 to i64, !mcsema_real_eip !64
  %231 = inttoptr i64 %230 to i32*, !mcsema_real_eip !64
  store i32 %229, i32* %231, !mcsema_real_eip !64
  store volatile i64 295, i64* %EIP_write, !mcsema_real_eip !65
  %232 = load i64, i64* %RBP_read, !mcsema_real_eip !65
  %233 = add i64 %232, -24, !mcsema_real_eip !65
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !65
  %235 = ptrtoint i64* %234 to i64, !mcsema_real_eip !65
  %236 = inttoptr i64 %235 to i32*, !mcsema_real_eip !65
  %237 = load i32, i32* %236, !mcsema_real_eip !65
  %238 = zext i32 %237 to i64, !mcsema_real_eip !65
  store volatile i64 %238, i64* %EAX_write, !mcsema_real_eip !65
  store volatile i64 298, i64* %EIP_write, !mcsema_real_eip !66
  %239 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %240 = add i64 %239, -32, !mcsema_real_eip !66
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !66
  %242 = load i32, i32* %EAX_read, !mcsema_real_eip !66
  %243 = ptrtoint i64* %241 to i64, !mcsema_real_eip !66
  %244 = inttoptr i64 %243 to i32*, !mcsema_real_eip !66
  store i32 %242, i32* %244, !mcsema_real_eip !66
  store volatile i64 301, i64* %EIP_write, !mcsema_real_eip !67
  %245 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %246 = add i64 %245, -36, !mcsema_real_eip !67
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !67
  %248 = ptrtoint i64* %247 to i64, !mcsema_real_eip !67
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !67
  %250 = load i32, i32* %249, !mcsema_real_eip !67
  %251 = sext i32 %250 to i64, !mcsema_real_eip !67
  store volatile i64 %251, i64* %RCX_write, !mcsema_real_eip !67
  store volatile i64 305, i64* %EIP_write, !mcsema_real_eip !68
  %252 = load i64, i64* %RBP_read, !mcsema_real_eip !68
  %253 = add i64 %252, -64, !mcsema_real_eip !68
  %254 = load i64, i64* %RCX_read, !mcsema_real_eip !68
  %255 = add i64 %253, %254, !mcsema_real_eip !68
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !68
  %257 = ptrtoint i64* %256 to i64, !mcsema_real_eip !68
  %258 = inttoptr i64 %257 to i8*, !mcsema_real_eip !68
  %259 = load i8, i8* %258, !mcsema_real_eip !68
  %260 = sext i8 %259 to i32, !mcsema_real_eip !68
  %261 = zext i32 %260 to i64, !mcsema_real_eip !68
  store volatile i64 %261, i64* %EAX_write, !mcsema_real_eip !68
  store volatile i64 310, i64* %EIP_write, !mcsema_real_eip !69
  %262 = load i32, i32* %EAX_read, !mcsema_real_eip !69
  %263 = zext i32 %262 to i64, !mcsema_real_eip !69
  store volatile i64 %263, i64* %EDX_write, !mcsema_real_eip !69
  store volatile i64 312, i64* %EIP_write, !mcsema_real_eip !70
  %264 = load i32, i32* %EDX_read, !mcsema_real_eip !70
  %265 = sub i32 %264, 97, !mcsema_real_eip !70
  %266 = xor i32 %265, %264, !mcsema_real_eip !70
  %267 = xor i32 %266, 97, !mcsema_real_eip !70
  %268 = and i32 %267, 16, !mcsema_real_eip !70
  %269 = icmp ne i32 %268, 0, !mcsema_real_eip !70
  %270 = zext i1 %269 to i8, !mcsema_real_eip !70
  store volatile i8 %270, i8* %AF_write, !mcsema_real_eip !70
  %271 = trunc i32 %265 to i8, !mcsema_real_eip !70
  %272 = call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !70
  %273 = trunc i8 %272 to i1, !mcsema_real_eip !70
  %274 = zext i1 %273 to i8, !mcsema_real_eip !70
  %275 = xor i8 %274, 1, !mcsema_real_eip !70
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !70
  %277 = zext i1 %276 to i8, !mcsema_real_eip !70
  store volatile i8 %277, i8* %PF_write, !mcsema_real_eip !70
  %278 = icmp eq i32 %265, 0, !mcsema_real_eip !70
  %279 = zext i1 %278 to i8, !mcsema_real_eip !70
  store volatile i8 %279, i8* %ZF_write, !mcsema_real_eip !70
  %280 = lshr i32 %265, 31, !mcsema_real_eip !70
  %281 = trunc i32 %280 to i1, !mcsema_real_eip !70
  %282 = zext i1 %281 to i8, !mcsema_real_eip !70
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !70
  %284 = zext i1 %283 to i8, !mcsema_real_eip !70
  store volatile i8 %284, i8* %SF_write, !mcsema_real_eip !70
  %285 = icmp ult i32 %264, 97, !mcsema_real_eip !70
  %286 = zext i1 %285 to i8, !mcsema_real_eip !70
  store volatile i8 %286, i8* %CF_write, !mcsema_real_eip !70
  %287 = xor i32 %264, 97, !mcsema_real_eip !70
  %288 = xor i32 %264, %265, !mcsema_real_eip !70
  %289 = and i32 %287, %288, !mcsema_real_eip !70
  %290 = lshr i32 %289, 31, !mcsema_real_eip !70
  %291 = trunc i32 %290 to i1, !mcsema_real_eip !70
  %292 = zext i1 %291 to i8, !mcsema_real_eip !70
  %293 = trunc i8 %292 to i1, !mcsema_real_eip !70
  %294 = zext i1 %293 to i8, !mcsema_real_eip !70
  store volatile i8 %294, i8* %OF_write, !mcsema_real_eip !70
  %295 = zext i32 %265 to i64, !mcsema_real_eip !70
  store volatile i64 %295, i64* %EDX_write, !mcsema_real_eip !70
  store volatile i64 315, i64* %EIP_write, !mcsema_real_eip !71
  %296 = load i64, i64* %RBP_read, !mcsema_real_eip !71
  %297 = add i64 %296, -76, !mcsema_real_eip !71
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !71
  %299 = load i32, i32* %EAX_read, !mcsema_real_eip !71
  %300 = ptrtoint i64* %298 to i64, !mcsema_real_eip !71
  %301 = inttoptr i64 %300 to i32*, !mcsema_real_eip !71
  store i32 %299, i32* %301, !mcsema_real_eip !71
  store volatile i64 318, i64* %EIP_write, !mcsema_real_eip !72
  %302 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %303 = add i64 %302, -80, !mcsema_real_eip !72
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !72
  %305 = load i32, i32* %EDX_read, !mcsema_real_eip !72
  %306 = ptrtoint i64* %304 to i64, !mcsema_real_eip !72
  %307 = inttoptr i64 %306 to i32*, !mcsema_real_eip !72
  store i32 %305, i32* %307, !mcsema_real_eip !72
  store volatile i64 321, i64* %EIP_write, !mcsema_real_eip !73
  %308 = load i8, i8* %ZF_read, !mcsema_real_eip !73
  %309 = trunc i8 %308 to i1, !mcsema_real_eip !73
  %310 = icmp eq i1 %309, true, !mcsema_real_eip !73
  br i1 %310, label %block_1a4, label %block_147, !mcsema_real_eip !73

block_147:                                        ; preds = %block_121
  store volatile i64 327, i64* %EIP_write, !mcsema_real_eip !74
  br label %block_14c, !mcsema_real_eip !74

block_14c:                                        ; preds = %block_147
  store volatile i64 332, i64* %EIP_write, !mcsema_real_eip !75
  %311 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %312 = add i64 %311, -76, !mcsema_real_eip !75
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !75
  %314 = ptrtoint i64* %313 to i64, !mcsema_real_eip !75
  %315 = inttoptr i64 %314 to i32*, !mcsema_real_eip !75
  %316 = load i32, i32* %315, !mcsema_real_eip !75
  %317 = zext i32 %316 to i64, !mcsema_real_eip !75
  store volatile i64 %317, i64* %EAX_write, !mcsema_real_eip !75
  store volatile i64 335, i64* %EIP_write, !mcsema_real_eip !76
  %318 = load i32, i32* %EAX_read, !mcsema_real_eip !76
  %319 = sub i32 %318, 100, !mcsema_real_eip !76
  %320 = xor i32 %319, %318, !mcsema_real_eip !76
  %321 = xor i32 %320, 100, !mcsema_real_eip !76
  %322 = and i32 %321, 16, !mcsema_real_eip !76
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !76
  %324 = zext i1 %323 to i8, !mcsema_real_eip !76
  store volatile i8 %324, i8* %AF_write, !mcsema_real_eip !76
  %325 = trunc i32 %319 to i8, !mcsema_real_eip !76
  %326 = call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !76
  %327 = trunc i8 %326 to i1, !mcsema_real_eip !76
  %328 = zext i1 %327 to i8, !mcsema_real_eip !76
  %329 = xor i8 %328, 1, !mcsema_real_eip !76
  %330 = trunc i8 %329 to i1, !mcsema_real_eip !76
  %331 = zext i1 %330 to i8, !mcsema_real_eip !76
  store volatile i8 %331, i8* %PF_write, !mcsema_real_eip !76
  %332 = icmp eq i32 %319, 0, !mcsema_real_eip !76
  %333 = zext i1 %332 to i8, !mcsema_real_eip !76
  store volatile i8 %333, i8* %ZF_write, !mcsema_real_eip !76
  %334 = lshr i32 %319, 31, !mcsema_real_eip !76
  %335 = trunc i32 %334 to i1, !mcsema_real_eip !76
  %336 = zext i1 %335 to i8, !mcsema_real_eip !76
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !76
  %338 = zext i1 %337 to i8, !mcsema_real_eip !76
  store volatile i8 %338, i8* %SF_write, !mcsema_real_eip !76
  %339 = icmp ult i32 %318, 100, !mcsema_real_eip !76
  %340 = zext i1 %339 to i8, !mcsema_real_eip !76
  store volatile i8 %340, i8* %CF_write, !mcsema_real_eip !76
  %341 = xor i32 %318, 100, !mcsema_real_eip !76
  %342 = xor i32 %318, %319, !mcsema_real_eip !76
  %343 = and i32 %341, %342, !mcsema_real_eip !76
  %344 = lshr i32 %343, 31, !mcsema_real_eip !76
  %345 = trunc i32 %344 to i1, !mcsema_real_eip !76
  %346 = zext i1 %345 to i8, !mcsema_real_eip !76
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !76
  %348 = zext i1 %347 to i8, !mcsema_real_eip !76
  store volatile i8 %348, i8* %OF_write, !mcsema_real_eip !76
  %349 = zext i32 %319 to i64, !mcsema_real_eip !76
  store volatile i64 %349, i64* %EAX_write, !mcsema_real_eip !76
  store volatile i64 338, i64* %EIP_write, !mcsema_real_eip !77
  %350 = load i64, i64* %RBP_read, !mcsema_real_eip !77
  %351 = add i64 %350, -84, !mcsema_real_eip !77
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !77
  %353 = load i32, i32* %EAX_read, !mcsema_real_eip !77
  %354 = ptrtoint i64* %352 to i64, !mcsema_real_eip !77
  %355 = inttoptr i64 %354 to i32*, !mcsema_real_eip !77
  store i32 %353, i32* %355, !mcsema_real_eip !77
  store volatile i64 341, i64* %EIP_write, !mcsema_real_eip !78
  %356 = load i8, i8* %ZF_read, !mcsema_real_eip !78
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !78
  %358 = icmp eq i1 %357, true, !mcsema_real_eip !78
  br i1 %358, label %block_1b2, label %block_15b, !mcsema_real_eip !78

block_15b:                                        ; preds = %block_14c
  store volatile i64 347, i64* %EIP_write, !mcsema_real_eip !79
  br label %block_160, !mcsema_real_eip !79

block_160:                                        ; preds = %block_15b
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !80
  %359 = load i64, i64* %RBP_read, !mcsema_real_eip !80
  %360 = add i64 %359, -76, !mcsema_real_eip !80
  %361 = inttoptr i64 %360 to i64*, !mcsema_real_eip !80
  %362 = ptrtoint i64* %361 to i64, !mcsema_real_eip !80
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !80
  %364 = load i32, i32* %363, !mcsema_real_eip !80
  %365 = zext i32 %364 to i64, !mcsema_real_eip !80
  store volatile i64 %365, i64* %EAX_write, !mcsema_real_eip !80
  store volatile i64 355, i64* %EIP_write, !mcsema_real_eip !81
  %366 = load i32, i32* %EAX_read, !mcsema_real_eip !81
  %367 = sub i32 %366, 115, !mcsema_real_eip !81
  %368 = xor i32 %367, %366, !mcsema_real_eip !81
  %369 = xor i32 %368, 115, !mcsema_real_eip !81
  %370 = and i32 %369, 16, !mcsema_real_eip !81
  %371 = icmp ne i32 %370, 0, !mcsema_real_eip !81
  %372 = zext i1 %371 to i8, !mcsema_real_eip !81
  store volatile i8 %372, i8* %AF_write, !mcsema_real_eip !81
  %373 = trunc i32 %367 to i8, !mcsema_real_eip !81
  %374 = call i8 @llvm.ctpop.i8(i8 %373), !mcsema_real_eip !81
  %375 = trunc i8 %374 to i1, !mcsema_real_eip !81
  %376 = zext i1 %375 to i8, !mcsema_real_eip !81
  %377 = xor i8 %376, 1, !mcsema_real_eip !81
  %378 = trunc i8 %377 to i1, !mcsema_real_eip !81
  %379 = zext i1 %378 to i8, !mcsema_real_eip !81
  store volatile i8 %379, i8* %PF_write, !mcsema_real_eip !81
  %380 = icmp eq i32 %367, 0, !mcsema_real_eip !81
  %381 = zext i1 %380 to i8, !mcsema_real_eip !81
  store volatile i8 %381, i8* %ZF_write, !mcsema_real_eip !81
  %382 = lshr i32 %367, 31, !mcsema_real_eip !81
  %383 = trunc i32 %382 to i1, !mcsema_real_eip !81
  %384 = zext i1 %383 to i8, !mcsema_real_eip !81
  %385 = trunc i8 %384 to i1, !mcsema_real_eip !81
  %386 = zext i1 %385 to i8, !mcsema_real_eip !81
  store volatile i8 %386, i8* %SF_write, !mcsema_real_eip !81
  %387 = icmp ult i32 %366, 115, !mcsema_real_eip !81
  %388 = zext i1 %387 to i8, !mcsema_real_eip !81
  store volatile i8 %388, i8* %CF_write, !mcsema_real_eip !81
  %389 = xor i32 %366, 115, !mcsema_real_eip !81
  %390 = xor i32 %366, %367, !mcsema_real_eip !81
  %391 = and i32 %389, %390, !mcsema_real_eip !81
  %392 = lshr i32 %391, 31, !mcsema_real_eip !81
  %393 = trunc i32 %392 to i1, !mcsema_real_eip !81
  %394 = zext i1 %393 to i8, !mcsema_real_eip !81
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !81
  %396 = zext i1 %395 to i8, !mcsema_real_eip !81
  store volatile i8 %396, i8* %OF_write, !mcsema_real_eip !81
  %397 = zext i32 %367 to i64, !mcsema_real_eip !81
  store volatile i64 %397, i64* %EAX_write, !mcsema_real_eip !81
  store volatile i64 358, i64* %EIP_write, !mcsema_real_eip !82
  %398 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %399 = add i64 %398, -88, !mcsema_real_eip !82
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !82
  %401 = load i32, i32* %EAX_read, !mcsema_real_eip !82
  %402 = ptrtoint i64* %400 to i64, !mcsema_real_eip !82
  %403 = inttoptr i64 %402 to i32*, !mcsema_real_eip !82
  store i32 %401, i32* %403, !mcsema_real_eip !82
  store volatile i64 361, i64* %EIP_write, !mcsema_real_eip !83
  %404 = load i8, i8* %ZF_read, !mcsema_real_eip !83
  %405 = trunc i8 %404 to i1, !mcsema_real_eip !83
  %406 = icmp eq i1 %405, true, !mcsema_real_eip !83
  br i1 %406, label %block_196, label %block_16f, !mcsema_real_eip !83

block_16f:                                        ; preds = %block_160
  store volatile i64 367, i64* %EIP_write, !mcsema_real_eip !84
  br label %block_174, !mcsema_real_eip !84

block_174:                                        ; preds = %block_16f
  store volatile i64 372, i64* %EIP_write, !mcsema_real_eip !85
  %407 = load i64, i64* %RBP_read, !mcsema_real_eip !85
  %408 = add i64 %407, -76, !mcsema_real_eip !85
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !85
  %410 = ptrtoint i64* %409 to i64, !mcsema_real_eip !85
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !85
  %412 = load i32, i32* %411, !mcsema_real_eip !85
  %413 = zext i32 %412 to i64, !mcsema_real_eip !85
  store volatile i64 %413, i64* %EAX_write, !mcsema_real_eip !85
  store volatile i64 375, i64* %EIP_write, !mcsema_real_eip !86
  %414 = load i32, i32* %EAX_read, !mcsema_real_eip !86
  %415 = sub i32 %414, 119, !mcsema_real_eip !86
  %416 = xor i32 %415, %414, !mcsema_real_eip !86
  %417 = xor i32 %416, 119, !mcsema_real_eip !86
  %418 = and i32 %417, 16, !mcsema_real_eip !86
  %419 = icmp ne i32 %418, 0, !mcsema_real_eip !86
  %420 = zext i1 %419 to i8, !mcsema_real_eip !86
  store volatile i8 %420, i8* %AF_write, !mcsema_real_eip !86
  %421 = trunc i32 %415 to i8, !mcsema_real_eip !86
  %422 = call i8 @llvm.ctpop.i8(i8 %421), !mcsema_real_eip !86
  %423 = trunc i8 %422 to i1, !mcsema_real_eip !86
  %424 = zext i1 %423 to i8, !mcsema_real_eip !86
  %425 = xor i8 %424, 1, !mcsema_real_eip !86
  %426 = trunc i8 %425 to i1, !mcsema_real_eip !86
  %427 = zext i1 %426 to i8, !mcsema_real_eip !86
  store volatile i8 %427, i8* %PF_write, !mcsema_real_eip !86
  %428 = icmp eq i32 %415, 0, !mcsema_real_eip !86
  %429 = zext i1 %428 to i8, !mcsema_real_eip !86
  store volatile i8 %429, i8* %ZF_write, !mcsema_real_eip !86
  %430 = lshr i32 %415, 31, !mcsema_real_eip !86
  %431 = trunc i32 %430 to i1, !mcsema_real_eip !86
  %432 = zext i1 %431 to i8, !mcsema_real_eip !86
  %433 = trunc i8 %432 to i1, !mcsema_real_eip !86
  %434 = zext i1 %433 to i8, !mcsema_real_eip !86
  store volatile i8 %434, i8* %SF_write, !mcsema_real_eip !86
  %435 = icmp ult i32 %414, 119, !mcsema_real_eip !86
  %436 = zext i1 %435 to i8, !mcsema_real_eip !86
  store volatile i8 %436, i8* %CF_write, !mcsema_real_eip !86
  %437 = xor i32 %414, 119, !mcsema_real_eip !86
  %438 = xor i32 %414, %415, !mcsema_real_eip !86
  %439 = and i32 %437, %438, !mcsema_real_eip !86
  %440 = lshr i32 %439, 31, !mcsema_real_eip !86
  %441 = trunc i32 %440 to i1, !mcsema_real_eip !86
  %442 = zext i1 %441 to i8, !mcsema_real_eip !86
  %443 = trunc i8 %442 to i1, !mcsema_real_eip !86
  %444 = zext i1 %443 to i8, !mcsema_real_eip !86
  store volatile i8 %444, i8* %OF_write, !mcsema_real_eip !86
  %445 = zext i32 %415 to i64, !mcsema_real_eip !86
  store volatile i64 %445, i64* %EAX_write, !mcsema_real_eip !86
  store volatile i64 378, i64* %EIP_write, !mcsema_real_eip !87
  %446 = load i64, i64* %RBP_read, !mcsema_real_eip !87
  %447 = add i64 %446, -92, !mcsema_real_eip !87
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !87
  %449 = load i32, i32* %EAX_read, !mcsema_real_eip !87
  %450 = ptrtoint i64* %448 to i64, !mcsema_real_eip !87
  %451 = inttoptr i64 %450 to i32*, !mcsema_real_eip !87
  store i32 %449, i32* %451, !mcsema_real_eip !87
  store volatile i64 381, i64* %EIP_write, !mcsema_real_eip !88
  %452 = load i8, i8* %ZF_read, !mcsema_real_eip !88
  %453 = trunc i8 %452 to i1, !mcsema_real_eip !88
  %454 = icmp eq i1 %453, false, !mcsema_real_eip !88
  br i1 %454, label %block_1c0, label %block_183, !mcsema_real_eip !88

block_183:                                        ; preds = %block_174
  store volatile i64 387, i64* %EIP_write, !mcsema_real_eip !89
  br label %block_188, !mcsema_real_eip !89

block_188:                                        ; preds = %block_183
  store volatile i64 392, i64* %EIP_write, !mcsema_real_eip !90
  %455 = load i64, i64* %RBP_read, !mcsema_real_eip !90
  %456 = add i64 %455, -24, !mcsema_real_eip !90
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !90
  %458 = ptrtoint i64* %457 to i64, !mcsema_real_eip !90
  %459 = inttoptr i64 %458 to i32*, !mcsema_real_eip !90
  %460 = load i32, i32* %459, !mcsema_real_eip !90
  %461 = zext i32 %460 to i64, !mcsema_real_eip !90
  store volatile i64 %461, i64* %EAX_write, !mcsema_real_eip !90
  store volatile i64 395, i64* %EIP_write, !mcsema_real_eip !91
  %462 = load i32, i32* %EAX_read, !mcsema_real_eip !91
  %463 = add i32 -1, %462, !mcsema_real_eip !91
  %464 = xor i32 %463, %462, !mcsema_real_eip !91
  %465 = xor i32 %464, -1, !mcsema_real_eip !91
  %466 = and i32 %465, 16, !mcsema_real_eip !91
  %467 = icmp ne i32 %466, 0, !mcsema_real_eip !91
  %468 = zext i1 %467 to i8, !mcsema_real_eip !91
  store volatile i8 %468, i8* %AF_write, !mcsema_real_eip !91
  %469 = lshr i32 %463, 31, !mcsema_real_eip !91
  %470 = trunc i32 %469 to i1, !mcsema_real_eip !91
  %471 = zext i1 %470 to i8, !mcsema_real_eip !91
  %472 = trunc i8 %471 to i1, !mcsema_real_eip !91
  %473 = zext i1 %472 to i8, !mcsema_real_eip !91
  store volatile i8 %473, i8* %SF_write, !mcsema_real_eip !91
  %474 = icmp eq i32 %463, 0, !mcsema_real_eip !91
  %475 = zext i1 %474 to i8, !mcsema_real_eip !91
  store volatile i8 %475, i8* %ZF_write, !mcsema_real_eip !91
  %476 = xor i32 %462, -1, !mcsema_real_eip !91
  %477 = xor i32 %476, -1, !mcsema_real_eip !91
  %478 = xor i32 %462, %463, !mcsema_real_eip !91
  %479 = and i32 %477, %478, !mcsema_real_eip !91
  %480 = lshr i32 %479, 31, !mcsema_real_eip !91
  %481 = and i32 %480, 1, !mcsema_real_eip !91
  %482 = trunc i32 %481 to i1, !mcsema_real_eip !91
  %483 = zext i1 %482 to i8, !mcsema_real_eip !91
  %484 = trunc i8 %483 to i1, !mcsema_real_eip !91
  %485 = zext i1 %484 to i8, !mcsema_real_eip !91
  store volatile i8 %485, i8* %OF_write, !mcsema_real_eip !91
  %486 = trunc i32 %463 to i8, !mcsema_real_eip !91
  %487 = call i8 @llvm.ctpop.i8(i8 %486), !mcsema_real_eip !91
  %488 = trunc i8 %487 to i1, !mcsema_real_eip !91
  %489 = zext i1 %488 to i8, !mcsema_real_eip !91
  %490 = xor i8 %489, 1, !mcsema_real_eip !91
  %491 = trunc i8 %490 to i1, !mcsema_real_eip !91
  %492 = zext i1 %491 to i8, !mcsema_real_eip !91
  store volatile i8 %492, i8* %PF_write, !mcsema_real_eip !91
  %493 = icmp ult i32 %463, %462, !mcsema_real_eip !91
  %494 = zext i1 %493 to i8, !mcsema_real_eip !91
  store volatile i8 %494, i8* %CF_write, !mcsema_real_eip !91
  %495 = zext i32 %463 to i64, !mcsema_real_eip !91
  store volatile i64 %495, i64* %EAX_write, !mcsema_real_eip !91
  store volatile i64 398, i64* %EIP_write, !mcsema_real_eip !92
  %496 = load i64, i64* %RBP_read, !mcsema_real_eip !92
  %497 = add i64 %496, -24, !mcsema_real_eip !92
  %498 = inttoptr i64 %497 to i64*, !mcsema_real_eip !92
  %499 = load i32, i32* %EAX_read, !mcsema_real_eip !92
  %500 = ptrtoint i64* %498 to i64, !mcsema_real_eip !92
  %501 = inttoptr i64 %500 to i32*, !mcsema_real_eip !92
  store i32 %499, i32* %501, !mcsema_real_eip !92
  store volatile i64 401, i64* %EIP_write, !mcsema_real_eip !93
  br label %block_1f2, !mcsema_real_eip !93

block_196:                                        ; preds = %block_160
  store volatile i64 406, i64* %EIP_write, !mcsema_real_eip !94
  %502 = load i64, i64* %RBP_read, !mcsema_real_eip !94
  %503 = add i64 %502, -24, !mcsema_real_eip !94
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !94
  %505 = ptrtoint i64* %504 to i64, !mcsema_real_eip !94
  %506 = inttoptr i64 %505 to i32*, !mcsema_real_eip !94
  %507 = load i32, i32* %506, !mcsema_real_eip !94
  %508 = zext i32 %507 to i64, !mcsema_real_eip !94
  store volatile i64 %508, i64* %EAX_write, !mcsema_real_eip !94
  store volatile i64 409, i64* %EIP_write, !mcsema_real_eip !95
  %509 = load i32, i32* %EAX_read, !mcsema_real_eip !95
  %510 = add i32 1, %509, !mcsema_real_eip !95
  %511 = xor i32 %510, %509, !mcsema_real_eip !95
  %512 = xor i32 %511, 1, !mcsema_real_eip !95
  %513 = and i32 %512, 16, !mcsema_real_eip !95
  %514 = icmp ne i32 %513, 0, !mcsema_real_eip !95
  %515 = zext i1 %514 to i8, !mcsema_real_eip !95
  store volatile i8 %515, i8* %AF_write, !mcsema_real_eip !95
  %516 = lshr i32 %510, 31, !mcsema_real_eip !95
  %517 = trunc i32 %516 to i1, !mcsema_real_eip !95
  %518 = zext i1 %517 to i8, !mcsema_real_eip !95
  %519 = trunc i8 %518 to i1, !mcsema_real_eip !95
  %520 = zext i1 %519 to i8, !mcsema_real_eip !95
  store volatile i8 %520, i8* %SF_write, !mcsema_real_eip !95
  %521 = icmp eq i32 %510, 0, !mcsema_real_eip !95
  %522 = zext i1 %521 to i8, !mcsema_real_eip !95
  store volatile i8 %522, i8* %ZF_write, !mcsema_real_eip !95
  %523 = xor i32 %509, 1, !mcsema_real_eip !95
  %524 = xor i32 %523, -1, !mcsema_real_eip !95
  %525 = xor i32 %509, %510, !mcsema_real_eip !95
  %526 = and i32 %524, %525, !mcsema_real_eip !95
  %527 = lshr i32 %526, 31, !mcsema_real_eip !95
  %528 = and i32 %527, 1, !mcsema_real_eip !95
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !95
  %530 = zext i1 %529 to i8, !mcsema_real_eip !95
  %531 = trunc i8 %530 to i1, !mcsema_real_eip !95
  %532 = zext i1 %531 to i8, !mcsema_real_eip !95
  store volatile i8 %532, i8* %OF_write, !mcsema_real_eip !95
  %533 = trunc i32 %510 to i8, !mcsema_real_eip !95
  %534 = call i8 @llvm.ctpop.i8(i8 %533), !mcsema_real_eip !95
  %535 = trunc i8 %534 to i1, !mcsema_real_eip !95
  %536 = zext i1 %535 to i8, !mcsema_real_eip !95
  %537 = xor i8 %536, 1, !mcsema_real_eip !95
  %538 = trunc i8 %537 to i1, !mcsema_real_eip !95
  %539 = zext i1 %538 to i8, !mcsema_real_eip !95
  store volatile i8 %539, i8* %PF_write, !mcsema_real_eip !95
  %540 = icmp ult i32 %510, %509, !mcsema_real_eip !95
  %541 = zext i1 %540 to i8, !mcsema_real_eip !95
  store volatile i8 %541, i8* %CF_write, !mcsema_real_eip !95
  %542 = zext i32 %510 to i64, !mcsema_real_eip !95
  store volatile i64 %542, i64* %EAX_write, !mcsema_real_eip !95
  store volatile i64 412, i64* %EIP_write, !mcsema_real_eip !96
  %543 = load i64, i64* %RBP_read, !mcsema_real_eip !96
  %544 = add i64 %543, -24, !mcsema_real_eip !96
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !96
  %546 = load i32, i32* %EAX_read, !mcsema_real_eip !96
  %547 = ptrtoint i64* %545 to i64, !mcsema_real_eip !96
  %548 = inttoptr i64 %547 to i32*, !mcsema_real_eip !96
  store i32 %546, i32* %548, !mcsema_real_eip !96
  store volatile i64 415, i64* %EIP_write, !mcsema_real_eip !97
  br label %block_1f2, !mcsema_real_eip !97

block_1a4:                                        ; preds = %block_121
  store volatile i64 420, i64* %EIP_write, !mcsema_real_eip !98
  %549 = load i64, i64* %RBP_read, !mcsema_real_eip !98
  %550 = add i64 %549, -20, !mcsema_real_eip !98
  %551 = inttoptr i64 %550 to i64*, !mcsema_real_eip !98
  %552 = ptrtoint i64* %551 to i64, !mcsema_real_eip !98
  %553 = inttoptr i64 %552 to i32*, !mcsema_real_eip !98
  %554 = load i32, i32* %553, !mcsema_real_eip !98
  %555 = zext i32 %554 to i64, !mcsema_real_eip !98
  store volatile i64 %555, i64* %EAX_write, !mcsema_real_eip !98
  store volatile i64 423, i64* %EIP_write, !mcsema_real_eip !99
  %556 = load i32, i32* %EAX_read, !mcsema_real_eip !99
  %557 = add i32 -1, %556, !mcsema_real_eip !99
  %558 = xor i32 %557, %556, !mcsema_real_eip !99
  %559 = xor i32 %558, -1, !mcsema_real_eip !99
  %560 = and i32 %559, 16, !mcsema_real_eip !99
  %561 = icmp ne i32 %560, 0, !mcsema_real_eip !99
  %562 = zext i1 %561 to i8, !mcsema_real_eip !99
  store volatile i8 %562, i8* %AF_write, !mcsema_real_eip !99
  %563 = lshr i32 %557, 31, !mcsema_real_eip !99
  %564 = trunc i32 %563 to i1, !mcsema_real_eip !99
  %565 = zext i1 %564 to i8, !mcsema_real_eip !99
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !99
  %567 = zext i1 %566 to i8, !mcsema_real_eip !99
  store volatile i8 %567, i8* %SF_write, !mcsema_real_eip !99
  %568 = icmp eq i32 %557, 0, !mcsema_real_eip !99
  %569 = zext i1 %568 to i8, !mcsema_real_eip !99
  store volatile i8 %569, i8* %ZF_write, !mcsema_real_eip !99
  %570 = xor i32 %556, -1, !mcsema_real_eip !99
  %571 = xor i32 %570, -1, !mcsema_real_eip !99
  %572 = xor i32 %556, %557, !mcsema_real_eip !99
  %573 = and i32 %571, %572, !mcsema_real_eip !99
  %574 = lshr i32 %573, 31, !mcsema_real_eip !99
  %575 = and i32 %574, 1, !mcsema_real_eip !99
  %576 = trunc i32 %575 to i1, !mcsema_real_eip !99
  %577 = zext i1 %576 to i8, !mcsema_real_eip !99
  %578 = trunc i8 %577 to i1, !mcsema_real_eip !99
  %579 = zext i1 %578 to i8, !mcsema_real_eip !99
  store volatile i8 %579, i8* %OF_write, !mcsema_real_eip !99
  %580 = trunc i32 %557 to i8, !mcsema_real_eip !99
  %581 = call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !99
  %582 = trunc i8 %581 to i1, !mcsema_real_eip !99
  %583 = zext i1 %582 to i8, !mcsema_real_eip !99
  %584 = xor i8 %583, 1, !mcsema_real_eip !99
  %585 = trunc i8 %584 to i1, !mcsema_real_eip !99
  %586 = zext i1 %585 to i8, !mcsema_real_eip !99
  store volatile i8 %586, i8* %PF_write, !mcsema_real_eip !99
  %587 = icmp ult i32 %557, %556, !mcsema_real_eip !99
  %588 = zext i1 %587 to i8, !mcsema_real_eip !99
  store volatile i8 %588, i8* %CF_write, !mcsema_real_eip !99
  %589 = zext i32 %557 to i64, !mcsema_real_eip !99
  store volatile i64 %589, i64* %EAX_write, !mcsema_real_eip !99
  store volatile i64 426, i64* %EIP_write, !mcsema_real_eip !100
  %590 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %591 = add i64 %590, -20, !mcsema_real_eip !100
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !100
  %593 = load i32, i32* %EAX_read, !mcsema_real_eip !100
  %594 = ptrtoint i64* %592 to i64, !mcsema_real_eip !100
  %595 = inttoptr i64 %594 to i32*, !mcsema_real_eip !100
  store i32 %593, i32* %595, !mcsema_real_eip !100
  store volatile i64 429, i64* %EIP_write, !mcsema_real_eip !101
  br label %block_1f2, !mcsema_real_eip !101

block_1b2:                                        ; preds = %block_14c
  store volatile i64 434, i64* %EIP_write, !mcsema_real_eip !102
  %596 = load i64, i64* %RBP_read, !mcsema_real_eip !102
  %597 = add i64 %596, -20, !mcsema_real_eip !102
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !102
  %599 = ptrtoint i64* %598 to i64, !mcsema_real_eip !102
  %600 = inttoptr i64 %599 to i32*, !mcsema_real_eip !102
  %601 = load i32, i32* %600, !mcsema_real_eip !102
  %602 = zext i32 %601 to i64, !mcsema_real_eip !102
  store volatile i64 %602, i64* %EAX_write, !mcsema_real_eip !102
  store volatile i64 437, i64* %EIP_write, !mcsema_real_eip !103
  %603 = load i32, i32* %EAX_read, !mcsema_real_eip !103
  %604 = add i32 1, %603, !mcsema_real_eip !103
  %605 = xor i32 %604, %603, !mcsema_real_eip !103
  %606 = xor i32 %605, 1, !mcsema_real_eip !103
  %607 = and i32 %606, 16, !mcsema_real_eip !103
  %608 = icmp ne i32 %607, 0, !mcsema_real_eip !103
  %609 = zext i1 %608 to i8, !mcsema_real_eip !103
  store volatile i8 %609, i8* %AF_write, !mcsema_real_eip !103
  %610 = lshr i32 %604, 31, !mcsema_real_eip !103
  %611 = trunc i32 %610 to i1, !mcsema_real_eip !103
  %612 = zext i1 %611 to i8, !mcsema_real_eip !103
  %613 = trunc i8 %612 to i1, !mcsema_real_eip !103
  %614 = zext i1 %613 to i8, !mcsema_real_eip !103
  store volatile i8 %614, i8* %SF_write, !mcsema_real_eip !103
  %615 = icmp eq i32 %604, 0, !mcsema_real_eip !103
  %616 = zext i1 %615 to i8, !mcsema_real_eip !103
  store volatile i8 %616, i8* %ZF_write, !mcsema_real_eip !103
  %617 = xor i32 %603, 1, !mcsema_real_eip !103
  %618 = xor i32 %617, -1, !mcsema_real_eip !103
  %619 = xor i32 %603, %604, !mcsema_real_eip !103
  %620 = and i32 %618, %619, !mcsema_real_eip !103
  %621 = lshr i32 %620, 31, !mcsema_real_eip !103
  %622 = and i32 %621, 1, !mcsema_real_eip !103
  %623 = trunc i32 %622 to i1, !mcsema_real_eip !103
  %624 = zext i1 %623 to i8, !mcsema_real_eip !103
  %625 = trunc i8 %624 to i1, !mcsema_real_eip !103
  %626 = zext i1 %625 to i8, !mcsema_real_eip !103
  store volatile i8 %626, i8* %OF_write, !mcsema_real_eip !103
  %627 = trunc i32 %604 to i8, !mcsema_real_eip !103
  %628 = call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !103
  %629 = trunc i8 %628 to i1, !mcsema_real_eip !103
  %630 = zext i1 %629 to i8, !mcsema_real_eip !103
  %631 = xor i8 %630, 1, !mcsema_real_eip !103
  %632 = trunc i8 %631 to i1, !mcsema_real_eip !103
  %633 = zext i1 %632 to i8, !mcsema_real_eip !103
  store volatile i8 %633, i8* %PF_write, !mcsema_real_eip !103
  %634 = icmp ult i32 %604, %603, !mcsema_real_eip !103
  %635 = zext i1 %634 to i8, !mcsema_real_eip !103
  store volatile i8 %635, i8* %CF_write, !mcsema_real_eip !103
  %636 = zext i32 %604 to i64, !mcsema_real_eip !103
  store volatile i64 %636, i64* %EAX_write, !mcsema_real_eip !103
  store volatile i64 440, i64* %EIP_write, !mcsema_real_eip !104
  %637 = load i64, i64* %RBP_read, !mcsema_real_eip !104
  %638 = add i64 %637, -20, !mcsema_real_eip !104
  %639 = inttoptr i64 %638 to i64*, !mcsema_real_eip !104
  %640 = load i32, i32* %EAX_read, !mcsema_real_eip !104
  %641 = ptrtoint i64* %639 to i64, !mcsema_real_eip !104
  %642 = inttoptr i64 %641 to i32*, !mcsema_real_eip !104
  store i32 %640, i32* %642, !mcsema_real_eip !104
  store volatile i64 443, i64* %EIP_write, !mcsema_real_eip !105
  br label %block_1f2, !mcsema_real_eip !105

block_1c0:                                        ; preds = %block_174
  store volatile i64 448, i64* %EIP_write, !mcsema_real_eip !106
  %643 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !106
  %644 = add i64 %643, 5, !mcsema_real_eip !106
  store volatile i64 %644, i64* %RDI_write, !mcsema_real_eip !106
  store volatile i64 458, i64* %EIP_write, !mcsema_real_eip !107
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !107
  store volatile i64 460, i64* %EIP_write, !mcsema_real_eip !108
  %645 = load i64, i64* %RDI_read, !mcsema_real_eip !108
  %646 = load i64, i64* %RSI_read, !mcsema_real_eip !108
  %647 = load i64, i64* %RSP_read, !mcsema_real_eip !108
  %648 = sub i64 %647, 8, !mcsema_real_eip !108
  %649 = inttoptr i64 %648 to i64*, !mcsema_real_eip !108
  store i64 -2415393069852865332, i64* %649, !mcsema_real_eip !108
  store volatile i64 %648, i64* %RSP_write, !mcsema_real_eip !108
  %650 = call x86_64_sysvcc i64 @_printf(i64 %645, i64 %646), !mcsema_real_eip !108
  store volatile i64 %650, i64* %RAX_write, !mcsema_real_eip !108
  store volatile i64 465, i64* %EIP_write, !mcsema_real_eip !109
  %651 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !109
  %652 = add i64 %651, 45, !mcsema_real_eip !109
  store volatile i64 %652, i64* %RDI_write, !mcsema_real_eip !109
  store volatile i64 475, i64* %EIP_write, !mcsema_real_eip !110
  %653 = load i64, i64* %RBP_read, !mcsema_real_eip !110
  %654 = add i64 %653, -96, !mcsema_real_eip !110
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !110
  %656 = load i32, i32* %EAX_read, !mcsema_real_eip !110
  %657 = ptrtoint i64* %655 to i64, !mcsema_real_eip !110
  %658 = inttoptr i64 %657 to i32*, !mcsema_real_eip !110
  store i32 %656, i32* %658, !mcsema_real_eip !110
  store volatile i64 478, i64* %EIP_write, !mcsema_real_eip !111
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !111
  store volatile i64 480, i64* %EIP_write, !mcsema_real_eip !112
  %659 = load i64, i64* %RDI_read, !mcsema_real_eip !112
  %660 = load i64, i64* %RSI_read, !mcsema_real_eip !112
  %661 = load i64, i64* %RSP_read, !mcsema_real_eip !112
  %662 = sub i64 %661, 8, !mcsema_real_eip !112
  %663 = inttoptr i64 %662 to i64*, !mcsema_real_eip !112
  store i64 -2415393069852865332, i64* %663, !mcsema_real_eip !112
  store volatile i64 %662, i64* %RSP_write, !mcsema_real_eip !112
  %664 = call x86_64_sysvcc i64 @_printf(i64 %659, i64 %660), !mcsema_real_eip !112
  store volatile i64 %664, i64* %RAX_write, !mcsema_real_eip !112
  store volatile i64 485, i64* %EIP_write, !mcsema_real_eip !113
  %665 = zext i32 -1 to i64, !mcsema_real_eip !113
  store volatile i64 %665, i64* %EDI_write, !mcsema_real_eip !113
  store volatile i64 490, i64* %EIP_write, !mcsema_real_eip !114
  %666 = load i64, i64* %RBP_read, !mcsema_real_eip !114
  %667 = add i64 %666, -100, !mcsema_real_eip !114
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !114
  %669 = load i32, i32* %EAX_read, !mcsema_real_eip !114
  %670 = ptrtoint i64* %668 to i64, !mcsema_real_eip !114
  %671 = inttoptr i64 %670 to i32*, !mcsema_real_eip !114
  store i32 %669, i32* %671, !mcsema_real_eip !114
  store volatile i64 493, i64* %EIP_write, !mcsema_real_eip !115
  %672 = load i64, i64* %RDI_read, !mcsema_real_eip !115
  %673 = load i64, i64* %RSP_read, !mcsema_real_eip !115
  %674 = sub i64 %673, 8, !mcsema_real_eip !115
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !115
  store i64 -2415393069852865332, i64* %675, !mcsema_real_eip !115
  store volatile i64 %674, i64* %RSP_write, !mcsema_real_eip !115
  %676 = call x86_64_sysvcc i64 @_exit(i64 %672), !mcsema_real_eip !115
  store volatile i64 %676, i64* %RAX_write, !mcsema_real_eip !115
  br label %block_1f2, !mcsema_real_eip !116

block_1f2:                                        ; preds = %block_1c0, %block_1b2, %block_1a4, %block_196, %block_188
  store volatile i64 498, i64* %EIP_write, !mcsema_real_eip !116
  %677 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !116
  %678 = add i64 %677, 0, !mcsema_real_eip !116
  store volatile i64 %678, i64* %RAX_write, !mcsema_real_eip !116
  store volatile i64 508, i64* %EIP_write, !mcsema_real_eip !117
  %679 = load i64, i64* %RBP_read, !mcsema_real_eip !117
  %680 = add i64 %679, -20, !mcsema_real_eip !117
  %681 = inttoptr i64 %680 to i64*, !mcsema_real_eip !117
  %682 = ptrtoint i64* %681 to i64, !mcsema_real_eip !117
  %683 = inttoptr i64 %682 to i32*, !mcsema_real_eip !117
  %684 = load i32, i32* %683, !mcsema_real_eip !117
  %685 = sext i32 %684 to i64, !mcsema_real_eip !117
  store volatile i64 %685, i64* %RCX_write, !mcsema_real_eip !117
  store volatile i64 512, i64* %EIP_write, !mcsema_real_eip !118
  %686 = load i64, i64* %RBP_read, !mcsema_real_eip !118
  %687 = add i64 %686, -24, !mcsema_real_eip !118
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !118
  %689 = ptrtoint i64* %688 to i64, !mcsema_real_eip !118
  %690 = inttoptr i64 %689 to i32*, !mcsema_real_eip !118
  %691 = load i32, i32* %690, !mcsema_real_eip !118
  %692 = sext i32 %691 to i64, !mcsema_real_eip !118
  store volatile i64 %692, i64* %RDX_write, !mcsema_real_eip !118
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !119
  %693 = load i64, i64* %RDX_read, !mcsema_real_eip !119
  %694 = sext i64 %693 to i128, !mcsema_real_eip !119
  %695 = sext i64 11 to i128, !mcsema_real_eip !119
  %696 = mul i128 %694, %695, !mcsema_real_eip !119
  %697 = trunc i128 %696 to i64, !mcsema_real_eip !119
  %698 = sext i64 %697 to i128, !mcsema_real_eip !119
  %699 = icmp ne i128 %698, %696, !mcsema_real_eip !119
  %700 = icmp slt i64 %697, 0, !mcsema_real_eip !119
  %701 = zext i1 %700 to i8, !mcsema_real_eip !119
  store volatile i8 %701, i8* %SF_write, !mcsema_real_eip !119
  %702 = zext i1 %699 to i8, !mcsema_real_eip !119
  store volatile i8 %702, i8* %OF_write, !mcsema_real_eip !119
  %703 = zext i1 %699 to i8, !mcsema_real_eip !119
  store volatile i8 %703, i8* %CF_write, !mcsema_real_eip !119
  store volatile i64 %697, i64* %RDX_write, !mcsema_real_eip !119
  store volatile i64 520, i64* %EIP_write, !mcsema_real_eip !120
  %704 = load i64, i64* %RAX_read, !mcsema_real_eip !120
  %705 = load i64, i64* %RDX_read, !mcsema_real_eip !120
  %706 = add i64 %705, %704, !mcsema_real_eip !120
  %707 = xor i64 %706, %704, !mcsema_real_eip !120
  %708 = xor i64 %707, %705, !mcsema_real_eip !120
  %709 = and i64 %708, 16, !mcsema_real_eip !120
  %710 = icmp ne i64 %709, 0, !mcsema_real_eip !120
  %711 = zext i1 %710 to i8, !mcsema_real_eip !120
  store volatile i8 %711, i8* %AF_write, !mcsema_real_eip !120
  %712 = lshr i64 %706, 63, !mcsema_real_eip !120
  %713 = trunc i64 %712 to i1, !mcsema_real_eip !120
  %714 = zext i1 %713 to i8, !mcsema_real_eip !120
  %715 = trunc i8 %714 to i1, !mcsema_real_eip !120
  %716 = zext i1 %715 to i8, !mcsema_real_eip !120
  store volatile i8 %716, i8* %SF_write, !mcsema_real_eip !120
  %717 = icmp eq i64 %706, 0, !mcsema_real_eip !120
  %718 = zext i1 %717 to i8, !mcsema_real_eip !120
  store volatile i8 %718, i8* %ZF_write, !mcsema_real_eip !120
  %719 = xor i64 %704, %705, !mcsema_real_eip !120
  %720 = xor i64 %719, -1, !mcsema_real_eip !120
  %721 = xor i64 %704, %706, !mcsema_real_eip !120
  %722 = and i64 %720, %721, !mcsema_real_eip !120
  %723 = lshr i64 %722, 63, !mcsema_real_eip !120
  %724 = and i64 %723, 1, !mcsema_real_eip !120
  %725 = trunc i64 %724 to i1, !mcsema_real_eip !120
  %726 = zext i1 %725 to i8, !mcsema_real_eip !120
  %727 = trunc i8 %726 to i1, !mcsema_real_eip !120
  %728 = zext i1 %727 to i8, !mcsema_real_eip !120
  store volatile i8 %728, i8* %OF_write, !mcsema_real_eip !120
  %729 = trunc i64 %706 to i8, !mcsema_real_eip !120
  %730 = call i8 @llvm.ctpop.i8(i8 %729), !mcsema_real_eip !120
  %731 = trunc i8 %730 to i1, !mcsema_real_eip !120
  %732 = zext i1 %731 to i8, !mcsema_real_eip !120
  %733 = xor i8 %732, 1, !mcsema_real_eip !120
  %734 = trunc i8 %733 to i1, !mcsema_real_eip !120
  %735 = zext i1 %734 to i8, !mcsema_real_eip !120
  store volatile i8 %735, i8* %PF_write, !mcsema_real_eip !120
  %736 = icmp ult i64 %706, %704, !mcsema_real_eip !120
  %737 = zext i1 %736 to i8, !mcsema_real_eip !120
  store volatile i8 %737, i8* %CF_write, !mcsema_real_eip !120
  store volatile i64 %706, i64* %RAX_write, !mcsema_real_eip !120
  store volatile i64 523, i64* %EIP_write, !mcsema_real_eip !121
  %738 = load i64, i64* %RAX_read, !mcsema_real_eip !121
  %739 = add i64 %738, 0, !mcsema_real_eip !121
  %740 = load i64, i64* %RCX_read, !mcsema_real_eip !121
  %741 = add i64 %739, %740, !mcsema_real_eip !121
  %742 = inttoptr i64 %741 to i64*, !mcsema_real_eip !121
  %743 = ptrtoint i64* %742 to i64, !mcsema_real_eip !121
  %744 = inttoptr i64 %743 to i8*, !mcsema_real_eip !121
  %745 = load i8, i8* %744, !mcsema_real_eip !121
  %746 = sext i8 %745 to i32, !mcsema_real_eip !121
  %747 = zext i32 %746 to i64, !mcsema_real_eip !121
  store volatile i64 %747, i64* %ESI_write, !mcsema_real_eip !121
  store volatile i64 527, i64* %EIP_write, !mcsema_real_eip !122
  %748 = load i32, i32* %ESI_read, !mcsema_real_eip !122
  %749 = sub i32 %748, 35, !mcsema_real_eip !122
  %750 = xor i32 %749, %748, !mcsema_real_eip !122
  %751 = xor i32 %750, 35, !mcsema_real_eip !122
  %752 = and i32 %751, 16, !mcsema_real_eip !122
  %753 = icmp ne i32 %752, 0, !mcsema_real_eip !122
  %754 = zext i1 %753 to i8, !mcsema_real_eip !122
  store volatile i8 %754, i8* %AF_write, !mcsema_real_eip !122
  %755 = trunc i32 %749 to i8, !mcsema_real_eip !122
  %756 = call i8 @llvm.ctpop.i8(i8 %755), !mcsema_real_eip !122
  %757 = trunc i8 %756 to i1, !mcsema_real_eip !122
  %758 = zext i1 %757 to i8, !mcsema_real_eip !122
  %759 = xor i8 %758, 1, !mcsema_real_eip !122
  %760 = trunc i8 %759 to i1, !mcsema_real_eip !122
  %761 = zext i1 %760 to i8, !mcsema_real_eip !122
  store volatile i8 %761, i8* %PF_write, !mcsema_real_eip !122
  %762 = icmp eq i32 %749, 0, !mcsema_real_eip !122
  %763 = zext i1 %762 to i8, !mcsema_real_eip !122
  store volatile i8 %763, i8* %ZF_write, !mcsema_real_eip !122
  %764 = lshr i32 %749, 31, !mcsema_real_eip !122
  %765 = trunc i32 %764 to i1, !mcsema_real_eip !122
  %766 = zext i1 %765 to i8, !mcsema_real_eip !122
  %767 = trunc i8 %766 to i1, !mcsema_real_eip !122
  %768 = zext i1 %767 to i8, !mcsema_real_eip !122
  store volatile i8 %768, i8* %SF_write, !mcsema_real_eip !122
  %769 = icmp ult i32 %748, 35, !mcsema_real_eip !122
  %770 = zext i1 %769 to i8, !mcsema_real_eip !122
  store volatile i8 %770, i8* %CF_write, !mcsema_real_eip !122
  %771 = xor i32 %748, 35, !mcsema_real_eip !122
  %772 = xor i32 %748, %749, !mcsema_real_eip !122
  %773 = and i32 %771, %772, !mcsema_real_eip !122
  %774 = lshr i32 %773, 31, !mcsema_real_eip !122
  %775 = trunc i32 %774 to i1, !mcsema_real_eip !122
  %776 = zext i1 %775 to i8, !mcsema_real_eip !122
  %777 = trunc i8 %776 to i1, !mcsema_real_eip !122
  %778 = zext i1 %777 to i8, !mcsema_real_eip !122
  store volatile i8 %778, i8* %OF_write, !mcsema_real_eip !122
  store volatile i64 530, i64* %EIP_write, !mcsema_real_eip !123
  %779 = load i8, i8* %ZF_read, !mcsema_real_eip !123
  %780 = trunc i8 %779 to i1, !mcsema_real_eip !123
  %781 = icmp eq i1 %780, false, !mcsema_real_eip !123
  br i1 %781, label %block_24b, label %block_218, !mcsema_real_eip !123

block_218:                                        ; preds = %block_1f2
  store volatile i64 536, i64* %EIP_write, !mcsema_real_eip !124
  %782 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !124
  %783 = add i64 %782, 56, !mcsema_real_eip !124
  store volatile i64 %783, i64* %RDI_write, !mcsema_real_eip !124
  store volatile i64 546, i64* %EIP_write, !mcsema_real_eip !125
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !125
  store volatile i64 548, i64* %EIP_write, !mcsema_real_eip !126
  %784 = load i64, i64* %RDI_read, !mcsema_real_eip !126
  %785 = load i64, i64* %RSI_read, !mcsema_real_eip !126
  %786 = load i64, i64* %RSP_read, !mcsema_real_eip !126
  %787 = sub i64 %786, 8, !mcsema_real_eip !126
  %788 = inttoptr i64 %787 to i64*, !mcsema_real_eip !126
  store i64 -2415393069852865332, i64* %788, !mcsema_real_eip !126
  store volatile i64 %787, i64* %RSP_write, !mcsema_real_eip !126
  %789 = call x86_64_sysvcc i64 @_printf(i64 %784, i64 %785), !mcsema_real_eip !126
  store volatile i64 %789, i64* %RAX_write, !mcsema_real_eip !126
  store volatile i64 553, i64* %EIP_write, !mcsema_real_eip !127
  %790 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !127
  %791 = add i64 %790, 66, !mcsema_real_eip !127
  store volatile i64 %791, i64* %RDI_write, !mcsema_real_eip !127
  store volatile i64 563, i64* %EIP_write, !mcsema_real_eip !128
  %792 = load i64, i64* %RBP_read, !mcsema_real_eip !128
  %793 = add i64 %792, -64, !mcsema_real_eip !128
  %794 = inttoptr i64 %793 to i64*, !mcsema_real_eip !128
  %795 = ptrtoint i64* %794 to i64, !mcsema_real_eip !128
  store volatile i64 %795, i64* %RSI_write, !mcsema_real_eip !128
  store volatile i64 567, i64* %EIP_write, !mcsema_real_eip !129
  %796 = load i64, i64* %RBP_read, !mcsema_real_eip !129
  %797 = add i64 %796, -104, !mcsema_real_eip !129
  %798 = inttoptr i64 %797 to i64*, !mcsema_real_eip !129
  %799 = load i32, i32* %EAX_read, !mcsema_real_eip !129
  %800 = ptrtoint i64* %798 to i64, !mcsema_real_eip !129
  %801 = inttoptr i64 %800 to i32*, !mcsema_real_eip !129
  store i32 %799, i32* %801, !mcsema_real_eip !129
  store volatile i64 570, i64* %EIP_write, !mcsema_real_eip !130
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !130
  store volatile i64 572, i64* %EIP_write, !mcsema_real_eip !131
  %802 = load i64, i64* %RDI_read, !mcsema_real_eip !131
  %803 = load i64, i64* %RSI_read, !mcsema_real_eip !131
  %804 = load i64, i64* %RSP_read, !mcsema_real_eip !131
  %805 = sub i64 %804, 8, !mcsema_real_eip !131
  %806 = inttoptr i64 %805 to i64*, !mcsema_real_eip !131
  store i64 -2415393069852865332, i64* %806, !mcsema_real_eip !131
  store volatile i64 %805, i64* %RSP_write, !mcsema_real_eip !131
  %807 = call x86_64_sysvcc i64 @_printf(i64 %802, i64 %803), !mcsema_real_eip !131
  store volatile i64 %807, i64* %RAX_write, !mcsema_real_eip !131
  store volatile i64 577, i64* %EIP_write, !mcsema_real_eip !132
  %808 = load i32, i32* %EDI_read, !mcsema_real_eip !132
  %809 = load i32, i32* %EDI_read, !mcsema_real_eip !132
  %810 = xor i32 %808, %809, !mcsema_real_eip !132
  %811 = trunc i8 0 to i1, !mcsema_real_eip !132
  %812 = zext i1 %811 to i8, !mcsema_real_eip !132
  store volatile i8 %812, i8* %CF_write, !mcsema_real_eip !132
  %813 = trunc i8 0 to i1, !mcsema_real_eip !132
  %814 = zext i1 %813 to i8, !mcsema_real_eip !132
  store volatile i8 %814, i8* %OF_write, !mcsema_real_eip !132
  %815 = lshr i32 %810, 31, !mcsema_real_eip !132
  %816 = trunc i32 %815 to i1, !mcsema_real_eip !132
  %817 = zext i1 %816 to i8, !mcsema_real_eip !132
  %818 = trunc i8 %817 to i1, !mcsema_real_eip !132
  %819 = zext i1 %818 to i8, !mcsema_real_eip !132
  store volatile i8 %819, i8* %SF_write, !mcsema_real_eip !132
  %820 = icmp eq i32 %810, 0, !mcsema_real_eip !132
  %821 = zext i1 %820 to i8, !mcsema_real_eip !132
  store volatile i8 %821, i8* %ZF_write, !mcsema_real_eip !132
  %822 = trunc i32 %810 to i8, !mcsema_real_eip !132
  %823 = call i8 @llvm.ctpop.i8(i8 %822), !mcsema_real_eip !132
  %824 = trunc i8 %823 to i1, !mcsema_real_eip !132
  %825 = zext i1 %824 to i8, !mcsema_real_eip !132
  %826 = xor i8 %825, 1, !mcsema_real_eip !132
  %827 = trunc i8 %826 to i1, !mcsema_real_eip !132
  %828 = zext i1 %827 to i8, !mcsema_real_eip !132
  store volatile i8 %828, i8* %PF_write, !mcsema_real_eip !132
  %829 = zext i32 %810 to i64, !mcsema_real_eip !132
  store volatile i64 %829, i64* %EDI_write, !mcsema_real_eip !132
  store volatile i64 579, i64* %EIP_write, !mcsema_real_eip !133
  %830 = load i64, i64* %RBP_read, !mcsema_real_eip !133
  %831 = add i64 %830, -108, !mcsema_real_eip !133
  %832 = inttoptr i64 %831 to i64*, !mcsema_real_eip !133
  %833 = load i32, i32* %EAX_read, !mcsema_real_eip !133
  %834 = ptrtoint i64* %832 to i64, !mcsema_real_eip !133
  %835 = inttoptr i64 %834 to i32*, !mcsema_real_eip !133
  store i32 %833, i32* %835, !mcsema_real_eip !133
  store volatile i64 582, i64* %EIP_write, !mcsema_real_eip !134
  %836 = load i64, i64* %RDI_read, !mcsema_real_eip !134
  %837 = load i64, i64* %RSP_read, !mcsema_real_eip !134
  %838 = sub i64 %837, 8, !mcsema_real_eip !134
  %839 = inttoptr i64 %838 to i64*, !mcsema_real_eip !134
  store i64 -2415393069852865332, i64* %839, !mcsema_real_eip !134
  store volatile i64 %838, i64* %RSP_write, !mcsema_real_eip !134
  %840 = call x86_64_sysvcc i64 @_exit(i64 %836), !mcsema_real_eip !134
  store volatile i64 %840, i64* %RAX_write, !mcsema_real_eip !134
  br label %block_24b, !mcsema_real_eip !135

block_24b:                                        ; preds = %block_218, %block_1f2
  store volatile i64 587, i64* %EIP_write, !mcsema_real_eip !135
  %841 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !135
  %842 = add i64 %841, 0, !mcsema_real_eip !135
  store volatile i64 %842, i64* %RAX_write, !mcsema_real_eip !135
  store volatile i64 597, i64* %EIP_write, !mcsema_real_eip !136
  %843 = load i64, i64* %RBP_read, !mcsema_real_eip !136
  %844 = add i64 %843, -20, !mcsema_real_eip !136
  %845 = inttoptr i64 %844 to i64*, !mcsema_real_eip !136
  %846 = ptrtoint i64* %845 to i64, !mcsema_real_eip !136
  %847 = inttoptr i64 %846 to i32*, !mcsema_real_eip !136
  %848 = load i32, i32* %847, !mcsema_real_eip !136
  %849 = sext i32 %848 to i64, !mcsema_real_eip !136
  store volatile i64 %849, i64* %RCX_write, !mcsema_real_eip !136
  store volatile i64 601, i64* %EIP_write, !mcsema_real_eip !137
  %850 = load i64, i64* %RBP_read, !mcsema_real_eip !137
  %851 = add i64 %850, -24, !mcsema_real_eip !137
  %852 = inttoptr i64 %851 to i64*, !mcsema_real_eip !137
  %853 = ptrtoint i64* %852 to i64, !mcsema_real_eip !137
  %854 = inttoptr i64 %853 to i32*, !mcsema_real_eip !137
  %855 = load i32, i32* %854, !mcsema_real_eip !137
  %856 = sext i32 %855 to i64, !mcsema_real_eip !137
  store volatile i64 %856, i64* %RDX_write, !mcsema_real_eip !137
  store volatile i64 605, i64* %EIP_write, !mcsema_real_eip !138
  %857 = load i64, i64* %RDX_read, !mcsema_real_eip !138
  %858 = sext i64 %857 to i128, !mcsema_real_eip !138
  %859 = sext i64 11 to i128, !mcsema_real_eip !138
  %860 = mul i128 %858, %859, !mcsema_real_eip !138
  %861 = trunc i128 %860 to i64, !mcsema_real_eip !138
  %862 = sext i64 %861 to i128, !mcsema_real_eip !138
  %863 = icmp ne i128 %862, %860, !mcsema_real_eip !138
  %864 = icmp slt i64 %861, 0, !mcsema_real_eip !138
  %865 = zext i1 %864 to i8, !mcsema_real_eip !138
  store volatile i8 %865, i8* %SF_write, !mcsema_real_eip !138
  %866 = zext i1 %863 to i8, !mcsema_real_eip !138
  store volatile i8 %866, i8* %OF_write, !mcsema_real_eip !138
  %867 = zext i1 %863 to i8, !mcsema_real_eip !138
  store volatile i8 %867, i8* %CF_write, !mcsema_real_eip !138
  store volatile i64 %861, i64* %RDX_write, !mcsema_real_eip !138
  store volatile i64 609, i64* %EIP_write, !mcsema_real_eip !139
  %868 = load i64, i64* %RAX_read, !mcsema_real_eip !139
  %869 = load i64, i64* %RDX_read, !mcsema_real_eip !139
  %870 = add i64 %869, %868, !mcsema_real_eip !139
  %871 = xor i64 %870, %868, !mcsema_real_eip !139
  %872 = xor i64 %871, %869, !mcsema_real_eip !139
  %873 = and i64 %872, 16, !mcsema_real_eip !139
  %874 = icmp ne i64 %873, 0, !mcsema_real_eip !139
  %875 = zext i1 %874 to i8, !mcsema_real_eip !139
  store volatile i8 %875, i8* %AF_write, !mcsema_real_eip !139
  %876 = lshr i64 %870, 63, !mcsema_real_eip !139
  %877 = trunc i64 %876 to i1, !mcsema_real_eip !139
  %878 = zext i1 %877 to i8, !mcsema_real_eip !139
  %879 = trunc i8 %878 to i1, !mcsema_real_eip !139
  %880 = zext i1 %879 to i8, !mcsema_real_eip !139
  store volatile i8 %880, i8* %SF_write, !mcsema_real_eip !139
  %881 = icmp eq i64 %870, 0, !mcsema_real_eip !139
  %882 = zext i1 %881 to i8, !mcsema_real_eip !139
  store volatile i8 %882, i8* %ZF_write, !mcsema_real_eip !139
  %883 = xor i64 %868, %869, !mcsema_real_eip !139
  %884 = xor i64 %883, -1, !mcsema_real_eip !139
  %885 = xor i64 %868, %870, !mcsema_real_eip !139
  %886 = and i64 %884, %885, !mcsema_real_eip !139
  %887 = lshr i64 %886, 63, !mcsema_real_eip !139
  %888 = and i64 %887, 1, !mcsema_real_eip !139
  %889 = trunc i64 %888 to i1, !mcsema_real_eip !139
  %890 = zext i1 %889 to i8, !mcsema_real_eip !139
  %891 = trunc i8 %890 to i1, !mcsema_real_eip !139
  %892 = zext i1 %891 to i8, !mcsema_real_eip !139
  store volatile i8 %892, i8* %OF_write, !mcsema_real_eip !139
  %893 = trunc i64 %870 to i8, !mcsema_real_eip !139
  %894 = call i8 @llvm.ctpop.i8(i8 %893), !mcsema_real_eip !139
  %895 = trunc i8 %894 to i1, !mcsema_real_eip !139
  %896 = zext i1 %895 to i8, !mcsema_real_eip !139
  %897 = xor i8 %896, 1, !mcsema_real_eip !139
  %898 = trunc i8 %897 to i1, !mcsema_real_eip !139
  %899 = zext i1 %898 to i8, !mcsema_real_eip !139
  store volatile i8 %899, i8* %PF_write, !mcsema_real_eip !139
  %900 = icmp ult i64 %870, %868, !mcsema_real_eip !139
  %901 = zext i1 %900 to i8, !mcsema_real_eip !139
  store volatile i8 %901, i8* %CF_write, !mcsema_real_eip !139
  store volatile i64 %870, i64* %RAX_write, !mcsema_real_eip !139
  store volatile i64 612, i64* %EIP_write, !mcsema_real_eip !140
  %902 = load i64, i64* %RAX_read, !mcsema_real_eip !140
  %903 = add i64 %902, 0, !mcsema_real_eip !140
  %904 = load i64, i64* %RCX_read, !mcsema_real_eip !140
  %905 = add i64 %903, %904, !mcsema_real_eip !140
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !140
  %907 = ptrtoint i64* %906 to i64, !mcsema_real_eip !140
  %908 = inttoptr i64 %907 to i8*, !mcsema_real_eip !140
  %909 = load i8, i8* %908, !mcsema_real_eip !140
  %910 = sext i8 %909 to i32, !mcsema_real_eip !140
  %911 = zext i32 %910 to i64, !mcsema_real_eip !140
  store volatile i64 %911, i64* %ESI_write, !mcsema_real_eip !140
  store volatile i64 616, i64* %EIP_write, !mcsema_real_eip !141
  %912 = load i32, i32* %ESI_read, !mcsema_real_eip !141
  %913 = sub i32 %912, 32, !mcsema_real_eip !141
  %914 = xor i32 %913, %912, !mcsema_real_eip !141
  %915 = xor i32 %914, 32, !mcsema_real_eip !141
  %916 = and i32 %915, 16, !mcsema_real_eip !141
  %917 = icmp ne i32 %916, 0, !mcsema_real_eip !141
  %918 = zext i1 %917 to i8, !mcsema_real_eip !141
  store volatile i8 %918, i8* %AF_write, !mcsema_real_eip !141
  %919 = trunc i32 %913 to i8, !mcsema_real_eip !141
  %920 = call i8 @llvm.ctpop.i8(i8 %919), !mcsema_real_eip !141
  %921 = trunc i8 %920 to i1, !mcsema_real_eip !141
  %922 = zext i1 %921 to i8, !mcsema_real_eip !141
  %923 = xor i8 %922, 1, !mcsema_real_eip !141
  %924 = trunc i8 %923 to i1, !mcsema_real_eip !141
  %925 = zext i1 %924 to i8, !mcsema_real_eip !141
  store volatile i8 %925, i8* %PF_write, !mcsema_real_eip !141
  %926 = icmp eq i32 %913, 0, !mcsema_real_eip !141
  %927 = zext i1 %926 to i8, !mcsema_real_eip !141
  store volatile i8 %927, i8* %ZF_write, !mcsema_real_eip !141
  %928 = lshr i32 %913, 31, !mcsema_real_eip !141
  %929 = trunc i32 %928 to i1, !mcsema_real_eip !141
  %930 = zext i1 %929 to i8, !mcsema_real_eip !141
  %931 = trunc i8 %930 to i1, !mcsema_real_eip !141
  %932 = zext i1 %931 to i8, !mcsema_real_eip !141
  store volatile i8 %932, i8* %SF_write, !mcsema_real_eip !141
  %933 = icmp ult i32 %912, 32, !mcsema_real_eip !141
  %934 = zext i1 %933 to i8, !mcsema_real_eip !141
  store volatile i8 %934, i8* %CF_write, !mcsema_real_eip !141
  %935 = xor i32 %912, 32, !mcsema_real_eip !141
  %936 = xor i32 %912, %913, !mcsema_real_eip !141
  %937 = and i32 %935, %936, !mcsema_real_eip !141
  %938 = lshr i32 %937, 31, !mcsema_real_eip !141
  %939 = trunc i32 %938 to i1, !mcsema_real_eip !141
  %940 = zext i1 %939 to i8, !mcsema_real_eip !141
  %941 = trunc i8 %940 to i1, !mcsema_real_eip !141
  %942 = zext i1 %941 to i8, !mcsema_real_eip !141
  store volatile i8 %942, i8* %OF_write, !mcsema_real_eip !141
  store volatile i64 619, i64* %EIP_write, !mcsema_real_eip !142
  %943 = load i8, i8* %ZF_read, !mcsema_real_eip !142
  %944 = trunc i8 %943 to i1, !mcsema_real_eip !142
  %945 = icmp eq i1 %944, true, !mcsema_real_eip !142
  br i1 %945, label %block_2c1, label %block_271, !mcsema_real_eip !142

block_271:                                        ; preds = %block_24b
  store volatile i64 625, i64* %EIP_write, !mcsema_real_eip !143
  %946 = load i64, i64* %RBP_read, !mcsema_real_eip !143
  %947 = add i64 %946, -24, !mcsema_real_eip !143
  %948 = inttoptr i64 %947 to i64*, !mcsema_real_eip !143
  %949 = ptrtoint i64* %948 to i64, !mcsema_real_eip !143
  %950 = inttoptr i64 %949 to i32*, !mcsema_real_eip !143
  %951 = load i32, i32* %950, !mcsema_real_eip !143
  %952 = sub i32 %951, 2, !mcsema_real_eip !143
  %953 = xor i32 %952, %951, !mcsema_real_eip !143
  %954 = xor i32 %953, 2, !mcsema_real_eip !143
  %955 = and i32 %954, 16, !mcsema_real_eip !143
  %956 = icmp ne i32 %955, 0, !mcsema_real_eip !143
  %957 = zext i1 %956 to i8, !mcsema_real_eip !143
  store volatile i8 %957, i8* %AF_write, !mcsema_real_eip !143
  %958 = trunc i32 %952 to i8, !mcsema_real_eip !143
  %959 = call i8 @llvm.ctpop.i8(i8 %958), !mcsema_real_eip !143
  %960 = trunc i8 %959 to i1, !mcsema_real_eip !143
  %961 = zext i1 %960 to i8, !mcsema_real_eip !143
  %962 = xor i8 %961, 1, !mcsema_real_eip !143
  %963 = trunc i8 %962 to i1, !mcsema_real_eip !143
  %964 = zext i1 %963 to i8, !mcsema_real_eip !143
  store volatile i8 %964, i8* %PF_write, !mcsema_real_eip !143
  %965 = icmp eq i32 %952, 0, !mcsema_real_eip !143
  %966 = zext i1 %965 to i8, !mcsema_real_eip !143
  store volatile i8 %966, i8* %ZF_write, !mcsema_real_eip !143
  %967 = lshr i32 %952, 31, !mcsema_real_eip !143
  %968 = trunc i32 %967 to i1, !mcsema_real_eip !143
  %969 = zext i1 %968 to i8, !mcsema_real_eip !143
  %970 = trunc i8 %969 to i1, !mcsema_real_eip !143
  %971 = zext i1 %970 to i8, !mcsema_real_eip !143
  store volatile i8 %971, i8* %SF_write, !mcsema_real_eip !143
  %972 = icmp ult i32 %951, 2, !mcsema_real_eip !143
  %973 = zext i1 %972 to i8, !mcsema_real_eip !143
  store volatile i8 %973, i8* %CF_write, !mcsema_real_eip !143
  %974 = xor i32 %951, 2, !mcsema_real_eip !143
  %975 = xor i32 %951, %952, !mcsema_real_eip !143
  %976 = and i32 %974, %975, !mcsema_real_eip !143
  %977 = lshr i32 %976, 31, !mcsema_real_eip !143
  %978 = trunc i32 %977 to i1, !mcsema_real_eip !143
  %979 = zext i1 %978 to i8, !mcsema_real_eip !143
  %980 = trunc i8 %979 to i1, !mcsema_real_eip !143
  %981 = zext i1 %980 to i8, !mcsema_real_eip !143
  store volatile i8 %981, i8* %OF_write, !mcsema_real_eip !143
  store volatile i64 629, i64* %EIP_write, !mcsema_real_eip !144
  %982 = load i8, i8* %ZF_read, !mcsema_real_eip !144
  %983 = trunc i8 %982 to i1, !mcsema_real_eip !144
  %984 = icmp eq i1 %983, false, !mcsema_real_eip !144
  br i1 %984, label %block_2b5, label %block_27b, !mcsema_real_eip !144

block_27b:                                        ; preds = %block_271
  store volatile i64 635, i64* %EIP_write, !mcsema_real_eip !145
  %985 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !145
  %986 = add i64 %985, 0, !mcsema_real_eip !145
  store volatile i64 %986, i64* %RAX_write, !mcsema_real_eip !145
  store volatile i64 645, i64* %EIP_write, !mcsema_real_eip !146
  %987 = load i64, i64* %RBP_read, !mcsema_real_eip !146
  %988 = add i64 %987, -20, !mcsema_real_eip !146
  %989 = inttoptr i64 %988 to i64*, !mcsema_real_eip !146
  %990 = ptrtoint i64* %989 to i64, !mcsema_real_eip !146
  %991 = inttoptr i64 %990 to i32*, !mcsema_real_eip !146
  %992 = load i32, i32* %991, !mcsema_real_eip !146
  %993 = sext i32 %992 to i64, !mcsema_real_eip !146
  store volatile i64 %993, i64* %RCX_write, !mcsema_real_eip !146
  store volatile i64 649, i64* %EIP_write, !mcsema_real_eip !147
  %994 = load i64, i64* %RBP_read, !mcsema_real_eip !147
  %995 = add i64 %994, -24, !mcsema_real_eip !147
  %996 = inttoptr i64 %995 to i64*, !mcsema_real_eip !147
  %997 = ptrtoint i64* %996 to i64, !mcsema_real_eip !147
  %998 = inttoptr i64 %997 to i32*, !mcsema_real_eip !147
  %999 = load i32, i32* %998, !mcsema_real_eip !147
  %1000 = sext i32 %999 to i64, !mcsema_real_eip !147
  store volatile i64 %1000, i64* %RDX_write, !mcsema_real_eip !147
  store volatile i64 653, i64* %EIP_write, !mcsema_real_eip !148
  %1001 = load i64, i64* %RDX_read, !mcsema_real_eip !148
  %1002 = sext i64 %1001 to i128, !mcsema_real_eip !148
  %1003 = sext i64 11 to i128, !mcsema_real_eip !148
  %1004 = mul i128 %1002, %1003, !mcsema_real_eip !148
  %1005 = trunc i128 %1004 to i64, !mcsema_real_eip !148
  %1006 = sext i64 %1005 to i128, !mcsema_real_eip !148
  %1007 = icmp ne i128 %1006, %1004, !mcsema_real_eip !148
  %1008 = icmp slt i64 %1005, 0, !mcsema_real_eip !148
  %1009 = zext i1 %1008 to i8, !mcsema_real_eip !148
  store volatile i8 %1009, i8* %SF_write, !mcsema_real_eip !148
  %1010 = zext i1 %1007 to i8, !mcsema_real_eip !148
  store volatile i8 %1010, i8* %OF_write, !mcsema_real_eip !148
  %1011 = zext i1 %1007 to i8, !mcsema_real_eip !148
  store volatile i8 %1011, i8* %CF_write, !mcsema_real_eip !148
  store volatile i64 %1005, i64* %RDX_write, !mcsema_real_eip !148
  store volatile i64 657, i64* %EIP_write, !mcsema_real_eip !149
  %1012 = load i64, i64* %RAX_read, !mcsema_real_eip !149
  %1013 = load i64, i64* %RDX_read, !mcsema_real_eip !149
  %1014 = add i64 %1013, %1012, !mcsema_real_eip !149
  %1015 = xor i64 %1014, %1012, !mcsema_real_eip !149
  %1016 = xor i64 %1015, %1013, !mcsema_real_eip !149
  %1017 = and i64 %1016, 16, !mcsema_real_eip !149
  %1018 = icmp ne i64 %1017, 0, !mcsema_real_eip !149
  %1019 = zext i1 %1018 to i8, !mcsema_real_eip !149
  store volatile i8 %1019, i8* %AF_write, !mcsema_real_eip !149
  %1020 = lshr i64 %1014, 63, !mcsema_real_eip !149
  %1021 = trunc i64 %1020 to i1, !mcsema_real_eip !149
  %1022 = zext i1 %1021 to i8, !mcsema_real_eip !149
  %1023 = trunc i8 %1022 to i1, !mcsema_real_eip !149
  %1024 = zext i1 %1023 to i8, !mcsema_real_eip !149
  store volatile i8 %1024, i8* %SF_write, !mcsema_real_eip !149
  %1025 = icmp eq i64 %1014, 0, !mcsema_real_eip !149
  %1026 = zext i1 %1025 to i8, !mcsema_real_eip !149
  store volatile i8 %1026, i8* %ZF_write, !mcsema_real_eip !149
  %1027 = xor i64 %1012, %1013, !mcsema_real_eip !149
  %1028 = xor i64 %1027, -1, !mcsema_real_eip !149
  %1029 = xor i64 %1012, %1014, !mcsema_real_eip !149
  %1030 = and i64 %1028, %1029, !mcsema_real_eip !149
  %1031 = lshr i64 %1030, 63, !mcsema_real_eip !149
  %1032 = and i64 %1031, 1, !mcsema_real_eip !149
  %1033 = trunc i64 %1032 to i1, !mcsema_real_eip !149
  %1034 = zext i1 %1033 to i8, !mcsema_real_eip !149
  %1035 = trunc i8 %1034 to i1, !mcsema_real_eip !149
  %1036 = zext i1 %1035 to i8, !mcsema_real_eip !149
  store volatile i8 %1036, i8* %OF_write, !mcsema_real_eip !149
  %1037 = trunc i64 %1014 to i8, !mcsema_real_eip !149
  %1038 = call i8 @llvm.ctpop.i8(i8 %1037), !mcsema_real_eip !149
  %1039 = trunc i8 %1038 to i1, !mcsema_real_eip !149
  %1040 = zext i1 %1039 to i8, !mcsema_real_eip !149
  %1041 = xor i8 %1040, 1, !mcsema_real_eip !149
  %1042 = trunc i8 %1041 to i1, !mcsema_real_eip !149
  %1043 = zext i1 %1042 to i8, !mcsema_real_eip !149
  store volatile i8 %1043, i8* %PF_write, !mcsema_real_eip !149
  %1044 = icmp ult i64 %1014, %1012, !mcsema_real_eip !149
  %1045 = zext i1 %1044 to i8, !mcsema_real_eip !149
  store volatile i8 %1045, i8* %CF_write, !mcsema_real_eip !149
  store volatile i64 %1014, i64* %RAX_write, !mcsema_real_eip !149
  store volatile i64 660, i64* %EIP_write, !mcsema_real_eip !150
  %1046 = load i64, i64* %RAX_read, !mcsema_real_eip !150
  %1047 = add i64 %1046, 0, !mcsema_real_eip !150
  %1048 = load i64, i64* %RCX_read, !mcsema_real_eip !150
  %1049 = add i64 %1047, %1048, !mcsema_real_eip !150
  %1050 = inttoptr i64 %1049 to i64*, !mcsema_real_eip !150
  %1051 = ptrtoint i64* %1050 to i64, !mcsema_real_eip !150
  %1052 = inttoptr i64 %1051 to i8*, !mcsema_real_eip !150
  %1053 = load i8, i8* %1052, !mcsema_real_eip !150
  %1054 = sext i8 %1053 to i32, !mcsema_real_eip !150
  %1055 = zext i32 %1054 to i64, !mcsema_real_eip !150
  store volatile i64 %1055, i64* %ESI_write, !mcsema_real_eip !150
  store volatile i64 664, i64* %EIP_write, !mcsema_real_eip !151
  %1056 = load i32, i32* %ESI_read, !mcsema_real_eip !151
  %1057 = sub i32 %1056, 124, !mcsema_real_eip !151
  %1058 = xor i32 %1057, %1056, !mcsema_real_eip !151
  %1059 = xor i32 %1058, 124, !mcsema_real_eip !151
  %1060 = and i32 %1059, 16, !mcsema_real_eip !151
  %1061 = icmp ne i32 %1060, 0, !mcsema_real_eip !151
  %1062 = zext i1 %1061 to i8, !mcsema_real_eip !151
  store volatile i8 %1062, i8* %AF_write, !mcsema_real_eip !151
  %1063 = trunc i32 %1057 to i8, !mcsema_real_eip !151
  %1064 = call i8 @llvm.ctpop.i8(i8 %1063), !mcsema_real_eip !151
  %1065 = trunc i8 %1064 to i1, !mcsema_real_eip !151
  %1066 = zext i1 %1065 to i8, !mcsema_real_eip !151
  %1067 = xor i8 %1066, 1, !mcsema_real_eip !151
  %1068 = trunc i8 %1067 to i1, !mcsema_real_eip !151
  %1069 = zext i1 %1068 to i8, !mcsema_real_eip !151
  store volatile i8 %1069, i8* %PF_write, !mcsema_real_eip !151
  %1070 = icmp eq i32 %1057, 0, !mcsema_real_eip !151
  %1071 = zext i1 %1070 to i8, !mcsema_real_eip !151
  store volatile i8 %1071, i8* %ZF_write, !mcsema_real_eip !151
  %1072 = lshr i32 %1057, 31, !mcsema_real_eip !151
  %1073 = trunc i32 %1072 to i1, !mcsema_real_eip !151
  %1074 = zext i1 %1073 to i8, !mcsema_real_eip !151
  %1075 = trunc i8 %1074 to i1, !mcsema_real_eip !151
  %1076 = zext i1 %1075 to i8, !mcsema_real_eip !151
  store volatile i8 %1076, i8* %SF_write, !mcsema_real_eip !151
  %1077 = icmp ult i32 %1056, 124, !mcsema_real_eip !151
  %1078 = zext i1 %1077 to i8, !mcsema_real_eip !151
  store volatile i8 %1078, i8* %CF_write, !mcsema_real_eip !151
  %1079 = xor i32 %1056, 124, !mcsema_real_eip !151
  %1080 = xor i32 %1056, %1057, !mcsema_real_eip !151
  %1081 = and i32 %1079, %1080, !mcsema_real_eip !151
  %1082 = lshr i32 %1081, 31, !mcsema_real_eip !151
  %1083 = trunc i32 %1082 to i1, !mcsema_real_eip !151
  %1084 = zext i1 %1083 to i8, !mcsema_real_eip !151
  %1085 = trunc i8 %1084 to i1, !mcsema_real_eip !151
  %1086 = zext i1 %1085 to i8, !mcsema_real_eip !151
  store volatile i8 %1086, i8* %OF_write, !mcsema_real_eip !151
  store volatile i64 667, i64* %EIP_write, !mcsema_real_eip !152
  %1087 = load i8, i8* %ZF_read, !mcsema_real_eip !152
  %1088 = trunc i8 %1087 to i1, !mcsema_real_eip !152
  %1089 = icmp eq i1 %1088, false, !mcsema_real_eip !152
  br i1 %1089, label %block_2b5, label %block_2a1, !mcsema_real_eip !152

block_2a1:                                        ; preds = %block_27b
  store volatile i64 673, i64* %EIP_write, !mcsema_real_eip !153
  %1090 = load i64, i64* %RBP_read, !mcsema_real_eip !153
  %1091 = add i64 %1090, -20, !mcsema_real_eip !153
  %1092 = inttoptr i64 %1091 to i64*, !mcsema_real_eip !153
  %1093 = ptrtoint i64* %1092 to i64, !mcsema_real_eip !153
  %1094 = inttoptr i64 %1093 to i32*, !mcsema_real_eip !153
  %1095 = load i32, i32* %1094, !mcsema_real_eip !153
  %1096 = sub i32 %1095, 0, !mcsema_real_eip !153
  %1097 = xor i32 %1096, %1095, !mcsema_real_eip !153
  %1098 = xor i32 %1097, 0, !mcsema_real_eip !153
  %1099 = and i32 %1098, 16, !mcsema_real_eip !153
  %1100 = icmp ne i32 %1099, 0, !mcsema_real_eip !153
  %1101 = zext i1 %1100 to i8, !mcsema_real_eip !153
  store volatile i8 %1101, i8* %AF_write, !mcsema_real_eip !153
  %1102 = trunc i32 %1096 to i8, !mcsema_real_eip !153
  %1103 = call i8 @llvm.ctpop.i8(i8 %1102), !mcsema_real_eip !153
  %1104 = trunc i8 %1103 to i1, !mcsema_real_eip !153
  %1105 = zext i1 %1104 to i8, !mcsema_real_eip !153
  %1106 = xor i8 %1105, 1, !mcsema_real_eip !153
  %1107 = trunc i8 %1106 to i1, !mcsema_real_eip !153
  %1108 = zext i1 %1107 to i8, !mcsema_real_eip !153
  store volatile i8 %1108, i8* %PF_write, !mcsema_real_eip !153
  %1109 = icmp eq i32 %1096, 0, !mcsema_real_eip !153
  %1110 = zext i1 %1109 to i8, !mcsema_real_eip !153
  store volatile i8 %1110, i8* %ZF_write, !mcsema_real_eip !153
  %1111 = lshr i32 %1096, 31, !mcsema_real_eip !153
  %1112 = trunc i32 %1111 to i1, !mcsema_real_eip !153
  %1113 = zext i1 %1112 to i8, !mcsema_real_eip !153
  %1114 = trunc i8 %1113 to i1, !mcsema_real_eip !153
  %1115 = zext i1 %1114 to i8, !mcsema_real_eip !153
  store volatile i8 %1115, i8* %SF_write, !mcsema_real_eip !153
  %1116 = icmp ult i32 %1095, 0, !mcsema_real_eip !153
  %1117 = zext i1 %1116 to i8, !mcsema_real_eip !153
  store volatile i8 %1117, i8* %CF_write, !mcsema_real_eip !153
  %1118 = xor i32 %1095, 0, !mcsema_real_eip !153
  %1119 = xor i32 %1095, %1096, !mcsema_real_eip !153
  %1120 = and i32 %1118, %1119, !mcsema_real_eip !153
  %1121 = lshr i32 %1120, 31, !mcsema_real_eip !153
  %1122 = trunc i32 %1121 to i1, !mcsema_real_eip !153
  %1123 = zext i1 %1122 to i8, !mcsema_real_eip !153
  %1124 = trunc i8 %1123 to i1, !mcsema_real_eip !153
  %1125 = zext i1 %1124 to i8, !mcsema_real_eip !153
  store volatile i8 %1125, i8* %OF_write, !mcsema_real_eip !153
  store volatile i64 677, i64* %EIP_write, !mcsema_real_eip !154
  %1126 = load i8, i8* %ZF_read, !mcsema_real_eip !154
  %1127 = trunc i8 %1126 to i1, !mcsema_real_eip !154
  %1128 = icmp eq i1 %1127, true, !mcsema_real_eip !154
  %1129 = load i8, i8* %SF_read, !mcsema_real_eip !154
  %1130 = trunc i8 %1129 to i1, !mcsema_real_eip !154
  %1131 = load i8, i8* %OF_read, !mcsema_real_eip !154
  %1132 = trunc i8 %1131 to i1, !mcsema_real_eip !154
  %1133 = icmp eq i1 %1130, %1132, !mcsema_real_eip !154
  %1134 = icmp eq i1 %1133, false, !mcsema_real_eip !154
  %1135 = or i1 %1128, %1134, !mcsema_real_eip !154
  br i1 %1135, label %block_2b5, label %block_2ab, !mcsema_real_eip !154

block_2ab:                                        ; preds = %block_2a1
  store volatile i64 683, i64* %EIP_write, !mcsema_real_eip !155
  %1136 = load i64, i64* %RBP_read, !mcsema_real_eip !155
  %1137 = add i64 %1136, -20, !mcsema_real_eip !155
  %1138 = inttoptr i64 %1137 to i64*, !mcsema_real_eip !155
  %1139 = ptrtoint i64* %1138 to i64, !mcsema_real_eip !155
  %1140 = inttoptr i64 %1139 to i32*, !mcsema_real_eip !155
  %1141 = load i32, i32* %1140, !mcsema_real_eip !155
  %1142 = sub i32 %1141, 11, !mcsema_real_eip !155
  %1143 = xor i32 %1142, %1141, !mcsema_real_eip !155
  %1144 = xor i32 %1143, 11, !mcsema_real_eip !155
  %1145 = and i32 %1144, 16, !mcsema_real_eip !155
  %1146 = icmp ne i32 %1145, 0, !mcsema_real_eip !155
  %1147 = zext i1 %1146 to i8, !mcsema_real_eip !155
  store volatile i8 %1147, i8* %AF_write, !mcsema_real_eip !155
  %1148 = trunc i32 %1142 to i8, !mcsema_real_eip !155
  %1149 = call i8 @llvm.ctpop.i8(i8 %1148), !mcsema_real_eip !155
  %1150 = trunc i8 %1149 to i1, !mcsema_real_eip !155
  %1151 = zext i1 %1150 to i8, !mcsema_real_eip !155
  %1152 = xor i8 %1151, 1, !mcsema_real_eip !155
  %1153 = trunc i8 %1152 to i1, !mcsema_real_eip !155
  %1154 = zext i1 %1153 to i8, !mcsema_real_eip !155
  store volatile i8 %1154, i8* %PF_write, !mcsema_real_eip !155
  %1155 = icmp eq i32 %1142, 0, !mcsema_real_eip !155
  %1156 = zext i1 %1155 to i8, !mcsema_real_eip !155
  store volatile i8 %1156, i8* %ZF_write, !mcsema_real_eip !155
  %1157 = lshr i32 %1142, 31, !mcsema_real_eip !155
  %1158 = trunc i32 %1157 to i1, !mcsema_real_eip !155
  %1159 = zext i1 %1158 to i8, !mcsema_real_eip !155
  %1160 = trunc i8 %1159 to i1, !mcsema_real_eip !155
  %1161 = zext i1 %1160 to i8, !mcsema_real_eip !155
  store volatile i8 %1161, i8* %SF_write, !mcsema_real_eip !155
  %1162 = icmp ult i32 %1141, 11, !mcsema_real_eip !155
  %1163 = zext i1 %1162 to i8, !mcsema_real_eip !155
  store volatile i8 %1163, i8* %CF_write, !mcsema_real_eip !155
  %1164 = xor i32 %1141, 11, !mcsema_real_eip !155
  %1165 = xor i32 %1141, %1142, !mcsema_real_eip !155
  %1166 = and i32 %1164, %1165, !mcsema_real_eip !155
  %1167 = lshr i32 %1166, 31, !mcsema_real_eip !155
  %1168 = trunc i32 %1167 to i1, !mcsema_real_eip !155
  %1169 = zext i1 %1168 to i8, !mcsema_real_eip !155
  %1170 = trunc i8 %1169 to i1, !mcsema_real_eip !155
  %1171 = zext i1 %1170 to i8, !mcsema_real_eip !155
  store volatile i8 %1171, i8* %OF_write, !mcsema_real_eip !155
  store volatile i64 687, i64* %EIP_write, !mcsema_real_eip !156
  %1172 = load i8, i8* %SF_read, !mcsema_real_eip !156
  %1173 = trunc i8 %1172 to i1, !mcsema_real_eip !156
  %1174 = load i8, i8* %OF_read, !mcsema_real_eip !156
  %1175 = trunc i8 %1174 to i1, !mcsema_real_eip !156
  %1176 = icmp eq i1 %1173, %1175, !mcsema_real_eip !156
  %1177 = icmp eq i1 %1176, false, !mcsema_real_eip !156
  br i1 %1177, label %block_2c1, label %block_2b5, !mcsema_real_eip !156

block_2b5:                                        ; preds = %block_2ab, %block_2a1, %block_27b, %block_271
  store volatile i64 693, i64* %EIP_write, !mcsema_real_eip !157
  %1178 = load i64, i64* %RBP_read, !mcsema_real_eip !157
  %1179 = add i64 %1178, -28, !mcsema_real_eip !157
  %1180 = inttoptr i64 %1179 to i64*, !mcsema_real_eip !157
  %1181 = ptrtoint i64* %1180 to i64, !mcsema_real_eip !157
  %1182 = inttoptr i64 %1181 to i32*, !mcsema_real_eip !157
  %1183 = load i32, i32* %1182, !mcsema_real_eip !157
  %1184 = zext i32 %1183 to i64, !mcsema_real_eip !157
  store volatile i64 %1184, i64* %EAX_write, !mcsema_real_eip !157
  store volatile i64 696, i64* %EIP_write, !mcsema_real_eip !158
  %1185 = load i64, i64* %RBP_read, !mcsema_real_eip !158
  %1186 = add i64 %1185, -20, !mcsema_real_eip !158
  %1187 = inttoptr i64 %1186 to i64*, !mcsema_real_eip !158
  %1188 = load i32, i32* %EAX_read, !mcsema_real_eip !158
  %1189 = ptrtoint i64* %1187 to i64, !mcsema_real_eip !158
  %1190 = inttoptr i64 %1189 to i32*, !mcsema_real_eip !158
  store i32 %1188, i32* %1190, !mcsema_real_eip !158
  store volatile i64 699, i64* %EIP_write, !mcsema_real_eip !159
  %1191 = load i64, i64* %RBP_read, !mcsema_real_eip !159
  %1192 = add i64 %1191, -32, !mcsema_real_eip !159
  %1193 = inttoptr i64 %1192 to i64*, !mcsema_real_eip !159
  %1194 = ptrtoint i64* %1193 to i64, !mcsema_real_eip !159
  %1195 = inttoptr i64 %1194 to i32*, !mcsema_real_eip !159
  %1196 = load i32, i32* %1195, !mcsema_real_eip !159
  %1197 = zext i32 %1196 to i64, !mcsema_real_eip !159
  store volatile i64 %1197, i64* %EAX_write, !mcsema_real_eip !159
  store volatile i64 702, i64* %EIP_write, !mcsema_real_eip !160
  %1198 = load i64, i64* %RBP_read, !mcsema_real_eip !160
  %1199 = add i64 %1198, -24, !mcsema_real_eip !160
  %1200 = inttoptr i64 %1199 to i64*, !mcsema_real_eip !160
  %1201 = load i32, i32* %EAX_read, !mcsema_real_eip !160
  %1202 = ptrtoint i64* %1200 to i64, !mcsema_real_eip !160
  %1203 = inttoptr i64 %1202 to i32*, !mcsema_real_eip !160
  store i32 %1201, i32* %1203, !mcsema_real_eip !160
  br label %block_2c1, !mcsema_real_eip !161

block_2c1:                                        ; preds = %block_2b5, %block_2ab, %block_24b
  store volatile i64 705, i64* %EIP_write, !mcsema_real_eip !161
  %1204 = load i64, i64* %RBP_read, !mcsema_real_eip !161
  %1205 = add i64 %1204, -28, !mcsema_real_eip !161
  %1206 = inttoptr i64 %1205 to i64*, !mcsema_real_eip !161
  %1207 = ptrtoint i64* %1206 to i64, !mcsema_real_eip !161
  %1208 = inttoptr i64 %1207 to i32*, !mcsema_real_eip !161
  %1209 = load i32, i32* %1208, !mcsema_real_eip !161
  %1210 = zext i32 %1209 to i64, !mcsema_real_eip !161
  store volatile i64 %1210, i64* %EAX_write, !mcsema_real_eip !161
  store volatile i64 708, i64* %EIP_write, !mcsema_real_eip !162
  %1211 = load i64, i64* %RBP_read, !mcsema_real_eip !162
  %1212 = add i64 %1211, -20, !mcsema_real_eip !162
  %1213 = inttoptr i64 %1212 to i64*, !mcsema_real_eip !162
  %1214 = load i32, i32* %EAX_read, !mcsema_real_eip !162
  %1215 = ptrtoint i64* %1213 to i64, !mcsema_real_eip !162
  %1216 = inttoptr i64 %1215 to i32*, !mcsema_real_eip !162
  %1217 = load i32, i32* %1216, !mcsema_real_eip !162
  %1218 = sub i32 %1214, %1217, !mcsema_real_eip !162
  %1219 = xor i32 %1218, %1214, !mcsema_real_eip !162
  %1220 = xor i32 %1219, %1217, !mcsema_real_eip !162
  %1221 = and i32 %1220, 16, !mcsema_real_eip !162
  %1222 = icmp ne i32 %1221, 0, !mcsema_real_eip !162
  %1223 = zext i1 %1222 to i8, !mcsema_real_eip !162
  store volatile i8 %1223, i8* %AF_write, !mcsema_real_eip !162
  %1224 = trunc i32 %1218 to i8, !mcsema_real_eip !162
  %1225 = call i8 @llvm.ctpop.i8(i8 %1224), !mcsema_real_eip !162
  %1226 = trunc i8 %1225 to i1, !mcsema_real_eip !162
  %1227 = zext i1 %1226 to i8, !mcsema_real_eip !162
  %1228 = xor i8 %1227, 1, !mcsema_real_eip !162
  %1229 = trunc i8 %1228 to i1, !mcsema_real_eip !162
  %1230 = zext i1 %1229 to i8, !mcsema_real_eip !162
  store volatile i8 %1230, i8* %PF_write, !mcsema_real_eip !162
  %1231 = icmp eq i32 %1218, 0, !mcsema_real_eip !162
  %1232 = zext i1 %1231 to i8, !mcsema_real_eip !162
  store volatile i8 %1232, i8* %ZF_write, !mcsema_real_eip !162
  %1233 = lshr i32 %1218, 31, !mcsema_real_eip !162
  %1234 = trunc i32 %1233 to i1, !mcsema_real_eip !162
  %1235 = zext i1 %1234 to i8, !mcsema_real_eip !162
  %1236 = trunc i8 %1235 to i1, !mcsema_real_eip !162
  %1237 = zext i1 %1236 to i8, !mcsema_real_eip !162
  store volatile i8 %1237, i8* %SF_write, !mcsema_real_eip !162
  %1238 = icmp ult i32 %1214, %1217, !mcsema_real_eip !162
  %1239 = zext i1 %1238 to i8, !mcsema_real_eip !162
  store volatile i8 %1239, i8* %CF_write, !mcsema_real_eip !162
  %1240 = xor i32 %1214, %1217, !mcsema_real_eip !162
  %1241 = xor i32 %1214, %1218, !mcsema_real_eip !162
  %1242 = and i32 %1240, %1241, !mcsema_real_eip !162
  %1243 = lshr i32 %1242, 31, !mcsema_real_eip !162
  %1244 = trunc i32 %1243 to i1, !mcsema_real_eip !162
  %1245 = zext i1 %1244 to i8, !mcsema_real_eip !162
  %1246 = trunc i8 %1245 to i1, !mcsema_real_eip !162
  %1247 = zext i1 %1246 to i8, !mcsema_real_eip !162
  store volatile i8 %1247, i8* %OF_write, !mcsema_real_eip !162
  store volatile i64 711, i64* %EIP_write, !mcsema_real_eip !163
  %1248 = load i8, i8* %ZF_read, !mcsema_real_eip !163
  %1249 = trunc i8 %1248 to i1, !mcsema_real_eip !163
  %1250 = icmp eq i1 %1249, false, !mcsema_real_eip !163
  br i1 %1250, label %block_2f9, label %block_2cd, !mcsema_real_eip !163

block_2cd:                                        ; preds = %block_2c1
  store volatile i64 717, i64* %EIP_write, !mcsema_real_eip !164
  %1251 = load i64, i64* %RBP_read, !mcsema_real_eip !164
  %1252 = add i64 %1251, -32, !mcsema_real_eip !164
  %1253 = inttoptr i64 %1252 to i64*, !mcsema_real_eip !164
  %1254 = ptrtoint i64* %1253 to i64, !mcsema_real_eip !164
  %1255 = inttoptr i64 %1254 to i32*, !mcsema_real_eip !164
  %1256 = load i32, i32* %1255, !mcsema_real_eip !164
  %1257 = zext i32 %1256 to i64, !mcsema_real_eip !164
  store volatile i64 %1257, i64* %EAX_write, !mcsema_real_eip !164
  store volatile i64 720, i64* %EIP_write, !mcsema_real_eip !165
  %1258 = load i64, i64* %RBP_read, !mcsema_real_eip !165
  %1259 = add i64 %1258, -24, !mcsema_real_eip !165
  %1260 = inttoptr i64 %1259 to i64*, !mcsema_real_eip !165
  %1261 = load i32, i32* %EAX_read, !mcsema_real_eip !165
  %1262 = ptrtoint i64* %1260 to i64, !mcsema_real_eip !165
  %1263 = inttoptr i64 %1262 to i32*, !mcsema_real_eip !165
  %1264 = load i32, i32* %1263, !mcsema_real_eip !165
  %1265 = sub i32 %1261, %1264, !mcsema_real_eip !165
  %1266 = xor i32 %1265, %1261, !mcsema_real_eip !165
  %1267 = xor i32 %1266, %1264, !mcsema_real_eip !165
  %1268 = and i32 %1267, 16, !mcsema_real_eip !165
  %1269 = icmp ne i32 %1268, 0, !mcsema_real_eip !165
  %1270 = zext i1 %1269 to i8, !mcsema_real_eip !165
  store volatile i8 %1270, i8* %AF_write, !mcsema_real_eip !165
  %1271 = trunc i32 %1265 to i8, !mcsema_real_eip !165
  %1272 = call i8 @llvm.ctpop.i8(i8 %1271), !mcsema_real_eip !165
  %1273 = trunc i8 %1272 to i1, !mcsema_real_eip !165
  %1274 = zext i1 %1273 to i8, !mcsema_real_eip !165
  %1275 = xor i8 %1274, 1, !mcsema_real_eip !165
  %1276 = trunc i8 %1275 to i1, !mcsema_real_eip !165
  %1277 = zext i1 %1276 to i8, !mcsema_real_eip !165
  store volatile i8 %1277, i8* %PF_write, !mcsema_real_eip !165
  %1278 = icmp eq i32 %1265, 0, !mcsema_real_eip !165
  %1279 = zext i1 %1278 to i8, !mcsema_real_eip !165
  store volatile i8 %1279, i8* %ZF_write, !mcsema_real_eip !165
  %1280 = lshr i32 %1265, 31, !mcsema_real_eip !165
  %1281 = trunc i32 %1280 to i1, !mcsema_real_eip !165
  %1282 = zext i1 %1281 to i8, !mcsema_real_eip !165
  %1283 = trunc i8 %1282 to i1, !mcsema_real_eip !165
  %1284 = zext i1 %1283 to i8, !mcsema_real_eip !165
  store volatile i8 %1284, i8* %SF_write, !mcsema_real_eip !165
  %1285 = icmp ult i32 %1261, %1264, !mcsema_real_eip !165
  %1286 = zext i1 %1285 to i8, !mcsema_real_eip !165
  store volatile i8 %1286, i8* %CF_write, !mcsema_real_eip !165
  %1287 = xor i32 %1261, %1264, !mcsema_real_eip !165
  %1288 = xor i32 %1261, %1265, !mcsema_real_eip !165
  %1289 = and i32 %1287, %1288, !mcsema_real_eip !165
  %1290 = lshr i32 %1289, 31, !mcsema_real_eip !165
  %1291 = trunc i32 %1290 to i1, !mcsema_real_eip !165
  %1292 = zext i1 %1291 to i8, !mcsema_real_eip !165
  %1293 = trunc i8 %1292 to i1, !mcsema_real_eip !165
  %1294 = zext i1 %1293 to i8, !mcsema_real_eip !165
  store volatile i8 %1294, i8* %OF_write, !mcsema_real_eip !165
  store volatile i64 723, i64* %EIP_write, !mcsema_real_eip !166
  %1295 = load i8, i8* %ZF_read, !mcsema_real_eip !166
  %1296 = trunc i8 %1295 to i1, !mcsema_real_eip !166
  %1297 = icmp eq i1 %1296, false, !mcsema_real_eip !166
  br i1 %1297, label %block_2f9, label %block_2d9, !mcsema_real_eip !166

block_2d9:                                        ; preds = %block_2cd
  store volatile i64 729, i64* %EIP_write, !mcsema_real_eip !167
  %1298 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !167
  %1299 = add i64 %1298, 85, !mcsema_real_eip !167
  store volatile i64 %1299, i64* %RDI_write, !mcsema_real_eip !167
  store volatile i64 739, i64* %EIP_write, !mcsema_real_eip !168
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !168
  store volatile i64 741, i64* %EIP_write, !mcsema_real_eip !169
  %1300 = load i64, i64* %RDI_read, !mcsema_real_eip !169
  %1301 = load i64, i64* %RSI_read, !mcsema_real_eip !169
  %1302 = load i64, i64* %RSP_read, !mcsema_real_eip !169
  %1303 = sub i64 %1302, 8, !mcsema_real_eip !169
  %1304 = inttoptr i64 %1303 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %1304, !mcsema_real_eip !169
  store volatile i64 %1303, i64* %RSP_write, !mcsema_real_eip !169
  %1305 = call x86_64_sysvcc i64 @_printf(i64 %1300, i64 %1301), !mcsema_real_eip !169
  store volatile i64 %1305, i64* %RAX_write, !mcsema_real_eip !169
  store volatile i64 746, i64* %EIP_write, !mcsema_real_eip !170
  %1306 = load i64, i64* %RBP_read, !mcsema_real_eip !170
  %1307 = add i64 %1306, -4, !mcsema_real_eip !170
  %1308 = inttoptr i64 %1307 to i64*, !mcsema_real_eip !170
  %1309 = ptrtoint i64* %1308 to i64, !mcsema_real_eip !170
  %1310 = inttoptr i64 %1309 to i32*, !mcsema_real_eip !170
  store i32 2, i32* %1310, !mcsema_real_eip !170
  store volatile i64 753, i64* %EIP_write, !mcsema_real_eip !171
  %1311 = load i64, i64* %RBP_read, !mcsema_real_eip !171
  %1312 = add i64 %1311, -112, !mcsema_real_eip !171
  %1313 = inttoptr i64 %1312 to i64*, !mcsema_real_eip !171
  %1314 = load i32, i32* %EAX_read, !mcsema_real_eip !171
  %1315 = ptrtoint i64* %1313 to i64, !mcsema_real_eip !171
  %1316 = inttoptr i64 %1315 to i32*, !mcsema_real_eip !171
  store i32 %1314, i32* %1316, !mcsema_real_eip !171
  store volatile i64 756, i64* %EIP_write, !mcsema_real_eip !172
  br label %block_344, !mcsema_real_eip !172

block_2f9:                                        ; preds = %block_2cd, %block_2c1
  store volatile i64 761, i64* %EIP_write, !mcsema_real_eip !173
  %1317 = ptrtoint %0* @data_350 to i64, !mcsema_real_eip !173
  %1318 = add i64 %1317, 0, !mcsema_real_eip !173
  store volatile i64 %1318, i64* %RAX_write, !mcsema_real_eip !173
  store volatile i64 771, i64* %EIP_write, !mcsema_real_eip !174
  %1319 = load i64, i64* %RBP_read, !mcsema_real_eip !174
  %1320 = add i64 %1319, -20, !mcsema_real_eip !174
  %1321 = inttoptr i64 %1320 to i64*, !mcsema_real_eip !174
  %1322 = ptrtoint i64* %1321 to i64, !mcsema_real_eip !174
  %1323 = inttoptr i64 %1322 to i32*, !mcsema_real_eip !174
  %1324 = load i32, i32* %1323, !mcsema_real_eip !174
  %1325 = sext i32 %1324 to i64, !mcsema_real_eip !174
  store volatile i64 %1325, i64* %RCX_write, !mcsema_real_eip !174
  store volatile i64 775, i64* %EIP_write, !mcsema_real_eip !175
  %1326 = load i64, i64* %RBP_read, !mcsema_real_eip !175
  %1327 = add i64 %1326, -24, !mcsema_real_eip !175
  %1328 = inttoptr i64 %1327 to i64*, !mcsema_real_eip !175
  %1329 = ptrtoint i64* %1328 to i64, !mcsema_real_eip !175
  %1330 = inttoptr i64 %1329 to i32*, !mcsema_real_eip !175
  %1331 = load i32, i32* %1330, !mcsema_real_eip !175
  %1332 = sext i32 %1331 to i64, !mcsema_real_eip !175
  store volatile i64 %1332, i64* %RDX_write, !mcsema_real_eip !175
  store volatile i64 779, i64* %EIP_write, !mcsema_real_eip !176
  %1333 = load i64, i64* %RDX_read, !mcsema_real_eip !176
  %1334 = sext i64 %1333 to i128, !mcsema_real_eip !176
  %1335 = sext i64 11 to i128, !mcsema_real_eip !176
  %1336 = mul i128 %1334, %1335, !mcsema_real_eip !176
  %1337 = trunc i128 %1336 to i64, !mcsema_real_eip !176
  %1338 = sext i64 %1337 to i128, !mcsema_real_eip !176
  %1339 = icmp ne i128 %1338, %1336, !mcsema_real_eip !176
  %1340 = icmp slt i64 %1337, 0, !mcsema_real_eip !176
  %1341 = zext i1 %1340 to i8, !mcsema_real_eip !176
  store volatile i8 %1341, i8* %SF_write, !mcsema_real_eip !176
  %1342 = zext i1 %1339 to i8, !mcsema_real_eip !176
  store volatile i8 %1342, i8* %OF_write, !mcsema_real_eip !176
  %1343 = zext i1 %1339 to i8, !mcsema_real_eip !176
  store volatile i8 %1343, i8* %CF_write, !mcsema_real_eip !176
  store volatile i64 %1337, i64* %RDX_write, !mcsema_real_eip !176
  store volatile i64 783, i64* %EIP_write, !mcsema_real_eip !177
  %1344 = load i64, i64* %RAX_read, !mcsema_real_eip !177
  %1345 = load i64, i64* %RDX_read, !mcsema_real_eip !177
  %1346 = add i64 %1345, %1344, !mcsema_real_eip !177
  %1347 = xor i64 %1346, %1344, !mcsema_real_eip !177
  %1348 = xor i64 %1347, %1345, !mcsema_real_eip !177
  %1349 = and i64 %1348, 16, !mcsema_real_eip !177
  %1350 = icmp ne i64 %1349, 0, !mcsema_real_eip !177
  %1351 = zext i1 %1350 to i8, !mcsema_real_eip !177
  store volatile i8 %1351, i8* %AF_write, !mcsema_real_eip !177
  %1352 = lshr i64 %1346, 63, !mcsema_real_eip !177
  %1353 = trunc i64 %1352 to i1, !mcsema_real_eip !177
  %1354 = zext i1 %1353 to i8, !mcsema_real_eip !177
  %1355 = trunc i8 %1354 to i1, !mcsema_real_eip !177
  %1356 = zext i1 %1355 to i8, !mcsema_real_eip !177
  store volatile i8 %1356, i8* %SF_write, !mcsema_real_eip !177
  %1357 = icmp eq i64 %1346, 0, !mcsema_real_eip !177
  %1358 = zext i1 %1357 to i8, !mcsema_real_eip !177
  store volatile i8 %1358, i8* %ZF_write, !mcsema_real_eip !177
  %1359 = xor i64 %1344, %1345, !mcsema_real_eip !177
  %1360 = xor i64 %1359, -1, !mcsema_real_eip !177
  %1361 = xor i64 %1344, %1346, !mcsema_real_eip !177
  %1362 = and i64 %1360, %1361, !mcsema_real_eip !177
  %1363 = lshr i64 %1362, 63, !mcsema_real_eip !177
  %1364 = and i64 %1363, 1, !mcsema_real_eip !177
  %1365 = trunc i64 %1364 to i1, !mcsema_real_eip !177
  %1366 = zext i1 %1365 to i8, !mcsema_real_eip !177
  %1367 = trunc i8 %1366 to i1, !mcsema_real_eip !177
  %1368 = zext i1 %1367 to i8, !mcsema_real_eip !177
  store volatile i8 %1368, i8* %OF_write, !mcsema_real_eip !177
  %1369 = trunc i64 %1346 to i8, !mcsema_real_eip !177
  %1370 = call i8 @llvm.ctpop.i8(i8 %1369), !mcsema_real_eip !177
  %1371 = trunc i8 %1370 to i1, !mcsema_real_eip !177
  %1372 = zext i1 %1371 to i8, !mcsema_real_eip !177
  %1373 = xor i8 %1372, 1, !mcsema_real_eip !177
  %1374 = trunc i8 %1373 to i1, !mcsema_real_eip !177
  %1375 = zext i1 %1374 to i8, !mcsema_real_eip !177
  store volatile i8 %1375, i8* %PF_write, !mcsema_real_eip !177
  %1376 = icmp ult i64 %1346, %1344, !mcsema_real_eip !177
  %1377 = zext i1 %1376 to i8, !mcsema_real_eip !177
  store volatile i8 %1377, i8* %CF_write, !mcsema_real_eip !177
  store volatile i64 %1346, i64* %RAX_write, !mcsema_real_eip !177
  store volatile i64 786, i64* %EIP_write, !mcsema_real_eip !178
  %1378 = load i64, i64* %RAX_read, !mcsema_real_eip !178
  %1379 = add i64 %1378, 0, !mcsema_real_eip !178
  %1380 = load i64, i64* %RCX_read, !mcsema_real_eip !178
  %1381 = add i64 %1379, %1380, !mcsema_real_eip !178
  %1382 = inttoptr i64 %1381 to i64*, !mcsema_real_eip !178
  %1383 = ptrtoint i64* %1382 to i64, !mcsema_real_eip !178
  %1384 = inttoptr i64 %1383 to i8*, !mcsema_real_eip !178
  store i8 88, i8* %1384, !mcsema_real_eip !178
  store volatile i64 790, i64* %EIP_write, !mcsema_real_eip !179
  %1385 = load i64, i64* %RSP_read, !mcsema_real_eip !179
  %1386 = sub i64 %1385, 8, !mcsema_real_eip !179
  %1387 = inttoptr i64 %1386 to i64*, !mcsema_real_eip !179
  store i64 795, i64* %1387, !mcsema_real_eip !179
  store volatile i64 %1386, i64* %RSP_write, !mcsema_real_eip !179
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !179
  store volatile i64 795, i64* %EIP_write, !mcsema_real_eip !180
  %1388 = load i64, i64* %RBP_read, !mcsema_real_eip !180
  %1389 = add i64 %1388, -36, !mcsema_real_eip !180
  %1390 = inttoptr i64 %1389 to i64*, !mcsema_real_eip !180
  %1391 = ptrtoint i64* %1390 to i64, !mcsema_real_eip !180
  %1392 = inttoptr i64 %1391 to i32*, !mcsema_real_eip !180
  %1393 = load i32, i32* %1392, !mcsema_real_eip !180
  %1394 = zext i32 %1393 to i64, !mcsema_real_eip !180
  store volatile i64 %1394, i64* %ESI_write, !mcsema_real_eip !180
  store volatile i64 798, i64* %EIP_write, !mcsema_real_eip !181
  %1395 = load i32, i32* %ESI_read, !mcsema_real_eip !181
  %1396 = add i32 1, %1395, !mcsema_real_eip !181
  %1397 = xor i32 %1396, %1395, !mcsema_real_eip !181
  %1398 = xor i32 %1397, 1, !mcsema_real_eip !181
  %1399 = and i32 %1398, 16, !mcsema_real_eip !181
  %1400 = icmp ne i32 %1399, 0, !mcsema_real_eip !181
  %1401 = zext i1 %1400 to i8, !mcsema_real_eip !181
  store volatile i8 %1401, i8* %AF_write, !mcsema_real_eip !181
  %1402 = lshr i32 %1396, 31, !mcsema_real_eip !181
  %1403 = trunc i32 %1402 to i1, !mcsema_real_eip !181
  %1404 = zext i1 %1403 to i8, !mcsema_real_eip !181
  %1405 = trunc i8 %1404 to i1, !mcsema_real_eip !181
  %1406 = zext i1 %1405 to i8, !mcsema_real_eip !181
  store volatile i8 %1406, i8* %SF_write, !mcsema_real_eip !181
  %1407 = icmp eq i32 %1396, 0, !mcsema_real_eip !181
  %1408 = zext i1 %1407 to i8, !mcsema_real_eip !181
  store volatile i8 %1408, i8* %ZF_write, !mcsema_real_eip !181
  %1409 = xor i32 %1395, 1, !mcsema_real_eip !181
  %1410 = xor i32 %1409, -1, !mcsema_real_eip !181
  %1411 = xor i32 %1395, %1396, !mcsema_real_eip !181
  %1412 = and i32 %1410, %1411, !mcsema_real_eip !181
  %1413 = lshr i32 %1412, 31, !mcsema_real_eip !181
  %1414 = and i32 %1413, 1, !mcsema_real_eip !181
  %1415 = trunc i32 %1414 to i1, !mcsema_real_eip !181
  %1416 = zext i1 %1415 to i8, !mcsema_real_eip !181
  %1417 = trunc i8 %1416 to i1, !mcsema_real_eip !181
  %1418 = zext i1 %1417 to i8, !mcsema_real_eip !181
  store volatile i8 %1418, i8* %OF_write, !mcsema_real_eip !181
  %1419 = trunc i32 %1396 to i8, !mcsema_real_eip !181
  %1420 = call i8 @llvm.ctpop.i8(i8 %1419), !mcsema_real_eip !181
  %1421 = trunc i8 %1420 to i1, !mcsema_real_eip !181
  %1422 = zext i1 %1421 to i8, !mcsema_real_eip !181
  %1423 = xor i8 %1422, 1, !mcsema_real_eip !181
  %1424 = trunc i8 %1423 to i1, !mcsema_real_eip !181
  %1425 = zext i1 %1424 to i8, !mcsema_real_eip !181
  store volatile i8 %1425, i8* %PF_write, !mcsema_real_eip !181
  %1426 = icmp ult i32 %1396, %1395, !mcsema_real_eip !181
  %1427 = zext i1 %1426 to i8, !mcsema_real_eip !181
  store volatile i8 %1427, i8* %CF_write, !mcsema_real_eip !181
  %1428 = zext i32 %1396 to i64, !mcsema_real_eip !181
  store volatile i64 %1428, i64* %ESI_write, !mcsema_real_eip !181
  store volatile i64 801, i64* %EIP_write, !mcsema_real_eip !182
  %1429 = load i64, i64* %RBP_read, !mcsema_real_eip !182
  %1430 = add i64 %1429, -36, !mcsema_real_eip !182
  %1431 = inttoptr i64 %1430 to i64*, !mcsema_real_eip !182
  %1432 = load i32, i32* %ESI_read, !mcsema_real_eip !182
  %1433 = ptrtoint i64* %1431 to i64, !mcsema_real_eip !182
  %1434 = inttoptr i64 %1433 to i32*, !mcsema_real_eip !182
  store i32 %1432, i32* %1434, !mcsema_real_eip !182
  store volatile i64 804, i64* %EIP_write, !mcsema_real_eip !183
  br label %block_117, !mcsema_real_eip !183

block_329:                                        ; preds = %block_117
  store volatile i64 809, i64* %EIP_write, !mcsema_real_eip !184
  %1435 = ptrtoint %1* @data_39d to i64, !mcsema_real_eip !184
  %1436 = add i64 %1435, 85, !mcsema_real_eip !184
  store volatile i64 %1436, i64* %RDI_write, !mcsema_real_eip !184
  store volatile i64 819, i64* %EIP_write, !mcsema_real_eip !185
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !185
  store volatile i64 821, i64* %EIP_write, !mcsema_real_eip !186
  %1437 = load i64, i64* %RDI_read, !mcsema_real_eip !186
  %1438 = load i64, i64* %RSI_read, !mcsema_real_eip !186
  %1439 = load i64, i64* %RSP_read, !mcsema_real_eip !186
  %1440 = sub i64 %1439, 8, !mcsema_real_eip !186
  %1441 = inttoptr i64 %1440 to i64*, !mcsema_real_eip !186
  store i64 -2415393069852865332, i64* %1441, !mcsema_real_eip !186
  store volatile i64 %1440, i64* %RSP_write, !mcsema_real_eip !186
  %1442 = call x86_64_sysvcc i64 @_printf(i64 %1437, i64 %1438), !mcsema_real_eip !186
  store volatile i64 %1442, i64* %RAX_write, !mcsema_real_eip !186
  store volatile i64 826, i64* %EIP_write, !mcsema_real_eip !187
  %1443 = load i64, i64* %RBP_read, !mcsema_real_eip !187
  %1444 = add i64 %1443, -4, !mcsema_real_eip !187
  %1445 = inttoptr i64 %1444 to i64*, !mcsema_real_eip !187
  %1446 = ptrtoint i64* %1445 to i64, !mcsema_real_eip !187
  %1447 = inttoptr i64 %1446 to i32*, !mcsema_real_eip !187
  store i32 1, i32* %1447, !mcsema_real_eip !187
  store volatile i64 833, i64* %EIP_write, !mcsema_real_eip !188
  %1448 = load i64, i64* %RBP_read, !mcsema_real_eip !188
  %1449 = add i64 %1448, -116, !mcsema_real_eip !188
  %1450 = inttoptr i64 %1449 to i64*, !mcsema_real_eip !188
  %1451 = load i32, i32* %EAX_read, !mcsema_real_eip !188
  %1452 = ptrtoint i64* %1450 to i64, !mcsema_real_eip !188
  %1453 = inttoptr i64 %1452 to i32*, !mcsema_real_eip !188
  store i32 %1451, i32* %1453, !mcsema_real_eip !188
  br label %block_344, !mcsema_real_eip !189

block_344:                                        ; preds = %block_329, %block_2d9
  store volatile i64 836, i64* %EIP_write, !mcsema_real_eip !189
  %1454 = load i64, i64* %RBP_read, !mcsema_real_eip !189
  %1455 = add i64 %1454, -4, !mcsema_real_eip !189
  %1456 = inttoptr i64 %1455 to i64*, !mcsema_real_eip !189
  %1457 = ptrtoint i64* %1456 to i64, !mcsema_real_eip !189
  %1458 = inttoptr i64 %1457 to i32*, !mcsema_real_eip !189
  %1459 = load i32, i32* %1458, !mcsema_real_eip !189
  %1460 = zext i32 %1459 to i64, !mcsema_real_eip !189
  store volatile i64 %1460, i64* %EAX_write, !mcsema_real_eip !189
  store volatile i64 839, i64* %EIP_write, !mcsema_real_eip !190
  %1461 = load i64, i64* %RSP_read, !mcsema_real_eip !190
  %1462 = add i64 128, %1461, !mcsema_real_eip !190
  %1463 = xor i64 %1462, %1461, !mcsema_real_eip !190
  %1464 = xor i64 %1463, 128, !mcsema_real_eip !190
  %1465 = and i64 %1464, 16, !mcsema_real_eip !190
  %1466 = icmp ne i64 %1465, 0, !mcsema_real_eip !190
  %1467 = zext i1 %1466 to i8, !mcsema_real_eip !190
  store volatile i8 %1467, i8* %AF_write, !mcsema_real_eip !190
  %1468 = lshr i64 %1462, 63, !mcsema_real_eip !190
  %1469 = trunc i64 %1468 to i1, !mcsema_real_eip !190
  %1470 = zext i1 %1469 to i8, !mcsema_real_eip !190
  %1471 = trunc i8 %1470 to i1, !mcsema_real_eip !190
  %1472 = zext i1 %1471 to i8, !mcsema_real_eip !190
  store volatile i8 %1472, i8* %SF_write, !mcsema_real_eip !190
  %1473 = icmp eq i64 %1462, 0, !mcsema_real_eip !190
  %1474 = zext i1 %1473 to i8, !mcsema_real_eip !190
  store volatile i8 %1474, i8* %ZF_write, !mcsema_real_eip !190
  %1475 = xor i64 %1461, 128, !mcsema_real_eip !190
  %1476 = xor i64 %1475, -1, !mcsema_real_eip !190
  %1477 = xor i64 %1461, %1462, !mcsema_real_eip !190
  %1478 = and i64 %1476, %1477, !mcsema_real_eip !190
  %1479 = lshr i64 %1478, 63, !mcsema_real_eip !190
  %1480 = and i64 %1479, 1, !mcsema_real_eip !190
  %1481 = trunc i64 %1480 to i1, !mcsema_real_eip !190
  %1482 = zext i1 %1481 to i8, !mcsema_real_eip !190
  %1483 = trunc i8 %1482 to i1, !mcsema_real_eip !190
  %1484 = zext i1 %1483 to i8, !mcsema_real_eip !190
  store volatile i8 %1484, i8* %OF_write, !mcsema_real_eip !190
  %1485 = trunc i64 %1462 to i8, !mcsema_real_eip !190
  %1486 = call i8 @llvm.ctpop.i8(i8 %1485), !mcsema_real_eip !190
  %1487 = trunc i8 %1486 to i1, !mcsema_real_eip !190
  %1488 = zext i1 %1487 to i8, !mcsema_real_eip !190
  %1489 = xor i8 %1488, 1, !mcsema_real_eip !190
  %1490 = trunc i8 %1489 to i1, !mcsema_real_eip !190
  %1491 = zext i1 %1490 to i8, !mcsema_real_eip !190
  store volatile i8 %1491, i8* %PF_write, !mcsema_real_eip !190
  %1492 = icmp ult i64 %1462, %1461, !mcsema_real_eip !190
  %1493 = zext i1 %1492 to i8, !mcsema_real_eip !190
  store volatile i8 %1493, i8* %CF_write, !mcsema_real_eip !190
  store volatile i64 %1462, i64* %RSP_write, !mcsema_real_eip !190
  store volatile i64 846, i64* %EIP_write, !mcsema_real_eip !191
  %1494 = load i64, i64* %RSP_read, !mcsema_real_eip !191
  %1495 = inttoptr i64 %1494 to i64*, !mcsema_real_eip !191
  %1496 = load i64, i64* %1495, !mcsema_real_eip !191
  store volatile i64 %1496, i64* %RBP_write, !mcsema_real_eip !191
  %1497 = add i64 %1494, 8, !mcsema_real_eip !191
  store volatile i64 %1497, i64* %RSP_write, !mcsema_real_eip !191
  store volatile i64 847, i64* %EIP_write, !mcsema_real_eip !192
  %1498 = load i64, i64* %RSP_read, !mcsema_real_eip !192
  %1499 = add i64 %1498, 8, !mcsema_real_eip !192
  %1500 = inttoptr i64 %1498 to i64*, !mcsema_real_eip !192
  %1501 = load i64, i64* %1500, !mcsema_real_eip !192
  store volatile i64 %1501, i64* %RIP_write, !mcsema_real_eip !192
  store volatile i64 %1499, i64* %RSP_write, !mcsema_real_eip !192
  ret void, !mcsema_real_eip !192
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) #2

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
!5 = !{i64 19}
!6 = !{i64 25}
!7 = !{i64 32}
!8 = !{i64 36}
!9 = !{i64 42}
!10 = !{i64 52}
!11 = !{i64 62}
!12 = !{i64 66}
!13 = !{i64 70}
!14 = !{i64 74}
!15 = !{i64 77}
!16 = !{i64 81}
!17 = !{i64 83}
!18 = !{i64 88}
!19 = !{i64 91}
!20 = !{i64 94}
!21 = !{i64 97}
!22 = !{i64 100}
!23 = !{i64 105}
!24 = !{i64 115}
!25 = !{i64 117}
!26 = !{i64 122}
!27 = !{i64 125}
!28 = !{i64 128}
!29 = !{i64 131}
!30 = !{i64 134}
!31 = !{i64 139}
!32 = !{i64 149}
!33 = !{i64 151}
!34 = !{i64 156}
!35 = !{i64 159}
!36 = !{i64 163}
!37 = !{i64 164}
!38 = !{i64 176}
!39 = !{i64 177}
!40 = !{i64 180}
!41 = !{i64 187}
!42 = !{i64 189}
!43 = !{i64 194}
!44 = !{i64 196}
!45 = !{i64 200}
!46 = !{i64 210}
!47 = !{i64 217}
!48 = !{i64 220}
!49 = !{i64 224}
!50 = !{i64 231}
!51 = !{i64 238}
!52 = !{i64 245}
!53 = !{i64 249}
!54 = !{i64 253}
!55 = !{i64 257}
!56 = !{i64 260}
!57 = !{i64 265}
!58 = !{i64 267}
!59 = !{i64 270}
!60 = !{i64 275}
!61 = !{i64 279}
!62 = !{i64 283}
!63 = !{i64 289}
!64 = !{i64 292}
!65 = !{i64 295}
!66 = !{i64 298}
!67 = !{i64 301}
!68 = !{i64 305}
!69 = !{i64 310}
!70 = !{i64 312}
!71 = !{i64 315}
!72 = !{i64 318}
!73 = !{i64 321}
!74 = !{i64 327}
!75 = !{i64 332}
!76 = !{i64 335}
!77 = !{i64 338}
!78 = !{i64 341}
!79 = !{i64 347}
!80 = !{i64 352}
!81 = !{i64 355}
!82 = !{i64 358}
!83 = !{i64 361}
!84 = !{i64 367}
!85 = !{i64 372}
!86 = !{i64 375}
!87 = !{i64 378}
!88 = !{i64 381}
!89 = !{i64 387}
!90 = !{i64 392}
!91 = !{i64 395}
!92 = !{i64 398}
!93 = !{i64 401}
!94 = !{i64 406}
!95 = !{i64 409}
!96 = !{i64 412}
!97 = !{i64 415}
!98 = !{i64 420}
!99 = !{i64 423}
!100 = !{i64 426}
!101 = !{i64 429}
!102 = !{i64 434}
!103 = !{i64 437}
!104 = !{i64 440}
!105 = !{i64 443}
!106 = !{i64 448}
!107 = !{i64 458}
!108 = !{i64 460}
!109 = !{i64 465}
!110 = !{i64 475}
!111 = !{i64 478}
!112 = !{i64 480}
!113 = !{i64 485}
!114 = !{i64 490}
!115 = !{i64 493}
!116 = !{i64 498}
!117 = !{i64 508}
!118 = !{i64 512}
!119 = !{i64 516}
!120 = !{i64 520}
!121 = !{i64 523}
!122 = !{i64 527}
!123 = !{i64 530}
!124 = !{i64 536}
!125 = !{i64 546}
!126 = !{i64 548}
!127 = !{i64 553}
!128 = !{i64 563}
!129 = !{i64 567}
!130 = !{i64 570}
!131 = !{i64 572}
!132 = !{i64 577}
!133 = !{i64 579}
!134 = !{i64 582}
!135 = !{i64 587}
!136 = !{i64 597}
!137 = !{i64 601}
!138 = !{i64 605}
!139 = !{i64 609}
!140 = !{i64 612}
!141 = !{i64 616}
!142 = !{i64 619}
!143 = !{i64 625}
!144 = !{i64 629}
!145 = !{i64 635}
!146 = !{i64 645}
!147 = !{i64 649}
!148 = !{i64 653}
!149 = !{i64 657}
!150 = !{i64 660}
!151 = !{i64 664}
!152 = !{i64 667}
!153 = !{i64 673}
!154 = !{i64 677}
!155 = !{i64 683}
!156 = !{i64 687}
!157 = !{i64 693}
!158 = !{i64 696}
!159 = !{i64 699}
!160 = !{i64 702}
!161 = !{i64 705}
!162 = !{i64 708}
!163 = !{i64 711}
!164 = !{i64 717}
!165 = !{i64 720}
!166 = !{i64 723}
!167 = !{i64 729}
!168 = !{i64 739}
!169 = !{i64 741}
!170 = !{i64 746}
!171 = !{i64 753}
!172 = !{i64 756}
!173 = !{i64 761}
!174 = !{i64 771}
!175 = !{i64 775}
!176 = !{i64 779}
!177 = !{i64 783}
!178 = !{i64 786}
!179 = !{i64 790}
!180 = !{i64 795}
!181 = !{i64 798}
!182 = !{i64 801}
!183 = !{i64 804}
!184 = !{i64 809}
!185 = !{i64 819}
!186 = !{i64 821}
!187 = !{i64 826}
!188 = !{i64 833}
!189 = !{i64 836}
!190 = !{i64 839}
!191 = !{i64 846}
!192 = !{i64 847}
