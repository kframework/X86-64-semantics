; ModuleID = 'Output/test_20.clang.lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_600ff0__got_type = type <{ i64, [8 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.Flags, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.Flags }
%struct.ArchState = type { i32, i32, i32, i32 }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.Flags }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.2] }
%struct.anon.2 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%union.Flags = type { i64 }
%struct.Memory = type opaque

@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), [8 x i8] c"@\10`\00\00\00\00\00" }>
@__bss_start = dllexport local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal constant void ()* @__mcsema_attach_call
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400770_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400844__term_proc
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4004a0_switches
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400380__init_proc

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400844__term_proc(%struct.State* nocapture dereferenceable(2688) %state2, i64 %pc, %struct.Memory* returned %memory1) #3 {
block_400844:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, -8
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %6 = xor i64 %3, %2
  %7 = lshr i64 %6, 4
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %12 = lshr i64 %3, 63
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %14 = lshr i64 %2, 63
  %15 = xor i64 %12, %14
  %16 = add nuw nsw i64 %15, %14
  %17 = icmp eq i64 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %20 = icmp ult i64 %2, 8
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %4, align 1, !tbaa !844
  %22 = trunc i64 %2 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #5
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %5, align 1, !tbaa !859
  store i8 %9, i8* %10, align 1, !tbaa !860
  %28 = icmp eq i64 %2, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %11, align 1, !tbaa !861
  %30 = trunc i64 %14 to i8
  store i8 %30, i8* %13, align 1, !tbaa !862
  store i8 %18, i8* %19, align 1, !tbaa !863
  %31 = inttoptr i64 %2 to i64*
  %32 = load i64, i64* %31
  store i64 %32, i64* %0, align 8, !tbaa !864
  %33 = add i64 %2, 8
  store i64 %33, i64* %1, align 8, !tbaa !864
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4004a0_switches(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_4004a0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8, !tbaa !864
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %7, i64* %10
  store i64 %9, i64* %5, align 8, !tbaa !864
  store i64 %9, i64* %6, align 8, !tbaa !864
  %11 = add i64 %8, -12
  %12 = load i32, i32* %2, align 4
  %13 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %13
  %14 = add i64 %8, -16
  %15 = inttoptr i64 %14 to i32*
  store i32 0, i32* %15
  %16 = inttoptr i64 %11 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %4, align 8, !tbaa !864
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1, !tbaa !844
  %20 = and i32 %17, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #5
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !859
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !861
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !862
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1, !tbaa !863
  %33 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1, !tbaa !860
  %34 = add i64 %8, -20
  %35 = inttoptr i64 %34 to i32*
  store i32 %17, i32* %35
  %.v = select i1 %26, i64 415, i64 28
  %36 = add i64 %.v, %pc
  store i64 %36, i64* %0, align 8, !tbaa !864
  br i1 %26, label %block_40063f, label %block_4004bc

block_4006cf:                                     ; preds = %block_400574
  %37 = add i64 %8, -16
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %38
  %40 = add i32 %39, 74634
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %3, align 8, !tbaa !864
  %42 = icmp ugt i32 %39, -74635
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %19, align 1, !tbaa !844
  %44 = and i32 %40, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #5
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  store i8 %48, i8* %25, align 1, !tbaa !859
  %49 = xor i32 %40, %39
  %50 = lshr i32 %49, 4
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  store i8 %52, i8* %33, align 1, !tbaa !860
  %53 = icmp eq i32 %40, 0
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %28, align 1, !tbaa !861
  %55 = lshr i32 %40, 31
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %31, align 1, !tbaa !862
  %57 = lshr i32 %39, 31
  %58 = xor i32 %55, %57
  %59 = add nuw nsw i32 %58, %55
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %32, align 1, !tbaa !863
  %62 = inttoptr i64 %37 to i32*
  store i32 %40, i32* %62
  %63 = add i64 %700, 153
  store i64 %63, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40063f:                                     ; preds = %block_4004a0
  %64 = add i64 %8, -16
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %65
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %3, align 8, !tbaa !864
  store i8 0, i8* %19, align 1, !tbaa !844
  %68 = and i32 %66, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #5
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %25, align 1, !tbaa !859
  store i8 0, i8* %33, align 1, !tbaa !860
  %73 = icmp eq i32 %66, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %28, align 1, !tbaa !861
  %75 = lshr i32 %66, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %31, align 1, !tbaa !862
  store i8 0, i8* %32, align 1, !tbaa !863
  %77 = inttoptr i64 %64 to i32*
  store i32 %66, i32* %77
  %78 = add i64 %36, 297
  store i64 %78, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_4006ef:                                     ; preds = %block_4005a0
  %79 = add i64 %8, -16
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %80
  %82 = add i32 %81, 74636
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %3, align 8, !tbaa !864
  %84 = icmp ugt i32 %81, -74637
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %19, align 1, !tbaa !844
  %86 = and i32 %82, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #5
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %25, align 1, !tbaa !859
  %91 = xor i32 %82, %81
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %33, align 1, !tbaa !860
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %28, align 1, !tbaa !861
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %31, align 1, !tbaa !862
  %99 = lshr i32 %81, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %32, align 1, !tbaa !863
  %104 = inttoptr i64 %79 to i32*
  store i32 %82, i32* %104
  %105 = add i64 %301, 121
  store i64 %105, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400768:                                     ; preds = %block_40070f, %block_400685, %block_4006ff, %block_400669, %block_40073f, %block_40072f, %block_4006bf, %block_40071f, %block_4006a1, %block_400693, %block_4006af, %block_4006df, %block_40063a, %block_400677, %block_40064d, %block_40074f, %block_40065b, %block_4006ef, %block_40063f, %block_4006cf
  %.pre-phi = phi i64 [ %1030, %block_40070f ], [ %1003, %block_400685 ], [ %976, %block_4006ff ], [ %949, %block_400669 ], [ %811, %block_40073f ], [ %756, %block_40072f ], [ %729, %block_4006bf ], [ %701, %block_40071f ], [ %646, %block_4006a1 ], [ %588, %block_400693 ], [ %506, %block_4006af ], [ %423, %block_4006df ], [ %357, %block_400677 ], [ %302, %block_40064d ], [ %643, %block_40074f ], [ %195, %block_40065b ], [ %643, %block_40063a ], [ %79, %block_4006ef ], [ %64, %block_40063f ], [ %37, %block_4006cf ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_40070f ], [ %memory1, %block_400685 ], [ %memory1, %block_4006ff ], [ %memory1, %block_400669 ], [ %memory1, %block_40073f ], [ %memory1, %block_40072f ], [ %memory1, %block_4006bf ], [ %memory1, %block_40071f ], [ %memory1, %block_4006a1 ], [ %memory1, %block_400693 ], [ %memory1, %block_4006af ], [ %memory1, %block_4006df ], [ %memory1, %block_400677 ], [ %memory1, %block_40064d ], [ %memory1, %block_40074f ], [ %memory1, %block_40065b ], [ %memory1, %block_40063a ], [ %memory1, %block_4006ef ], [ %memory1, %block_40063f ], [ %memory1, %block_4006cf ]
  %106 = inttoptr i64 %.pre-phi to i32*
  %107 = load i32, i32* %106
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %3, align 8, !tbaa !864
  %109 = inttoptr i64 %9 to i64*
  %110 = load i64, i64* %109
  store i64 %110, i64* %6, align 8, !tbaa !864
  %111 = inttoptr i64 %8 to i64*
  %112 = load i64, i64* %111
  store i64 %112, i64* %0, align 8, !tbaa !864
  %113 = add i64 %8, 8
  store i64 %113, i64* %5, align 8, !tbaa !864
  ret %struct.Memory* %MEMORY.0

block_4004e4:                                     ; preds = %block_4004d0
  %114 = inttoptr i64 %34 to i32*
  %115 = load i32, i32* %114
  %116 = add i32 %115, -4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %3, align 8, !tbaa !864
  %118 = icmp ult i32 %115, 4
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %19, align 1, !tbaa !844
  %120 = and i32 %116, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #5
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %25, align 1, !tbaa !859
  %125 = xor i32 %116, %115
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %33, align 1, !tbaa !860
  %129 = icmp eq i32 %116, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %28, align 1, !tbaa !861
  %131 = lshr i32 %116, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %31, align 1, !tbaa !862
  %133 = lshr i32 %115, 31
  %134 = xor i32 %131, %133
  %135 = add nuw nsw i32 %134, %133
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %32, align 1, !tbaa !863
  %138 = add i64 %8, -32
  %139 = inttoptr i64 %138 to i32*
  store i32 %116, i32* %139
  %.v21 = select i1 %129, i64 389, i64 20
  %140 = add i64 %194, %.v21
  store i64 %140, i64* %0, align 8, !tbaa !864
  br i1 %129, label %block_400669, label %block_4004f8

block_40055e:                                     ; preds = %block_400548
  %141 = inttoptr i64 %34 to i32*
  %142 = load i32, i32* %141
  %143 = add i32 %142, -74633
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %3, align 8, !tbaa !864
  %145 = icmp ult i32 %142, 74633
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %19, align 1, !tbaa !844
  %147 = and i32 %143, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147) #5
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %25, align 1, !tbaa !859
  %152 = xor i32 %143, %142
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %33, align 1, !tbaa !860
  %156 = icmp eq i32 %143, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %28, align 1, !tbaa !861
  %158 = lshr i32 %143, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %31, align 1, !tbaa !862
  %160 = lshr i32 %142, 31
  %161 = xor i32 %158, %160
  %162 = add nuw nsw i32 %161, %160
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %32, align 1, !tbaa !863
  %165 = add i64 %8, -56
  %166 = inttoptr i64 %165 to i32*
  store i32 %143, i32* %166
  %.v27 = select i1 %156, i64 353, i64 22
  %167 = add i64 %274, %.v27
  store i64 %167, i64* %0, align 8, !tbaa !864
  br i1 %156, label %block_4006bf, label %block_400574

block_4004d0:                                     ; preds = %block_4004bc
  %168 = inttoptr i64 %34 to i32*
  %169 = load i32, i32* %168
  %170 = add i32 %169, -2
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %3, align 8, !tbaa !864
  %172 = icmp ult i32 %169, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %19, align 1, !tbaa !844
  %174 = and i32 %170, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #5
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %25, align 1, !tbaa !859
  %179 = xor i32 %170, %169
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %33, align 1, !tbaa !860
  %183 = icmp eq i32 %170, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %28, align 1, !tbaa !861
  %185 = lshr i32 %170, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %31, align 1, !tbaa !862
  %187 = lshr i32 %169, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %32, align 1, !tbaa !863
  %192 = add i64 %8, -28
  %193 = inttoptr i64 %192 to i32*
  store i32 %170, i32* %193
  %.v20 = select i1 %183, i64 395, i64 20
  %194 = add i64 %356, %.v20
  store i64 %194, i64* %0, align 8, !tbaa !864
  br i1 %183, label %block_40065b, label %block_4004e4

