; ModuleID = 'Output/test_20.clang.opt.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl switches;"
module asm "  .type switches,@function"
module asm "switches:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size switches,0b-switches;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d0 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\CD\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = add i64 %1, -4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %5, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %8, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.7, -4, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  %12 = load i32, i32* %11, !mcsema_real_eip !6
  %13 = zext i32 %12 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %XDI, !mcsema_real_eip !6
  %EDI_val.9 = load i32, i32* %EDI.4, !mcsema_real_eip !7
  %14 = icmp eq i32 %EDI_val.9, 0, !mcsema_real_eip !7
  store i1 %14, i1* %ZF, !mcsema_real_eip !7
  %15 = lshr i32 %EDI_val.9, 31, !mcsema_real_eip !7
  %16 = trunc i32 %15 to i1, !mcsema_real_eip !7
  store i1 %16, i1* %SF, !mcsema_real_eip !7
  %17 = trunc i32 %EDI_val.9 to i8, !mcsema_real_eip !7
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !7
  %19 = trunc i8 %18 to i1, !mcsema_real_eip !7
  %20 = xor i1 %19, true, !mcsema_real_eip !7
  store i1 %20, i1* %PF, !mcsema_real_eip !7
  store i1 false, i1* %CF, !mcsema_real_eip !7
  store i1 false, i1* %OF, !mcsema_real_eip !7
  %21 = add i64 %RBP_val.7, -12, !mcsema_real_eip !8
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !8
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %23, !mcsema_real_eip !8
  %24 = load i1, i1* %ZF, !mcsema_real_eip !9
  br i1 %24, label %block_0x19f, label %block_0x1c, !mcsema_real_eip !9

block_0x1c:                                       ; preds = %block_0x0
  br label %block_0x21, !mcsema_real_eip !10

block_0x21:                                       ; preds = %block_0x1c
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %25 = add i64 %RBP_val.15, -12, !mcsema_real_eip !11
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !11
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !11
  %28 = load i32, i32* %27, !mcsema_real_eip !11
  %29 = zext i32 %28 to i64, !mcsema_real_eip !11
  store i64 %29, i64* %XAX, !mcsema_real_eip !11
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !12
  %30 = sub i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %31 = xor i32 %30, %EAX_val.17, !mcsema_real_eip !12
  %32 = xor i32 %31, 1, !mcsema_real_eip !12
  %33 = and i32 %32, 16, !mcsema_real_eip !12
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !12
  store i1 %34, i1* %AF, !mcsema_real_eip !12
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !12
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !12
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !12
  %38 = xor i1 %37, true, !mcsema_real_eip !12
  store i1 %38, i1* %PF, !mcsema_real_eip !12
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !12
  store i1 %39, i1* %ZF, !mcsema_real_eip !12
  %40 = lshr i32 %30, 31, !mcsema_real_eip !12
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !12
  store i1 %41, i1* %SF, !mcsema_real_eip !12
  %42 = icmp ult i32 %EAX_val.17, 1, !mcsema_real_eip !12
  store i1 %42, i1* %CF, !mcsema_real_eip !12
  %43 = xor i32 %EAX_val.17, 1, !mcsema_real_eip !12
  %44 = and i32 %43, %31, !mcsema_real_eip !12
  %45 = lshr i32 %44, 31, !mcsema_real_eip !12
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !12
  store i1 %46, i1* %OF, !mcsema_real_eip !12
  %47 = zext i32 %30 to i64, !mcsema_real_eip !12
  store i64 %47, i64* %XAX, !mcsema_real_eip !12
  %48 = add i64 %RBP_val.15, -16, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.16, !mcsema_real_eip !13
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %50, !mcsema_real_eip !13
  %51 = load i1, i1* %ZF, !mcsema_real_eip !14
  br i1 %51, label %block_0x1ad, label %block_0x30, !mcsema_real_eip !14

block_0x30:                                       ; preds = %block_0x21
  br label %block_0x35, !mcsema_real_eip !15

block_0x35:                                       ; preds = %block_0x30
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %52 = add i64 %RBP_val.21, -12, !mcsema_real_eip !16
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !16
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !16
  %55 = load i32, i32* %54, !mcsema_real_eip !16
  %56 = zext i32 %55 to i64, !mcsema_real_eip !16
  store i64 %56, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.23 = load i32, i32* %EAX.16, !mcsema_real_eip !17
  %57 = sub i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %58 = xor i32 %57, %EAX_val.23, !mcsema_real_eip !17
  %59 = xor i32 %58, 2, !mcsema_real_eip !17
  %60 = and i32 %59, 16, !mcsema_real_eip !17
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !17
  store i1 %61, i1* %AF, !mcsema_real_eip !17
  %62 = trunc i32 %57 to i8, !mcsema_real_eip !17
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !17
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !17
  %65 = xor i1 %64, true, !mcsema_real_eip !17
  store i1 %65, i1* %PF, !mcsema_real_eip !17
  %66 = icmp eq i32 %57, 0, !mcsema_real_eip !17
  store i1 %66, i1* %ZF, !mcsema_real_eip !17
  %67 = lshr i32 %57, 31, !mcsema_real_eip !17
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !17
  store i1 %68, i1* %SF, !mcsema_real_eip !17
  %69 = icmp ult i32 %EAX_val.23, 2, !mcsema_real_eip !17
  store i1 %69, i1* %CF, !mcsema_real_eip !17
  %70 = xor i32 %EAX_val.23, 2, !mcsema_real_eip !17
  %71 = and i32 %70, %58, !mcsema_real_eip !17
  %72 = lshr i32 %71, 31, !mcsema_real_eip !17
  %73 = trunc i32 %72 to i1, !mcsema_real_eip !17
  store i1 %73, i1* %OF, !mcsema_real_eip !17
  %74 = zext i32 %57 to i64, !mcsema_real_eip !17
  store i64 %74, i64* %XAX, !mcsema_real_eip !17
  %75 = add i64 %RBP_val.21, -20, !mcsema_real_eip !18
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !18
  %EAX_val.26 = load i32, i32* %EAX.16, !mcsema_real_eip !18
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %77, !mcsema_real_eip !18
  %78 = load i1, i1* %ZF, !mcsema_real_eip !19
  br i1 %78, label %block_0x1bb, label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x35
  br label %block_0x49, !mcsema_real_eip !20

block_0x49:                                       ; preds = %block_0x44
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !21
  %79 = add i64 %RBP_val.27, -12, !mcsema_real_eip !21
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !21
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !21
  %82 = load i32, i32* %81, !mcsema_real_eip !21
  %83 = zext i32 %82 to i64, !mcsema_real_eip !21
  store i64 %83, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.29 = load i32, i32* %EAX.16, !mcsema_real_eip !22
  %84 = sub i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %85 = xor i32 %84, %EAX_val.29, !mcsema_real_eip !22
  %86 = xor i32 %85, 4, !mcsema_real_eip !22
  %87 = and i32 %86, 16, !mcsema_real_eip !22
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !22
  store i1 %88, i1* %AF, !mcsema_real_eip !22
  %89 = trunc i32 %84 to i8, !mcsema_real_eip !22
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !22
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !22
  %92 = xor i1 %91, true, !mcsema_real_eip !22
  store i1 %92, i1* %PF, !mcsema_real_eip !22
  %93 = icmp eq i32 %84, 0, !mcsema_real_eip !22
  store i1 %93, i1* %ZF, !mcsema_real_eip !22
  %94 = lshr i32 %84, 31, !mcsema_real_eip !22
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !22
  store i1 %95, i1* %SF, !mcsema_real_eip !22
  %96 = icmp ult i32 %EAX_val.29, 4, !mcsema_real_eip !22
  store i1 %96, i1* %CF, !mcsema_real_eip !22
  %97 = xor i32 %EAX_val.29, 4, !mcsema_real_eip !22
  %98 = and i32 %97, %85, !mcsema_real_eip !22
  %99 = lshr i32 %98, 31, !mcsema_real_eip !22
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !22
  store i1 %100, i1* %OF, !mcsema_real_eip !22
  %101 = zext i32 %84 to i64, !mcsema_real_eip !22
  store i64 %101, i64* %XAX, !mcsema_real_eip !22
  %102 = add i64 %RBP_val.27, -24, !mcsema_real_eip !23
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !23
  %EAX_val.32 = load i32, i32* %EAX.16, !mcsema_real_eip !23
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.32, i32* %104, !mcsema_real_eip !23
  %105 = load i1, i1* %ZF, !mcsema_real_eip !24
  br i1 %105, label %block_0x1c9, label %block_0x58, !mcsema_real_eip !24

block_0x58:                                       ; preds = %block_0x49
  br label %block_0x5d, !mcsema_real_eip !25

block_0x5d:                                       ; preds = %block_0x58
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !26
  %106 = add i64 %RBP_val.33, -12, !mcsema_real_eip !26
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !26
  %109 = load i32, i32* %108, !mcsema_real_eip !26
  %110 = zext i32 %109 to i64, !mcsema_real_eip !26
  store i64 %110, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.35 = load i32, i32* %EAX.16, !mcsema_real_eip !27
  %111 = sub i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %112 = xor i32 %111, %EAX_val.35, !mcsema_real_eip !27
  %113 = xor i32 %112, 6, !mcsema_real_eip !27
  %114 = and i32 %113, 16, !mcsema_real_eip !27
  %115 = icmp ne i32 %114, 0, !mcsema_real_eip !27
  store i1 %115, i1* %AF, !mcsema_real_eip !27
  %116 = trunc i32 %111 to i8, !mcsema_real_eip !27
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !27
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !27
  %119 = xor i1 %118, true, !mcsema_real_eip !27
  store i1 %119, i1* %PF, !mcsema_real_eip !27
  %120 = icmp eq i32 %111, 0, !mcsema_real_eip !27
  store i1 %120, i1* %ZF, !mcsema_real_eip !27
  %121 = lshr i32 %111, 31, !mcsema_real_eip !27
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !27
  store i1 %122, i1* %SF, !mcsema_real_eip !27
  %123 = icmp ult i32 %EAX_val.35, 6, !mcsema_real_eip !27
  store i1 %123, i1* %CF, !mcsema_real_eip !27
  %124 = xor i32 %EAX_val.35, 6, !mcsema_real_eip !27
  %125 = and i32 %124, %112, !mcsema_real_eip !27
  %126 = lshr i32 %125, 31, !mcsema_real_eip !27
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !27
  store i1 %127, i1* %OF, !mcsema_real_eip !27
  %128 = zext i32 %111 to i64, !mcsema_real_eip !27
  store i64 %128, i64* %XAX, !mcsema_real_eip !27
  %129 = add i64 %RBP_val.33, -28, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !28
  %EAX_val.38 = load i32, i32* %EAX.16, !mcsema_real_eip !28
  %131 = inttoptr i64 %129 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.38, i32* %131, !mcsema_real_eip !28
  %132 = load i1, i1* %ZF, !mcsema_real_eip !29
  br i1 %132, label %block_0x1d7, label %block_0x6c, !mcsema_real_eip !29

block_0x6c:                                       ; preds = %block_0x5d
  br label %block_0x71, !mcsema_real_eip !30

block_0x71:                                       ; preds = %block_0x6c
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !31
  %133 = add i64 %RBP_val.39, -12, !mcsema_real_eip !31
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !31
  %135 = inttoptr i64 %133 to i32*, !mcsema_real_eip !31
  %136 = load i32, i32* %135, !mcsema_real_eip !31
  %137 = zext i32 %136 to i64, !mcsema_real_eip !31
  store i64 %137, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.41 = load i32, i32* %EAX.16, !mcsema_real_eip !32
  %138 = sub i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %139 = xor i32 %138, %EAX_val.41, !mcsema_real_eip !32
  %140 = xor i32 %139, 12, !mcsema_real_eip !32
  %141 = and i32 %140, 16, !mcsema_real_eip !32
  %142 = icmp ne i32 %141, 0, !mcsema_real_eip !32
  store i1 %142, i1* %AF, !mcsema_real_eip !32
  %143 = trunc i32 %138 to i8, !mcsema_real_eip !32
  %144 = call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !32
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !32
  %146 = xor i1 %145, true, !mcsema_real_eip !32
  store i1 %146, i1* %PF, !mcsema_real_eip !32
  %147 = icmp eq i32 %138, 0, !mcsema_real_eip !32
  store i1 %147, i1* %ZF, !mcsema_real_eip !32
  %148 = lshr i32 %138, 31, !mcsema_real_eip !32
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !32
  store i1 %149, i1* %SF, !mcsema_real_eip !32
  %150 = icmp ult i32 %EAX_val.41, 12, !mcsema_real_eip !32
  store i1 %150, i1* %CF, !mcsema_real_eip !32
  %151 = xor i32 %EAX_val.41, 12, !mcsema_real_eip !32
  %152 = and i32 %151, %139, !mcsema_real_eip !32
  %153 = lshr i32 %152, 31, !mcsema_real_eip !32
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !32
  store i1 %154, i1* %OF, !mcsema_real_eip !32
  %155 = zext i32 %138 to i64, !mcsema_real_eip !32
  store i64 %155, i64* %XAX, !mcsema_real_eip !32
  %156 = add i64 %RBP_val.39, -32, !mcsema_real_eip !33
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !33
  %EAX_val.44 = load i32, i32* %EAX.16, !mcsema_real_eip !33
  %158 = inttoptr i64 %156 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.44, i32* %158, !mcsema_real_eip !33
  %159 = load i1, i1* %ZF, !mcsema_real_eip !34
  br i1 %159, label %block_0x1e5, label %block_0x80, !mcsema_real_eip !34

