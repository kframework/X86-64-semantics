; ModuleID = 'Output/test_13.clang.lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_4009f0__rodata_type = type <{ [4 x i8], [4 x i8], [8 x i8], [4 x i8], [9 x i8], [9 x i8], [9 x i8] }>
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

@seg_4009f0__rodata = internal constant %seg_4009f0__rodata_type <{ [4 x i8] c"\01\00\02\00", [4 x i8] c"foo\00", [8 x i8] c"/stuff/\00", [4 x i8] c"bar\00", [9 x i8] c"a == %s\0A\00", [9 x i8] c"b == %s\0A\00", [9 x i8] c"c == %s\0A\00" }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), [8 x i8] c"\B8\10`\00\00\00\00\00" }>
@__bss_start = dllexport local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal constant void ()* @__mcsema_attach_call
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4007a0_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400620_doWork
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4004a0__init_proc
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4009e4__term_proc

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #2

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4004a0__init_proc(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_4004a0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %2, align 8, !tbaa !844
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %11, i64* %1, align 8, !tbaa !844
  store i8 0, i8* %5, align 1, !tbaa !848
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #6
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !860
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !861
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !862
  store i8 0, i8* %10, align 1, !tbaa !863
  store i8 0, i8* %7, align 1, !tbaa !864
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %pc
  store i64 %22, i64* %0, align 8, !tbaa !844
  br i1 %18, label %block_4004b2, label %block_4004b0

block_4004b2:                                     ; preds = %block_4004b0, %block_4004a0
  %23 = phi i64 [ %4, %block_4004a0 ], [ %.pre, %block_4004b0 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_4004a0 ], [ %52, %block_4004b0 ]
  %24 = add i64 %23, 8
  %25 = icmp ugt i64 %23, -9
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %5, align 1, !tbaa !848
  %27 = trunc i64 %24 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #6
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  store i8 %32, i8* %6, align 1, !tbaa !860
  %33 = xor i64 %24, %23
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %7, align 1, !tbaa !864
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
  store i64 %47, i64* %0, align 8, !tbaa !844
  %48 = add i64 %23, 16
  store i64 %48, i64* %2, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_4004b0:                                     ; preds = %block_4004a0
  %49 = add i64 %22, 2
  %50 = add i64 %3, -16
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %2, align 8, !tbaa !844
  store i64 %11, i64* %0, align 8, !tbaa !844
  %52 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %state2, i64 %11, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_4004b2
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4009e4__term_proc(%struct.State* nocapture dereferenceable(2688) %state2, i64 %pc, %struct.Memory* returned %memory1) #3 {
block_4009e4:
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
  store i8 %21, i8* %4, align 1, !tbaa !848
  %22 = trunc i64 %2 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #6
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %5, align 1, !tbaa !860
  store i8 %9, i8* %10, align 1, !tbaa !864
  %28 = icmp eq i64 %2, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %11, align 1, !tbaa !861
  %30 = trunc i64 %14 to i8
  store i8 %30, i8* %13, align 1, !tbaa !862
  store i8 %18, i8* %19, align 1, !tbaa !863
  %31 = inttoptr i64 %2 to i64*
  %32 = load i64, i64* %31
  store i64 %32, i64* %0, align 8, !tbaa !844
  %33 = add i64 %2, 8
  store i64 %33, i64* %1, align 8, !tbaa !844
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @sub_4006b0_checkFn(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) unnamed_addr #3 {
block_4006b0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %3 = bitcast %union.Flags* %2 to i32*
  %4 = getelementptr inbounds %union.Flags, %union.Flags* %2, i64 0, i32 0
  %5 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %7, align 8, !tbaa !844
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %9, i64* %12
  store i64 %11, i64* %8, align 8, !tbaa !844
  %13 = add i64 %10, -40
  %14 = icmp ult i64 %11, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !848
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #6
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !860
  %24 = xor i64 %11, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !864
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !861
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !862
  %35 = lshr i64 %11, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !863
  %41 = add i64 %10, -16
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %43
  %44 = add i64 %10, -20
  %45 = inttoptr i64 %44 to i32*
  store i32 1, i32* %45
  %46 = inttoptr i64 %41 to i64*
  %47 = load i64, i64* %46
  store i64 %47, i64* %6, align 8, !tbaa !844
  %48 = add i64 %pc, -464
  %49 = add i64 %pc, 28
  %50 = add i64 %10, -48
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %7, align 8, !tbaa !844
  store i64 %48, i64* %0, align 8, !tbaa !844
  %52 = tail call fastcc %struct.Memory* @ext_601090_strlen(%struct.State* nonnull %state2, %struct.Memory* %memory1) #6
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %0, align 8
  store i64 %54, i64* %5, align 8, !tbaa !844
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, -16
  %58 = inttoptr i64 %57 to i32*
  store i32 %53, i32* %58
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59
  %61 = add i32 %60, -1
  %62 = icmp eq i32 %60, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %16, align 1, !tbaa !848
  %64 = and i32 %61, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #6
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %23, align 1, !tbaa !860
  %69 = xor i32 %61, %60
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %28, align 1, !tbaa !864
  %73 = icmp eq i32 %61, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %31, align 1, !tbaa !861
  %75 = lshr i32 %61, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %34, align 1, !tbaa !862
  %77 = lshr i32 %60, 31
  %78 = xor i32 %75, %77
  %79 = add nuw nsw i32 %78, %77
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %40, align 1, !tbaa !863
  %82 = icmp ne i8 %76, 0
  %83 = xor i1 %82, %80
  %84 = or i1 %73, %83
  %.v = select i1 %84, i64 71, i64 15
  %85 = add i64 %55, %.v
  store i64 %85, i64* %0, align 8, !tbaa !844
  br i1 %84, label %block_400713, label %block_4006db

block_400707:                                     ; preds = %block_4006db
  %86 = add i64 %148, -12
  %87 = add i64 %147, 7
  store i64 %87, i64* %0, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 0, i32* %88
  br label %block_40070e

block_40070e:                                     ; preds = %block_4006db, %block_400707
  %89 = phi i64 [ %87, %block_400707 ], [ %147, %block_4006db ]
  %MEMORY.0 = phi %struct.Memory* [ %52, %block_400707 ], [ %52, %block_4006db ]
  %90 = add i64 %89, 5
  store i64 %90, i64* %0, align 8, !tbaa !844
  br label %block_400713

block_4006db:                                     ; preds = %block_4006b0
  %91 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %92 = bitcast %union.Flags* %1 to i8*
  %93 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %94 = add i64 %56, -8
  %95 = inttoptr i64 %94 to i64*
  %96 = load i64, i64* %95
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8, i8* %97
  %99 = add i64 %56, -17
  %100 = inttoptr i64 %99 to i8*
  store i8 %98, i8* %100
  %101 = inttoptr i64 %94 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %4, align 8, !tbaa !844
  %103 = inttoptr i64 %57 to i32*
  %104 = load i32, i32* %103
  %105 = add i32 %104, -1
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %93, align 8, !tbaa !844
  %107 = add i64 %102, %106
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8, i8* %108
  store i8 %109, i8* %92, align 1, !tbaa !865
  %110 = add i64 %56, -18
  %111 = inttoptr i64 %110 to i8*
  store i8 %109, i8* %111
  %112 = inttoptr i64 %99 to i8*
  %113 = load i8, i8* %112
  %114 = sext i8 %113 to i64
  %115 = and i64 %114, 4294967295
  store i64 %115, i64* %91, align 8, !tbaa !844
  %116 = inttoptr i64 %110 to i8*
  %117 = load i8, i8* %116
  %118 = sext i8 %117 to i64
  %119 = and i64 %118, 4294967295
  store i64 %119, i64* %6, align 8, !tbaa !844
  %120 = sext i8 %113 to i32
  %121 = sext i8 %117 to i32
  %122 = sub nsw i32 %120, %121
  %123 = icmp ult i8 %113, %117
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %16, align 1, !tbaa !848
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125) #6
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %23, align 1, !tbaa !860
  %130 = xor i8 %117, %113
  %131 = zext i8 %130 to i32
  %132 = xor i32 %131, %122
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %28, align 1, !tbaa !864
  %136 = icmp eq i32 %122, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %31, align 1, !tbaa !861
  %138 = lshr i32 %122, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %34, align 1, !tbaa !862
  %140 = lshr i32 %120, 31
  %141 = lshr i32 %121, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %40, align 1, !tbaa !863
  %.v3 = select i1 %136, i64 44, i64 51
  %147 = add i64 %85, %.v3
  store i64 %147, i64* %0, align 8, !tbaa !844
  %148 = load i64, i64* %8, align 8
  br i1 %136, label %block_400707, label %block_40070e

