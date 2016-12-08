; ModuleID = 'Output/test_13.clang.opt.bc'
source_filename = "Output/test_13.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
module asm "  .cfi_endproc;"
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16, !mcsema_real_eip !4
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !4
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !4
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !4
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !4
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -16, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %17, align 8, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, align 4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.8, i32* %19, align 4, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.9, -16, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %21, align 4, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.10, -12, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !8
  %25 = sext i32 %24 to i64, !mcsema_real_eip !8
  %26 = shl nsw i64 %25, 3, !mcsema_real_eip !9
  %27 = icmp slt i32 %24, 0
  store i1 %27, i1* %CF, align 1, !mcsema_real_eip !9
  %28 = icmp eq i32 %24, 0
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !9
  %29 = trunc i64 %26 to i8, !mcsema_real_eip !9
  %30 = tail call i8 @llvm.ctpop.i8(i8 %29), !mcsema_real_eip !9
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  store i1 %32, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 %26, i64* %XDI, align 8, !mcsema_real_eip !9
  %RSP_val.13 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %33 = add i64 %RSP_val.13, -8
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %34, align 8, !mcsema_real_eip !10
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !10
  %35 = tail call x86_64_sysvcc i64 @_malloc(i64 %26), !mcsema_real_eip !10
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %36 = add i64 %RBP_val.14, -24, !mcsema_real_eip !11
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !11
  store i64 %35, i64* %37, align 8, !mcsema_real_eip !11
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  br label %block_0x27, !mcsema_real_eip !13

block_0x27:                                       ; preds = %block_0x67, %entry
  %RBP_val.16 = load i64, i64* %XBP, align 8
  %38 = add i64 %RBP_val.16, -16
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4, !mcsema_real_eip !13
  %41 = zext i32 %40 to i64, !mcsema_real_eip !13
  store i64 %41, i64* %XAX, align 8, !mcsema_real_eip !13
  %42 = add i64 %RBP_val.16, -12, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !12
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !12
  %45 = sub i32 %40, %44, !mcsema_real_eip !12
  %46 = xor i32 %45, %40, !mcsema_real_eip !12
  %47 = xor i32 %46, %44, !mcsema_real_eip !12
  %48 = and i32 %47, 16, !mcsema_real_eip !12
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !12
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !12
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !12
  %51 = tail call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !12
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !12
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !12
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !12
  %55 = icmp slt i32 %45, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !12
  %56 = icmp ult i32 %40, %44, !mcsema_real_eip !12
  store i1 %56, i1* %CF, align 1, !mcsema_real_eip !12
  %57 = xor i32 %44, %40, !mcsema_real_eip !12
  %58 = and i32 %46, %57, !mcsema_real_eip !12
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !12
  %tmp = xor i1 %59, %55
  br i1 %tmp, label %block_0x33, label %block_0x75, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %60 = add i64 %RBP_val.16, -8, !mcsema_real_eip !15
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !15
  %62 = load i64, i64* %61, align 8, !mcsema_real_eip !15
  store i64 %62, i64* %XAX, align 8, !mcsema_real_eip !15
  %63 = load i32, i32* %39, align 4, !mcsema_real_eip !16
  %64 = sext i32 %63 to i64, !mcsema_real_eip !16
  store i64 %64, i64* %XCX, align 8, !mcsema_real_eip !16
  %65 = shl nsw i64 %64, 3
  %66 = add i64 %65, %62, !mcsema_real_eip !17
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !17
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !17
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !17
  %69 = add i64 %RBP_val.16, -32, !mcsema_real_eip !18
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !18
  store i64 %68, i64* %70, align 8, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %71 = add i64 %RBP_val.31, -32, !mcsema_real_eip !19
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !19
  %73 = load i64, i64* %72, align 8, !mcsema_real_eip !19
  store i64 %73, i64* %XDI, align 8, !mcsema_real_eip !19
  %RSP_val.32 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %74 = add i64 %RSP_val.32, -8
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %75, align 8, !mcsema_real_eip !20
  store i64 %74, i64* %XSP, align 8, !mcsema_real_eip !20
  tail call x86_64_sysvcc void @checkFn(%RegState* nonnull %0), !mcsema_real_eip !20
  %EAX_val.34 = load i32, i32* %EAX.18, align 4, !mcsema_real_eip !21
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !21
  %76 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %77 = tail call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !21
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !21
  %80 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !21
  %81 = icmp slt i32 %EAX_val.34, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !21
  br i1 %80, label %block_0x55, label %block_0x67, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %82 = add i64 %RBP_val.16, -24, !mcsema_real_eip !23
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !23
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !23
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !23
  %85 = add i64 %84, 1, !mcsema_real_eip !24
  %86 = inttoptr i64 %85 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %86, align 1, !mcsema_real_eip !24
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %87 = add i64 %RSP_val.22, 32, !mcsema_real_eip !25
  %88 = xor i64 %87, %RSP_val.22, !mcsema_real_eip !25
  %89 = and i64 %88, 16, !mcsema_real_eip !25
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !25
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !25
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !25
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !25
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !25
  %93 = xor i64 %RSP_val.22, -9223372036854775808, !mcsema_real_eip !25
  %94 = and i64 %88, %93, !mcsema_real_eip !25
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !25
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !25
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !25
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !25
  %100 = icmp ugt i64 %RSP_val.22, -33
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !25
  store i64 %87, i64* %XSP, align 8, !mcsema_real_eip !25
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !26
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !26
  store i64 %102, i64* %XBP, align 8, !mcsema_real_eip !26
  %103 = add i64 %RSP_val.22, 40, !mcsema_real_eip !26
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !26
  %104 = add i64 %RSP_val.22, 48, !mcsema_real_eip !27
  %105 = inttoptr i64 %103 to i64*, !mcsema_real_eip !27
  %106 = load i64, i64* %105, align 8, !mcsema_real_eip !27
  store i64 %106, i64* %XIP, align 8, !mcsema_real_eip !27
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %RBP_val.35 = load i64, i64* %XBP, align 8
  %107 = add i64 %RBP_val.35, -32
  %108 = inttoptr i64 %107 to i64*
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !28
  store i64 %109, i64* %XDI, align 8, !mcsema_real_eip !28
  %110 = load i64, i64* %108, align 8, !mcsema_real_eip !29
  store i64 %110, i64* %XSI, align 8, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %111 = add i64 %RSP_val.37, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !30
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !30
  tail call x86_64_sysvcc void @doStuff(%RegState* nonnull %0), !mcsema_real_eip !30
  br label %block_0x67, !mcsema_real_eip !31

