; ModuleID = 'Output/test_20.clang.trans.opt.bc'
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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -12, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %4, align 4, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %6, align 4, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8
  %7 = add i64 %RBP_val.7, -4, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !6
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !6
  %10 = zext i32 %9 to i64, !mcsema_real_eip !6
  store i64 %10, i64* %XDI, align 8, !mcsema_real_eip !6
  %11 = icmp eq i32 %9, 0, !mcsema_real_eip !7
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !7
  %12 = icmp slt i32 %9, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !7
  %13 = trunc i32 %9 to i8, !mcsema_real_eip !7
  %14 = tail call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !7
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  %17 = add i64 %RBP_val.7, -12, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 %9, i32* %18, align 4, !mcsema_real_eip !8
  %19 = load i1, i1* %ZF, align 1, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, align 8
  br i1 %19, label %block_0x19f, label %block_0x21, !mcsema_real_eip !9

block_0x19f:                                      ; preds = %entry
  %20 = add i64 %RBP_val.15, -8, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !10
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !10
  %23 = zext i32 %22 to i64, !mcsema_real_eip !10
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %24 = icmp slt i32 %22, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !11
  %25 = icmp eq i32 %22, 0, !mcsema_real_eip !11
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  %26 = trunc i32 %22 to i8, !mcsema_real_eip !11
  %27 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !11
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !11
  br label %block_0x2c8, !mcsema_real_eip !12

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %RBP_val.243 = phi i64 [ %RBP_val.234, %block_0x2bf ], [ %RBP_val.234, %block_0x2af ], [ %RBP_val.222, %block_0x29f ], [ %RBP_val.210, %block_0x28f ], [ %RBP_val.198, %block_0x27f ], [ %RBP_val.186, %block_0x26f ], [ %RBP_val.174, %block_0x25f ], [ %RBP_val.162, %block_0x24f ], [ %RBP_val.150, %block_0x23f ], [ %RBP_val.138, %block_0x22f ], [ %RBP_val.126, %block_0x21f ], [ %RBP_val.114, %block_0x20f ], [ %RBP_val.102, %block_0x201 ], [ %RBP_val.90, %block_0x1f3 ], [ %RBP_val.78, %block_0x1e5 ], [ %RBP_val.66, %block_0x1d7 ], [ %RBP_val.54, %block_0x1c9 ], [ %RBP_val.42, %block_0x1bb ], [ %RBP_val.30, %block_0x1ad ], [ %RBP_val.15, %block_0x19f ]
  %.sink = phi i1 [ false, %block_0x2bf ], [ %726, %block_0x2af ], [ %688, %block_0x29f ], [ %650, %block_0x28f ], [ %612, %block_0x27f ], [ %574, %block_0x26f ], [ %536, %block_0x25f ], [ %498, %block_0x24f ], [ %460, %block_0x23f ], [ %422, %block_0x22f ], [ %384, %block_0x21f ], [ %346, %block_0x20f ], [ %308, %block_0x201 ], [ %270, %block_0x1f3 ], [ %232, %block_0x1e5 ], [ %194, %block_0x1d7 ], [ %156, %block_0x1c9 ], [ %118, %block_0x1bb ], [ %80, %block_0x1ad ], [ false, %block_0x19f ]
  %.sink3 = phi i32 [ %711, %block_0x2bf ], [ %713, %block_0x2af ], [ %675, %block_0x29f ], [ %637, %block_0x28f ], [ %599, %block_0x27f ], [ %561, %block_0x26f ], [ %523, %block_0x25f ], [ %485, %block_0x24f ], [ %447, %block_0x23f ], [ %409, %block_0x22f ], [ %371, %block_0x21f ], [ %333, %block_0x20f ], [ %295, %block_0x201 ], [ %257, %block_0x1f3 ], [ %219, %block_0x1e5 ], [ %181, %block_0x1d7 ], [ %143, %block_0x1c9 ], [ %105, %block_0x1bb ], [ %67, %block_0x1ad ], [ %22, %block_0x19f ]
  store i1 %.sink, i1* %CF, align 1
  %30 = zext i32 %.sink3 to i64
  store i64 %30, i64* %XAX, align 8
  %31 = add i64 %RBP_val.243, -8
  %32 = inttoptr i64 %31 to i32*
  store i32 %.sink3, i32* %32, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !13
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !13
  %36 = zext i32 %35 to i64, !mcsema_real_eip !13
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !13
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %37 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !14
  %38 = load i64, i64* %37, align 8, !mcsema_real_eip !14
  store i64 %38, i64* %XBP, align 8, !mcsema_real_eip !14
  %39 = add i64 %RSP_val.22, 8, !mcsema_real_eip !14
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !14
  %40 = add i64 %RSP_val.22, 16, !mcsema_real_eip !15
  %41 = inttoptr i64 %39 to i64*, !mcsema_real_eip !15
  %42 = load i64, i64* %41, align 8, !mcsema_real_eip !15
  store i64 %42, i64* %XIP, align 8, !mcsema_real_eip !15
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15

block_0x21:                                       ; preds = %entry
  %43 = add i64 %RBP_val.15, -12, !mcsema_real_eip !16
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !16
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !16
  %46 = add i32 %45, -1
  %47 = xor i32 %46, %45, !mcsema_real_eip !17
  %48 = and i32 %47, 16, !mcsema_real_eip !17
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !17
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !17
  %50 = trunc i32 %46 to i8, !mcsema_real_eip !17
  %51 = tail call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !17
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !17
  %54 = icmp eq i32 %46, 0, !mcsema_real_eip !17
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !17
  %55 = icmp slt i32 %46, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !17
  %56 = icmp eq i32 %45, 0
  store i1 %56, i1* %CF, align 1, !mcsema_real_eip !17
  %57 = and i32 %47, %45, !mcsema_real_eip !17
  %58 = icmp slt i32 %57, 0
  store i1 %58, i1* %OF, align 1, !mcsema_real_eip !17
  %59 = zext i32 %46 to i64, !mcsema_real_eip !17
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !17
  %60 = add i64 %RBP_val.15, -16, !mcsema_real_eip !18
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !18
  store i32 %46, i32* %61, align 4, !mcsema_real_eip !18
  %62 = load i1, i1* %ZF, align 1, !mcsema_real_eip !19
  %RBP_val.30 = load i64, i64* %XBP, align 8
  br i1 %62, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !19

block_0x1ad:                                      ; preds = %block_0x21
  %63 = add i64 %RBP_val.30, -8, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !20
  %65 = load i32, i32* %64, align 4, !mcsema_real_eip !20
  %66 = zext i32 %65 to i64, !mcsema_real_eip !20
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !20
  %67 = add i32 %65, 1, !mcsema_real_eip !21
  %68 = xor i32 %67, %65, !mcsema_real_eip !21
  %69 = and i32 %68, 16, !mcsema_real_eip !21
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !21
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !21
  %71 = icmp slt i32 %67, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !21
  %72 = icmp eq i32 %67, 0, !mcsema_real_eip !21
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !21
  %73 = xor i32 %65, -2147483648, !mcsema_real_eip !21
  %74 = and i32 %68, %73, !mcsema_real_eip !21
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !21
  %76 = trunc i32 %67 to i8, !mcsema_real_eip !21
  %77 = tail call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !21
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !21
  %80 = icmp eq i32 %65, -1
  br label %block_0x2c8, !mcsema_real_eip !22

block_0x35:                                       ; preds = %block_0x21
  %81 = add i64 %RBP_val.30, -12, !mcsema_real_eip !23
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !23
  %83 = load i32, i32* %82, align 4, !mcsema_real_eip !23
  %84 = add i32 %83, -2
  %85 = xor i32 %84, %83, !mcsema_real_eip !24
  %86 = and i32 %85, 16, !mcsema_real_eip !24
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !24
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !24
  %88 = trunc i32 %84 to i8, !mcsema_real_eip !24
  %89 = tail call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !24
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  store i1 %91, i1* %PF, align 1, !mcsema_real_eip !24
  %92 = icmp eq i32 %84, 0, !mcsema_real_eip !24
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !24
  %93 = icmp slt i32 %84, 0
  store i1 %93, i1* %SF, align 1, !mcsema_real_eip !24
  %94 = icmp ult i32 %83, 2, !mcsema_real_eip !24
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !24
  %95 = and i32 %85, %83, !mcsema_real_eip !24
  %96 = icmp slt i32 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !24
  %97 = zext i32 %84 to i64, !mcsema_real_eip !24
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !24
  %98 = add i64 %RBP_val.30, -20, !mcsema_real_eip !25
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !25
  store i32 %84, i32* %99, align 4, !mcsema_real_eip !25
  %100 = load i1, i1* %ZF, align 1, !mcsema_real_eip !26
  %RBP_val.42 = load i64, i64* %XBP, align 8
  br i1 %100, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !26