block_400713:                                     ; preds = %block_40070e, %block_4006b0
  %149 = phi i64 [ %56, %block_4006b0 ], [ %148, %block_40070e ]
  %MEMORY.1 = phi %struct.Memory* [ %52, %block_4006b0 ], [ %MEMORY.0, %block_40070e ]
  %150 = add i64 %149, -12
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32, i32* %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %4, align 8, !tbaa !844
  %154 = load i64, i64* %7, align 8
  %155 = add i64 %154, 32
  %156 = icmp ugt i64 %154, -33
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %16, align 1, !tbaa !848
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #6
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %23, align 1, !tbaa !860
  %164 = xor i64 %155, %154
  %165 = lshr i64 %164, 4
  %166 = trunc i64 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %28, align 1, !tbaa !864
  %168 = icmp eq i64 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %31, align 1, !tbaa !861
  %170 = lshr i64 %155, 63
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %34, align 1, !tbaa !862
  %172 = lshr i64 %154, 63
  %173 = xor i64 %170, %172
  %174 = add nuw nsw i64 %173, %170
  %175 = icmp eq i64 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %40, align 1, !tbaa !863
  %177 = add i64 %154, 40
  %178 = inttoptr i64 %155 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %8, align 8, !tbaa !844
  %180 = inttoptr i64 %177 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %0, align 8, !tbaa !844
  %182 = add i64 %154, 48
  store i64 %182, i64* %7, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.1
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4007a0_main(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_4007a0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = bitcast %union.Flags* %1 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.Flags* %4 to i32*
  %6 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %10 = getelementptr inbounds %union.Flags, %union.Flags* %4, i64 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %11, align 8, !tbaa !844
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16
  store i64 %15, i64* %12, align 8, !tbaa !844
  %17 = add i64 %14, -168
  %18 = icmp ult i64 %15, 160
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1, !tbaa !848
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #6
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1, !tbaa !860
  %28 = xor i64 %15, %17
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1, !tbaa !864
  %33 = icmp eq i64 %17, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1, !tbaa !861
  %36 = lshr i64 %17, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1, !tbaa !862
  %39 = lshr i64 %15, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1, !tbaa !863
  store i64 4, i64* %6, align 8, !tbaa !844
  store i64 4, i64* %7, align 8, !tbaa !844
  %45 = add i64 %14, -12
  %46 = inttoptr i64 %45 to i32*
  store i32 0, i32* %46
  %47 = add i64 %14, -16
  %48 = load i32, i32* %5, align 4
  %49 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %49
  %50 = add i64 %14, -24
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %52
  store i64 4, i64* %10, align 8, !tbaa !844
  %53 = add i64 %pc, -656
  %54 = add i64 %pc, 40
  %55 = add i64 %14, -176
  %56 = inttoptr i64 %55 to i64*
  store i64 %54, i64* %56
  store i64 %55, i64* %11, align 8, !tbaa !844
  store i64 %53, i64* %0, align 8, !tbaa !844
  %57 = tail call fastcc %struct.Memory* @ext_6010b0_malloc(%struct.State* nonnull %state2, %struct.Memory* %memory1) #6
  %58 = load i64, i64* %0, align 8
  store i64 8, i64* %8, align 8, !tbaa !844
  store i64 8, i64* %10, align 8, !tbaa !844
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, -56
  %61 = load i64, i64* %6, align 8
  %62 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %62
  %63 = add i64 %58, -696
  %64 = add i64 %58, 16
  %65 = load i64, i64* %11, align 8, !tbaa !844
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67
  store i64 %66, i64* %11, align 8, !tbaa !844
  store i64 %63, i64* %0, align 8, !tbaa !844
  %68 = tail call fastcc %struct.Memory* @ext_6010b0_malloc(%struct.State* nonnull %state2, %struct.Memory* %57) #6
  %69 = load i64, i64* %0, align 8
  store i64 4, i64* %8, align 8, !tbaa !844
  store i64 4, i64* %10, align 8, !tbaa !844
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, -64
  %72 = load i64, i64* %6, align 8
  %73 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %73
  %74 = add i64 %69, -712
  %75 = add i64 %69, 16
  %76 = load i64, i64* %11, align 8, !tbaa !844
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78
  store i64 %77, i64* %11, align 8, !tbaa !844
  store i64 %74, i64* %0, align 8, !tbaa !844
  %79 = tail call fastcc %struct.Memory* @ext_6010b0_malloc(%struct.State* nonnull %state2, %struct.Memory* %68) #6
  %80 = load i64, i64* %0, align 8
  store i8 0, i8* %20, align 1, !tbaa !848
  store i8 1, i8* %27, align 1, !tbaa !860
  store i8 1, i8* %35, align 1, !tbaa !861
  store i8 0, i8* %38, align 1, !tbaa !862
  store i8 0, i8* %44, align 1, !tbaa !863
  store i8 0, i8* %32, align 1, !tbaa !864
  %81 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4, i64* %7, align 8, !tbaa !844
  store i64 8, i64* %81, align 8, !tbaa !844
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, -72
  %84 = load i64, i64* %6, align 8
  %85 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %85
  %86 = add i64 %82, -56
  %87 = inttoptr i64 %86 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %6, align 8, !tbaa !844
  %89 = add i64 %82, -80
  %90 = inttoptr i64 %89 to i64*
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 20), i64* %90
  store i64 %88, i64* %10, align 8, !tbaa !844
  %91 = add i64 %82, -88
  %92 = inttoptr i64 %91 to i64*
  store i64 8, i64* %92
  store i64 0, i64* %9, align 8, !tbaa !844
  %93 = add i64 %82, -92
  %94 = inttoptr i64 %93 to i32*
  store i32 0, i32* %94
  store i64 4, i64* %8, align 8, !tbaa !844
  %95 = add i64 %82, -104
  %96 = inttoptr i64 %95 to i64*
  store i64 4, i64* %96
  %97 = add i64 %80, -744
  %98 = add i64 %80, 66
  %99 = load i64, i64* %11, align 8, !tbaa !844
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101
  store i64 %100, i64* %11, align 8, !tbaa !844
  store i64 %97, i64* %0, align 8, !tbaa !844
  %102 = tail call fastcc %struct.Memory* @ext_601070_memset(%struct.State* nonnull %state2, %struct.Memory* %79) #6
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, -64
  %105 = load i64, i64* %0, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106
  store i64 %107, i64* %10, align 8, !tbaa !844
  %108 = add i64 %103, -92
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %9, align 8, !tbaa !844
  %112 = add i64 %103, -88
  %113 = inttoptr i64 %112 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %8, align 8, !tbaa !844
  %115 = add i64 %105, -810
  %116 = add i64 %105, 16
  %117 = load i64, i64* %11, align 8, !tbaa !844
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %116, i64* %119
  store i64 %118, i64* %11, align 8, !tbaa !844
  store i64 %115, i64* %0, align 8, !tbaa !844
  %120 = tail call fastcc %struct.Memory* @ext_601070_memset(%struct.State* nonnull %state2, %struct.Memory* %102) #6
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, -72
  %123 = load i64, i64* %0, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124
  store i64 %125, i64* %10, align 8, !tbaa !844
  %126 = add i64 %121, -92
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32, i32* %127
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %9, align 8, !tbaa !844
  %130 = add i64 %121, -104
  %131 = inttoptr i64 %130 to i64*
  %132 = load i64, i64* %131
  store i64 %132, i64* %8, align 8, !tbaa !844
  %133 = add i64 %123, -826
  %134 = add i64 %123, 16
  %135 = load i64, i64* %11, align 8, !tbaa !844
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137
  store i64 %136, i64* %11, align 8, !tbaa !844
  store i64 %133, i64* %0, align 8, !tbaa !844
  %138 = tail call fastcc %struct.Memory* @ext_601070_memset(%struct.State* nonnull %state2, %struct.Memory* %120) #6
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, -56
  %141 = load i64, i64* %0, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142
  store i64 %143, i64* %10, align 8, !tbaa !844
  store i64 and (i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 4), i64 4294967295), i64* %9, align 8, !tbaa !844
  %144 = add i64 %141, -890
  %145 = add i64 %141, 14
  %146 = load i64, i64* %11, align 8, !tbaa !844
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148
  store i64 %147, i64* %11, align 8, !tbaa !844
  store i64 %144, i64* %0, align 8, !tbaa !844
  %149 = tail call fastcc %struct.Memory* @ext_601088_strcpy(%struct.State* nonnull %state2, %struct.Memory* %138) #6
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, -64
  %152 = load i64, i64* %0, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153
  store i64 %154, i64* %10, align 8, !tbaa !844
  store i64 and (i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 8), i64 4294967295), i64* %81, align 8, !tbaa !844
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 8), i64 4294967295) to i32) to i64), i64* %9, align 8, !tbaa !844
  %155 = add i64 %150, -112
  %156 = load i64, i64* %6, align 8
  %157 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %157
  %158 = add i64 %152, -904
  %159 = add i64 %152, 22
  %160 = load i64, i64* %11, align 8, !tbaa !844
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162
  store i64 %161, i64* %11, align 8, !tbaa !844
  store i64 %158, i64* %0, align 8, !tbaa !844
  %163 = tail call fastcc %struct.Memory* @ext_601088_strcpy(%struct.State* nonnull %state2, %struct.Memory* %149) #6
  %164 = load i64, i64* %12, align 8
  %165 = add i64 %164, -72
  %166 = load i64, i64* %0, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167
  store i64 %168, i64* %10, align 8, !tbaa !844
  store i64 and (i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 16), i64 4294967295), i64* %81, align 8, !tbaa !844
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64* %9, align 8, !tbaa !844
  %169 = add i64 %164, -120
  %170 = load i64, i64* %6, align 8
  %171 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %171
  %172 = add i64 %166, -926
  %173 = add i64 %166, 22
  %174 = load i64, i64* %11, align 8, !tbaa !844
  %175 = add i64 %174, -8
  %176 = inttoptr i64 %175 to i64*
  store i64 %173, i64* %176
  store i64 %175, i64* %11, align 8, !tbaa !844
  store i64 %172, i64* %0, align 8, !tbaa !844
  %177 = tail call fastcc %struct.Memory* @ext_601088_strcpy(%struct.State* nonnull %state2, %struct.Memory* %163) #6
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, -56
  %180 = load i64, i64* %0, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181
  %183 = add i64 %178, -48
  %184 = inttoptr i64 %183 to i64*
  store i64 %182, i64* %184
  %185 = add i64 %178, -64
  %186 = inttoptr i64 %185 to i64*
  %187 = load i64, i64* %186
  %188 = add i64 %178, -40
  %189 = inttoptr i64 %188 to i64*
  store i64 %187, i64* %189
  %190 = add i64 %178, -72
  %191 = inttoptr i64 %190 to i64*
  %192 = load i64, i64* %191
  store i64 %192, i64* %7, align 8, !tbaa !844
  %193 = add i64 %178, -32
  %194 = inttoptr i64 %193 to i64*
  store i64 %192, i64* %194
  %195 = inttoptr i64 %179 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %9, align 8, !tbaa !844
  %197 = add i64 %178, -80
  %198 = inttoptr i64 %197 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %10, align 8, !tbaa !844
  %200 = add i64 %178, -128
  %201 = load i64, i64* %6, align 8
  %202 = inttoptr i64 %200 to i64*
  store i64 %201, i64* %202
  store i8 0, i8* %2, align 1, !tbaa !865
  %203 = add i64 %180, -916
  %204 = add i64 %180, 43
  %205 = load i64, i64* %11, align 8, !tbaa !844
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207
  store i64 %206, i64* %11, align 8, !tbaa !844
  store i64 %203, i64* %0, align 8, !tbaa !844
  %208 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %177) #6
  %209 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 29), i64* %10, align 8, !tbaa !844
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, -64
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %9, align 8, !tbaa !844
  %214 = add i64 %210, -132
  %215 = load i32, i32* %3, align 4
  %216 = inttoptr i64 %214 to i32*
  store i32 %215, i32* %216
  store i8 0, i8* %2, align 1, !tbaa !865
  %217 = add i64 %209, -959
  %218 = add i64 %209, 27
  %219 = load i64, i64* %11, align 8, !tbaa !844
  %220 = add i64 %219, -8
  %221 = inttoptr i64 %220 to i64*
  store i64 %218, i64* %221
  store i64 %220, i64* %11, align 8, !tbaa !844
  store i64 %217, i64* %0, align 8, !tbaa !844
  %222 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %208) #6
  %223 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 38), i64* %10, align 8, !tbaa !844
  %224 = load i64, i64* %12, align 8
  %225 = add i64 %224, -72
  %226 = inttoptr i64 %225 to i64*
  %227 = load i64, i64* %226
  store i64 %227, i64* %9, align 8, !tbaa !844
  %228 = add i64 %224, -136
  %229 = load i32, i32* %3, align 4
  %230 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %230
  store i8 0, i8* %2, align 1, !tbaa !865
  %231 = add i64 %223, -986
  %232 = add i64 %223, 27
  %233 = load i64, i64* %11, align 8, !tbaa !844
  %234 = add i64 %233, -8
  %235 = inttoptr i64 %234 to i64*
  store i64 %232, i64* %235
  store i64 %234, i64* %11, align 8, !tbaa !844
  store i64 %231, i64* %0, align 8, !tbaa !844
  %236 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %222) #6
  %237 = load i64, i64* %0, align 8
  store i64 3, i64* %9, align 8, !tbaa !844
  %238 = load i64, i64* %12, align 8
  %239 = add i64 %238, -48
  store i64 %239, i64* %10, align 8, !tbaa !844
  %240 = add i64 %238, -140
  %241 = load i32, i32* %3, align 4
  %242 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %242
  store i8 0, i8* %2, align 1, !tbaa !865
  %243 = add i64 %237, -709
  %244 = add i64 %237, 22
  %245 = load i64, i64* %11, align 8, !tbaa !844
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247
  store i64 %246, i64* %11, align 8, !tbaa !844
  store i64 %243, i64* %0, align 8, !tbaa !844
  %248 = tail call %struct.Memory* @sub_400620_doWork(%struct.State* nonnull %state2, i64 %243, %struct.Memory* %236)
  %249 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 20), i64* %10, align 8, !tbaa !844
  %250 = load i64, i64* %12, align 8
  %251 = add i64 %250, -56
  %252 = inttoptr i64 %251 to i64*
  %253 = load i64, i64* %252
  store i64 %253, i64* %9, align 8, !tbaa !844
  %254 = add i64 %250, -144
  %255 = load i32, i32* %3, align 4
  %256 = inttoptr i64 %254 to i32*
  store i32 %255, i32* %256
  store i8 0, i8* %2, align 1, !tbaa !865
  %257 = add i64 %249, -1035
  %258 = add i64 %249, 27
  %259 = load i64, i64* %11, align 8, !tbaa !844
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261
  store i64 %260, i64* %11, align 8, !tbaa !844
  store i64 %257, i64* %0, align 8, !tbaa !844
  %262 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %248) #6
  %263 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 29), i64* %10, align 8, !tbaa !844
  %264 = load i64, i64* %12, align 8
  %265 = add i64 %264, -64
  %266 = inttoptr i64 %265 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %9, align 8, !tbaa !844
  %268 = add i64 %264, -148
  %269 = load i32, i32* %3, align 4
  %270 = inttoptr i64 %268 to i32*
  store i32 %269, i32* %270
  store i8 0, i8* %2, align 1, !tbaa !865
  %271 = add i64 %263, -1062
  %272 = add i64 %263, 27
  %273 = load i64, i64* %11, align 8, !tbaa !844
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275
  store i64 %274, i64* %11, align 8, !tbaa !844
  store i64 %271, i64* %0, align 8, !tbaa !844
  %276 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %262) #6
  %277 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_4009f0__rodata_type* @seg_4009f0__rodata to i64), i64 38), i64* %10, align 8, !tbaa !844
  %278 = load i64, i64* %12, align 8
  %279 = add i64 %278, -72
  %280 = inttoptr i64 %279 to i64*
  %281 = load i64, i64* %280
  store i64 %281, i64* %9, align 8, !tbaa !844
  %282 = add i64 %278, -152
  %283 = load i32, i32* %3, align 4
  %284 = inttoptr i64 %282 to i32*
  store i32 %283, i32* %284
  store i8 0, i8* %2, align 1, !tbaa !865
  %285 = add i64 %277, -1089
  %286 = add i64 %277, 27
  %287 = load i64, i64* %11, align 8, !tbaa !844
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %286, i64* %289
  store i64 %288, i64* %11, align 8, !tbaa !844
  store i64 %285, i64* %0, align 8, !tbaa !844
  %290 = tail call fastcc %struct.Memory* @ext_4004f0_printf(%struct.State* nonnull %state2, %struct.Memory* %276) #6
  store i64 0, i64* %81, align 8, !tbaa !844
  %291 = load i64, i64* %12, align 8
  %292 = add i64 %291, -156
  %293 = load i32, i32* %3, align 4
  %294 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %294
  store i64 0, i64* %6, align 8, !tbaa !844
  %295 = load i64, i64* %11, align 8
  %296 = add i64 %295, 160
  %297 = icmp ugt i64 %295, -161
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %20, align 1, !tbaa !848
  %299 = trunc i64 %296 to i32
  %300 = and i32 %299, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #6
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %27, align 1, !tbaa !860
  %305 = xor i64 %296, %295
  %306 = lshr i64 %305, 4
  %307 = trunc i64 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %32, align 1, !tbaa !864
  %309 = icmp eq i64 %296, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %35, align 1, !tbaa !861
  %311 = lshr i64 %296, 63
  %312 = trunc i64 %311 to i8
  store i8 %312, i8* %38, align 1, !tbaa !862
  %313 = lshr i64 %295, 63
  %314 = xor i64 %311, %313
  %315 = add nuw nsw i64 %314, %311
  %316 = icmp eq i64 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %44, align 1, !tbaa !863
  %318 = add i64 %295, 168
  %319 = inttoptr i64 %296 to i64*
  %320 = load i64, i64* %319
  store i64 %320, i64* %12, align 8, !tbaa !844
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321
  store i64 %322, i64* %0, align 8, !tbaa !844
  %323 = add i64 %295, 176
  store i64 %323, i64* %11, align 8, !tbaa !844
  ret %struct.Memory* %290
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400620_doWork(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400620:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0
  %4 = bitcast %union.Flags* %3 to i32*
  %5 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %9, align 8, !tbaa !844
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %10, align 8, !tbaa !844
  %15 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %18 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %21 = add i64 %12, -16
  %22 = load i64, i64* %8, align 8
  %23 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %23
  %24 = add i64 %12, -20
  %25 = load i32, i32* %4, align 4
  %26 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %26
  %27 = add i64 %12, -24
  %28 = inttoptr i64 %27 to i32*
  store i32 0, i32* %28
  %29 = inttoptr i64 %24 to i32*
  %30 = load i32, i32* %29
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = icmp ne i8 0, 0
  store i64 %32, i64* %8, align 8, !tbaa !844
  %34 = lshr i64 %31, 61
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %15, align 1, !tbaa !865
  %37 = trunc i64 %32 to i32
  %38 = and i32 %37, 248
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38) #6
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %16, align 1, !tbaa !865
  store i8 0, i8* %17, align 1, !tbaa !865
  %43 = icmp eq i32 %30, 0
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %18, align 1, !tbaa !865
  %45 = lshr i64 %31, 60
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 1
  store i8 %47, i8* %19, align 1, !tbaa !865
  %48 = zext i1 %33 to i8
  store i8 %48, i8* %20, align 1, !tbaa !865
  %49 = add i64 %pc, -272
  %50 = add i64 %pc, 35
  %51 = add i64 %12, -48
  %52 = inttoptr i64 %51 to i64*
  store i64 %50, i64* %52
  store i64 %51, i64* %9, align 8, !tbaa !844
  store i64 %49, i64* %0, align 8, !tbaa !844
  %53 = tail call fastcc %struct.Memory* @ext_6010b0_malloc(%struct.State* nonnull %state2, %struct.Memory* %memory1) #6
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, -24
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %0, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %0, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59
  br label %block_400647