block_0x80:                                       ; preds = %block_0x71
  br label %block_0x85, !mcsema_real_eip !35

block_0x85:                                       ; preds = %block_0x80
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !36
  %160 = add i64 %RBP_val.45, -12, !mcsema_real_eip !36
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !36
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !36
  %163 = load i32, i32* %162, !mcsema_real_eip !36
  %164 = zext i32 %163 to i64, !mcsema_real_eip !36
  store i64 %164, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.16, !mcsema_real_eip !37
  %165 = sub i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %166 = xor i32 %165, %EAX_val.47, !mcsema_real_eip !37
  %167 = xor i32 %166, 13, !mcsema_real_eip !37
  %168 = and i32 %167, 16, !mcsema_real_eip !37
  %169 = icmp ne i32 %168, 0, !mcsema_real_eip !37
  store i1 %169, i1* %AF, !mcsema_real_eip !37
  %170 = trunc i32 %165 to i8, !mcsema_real_eip !37
  %171 = call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !37
  %172 = trunc i8 %171 to i1, !mcsema_real_eip !37
  %173 = xor i1 %172, true, !mcsema_real_eip !37
  store i1 %173, i1* %PF, !mcsema_real_eip !37
  %174 = icmp eq i32 %165, 0, !mcsema_real_eip !37
  store i1 %174, i1* %ZF, !mcsema_real_eip !37
  %175 = lshr i32 %165, 31, !mcsema_real_eip !37
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !37
  store i1 %176, i1* %SF, !mcsema_real_eip !37
  %177 = icmp ult i32 %EAX_val.47, 13, !mcsema_real_eip !37
  store i1 %177, i1* %CF, !mcsema_real_eip !37
  %178 = xor i32 %EAX_val.47, 13, !mcsema_real_eip !37
  %179 = and i32 %178, %166, !mcsema_real_eip !37
  %180 = lshr i32 %179, 31, !mcsema_real_eip !37
  %181 = trunc i32 %180 to i1, !mcsema_real_eip !37
  store i1 %181, i1* %OF, !mcsema_real_eip !37
  %182 = zext i32 %165 to i64, !mcsema_real_eip !37
  store i64 %182, i64* %XAX, !mcsema_real_eip !37
  %183 = add i64 %RBP_val.45, -36, !mcsema_real_eip !38
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !38
  %EAX_val.50 = load i32, i32* %EAX.16, !mcsema_real_eip !38
  %185 = inttoptr i64 %183 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.50, i32* %185, !mcsema_real_eip !38
  %186 = load i1, i1* %ZF, !mcsema_real_eip !39
  br i1 %186, label %block_0x1f3, label %block_0x94, !mcsema_real_eip !39

block_0x94:                                       ; preds = %block_0x85
  br label %block_0x99, !mcsema_real_eip !40

block_0x99:                                       ; preds = %block_0x94
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !41
  %187 = add i64 %RBP_val.51, -12, !mcsema_real_eip !41
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !41
  %189 = inttoptr i64 %187 to i32*, !mcsema_real_eip !41
  %190 = load i32, i32* %189, !mcsema_real_eip !41
  %191 = zext i32 %190 to i64, !mcsema_real_eip !41
  store i64 %191, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.53 = load i32, i32* %EAX.16, !mcsema_real_eip !42
  %192 = sub i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %193 = xor i32 %192, %EAX_val.53, !mcsema_real_eip !42
  %194 = xor i32 %193, 19, !mcsema_real_eip !42
  %195 = and i32 %194, 16, !mcsema_real_eip !42
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !42
  store i1 %196, i1* %AF, !mcsema_real_eip !42
  %197 = trunc i32 %192 to i8, !mcsema_real_eip !42
  %198 = call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !42
  %199 = trunc i8 %198 to i1, !mcsema_real_eip !42
  %200 = xor i1 %199, true, !mcsema_real_eip !42
  store i1 %200, i1* %PF, !mcsema_real_eip !42
  %201 = icmp eq i32 %192, 0, !mcsema_real_eip !42
  store i1 %201, i1* %ZF, !mcsema_real_eip !42
  %202 = lshr i32 %192, 31, !mcsema_real_eip !42
  %203 = trunc i32 %202 to i1, !mcsema_real_eip !42
  store i1 %203, i1* %SF, !mcsema_real_eip !42
  %204 = icmp ult i32 %EAX_val.53, 19, !mcsema_real_eip !42
  store i1 %204, i1* %CF, !mcsema_real_eip !42
  %205 = xor i32 %EAX_val.53, 19, !mcsema_real_eip !42
  %206 = and i32 %205, %193, !mcsema_real_eip !42
  %207 = lshr i32 %206, 31, !mcsema_real_eip !42
  %208 = trunc i32 %207 to i1, !mcsema_real_eip !42
  store i1 %208, i1* %OF, !mcsema_real_eip !42
  %209 = zext i32 %192 to i64, !mcsema_real_eip !42
  store i64 %209, i64* %XAX, !mcsema_real_eip !42
  %210 = add i64 %RBP_val.51, -40, !mcsema_real_eip !43
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !43
  %EAX_val.56 = load i32, i32* %EAX.16, !mcsema_real_eip !43
  %212 = inttoptr i64 %210 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.56, i32* %212, !mcsema_real_eip !43
  %213 = load i1, i1* %ZF, !mcsema_real_eip !44
  br i1 %213, label %block_0x201, label %block_0xa8, !mcsema_real_eip !44

block_0xa8:                                       ; preds = %block_0x99
  br label %block_0xad, !mcsema_real_eip !45

block_0xad:                                       ; preds = %block_0xa8
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !46
  %214 = add i64 %RBP_val.57, -12, !mcsema_real_eip !46
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !46
  %216 = inttoptr i64 %214 to i32*, !mcsema_real_eip !46
  %217 = load i32, i32* %216, !mcsema_real_eip !46
  %218 = zext i32 %217 to i64, !mcsema_real_eip !46
  store i64 %218, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.59 = load i32, i32* %EAX.16, !mcsema_real_eip !47
  %219 = sub i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %220 = xor i32 %219, %EAX_val.59, !mcsema_real_eip !47
  %221 = xor i32 %220, 255, !mcsema_real_eip !47
  %222 = and i32 %221, 16, !mcsema_real_eip !47
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !47
  store i1 %223, i1* %AF, !mcsema_real_eip !47
  %224 = trunc i32 %219 to i8, !mcsema_real_eip !47
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !47
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !47
  %227 = xor i1 %226, true, !mcsema_real_eip !47
  store i1 %227, i1* %PF, !mcsema_real_eip !47
  %228 = icmp eq i32 %219, 0, !mcsema_real_eip !47
  store i1 %228, i1* %ZF, !mcsema_real_eip !47
  %229 = lshr i32 %219, 31, !mcsema_real_eip !47
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !47
  store i1 %230, i1* %SF, !mcsema_real_eip !47
  %231 = icmp ult i32 %EAX_val.59, 255, !mcsema_real_eip !47
  store i1 %231, i1* %CF, !mcsema_real_eip !47
  %232 = xor i32 %EAX_val.59, 255, !mcsema_real_eip !47
  %233 = and i32 %232, %220, !mcsema_real_eip !47
  %234 = lshr i32 %233, 31, !mcsema_real_eip !47
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !47
  store i1 %235, i1* %OF, !mcsema_real_eip !47
  %236 = zext i32 %219 to i64, !mcsema_real_eip !47
  store i64 %236, i64* %XAX, !mcsema_real_eip !47
  %237 = add i64 %RBP_val.57, -44, !mcsema_real_eip !48
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !48
  %EAX_val.62 = load i32, i32* %EAX.16, !mcsema_real_eip !48
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !48
  store i32 %EAX_val.62, i32* %239, !mcsema_real_eip !48
  %240 = load i1, i1* %ZF, !mcsema_real_eip !49
  br i1 %240, label %block_0x20f, label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xad
  br label %block_0xc3, !mcsema_real_eip !50

block_0xc3:                                       ; preds = %block_0xbe
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !51
  %241 = add i64 %RBP_val.63, -12, !mcsema_real_eip !51
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !51
  %243 = inttoptr i64 %241 to i32*, !mcsema_real_eip !51
  %244 = load i32, i32* %243, !mcsema_real_eip !51
  %245 = zext i32 %244 to i64, !mcsema_real_eip !51
  store i64 %245, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.65 = load i32, i32* %EAX.16, !mcsema_real_eip !52
  %246 = sub i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %247 = xor i32 %246, %EAX_val.65, !mcsema_real_eip !52
  %248 = xor i32 %247, 74633, !mcsema_real_eip !52
  %249 = and i32 %248, 16, !mcsema_real_eip !52
  %250 = icmp ne i32 %249, 0, !mcsema_real_eip !52
  store i1 %250, i1* %AF, !mcsema_real_eip !52
  %251 = trunc i32 %246 to i8, !mcsema_real_eip !52
  %252 = call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !52
  %253 = trunc i8 %252 to i1, !mcsema_real_eip !52
  %254 = xor i1 %253, true, !mcsema_real_eip !52
  store i1 %254, i1* %PF, !mcsema_real_eip !52
  %255 = icmp eq i32 %246, 0, !mcsema_real_eip !52
  store i1 %255, i1* %ZF, !mcsema_real_eip !52
  %256 = lshr i32 %246, 31, !mcsema_real_eip !52
  %257 = trunc i32 %256 to i1, !mcsema_real_eip !52
  store i1 %257, i1* %SF, !mcsema_real_eip !52
  %258 = icmp ult i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  store i1 %258, i1* %CF, !mcsema_real_eip !52
  %259 = xor i32 %EAX_val.65, 74633, !mcsema_real_eip !52
  %260 = and i32 %259, %247, !mcsema_real_eip !52
  %261 = lshr i32 %260, 31, !mcsema_real_eip !52
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !52
  store i1 %262, i1* %OF, !mcsema_real_eip !52
  %263 = zext i32 %246 to i64, !mcsema_real_eip !52
  store i64 %263, i64* %XAX, !mcsema_real_eip !52
  %264 = add i64 %RBP_val.63, -48, !mcsema_real_eip !53
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !53
  %EAX_val.68 = load i32, i32* %EAX.16, !mcsema_real_eip !53
  %266 = inttoptr i64 %264 to i32*, !mcsema_real_eip !53
  store i32 %EAX_val.68, i32* %266, !mcsema_real_eip !53
  %267 = load i1, i1* %ZF, !mcsema_real_eip !54
  br i1 %267, label %block_0x21f, label %block_0xd4, !mcsema_real_eip !54

block_0xd4:                                       ; preds = %block_0xc3
  br label %block_0xd9, !mcsema_real_eip !55

block_0xd9:                                       ; preds = %block_0xd4
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !56
  %268 = add i64 %RBP_val.69, -12, !mcsema_real_eip !56
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !56
  %270 = inttoptr i64 %268 to i32*, !mcsema_real_eip !56
  %271 = load i32, i32* %270, !mcsema_real_eip !56
  %272 = zext i32 %271 to i64, !mcsema_real_eip !56
  store i64 %272, i64* %XAX, !mcsema_real_eip !56
  %EAX_val.71 = load i32, i32* %EAX.16, !mcsema_real_eip !57
  %273 = sub i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %274 = xor i32 %273, %EAX_val.71, !mcsema_real_eip !57
  %275 = xor i32 %274, 74634, !mcsema_real_eip !57
  %276 = and i32 %275, 16, !mcsema_real_eip !57
  %277 = icmp ne i32 %276, 0, !mcsema_real_eip !57
  store i1 %277, i1* %AF, !mcsema_real_eip !57
  %278 = trunc i32 %273 to i8, !mcsema_real_eip !57
  %279 = call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !57
  %280 = trunc i8 %279 to i1, !mcsema_real_eip !57
  %281 = xor i1 %280, true, !mcsema_real_eip !57
  store i1 %281, i1* %PF, !mcsema_real_eip !57
  %282 = icmp eq i32 %273, 0, !mcsema_real_eip !57
  store i1 %282, i1* %ZF, !mcsema_real_eip !57
  %283 = lshr i32 %273, 31, !mcsema_real_eip !57
  %284 = trunc i32 %283 to i1, !mcsema_real_eip !57
  store i1 %284, i1* %SF, !mcsema_real_eip !57
  %285 = icmp ult i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  store i1 %285, i1* %CF, !mcsema_real_eip !57
  %286 = xor i32 %EAX_val.71, 74634, !mcsema_real_eip !57
  %287 = and i32 %286, %274, !mcsema_real_eip !57
  %288 = lshr i32 %287, 31, !mcsema_real_eip !57
  %289 = trunc i32 %288 to i1, !mcsema_real_eip !57
  store i1 %289, i1* %OF, !mcsema_real_eip !57
  %290 = zext i32 %273 to i64, !mcsema_real_eip !57
  store i64 %290, i64* %XAX, !mcsema_real_eip !57
  %291 = add i64 %RBP_val.69, -52, !mcsema_real_eip !58
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !58
  %EAX_val.74 = load i32, i32* %EAX.16, !mcsema_real_eip !58
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.74, i32* %293, !mcsema_real_eip !58
  %294 = load i1, i1* %ZF, !mcsema_real_eip !59
  br i1 %294, label %block_0x22f, label %block_0xea, !mcsema_real_eip !59

block_0xea:                                       ; preds = %block_0xd9
  br label %block_0xef, !mcsema_real_eip !60