block_0x1bb:                                      ; preds = %block_0x35
  %101 = add i64 %RBP_val.42, -8, !mcsema_real_eip !27
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !27
  %103 = load i32, i32* %102, align 4, !mcsema_real_eip !27
  %104 = zext i32 %103 to i64, !mcsema_real_eip !27
  store i64 %104, i64* %XAX, align 8, !mcsema_real_eip !27
  %105 = add i32 %103, 2, !mcsema_real_eip !28
  %106 = xor i32 %105, %103, !mcsema_real_eip !28
  %107 = and i32 %106, 16, !mcsema_real_eip !28
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !28
  store i1 %108, i1* %AF, align 1, !mcsema_real_eip !28
  %109 = icmp slt i32 %105, 0
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !28
  %110 = icmp eq i32 %105, 0, !mcsema_real_eip !28
  store i1 %110, i1* %ZF, align 1, !mcsema_real_eip !28
  %111 = xor i32 %103, -2147483648, !mcsema_real_eip !28
  %112 = and i32 %106, %111, !mcsema_real_eip !28
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !28
  %114 = trunc i32 %105 to i8, !mcsema_real_eip !28
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !28
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !28
  %118 = icmp ugt i32 %103, -3
  br label %block_0x2c8, !mcsema_real_eip !29

block_0x49:                                       ; preds = %block_0x35
  %119 = add i64 %RBP_val.42, -12, !mcsema_real_eip !30
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !30
  %121 = load i32, i32* %120, align 4, !mcsema_real_eip !30
  %122 = add i32 %121, -4
  %123 = xor i32 %122, %121, !mcsema_real_eip !31
  %124 = and i32 %123, 16, !mcsema_real_eip !31
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !31
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !31
  %126 = trunc i32 %122 to i8, !mcsema_real_eip !31
  %127 = tail call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !31
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !31
  %130 = icmp eq i32 %122, 0, !mcsema_real_eip !31
  store i1 %130, i1* %ZF, align 1, !mcsema_real_eip !31
  %131 = icmp slt i32 %122, 0
  store i1 %131, i1* %SF, align 1, !mcsema_real_eip !31
  %132 = icmp ult i32 %121, 4, !mcsema_real_eip !31
  store i1 %132, i1* %CF, align 1, !mcsema_real_eip !31
  %133 = and i32 %123, %121, !mcsema_real_eip !31
  %134 = icmp slt i32 %133, 0
  store i1 %134, i1* %OF, align 1, !mcsema_real_eip !31
  %135 = zext i32 %122 to i64, !mcsema_real_eip !31
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !31
  %136 = add i64 %RBP_val.42, -24, !mcsema_real_eip !32
  %137 = inttoptr i64 %136 to i32*, !mcsema_real_eip !32
  store i32 %122, i32* %137, align 4, !mcsema_real_eip !32
  %138 = load i1, i1* %ZF, align 1, !mcsema_real_eip !33
  %RBP_val.54 = load i64, i64* %XBP, align 8
  br i1 %138, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !33

block_0x1c9:                                      ; preds = %block_0x49
  %139 = add i64 %RBP_val.54, -8, !mcsema_real_eip !34
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !34
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !34
  %142 = zext i32 %141 to i64, !mcsema_real_eip !34
  store i64 %142, i64* %XAX, align 8, !mcsema_real_eip !34
  %143 = add i32 %141, 4, !mcsema_real_eip !35
  %144 = xor i32 %143, %141, !mcsema_real_eip !35
  %145 = and i32 %144, 16, !mcsema_real_eip !35
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !35
  store i1 %146, i1* %AF, align 1, !mcsema_real_eip !35
  %147 = icmp slt i32 %143, 0
  store i1 %147, i1* %SF, align 1, !mcsema_real_eip !35
  %148 = icmp eq i32 %143, 0, !mcsema_real_eip !35
  store i1 %148, i1* %ZF, align 1, !mcsema_real_eip !35
  %149 = xor i32 %141, -2147483648, !mcsema_real_eip !35
  %150 = and i32 %144, %149, !mcsema_real_eip !35
  %151 = icmp slt i32 %150, 0
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !35
  %152 = trunc i32 %143 to i8, !mcsema_real_eip !35
  %153 = tail call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !35
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !35
  %156 = icmp ugt i32 %141, -5
  br label %block_0x2c8, !mcsema_real_eip !36

block_0x5d:                                       ; preds = %block_0x49
  %157 = add i64 %RBP_val.54, -12, !mcsema_real_eip !37
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !37
  %159 = load i32, i32* %158, align 4, !mcsema_real_eip !37
  %160 = add i32 %159, -6
  %161 = xor i32 %160, %159, !mcsema_real_eip !38
  %162 = and i32 %161, 16, !mcsema_real_eip !38
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !38
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !38
  %164 = trunc i32 %160 to i8, !mcsema_real_eip !38
  %165 = tail call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !38
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !38
  %168 = icmp eq i32 %160, 0, !mcsema_real_eip !38
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !38
  %169 = icmp slt i32 %160, 0
  store i1 %169, i1* %SF, align 1, !mcsema_real_eip !38
  %170 = icmp ult i32 %159, 6, !mcsema_real_eip !38
  store i1 %170, i1* %CF, align 1, !mcsema_real_eip !38
  %171 = and i32 %161, %159, !mcsema_real_eip !38
  %172 = icmp slt i32 %171, 0
  store i1 %172, i1* %OF, align 1, !mcsema_real_eip !38
  %173 = zext i32 %160 to i64, !mcsema_real_eip !38
  store i64 %173, i64* %XAX, align 8, !mcsema_real_eip !38
  %174 = add i64 %RBP_val.54, -28, !mcsema_real_eip !39
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !39
  store i32 %160, i32* %175, align 4, !mcsema_real_eip !39
  %176 = load i1, i1* %ZF, align 1, !mcsema_real_eip !40
  %RBP_val.66 = load i64, i64* %XBP, align 8
  br i1 %176, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !40

block_0x1d7:                                      ; preds = %block_0x5d
  %177 = add i64 %RBP_val.66, -8, !mcsema_real_eip !41
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !41
  %179 = load i32, i32* %178, align 4, !mcsema_real_eip !41
  %180 = zext i32 %179 to i64, !mcsema_real_eip !41
  store i64 %180, i64* %XAX, align 8, !mcsema_real_eip !41
  %181 = add i32 %179, 6, !mcsema_real_eip !42
  %182 = xor i32 %181, %179, !mcsema_real_eip !42
  %183 = and i32 %182, 16, !mcsema_real_eip !42
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !42
  store i1 %184, i1* %AF, align 1, !mcsema_real_eip !42
  %185 = icmp slt i32 %181, 0
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !42
  %186 = icmp eq i32 %181, 0, !mcsema_real_eip !42
  store i1 %186, i1* %ZF, align 1, !mcsema_real_eip !42
  %187 = xor i32 %179, -2147483648, !mcsema_real_eip !42
  %188 = and i32 %182, %187, !mcsema_real_eip !42
  %189 = icmp slt i32 %188, 0
  store i1 %189, i1* %OF, align 1, !mcsema_real_eip !42
  %190 = trunc i32 %181 to i8, !mcsema_real_eip !42
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !42
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !42
  %194 = icmp ugt i32 %179, -7
  br label %block_0x2c8, !mcsema_real_eip !43

block_0x71:                                       ; preds = %block_0x5d
  %195 = add i64 %RBP_val.66, -12, !mcsema_real_eip !44
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !44
  %197 = load i32, i32* %196, align 4, !mcsema_real_eip !44
  %198 = add i32 %197, -12
  %199 = xor i32 %198, %197, !mcsema_real_eip !45
  %200 = and i32 %199, 16, !mcsema_real_eip !45
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !45
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !45
  %202 = trunc i32 %198 to i8, !mcsema_real_eip !45
  %203 = tail call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !45
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  store i1 %205, i1* %PF, align 1, !mcsema_real_eip !45
  %206 = icmp eq i32 %198, 0, !mcsema_real_eip !45
  store i1 %206, i1* %ZF, align 1, !mcsema_real_eip !45
  %207 = icmp slt i32 %198, 0
  store i1 %207, i1* %SF, align 1, !mcsema_real_eip !45
  %208 = icmp ult i32 %197, 12, !mcsema_real_eip !45
  store i1 %208, i1* %CF, align 1, !mcsema_real_eip !45
  %209 = and i32 %199, %197, !mcsema_real_eip !45
  %210 = icmp slt i32 %209, 0
  store i1 %210, i1* %OF, align 1, !mcsema_real_eip !45
  %211 = zext i32 %198 to i64, !mcsema_real_eip !45
  store i64 %211, i64* %XAX, align 8, !mcsema_real_eip !45
  %212 = add i64 %RBP_val.66, -32, !mcsema_real_eip !46
  %213 = inttoptr i64 %212 to i32*, !mcsema_real_eip !46
  store i32 %198, i32* %213, align 4, !mcsema_real_eip !46
  %214 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  %RBP_val.78 = load i64, i64* %XBP, align 8
  br i1 %214, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !47