block_400675:                                     ; preds = %block_400653
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, -32
  %62 = inttoptr i64 %61 to i64*
  %63 = load i64, i64* %62
  store i64 %63, i64* %8, align 8, !tbaa !844
  store i64 %63, i64* %7, align 8, !tbaa !844
  %64 = add i64 %133, 171
  %65 = add i64 %133, 13
  %66 = load i64, i64* %9, align 8, !tbaa !844
  %67 = add i64 %66, -8
  %68 = inttoptr i64 %67 to i64*
  store i64 %65, i64* %68
  store i64 %67, i64* %9, align 8, !tbaa !844
  store i64 %64, i64* %0, align 8, !tbaa !844
  %69 = tail call fastcc %struct.Memory* @sub_400720_doStuff(%struct.State* nonnull %state2, i64 %64, %struct.Memory* %121)
  %.pre = load i64, i64* %0, align 8
  br label %block_400682

block_400695:                                     ; preds = %block_400647
  %70 = add i64 %135, -24
  %71 = inttoptr i64 %70 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %5, align 8, !tbaa !844
  %73 = add i64 %72, 1
  %74 = inttoptr i64 %73 to i8*
  store i8 2, i8* %74
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 32
  %77 = icmp ugt i64 %75, -33
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %15, align 1, !tbaa !848
  %79 = trunc i64 %76 to i32
  %80 = and i32 %79, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80) #6
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %16, align 1, !tbaa !860
  %85 = xor i64 %76, %75
  %86 = lshr i64 %85, 4
  %87 = trunc i64 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %17, align 1, !tbaa !864
  %89 = icmp eq i64 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %18, align 1, !tbaa !861
  %91 = lshr i64 %76, 63
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %19, align 1, !tbaa !862
  %93 = lshr i64 %75, 63
  %94 = xor i64 %91, %93
  %95 = add nuw nsw i64 %94, %91
  %96 = icmp eq i64 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %20, align 1, !tbaa !863
  %98 = add i64 %75, 40
  %99 = inttoptr i64 %76 to i64*
  %100 = load i64, i64* %99
  store i64 %100, i64* %10, align 8, !tbaa !844
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %0, align 8, !tbaa !844
  %103 = add i64 %75, 48
  store i64 %103, i64* %9, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_400653:                                     ; preds = %block_400647
  %104 = add i64 %135, -8
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  %107 = sext i32 %138 to i64
  store i64 %107, i64* %6, align 8, !tbaa !844
  %108 = shl nsw i64 %107, 3
  %109 = add i64 %108, %106
  %110 = inttoptr i64 %109 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %5, align 8, !tbaa !844
  %112 = add i64 %135, -32
  %113 = inttoptr i64 %112 to i64*
  store i64 %111, i64* %113
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114
  store i64 %115, i64* %8, align 8, !tbaa !844
  %116 = add i64 %169, 93
  %117 = add i64 %169, 25
  %118 = load i64, i64* %9, align 8, !tbaa !844
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*
  store i64 %117, i64* %120
  store i64 %119, i64* %9, align 8, !tbaa !844
  store i64 %116, i64* %0, align 8, !tbaa !844
  %121 = tail call fastcc %struct.Memory* @sub_4006b0_checkFn(%struct.State* nonnull %state2, i64 %116, %struct.Memory* %MEMORY.0)
  %122 = load i32, i32* %2, align 4
  %123 = load i64, i64* %0, align 8
  store i8 0, i8* %15, align 1, !tbaa !848
  %124 = and i32 %122, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #6
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %16, align 1, !tbaa !860
  store i8 0, i8* %17, align 1, !tbaa !864
  %129 = icmp eq i32 %122, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %18, align 1, !tbaa !861
  %131 = lshr i32 %122, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %19, align 1, !tbaa !862
  store i8 0, i8* %20, align 1, !tbaa !863
  %.v4 = select i1 %129, i64 9, i64 22
  %133 = add i64 %123, %.v4
  store i64 %133, i64* %0, align 8, !tbaa !844
  br i1 %129, label %block_400675, label %block_400682

