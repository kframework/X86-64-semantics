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
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
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
  %.sink2 = phi i1 [ false, %block_0x2bf ], [ %724, %block_0x2af ], [ %686, %block_0x29f ], [ %648, %block_0x28f ], [ %610, %block_0x27f ], [ %572, %block_0x26f ], [ %534, %block_0x25f ], [ %496, %block_0x24f ], [ %458, %block_0x23f ], [ %420, %block_0x22f ], [ %382, %block_0x21f ], [ %344, %block_0x20f ], [ %306, %block_0x201 ], [ %268, %block_0x1f3 ], [ %230, %block_0x1e5 ], [ %192, %block_0x1d7 ], [ %154, %block_0x1c9 ], [ %116, %block_0x1bb ], [ %78, %block_0x1ad ], [ false, %block_0x19f ]
  %EAX_val.242.sink = phi i32 [ %709, %block_0x2bf ], [ %711, %block_0x2af ], [ %673, %block_0x29f ], [ %635, %block_0x28f ], [ %597, %block_0x27f ], [ %559, %block_0x26f ], [ %521, %block_0x25f ], [ %483, %block_0x24f ], [ %445, %block_0x23f ], [ %407, %block_0x22f ], [ %369, %block_0x21f ], [ %331, %block_0x20f ], [ %293, %block_0x201 ], [ %255, %block_0x1f3 ], [ %217, %block_0x1e5 ], [ %179, %block_0x1d7 ], [ %141, %block_0x1c9 ], [ %103, %block_0x1bb ], [ %65, %block_0x1ad ], [ %22, %block_0x19f ]
  %.sink = phi i32* [ %708, %block_0x2bf ], [ %708, %block_0x2af ], [ %670, %block_0x29f ], [ %632, %block_0x28f ], [ %594, %block_0x27f ], [ %556, %block_0x26f ], [ %518, %block_0x25f ], [ %480, %block_0x24f ], [ %442, %block_0x23f ], [ %404, %block_0x22f ], [ %366, %block_0x21f ], [ %328, %block_0x20f ], [ %290, %block_0x201 ], [ %252, %block_0x1f3 ], [ %214, %block_0x1e5 ], [ %176, %block_0x1d7 ], [ %138, %block_0x1c9 ], [ %100, %block_0x1bb ], [ %62, %block_0x1ad ], [ %21, %block_0x19f ]
  store i1 %.sink2, i1* %CF, align 1
  %30 = zext i32 %EAX_val.242.sink to i64
  store i64 %30, i64* %XAX, align 8
  store i32 %EAX_val.242.sink, i32* %.sink, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %31 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !13
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !13
  %34 = zext i32 %33 to i64, !mcsema_real_eip !13
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !13
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %35 = inttoptr i64 %RSP_val.22 to i64*, !mcsema_real_eip !14
  %36 = load i64, i64* %35, align 8, !mcsema_real_eip !14
  store i64 %36, i64* %XBP, align 8, !mcsema_real_eip !14
  %37 = add i64 %RSP_val.22, 8, !mcsema_real_eip !14
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !14
  %38 = add i64 %RSP_val.22, 16, !mcsema_real_eip !15
  %39 = inttoptr i64 %37 to i64*, !mcsema_real_eip !15
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !15
  store i64 %40, i64* %XIP, align 8, !mcsema_real_eip !15
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15

block_0x21:                                       ; preds = %entry
  %41 = add i64 %RBP_val.15, -12, !mcsema_real_eip !16
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !16
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !16
  %44 = add i32 %43, -1
  %45 = xor i32 %44, %43, !mcsema_real_eip !17
  %46 = and i32 %45, 16, !mcsema_real_eip !17
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !17
  store i1 %47, i1* %AF, align 1, !mcsema_real_eip !17
  %48 = trunc i32 %44 to i8, !mcsema_real_eip !17
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !17
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !17
  %52 = icmp eq i32 %44, 0, !mcsema_real_eip !17
  store i1 %52, i1* %ZF, align 1, !mcsema_real_eip !17
  %53 = icmp slt i32 %44, 0
  store i1 %53, i1* %SF, align 1, !mcsema_real_eip !17
  %54 = icmp eq i32 %43, 0
  store i1 %54, i1* %CF, align 1, !mcsema_real_eip !17
  %55 = and i32 %45, %43, !mcsema_real_eip !17
  %56 = icmp slt i32 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !17
  %57 = zext i32 %44 to i64, !mcsema_real_eip !17
  store i64 %57, i64* %XAX, align 8, !mcsema_real_eip !17
  %58 = add i64 %RBP_val.15, -16, !mcsema_real_eip !18
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !18
  store i32 %44, i32* %59, align 4, !mcsema_real_eip !18
  %60 = load i1, i1* %ZF, align 1, !mcsema_real_eip !19
  %RBP_val.30 = load i64, i64* %XBP, align 8
  br i1 %60, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !19

block_0x1ad:                                      ; preds = %block_0x21
  %61 = add i64 %RBP_val.30, -8, !mcsema_real_eip !20
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !20
  %63 = load i32, i32* %62, align 4, !mcsema_real_eip !20
  %64 = zext i32 %63 to i64, !mcsema_real_eip !20
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !20
  %65 = add i32 %63, 1, !mcsema_real_eip !21
  %66 = xor i32 %65, %63, !mcsema_real_eip !21
  %67 = and i32 %66, 16, !mcsema_real_eip !21
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !21
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !21
  %69 = icmp slt i32 %65, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !21
  %70 = icmp eq i32 %65, 0, !mcsema_real_eip !21
  store i1 %70, i1* %ZF, align 1, !mcsema_real_eip !21
  %71 = xor i32 %63, -2147483648, !mcsema_real_eip !21
  %72 = and i32 %66, %71, !mcsema_real_eip !21
  %73 = icmp slt i32 %72, 0
  store i1 %73, i1* %OF, align 1, !mcsema_real_eip !21
  %74 = trunc i32 %65 to i8, !mcsema_real_eip !21
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !21
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !21
  %78 = icmp eq i32 %63, -1
  br label %block_0x2c8, !mcsema_real_eip !22

block_0x35:                                       ; preds = %block_0x21
  %79 = add i64 %RBP_val.30, -12, !mcsema_real_eip !23
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !23
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !23
  %82 = add i32 %81, -2
  %83 = xor i32 %82, %81, !mcsema_real_eip !24
  %84 = and i32 %83, 16, !mcsema_real_eip !24
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !24
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !24
  %86 = trunc i32 %82 to i8, !mcsema_real_eip !24
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !24
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF, align 1, !mcsema_real_eip !24
  %90 = icmp eq i32 %82, 0, !mcsema_real_eip !24
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !24
  %91 = icmp slt i32 %82, 0
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !24
  %92 = icmp ult i32 %81, 2, !mcsema_real_eip !24
  store i1 %92, i1* %CF, align 1, !mcsema_real_eip !24
  %93 = and i32 %83, %81, !mcsema_real_eip !24
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !24
  %95 = zext i32 %82 to i64, !mcsema_real_eip !24
  store i64 %95, i64* %XAX, align 8, !mcsema_real_eip !24
  %96 = add i64 %RBP_val.30, -20, !mcsema_real_eip !25
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !25
  store i32 %82, i32* %97, align 4, !mcsema_real_eip !25
  %98 = load i1, i1* %ZF, align 1, !mcsema_real_eip !26
  %RBP_val.42 = load i64, i64* %XBP, align 8
  br i1 %98, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !26

block_0x1bb:                                      ; preds = %block_0x35
  %99 = add i64 %RBP_val.42, -8, !mcsema_real_eip !27
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !27
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !27
  %102 = zext i32 %101 to i64, !mcsema_real_eip !27
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !27
  %103 = add i32 %101, 2, !mcsema_real_eip !28
  %104 = xor i32 %103, %101, !mcsema_real_eip !28
  %105 = and i32 %104, 16, !mcsema_real_eip !28
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !28
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !28
  %107 = icmp slt i32 %103, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !28
  %108 = icmp eq i32 %103, 0, !mcsema_real_eip !28
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !28
  %109 = xor i32 %101, -2147483648, !mcsema_real_eip !28
  %110 = and i32 %104, %109, !mcsema_real_eip !28
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !28
  %112 = trunc i32 %103 to i8, !mcsema_real_eip !28
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !28
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !28
  %116 = icmp ugt i32 %101, -3
  br label %block_0x2c8, !mcsema_real_eip !29