block_0x1e5:                                      ; preds = %block_0x71
  %215 = add i64 %RBP_val.78, -8, !mcsema_real_eip !48
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !48
  %217 = load i32, i32* %216, align 4, !mcsema_real_eip !48
  %218 = zext i32 %217 to i64, !mcsema_real_eip !48
  store i64 %218, i64* %XAX, align 8, !mcsema_real_eip !48
  %219 = add i32 %217, 12, !mcsema_real_eip !49
  %220 = xor i32 %219, %217, !mcsema_real_eip !49
  %221 = and i32 %220, 16, !mcsema_real_eip !49
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !49
  store i1 %222, i1* %AF, align 1, !mcsema_real_eip !49
  %223 = icmp slt i32 %219, 0
  store i1 %223, i1* %SF, align 1, !mcsema_real_eip !49
  %224 = icmp eq i32 %219, 0, !mcsema_real_eip !49
  store i1 %224, i1* %ZF, align 1, !mcsema_real_eip !49
  %225 = xor i32 %217, -2147483648, !mcsema_real_eip !49
  %226 = and i32 %220, %225, !mcsema_real_eip !49
  %227 = icmp slt i32 %226, 0
  store i1 %227, i1* %OF, align 1, !mcsema_real_eip !49
  %228 = trunc i32 %219 to i8, !mcsema_real_eip !49
  %229 = tail call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !49
  %230 = and i8 %229, 1
  %231 = icmp eq i8 %230, 0
  store i1 %231, i1* %PF, align 1, !mcsema_real_eip !49
  %232 = icmp ugt i32 %217, -13
  br label %block_0x2c8, !mcsema_real_eip !50

block_0x85:                                       ; preds = %block_0x71
  %233 = add i64 %RBP_val.78, -12, !mcsema_real_eip !51
  %234 = inttoptr i64 %233 to i32*, !mcsema_real_eip !51
  %235 = load i32, i32* %234, align 4, !mcsema_real_eip !51
  %236 = add i32 %235, -13
  %237 = xor i32 %236, %235, !mcsema_real_eip !52
  %238 = and i32 %237, 16, !mcsema_real_eip !52
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !52
  store i1 %239, i1* %AF, align 1, !mcsema_real_eip !52
  %240 = trunc i32 %236 to i8, !mcsema_real_eip !52
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !52
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !52
  %244 = icmp eq i32 %236, 0, !mcsema_real_eip !52
  store i1 %244, i1* %ZF, align 1, !mcsema_real_eip !52
  %245 = icmp slt i32 %236, 0
  store i1 %245, i1* %SF, align 1, !mcsema_real_eip !52
  %246 = icmp ult i32 %235, 13, !mcsema_real_eip !52
  store i1 %246, i1* %CF, align 1, !mcsema_real_eip !52
  %247 = and i32 %237, %235, !mcsema_real_eip !52
  %248 = icmp slt i32 %247, 0
  store i1 %248, i1* %OF, align 1, !mcsema_real_eip !52
  %249 = zext i32 %236 to i64, !mcsema_real_eip !52
  store i64 %249, i64* %XAX, align 8, !mcsema_real_eip !52
  %250 = add i64 %RBP_val.78, -36, !mcsema_real_eip !53
  %251 = inttoptr i64 %250 to i32*, !mcsema_real_eip !53
  store i32 %236, i32* %251, align 4, !mcsema_real_eip !53
  %252 = load i1, i1* %ZF, align 1, !mcsema_real_eip !54
  %RBP_val.90 = load i64, i64* %XBP, align 8
  br i1 %252, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !54

block_0x1f3:                                      ; preds = %block_0x85
  %253 = add i64 %RBP_val.90, -8, !mcsema_real_eip !55
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !55
  %255 = load i32, i32* %254, align 4, !mcsema_real_eip !55
  %256 = zext i32 %255 to i64, !mcsema_real_eip !55
  store i64 %256, i64* %XAX, align 8, !mcsema_real_eip !55
  %257 = add i32 %255, 13, !mcsema_real_eip !56
  %258 = xor i32 %257, %255, !mcsema_real_eip !56
  %259 = and i32 %258, 16, !mcsema_real_eip !56
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !56
  store i1 %260, i1* %AF, align 1, !mcsema_real_eip !56
  %261 = icmp slt i32 %257, 0
  store i1 %261, i1* %SF, align 1, !mcsema_real_eip !56
  %262 = icmp eq i32 %257, 0, !mcsema_real_eip !56
  store i1 %262, i1* %ZF, align 1, !mcsema_real_eip !56
  %263 = xor i32 %255, -2147483648, !mcsema_real_eip !56
  %264 = and i32 %258, %263, !mcsema_real_eip !56
  %265 = icmp slt i32 %264, 0
  store i1 %265, i1* %OF, align 1, !mcsema_real_eip !56
  %266 = trunc i32 %257 to i8, !mcsema_real_eip !56
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !56
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF, align 1, !mcsema_real_eip !56
  %270 = icmp ugt i32 %255, -14
  br label %block_0x2c8, !mcsema_real_eip !57

block_0x99:                                       ; preds = %block_0x85
  %271 = add i64 %RBP_val.90, -12, !mcsema_real_eip !58
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !58
  %273 = load i32, i32* %272, align 4, !mcsema_real_eip !58
  %274 = add i32 %273, -19
  %275 = xor i32 %274, %273, !mcsema_real_eip !59
  %276 = and i32 %275, 16
  %277 = icmp eq i32 %276, 0
  store i1 %277, i1* %AF, align 1, !mcsema_real_eip !59
  %278 = trunc i32 %274 to i8, !mcsema_real_eip !59
  %279 = tail call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !59
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  store i1 %281, i1* %PF, align 1, !mcsema_real_eip !59
  %282 = icmp eq i32 %274, 0, !mcsema_real_eip !59
  store i1 %282, i1* %ZF, align 1, !mcsema_real_eip !59
  %283 = icmp slt i32 %274, 0
  store i1 %283, i1* %SF, align 1, !mcsema_real_eip !59
  %284 = icmp ult i32 %273, 19, !mcsema_real_eip !59
  store i1 %284, i1* %CF, align 1, !mcsema_real_eip !59
  %285 = and i32 %275, %273, !mcsema_real_eip !59
  %286 = icmp slt i32 %285, 0
  store i1 %286, i1* %OF, align 1, !mcsema_real_eip !59
  %287 = zext i32 %274 to i64, !mcsema_real_eip !59
  store i64 %287, i64* %XAX, align 8, !mcsema_real_eip !59
  %288 = add i64 %RBP_val.90, -40, !mcsema_real_eip !60
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !60
  store i32 %274, i32* %289, align 4, !mcsema_real_eip !60
  %290 = load i1, i1* %ZF, align 1, !mcsema_real_eip !61
  %RBP_val.102 = load i64, i64* %XBP, align 8
  br i1 %290, label %block_0x201, label %block_0xad, !mcsema_real_eip !61

block_0x201:                                      ; preds = %block_0x99
  %291 = add i64 %RBP_val.102, -8, !mcsema_real_eip !62
  %292 = inttoptr i64 %291 to i32*, !mcsema_real_eip !62
  %293 = load i32, i32* %292, align 4, !mcsema_real_eip !62
  %294 = zext i32 %293 to i64, !mcsema_real_eip !62
  store i64 %294, i64* %XAX, align 8, !mcsema_real_eip !62
  %295 = add i32 %293, 19, !mcsema_real_eip !63
  %296 = xor i32 %295, %293, !mcsema_real_eip !63
  %297 = and i32 %296, 16
  %298 = icmp eq i32 %297, 0
  store i1 %298, i1* %AF, align 1, !mcsema_real_eip !63
  %299 = icmp slt i32 %295, 0
  store i1 %299, i1* %SF, align 1, !mcsema_real_eip !63
  %300 = icmp eq i32 %295, 0, !mcsema_real_eip !63
  store i1 %300, i1* %ZF, align 1, !mcsema_real_eip !63
  %301 = xor i32 %293, -2147483648, !mcsema_real_eip !63
  %302 = and i32 %296, %301, !mcsema_real_eip !63
  %303 = icmp slt i32 %302, 0
  store i1 %303, i1* %OF, align 1, !mcsema_real_eip !63
  %304 = trunc i32 %295 to i8, !mcsema_real_eip !63
  %305 = tail call i8 @llvm.ctpop.i8(i8 %304), !mcsema_real_eip !63
  %306 = and i8 %305, 1
  %307 = icmp eq i8 %306, 0
  store i1 %307, i1* %PF, align 1, !mcsema_real_eip !63
  %308 = icmp ugt i32 %293, -20
  br label %block_0x2c8, !mcsema_real_eip !64

block_0xad:                                       ; preds = %block_0x99
  %309 = add i64 %RBP_val.102, -12, !mcsema_real_eip !65
  %310 = inttoptr i64 %309 to i32*, !mcsema_real_eip !65
  %311 = load i32, i32* %310, align 4, !mcsema_real_eip !65
  %312 = add i32 %311, -255
  %313 = xor i32 %312, %311, !mcsema_real_eip !66
  %314 = and i32 %313, 16
  %315 = icmp eq i32 %314, 0
  store i1 %315, i1* %AF, align 1, !mcsema_real_eip !66
  %316 = trunc i32 %312 to i8, !mcsema_real_eip !66
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !66
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF, align 1, !mcsema_real_eip !66
  %320 = icmp eq i32 %312, 0, !mcsema_real_eip !66
  store i1 %320, i1* %ZF, align 1, !mcsema_real_eip !66
  %321 = icmp slt i32 %312, 0
  store i1 %321, i1* %SF, align 1, !mcsema_real_eip !66
  %322 = icmp ult i32 %311, 255, !mcsema_real_eip !66
  store i1 %322, i1* %CF, align 1, !mcsema_real_eip !66
  %323 = and i32 %313, %311, !mcsema_real_eip !66
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !66
  %325 = zext i32 %312 to i64, !mcsema_real_eip !66
  store i64 %325, i64* %XAX, align 8, !mcsema_real_eip !66
  %326 = add i64 %RBP_val.102, -44, !mcsema_real_eip !67
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !67
  store i32 %312, i32* %327, align 4, !mcsema_real_eip !67
  %328 = load i1, i1* %ZF, align 1, !mcsema_real_eip !68
  %RBP_val.114 = load i64, i64* %XBP, align 8
  br i1 %328, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !68