block_0x67:                                       ; preds = %block_0x33, %block_0x55
  %RBP_val.38 = load i64, i64* %XBP, align 8
  %113 = add i64 %RBP_val.38, -16
  %114 = inttoptr i64 %113 to i32*
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !31
  %116 = add i32 %115, 1, !mcsema_real_eip !32
  %117 = xor i32 %116, %115, !mcsema_real_eip !32
  %118 = and i32 %117, 16, !mcsema_real_eip !32
  %119 = icmp ne i32 %118, 0, !mcsema_real_eip !32
  store i1 %119, i1* %AF, align 1, !mcsema_real_eip !32
  %120 = icmp slt i32 %116, 0
  store i1 %120, i1* %SF, align 1, !mcsema_real_eip !32
  %121 = icmp eq i32 %116, 0, !mcsema_real_eip !32
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !32
  %122 = xor i32 %115, -2147483648, !mcsema_real_eip !32
  %123 = and i32 %117, %122, !mcsema_real_eip !32
  %124 = icmp slt i32 %123, 0
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !32
  %125 = trunc i32 %116 to i8, !mcsema_real_eip !32
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !32
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !32
  %129 = icmp eq i32 %115, -1
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !32
  %130 = zext i32 %116 to i64, !mcsema_real_eip !32
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !32
  store i32 %116, i32* %114, align 4, !mcsema_real_eip !33
  br label %block_0x27, !mcsema_real_eip !34
}