block_400647:                                     ; preds = %block_400682, %block_400620
  %134 = phi i64 [ %58, %block_400620 ], [ %199, %block_400682 ]
  %135 = phi i64 [ %54, %block_400620 ], [ %171, %block_400682 ]
  %MEMORY.0 = phi %struct.Memory* [ %53, %block_400620 ], [ %MEMORY.1, %block_400682 ]
  %136 = add i64 %135, -16
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %137
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %5, align 8, !tbaa !844
  %140 = add i64 %135, -12
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %141
  %143 = sub i32 %138, %142
  %144 = icmp ult i32 %138, %142
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %15, align 1, !tbaa !848
  %146 = and i32 %143, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #6
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %16, align 1, !tbaa !860
  %151 = xor i32 %142, %138
  %152 = xor i32 %151, %143
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %17, align 1, !tbaa !864
  %156 = icmp eq i32 %143, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %18, align 1, !tbaa !861
  %158 = lshr i32 %143, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %19, align 1, !tbaa !862
  %160 = lshr i32 %138, 31
  %161 = lshr i32 %142, 31
  %162 = xor i32 %161, %160
  %163 = xor i32 %158, %160
  %164 = add nuw nsw i32 %163, %162
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %20, align 1, !tbaa !863
  %167 = icmp ne i8 %159, 0
  %168 = xor i1 %167, %165
  %.v = select i1 %168, i64 12, i64 78
  %169 = add i64 %134, %.v
  store i64 %169, i64* %0, align 8, !tbaa !844
  br i1 %168, label %block_400653, label %block_400695

