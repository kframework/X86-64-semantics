; ModuleID = 'Output/test_0.clang.opt.bc'
source_filename = "Output/test_0.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"V\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
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
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -16, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  store i64 %20, i64* %XAX, !mcsema_real_eip !6
  %22 = add i64 %1, -4, !mcsema_real_eip !7
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !7
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %24, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %25 = add i64 %RBP_val.6, -24, !mcsema_real_eip !8
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !8
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !8
  store i64 %RAX_val.7, i64* %26, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !9
  %27 = add i64 %RBP_val.8, -24, !mcsema_real_eip !9
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !9
  %29 = load i64, i64* %28, !mcsema_real_eip !9
  store i64 %29, i64* %XAX, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !10
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !10
  store i32 1, i32* %31, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !11
  %32 = add i64 %RBP_val.10, -24, !mcsema_real_eip !11
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !11
  %34 = load i64, i64* %33, !mcsema_real_eip !11
  store i64 %34, i64* %XAX, !mcsema_real_eip !11
  %35 = add i64 %34, 4, !mcsema_real_eip !12
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !12
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %37, !mcsema_real_eip !12
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !13
  %38 = add i64 %RBP_val.12, -24, !mcsema_real_eip !13
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !13
  %40 = load i64, i64* %39, !mcsema_real_eip !13
  store i64 %40, i64* %XAX, !mcsema_real_eip !13
  %41 = add i64 %40, 4, !mcsema_real_eip !14
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !14
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !14
  %44 = load i32, i32* %43, !mcsema_real_eip !14
  %45 = zext i32 %44 to i64, !mcsema_real_eip !14
  store i64 %45, i64* %XSI, !mcsema_real_eip !14
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !15
  store i8 0, i8* %AL.14, !mcsema_real_eip !15
  %RDI_val.15 = load i64, i64* %XDI, !mcsema_real_eip !16
  %RDX_val.17 = load i64, i64* %XDX, !mcsema_real_eip !16
  %RCX_val.18 = load i64, i64* %XCX, !mcsema_real_eip !16
  %R8_val.19 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9_val.20 = load i64, i64* %R9, !mcsema_real_eip !16
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !16
  %46 = inttoptr i64 %RSP_val.21 to i64*, !mcsema_real_eip !16
  %47 = load i64, i64* %46, !mcsema_real_eip !16
  %48 = add i64 %RSP_val.21, 8, !mcsema_real_eip !16
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !16
  %50 = load i64, i64* %49, !mcsema_real_eip !16
  %51 = add i64 %48, 8, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !16
  %53 = load i64, i64* %52, !mcsema_real_eip !16
  %54 = add i64 %51, 8, !mcsema_real_eip !16
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !16
  %56 = load i64, i64* %55, !mcsema_real_eip !16
  %57 = add i64 %54, 8, !mcsema_real_eip !16
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !16
  %59 = load i64, i64* %58, !mcsema_real_eip !16
  %60 = add i64 %57, 8, !mcsema_real_eip !16
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !16
  %62 = load i64, i64* %61, !mcsema_real_eip !16
  %63 = add i64 %60, 8, !mcsema_real_eip !16
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !16
  %65 = load i64, i64* %64, !mcsema_real_eip !16
  %66 = add i64 %63, 8, !mcsema_real_eip !16
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !16
  %68 = load i64, i64* %67, !mcsema_real_eip !16
  %69 = add i64 %66, 8, !mcsema_real_eip !16
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !16
  %71 = load i64, i64* %70, !mcsema_real_eip !16
  %72 = add i64 %69, 8, !mcsema_real_eip !16
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !16
  %74 = load i64, i64* %73, !mcsema_real_eip !16
  %75 = sub i64 %RSP_val.21, 8, !mcsema_real_eip !16
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !16
  store i64 -2415393069852865332, i64* %76, !mcsema_real_eip !16
  store i64 %75, i64* %XSP, !mcsema_real_eip !16
  %77 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %45, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %47, i64 %50, i64 %53, i64 %56, i64 %59, i64 %62, i64 %65, i64 %68, i64 %71, i64 %74), !mcsema_real_eip !16
  store i64 %77, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %78 = add i64 %RBP_val.23, -24, !mcsema_real_eip !17
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !17
  %80 = load i64, i64* %79, !mcsema_real_eip !17
  store i64 %80, i64* %XDI, !mcsema_real_eip !17
  %81 = add i64 %80, 4, !mcsema_real_eip !18
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !18
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !18
  %84 = load i32, i32* %83, !mcsema_real_eip !18
  %85 = zext i32 %84 to i64, !mcsema_real_eip !18
  store i64 %85, i64* %XSI, !mcsema_real_eip !18
  %86 = add i64 %RBP_val.23, -28, !mcsema_real_eip !19
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !19
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %88 = inttoptr i64 %86 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %88, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %89 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %89, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %90 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %91 = xor i64 %90, %RSP_val.30, !mcsema_real_eip !21
  %92 = xor i64 %91, 32, !mcsema_real_eip !21
  %93 = and i64 %92, 16, !mcsema_real_eip !21
  %94 = icmp ne i64 %93, 0, !mcsema_real_eip !21
  store i1 %94, i1* %AF, !mcsema_real_eip !21
  %95 = lshr i64 %90, 63, !mcsema_real_eip !21
  %96 = trunc i64 %95 to i1, !mcsema_real_eip !21
  store i1 %96, i1* %SF, !mcsema_real_eip !21
  %97 = icmp eq i64 %90, 0, !mcsema_real_eip !21
  store i1 %97, i1* %ZF, !mcsema_real_eip !21
  %98 = xor i64 %RSP_val.30, 32, !mcsema_real_eip !21
  %99 = xor i64 %98, -1, !mcsema_real_eip !21
  %100 = and i64 %99, %91, !mcsema_real_eip !21
  %101 = lshr i64 %100, 63, !mcsema_real_eip !21
  %102 = and i64 %101, 1, !mcsema_real_eip !21
  %103 = trunc i64 %102 to i1, !mcsema_real_eip !21
  store i1 %103, i1* %OF, !mcsema_real_eip !21
  %104 = trunc i64 %90 to i8, !mcsema_real_eip !21
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !21
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !21
  %107 = xor i1 %106, true, !mcsema_real_eip !21
  store i1 %107, i1* %PF, !mcsema_real_eip !21
  %108 = icmp ult i64 %90, %RSP_val.30, !mcsema_real_eip !21
  store i1 %108, i1* %CF, !mcsema_real_eip !21
  store i64 %90, i64* %XSP, !mcsema_real_eip !21
  %109 = inttoptr i64 %90 to i64*, !mcsema_real_eip !22
  %110 = load i64, i64* %109, !mcsema_real_eip !22
  store i64 %110, i64* %XBP, !mcsema_real_eip !22
  %111 = add i64 %90, 8, !mcsema_real_eip !22
  store i64 %111, i64* %XSP, !mcsema_real_eip !22
  %112 = add i64 %111, 8, !mcsema_real_eip !23
  %113 = inttoptr i64 %111 to i64*, !mcsema_real_eip !23
  %114 = load i64, i64* %113, !mcsema_real_eip !23
  store i64 %114, i64* %XIP, !mcsema_real_eip !23
  store i64 %112, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 33}
!10 = !{i64 37}
!11 = !{i64 43}
!12 = !{i64 47}
!13 = !{i64 54}
!14 = !{i64 58}
!15 = !{i64 61}
!16 = !{i64 63}
!17 = !{i64 68}
!18 = !{i64 72}
!19 = !{i64 75}
!20 = !{i64 78}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 85}
