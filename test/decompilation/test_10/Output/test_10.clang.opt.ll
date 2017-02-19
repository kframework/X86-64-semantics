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
  %EAX_val.24 = load i32, i32* %EAX.20, !mcsema_real_eip !17
  %42 = sub i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %43 = xor i32 %42, %EAX_val.24, !mcsema_real_eip !17
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
  %54 = icmp ult i32 %EAX_val.24, 47, !mcsema_real_eip !17
  store i1 %54, i1* %CF, !mcsema_real_eip !17
  %55 = xor i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %56 = and i32 %55, %43, !mcsema_real_eip !17
  %57 = lshr i32 %56, 31, !mcsema_real_eip !17
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !17
  store i1 %58, i1* %OF, !mcsema_real_eip !17
  %59 = icmp eq i1 %51, false, !mcsema_real_eip !18
  br i1 %59, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x3f:                                       ; preds = %block_0x32
  %60 = add i64 %RBP_val.19, -32, !mcsema_real_eip !19
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !19
  %62 = load i64, i64* %61, !mcsema_real_eip !19
  store i64 %62, i64* %XAX, !mcsema_real_eip !19
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !20
  %64 = inttoptr i64 %62 to i8*, !mcsema_real_eip !20
  store i8 92, i8* %64, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x32
  %65 = load i8, i8* %28, !mcsema_real_eip !22
  store i8 %65, i8* %AL.15, !mcsema_real_eip !22
  %66 = add i64 %RBP_val.19, -32, !mcsema_real_eip !23
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !23
  %68 = load i64, i64* %67, !mcsema_real_eip !23
  store i64 %68, i64* %XCX, !mcsema_real_eip !23
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !24
  %70 = inttoptr i64 %68 to i8*, !mcsema_real_eip !24
  store i8 %65, i8* %70, !mcsema_real_eip !24
  br label %block_0x54, !mcsema_real_eip !25

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %71 = add i64 %RBP_val.33, -24, !mcsema_real_eip !25
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !25
  %73 = load i64, i64* %72, !mcsema_real_eip !25
  store i64 %73, i64* %XAX, !mcsema_real_eip !25
  %74 = add i64 1, %73, !mcsema_real_eip !26
  %75 = xor i64 %74, %73, !mcsema_real_eip !26
  %76 = xor i64 %75, 1, !mcsema_real_eip !26
  %77 = and i64 %76, 16, !mcsema_real_eip !26
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !26
  store i1 %78, i1* %AF, !mcsema_real_eip !26
  %79 = lshr i64 %74, 63, !mcsema_real_eip !26
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !26
  store i1 %80, i1* %SF, !mcsema_real_eip !26
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !26
  store i1 %81, i1* %ZF, !mcsema_real_eip !26
  %82 = xor i64 %73, 1, !mcsema_real_eip !26
  %83 = xor i64 %82, -1, !mcsema_real_eip !26
  %84 = and i64 %83, %75, !mcsema_real_eip !26
  %85 = lshr i64 %84, 63, !mcsema_real_eip !26
  %86 = and i64 %85, 1, !mcsema_real_eip !26
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !26
  store i1 %87, i1* %OF, !mcsema_real_eip !26
  %88 = trunc i64 %74 to i8, !mcsema_real_eip !26
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !26
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !26
  %91 = xor i1 %90, true, !mcsema_real_eip !26
  store i1 %91, i1* %PF, !mcsema_real_eip !26
  %92 = icmp ult i64 %74, %73, !mcsema_real_eip !26
  store i1 %92, i1* %CF, !mcsema_real_eip !26
  store i64 %74, i64* %XAX, !mcsema_real_eip !26
  store i64 %74, i64* %72, !mcsema_real_eip !27
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !28
  %93 = add i64 %RBP_val.37, -32, !mcsema_real_eip !28
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !28
  %95 = load i64, i64* %94, !mcsema_real_eip !28
  store i64 %95, i64* %XAX, !mcsema_real_eip !28
  %96 = add i64 1, %95, !mcsema_real_eip !29
  %97 = xor i64 %96, %95, !mcsema_real_eip !29
  %98 = xor i64 %97, 1, !mcsema_real_eip !29
  %99 = and i64 %98, 16, !mcsema_real_eip !29
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !29
  store i1 %100, i1* %AF, !mcsema_real_eip !29
  %101 = lshr i64 %96, 63, !mcsema_real_eip !29
  %102 = trunc i64 %101 to i1, !mcsema_real_eip !29
  store i1 %102, i1* %SF, !mcsema_real_eip !29
  %103 = icmp eq i64 %96, 0, !mcsema_real_eip !29
  store i1 %103, i1* %ZF, !mcsema_real_eip !29
  %104 = xor i64 %95, 1, !mcsema_real_eip !29
  %105 = xor i64 %104, -1, !mcsema_real_eip !29
  %106 = and i64 %105, %97, !mcsema_real_eip !29
  %107 = lshr i64 %106, 63, !mcsema_real_eip !29
  %108 = and i64 %107, 1, !mcsema_real_eip !29
  %109 = trunc i64 %108 to i1, !mcsema_real_eip !29
  store i1 %109, i1* %OF, !mcsema_real_eip !29
  %110 = trunc i64 %96 to i8, !mcsema_real_eip !29
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !29
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !29
  %113 = xor i1 %112, true, !mcsema_real_eip !29
  store i1 %113, i1* %PF, !mcsema_real_eip !29
  %114 = icmp ult i64 %96, %95, !mcsema_real_eip !29
  store i1 %114, i1* %CF, !mcsema_real_eip !29
  store i64 %96, i64* %XAX, !mcsema_real_eip !29
  store i64 %96, i64* %94, !mcsema_real_eip !30
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !31
  %115 = add i64 %RBP_val.41, -24, !mcsema_real_eip !31
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !31
  %117 = load i64, i64* %116, !mcsema_real_eip !31
  store i64 %117, i64* %XAX, !mcsema_real_eip !31
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !32
  %119 = inttoptr i64 %117 to i8*, !mcsema_real_eip !32
  %120 = load i8, i8* %119, !mcsema_real_eip !32
  %CL.43 = bitcast i64* %XCX to i8*, !mcsema_real_eip !32
  store i8 %120, i8* %CL.43, !mcsema_real_eip !32
  %121 = add i64 %RBP_val.41, -33, !mcsema_real_eip !33
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !33
  %123 = inttoptr i64 %121 to i8*, !mcsema_real_eip !33
  store i8 %120, i8* %123, !mcsema_real_eip !33
  br label %block_0x25, !mcsema_real_eip !34

block_0x7a:                                       ; preds = %block_0x25
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !35
  %124 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !35
  %125 = load i64, i64* %124, !mcsema_real_eip !35
  store i64 %125, i64* %XBP, !mcsema_real_eip !35
  %126 = add i64 %RSP_val.47, 8, !mcsema_real_eip !35
  store i64 %126, i64* %XSP, !mcsema_real_eip !35
  %127 = add i64 %126, 8, !mcsema_real_eip !36
  %128 = inttoptr i64 %126 to i64*, !mcsema_real_eip !36
  %129 = load i64, i64* %128, !mcsema_real_eip !36
  store i64 %129, i64* %XIP, !mcsema_real_eip !36
  store i64 %127, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
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
!19 = !{i64 63}
!20 = !{i64 67}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 82}
!25 = !{i64 84}
!26 = !{i64 88}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 104}
!31 = !{i64 108}
!32 = !{i64 112}
!33 = !{i64 114}
!34 = !{i64 117}
!35 = !{i64 122}
!36 = !{i64 123}
