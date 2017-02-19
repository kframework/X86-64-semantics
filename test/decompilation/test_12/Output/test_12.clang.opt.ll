; ModuleID = 'Output/test_12.clang.opt.bc'
source_filename = "Output/test_12.clang.bc"
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
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"M\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 32, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %ESI.4 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.5 = load i32, i32* %ESI.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XSI, !mcsema_real_eip !5
  %20 = add i64 %1, -16, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %21, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %22 = add i64 %RBP_val.10, -16, !mcsema_real_eip !7
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !7
  %24 = load i64, i64* %23, !mcsema_real_eip !7
  store i64 %24, i64* %XDI, !mcsema_real_eip !7
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.11, !mcsema_real_eip !8
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !9
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !9
  %25 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !9
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %26, !mcsema_real_eip !9
  store i64 %25, i64* %XSP, !mcsema_real_eip !9
  %27 = call x86_64_sysvcc i64 @_open(i64 %24, i64 %RSI_val.13), !mcsema_real_eip !9
  store i64 %27, i64* %XAX, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !10
  %28 = add i64 %RBP_val.15, -20, !mcsema_real_eip !10
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !10
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !10
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.17, i32* %30, !mcsema_real_eip !10
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !11
  %31 = add i64 %RBP_val.18, -20, !mcsema_real_eip !11
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !11
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !11
  %34 = load i32, i32* %33, !mcsema_real_eip !11
  %35 = sub i32 %34, -1, !mcsema_real_eip !11
  %36 = xor i32 %35, %34, !mcsema_real_eip !11
  %37 = xor i32 %36, -1, !mcsema_real_eip !11
  %38 = and i32 %37, 16, !mcsema_real_eip !11
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !11
  store i1 %39, i1* %AF, !mcsema_real_eip !11
  %40 = trunc i32 %35 to i8, !mcsema_real_eip !11
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !11
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !11
  %43 = xor i1 %42, true, !mcsema_real_eip !11
  store i1 %43, i1* %PF, !mcsema_real_eip !11
  %44 = icmp eq i32 %35, 0, !mcsema_real_eip !11
  store i1 %44, i1* %ZF, !mcsema_real_eip !11
  %45 = lshr i32 %35, 31, !mcsema_real_eip !11
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !11
  store i1 %46, i1* %SF, !mcsema_real_eip !11
  %47 = icmp ult i32 %34, -1, !mcsema_real_eip !11
  store i1 %47, i1* %CF, !mcsema_real_eip !11
  %48 = xor i32 %34, -1, !mcsema_real_eip !11
  %49 = and i32 %48, %36, !mcsema_real_eip !11
  %50 = lshr i32 %49, 31, !mcsema_real_eip !11
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !11
  store i1 %51, i1* %OF, !mcsema_real_eip !11
  br i1 %44, label %block_0x3d, label %block_0x26, !mcsema_real_eip !12

block_0x26:                                       ; preds = %block_0x0
  %52 = load i32, i32* %33, !mcsema_real_eip !13
  %53 = zext i32 %52 to i64, !mcsema_real_eip !13
  store i64 %53, i64* %XDI, !mcsema_real_eip !13
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %54 = sub i64 %RSP_val.21, 8, !mcsema_real_eip !14
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %55, !mcsema_real_eip !14
  store i64 %54, i64* %XSP, !mcsema_real_eip !14
  %56 = call x86_64_sysvcc i64 @_close(i64 %53), !mcsema_real_eip !14
  store i64 %56, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !15
  %57 = add i64 %RBP_val.22, -4, !mcsema_real_eip !15
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !15
  %59 = inttoptr i64 %57 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %59, !mcsema_real_eip !15
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !16
  %60 = add i64 %RBP_val.23, -24, !mcsema_real_eip !16
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !16
  %EAX_val.25 = load i32, i32* %EAX.16, !mcsema_real_eip !16
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.25, i32* %62, !mcsema_real_eip !16
  br label %block_0x44, !mcsema_real_eip !17

block_0x3d:                                       ; preds = %block_0x0
  %63 = add i64 %RBP_val.18, -4, !mcsema_real_eip !18
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !18
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !18
  store i32 -1, i32* %65, !mcsema_real_eip !18
  br label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !19
  %66 = add i64 %RBP_val.27, -4, !mcsema_real_eip !19
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !19
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !19
  %69 = load i32, i32* %68, !mcsema_real_eip !19
  %70 = zext i32 %69 to i64, !mcsema_real_eip !19
  store i64 %70, i64* %XAX, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !20
  %71 = add i64 32, %RSP_val.28, !mcsema_real_eip !20
  %72 = xor i64 %71, %RSP_val.28, !mcsema_real_eip !20
  %73 = xor i64 %72, 32, !mcsema_real_eip !20
  %74 = and i64 %73, 16, !mcsema_real_eip !20
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !20
  store i1 %75, i1* %AF, !mcsema_real_eip !20
  %76 = lshr i64 %71, 63, !mcsema_real_eip !20
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !20
  store i1 %77, i1* %SF, !mcsema_real_eip !20
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !20
  store i1 %78, i1* %ZF, !mcsema_real_eip !20
  %79 = xor i64 %RSP_val.28, 32, !mcsema_real_eip !20
  %80 = xor i64 %79, -1, !mcsema_real_eip !20
  %81 = and i64 %80, %72, !mcsema_real_eip !20
  %82 = lshr i64 %81, 63, !mcsema_real_eip !20
  %83 = and i64 %82, 1, !mcsema_real_eip !20
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !20
  store i1 %84, i1* %OF, !mcsema_real_eip !20
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !20
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !20
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !20
  %88 = xor i1 %87, true, !mcsema_real_eip !20
  store i1 %88, i1* %PF, !mcsema_real_eip !20
  %89 = icmp ult i64 %71, %RSP_val.28, !mcsema_real_eip !20
  store i1 %89, i1* %CF, !mcsema_real_eip !20
  store i64 %71, i64* %XSP, !mcsema_real_eip !20
  %90 = inttoptr i64 %71 to i64*, !mcsema_real_eip !21
  %91 = load i64, i64* %90, !mcsema_real_eip !21
  store i64 %91, i64* %XBP, !mcsema_real_eip !21
  %92 = add i64 %71, 8, !mcsema_real_eip !21
  store i64 %92, i64* %XSP, !mcsema_real_eip !21
  %93 = add i64 %92, 8, !mcsema_real_eip !22
  %94 = inttoptr i64 %92 to i64*, !mcsema_real_eip !22
  %95 = load i64, i64* %94, !mcsema_real_eip !22
  store i64 %95, i64* %XIP, !mcsema_real_eip !22
  store i64 %93, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
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

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 10}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 20}
!10 = !{i64 25}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 38}
!14 = !{i64 41}
!15 = !{i64 46}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 76}
