; ModuleID = 'Output/test_11.clang.opt.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %3 = add i64 %RSP_val.1, -56
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
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
  %13 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -24, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %17, align 8, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !6
  %20 = load i64, i64* %19, align 8, !mcsema_real_eip !6
  store i64 %20, i64* %XDI, align 8, !mcsema_real_eip !6
  %RSP_val.8 = load i64, i64* %XSP, align 8, !mcsema_real_eip !7
  %21 = add i64 %RSP_val.8, -8
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !7
  store i64 -2415393069852865332, i64* %22, align 8, !mcsema_real_eip !7
  store i64 %21, i64* %XSP, align 8, !mcsema_real_eip !7
  %23 = tail call x86_64_sysvcc i64 @_strlen(i64 %20), !mcsema_real_eip !7
  %24 = add i64 %23, 1, !mcsema_real_eip !8
  %25 = xor i64 %24, %23, !mcsema_real_eip !8
  %26 = and i64 %25, 16, !mcsema_real_eip !8
  %27 = icmp ne i64 %26, 0, !mcsema_real_eip !8
  store i1 %27, i1* %AF, align 1, !mcsema_real_eip !8
  %28 = icmp slt i64 %24, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !8
  %29 = icmp eq i64 %24, 0, !mcsema_real_eip !8
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !8
  %30 = xor i64 %23, -9223372036854775808, !mcsema_real_eip !8
  %31 = and i64 %25, %30, !mcsema_real_eip !8
  %32 = icmp slt i64 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !8
  %33 = trunc i64 %24 to i8, !mcsema_real_eip !8
  %34 = tail call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !8
  %37 = icmp eq i64 %23, -1
  store i1 %37, i1* %CF, align 1, !mcsema_real_eip !8
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %38 = add i64 %RBP_val.10, -24, !mcsema_real_eip !9
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !9
  store i64 %24, i64* %39, align 8, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %40 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !10
  %42 = load i64, i64* %41, align 8, !mcsema_real_eip !10
  store i64 %42, i64* %XDI, align 8, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %43 = add i64 %RSP_val.14, -8
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %44, align 8, !mcsema_real_eip !11
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !11
  %45 = tail call x86_64_sysvcc i64 @_malloc(i64 %42), !mcsema_real_eip !11
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %46 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !12
  store i64 %45, i64* %47, align 8, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %48 = add i64 %RBP_val.17, -32, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !13
  %50 = load i64, i64* %49, align 8, !mcsema_real_eip !13
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !13
  %51 = trunc i64 %50 to i8, !mcsema_real_eip !13
  %52 = tail call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !13
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !13
  %55 = icmp eq i64 %50, 0, !mcsema_real_eip !13
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !13
  %56 = icmp slt i64 %50, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !13
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !13
  br i1 %55, label %block_0xbe, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %entry
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !15
  %57 = add i64 %RBP_val.17, -16, !mcsema_real_eip !16
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !16
  %59 = load i64, i64* %58, align 8, !mcsema_real_eip !16
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !16
  %60 = add i64 %RBP_val.17, -40, !mcsema_real_eip !17
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !17
  store i64 %59, i64* %61, align 8, !mcsema_real_eip !17
  %RBP_val.26 = load i64, i64* %XBP, align 8
  %62 = add i64 %RBP_val.26, -32, !mcsema_real_eip !18
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !18
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !18
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !18
  %65 = add i64 %RBP_val.26, -48, !mcsema_real_eip !19
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !19
  store i64 %64, i64* %66, align 8, !mcsema_real_eip !19
  %RBP_val.29 = load i64, i64* %XBP, align 8
  %67 = add i64 %RBP_val.29, -32, !mcsema_real_eip !20
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !20
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !20
  store i64 %69, i64* %XDI, align 8, !mcsema_real_eip !20
  %70 = add i64 %RBP_val.29, -24, !mcsema_real_eip !21
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !21
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !21
  store i64 %72, i64* %XDX, align 8, !mcsema_real_eip !21
  %RSI_val.32 = load i64, i64* %XSI, align 8, !mcsema_real_eip !22
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %73 = add i64 %RSP_val.34, -8
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %74, align 8, !mcsema_real_eip !22
  store i64 %73, i64* %XSP, align 8, !mcsema_real_eip !22
  %75 = tail call x86_64_sysvcc i64 @_memset(i64 %69, i64 %RSI_val.32, i64 %72), !mcsema_real_eip !22
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !22
  %CL.52 = bitcast i64* %XCX to i8*
  br label %block_0x54, !mcsema_real_eip !23