block_0x20f:                                      ; preds = %block_0xad
  %329 = add i64 %RBP_val.114, -8, !mcsema_real_eip !69
  %330 = inttoptr i64 %329 to i32*, !mcsema_real_eip !69
  %331 = load i32, i32* %330, align 4, !mcsema_real_eip !69
  %332 = zext i32 %331 to i64, !mcsema_real_eip !69
  store i64 %332, i64* %XAX, align 8, !mcsema_real_eip !69
  %333 = add i32 %331, 255, !mcsema_real_eip !70
  %334 = xor i32 %333, %331, !mcsema_real_eip !70
  %335 = and i32 %334, 16
  %336 = icmp eq i32 %335, 0
  store i1 %336, i1* %AF, align 1, !mcsema_real_eip !70
  %337 = icmp slt i32 %333, 0
  store i1 %337, i1* %SF, align 1, !mcsema_real_eip !70
  %338 = icmp eq i32 %333, 0, !mcsema_real_eip !70
  store i1 %338, i1* %ZF, align 1, !mcsema_real_eip !70
  %339 = xor i32 %331, -2147483648, !mcsema_real_eip !70
  %340 = and i32 %334, %339, !mcsema_real_eip !70
  %341 = icmp slt i32 %340, 0
  store i1 %341, i1* %OF, align 1, !mcsema_real_eip !70
  %342 = trunc i32 %333 to i8, !mcsema_real_eip !70
  %343 = tail call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !70
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  store i1 %345, i1* %PF, align 1, !mcsema_real_eip !70
  %346 = icmp ugt i32 %331, -256
  br label %block_0x2c8, !mcsema_real_eip !71

block_0xc3:                                       ; preds = %block_0xad
  %347 = add i64 %RBP_val.114, -12, !mcsema_real_eip !72
  %348 = inttoptr i64 %347 to i32*, !mcsema_real_eip !72
  %349 = load i32, i32* %348, align 4, !mcsema_real_eip !72
  %350 = add i32 %349, -74633
  %351 = xor i32 %350, %349, !mcsema_real_eip !73
  %352 = and i32 %351, 16, !mcsema_real_eip !73
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !73
  store i1 %353, i1* %AF, align 1, !mcsema_real_eip !73
  %354 = trunc i32 %350 to i8, !mcsema_real_eip !73
  %355 = tail call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !73
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  store i1 %357, i1* %PF, align 1, !mcsema_real_eip !73
  %358 = icmp eq i32 %350, 0, !mcsema_real_eip !73
  store i1 %358, i1* %ZF, align 1, !mcsema_real_eip !73
  %359 = icmp slt i32 %350, 0
  store i1 %359, i1* %SF, align 1, !mcsema_real_eip !73
  %360 = icmp ult i32 %349, 74633, !mcsema_real_eip !73
  store i1 %360, i1* %CF, align 1, !mcsema_real_eip !73
  %361 = and i32 %351, %349, !mcsema_real_eip !73
  %362 = icmp slt i32 %361, 0
  store i1 %362, i1* %OF, align 1, !mcsema_real_eip !73
  %363 = zext i32 %350 to i64, !mcsema_real_eip !73
  store i64 %363, i64* %XAX, align 8, !mcsema_real_eip !73
  %364 = add i64 %RBP_val.114, -48, !mcsema_real_eip !74
  %365 = inttoptr i64 %364 to i32*, !mcsema_real_eip !74
  store i32 %350, i32* %365, align 4, !mcsema_real_eip !74
  %366 = load i1, i1* %ZF, align 1, !mcsema_real_eip !75
  %RBP_val.126 = load i64, i64* %XBP, align 8
  br i1 %366, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !75

block_0x21f:                                      ; preds = %block_0xc3
  %367 = add i64 %RBP_val.126, -8, !mcsema_real_eip !76
  %368 = inttoptr i64 %367 to i32*, !mcsema_real_eip !76
  %369 = load i32, i32* %368, align 4, !mcsema_real_eip !76
  %370 = zext i32 %369 to i64, !mcsema_real_eip !76
  store i64 %370, i64* %XAX, align 8, !mcsema_real_eip !76
  %371 = add i32 %369, 74633, !mcsema_real_eip !77
  %372 = xor i32 %371, %369, !mcsema_real_eip !77
  %373 = and i32 %372, 16, !mcsema_real_eip !77
  %374 = icmp ne i32 %373, 0, !mcsema_real_eip !77
  store i1 %374, i1* %AF, align 1, !mcsema_real_eip !77
  %375 = icmp slt i32 %371, 0
  store i1 %375, i1* %SF, align 1, !mcsema_real_eip !77
  %376 = icmp eq i32 %371, 0, !mcsema_real_eip !77
  store i1 %376, i1* %ZF, align 1, !mcsema_real_eip !77
  %377 = xor i32 %369, -2147483648, !mcsema_real_eip !77
  %378 = and i32 %372, %377, !mcsema_real_eip !77
  %379 = icmp slt i32 %378, 0
  store i1 %379, i1* %OF, align 1, !mcsema_real_eip !77
  %380 = trunc i32 %371 to i8, !mcsema_real_eip !77
  %381 = tail call i8 @llvm.ctpop.i8(i8 %380), !mcsema_real_eip !77
  %382 = and i8 %381, 1
  %383 = icmp eq i8 %382, 0
  store i1 %383, i1* %PF, align 1, !mcsema_real_eip !77
  %384 = icmp ugt i32 %369, -74634
  br label %block_0x2c8, !mcsema_real_eip !78

block_0xd9:                                       ; preds = %block_0xc3
  %385 = add i64 %RBP_val.126, -12, !mcsema_real_eip !79
  %386 = inttoptr i64 %385 to i32*, !mcsema_real_eip !79
  %387 = load i32, i32* %386, align 4, !mcsema_real_eip !79
  %388 = add i32 %387, -74634
  %389 = xor i32 %388, %387, !mcsema_real_eip !80
  %390 = and i32 %389, 16, !mcsema_real_eip !80
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !80
  store i1 %391, i1* %AF, align 1, !mcsema_real_eip !80
  %392 = trunc i32 %388 to i8, !mcsema_real_eip !80
  %393 = tail call i8 @llvm.ctpop.i8(i8 %392), !mcsema_real_eip !80
  %394 = and i8 %393, 1
  %395 = icmp eq i8 %394, 0
  store i1 %395, i1* %PF, align 1, !mcsema_real_eip !80
  %396 = icmp eq i32 %388, 0, !mcsema_real_eip !80
  store i1 %396, i1* %ZF, align 1, !mcsema_real_eip !80
  %397 = icmp slt i32 %388, 0
  store i1 %397, i1* %SF, align 1, !mcsema_real_eip !80
  %398 = icmp ult i32 %387, 74634, !mcsema_real_eip !80
  store i1 %398, i1* %CF, align 1, !mcsema_real_eip !80
  %399 = and i32 %389, %387, !mcsema_real_eip !80
  %400 = icmp slt i32 %399, 0
  store i1 %400, i1* %OF, align 1, !mcsema_real_eip !80
  %401 = zext i32 %388 to i64, !mcsema_real_eip !80
  store i64 %401, i64* %XAX, align 8, !mcsema_real_eip !80
  %402 = add i64 %RBP_val.126, -52, !mcsema_real_eip !81
  %403 = inttoptr i64 %402 to i32*, !mcsema_real_eip !81
  store i32 %388, i32* %403, align 4, !mcsema_real_eip !81
  %404 = load i1, i1* %ZF, align 1, !mcsema_real_eip !82
  %RBP_val.138 = load i64, i64* %XBP, align 8
  br i1 %404, label %block_0x22f, label %block_0xef, !mcsema_real_eip !82