block_0xef:                                       ; preds = %block_0xea
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !61
  %295 = add i64 %RBP_val.75, -12, !mcsema_real_eip !61
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !61
  %297 = inttoptr i64 %295 to i32*, !mcsema_real_eip !61
  %298 = load i32, i32* %297, !mcsema_real_eip !61
  %299 = zext i32 %298 to i64, !mcsema_real_eip !61
  store i64 %299, i64* %XAX, !mcsema_real_eip !61
  %EAX_val.77 = load i32, i32* %EAX.16, !mcsema_real_eip !62
  %300 = sub i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %301 = xor i32 %300, %EAX_val.77, !mcsema_real_eip !62
  %302 = xor i32 %301, 74635, !mcsema_real_eip !62
  %303 = and i32 %302, 16, !mcsema_real_eip !62
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !62
  store i1 %304, i1* %AF, !mcsema_real_eip !62
  %305 = trunc i32 %300 to i8, !mcsema_real_eip !62
  %306 = call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !62
  %307 = trunc i8 %306 to i1, !mcsema_real_eip !62
  %308 = xor i1 %307, true, !mcsema_real_eip !62
  store i1 %308, i1* %PF, !mcsema_real_eip !62
  %309 = icmp eq i32 %300, 0, !mcsema_real_eip !62
  store i1 %309, i1* %ZF, !mcsema_real_eip !62
  %310 = lshr i32 %300, 31, !mcsema_real_eip !62
  %311 = trunc i32 %310 to i1, !mcsema_real_eip !62
  store i1 %311, i1* %SF, !mcsema_real_eip !62
  %312 = icmp ult i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  store i1 %312, i1* %CF, !mcsema_real_eip !62
  %313 = xor i32 %EAX_val.77, 74635, !mcsema_real_eip !62
  %314 = and i32 %313, %301, !mcsema_real_eip !62
  %315 = lshr i32 %314, 31, !mcsema_real_eip !62
  %316 = trunc i32 %315 to i1, !mcsema_real_eip !62
  store i1 %316, i1* %OF, !mcsema_real_eip !62
  %317 = zext i32 %300 to i64, !mcsema_real_eip !62
  store i64 %317, i64* %XAX, !mcsema_real_eip !62
  %318 = add i64 %RBP_val.75, -56, !mcsema_real_eip !63
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !63
  %EAX_val.80 = load i32, i32* %EAX.16, !mcsema_real_eip !63
  %320 = inttoptr i64 %318 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.80, i32* %320, !mcsema_real_eip !63
  %321 = load i1, i1* %ZF, !mcsema_real_eip !64
  br i1 %321, label %block_0x23f, label %block_0x100, !mcsema_real_eip !64

block_0x100:                                      ; preds = %block_0xef
  br label %block_0x105, !mcsema_real_eip !65

block_0x105:                                      ; preds = %block_0x100
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !66
  %322 = add i64 %RBP_val.81, -12, !mcsema_real_eip !66
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !66
  %324 = inttoptr i64 %322 to i32*, !mcsema_real_eip !66
  %325 = load i32, i32* %324, !mcsema_real_eip !66
  %326 = zext i32 %325 to i64, !mcsema_real_eip !66
  store i64 %326, i64* %XAX, !mcsema_real_eip !66
  %EAX_val.83 = load i32, i32* %EAX.16, !mcsema_real_eip !67
  %327 = sub i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %328 = xor i32 %327, %EAX_val.83, !mcsema_real_eip !67
  %329 = xor i32 %328, 74636, !mcsema_real_eip !67
  %330 = and i32 %329, 16, !mcsema_real_eip !67
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !67
  store i1 %331, i1* %AF, !mcsema_real_eip !67
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !67
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !67
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !67
  %335 = xor i1 %334, true, !mcsema_real_eip !67
  store i1 %335, i1* %PF, !mcsema_real_eip !67
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !67
  store i1 %336, i1* %ZF, !mcsema_real_eip !67
  %337 = lshr i32 %327, 31, !mcsema_real_eip !67
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !67
  store i1 %338, i1* %SF, !mcsema_real_eip !67
  %339 = icmp ult i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  store i1 %339, i1* %CF, !mcsema_real_eip !67
  %340 = xor i32 %EAX_val.83, 74636, !mcsema_real_eip !67
  %341 = and i32 %340, %328, !mcsema_real_eip !67
  %342 = lshr i32 %341, 31, !mcsema_real_eip !67
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !67
  store i1 %343, i1* %OF, !mcsema_real_eip !67
  %344 = zext i32 %327 to i64, !mcsema_real_eip !67
  store i64 %344, i64* %XAX, !mcsema_real_eip !67
  %345 = add i64 %RBP_val.81, -60, !mcsema_real_eip !68
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !68
  %EAX_val.86 = load i32, i32* %EAX.16, !mcsema_real_eip !68
  %347 = inttoptr i64 %345 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.86, i32* %347, !mcsema_real_eip !68
  %348 = load i1, i1* %ZF, !mcsema_real_eip !69
  br i1 %348, label %block_0x24f, label %block_0x116, !mcsema_real_eip !69

block_0x116:                                      ; preds = %block_0x105
  br label %block_0x11b, !mcsema_real_eip !70

block_0x11b:                                      ; preds = %block_0x116
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !71
  %349 = add i64 %RBP_val.87, -12, !mcsema_real_eip !71
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !71
  %351 = inttoptr i64 %349 to i32*, !mcsema_real_eip !71
  %352 = load i32, i32* %351, !mcsema_real_eip !71
  %353 = zext i32 %352 to i64, !mcsema_real_eip !71
  store i64 %353, i64* %XAX, !mcsema_real_eip !71
  %EAX_val.89 = load i32, i32* %EAX.16, !mcsema_real_eip !72
  %354 = sub i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %355 = xor i32 %354, %EAX_val.89, !mcsema_real_eip !72
  %356 = xor i32 %355, 74637, !mcsema_real_eip !72
  %357 = and i32 %356, 16, !mcsema_real_eip !72
  %358 = icmp ne i32 %357, 0, !mcsema_real_eip !72
  store i1 %358, i1* %AF, !mcsema_real_eip !72
  %359 = trunc i32 %354 to i8, !mcsema_real_eip !72
  %360 = call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !72
  %361 = trunc i8 %360 to i1, !mcsema_real_eip !72
  %362 = xor i1 %361, true, !mcsema_real_eip !72
  store i1 %362, i1* %PF, !mcsema_real_eip !72
  %363 = icmp eq i32 %354, 0, !mcsema_real_eip !72
  store i1 %363, i1* %ZF, !mcsema_real_eip !72
  %364 = lshr i32 %354, 31, !mcsema_real_eip !72
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !72
  store i1 %365, i1* %SF, !mcsema_real_eip !72
  %366 = icmp ult i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  store i1 %366, i1* %CF, !mcsema_real_eip !72
  %367 = xor i32 %EAX_val.89, 74637, !mcsema_real_eip !72
  %368 = and i32 %367, %355, !mcsema_real_eip !72
  %369 = lshr i32 %368, 31, !mcsema_real_eip !72
  %370 = trunc i32 %369 to i1, !mcsema_real_eip !72
  store i1 %370, i1* %OF, !mcsema_real_eip !72
  %371 = zext i32 %354 to i64, !mcsema_real_eip !72
  store i64 %371, i64* %XAX, !mcsema_real_eip !72
  %372 = add i64 %RBP_val.87, -64, !mcsema_real_eip !73
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !73
  %EAX_val.92 = load i32, i32* %EAX.16, !mcsema_real_eip !73
  %374 = inttoptr i64 %372 to i32*, !mcsema_real_eip !73
  store i32 %EAX_val.92, i32* %374, !mcsema_real_eip !73
  %375 = load i1, i1* %ZF, !mcsema_real_eip !74
  br i1 %375, label %block_0x25f, label %block_0x12c, !mcsema_real_eip !74

block_0x12c:                                      ; preds = %block_0x11b
  br label %block_0x131, !mcsema_real_eip !75

block_0x131:                                      ; preds = %block_0x12c
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !76
  %376 = add i64 %RBP_val.93, -12, !mcsema_real_eip !76
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !76
  %378 = inttoptr i64 %376 to i32*, !mcsema_real_eip !76
  %379 = load i32, i32* %378, !mcsema_real_eip !76
  %380 = zext i32 %379 to i64, !mcsema_real_eip !76
  store i64 %380, i64* %XAX, !mcsema_real_eip !76
  %EAX_val.95 = load i32, i32* %EAX.16, !mcsema_real_eip !77
  %381 = sub i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %382 = xor i32 %381, %EAX_val.95, !mcsema_real_eip !77
  %383 = xor i32 %382, 74639, !mcsema_real_eip !77
  %384 = and i32 %383, 16, !mcsema_real_eip !77
  %385 = icmp ne i32 %384, 0, !mcsema_real_eip !77
  store i1 %385, i1* %AF, !mcsema_real_eip !77
  %386 = trunc i32 %381 to i8, !mcsema_real_eip !77
  %387 = call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !77
  %388 = trunc i8 %387 to i1, !mcsema_real_eip !77
  %389 = xor i1 %388, true, !mcsema_real_eip !77
  store i1 %389, i1* %PF, !mcsema_real_eip !77
  %390 = icmp eq i32 %381, 0, !mcsema_real_eip !77
  store i1 %390, i1* %ZF, !mcsema_real_eip !77
  %391 = lshr i32 %381, 31, !mcsema_real_eip !77
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !77
  store i1 %392, i1* %SF, !mcsema_real_eip !77
  %393 = icmp ult i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  store i1 %393, i1* %CF, !mcsema_real_eip !77
  %394 = xor i32 %EAX_val.95, 74639, !mcsema_real_eip !77
  %395 = and i32 %394, %382, !mcsema_real_eip !77
  %396 = lshr i32 %395, 31, !mcsema_real_eip !77
  %397 = trunc i32 %396 to i1, !mcsema_real_eip !77
  store i1 %397, i1* %OF, !mcsema_real_eip !77
  %398 = zext i32 %381 to i64, !mcsema_real_eip !77
  store i64 %398, i64* %XAX, !mcsema_real_eip !77
  %399 = add i64 %RBP_val.93, -68, !mcsema_real_eip !78
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !78
  %EAX_val.98 = load i32, i32* %EAX.16, !mcsema_real_eip !78
  %401 = inttoptr i64 %399 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.98, i32* %401, !mcsema_real_eip !78
  %402 = load i1, i1* %ZF, !mcsema_real_eip !79
  br i1 %402, label %block_0x26f, label %block_0x142, !mcsema_real_eip !79

block_0x142:                                      ; preds = %block_0x131
  br label %block_0x147, !mcsema_real_eip !80

block_0x147:                                      ; preds = %block_0x142
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !81
  %403 = add i64 %RBP_val.99, -12, !mcsema_real_eip !81
  %404 = inttoptr i64 %403 to i64*, !mcsema_real_eip !81
  %405 = inttoptr i64 %403 to i32*, !mcsema_real_eip !81
  %406 = load i32, i32* %405, !mcsema_real_eip !81
  %407 = zext i32 %406 to i64, !mcsema_real_eip !81
  store i64 %407, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.16, !mcsema_real_eip !82
  %408 = sub i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %409 = xor i32 %408, %EAX_val.101, !mcsema_real_eip !82
  %410 = xor i32 %409, 74640, !mcsema_real_eip !82
  %411 = and i32 %410, 16, !mcsema_real_eip !82
  %412 = icmp ne i32 %411, 0, !mcsema_real_eip !82
  store i1 %412, i1* %AF, !mcsema_real_eip !82
  %413 = trunc i32 %408 to i8, !mcsema_real_eip !82
  %414 = call i8 @llvm.ctpop.i8(i8 %413), !mcsema_real_eip !82
  %415 = trunc i8 %414 to i1, !mcsema_real_eip !82
  %416 = xor i1 %415, true, !mcsema_real_eip !82
  store i1 %416, i1* %PF, !mcsema_real_eip !82
  %417 = icmp eq i32 %408, 0, !mcsema_real_eip !82
  store i1 %417, i1* %ZF, !mcsema_real_eip !82
  %418 = lshr i32 %408, 31, !mcsema_real_eip !82
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !82
  store i1 %419, i1* %SF, !mcsema_real_eip !82
  %420 = icmp ult i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  store i1 %420, i1* %CF, !mcsema_real_eip !82
  %421 = xor i32 %EAX_val.101, 74640, !mcsema_real_eip !82
  %422 = and i32 %421, %409, !mcsema_real_eip !82
  %423 = lshr i32 %422, 31, !mcsema_real_eip !82
  %424 = trunc i32 %423 to i1, !mcsema_real_eip !82
  store i1 %424, i1* %OF, !mcsema_real_eip !82
  %425 = zext i32 %408 to i64, !mcsema_real_eip !82
  store i64 %425, i64* %XAX, !mcsema_real_eip !82
  %426 = add i64 %RBP_val.99, -72, !mcsema_real_eip !83
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !83
  %EAX_val.104 = load i32, i32* %EAX.16, !mcsema_real_eip !83
  %428 = inttoptr i64 %426 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %428, !mcsema_real_eip !83
  %429 = load i1, i1* %ZF, !mcsema_real_eip !84
  br i1 %429, label %block_0x27f, label %block_0x158, !mcsema_real_eip !84

block_0x158:                                      ; preds = %block_0x147
  br label %block_0x15d, !mcsema_real_eip !85