block_0x49:                                       ; preds = %block_0x35
  %117 = add i64 %RBP_val.42, -12, !mcsema_real_eip !30
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !30
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !30
  %120 = add i32 %119, -4
  %121 = xor i32 %120, %119, !mcsema_real_eip !31
  %122 = and i32 %121, 16, !mcsema_real_eip !31
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !31
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !31
  %124 = trunc i32 %120 to i8, !mcsema_real_eip !31
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !31
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !31
  %128 = icmp eq i32 %120, 0, !mcsema_real_eip !31
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !31
  %129 = icmp slt i32 %120, 0
  store i1 %129, i1* %SF, align 1, !mcsema_real_eip !31
  %130 = icmp ult i32 %119, 4, !mcsema_real_eip !31
  store i1 %130, i1* %CF, align 1, !mcsema_real_eip !31
  %131 = and i32 %121, %119, !mcsema_real_eip !31
  %132 = icmp slt i32 %131, 0
  store i1 %132, i1* %OF, align 1, !mcsema_real_eip !31
  %133 = zext i32 %120 to i64, !mcsema_real_eip !31
  store i64 %133, i64* %XAX, align 8, !mcsema_real_eip !31
  %134 = add i64 %RBP_val.42, -24, !mcsema_real_eip !32
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !32
  store i32 %120, i32* %135, align 4, !mcsema_real_eip !32
  %136 = load i1, i1* %ZF, align 1, !mcsema_real_eip !33
  %RBP_val.54 = load i64, i64* %XBP, align 8
  br i1 %136, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !33

block_0x1c9:                                      ; preds = %block_0x49
  %137 = add i64 %RBP_val.54, -8, !mcsema_real_eip !34
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !34
  %139 = load i32, i32* %138, align 4, !mcsema_real_eip !34
  %140 = zext i32 %139 to i64, !mcsema_real_eip !34
  store i64 %140, i64* %XAX, align 8, !mcsema_real_eip !34
  %141 = add i32 %139, 4, !mcsema_real_eip !35
  %142 = xor i32 %141, %139, !mcsema_real_eip !35
  %143 = and i32 %142, 16, !mcsema_real_eip !35
  %144 = icmp ne i32 %143, 0, !mcsema_real_eip !35
  store i1 %144, i1* %AF, align 1, !mcsema_real_eip !35
  %145 = icmp slt i32 %141, 0
  store i1 %145, i1* %SF, align 1, !mcsema_real_eip !35
  %146 = icmp eq i32 %141, 0, !mcsema_real_eip !35
  store i1 %146, i1* %ZF, align 1, !mcsema_real_eip !35
  %147 = xor i32 %139, -2147483648, !mcsema_real_eip !35
  %148 = and i32 %142, %147, !mcsema_real_eip !35
  %149 = icmp slt i32 %148, 0
  store i1 %149, i1* %OF, align 1, !mcsema_real_eip !35
  %150 = trunc i32 %141 to i8, !mcsema_real_eip !35
  %151 = tail call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !35
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  store i1 %153, i1* %PF, align 1, !mcsema_real_eip !35
  %154 = icmp ugt i32 %139, -5
  br label %block_0x2c8, !mcsema_real_eip !36

block_0x5d:                                       ; preds = %block_0x49
  %155 = add i64 %RBP_val.54, -12, !mcsema_real_eip !37
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !37
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !37
  %158 = add i32 %157, -6
  %159 = xor i32 %158, %157, !mcsema_real_eip !38
  %160 = and i32 %159, 16, !mcsema_real_eip !38
  %161 = icmp ne i32 %160, 0, !mcsema_real_eip !38
  store i1 %161, i1* %AF, align 1, !mcsema_real_eip !38
  %162 = trunc i32 %158 to i8, !mcsema_real_eip !38
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !38
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF, align 1, !mcsema_real_eip !38
  %166 = icmp eq i32 %158, 0, !mcsema_real_eip !38
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !38
  %167 = icmp slt i32 %158, 0
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !38
  %168 = icmp ult i32 %157, 6, !mcsema_real_eip !38
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !38
  %169 = and i32 %159, %157, !mcsema_real_eip !38
  %170 = icmp slt i32 %169, 0
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !38
  %171 = zext i32 %158 to i64, !mcsema_real_eip !38
  store i64 %171, i64* %XAX, align 8, !mcsema_real_eip !38
  %172 = add i64 %RBP_val.54, -28, !mcsema_real_eip !39
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !39
  store i32 %158, i32* %173, align 4, !mcsema_real_eip !39
  %174 = load i1, i1* %ZF, align 1, !mcsema_real_eip !40
  %RBP_val.66 = load i64, i64* %XBP, align 8
  br i1 %174, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !40

block_0x1d7:                                      ; preds = %block_0x5d
  %175 = add i64 %RBP_val.66, -8, !mcsema_real_eip !41
  %176 = inttoptr i64 %175 to i32*, !mcsema_real_eip !41
  %177 = load i32, i32* %176, align 4, !mcsema_real_eip !41
  %178 = zext i32 %177 to i64, !mcsema_real_eip !41
  store i64 %178, i64* %XAX, align 8, !mcsema_real_eip !41
  %179 = add i32 %177, 6, !mcsema_real_eip !42
  %180 = xor i32 %179, %177, !mcsema_real_eip !42
  %181 = and i32 %180, 16, !mcsema_real_eip !42
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !42
  store i1 %182, i1* %AF, align 1, !mcsema_real_eip !42
  %183 = icmp slt i32 %179, 0
  store i1 %183, i1* %SF, align 1, !mcsema_real_eip !42
  %184 = icmp eq i32 %179, 0, !mcsema_real_eip !42
  store i1 %184, i1* %ZF, align 1, !mcsema_real_eip !42
  %185 = xor i32 %177, -2147483648, !mcsema_real_eip !42
  %186 = and i32 %180, %185, !mcsema_real_eip !42
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF, align 1, !mcsema_real_eip !42
  %188 = trunc i32 %179 to i8, !mcsema_real_eip !42
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !42
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF, align 1, !mcsema_real_eip !42
  %192 = icmp ugt i32 %177, -7
  br label %block_0x2c8, !mcsema_real_eip !43

block_0x71:                                       ; preds = %block_0x5d
  %193 = add i64 %RBP_val.66, -12, !mcsema_real_eip !44
  %194 = inttoptr i64 %193 to i32*, !mcsema_real_eip !44
  %195 = load i32, i32* %194, align 4, !mcsema_real_eip !44
  %196 = add i32 %195, -12
  %197 = xor i32 %196, %195, !mcsema_real_eip !45
  %198 = and i32 %197, 16, !mcsema_real_eip !45
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !45
  store i1 %199, i1* %AF, align 1, !mcsema_real_eip !45
  %200 = trunc i32 %196 to i8, !mcsema_real_eip !45
  %201 = tail call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !45
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  store i1 %203, i1* %PF, align 1, !mcsema_real_eip !45
  %204 = icmp eq i32 %196, 0, !mcsema_real_eip !45
  store i1 %204, i1* %ZF, align 1, !mcsema_real_eip !45
  %205 = icmp slt i32 %196, 0
  store i1 %205, i1* %SF, align 1, !mcsema_real_eip !45
  %206 = icmp ult i32 %195, 12, !mcsema_real_eip !45
  store i1 %206, i1* %CF, align 1, !mcsema_real_eip !45
  %207 = and i32 %197, %195, !mcsema_real_eip !45
  %208 = icmp slt i32 %207, 0
  store i1 %208, i1* %OF, align 1, !mcsema_real_eip !45
  %209 = zext i32 %196 to i64, !mcsema_real_eip !45
  store i64 %209, i64* %XAX, align 8, !mcsema_real_eip !45
  %210 = add i64 %RBP_val.66, -32, !mcsema_real_eip !46
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !46
  store i32 %196, i32* %211, align 4, !mcsema_real_eip !46
  %212 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  %RBP_val.78 = load i64, i64* %XBP, align 8
  br i1 %212, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !47