block_0x22f:                                      ; preds = %block_0xd9
  %405 = add i64 %RBP_val.138, -8, !mcsema_real_eip !83
  %406 = inttoptr i64 %405 to i32*, !mcsema_real_eip !83
  %407 = load i32, i32* %406, align 4, !mcsema_real_eip !83
  %408 = zext i32 %407 to i64, !mcsema_real_eip !83
  store i64 %408, i64* %XAX, align 8, !mcsema_real_eip !83
  %409 = add i32 %407, 74634, !mcsema_real_eip !84
  %410 = xor i32 %409, %407, !mcsema_real_eip !84
  %411 = and i32 %410, 16, !mcsema_real_eip !84
  %412 = icmp ne i32 %411, 0, !mcsema_real_eip !84
  store i1 %412, i1* %AF, align 1, !mcsema_real_eip !84
  %413 = icmp slt i32 %409, 0
  store i1 %413, i1* %SF, align 1, !mcsema_real_eip !84
  %414 = icmp eq i32 %409, 0, !mcsema_real_eip !84
  store i1 %414, i1* %ZF, align 1, !mcsema_real_eip !84
  %415 = xor i32 %407, -2147483648, !mcsema_real_eip !84
  %416 = and i32 %410, %415, !mcsema_real_eip !84
  %417 = icmp slt i32 %416, 0
  store i1 %417, i1* %OF, align 1, !mcsema_real_eip !84
  %418 = trunc i32 %409 to i8, !mcsema_real_eip !84
  %419 = tail call i8 @llvm.ctpop.i8(i8 %418), !mcsema_real_eip !84
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  store i1 %421, i1* %PF, align 1, !mcsema_real_eip !84
  %422 = icmp ugt i32 %407, -74635
  br label %block_0x2c8, !mcsema_real_eip !85

block_0xef:                                       ; preds = %block_0xd9
  %423 = add i64 %RBP_val.138, -12, !mcsema_real_eip !86
  %424 = inttoptr i64 %423 to i32*, !mcsema_real_eip !86
  %425 = load i32, i32* %424, align 4, !mcsema_real_eip !86
  %426 = add i32 %425, -74635
  %427 = xor i32 %426, %425, !mcsema_real_eip !87
  %428 = and i32 %427, 16, !mcsema_real_eip !87
  %429 = icmp ne i32 %428, 0, !mcsema_real_eip !87
  store i1 %429, i1* %AF, align 1, !mcsema_real_eip !87
  %430 = trunc i32 %426 to i8, !mcsema_real_eip !87
  %431 = tail call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !87
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  store i1 %433, i1* %PF, align 1, !mcsema_real_eip !87
  %434 = icmp eq i32 %426, 0, !mcsema_real_eip !87
  store i1 %434, i1* %ZF, align 1, !mcsema_real_eip !87
  %435 = icmp slt i32 %426, 0
  store i1 %435, i1* %SF, align 1, !mcsema_real_eip !87
  %436 = icmp ult i32 %425, 74635, !mcsema_real_eip !87
  store i1 %436, i1* %CF, align 1, !mcsema_real_eip !87
  %437 = and i32 %427, %425, !mcsema_real_eip !87
  %438 = icmp slt i32 %437, 0
  store i1 %438, i1* %OF, align 1, !mcsema_real_eip !87
  %439 = zext i32 %426 to i64, !mcsema_real_eip !87
  store i64 %439, i64* %XAX, align 8, !mcsema_real_eip !87
  %440 = add i64 %RBP_val.138, -56, !mcsema_real_eip !88
  %441 = inttoptr i64 %440 to i32*, !mcsema_real_eip !88
  store i32 %426, i32* %441, align 4, !mcsema_real_eip !88
  %442 = load i1, i1* %ZF, align 1, !mcsema_real_eip !89
  %RBP_val.150 = load i64, i64* %XBP, align 8
  br i1 %442, label %block_0x23f, label %block_0x105, !mcsema_real_eip !89

block_0x23f:                                      ; preds = %block_0xef
  %443 = add i64 %RBP_val.150, -8, !mcsema_real_eip !90
  %444 = inttoptr i64 %443 to i32*, !mcsema_real_eip !90
  %445 = load i32, i32* %444, align 4, !mcsema_real_eip !90
  %446 = zext i32 %445 to i64, !mcsema_real_eip !90
  store i64 %446, i64* %XAX, align 8, !mcsema_real_eip !90
  %447 = add i32 %445, 74635, !mcsema_real_eip !91
  %448 = xor i32 %447, %445, !mcsema_real_eip !91
  %449 = and i32 %448, 16, !mcsema_real_eip !91
  %450 = icmp ne i32 %449, 0, !mcsema_real_eip !91
  store i1 %450, i1* %AF, align 1, !mcsema_real_eip !91
  %451 = icmp slt i32 %447, 0
  store i1 %451, i1* %SF, align 1, !mcsema_real_eip !91
  %452 = icmp eq i32 %447, 0, !mcsema_real_eip !91
  store i1 %452, i1* %ZF, align 1, !mcsema_real_eip !91
  %453 = xor i32 %445, -2147483648, !mcsema_real_eip !91
  %454 = and i32 %448, %453, !mcsema_real_eip !91
  %455 = icmp slt i32 %454, 0
  store i1 %455, i1* %OF, align 1, !mcsema_real_eip !91
  %456 = trunc i32 %447 to i8, !mcsema_real_eip !91
  %457 = tail call i8 @llvm.ctpop.i8(i8 %456), !mcsema_real_eip !91
  %458 = and i8 %457, 1
  %459 = icmp eq i8 %458, 0
  store i1 %459, i1* %PF, align 1, !mcsema_real_eip !91
  %460 = icmp ugt i32 %445, -74636
  br label %block_0x2c8, !mcsema_real_eip !92

block_0x105:                                      ; preds = %block_0xef
  %461 = add i64 %RBP_val.150, -12, !mcsema_real_eip !93
  %462 = inttoptr i64 %461 to i32*, !mcsema_real_eip !93
  %463 = load i32, i32* %462, align 4, !mcsema_real_eip !93
  %464 = add i32 %463, -74636
  %465 = xor i32 %464, %463, !mcsema_real_eip !94
  %466 = and i32 %465, 16, !mcsema_real_eip !94
  %467 = icmp ne i32 %466, 0, !mcsema_real_eip !94
  store i1 %467, i1* %AF, align 1, !mcsema_real_eip !94
  %468 = trunc i32 %464 to i8, !mcsema_real_eip !94
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !94
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF, align 1, !mcsema_real_eip !94
  %472 = icmp eq i32 %464, 0, !mcsema_real_eip !94
  store i1 %472, i1* %ZF, align 1, !mcsema_real_eip !94
  %473 = icmp slt i32 %464, 0
  store i1 %473, i1* %SF, align 1, !mcsema_real_eip !94
  %474 = icmp ult i32 %463, 74636, !mcsema_real_eip !94
  store i1 %474, i1* %CF, align 1, !mcsema_real_eip !94
  %475 = and i32 %465, %463, !mcsema_real_eip !94
  %476 = icmp slt i32 %475, 0
  store i1 %476, i1* %OF, align 1, !mcsema_real_eip !94
  %477 = zext i32 %464 to i64, !mcsema_real_eip !94
  store i64 %477, i64* %XAX, align 8, !mcsema_real_eip !94
  %478 = add i64 %RBP_val.150, -60, !mcsema_real_eip !95
  %479 = inttoptr i64 %478 to i32*, !mcsema_real_eip !95
  store i32 %464, i32* %479, align 4, !mcsema_real_eip !95
  %480 = load i1, i1* %ZF, align 1, !mcsema_real_eip !96
  %RBP_val.162 = load i64, i64* %XBP, align 8
  br i1 %480, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !96

block_0x24f:                                      ; preds = %block_0x105
  %481 = add i64 %RBP_val.162, -8, !mcsema_real_eip !97
  %482 = inttoptr i64 %481 to i32*, !mcsema_real_eip !97
  %483 = load i32, i32* %482, align 4, !mcsema_real_eip !97
  %484 = zext i32 %483 to i64, !mcsema_real_eip !97
  store i64 %484, i64* %XAX, align 8, !mcsema_real_eip !97
  %485 = add i32 %483, 74636, !mcsema_real_eip !98
  %486 = xor i32 %485, %483, !mcsema_real_eip !98
  %487 = and i32 %486, 16, !mcsema_real_eip !98
  %488 = icmp ne i32 %487, 0, !mcsema_real_eip !98
  store i1 %488, i1* %AF, align 1, !mcsema_real_eip !98
  %489 = icmp slt i32 %485, 0
  store i1 %489, i1* %SF, align 1, !mcsema_real_eip !98
  %490 = icmp eq i32 %485, 0, !mcsema_real_eip !98
  store i1 %490, i1* %ZF, align 1, !mcsema_real_eip !98
  %491 = xor i32 %483, -2147483648, !mcsema_real_eip !98
  %492 = and i32 %486, %491, !mcsema_real_eip !98
  %493 = icmp slt i32 %492, 0
  store i1 %493, i1* %OF, align 1, !mcsema_real_eip !98
  %494 = trunc i32 %485 to i8, !mcsema_real_eip !98
  %495 = tail call i8 @llvm.ctpop.i8(i8 %494), !mcsema_real_eip !98
  %496 = and i8 %495, 1
  %497 = icmp eq i8 %496, 0
  store i1 %497, i1* %PF, align 1, !mcsema_real_eip !98
  %498 = icmp ugt i32 %483, -74637
  br label %block_0x2c8, !mcsema_real_eip !99