block_0x15d:                                      ; preds = %block_0x158
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !86
  %430 = add i64 %RBP_val.105, -12, !mcsema_real_eip !86
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !86
  %432 = inttoptr i64 %430 to i32*, !mcsema_real_eip !86
  %433 = load i32, i32* %432, !mcsema_real_eip !86
  %434 = zext i32 %433 to i64, !mcsema_real_eip !86
  store i64 %434, i64* %XAX, !mcsema_real_eip !86
  %EAX_val.107 = load i32, i32* %EAX.16, !mcsema_real_eip !87
  %435 = sub i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %436 = xor i32 %435, %EAX_val.107, !mcsema_real_eip !87
  %437 = xor i32 %436, 74641, !mcsema_real_eip !87
  %438 = and i32 %437, 16, !mcsema_real_eip !87
  %439 = icmp ne i32 %438, 0, !mcsema_real_eip !87
  store i1 %439, i1* %AF, !mcsema_real_eip !87
  %440 = trunc i32 %435 to i8, !mcsema_real_eip !87
  %441 = call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !87
  %442 = trunc i8 %441 to i1, !mcsema_real_eip !87
  %443 = xor i1 %442, true, !mcsema_real_eip !87
  store i1 %443, i1* %PF, !mcsema_real_eip !87
  %444 = icmp eq i32 %435, 0, !mcsema_real_eip !87
  store i1 %444, i1* %ZF, !mcsema_real_eip !87
  %445 = lshr i32 %435, 31, !mcsema_real_eip !87
  %446 = trunc i32 %445 to i1, !mcsema_real_eip !87
  store i1 %446, i1* %SF, !mcsema_real_eip !87
  %447 = icmp ult i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  store i1 %447, i1* %CF, !mcsema_real_eip !87
  %448 = xor i32 %EAX_val.107, 74641, !mcsema_real_eip !87
  %449 = and i32 %448, %436, !mcsema_real_eip !87
  %450 = lshr i32 %449, 31, !mcsema_real_eip !87
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !87
  store i1 %451, i1* %OF, !mcsema_real_eip !87
  %452 = zext i32 %435 to i64, !mcsema_real_eip !87
  store i64 %452, i64* %XAX, !mcsema_real_eip !87
  %453 = add i64 %RBP_val.105, -76, !mcsema_real_eip !88
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !88
  %EAX_val.110 = load i32, i32* %EAX.16, !mcsema_real_eip !88
  %455 = inttoptr i64 %453 to i32*, !mcsema_real_eip !88
  store i32 %EAX_val.110, i32* %455, !mcsema_real_eip !88
  %456 = load i1, i1* %ZF, !mcsema_real_eip !89
  br i1 %456, label %block_0x28f, label %block_0x16e, !mcsema_real_eip !89

block_0x16e:                                      ; preds = %block_0x15d
  br label %block_0x173, !mcsema_real_eip !90

block_0x173:                                      ; preds = %block_0x16e
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !91
  %457 = add i64 %RBP_val.111, -12, !mcsema_real_eip !91
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !91
  %459 = inttoptr i64 %457 to i32*, !mcsema_real_eip !91
  %460 = load i32, i32* %459, !mcsema_real_eip !91
  %461 = zext i32 %460 to i64, !mcsema_real_eip !91
  store i64 %461, i64* %XAX, !mcsema_real_eip !91
  %EAX_val.113 = load i32, i32* %EAX.16, !mcsema_real_eip !92
  %462 = sub i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %463 = xor i32 %462, %EAX_val.113, !mcsema_real_eip !92
  %464 = xor i32 %463, 74642, !mcsema_real_eip !92
  %465 = and i32 %464, 16, !mcsema_real_eip !92
  %466 = icmp ne i32 %465, 0, !mcsema_real_eip !92
  store i1 %466, i1* %AF, !mcsema_real_eip !92
  %467 = trunc i32 %462 to i8, !mcsema_real_eip !92
  %468 = call i8 @llvm.ctpop.i8(i8 %467), !mcsema_real_eip !92
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !92
  %470 = xor i1 %469, true, !mcsema_real_eip !92
  store i1 %470, i1* %PF, !mcsema_real_eip !92
  %471 = icmp eq i32 %462, 0, !mcsema_real_eip !92
  store i1 %471, i1* %ZF, !mcsema_real_eip !92
  %472 = lshr i32 %462, 31, !mcsema_real_eip !92
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !92
  store i1 %473, i1* %SF, !mcsema_real_eip !92
  %474 = icmp ult i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  store i1 %474, i1* %CF, !mcsema_real_eip !92
  %475 = xor i32 %EAX_val.113, 74642, !mcsema_real_eip !92
  %476 = and i32 %475, %463, !mcsema_real_eip !92
  %477 = lshr i32 %476, 31, !mcsema_real_eip !92
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !92
  store i1 %478, i1* %OF, !mcsema_real_eip !92
  %479 = zext i32 %462 to i64, !mcsema_real_eip !92
  store i64 %479, i64* %XAX, !mcsema_real_eip !92
  %480 = add i64 %RBP_val.111, -80, !mcsema_real_eip !93
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !93
  %EAX_val.116 = load i32, i32* %EAX.16, !mcsema_real_eip !93
  %482 = inttoptr i64 %480 to i32*, !mcsema_real_eip !93
  store i32 %EAX_val.116, i32* %482, !mcsema_real_eip !93
  %483 = load i1, i1* %ZF, !mcsema_real_eip !94
  br i1 %483, label %block_0x29f, label %block_0x184, !mcsema_real_eip !94

block_0x184:                                      ; preds = %block_0x173
  br label %block_0x189, !mcsema_real_eip !95

block_0x189:                                      ; preds = %block_0x184
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !96
  %484 = add i64 %RBP_val.117, -12, !mcsema_real_eip !96
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !96
  %486 = inttoptr i64 %484 to i32*, !mcsema_real_eip !96
  %487 = load i32, i32* %486, !mcsema_real_eip !96
  %488 = zext i32 %487 to i64, !mcsema_real_eip !96
  store i64 %488, i64* %XAX, !mcsema_real_eip !96
  %EAX_val.119 = load i32, i32* %EAX.16, !mcsema_real_eip !97
  %489 = sub i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %490 = xor i32 %489, %EAX_val.119, !mcsema_real_eip !97
  %491 = xor i32 %490, 74643, !mcsema_real_eip !97
  %492 = and i32 %491, 16, !mcsema_real_eip !97
  %493 = icmp ne i32 %492, 0, !mcsema_real_eip !97
  store i1 %493, i1* %AF, !mcsema_real_eip !97
  %494 = trunc i32 %489 to i8, !mcsema_real_eip !97
  %495 = call i8 @llvm.ctpop.i8(i8 %494), !mcsema_real_eip !97
  %496 = trunc i8 %495 to i1, !mcsema_real_eip !97
  %497 = xor i1 %496, true, !mcsema_real_eip !97
  store i1 %497, i1* %PF, !mcsema_real_eip !97
  %498 = icmp eq i32 %489, 0, !mcsema_real_eip !97
  store i1 %498, i1* %ZF, !mcsema_real_eip !97
  %499 = lshr i32 %489, 31, !mcsema_real_eip !97
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !97
  store i1 %500, i1* %SF, !mcsema_real_eip !97
  %501 = icmp ult i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  store i1 %501, i1* %CF, !mcsema_real_eip !97
  %502 = xor i32 %EAX_val.119, 74643, !mcsema_real_eip !97
  %503 = and i32 %502, %490, !mcsema_real_eip !97
  %504 = lshr i32 %503, 31, !mcsema_real_eip !97
  %505 = trunc i32 %504 to i1, !mcsema_real_eip !97
  store i1 %505, i1* %OF, !mcsema_real_eip !97
  %506 = zext i32 %489 to i64, !mcsema_real_eip !97
  store i64 %506, i64* %XAX, !mcsema_real_eip !97
  %507 = add i64 %RBP_val.117, -84, !mcsema_real_eip !98
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !98
  %EAX_val.122 = load i32, i32* %EAX.16, !mcsema_real_eip !98
  %509 = inttoptr i64 %507 to i32*, !mcsema_real_eip !98
  store i32 %EAX_val.122, i32* %509, !mcsema_real_eip !98
  %510 = load i1, i1* %ZF, !mcsema_real_eip !99
  br i1 %510, label %block_0x2af, label %block_0x19a, !mcsema_real_eip !99

block_0x19a:                                      ; preds = %block_0x189
  br label %block_0x2bf, !mcsema_real_eip !100

block_0x19f:                                      ; preds = %block_0x0
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !101
  %511 = add i64 %RBP_val.123, -8, !mcsema_real_eip !101
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !101
  %513 = inttoptr i64 %511 to i32*, !mcsema_real_eip !101
  %514 = load i32, i32* %513, !mcsema_real_eip !101
  %515 = zext i32 %514 to i64, !mcsema_real_eip !101
  store i64 %515, i64* %XAX, !mcsema_real_eip !101
  %EAX.124 = bitcast i64* %XAX to i32*, !mcsema_real_eip !102
  %EAX_val.125 = load i32, i32* %EAX.124, !mcsema_real_eip !102
  store i1 false, i1* %AF, !mcsema_real_eip !102
  %516 = lshr i32 %EAX_val.125, 31, !mcsema_real_eip !102
  %517 = trunc i32 %516 to i1, !mcsema_real_eip !102
  store i1 %517, i1* %SF, !mcsema_real_eip !102
  %518 = icmp eq i32 %EAX_val.125, 0, !mcsema_real_eip !102
  store i1 %518, i1* %ZF, !mcsema_real_eip !102
  %519 = xor i32 %EAX_val.125, -1, !mcsema_real_eip !102
  store i1 false, i1* %OF, !mcsema_real_eip !102
  %520 = trunc i32 %EAX_val.125 to i8, !mcsema_real_eip !102
  %521 = call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !102
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !102
  %523 = xor i1 %522, true, !mcsema_real_eip !102
  store i1 %523, i1* %PF, !mcsema_real_eip !102
  store i1 false, i1* %CF, !mcsema_real_eip !102
  %524 = zext i32 %EAX_val.125 to i64, !mcsema_real_eip !102
  store i64 %524, i64* %XAX, !mcsema_real_eip !102
  %EAX_val.128 = load i32, i32* %EAX.124, !mcsema_real_eip !103
  store i32 %EAX_val.128, i32* %513, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x1ad:                                      ; preds = %block_0x21
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !105
  %525 = add i64 %RBP_val.129, -8, !mcsema_real_eip !105
  %526 = inttoptr i64 %525 to i64*, !mcsema_real_eip !105
  %527 = inttoptr i64 %525 to i32*, !mcsema_real_eip !105
  %528 = load i32, i32* %527, !mcsema_real_eip !105
  %529 = zext i32 %528 to i64, !mcsema_real_eip !105
  store i64 %529, i64* %XAX, !mcsema_real_eip !105
  %EAX_val.131 = load i32, i32* %EAX.16, !mcsema_real_eip !106
  %530 = add i32 1, %EAX_val.131, !mcsema_real_eip !106
  %531 = xor i32 %530, %EAX_val.131, !mcsema_real_eip !106
  %532 = xor i32 %531, 1, !mcsema_real_eip !106
  %533 = and i32 %532, 16, !mcsema_real_eip !106
  %534 = icmp ne i32 %533, 0, !mcsema_real_eip !106
  store i1 %534, i1* %AF, !mcsema_real_eip !106
  %535 = lshr i32 %530, 31, !mcsema_real_eip !106
  %536 = trunc i32 %535 to i1, !mcsema_real_eip !106
  store i1 %536, i1* %SF, !mcsema_real_eip !106
  %537 = icmp eq i32 %530, 0, !mcsema_real_eip !106
  store i1 %537, i1* %ZF, !mcsema_real_eip !106
  %538 = xor i32 %EAX_val.131, 1, !mcsema_real_eip !106
  %539 = xor i32 %538, -1, !mcsema_real_eip !106
  %540 = and i32 %539, %531, !mcsema_real_eip !106
  %541 = lshr i32 %540, 31, !mcsema_real_eip !106
  %542 = and i32 %541, 1, !mcsema_real_eip !106
  %543 = trunc i32 %542 to i1, !mcsema_real_eip !106
  store i1 %543, i1* %OF, !mcsema_real_eip !106
  %544 = trunc i32 %530 to i8, !mcsema_real_eip !106
  %545 = call i8 @llvm.ctpop.i8(i8 %544), !mcsema_real_eip !106
  %546 = trunc i8 %545 to i1, !mcsema_real_eip !106
  %547 = xor i1 %546, true, !mcsema_real_eip !106
  store i1 %547, i1* %PF, !mcsema_real_eip !106
  %548 = icmp ult i32 %530, %EAX_val.131, !mcsema_real_eip !106
  store i1 %548, i1* %CF, !mcsema_real_eip !106
  %549 = zext i32 %530 to i64, !mcsema_real_eip !106
  store i64 %549, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.134 = load i32, i32* %EAX.16, !mcsema_real_eip !107
  store i32 %EAX_val.134, i32* %527, !mcsema_real_eip !107
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x1bb:                                      ; preds = %block_0x35
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !109
  %550 = add i64 %RBP_val.135, -8, !mcsema_real_eip !109
  %551 = inttoptr i64 %550 to i64*, !mcsema_real_eip !109
  %552 = inttoptr i64 %550 to i32*, !mcsema_real_eip !109
  %553 = load i32, i32* %552, !mcsema_real_eip !109
  %554 = zext i32 %553 to i64, !mcsema_real_eip !109
  store i64 %554, i64* %XAX, !mcsema_real_eip !109
  %EAX_val.137 = load i32, i32* %EAX.16, !mcsema_real_eip !110
  %555 = add i32 2, %EAX_val.137, !mcsema_real_eip !110
  %556 = xor i32 %555, %EAX_val.137, !mcsema_real_eip !110
  %557 = xor i32 %556, 2, !mcsema_real_eip !110
  %558 = and i32 %557, 16, !mcsema_real_eip !110
  %559 = icmp ne i32 %558, 0, !mcsema_real_eip !110
  store i1 %559, i1* %AF, !mcsema_real_eip !110
  %560 = lshr i32 %555, 31, !mcsema_real_eip !110
  %561 = trunc i32 %560 to i1, !mcsema_real_eip !110
  store i1 %561, i1* %SF, !mcsema_real_eip !110
  %562 = icmp eq i32 %555, 0, !mcsema_real_eip !110
  store i1 %562, i1* %ZF, !mcsema_real_eip !110
  %563 = xor i32 %EAX_val.137, 2, !mcsema_real_eip !110
  %564 = xor i32 %563, -1, !mcsema_real_eip !110
  %565 = and i32 %564, %556, !mcsema_real_eip !110
  %566 = lshr i32 %565, 31, !mcsema_real_eip !110
  %567 = and i32 %566, 1, !mcsema_real_eip !110
  %568 = trunc i32 %567 to i1, !mcsema_real_eip !110
  store i1 %568, i1* %OF, !mcsema_real_eip !110
  %569 = trunc i32 %555 to i8, !mcsema_real_eip !110
  %570 = call i8 @llvm.ctpop.i8(i8 %569), !mcsema_real_eip !110
  %571 = trunc i8 %570 to i1, !mcsema_real_eip !110
  %572 = xor i1 %571, true, !mcsema_real_eip !110
  store i1 %572, i1* %PF, !mcsema_real_eip !110
  %573 = icmp ult i32 %555, %EAX_val.137, !mcsema_real_eip !110
  store i1 %573, i1* %CF, !mcsema_real_eip !110
  %574 = zext i32 %555 to i64, !mcsema_real_eip !110
  store i64 %574, i64* %XAX, !mcsema_real_eip !110
  %EAX_val.140 = load i32, i32* %EAX.16, !mcsema_real_eip !111
  store i32 %EAX_val.140, i32* %552, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x1c9:                                      ; preds = %block_0x49
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !113
  %575 = add i64 %RBP_val.141, -8, !mcsema_real_eip !113
  %576 = inttoptr i64 %575 to i64*, !mcsema_real_eip !113
  %577 = inttoptr i64 %575 to i32*, !mcsema_real_eip !113
  %578 = load i32, i32* %577, !mcsema_real_eip !113
  %579 = zext i32 %578 to i64, !mcsema_real_eip !113
  store i64 %579, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.143 = load i32, i32* %EAX.16, !mcsema_real_eip !114
  %580 = add i32 4, %EAX_val.143, !mcsema_real_eip !114
  %581 = xor i32 %580, %EAX_val.143, !mcsema_real_eip !114
  %582 = xor i32 %581, 4, !mcsema_real_eip !114
  %583 = and i32 %582, 16, !mcsema_real_eip !114
  %584 = icmp ne i32 %583, 0, !mcsema_real_eip !114
  store i1 %584, i1* %AF, !mcsema_real_eip !114
  %585 = lshr i32 %580, 31, !mcsema_real_eip !114
  %586 = trunc i32 %585 to i1, !mcsema_real_eip !114
  store i1 %586, i1* %SF, !mcsema_real_eip !114
  %587 = icmp eq i32 %580, 0, !mcsema_real_eip !114
  store i1 %587, i1* %ZF, !mcsema_real_eip !114
  %588 = xor i32 %EAX_val.143, 4, !mcsema_real_eip !114
  %589 = xor i32 %588, -1, !mcsema_real_eip !114
  %590 = and i32 %589, %581, !mcsema_real_eip !114
  %591 = lshr i32 %590, 31, !mcsema_real_eip !114
  %592 = and i32 %591, 1, !mcsema_real_eip !114
  %593 = trunc i32 %592 to i1, !mcsema_real_eip !114
  store i1 %593, i1* %OF, !mcsema_real_eip !114
  %594 = trunc i32 %580 to i8, !mcsema_real_eip !114
  %595 = call i8 @llvm.ctpop.i8(i8 %594), !mcsema_real_eip !114
  %596 = trunc i8 %595 to i1, !mcsema_real_eip !114
  %597 = xor i1 %596, true, !mcsema_real_eip !114
  store i1 %597, i1* %PF, !mcsema_real_eip !114
  %598 = icmp ult i32 %580, %EAX_val.143, !mcsema_real_eip !114
  store i1 %598, i1* %CF, !mcsema_real_eip !114
  %599 = zext i32 %580 to i64, !mcsema_real_eip !114
  store i64 %599, i64* %XAX, !mcsema_real_eip !114
  %EAX_val.146 = load i32, i32* %EAX.16, !mcsema_real_eip !115
  store i32 %EAX_val.146, i32* %577, !mcsema_real_eip !115
  br label %block_0x2c8, !mcsema_real_eip !116