block_0x1e5:                                      ; preds = %block_0x71
  %213 = add i64 %RBP_val.78, -8, !mcsema_real_eip !48
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !48
  %215 = load i32, i32* %214, align 4, !mcsema_real_eip !48
  %216 = zext i32 %215 to i64, !mcsema_real_eip !48
  store i64 %216, i64* %XAX, align 8, !mcsema_real_eip !48
  %217 = add i32 %215, 12, !mcsema_real_eip !49
  %218 = xor i32 %217, %215, !mcsema_real_eip !49
  %219 = and i32 %218, 16, !mcsema_real_eip !49
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !49
  store i1 %220, i1* %AF, align 1, !mcsema_real_eip !49
  %221 = icmp slt i32 %217, 0
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !49
  %222 = icmp eq i32 %217, 0, !mcsema_real_eip !49
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !49
  %223 = xor i32 %215, -2147483648, !mcsema_real_eip !49
  %224 = and i32 %218, %223, !mcsema_real_eip !49
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !49
  %226 = trunc i32 %217 to i8, !mcsema_real_eip !49
  %227 = tail call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !49
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !49
  %230 = icmp ugt i32 %215, -13
  br label %block_0x2c8, !mcsema_real_eip !50

block_0x85:                                       ; preds = %block_0x71
  %231 = add i64 %RBP_val.78, -12, !mcsema_real_eip !51
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !51
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !51
  %234 = add i32 %233, -13
  %235 = xor i32 %234, %233, !mcsema_real_eip !52
  %236 = and i32 %235, 16, !mcsema_real_eip !52
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !52
  store i1 %237, i1* %AF, align 1, !mcsema_real_eip !52
  %238 = trunc i32 %234 to i8, !mcsema_real_eip !52
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !52
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !52
  %242 = icmp eq i32 %234, 0, !mcsema_real_eip !52
  store i1 %242, i1* %ZF, align 1, !mcsema_real_eip !52
  %243 = icmp slt i32 %234, 0
  store i1 %243, i1* %SF, align 1, !mcsema_real_eip !52
  %244 = icmp ult i32 %233, 13, !mcsema_real_eip !52
  store i1 %244, i1* %CF, align 1, !mcsema_real_eip !52
  %245 = and i32 %235, %233, !mcsema_real_eip !52
  %246 = icmp slt i32 %245, 0
  store i1 %246, i1* %OF, align 1, !mcsema_real_eip !52
  %247 = zext i32 %234 to i64, !mcsema_real_eip !52
  store i64 %247, i64* %XAX, align 8, !mcsema_real_eip !52
  %248 = add i64 %RBP_val.78, -36, !mcsema_real_eip !53
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !53
  store i32 %234, i32* %249, align 4, !mcsema_real_eip !53
  %250 = load i1, i1* %ZF, align 1, !mcsema_real_eip !54
  %RBP_val.90 = load i64, i64* %XBP, align 8
  br i1 %250, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !54

block_0x1f3:                                      ; preds = %block_0x85
  %251 = add i64 %RBP_val.90, -8, !mcsema_real_eip !55
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !55
  %253 = load i32, i32* %252, align 4, !mcsema_real_eip !55
  %254 = zext i32 %253 to i64, !mcsema_real_eip !55
  store i64 %254, i64* %XAX, align 8, !mcsema_real_eip !55
  %255 = add i32 %253, 13, !mcsema_real_eip !56
  %256 = xor i32 %255, %253, !mcsema_real_eip !56
  %257 = and i32 %256, 16, !mcsema_real_eip !56
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !56
  store i1 %258, i1* %AF, align 1, !mcsema_real_eip !56
  %259 = icmp slt i32 %255, 0
  store i1 %259, i1* %SF, align 1, !mcsema_real_eip !56
  %260 = icmp eq i32 %255, 0, !mcsema_real_eip !56
  store i1 %260, i1* %ZF, align 1, !mcsema_real_eip !56
  %261 = xor i32 %253, -2147483648, !mcsema_real_eip !56
  %262 = and i32 %256, %261, !mcsema_real_eip !56
  %263 = icmp slt i32 %262, 0
  store i1 %263, i1* %OF, align 1, !mcsema_real_eip !56
  %264 = trunc i32 %255 to i8, !mcsema_real_eip !56
  %265 = tail call i8 @llvm.ctpop.i8(i8 %264), !mcsema_real_eip !56
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  store i1 %267, i1* %PF, align 1, !mcsema_real_eip !56
  %268 = icmp ugt i32 %253, -14
  br label %block_0x2c8, !mcsema_real_eip !57

block_0x99:                                       ; preds = %block_0x85
  %269 = add i64 %RBP_val.90, -12, !mcsema_real_eip !58
  %270 = inttoptr i64 %269 to i32*, !mcsema_real_eip !58
  %271 = load i32, i32* %270, align 4, !mcsema_real_eip !58
  %272 = add i32 %271, -19
  %273 = xor i32 %272, %271, !mcsema_real_eip !59
  %274 = and i32 %273, 16
  %275 = icmp eq i32 %274, 0
  store i1 %275, i1* %AF, align 1, !mcsema_real_eip !59
  %276 = trunc i32 %272 to i8, !mcsema_real_eip !59
  %277 = tail call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !59
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  store i1 %279, i1* %PF, align 1, !mcsema_real_eip !59
  %280 = icmp eq i32 %272, 0, !mcsema_real_eip !59
  store i1 %280, i1* %ZF, align 1, !mcsema_real_eip !59
  %281 = icmp slt i32 %272, 0
  store i1 %281, i1* %SF, align 1, !mcsema_real_eip !59
  %282 = icmp ult i32 %271, 19, !mcsema_real_eip !59
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !59
  %283 = and i32 %273, %271, !mcsema_real_eip !59
  %284 = icmp slt i32 %283, 0
  store i1 %284, i1* %OF, align 1, !mcsema_real_eip !59
  %285 = zext i32 %272 to i64, !mcsema_real_eip !59
  store i64 %285, i64* %XAX, align 8, !mcsema_real_eip !59
  %286 = add i64 %RBP_val.90, -40, !mcsema_real_eip !60
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !60
  store i32 %272, i32* %287, align 4, !mcsema_real_eip !60
  %288 = load i1, i1* %ZF, align 1, !mcsema_real_eip !61
  %RBP_val.102 = load i64, i64* %XBP, align 8
  br i1 %288, label %block_0x201, label %block_0xad, !mcsema_real_eip !61

block_0x201:                                      ; preds = %block_0x99
  %289 = add i64 %RBP_val.102, -8, !mcsema_real_eip !62
  %290 = inttoptr i64 %289 to i32*, !mcsema_real_eip !62
  %291 = load i32, i32* %290, align 4, !mcsema_real_eip !62
  %292 = zext i32 %291 to i64, !mcsema_real_eip !62
  store i64 %292, i64* %XAX, align 8, !mcsema_real_eip !62
  %293 = add i32 %291, 19, !mcsema_real_eip !63
  %294 = xor i32 %293, %291, !mcsema_real_eip !63
  %295 = and i32 %294, 16
  %296 = icmp eq i32 %295, 0
  store i1 %296, i1* %AF, align 1, !mcsema_real_eip !63
  %297 = icmp slt i32 %293, 0
  store i1 %297, i1* %SF, align 1, !mcsema_real_eip !63
  %298 = icmp eq i32 %293, 0, !mcsema_real_eip !63
  store i1 %298, i1* %ZF, align 1, !mcsema_real_eip !63
  %299 = xor i32 %291, -2147483648, !mcsema_real_eip !63
  %300 = and i32 %294, %299, !mcsema_real_eip !63
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !63
  %302 = trunc i32 %293 to i8, !mcsema_real_eip !63
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !63
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !63
  %306 = icmp ugt i32 %291, -20
  br label %block_0x2c8, !mcsema_real_eip !64

