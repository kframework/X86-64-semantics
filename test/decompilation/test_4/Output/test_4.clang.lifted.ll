; ModuleID = 'Output/test_4.clang.lifted.bc'
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }

@data_220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_280 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"x\01\00\00\00A\0E\10\86\02C\0D\06P\83\07\8C\06\8D\05\8E\04\8F\03" }>, align 64

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
  %17 = ptrtoint i64* %16 to i64, !mcsema_real_eip !4
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !4
  %19 = load i32, i32* %18, !mcsema_real_eip !4
  %20 = zext i32 %19 to i64, !mcsema_real_eip !4
  store volatile i64 %20, i64* %R10D_write, !mcsema_real_eip !4
  store volatile i64 13, i64* %EIP_write, !mcsema_real_eip !5
  %21 = load i64, i64* %RBP_read, !mcsema_real_eip !5
  %22 = add i64 %21, 24, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = load i64, i64* %23, !mcsema_real_eip !5
  store volatile i64 %24, i64* %R11_write, !mcsema_real_eip !5
  store volatile i64 17, i64* %EIP_write, !mcsema_real_eip !6
  %25 = load i64, i64* %RBP_read, !mcsema_real_eip !6
  %26 = add i64 %25, 16, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  %30 = load i32, i32* %29, !mcsema_real_eip !6
  %31 = zext i32 %30 to i64, !mcsema_real_eip !6
  store volatile i64 %31, i64* %EBX_write, !mcsema_real_eip !6
  store volatile i64 20, i64* %EIP_write, !mcsema_real_eip !7
  %32 = load i64, i64* %RBP_read, !mcsema_real_eip !7
  %33 = add i64 %32, -12, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  %35 = load i32, i32* %EDI_read, !mcsema_real_eip !7
  %36 = ptrtoint i64* %34 to i64, !mcsema_real_eip !7
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !7
  store i32 %35, i32* %37, !mcsema_real_eip !7
  store volatile i64 23, i64* %EIP_write, !mcsema_real_eip !8
  %38 = load i64, i64* %RBP_read, !mcsema_real_eip !8
  %39 = add i64 %38, -16, !mcsema_real_eip !8
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !8
  %41 = load i32, i32* %ESI_read, !mcsema_real_eip !8
  %42 = ptrtoint i64* %40 to i64, !mcsema_real_eip !8
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !8
  store i32 %41, i32* %43, !mcsema_real_eip !8
  store volatile i64 26, i64* %EIP_write, !mcsema_real_eip !9
  %44 = load i64, i64* %RBP_read, !mcsema_real_eip !9
  %45 = add i64 %44, -20, !mcsema_real_eip !9
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !9
  %47 = load i32, i32* %EDX_read, !mcsema_real_eip !9
  %48 = ptrtoint i64* %46 to i64, !mcsema_real_eip !9
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !9
  store i32 %47, i32* %49, !mcsema_real_eip !9
  store volatile i64 29, i64* %EIP_write, !mcsema_real_eip !10
  %50 = load i64, i64* %RBP_read, !mcsema_real_eip !10
  %51 = add i64 %50, -24, !mcsema_real_eip !10
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !10
  %53 = load i32, i32* %ECX_read, !mcsema_real_eip !10
  %54 = ptrtoint i64* %52 to i64, !mcsema_real_eip !10
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !10
  store i32 %53, i32* %55, !mcsema_real_eip !10
  store volatile i64 32, i64* %EIP_write, !mcsema_real_eip !11
  %56 = load i64, i64* %RBP_read, !mcsema_real_eip !11
  %57 = add i64 %56, -28, !mcsema_real_eip !11
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !11
  %59 = load i32, i32* %R8D_read, !mcsema_real_eip !11
  %60 = ptrtoint i64* %58 to i64, !mcsema_real_eip !11
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !11
  store i32 %59, i32* %61, !mcsema_real_eip !11
  store volatile i64 36, i64* %EIP_write, !mcsema_real_eip !12
  %62 = load i64, i64* %RBP_read, !mcsema_real_eip !12
  %63 = add i64 %62, -32, !mcsema_real_eip !12
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !12
  %65 = load i32, i32* %R9D_read, !mcsema_real_eip !12
  %66 = ptrtoint i64* %64 to i64, !mcsema_real_eip !12
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !12
  store i32 %65, i32* %67, !mcsema_real_eip !12
  store volatile i64 40, i64* %EIP_write, !mcsema_real_eip !13
  %68 = load i64, i64* %RBP_read, !mcsema_real_eip !13
  %69 = add i64 %68, -36, !mcsema_real_eip !13
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !13
  %71 = load i32, i32* %EBX_read, !mcsema_real_eip !13
  %72 = ptrtoint i64* %70 to i64, !mcsema_real_eip !13
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !13
  store i32 %71, i32* %73, !mcsema_real_eip !13
  store volatile i64 43, i64* %EIP_write, !mcsema_real_eip !14
  %74 = load i64, i64* %RBP_read, !mcsema_real_eip !14
  %75 = add i64 %74, -48, !mcsema_real_eip !14
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !14
  %77 = load i64, i64* %R11_read, !mcsema_real_eip !14
  store i64 %77, i64* %76, !mcsema_real_eip !14
  store volatile i64 47, i64* %EIP_write, !mcsema_real_eip !15
  %78 = load i64, i64* %RBP_read, !mcsema_real_eip !15
  %79 = add i64 %78, -52, !mcsema_real_eip !15
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !15
  %81 = load i32, i32* %R10D_read, !mcsema_real_eip !15
  %82 = ptrtoint i64* %80 to i64, !mcsema_real_eip !15
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !15
  store i32 %81, i32* %83, !mcsema_real_eip !15
  store volatile i64 51, i64* %EIP_write, !mcsema_real_eip !16
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !16
  %85 = add i64 %84, -64, !mcsema_real_eip !16
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !16
  %87 = load i64, i64* %RAX_read, !mcsema_real_eip !16
  store i64 %87, i64* %86, !mcsema_real_eip !16
  store volatile i64 55, i64* %EIP_write, !mcsema_real_eip !17
  %88 = load i64, i64* %RBP_read, !mcsema_real_eip !17
  %89 = add i64 %88, -68, !mcsema_real_eip !17
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !17
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !17
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %92, !mcsema_real_eip !17
  store volatile i64 62, i64* %EIP_write, !mcsema_real_eip !18
  %93 = load i64, i64* %RBP_read, !mcsema_real_eip !18
  %94 = add i64 %93, -72, !mcsema_real_eip !18
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !18
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !18
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !18
  store i32 0, i32* %97, !mcsema_real_eip !18
  br label %block_45, !mcsema_real_eip !19

block_45:                                         ; preds = %block_51, %block_0
  store volatile i64 69, i64* %EIP_write, !mcsema_real_eip !19
  %98 = load i64, i64* %RBP_read, !mcsema_real_eip !19
  %99 = add i64 %98, -72, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  %101 = ptrtoint i64* %100 to i64, !mcsema_real_eip !19
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !19
  %103 = load i32, i32* %102, !mcsema_real_eip !19
  %104 = zext i32 %103 to i64, !mcsema_real_eip !19
  store volatile i64 %104, i64* %EAX_write, !mcsema_real_eip !19
  store volatile i64 72, i64* %EIP_write, !mcsema_real_eip !20
  %105 = load i64, i64* %RBP_read, !mcsema_real_eip !20
  %106 = add i64 %105, -36, !mcsema_real_eip !20
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !20
  %108 = load i32, i32* %EAX_read, !mcsema_real_eip !20
  %109 = ptrtoint i64* %107 to i64, !mcsema_real_eip !20
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !20
  %111 = load i32, i32* %110, !mcsema_real_eip !20
  %112 = sub i32 %108, %111, !mcsema_real_eip !20
  %113 = xor i32 %112, %108, !mcsema_real_eip !20
  %114 = xor i32 %113, %111, !mcsema_real_eip !20
  %115 = and i32 %114, 16, !mcsema_real_eip !20
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !20
  %117 = zext i1 %116 to i8, !mcsema_real_eip !20
  store volatile i8 %117, i8* %AF_write, !mcsema_real_eip !20
  %118 = trunc i32 %112 to i8, !mcsema_real_eip !20
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !20
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !20
  %121 = zext i1 %120 to i8, !mcsema_real_eip !20
  %122 = xor i8 %121, 1, !mcsema_real_eip !20
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !20
  %124 = zext i1 %123 to i8, !mcsema_real_eip !20
  store volatile i8 %124, i8* %PF_write, !mcsema_real_eip !20
  %125 = icmp eq i32 %112, 0, !mcsema_real_eip !20
  %126 = zext i1 %125 to i8, !mcsema_real_eip !20
  store volatile i8 %126, i8* %ZF_write, !mcsema_real_eip !20
  %127 = lshr i32 %112, 31, !mcsema_real_eip !20
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !20
  %129 = zext i1 %128 to i8, !mcsema_real_eip !20
  %130 = trunc i8 %129 to i1, !mcsema_real_eip !20
  %131 = zext i1 %130 to i8, !mcsema_real_eip !20
  store volatile i8 %131, i8* %SF_write, !mcsema_real_eip !20
  %132 = icmp ult i32 %108, %111, !mcsema_real_eip !20
  %133 = zext i1 %132 to i8, !mcsema_real_eip !20
  store volatile i8 %133, i8* %CF_write, !mcsema_real_eip !20
  %134 = xor i32 %108, %111, !mcsema_real_eip !20
  %135 = xor i32 %108, %112, !mcsema_real_eip !20
  %136 = and i32 %134, %135, !mcsema_real_eip !20
  %137 = lshr i32 %136, 31, !mcsema_real_eip !20
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !20
  %139 = zext i1 %138 to i8, !mcsema_real_eip !20
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !20
  %141 = zext i1 %140 to i8, !mcsema_real_eip !20
  store volatile i8 %141, i8* %OF_write, !mcsema_real_eip !20
  store volatile i64 75, i64* %EIP_write, !mcsema_real_eip !21
  %142 = load i8, i8* %SF_read, !mcsema_real_eip !21
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !21
  %144 = load i8, i8* %OF_read, !mcsema_real_eip !21
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !21
  %146 = icmp eq i1 %143, %145, !mcsema_real_eip !21
  br i1 %146, label %block_7b, label %block_51, !mcsema_real_eip !21