; Function Attrs: noinline nounwind
define internal x86_64_sysvcc void @doStuff(%RegState* nocapture) unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !35
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !35
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !35
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !35
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !35
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !35
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !35
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !35
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !35
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !35
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !35
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !35
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !35
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !35
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !35
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !35
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !35
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !35
  %RBP_val.44 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %1 = add i64 %RSP_val.45, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !35
  store i64 %RBP_val.44, i64* %2, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !36
  %3 = add i64 %RSP_val.45, -16, !mcsema_real_eip !37
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !37
  %RDI_val.48 = load i64, i64* %XDI, align 8, !mcsema_real_eip !37
  store i64 %RDI_val.48, i64* %4, align 8, !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %5 = add i64 %RBP_val.49, -16, !mcsema_real_eip !38
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !38
  %RSI_val.50 = load i64, i64* %XSI, align 8, !mcsema_real_eip !38
  store i64 %RSI_val.50, i64* %6, align 8, !mcsema_real_eip !38
  %RBP_val.51 = load i64, i64* %XBP, align 8
  %7 = add i64 %RBP_val.51, -8, !mcsema_real_eip !39
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !39
  %9 = load i64, i64* %8, align 8, !mcsema_real_eip !39
  store i64 %9, i64* %XSI, align 8, !mcsema_real_eip !39
  %10 = add i64 %RBP_val.51, -24, !mcsema_real_eip !40
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !40
  store i64 %9, i64* %11, align 8, !mcsema_real_eip !40
  %RBP_val.54 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %12 = add i64 %RBP_val.54, -16, !mcsema_real_eip !41
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !41
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !41
  store i64 %14, i64* %XSI, align 8, !mcsema_real_eip !41
  %AL.72 = bitcast i64* %XAX to i8*
  br label %block_0x125, !mcsema_real_eip !42

block_0x125:                                      ; preds = %block_0x154, %entry
  %RAX_val.86 = phi i64 [ %83, %block_0x154 ], [ %14, %entry ]
  %RBP_val.85 = phi i64 [ %RBP_val.83, %block_0x154 ], [ %RBP_val.54, %entry ]
  %XAX.sink17 = phi i64* [ %XAX, %block_0x154 ], [ %XSI, %entry ]
  %XCX.sink7 = phi i64* [ %XCX, %block_0x154 ], [ %XAX, %entry ]
  %15 = add i64 %RBP_val.85, -32
  %16 = inttoptr i64 %15 to i64*
  store i64 %RAX_val.86, i64* %16, align 8
  %RBP_val.87 = load i64, i64* %XBP, align 8
  %17 = add i64 %RBP_val.87, -24
  %18 = inttoptr i64 %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %XAX.sink17, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i8, i8* %20, align 1
  %CL.89 = bitcast i64* %XCX.sink7 to i8*
  store i8 %21, i8* %CL.89, align 1
  %RBP_val.90 = load i64, i64* %XBP, align 8
  %22 = add i64 %RBP_val.90, -33
  %23 = inttoptr i64 %22 to i8*
  store i8 %21, i8* %23, align 1
  %RBP_val.63 = load i64, i64* %XBP, align 8
  %24 = add i64 %RBP_val.63, -33
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8, i8* %25, align 1, !mcsema_real_eip !42
  %27 = sext i8 %26 to i64
  %28 = and i64 %27, 4294967295
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !42
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !43
  %29 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !43
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  store i1 %31, i1* %PF, align 1, !mcsema_real_eip !43
  %32 = icmp eq i8 %26, 0
  store i1 %32, i1* %ZF, align 1, !mcsema_real_eip !43
  %33 = icmp slt i8 %26, 0
  store i1 %33, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !43
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !43
  br i1 %32, label %block_0x17a, label %block_0x132, !mcsema_real_eip !44

block_0x132:                                      ; preds = %block_0x125
  %34 = load i8, i8* %25, align 1, !mcsema_real_eip !45
  %35 = sext i8 %34 to i64
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !45
  %37 = sext i8 %34 to i32
  %38 = add nsw i32 %37, -47
  %39 = xor i32 %38, %37, !mcsema_real_eip !46
  %40 = and i32 %39, 16, !mcsema_real_eip !46
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !46
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !46
  %42 = trunc i32 %38 to i8, !mcsema_real_eip !46
  %43 = tail call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !46
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  store i1 %45, i1* %PF, align 1, !mcsema_real_eip !46
  %46 = icmp eq i32 %38, 0
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !46
  %47 = icmp slt i8 %34, 47
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !46
  %48 = icmp ult i8 %34, 47
  store i1 %48, i1* %CF, align 1, !mcsema_real_eip !46
  %49 = and i32 %39, %37, !mcsema_real_eip !46
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !46
  %51 = add i64 %RBP_val.63, -32
  %52 = inttoptr i64 %51 to i64*
  br i1 %46, label %block_0x13f, label %block_0x14b, !mcsema_real_eip !47