block_0xad:                                       ; preds = %block_0x99
  %307 = add i64 %RBP_val.102, -12, !mcsema_real_eip !65
  %308 = inttoptr i64 %307 to i32*, !mcsema_real_eip !65
  %309 = load i32, i32* %308, align 4, !mcsema_real_eip !65
  %310 = add i32 %309, -255
  %311 = xor i32 %310, %309, !mcsema_real_eip !66
  %312 = and i32 %311, 16
  %313 = icmp eq i32 %312, 0
  store i1 %313, i1* %AF, align 1, !mcsema_real_eip !66
  %314 = trunc i32 %310 to i8, !mcsema_real_eip !66
  %315 = tail call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !66
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  store i1 %317, i1* %PF, align 1, !mcsema_real_eip !66
  %318 = icmp eq i32 %310, 0, !mcsema_real_eip !66
  store i1 %318, i1* %ZF, align 1, !mcsema_real_eip !66
  %319 = icmp slt i32 %310, 0
  store i1 %319, i1* %SF, align 1, !mcsema_real_eip !66
  %320 = icmp ult i32 %309, 255, !mcsema_real_eip !66
  store i1 %320, i1* %CF, align 1, !mcsema_real_eip !66
  %321 = and i32 %311, %309, !mcsema_real_eip !66
  %322 = icmp slt i32 %321, 0
  store i1 %322, i1* %OF, align 1, !mcsema_real_eip !66
  %323 = zext i32 %310 to i64, !mcsema_real_eip !66
  store i64 %323, i64* %XAX, align 8, !mcsema_real_eip !66
  %324 = add i64 %RBP_val.102, -44, !mcsema_real_eip !67
  %325 = inttoptr i64 %324 to i32*, !mcsema_real_eip !67
  store i32 %310, i32* %325, align 4, !mcsema_real_eip !67
  %326 = load i1, i1* %ZF, align 1, !mcsema_real_eip !68
  %RBP_val.114 = load i64, i64* %XBP, align 8
  br i1 %326, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !68

block_0x20f:                                      ; preds = %block_0xad
  %327 = add i64 %RBP_val.114, -8, !mcsema_real_eip !69
  %328 = inttoptr i64 %327 to i32*, !mcsema_real_eip !69
  %329 = load i32, i32* %328, align 4, !mcsema_real_eip !69
  %330 = zext i32 %329 to i64, !mcsema_real_eip !69
  store i64 %330, i64* %XAX, align 8, !mcsema_real_eip !69
  %331 = add i32 %329, 255, !mcsema_real_eip !70
  %332 = xor i32 %331, %329, !mcsema_real_eip !70
  %333 = and i32 %332, 16
  %334 = icmp eq i32 %333, 0
  store i1 %334, i1* %AF, align 1, !mcsema_real_eip !70
  %335 = icmp slt i32 %331, 0
  store i1 %335, i1* %SF, align 1, !mcsema_real_eip !70
  %336 = icmp eq i32 %331, 0, !mcsema_real_eip !70
  store i1 %336, i1* %ZF, align 1, !mcsema_real_eip !70
  %337 = xor i32 %329, -2147483648, !mcsema_real_eip !70
  %338 = and i32 %332, %337, !mcsema_real_eip !70
  %339 = icmp slt i32 %338, 0
  store i1 %339, i1* %OF, align 1, !mcsema_real_eip !70
  %340 = trunc i32 %331 to i8, !mcsema_real_eip !70
  %341 = tail call i8 @llvm.ctpop.i8(i8 %340), !mcsema_real_eip !70
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  store i1 %343, i1* %PF, align 1, !mcsema_real_eip !70
  %344 = icmp ugt i32 %329, -256
  br label %block_0x2c8, !mcsema_real_eip !71

block_0xc3:                                       ; preds = %block_0xad
  %345 = add i64 %RBP_val.114, -12, !mcsema_real_eip !72
  %346 = inttoptr i64 %345 to i32*, !mcsema_real_eip !72
  %347 = load i32, i32* %346, align 4, !mcsema_real_eip !72
  %348 = add i32 %347, -74633
  %349 = xor i32 %348, %347, !mcsema_real_eip !73
  %350 = and i32 %349, 16, !mcsema_real_eip !73
  %351 = icmp ne i32 %350, 0, !mcsema_real_eip !73
  store i1 %351, i1* %AF, align 1, !mcsema_real_eip !73
  %352 = trunc i32 %348 to i8, !mcsema_real_eip !73
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !73
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF, align 1, !mcsema_real_eip !73
  %356 = icmp eq i32 %348, 0, !mcsema_real_eip !73
  store i1 %356, i1* %ZF, align 1, !mcsema_real_eip !73
  %357 = icmp slt i32 %348, 0
  store i1 %357, i1* %SF, align 1, !mcsema_real_eip !73
  %358 = icmp ult i32 %347, 74633, !mcsema_real_eip !73
  store i1 %358, i1* %CF, align 1, !mcsema_real_eip !73
  %359 = and i32 %349, %347, !mcsema_real_eip !73
  %360 = icmp slt i32 %359, 0
  store i1 %360, i1* %OF, align 1, !mcsema_real_eip !73
  %361 = zext i32 %348 to i64, !mcsema_real_eip !73
  store i64 %361, i64* %XAX, align 8, !mcsema_real_eip !73
  %362 = add i64 %RBP_val.114, -48, !mcsema_real_eip !74
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !74
  store i32 %348, i32* %363, align 4, !mcsema_real_eip !74
  %364 = load i1, i1* %ZF, align 1, !mcsema_real_eip !75
  %RBP_val.126 = load i64, i64* %XBP, align 8
  br i1 %364, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !75

block_0x21f:                                      ; preds = %block_0xc3
  %365 = add i64 %RBP_val.126, -8, !mcsema_real_eip !76
  %366 = inttoptr i64 %365 to i32*, !mcsema_real_eip !76
  %367 = load i32, i32* %366, align 4, !mcsema_real_eip !76
  %368 = zext i32 %367 to i64, !mcsema_real_eip !76
  store i64 %368, i64* %XAX, align 8, !mcsema_real_eip !76
  %369 = add i32 %367, 74633, !mcsema_real_eip !77
  %370 = xor i32 %369, %367, !mcsema_real_eip !77
  %371 = and i32 %370, 16, !mcsema_real_eip !77
  %372 = icmp ne i32 %371, 0, !mcsema_real_eip !77
  store i1 %372, i1* %AF, align 1, !mcsema_real_eip !77
  %373 = icmp slt i32 %369, 0
  store i1 %373, i1* %SF, align 1, !mcsema_real_eip !77
  %374 = icmp eq i32 %369, 0, !mcsema_real_eip !77
  store i1 %374, i1* %ZF, align 1, !mcsema_real_eip !77
  %375 = xor i32 %367, -2147483648, !mcsema_real_eip !77
  %376 = and i32 %370, %375, !mcsema_real_eip !77
  %377 = icmp slt i32 %376, 0
  store i1 %377, i1* %OF, align 1, !mcsema_real_eip !77
  %378 = trunc i32 %369 to i8, !mcsema_real_eip !77
  %379 = tail call i8 @llvm.ctpop.i8(i8 %378), !mcsema_real_eip !77
  %380 = and i8 %379, 1
  %381 = icmp eq i8 %380, 0
  store i1 %381, i1* %PF, align 1, !mcsema_real_eip !77
  %382 = icmp ugt i32 %367, -74634
  br label %block_0x2c8, !mcsema_real_eip !78

block_0xd9:                                       ; preds = %block_0xc3
  %383 = add i64 %RBP_val.126, -12, !mcsema_real_eip !79
  %384 = inttoptr i64 %383 to i32*, !mcsema_real_eip !79
  %385 = load i32, i32* %384, align 4, !mcsema_real_eip !79
  %386 = add i32 %385, -74634
  %387 = xor i32 %386, %385, !mcsema_real_eip !80
  %388 = and i32 %387, 16, !mcsema_real_eip !80
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !80
  store i1 %389, i1* %AF, align 1, !mcsema_real_eip !80
  %390 = trunc i32 %386 to i8, !mcsema_real_eip !80
  %391 = tail call i8 @llvm.ctpop.i8(i8 %390), !mcsema_real_eip !80
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  store i1 %393, i1* %PF, align 1, !mcsema_real_eip !80
  %394 = icmp eq i32 %386, 0, !mcsema_real_eip !80
  store i1 %394, i1* %ZF, align 1, !mcsema_real_eip !80
  %395 = icmp slt i32 %386, 0
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !80
  %396 = icmp ult i32 %385, 74634, !mcsema_real_eip !80
  store i1 %396, i1* %CF, align 1, !mcsema_real_eip !80
  %397 = and i32 %387, %385, !mcsema_real_eip !80
  %398 = icmp slt i32 %397, 0
  store i1 %398, i1* %OF, align 1, !mcsema_real_eip !80
  %399 = zext i32 %386 to i64, !mcsema_real_eip !80
  store i64 %399, i64* %XAX, align 8, !mcsema_real_eip !80
  %400 = add i64 %RBP_val.126, -52, !mcsema_real_eip !81
  %401 = inttoptr i64 %400 to i32*, !mcsema_real_eip !81
  store i32 %386, i32* %401, align 4, !mcsema_real_eip !81
  %402 = load i1, i1* %ZF, align 1, !mcsema_real_eip !82
  %RBP_val.138 = load i64, i64* %XBP, align 8
  br i1 %402, label %block_0x22f, label %block_0xef, !mcsema_real_eip !82