block_51:                                         ; preds = %block_45
  store volatile i64 81, i64* %EIP_write, !mcsema_real_eip !22
  %147 = load i64, i64* %RBP_read, !mcsema_real_eip !22
  %148 = add i64 %147, -72, !mcsema_real_eip !22
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !22
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !22
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !22
  %152 = load i32, i32* %151, !mcsema_real_eip !22
  %153 = sext i32 %152 to i64, !mcsema_real_eip !22
  store volatile i64 %153, i64* %RAX_write, !mcsema_real_eip !22
  store volatile i64 85, i64* %EIP_write, !mcsema_real_eip !23
  %154 = load i64, i64* %RBP_read, !mcsema_real_eip !23
  %155 = add i64 %154, -48, !mcsema_real_eip !23
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !23
  %157 = load i64, i64* %156, !mcsema_real_eip !23
  store volatile i64 %157, i64* %RCX_write, !mcsema_real_eip !23
  store volatile i64 89, i64* %EIP_write, !mcsema_real_eip !24
  %158 = load i64, i64* %RCX_read, !mcsema_real_eip !24
  %159 = add i64 %158, 0, !mcsema_real_eip !24
  %160 = load i64, i64* %RAX_read, !mcsema_real_eip !24
  %161 = mul i64 %160, 4, !mcsema_real_eip !24
  %162 = add i64 %159, %161, !mcsema_real_eip !24
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !24
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !24
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !24
  %166 = load i32, i32* %165, !mcsema_real_eip !24
  %167 = zext i32 %166 to i64, !mcsema_real_eip !24
  store volatile i64 %167, i64* %EDX_write, !mcsema_real_eip !24
  store volatile i64 92, i64* %EIP_write, !mcsema_real_eip !25
  %168 = load i64, i64* %RBP_read, !mcsema_real_eip !25
  %169 = add i64 %168, -72, !mcsema_real_eip !25
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !25
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !25
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !25
  %173 = load i32, i32* %172, !mcsema_real_eip !25
  %174 = sext i32 %173 to i64, !mcsema_real_eip !25
  store volatile i64 %174, i64* %RAX_write, !mcsema_real_eip !25
  store volatile i64 96, i64* %EIP_write, !mcsema_real_eip !26
  %175 = load i64, i64* %RBP_read, !mcsema_real_eip !26
  %176 = add i64 %175, -64, !mcsema_real_eip !26
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !26
  %178 = load i64, i64* %177, !mcsema_real_eip !26
  store volatile i64 %178, i64* %RCX_write, !mcsema_real_eip !26
  store volatile i64 100, i64* %EIP_write, !mcsema_real_eip !27
  %179 = load i64, i64* %RCX_read, !mcsema_real_eip !27
  %180 = add i64 %179, 0, !mcsema_real_eip !27
  %181 = load i64, i64* %RAX_read, !mcsema_real_eip !27
  %182 = mul i64 %181, 4, !mcsema_real_eip !27
  %183 = add i64 %180, %182, !mcsema_real_eip !27
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !27
  %185 = load i32, i32* %EDX_read, !mcsema_real_eip !27
  %186 = ptrtoint i64* %184 to i64, !mcsema_real_eip !27
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !27
  %188 = load i32, i32* %187, !mcsema_real_eip !27
  %189 = sub i32 %185, %188, !mcsema_real_eip !27
  %190 = xor i32 %189, %185, !mcsema_real_eip !27
  %191 = xor i32 %190, %188, !mcsema_real_eip !27
  %192 = and i32 %191, 16, !mcsema_real_eip !27
  %193 = icmp ne i32 %192, 0, !mcsema_real_eip !27
  %194 = zext i1 %193 to i8, !mcsema_real_eip !27
  store volatile i8 %194, i8* %AF_write, !mcsema_real_eip !27
  %195 = trunc i32 %189 to i8, !mcsema_real_eip !27
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !27
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !27
  %198 = zext i1 %197 to i8, !mcsema_real_eip !27
  %199 = xor i8 %198, 1, !mcsema_real_eip !27
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !27
  %201 = zext i1 %200 to i8, !mcsema_real_eip !27
  store volatile i8 %201, i8* %PF_write, !mcsema_real_eip !27
  %202 = icmp eq i32 %189, 0, !mcsema_real_eip !27
  %203 = zext i1 %202 to i8, !mcsema_real_eip !27
  store volatile i8 %203, i8* %ZF_write, !mcsema_real_eip !27
  %204 = lshr i32 %189, 31, !mcsema_real_eip !27
  %205 = trunc i32 %204 to i1, !mcsema_real_eip !27
  %206 = zext i1 %205 to i8, !mcsema_real_eip !27
  %207 = trunc i8 %206 to i1, !mcsema_real_eip !27
  %208 = zext i1 %207 to i8, !mcsema_real_eip !27
  store volatile i8 %208, i8* %SF_write, !mcsema_real_eip !27
  %209 = icmp ult i32 %185, %188, !mcsema_real_eip !27
  %210 = zext i1 %209 to i8, !mcsema_real_eip !27
  store volatile i8 %210, i8* %CF_write, !mcsema_real_eip !27
  %211 = xor i32 %185, %188, !mcsema_real_eip !27
  %212 = xor i32 %185, %189, !mcsema_real_eip !27
  %213 = and i32 %211, %212, !mcsema_real_eip !27
  %214 = lshr i32 %213, 31, !mcsema_real_eip !27
  %215 = trunc i32 %214 to i1, !mcsema_real_eip !27
  %216 = zext i1 %215 to i8, !mcsema_real_eip !27
  %217 = trunc i8 %216 to i1, !mcsema_real_eip !27
  %218 = zext i1 %217 to i8, !mcsema_real_eip !27
  store volatile i8 %218, i8* %OF_write, !mcsema_real_eip !27
  %219 = zext i32 %189 to i64, !mcsema_real_eip !27
  store volatile i64 %219, i64* %EDX_write, !mcsema_real_eip !27
  store volatile i64 103, i64* %EIP_write, !mcsema_real_eip !28
  %220 = load i64, i64* %RBP_read, !mcsema_real_eip !28
  %221 = add i64 %220, -68, !mcsema_real_eip !28
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !28
  %223 = ptrtoint i64* %222 to i64, !mcsema_real_eip !28
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !28
  %225 = load i32, i32* %224, !mcsema_real_eip !28
  %226 = load i32, i32* %EDX_read, !mcsema_real_eip !28
  %227 = add i32 %226, %225, !mcsema_real_eip !28
  %228 = xor i32 %227, %225, !mcsema_real_eip !28
  %229 = xor i32 %228, %226, !mcsema_real_eip !28
  %230 = and i32 %229, 16, !mcsema_real_eip !28
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !28
  %232 = zext i1 %231 to i8, !mcsema_real_eip !28
  store volatile i8 %232, i8* %AF_write, !mcsema_real_eip !28
  %233 = lshr i32 %227, 31, !mcsema_real_eip !28
  %234 = trunc i32 %233 to i1, !mcsema_real_eip !28
  %235 = zext i1 %234 to i8, !mcsema_real_eip !28
  %236 = trunc i8 %235 to i1, !mcsema_real_eip !28
  %237 = zext i1 %236 to i8, !mcsema_real_eip !28
  store volatile i8 %237, i8* %SF_write, !mcsema_real_eip !28
  %238 = icmp eq i32 %227, 0, !mcsema_real_eip !28
  %239 = zext i1 %238 to i8, !mcsema_real_eip !28
  store volatile i8 %239, i8* %ZF_write, !mcsema_real_eip !28
  %240 = xor i32 %225, %226, !mcsema_real_eip !28
  %241 = xor i32 %240, -1, !mcsema_real_eip !28
  %242 = xor i32 %225, %227, !mcsema_real_eip !28
  %243 = and i32 %241, %242, !mcsema_real_eip !28
  %244 = lshr i32 %243, 31, !mcsema_real_eip !28
  %245 = and i32 %244, 1, !mcsema_real_eip !28
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !28
  %247 = zext i1 %246 to i8, !mcsema_real_eip !28
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !28
  %249 = zext i1 %248 to i8, !mcsema_real_eip !28
  store volatile i8 %249, i8* %OF_write, !mcsema_real_eip !28
  %250 = trunc i32 %227 to i8, !mcsema_real_eip !28
  %251 = call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !28
  %252 = trunc i8 %251 to i1, !mcsema_real_eip !28
  %253 = zext i1 %252 to i8, !mcsema_real_eip !28
  %254 = xor i8 %253, 1, !mcsema_real_eip !28
  %255 = trunc i8 %254 to i1, !mcsema_real_eip !28
  %256 = zext i1 %255 to i8, !mcsema_real_eip !28
  store volatile i8 %256, i8* %PF_write, !mcsema_real_eip !28
  %257 = icmp ult i32 %227, %225, !mcsema_real_eip !28
  %258 = zext i1 %257 to i8, !mcsema_real_eip !28
  store volatile i8 %258, i8* %CF_write, !mcsema_real_eip !28
  %259 = zext i32 %227 to i64, !mcsema_real_eip !28
  store volatile i64 %259, i64* %EDX_write, !mcsema_real_eip !28
  store volatile i64 106, i64* %EIP_write, !mcsema_real_eip !29
  %260 = load i64, i64* %RBP_read, !mcsema_real_eip !29
  %261 = add i64 %260, -68, !mcsema_real_eip !29
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !29
  %263 = load i32, i32* %EDX_read, !mcsema_real_eip !29
  %264 = ptrtoint i64* %262 to i64, !mcsema_real_eip !29
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !29
  store i32 %263, i32* %265, !mcsema_real_eip !29
  store volatile i64 109, i64* %EIP_write, !mcsema_real_eip !30
  %266 = load i64, i64* %RBP_read, !mcsema_real_eip !30
  %267 = add i64 %266, -72, !mcsema_real_eip !30
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !30
  %269 = ptrtoint i64* %268 to i64, !mcsema_real_eip !30
  %270 = inttoptr i64 %269 to i32*, !mcsema_real_eip !30
  %271 = load i32, i32* %270, !mcsema_real_eip !30
  %272 = zext i32 %271 to i64, !mcsema_real_eip !30
  store volatile i64 %272, i64* %EAX_write, !mcsema_real_eip !30
  store volatile i64 112, i64* %EIP_write, !mcsema_real_eip !31
  %273 = load i32, i32* %EAX_read, !mcsema_real_eip !31
  %274 = add i32 1, %273, !mcsema_real_eip !31
  %275 = xor i32 %274, %273, !mcsema_real_eip !31
  %276 = xor i32 %275, 1, !mcsema_real_eip !31
  %277 = and i32 %276, 16, !mcsema_real_eip !31
  %278 = icmp ne i32 %277, 0, !mcsema_real_eip !31
  %279 = zext i1 %278 to i8, !mcsema_real_eip !31
  store volatile i8 %279, i8* %AF_write, !mcsema_real_eip !31
  %280 = lshr i32 %274, 31, !mcsema_real_eip !31
  %281 = trunc i32 %280 to i1, !mcsema_real_eip !31
  %282 = zext i1 %281 to i8, !mcsema_real_eip !31
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !31
  %284 = zext i1 %283 to i8, !mcsema_real_eip !31
  store volatile i8 %284, i8* %SF_write, !mcsema_real_eip !31
  %285 = icmp eq i32 %274, 0, !mcsema_real_eip !31
  %286 = zext i1 %285 to i8, !mcsema_real_eip !31
  store volatile i8 %286, i8* %ZF_write, !mcsema_real_eip !31
  %287 = xor i32 %273, 1, !mcsema_real_eip !31
  %288 = xor i32 %287, -1, !mcsema_real_eip !31
  %289 = xor i32 %273, %274, !mcsema_real_eip !31
  %290 = and i32 %288, %289, !mcsema_real_eip !31
  %291 = lshr i32 %290, 31, !mcsema_real_eip !31
  %292 = and i32 %291, 1, !mcsema_real_eip !31
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !31
  %294 = zext i1 %293 to i8, !mcsema_real_eip !31
  %295 = trunc i8 %294 to i1, !mcsema_real_eip !31
  %296 = zext i1 %295 to i8, !mcsema_real_eip !31
  store volatile i8 %296, i8* %OF_write, !mcsema_real_eip !31
  %297 = trunc i32 %274 to i8, !mcsema_real_eip !31
  %298 = call i8 @llvm.ctpop.i8(i8 %297), !mcsema_real_eip !31
  %299 = trunc i8 %298 to i1, !mcsema_real_eip !31
  %300 = zext i1 %299 to i8, !mcsema_real_eip !31
  %301 = xor i8 %300, 1, !mcsema_real_eip !31
  %302 = trunc i8 %301 to i1, !mcsema_real_eip !31
  %303 = zext i1 %302 to i8, !mcsema_real_eip !31
  store volatile i8 %303, i8* %PF_write, !mcsema_real_eip !31
  %304 = icmp ult i32 %274, %273, !mcsema_real_eip !31
  %305 = zext i1 %304 to i8, !mcsema_real_eip !31
  store volatile i8 %305, i8* %CF_write, !mcsema_real_eip !31
  %306 = zext i32 %274 to i64, !mcsema_real_eip !31
  store volatile i64 %306, i64* %EAX_write, !mcsema_real_eip !31
  store volatile i64 115, i64* %EIP_write, !mcsema_real_eip !32
  %307 = load i64, i64* %RBP_read, !mcsema_real_eip !32
  %308 = add i64 %307, -72, !mcsema_real_eip !32
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !32
  %310 = load i32, i32* %EAX_read, !mcsema_real_eip !32
  %311 = ptrtoint i64* %309 to i64, !mcsema_real_eip !32
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !32
  store i32 %310, i32* %312, !mcsema_real_eip !32
  store volatile i64 118, i64* %EIP_write, !mcsema_real_eip !33
  br label %block_45, !mcsema_real_eip !33