block_400682:                                     ; preds = %block_400653, %block_400675
  %170 = phi i64 [ %133, %block_400653 ], [ %.pre, %block_400675 ]
  %MEMORY.1 = phi %struct.Memory* [ %121, %block_400653 ], [ %69, %block_400675 ]
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, -16
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32, i32* %173
  %175 = add i32 %174, 1
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %5, align 8, !tbaa !844
  %177 = icmp eq i32 %174, -1
  %178 = icmp eq i32 %175, 0
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %15, align 1, !tbaa !848
  %181 = and i32 %175, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181) #6
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %16, align 1, !tbaa !860
  %186 = xor i32 %175, %174
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %17, align 1, !tbaa !864
  %190 = zext i1 %178 to i8
  store i8 %190, i8* %18, align 1, !tbaa !861
  %191 = lshr i32 %175, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %19, align 1, !tbaa !862
  %193 = lshr i32 %174, 31
  %194 = xor i32 %191, %193
  %195 = add nuw nsw i32 %194, %191
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %20, align 1, !tbaa !863
  %198 = inttoptr i64 %172 to i32*
  store i32 %175, i32* %198
  %199 = add i64 %170, -59
  store i64 %199, i64* %0, align 8, !tbaa !844
  br label %block_400647
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @sub_400720_doStuff(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) unnamed_addr #3 {
block_400720:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0
  %4 = bitcast %union.Flags* %3 to i8*
  %5 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %6 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %9, align 8, !tbaa !844
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %9, align 8, !tbaa !844
  store i64 %13, i64* %10, align 8, !tbaa !844
  %15 = add i64 %12, -16
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %15 to i64*
  store i64 %16, i64* %17
  %18 = add i64 %12, -24
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %20
  %21 = inttoptr i64 %15 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %12, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %22, i64* %24
  %25 = add i64 %12, -24
  %26 = inttoptr i64 %25 to i64*
  %27 = load i64, i64* %26
  %28 = add i64 %12, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  %30 = inttoptr i64 %23 to i64*
  %31 = load i64, i64* %30
  store i64 %31, i64* %7, align 8, !tbaa !844
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8, i8* %32
  store i8 %33, i8* %2, align 1, !tbaa !865
  %34 = add i64 %12, -41
  %35 = add i64 %pc, 37
  store i64 %35, i64* %0, align 8
  %36 = inttoptr i64 %34 to i8*
  store i8 %33, i8* %36
  %37 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %39 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  br label %block_400745