block_0x22f:                                      ; preds = %block_0xd9
  %403 = add i64 %RBP_val.138, -8, !mcsema_real_eip !83
  %404 = inttoptr i64 %403 to i32*, !mcsema_real_eip !83
  %405 = load i32, i32* %404, align 4, !mcsema_real_eip !83
  %406 = zext i32 %405 to i64, !mcsema_real_eip !83
  store i64 %406, i64* %XAX, align 8, !mcsema_real_eip !83
  %407 = add i32 %405, 74634, !mcsema_real_eip !84
  %408 = xor i32 %407, %405, !mcsema_real_eip !84
  %409 = and i32 %408, 16, !mcsema_real_eip !84
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !84
  store i1 %410, i1* %AF, align 1, !mcsema_real_eip !84
  %411 = icmp slt i32 %407, 0
  store i1 %411, i1* %SF, align 1, !mcsema_real_eip !84
  %412 = icmp eq i32 %407, 0, !mcsema_real_eip !84
  store i1 %412, i1* %ZF, align 1, !mcsema_real_eip !84
  %413 = xor i32 %405, -2147483648, !mcsema_real_eip !84
  %414 = and i32 %408, %413, !mcsema_real_eip !84
  %415 = icmp slt i32 %414, 0
  store i1 %415, i1* %OF, align 1, !mcsema_real_eip !84
  %416 = trunc i32 %407 to i8, !mcsema_real_eip !84
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !84
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !84
  %420 = icmp ugt i32 %405, -74635
  br label %block_0x2c8, !mcsema_real_eip !85

block_0xef:                                       ; preds = %block_0xd9
  %421 = add i64 %RBP_val.138, -12, !mcsema_real_eip !86
  %422 = inttoptr i64 %421 to i32*, !mcsema_real_eip !86
  %423 = load i32, i32* %422, align 4, !mcsema_real_eip !86
  %424 = add i32 %423, -74635
  %425 = xor i32 %424, %423, !mcsema_real_eip !87
  %426 = and i32 %425, 16, !mcsema_real_eip !87
  %427 = icmp ne i32 %426, 0, !mcsema_real_eip !87
  store i1 %427, i1* %AF, align 1, !mcsema_real_eip !87
  %428 = trunc i32 %424 to i8, !mcsema_real_eip !87
  %429 = tail call i8 @llvm.ctpop.i8(i8 %428), !mcsema_real_eip !87
  %430 = and i8 %429, 1
  %431 = icmp eq i8 %430, 0
  store i1 %431, i1* %PF, align 1, !mcsema_real_eip !87
  %432 = icmp eq i32 %424, 0, !mcsema_real_eip !87
  store i1 %432, i1* %ZF, align 1, !mcsema_real_eip !87
  %433 = icmp slt i32 %424, 0
  store i1 %433, i1* %SF, align 1, !mcsema_real_eip !87
  %434 = icmp ult i32 %423, 74635, !mcsema_real_eip !87
  store i1 %434, i1* %CF, align 1, !mcsema_real_eip !87
  %435 = and i32 %425, %423, !mcsema_real_eip !87
  %436 = icmp slt i32 %435, 0
  store i1 %436, i1* %OF, align 1, !mcsema_real_eip !87
  %437 = zext i32 %424 to i64, !mcsema_real_eip !87
  store i64 %437, i64* %XAX, align 8, !mcsema_real_eip !87
  %438 = add i64 %RBP_val.138, -56, !mcsema_real_eip !88
  %439 = inttoptr i64 %438 to i32*, !mcsema_real_eip !88
  store i32 %424, i32* %439, align 4, !mcsema_real_eip !88
  %440 = load i1, i1* %ZF, align 1, !mcsema_real_eip !89
  %RBP_val.150 = load i64, i64* %XBP, align 8
  br i1 %440, label %block_0x23f, label %block_0x105, !mcsema_real_eip !89

block_0x23f:                                      ; preds = %block_0xef
  %441 = add i64 %RBP_val.150, -8, !mcsema_real_eip !90
  %442 = inttoptr i64 %441 to i32*, !mcsema_real_eip !90
  %443 = load i32, i32* %442, align 4, !mcsema_real_eip !90
  %444 = zext i32 %443 to i64, !mcsema_real_eip !90
  store i64 %444, i64* %XAX, align 8, !mcsema_real_eip !90
  %445 = add i32 %443, 74635, !mcsema_real_eip !91
  %446 = xor i32 %445, %443, !mcsema_real_eip !91
  %447 = and i32 %446, 16, !mcsema_real_eip !91
  %448 = icmp ne i32 %447, 0, !mcsema_real_eip !91
  store i1 %448, i1* %AF, align 1, !mcsema_real_eip !91
  %449 = icmp slt i32 %445, 0
  store i1 %449, i1* %SF, align 1, !mcsema_real_eip !91
  %450 = icmp eq i32 %445, 0, !mcsema_real_eip !91
  store i1 %450, i1* %ZF, align 1, !mcsema_real_eip !91
  %451 = xor i32 %443, -2147483648, !mcsema_real_eip !91
  %452 = and i32 %446, %451, !mcsema_real_eip !91
  %453 = icmp slt i32 %452, 0
  store i1 %453, i1* %OF, align 1, !mcsema_real_eip !91
  %454 = trunc i32 %445 to i8, !mcsema_real_eip !91
  %455 = tail call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !91
  %456 = and i8 %455, 1
  %457 = icmp eq i8 %456, 0
  store i1 %457, i1* %PF, align 1, !mcsema_real_eip !91
  %458 = icmp ugt i32 %443, -74636
  br label %block_0x2c8, !mcsema_real_eip !92

block_0x105:                                      ; preds = %block_0xef
  %459 = add i64 %RBP_val.150, -12, !mcsema_real_eip !93
  %460 = inttoptr i64 %459 to i32*, !mcsema_real_eip !93
  %461 = load i32, i32* %460, align 4, !mcsema_real_eip !93
  %462 = add i32 %461, -74636
  %463 = xor i32 %462, %461, !mcsema_real_eip !94
  %464 = and i32 %463, 16, !mcsema_real_eip !94
  %465 = icmp ne i32 %464, 0, !mcsema_real_eip !94
  store i1 %465, i1* %AF, align 1, !mcsema_real_eip !94
  %466 = trunc i32 %462 to i8, !mcsema_real_eip !94
  %467 = tail call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !94
  %468 = and i8 %467, 1
  %469 = icmp eq i8 %468, 0
  store i1 %469, i1* %PF, align 1, !mcsema_real_eip !94
  %470 = icmp eq i32 %462, 0, !mcsema_real_eip !94
  store i1 %470, i1* %ZF, align 1, !mcsema_real_eip !94
  %471 = icmp slt i32 %462, 0
  store i1 %471, i1* %SF, align 1, !mcsema_real_eip !94
  %472 = icmp ult i32 %461, 74636, !mcsema_real_eip !94
  store i1 %472, i1* %CF, align 1, !mcsema_real_eip !94
  %473 = and i32 %463, %461, !mcsema_real_eip !94
  %474 = icmp slt i32 %473, 0
  store i1 %474, i1* %OF, align 1, !mcsema_real_eip !94
  %475 = zext i32 %462 to i64, !mcsema_real_eip !94
  store i64 %475, i64* %XAX, align 8, !mcsema_real_eip !94
  %476 = add i64 %RBP_val.150, -60, !mcsema_real_eip !95
  %477 = inttoptr i64 %476 to i32*, !mcsema_real_eip !95
  store i32 %462, i32* %477, align 4, !mcsema_real_eip !95
  %478 = load i1, i1* %ZF, align 1, !mcsema_real_eip !96
  %RBP_val.162 = load i64, i64* %XBP, align 8
  br i1 %478, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !96

