; ModuleID = 'Output/test_10.clang.opt.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x80 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %5 = add i64 %RBP_val.5, -16, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %RSI_val.6 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.6, i64* %6, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  %9 = load i64, i64* %8, !mcsema_real_eip !6
  store i64 %9, i64* %XSI, !mcsema_real_eip !6
  %10 = add i64 %RBP_val.7, -24, !mcsema_real_eip !7
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !7
  store i64 %9, i64* %11, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %12 = add i64 %RBP_val.10, -16, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !8
  %14 = load i64, i64* %13, !mcsema_real_eip !8
  store i64 %14, i64* %XSI, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.10, -32, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !9
  store i64 %14, i64* %16, !mcsema_real_eip !9
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !10
  %17 = add i64 %RBP_val.13, -24, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !10
  %19 = load i64, i64* %18, !mcsema_real_eip !10
  store i64 %19, i64* %XSI, !mcsema_real_eip !10
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !11
  %21 = inttoptr i64 %19 to i8*, !mcsema_real_eip !11
  %22 = load i8, i8* %21, !mcsema_real_eip !11
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 %22, i8* %AL.15, !mcsema_real_eip !11
  %23 = add i64 %RBP_val.13, -33, !mcsema_real_eip !12
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !12
  %25 = inttoptr i64 %23 to i8*, !mcsema_real_eip !12
  store i8 %22, i8* %25, !mcsema_real_eip !12
  br label %block_0x25, !mcsema_real_eip !13

block_0x25:                                       ; preds = %block_0x54, %block_0x0
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !13
  %26 = add i64 %RBP_val.19, -33, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !13
  %28 = inttoptr i64 %26 to i8*, !mcsema_real_eip !13
  %29 = load i8, i8* %28, !mcsema_real_eip !13
  %30 = sext i8 %29 to i32, !mcsema_real_eip !13
  %31 = zext i32 %30 to i64, !mcsema_real_eip !13
  store i64 %31, i64* %XAX, !mcsema_real_eip !13
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !14
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !14
  store i1 false, i1* %AF, !mcsema_real_eip !14
  %32 = trunc i32 %EAX_val.21 to i8, !mcsema_real_eip !14
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !14
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !14
  %35 = xor i1 %34, true, !mcsema_real_eip !14
  store i1 %35, i1* %PF, !mcsema_real_eip !14
  %36 = icmp eq i32 %EAX_val.21, 0, !mcsema_real_eip !14
  store i1 %36, i1* %ZF, !mcsema_real_eip !14
  %37 = lshr i32 %EAX_val.21, 31, !mcsema_real_eip !14
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !14
  store i1 %38, i1* %SF, !mcsema_real_eip !14
  store i1 false, i1* %CF, !mcsema_real_eip !14
  store i1 false, i1* %OF, !mcsema_real_eip !14
  br i1 %36, label %block_0x7a, label %block_0x32, !mcsema_real_eip !15