block_40065b:                                     ; preds = %block_4004d0
  %195 = add i64 %8, -16
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196
  %198 = add i32 %197, 2
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %3, align 8, !tbaa !864
  %200 = icmp ugt i32 %197, -3
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %19, align 1, !tbaa !844
  %202 = and i32 %198, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202) #5
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %25, align 1, !tbaa !859
  %207 = xor i32 %198, %197
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %33, align 1, !tbaa !860
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %28, align 1, !tbaa !861
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %31, align 1, !tbaa !862
  %215 = lshr i32 %197, 31
  %216 = xor i32 %213, %215
  %217 = add nuw nsw i32 %216, %213
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %32, align 1, !tbaa !863
  %220 = inttoptr i64 %195 to i32*
  store i32 %198, i32* %220
  %221 = add i64 %194, 269
  store i64 %221, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40074f:                                     ; preds = %block_400624
  %222 = add i32 %645, 74643
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %3, align 8, !tbaa !864
  %224 = icmp ugt i32 %645, -74644
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %19, align 1, !tbaa !844
  %226 = and i32 %222, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226) #5
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %25, align 1, !tbaa !859
  %231 = xor i32 %645, 16
  %232 = xor i32 %231, %222
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %33, align 1, !tbaa !860
  %236 = icmp eq i32 %222, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %28, align 1, !tbaa !861
  %238 = lshr i32 %222, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %31, align 1, !tbaa !862
  %240 = lshr i32 %645, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %32, align 1, !tbaa !863
  %245 = inttoptr i64 %643 to i32*
  store i32 %222, i32* %245
  %246 = add i64 %642, 25
  store i64 %246, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400548:                                     ; preds = %block_400534
  %247 = inttoptr i64 %34 to i32*
  %248 = load i32, i32* %247
  %249 = add i32 %248, -255
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %3, align 8, !tbaa !864
  %251 = icmp ult i32 %248, 255
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %19, align 1, !tbaa !844
  %253 = and i32 %249, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #5
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %25, align 1, !tbaa !859
  %258 = xor i32 %248, 16
  %259 = xor i32 %258, %249
  %260 = lshr i32 %259, 4
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %33, align 1, !tbaa !860
  %263 = icmp eq i32 %249, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %28, align 1, !tbaa !861
  %265 = lshr i32 %249, 31
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %31, align 1, !tbaa !862
  %267 = lshr i32 %248, 31
  %268 = xor i32 %265, %267
  %269 = add nuw nsw i32 %268, %267
  %270 = icmp eq i32 %269, 2
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %32, align 1, !tbaa !863
  %272 = add i64 %8, -52
  %273 = inttoptr i64 %272 to i32*
  store i32 %249, i32* %273
  %.v26 = select i1 %263, i64 359, i64 22
  %274 = add i64 %477, %.v26
  store i64 %274, i64* %0, align 8, !tbaa !864
  br i1 %263, label %block_4006af, label %block_40055e

block_4005a0:                                     ; preds = %block_40058a
  %275 = inttoptr i64 %34 to i32*
  %276 = load i32, i32* %275
  %277 = add i32 %276, -74636
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %3, align 8, !tbaa !864
  %279 = icmp ult i32 %276, 74636
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %19, align 1, !tbaa !844
  %281 = and i32 %277, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #5
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %25, align 1, !tbaa !859
  %286 = xor i32 %277, %276
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %33, align 1, !tbaa !860
  %290 = icmp eq i32 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %28, align 1, !tbaa !861
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %31, align 1, !tbaa !862
  %294 = lshr i32 %276, 31
  %295 = xor i32 %292, %294
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %32, align 1, !tbaa !863
  %299 = add i64 %8, -68
  %300 = inttoptr i64 %299 to i32*
  store i32 %277, i32* %300
  %.v30 = select i1 %290, i64 335, i64 22
  %301 = add i64 %920, %.v30
  store i64 %301, i64* %0, align 8, !tbaa !864
  br i1 %290, label %block_4006ef, label %block_4005b6

block_40064d:                                     ; preds = %block_4004bc
  %302 = add i64 %8, -16
  %303 = inttoptr i64 %302 to i32*
  %304 = load i32, i32* %303
  %305 = add i32 %304, 1
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %3, align 8, !tbaa !864
  %307 = icmp eq i32 %304, -1
  %308 = icmp eq i32 %305, 0
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %19, align 1, !tbaa !844
  %311 = and i32 %305, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311) #5
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %25, align 1, !tbaa !859
  %316 = xor i32 %305, %304
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %33, align 1, !tbaa !860
  %320 = zext i1 %308 to i8
  store i8 %320, i8* %28, align 1, !tbaa !861
  %321 = lshr i32 %305, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %31, align 1, !tbaa !862
  %323 = lshr i32 %304, 31
  %324 = xor i32 %321, %323
  %325 = add nuw nsw i32 %324, %321
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %32, align 1, !tbaa !863
  %328 = inttoptr i64 %302 to i32*
  store i32 %305, i32* %328
  %329 = add i64 %356, 283
  store i64 %329, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_4004bc:                                     ; preds = %block_4004a0
  %330 = inttoptr i64 %34 to i32*
  %331 = load i32, i32* %330
  %332 = add i32 %331, -1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %3, align 8, !tbaa !864
  %334 = icmp eq i32 %331, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %19, align 1, !tbaa !844
  %336 = and i32 %332, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336) #5
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %25, align 1, !tbaa !859
  %341 = xor i32 %332, %331
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %33, align 1, !tbaa !860
  %345 = icmp eq i32 %332, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %28, align 1, !tbaa !861
  %347 = lshr i32 %332, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %31, align 1, !tbaa !862
  %349 = lshr i32 %331, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %32, align 1, !tbaa !863
  %354 = add i64 %8, -24
  %355 = inttoptr i64 %354 to i32*
  store i32 %332, i32* %355
  %.v19 = select i1 %345, i64 401, i64 20
  %356 = add i64 %36, %.v19
  store i64 %356, i64* %0, align 8, !tbaa !864
  br i1 %345, label %block_40064d, label %block_4004d0

block_400677:                                     ; preds = %block_4004f8
  %357 = add i64 %8, -16
  %358 = inttoptr i64 %357 to i32*
  %359 = load i32, i32* %358
  %360 = add i32 %359, 6
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %3, align 8, !tbaa !864
  %362 = icmp ugt i32 %359, -7
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %19, align 1, !tbaa !844
  %364 = and i32 %360, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364) #5
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %25, align 1, !tbaa !859
  %369 = xor i32 %360, %359
  %370 = lshr i32 %369, 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %33, align 1, !tbaa !860
  %373 = icmp eq i32 %360, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %28, align 1, !tbaa !861
  %375 = lshr i32 %360, 31
  %376 = trunc i32 %375 to i8
  store i8 %376, i8* %31, align 1, !tbaa !862
  %377 = lshr i32 %359, 31
  %378 = xor i32 %375, %377
  %379 = add nuw nsw i32 %378, %375
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %32, align 1, !tbaa !863
  %382 = inttoptr i64 %357 to i32*
  store i32 %360, i32* %382
  %383 = add i64 %587, 241
  store i64 %383, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40063a:                                     ; preds = %block_400624
  %384 = zext i32 %645 to i64
  store i64 %384, i64* %3, align 8, !tbaa !864
  store i8 0, i8* %19, align 1, !tbaa !844
  %385 = and i32 %645, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #5
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %25, align 1, !tbaa !859
  store i8 0, i8* %33, align 1, !tbaa !860
  %390 = icmp eq i32 %645, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %28, align 1, !tbaa !861
  %392 = lshr i32 %645, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %31, align 1, !tbaa !862
  store i8 0, i8* %32, align 1, !tbaa !863
  %394 = add i64 %642, 302
  store i64 %394, i64* %0, align 8
  %395 = inttoptr i64 %643 to i32*
  store i32 %645, i32* %395
  br label %block_400768

block_4005b6:                                     ; preds = %block_4005a0
  %396 = inttoptr i64 %34 to i32*
  %397 = load i32, i32* %396
  %398 = add i32 %397, -74637
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %3, align 8, !tbaa !864
  %400 = icmp ult i32 %397, 74637
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %19, align 1, !tbaa !844
  %402 = and i32 %398, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #5
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %25, align 1, !tbaa !859
  %407 = xor i32 %398, %397
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %33, align 1, !tbaa !860
  %411 = icmp eq i32 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %28, align 1, !tbaa !861
  %413 = lshr i32 %398, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %31, align 1, !tbaa !862
  %415 = lshr i32 %397, 31
  %416 = xor i32 %413, %415
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %32, align 1, !tbaa !863
  %420 = add i64 %8, -72
  %421 = inttoptr i64 %420 to i32*
  store i32 %398, i32* %421
  %.v31 = select i1 %411, i64 329, i64 22
  %422 = add i64 %301, %.v31
  store i64 %422, i64* %0, align 8, !tbaa !864
  br i1 %411, label %block_4006ff, label %block_4005cc

block_4006df:                                     ; preds = %block_40058a
  %423 = add i64 %8, -16
  %424 = inttoptr i64 %423 to i32*
  %425 = load i32, i32* %424
  %426 = add i32 %425, 74635
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %3, align 8, !tbaa !864
  %428 = icmp ugt i32 %425, -74636
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %19, align 1, !tbaa !844
  %430 = and i32 %426, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #5
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %25, align 1, !tbaa !859
  %435 = xor i32 %426, %425
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %33, align 1, !tbaa !860
  %439 = icmp eq i32 %426, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %28, align 1, !tbaa !861
  %441 = lshr i32 %426, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %31, align 1, !tbaa !862
  %443 = lshr i32 %425, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %441
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %32, align 1, !tbaa !863
  %448 = inttoptr i64 %423 to i32*
  store i32 %426, i32* %448
  %449 = add i64 %920, 137
  store i64 %449, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400534:                                     ; preds = %block_400520
  %450 = inttoptr i64 %34 to i32*
  %451 = load i32, i32* %450
  %452 = add i32 %451, -19
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %3, align 8, !tbaa !864
  %454 = icmp ult i32 %451, 19
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %19, align 1, !tbaa !844
  %456 = and i32 %452, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456) #5
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %25, align 1, !tbaa !859
  %461 = xor i32 %451, 16
  %462 = xor i32 %461, %452
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %33, align 1, !tbaa !860
  %466 = icmp eq i32 %452, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %28, align 1, !tbaa !861
  %468 = lshr i32 %452, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %31, align 1, !tbaa !862
  %470 = lshr i32 %451, 31
  %471 = xor i32 %468, %470
  %472 = add nuw nsw i32 %471, %470
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %32, align 1, !tbaa !863
  %475 = add i64 %8, -48
  %476 = inttoptr i64 %475 to i32*
  store i32 %452, i32* %476
  %.v25 = select i1 %466, i64 365, i64 20
  %477 = add i64 %560, %.v25
  store i64 %477, i64* %0, align 8, !tbaa !864
  br i1 %466, label %block_4006a1, label %block_400548