block_0x17a:                                      ; preds = %block_0x125
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !35
  %RSP_val.66 = load i64, i64* %XSP, align 8, !mcsema_real_eip !48
  %53 = inttoptr i64 %RSP_val.66 to i64*, !mcsema_real_eip !48
  %54 = load i64, i64* %53, align 8, !mcsema_real_eip !48
  store i64 %54, i64* %XBP, align 8, !mcsema_real_eip !48
  %55 = add i64 %RSP_val.66, 8, !mcsema_real_eip !48
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !48
  %56 = add i64 %RSP_val.66, 16, !mcsema_real_eip !49
  %57 = inttoptr i64 %55 to i64*, !mcsema_real_eip !49
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !49
  store i64 %58, i64* %XIP, align 8, !mcsema_real_eip !49
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49

block_0x13f:                                      ; preds = %block_0x132
  %59 = load i64, i64* %52, align 8, !mcsema_real_eip !50
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !50
  br label %block_0x154, !mcsema_real_eip !51

block_0x14b:                                      ; preds = %block_0x132
  %60 = load i8, i8* %25, align 1, !mcsema_real_eip !52
  store i8 %60, i8* %AL.72, align 1, !mcsema_real_eip !52
  %61 = load i64, i64* %52, align 8, !mcsema_real_eip !53
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !53
  br label %block_0x154, !mcsema_real_eip !50

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %.sink.in = phi i64 [ %61, %block_0x14b ], [ %59, %block_0x13f ]
  %AL_val.76.sink = phi i8 [ %60, %block_0x14b ], [ 92, %block_0x13f ]
  %62 = inttoptr i64 %.sink.in to i8*
  store i8 %AL_val.76.sink, i8* %62, align 1
  %RBP_val.79 = load i64, i64* %XBP, align 8
  %63 = add i64 %RBP_val.79, -24
  %64 = inttoptr i64 %63 to i64*
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !54
  %66 = add i64 %65, 1, !mcsema_real_eip !55
  %67 = xor i64 %66, %65, !mcsema_real_eip !55
  %68 = and i64 %67, 16, !mcsema_real_eip !55
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !55
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !55
  %70 = icmp slt i64 %66, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !55
  %71 = icmp eq i64 %66, 0, !mcsema_real_eip !55
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !55
  %72 = xor i64 %65, -9223372036854775808, !mcsema_real_eip !55
  %73 = and i64 %67, %72, !mcsema_real_eip !55
  %74 = icmp slt i64 %73, 0
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !55
  %75 = trunc i64 %66 to i8, !mcsema_real_eip !55
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !55
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !55
  %79 = icmp eq i64 %65, -1
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !55
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !55
  store i64 %66, i64* %64, align 8, !mcsema_real_eip !56
  %RBP_val.83 = load i64, i64* %XBP, align 8, !mcsema_real_eip !57
  %80 = add i64 %RBP_val.83, -32, !mcsema_real_eip !57
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !57
  %82 = load i64, i64* %81, align 8, !mcsema_real_eip !57
  %83 = add i64 %82, 1, !mcsema_real_eip !58
  %84 = xor i64 %83, %82, !mcsema_real_eip !58
  %85 = and i64 %84, 16, !mcsema_real_eip !58
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !58
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !58
  %87 = icmp slt i64 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !58
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !58
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !58
  %89 = xor i64 %82, -9223372036854775808, !mcsema_real_eip !58
  %90 = and i64 %84, %89, !mcsema_real_eip !58
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !58
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !58
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !58
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !58
  %96 = icmp eq i64 %82, -1
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !58
  store i64 %83, i64* %XAX, align 8, !mcsema_real_eip !58
  br label %block_0x125, !mcsema_real_eip !59
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState* nocapture) unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !60
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !60
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !60
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !60
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !60
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !60
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !60
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !60
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !60
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !60
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !60
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !60
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !60
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !60
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !60
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !60
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !60
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !60
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !60
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !60
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !60
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !60
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !61
  %3 = add i64 %RSP_val.94, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !62
  %5 = and i64 %4, 16, !mcsema_real_eip !62
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !62
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !62
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !62
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !62
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !62
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !62
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !62
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !62
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !62
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !62
  %14 = and i64 %4, %1, !mcsema_real_eip !62
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !62
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !62
  %16 = add i64 %RSP_val.94, -16, !mcsema_real_eip !63
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !63
  %RDI_val.98 = load i64, i64* %XDI, align 8, !mcsema_real_eip !63
  store i64 %RDI_val.98, i64* %17, align 8, !mcsema_real_eip !63
  %RBP_val.99 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %18 = add i64 %RBP_val.99, -12, !mcsema_real_eip !64
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !64
  store i32 1, i32* %19, align 4, !mcsema_real_eip !64
  %RBP_val.100 = load i64, i64* %XBP, align 8, !mcsema_real_eip !65
  %20 = add i64 %RBP_val.100, -8, !mcsema_real_eip !65
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !65
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !65
  store i64 %22, i64* %XDI, align 8, !mcsema_real_eip !65
  %RSP_val.102 = load i64, i64* %XSP, align 8, !mcsema_real_eip !66
  %23 = add i64 %RSP_val.102, -8
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !66
  store i64 -2415393069852865332, i64* %24, align 8, !mcsema_real_eip !66
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !66
  %25 = tail call x86_64_sysvcc i64 @_strlen(i64 %22), !mcsema_real_eip !66
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !66
  %26 = trunc i64 %25 to i32
  %27 = and i64 %25, 4294967295
  store i64 %27, i64* %XCX, align 8, !mcsema_real_eip !67
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !68
  %28 = add i64 %RBP_val.105, -16, !mcsema_real_eip !68
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !68
  store i32 %26, i32* %29, align 4, !mcsema_real_eip !68
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !69
  %30 = add i64 %RBP_val.108, -16, !mcsema_real_eip !69
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !69
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !69
  %33 = add i32 %32, -1
  %34 = xor i32 %33, %32, !mcsema_real_eip !69
  %35 = and i32 %34, 16, !mcsema_real_eip !69
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !69
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !69
  %37 = trunc i32 %33 to i8, !mcsema_real_eip !69
  %38 = tail call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !69
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !69
  %41 = icmp eq i32 %33, 0
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !69
  %42 = icmp slt i32 %33, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !69
  %43 = icmp eq i32 %32, 0
  store i1 %43, i1* %CF, align 1, !mcsema_real_eip !69
  %44 = and i32 %34, %32, !mcsema_real_eip !69
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !69
  %46 = xor i1 %42, %45
  %47 = or i1 %46, %41, !mcsema_real_eip !70
  br i1 %47, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !70