block_0x24f:                                      ; preds = %block_0x105
  %479 = add i64 %RBP_val.162, -8, !mcsema_real_eip !97
  %480 = inttoptr i64 %479 to i32*, !mcsema_real_eip !97
  %481 = load i32, i32* %480, align 4, !mcsema_real_eip !97
  %482 = zext i32 %481 to i64, !mcsema_real_eip !97
  store i64 %482, i64* %XAX, align 8, !mcsema_real_eip !97
  %483 = add i32 %481, 74636, !mcsema_real_eip !98
  %484 = xor i32 %483, %481, !mcsema_real_eip !98
  %485 = and i32 %484, 16, !mcsema_real_eip !98
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !98
  store i1 %486, i1* %AF, align 1, !mcsema_real_eip !98
  %487 = icmp slt i32 %483, 0
  store i1 %487, i1* %SF, align 1, !mcsema_real_eip !98
  %488 = icmp eq i32 %483, 0, !mcsema_real_eip !98
  store i1 %488, i1* %ZF, align 1, !mcsema_real_eip !98
  %489 = xor i32 %481, -2147483648, !mcsema_real_eip !98
  %490 = and i32 %484, %489, !mcsema_real_eip !98
  %491 = icmp slt i32 %490, 0
  store i1 %491, i1* %OF, align 1, !mcsema_real_eip !98
  %492 = trunc i32 %483 to i8, !mcsema_real_eip !98
  %493 = tail call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !98
  %494 = and i8 %493, 1
  %495 = icmp eq i8 %494, 0
  store i1 %495, i1* %PF, align 1, !mcsema_real_eip !98
  %496 = icmp ugt i32 %481, -74637
  br label %block_0x2c8, !mcsema_real_eip !99

block_0x11b:                                      ; preds = %block_0x105
  %497 = add i64 %RBP_val.162, -12, !mcsema_real_eip !100
  %498 = inttoptr i64 %497 to i32*, !mcsema_real_eip !100
  %499 = load i32, i32* %498, align 4, !mcsema_real_eip !100
  %500 = add i32 %499, -74637
  %501 = xor i32 %500, %499, !mcsema_real_eip !101
  %502 = and i32 %501, 16, !mcsema_real_eip !101
  %503 = icmp ne i32 %502, 0, !mcsema_real_eip !101
  store i1 %503, i1* %AF, align 1, !mcsema_real_eip !101
  %504 = trunc i32 %500 to i8, !mcsema_real_eip !101
  %505 = tail call i8 @llvm.ctpop.i8(i8 %504), !mcsema_real_eip !101
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  store i1 %507, i1* %PF, align 1, !mcsema_real_eip !101
  %508 = icmp eq i32 %500, 0, !mcsema_real_eip !101
  store i1 %508, i1* %ZF, align 1, !mcsema_real_eip !101
  %509 = icmp slt i32 %500, 0
  store i1 %509, i1* %SF, align 1, !mcsema_real_eip !101
  %510 = icmp ult i32 %499, 74637, !mcsema_real_eip !101
  store i1 %510, i1* %CF, align 1, !mcsema_real_eip !101
  %511 = and i32 %501, %499, !mcsema_real_eip !101
  %512 = icmp slt i32 %511, 0
  store i1 %512, i1* %OF, align 1, !mcsema_real_eip !101
  %513 = zext i32 %500 to i64, !mcsema_real_eip !101
  store i64 %513, i64* %XAX, align 8, !mcsema_real_eip !101
  %514 = add i64 %RBP_val.162, -64, !mcsema_real_eip !102
  %515 = inttoptr i64 %514 to i32*, !mcsema_real_eip !102
  store i32 %500, i32* %515, align 4, !mcsema_real_eip !102
  %516 = load i1, i1* %ZF, align 1, !mcsema_real_eip !103
  %RBP_val.174 = load i64, i64* %XBP, align 8
  br i1 %516, label %block_0x25f, label %block_0x131, !mcsema_real_eip !103

block_0x25f:                                      ; preds = %block_0x11b
  %517 = add i64 %RBP_val.174, -8, !mcsema_real_eip !104
  %518 = inttoptr i64 %517 to i32*, !mcsema_real_eip !104
  %519 = load i32, i32* %518, align 4, !mcsema_real_eip !104
  %520 = zext i32 %519 to i64, !mcsema_real_eip !104
  store i64 %520, i64* %XAX, align 8, !mcsema_real_eip !104
  %521 = add i32 %519, 74637, !mcsema_real_eip !105
  %522 = xor i32 %521, %519, !mcsema_real_eip !105
  %523 = and i32 %522, 16, !mcsema_real_eip !105
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !105
  store i1 %524, i1* %AF, align 1, !mcsema_real_eip !105
  %525 = icmp slt i32 %521, 0
  store i1 %525, i1* %SF, align 1, !mcsema_real_eip !105
  %526 = icmp eq i32 %521, 0, !mcsema_real_eip !105
  store i1 %526, i1* %ZF, align 1, !mcsema_real_eip !105
  %527 = xor i32 %519, -2147483648, !mcsema_real_eip !105
  %528 = and i32 %522, %527, !mcsema_real_eip !105
  %529 = icmp slt i32 %528, 0
  store i1 %529, i1* %OF, align 1, !mcsema_real_eip !105
  %530 = trunc i32 %521 to i8, !mcsema_real_eip !105
  %531 = tail call i8 @llvm.ctpop.i8(i8 %530), !mcsema_real_eip !105
  %532 = and i8 %531, 1
  %533 = icmp eq i8 %532, 0
  store i1 %533, i1* %PF, align 1, !mcsema_real_eip !105
  %534 = icmp ugt i32 %519, -74638
  br label %block_0x2c8, !mcsema_real_eip !106

block_0x131:                                      ; preds = %block_0x11b
  %535 = add i64 %RBP_val.174, -12, !mcsema_real_eip !107
  %536 = inttoptr i64 %535 to i32*, !mcsema_real_eip !107
  %537 = load i32, i32* %536, align 4, !mcsema_real_eip !107
  %538 = add i32 %537, -74639
  %539 = xor i32 %538, %537, !mcsema_real_eip !108
  %540 = and i32 %539, 16, !mcsema_real_eip !108
  %541 = icmp ne i32 %540, 0, !mcsema_real_eip !108
  store i1 %541, i1* %AF, align 1, !mcsema_real_eip !108
  %542 = trunc i32 %538 to i8, !mcsema_real_eip !108
  %543 = tail call i8 @llvm.ctpop.i8(i8 %542), !mcsema_real_eip !108
  %544 = and i8 %543, 1
  %545 = icmp eq i8 %544, 0
  store i1 %545, i1* %PF, align 1, !mcsema_real_eip !108
  %546 = icmp eq i32 %538, 0, !mcsema_real_eip !108
  store i1 %546, i1* %ZF, align 1, !mcsema_real_eip !108
  %547 = icmp slt i32 %538, 0
  store i1 %547, i1* %SF, align 1, !mcsema_real_eip !108
  %548 = icmp ult i32 %537, 74639, !mcsema_real_eip !108
  store i1 %548, i1* %CF, align 1, !mcsema_real_eip !108
  %549 = and i32 %539, %537, !mcsema_real_eip !108
  %550 = icmp slt i32 %549, 0
  store i1 %550, i1* %OF, align 1, !mcsema_real_eip !108
  %551 = zext i32 %538 to i64, !mcsema_real_eip !108
  store i64 %551, i64* %XAX, align 8, !mcsema_real_eip !108
  %552 = add i64 %RBP_val.174, -68, !mcsema_real_eip !109
  %553 = inttoptr i64 %552 to i32*, !mcsema_real_eip !109
  store i32 %538, i32* %553, align 4, !mcsema_real_eip !109
  %554 = load i1, i1* %ZF, align 1, !mcsema_real_eip !110
  %RBP_val.186 = load i64, i64* %XBP, align 8
  br i1 %554, label %block_0x26f, label %block_0x147, !mcsema_real_eip !110

block_0x26f:                                      ; preds = %block_0x131
  %555 = add i64 %RBP_val.186, -8, !mcsema_real_eip !111
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !111
  %557 = load i32, i32* %556, align 4, !mcsema_real_eip !111
  %558 = zext i32 %557 to i64, !mcsema_real_eip !111
  store i64 %558, i64* %XAX, align 8, !mcsema_real_eip !111
  %559 = add i32 %557, 74639, !mcsema_real_eip !112
  %560 = xor i32 %559, %557, !mcsema_real_eip !112
  %561 = and i32 %560, 16, !mcsema_real_eip !112
  %562 = icmp ne i32 %561, 0, !mcsema_real_eip !112
  store i1 %562, i1* %AF, align 1, !mcsema_real_eip !112
  %563 = icmp slt i32 %559, 0
  store i1 %563, i1* %SF, align 1, !mcsema_real_eip !112
  %564 = icmp eq i32 %559, 0, !mcsema_real_eip !112
  store i1 %564, i1* %ZF, align 1, !mcsema_real_eip !112
  %565 = xor i32 %557, -2147483648, !mcsema_real_eip !112
  %566 = and i32 %560, %565, !mcsema_real_eip !112
  %567 = icmp slt i32 %566, 0
  store i1 %567, i1* %OF, align 1, !mcsema_real_eip !112
  %568 = trunc i32 %559 to i8, !mcsema_real_eip !112
  %569 = tail call i8 @llvm.ctpop.i8(i8 %568), !mcsema_real_eip !112
  %570 = and i8 %569, 1
  %571 = icmp eq i8 %570, 0
  store i1 %571, i1* %PF, align 1, !mcsema_real_eip !112
  %572 = icmp ugt i32 %557, -74640
  br label %block_0x2c8, !mcsema_real_eip !113