block_4005f8:                                     ; preds = %block_4005e2
  %478 = inttoptr i64 %34 to i32*
  %479 = load i32, i32* %478
  %480 = add i32 %479, -74641
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %3, align 8, !tbaa !864
  %482 = icmp ult i32 %479, 74641
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %19, align 1, !tbaa !844
  %484 = and i32 %480, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484) #5
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %25, align 1, !tbaa !859
  %489 = xor i32 %479, 16
  %490 = xor i32 %489, %480
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %33, align 1, !tbaa !860
  %494 = icmp eq i32 %480, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %28, align 1, !tbaa !861
  %496 = lshr i32 %480, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %31, align 1, !tbaa !862
  %498 = lshr i32 %479, 31
  %499 = xor i32 %496, %498
  %500 = add nuw nsw i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %32, align 1, !tbaa !863
  %503 = add i64 %8, -84
  %504 = inttoptr i64 %503 to i32*
  store i32 %480, i32* %504
  %.v34 = select i1 %494, i64 311, i64 22
  %505 = add i64 %948, %.v34
  store i64 %505, i64* %0, align 8, !tbaa !864
  br i1 %494, label %block_40072f, label %block_40060e

block_4006af:                                     ; preds = %block_400548
  %506 = add i64 %8, -16
  %507 = inttoptr i64 %506 to i32*
  %508 = load i32, i32* %507
  %509 = add i32 %508, 255
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %3, align 8, !tbaa !864
  %511 = icmp ugt i32 %508, -256
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %19, align 1, !tbaa !844
  %513 = and i32 %509, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513) #5
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %25, align 1, !tbaa !859
  %518 = xor i32 %508, 16
  %519 = xor i32 %518, %509
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %33, align 1, !tbaa !860
  %523 = icmp eq i32 %509, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %28, align 1, !tbaa !861
  %525 = lshr i32 %509, 31
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %31, align 1, !tbaa !862
  %527 = lshr i32 %508, 31
  %528 = xor i32 %525, %527
  %529 = add nuw nsw i32 %528, %525
  %530 = icmp eq i32 %529, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %32, align 1, !tbaa !863
  %532 = inttoptr i64 %506 to i32*
  store i32 %509, i32* %532
  %533 = add i64 %274, 185
  store i64 %533, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400520:                                     ; preds = %block_40050c
  %534 = inttoptr i64 %34 to i32*
  %535 = load i32, i32* %534
  %536 = add i32 %535, -13
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %3, align 8, !tbaa !864
  %538 = icmp ult i32 %535, 13
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %19, align 1, !tbaa !844
  %540 = and i32 %536, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540) #5
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %25, align 1, !tbaa !859
  %545 = xor i32 %536, %535
  %546 = lshr i32 %545, 4
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  store i8 %548, i8* %33, align 1, !tbaa !860
  %549 = icmp eq i32 %536, 0
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %28, align 1, !tbaa !861
  %551 = lshr i32 %536, 31
  %552 = trunc i32 %551 to i8
  store i8 %552, i8* %31, align 1, !tbaa !862
  %553 = lshr i32 %535, 31
  %554 = xor i32 %551, %553
  %555 = add nuw nsw i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %32, align 1, !tbaa !863
  %558 = add i64 %8, -44
  %559 = inttoptr i64 %558 to i32*
  store i32 %536, i32* %559
  %.v24 = select i1 %549, i64 371, i64 20
  %560 = add i64 %893, %.v24
  store i64 %560, i64* %0, align 8, !tbaa !864
  br i1 %549, label %block_400693, label %block_400534

block_4004f8:                                     ; preds = %block_4004e4
  %561 = inttoptr i64 %34 to i32*
  %562 = load i32, i32* %561
  %563 = add i32 %562, -6
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %3, align 8, !tbaa !864
  %565 = icmp ult i32 %562, 6
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %19, align 1, !tbaa !844
  %567 = and i32 %563, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #5
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %25, align 1, !tbaa !859
  %572 = xor i32 %563, %562
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %33, align 1, !tbaa !860
  %576 = icmp eq i32 %563, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %28, align 1, !tbaa !861
  %578 = lshr i32 %563, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %31, align 1, !tbaa !862
  %580 = lshr i32 %562, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %580
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %32, align 1, !tbaa !863
  %585 = add i64 %8, -36
  %586 = inttoptr i64 %585 to i32*
  store i32 %563, i32* %586
  %.v22 = select i1 %576, i64 383, i64 20
  %587 = add i64 %140, %.v22
  store i64 %587, i64* %0, align 8, !tbaa !864
  br i1 %576, label %block_400677, label %block_40050c

block_400693:                                     ; preds = %block_400520
  %588 = add i64 %8, -16
  %589 = inttoptr i64 %588 to i32*
  %590 = load i32, i32* %589
  %591 = add i32 %590, 13
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %3, align 8, !tbaa !864
  %593 = icmp ugt i32 %590, -14
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %19, align 1, !tbaa !844
  %595 = and i32 %591, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595) #5
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %25, align 1, !tbaa !859
  %600 = xor i32 %591, %590
  %601 = lshr i32 %600, 4
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %33, align 1, !tbaa !860
  %604 = icmp eq i32 %591, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %28, align 1, !tbaa !861
  %606 = lshr i32 %591, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %31, align 1, !tbaa !862
  %608 = lshr i32 %590, 31
  %609 = xor i32 %606, %608
  %610 = add nuw nsw i32 %609, %606
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %32, align 1, !tbaa !863
  %613 = inttoptr i64 %588 to i32*
  store i32 %591, i32* %613
  %614 = add i64 %560, 213
  store i64 %614, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400624:                                     ; preds = %block_40060e
  %615 = inttoptr i64 %34 to i32*
  %616 = load i32, i32* %615
  %617 = add i32 %616, -74643
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %3, align 8, !tbaa !864
  %619 = icmp ult i32 %616, 74643
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %19, align 1, !tbaa !844
  %621 = and i32 %617, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621) #5
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %25, align 1, !tbaa !859
  %626 = xor i32 %616, 16
  %627 = xor i32 %626, %617
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %33, align 1, !tbaa !860
  %631 = icmp eq i32 %617, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %28, align 1, !tbaa !861
  %633 = lshr i32 %617, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %31, align 1, !tbaa !862
  %635 = lshr i32 %616, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %32, align 1, !tbaa !863
  %640 = add i64 %8, -92
  %641 = inttoptr i64 %640 to i32*
  store i32 %617, i32* %641
  %.v36 = select i1 %631, i64 299, i64 22
  %642 = add i64 %866, %.v36
  store i64 %642, i64* %0, align 8, !tbaa !864
  %643 = add i64 %8, -16
  %644 = inttoptr i64 %643 to i32*
  %645 = load i32, i32* %644
  br i1 %631, label %block_40074f, label %block_40063a

block_4006a1:                                     ; preds = %block_400534
  %646 = add i64 %8, -16
  %647 = inttoptr i64 %646 to i32*
  %648 = load i32, i32* %647
  %649 = add i32 %648, 19
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %3, align 8, !tbaa !864
  %651 = icmp ugt i32 %648, -20
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %19, align 1, !tbaa !844
  %653 = and i32 %649, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #5
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %25, align 1, !tbaa !859
  %658 = xor i32 %648, 16
  %659 = xor i32 %658, %649
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %33, align 1, !tbaa !860
  %663 = icmp eq i32 %649, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %28, align 1, !tbaa !861
  %665 = lshr i32 %649, 31
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %31, align 1, !tbaa !862
  %667 = lshr i32 %648, 31
  %668 = xor i32 %665, %667
  %669 = add nuw nsw i32 %668, %665
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %32, align 1, !tbaa !863
  %672 = inttoptr i64 %646 to i32*
  store i32 %649, i32* %672
  %673 = add i64 %477, 199
  store i64 %673, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400574:                                     ; preds = %block_40055e
  %674 = inttoptr i64 %34 to i32*
  %675 = load i32, i32* %674
  %676 = add i32 %675, -74634
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %3, align 8, !tbaa !864
  %678 = icmp ult i32 %675, 74634
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %19, align 1, !tbaa !844
  %680 = and i32 %676, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680) #5
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %25, align 1, !tbaa !859
  %685 = xor i32 %676, %675
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %33, align 1, !tbaa !860
  %689 = icmp eq i32 %676, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %28, align 1, !tbaa !861
  %691 = lshr i32 %676, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %31, align 1, !tbaa !862
  %693 = lshr i32 %675, 31
  %694 = xor i32 %691, %693
  %695 = add nuw nsw i32 %694, %693
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %32, align 1, !tbaa !863
  %698 = add i64 %8, -60
  %699 = inttoptr i64 %698 to i32*
  store i32 %676, i32* %699
  %.v28 = select i1 %689, i64 347, i64 22
  %700 = add i64 %167, %.v28
  store i64 %700, i64* %0, align 8, !tbaa !864
  br i1 %689, label %block_4006cf, label %block_40058a