block_0xbb:                                       ; preds = %entry
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !60
  %48 = add i64 %RBP_val.108, -8, !mcsema_real_eip !71
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !71
  %50 = load i64, i64* %49, align 8, !mcsema_real_eip !71
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !71
  %51 = inttoptr i64 %50 to i8*, !mcsema_real_eip !72
  %52 = load i8, i8* %51, align 1, !mcsema_real_eip !72
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !72
  store i8 %52, i8* %CL.115, align 1, !mcsema_real_eip !72
  %53 = add i64 %RBP_val.108, -17, !mcsema_real_eip !73
  %54 = inttoptr i64 %53 to i8*, !mcsema_real_eip !73
  store i8 %52, i8* %54, align 1, !mcsema_real_eip !73
  %RBP_val.119 = load i64, i64* %XBP, align 8
  %55 = add i64 %RBP_val.119, -8, !mcsema_real_eip !74
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !74
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %XAX, align 8, !mcsema_real_eip !74
  %58 = add i64 %RBP_val.119, -16, !mcsema_real_eip !75
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !75
  %60 = load i32, i32* %59, align 4, !mcsema_real_eip !75
  %61 = add i32 %60, -1
  %62 = xor i32 %61, %60, !mcsema_real_eip !76
  %63 = and i32 %62, 16, !mcsema_real_eip !76
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !76
  store i1 %64, i1* %AF, align 1, !mcsema_real_eip !76
  %65 = trunc i32 %61 to i8, !mcsema_real_eip !76
  %66 = tail call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !76
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !76
  %69 = icmp eq i32 %61, 0, !mcsema_real_eip !76
  store i1 %69, i1* %ZF, align 1, !mcsema_real_eip !76
  %70 = icmp slt i32 %61, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !76
  %71 = icmp eq i32 %60, 0
  store i1 %71, i1* %CF, align 1, !mcsema_real_eip !76
  %72 = and i32 %62, %60, !mcsema_real_eip !76
  %73 = icmp slt i32 %72, 0
  store i1 %73, i1* %OF, align 1, !mcsema_real_eip !76
  %74 = zext i32 %61 to i64, !mcsema_real_eip !76
  store i64 %74, i64* %XDX, align 8, !mcsema_real_eip !76
  %75 = sext i32 %61 to i64, !mcsema_real_eip !77
  store i64 %75, i64* %XSI, align 8, !mcsema_real_eip !77
  %76 = add i64 %57, %75, !mcsema_real_eip !78
  %77 = inttoptr i64 %76 to i8*, !mcsema_real_eip !78
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !78
  store i8 %78, i8* %CL.115, align 1, !mcsema_real_eip !78
  %79 = add i64 %RBP_val.119, -18, !mcsema_real_eip !79
  %80 = inttoptr i64 %79 to i8*, !mcsema_real_eip !79
  store i8 %78, i8* %80, align 1, !mcsema_real_eip !79
  %RBP_val.131 = load i64, i64* %XBP, align 8
  %81 = add i64 %RBP_val.131, -17, !mcsema_real_eip !80
  %82 = inttoptr i64 %81 to i8*, !mcsema_real_eip !80
  %83 = load i8, i8* %82, align 1, !mcsema_real_eip !80
  %84 = sext i8 %83 to i64
  %85 = and i64 %84, 4294967295
  store i64 %85, i64* %XDX, align 8, !mcsema_real_eip !80
  %86 = add i64 %RBP_val.131, -18, !mcsema_real_eip !81
  %87 = inttoptr i64 %86 to i8*, !mcsema_real_eip !81
  %88 = load i8, i8* %87, align 1, !mcsema_real_eip !81
  %89 = sext i8 %88 to i64
  %90 = and i64 %89, 4294967295
  store i64 %90, i64* %XDI, align 8, !mcsema_real_eip !81
  %91 = sext i8 %83 to i32
  %92 = sext i8 %88 to i32
  %93 = sub nsw i32 %91, %92, !mcsema_real_eip !82
  %94 = xor i32 %93, %91, !mcsema_real_eip !82
  %95 = xor i32 %94, %92, !mcsema_real_eip !82
  %96 = and i32 %95, 16, !mcsema_real_eip !82
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !82
  store i1 %97, i1* %AF, align 1, !mcsema_real_eip !82
  %98 = trunc i32 %93 to i8, !mcsema_real_eip !82
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !82
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF, align 1, !mcsema_real_eip !82
  %102 = icmp eq i32 %93, 0
  store i1 %102, i1* %ZF, align 1, !mcsema_real_eip !82
  %103 = icmp slt i32 %93, 0
  store i1 %103, i1* %SF, align 1, !mcsema_real_eip !82
  %104 = icmp ult i8 %83, %88
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !82
  %105 = xor i8 %88, %83
  %106 = sext i8 %105 to i32
  %107 = and i32 %94, %106, !mcsema_real_eip !82
  %108 = icmp slt i32 %107, 0
  store i1 %108, i1* %OF, align 1, !mcsema_real_eip !82
  br i1 %102, label %block_0xe7, label %block_0xf3, !mcsema_real_eip !83

