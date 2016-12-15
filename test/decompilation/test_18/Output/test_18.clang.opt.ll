; ModuleID = 'Output/test_18.clang.opt.bc'
source_filename = "Output/test_18.clang.bc"
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

%0 = type <{ [336 x i8], i64, [16 x i8], i64, [24 x i8], i64, [128 x i8], i64, [16 x i8], i64, [24 x i8], i64, [256 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64
@data_0x3b0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"_\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %14 = sub i64 %13, 104, !mcsema_real_eip !7
  %15 = xor i64 %14, %13, !mcsema_real_eip !7
  %16 = xor i64 %15, 104, !mcsema_real_eip !7
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
  %26 = icmp ult i64 %13, 104, !mcsema_real_eip !7
  store i1 %26, i1* %CF, !mcsema_real_eip !7
  %27 = xor i64 %13, 104, !mcsema_real_eip !7
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

block_0x5a:                                       ; preds = %block_0x12
  %45 = add i64 %RBP_val.5, -8, !mcsema_real_eip !12
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !12
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !12
  %48 = load i32, i32* %47, !mcsema_real_eip !12
  %49 = zext i32 %48 to i64, !mcsema_real_eip !12
  store i64 %49, i64* %XAX, !mcsema_real_eip !12
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !13
  %50 = inttoptr i64 %RSP_val.8 to i64*, !mcsema_real_eip !13
  %51 = load i64, i64* %50, !mcsema_real_eip !13
  store i64 %51, i64* %XBP, !mcsema_real_eip !13
  %52 = add i64 %RSP_val.8, 8, !mcsema_real_eip !13
  store i64 %52, i64* %XSP, !mcsema_real_eip !13
  %53 = add i64 %52, 8, !mcsema_real_eip !14
  %54 = inttoptr i64 %52 to i64*, !mcsema_real_eip !14
  %55 = load i64, i64* %54, !mcsema_real_eip !14
  store i64 %55, i64* %XIP, !mcsema_real_eip !14
  store i64 %53, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x20
  %56 = load i32, i32* %11, !mcsema_real_eip !15
  %57 = sext i32 %56 to i64, !mcsema_real_eip !15
  store i64 %57, i64* %XAX, !mcsema_real_eip !15
  %58 = mul i64 %57, 8, !mcsema_real_eip !16
  %59 = add i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), %58, !mcsema_real_eip !16
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !16
  %61 = load i64, i64* %60, !mcsema_real_eip !16
  store i64 %61, i64* %XAX, !mcsema_real_eip !16
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !17
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !17
  %64 = load i32, i32* %63, !mcsema_real_eip !17
  %65 = zext i32 %64 to i64, !mcsema_real_eip !17
  store i64 %65, i64* %XCX, !mcsema_real_eip !17
  %66 = add i64 %RBP_val.5, -8, !mcsema_real_eip !18
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !18
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !18
  %69 = load i32, i32* %68, !mcsema_real_eip !18
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !18
  %70 = add i32 %ECX_val.17, %69, !mcsema_real_eip !18
  %71 = xor i32 %70, %69, !mcsema_real_eip !18
  %72 = xor i32 %71, %ECX_val.17, !mcsema_real_eip !18
  %73 = and i32 %72, 16, !mcsema_real_eip !18
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !18
  store i1 %74, i1* %AF, !mcsema_real_eip !18
  %75 = lshr i32 %70, 31, !mcsema_real_eip !18
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !18
  store i1 %76, i1* %SF, !mcsema_real_eip !18
  %77 = icmp eq i32 %70, 0, !mcsema_real_eip !18
  store i1 %77, i1* %ZF, !mcsema_real_eip !18
  %78 = xor i32 %69, %ECX_val.17, !mcsema_real_eip !18
  %79 = xor i32 %78, -1, !mcsema_real_eip !18
  %80 = and i32 %79, %71, !mcsema_real_eip !18
  %81 = lshr i32 %80, 31, !mcsema_real_eip !18
  %82 = and i32 %81, 1, !mcsema_real_eip !18
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !18
  store i1 %83, i1* %OF, !mcsema_real_eip !18
  %84 = trunc i32 %70 to i8, !mcsema_real_eip !18
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !18
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !18
  %87 = xor i1 %86, true, !mcsema_real_eip !18
  store i1 %87, i1* %PF, !mcsema_real_eip !18
  %88 = icmp ult i32 %70, %69, !mcsema_real_eip !18
  store i1 %88, i1* %CF, !mcsema_real_eip !18
  %89 = zext i32 %70 to i64, !mcsema_real_eip !18
  store i64 %89, i64* %XCX, !mcsema_real_eip !18
  %ECX_val.20 = load i32, i32* %ECX.16, !mcsema_real_eip !19
  store i32 %ECX_val.20, i32* %68, !mcsema_real_eip !19
  br label %block_0x47, !mcsema_real_eip !20

block_0x47:                                       ; preds = %block_0x33, %block_0x20
  br label %block_0x4c, !mcsema_real_eip !21

block_0x4c:                                       ; preds = %block_0x47
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %90 = add i64 %RBP_val.21, -4, !mcsema_real_eip !20
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !20
  %92 = inttoptr i64 %90 to i32*, !mcsema_real_eip !20
  %93 = load i32, i32* %92, !mcsema_real_eip !20
  %94 = zext i32 %93 to i64, !mcsema_real_eip !20
  store i64 %94, i64* %XAX, !mcsema_real_eip !20
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !22
  %95 = add i32 1, %EAX_val.23, !mcsema_real_eip !22
  %96 = xor i32 %95, %EAX_val.23, !mcsema_real_eip !22
  %97 = xor i32 %96, 1, !mcsema_real_eip !22
  %98 = and i32 %97, 16, !mcsema_real_eip !22
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !22
  store i1 %99, i1* %AF, !mcsema_real_eip !22
  %100 = lshr i32 %95, 31, !mcsema_real_eip !22
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !22
  store i1 %101, i1* %SF, !mcsema_real_eip !22
  %102 = icmp eq i32 %95, 0, !mcsema_real_eip !22
  store i1 %102, i1* %ZF, !mcsema_real_eip !22
  %103 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !22
  %104 = xor i32 %103, -1, !mcsema_real_eip !22
  %105 = and i32 %104, %96, !mcsema_real_eip !22
  %106 = lshr i32 %105, 31, !mcsema_real_eip !22
  %107 = and i32 %106, 1, !mcsema_real_eip !22
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !22
  store i1 %108, i1* %OF, !mcsema_real_eip !22
  %109 = trunc i32 %95 to i8, !mcsema_real_eip !22
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !22
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !22
  %112 = xor i1 %111, true, !mcsema_real_eip !22
  store i1 %112, i1* %PF, !mcsema_real_eip !22
  %113 = icmp ult i32 %95, %EAX_val.23, !mcsema_real_eip !22
  store i1 %113, i1* %CF, !mcsema_real_eip !22
  %114 = zext i32 %95 to i64, !mcsema_real_eip !22
  store i64 %114, i64* %XAX, !mcsema_real_eip !22
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !23
  store i32 %EAX_val.26, i32* %92, !mcsema_real_eip !23
  br label %block_0x12, !mcsema_real_eip !24
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
!12 = !{i64 90}
!13 = !{i64 93}
!14 = !{i64 94}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 63}
!18 = !{i64 65}
!19 = !{i64 68}
!20 = !{i64 76}
!21 = !{i64 71}
!22 = !{i64 79}
!23 = !{i64 82}
!24 = !{i64 85}