block_0x11b:                                      ; preds = %block_0x105
  %499 = add i64 %RBP_val.162, -12, !mcsema_real_eip !100
  %500 = inttoptr i64 %499 to i32*, !mcsema_real_eip !100
  %501 = load i32, i32* %500, align 4, !mcsema_real_eip !100
  %502 = add i32 %501, -74637
  %503 = xor i32 %502, %501, !mcsema_real_eip !101
  %504 = and i32 %503, 16, !mcsema_real_eip !101
  %505 = icmp ne i32 %504, 0, !mcsema_real_eip !101
  store i1 %505, i1* %AF, align 1, !mcsema_real_eip !101
  %506 = trunc i32 %502 to i8, !mcsema_real_eip !101
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !101
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF, align 1, !mcsema_real_eip !101
  %510 = icmp eq i32 %502, 0, !mcsema_real_eip !101
  store i1 %510, i1* %ZF, align 1, !mcsema_real_eip !101
  %511 = icmp slt i32 %502, 0
  store i1 %511, i1* %SF, align 1, !mcsema_real_eip !101
  %512 = icmp ult i32 %501, 74637, !mcsema_real_eip !101
  store i1 %512, i1* %CF, align 1, !mcsema_real_eip !101
  %513 = and i32 %503, %501, !mcsema_real_eip !101
  %514 = icmp slt i32 %513, 0
  store i1 %514, i1* %OF, align 1, !mcsema_real_eip !101
  %515 = zext i32 %502 to i64, !mcsema_real_eip !101
  store i64 %515, i64* %XAX, align 8, !mcsema_real_eip !101
  %516 = add i64 %RBP_val.162, -64, !mcsema_real_eip !102
  %517 = inttoptr i64 %516 to i32*, !mcsema_real_eip !102
  store i32 %502, i32* %517, align 4, !mcsema_real_eip !102
  %518 = load i1, i1* %ZF, align 1, !mcsema_real_eip !103
  %RBP_val.174 = load i64, i64* %XBP, align 8
  br i1 %518, label %block_0x25f, label %block_0x131, !mcsema_real_eip !103

block_0x25f:                                      ; preds = %block_0x11b
  %519 = add i64 %RBP_val.174, -8, !mcsema_real_eip !104
  %520 = inttoptr i64 %519 to i32*, !mcsema_real_eip !104
  %521 = load i32, i32* %520, align 4, !mcsema_real_eip !104
  %522 = zext i32 %521 to i64, !mcsema_real_eip !104
  store i64 %522, i64* %XAX, align 8, !mcsema_real_eip !104
  %523 = add i32 %521, 74637, !mcsema_real_eip !105
  %524 = xor i32 %523, %521, !mcsema_real_eip !105
  %525 = and i32 %524, 16, !mcsema_real_eip !105
  %526 = icmp ne i32 %525, 0, !mcsema_real_eip !105
  store i1 %526, i1* %AF, align 1, !mcsema_real_eip !105
  %527 = icmp slt i32 %523, 0
  store i1 %527, i1* %SF, align 1, !mcsema_real_eip !105
  %528 = icmp eq i32 %523, 0, !mcsema_real_eip !105
  store i1 %528, i1* %ZF, align 1, !mcsema_real_eip !105
  %529 = xor i32 %521, -2147483648, !mcsema_real_eip !105
  %530 = and i32 %524, %529, !mcsema_real_eip !105
  %531 = icmp slt i32 %530, 0
  store i1 %531, i1* %OF, align 1, !mcsema_real_eip !105
  %532 = trunc i32 %523 to i8, !mcsema_real_eip !105
  %533 = tail call i8 @llvm.ctpop.i8(i8 %532), !mcsema_real_eip !105
  %534 = and i8 %533, 1
  %535 = icmp eq i8 %534, 0
  store i1 %535, i1* %PF, align 1, !mcsema_real_eip !105
  %536 = icmp ugt i32 %521, -74638
  br label %block_0x2c8, !mcsema_real_eip !106

block_0x131:                                      ; preds = %block_0x11b
  %537 = add i64 %RBP_val.174, -12, !mcsema_real_eip !107
  %538 = inttoptr i64 %537 to i32*, !mcsema_real_eip !107
  %539 = load i32, i32* %538, align 4, !mcsema_real_eip !107
  %540 = add i32 %539, -74639
  %541 = xor i32 %540, %539, !mcsema_real_eip !108
  %542 = and i32 %541, 16, !mcsema_real_eip !108
  %543 = icmp ne i32 %542, 0, !mcsema_real_eip !108
  store i1 %543, i1* %AF, align 1, !mcsema_real_eip !108
  %544 = trunc i32 %540 to i8, !mcsema_real_eip !108
  %545 = tail call i8 @llvm.ctpop.i8(i8 %544), !mcsema_real_eip !108
  %546 = and i8 %545, 1
  %547 = icmp eq i8 %546, 0
  store i1 %547, i1* %PF, align 1, !mcsema_real_eip !108
  %548 = icmp eq i32 %540, 0, !mcsema_real_eip !108
  store i1 %548, i1* %ZF, align 1, !mcsema_real_eip !108
  %549 = icmp slt i32 %540, 0
  store i1 %549, i1* %SF, align 1, !mcsema_real_eip !108
  %550 = icmp ult i32 %539, 74639, !mcsema_real_eip !108
  store i1 %550, i1* %CF, align 1, !mcsema_real_eip !108
  %551 = and i32 %541, %539, !mcsema_real_eip !108
  %552 = icmp slt i32 %551, 0
  store i1 %552, i1* %OF, align 1, !mcsema_real_eip !108
  %553 = zext i32 %540 to i64, !mcsema_real_eip !108
  store i64 %553, i64* %XAX, align 8, !mcsema_real_eip !108
  %554 = add i64 %RBP_val.174, -68, !mcsema_real_eip !109
  %555 = inttoptr i64 %554 to i32*, !mcsema_real_eip !109
  store i32 %540, i32* %555, align 4, !mcsema_real_eip !109
  %556 = load i1, i1* %ZF, align 1, !mcsema_real_eip !110
  %RBP_val.186 = load i64, i64* %XBP, align 8
  br i1 %556, label %block_0x26f, label %block_0x147, !mcsema_real_eip !110

block_0x26f:                                      ; preds = %block_0x131
  %557 = add i64 %RBP_val.186, -8, !mcsema_real_eip !111
  %558 = inttoptr i64 %557 to i32*, !mcsema_real_eip !111
  %559 = load i32, i32* %558, align 4, !mcsema_real_eip !111
  %560 = zext i32 %559 to i64, !mcsema_real_eip !111
  store i64 %560, i64* %XAX, align 8, !mcsema_real_eip !111
  %561 = add i32 %559, 74639, !mcsema_real_eip !112
  %562 = xor i32 %561, %559, !mcsema_real_eip !112
  %563 = and i32 %562, 16, !mcsema_real_eip !112
  %564 = icmp ne i32 %563, 0, !mcsema_real_eip !112
  store i1 %564, i1* %AF, align 1, !mcsema_real_eip !112
  %565 = icmp slt i32 %561, 0
  store i1 %565, i1* %SF, align 1, !mcsema_real_eip !112
  %566 = icmp eq i32 %561, 0, !mcsema_real_eip !112
  store i1 %566, i1* %ZF, align 1, !mcsema_real_eip !112
  %567 = xor i32 %559, -2147483648, !mcsema_real_eip !112
  %568 = and i32 %562, %567, !mcsema_real_eip !112
  %569 = icmp slt i32 %568, 0
  store i1 %569, i1* %OF, align 1, !mcsema_real_eip !112
  %570 = trunc i32 %561 to i8, !mcsema_real_eip !112
  %571 = tail call i8 @llvm.ctpop.i8(i8 %570), !mcsema_real_eip !112
  %572 = and i8 %571, 1
  %573 = icmp eq i8 %572, 0
  store i1 %573, i1* %PF, align 1, !mcsema_real_eip !112
  %574 = icmp ugt i32 %559, -74640
  br label %block_0x2c8, !mcsema_real_eip !113

block_0x147:                                      ; preds = %block_0x131
  %575 = add i64 %RBP_val.186, -12, !mcsema_real_eip !114
  %576 = inttoptr i64 %575 to i32*, !mcsema_real_eip !114
  %577 = load i32, i32* %576, align 4, !mcsema_real_eip !114
  %578 = add i32 %577, -74640
  %579 = xor i32 %578, %577, !mcsema_real_eip !115
  %580 = and i32 %579, 16
  %581 = icmp eq i32 %580, 0
  store i1 %581, i1* %AF, align 1, !mcsema_real_eip !115
  %582 = trunc i32 %578 to i8, !mcsema_real_eip !115
  %583 = tail call i8 @llvm.ctpop.i8(i8 %582), !mcsema_real_eip !115
  %584 = and i8 %583, 1
  %585 = icmp eq i8 %584, 0
  store i1 %585, i1* %PF, align 1, !mcsema_real_eip !115
  %586 = icmp eq i32 %578, 0, !mcsema_real_eip !115
  store i1 %586, i1* %ZF, align 1, !mcsema_real_eip !115
  %587 = icmp slt i32 %578, 0
  store i1 %587, i1* %SF, align 1, !mcsema_real_eip !115
  %588 = icmp ult i32 %577, 74640, !mcsema_real_eip !115
  store i1 %588, i1* %CF, align 1, !mcsema_real_eip !115
  %589 = and i32 %579, %577, !mcsema_real_eip !115
  %590 = icmp slt i32 %589, 0
  store i1 %590, i1* %OF, align 1, !mcsema_real_eip !115
  %591 = zext i32 %578 to i64, !mcsema_real_eip !115
  store i64 %591, i64* %XAX, align 8, !mcsema_real_eip !115
  %592 = add i64 %RBP_val.186, -72, !mcsema_real_eip !116
  %593 = inttoptr i64 %592 to i32*, !mcsema_real_eip !116
  store i32 %578, i32* %593, align 4, !mcsema_real_eip !116
  %594 = load i1, i1* %ZF, align 1, !mcsema_real_eip !117
  %RBP_val.198 = load i64, i64* %XBP, align 8
  br i1 %594, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !117