block_40075f:                                     ; preds = %block_400752
  %40 = inttoptr i64 %28 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %5, align 8, !tbaa !844
  %42 = inttoptr i64 %41 to i8*
  store i8 92, i8* %42
  br label %block_400774

block_40079a:                                     ; preds = %block_400745
  %43 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %44 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1, !tbaa !848
  store i8 1, i8* %43, align 1, !tbaa !860
  store i8 0, i8* %38, align 1, !tbaa !864
  store i8 1, i8* %44, align 1, !tbaa !861
  store i8 0, i8* %39, align 1, !tbaa !862
  store i8 0, i8* %45, align 1, !tbaa !863
  %46 = inttoptr i64 %13 to i64*
  %47 = load i64, i64* %46
  store i64 %47, i64* %10, align 8, !tbaa !844
  %48 = inttoptr i64 %12 to i64*
  %49 = load i64, i64* %48
  store i64 %49, i64* %0, align 8, !tbaa !844
  %50 = add i64 %12, 8
  store i64 %50, i64* %9, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.1

block_400774:                                     ; preds = %block_40076b, %block_40075f
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40076b ], [ %MEMORY.1, %block_40075f ]
  %51 = inttoptr i64 %23 to i64*
  %52 = load i64, i64* %51
  %53 = add i64 %52, 1
  %54 = inttoptr i64 %23 to i64*
  store i64 %53, i64* %54
  %55 = inttoptr i64 %28 to i64*
  %56 = load i64, i64* %55
  %57 = add i64 %56, 1
  %58 = inttoptr i64 %28 to i64*
  store i64 %57, i64* %58
  %59 = inttoptr i64 %23 to i64*
  %60 = load i64, i64* %59
  store i64 %60, i64* %5, align 8, !tbaa !844
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8, i8* %61
  store i8 %62, i8* %4, align 1, !tbaa !865
  %63 = inttoptr i64 %34 to i8*
  store i8 %62, i8* %63
  br label %block_400745