block_40071f:                                     ; preds = %block_4005e2
  %701 = add i64 %8, -16
  %702 = inttoptr i64 %701 to i32*
  %703 = load i32, i32* %702
  %704 = add i32 %703, 74640
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %3, align 8, !tbaa !864
  %706 = icmp ugt i32 %703, -74641
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %19, align 1, !tbaa !844
  %708 = and i32 %704, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708) #5
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %25, align 1, !tbaa !859
  %713 = xor i32 %703, 16
  %714 = xor i32 %713, %704
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %33, align 1, !tbaa !860
  %718 = icmp eq i32 %704, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %28, align 1, !tbaa !861
  %720 = lshr i32 %704, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %31, align 1, !tbaa !862
  %722 = lshr i32 %703, 31
  %723 = xor i32 %720, %722
  %724 = add nuw nsw i32 %723, %720
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %32, align 1, !tbaa !863
  %727 = inttoptr i64 %701 to i32*
  store i32 %704, i32* %727
  %728 = add i64 %948, 73
  store i64 %728, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_4006bf:                                     ; preds = %block_40055e
  %729 = add i64 %8, -16
  %730 = inttoptr i64 %729 to i32*
  %731 = load i32, i32* %730
  %732 = add i32 %731, 74633
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %3, align 8, !tbaa !864
  %734 = icmp ugt i32 %731, -74634
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %19, align 1, !tbaa !844
  %736 = and i32 %732, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736) #5
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %25, align 1, !tbaa !859
  %741 = xor i32 %732, %731
  %742 = lshr i32 %741, 4
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  store i8 %744, i8* %33, align 1, !tbaa !860
  %745 = icmp eq i32 %732, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %28, align 1, !tbaa !861
  %747 = lshr i32 %732, 31
  %748 = trunc i32 %747 to i8
  store i8 %748, i8* %31, align 1, !tbaa !862
  %749 = lshr i32 %731, 31
  %750 = xor i32 %747, %749
  %751 = add nuw nsw i32 %750, %747
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %32, align 1, !tbaa !863
  %754 = inttoptr i64 %729 to i32*
  store i32 %732, i32* %754
  %755 = add i64 %167, 169
  store i64 %755, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40072f:                                     ; preds = %block_4005f8
  %756 = add i64 %8, -16
  %757 = inttoptr i64 %756 to i32*
  %758 = load i32, i32* %757
  %759 = add i32 %758, 74641
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %3, align 8, !tbaa !864
  %761 = icmp ugt i32 %758, -74642
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %19, align 1, !tbaa !844
  %763 = and i32 %759, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763) #5
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %25, align 1, !tbaa !859
  %768 = xor i32 %758, 16
  %769 = xor i32 %768, %759
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %33, align 1, !tbaa !860
  %773 = icmp eq i32 %759, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %28, align 1, !tbaa !861
  %775 = lshr i32 %759, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %31, align 1, !tbaa !862
  %777 = lshr i32 %758, 31
  %778 = xor i32 %775, %777
  %779 = add nuw nsw i32 %778, %775
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %32, align 1, !tbaa !863
  %782 = inttoptr i64 %756 to i32*
  store i32 %759, i32* %782
  %783 = add i64 %505, 57
  store i64 %783, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_4005cc:                                     ; preds = %block_4005b6
  %784 = inttoptr i64 %34 to i32*
  %785 = load i32, i32* %784
  %786 = add i32 %785, -74639
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %3, align 8, !tbaa !864
  %788 = icmp ult i32 %785, 74639
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %19, align 1, !tbaa !844
  %790 = and i32 %786, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790) #5
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %25, align 1, !tbaa !859
  %795 = xor i32 %786, %785
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %33, align 1, !tbaa !860
  %799 = icmp eq i32 %786, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %28, align 1, !tbaa !861
  %801 = lshr i32 %786, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %31, align 1, !tbaa !862
  %803 = lshr i32 %785, 31
  %804 = xor i32 %801, %803
  %805 = add nuw nsw i32 %804, %803
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %32, align 1, !tbaa !863
  %808 = add i64 %8, -76
  %809 = inttoptr i64 %808 to i32*
  store i32 %786, i32* %809
  %.v32 = select i1 %799, i64 323, i64 22
  %810 = add i64 %422, %.v32
  store i64 %810, i64* %0, align 8, !tbaa !864
  br i1 %799, label %block_40070f, label %block_4005e2

block_40073f:                                     ; preds = %block_40060e
  %811 = add i64 %8, -16
  %812 = inttoptr i64 %811 to i32*
  %813 = load i32, i32* %812
  %814 = add i32 %813, 74642
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %3, align 8, !tbaa !864
  %816 = icmp ugt i32 %813, -74643
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %19, align 1, !tbaa !844
  %818 = and i32 %814, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818) #5
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %25, align 1, !tbaa !859
  %823 = xor i32 %813, 16
  %824 = xor i32 %823, %814
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %33, align 1, !tbaa !860
  %828 = icmp eq i32 %814, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %28, align 1, !tbaa !861
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %31, align 1, !tbaa !862
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %32, align 1, !tbaa !863
  %837 = inttoptr i64 %811 to i32*
  store i32 %814, i32* %837
  %838 = add i64 %866, 41
  store i64 %838, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40060e:                                     ; preds = %block_4005f8
  %839 = inttoptr i64 %34 to i32*
  %840 = load i32, i32* %839
  %841 = add i32 %840, -74642
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %3, align 8, !tbaa !864
  %843 = icmp ult i32 %840, 74642
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %19, align 1, !tbaa !844
  %845 = and i32 %841, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845) #5
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %25, align 1, !tbaa !859
  %850 = xor i32 %840, 16
  %851 = xor i32 %850, %841
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %33, align 1, !tbaa !860
  %855 = icmp eq i32 %841, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %28, align 1, !tbaa !861
  %857 = lshr i32 %841, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %31, align 1, !tbaa !862
  %859 = lshr i32 %840, 31
  %860 = xor i32 %857, %859
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %32, align 1, !tbaa !863
  %864 = add i64 %8, -88
  %865 = inttoptr i64 %864 to i32*
  store i32 %841, i32* %865
  %.v35 = select i1 %855, i64 305, i64 22
  %866 = add i64 %505, %.v35
  store i64 %866, i64* %0, align 8, !tbaa !864
  br i1 %855, label %block_40073f, label %block_400624

block_40050c:                                     ; preds = %block_4004f8
  %867 = inttoptr i64 %34 to i32*
  %868 = load i32, i32* %867
  %869 = add i32 %868, -12
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %3, align 8, !tbaa !864
  %871 = icmp ult i32 %868, 12
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %19, align 1, !tbaa !844
  %873 = and i32 %869, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873) #5
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %25, align 1, !tbaa !859
  %878 = xor i32 %869, %868
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %33, align 1, !tbaa !860
  %882 = icmp eq i32 %869, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %28, align 1, !tbaa !861
  %884 = lshr i32 %869, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %31, align 1, !tbaa !862
  %886 = lshr i32 %868, 31
  %887 = xor i32 %884, %886
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %32, align 1, !tbaa !863
  %891 = add i64 %8, -40
  %892 = inttoptr i64 %891 to i32*
  store i32 %869, i32* %892
  %.v23 = select i1 %882, i64 377, i64 20
  %893 = add i64 %587, %.v23
  store i64 %893, i64* %0, align 8, !tbaa !864
  br i1 %882, label %block_400685, label %block_400520

block_40058a:                                     ; preds = %block_400574
  %894 = inttoptr i64 %34 to i32*
  %895 = load i32, i32* %894
  %896 = add i32 %895, -74635
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %3, align 8, !tbaa !864
  %898 = icmp ult i32 %895, 74635
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %19, align 1, !tbaa !844
  %900 = and i32 %896, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900) #5
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %25, align 1, !tbaa !859
  %905 = xor i32 %896, %895
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %33, align 1, !tbaa !860
  %909 = icmp eq i32 %896, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %28, align 1, !tbaa !861
  %911 = lshr i32 %896, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %31, align 1, !tbaa !862
  %913 = lshr i32 %895, 31
  %914 = xor i32 %911, %913
  %915 = add nuw nsw i32 %914, %913
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %32, align 1, !tbaa !863
  %918 = add i64 %8, -64
  %919 = inttoptr i64 %918 to i32*
  store i32 %896, i32* %919
  %.v29 = select i1 %909, i64 341, i64 22
  %920 = add i64 %700, %.v29
  store i64 %920, i64* %0, align 8, !tbaa !864
  br i1 %909, label %block_4006df, label %block_4005a0

block_4005e2:                                     ; preds = %block_4005cc
  %921 = inttoptr i64 %34 to i32*
  %922 = load i32, i32* %921
  %923 = add i32 %922, -74640
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %3, align 8, !tbaa !864
  %925 = icmp ult i32 %922, 74640
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %19, align 1, !tbaa !844
  %927 = and i32 %923, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927) #5
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %25, align 1, !tbaa !859
  %932 = xor i32 %922, 16
  %933 = xor i32 %932, %923
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %33, align 1, !tbaa !860
  %937 = icmp eq i32 %923, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %28, align 1, !tbaa !861
  %939 = lshr i32 %923, 31
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %31, align 1, !tbaa !862
  %941 = lshr i32 %922, 31
  %942 = xor i32 %939, %941
  %943 = add nuw nsw i32 %942, %941
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %32, align 1, !tbaa !863
  %946 = add i64 %8, -80
  %947 = inttoptr i64 %946 to i32*
  store i32 %923, i32* %947
  %.v33 = select i1 %937, i64 317, i64 22
  %948 = add i64 %810, %.v33
  store i64 %948, i64* %0, align 8, !tbaa !864
  br i1 %937, label %block_40071f, label %block_4005f8

block_400669:                                     ; preds = %block_4004e4
  %949 = add i64 %8, -16
  %950 = inttoptr i64 %949 to i32*
  %951 = load i32, i32* %950
  %952 = add i32 %951, 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %3, align 8, !tbaa !864
  %954 = icmp ugt i32 %951, -5
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %19, align 1, !tbaa !844
  %956 = and i32 %952, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956) #5
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %25, align 1, !tbaa !859
  %961 = xor i32 %952, %951
  %962 = lshr i32 %961, 4
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %33, align 1, !tbaa !860
  %965 = icmp eq i32 %952, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %28, align 1, !tbaa !861
  %967 = lshr i32 %952, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %31, align 1, !tbaa !862
  %969 = lshr i32 %951, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %32, align 1, !tbaa !863
  %974 = inttoptr i64 %949 to i32*
  store i32 %952, i32* %974
  %975 = add i64 %140, 255
  store i64 %975, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_4006ff:                                     ; preds = %block_4005b6
  %976 = add i64 %8, -16
  %977 = inttoptr i64 %976 to i32*
  %978 = load i32, i32* %977
  %979 = add i32 %978, 74637
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %3, align 8, !tbaa !864
  %981 = icmp ugt i32 %978, -74638
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %19, align 1, !tbaa !844
  %983 = and i32 %979, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983) #5
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %25, align 1, !tbaa !859
  %988 = xor i32 %979, %978
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %33, align 1, !tbaa !860
  %992 = icmp eq i32 %979, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %28, align 1, !tbaa !861
  %994 = lshr i32 %979, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %31, align 1, !tbaa !862
  %996 = lshr i32 %978, 31
  %997 = xor i32 %994, %996
  %998 = add nuw nsw i32 %997, %994
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %32, align 1, !tbaa !863
  %1001 = inttoptr i64 %976 to i32*
  store i32 %979, i32* %1001
  %1002 = add i64 %422, 105
  store i64 %1002, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_400685:                                     ; preds = %block_40050c
  %1003 = add i64 %8, -16
  %1004 = inttoptr i64 %1003 to i32*
  %1005 = load i32, i32* %1004
  %1006 = add i32 %1005, 12
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %3, align 8, !tbaa !864
  %1008 = icmp ugt i32 %1005, -13
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %19, align 1, !tbaa !844
  %1010 = and i32 %1006, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010) #5
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %25, align 1, !tbaa !859
  %1015 = xor i32 %1006, %1005
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %33, align 1, !tbaa !860
  %1019 = icmp eq i32 %1006, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %28, align 1, !tbaa !861
  %1021 = lshr i32 %1006, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %31, align 1, !tbaa !862
  %1023 = lshr i32 %1005, 31
  %1024 = xor i32 %1021, %1023
  %1025 = add nuw nsw i32 %1024, %1021
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %32, align 1, !tbaa !863
  %1028 = inttoptr i64 %1003 to i32*
  store i32 %1006, i32* %1028
  %1029 = add i64 %893, 227
  store i64 %1029, i64* %0, align 8, !tbaa !864
  br label %block_400768