block_0x1d7:                                      ; preds = %block_0x5d
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !117
  %600 = add i64 %RBP_val.147, -8, !mcsema_real_eip !117
  %601 = inttoptr i64 %600 to i64*, !mcsema_real_eip !117
  %602 = inttoptr i64 %600 to i32*, !mcsema_real_eip !117
  %603 = load i32, i32* %602, !mcsema_real_eip !117
  %604 = zext i32 %603 to i64, !mcsema_real_eip !117
  store i64 %604, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.149 = load i32, i32* %EAX.16, !mcsema_real_eip !118
  %605 = add i32 6, %EAX_val.149, !mcsema_real_eip !118
  %606 = xor i32 %605, %EAX_val.149, !mcsema_real_eip !118
  %607 = xor i32 %606, 6, !mcsema_real_eip !118
  %608 = and i32 %607, 16, !mcsema_real_eip !118
  %609 = icmp ne i32 %608, 0, !mcsema_real_eip !118
  store i1 %609, i1* %AF, !mcsema_real_eip !118
  %610 = lshr i32 %605, 31, !mcsema_real_eip !118
  %611 = trunc i32 %610 to i1, !mcsema_real_eip !118
  store i1 %611, i1* %SF, !mcsema_real_eip !118
  %612 = icmp eq i32 %605, 0, !mcsema_real_eip !118
  store i1 %612, i1* %ZF, !mcsema_real_eip !118
  %613 = xor i32 %EAX_val.149, 6, !mcsema_real_eip !118
  %614 = xor i32 %613, -1, !mcsema_real_eip !118
  %615 = and i32 %614, %606, !mcsema_real_eip !118
  %616 = lshr i32 %615, 31, !mcsema_real_eip !118
  %617 = and i32 %616, 1, !mcsema_real_eip !118
  %618 = trunc i32 %617 to i1, !mcsema_real_eip !118
  store i1 %618, i1* %OF, !mcsema_real_eip !118
  %619 = trunc i32 %605 to i8, !mcsema_real_eip !118
  %620 = call i8 @llvm.ctpop.i8(i8 %619), !mcsema_real_eip !118
  %621 = trunc i8 %620 to i1, !mcsema_real_eip !118
  %622 = xor i1 %621, true, !mcsema_real_eip !118
  store i1 %622, i1* %PF, !mcsema_real_eip !118
  %623 = icmp ult i32 %605, %EAX_val.149, !mcsema_real_eip !118
  store i1 %623, i1* %CF, !mcsema_real_eip !118
  %624 = zext i32 %605 to i64, !mcsema_real_eip !118
  store i64 %624, i64* %XAX, !mcsema_real_eip !118
  %EAX_val.152 = load i32, i32* %EAX.16, !mcsema_real_eip !119
  store i32 %EAX_val.152, i32* %602, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x1e5:                                      ; preds = %block_0x71
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !121
  %625 = add i64 %RBP_val.153, -8, !mcsema_real_eip !121
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !121
  %627 = inttoptr i64 %625 to i32*, !mcsema_real_eip !121
  %628 = load i32, i32* %627, !mcsema_real_eip !121
  %629 = zext i32 %628 to i64, !mcsema_real_eip !121
  store i64 %629, i64* %XAX, !mcsema_real_eip !121
  %EAX_val.155 = load i32, i32* %EAX.16, !mcsema_real_eip !122
  %630 = add i32 12, %EAX_val.155, !mcsema_real_eip !122
  %631 = xor i32 %630, %EAX_val.155, !mcsema_real_eip !122
  %632 = xor i32 %631, 12, !mcsema_real_eip !122
  %633 = and i32 %632, 16, !mcsema_real_eip !122
  %634 = icmp ne i32 %633, 0, !mcsema_real_eip !122
  store i1 %634, i1* %AF, !mcsema_real_eip !122
  %635 = lshr i32 %630, 31, !mcsema_real_eip !122
  %636 = trunc i32 %635 to i1, !mcsema_real_eip !122
  store i1 %636, i1* %SF, !mcsema_real_eip !122
  %637 = icmp eq i32 %630, 0, !mcsema_real_eip !122
  store i1 %637, i1* %ZF, !mcsema_real_eip !122
  %638 = xor i32 %EAX_val.155, 12, !mcsema_real_eip !122
  %639 = xor i32 %638, -1, !mcsema_real_eip !122
  %640 = and i32 %639, %631, !mcsema_real_eip !122
  %641 = lshr i32 %640, 31, !mcsema_real_eip !122
  %642 = and i32 %641, 1, !mcsema_real_eip !122
  %643 = trunc i32 %642 to i1, !mcsema_real_eip !122
  store i1 %643, i1* %OF, !mcsema_real_eip !122
  %644 = trunc i32 %630 to i8, !mcsema_real_eip !122
  %645 = call i8 @llvm.ctpop.i8(i8 %644), !mcsema_real_eip !122
  %646 = trunc i8 %645 to i1, !mcsema_real_eip !122
  %647 = xor i1 %646, true, !mcsema_real_eip !122
  store i1 %647, i1* %PF, !mcsema_real_eip !122
  %648 = icmp ult i32 %630, %EAX_val.155, !mcsema_real_eip !122
  store i1 %648, i1* %CF, !mcsema_real_eip !122
  %649 = zext i32 %630 to i64, !mcsema_real_eip !122
  store i64 %649, i64* %XAX, !mcsema_real_eip !122
  %EAX_val.158 = load i32, i32* %EAX.16, !mcsema_real_eip !123
  store i32 %EAX_val.158, i32* %627, !mcsema_real_eip !123
  br label %block_0x2c8, !mcsema_real_eip !124

block_0x1f3:                                      ; preds = %block_0x85
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !125
  %650 = add i64 %RBP_val.159, -8, !mcsema_real_eip !125
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !125
  %652 = inttoptr i64 %650 to i32*, !mcsema_real_eip !125
  %653 = load i32, i32* %652, !mcsema_real_eip !125
  %654 = zext i32 %653 to i64, !mcsema_real_eip !125
  store i64 %654, i64* %XAX, !mcsema_real_eip !125
  %EAX_val.161 = load i32, i32* %EAX.16, !mcsema_real_eip !126
  %655 = add i32 13, %EAX_val.161, !mcsema_real_eip !126
  %656 = xor i32 %655, %EAX_val.161, !mcsema_real_eip !126
  %657 = xor i32 %656, 13, !mcsema_real_eip !126
  %658 = and i32 %657, 16, !mcsema_real_eip !126
  %659 = icmp ne i32 %658, 0, !mcsema_real_eip !126
  store i1 %659, i1* %AF, !mcsema_real_eip !126
  %660 = lshr i32 %655, 31, !mcsema_real_eip !126
  %661 = trunc i32 %660 to i1, !mcsema_real_eip !126
  store i1 %661, i1* %SF, !mcsema_real_eip !126
  %662 = icmp eq i32 %655, 0, !mcsema_real_eip !126
  store i1 %662, i1* %ZF, !mcsema_real_eip !126
  %663 = xor i32 %EAX_val.161, 13, !mcsema_real_eip !126
  %664 = xor i32 %663, -1, !mcsema_real_eip !126
  %665 = and i32 %664, %656, !mcsema_real_eip !126
  %666 = lshr i32 %665, 31, !mcsema_real_eip !126
  %667 = and i32 %666, 1, !mcsema_real_eip !126
  %668 = trunc i32 %667 to i1, !mcsema_real_eip !126
  store i1 %668, i1* %OF, !mcsema_real_eip !126
  %669 = trunc i32 %655 to i8, !mcsema_real_eip !126
  %670 = call i8 @llvm.ctpop.i8(i8 %669), !mcsema_real_eip !126
  %671 = trunc i8 %670 to i1, !mcsema_real_eip !126
  %672 = xor i1 %671, true, !mcsema_real_eip !126
  store i1 %672, i1* %PF, !mcsema_real_eip !126
  %673 = icmp ult i32 %655, %EAX_val.161, !mcsema_real_eip !126
  store i1 %673, i1* %CF, !mcsema_real_eip !126
  %674 = zext i32 %655 to i64, !mcsema_real_eip !126
  store i64 %674, i64* %XAX, !mcsema_real_eip !126
  %EAX_val.164 = load i32, i32* %EAX.16, !mcsema_real_eip !127
  store i32 %EAX_val.164, i32* %652, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x201:                                      ; preds = %block_0x99
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !129
  %675 = add i64 %RBP_val.165, -8, !mcsema_real_eip !129
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !129
  %677 = inttoptr i64 %675 to i32*, !mcsema_real_eip !129
  %678 = load i32, i32* %677, !mcsema_real_eip !129
  %679 = zext i32 %678 to i64, !mcsema_real_eip !129
  store i64 %679, i64* %XAX, !mcsema_real_eip !129
  %EAX_val.167 = load i32, i32* %EAX.16, !mcsema_real_eip !130
  %680 = add i32 19, %EAX_val.167, !mcsema_real_eip !130
  %681 = xor i32 %680, %EAX_val.167, !mcsema_real_eip !130
  %682 = xor i32 %681, 19, !mcsema_real_eip !130
  %683 = and i32 %682, 16, !mcsema_real_eip !130
  %684 = icmp ne i32 %683, 0, !mcsema_real_eip !130
  store i1 %684, i1* %AF, !mcsema_real_eip !130
  %685 = lshr i32 %680, 31, !mcsema_real_eip !130
  %686 = trunc i32 %685 to i1, !mcsema_real_eip !130
  store i1 %686, i1* %SF, !mcsema_real_eip !130
  %687 = icmp eq i32 %680, 0, !mcsema_real_eip !130
  store i1 %687, i1* %ZF, !mcsema_real_eip !130
  %688 = xor i32 %EAX_val.167, 19, !mcsema_real_eip !130
  %689 = xor i32 %688, -1, !mcsema_real_eip !130
  %690 = and i32 %689, %681, !mcsema_real_eip !130
  %691 = lshr i32 %690, 31, !mcsema_real_eip !130
  %692 = and i32 %691, 1, !mcsema_real_eip !130
  %693 = trunc i32 %692 to i1, !mcsema_real_eip !130
  store i1 %693, i1* %OF, !mcsema_real_eip !130
  %694 = trunc i32 %680 to i8, !mcsema_real_eip !130
  %695 = call i8 @llvm.ctpop.i8(i8 %694), !mcsema_real_eip !130
  %696 = trunc i8 %695 to i1, !mcsema_real_eip !130
  %697 = xor i1 %696, true, !mcsema_real_eip !130
  store i1 %697, i1* %PF, !mcsema_real_eip !130
  %698 = icmp ult i32 %680, %EAX_val.167, !mcsema_real_eip !130
  store i1 %698, i1* %CF, !mcsema_real_eip !130
  %699 = zext i32 %680 to i64, !mcsema_real_eip !130
  store i64 %699, i64* %XAX, !mcsema_real_eip !130
  %EAX_val.170 = load i32, i32* %EAX.16, !mcsema_real_eip !131
  store i32 %EAX_val.170, i32* %677, !mcsema_real_eip !131
  br label %block_0x2c8, !mcsema_real_eip !132