block_0x147:                                      ; preds = %block_0x131
  %573 = add i64 %RBP_val.186, -12, !mcsema_real_eip !114
  %574 = inttoptr i64 %573 to i32*, !mcsema_real_eip !114
  %575 = load i32, i32* %574, align 4, !mcsema_real_eip !114
  %576 = add i32 %575, -74640
  %577 = xor i32 %576, %575, !mcsema_real_eip !115
  %578 = and i32 %577, 16
  %579 = icmp eq i32 %578, 0
  store i1 %579, i1* %AF, align 1, !mcsema_real_eip !115
  %580 = trunc i32 %576 to i8, !mcsema_real_eip !115
  %581 = tail call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !115
  %582 = and i8 %581, 1
  %583 = icmp eq i8 %582, 0
  store i1 %583, i1* %PF, align 1, !mcsema_real_eip !115
  %584 = icmp eq i32 %576, 0, !mcsema_real_eip !115
  store i1 %584, i1* %ZF, align 1, !mcsema_real_eip !115
  %585 = icmp slt i32 %576, 0
  store i1 %585, i1* %SF, align 1, !mcsema_real_eip !115
  %586 = icmp ult i32 %575, 74640, !mcsema_real_eip !115
  store i1 %586, i1* %CF, align 1, !mcsema_real_eip !115
  %587 = and i32 %577, %575, !mcsema_real_eip !115
  %588 = icmp slt i32 %587, 0
  store i1 %588, i1* %OF, align 1, !mcsema_real_eip !115
  %589 = zext i32 %576 to i64, !mcsema_real_eip !115
  store i64 %589, i64* %XAX, align 8, !mcsema_real_eip !115
  %590 = add i64 %RBP_val.186, -72, !mcsema_real_eip !116
  %591 = inttoptr i64 %590 to i32*, !mcsema_real_eip !116
  store i32 %576, i32* %591, align 4, !mcsema_real_eip !116
  %592 = load i1, i1* %ZF, align 1, !mcsema_real_eip !117
  %RBP_val.198 = load i64, i64* %XBP, align 8
  br i1 %592, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !117

block_0x27f:                                      ; preds = %block_0x147
  %593 = add i64 %RBP_val.198, -8, !mcsema_real_eip !118
  %594 = inttoptr i64 %593 to i32*, !mcsema_real_eip !118
  %595 = load i32, i32* %594, align 4, !mcsema_real_eip !118
  %596 = zext i32 %595 to i64, !mcsema_real_eip !118
  store i64 %596, i64* %XAX, align 8, !mcsema_real_eip !118
  %597 = add i32 %595, 74640, !mcsema_real_eip !119
  %598 = xor i32 %597, %595, !mcsema_real_eip !119
  %599 = and i32 %598, 16
  %600 = icmp eq i32 %599, 0
  store i1 %600, i1* %AF, align 1, !mcsema_real_eip !119
  %601 = icmp slt i32 %597, 0
  store i1 %601, i1* %SF, align 1, !mcsema_real_eip !119
  %602 = icmp eq i32 %597, 0, !mcsema_real_eip !119
  store i1 %602, i1* %ZF, align 1, !mcsema_real_eip !119
  %603 = xor i32 %595, -2147483648, !mcsema_real_eip !119
  %604 = and i32 %598, %603, !mcsema_real_eip !119
  %605 = icmp slt i32 %604, 0
  store i1 %605, i1* %OF, align 1, !mcsema_real_eip !119
  %606 = trunc i32 %597 to i8, !mcsema_real_eip !119
  %607 = tail call i8 @llvm.ctpop.i8(i8 %606), !mcsema_real_eip !119
  %608 = and i8 %607, 1
  %609 = icmp eq i8 %608, 0
  store i1 %609, i1* %PF, align 1, !mcsema_real_eip !119
  %610 = icmp ugt i32 %595, -74641
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x15d:                                      ; preds = %block_0x147
  %611 = add i64 %RBP_val.198, -12, !mcsema_real_eip !121
  %612 = inttoptr i64 %611 to i32*, !mcsema_real_eip !121
  %613 = load i32, i32* %612, align 4, !mcsema_real_eip !121
  %614 = add i32 %613, -74641
  %615 = xor i32 %614, %613, !mcsema_real_eip !122
  %616 = and i32 %615, 16
  %617 = icmp eq i32 %616, 0
  store i1 %617, i1* %AF, align 1, !mcsema_real_eip !122
  %618 = trunc i32 %614 to i8, !mcsema_real_eip !122
  %619 = tail call i8 @llvm.ctpop.i8(i8 %618), !mcsema_real_eip !122
  %620 = and i8 %619, 1
  %621 = icmp eq i8 %620, 0
  store i1 %621, i1* %PF, align 1, !mcsema_real_eip !122
  %622 = icmp eq i32 %614, 0, !mcsema_real_eip !122
  store i1 %622, i1* %ZF, align 1, !mcsema_real_eip !122
  %623 = icmp slt i32 %614, 0
  store i1 %623, i1* %SF, align 1, !mcsema_real_eip !122
  %624 = icmp ult i32 %613, 74641, !mcsema_real_eip !122
  store i1 %624, i1* %CF, align 1, !mcsema_real_eip !122
  %625 = and i32 %615, %613, !mcsema_real_eip !122
  %626 = icmp slt i32 %625, 0
  store i1 %626, i1* %OF, align 1, !mcsema_real_eip !122
  %627 = zext i32 %614 to i64, !mcsema_real_eip !122
  store i64 %627, i64* %XAX, align 8, !mcsema_real_eip !122
  %628 = add i64 %RBP_val.198, -76, !mcsema_real_eip !123
  %629 = inttoptr i64 %628 to i32*, !mcsema_real_eip !123
  store i32 %614, i32* %629, align 4, !mcsema_real_eip !123
  %630 = load i1, i1* %ZF, align 1, !mcsema_real_eip !124
  %RBP_val.210 = load i64, i64* %XBP, align 8
  br i1 %630, label %block_0x28f, label %block_0x173, !mcsema_real_eip !124

block_0x28f:                                      ; preds = %block_0x15d
  %631 = add i64 %RBP_val.210, -8, !mcsema_real_eip !125
  %632 = inttoptr i64 %631 to i32*, !mcsema_real_eip !125
  %633 = load i32, i32* %632, align 4, !mcsema_real_eip !125
  %634 = zext i32 %633 to i64, !mcsema_real_eip !125
  store i64 %634, i64* %XAX, align 8, !mcsema_real_eip !125
  %635 = add i32 %633, 74641, !mcsema_real_eip !126
  %636 = xor i32 %635, %633, !mcsema_real_eip !126
  %637 = and i32 %636, 16
  %638 = icmp eq i32 %637, 0
  store i1 %638, i1* %AF, align 1, !mcsema_real_eip !126
  %639 = icmp slt i32 %635, 0
  store i1 %639, i1* %SF, align 1, !mcsema_real_eip !126
  %640 = icmp eq i32 %635, 0, !mcsema_real_eip !126
  store i1 %640, i1* %ZF, align 1, !mcsema_real_eip !126
  %641 = xor i32 %633, -2147483648, !mcsema_real_eip !126
  %642 = and i32 %636, %641, !mcsema_real_eip !126
  %643 = icmp slt i32 %642, 0
  store i1 %643, i1* %OF, align 1, !mcsema_real_eip !126
  %644 = trunc i32 %635 to i8, !mcsema_real_eip !126
  %645 = tail call i8 @llvm.ctpop.i8(i8 %644), !mcsema_real_eip !126
  %646 = and i8 %645, 1
  %647 = icmp eq i8 %646, 0
  store i1 %647, i1* %PF, align 1, !mcsema_real_eip !126
  %648 = icmp ugt i32 %633, -74642
  br label %block_0x2c8, !mcsema_real_eip !127