block_40070f:                                     ; preds = %block_4005cc
  %1030 = add i64 %8, -16
  %1031 = inttoptr i64 %1030 to i32*
  %1032 = load i32, i32* %1031
  %1033 = add i32 %1032, 74639
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %3, align 8, !tbaa !864
  %1035 = icmp ugt i32 %1032, -74640
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %19, align 1, !tbaa !844
  %1037 = and i32 %1033, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037) #5
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %25, align 1, !tbaa !859
  %1042 = xor i32 %1033, %1032
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %33, align 1, !tbaa !860
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %28, align 1, !tbaa !861
  %1048 = lshr i32 %1033, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %31, align 1, !tbaa !862
  %1050 = lshr i32 %1032, 31
  %1051 = xor i32 %1048, %1050
  %1052 = add nuw nsw i32 %1051, %1048
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %32, align 1, !tbaa !863
  %1055 = inttoptr i64 %1030 to i32*
  store i32 %1033, i32* %1055
  %1056 = add i64 %810, 89
  store i64 %1056, i64* %0, align 8, !tbaa !864
  br label %block_400768
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400770_main(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400770:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = bitcast %union.Flags* %1 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.Flags* %4 to i32*
  %6 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %union.Flags, %union.Flags* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %9, align 8, !tbaa !864
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %10, align 8, !tbaa !864
  %15 = add i64 %12, -40
  store i64 %15, i64* %9, align 8, !tbaa !864
  %16 = icmp ult i64 %13, 32
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !844
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #5
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !859
  %26 = xor i64 %13, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !860
  %31 = icmp eq i64 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !861
  %34 = lshr i64 %15, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !862
  %37 = lshr i64 %13, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !863
  %43 = add i64 %12, -12
  %44 = inttoptr i64 %43 to i32*
  store i32 0, i32* %44
  %45 = add i64 %12, -16
  %46 = load i32, i32* %5, align 4
  %47 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %47
  %48 = add i64 %12, -24
  %49 = load i64, i64* %7, align 8
  %50 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %50
  %51 = add i64 %12, -28
  %52 = inttoptr i64 %51 to i32*
  store i32 0, i32* %52
  %53 = add i64 %pc, 36
  store i64 %53, i64* %0, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54
  br label %block_400794

block_4007bc:                                     ; preds = %block_400794
  store i64 0, i64* %6, align 8, !tbaa !864
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 32
  %57 = icmp ugt i64 %55, -33
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %18, align 1, !tbaa !844
  %59 = trunc i64 %56 to i32
  %60 = and i32 %59, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #5
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %25, align 1, !tbaa !859
  %65 = xor i64 %56, %55
  %66 = lshr i64 %65, 4
  %67 = trunc i64 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %30, align 1, !tbaa !860
  %69 = icmp eq i64 %56, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %33, align 1, !tbaa !861
  %71 = lshr i64 %56, 63
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %36, align 1, !tbaa !862
  %73 = lshr i64 %55, 63
  %74 = xor i64 %71, %73
  %75 = add nuw nsw i64 %74, %71
  %76 = icmp eq i64 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %42, align 1, !tbaa !863
  %78 = add i64 %55, 40
  %79 = inttoptr i64 %56 to i64*
  %80 = load i64, i64* %79
  store i64 %80, i64* %10, align 8, !tbaa !864
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81
  store i64 %82, i64* %0, align 8, !tbaa !864
  %83 = add i64 %55, 48
  store i64 %83, i64* %9, align 8, !tbaa !864
  ret %struct.Memory* %MEMORY.0

block_400794:                                     ; preds = %block_4007a1, %block_400770
  %84 = phi i64 [ %53, %block_400770 ], [ %153, %block_4007a1 ]
  %85 = phi i64 [ %13, %block_400770 ], [ %121, %block_4007a1 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400770 ], [ %120, %block_4007a1 ]
  %86 = add i64 %85, -20
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87
  %89 = add i32 %88, -255
  %90 = icmp ult i32 %88, 255
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %18, align 1, !tbaa !844
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #5
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %25, align 1, !tbaa !859
  %97 = xor i32 %88, 16
  %98 = xor i32 %97, %89
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %30, align 1, !tbaa !860
  %102 = icmp eq i32 %89, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %33, align 1, !tbaa !861
  %104 = lshr i32 %89, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %36, align 1, !tbaa !862
  %106 = lshr i32 %88, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %42, align 1, !tbaa !863
  %111 = icmp ne i8 %105, 0
  %112 = xor i1 %111, %109
  %.demorgan = or i1 %102, %112
  %.v = select i1 %.demorgan, i64 13, i64 40
  %113 = add i64 %84, %.v
  store i64 %113, i64* %0, align 8, !tbaa !864
  br i1 %.demorgan, label %block_4007a1, label %block_4007bc

block_4007a1:                                     ; preds = %block_400794
  %114 = zext i32 %88 to i64
  store i64 %114, i64* %8, align 8, !tbaa !864
  store i8 0, i8* %2, align 1, !tbaa !865
  %115 = add i64 %113, -769
  %116 = add i64 %113, 10
  %117 = load i64, i64* %9, align 8, !tbaa !864
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %116, i64* %119
  store i64 %118, i64* %9, align 8, !tbaa !864
  store i64 %115, i64* %0, align 8, !tbaa !864
  %120 = tail call %struct.Memory* @sub_4004a0_switches(%struct.State* nonnull %state2, i64 %115, %struct.Memory* %MEMORY.0)
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, -24
  %123 = load i32, i32* %3, align 4
  %124 = load i64, i64* %0, align 8
  %125 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %125
  %126 = add i64 %121, -20
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32, i32* %127
  %129 = add i32 %128, 1
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %6, align 8, !tbaa !864
  %131 = icmp eq i32 %128, -1
  %132 = icmp eq i32 %129, 0
  %133 = or i1 %131, %132
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %18, align 1, !tbaa !844
  %135 = and i32 %129, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #5
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %25, align 1, !tbaa !859
  %140 = xor i32 %129, %128
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %30, align 1, !tbaa !860
  %144 = zext i1 %132 to i8
  store i8 %144, i8* %33, align 1, !tbaa !861
  %145 = lshr i32 %129, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %36, align 1, !tbaa !862
  %147 = lshr i32 %128, 31
  %148 = xor i32 %145, %147
  %149 = add nuw nsw i32 %148, %145
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %42, align 1, !tbaa !863
  %152 = inttoptr i64 %126 to i32*
  store i32 %129, i32* %152
  %153 = add i64 %124, -23
  store i64 %153, i64* %0, align 8, !tbaa !864
  br label %block_400794
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400380__init_proc(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400380:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %2, align 8, !tbaa !864
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %11, i64* %1, align 8, !tbaa !864
  store i8 0, i8* %5, align 1, !tbaa !844
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #5
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !859
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !861
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !862
  store i8 0, i8* %10, align 1, !tbaa !863
  store i8 0, i8* %7, align 1, !tbaa !860
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %pc
  store i64 %22, i64* %0, align 8, !tbaa !864
  br i1 %18, label %block_400392, label %block_400390

block_400392:                                     ; preds = %block_400390, %block_400380
  %23 = phi i64 [ %4, %block_400380 ], [ %.pre, %block_400390 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400380 ], [ %52, %block_400390 ]
  %24 = add i64 %23, 8
  %25 = icmp ugt i64 %23, -9
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %5, align 1, !tbaa !844
  %27 = trunc i64 %24 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #5
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  store i8 %32, i8* %6, align 1, !tbaa !859
  %33 = xor i64 %24, %23
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %7, align 1, !tbaa !860
  %37 = icmp eq i64 %24, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %8, align 1, !tbaa !861
  %39 = lshr i64 %24, 63
  %40 = trunc i64 %39 to i8
  store i8 %40, i8* %9, align 1, !tbaa !862
  %41 = lshr i64 %23, 63
  %42 = xor i64 %39, %41
  %43 = add nuw nsw i64 %42, %39
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %10, align 1, !tbaa !863
  %46 = inttoptr i64 %24 to i64*
  %47 = load i64, i64* %46
  store i64 %47, i64* %0, align 8, !tbaa !864
  %48 = add i64 %23, 16
  store i64 %48, i64* %2, align 8, !tbaa !864
  ret %struct.Memory* %MEMORY.0

block_400390:                                     ; preds = %block_400380
  %49 = add i64 %22, 2
  %50 = add i64 %3, -16
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %2, align 8, !tbaa !864
  store i64 %11, i64* %0, align 8, !tbaa !864
  %52 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %state2, i64 %11, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_400392
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #2

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #4 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #5
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #4 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400844;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #5
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @switches() local_unnamed_addr #4 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #5
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #4 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400380;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #5
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { naked nobuiltin noinline nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!842, !843}

!0 = !{!"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !38, imports: !41)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !25, !34}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 51, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 49, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 11)
!24 = !DIEnumerator(name: "kInvalidInstruction", value: 12)
!25 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !26, line: 381, baseType: !27, size: 16, elements: !29, identifier: "_ZTS21RequestPrivilegeLevel")
!26 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "kRingZero", value: 0)
!31 = !DIEnumerator(name: "kRingOne", value: 1)
!32 = !DIEnumerator(name: "kRingTwo", value: 2)
!33 = !DIEnumerator(name: "kRingThree", value: 3)
!34 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !26, line: 388, baseType: !27, size: 16, elements: !35, identifier: "_ZTS14TableIndicator")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!37 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !{!42, !47, !50, !53, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !79, !80, !81, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !159, !163, !167, !183, !186, !190, !198, !206, !210, !217, !221, !225, !227, !229, !233, !243, !247, !253, !259, !261, !265, !269, !273, !277, !288, !290, !294, !298, !302, !304, !310, !314, !318, !320, !322, !326, !334, !338, !342, !346, !348, !354, !356, !363, !368, !372, !376, !380, !384, !388, !390, !392, !396, !400, !404, !406, !410, !414, !416, !418, !422, !428, !433, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !452, !455, !459, !464, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !499, !505, !509, !511, !516, !518, !522, !526, !530, !538, !542, !546, !550, !554, !558, !562, !566, !570, !574, !578, !582, !586, !588, !592, !596, !600, !606, !610, !614, !616, !620, !624, !630, !632, !636, !640, !644, !648, !652, !656, !660, !661, !662, !663, !666, !667, !668, !669, !670, !671, !672, !674, !679, !684, !688, !690, !692, !694, !696, !703, !707, !711, !715, !719, !723, !728, !732, !734, !738, !744, !748, !753, !755, !757, !761, !765, !769, !771, !773, !775, !777, !781, !783, !785, !789, !793, !797, !801, !805, !807, !809, !813, !817, !821, !825, !827, !829, !833, !837, !838, !839, !840, !841}
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !45, line: 48)
!43 = !DINamespace(name: "std", scope: null, file: !44, line: 199)
!44 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.3.0/../../../../include/x86_64-linux-gnu/c++/6.3.0/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !46)
!46 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !48, line: 49)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !49)
!49 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !51, line: 50)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !52)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !54, line: 51)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !55)
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !57, line: 53)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !45)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !59, line: 54)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !48)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !61, line: 55)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !51)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !63, line: 56)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !54)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !65, line: 58)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !45)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !67, line: 59)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !48)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !69, line: 60)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !51)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !71, line: 61)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !54)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !73, line: 63)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !55)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !75, line: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !54)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !77, line: 66)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !27, line: 67)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !8, line: 68)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !82, line: 69)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !83)
!83 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !85, line: 71)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !77)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !87, line: 72)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !27)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !89, line: 73)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !91, line: 74)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !82)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !93, line: 76)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !77)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !95, line: 77)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !27)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !97, line: 78)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !99, line: 79)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !82)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !101, line: 81)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !83)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !103, line: 82)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !82)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !105, line: 58)
!105 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !107, file: !106, line: 77, size: 64, elements: !108, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!106 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.3.0/../../../../include/c++/6.3.0/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!107 = !DINamespace(name: "__exception_ptr", scope: !43, file: !106, line: 53)
!108 = !{!109, !111, !115, !118, !119, !124, !125, !129, !134, !138, !142, !145, !146, !149, !153}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !105, file: !106, line: 79, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DISubprogram(name: "exception_ptr", scope: !105, file: !106, line: 81, type: !112, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !110}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!115 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !105, file: !106, line: 83, type: !116, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !114}
!118 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !105, file: !106, line: 84, type: !116, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !105, file: !106, line: 86, type: !120, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!110, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!124 = !DISubprogram(name: "exception_ptr", scope: !105, file: !106, line: 92, type: !116, isLocal: false, isDefinition: false, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!125 = !DISubprogram(name: "exception_ptr", scope: !105, file: !106, line: 94, type: !126, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !114, !128}
!128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !123, size: 64)
!129 = !DISubprogram(name: "exception_ptr", scope: !105, file: !106, line: 97, type: !130, isLocal: false, isDefinition: false, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !114, !132}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !43, file: !44, line: 205, baseType: !133)
!133 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!134 = !DISubprogram(name: "exception_ptr", scope: !105, file: !106, line: 101, type: !135, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !114, !137}
!137 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !105, size: 64)
!138 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !105, file: !106, line: 114, type: !139, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !114, !128}
!141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !105, size: 64)
!142 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !105, file: !106, line: 118, type: !143, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!141, !114, !137}
!145 = !DISubprogram(name: "~exception_ptr", scope: !105, file: !106, line: 125, type: !116, isLocal: false, isDefinition: false, scopeLine: 125, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!146 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !105, file: !106, line: 128, type: !147, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !114, !141}
!149 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !105, file: !106, line: 140, type: !150, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !122}
!152 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !105, file: !106, line: 149, type: !154, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !122}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !43, file: !106, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !107, entity: !160, line: 71)
!160 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !43, file: !106, line: 67, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !105}
!163 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !164, entity: !166, line: 58)
!164 = !DINamespace(name: "__gnu_debug", scope: null, file: !165, line: 56)
!165 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.3.0/../../../../include/c++/6.3.0/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!166 = !DINamespace(name: "__debug", scope: !43, file: !165, line: 50)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !168, line: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !169, line: 106, baseType: !170)
!169 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !169, line: 94, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 82, size: 64, elements: !172, identifier: "_ZTS11__mbstate_t")
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !171, file: !169, line: 84, baseType: !52, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !171, file: !169, line: 93, baseType: !175, size: 32, offset: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !169, line: 85, size: 32, elements: !176, identifier: "_ZTSN11__mbstate_tUt_E")
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !175, file: !169, line: 88, baseType: !10, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !175, file: !169, line: 92, baseType: !179, size: 32)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 32, elements: !181)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !184, line: 139)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !185, line: 132, baseType: !10)
!185 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !187, line: 141)
!187 = !DISubprogram(name: "btowc", scope: !169, file: !169, line: 356, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!184, !52}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !191, line: 142)
!191 = !DISubprogram(name: "fgetwc", scope: !169, file: !169, line: 748, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!184, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !196, line: 64, baseType: !197)
!196 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !196, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !199, line: 143)
!199 = !DISubprogram(name: "fgetws", scope: !169, file: !169, line: 777, type: !200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !204, !52, !205}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !194)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !207, line: 144)
!207 = !DISubprogram(name: "fputwc", scope: !169, file: !169, line: 762, type: !208, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DISubroutineType(types: !209)
!209 = !{!184, !203, !194}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !211, line: 145)
!211 = !DISubprogram(name: "fputws", scope: !169, file: !169, line: 784, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!52, !214, !205}
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !218, line: 146)
!218 = !DISubprogram(name: "fwide", scope: !169, file: !169, line: 590, type: !219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!52, !194, !52}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !222, line: 147)
!222 = !DISubprogram(name: "fwprintf", scope: !169, file: !169, line: 597, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!52, !205, !214, null}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !226, line: 148)
!226 = !DISubprogram(name: "fwscanf", scope: !169, file: !169, line: 638, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !228, line: 149)
!228 = !DISubprogram(name: "getwc", scope: !169, file: !169, line: 749, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !230, line: 150)
!230 = !DISubprogram(name: "getwchar", scope: !169, file: !169, line: 755, type: !231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!184}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !234, line: 151)
!234 = !DISubprogram(name: "mbrlen", scope: !169, file: !169, line: 379, type: !235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !238, !237, !241}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 62, baseType: !83)
!238 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !244, line: 152)
!244 = !DISubprogram(name: "mbrtowc", scope: !169, file: !169, line: 368, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubroutineType(types: !246)
!246 = !{!237, !204, !238, !237, !241}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !248, line: 153)
!248 = !DISubprogram(name: "mbsinit", scope: !169, file: !169, line: 364, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{!52, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !254, line: 154)
!254 = !DISubprogram(name: "mbsrtowcs", scope: !169, file: !169, line: 411, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!237, !204, !257, !237, !241}
!257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !260, line: 155)
!260 = !DISubprogram(name: "putwc", scope: !169, file: !169, line: 763, type: !208, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !262, line: 156)
!262 = !DISubprogram(name: "putwchar", scope: !169, file: !169, line: 769, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!184, !203}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !266, line: 158)
!266 = !DISubprogram(name: "swprintf", scope: !169, file: !169, line: 607, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!52, !204, !237, !214, null}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !270, line: 160)
!270 = !DISubprogram(name: "swscanf", scope: !169, file: !169, line: 648, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DISubroutineType(types: !272)
!272 = !{!52, !214, !214, null}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !274, line: 161)
!274 = !DISubprogram(name: "ungetwc", scope: !169, file: !169, line: 792, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!184, !184, !194}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !278, line: 162)
!278 = !DISubprogram(name: "vfwprintf", scope: !169, file: !169, line: 615, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!52, !205, !214, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !283, identifier: "_ZTS13__va_list_tag")
!283 = !{!284, !285, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !282, file: !2, baseType: !10, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !282, file: !2, baseType: !10, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !282, file: !2, baseType: !110, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !282, file: !2, baseType: !110, size: 64, offset: 128)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !289, line: 164)
!289 = !DISubprogram(name: "vfwscanf", scope: !169, file: !169, line: 692, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !291, line: 167)
!291 = !DISubprogram(name: "vswprintf", scope: !169, file: !169, line: 628, type: !292, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DISubroutineType(types: !293)
!293 = !{!52, !204, !237, !214, !281}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !295, line: 170)
!295 = !DISubprogram(name: "vswscanf", scope: !169, file: !169, line: 704, type: !296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{!52, !214, !214, !281}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !299, line: 172)
!299 = !DISubprogram(name: "vwprintf", scope: !169, file: !169, line: 623, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!52, !214, !281}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !303, line: 174)
!303 = !DISubprogram(name: "vwscanf", scope: !169, file: !169, line: 700, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !305, line: 176)
!305 = !DISubprogram(name: "wcrtomb", scope: !169, file: !169, line: 373, type: !306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DISubroutineType(types: !307)
!307 = !{!237, !308, !203, !241}
!308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !311, line: 177)
!311 = !DISubprogram(name: "wcscat", scope: !169, file: !169, line: 157, type: !312, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DISubroutineType(types: !313)
!313 = !{!202, !204, !214}
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !315, line: 178)
!315 = !DISubprogram(name: "wcscmp", scope: !169, file: !169, line: 166, type: !316, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DISubroutineType(types: !317)
!317 = !{!52, !215, !215}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !319, line: 179)
!319 = !DISubprogram(name: "wcscoll", scope: !169, file: !169, line: 195, type: !316, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !321, line: 180)
!321 = !DISubprogram(name: "wcscpy", scope: !169, file: !169, line: 147, type: !312, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !323, line: 181)
!323 = !DISubprogram(name: "wcscspn", scope: !169, file: !169, line: 255, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!237, !215, !215}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !327, line: 182)
!327 = !DISubprogram(name: "wcsftime", scope: !169, file: !169, line: 858, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!237, !204, !237, !214, !330}
!330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !169, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !335, line: 183)
!335 = !DISubprogram(name: "wcslen", scope: !169, file: !169, line: 290, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{!237, !215}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !339, line: 184)
!339 = !DISubprogram(name: "wcsncat", scope: !169, file: !169, line: 161, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{!202, !204, !214, !237}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !343, line: 185)
!343 = !DISubprogram(name: "wcsncmp", scope: !169, file: !169, line: 169, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{!52, !215, !215, !237}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !347, line: 186)
!347 = !DISubprogram(name: "wcsncpy", scope: !169, file: !169, line: 152, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !349, line: 187)
!349 = !DISubprogram(name: "wcsrtombs", scope: !169, file: !169, line: 417, type: !350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DISubroutineType(types: !351)
!351 = !{!237, !308, !352, !237, !241}
!352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !355, line: 188)
!355 = !DISubprogram(name: "wcsspn", scope: !169, file: !169, line: 259, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !357, line: 189)
!357 = !DISubprogram(name: "wcstod", scope: !169, file: !169, line: 453, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !214, !361}
!360 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !364, line: 191)
!364 = !DISubprogram(name: "wcstof", scope: !169, file: !169, line: 460, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !214, !361}
!367 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !369, line: 193)
!369 = !DISubprogram(name: "wcstok", scope: !169, file: !169, line: 285, type: !370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!202, !204, !214, !361}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !373, line: 194)
!373 = !DISubprogram(name: "wcstol", scope: !169, file: !169, line: 471, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!55, !214, !361, !52}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !377, line: 195)
!377 = !DISubprogram(name: "wcstoul", scope: !169, file: !169, line: 476, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!83, !214, !361, !52}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !381, line: 196)
!381 = !DISubprogram(name: "wcsxfrm", scope: !169, file: !169, line: 199, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!237, !204, !214, !237}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !385, line: 197)
!385 = !DISubprogram(name: "wctob", scope: !169, file: !169, line: 360, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!52, !184}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !389, line: 198)
!389 = !DISubprogram(name: "wmemcmp", scope: !169, file: !169, line: 328, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !391, line: 199)
!391 = !DISubprogram(name: "wmemcpy", scope: !169, file: !169, line: 332, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !393, line: 200)
!393 = !DISubprogram(name: "wmemmove", scope: !169, file: !169, line: 337, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!202, !202, !215, !237}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !397, line: 201)
!397 = !DISubprogram(name: "wmemset", scope: !169, file: !169, line: 341, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!202, !202, !203, !237}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !401, line: 202)
!401 = !DISubprogram(name: "wprintf", scope: !169, file: !169, line: 604, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!52, !214, null}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !405, line: 203)
!405 = !DISubprogram(name: "wscanf", scope: !169, file: !169, line: 645, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !407, line: 204)
!407 = !DISubprogram(name: "wcschr", scope: !169, file: !169, line: 230, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!202, !215, !203}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !411, line: 205)
!411 = !DISubprogram(name: "wcspbrk", scope: !169, file: !169, line: 269, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!202, !215, !215}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !415, line: 206)
!415 = !DISubprogram(name: "wcsrchr", scope: !169, file: !169, line: 240, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !417, line: 207)
!417 = !DISubprogram(name: "wcsstr", scope: !169, file: !169, line: 280, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !419, line: 208)
!419 = !DISubprogram(name: "wmemchr", scope: !169, file: !169, line: 323, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!202, !215, !203, !237}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !424, line: 248)
!423 = !DINamespace(name: "__gnu_cxx", scope: null, file: !44, line: 225)
!424 = !DISubprogram(name: "wcstold", scope: !169, file: !169, line: 462, type: !425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !214, !361}
!427 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !429, line: 257)
!429 = !DISubprogram(name: "wcstoll", scope: !169, file: !169, line: 486, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !214, !361, !52}
!432 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !434, line: 258)
!434 = !DISubprogram(name: "wcstoull", scope: !169, file: !169, line: 493, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !214, !361, !52}
!437 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !424, line: 264)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !429, line: 265)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !434, line: 266)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !364, line: 280)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !289, line: 283)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !295, line: 286)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !303, line: 289)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !424, line: 293)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !429, line: 294)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !434, line: 295)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !449, line: 44)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !43, file: !44, line: 201, baseType: !83)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !451, line: 45)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !43, file: !44, line: 202, baseType: !55)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !453, line: 53)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !454, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!454 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !456, line: 54)
!456 = !DISubprogram(name: "setlocale", scope: !454, file: !454, line: 124, type: !457, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!457 = !DISubroutineType(types: !458)
!458 = !{!309, !52, !239}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !460, line: 55)
!460 = !DISubprogram(name: "localeconv", scope: !454, file: !454, line: 127, type: !461, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DISubroutineType(types: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !465, line: 64)
!465 = !DISubprogram(name: "isalnum", scope: !466, file: !466, line: 110, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!467 = !DISubroutineType(types: !468)
!468 = !{!52, !52}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !470, line: 65)
!470 = !DISubprogram(name: "isalpha", scope: !466, file: !466, line: 111, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !472, line: 66)
!472 = !DISubprogram(name: "iscntrl", scope: !466, file: !466, line: 112, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !474, line: 67)
!474 = !DISubprogram(name: "isdigit", scope: !466, file: !466, line: 113, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !476, line: 68)
!476 = !DISubprogram(name: "isgraph", scope: !466, file: !466, line: 115, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !478, line: 69)
!478 = !DISubprogram(name: "islower", scope: !466, file: !466, line: 114, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !480, line: 70)
!480 = !DISubprogram(name: "isprint", scope: !466, file: !466, line: 116, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !482, line: 71)
!482 = !DISubprogram(name: "ispunct", scope: !466, file: !466, line: 117, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !484, line: 72)
!484 = !DISubprogram(name: "isspace", scope: !466, file: !466, line: 118, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !486, line: 73)
!486 = !DISubprogram(name: "isupper", scope: !466, file: !466, line: 119, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !488, line: 74)
!488 = !DISubprogram(name: "isxdigit", scope: !466, file: !466, line: 120, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !490, line: 75)
!490 = !DISubprogram(name: "tolower", scope: !466, file: !466, line: 124, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !492, line: 76)
!492 = !DISubprogram(name: "toupper", scope: !466, file: !466, line: 127, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !494, line: 87)
!494 = !DISubprogram(name: "isblank", scope: !466, file: !466, line: 136, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !496, line: 124)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !497, line: 62, baseType: !498)
!497 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !500, line: 125)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !497, line: 70, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 66, size: 128, elements: !502, identifier: "_ZTS6ldiv_t")
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !501, file: !497, line: 68, baseType: !55, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !501, file: !497, line: 69, baseType: !55, size: 64, offset: 64)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !506, line: 127)
!506 = !DISubprogram(name: "abort", scope: !497, file: !497, line: 476, type: !507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{null}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !510, line: 128)
!510 = !DISubprogram(name: "abs", scope: !497, file: !497, line: 735, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !512, line: 129)
!512 = !DISubprogram(name: "atexit", scope: !497, file: !497, line: 480, type: !513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{!52, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !517, line: 132)
!517 = !DISubprogram(name: "at_quick_exit", scope: !497, file: !497, line: 485, type: !513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !519, line: 135)
!519 = !DISubprogram(name: "atof", scope: !497, file: !497, line: 105, type: !520, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{!360, !239}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !523, line: 136)
!523 = !DISubprogram(name: "atoi", scope: !497, file: !497, line: 108, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!52, !239}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !527, line: 137)
!527 = !DISubprogram(name: "atol", scope: !497, file: !497, line: 111, type: !528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!528 = !DISubroutineType(types: !529)
!529 = !{!55, !239}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !531, line: 138)
!531 = !DISubprogram(name: "bsearch", scope: !497, file: !497, line: 715, type: !532, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!532 = !DISubroutineType(types: !533)
!533 = !{!110, !39, !39, !237, !237, !534}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !497, line: 702, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!52, !39, !39}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !539, line: 139)
!539 = !DISubprogram(name: "calloc", scope: !497, file: !497, line: 429, type: !540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!540 = !DISubroutineType(types: !541)
!541 = !{!110, !237, !237}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !543, line: 140)
!543 = !DISubprogram(name: "div", scope: !497, file: !497, line: 749, type: !544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!544 = !DISubroutineType(types: !545)
!545 = !{!496, !52, !52}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !547, line: 141)
!547 = !DISubprogram(name: "exit", scope: !497, file: !497, line: 504, type: !548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !52}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !551, line: 142)
!551 = !DISubprogram(name: "free", scope: !497, file: !497, line: 444, type: !552, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !110}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !555, line: 143)
!555 = !DISubprogram(name: "getenv", scope: !497, file: !497, line: 525, type: !556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!556 = !DISubroutineType(types: !557)
!557 = !{!309, !239}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !559, line: 144)
!559 = !DISubprogram(name: "labs", scope: !497, file: !497, line: 736, type: !560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{!55, !55}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !563, line: 145)
!563 = !DISubprogram(name: "ldiv", scope: !497, file: !497, line: 751, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!500, !55, !55}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !567, line: 146)
!567 = !DISubprogram(name: "malloc", scope: !497, file: !497, line: 427, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!110, !237}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !571, line: 148)
!571 = !DISubprogram(name: "mblen", scope: !497, file: !497, line: 823, type: !572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!52, !239, !237}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !575, line: 149)
!575 = !DISubprogram(name: "mbstowcs", scope: !497, file: !497, line: 834, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!237, !204, !238, !237}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !579, line: 150)
!579 = !DISubprogram(name: "mbtowc", scope: !497, file: !497, line: 826, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!52, !204, !238, !237}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !583, line: 152)
!583 = !DISubprogram(name: "qsort", scope: !497, file: !497, line: 725, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !110, !237, !237, !534}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !587, line: 155)
!587 = !DISubprogram(name: "quick_exit", scope: !497, file: !497, line: 510, type: !548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !589, line: 158)
!589 = !DISubprogram(name: "rand", scope: !497, file: !497, line: 335, type: !590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{!52}
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !593, line: 159)
!593 = !DISubprogram(name: "realloc", scope: !497, file: !497, line: 441, type: !594, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubroutineType(types: !595)
!595 = !{!110, !110, !237}
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !597, line: 160)
!597 = !DISubprogram(name: "srand", scope: !497, file: !497, line: 337, type: !598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !10}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !601, line: 161)
!601 = !DISubprogram(name: "strtod", scope: !497, file: !497, line: 125, type: !602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{!360, !238, !604}
!604 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !607, line: 162)
!607 = !DISubprogram(name: "strtol", scope: !497, file: !497, line: 144, type: !608, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{!55, !238, !604, !52}
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !611, line: 163)
!611 = !DISubprogram(name: "strtoul", scope: !497, file: !497, line: 148, type: !612, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!612 = !DISubroutineType(types: !613)
!613 = !{!83, !238, !604, !52}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !615, line: 164)
!615 = !DISubprogram(name: "system", scope: !497, file: !497, line: 677, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !617, line: 166)
!617 = !DISubprogram(name: "wcstombs", scope: !497, file: !497, line: 837, type: !618, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!618 = !DISubroutineType(types: !619)
!619 = !{!237, !308, !214, !237}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !621, line: 167)
!621 = !DISubprogram(name: "wctomb", scope: !497, file: !497, line: 830, type: !622, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!622 = !DISubroutineType(types: !623)
!623 = !{!52, !309, !203}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !625, line: 220)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !497, line: 82, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 78, size: 128, elements: !627, identifier: "_ZTS7lldiv_t")
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !626, file: !497, line: 80, baseType: !432, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !626, file: !497, line: 81, baseType: !432, size: 64, offset: 64)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !631, line: 226)
!631 = !DISubprogram(name: "_Exit", scope: !497, file: !497, line: 518, type: !548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !633, line: 230)
!633 = !DISubprogram(name: "llabs", scope: !497, file: !497, line: 740, type: !634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!634 = !DISubroutineType(types: !635)
!635 = !{!432, !432}
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !637, line: 236)
!637 = !DISubprogram(name: "lldiv", scope: !497, file: !497, line: 757, type: !638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!638 = !DISubroutineType(types: !639)
!639 = !{!625, !432, !432}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !641, line: 247)
!641 = !DISubprogram(name: "atoll", scope: !497, file: !497, line: 118, type: !642, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!642 = !DISubroutineType(types: !643)
!643 = !{!432, !239}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !645, line: 248)
!645 = !DISubprogram(name: "strtoll", scope: !497, file: !497, line: 170, type: !646, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubroutineType(types: !647)
!647 = !{!432, !238, !604, !52}
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !649, line: 249)
!649 = !DISubprogram(name: "strtoull", scope: !497, file: !497, line: 175, type: !650, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!650 = !DISubroutineType(types: !651)
!651 = !{!437, !238, !604, !52}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !653, line: 251)
!653 = !DISubprogram(name: "strtof", scope: !497, file: !497, line: 133, type: !654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!367, !238, !604}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !657, line: 252)
!657 = !DISubprogram(name: "strtold", scope: !497, file: !497, line: 136, type: !658, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!658 = !DISubroutineType(types: !659)
!659 = !{!427, !238, !604}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !625, line: 260)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !631, line: 262)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !633, line: 264)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !664, line: 265)
!664 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !423, file: !665, line: 233, type: !638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.3.0/../../../../include/c++/6.3.0/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !637, line: 266)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !641, line: 268)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !653, line: 269)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !645, line: 270)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !649, line: 271)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !657, line: 272)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !673, line: 98)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !196, line: 48, baseType: !197)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !675, line: 99)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !196, line: 112, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !677, line: 25, baseType: !678)
!677 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !680, line: 101)
!680 = !DISubprogram(name: "clearerr", scope: !196, file: !196, line: 828, type: !681, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !685, line: 102)
!685 = !DISubprogram(name: "fclose", scope: !196, file: !196, line: 239, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{!52, !683}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !689, line: 103)
!689 = !DISubprogram(name: "feof", scope: !196, file: !196, line: 830, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !691, line: 104)
!691 = !DISubprogram(name: "ferror", scope: !196, file: !196, line: 832, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !693, line: 105)
!693 = !DISubprogram(name: "fflush", scope: !196, file: !196, line: 244, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !695, line: 106)
!695 = !DISubprogram(name: "fgetc", scope: !196, file: !196, line: 533, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !697, line: 107)
!697 = !DISubprogram(name: "fgetpos", scope: !196, file: !196, line: 800, type: !698, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DISubroutineType(types: !699)
!699 = !{!52, !700, !701}
!700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !683)
!701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !704, line: 108)
!704 = !DISubprogram(name: "fgets", scope: !196, file: !196, line: 624, type: !705, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{!309, !308, !52, !700}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !708, line: 109)
!708 = !DISubprogram(name: "fopen", scope: !196, file: !196, line: 274, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{!683, !238, !238}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !712, line: 110)
!712 = !DISubprogram(name: "fprintf", scope: !196, file: !196, line: 358, type: !713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubroutineType(types: !714)
!714 = !{!52, !700, !238, null}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !716, line: 111)
!716 = !DISubprogram(name: "fputc", scope: !196, file: !196, line: 575, type: !717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!717 = !DISubroutineType(types: !718)
!718 = !{!52, !52, !683}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !720, line: 112)
!720 = !DISubprogram(name: "fputs", scope: !196, file: !196, line: 691, type: !721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DISubroutineType(types: !722)
!722 = !{!52, !238, !700}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !724, line: 113)
!724 = !DISubprogram(name: "fread", scope: !196, file: !196, line: 711, type: !725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DISubroutineType(types: !726)
!726 = !{!237, !727, !237, !237, !700}
!727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !729, line: 114)
!729 = !DISubprogram(name: "freopen", scope: !196, file: !196, line: 280, type: !730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!730 = !DISubroutineType(types: !731)
!731 = !{!683, !238, !238, !700}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !733, line: 115)
!733 = !DISubprogram(name: "fscanf", scope: !196, file: !196, line: 427, type: !713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !735, line: 116)
!735 = !DISubprogram(name: "fseek", scope: !196, file: !196, line: 751, type: !736, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!736 = !DISubroutineType(types: !737)
!737 = !{!52, !683, !55, !52}
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !739, line: 117)
!739 = !DISubprogram(name: "fsetpos", scope: !196, file: !196, line: 805, type: !740, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!740 = !DISubroutineType(types: !741)
!741 = !{!52, !683, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !745, line: 118)
!745 = !DISubprogram(name: "ftell", scope: !196, file: !196, line: 756, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!55, !683}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !749, line: 119)
!749 = !DISubprogram(name: "fwrite", scope: !196, file: !196, line: 717, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!237, !752, !237, !237, !700}
!752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !754, line: 120)
!754 = !DISubprogram(name: "getc", scope: !196, file: !196, line: 534, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !756, line: 121)
!756 = !DISubprogram(name: "getchar", scope: !196, file: !196, line: 540, type: !590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !758, line: 124)
!758 = !DISubprogram(name: "gets", scope: !196, file: !196, line: 640, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!309, !309}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !762, line: 126)
!762 = !DISubprogram(name: "perror", scope: !196, file: !196, line: 848, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !239}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !766, line: 127)
!766 = !DISubprogram(name: "printf", scope: !196, file: !196, line: 364, type: !767, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DISubroutineType(types: !768)
!768 = !{!52, !238, null}
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !770, line: 128)
!770 = !DISubprogram(name: "putc", scope: !196, file: !196, line: 576, type: !717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !772, line: 129)
!772 = !DISubprogram(name: "putchar", scope: !196, file: !196, line: 582, type: !467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !774, line: 130)
!774 = !DISubprogram(name: "puts", scope: !196, file: !196, line: 697, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !776, line: 131)
!776 = !DISubprogram(name: "remove", scope: !196, file: !196, line: 180, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !778, line: 132)
!778 = !DISubprogram(name: "rename", scope: !196, file: !196, line: 182, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!52, !239, !239}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !782, line: 133)
!782 = !DISubprogram(name: "rewind", scope: !196, file: !196, line: 761, type: !681, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !784, line: 134)
!784 = !DISubprogram(name: "scanf", scope: !196, file: !196, line: 433, type: !767, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !786, line: 135)
!786 = !DISubprogram(name: "setbuf", scope: !196, file: !196, line: 334, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !700, !308}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !790, line: 136)
!790 = !DISubprogram(name: "setvbuf", scope: !196, file: !196, line: 338, type: !791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!791 = !DISubroutineType(types: !792)
!792 = !{!52, !700, !308, !52, !237}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !794, line: 137)
!794 = !DISubprogram(name: "sprintf", scope: !196, file: !196, line: 366, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!52, !308, !238, null}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !798, line: 138)
!798 = !DISubprogram(name: "sscanf", scope: !196, file: !196, line: 435, type: !799, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DISubroutineType(types: !800)
!800 = !{!52, !238, !238, null}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !802, line: 139)
!802 = !DISubprogram(name: "tmpfile", scope: !196, file: !196, line: 197, type: !803, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DISubroutineType(types: !804)
!804 = !{!683}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !806, line: 141)
!806 = !DISubprogram(name: "tmpnam", scope: !196, file: !196, line: 211, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !808, line: 143)
!808 = !DISubprogram(name: "ungetc", scope: !196, file: !196, line: 704, type: !717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !810, line: 144)
!810 = !DISubprogram(name: "vfprintf", scope: !196, file: !196, line: 373, type: !811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DISubroutineType(types: !812)
!812 = !{!52, !700, !238, !281}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !814, line: 145)
!814 = !DISubprogram(name: "vprintf", scope: !196, file: !196, line: 379, type: !815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{!52, !238, !281}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !818, line: 146)
!818 = !DISubprogram(name: "vsprintf", scope: !196, file: !196, line: 381, type: !819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{!52, !308, !238, !281}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !822, line: 175)
!822 = !DISubprogram(name: "snprintf", scope: !196, file: !196, line: 388, type: !823, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!52, !308, !237, !238, null}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !826, line: 176)
!826 = !DISubprogram(name: "vfscanf", scope: !196, file: !196, line: 473, type: !811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !828, line: 177)
!828 = !DISubprogram(name: "vscanf", scope: !196, file: !196, line: 481, type: !815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !830, line: 178)
!830 = !DISubprogram(name: "vsnprintf", scope: !196, file: !196, line: 392, type: !831, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{!52, !308, !237, !238, !281}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !834, line: 179)
!834 = !DISubprogram(name: "vsscanf", scope: !196, file: !196, line: 485, type: !835, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DISubroutineType(types: !836)
!836 = !{!52, !238, !238, !281}
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !822, line: 185)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !826, line: 186)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !828, line: 187)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !830, line: 188)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !834, line: 189)
!842 = !{i32 2, !"Dwarf Version", i32 4}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{!845, !846, i64 2065}
!845 = !{!"_ZTS5State", !846, i64 16, !848, i64 2064, !846, i64 2080, !850, i64 2088, !852, i64 2112, !855, i64 2144, !856, i64 2416, !857, i64 2544, !858, i64 2672, !846, i64 2680}
!846 = !{!"omnipotent char", !847, i64 0}
!847 = !{!"Simple C++ TBAA"}
!848 = !{!"_ZTS10ArithFlags", !849, i64 0, !846, i64 1, !849, i64 2, !846, i64 3, !849, i64 4, !846, i64 5, !849, i64 6, !846, i64 7, !849, i64 8, !846, i64 9, !849, i64 10, !846, i64 11, !849, i64 12, !846, i64 13, !849, i64 14, !849, i64 15}
!849 = !{!"bool", !846, i64 0}
!850 = !{!"_ZTS8Segments", !851, i64 0, !846, i64 2, !851, i64 4, !846, i64 6, !851, i64 8, !846, i64 10, !851, i64 12, !846, i64 14, !851, i64 16, !846, i64 18, !851, i64 20, !846, i64 22}
!851 = !{!"short", !846, i64 0}
!852 = !{!"_ZTS12AddressSpace", !853, i64 0, !854, i64 8, !853, i64 16, !854, i64 24}
!853 = !{!"long", !846, i64 0}
!854 = !{!"_ZTS3Reg", !846, i64 0}
!855 = !{!"_ZTS3GPR", !853, i64 0, !854, i64 8, !853, i64 16, !854, i64 24, !853, i64 32, !854, i64 40, !853, i64 48, !854, i64 56, !853, i64 64, !854, i64 72, !853, i64 80, !854, i64 88, !853, i64 96, !854, i64 104, !853, i64 112, !854, i64 120, !853, i64 128, !854, i64 136, !853, i64 144, !854, i64 152, !853, i64 160, !854, i64 168, !853, i64 176, !854, i64 184, !853, i64 192, !854, i64 200, !853, i64 208, !854, i64 216, !853, i64 224, !854, i64 232, !853, i64 240, !854, i64 248, !853, i64 256, !854, i64 264}
!856 = !{!"_ZTS8X87Stack", !846, i64 0}
!857 = !{!"_ZTS3MMX", !846, i64 0}
!858 = !{!"_ZTS14FPUStatusFlags", !846, i64 0, !846, i64 1, !846, i64 2, !846, i64 3, !846, i64 4, !846, i64 5, !846, i64 6, !846, i64 7}
!859 = !{!845, !846, i64 2067}
!860 = !{!845, !846, i64 2069}
!861 = !{!845, !846, i64 2071}
!862 = !{!845, !846, i64 2073}
!863 = !{!845, !846, i64 2077}
!864 = !{!853, !853, i64 0}
!865 = !{!846, !846, i64 0}