block_0x20f:                                      ; preds = %block_0xad
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !133
  %700 = add i64 %RBP_val.171, -8, !mcsema_real_eip !133
  %701 = inttoptr i64 %700 to i64*, !mcsema_real_eip !133
  %702 = inttoptr i64 %700 to i32*, !mcsema_real_eip !133
  %703 = load i32, i32* %702, !mcsema_real_eip !133
  %704 = zext i32 %703 to i64, !mcsema_real_eip !133
  store i64 %704, i64* %XAX, !mcsema_real_eip !133
  %EAX_val.173 = load i32, i32* %EAX.16, !mcsema_real_eip !134
  %705 = add i32 255, %EAX_val.173, !mcsema_real_eip !134
  %706 = xor i32 %705, %EAX_val.173, !mcsema_real_eip !134
  %707 = xor i32 %706, 255, !mcsema_real_eip !134
  %708 = and i32 %707, 16, !mcsema_real_eip !134
  %709 = icmp ne i32 %708, 0, !mcsema_real_eip !134
  store i1 %709, i1* %AF, !mcsema_real_eip !134
  %710 = lshr i32 %705, 31, !mcsema_real_eip !134
  %711 = trunc i32 %710 to i1, !mcsema_real_eip !134
  store i1 %711, i1* %SF, !mcsema_real_eip !134
  %712 = icmp eq i32 %705, 0, !mcsema_real_eip !134
  store i1 %712, i1* %ZF, !mcsema_real_eip !134
  %713 = xor i32 %EAX_val.173, 255, !mcsema_real_eip !134
  %714 = xor i32 %713, -1, !mcsema_real_eip !134
  %715 = and i32 %714, %706, !mcsema_real_eip !134
  %716 = lshr i32 %715, 31, !mcsema_real_eip !134
  %717 = and i32 %716, 1, !mcsema_real_eip !134
  %718 = trunc i32 %717 to i1, !mcsema_real_eip !134
  store i1 %718, i1* %OF, !mcsema_real_eip !134
  %719 = trunc i32 %705 to i8, !mcsema_real_eip !134
  %720 = call i8 @llvm.ctpop.i8(i8 %719), !mcsema_real_eip !134
  %721 = trunc i8 %720 to i1, !mcsema_real_eip !134
  %722 = xor i1 %721, true, !mcsema_real_eip !134
  store i1 %722, i1* %PF, !mcsema_real_eip !134
  %723 = icmp ult i32 %705, %EAX_val.173, !mcsema_real_eip !134
  store i1 %723, i1* %CF, !mcsema_real_eip !134
  %724 = zext i32 %705 to i64, !mcsema_real_eip !134
  store i64 %724, i64* %XAX, !mcsema_real_eip !134
  %EAX_val.176 = load i32, i32* %EAX.16, !mcsema_real_eip !135
  store i32 %EAX_val.176, i32* %702, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x21f:                                      ; preds = %block_0xc3
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !137
  %725 = add i64 %RBP_val.177, -8, !mcsema_real_eip !137
  %726 = inttoptr i64 %725 to i64*, !mcsema_real_eip !137
  %727 = inttoptr i64 %725 to i32*, !mcsema_real_eip !137
  %728 = load i32, i32* %727, !mcsema_real_eip !137
  %729 = zext i32 %728 to i64, !mcsema_real_eip !137
  store i64 %729, i64* %XAX, !mcsema_real_eip !137
  %EAX_val.179 = load i32, i32* %EAX.16, !mcsema_real_eip !138
  %730 = add i32 74633, %EAX_val.179, !mcsema_real_eip !138
  %731 = xor i32 %730, %EAX_val.179, !mcsema_real_eip !138
  %732 = xor i32 %731, 74633, !mcsema_real_eip !138
  %733 = and i32 %732, 16, !mcsema_real_eip !138
  %734 = icmp ne i32 %733, 0, !mcsema_real_eip !138
  store i1 %734, i1* %AF, !mcsema_real_eip !138
  %735 = lshr i32 %730, 31, !mcsema_real_eip !138
  %736 = trunc i32 %735 to i1, !mcsema_real_eip !138
  store i1 %736, i1* %SF, !mcsema_real_eip !138
  %737 = icmp eq i32 %730, 0, !mcsema_real_eip !138
  store i1 %737, i1* %ZF, !mcsema_real_eip !138
  %738 = xor i32 %EAX_val.179, 74633, !mcsema_real_eip !138
  %739 = xor i32 %738, -1, !mcsema_real_eip !138
  %740 = and i32 %739, %731, !mcsema_real_eip !138
  %741 = lshr i32 %740, 31, !mcsema_real_eip !138
  %742 = and i32 %741, 1, !mcsema_real_eip !138
  %743 = trunc i32 %742 to i1, !mcsema_real_eip !138
  store i1 %743, i1* %OF, !mcsema_real_eip !138
  %744 = trunc i32 %730 to i8, !mcsema_real_eip !138
  %745 = call i8 @llvm.ctpop.i8(i8 %744), !mcsema_real_eip !138
  %746 = trunc i8 %745 to i1, !mcsema_real_eip !138
  %747 = xor i1 %746, true, !mcsema_real_eip !138
  store i1 %747, i1* %PF, !mcsema_real_eip !138
  %748 = icmp ult i32 %730, %EAX_val.179, !mcsema_real_eip !138
  store i1 %748, i1* %CF, !mcsema_real_eip !138
  %749 = zext i32 %730 to i64, !mcsema_real_eip !138
  store i64 %749, i64* %XAX, !mcsema_real_eip !138
  %EAX_val.182 = load i32, i32* %EAX.16, !mcsema_real_eip !139
  store i32 %EAX_val.182, i32* %727, !mcsema_real_eip !139
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x22f:                                      ; preds = %block_0xd9
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !141
  %750 = add i64 %RBP_val.183, -8, !mcsema_real_eip !141
  %751 = inttoptr i64 %750 to i64*, !mcsema_real_eip !141
  %752 = inttoptr i64 %750 to i32*, !mcsema_real_eip !141
  %753 = load i32, i32* %752, !mcsema_real_eip !141
  %754 = zext i32 %753 to i64, !mcsema_real_eip !141
  store i64 %754, i64* %XAX, !mcsema_real_eip !141
  %EAX_val.185 = load i32, i32* %EAX.16, !mcsema_real_eip !142
  %755 = add i32 74634, %EAX_val.185, !mcsema_real_eip !142
  %756 = xor i32 %755, %EAX_val.185, !mcsema_real_eip !142
  %757 = xor i32 %756, 74634, !mcsema_real_eip !142
  %758 = and i32 %757, 16, !mcsema_real_eip !142
  %759 = icmp ne i32 %758, 0, !mcsema_real_eip !142
  store i1 %759, i1* %AF, !mcsema_real_eip !142
  %760 = lshr i32 %755, 31, !mcsema_real_eip !142
  %761 = trunc i32 %760 to i1, !mcsema_real_eip !142
  store i1 %761, i1* %SF, !mcsema_real_eip !142
  %762 = icmp eq i32 %755, 0, !mcsema_real_eip !142
  store i1 %762, i1* %ZF, !mcsema_real_eip !142
  %763 = xor i32 %EAX_val.185, 74634, !mcsema_real_eip !142
  %764 = xor i32 %763, -1, !mcsema_real_eip !142
  %765 = and i32 %764, %756, !mcsema_real_eip !142
  %766 = lshr i32 %765, 31, !mcsema_real_eip !142
  %767 = and i32 %766, 1, !mcsema_real_eip !142
  %768 = trunc i32 %767 to i1, !mcsema_real_eip !142
  store i1 %768, i1* %OF, !mcsema_real_eip !142
  %769 = trunc i32 %755 to i8, !mcsema_real_eip !142
  %770 = call i8 @llvm.ctpop.i8(i8 %769), !mcsema_real_eip !142
  %771 = trunc i8 %770 to i1, !mcsema_real_eip !142
  %772 = xor i1 %771, true, !mcsema_real_eip !142
  store i1 %772, i1* %PF, !mcsema_real_eip !142
  %773 = icmp ult i32 %755, %EAX_val.185, !mcsema_real_eip !142
  store i1 %773, i1* %CF, !mcsema_real_eip !142
  %774 = zext i32 %755 to i64, !mcsema_real_eip !142
  store i64 %774, i64* %XAX, !mcsema_real_eip !142
  %EAX_val.188 = load i32, i32* %EAX.16, !mcsema_real_eip !143
  store i32 %EAX_val.188, i32* %752, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x23f:                                      ; preds = %block_0xef
  %RBP_val.189 = load i64, i64* %XBP, !mcsema_real_eip !145
  %775 = add i64 %RBP_val.189, -8, !mcsema_real_eip !145
  %776 = inttoptr i64 %775 to i64*, !mcsema_real_eip !145
  %777 = inttoptr i64 %775 to i32*, !mcsema_real_eip !145
  %778 = load i32, i32* %777, !mcsema_real_eip !145
  %779 = zext i32 %778 to i64, !mcsema_real_eip !145
  store i64 %779, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.191 = load i32, i32* %EAX.16, !mcsema_real_eip !146
  %780 = add i32 74635, %EAX_val.191, !mcsema_real_eip !146
  %781 = xor i32 %780, %EAX_val.191, !mcsema_real_eip !146
  %782 = xor i32 %781, 74635, !mcsema_real_eip !146
  %783 = and i32 %782, 16, !mcsema_real_eip !146
  %784 = icmp ne i32 %783, 0, !mcsema_real_eip !146
  store i1 %784, i1* %AF, !mcsema_real_eip !146
  %785 = lshr i32 %780, 31, !mcsema_real_eip !146
  %786 = trunc i32 %785 to i1, !mcsema_real_eip !146
  store i1 %786, i1* %SF, !mcsema_real_eip !146
  %787 = icmp eq i32 %780, 0, !mcsema_real_eip !146
  store i1 %787, i1* %ZF, !mcsema_real_eip !146
  %788 = xor i32 %EAX_val.191, 74635, !mcsema_real_eip !146
  %789 = xor i32 %788, -1, !mcsema_real_eip !146
  %790 = and i32 %789, %781, !mcsema_real_eip !146
  %791 = lshr i32 %790, 31, !mcsema_real_eip !146
  %792 = and i32 %791, 1, !mcsema_real_eip !146
  %793 = trunc i32 %792 to i1, !mcsema_real_eip !146
  store i1 %793, i1* %OF, !mcsema_real_eip !146
  %794 = trunc i32 %780 to i8, !mcsema_real_eip !146
  %795 = call i8 @llvm.ctpop.i8(i8 %794), !mcsema_real_eip !146
  %796 = trunc i8 %795 to i1, !mcsema_real_eip !146
  %797 = xor i1 %796, true, !mcsema_real_eip !146
  store i1 %797, i1* %PF, !mcsema_real_eip !146
  %798 = icmp ult i32 %780, %EAX_val.191, !mcsema_real_eip !146
  store i1 %798, i1* %CF, !mcsema_real_eip !146
  %799 = zext i32 %780 to i64, !mcsema_real_eip !146
  store i64 %799, i64* %XAX, !mcsema_real_eip !146
  %EAX_val.194 = load i32, i32* %EAX.16, !mcsema_real_eip !147
  store i32 %EAX_val.194, i32* %777, !mcsema_real_eip !147
  br label %block_0x2c8, !mcsema_real_eip !148