block_0x27f:                                      ; preds = %block_0x147
  %595 = add i64 %RBP_val.198, -8, !mcsema_real_eip !118
  %596 = inttoptr i64 %595 to i32*, !mcsema_real_eip !118
  %597 = load i32, i32* %596, align 4, !mcsema_real_eip !118
  %598 = zext i32 %597 to i64, !mcsema_real_eip !118
  store i64 %598, i64* %XAX, align 8, !mcsema_real_eip !118
  %599 = add i32 %597, 74640, !mcsema_real_eip !119
  %600 = xor i32 %599, %597, !mcsema_real_eip !119
  %601 = and i32 %600, 16
  %602 = icmp eq i32 %601, 0
  store i1 %602, i1* %AF, align 1, !mcsema_real_eip !119
  %603 = icmp slt i32 %599, 0
  store i1 %603, i1* %SF, align 1, !mcsema_real_eip !119
  %604 = icmp eq i32 %599, 0, !mcsema_real_eip !119
  store i1 %604, i1* %ZF, align 1, !mcsema_real_eip !119
  %605 = xor i32 %597, -2147483648, !mcsema_real_eip !119
  %606 = and i32 %600, %605, !mcsema_real_eip !119
  %607 = icmp slt i32 %606, 0
  store i1 %607, i1* %OF, align 1, !mcsema_real_eip !119
  %608 = trunc i32 %599 to i8, !mcsema_real_eip !119
  %609 = tail call i8 @llvm.ctpop.i8(i8 %608), !mcsema_real_eip !119
  %610 = and i8 %609, 1
  %611 = icmp eq i8 %610, 0
  store i1 %611, i1* %PF, align 1, !mcsema_real_eip !119
  %612 = icmp ugt i32 %597, -74641
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x15d:                                      ; preds = %block_0x147
  %613 = add i64 %RBP_val.198, -12, !mcsema_real_eip !121
  %614 = inttoptr i64 %613 to i32*, !mcsema_real_eip !121
  %615 = load i32, i32* %614, align 4, !mcsema_real_eip !121
  %616 = add i32 %615, -74641
  %617 = xor i32 %616, %615, !mcsema_real_eip !122
  %618 = and i32 %617, 16
  %619 = icmp eq i32 %618, 0
  store i1 %619, i1* %AF, align 1, !mcsema_real_eip !122
  %620 = trunc i32 %616 to i8, !mcsema_real_eip !122
  %621 = tail call i8 @llvm.ctpop.i8(i8 %620), !mcsema_real_eip !122
  %622 = and i8 %621, 1
  %623 = icmp eq i8 %622, 0
  store i1 %623, i1* %PF, align 1, !mcsema_real_eip !122
  %624 = icmp eq i32 %616, 0, !mcsema_real_eip !122
  store i1 %624, i1* %ZF, align 1, !mcsema_real_eip !122
  %625 = icmp slt i32 %616, 0
  store i1 %625, i1* %SF, align 1, !mcsema_real_eip !122
  %626 = icmp ult i32 %615, 74641, !mcsema_real_eip !122
  store i1 %626, i1* %CF, align 1, !mcsema_real_eip !122
  %627 = and i32 %617, %615, !mcsema_real_eip !122
  %628 = icmp slt i32 %627, 0
  store i1 %628, i1* %OF, align 1, !mcsema_real_eip !122
  %629 = zext i32 %616 to i64, !mcsema_real_eip !122
  store i64 %629, i64* %XAX, align 8, !mcsema_real_eip !122
  %630 = add i64 %RBP_val.198, -76, !mcsema_real_eip !123
  %631 = inttoptr i64 %630 to i32*, !mcsema_real_eip !123
  store i32 %616, i32* %631, align 4, !mcsema_real_eip !123
  %632 = load i1, i1* %ZF, align 1, !mcsema_real_eip !124
  %RBP_val.210 = load i64, i64* %XBP, align 8
  br i1 %632, label %block_0x28f, label %block_0x173, !mcsema_real_eip !124

block_0x28f:                                      ; preds = %block_0x15d
  %633 = add i64 %RBP_val.210, -8, !mcsema_real_eip !125
  %634 = inttoptr i64 %633 to i32*, !mcsema_real_eip !125
  %635 = load i32, i32* %634, align 4, !mcsema_real_eip !125
  %636 = zext i32 %635 to i64, !mcsema_real_eip !125
  store i64 %636, i64* %XAX, align 8, !mcsema_real_eip !125
  %637 = add i32 %635, 74641, !mcsema_real_eip !126
  %638 = xor i32 %637, %635, !mcsema_real_eip !126
  %639 = and i32 %638, 16
  %640 = icmp eq i32 %639, 0
  store i1 %640, i1* %AF, align 1, !mcsema_real_eip !126
  %641 = icmp slt i32 %637, 0
  store i1 %641, i1* %SF, align 1, !mcsema_real_eip !126
  %642 = icmp eq i32 %637, 0, !mcsema_real_eip !126
  store i1 %642, i1* %ZF, align 1, !mcsema_real_eip !126
  %643 = xor i32 %635, -2147483648, !mcsema_real_eip !126
  %644 = and i32 %638, %643, !mcsema_real_eip !126
  %645 = icmp slt i32 %644, 0
  store i1 %645, i1* %OF, align 1, !mcsema_real_eip !126
  %646 = trunc i32 %637 to i8, !mcsema_real_eip !126
  %647 = tail call i8 @llvm.ctpop.i8(i8 %646), !mcsema_real_eip !126
  %648 = and i8 %647, 1
  %649 = icmp eq i8 %648, 0
  store i1 %649, i1* %PF, align 1, !mcsema_real_eip !126
  %650 = icmp ugt i32 %635, -74642
  br label %block_0x2c8, !mcsema_real_eip !127

block_0x173:                                      ; preds = %block_0x15d
  %651 = add i64 %RBP_val.210, -12, !mcsema_real_eip !128
  %652 = inttoptr i64 %651 to i32*, !mcsema_real_eip !128
  %653 = load i32, i32* %652, align 4, !mcsema_real_eip !128
  %654 = add i32 %653, -74642
  %655 = xor i32 %654, %653, !mcsema_real_eip !129
  %656 = and i32 %655, 16
  %657 = icmp eq i32 %656, 0
  store i1 %657, i1* %AF, align 1, !mcsema_real_eip !129
  %658 = trunc i32 %654 to i8, !mcsema_real_eip !129
  %659 = tail call i8 @llvm.ctpop.i8(i8 %658), !mcsema_real_eip !129
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  store i1 %661, i1* %PF, align 1, !mcsema_real_eip !129
  %662 = icmp eq i32 %654, 0, !mcsema_real_eip !129
  store i1 %662, i1* %ZF, align 1, !mcsema_real_eip !129
  %663 = icmp slt i32 %654, 0
  store i1 %663, i1* %SF, align 1, !mcsema_real_eip !129
  %664 = icmp ult i32 %653, 74642, !mcsema_real_eip !129
  store i1 %664, i1* %CF, align 1, !mcsema_real_eip !129
  %665 = and i32 %655, %653, !mcsema_real_eip !129
  %666 = icmp slt i32 %665, 0
  store i1 %666, i1* %OF, align 1, !mcsema_real_eip !129
  %667 = zext i32 %654 to i64, !mcsema_real_eip !129
  store i64 %667, i64* %XAX, align 8, !mcsema_real_eip !129
  %668 = add i64 %RBP_val.210, -80, !mcsema_real_eip !130
  %669 = inttoptr i64 %668 to i32*, !mcsema_real_eip !130
  store i32 %654, i32* %669, align 4, !mcsema_real_eip !130
  %670 = load i1, i1* %ZF, align 1, !mcsema_real_eip !131
  %RBP_val.222 = load i64, i64* %XBP, align 8
  br i1 %670, label %block_0x29f, label %block_0x189, !mcsema_real_eip !131