block_0xbe:                                       ; preds = %entry, %block_0xa9
  %RBP_val.39.sink = phi i64 [ %RBP_val.39, %block_0xa9 ], [ %RBP_val.17, %entry ]
  %.sink = phi i64 [ %136, %block_0xa9 ], [ 0, %entry ]
  %76 = add i64 %RBP_val.39.sink, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %.sink, i64* %77, align 8
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %78 = add i64 %RBP_val.35, -8, !mcsema_real_eip !23
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !23
  %80 = load i64, i64* %79, align 8, !mcsema_real_eip !23
  store i64 %80, i64* %XAX, align 8, !mcsema_real_eip !23
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %81 = add i64 %RSP_val.36, 48, !mcsema_real_eip !24
  %82 = xor i64 %81, %RSP_val.36, !mcsema_real_eip !24
  %83 = and i64 %82, 16
  %84 = icmp eq i64 %83, 0
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !24
  %85 = icmp slt i64 %81, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !24
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !24
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !24
  %87 = xor i64 %RSP_val.36, -9223372036854775808, !mcsema_real_eip !24
  %88 = and i64 %82, %87, !mcsema_real_eip !24
  %89 = icmp slt i64 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !24
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !24
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !24
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !24
  %94 = icmp ugt i64 %RSP_val.36, -49
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !24
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !24
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !25
  %96 = load i64, i64* %95, align 8, !mcsema_real_eip !25
  store i64 %96, i64* %XBP, align 8, !mcsema_real_eip !25
  %97 = add i64 %RSP_val.36, 56, !mcsema_real_eip !25
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !25
  %98 = add i64 %RSP_val.36, 64, !mcsema_real_eip !26
  %99 = inttoptr i64 %97 to i64*, !mcsema_real_eip !26
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !26
  store i64 %100, i64* %XIP, align 8, !mcsema_real_eip !26
  store i64 %98, i64* %XSP, align 8, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %RBP_val.39 = load i64, i64* %XBP, align 8
  %101 = add i64 %RBP_val.39, -40
  %102 = inttoptr i64 %101 to i64*
  %103 = load i64, i64* %102, align 8, !mcsema_real_eip !27
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !27
  %104 = inttoptr i64 %103 to i8*, !mcsema_real_eip !28
  %105 = load i8, i8* %104, align 1, !mcsema_real_eip !28
  %106 = sext i8 %105 to i64
  %107 = and i64 %106, 4294967295
  store i64 %107, i64* %XCX, align 8, !mcsema_real_eip !28
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !29
  %108 = tail call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !29
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF, align 1, !mcsema_real_eip !29
  %111 = icmp eq i8 %105, 0
  store i1 %111, i1* %ZF, align 1, !mcsema_real_eip !29
  %112 = icmp slt i8 %105, 0
  store i1 %112, i1* %SF, align 1, !mcsema_real_eip !29
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !29
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !29
  br i1 %111, label %block_0xa9, label %block_0x64, !mcsema_real_eip !30

block_0x64:                                       ; preds = %block_0x54
  %113 = load i64, i64* %102, align 8, !mcsema_real_eip !31
  store i64 %113, i64* %XAX, align 8, !mcsema_real_eip !31
  %114 = inttoptr i64 %113 to i8*, !mcsema_real_eip !32
  %115 = load i8, i8* %114, align 1, !mcsema_real_eip !32
  %116 = sext i8 %115 to i64
  %117 = and i64 %116, 4294967295
  store i64 %117, i64* %XCX, align 8, !mcsema_real_eip !32
  %118 = sext i8 %115 to i32
  %119 = add nsw i32 %118, -47
  %120 = xor i32 %119, %118, !mcsema_real_eip !33
  %121 = and i32 %120, 16, !mcsema_real_eip !33
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !33
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !33
  %123 = trunc i32 %119 to i8, !mcsema_real_eip !33
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !33
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF, align 1, !mcsema_real_eip !33
  %127 = icmp eq i32 %119, 0
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !33
  %128 = icmp slt i8 %115, 47
  store i1 %128, i1* %SF, align 1, !mcsema_real_eip !33
  %129 = icmp ult i8 %115, 47
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !33
  %130 = and i32 %120, %118, !mcsema_real_eip !33
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !33
  %132 = add i64 %RBP_val.39, -48
  %133 = inttoptr i64 %132 to i64*
  br i1 %127, label %block_0x8c, label %block_0x80, !mcsema_real_eip !34

block_0xa9:                                       ; preds = %block_0x54
  %134 = add i64 %RBP_val.39, -32, !mcsema_real_eip !35
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !35
  %136 = load i64, i64* %135, align 8, !mcsema_real_eip !35
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !35
  br label %block_0xbe, !mcsema_real_eip !36