block_0x24f:                                      ; preds = %block_0x105
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !149
  %800 = add i64 %RBP_val.195, -8, !mcsema_real_eip !149
  %801 = inttoptr i64 %800 to i64*, !mcsema_real_eip !149
  %802 = inttoptr i64 %800 to i32*, !mcsema_real_eip !149
  %803 = load i32, i32* %802, !mcsema_real_eip !149
  %804 = zext i32 %803 to i64, !mcsema_real_eip !149
  store i64 %804, i64* %XAX, !mcsema_real_eip !149
  %EAX_val.197 = load i32, i32* %EAX.16, !mcsema_real_eip !150
  %805 = add i32 74636, %EAX_val.197, !mcsema_real_eip !150
  %806 = xor i32 %805, %EAX_val.197, !mcsema_real_eip !150
  %807 = xor i32 %806, 74636, !mcsema_real_eip !150
  %808 = and i32 %807, 16, !mcsema_real_eip !150
  %809 = icmp ne i32 %808, 0, !mcsema_real_eip !150
  store i1 %809, i1* %AF, !mcsema_real_eip !150
  %810 = lshr i32 %805, 31, !mcsema_real_eip !150
  %811 = trunc i32 %810 to i1, !mcsema_real_eip !150
  store i1 %811, i1* %SF, !mcsema_real_eip !150
  %812 = icmp eq i32 %805, 0, !mcsema_real_eip !150
  store i1 %812, i1* %ZF, !mcsema_real_eip !150
  %813 = xor i32 %EAX_val.197, 74636, !mcsema_real_eip !150
  %814 = xor i32 %813, -1, !mcsema_real_eip !150
  %815 = and i32 %814, %806, !mcsema_real_eip !150
  %816 = lshr i32 %815, 31, !mcsema_real_eip !150
  %817 = and i32 %816, 1, !mcsema_real_eip !150
  %818 = trunc i32 %817 to i1, !mcsema_real_eip !150
  store i1 %818, i1* %OF, !mcsema_real_eip !150
  %819 = trunc i32 %805 to i8, !mcsema_real_eip !150
  %820 = call i8 @llvm.ctpop.i8(i8 %819), !mcsema_real_eip !150
  %821 = trunc i8 %820 to i1, !mcsema_real_eip !150
  %822 = xor i1 %821, true, !mcsema_real_eip !150
  store i1 %822, i1* %PF, !mcsema_real_eip !150
  %823 = icmp ult i32 %805, %EAX_val.197, !mcsema_real_eip !150
  store i1 %823, i1* %CF, !mcsema_real_eip !150
  %824 = zext i32 %805 to i64, !mcsema_real_eip !150
  store i64 %824, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.200 = load i32, i32* %EAX.16, !mcsema_real_eip !151
  store i32 %EAX_val.200, i32* %802, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x25f:                                      ; preds = %block_0x11b
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !153
  %825 = add i64 %RBP_val.201, -8, !mcsema_real_eip !153
  %826 = inttoptr i64 %825 to i64*, !mcsema_real_eip !153
  %827 = inttoptr i64 %825 to i32*, !mcsema_real_eip !153
  %828 = load i32, i32* %827, !mcsema_real_eip !153
  %829 = zext i32 %828 to i64, !mcsema_real_eip !153
  store i64 %829, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.203 = load i32, i32* %EAX.16, !mcsema_real_eip !154
  %830 = add i32 74637, %EAX_val.203, !mcsema_real_eip !154
  %831 = xor i32 %830, %EAX_val.203, !mcsema_real_eip !154
  %832 = xor i32 %831, 74637, !mcsema_real_eip !154
  %833 = and i32 %832, 16, !mcsema_real_eip !154
  %834 = icmp ne i32 %833, 0, !mcsema_real_eip !154
  store i1 %834, i1* %AF, !mcsema_real_eip !154
  %835 = lshr i32 %830, 31, !mcsema_real_eip !154
  %836 = trunc i32 %835 to i1, !mcsema_real_eip !154
  store i1 %836, i1* %SF, !mcsema_real_eip !154
  %837 = icmp eq i32 %830, 0, !mcsema_real_eip !154
  store i1 %837, i1* %ZF, !mcsema_real_eip !154
  %838 = xor i32 %EAX_val.203, 74637, !mcsema_real_eip !154
  %839 = xor i32 %838, -1, !mcsema_real_eip !154
  %840 = and i32 %839, %831, !mcsema_real_eip !154
  %841 = lshr i32 %840, 31, !mcsema_real_eip !154
  %842 = and i32 %841, 1, !mcsema_real_eip !154
  %843 = trunc i32 %842 to i1, !mcsema_real_eip !154
  store i1 %843, i1* %OF, !mcsema_real_eip !154
  %844 = trunc i32 %830 to i8, !mcsema_real_eip !154
  %845 = call i8 @llvm.ctpop.i8(i8 %844), !mcsema_real_eip !154
  %846 = trunc i8 %845 to i1, !mcsema_real_eip !154
  %847 = xor i1 %846, true, !mcsema_real_eip !154
  store i1 %847, i1* %PF, !mcsema_real_eip !154
  %848 = icmp ult i32 %830, %EAX_val.203, !mcsema_real_eip !154
  store i1 %848, i1* %CF, !mcsema_real_eip !154
  %849 = zext i32 %830 to i64, !mcsema_real_eip !154
  store i64 %849, i64* %XAX, !mcsema_real_eip !154
  %EAX_val.206 = load i32, i32* %EAX.16, !mcsema_real_eip !155
  store i32 %EAX_val.206, i32* %827, !mcsema_real_eip !155
  br label %block_0x2c8, !mcsema_real_eip !156

block_0x26f:                                      ; preds = %block_0x131
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !157
  %850 = add i64 %RBP_val.207, -8, !mcsema_real_eip !157
  %851 = inttoptr i64 %850 to i64*, !mcsema_real_eip !157
  %852 = inttoptr i64 %850 to i32*, !mcsema_real_eip !157
  %853 = load i32, i32* %852, !mcsema_real_eip !157
  %854 = zext i32 %853 to i64, !mcsema_real_eip !157
  store i64 %854, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.209 = load i32, i32* %EAX.16, !mcsema_real_eip !158
  %855 = add i32 74639, %EAX_val.209, !mcsema_real_eip !158
  %856 = xor i32 %855, %EAX_val.209, !mcsema_real_eip !158
  %857 = xor i32 %856, 74639, !mcsema_real_eip !158
  %858 = and i32 %857, 16, !mcsema_real_eip !158
  %859 = icmp ne i32 %858, 0, !mcsema_real_eip !158
  store i1 %859, i1* %AF, !mcsema_real_eip !158
  %860 = lshr i32 %855, 31, !mcsema_real_eip !158
  %861 = trunc i32 %860 to i1, !mcsema_real_eip !158
  store i1 %861, i1* %SF, !mcsema_real_eip !158
  %862 = icmp eq i32 %855, 0, !mcsema_real_eip !158
  store i1 %862, i1* %ZF, !mcsema_real_eip !158
  %863 = xor i32 %EAX_val.209, 74639, !mcsema_real_eip !158
  %864 = xor i32 %863, -1, !mcsema_real_eip !158
  %865 = and i32 %864, %856, !mcsema_real_eip !158
  %866 = lshr i32 %865, 31, !mcsema_real_eip !158
  %867 = and i32 %866, 1, !mcsema_real_eip !158
  %868 = trunc i32 %867 to i1, !mcsema_real_eip !158
  store i1 %868, i1* %OF, !mcsema_real_eip !158
  %869 = trunc i32 %855 to i8, !mcsema_real_eip !158
  %870 = call i8 @llvm.ctpop.i8(i8 %869), !mcsema_real_eip !158
  %871 = trunc i8 %870 to i1, !mcsema_real_eip !158
  %872 = xor i1 %871, true, !mcsema_real_eip !158
  store i1 %872, i1* %PF, !mcsema_real_eip !158
  %873 = icmp ult i32 %855, %EAX_val.209, !mcsema_real_eip !158
  store i1 %873, i1* %CF, !mcsema_real_eip !158
  %874 = zext i32 %855 to i64, !mcsema_real_eip !158
  store i64 %874, i64* %XAX, !mcsema_real_eip !158
  %EAX_val.212 = load i32, i32* %EAX.16, !mcsema_real_eip !159
  store i32 %EAX_val.212, i32* %852, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x27f:                                      ; preds = %block_0x147
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !161
  %875 = add i64 %RBP_val.213, -8, !mcsema_real_eip !161
  %876 = inttoptr i64 %875 to i64*, !mcsema_real_eip !161
  %877 = inttoptr i64 %875 to i32*, !mcsema_real_eip !161
  %878 = load i32, i32* %877, !mcsema_real_eip !161
  %879 = zext i32 %878 to i64, !mcsema_real_eip !161
  store i64 %879, i64* %XAX, !mcsema_real_eip !161
  %EAX_val.215 = load i32, i32* %EAX.16, !mcsema_real_eip !162
  %880 = add i32 74640, %EAX_val.215, !mcsema_real_eip !162
  %881 = xor i32 %880, %EAX_val.215, !mcsema_real_eip !162
  %882 = xor i32 %881, 74640, !mcsema_real_eip !162
  %883 = and i32 %882, 16, !mcsema_real_eip !162
  %884 = icmp ne i32 %883, 0, !mcsema_real_eip !162
  store i1 %884, i1* %AF, !mcsema_real_eip !162
  %885 = lshr i32 %880, 31, !mcsema_real_eip !162
  %886 = trunc i32 %885 to i1, !mcsema_real_eip !162
  store i1 %886, i1* %SF, !mcsema_real_eip !162
  %887 = icmp eq i32 %880, 0, !mcsema_real_eip !162
  store i1 %887, i1* %ZF, !mcsema_real_eip !162
  %888 = xor i32 %EAX_val.215, 74640, !mcsema_real_eip !162
  %889 = xor i32 %888, -1, !mcsema_real_eip !162
  %890 = and i32 %889, %881, !mcsema_real_eip !162
  %891 = lshr i32 %890, 31, !mcsema_real_eip !162
  %892 = and i32 %891, 1, !mcsema_real_eip !162
  %893 = trunc i32 %892 to i1, !mcsema_real_eip !162
  store i1 %893, i1* %OF, !mcsema_real_eip !162
  %894 = trunc i32 %880 to i8, !mcsema_real_eip !162
  %895 = call i8 @llvm.ctpop.i8(i8 %894), !mcsema_real_eip !162
  %896 = trunc i8 %895 to i1, !mcsema_real_eip !162
  %897 = xor i1 %896, true, !mcsema_real_eip !162
  store i1 %897, i1* %PF, !mcsema_real_eip !162
  %898 = icmp ult i32 %880, %EAX_val.215, !mcsema_real_eip !162
  store i1 %898, i1* %CF, !mcsema_real_eip !162
  %899 = zext i32 %880 to i64, !mcsema_real_eip !162
  store i64 %899, i64* %XAX, !mcsema_real_eip !162
  %EAX_val.218 = load i32, i32* %EAX.16, !mcsema_real_eip !163
  store i32 %EAX_val.218, i32* %877, !mcsema_real_eip !163
  br label %block_0x2c8, !mcsema_real_eip !164

block_0x28f:                                      ; preds = %block_0x15d
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !165
  %900 = add i64 %RBP_val.219, -8, !mcsema_real_eip !165
  %901 = inttoptr i64 %900 to i64*, !mcsema_real_eip !165
  %902 = inttoptr i64 %900 to i32*, !mcsema_real_eip !165
  %903 = load i32, i32* %902, !mcsema_real_eip !165
  %904 = zext i32 %903 to i64, !mcsema_real_eip !165
  store i64 %904, i64* %XAX, !mcsema_real_eip !165
  %EAX_val.221 = load i32, i32* %EAX.16, !mcsema_real_eip !166
  %905 = add i32 74641, %EAX_val.221, !mcsema_real_eip !166
  %906 = xor i32 %905, %EAX_val.221, !mcsema_real_eip !166
  %907 = xor i32 %906, 74641, !mcsema_real_eip !166
  %908 = and i32 %907, 16, !mcsema_real_eip !166
  %909 = icmp ne i32 %908, 0, !mcsema_real_eip !166
  store i1 %909, i1* %AF, !mcsema_real_eip !166
  %910 = lshr i32 %905, 31, !mcsema_real_eip !166
  %911 = trunc i32 %910 to i1, !mcsema_real_eip !166
  store i1 %911, i1* %SF, !mcsema_real_eip !166
  %912 = icmp eq i32 %905, 0, !mcsema_real_eip !166
  store i1 %912, i1* %ZF, !mcsema_real_eip !166
  %913 = xor i32 %EAX_val.221, 74641, !mcsema_real_eip !166
  %914 = xor i32 %913, -1, !mcsema_real_eip !166
  %915 = and i32 %914, %906, !mcsema_real_eip !166
  %916 = lshr i32 %915, 31, !mcsema_real_eip !166
  %917 = and i32 %916, 1, !mcsema_real_eip !166
  %918 = trunc i32 %917 to i1, !mcsema_real_eip !166
  store i1 %918, i1* %OF, !mcsema_real_eip !166
  %919 = trunc i32 %905 to i8, !mcsema_real_eip !166
  %920 = call i8 @llvm.ctpop.i8(i8 %919), !mcsema_real_eip !166
  %921 = trunc i8 %920 to i1, !mcsema_real_eip !166
  %922 = xor i1 %921, true, !mcsema_real_eip !166
  store i1 %922, i1* %PF, !mcsema_real_eip !166
  %923 = icmp ult i32 %905, %EAX_val.221, !mcsema_real_eip !166
  store i1 %923, i1* %CF, !mcsema_real_eip !166
  %924 = zext i32 %905 to i64, !mcsema_real_eip !166
  store i64 %924, i64* %XAX, !mcsema_real_eip !166
  %EAX_val.224 = load i32, i32* %EAX.16, !mcsema_real_eip !167
  store i32 %EAX_val.224, i32* %902, !mcsema_real_eip !167
  br label %block_0x2c8, !mcsema_real_eip !168