block_0xf3:                                       ; preds = %block_0xbb, %block_0xe7, %entry
  %RBP_val.109 = phi i64 [ %RBP_val.131, %block_0xbb ], [ %RBP_val.109.pre, %block_0xe7 ], [ %RBP_val.108, %entry ]
  %109 = add i64 %RBP_val.109, -12, !mcsema_real_eip !84
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !84
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !84
  %112 = zext i32 %111 to i64, !mcsema_real_eip !84
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !84
  %RSP_val.110 = load i64, i64* %XSP, align 8, !mcsema_real_eip !85
  %113 = add i64 %RSP_val.110, 32, !mcsema_real_eip !85
  %114 = xor i64 %113, %RSP_val.110, !mcsema_real_eip !85
  %115 = and i64 %114, 16, !mcsema_real_eip !85
  %116 = icmp ne i64 %115, 0, !mcsema_real_eip !85
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !85
  %117 = icmp slt i64 %113, 0
  store i1 %117, i1* %SF, align 1, !mcsema_real_eip !85
  %118 = icmp eq i64 %113, 0, !mcsema_real_eip !85
  store i1 %118, i1* %ZF, align 1, !mcsema_real_eip !85
  %119 = xor i64 %RSP_val.110, -9223372036854775808, !mcsema_real_eip !85
  %120 = and i64 %114, %119, !mcsema_real_eip !85
  %121 = icmp slt i64 %120, 0
  store i1 %121, i1* %OF, align 1, !mcsema_real_eip !85
  %122 = trunc i64 %113 to i8, !mcsema_real_eip !85
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !85
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF, align 1, !mcsema_real_eip !85
  %126 = icmp ugt i64 %RSP_val.110, -33
  store i1 %126, i1* %CF, align 1, !mcsema_real_eip !85
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !85
  %127 = inttoptr i64 %113 to i64*, !mcsema_real_eip !86
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !86
  store i64 %128, i64* %XBP, align 8, !mcsema_real_eip !86
  %129 = add i64 %RSP_val.110, 40, !mcsema_real_eip !86
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !86
  %130 = add i64 %RSP_val.110, 48, !mcsema_real_eip !87
  %131 = inttoptr i64 %129 to i64*, !mcsema_real_eip !87
  %132 = load i64, i64* %131, align 8, !mcsema_real_eip !87
  store i64 %132, i64* %XIP, align 8, !mcsema_real_eip !87
  store i64 %130, i64* %XSP, align 8, !mcsema_real_eip !87
  ret void, !mcsema_real_eip !87