block_7b:                                         ; preds = %block_45
  store volatile i64 123, i64* %EIP_write, !mcsema_real_eip !34
  %313 = load i64, i64* %RBP_read, !mcsema_real_eip !34
  %314 = add i64 %313, -68, !mcsema_real_eip !34
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !34
  %316 = ptrtoint i64* %315 to i64, !mcsema_real_eip !34
  %317 = inttoptr i64 %316 to i32*, !mcsema_real_eip !34
  %318 = load i32, i32* %317, !mcsema_real_eip !34
  %319 = zext i32 %318 to i64, !mcsema_real_eip !34
  store volatile i64 %319, i64* %EAX_write, !mcsema_real_eip !34
  store volatile i64 126, i64* %EIP_write, !mcsema_real_eip !35
  %320 = load i64, i64* %RBP_read, !mcsema_real_eip !35
  %321 = add i64 %320, -12, !mcsema_real_eip !35
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !35
  %323 = ptrtoint i64* %322 to i64, !mcsema_real_eip !35
  %324 = inttoptr i64 %323 to i32*, !mcsema_real_eip !35
  %325 = load i32, i32* %324, !mcsema_real_eip !35
  %326 = zext i32 %325 to i64, !mcsema_real_eip !35
  store volatile i64 %326, i64* %ECX_write, !mcsema_real_eip !35
  store volatile i64 129, i64* %EIP_write, !mcsema_real_eip !36
  %327 = load i64, i64* %RBP_read, !mcsema_real_eip !36
  %328 = add i64 %327, -16, !mcsema_real_eip !36
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !36
  %330 = ptrtoint i64* %329 to i64, !mcsema_real_eip !36
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !36
  %332 = load i32, i32* %331, !mcsema_real_eip !36
  %333 = load i32, i32* %ECX_read, !mcsema_real_eip !36
  %334 = add i32 %333, %332, !mcsema_real_eip !36
  %335 = xor i32 %334, %332, !mcsema_real_eip !36
  %336 = xor i32 %335, %333, !mcsema_real_eip !36
  %337 = and i32 %336, 16, !mcsema_real_eip !36
  %338 = icmp ne i32 %337, 0, !mcsema_real_eip !36
  %339 = zext i1 %338 to i8, !mcsema_real_eip !36
  store volatile i8 %339, i8* %AF_write, !mcsema_real_eip !36
  %340 = lshr i32 %334, 31, !mcsema_real_eip !36
  %341 = trunc i32 %340 to i1, !mcsema_real_eip !36
  %342 = zext i1 %341 to i8, !mcsema_real_eip !36
  %343 = trunc i8 %342 to i1, !mcsema_real_eip !36
  %344 = zext i1 %343 to i8, !mcsema_real_eip !36
  store volatile i8 %344, i8* %SF_write, !mcsema_real_eip !36
  %345 = icmp eq i32 %334, 0, !mcsema_real_eip !36
  %346 = zext i1 %345 to i8, !mcsema_real_eip !36
  store volatile i8 %346, i8* %ZF_write, !mcsema_real_eip !36
  %347 = xor i32 %332, %333, !mcsema_real_eip !36
  %348 = xor i32 %347, -1, !mcsema_real_eip !36
  %349 = xor i32 %332, %334, !mcsema_real_eip !36
  %350 = and i32 %348, %349, !mcsema_real_eip !36
  %351 = lshr i32 %350, 31, !mcsema_real_eip !36
  %352 = and i32 %351, 1, !mcsema_real_eip !36
  %353 = trunc i32 %352 to i1, !mcsema_real_eip !36
  %354 = zext i1 %353 to i8, !mcsema_real_eip !36
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !36
  %356 = zext i1 %355 to i8, !mcsema_real_eip !36
  store volatile i8 %356, i8* %OF_write, !mcsema_real_eip !36
  %357 = trunc i32 %334 to i8, !mcsema_real_eip !36
  %358 = call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !36
  %359 = trunc i8 %358 to i1, !mcsema_real_eip !36
  %360 = zext i1 %359 to i8, !mcsema_real_eip !36
  %361 = xor i8 %360, 1, !mcsema_real_eip !36
  %362 = trunc i8 %361 to i1, !mcsema_real_eip !36
  %363 = zext i1 %362 to i8, !mcsema_real_eip !36
  store volatile i8 %363, i8* %PF_write, !mcsema_real_eip !36
  %364 = icmp ult i32 %334, %332, !mcsema_real_eip !36
  %365 = zext i1 %364 to i8, !mcsema_real_eip !36
  store volatile i8 %365, i8* %CF_write, !mcsema_real_eip !36
  %366 = zext i32 %334 to i64, !mcsema_real_eip !36
  store volatile i64 %366, i64* %ECX_write, !mcsema_real_eip !36
  store volatile i64 132, i64* %EIP_write, !mcsema_real_eip !37
  %367 = load i64, i64* %RBP_read, !mcsema_real_eip !37
  %368 = add i64 %367, -20, !mcsema_real_eip !37
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !37
  %370 = ptrtoint i64* %369 to i64, !mcsema_real_eip !37
  %371 = inttoptr i64 %370 to i32*, !mcsema_real_eip !37
  %372 = load i32, i32* %371, !mcsema_real_eip !37
  %373 = load i32, i32* %ECX_read, !mcsema_real_eip !37
  %374 = add i32 %373, %372, !mcsema_real_eip !37
  %375 = xor i32 %374, %372, !mcsema_real_eip !37
  %376 = xor i32 %375, %373, !mcsema_real_eip !37
  %377 = and i32 %376, 16, !mcsema_real_eip !37
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !37
  %379 = zext i1 %378 to i8, !mcsema_real_eip !37
  store volatile i8 %379, i8* %AF_write, !mcsema_real_eip !37
  %380 = lshr i32 %374, 31, !mcsema_real_eip !37
  %381 = trunc i32 %380 to i1, !mcsema_real_eip !37
  %382 = zext i1 %381 to i8, !mcsema_real_eip !37
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !37
  %384 = zext i1 %383 to i8, !mcsema_real_eip !37
  store volatile i8 %384, i8* %SF_write, !mcsema_real_eip !37
  %385 = icmp eq i32 %374, 0, !mcsema_real_eip !37
  %386 = zext i1 %385 to i8, !mcsema_real_eip !37
  store volatile i8 %386, i8* %ZF_write, !mcsema_real_eip !37
  %387 = xor i32 %372, %373, !mcsema_real_eip !37
  %388 = xor i32 %387, -1, !mcsema_real_eip !37
  %389 = xor i32 %372, %374, !mcsema_real_eip !37
  %390 = and i32 %388, %389, !mcsema_real_eip !37
  %391 = lshr i32 %390, 31, !mcsema_real_eip !37
  %392 = and i32 %391, 1, !mcsema_real_eip !37
  %393 = trunc i32 %392 to i1, !mcsema_real_eip !37
  %394 = zext i1 %393 to i8, !mcsema_real_eip !37
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !37
  %396 = zext i1 %395 to i8, !mcsema_real_eip !37
  store volatile i8 %396, i8* %OF_write, !mcsema_real_eip !37
  %397 = trunc i32 %374 to i8, !mcsema_real_eip !37
  %398 = call i8 @llvm.ctpop.i8(i8 %397), !mcsema_real_eip !37
  %399 = trunc i8 %398 to i1, !mcsema_real_eip !37
  %400 = zext i1 %399 to i8, !mcsema_real_eip !37
  %401 = xor i8 %400, 1, !mcsema_real_eip !37
  %402 = trunc i8 %401 to i1, !mcsema_real_eip !37
  %403 = zext i1 %402 to i8, !mcsema_real_eip !37
  store volatile i8 %403, i8* %PF_write, !mcsema_real_eip !37
  %404 = icmp ult i32 %374, %372, !mcsema_real_eip !37
  %405 = zext i1 %404 to i8, !mcsema_real_eip !37
  store volatile i8 %405, i8* %CF_write, !mcsema_real_eip !37
  %406 = zext i32 %374 to i64, !mcsema_real_eip !37
  store volatile i64 %406, i64* %ECX_write, !mcsema_real_eip !37
  store volatile i64 135, i64* %EIP_write, !mcsema_real_eip !38
  %407 = load i64, i64* %RBP_read, !mcsema_real_eip !38
  %408 = add i64 %407, -24, !mcsema_real_eip !38
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !38
  %410 = ptrtoint i64* %409 to i64, !mcsema_real_eip !38
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !38
  %412 = load i32, i32* %411, !mcsema_real_eip !38
  %413 = load i32, i32* %ECX_read, !mcsema_real_eip !38
  %414 = add i32 %413, %412, !mcsema_real_eip !38
  %415 = xor i32 %414, %412, !mcsema_real_eip !38
  %416 = xor i32 %415, %413, !mcsema_real_eip !38
  %417 = and i32 %416, 16, !mcsema_real_eip !38
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !38
  %419 = zext i1 %418 to i8, !mcsema_real_eip !38
  store volatile i8 %419, i8* %AF_write, !mcsema_real_eip !38
  %420 = lshr i32 %414, 31, !mcsema_real_eip !38
  %421 = trunc i32 %420 to i1, !mcsema_real_eip !38
  %422 = zext i1 %421 to i8, !mcsema_real_eip !38
  %423 = trunc i8 %422 to i1, !mcsema_real_eip !38
  %424 = zext i1 %423 to i8, !mcsema_real_eip !38
  store volatile i8 %424, i8* %SF_write, !mcsema_real_eip !38
  %425 = icmp eq i32 %414, 0, !mcsema_real_eip !38
  %426 = zext i1 %425 to i8, !mcsema_real_eip !38
  store volatile i8 %426, i8* %ZF_write, !mcsema_real_eip !38
  %427 = xor i32 %412, %413, !mcsema_real_eip !38
  %428 = xor i32 %427, -1, !mcsema_real_eip !38
  %429 = xor i32 %412, %414, !mcsema_real_eip !38
  %430 = and i32 %428, %429, !mcsema_real_eip !38
  %431 = lshr i32 %430, 31, !mcsema_real_eip !38
  %432 = and i32 %431, 1, !mcsema_real_eip !38
  %433 = trunc i32 %432 to i1, !mcsema_real_eip !38
  %434 = zext i1 %433 to i8, !mcsema_real_eip !38
  %435 = trunc i8 %434 to i1, !mcsema_real_eip !38
  %436 = zext i1 %435 to i8, !mcsema_real_eip !38
  store volatile i8 %436, i8* %OF_write, !mcsema_real_eip !38
  %437 = trunc i32 %414 to i8, !mcsema_real_eip !38
  %438 = call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !38
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !38
  %440 = zext i1 %439 to i8, !mcsema_real_eip !38
  %441 = xor i8 %440, 1, !mcsema_real_eip !38
  %442 = trunc i8 %441 to i1, !mcsema_real_eip !38
  %443 = zext i1 %442 to i8, !mcsema_real_eip !38
  store volatile i8 %443, i8* %PF_write, !mcsema_real_eip !38
  %444 = icmp ult i32 %414, %412, !mcsema_real_eip !38
  %445 = zext i1 %444 to i8, !mcsema_real_eip !38
  store volatile i8 %445, i8* %CF_write, !mcsema_real_eip !38
  %446 = zext i32 %414 to i64, !mcsema_real_eip !38
  store volatile i64 %446, i64* %ECX_write, !mcsema_real_eip !38
  store volatile i64 138, i64* %EIP_write, !mcsema_real_eip !39
  %447 = load i64, i64* %RBP_read, !mcsema_real_eip !39
  %448 = add i64 %447, -28, !mcsema_real_eip !39
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !39
  %450 = ptrtoint i64* %449 to i64, !mcsema_real_eip !39
  %451 = inttoptr i64 %450 to i32*, !mcsema_real_eip !39
  %452 = load i32, i32* %451, !mcsema_real_eip !39
  %453 = load i32, i32* %ECX_read, !mcsema_real_eip !39
  %454 = add i32 %453, %452, !mcsema_real_eip !39
  %455 = xor i32 %454, %452, !mcsema_real_eip !39
  %456 = xor i32 %455, %453, !mcsema_real_eip !39
  %457 = and i32 %456, 16, !mcsema_real_eip !39
  %458 = icmp ne i32 %457, 0, !mcsema_real_eip !39
  %459 = zext i1 %458 to i8, !mcsema_real_eip !39
  store volatile i8 %459, i8* %AF_write, !mcsema_real_eip !39
  %460 = lshr i32 %454, 31, !mcsema_real_eip !39
  %461 = trunc i32 %460 to i1, !mcsema_real_eip !39
  %462 = zext i1 %461 to i8, !mcsema_real_eip !39
  %463 = trunc i8 %462 to i1, !mcsema_real_eip !39
  %464 = zext i1 %463 to i8, !mcsema_real_eip !39
  store volatile i8 %464, i8* %SF_write, !mcsema_real_eip !39
  %465 = icmp eq i32 %454, 0, !mcsema_real_eip !39
  %466 = zext i1 %465 to i8, !mcsema_real_eip !39
  store volatile i8 %466, i8* %ZF_write, !mcsema_real_eip !39
  %467 = xor i32 %452, %453, !mcsema_real_eip !39
  %468 = xor i32 %467, -1, !mcsema_real_eip !39
  %469 = xor i32 %452, %454, !mcsema_real_eip !39
  %470 = and i32 %468, %469, !mcsema_real_eip !39
  %471 = lshr i32 %470, 31, !mcsema_real_eip !39
  %472 = and i32 %471, 1, !mcsema_real_eip !39
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !39
  %474 = zext i1 %473 to i8, !mcsema_real_eip !39
  %475 = trunc i8 %474 to i1, !mcsema_real_eip !39
  %476 = zext i1 %475 to i8, !mcsema_real_eip !39
  store volatile i8 %476, i8* %OF_write, !mcsema_real_eip !39
  %477 = trunc i32 %454 to i8, !mcsema_real_eip !39
  %478 = call i8 @llvm.ctpop.i8(i8 %477), !mcsema_real_eip !39
  %479 = trunc i8 %478 to i1, !mcsema_real_eip !39
  %480 = zext i1 %479 to i8, !mcsema_real_eip !39
  %481 = xor i8 %480, 1, !mcsema_real_eip !39
  %482 = trunc i8 %481 to i1, !mcsema_real_eip !39
  %483 = zext i1 %482 to i8, !mcsema_real_eip !39
  store volatile i8 %483, i8* %PF_write, !mcsema_real_eip !39
  %484 = icmp ult i32 %454, %452, !mcsema_real_eip !39
  %485 = zext i1 %484 to i8, !mcsema_real_eip !39
  store volatile i8 %485, i8* %CF_write, !mcsema_real_eip !39
  %486 = zext i32 %454 to i64, !mcsema_real_eip !39
  store volatile i64 %486, i64* %ECX_write, !mcsema_real_eip !39
  store volatile i64 141, i64* %EIP_write, !mcsema_real_eip !40
  %487 = load i64, i64* %RBP_read, !mcsema_real_eip !40
  %488 = add i64 %487, -32, !mcsema_real_eip !40
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !40
  %490 = ptrtoint i64* %489 to i64, !mcsema_real_eip !40
  %491 = inttoptr i64 %490 to i32*, !mcsema_real_eip !40
  %492 = load i32, i32* %491, !mcsema_real_eip !40
  %493 = load i32, i32* %ECX_read, !mcsema_real_eip !40
  %494 = add i32 %493, %492, !mcsema_real_eip !40
  %495 = xor i32 %494, %492, !mcsema_real_eip !40
  %496 = xor i32 %495, %493, !mcsema_real_eip !40
  %497 = and i32 %496, 16, !mcsema_real_eip !40
  %498 = icmp ne i32 %497, 0, !mcsema_real_eip !40
  %499 = zext i1 %498 to i8, !mcsema_real_eip !40
  store volatile i8 %499, i8* %AF_write, !mcsema_real_eip !40
  %500 = lshr i32 %494, 31, !mcsema_real_eip !40
  %501 = trunc i32 %500 to i1, !mcsema_real_eip !40
  %502 = zext i1 %501 to i8, !mcsema_real_eip !40
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !40
  %504 = zext i1 %503 to i8, !mcsema_real_eip !40
  store volatile i8 %504, i8* %SF_write, !mcsema_real_eip !40
  %505 = icmp eq i32 %494, 0, !mcsema_real_eip !40
  %506 = zext i1 %505 to i8, !mcsema_real_eip !40
  store volatile i8 %506, i8* %ZF_write, !mcsema_real_eip !40
  %507 = xor i32 %492, %493, !mcsema_real_eip !40
  %508 = xor i32 %507, -1, !mcsema_real_eip !40
  %509 = xor i32 %492, %494, !mcsema_real_eip !40
  %510 = and i32 %508, %509, !mcsema_real_eip !40
  %511 = lshr i32 %510, 31, !mcsema_real_eip !40
  %512 = and i32 %511, 1, !mcsema_real_eip !40
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !40
  %514 = zext i1 %513 to i8, !mcsema_real_eip !40
  %515 = trunc i8 %514 to i1, !mcsema_real_eip !40
  %516 = zext i1 %515 to i8, !mcsema_real_eip !40
  store volatile i8 %516, i8* %OF_write, !mcsema_real_eip !40
  %517 = trunc i32 %494 to i8, !mcsema_real_eip !40
  %518 = call i8 @llvm.ctpop.i8(i8 %517), !mcsema_real_eip !40
  %519 = trunc i8 %518 to i1, !mcsema_real_eip !40
  %520 = zext i1 %519 to i8, !mcsema_real_eip !40
  %521 = xor i8 %520, 1, !mcsema_real_eip !40
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !40
  %523 = zext i1 %522 to i8, !mcsema_real_eip !40
  store volatile i8 %523, i8* %PF_write, !mcsema_real_eip !40
  %524 = icmp ult i32 %494, %492, !mcsema_real_eip !40
  %525 = zext i1 %524 to i8, !mcsema_real_eip !40
  store volatile i8 %525, i8* %CF_write, !mcsema_real_eip !40
  %526 = zext i32 %494 to i64, !mcsema_real_eip !40
  store volatile i64 %526, i64* %ECX_write, !mcsema_real_eip !40
  store volatile i64 144, i64* %EIP_write, !mcsema_real_eip !41
  %527 = load i32, i32* %EAX_read, !mcsema_real_eip !41
  %528 = load i32, i32* %ECX_read, !mcsema_real_eip !41
  %529 = sext i32 %527 to i64, !mcsema_real_eip !41
  %530 = sext i32 %528 to i64, !mcsema_real_eip !41
  %531 = mul i64 %529, %530, !mcsema_real_eip !41
  %532 = trunc i64 %531 to i32, !mcsema_real_eip !41
  %533 = sext i32 %532 to i64, !mcsema_real_eip !41
  %534 = icmp ne i64 %533, %531, !mcsema_real_eip !41
  %535 = icmp slt i32 %532, 0, !mcsema_real_eip !41
  %536 = zext i1 %535 to i8, !mcsema_real_eip !41
  store volatile i8 %536, i8* %SF_write, !mcsema_real_eip !41
  %537 = zext i1 %534 to i8, !mcsema_real_eip !41
  store volatile i8 %537, i8* %OF_write, !mcsema_real_eip !41
  %538 = zext i1 %534 to i8, !mcsema_real_eip !41
  store volatile i8 %538, i8* %CF_write, !mcsema_real_eip !41
  %539 = zext i32 %532 to i64, !mcsema_real_eip !41
  store volatile i64 %539, i64* %EAX_write, !mcsema_real_eip !41
  store volatile i64 147, i64* %EIP_write, !mcsema_real_eip !42
  %540 = load i64, i64* %RSP_read, !mcsema_real_eip !42
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !42
  %542 = load i64, i64* %541, !mcsema_real_eip !42
  store volatile i64 %542, i64* %RBX_write, !mcsema_real_eip !42
  %543 = add i64 %540, 8, !mcsema_real_eip !42
  store volatile i64 %543, i64* %RSP_write, !mcsema_real_eip !42
  store volatile i64 148, i64* %EIP_write, !mcsema_real_eip !43
  %544 = load i64, i64* %RSP_read, !mcsema_real_eip !43
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !43
  %546 = load i64, i64* %545, !mcsema_real_eip !43
  store volatile i64 %546, i64* %RBP_write, !mcsema_real_eip !43
  %547 = add i64 %544, 8, !mcsema_real_eip !43
  store volatile i64 %547, i64* %RSP_write, !mcsema_real_eip !43
  store volatile i64 149, i64* %EIP_write, !mcsema_real_eip !44
  %548 = load i64, i64* %RSP_read, !mcsema_real_eip !44
  %549 = add i64 %548, 8, !mcsema_real_eip !44
  %550 = inttoptr i64 %548 to i64*, !mcsema_real_eip !44
  %551 = load i64, i64* %550, !mcsema_real_eip !44
  store volatile i64 %551, i64* %RIP_write, !mcsema_real_eip !44
  store volatile i64 %549, i64* %RSP_write, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %RIP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !45
  %RIP_read = bitcast i64* %RIP_write to i64*, !mcsema_real_eip !45
  %EIP_write = bitcast i64* %RIP_read to i64*, !mcsema_real_eip !45
  %EIP_read = bitcast i64* %EIP_write to i32*, !mcsema_real_eip !45
  %RAX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !45
  %RAX_read = bitcast i64* %RAX_write to i64*, !mcsema_real_eip !45
  %EAX_write = bitcast i64* %RAX_read to i64*, !mcsema_real_eip !45
  %EAX_read = bitcast i64* %EAX_write to i32*, !mcsema_real_eip !45
  %AX_write = bitcast i32* %EAX_read to i16*, !mcsema_real_eip !45
  %AX_read = bitcast i16* %AX_write to i16*, !mcsema_real_eip !45
  %AL_write = bitcast i16* %AX_read to i8*, !mcsema_real_eip !45
  %AL_read = bitcast i8* %AL_write to i8*, !mcsema_real_eip !45
  %AH_write = getelementptr inbounds i8, i8* %AL_read, i32 1, !mcsema_real_eip !45
  %AH_read = bitcast i8* %AH_write to i8*, !mcsema_real_eip !45
  %RBX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !45
  %RBX_read = bitcast i64* %RBX_write to i64*, !mcsema_real_eip !45
  %EBX_write = bitcast i64* %RBX_read to i64*, !mcsema_real_eip !45
  %EBX_read = bitcast i64* %EBX_write to i32*, !mcsema_real_eip !45
  %BX_write = bitcast i32* %EBX_read to i16*, !mcsema_real_eip !45
  %BX_read = bitcast i16* %BX_write to i16*, !mcsema_real_eip !45
  %BL_write = bitcast i16* %BX_read to i8*, !mcsema_real_eip !45
  %BL_read = bitcast i8* %BL_write to i8*, !mcsema_real_eip !45
  %BH_write = getelementptr inbounds i8, i8* %BL_read, i32 1, !mcsema_real_eip !45
  %BH_read = bitcast i8* %BH_write to i8*, !mcsema_real_eip !45
  %RCX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !45
  %RCX_read = bitcast i64* %RCX_write to i64*, !mcsema_real_eip !45
  %ECX_write = bitcast i64* %RCX_read to i64*, !mcsema_real_eip !45
  %ECX_read = bitcast i64* %ECX_write to i32*, !mcsema_real_eip !45
  %CX_write = bitcast i32* %ECX_read to i16*, !mcsema_real_eip !45
  %CX_read = bitcast i16* %CX_write to i16*, !mcsema_real_eip !45
  %CL_write = bitcast i16* %CX_read to i8*, !mcsema_real_eip !45
  %CL_read = bitcast i8* %CL_write to i8*, !mcsema_real_eip !45
  %CH_write = getelementptr inbounds i8, i8* %CL_read, i32 1, !mcsema_real_eip !45
  %CH_read = bitcast i8* %CH_write to i8*, !mcsema_real_eip !45
  %RDX_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !45
  %RDX_read = bitcast i64* %RDX_write to i64*, !mcsema_real_eip !45
  %EDX_write = bitcast i64* %RDX_read to i64*, !mcsema_real_eip !45
  %EDX_read = bitcast i64* %EDX_write to i32*, !mcsema_real_eip !45
  %DX_write = bitcast i32* %EDX_read to i16*, !mcsema_real_eip !45
  %DX_read = bitcast i16* %DX_write to i16*, !mcsema_real_eip !45
  %DL_write = bitcast i16* %DX_read to i8*, !mcsema_real_eip !45
  %DL_read = bitcast i8* %DL_write to i8*, !mcsema_real_eip !45
  %DH_write = getelementptr inbounds i8, i8* %DL_read, i32 1, !mcsema_real_eip !45
  %DH_read = bitcast i8* %DH_write to i8*, !mcsema_real_eip !45
  %RSI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !45
  %RSI_read = bitcast i64* %RSI_write to i64*, !mcsema_real_eip !45
  %ESI_write = bitcast i64* %RSI_read to i64*, !mcsema_real_eip !45
  %ESI_read = bitcast i64* %ESI_write to i32*, !mcsema_real_eip !45
  %SI_write = bitcast i32* %ESI_read to i16*, !mcsema_real_eip !45
  %SI_read = bitcast i16* %SI_write to i16*, !mcsema_real_eip !45
  %SIL_write = bitcast i16* %SI_read to i8*, !mcsema_real_eip !45
  %SIL_read = bitcast i8* %SIL_write to i8*, !mcsema_real_eip !45
  %RDI_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !45
  %RDI_read = bitcast i64* %RDI_write to i64*, !mcsema_real_eip !45
  %EDI_write = bitcast i64* %RDI_read to i64*, !mcsema_real_eip !45
  %EDI_read = bitcast i64* %EDI_write to i32*, !mcsema_real_eip !45
  %DI_write = bitcast i32* %EDI_read to i16*, !mcsema_real_eip !45
  %DI_read = bitcast i16* %DI_write to i16*, !mcsema_real_eip !45
  %DIL_write = bitcast i16* %DI_read to i8*, !mcsema_real_eip !45
  %DIL_read = bitcast i8* %DIL_write to i8*, !mcsema_real_eip !45
  %RSP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !45
  %RSP_read = bitcast i64* %RSP_write to i64*, !mcsema_real_eip !45
  %ESP_write = bitcast i64* %RSP_read to i64*, !mcsema_real_eip !45
  %ESP_read = bitcast i64* %ESP_write to i32*, !mcsema_real_eip !45
  %SP_write = bitcast i32* %ESP_read to i16*, !mcsema_real_eip !45
  %SP_read = bitcast i16* %SP_write to i16*, !mcsema_real_eip !45
  %SPL_write = bitcast i16* %SP_read to i8*, !mcsema_real_eip !45
  %SPL_read = bitcast i8* %SPL_write to i8*, !mcsema_real_eip !45
  %RBP_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !45
  %RBP_read = bitcast i64* %RBP_write to i64*, !mcsema_real_eip !45
  %EBP_write = bitcast i64* %RBP_read to i64*, !mcsema_real_eip !45
  %EBP_read = bitcast i64* %EBP_write to i32*, !mcsema_real_eip !45
  %BP_write = bitcast i32* %EBP_read to i16*, !mcsema_real_eip !45
  %BP_read = bitcast i16* %BP_write to i16*, !mcsema_real_eip !45
  %BPL_write = bitcast i16* %BP_read to i8*, !mcsema_real_eip !45
  %BPL_read = bitcast i8* %BPL_write to i8*, !mcsema_real_eip !45
  %R8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !45
  %R8_read = bitcast i64* %R8_write to i64*, !mcsema_real_eip !45
  %R8D_write = bitcast i64* %R8_read to i64*, !mcsema_real_eip !45
  %R8D_read = bitcast i64* %R8D_write to i32*, !mcsema_real_eip !45
  %R8W_write = bitcast i32* %R8D_read to i16*, !mcsema_real_eip !45
  %R8W_read = bitcast i16* %R8W_write to i16*, !mcsema_real_eip !45
  %R8B_write = bitcast i16* %R8W_read to i8*, !mcsema_real_eip !45
  %R8B_read = bitcast i8* %R8B_write to i8*, !mcsema_real_eip !45
  %R9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !45
  %R9_read = bitcast i64* %R9_write to i64*, !mcsema_real_eip !45
  %R9D_write = bitcast i64* %R9_read to i64*, !mcsema_real_eip !45
  %R9D_read = bitcast i64* %R9D_write to i32*, !mcsema_real_eip !45
  %R9W_write = bitcast i32* %R9D_read to i16*, !mcsema_real_eip !45
  %R9W_read = bitcast i16* %R9W_write to i16*, !mcsema_real_eip !45
  %R9B_write = bitcast i16* %R9W_read to i8*, !mcsema_real_eip !45
  %R9B_read = bitcast i8* %R9B_write to i8*, !mcsema_real_eip !45
  %R10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !45
  %R10_read = bitcast i64* %R10_write to i64*, !mcsema_real_eip !45
  %R10D_write = bitcast i64* %R10_read to i64*, !mcsema_real_eip !45
  %R10D_read = bitcast i64* %R10D_write to i32*, !mcsema_real_eip !45
  %R10W_write = bitcast i32* %R10D_read to i16*, !mcsema_real_eip !45
  %R10W_read = bitcast i16* %R10W_write to i16*, !mcsema_real_eip !45
  %R10B_write = bitcast i16* %R10W_read to i8*, !mcsema_real_eip !45
  %R10B_read = bitcast i8* %R10B_write to i8*, !mcsema_real_eip !45
  %R11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !45
  %R11_read = bitcast i64* %R11_write to i64*, !mcsema_real_eip !45
  %R11D_write = bitcast i64* %R11_read to i64*, !mcsema_real_eip !45
  %R11D_read = bitcast i64* %R11D_write to i32*, !mcsema_real_eip !45
  %R11W_write = bitcast i32* %R11D_read to i16*, !mcsema_real_eip !45
  %R11W_read = bitcast i16* %R11W_write to i16*, !mcsema_real_eip !45
  %R11B_write = bitcast i16* %R11W_read to i8*, !mcsema_real_eip !45
  %R11B_read = bitcast i8* %R11B_write to i8*, !mcsema_real_eip !45
  %R12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !45
  %R12_read = bitcast i64* %R12_write to i64*, !mcsema_real_eip !45
  %R12D_write = bitcast i64* %R12_read to i64*, !mcsema_real_eip !45
  %R12D_read = bitcast i64* %R12D_write to i32*, !mcsema_real_eip !45
  %R12W_write = bitcast i32* %R12D_read to i16*, !mcsema_real_eip !45
  %R12W_read = bitcast i16* %R12W_write to i16*, !mcsema_real_eip !45
  %R12B_write = bitcast i16* %R12W_read to i8*, !mcsema_real_eip !45
  %R12B_read = bitcast i8* %R12B_write to i8*, !mcsema_real_eip !45
  %R13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !45
  %R13_read = bitcast i64* %R13_write to i64*, !mcsema_real_eip !45
  %R13D_write = bitcast i64* %R13_read to i64*, !mcsema_real_eip !45
  %R13D_read = bitcast i64* %R13D_write to i32*, !mcsema_real_eip !45
  %R13W_write = bitcast i32* %R13D_read to i16*, !mcsema_real_eip !45
  %R13W_read = bitcast i16* %R13W_write to i16*, !mcsema_real_eip !45
  %R13B_write = bitcast i16* %R13W_read to i8*, !mcsema_real_eip !45
  %R13B_read = bitcast i8* %R13B_write to i8*, !mcsema_real_eip !45
  %R14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !45
  %R14_read = bitcast i64* %R14_write to i64*, !mcsema_real_eip !45
  %R14D_write = bitcast i64* %R14_read to i64*, !mcsema_real_eip !45
  %R14D_read = bitcast i64* %R14D_write to i32*, !mcsema_real_eip !45
  %R14W_write = bitcast i32* %R14D_read to i16*, !mcsema_real_eip !45
  %R14W_read = bitcast i16* %R14W_write to i16*, !mcsema_real_eip !45
  %R14B_write = bitcast i16* %R14W_read to i8*, !mcsema_real_eip !45
  %R14B_read = bitcast i8* %R14B_write to i8*, !mcsema_real_eip !45
  %R15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !45
  %R15_read = bitcast i64* %R15_write to i64*, !mcsema_real_eip !45
  %R15D_write = bitcast i64* %R15_read to i64*, !mcsema_real_eip !45
  %R15D_read = bitcast i64* %R15D_write to i32*, !mcsema_real_eip !45
  %R15W_write = bitcast i32* %R15D_read to i16*, !mcsema_real_eip !45
  %R15W_read = bitcast i16* %R15W_write to i16*, !mcsema_real_eip !45
  %R15B_write = bitcast i16* %R15W_read to i8*, !mcsema_real_eip !45
  %R15B_read = bitcast i8* %R15B_write to i8*, !mcsema_real_eip !45
  %CF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !45
  %CF_read = bitcast i8* %CF_write to i8*, !mcsema_real_eip !45
  %PF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !45
  %PF_read = bitcast i8* %PF_write to i8*, !mcsema_real_eip !45
  %AF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !45
  %AF_read = bitcast i8* %AF_write to i8*, !mcsema_real_eip !45
  %ZF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !45
  %ZF_read = bitcast i8* %ZF_write to i8*, !mcsema_real_eip !45
  %SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !45
  %SF_read = bitcast i8* %SF_write to i8*, !mcsema_real_eip !45
  %OF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !45
  %OF_read = bitcast i8* %OF_write to i8*, !mcsema_real_eip !45
  %DF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !45
  %DF_read = bitcast i8* %DF_write to i8*, !mcsema_real_eip !45
  %ST0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !45
  %ST0_read = bitcast x86_fp80* %ST0_write to x86_fp80*, !mcsema_real_eip !45
  %ST1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !45
  %ST1_read = bitcast x86_fp80* %ST1_write to x86_fp80*, !mcsema_real_eip !45
  %ST2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !45
  %ST2_read = bitcast x86_fp80* %ST2_write to x86_fp80*, !mcsema_real_eip !45
  %ST3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !45
  %ST3_read = bitcast x86_fp80* %ST3_write to x86_fp80*, !mcsema_real_eip !45
  %ST4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !45
  %ST4_read = bitcast x86_fp80* %ST4_write to x86_fp80*, !mcsema_real_eip !45
  %ST5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !45
  %ST5_read = bitcast x86_fp80* %ST5_write to x86_fp80*, !mcsema_real_eip !45
  %ST6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !45
  %ST6_read = bitcast x86_fp80* %ST6_write to x86_fp80*, !mcsema_real_eip !45
  %ST7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !45
  %ST7_read = bitcast x86_fp80* %ST7_write to x86_fp80*, !mcsema_real_eip !45
  %FPU_FLAG_BUSY_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !45
  %FPU_FLAG_BUSY_read = bitcast i8* %FPU_FLAG_BUSY_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_C3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !45
  %FPU_FLAG_C3_read = bitcast i8* %FPU_FLAG_C3_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_C2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !45
  %FPU_FLAG_C2_read = bitcast i8* %FPU_FLAG_C2_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_C1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !45
  %FPU_FLAG_C1_read = bitcast i8* %FPU_FLAG_C1_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_C0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !45
  %FPU_FLAG_C0_read = bitcast i8* %FPU_FLAG_C0_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_ES_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !45
  %FPU_FLAG_ES_read = bitcast i8* %FPU_FLAG_ES_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_SF_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !45
  %FPU_FLAG_SF_read = bitcast i8* %FPU_FLAG_SF_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_PE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !45
  %FPU_FLAG_PE_read = bitcast i8* %FPU_FLAG_PE_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_UE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !45
  %FPU_FLAG_UE_read = bitcast i8* %FPU_FLAG_UE_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_OE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !45
  %FPU_FLAG_OE_read = bitcast i8* %FPU_FLAG_OE_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_ZE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !45
  %FPU_FLAG_ZE_read = bitcast i8* %FPU_FLAG_ZE_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_DE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !45
  %FPU_FLAG_DE_read = bitcast i8* %FPU_FLAG_DE_write to i8*, !mcsema_real_eip !45
  %FPU_FLAG_IE_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !45
  %FPU_FLAG_IE_read = bitcast i8* %FPU_FLAG_IE_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_X_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !45
  %FPU_CONTROL_X_read = bitcast i8* %FPU_CONTROL_X_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_RC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !45
  %FPU_CONTROL_RC_read = bitcast i8* %FPU_CONTROL_RC_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_PC_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !45
  %FPU_CONTROL_PC_read = bitcast i8* %FPU_CONTROL_PC_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_PM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !45
  %FPU_CONTROL_PM_read = bitcast i8* %FPU_CONTROL_PM_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_UM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !45
  %FPU_CONTROL_UM_read = bitcast i8* %FPU_CONTROL_UM_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_OM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !45
  %FPU_CONTROL_OM_read = bitcast i8* %FPU_CONTROL_OM_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_ZM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !45
  %FPU_CONTROL_ZM_read = bitcast i8* %FPU_CONTROL_ZM_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_DM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !45
  %FPU_CONTROL_DM_read = bitcast i8* %FPU_CONTROL_DM_write to i8*, !mcsema_real_eip !45
  %FPU_CONTROL_IM_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !45
  %FPU_CONTROL_IM_read = bitcast i8* %FPU_CONTROL_IM_write to i8*, !mcsema_real_eip !45
  %XMM0_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !45
  %XMM0_read = bitcast i128* %XMM0_write to i128*, !mcsema_real_eip !45
  %XMM1_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !45
  %XMM1_read = bitcast i128* %XMM1_write to i128*, !mcsema_real_eip !45
  %XMM2_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !45
  %XMM2_read = bitcast i128* %XMM2_write to i128*, !mcsema_real_eip !45
  %XMM3_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !45
  %XMM3_read = bitcast i128* %XMM3_write to i128*, !mcsema_real_eip !45
  %XMM4_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !45
  %XMM4_read = bitcast i128* %XMM4_write to i128*, !mcsema_real_eip !45
  %XMM5_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !45
  %XMM5_read = bitcast i128* %XMM5_write to i128*, !mcsema_real_eip !45
  %XMM6_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !45
  %XMM6_read = bitcast i128* %XMM6_write to i128*, !mcsema_real_eip !45
  %XMM7_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !45
  %XMM7_read = bitcast i128* %XMM7_write to i128*, !mcsema_real_eip !45
  %XMM8_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !45
  %XMM8_read = bitcast i128* %XMM8_write to i128*, !mcsema_real_eip !45
  %XMM9_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !45
  %XMM9_read = bitcast i128* %XMM9_write to i128*, !mcsema_real_eip !45
  %XMM10_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !45
  %XMM10_read = bitcast i128* %XMM10_write to i128*, !mcsema_real_eip !45
  %XMM11_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !45
  %XMM11_read = bitcast i128* %XMM11_write to i128*, !mcsema_real_eip !45
  %XMM12_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !45
  %XMM12_read = bitcast i128* %XMM12_write to i128*, !mcsema_real_eip !45
  %XMM13_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !45
  %XMM13_read = bitcast i128* %XMM13_write to i128*, !mcsema_real_eip !45
  %XMM14_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !45
  %XMM14_read = bitcast i128* %XMM14_write to i128*, !mcsema_real_eip !45
  %XMM15_write = getelementptr inbounds %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !45
  %XMM15_read = bitcast i128* %XMM15_write to i128*, !mcsema_real_eip !45
  br label %block_a0, !mcsema_real_eip !45