block_0x173:                                      ; preds = %block_0x15d
  %649 = add i64 %RBP_val.210, -12, !mcsema_real_eip !128
  %650 = inttoptr i64 %649 to i32*, !mcsema_real_eip !128
  %651 = load i32, i32* %650, align 4, !mcsema_real_eip !128
  %652 = add i32 %651, -74642
  %653 = xor i32 %652, %651, !mcsema_real_eip !129
  %654 = and i32 %653, 16
  %655 = icmp eq i32 %654, 0
  store i1 %655, i1* %AF, align 1, !mcsema_real_eip !129
  %656 = trunc i32 %652 to i8, !mcsema_real_eip !129
  %657 = tail call i8 @llvm.ctpop.i8(i8 %656), !mcsema_real_eip !129
  %658 = and i8 %657, 1
  %659 = icmp eq i8 %658, 0
  store i1 %659, i1* %PF, align 1, !mcsema_real_eip !129
  %660 = icmp eq i32 %652, 0, !mcsema_real_eip !129
  store i1 %660, i1* %ZF, align 1, !mcsema_real_eip !129
  %661 = icmp slt i32 %652, 0
  store i1 %661, i1* %SF, align 1, !mcsema_real_eip !129
  %662 = icmp ult i32 %651, 74642, !mcsema_real_eip !129
  store i1 %662, i1* %CF, align 1, !mcsema_real_eip !129
  %663 = and i32 %653, %651, !mcsema_real_eip !129
  %664 = icmp slt i32 %663, 0
  store i1 %664, i1* %OF, align 1, !mcsema_real_eip !129
  %665 = zext i32 %652 to i64, !mcsema_real_eip !129
  store i64 %665, i64* %XAX, align 8, !mcsema_real_eip !129
  %666 = add i64 %RBP_val.210, -80, !mcsema_real_eip !130
  %667 = inttoptr i64 %666 to i32*, !mcsema_real_eip !130
  store i32 %652, i32* %667, align 4, !mcsema_real_eip !130
  %668 = load i1, i1* %ZF, align 1, !mcsema_real_eip !131
  %RBP_val.222 = load i64, i64* %XBP, align 8
  br i1 %668, label %block_0x29f, label %block_0x189, !mcsema_real_eip !131

block_0x29f:                                      ; preds = %block_0x173
  %669 = add i64 %RBP_val.222, -8, !mcsema_real_eip !132
  %670 = inttoptr i64 %669 to i32*, !mcsema_real_eip !132
  %671 = load i32, i32* %670, align 4, !mcsema_real_eip !132
  %672 = zext i32 %671 to i64, !mcsema_real_eip !132
  store i64 %672, i64* %XAX, align 8, !mcsema_real_eip !132
  %673 = add i32 %671, 74642, !mcsema_real_eip !133
  %674 = xor i32 %673, %671, !mcsema_real_eip !133
  %675 = and i32 %674, 16
  %676 = icmp eq i32 %675, 0
  store i1 %676, i1* %AF, align 1, !mcsema_real_eip !133
  %677 = icmp slt i32 %673, 0
  store i1 %677, i1* %SF, align 1, !mcsema_real_eip !133
  %678 = icmp eq i32 %673, 0, !mcsema_real_eip !133
  store i1 %678, i1* %ZF, align 1, !mcsema_real_eip !133
  %679 = xor i32 %671, -2147483648, !mcsema_real_eip !133
  %680 = and i32 %674, %679, !mcsema_real_eip !133
  %681 = icmp slt i32 %680, 0
  store i1 %681, i1* %OF, align 1, !mcsema_real_eip !133
  %682 = trunc i32 %673 to i8, !mcsema_real_eip !133
  %683 = tail call i8 @llvm.ctpop.i8(i8 %682), !mcsema_real_eip !133
  %684 = and i8 %683, 1
  %685 = icmp eq i8 %684, 0
  store i1 %685, i1* %PF, align 1, !mcsema_real_eip !133
  %686 = icmp ugt i32 %671, -74643
  br label %block_0x2c8, !mcsema_real_eip !134

block_0x189:                                      ; preds = %block_0x173
  %687 = add i64 %RBP_val.222, -12, !mcsema_real_eip !135
  %688 = inttoptr i64 %687 to i32*, !mcsema_real_eip !135
  %689 = load i32, i32* %688, align 4, !mcsema_real_eip !135
  %690 = add i32 %689, -74643
  %691 = xor i32 %690, %689, !mcsema_real_eip !136
  %692 = and i32 %691, 16
  %693 = icmp eq i32 %692, 0
  store i1 %693, i1* %AF, align 1, !mcsema_real_eip !136
  %694 = trunc i32 %690 to i8, !mcsema_real_eip !136
  %695 = tail call i8 @llvm.ctpop.i8(i8 %694), !mcsema_real_eip !136
  %696 = and i8 %695, 1
  %697 = icmp eq i8 %696, 0
  store i1 %697, i1* %PF, align 1, !mcsema_real_eip !136
  %698 = icmp eq i32 %690, 0, !mcsema_real_eip !136
  store i1 %698, i1* %ZF, align 1, !mcsema_real_eip !136
  %699 = icmp slt i32 %690, 0
  store i1 %699, i1* %SF, align 1, !mcsema_real_eip !136
  %700 = icmp ult i32 %689, 74643, !mcsema_real_eip !136
  store i1 %700, i1* %CF, align 1, !mcsema_real_eip !136
  %701 = and i32 %691, %689, !mcsema_real_eip !136
  %702 = icmp slt i32 %701, 0
  store i1 %702, i1* %OF, align 1, !mcsema_real_eip !136
  %703 = zext i32 %690 to i64, !mcsema_real_eip !136
  store i64 %703, i64* %XAX, align 8, !mcsema_real_eip !136
  %704 = add i64 %RBP_val.222, -84, !mcsema_real_eip !137
  %705 = inttoptr i64 %704 to i32*, !mcsema_real_eip !137
  store i32 %690, i32* %705, align 4, !mcsema_real_eip !137
  %706 = load i1, i1* %ZF, align 1, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, align 8
  %707 = add i64 %RBP_val.234, -8
  %708 = inttoptr i64 %707 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %XAX, align 8
  br i1 %706, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !138

block_0x2af:                                      ; preds = %block_0x189
  %711 = add i32 %709, 74643, !mcsema_real_eip !139
  %712 = xor i32 %711, %709, !mcsema_real_eip !139
  %713 = and i32 %712, 16
  %714 = icmp eq i32 %713, 0
  store i1 %714, i1* %AF, align 1, !mcsema_real_eip !139
  %715 = icmp slt i32 %711, 0
  store i1 %715, i1* %SF, align 1, !mcsema_real_eip !139
  %716 = icmp eq i32 %711, 0, !mcsema_real_eip !139
  store i1 %716, i1* %ZF, align 1, !mcsema_real_eip !139
  %717 = xor i32 %709, -2147483648, !mcsema_real_eip !139
  %718 = and i32 %712, %717, !mcsema_real_eip !139
  %719 = icmp slt i32 %718, 0
  store i1 %719, i1* %OF, align 1, !mcsema_real_eip !139
  %720 = trunc i32 %711 to i8, !mcsema_real_eip !139
  %721 = tail call i8 @llvm.ctpop.i8(i8 %720), !mcsema_real_eip !139
  %722 = and i8 %721, 1
  %723 = icmp eq i8 %722, 0
  store i1 %723, i1* %PF, align 1, !mcsema_real_eip !139
  %724 = icmp ugt i32 %709, -74644
  br label %block_0x2c8, !mcsema_real_eip !140

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !141
  %725 = icmp slt i32 %709, 0
  store i1 %725, i1* %SF, align 1, !mcsema_real_eip !141
  %726 = icmp eq i32 %709, 0, !mcsema_real_eip !141
  store i1 %726, i1* %ZF, align 1, !mcsema_real_eip !141
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !141
  %727 = trunc i32 %709 to i8, !mcsema_real_eip !141
  %728 = tail call i8 @llvm.ctpop.i8(i8 %727), !mcsema_real_eip !141
  %729 = and i8 %728, 1
  %730 = icmp eq i8 %729, 0
  store i1 %730, i1* %PF, align 1, !mcsema_real_eip !141
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