block_0x32:                                       ; preds = %block_0x25
  %39 = load i8, i8* %28, !mcsema_real_eip !16
  %40 = sext i8 %39 to i32, !mcsema_real_eip !16
  %41 = zext i32 %40 to i64, !mcsema_real_eip !16
  store i64 %41, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.26 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %42 = sub i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %43 = xor i32 %42, %EAX_val.26, !mcsema_real_eip !17
  %44 = xor i32 %43, 47, !mcsema_real_eip !17
  %45 = and i32 %44, 16, !mcsema_real_eip !17
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !17
  store i1 %46, i1* %AF, !mcsema_real_eip !17
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !17
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !17
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !17
  %50 = xor i1 %49, true, !mcsema_real_eip !17
  store i1 %50, i1* %PF, !mcsema_real_eip !17
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !17
  store i1 %51, i1* %ZF, !mcsema_real_eip !17
  %52 = lshr i32 %42, 31, !mcsema_real_eip !17
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !17
  store i1 %53, i1* %SF, !mcsema_real_eip !17
  %54 = icmp ult i32 %EAX_val.26, 47, !mcsema_real_eip !17
  store i1 %54, i1* %CF, !mcsema_real_eip !17
  %55 = xor i32 %EAX_val.26, 47, !mcsema_real_eip !17
  %56 = and i32 %55, %43, !mcsema_real_eip !17
  %57 = lshr i32 %56, 31, !mcsema_real_eip !17
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !17
  store i1 %58, i1* %OF, !mcsema_real_eip !17
  %59 = icmp eq i1 %51, false, !mcsema_real_eip !18
  br i1 %59, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x7a:                                       ; preds = %block_0x25
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !19
  %60 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !19
  %61 = load i64, i64* %60, !mcsema_real_eip !19
  store i64 %61, i64* %XBP, !mcsema_real_eip !19
  %62 = add i64 %RSP_val.22, 8, !mcsema_real_eip !19
  store i64 %62, i64* %XSP, !mcsema_real_eip !19
  %63 = add i64 %62, 8, !mcsema_real_eip !20
  %64 = inttoptr i64 %62 to i64*, !mcsema_real_eip !20
  %65 = load i64, i64* %64, !mcsema_real_eip !20
  store i64 %65, i64* %XIP, !mcsema_real_eip !20
  store i64 %63, i64* %XSP, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x3f:                                       ; preds = %block_0x32
  %66 = add i64 %RBP_val.19, -32, !mcsema_real_eip !21
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !21
  %68 = load i64, i64* %67, !mcsema_real_eip !21
  store i64 %68, i64* %XAX, !mcsema_real_eip !21
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !22
  %70 = inttoptr i64 %68 to i8*, !mcsema_real_eip !22
  store i8 92, i8* %70, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x4b:                                       ; preds = %block_0x32
  %71 = load i8, i8* %28, !mcsema_real_eip !24
  store i8 %71, i8* %AL.15, !mcsema_real_eip !24
  %72 = add i64 %RBP_val.19, -32, !mcsema_real_eip !25
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !25
  %74 = load i64, i64* %73, !mcsema_real_eip !25
  store i64 %74, i64* %XCX, !mcsema_real_eip !25
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !26
  %76 = inttoptr i64 %74 to i8*, !mcsema_real_eip !26
  store i8 %71, i8* %76, !mcsema_real_eip !26
  br label %block_0x54, !mcsema_real_eip !21

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !27
  %77 = add i64 %RBP_val.35, -24, !mcsema_real_eip !27
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !27
  %79 = load i64, i64* %78, !mcsema_real_eip !27
  store i64 %79, i64* %XAX, !mcsema_real_eip !27
  %80 = add i64 1, %79, !mcsema_real_eip !28
  %81 = xor i64 %80, %79, !mcsema_real_eip !28
  %82 = xor i64 %81, 1, !mcsema_real_eip !28
  %83 = and i64 %82, 16, !mcsema_real_eip !28
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !28
  store i1 %84, i1* %AF, !mcsema_real_eip !28
  %85 = lshr i64 %80, 63, !mcsema_real_eip !28
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !28
  store i1 %86, i1* %SF, !mcsema_real_eip !28
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !28
  store i1 %87, i1* %ZF, !mcsema_real_eip !28
  %88 = xor i64 %79, 1, !mcsema_real_eip !28
  %89 = xor i64 %88, -1, !mcsema_real_eip !28
  %90 = and i64 %89, %81, !mcsema_real_eip !28
  %91 = lshr i64 %90, 63, !mcsema_real_eip !28
  %92 = and i64 %91, 1, !mcsema_real_eip !28
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !28
  store i1 %93, i1* %OF, !mcsema_real_eip !28
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !28
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !28
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !28
  %97 = xor i1 %96, true, !mcsema_real_eip !28
  store i1 %97, i1* %PF, !mcsema_real_eip !28
  %98 = icmp ult i64 %80, %79, !mcsema_real_eip !28
  store i1 %98, i1* %CF, !mcsema_real_eip !28
  store i64 %80, i64* %XAX, !mcsema_real_eip !28
  store i64 %80, i64* %78, !mcsema_real_eip !29
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !30
  %99 = add i64 %RBP_val.39, -32, !mcsema_real_eip !30
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !30
  %101 = load i64, i64* %100, !mcsema_real_eip !30
  store i64 %101, i64* %XAX, !mcsema_real_eip !30
  %102 = add i64 1, %101, !mcsema_real_eip !31
  %103 = xor i64 %102, %101, !mcsema_real_eip !31
  %104 = xor i64 %103, 1, !mcsema_real_eip !31
  %105 = and i64 %104, 16, !mcsema_real_eip !31
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !31
  store i1 %106, i1* %AF, !mcsema_real_eip !31
  %107 = lshr i64 %102, 63, !mcsema_real_eip !31
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !31
  store i1 %108, i1* %SF, !mcsema_real_eip !31
  %109 = icmp eq i64 %102, 0, !mcsema_real_eip !31
  store i1 %109, i1* %ZF, !mcsema_real_eip !31
  %110 = xor i64 %101, 1, !mcsema_real_eip !31
  %111 = xor i64 %110, -1, !mcsema_real_eip !31
  %112 = and i64 %111, %103, !mcsema_real_eip !31
  %113 = lshr i64 %112, 63, !mcsema_real_eip !31
  %114 = and i64 %113, 1, !mcsema_real_eip !31
  %115 = trunc i64 %114 to i1, !mcsema_real_eip !31
  store i1 %115, i1* %OF, !mcsema_real_eip !31
  %116 = trunc i64 %102 to i8, !mcsema_real_eip !31
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !31
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !31
  %119 = xor i1 %118, true, !mcsema_real_eip !31
  store i1 %119, i1* %PF, !mcsema_real_eip !31
  %120 = icmp ult i64 %102, %101, !mcsema_real_eip !31
  store i1 %120, i1* %CF, !mcsema_real_eip !31
  store i64 %102, i64* %XAX, !mcsema_real_eip !31
  store i64 %102, i64* %100, !mcsema_real_eip !32
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !33
  %121 = add i64 %RBP_val.43, -24, !mcsema_real_eip !33
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !33
  %123 = load i64, i64* %122, !mcsema_real_eip !33
  store i64 %123, i64* %XAX, !mcsema_real_eip !33
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !34
  %125 = inttoptr i64 %123 to i8*, !mcsema_real_eip !34
  %126 = load i8, i8* %125, !mcsema_real_eip !34
  %CL.45 = bitcast i64* %XCX to i8*, !mcsema_real_eip !34
  store i8 %126, i8* %CL.45, !mcsema_real_eip !34
  %127 = add i64 %RBP_val.43, -33, !mcsema_real_eip !35
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !35
  %129 = inttoptr i64 %127 to i8*, !mcsema_real_eip !35
  store i8 %126, i8* %129, !mcsema_real_eip !35
  br label %block_0x25, !mcsema_real_eip !36
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @demo3() #3

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
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 41}
!15 = !{i64 44}
!16 = !{i64 50}
!17 = !{i64 54}
!18 = !{i64 57}
!19 = !{i64 122}
!20 = !{i64 123}
!21 = !{i64 63}
!22 = !{i64 67}
!23 = !{i64 70}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 82}
!27 = !{i64 84}
!28 = !{i64 88}
!29 = !{i64 92}
!30 = !{i64 96}
!31 = !{i64 100}
!32 = !{i64 104}
!33 = !{i64 108}
!34 = !{i64 112}
!35 = !{i64 114}
!36 = !{i64 117}