block_a0:                                         ; preds = %entry
  store volatile i64 160, i64* %EIP_write, !mcsema_real_eip !45
  %1 = load i64, i64* %RBP_read, !mcsema_real_eip !45
  %2 = load i64, i64* %RSP_read, !mcsema_real_eip !45
  %3 = sub i64 %2, 8, !mcsema_real_eip !45
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !45
  store i64 %1, i64* %4, !mcsema_real_eip !45
  store volatile i64 %3, i64* %RSP_write, !mcsema_real_eip !45
  store volatile i64 161, i64* %EIP_write, !mcsema_real_eip !46
  %5 = load i64, i64* %RSP_read, !mcsema_real_eip !46
  store volatile i64 %5, i64* %RBP_write, !mcsema_real_eip !46
  store volatile i64 164, i64* %EIP_write, !mcsema_real_eip !47
  %6 = load i64, i64* %R15_read, !mcsema_real_eip !47
  %7 = load i64, i64* %RSP_read, !mcsema_real_eip !47
  %8 = sub i64 %7, 8, !mcsema_real_eip !47
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !47
  store i64 %6, i64* %9, !mcsema_real_eip !47
  store volatile i64 %8, i64* %RSP_write, !mcsema_real_eip !47
  store volatile i64 166, i64* %EIP_write, !mcsema_real_eip !48
  %10 = load i64, i64* %R14_read, !mcsema_real_eip !48
  %11 = load i64, i64* %RSP_read, !mcsema_real_eip !48
  %12 = sub i64 %11, 8, !mcsema_real_eip !48
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !48
  store i64 %10, i64* %13, !mcsema_real_eip !48
  store volatile i64 %12, i64* %RSP_write, !mcsema_real_eip !48
  store volatile i64 168, i64* %EIP_write, !mcsema_real_eip !49
  %14 = load i64, i64* %R13_read, !mcsema_real_eip !49
  %15 = load i64, i64* %RSP_read, !mcsema_real_eip !49
  %16 = sub i64 %15, 8, !mcsema_real_eip !49
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !49
  store i64 %14, i64* %17, !mcsema_real_eip !49
  store volatile i64 %16, i64* %RSP_write, !mcsema_real_eip !49
  store volatile i64 170, i64* %EIP_write, !mcsema_real_eip !50
  %18 = load i64, i64* %R12_read, !mcsema_real_eip !50
  %19 = load i64, i64* %RSP_read, !mcsema_real_eip !50
  %20 = sub i64 %19, 8, !mcsema_real_eip !50
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !50
  store i64 %18, i64* %21, !mcsema_real_eip !50
  store volatile i64 %20, i64* %RSP_write, !mcsema_real_eip !50
  store volatile i64 172, i64* %EIP_write, !mcsema_real_eip !51
  %22 = load i64, i64* %RBX_read, !mcsema_real_eip !51
  %23 = load i64, i64* %RSP_read, !mcsema_real_eip !51
  %24 = sub i64 %23, 8, !mcsema_real_eip !51
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !51
  store i64 %22, i64* %25, !mcsema_real_eip !51
  store volatile i64 %24, i64* %RSP_write, !mcsema_real_eip !51
  store volatile i64 173, i64* %EIP_write, !mcsema_real_eip !52
  %26 = load i64, i64* %RSP_read, !mcsema_real_eip !52
  %27 = sub i64 %26, 216, !mcsema_real_eip !52
  %28 = xor i64 %27, %26, !mcsema_real_eip !52
  %29 = xor i64 %28, 216, !mcsema_real_eip !52
  %30 = and i64 %29, 16, !mcsema_real_eip !52
  %31 = icmp ne i64 %30, 0, !mcsema_real_eip !52
  %32 = zext i1 %31 to i8, !mcsema_real_eip !52
  store volatile i8 %32, i8* %AF_write, !mcsema_real_eip !52
  %33 = trunc i64 %27 to i8, !mcsema_real_eip !52
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !52
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !52
  %36 = zext i1 %35 to i8, !mcsema_real_eip !52
  %37 = xor i8 %36, 1, !mcsema_real_eip !52
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !52
  %39 = zext i1 %38 to i8, !mcsema_real_eip !52
  store volatile i8 %39, i8* %PF_write, !mcsema_real_eip !52
  %40 = icmp eq i64 %27, 0, !mcsema_real_eip !52
  %41 = zext i1 %40 to i8, !mcsema_real_eip !52
  store volatile i8 %41, i8* %ZF_write, !mcsema_real_eip !52
  %42 = lshr i64 %27, 63, !mcsema_real_eip !52
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !52
  %44 = zext i1 %43 to i8, !mcsema_real_eip !52
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !52
  %46 = zext i1 %45 to i8, !mcsema_real_eip !52
  store volatile i8 %46, i8* %SF_write, !mcsema_real_eip !52
  %47 = icmp ult i64 %26, 216, !mcsema_real_eip !52
  %48 = zext i1 %47 to i8, !mcsema_real_eip !52
  store volatile i8 %48, i8* %CF_write, !mcsema_real_eip !52
  %49 = xor i64 %26, 216, !mcsema_real_eip !52
  %50 = xor i64 %26, %27, !mcsema_real_eip !52
  %51 = and i64 %49, %50, !mcsema_real_eip !52
  %52 = lshr i64 %51, 63, !mcsema_real_eip !52
  %53 = trunc i64 %52 to i1, !mcsema_real_eip !52
  %54 = zext i1 %53 to i8, !mcsema_real_eip !52
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !52
  %56 = zext i1 %55 to i8, !mcsema_real_eip !52
  store volatile i8 %56, i8* %OF_write, !mcsema_real_eip !52
  store volatile i64 %27, i64* %RSP_write, !mcsema_real_eip !52
  store volatile i64 180, i64* %EIP_write, !mcsema_real_eip !53
  %57 = zext i32 100 to i64, !mcsema_real_eip !53
  store volatile i64 %57, i64* %EAX_write, !mcsema_real_eip !53
  store volatile i64 185, i64* %EIP_write, !mcsema_real_eip !54
  %58 = zext i32 200 to i64, !mcsema_real_eip !54
  store volatile i64 %58, i64* %ECX_write, !mcsema_real_eip !54
  store volatile i64 190, i64* %EIP_write, !mcsema_real_eip !55
  %59 = zext i32 300 to i64, !mcsema_real_eip !55
  store volatile i64 %59, i64* %EDX_write, !mcsema_real_eip !55
  store volatile i64 195, i64* %EIP_write, !mcsema_real_eip !56
  %60 = zext i32 400 to i64, !mcsema_real_eip !56
  store volatile i64 %60, i64* %R8D_write, !mcsema_real_eip !56
  store volatile i64 201, i64* %EIP_write, !mcsema_real_eip !57
  %61 = zext i32 500 to i64, !mcsema_real_eip !57
  store volatile i64 %61, i64* %R9D_write, !mcsema_real_eip !57
  store volatile i64 207, i64* %EIP_write, !mcsema_real_eip !58
  %62 = zext i32 600 to i64, !mcsema_real_eip !58
  store volatile i64 %62, i64* %R10D_write, !mcsema_real_eip !58
  store volatile i64 213, i64* %EIP_write, !mcsema_real_eip !59
  %63 = zext i32 10 to i64, !mcsema_real_eip !59
  store volatile i64 %63, i64* %R11D_write, !mcsema_real_eip !59
  store volatile i64 219, i64* %EIP_write, !mcsema_real_eip !60
  %64 = load i64, i64* %RBP_read, !mcsema_real_eip !60
  %65 = add i64 %64, -144, !mcsema_real_eip !60
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !60
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !60
  store volatile i64 %67, i64* %RBX_write, !mcsema_real_eip !60
  store volatile i64 226, i64* %EIP_write, !mcsema_real_eip !61
  %68 = load i64, i64* %RBP_read, !mcsema_real_eip !61
  %69 = add i64 %68, -96, !mcsema_real_eip !61
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !61
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !61
  store volatile i64 %71, i64* %R14_write, !mcsema_real_eip !61
  store volatile i64 230, i64* %EIP_write, !mcsema_real_eip !62
  %72 = ptrtoint %0* @data_220 to i64, !mcsema_real_eip !62
  %73 = add i64 %72, 48, !mcsema_real_eip !62
  store volatile i64 %73, i64* %R15_write, !mcsema_real_eip !62
  store volatile i64 240, i64* %EIP_write, !mcsema_real_eip !63
  %74 = zext i32 40 to i64, !mcsema_real_eip !63
  store volatile i64 %74, i64* %R12D_write, !mcsema_real_eip !63
  store volatile i64 246, i64* %EIP_write, !mcsema_real_eip !64
  %75 = load i32, i32* %R12D_read, !mcsema_real_eip !64
  %76 = zext i32 %75 to i64, !mcsema_real_eip !64
  store volatile i64 %76, i64* %R13D_write, !mcsema_real_eip !64
  store volatile i64 249, i64* %EIP_write, !mcsema_real_eip !65
  %77 = ptrtoint %0* @data_220 to i64, !mcsema_real_eip !65
  %78 = add i64 %77, 0, !mcsema_real_eip !65
  store volatile i64 %78, i64* %R12_write, !mcsema_real_eip !65
  store volatile i64 259, i64* %EIP_write, !mcsema_real_eip !66
  %79 = load i64, i64* %RBP_read, !mcsema_real_eip !66
  %80 = add i64 %79, -44, !mcsema_real_eip !66
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !66
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !66
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !66
  store i32 0, i32* %83, !mcsema_real_eip !66
  store volatile i64 266, i64* %EIP_write, !mcsema_real_eip !67
  %84 = load i64, i64* %RBP_read, !mcsema_real_eip !67
  %85 = add i64 %84, -48, !mcsema_real_eip !67
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !67
  %87 = load i32, i32* %EDI_read, !mcsema_real_eip !67
  %88 = ptrtoint i64* %86 to i64, !mcsema_real_eip !67
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !67
  store i32 %87, i32* %89, !mcsema_real_eip !67
  store volatile i64 269, i64* %EIP_write, !mcsema_real_eip !68
  %90 = load i64, i64* %RBP_read, !mcsema_real_eip !68
  %91 = add i64 %90, -56, !mcsema_real_eip !68
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !68
  %93 = load i64, i64* %RSI_read, !mcsema_real_eip !68
  store i64 %93, i64* %92, !mcsema_real_eip !68
  store volatile i64 273, i64* %EIP_write, !mcsema_real_eip !69
  %94 = load i64, i64* %R14_read, !mcsema_real_eip !69
  store volatile i64 %94, i64* %RSI_write, !mcsema_real_eip !69
  store volatile i64 276, i64* %EIP_write, !mcsema_real_eip !70
  %95 = load i64, i64* %RSI_read, !mcsema_real_eip !70
  store volatile i64 %95, i64* %RDI_write, !mcsema_real_eip !70
  store volatile i64 279, i64* %EIP_write, !mcsema_real_eip !71
  %96 = load i64, i64* %R12_read, !mcsema_real_eip !71
  store volatile i64 %96, i64* %RSI_write, !mcsema_real_eip !71
  store volatile i64 282, i64* %EIP_write, !mcsema_real_eip !72
  %97 = load i64, i64* %RBP_read, !mcsema_real_eip !72
  %98 = add i64 %97, -152, !mcsema_real_eip !72
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !72
  %100 = load i32, i32* %EDX_read, !mcsema_real_eip !72
  %101 = ptrtoint i64* %99 to i64, !mcsema_real_eip !72
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !72
  store i32 %100, i32* %102, !mcsema_real_eip !72
  store volatile i64 288, i64* %EIP_write, !mcsema_real_eip !73
  %103 = load i64, i64* %R13_read, !mcsema_real_eip !73
  store volatile i64 %103, i64* %RDX_write, !mcsema_real_eip !73
  store volatile i64 291, i64* %EIP_write, !mcsema_real_eip !74
  %104 = load i64, i64* %RBP_read, !mcsema_real_eip !74
  %105 = add i64 %104, -160, !mcsema_real_eip !74
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !74
  %107 = load i64, i64* %R15_read, !mcsema_real_eip !74
  store i64 %107, i64* %106, !mcsema_real_eip !74
  store volatile i64 298, i64* %EIP_write, !mcsema_real_eip !75
  %108 = load i64, i64* %RBP_read, !mcsema_real_eip !75
  %109 = add i64 %108, -168, !mcsema_real_eip !75
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !75
  %111 = load i64, i64* %R13_read, !mcsema_real_eip !75
  store i64 %111, i64* %110, !mcsema_real_eip !75
  store volatile i64 305, i64* %EIP_write, !mcsema_real_eip !76
  %112 = load i64, i64* %RBP_read, !mcsema_real_eip !76
  %113 = add i64 %112, -172, !mcsema_real_eip !76
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !76
  %115 = load i32, i32* %EAX_read, !mcsema_real_eip !76
  %116 = ptrtoint i64* %114 to i64, !mcsema_real_eip !76
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !76
  store i32 %115, i32* %117, !mcsema_real_eip !76
  store volatile i64 311, i64* %EIP_write, !mcsema_real_eip !77
  %118 = load i64, i64* %RBP_read, !mcsema_real_eip !77
  %119 = add i64 %118, -176, !mcsema_real_eip !77
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !77
  %121 = load i32, i32* %ECX_read, !mcsema_real_eip !77
  %122 = ptrtoint i64* %120 to i64, !mcsema_real_eip !77
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !77
  store i32 %121, i32* %123, !mcsema_real_eip !77
  store volatile i64 317, i64* %EIP_write, !mcsema_real_eip !78
  %124 = load i64, i64* %RBP_read, !mcsema_real_eip !78
  %125 = add i64 %124, -184, !mcsema_real_eip !78
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !78
  %127 = load i64, i64* %R14_read, !mcsema_real_eip !78
  store i64 %127, i64* %126, !mcsema_real_eip !78
  store volatile i64 324, i64* %EIP_write, !mcsema_real_eip !79
  %128 = load i64, i64* %RBP_read, !mcsema_real_eip !79
  %129 = add i64 %128, -188, !mcsema_real_eip !79
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !79
  %131 = load i32, i32* %R8D_read, !mcsema_real_eip !79
  %132 = ptrtoint i64* %130 to i64, !mcsema_real_eip !79
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !79
  store i32 %131, i32* %133, !mcsema_real_eip !79
  store volatile i64 331, i64* %EIP_write, !mcsema_real_eip !80
  %134 = load i64, i64* %RBP_read, !mcsema_real_eip !80
  %135 = add i64 %134, -192, !mcsema_real_eip !80
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !80
  %137 = load i32, i32* %R9D_read, !mcsema_real_eip !80
  %138 = ptrtoint i64* %136 to i64, !mcsema_real_eip !80
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !80
  store i32 %137, i32* %139, !mcsema_real_eip !80
  store volatile i64 338, i64* %EIP_write, !mcsema_real_eip !81
  %140 = load i64, i64* %RBP_read, !mcsema_real_eip !81
  %141 = add i64 %140, -196, !mcsema_real_eip !81
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !81
  %143 = load i32, i32* %R10D_read, !mcsema_real_eip !81
  %144 = ptrtoint i64* %142 to i64, !mcsema_real_eip !81
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !81
  store i32 %143, i32* %145, !mcsema_real_eip !81
  store volatile i64 345, i64* %EIP_write, !mcsema_real_eip !82
  %146 = load i64, i64* %RBP_read, !mcsema_real_eip !82
  %147 = add i64 %146, -200, !mcsema_real_eip !82
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !82
  %149 = load i32, i32* %R11D_read, !mcsema_real_eip !82
  %150 = ptrtoint i64* %148 to i64, !mcsema_real_eip !82
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !82
  store i32 %149, i32* %151, !mcsema_real_eip !82
  store volatile i64 352, i64* %EIP_write, !mcsema_real_eip !83
  %152 = load i64, i64* %RBP_read, !mcsema_real_eip !83
  %153 = add i64 %152, -208, !mcsema_real_eip !83
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !83
  %155 = load i64, i64* %RBX_read, !mcsema_real_eip !83
  store i64 %155, i64* %154, !mcsema_real_eip !83
  store volatile i64 359, i64* %EIP_write, !mcsema_real_eip !84
  %156 = load i64, i64* %RDI_read, !mcsema_real_eip !84
  %157 = load i64, i64* %RSI_read, !mcsema_real_eip !84
  %158 = load i64, i64* %RDX_read, !mcsema_real_eip !84
  %159 = load i64, i64* %RSP_read, !mcsema_real_eip !84
  %160 = sub i64 %159, 8, !mcsema_real_eip !84
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !84
  store i64 -2415393069852865332, i64* %161, !mcsema_real_eip !84
  store volatile i64 %160, i64* %RSP_write, !mcsema_real_eip !84
  %162 = call x86_64_sysvcc i64 @_memcpy(i64 %156, i64 %157, i64 %158), !mcsema_real_eip !84
  store volatile i64 %162, i64* %RAX_write, !mcsema_real_eip !84
  store volatile i64 364, i64* %EIP_write, !mcsema_real_eip !85
  %163 = load i64, i64* %RBP_read, !mcsema_real_eip !85
  %164 = add i64 %163, -208, !mcsema_real_eip !85
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !85
  %166 = load i64, i64* %165, !mcsema_real_eip !85
  store volatile i64 %166, i64* %RDX_write, !mcsema_real_eip !85
  store volatile i64 371, i64* %EIP_write, !mcsema_real_eip !86
  %167 = load i64, i64* %RDX_read, !mcsema_real_eip !86
  store volatile i64 %167, i64* %RDI_write, !mcsema_real_eip !86
  store volatile i64 374, i64* %EIP_write, !mcsema_real_eip !87
  %168 = load i64, i64* %RBP_read, !mcsema_real_eip !87
  %169 = add i64 %168, -160, !mcsema_real_eip !87
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !87
  %171 = load i64, i64* %170, !mcsema_real_eip !87
  store volatile i64 %171, i64* %RSI_write, !mcsema_real_eip !87
  store volatile i64 381, i64* %EIP_write, !mcsema_real_eip !88
  %172 = load i64, i64* %RBP_read, !mcsema_real_eip !88
  %173 = add i64 %172, -168, !mcsema_real_eip !88
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !88
  %175 = load i64, i64* %174, !mcsema_real_eip !88
  store volatile i64 %175, i64* %RDX_write, !mcsema_real_eip !88
  store volatile i64 388, i64* %EIP_write, !mcsema_real_eip !89
  %176 = load i64, i64* %RDI_read, !mcsema_real_eip !89
  %177 = load i64, i64* %RSI_read, !mcsema_real_eip !89
  %178 = load i64, i64* %RDX_read, !mcsema_real_eip !89
  %179 = load i64, i64* %RSP_read, !mcsema_real_eip !89
  %180 = sub i64 %179, 8, !mcsema_real_eip !89
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !89
  store i64 -2415393069852865332, i64* %181, !mcsema_real_eip !89
  store volatile i64 %180, i64* %RSP_write, !mcsema_real_eip !89
  %182 = call x86_64_sysvcc i64 @_memcpy(i64 %176, i64 %177, i64 %178), !mcsema_real_eip !89
  store volatile i64 %182, i64* %RAX_write, !mcsema_real_eip !89
  store volatile i64 393, i64* %EIP_write, !mcsema_real_eip !90
  %183 = load i64, i64* %RBP_read, !mcsema_real_eip !90
  %184 = add i64 %183, -172, !mcsema_real_eip !90
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !90
  %186 = ptrtoint i64* %185 to i64, !mcsema_real_eip !90
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !90
  %188 = load i32, i32* %187, !mcsema_real_eip !90
  %189 = zext i32 %188 to i64, !mcsema_real_eip !90
  store volatile i64 %189, i64* %EDI_write, !mcsema_real_eip !90
  store volatile i64 399, i64* %EIP_write, !mcsema_real_eip !91
  %190 = load i64, i64* %RBP_read, !mcsema_real_eip !91
  %191 = add i64 %190, -176, !mcsema_real_eip !91
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !91
  %193 = ptrtoint i64* %192 to i64, !mcsema_real_eip !91
  %194 = inttoptr i64 %193 to i32*, !mcsema_real_eip !91
  %195 = load i32, i32* %194, !mcsema_real_eip !91
  %196 = zext i32 %195 to i64, !mcsema_real_eip !91
  store volatile i64 %196, i64* %ESI_write, !mcsema_real_eip !91
  store volatile i64 405, i64* %EIP_write, !mcsema_real_eip !92
  %197 = load i64, i64* %RBP_read, !mcsema_real_eip !92
  %198 = add i64 %197, -152, !mcsema_real_eip !92
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !92
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !92
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !92
  %202 = load i32, i32* %201, !mcsema_real_eip !92
  %203 = zext i32 %202 to i64, !mcsema_real_eip !92
  store volatile i64 %203, i64* %EDX_write, !mcsema_real_eip !92
  store volatile i64 411, i64* %EIP_write, !mcsema_real_eip !93
  %204 = load i64, i64* %RBP_read, !mcsema_real_eip !93
  %205 = add i64 %204, -188, !mcsema_real_eip !93
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !93
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !93
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !93
  %209 = load i32, i32* %208, !mcsema_real_eip !93
  %210 = zext i32 %209 to i64, !mcsema_real_eip !93
  store volatile i64 %210, i64* %ECX_write, !mcsema_real_eip !93
  store volatile i64 417, i64* %EIP_write, !mcsema_real_eip !94
  %211 = load i64, i64* %RBP_read, !mcsema_real_eip !94
  %212 = add i64 %211, -192, !mcsema_real_eip !94
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !94
  %214 = ptrtoint i64* %213 to i64, !mcsema_real_eip !94
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !94
  %216 = load i32, i32* %215, !mcsema_real_eip !94
  %217 = zext i32 %216 to i64, !mcsema_real_eip !94
  store volatile i64 %217, i64* %R8D_write, !mcsema_real_eip !94
  store volatile i64 424, i64* %EIP_write, !mcsema_real_eip !95
  %218 = load i64, i64* %RBP_read, !mcsema_real_eip !95
  %219 = add i64 %218, -196, !mcsema_real_eip !95
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !95
  %221 = ptrtoint i64* %220 to i64, !mcsema_real_eip !95
  %222 = inttoptr i64 %221 to i32*, !mcsema_real_eip !95
  %223 = load i32, i32* %222, !mcsema_real_eip !95
  %224 = zext i32 %223 to i64, !mcsema_real_eip !95
  store volatile i64 %224, i64* %R9D_write, !mcsema_real_eip !95
  store volatile i64 431, i64* %EIP_write, !mcsema_real_eip !96
  %225 = load i64, i64* %RSP_read, !mcsema_real_eip !96
  %226 = add i64 %225, 0, !mcsema_real_eip !96
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !96
  %228 = ptrtoint i64* %227 to i64, !mcsema_real_eip !96
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !96
  store i32 10, i32* %229, !mcsema_real_eip !96
  store volatile i64 438, i64* %EIP_write, !mcsema_real_eip !97
  %230 = load i64, i64* %RBP_read, !mcsema_real_eip !97
  %231 = add i64 %230, -184, !mcsema_real_eip !97
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !97
  %233 = load i64, i64* %232, !mcsema_real_eip !97
  store volatile i64 %233, i64* %RBX_write, !mcsema_real_eip !97
  store volatile i64 445, i64* %EIP_write, !mcsema_real_eip !98
  %234 = load i64, i64* %RSP_read, !mcsema_real_eip !98
  %235 = add i64 %234, 8, !mcsema_real_eip !98
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !98
  %237 = load i64, i64* %RBX_read, !mcsema_real_eip !98
  store i64 %237, i64* %236, !mcsema_real_eip !98
  store volatile i64 450, i64* %EIP_write, !mcsema_real_eip !99
  %238 = load i64, i64* %RSP_read, !mcsema_real_eip !99
  %239 = add i64 %238, 16, !mcsema_real_eip !99
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !99
  %241 = ptrtoint i64* %240 to i64, !mcsema_real_eip !99
  %242 = inttoptr i64 %241 to i32*, !mcsema_real_eip !99
  store i32 10, i32* %242, !mcsema_real_eip !99
  store volatile i64 458, i64* %EIP_write, !mcsema_real_eip !100
  %243 = load i64, i64* %RBP_read, !mcsema_real_eip !100
  %244 = add i64 %243, -208, !mcsema_real_eip !100
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !100
  %246 = load i64, i64* %245, !mcsema_real_eip !100
  store volatile i64 %246, i64* %R14_write, !mcsema_real_eip !100
  store volatile i64 465, i64* %EIP_write, !mcsema_real_eip !101
  %247 = load i64, i64* %RSP_read, !mcsema_real_eip !101
  %248 = add i64 %247, 24, !mcsema_real_eip !101
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !101
  %250 = load i64, i64* %R14_read, !mcsema_real_eip !101
  store i64 %250, i64* %249, !mcsema_real_eip !101
  store volatile i64 470, i64* %EIP_write, !mcsema_real_eip !102
  %251 = load i64, i64* %RSP_read, !mcsema_real_eip !102
  %252 = sub i64 %251, 8, !mcsema_real_eip !102
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !102
  store i64 475, i64* %253, !mcsema_real_eip !102
  store volatile i64 %252, i64* %RSP_write, !mcsema_real_eip !102
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !102
  store volatile i64 475, i64* %EIP_write, !mcsema_real_eip !103
  %254 = ptrtoint %1* @data_278 to i64, !mcsema_real_eip !103
  %255 = add i64 %254, 0, !mcsema_real_eip !103
  store volatile i64 %255, i64* %RDI_write, !mcsema_real_eip !103
  store volatile i64 485, i64* %EIP_write, !mcsema_real_eip !104
  %256 = load i64, i64* %RBP_read, !mcsema_real_eip !104
  %257 = add i64 %256, -148, !mcsema_real_eip !104
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !104
  %259 = load i32, i32* %EAX_read, !mcsema_real_eip !104
  %260 = ptrtoint i64* %258 to i64, !mcsema_real_eip !104
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !104
  store i32 %259, i32* %261, !mcsema_real_eip !104
  store volatile i64 491, i64* %EIP_write, !mcsema_real_eip !105
  %262 = load i64, i64* %RBP_read, !mcsema_real_eip !105
  %263 = add i64 %262, -148, !mcsema_real_eip !105
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !105
  %265 = ptrtoint i64* %264 to i64, !mcsema_real_eip !105
  %266 = inttoptr i64 %265 to i32*, !mcsema_real_eip !105
  %267 = load i32, i32* %266, !mcsema_real_eip !105
  %268 = zext i32 %267 to i64, !mcsema_real_eip !105
  store volatile i64 %268, i64* %ESI_write, !mcsema_real_eip !105
  store volatile i64 497, i64* %EIP_write, !mcsema_real_eip !106
  store volatile i8 0, i8* %AL_write, !mcsema_real_eip !106
  store volatile i64 499, i64* %EIP_write, !mcsema_real_eip !107
  %269 = load i64, i64* %RDI_read, !mcsema_real_eip !107
  %270 = load i64, i64* %RSI_read, !mcsema_real_eip !107
  %271 = load i64, i64* %RDX_read, !mcsema_real_eip !107
  %272 = load i64, i64* %RCX_read, !mcsema_real_eip !107
  %273 = load i64, i64* %R8_read, !mcsema_real_eip !107
  %274 = load i64, i64* %R9_read, !mcsema_real_eip !107
  %275 = load i64, i64* %RSP_read, !mcsema_real_eip !107
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !107
  %277 = load i64, i64* %276, !mcsema_real_eip !107
  %278 = add i64 %275, 8, !mcsema_real_eip !107
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !107
  %280 = load i64, i64* %279, !mcsema_real_eip !107
  %281 = add i64 %278, 8, !mcsema_real_eip !107
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !107
  %283 = load i64, i64* %282, !mcsema_real_eip !107
  %284 = add i64 %281, 8, !mcsema_real_eip !107
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !107
  %286 = load i64, i64* %285, !mcsema_real_eip !107
  %287 = add i64 %284, 8, !mcsema_real_eip !107
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !107
  %289 = load i64, i64* %288, !mcsema_real_eip !107
  %290 = add i64 %287, 8, !mcsema_real_eip !107
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !107
  %292 = load i64, i64* %291, !mcsema_real_eip !107
  %293 = add i64 %290, 8, !mcsema_real_eip !107
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !107
  %295 = load i64, i64* %294, !mcsema_real_eip !107
  %296 = add i64 %293, 8, !mcsema_real_eip !107
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !107
  %298 = load i64, i64* %297, !mcsema_real_eip !107
  %299 = add i64 %296, 8, !mcsema_real_eip !107
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !107
  %301 = load i64, i64* %300, !mcsema_real_eip !107
  %302 = add i64 %299, 8, !mcsema_real_eip !107
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !107
  %304 = load i64, i64* %303, !mcsema_real_eip !107
  %305 = load i64, i64* %RSP_read, !mcsema_real_eip !107
  %306 = sub i64 %305, 8, !mcsema_real_eip !107
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !107
  store i64 -2415393069852865332, i64* %307, !mcsema_real_eip !107
  store volatile i64 %306, i64* %RSP_write, !mcsema_real_eip !107
  %308 = call x86_64_sysvcc i64 @_printf(i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %277, i64 %280, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304), !mcsema_real_eip !107
  store volatile i64 %308, i64* %RAX_write, !mcsema_real_eip !107
  store volatile i64 504, i64* %EIP_write, !mcsema_real_eip !108
  %309 = load i64, i64* %RBP_read, !mcsema_real_eip !108
  %310 = add i64 %309, -148, !mcsema_real_eip !108
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !108
  %312 = ptrtoint i64* %311 to i64, !mcsema_real_eip !108
  %313 = inttoptr i64 %312 to i32*, !mcsema_real_eip !108
  %314 = load i32, i32* %313, !mcsema_real_eip !108
  %315 = zext i32 %314 to i64, !mcsema_real_eip !108
  store volatile i64 %315, i64* %ECX_write, !mcsema_real_eip !108
  store volatile i64 510, i64* %EIP_write, !mcsema_real_eip !109
  %316 = load i64, i64* %RBP_read, !mcsema_real_eip !109
  %317 = add i64 %316, -212, !mcsema_real_eip !109
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !109
  %319 = load i32, i32* %EAX_read, !mcsema_real_eip !109
  %320 = ptrtoint i64* %318 to i64, !mcsema_real_eip !109
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !109
  store i32 %319, i32* %321, !mcsema_real_eip !109
  store volatile i64 516, i64* %EIP_write, !mcsema_real_eip !110
  %322 = load i32, i32* %ECX_read, !mcsema_real_eip !110
  %323 = zext i32 %322 to i64, !mcsema_real_eip !110
  store volatile i64 %323, i64* %EAX_write, !mcsema_real_eip !110
  store volatile i64 518, i64* %EIP_write, !mcsema_real_eip !111
  %324 = load i64, i64* %RSP_read, !mcsema_real_eip !111
  %325 = add i64 216, %324, !mcsema_real_eip !111
  %326 = xor i64 %325, %324, !mcsema_real_eip !111
  %327 = xor i64 %326, 216, !mcsema_real_eip !111
  %328 = and i64 %327, 16, !mcsema_real_eip !111
  %329 = icmp ne i64 %328, 0, !mcsema_real_eip !111
  %330 = zext i1 %329 to i8, !mcsema_real_eip !111
  store volatile i8 %330, i8* %AF_write, !mcsema_real_eip !111
  %331 = lshr i64 %325, 63, !mcsema_real_eip !111
  %332 = trunc i64 %331 to i1, !mcsema_real_eip !111
  %333 = zext i1 %332 to i8, !mcsema_real_eip !111
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !111
  %335 = zext i1 %334 to i8, !mcsema_real_eip !111
  store volatile i8 %335, i8* %SF_write, !mcsema_real_eip !111
  %336 = icmp eq i64 %325, 0, !mcsema_real_eip !111
  %337 = zext i1 %336 to i8, !mcsema_real_eip !111
  store volatile i8 %337, i8* %ZF_write, !mcsema_real_eip !111
  %338 = xor i64 %324, 216, !mcsema_real_eip !111
  %339 = xor i64 %338, -1, !mcsema_real_eip !111
  %340 = xor i64 %324, %325, !mcsema_real_eip !111
  %341 = and i64 %339, %340, !mcsema_real_eip !111
  %342 = lshr i64 %341, 63, !mcsema_real_eip !111
  %343 = and i64 %342, 1, !mcsema_real_eip !111
  %344 = trunc i64 %343 to i1, !mcsema_real_eip !111
  %345 = zext i1 %344 to i8, !mcsema_real_eip !111
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !111
  %347 = zext i1 %346 to i8, !mcsema_real_eip !111
  store volatile i8 %347, i8* %OF_write, !mcsema_real_eip !111
  %348 = trunc i64 %325 to i8, !mcsema_real_eip !111
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !111
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !111
  %351 = zext i1 %350 to i8, !mcsema_real_eip !111
  %352 = xor i8 %351, 1, !mcsema_real_eip !111
  %353 = trunc i8 %352 to i1, !mcsema_real_eip !111
  %354 = zext i1 %353 to i8, !mcsema_real_eip !111
  store volatile i8 %354, i8* %PF_write, !mcsema_real_eip !111
  %355 = icmp ult i64 %325, %324, !mcsema_real_eip !111
  %356 = zext i1 %355 to i8, !mcsema_real_eip !111
  store volatile i8 %356, i8* %CF_write, !mcsema_real_eip !111
  store volatile i64 %325, i64* %RSP_write, !mcsema_real_eip !111
  store volatile i64 525, i64* %EIP_write, !mcsema_real_eip !112
  %357 = load i64, i64* %RSP_read, !mcsema_real_eip !112
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !112
  %359 = load i64, i64* %358, !mcsema_real_eip !112
  store volatile i64 %359, i64* %RBX_write, !mcsema_real_eip !112
  %360 = add i64 %357, 8, !mcsema_real_eip !112
  store volatile i64 %360, i64* %RSP_write, !mcsema_real_eip !112
  store volatile i64 526, i64* %EIP_write, !mcsema_real_eip !113
  %361 = load i64, i64* %RSP_read, !mcsema_real_eip !113
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !113
  %363 = load i64, i64* %362, !mcsema_real_eip !113
  store volatile i64 %363, i64* %R12_write, !mcsema_real_eip !113
  %364 = add i64 %361, 8, !mcsema_real_eip !113
  store volatile i64 %364, i64* %RSP_write, !mcsema_real_eip !113
  store volatile i64 528, i64* %EIP_write, !mcsema_real_eip !114
  %365 = load i64, i64* %RSP_read, !mcsema_real_eip !114
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !114
  %367 = load i64, i64* %366, !mcsema_real_eip !114
  store volatile i64 %367, i64* %R13_write, !mcsema_real_eip !114
  %368 = add i64 %365, 8, !mcsema_real_eip !114
  store volatile i64 %368, i64* %RSP_write, !mcsema_real_eip !114
  store volatile i64 530, i64* %EIP_write, !mcsema_real_eip !115
  %369 = load i64, i64* %RSP_read, !mcsema_real_eip !115
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !115
  %371 = load i64, i64* %370, !mcsema_real_eip !115
  store volatile i64 %371, i64* %R14_write, !mcsema_real_eip !115
  %372 = add i64 %369, 8, !mcsema_real_eip !115
  store volatile i64 %372, i64* %RSP_write, !mcsema_real_eip !115
  store volatile i64 532, i64* %EIP_write, !mcsema_real_eip !116
  %373 = load i64, i64* %RSP_read, !mcsema_real_eip !116
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !116
  %375 = load i64, i64* %374, !mcsema_real_eip !116
  store volatile i64 %375, i64* %R15_write, !mcsema_real_eip !116
  %376 = add i64 %373, 8, !mcsema_real_eip !116
  store volatile i64 %376, i64* %RSP_write, !mcsema_real_eip !116
  store volatile i64 534, i64* %EIP_write, !mcsema_real_eip !117
  %377 = load i64, i64* %RSP_read, !mcsema_real_eip !117
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !117
  %379 = load i64, i64* %378, !mcsema_real_eip !117
  store volatile i64 %379, i64* %RBP_write, !mcsema_real_eip !117
  %380 = add i64 %377, 8, !mcsema_real_eip !117
  store volatile i64 %380, i64* %RSP_write, !mcsema_real_eip !117
  store volatile i64 535, i64* %EIP_write, !mcsema_real_eip !118
  %381 = load i64, i64* %RSP_read, !mcsema_real_eip !118
  %382 = add i64 %381, 8, !mcsema_real_eip !118
  %383 = inttoptr i64 %381 to i64*, !mcsema_real_eip !118
  %384 = load i64, i64* %383, !mcsema_real_eip !118
  store volatile i64 %384, i64* %RIP_write, !mcsema_real_eip !118
  store volatile i64 %382, i64* %RSP_write, !mcsema_real_eip !118
  ret void, !mcsema_real_eip !118
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!9 = !{i64 26}
!10 = !{i64 29}
!11 = !{i64 32}
!12 = !{i64 36}
!13 = !{i64 40}
!14 = !{i64 43}
!15 = !{i64 47}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 62}
!19 = !{i64 69}
!20 = !{i64 72}
!21 = !{i64 75}
!22 = !{i64 81}
!23 = !{i64 85}
!24 = !{i64 89}
!25 = !{i64 92}
!26 = !{i64 96}
!27 = !{i64 100}
!28 = !{i64 103}
!29 = !{i64 106}
!30 = !{i64 109}
!31 = !{i64 112}
!32 = !{i64 115}
!33 = !{i64 118}
!34 = !{i64 123}
!35 = !{i64 126}
!36 = !{i64 129}
!37 = !{i64 132}
!38 = !{i64 135}
!39 = !{i64 138}
!40 = !{i64 141}
!41 = !{i64 144}
!42 = !{i64 147}
!43 = !{i64 148}
!44 = !{i64 149}
!45 = !{i64 160}
!46 = !{i64 161}
!47 = !{i64 164}
!48 = !{i64 166}
!49 = !{i64 168}
!50 = !{i64 170}
!51 = !{i64 172}
!52 = !{i64 173}
!53 = !{i64 180}
!54 = !{i64 185}
!55 = !{i64 190}
!56 = !{i64 195}
!57 = !{i64 201}
!58 = !{i64 207}
!59 = !{i64 213}
!60 = !{i64 219}
!61 = !{i64 226}
!62 = !{i64 230}
!63 = !{i64 240}
!64 = !{i64 246}
!65 = !{i64 249}
!66 = !{i64 259}
!67 = !{i64 266}
!68 = !{i64 269}
!69 = !{i64 273}
!70 = !{i64 276}
!71 = !{i64 279}
!72 = !{i64 282}
!73 = !{i64 288}
!74 = !{i64 291}
!75 = !{i64 298}
!76 = !{i64 305}
!77 = !{i64 311}
!78 = !{i64 317}
!79 = !{i64 324}
!80 = !{i64 331}
!81 = !{i64 338}
!82 = !{i64 345}
!83 = !{i64 352}
!84 = !{i64 359}
!85 = !{i64 364}
!86 = !{i64 371}
!87 = !{i64 374}
!88 = !{i64 381}
!89 = !{i64 388}
!90 = !{i64 393}
!91 = !{i64 399}
!92 = !{i64 405}
!93 = !{i64 411}
!94 = !{i64 417}
!95 = !{i64 424}
!96 = !{i64 431}
!97 = !{i64 438}
!98 = !{i64 445}
!99 = !{i64 450}
!100 = !{i64 458}
!101 = !{i64 465}
!102 = !{i64 470}
!103 = !{i64 475}
!104 = !{i64 485}
!105 = !{i64 491}
!106 = !{i64 497}
!107 = !{i64 499}
!108 = !{i64 504}
!109 = !{i64 510}
!110 = !{i64 516}
!111 = !{i64 518}
!112 = !{i64 525}
!113 = !{i64 526}
!114 = !{i64 528}
!115 = !{i64 530}
!116 = !{i64 532}
!117 = !{i64 534}
!118 = !{i64 535}