block_400752:                                     ; preds = %block_400745
  store i64 %71, i64* %5, align 8, !tbaa !844
  %64 = icmp eq i8 %69, 47
  br i1 %64, label %block_40075f, label %block_40076b

block_40076b:                                     ; preds = %block_400752
  store i8 %69, i8* %2, align 1, !tbaa !865
  %65 = inttoptr i64 %28 to i64*
  %66 = load i64, i64* %65
  store i64 %66, i64* %6, align 8, !tbaa !844
  %67 = inttoptr i64 %66 to i8*
  store i8 %69, i8* %67
  br label %block_400774

block_400745:                                     ; preds = %block_400774, %block_400720
  %MEMORY.1 = phi %struct.Memory* [ %memory1, %block_400720 ], [ %MEMORY.0, %block_400774 ]
  %68 = inttoptr i64 %34 to i8*
  %69 = load i8, i8* %68
  %70 = sext i8 %69 to i64
  %71 = and i64 %70, 4294967295
  store i64 %71, i64* %5, align 8, !tbaa !844
  %72 = icmp eq i8 %69, 0
  br i1 %72, label %block_40079a, label %block_400752
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #2

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601090_strlen(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010b0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601070_memset(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601088_strcpy(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4004f0_printf(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @doWork() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400620;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #6
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind }
attributes #5 = { naked nobuiltin noinline nounwind }
attributes #6 = { nounwind }

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
!844 = !{!845, !845, i64 0}
!845 = !{!"long", !846, i64 0}
!846 = !{!"omnipotent char", !847, i64 0}
!847 = !{!"Simple C++ TBAA"}
!848 = !{!849, !846, i64 2065}
!849 = !{!"_ZTS5State", !846, i64 16, !850, i64 2064, !846, i64 2080, !852, i64 2088, !854, i64 2112, !856, i64 2144, !857, i64 2416, !858, i64 2544, !859, i64 2672, !846, i64 2680}
!850 = !{!"_ZTS10ArithFlags", !851, i64 0, !846, i64 1, !851, i64 2, !846, i64 3, !851, i64 4, !846, i64 5, !851, i64 6, !846, i64 7, !851, i64 8, !846, i64 9, !851, i64 10, !846, i64 11, !851, i64 12, !846, i64 13, !851, i64 14, !851, i64 15}
!851 = !{!"bool", !846, i64 0}
!852 = !{!"_ZTS8Segments", !853, i64 0, !846, i64 2, !853, i64 4, !846, i64 6, !853, i64 8, !846, i64 10, !853, i64 12, !846, i64 14, !853, i64 16, !846, i64 18, !853, i64 20, !846, i64 22}
!853 = !{!"short", !846, i64 0}
!854 = !{!"_ZTS12AddressSpace", !845, i64 0, !855, i64 8, !845, i64 16, !855, i64 24}
!855 = !{!"_ZTS3Reg", !846, i64 0}
!856 = !{!"_ZTS3GPR", !845, i64 0, !855, i64 8, !845, i64 16, !855, i64 24, !845, i64 32, !855, i64 40, !845, i64 48, !855, i64 56, !845, i64 64, !855, i64 72, !845, i64 80, !855, i64 88, !845, i64 96, !855, i64 104, !845, i64 112, !855, i64 120, !845, i64 128, !855, i64 136, !845, i64 144, !855, i64 152, !845, i64 160, !855, i64 168, !845, i64 176, !855, i64 184, !845, i64 192, !855, i64 200, !845, i64 208, !855, i64 216, !845, i64 224, !855, i64 232, !845, i64 240, !855, i64 248, !845, i64 256, !855, i64 264}
!857 = !{!"_ZTS8X87Stack", !846, i64 0}
!858 = !{!"_ZTS3MMX", !846, i64 0}
!859 = !{!"_ZTS14FPUStatusFlags", !846, i64 0, !846, i64 1, !846, i64 2, !846, i64 3, !846, i64 4, !846, i64 5, !846, i64 6, !846, i64 7}
!860 = !{!849, !846, i64 2067}
!861 = !{!849, !846, i64 2071}
!862 = !{!849, !846, i64 2073}
!863 = !{!849, !846, i64 2077}
!864 = !{!849, !846, i64 2069}
!865 = !{!846, !846, i64 0}
