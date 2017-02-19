; ModuleID = 'Output/test_17.clang.opt.bc'
source_filename = "Output/test_17.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 0, i32* %5, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %8, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %block_0x0
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  %12 = load i32, i32* %11, !mcsema_real_eip !6
  %13 = sext i32 %12 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %XAX, !mcsema_real_eip !6
  %14 = sub i64 %13, 10, !mcsema_real_eip !7
  %15 = xor i64 %14, %13, !mcsema_real_eip !7
  %16 = xor i64 %15, 10, !mcsema_real_eip !7
  %17 = and i64 %16, 16, !mcsema_real_eip !7
  %18 = icmp ne i64 %17, 0, !mcsema_real_eip !7
  store i1 %18, i1* %AF, !mcsema_real_eip !7
  %19 = trunc i64 %14 to i8, !mcsema_real_eip !7
  %20 = call i8 @llvm.ctpop.i8(i8 %19), !mcsema_real_eip !7
  %21 = trunc i8 %20 to i1, !mcsema_real_eip !7
  %22 = xor i1 %21, true, !mcsema_real_eip !7
  store i1 %22, i1* %PF, !mcsema_real_eip !7
  %23 = icmp eq i64 %14, 0, !mcsema_real_eip !7
  store i1 %23, i1* %ZF, !mcsema_real_eip !7
  %24 = lshr i64 %14, 63, !mcsema_real_eip !7
  %25 = trunc i64 %24 to i1, !mcsema_real_eip !7
  store i1 %25, i1* %SF, !mcsema_real_eip !7
  %26 = icmp ult i64 %13, 10, !mcsema_real_eip !7
  store i1 %26, i1* %CF, !mcsema_real_eip !7
  %27 = xor i64 %13, 10, !mcsema_real_eip !7
  %28 = and i64 %27, %15, !mcsema_real_eip !7
  %29 = lshr i64 %28, 63, !mcsema_real_eip !7
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !7
  store i1 %30, i1* %OF, !mcsema_real_eip !7
  %31 = icmp eq i1 %26, false, !mcsema_real_eip !8
  br i1 %31, label %block_0x5a, label %block_0x20, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %32 = load i32, i32* %11, !mcsema_real_eip !9
  %33 = sext i32 %32 to i64, !mcsema_real_eip !9
  store i64 %33, i64* %XAX, !mcsema_real_eip !9
  %34 = mul i64 %33, 8, !mcsema_real_eip !10
  %35 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %34, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !10
  %37 = load i64, i64* %36, !mcsema_real_eip !10
  store i1 false, i1* %AF, !mcsema_real_eip !10
  %38 = trunc i64 %37 to i8, !mcsema_real_eip !10
  %39 = call i8 @llvm.ctpop.i8(i8 %38), !mcsema_real_eip !10
  %40 = trunc i8 %39 to i1, !mcsema_real_eip !10
  %41 = xor i1 %40, true, !mcsema_real_eip !10
  store i1 %41, i1* %PF, !mcsema_real_eip !10
  %42 = icmp eq i64 %37, 0, !mcsema_real_eip !10
  store i1 %42, i1* %ZF, !mcsema_real_eip !10
  %43 = lshr i64 %37, 63, !mcsema_real_eip !10
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !10
  store i1 %44, i1* %SF, !mcsema_real_eip !10
  store i1 false, i1* %CF, !mcsema_real_eip !10
  store i1 false, i1* %OF, !mcsema_real_eip !10
  br i1 %42, label %block_0x47, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %block_0x20
  %45 = load i32, i32* %11, !mcsema_real_eip !12
  %46 = sext i32 %45 to i64, !mcsema_real_eip !12
  store i64 %46, i64* %XAX, !mcsema_real_eip !12
  %47 = mul i64 %46, 8, !mcsema_real_eip !13
  %48 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %47, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !13
  %50 = load i64, i64* %49, !mcsema_real_eip !13
  store i64 %50, i64* %XAX, !mcsema_real_eip !13
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !14
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !14
  %53 = load i32, i32* %52, !mcsema_real_eip !14
  %54 = zext i32 %53 to i64, !mcsema_real_eip !14
  store i64 %54, i64* %XCX, !mcsema_real_eip !14
  %55 = add i64 %RBP_val.5, -8, !mcsema_real_eip !15
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !15
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !15
  %58 = load i32, i32* %57, !mcsema_real_eip !15
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !15
  %59 = add i32 %ECX_val.14, %58, !mcsema_real_eip !15
  %60 = xor i32 %59, %58, !mcsema_real_eip !15
  %61 = xor i32 %60, %ECX_val.14, !mcsema_real_eip !15
  %62 = and i32 %61, 16, !mcsema_real_eip !15
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !15
  store i1 %63, i1* %AF, !mcsema_real_eip !15
  %64 = lshr i32 %59, 31, !mcsema_real_eip !15
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !15
  store i1 %65, i1* %SF, !mcsema_real_eip !15
  %66 = icmp eq i32 %59, 0, !mcsema_real_eip !15
  store i1 %66, i1* %ZF, !mcsema_real_eip !15
  %67 = xor i32 %58, %ECX_val.14, !mcsema_real_eip !15
  %68 = xor i32 %67, -1, !mcsema_real_eip !15
  %69 = and i32 %68, %60, !mcsema_real_eip !15
  %70 = lshr i32 %69, 31, !mcsema_real_eip !15
  %71 = and i32 %70, 1, !mcsema_real_eip !15
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !15
  store i1 %72, i1* %OF, !mcsema_real_eip !15
  %73 = trunc i32 %59 to i8, !mcsema_real_eip !15
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !15
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !15
  %76 = xor i1 %75, true, !mcsema_real_eip !15
  store i1 %76, i1* %PF, !mcsema_real_eip !15
  %77 = icmp ult i32 %59, %58, !mcsema_real_eip !15
  store i1 %77, i1* %CF, !mcsema_real_eip !15
  %78 = zext i32 %59 to i64, !mcsema_real_eip !15
  store i64 %78, i64* %XCX, !mcsema_real_eip !15
  %ECX_val.17 = load i32, i32* %ECX.13, !mcsema_real_eip !16
  store i32 %ECX_val.17, i32* %57, !mcsema_real_eip !16
  br label %block_0x47, !mcsema_real_eip !17

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x47
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !18
  %79 = add i64 %RBP_val.18, -4, !mcsema_real_eip !18
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !18
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !18
  %82 = load i32, i32* %81, !mcsema_real_eip !18
  %83 = zext i32 %82 to i64, !mcsema_real_eip !18
  store i64 %83, i64* %XAX, !mcsema_real_eip !18
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !19
  %84 = add i32 1, %EAX_val.20, !mcsema_real_eip !19
  %85 = xor i32 %84, %EAX_val.20, !mcsema_real_eip !19
  %86 = xor i32 %85, 1, !mcsema_real_eip !19
  %87 = and i32 %86, 16, !mcsema_real_eip !19
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !19
  store i1 %88, i1* %AF, !mcsema_real_eip !19
  %89 = lshr i32 %84, 31, !mcsema_real_eip !19
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !19
  store i1 %90, i1* %SF, !mcsema_real_eip !19
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !19
  store i1 %91, i1* %ZF, !mcsema_real_eip !19
  %92 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !19
  %93 = xor i32 %92, -1, !mcsema_real_eip !19
  %94 = and i32 %93, %85, !mcsema_real_eip !19
  %95 = lshr i32 %94, 31, !mcsema_real_eip !19
  %96 = and i32 %95, 1, !mcsema_real_eip !19
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !19
  store i1 %97, i1* %OF, !mcsema_real_eip !19
  %98 = trunc i32 %84 to i8, !mcsema_real_eip !19
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !19
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !19
  %101 = xor i1 %100, true, !mcsema_real_eip !19
  store i1 %101, i1* %PF, !mcsema_real_eip !19
  %102 = icmp ult i32 %84, %EAX_val.20, !mcsema_real_eip !19
  store i1 %102, i1* %CF, !mcsema_real_eip !19
  %103 = zext i32 %84 to i64, !mcsema_real_eip !19
  store i64 %103, i64* %XAX, !mcsema_real_eip !19
  %EAX_val.23 = load i32, i32* %EAX.19, !mcsema_real_eip !20
  store i32 %EAX_val.23, i32* %81, !mcsema_real_eip !20
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %block_0x12
  %104 = add i64 %RBP_val.5, -8, !mcsema_real_eip !22
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !22
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !22
  %107 = load i32, i32* %106, !mcsema_real_eip !22
  %108 = zext i32 %107 to i64, !mcsema_real_eip !22
  store i64 %108, i64* %XAX, !mcsema_real_eip !22
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %109 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !23
  %110 = load i64, i64* %109, !mcsema_real_eip !23
  store i64 %110, i64* %XBP, !mcsema_real_eip !23
  %111 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store i64 %111, i64* %XSP, !mcsema_real_eip !23
  %112 = add i64 %111, 8, !mcsema_real_eip !24
  %113 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  %114 = load i64, i64* %113, !mcsema_real_eip !24
  store i64 %114, i64* %XIP, !mcsema_real_eip !24
  store i64 %112, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare void @printdata() #2

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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 63}
!15 = !{i64 65}
!16 = !{i64 68}
!17 = !{i64 71}
!18 = !{i64 76}
!19 = !{i64 79}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 90}
!23 = !{i64 93}
!24 = !{i64 94}
