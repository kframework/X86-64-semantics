; ModuleID = 'Output/test_5.clang.opt.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00I\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, -8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %4, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, -12, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, !mcsema_real_eip !5
  %7 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.7, i32* %7, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %10, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = inttoptr i64 %11 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %13, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %14 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !8
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !8
  %17 = load i32, i32* %16, !mcsema_real_eip !8
  %18 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %18, i64* %XAX, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.10, -12, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  %22 = load i32, i32* %21, !mcsema_real_eip !9
  %23 = sub i32 %EAX_val.13, %22, !mcsema_real_eip !9
  %24 = xor i32 %23, %EAX_val.13, !mcsema_real_eip !9
  %25 = xor i32 %24, %22, !mcsema_real_eip !9
  %26 = and i32 %25, 16, !mcsema_real_eip !9
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !9
  store i1 %27, i1* %AF, !mcsema_real_eip !9
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !9
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !9
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !9
  %31 = xor i1 %30, true, !mcsema_real_eip !9
  store i1 %31, i1* %PF, !mcsema_real_eip !9
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !9
  store i1 %32, i1* %ZF, !mcsema_real_eip !9
  %33 = lshr i32 %23, 31, !mcsema_real_eip !9
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !9
  store i1 %34, i1* %SF, !mcsema_real_eip !9
  %35 = icmp ult i32 %EAX_val.13, %22, !mcsema_real_eip !9
  store i1 %35, i1* %CF, !mcsema_real_eip !9
  %36 = xor i32 %EAX_val.13, %22, !mcsema_real_eip !9
  %37 = and i32 %36, %24, !mcsema_real_eip !9
  %38 = lshr i32 %37, 31, !mcsema_real_eip !9
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !9
  store i1 %39, i1* %OF, !mcsema_real_eip !9
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !10
  br i1 %40, label %block_0x44, label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %41 = add i64 %RBP_val.10, -8, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !11
  %43 = load i64, i64* %42, !mcsema_real_eip !11
  store i64 %43, i64* %XAX, !mcsema_real_eip !11
  %44 = load i32, i32* %16, !mcsema_real_eip !12
  %45 = sext i32 %44 to i64, !mcsema_real_eip !12
  store i64 %45, i64* %XCX, !mcsema_real_eip !12
  %46 = mul i64 %45, 4, !mcsema_real_eip !13
  %47 = add i64 %43, %46, !mcsema_real_eip !13
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !13
  %49 = inttoptr i64 %47 to i32*, !mcsema_real_eip !13
  %50 = load i32, i32* %49, !mcsema_real_eip !13
  %51 = zext i32 %50 to i64, !mcsema_real_eip !13
  store i64 %51, i64* %XDX, !mcsema_real_eip !13
  %52 = add i64 %RBP_val.10, -16, !mcsema_real_eip !14
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !14
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !14
  %55 = load i32, i32* %54, !mcsema_real_eip !14
  %EDX.22 = bitcast i64* %XDX to i32*, !mcsema_real_eip !14
  %EDX_val.23 = load i32, i32* %EDX.22, !mcsema_real_eip !14
  %56 = add i32 %EDX_val.23, %55, !mcsema_real_eip !14
  %57 = xor i32 %56, %55, !mcsema_real_eip !14
  %58 = xor i32 %57, %EDX_val.23, !mcsema_real_eip !14
  %59 = and i32 %58, 16, !mcsema_real_eip !14
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !14
  store i1 %60, i1* %AF, !mcsema_real_eip !14
  %61 = lshr i32 %56, 31, !mcsema_real_eip !14
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !14
  store i1 %62, i1* %SF, !mcsema_real_eip !14
  %63 = icmp eq i32 %56, 0, !mcsema_real_eip !14
  store i1 %63, i1* %ZF, !mcsema_real_eip !14
  %64 = xor i32 %55, %EDX_val.23, !mcsema_real_eip !14
  %65 = xor i32 %64, -1, !mcsema_real_eip !14
  %66 = and i32 %65, %57, !mcsema_real_eip !14
  %67 = lshr i32 %66, 31, !mcsema_real_eip !14
  %68 = and i32 %67, 1, !mcsema_real_eip !14
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !14
  store i1 %69, i1* %OF, !mcsema_real_eip !14
  %70 = trunc i32 %56 to i8, !mcsema_real_eip !14
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !14
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !14
  %73 = xor i1 %72, true, !mcsema_real_eip !14
  store i1 %73, i1* %PF, !mcsema_real_eip !14
  %74 = icmp ult i32 %56, %55, !mcsema_real_eip !14
  store i1 %74, i1* %CF, !mcsema_real_eip !14
  %75 = zext i32 %56 to i64, !mcsema_real_eip !14
  store i64 %75, i64* %XDX, !mcsema_real_eip !14
  %EDX_val.26 = load i32, i32* %EDX.22, !mcsema_real_eip !15
  store i32 %EDX_val.26, i32* %54, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %76 = add i64 %RBP_val.27, -20, !mcsema_real_eip !16
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !16
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !16
  %79 = load i32, i32* %78, !mcsema_real_eip !16
  %80 = zext i32 %79 to i64, !mcsema_real_eip !16
  store i64 %80, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.29 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %81 = add i32 1, %EAX_val.29, !mcsema_real_eip !17
  %82 = xor i32 %81, %EAX_val.29, !mcsema_real_eip !17
  %83 = xor i32 %82, 1, !mcsema_real_eip !17
  %84 = and i32 %83, 16, !mcsema_real_eip !17
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !17
  store i1 %85, i1* %AF, !mcsema_real_eip !17
  %86 = lshr i32 %81, 31, !mcsema_real_eip !17
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !17
  store i1 %87, i1* %SF, !mcsema_real_eip !17
  %88 = icmp eq i32 %81, 0, !mcsema_real_eip !17
  store i1 %88, i1* %ZF, !mcsema_real_eip !17
  %89 = xor i32 %EAX_val.29, 1, !mcsema_real_eip !17
  %90 = xor i32 %89, -1, !mcsema_real_eip !17
  %91 = and i32 %90, %82, !mcsema_real_eip !17
  %92 = lshr i32 %91, 31, !mcsema_real_eip !17
  %93 = and i32 %92, 1, !mcsema_real_eip !17
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !17
  store i1 %94, i1* %OF, !mcsema_real_eip !17
  %95 = trunc i32 %81 to i8, !mcsema_real_eip !17
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !17
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !17
  %98 = xor i1 %97, true, !mcsema_real_eip !17
  store i1 %98, i1* %PF, !mcsema_real_eip !17
  %99 = icmp ult i32 %81, %EAX_val.29, !mcsema_real_eip !17
  store i1 %99, i1* %CF, !mcsema_real_eip !17
  %100 = zext i32 %81 to i64, !mcsema_real_eip !17
  store i64 %100, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.32 = load i32, i32* %EAX.12, !mcsema_real_eip !18
  store i32 %EAX_val.32, i32* %78, !mcsema_real_eip !18
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %101 = add i64 %RBP_val.10, -16, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !20
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !20
  %104 = load i32, i32* %103, !mcsema_real_eip !20
  %105 = zext i32 %104 to i64, !mcsema_real_eip !20
  store i64 %105, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !21
  %106 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !21
  %107 = load i64, i64* %106, !mcsema_real_eip !21
  store i64 %107, i64* %XBP, !mcsema_real_eip !21
  %108 = add i64 %RSP_val.15, 8, !mcsema_real_eip !21
  store i64 %108, i64* %XSP, !mcsema_real_eip !21
  %109 = add i64 %108, 8, !mcsema_real_eip !22
  %110 = inttoptr i64 %108 to i64*, !mcsema_real_eip !22
  %111 = load i64, i64* %110, !mcsema_real_eip !22
  store i64 %111, i64* %XIP, !mcsema_real_eip !22
  store i64 %109, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @foo() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 45}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 68}
!21 = !{i64 71}
!22 = !{i64 72}
