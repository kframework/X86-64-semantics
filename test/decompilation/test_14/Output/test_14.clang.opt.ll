; ModuleID = 'Output/test_14.clang.opt.bc'
source_filename = "Output/test_14.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
module asm "  .globl strcmp;"
module asm "  .globl _strcmp;"
module asm "  .type _strcmp,@function"
module asm "_strcmp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strcmp@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strcmp,0b-_strcmp;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_10;"
module asm "  .globl checkFn;"
module asm "  .type checkFn,@function"
module asm "checkFn:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size checkFn,0b-checkFn;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x3d = internal constant %0 <{ [4 x i8] c"foo\00" }>, align 64
@data_0x48 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"-\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = load i64, i64* %2, !mcsema_real_eip !4
  store i64 %3, i64* %XBP, !mcsema_real_eip !4
  store i64 %RSP_val.1, i64* %XSP, !mcsema_real_eip !4
  %4 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %5 = inttoptr i64 %RSP_val.1 to i64*, !mcsema_real_eip !5
  %6 = load i64, i64* %5, !mcsema_real_eip !5
  store i64 %6, i64* %XIP, !mcsema_real_eip !5
  store i64 %4, i64* %XSP, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !6
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !6
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  br label %block_0x10, !mcsema_real_eip !6

block_0x10:                                       ; preds = %entry
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !6
  %1 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !6
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !6
  store i64 %RBP_val.5, i64* %2, !mcsema_real_eip !6
  store i64 %1, i64* %XSP, !mcsema_real_eip !6
  store i64 %1, i64* %XBP, !mcsema_real_eip !7
  %3 = sub i64 %1, 16, !mcsema_real_eip !8
  %4 = xor i64 %3, %1, !mcsema_real_eip !8
  %5 = xor i64 %4, 16, !mcsema_real_eip !8
  %6 = and i64 %5, 16, !mcsema_real_eip !8
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !8
  store i1 %7, i1* %AF, !mcsema_real_eip !8
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !8
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !8
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !8
  %11 = xor i1 %10, true, !mcsema_real_eip !8
  store i1 %11, i1* %PF, !mcsema_real_eip !8
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !8
  store i1 %12, i1* %ZF, !mcsema_real_eip !8
  %13 = lshr i64 %3, 63, !mcsema_real_eip !8
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !8
  store i1 %14, i1* %SF, !mcsema_real_eip !8
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !8
  store i1 %15, i1* %CF, !mcsema_real_eip !8
  %16 = xor i64 %1, 16, !mcsema_real_eip !8
  %17 = and i64 %16, %4, !mcsema_real_eip !8
  %18 = lshr i64 %17, 63, !mcsema_real_eip !8
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !8
  store i1 %19, i1* %OF, !mcsema_real_eip !8
  store i64 %3, i64* %XSP, !mcsema_real_eip !8
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XAX, !mcsema_real_eip !9
  %20 = add i64 %1, -8, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !10
  store i64 %RDI_val.10, i64* %21, !mcsema_real_eip !10
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !11
  %22 = add i64 %RBP_val.11, -16, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !11
  %RAX_val.12 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.12, i64* %23, !mcsema_real_eip !11
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !12
  %24 = add i64 %RBP_val.13, -8, !mcsema_real_eip !12
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !12
  %26 = load i64, i64* %25, !mcsema_real_eip !12
  store i64 %26, i64* %XDI, !mcsema_real_eip !12
  %27 = add i64 %RBP_val.13, -16, !mcsema_real_eip !13
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !13
  %29 = load i64, i64* %28, !mcsema_real_eip !13
  store i64 %29, i64* %XSI, !mcsema_real_eip !13
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !14
  %30 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !14
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %31, !mcsema_real_eip !14
  store i64 %30, i64* %XSP, !mcsema_real_eip !14
  %32 = call x86_64_sysvcc i64 @_strcmp(i64 %26, i64 %29), !mcsema_real_eip !14
  store i64 %32, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !15
  %33 = add i64 16, %RSP_val.18, !mcsema_real_eip !15
  %34 = xor i64 %33, %RSP_val.18, !mcsema_real_eip !15
  %35 = xor i64 %34, 16, !mcsema_real_eip !15
  %36 = and i64 %35, 16, !mcsema_real_eip !15
  %37 = icmp ne i64 %36, 0, !mcsema_real_eip !15
  store i1 %37, i1* %AF, !mcsema_real_eip !15
  %38 = lshr i64 %33, 63, !mcsema_real_eip !15
  %39 = trunc i64 %38 to i1, !mcsema_real_eip !15
  store i1 %39, i1* %SF, !mcsema_real_eip !15
  %40 = icmp eq i64 %33, 0, !mcsema_real_eip !15
  store i1 %40, i1* %ZF, !mcsema_real_eip !15
  %41 = xor i64 %RSP_val.18, 16, !mcsema_real_eip !15
  %42 = xor i64 %41, -1, !mcsema_real_eip !15
  %43 = and i64 %42, %34, !mcsema_real_eip !15
  %44 = lshr i64 %43, 63, !mcsema_real_eip !15
  %45 = and i64 %44, 1, !mcsema_real_eip !15
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !15
  store i1 %46, i1* %OF, !mcsema_real_eip !15
  %47 = trunc i64 %33 to i8, !mcsema_real_eip !15
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !15
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !15
  %50 = xor i1 %49, true, !mcsema_real_eip !15
  store i1 %50, i1* %PF, !mcsema_real_eip !15
  %51 = icmp ult i64 %33, %RSP_val.18, !mcsema_real_eip !15
  store i1 %51, i1* %CF, !mcsema_real_eip !15
  store i64 %33, i64* %XSP, !mcsema_real_eip !15
  %52 = inttoptr i64 %33 to i64*, !mcsema_real_eip !16
  %53 = load i64, i64* %52, !mcsema_real_eip !16
  store i64 %53, i64* %XBP, !mcsema_real_eip !16
  %54 = add i64 %33, 8, !mcsema_real_eip !16
  store i64 %54, i64* %XSP, !mcsema_real_eip !16
  %55 = add i64 %54, 8, !mcsema_real_eip !17
  %56 = inttoptr i64 %54 to i64*, !mcsema_real_eip !17
  %57 = load i64, i64* %56, !mcsema_real_eip !17
  store i64 %57, i64* %XIP, !mcsema_real_eip !17
  store i64 %55, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

declare x86_64_sysvcc i64 @strcmp(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strcmp(i64, i64) #2

; Function Attrs: naked noinline
declare void @checkFn() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 5}
!6 = !{i64 16}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 34}
!11 = !{i64 38}
!12 = !{i64 42}
!13 = !{i64 46}
!14 = !{i64 50}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 60}