block_0x29f:                                      ; preds = %block_0x173
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !169
  %925 = add i64 %RBP_val.225, -8, !mcsema_real_eip !169
  %926 = inttoptr i64 %925 to i64*, !mcsema_real_eip !169
  %927 = inttoptr i64 %925 to i32*, !mcsema_real_eip !169
  %928 = load i32, i32* %927, !mcsema_real_eip !169
  %929 = zext i32 %928 to i64, !mcsema_real_eip !169
  store i64 %929, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.227 = load i32, i32* %EAX.16, !mcsema_real_eip !170
  %930 = add i32 74642, %EAX_val.227, !mcsema_real_eip !170
  %931 = xor i32 %930, %EAX_val.227, !mcsema_real_eip !170
  %932 = xor i32 %931, 74642, !mcsema_real_eip !170
  %933 = and i32 %932, 16, !mcsema_real_eip !170
  %934 = icmp ne i32 %933, 0, !mcsema_real_eip !170
  store i1 %934, i1* %AF, !mcsema_real_eip !170
  %935 = lshr i32 %930, 31, !mcsema_real_eip !170
  %936 = trunc i32 %935 to i1, !mcsema_real_eip !170
  store i1 %936, i1* %SF, !mcsema_real_eip !170
  %937 = icmp eq i32 %930, 0, !mcsema_real_eip !170
  store i1 %937, i1* %ZF, !mcsema_real_eip !170
  %938 = xor i32 %EAX_val.227, 74642, !mcsema_real_eip !170
  %939 = xor i32 %938, -1, !mcsema_real_eip !170
  %940 = and i32 %939, %931, !mcsema_real_eip !170
  %941 = lshr i32 %940, 31, !mcsema_real_eip !170
  %942 = and i32 %941, 1, !mcsema_real_eip !170
  %943 = trunc i32 %942 to i1, !mcsema_real_eip !170
  store i1 %943, i1* %OF, !mcsema_real_eip !170
  %944 = trunc i32 %930 to i8, !mcsema_real_eip !170
  %945 = call i8 @llvm.ctpop.i8(i8 %944), !mcsema_real_eip !170
  %946 = trunc i8 %945 to i1, !mcsema_real_eip !170
  %947 = xor i1 %946, true, !mcsema_real_eip !170
  store i1 %947, i1* %PF, !mcsema_real_eip !170
  %948 = icmp ult i32 %930, %EAX_val.227, !mcsema_real_eip !170
  store i1 %948, i1* %CF, !mcsema_real_eip !170
  %949 = zext i32 %930 to i64, !mcsema_real_eip !170
  store i64 %949, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.230 = load i32, i32* %EAX.16, !mcsema_real_eip !171
  store i32 %EAX_val.230, i32* %927, !mcsema_real_eip !171
  br label %block_0x2c8, !mcsema_real_eip !172

block_0x2af:                                      ; preds = %block_0x189
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !173
  %950 = add i64 %RBP_val.231, -8, !mcsema_real_eip !173
  %951 = inttoptr i64 %950 to i64*, !mcsema_real_eip !173
  %952 = inttoptr i64 %950 to i32*, !mcsema_real_eip !173
  %953 = load i32, i32* %952, !mcsema_real_eip !173
  %954 = zext i32 %953 to i64, !mcsema_real_eip !173
  store i64 %954, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.233 = load i32, i32* %EAX.16, !mcsema_real_eip !174
  %955 = add i32 74643, %EAX_val.233, !mcsema_real_eip !174
  %956 = xor i32 %955, %EAX_val.233, !mcsema_real_eip !174
  %957 = xor i32 %956, 74643, !mcsema_real_eip !174
  %958 = and i32 %957, 16, !mcsema_real_eip !174
  %959 = icmp ne i32 %958, 0, !mcsema_real_eip !174
  store i1 %959, i1* %AF, !mcsema_real_eip !174
  %960 = lshr i32 %955, 31, !mcsema_real_eip !174
  %961 = trunc i32 %960 to i1, !mcsema_real_eip !174
  store i1 %961, i1* %SF, !mcsema_real_eip !174
  %962 = icmp eq i32 %955, 0, !mcsema_real_eip !174
  store i1 %962, i1* %ZF, !mcsema_real_eip !174
  %963 = xor i32 %EAX_val.233, 74643, !mcsema_real_eip !174
  %964 = xor i32 %963, -1, !mcsema_real_eip !174
  %965 = and i32 %964, %956, !mcsema_real_eip !174
  %966 = lshr i32 %965, 31, !mcsema_real_eip !174
  %967 = and i32 %966, 1, !mcsema_real_eip !174
  %968 = trunc i32 %967 to i1, !mcsema_real_eip !174
  store i1 %968, i1* %OF, !mcsema_real_eip !174
  %969 = trunc i32 %955 to i8, !mcsema_real_eip !174
  %970 = call i8 @llvm.ctpop.i8(i8 %969), !mcsema_real_eip !174
  %971 = trunc i8 %970 to i1, !mcsema_real_eip !174
  %972 = xor i1 %971, true, !mcsema_real_eip !174
  store i1 %972, i1* %PF, !mcsema_real_eip !174
  %973 = icmp ult i32 %955, %EAX_val.233, !mcsema_real_eip !174
  store i1 %973, i1* %CF, !mcsema_real_eip !174
  %974 = zext i32 %955 to i64, !mcsema_real_eip !174
  store i64 %974, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.236 = load i32, i32* %EAX.16, !mcsema_real_eip !175
  store i32 %EAX_val.236, i32* %952, !mcsema_real_eip !175
  br label %block_0x2c8, !mcsema_real_eip !176

block_0x2bf:                                      ; preds = %block_0x19a
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !177
  %975 = add i64 %RBP_val.237, -8, !mcsema_real_eip !177
  %976 = inttoptr i64 %975 to i64*, !mcsema_real_eip !177
  %977 = inttoptr i64 %975 to i32*, !mcsema_real_eip !177
  %978 = load i32, i32* %977, !mcsema_real_eip !177
  %979 = zext i32 %978 to i64, !mcsema_real_eip !177
  store i64 %979, i64* %XAX, !mcsema_real_eip !177
  %EAX_val.239 = load i32, i32* %EAX.16, !mcsema_real_eip !178
  store i1 false, i1* %AF, !mcsema_real_eip !178
  %980 = lshr i32 %EAX_val.239, 31, !mcsema_real_eip !178
  %981 = trunc i32 %980 to i1, !mcsema_real_eip !178
  store i1 %981, i1* %SF, !mcsema_real_eip !178
  %982 = icmp eq i32 %EAX_val.239, 0, !mcsema_real_eip !178
  store i1 %982, i1* %ZF, !mcsema_real_eip !178
  %983 = xor i32 %EAX_val.239, -1, !mcsema_real_eip !178
  store i1 false, i1* %OF, !mcsema_real_eip !178
  %984 = trunc i32 %EAX_val.239 to i8, !mcsema_real_eip !178
  %985 = call i8 @llvm.ctpop.i8(i8 %984), !mcsema_real_eip !178
  %986 = trunc i8 %985 to i1, !mcsema_real_eip !178
  %987 = xor i1 %986, true, !mcsema_real_eip !178
  store i1 %987, i1* %PF, !mcsema_real_eip !178
  store i1 false, i1* %CF, !mcsema_real_eip !178
  %988 = zext i32 %EAX_val.239 to i64, !mcsema_real_eip !178
  store i64 %988, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.242 = load i32, i32* %EAX.16, !mcsema_real_eip !179
  store i32 %EAX_val.242, i32* %977, !mcsema_real_eip !179
  br label %block_0x2c8, !mcsema_real_eip !180

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !180
  %989 = add i64 %RBP_val.243, -8, !mcsema_real_eip !180
  %990 = inttoptr i64 %989 to i64*, !mcsema_real_eip !180
  %991 = inttoptr i64 %989 to i32*, !mcsema_real_eip !180
  %992 = load i32, i32* %991, !mcsema_real_eip !180
  %993 = zext i32 %992 to i64, !mcsema_real_eip !180
  store i64 %993, i64* %XAX, !mcsema_real_eip !180
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !181
  %994 = inttoptr i64 %RSP_val.244 to i64*, !mcsema_real_eip !181
  %995 = load i64, i64* %994, !mcsema_real_eip !181
  store i64 %995, i64* %XBP, !mcsema_real_eip !181
  %996 = add i64 %RSP_val.244, 8, !mcsema_real_eip !181
  store i64 %996, i64* %XSP, !mcsema_real_eip !181
  %997 = add i64 %996, 8, !mcsema_real_eip !182
  %998 = inttoptr i64 %996 to i64*, !mcsema_real_eip !182
  %999 = load i64, i64* %998, !mcsema_real_eip !182
  store i64 %999, i64* %XIP, !mcsema_real_eip !182
  store i64 %997, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @switches() #3

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
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 28}
!11 = !{i64 33}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 48}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 59}
!19 = !{i64 62}
!20 = !{i64 68}
!21 = !{i64 73}
!22 = !{i64 76}
!23 = !{i64 79}
!24 = !{i64 82}
!25 = !{i64 88}
!26 = !{i64 93}
!27 = !{i64 96}
!28 = !{i64 99}
!29 = !{i64 102}
!30 = !{i64 108}
!31 = !{i64 113}
!32 = !{i64 116}
!33 = !{i64 119}
!34 = !{i64 122}
!35 = !{i64 128}
!36 = !{i64 133}
!37 = !{i64 136}
!38 = !{i64 139}
!39 = !{i64 142}
!40 = !{i64 148}
!41 = !{i64 153}
!42 = !{i64 156}
!43 = !{i64 159}
!44 = !{i64 162}
!45 = !{i64 168}
!46 = !{i64 173}
!47 = !{i64 176}
!48 = !{i64 181}
!49 = !{i64 184}
!50 = !{i64 190}
!51 = !{i64 195}
!52 = !{i64 198}
!53 = !{i64 203}
!54 = !{i64 206}
!55 = !{i64 212}
!56 = !{i64 217}
!57 = !{i64 220}
!58 = !{i64 225}
!59 = !{i64 228}
!60 = !{i64 234}
!61 = !{i64 239}
!62 = !{i64 242}
!63 = !{i64 247}
!64 = !{i64 250}
!65 = !{i64 256}
!66 = !{i64 261}
!67 = !{i64 264}
!68 = !{i64 269}
!69 = !{i64 272}
!70 = !{i64 278}
!71 = !{i64 283}
!72 = !{i64 286}
!73 = !{i64 291}
!74 = !{i64 294}
!75 = !{i64 300}
!76 = !{i64 305}
!77 = !{i64 308}
!78 = !{i64 313}
!79 = !{i64 316}
!80 = !{i64 322}
!81 = !{i64 327}
!82 = !{i64 330}
!83 = !{i64 335}
!84 = !{i64 338}
!85 = !{i64 344}
!86 = !{i64 349}
!87 = !{i64 352}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 366}
!91 = !{i64 371}
!92 = !{i64 374}
!93 = !{i64 379}
!94 = !{i64 382}
!95 = !{i64 388}
!96 = !{i64 393}
!97 = !{i64 396}
!98 = !{i64 401}
!99 = !{i64 404}
!100 = !{i64 410}
!101 = !{i64 415}
!102 = !{i64 418}
!103 = !{i64 421}
!104 = !{i64 424}
!105 = !{i64 429}
!106 = !{i64 432}
!107 = !{i64 435}
!108 = !{i64 438}
!109 = !{i64 443}
!110 = !{i64 446}
!111 = !{i64 449}
!112 = !{i64 452}
!113 = !{i64 457}
!114 = !{i64 460}
!115 = !{i64 463}
!116 = !{i64 466}
!117 = !{i64 471}
!118 = !{i64 474}
!119 = !{i64 477}
!120 = !{i64 480}
!121 = !{i64 485}
!122 = !{i64 488}
!123 = !{i64 491}
!124 = !{i64 494}
!125 = !{i64 499}
!126 = !{i64 502}
!127 = !{i64 505}
!128 = !{i64 508}
!129 = !{i64 513}
!130 = !{i64 516}
!131 = !{i64 519}
!132 = !{i64 522}
!133 = !{i64 527}
!134 = !{i64 530}
!135 = !{i64 535}
!136 = !{i64 538}
!137 = !{i64 543}
!138 = !{i64 546}
!139 = !{i64 551}
!140 = !{i64 554}
!141 = !{i64 559}
!142 = !{i64 562}
!143 = !{i64 567}
!144 = !{i64 570}
!145 = !{i64 575}
!146 = !{i64 578}
!147 = !{i64 583}
!148 = !{i64 586}
!149 = !{i64 591}
!150 = !{i64 594}
!151 = !{i64 599}
!152 = !{i64 602}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 623}
!158 = !{i64 626}
!159 = !{i64 631}
!160 = !{i64 634}
!161 = !{i64 639}
!162 = !{i64 642}
!163 = !{i64 647}
!164 = !{i64 650}
!165 = !{i64 655}
!166 = !{i64 658}
!167 = !{i64 663}
!168 = !{i64 666}
!169 = !{i64 671}
!170 = !{i64 674}
!171 = !{i64 679}
!172 = !{i64 682}
!173 = !{i64 687}
!174 = !{i64 690}
!175 = !{i64 695}
!176 = !{i64 698}
!177 = !{i64 703}
!178 = !{i64 706}
!179 = !{i64 709}
!180 = !{i64 712}
!181 = !{i64 715}
!182 = !{i64 716}