block_0x29f:                                      ; preds = %block_0x173
  %671 = add i64 %RBP_val.222, -8, !mcsema_real_eip !132
  %672 = inttoptr i64 %671 to i32*, !mcsema_real_eip !132
  %673 = load i32, i32* %672, align 4, !mcsema_real_eip !132
  %674 = zext i32 %673 to i64, !mcsema_real_eip !132
  store i64 %674, i64* %XAX, align 8, !mcsema_real_eip !132
  %675 = add i32 %673, 74642, !mcsema_real_eip !133
  %676 = xor i32 %675, %673, !mcsema_real_eip !133
  %677 = and i32 %676, 16
  %678 = icmp eq i32 %677, 0
  store i1 %678, i1* %AF, align 1, !mcsema_real_eip !133
  %679 = icmp slt i32 %675, 0
  store i1 %679, i1* %SF, align 1, !mcsema_real_eip !133
  %680 = icmp eq i32 %675, 0, !mcsema_real_eip !133
  store i1 %680, i1* %ZF, align 1, !mcsema_real_eip !133
  %681 = xor i32 %673, -2147483648, !mcsema_real_eip !133
  %682 = and i32 %676, %681, !mcsema_real_eip !133
  %683 = icmp slt i32 %682, 0
  store i1 %683, i1* %OF, align 1, !mcsema_real_eip !133
  %684 = trunc i32 %675 to i8, !mcsema_real_eip !133
  %685 = tail call i8 @llvm.ctpop.i8(i8 %684), !mcsema_real_eip !133
  %686 = and i8 %685, 1
  %687 = icmp eq i8 %686, 0
  store i1 %687, i1* %PF, align 1, !mcsema_real_eip !133
  %688 = icmp ugt i32 %673, -74643
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x189:                                      ; preds = %block_0x173
  %689 = add i64 %RBP_val.222, -12, !mcsema_real_eip !135
  %690 = inttoptr i64 %689 to i32*, !mcsema_real_eip !135
  %691 = load i32, i32* %690, align 4, !mcsema_real_eip !135
  %692 = add i32 %691, -74643
  %693 = xor i32 %692, %691, !mcsema_real_eip !136
  %694 = and i32 %693, 16
  %695 = icmp eq i32 %694, 0
  store i1 %695, i1* %AF, align 1, !mcsema_real_eip !136
  %696 = trunc i32 %692 to i8, !mcsema_real_eip !136
  %697 = tail call i8 @llvm.ctpop.i8(i8 %696), !mcsema_real_eip !136
  %698 = and i8 %697, 1
  %699 = icmp eq i8 %698, 0
  store i1 %699, i1* %PF, align 1, !mcsema_real_eip !136
  %700 = icmp eq i32 %692, 0, !mcsema_real_eip !136
  store i1 %700, i1* %ZF, align 1, !mcsema_real_eip !136
  %701 = icmp slt i32 %692, 0
  store i1 %701, i1* %SF, align 1, !mcsema_real_eip !136
  %702 = icmp ult i32 %691, 74643, !mcsema_real_eip !136
  store i1 %702, i1* %CF, align 1, !mcsema_real_eip !136
  %703 = and i32 %693, %691, !mcsema_real_eip !136
  %704 = icmp slt i32 %703, 0
  store i1 %704, i1* %OF, align 1, !mcsema_real_eip !136
  %705 = zext i32 %692 to i64, !mcsema_real_eip !136
  store i64 %705, i64* %XAX, align 8, !mcsema_real_eip !136
  %706 = add i64 %RBP_val.222, -84, !mcsema_real_eip !137
  %707 = inttoptr i64 %706 to i32*, !mcsema_real_eip !137
  store i32 %692, i32* %707, align 4, !mcsema_real_eip !137
  %708 = load i1, i1* %ZF, align 1, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, align 8
  %709 = add i64 %RBP_val.234, -8
  %710 = inttoptr i64 %709 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %XAX, align 8
  br i1 %708, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !138

block_0x2af:                                      ; preds = %block_0x189
  %713 = add i32 %711, 74643, !mcsema_real_eip !139
  %714 = xor i32 %713, %711, !mcsema_real_eip !139
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  store i1 %716, i1* %AF, align 1, !mcsema_real_eip !139
  %717 = icmp slt i32 %713, 0
  store i1 %717, i1* %SF, align 1, !mcsema_real_eip !139
  %718 = icmp eq i32 %713, 0, !mcsema_real_eip !139
  store i1 %718, i1* %ZF, align 1, !mcsema_real_eip !139
  %719 = xor i32 %711, -2147483648, !mcsema_real_eip !139
  %720 = and i32 %714, %719, !mcsema_real_eip !139
  %721 = icmp slt i32 %720, 0
  store i1 %721, i1* %OF, align 1, !mcsema_real_eip !139
  %722 = trunc i32 %713 to i8, !mcsema_real_eip !139
  %723 = tail call i8 @llvm.ctpop.i8(i8 %722), !mcsema_real_eip !139
  %724 = and i8 %723, 1
  %725 = icmp eq i8 %724, 0
  store i1 %725, i1* %PF, align 1, !mcsema_real_eip !139
  %726 = icmp ugt i32 %711, -74644
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !141
  %727 = icmp slt i32 %711, 0
  store i1 %727, i1* %SF, align 1, !mcsema_real_eip !141
  %728 = icmp eq i32 %711, 0, !mcsema_real_eip !141
  store i1 %728, i1* %ZF, align 1, !mcsema_real_eip !141
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !141
  %729 = trunc i32 %711 to i8, !mcsema_real_eip !141
  %730 = tail call i8 @llvm.ctpop.i8(i8 %729), !mcsema_real_eip !141
  %731 = and i8 %730, 1
  %732 = icmp eq i8 %731, 0
  store i1 %732, i1* %PF, align 1, !mcsema_real_eip !141
  br label %block_0x2c8
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

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
!10 = !{i64 415}
!11 = !{i64 418}
!12 = !{i64 424}
!13 = !{i64 712}
!14 = !{i64 715}
!15 = !{i64 716}
!16 = !{i64 33}
!17 = !{i64 36}
!18 = !{i64 39}
!19 = !{i64 42}
!20 = !{i64 429}
!21 = !{i64 432}
!22 = !{i64 438}
!23 = !{i64 53}
!24 = !{i64 56}
!25 = !{i64 59}
!26 = !{i64 62}
!27 = !{i64 443}
!28 = !{i64 446}
!29 = !{i64 452}
!30 = !{i64 73}
!31 = !{i64 76}
!32 = !{i64 79}
!33 = !{i64 82}
!34 = !{i64 457}
!35 = !{i64 460}
!36 = !{i64 466}
!37 = !{i64 93}
!38 = !{i64 96}
!39 = !{i64 99}
!40 = !{i64 102}
!41 = !{i64 471}
!42 = !{i64 474}
!43 = !{i64 480}
!44 = !{i64 113}
!45 = !{i64 116}
!46 = !{i64 119}
!47 = !{i64 122}
!48 = !{i64 485}
!49 = !{i64 488}
!50 = !{i64 494}
!51 = !{i64 133}
!52 = !{i64 136}
!53 = !{i64 139}
!54 = !{i64 142}
!55 = !{i64 499}
!56 = !{i64 502}
!57 = !{i64 508}
!58 = !{i64 153}
!59 = !{i64 156}
!60 = !{i64 159}
!61 = !{i64 162}
!62 = !{i64 513}
!63 = !{i64 516}
!64 = !{i64 522}
!65 = !{i64 173}
!66 = !{i64 176}
!67 = !{i64 181}
!68 = !{i64 184}
!69 = !{i64 527}
!70 = !{i64 530}
!71 = !{i64 538}
!72 = !{i64 195}
!73 = !{i64 198}
!74 = !{i64 203}
!75 = !{i64 206}
!76 = !{i64 543}
!77 = !{i64 546}
!78 = !{i64 554}
!79 = !{i64 217}
!80 = !{i64 220}
!81 = !{i64 225}
!82 = !{i64 228}
!83 = !{i64 559}
!84 = !{i64 562}
!85 = !{i64 570}
!86 = !{i64 239}
!87 = !{i64 242}
!88 = !{i64 247}
!89 = !{i64 250}
!90 = !{i64 575}
!91 = !{i64 578}
!92 = !{i64 586}
!93 = !{i64 261}
!94 = !{i64 264}
!95 = !{i64 269}
!96 = !{i64 272}
!97 = !{i64 591}
!98 = !{i64 594}
!99 = !{i64 602}
!100 = !{i64 283}
!101 = !{i64 286}
!102 = !{i64 291}
!103 = !{i64 294}
!104 = !{i64 607}
!105 = !{i64 610}
!106 = !{i64 618}
!107 = !{i64 305}
!108 = !{i64 308}
!109 = !{i64 313}
!110 = !{i64 316}
!111 = !{i64 623}
!112 = !{i64 626}
!113 = !{i64 634}
!114 = !{i64 327}
!115 = !{i64 330}
!116 = !{i64 335}
!117 = !{i64 338}
!118 = !{i64 639}
!119 = !{i64 642}
!120 = !{i64 650}
!121 = !{i64 349}
!122 = !{i64 352}
!123 = !{i64 357}
!124 = !{i64 360}
!125 = !{i64 655}
!126 = !{i64 658}
!127 = !{i64 666}
!128 = !{i64 371}
!129 = !{i64 374}
!130 = !{i64 379}
!131 = !{i64 382}
!132 = !{i64 671}
!133 = !{i64 674}
!134 = !{i64 682}
!135 = !{i64 393}
!136 = !{i64 396}
!137 = !{i64 401}
!138 = !{i64 404}
!139 = !{i64 690}
!140 = !{i64 698}
!141 = !{i64 706}