block_0xe7:                                       ; preds = %block_0xbb
  %133 = add i64 %RBP_val.131, -12, !mcsema_real_eip !88
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !88
  store i32 0, i32* %134, align 4, !mcsema_real_eip !88
  %RBP_val.109.pre = load i64, i64* %XBP, align 8
  br label %block_0xf3
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
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
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 42}
!13 = !{i64 39}
!14 = !{i64 45}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 76}
!22 = !{i64 79}
!23 = !{i64 117}
!24 = !{i64 121}
!25 = !{i64 125}
!26 = !{i64 129}
!27 = !{i64 130}
!28 = !{i64 85}
!29 = !{i64 89}
!30 = !{i64 93}
!31 = !{i64 103}
!32 = !{i64 106}
!33 = !{i64 109}
!34 = !{i64 112}
!35 = !{i64 256}
!36 = !{i64 257}
!37 = !{i64 260}
!38 = !{i64 264}
!39 = !{i64 268}
!40 = !{i64 272}
!41 = !{i64 276}
!42 = !{i64 293}
!43 = !{i64 297}
!44 = !{i64 300}
!45 = !{i64 306}
!46 = !{i64 310}
!47 = !{i64 313}
!48 = !{i64 378}
!49 = !{i64 379}
!50 = !{i64 319}
!51 = !{i64 326}
!52 = !{i64 331}
!53 = !{i64 334}
!54 = !{i64 340}
!55 = !{i64 344}
!56 = !{i64 348}
!57 = !{i64 352}
!58 = !{i64 356}
!59 = !{i64 373}
!60 = !{i64 144}
!61 = !{i64 145}
!62 = !{i64 148}
!63 = !{i64 152}
!64 = !{i64 156}
!65 = !{i64 163}
!66 = !{i64 167}
!67 = !{i64 172}
!68 = !{i64 174}
!69 = !{i64 177}
!70 = !{i64 181}
!71 = !{i64 187}
!72 = !{i64 191}
!73 = !{i64 193}
!74 = !{i64 196}
!75 = !{i64 200}
!76 = !{i64 203}
!77 = !{i64 206}
!78 = !{i64 209}
!79 = !{i64 212}
!80 = !{i64 215}
!81 = !{i64 219}
!82 = !{i64 223}
!83 = !{i64 225}
!84 = !{i64 243}
!85 = !{i64 246}
!86 = !{i64 250}
!87 = !{i64 251}
!88 = !{i64 231}