block_0x80:                                       ; preds = %block_0x64
  %137 = load i64, i64* %102, align 8, !mcsema_real_eip !37
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !37
  %138 = inttoptr i64 %137 to i8*, !mcsema_real_eip !38
  %139 = load i8, i8* %138, align 1, !mcsema_real_eip !38
  store i8 %139, i8* %CL.52, align 1, !mcsema_real_eip !38
  br label %block_0x8c, !mcsema_real_eip !39

block_0x8c:                                       ; preds = %block_0x64, %block_0x80
  %CL_val.56.sink = phi i8 [ %139, %block_0x80 ], [ 92, %block_0x64 ]
  %140 = load i64, i64* %133, align 8
  store i64 %140, i64* %XAX, align 8
  %141 = inttoptr i64 %140 to i8*
  store i8 %CL_val.56.sink, i8* %141, align 1
  %RBP_val.59 = load i64, i64* %XBP, align 8
  %142 = add i64 %RBP_val.59, -40
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143, align 8, !mcsema_real_eip !40
  %145 = add i64 %144, 1, !mcsema_real_eip !41
  %146 = xor i64 %145, %144, !mcsema_real_eip !41
  %147 = and i64 %146, 16, !mcsema_real_eip !41
  %148 = icmp ne i64 %147, 0, !mcsema_real_eip !41
  store i1 %148, i1* %AF, align 1, !mcsema_real_eip !41
  %149 = icmp slt i64 %145, 0
  store i1 %149, i1* %SF, align 1, !mcsema_real_eip !41
  %150 = icmp eq i64 %145, 0, !mcsema_real_eip !41
  store i1 %150, i1* %ZF, align 1, !mcsema_real_eip !41
  %151 = xor i64 %144, -9223372036854775808, !mcsema_real_eip !41
  %152 = and i64 %146, %151, !mcsema_real_eip !41
  %153 = icmp slt i64 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !41
  %154 = trunc i64 %145 to i8, !mcsema_real_eip !41
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !41
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !41
  %158 = icmp eq i64 %144, -1
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !41
  store i64 %145, i64* %XAX, align 8, !mcsema_real_eip !41
  store i64 %145, i64* %143, align 8, !mcsema_real_eip !42
  %RBP_val.63 = load i64, i64* %XBP, align 8
  %159 = add i64 %RBP_val.63, -48
  %160 = inttoptr i64 %159 to i64*
  %161 = load i64, i64* %160, align 8, !mcsema_real_eip !43
  %162 = add i64 %161, 1, !mcsema_real_eip !44
  %163 = xor i64 %162, %161, !mcsema_real_eip !44
  %164 = and i64 %163, 16, !mcsema_real_eip !44
  %165 = icmp ne i64 %164, 0, !mcsema_real_eip !44
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !44
  %166 = icmp slt i64 %162, 0
  store i1 %166, i1* %SF, align 1, !mcsema_real_eip !44
  %167 = icmp eq i64 %162, 0, !mcsema_real_eip !44
  store i1 %167, i1* %ZF, align 1, !mcsema_real_eip !44
  %168 = xor i64 %161, -9223372036854775808, !mcsema_real_eip !44
  %169 = and i64 %163, %168, !mcsema_real_eip !44
  %170 = icmp slt i64 %169, 0
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !44
  %171 = trunc i64 %162 to i8, !mcsema_real_eip !44
  %172 = tail call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !44
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  store i1 %174, i1* %PF, align 1, !mcsema_real_eip !44
  %175 = icmp eq i64 %161, -1
  store i1 %175, i1* %CF, align 1, !mcsema_real_eip !44
  store i64 %162, i64* %XAX, align 8, !mcsema_real_eip !44
  store i64 %162, i64* %160, align 8, !mcsema_real_eip !45
  br label %block_0x54, !mcsema_real_eip !46
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 29}
!11 = !{i64 33}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 47}
!15 = !{i64 53}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 190}
!24 = !{i64 194}
!25 = !{i64 198}
!26 = !{i64 199}
!27 = !{i64 84}
!28 = !{i64 88}
!29 = !{i64 91}
!30 = !{i64 94}
!31 = !{i64 100}
!32 = !{i64 104}
!33 = !{i64 107}
!34 = !{i64 110}
!35 = !{i64 169}
!36 = !{i64 177}
!37 = !{i64 128}
!38 = !{i64 132}
!39 = !{i64 116}
!40 = !{i64 140}
!41 = !{i64 144}
!42 = !{i64 148}
!43 = !{i64 152}
!44 = !{i64 156}
!45 = !{i64 160}
!46 = !{i64 164}
