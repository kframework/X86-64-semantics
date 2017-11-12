; ModuleID = 'Output/test_23.clang.lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_400940__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_600ff0__got_type = type <{ i64, [8 x i8] }>
%maze_type = type <{ [77 x i8] }>
%__bss_start_type = type <{ [3 x i8] }>
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

@seg_400940__rodata = internal constant %seg_400940__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00\12\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00 \07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00\04\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00\F6\06@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), [8 x i8] c"\D0\10`\00\00\00\00\00" }>
@maze = dllexport global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = dllexport local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal constant void ()* @__mcsema_attach_call
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400650_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400934__term_proc
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400448__init_proc
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4005a0_draw

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #3

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400448__init_proc(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400448:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #7
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
  br i1 %18, label %block_40045a, label %block_400458

block_40045a:                                     ; preds = %block_400458, %block_400448
  %23 = phi i64 [ %4, %block_400448 ], [ %.pre, %block_400458 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400448 ], [ %52, %block_400458 ]
  %24 = add i64 %23, 8
  %25 = icmp ugt i64 %23, -9
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %5, align 1, !tbaa !848
  %27 = trunc i64 %24 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #7
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

block_400458:                                     ; preds = %block_400448
  %49 = add i64 %22, 2
  %50 = add i64 %3, -16
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %2, align 8, !tbaa !844
  store i64 %11, i64* %0, align 8, !tbaa !844
  %52 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %state2, i64 %11, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_40045a
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4005a0_draw(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_4005a0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = bitcast %union.Flags* %1 to i32*
  %4 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %8, align 8, !tbaa !844
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13
  store i64 %12, i64* %9, align 8, !tbaa !844
  %14 = add i64 %11, -40
  store i64 %14, i64* %8, align 8, !tbaa !844
  %15 = icmp ult i64 %12, 32
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !848
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #7
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !860
  %25 = xor i64 %12, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !864
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !861
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !862
  %36 = lshr i64 %12, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !863
  %42 = add i64 %11, -12
  %43 = add i64 %pc, 15
  store i64 %43, i64* %0, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44
  br label %block_4005af

block_4005b9:                                     ; preds = %block_4005af
  %45 = add i64 %49, -8
  %46 = add i64 %76, 7
  store i64 %46, i64* %0, align 8
  %47 = inttoptr i64 %45 to i32*
  store i32 0, i32* %47
  br label %block_4005c0

block_4005af:                                     ; preds = %block_400609, %block_4005a0
  %48 = phi i64 [ %43, %block_4005a0 ], [ %230, %block_400609 ]
  %49 = phi i64 [ %12, %block_4005a0 ], [ %198, %block_400609 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_4005a0 ], [ %197, %block_400609 ]
  %50 = add i64 %49, -4
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51
  %53 = add i32 %52, -7
  %54 = icmp ult i32 %52, 7
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %17, align 1, !tbaa !848
  %56 = and i32 %53, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #7
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %24, align 1, !tbaa !860
  %61 = xor i32 %53, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %29, align 1, !tbaa !864
  %65 = icmp eq i32 %53, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %32, align 1, !tbaa !861
  %67 = lshr i32 %53, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %35, align 1, !tbaa !862
  %69 = lshr i32 %52, 31
  %70 = xor i32 %67, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %41, align 1, !tbaa !863
  %74 = icmp ne i8 %68, 0
  %75 = xor i1 %74, %72
  %.v = select i1 %75, i64 10, i64 124
  %76 = add i64 %48, %.v
  store i64 %76, i64* %0, align 8, !tbaa !844
  br i1 %75, label %block_4005b9, label %block_40062b

block_40062b:                                     ; preds = %block_4005af
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 273), i64* %7, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %77 = add i64 %76, -443
  %78 = add i64 %76, 17
  %79 = load i64, i64* %8, align 8, !tbaa !844
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81
  store i64 %80, i64* %8, align 8, !tbaa !844
  store i64 %77, i64* %0, align 8, !tbaa !844
  %82 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.0) #7
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, -20
  %85 = load i32, i32* %3, align 4
  %86 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %86
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 32
  %89 = icmp ugt i64 %87, -33
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %17, align 1, !tbaa !848
  %91 = trunc i64 %88 to i32
  %92 = and i32 %91, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #7
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %24, align 1, !tbaa !860
  %97 = xor i64 %88, %87
  %98 = lshr i64 %97, 4
  %99 = trunc i64 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %29, align 1, !tbaa !864
  %101 = icmp eq i64 %88, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %32, align 1, !tbaa !861
  %103 = lshr i64 %88, 63
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %35, align 1, !tbaa !862
  %105 = lshr i64 %87, 63
  %106 = xor i64 %103, %105
  %107 = add nuw nsw i64 %106, %103
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %41, align 1, !tbaa !863
  %110 = add i64 %87, 40
  %111 = inttoptr i64 %88 to i64*
  %112 = load i64, i64* %111
  store i64 %112, i64* %9, align 8, !tbaa !844
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %0, align 8, !tbaa !844
  %115 = add i64 %87, 48
  store i64 %115, i64* %8, align 8, !tbaa !844
  ret %struct.Memory* %82

block_4005ca:                                     ; preds = %block_4005c0
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 192), i64* %7, align 8, !tbaa !844
  %116 = add i64 %232, -4
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* %117
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 11
  %121 = lshr i64 %120, 63
  %122 = add i64 %120, ptrtoint (%maze_type* @maze to i64)
  store i64 %122, i64* %4, align 8, !tbaa !844
  %123 = icmp ult i64 %122, ptrtoint (%maze_type* @maze to i64)
  %124 = icmp ult i64 %122, %120
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %17, align 1, !tbaa !848
  %127 = trunc i64 %122 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #7
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %24, align 1, !tbaa !860
  %133 = xor i64 %120, ptrtoint (%maze_type* @maze to i64)
  %134 = xor i64 %133, %122
  %135 = lshr i64 %134, 4
  %136 = trunc i64 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %29, align 1, !tbaa !864
  %138 = icmp eq i64 %122, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %32, align 1, !tbaa !861
  %140 = lshr i64 %122, 63
  %141 = trunc i64 %140 to i8
  store i8 %141, i8* %35, align 1, !tbaa !862
  %142 = xor i64 %140, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %143 = xor i64 %140, %121
  %144 = add nuw nsw i64 %142, %143
  %145 = icmp eq i64 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %41, align 1, !tbaa !863
  %147 = sext i32 %235 to i64
  store i64 %147, i64* %5, align 8, !tbaa !844
  %148 = add i64 %122, %147
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8, i8* %149
  %151 = sext i8 %150 to i64
  %152 = and i64 %151, 4294967295
  store i64 %152, i64* %6, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %153 = add i64 %259, -346
  %154 = add i64 %259, 46
  %155 = load i64, i64* %8, align 8, !tbaa !844
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157
  store i64 %156, i64* %8, align 8, !tbaa !844
  store i64 %153, i64* %0, align 8, !tbaa !844
  %158 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.1) #7
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, -12
  %161 = load i32, i32* %3, align 4
  %162 = load i64, i64* %0, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %163
  %164 = add i64 %159, -8
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32, i32* %165
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %4, align 8, !tbaa !844
  %169 = icmp eq i32 %166, -1
  %170 = icmp eq i32 %167, 0
  %171 = or i1 %169, %170
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %17, align 1, !tbaa !848
  %173 = and i32 %167, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #7
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %24, align 1, !tbaa !860
  %178 = xor i32 %167, %166
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %29, align 1, !tbaa !864
  %182 = zext i1 %170 to i8
  store i8 %182, i8* %32, align 1, !tbaa !861
  %183 = lshr i32 %167, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %35, align 1, !tbaa !862
  %185 = lshr i32 %166, 31
  %186 = xor i32 %183, %185
  %187 = add nuw nsw i32 %186, %183
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %41, align 1, !tbaa !863
  %190 = inttoptr i64 %164 to i32*
  store i32 %167, i32* %190
  %191 = add i64 %162, -56
  store i64 %191, i64* %0, align 8, !tbaa !844
  br label %block_4005c0

block_400609:                                     ; preds = %block_4005c0
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 273), i64* %7, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %192 = add i64 %259, -409
  %193 = add i64 %259, 17
  %194 = load i64, i64* %8, align 8, !tbaa !844
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %193, i64* %196
  store i64 %195, i64* %8, align 8, !tbaa !844
  store i64 %192, i64* %0, align 8, !tbaa !844
  %197 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.1) #7
  %198 = load i64, i64* %9, align 8
  %199 = add i64 %198, -16
  %200 = load i32, i32* %3, align 4
  %201 = load i64, i64* %0, align 8
  %202 = inttoptr i64 %199 to i32*
  store i32 %200, i32* %202
  %203 = add i64 %198, -4
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32, i32* %204
  %206 = add i32 %205, 1
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %4, align 8, !tbaa !844
  %208 = icmp eq i32 %205, -1
  %209 = icmp eq i32 %206, 0
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %17, align 1, !tbaa !848
  %212 = and i32 %206, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #7
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %24, align 1, !tbaa !860
  %217 = xor i32 %206, %205
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %29, align 1, !tbaa !864
  %221 = zext i1 %209 to i8
  store i8 %221, i8* %32, align 1, !tbaa !861
  %222 = lshr i32 %206, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %35, align 1, !tbaa !862
  %224 = lshr i32 %205, 31
  %225 = xor i32 %222, %224
  %226 = add nuw nsw i32 %225, %222
  %227 = icmp eq i32 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %41, align 1, !tbaa !863
  %229 = inttoptr i64 %203 to i32*
  store i32 %206, i32* %229
  %230 = add i64 %201, -107
  store i64 %230, i64* %0, align 8, !tbaa !844
  br label %block_4005af

block_4005c0:                                     ; preds = %block_4005ca, %block_4005b9
  %231 = phi i64 [ %46, %block_4005b9 ], [ %191, %block_4005ca ]
  %232 = phi i64 [ %49, %block_4005b9 ], [ %159, %block_4005ca ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4005b9 ], [ %158, %block_4005ca ]
  %233 = add i64 %232, -8
  %234 = inttoptr i64 %233 to i32*
  %235 = load i32, i32* %234
  %236 = add i32 %235, -11
  %237 = icmp ult i32 %235, 11
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %17, align 1, !tbaa !848
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239) #7
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %24, align 1, !tbaa !860
  %244 = xor i32 %236, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %29, align 1, !tbaa !864
  %248 = icmp eq i32 %236, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %32, align 1, !tbaa !861
  %250 = lshr i32 %236, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %35, align 1, !tbaa !862
  %252 = lshr i32 %235, 31
  %253 = xor i32 %250, %252
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %41, align 1, !tbaa !863
  %257 = icmp ne i8 %251, 0
  %258 = xor i1 %257, %255
  %.v2 = select i1 %258, i64 10, i64 73
  %259 = add i64 %231, %.v2
  %260 = add i64 %259, 10
  store i64 %260, i64* %0, align 8
  br i1 %258, label %block_4005ca, label %block_400609
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400650_main(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400650:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %11, align 8, !tbaa !844
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %15, i64* %18
  store i64 %17, i64* %12, align 8, !tbaa !844
  %19 = add i64 %16, -120
  store i64 %19, i64* %11, align 8, !tbaa !844
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %22 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %23 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %24 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %25 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i64 0, i64* %6, align 8, !tbaa !844
  store i64 28, i64* %7, align 8, !tbaa !844
  store i64 28, i64* %8, align 8, !tbaa !844
  %26 = add i64 %16, -72
  store i64 %26, i64* %13, align 8, !tbaa !844
  %27 = add i64 %16, -12
  %28 = inttoptr i64 %27 to i32*
  store i32 0, i32* %28
  %29 = add i64 %16, -16
  %30 = load i32, i32* %5, align 4
  %31 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %31
  %32 = add i64 %16, -24
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %32 to i64*
  store i64 %33, i64* %34
  %35 = add i64 %16, -44
  %36 = inttoptr i64 %35 to i32*
  store i32 0, i32* %36
  %37 = add i64 %16, -28
  %38 = inttoptr i64 %37 to i32*
  store i32 1, i32* %38
  %39 = add i64 %16, -32
  %40 = inttoptr i64 %39 to i32*
  store i32 1, i32* %40
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 11
  %45 = lshr i64 %44, 63
  %46 = add i64 %44, ptrtoint (%maze_type* @maze to i64)
  store i64 %46, i64* %14, align 8, !tbaa !844
  %47 = icmp ult i64 %46, ptrtoint (%maze_type* @maze to i64)
  %48 = icmp ult i64 %46, %44
  %49 = or i1 %47, %48
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %20, align 1, !tbaa !848
  %51 = trunc i64 %46 to i32
  %52 = and i32 %51, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #7
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1, !tbaa !860
  %57 = xor i64 %44, ptrtoint (%maze_type* @maze to i64)
  %58 = xor i64 %57, %46
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %22, align 1, !tbaa !864
  %62 = icmp eq i64 %46, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %23, align 1, !tbaa !861
  %64 = lshr i64 %46, 63
  %65 = trunc i64 %64 to i8
  store i8 %65, i8* %24, align 1, !tbaa !862
  %66 = xor i64 %64, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %67 = xor i64 %64, %45
  %68 = add nuw nsw i64 %66, %67
  %69 = icmp eq i64 %68, 2
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %25, align 1, !tbaa !863
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, -20
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73
  %75 = sext i32 %74 to i64
  %76 = add i64 %46, %75
  %77 = inttoptr i64 %76 to i8*
  store i8 88, i8* %77
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %10, align 8, !tbaa !844
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %9, align 8, !tbaa !844
  %81 = add i64 %pc, -464
  %82 = add i64 %pc, 96
  %83 = load i64, i64* %11, align 8, !tbaa !844
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %82, i64* %85
  store i64 %84, i64* %11, align 8, !tbaa !844
  store i64 %81, i64* %0, align 8, !tbaa !844
  %86 = tail call fastcc %struct.Memory* @ext_601098_read(%struct.State* nonnull %state2, %struct.Memory* %memory1) #7
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, -72
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %0, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %0, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92
  br label %block_4006b4

block_4006f6:                                     ; preds = %block_4006e8
  br label %block_400760

block_4006e8:                                     ; preds = %block_4006be
  %93 = inttoptr i64 %204 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %6, align 8, !tbaa !844
  %95 = shl i64 %94, 3
  %96 = add i64 %95, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %97 = inttoptr i64 %96 to i64*
  %98 = load i64, i64* %97
  store i64 %98, i64* %7, align 8, !tbaa !844
  store i64 %98, i64* %0, align 8, !tbaa !844
  switch i64 %98, label %635 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400760
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_400760:                                     ; preds = %block_400704, %block_400712, %block_4006e8, %block_4006f6
  %.sink17 = phi i64 [ 24, %block_400704 ], [ 20, %block_400712 ], [ 24, %block_4006f6 ], [ 20, %block_4006e8 ]
  %.sink12 = phi i32 [ 1, %block_400704 ], [ -1, %block_400712 ], [ -1, %block_4006f6 ], [ 1, %block_4006e8 ]
  %.sink5 = phi i64 [ 86, %block_400704 ], [ 72, %block_400712 ], [ 100, %block_4006f6 ], [ 58, %block_4006e8 ]
  %99 = sub i64 %203, %.sink17
  %100 = inttoptr i64 %99 to i32*
  %101 = load i32, i32* %100
  %102 = add i64 %98, 6
  %103 = add i32 %101, %.sink12
  %104 = inttoptr i64 %99 to i32*
  store i32 %103, i32* %104
  %105 = add i64 %.sink5, %102
  %106 = add i64 %203, -24
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* %107
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, 11
  %111 = add i64 %110, ptrtoint (%maze_type* @maze to i64)
  store i64 %111, i64* %6, align 8, !tbaa !844
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, -20
  %114 = inttoptr i64 %113 to i32*
  %115 = load i32, i32* %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %7, align 8, !tbaa !844
  %117 = add i64 %111, %116
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8, i8* %118
  %120 = sext i8 %119 to i64
  %121 = and i64 %120, 4294967295
  store i64 %121, i64* %8, align 8, !tbaa !844
  %122 = sext i8 %119 to i32
  %123 = add nsw i32 %122, -35
  %124 = icmp ult i8 %119, 35
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %20, align 1, !tbaa !848
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #7
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1, !tbaa !860
  %131 = xor i32 %123, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %22, align 1, !tbaa !864
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %23, align 1, !tbaa !861
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %24, align 1, !tbaa !862
  %139 = lshr i32 %122, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %25, align 1, !tbaa !863
  %.v68 = select i1 %135, i64 38, i64 89
  %144 = add i64 %105, %.v68
  %145 = add i64 %144, 10
  store i64 %145, i64* %0, align 8
  br i1 %135, label %block_400786, label %block_4007b9

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %10, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %146 = add i64 %241, -983
  %147 = add i64 %241, 17
  %148 = load i64, i64* %11, align 8, !tbaa !844
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150
  store i64 %149, i64* %11, align 8, !tbaa !844
  store i64 %146, i64* %0, align 8, !tbaa !844
  %151 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.4) #7
  %152 = load i64, i64* %12, align 8
  %153 = add i64 %152, -4
  %154 = load i64, i64* %0, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 2, i32* %155
  %156 = add i64 %152, -104
  %157 = load i32, i32* %3, align 4
  %158 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %158
  %159 = add i64 %154, 90
  store i64 %159, i64* %0, align 8, !tbaa !844
  br label %block_4008b2

block_4006be:                                     ; preds = %block_4006b4
  %160 = add i64 %345, -20
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32, i32* %161
  %163 = add i64 %345, -28
  %164 = inttoptr i64 %163 to i32*
  store i32 %162, i32* %164
  %165 = add i64 %345, -24
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32, i32* %166
  %168 = add i64 %345, -32
  %169 = inttoptr i64 %168 to i32*
  store i32 %167, i32* %169
  %170 = inttoptr i64 %346 to i32*
  %171 = load i32, i32* %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, -64
  %174 = add i64 %173, %345
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8, i8* %175
  %177 = sext i8 %176 to i32
  %178 = add nsw i32 %177, -97
  %179 = zext i32 %178 to i64
  %180 = lshr i32 %178, 31
  store i64 %179, i64* %7, align 8, !tbaa !844
  %181 = add nsw i32 %177, -119
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %6, align 8, !tbaa !844
  %183 = icmp ult i32 %178, 22
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %20, align 1, !tbaa !848
  %185 = and i32 %181, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #7
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1, !tbaa !860
  %190 = xor i32 %178, 16
  %191 = xor i32 %190, %181
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %22, align 1, !tbaa !864
  %195 = icmp eq i32 %181, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %23, align 1, !tbaa !861
  %197 = lshr i32 %181, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %24, align 1, !tbaa !862
  %199 = xor i32 %197, %180
  %200 = add nuw nsw i32 %199, %180
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %25, align 1, !tbaa !863
  %203 = load i64, i64* %12, align 8
  %204 = add i64 %203, -80
  %205 = inttoptr i64 %204 to i64*
  store i64 %179, i64* %205
  %206 = add i64 %203, -84
  %207 = inttoptr i64 %206 to i32*
  store i32 %181, i32* %207
  %208 = or i1 %195, %183
  %.v67 = select i1 %208, i64 42, i64 112
  %209 = add i64 %373, %.v67
  store i64 %209, i64* %0, align 8, !tbaa !844
  br i1 %208, label %block_4006e8, label %block_40072e

block_40083b:                                     ; preds = %block_40082f
  %210 = add i64 %410, -32
  %211 = inttoptr i64 %210 to i32*
  %212 = load i32, i32* %211
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %6, align 8, !tbaa !844
  %214 = add i64 %410, -24
  %215 = inttoptr i64 %214 to i32*
  %216 = load i32, i32* %215
  %217 = sub i32 %212, %216
  %218 = icmp ult i32 %212, %216
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %20, align 1, !tbaa !848
  %220 = and i32 %217, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #7
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1, !tbaa !860
  %225 = xor i32 %216, %212
  %226 = xor i32 %225, %217
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %22, align 1, !tbaa !864
  %230 = icmp eq i32 %217, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %23, align 1, !tbaa !861
  %232 = lshr i32 %217, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %24, align 1, !tbaa !862
  %234 = lshr i32 %212, 31
  %235 = lshr i32 %216, 31
  %236 = xor i32 %235, %234
  %237 = xor i32 %232, %234
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %25, align 1, !tbaa !863
  %.v72 = select i1 %230, i64 12, i64 44
  %241 = add i64 %442, %.v72
  store i64 %241, i64* %0, align 8, !tbaa !844
  br i1 %230, label %block_400847, label %block_400867

block_400867:                                     ; preds = %block_40082f.block_400867_crit_edge, %block_40083b
  %.pre-phi66 = phi i32 [ %444, %block_40082f.block_400867_crit_edge ], [ %216, %block_40083b ]
  %242 = phi i64 [ %442, %block_40082f.block_400867_crit_edge ], [ %241, %block_40083b ]
  %243 = sext i32 %.pre-phi66 to i64
  %244 = mul nsw i64 %243, 11
  %245 = lshr i64 %244, 63
  %246 = add i64 %244, ptrtoint (%maze_type* @maze to i64)
  store i64 %246, i64* %6, align 8, !tbaa !844
  %247 = icmp ult i64 %246, ptrtoint (%maze_type* @maze to i64)
  %248 = icmp ult i64 %246, %244
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %20, align 1, !tbaa !848
  %251 = trunc i64 %246 to i32
  %252 = and i32 %251, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #7
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1, !tbaa !860
  %257 = xor i64 %244, ptrtoint (%maze_type* @maze to i64)
  %258 = xor i64 %257, %246
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %22, align 1, !tbaa !864
  %262 = icmp eq i64 %246, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %23, align 1, !tbaa !861
  %264 = lshr i64 %246, 63
  %265 = trunc i64 %264 to i8
  store i8 %265, i8* %24, align 1, !tbaa !862
  %266 = xor i64 %264, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %267 = xor i64 %264, %245
  %268 = add nuw nsw i64 %266, %267
  %269 = icmp eq i64 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %25, align 1, !tbaa !863
  %271 = sext i32 %417 to i64
  store i64 %271, i64* %7, align 8, !tbaa !844
  %272 = add i64 %246, %271
  %273 = inttoptr i64 %272 to i8*
  store i8 88, i8* %273
  %274 = add i64 %242, -711
  %275 = add i64 %242, 34
  %276 = load i64, i64* %11, align 8, !tbaa !844
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278
  store i64 %277, i64* %11, align 8, !tbaa !844
  store i64 %274, i64* %0, align 8, !tbaa !844
  %279 = tail call %struct.Memory* @sub_4005a0_draw(%struct.State* nonnull %state2, i64 %274, %struct.Memory* %MEMORY.4)
  %280 = load i64, i64* %12, align 8
  %281 = add i64 %280, -36
  %282 = load i64, i64* %0, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283
  %285 = add i32 %284, 1
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %8, align 8, !tbaa !844
  %287 = icmp eq i32 %284, -1
  %288 = icmp eq i32 %285, 0
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %20, align 1, !tbaa !848
  %291 = and i32 %285, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #7
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %21, align 1, !tbaa !860
  %296 = xor i32 %285, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %22, align 1, !tbaa !864
  %300 = zext i1 %288 to i8
  store i8 %300, i8* %23, align 1, !tbaa !861
  %301 = lshr i32 %285, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %24, align 1, !tbaa !862
  %303 = lshr i32 %284, 31
  %304 = xor i32 %301, %303
  %305 = add nuw nsw i32 %304, %301
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %25, align 1, !tbaa !863
  %308 = inttoptr i64 %281 to i32*
  store i32 %285, i32* %308
  %309 = add i64 %282, -469
  store i64 %309, i64* %0, align 8, !tbaa !844
  br label %block_4006b4

block_4007b9:                                     ; preds = %block_400760
  %310 = add i64 %112, -24
  %311 = inttoptr i64 %310 to i32*
  %312 = load i32, i32* %311
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, 11
  %315 = add i64 %314, ptrtoint (%maze_type* @maze to i64)
  store i64 %315, i64* %6, align 8, !tbaa !844
  store i64 %116, i64* %7, align 8, !tbaa !844
  %316 = add i64 %315, %116
  %317 = inttoptr i64 %316 to i8*
  %318 = load i8, i8* %317
  %319 = sext i8 %318 to i64
  %320 = and i64 %319, 4294967295
  store i64 %320, i64* %8, align 8, !tbaa !844
  %321 = sext i8 %318 to i32
  %322 = add nsw i32 %321, -32
  %323 = icmp ult i8 %318, 32
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %20, align 1, !tbaa !848
  %325 = and i32 %322, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #7
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %21, align 1, !tbaa !860
  %330 = xor i32 %322, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %22, align 1, !tbaa !864
  %334 = icmp eq i32 %322, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %23, align 1, !tbaa !861
  %336 = lshr i32 %322, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %24, align 1, !tbaa !862
  %338 = lshr i32 %321, 31
  %339 = xor i32 %336, %338
  %340 = add nuw nsw i32 %339, %338
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %25, align 1, !tbaa !863
  %.v69 = select i1 %334, i64 118, i64 38
  %343 = add i64 %144, %.v69
  store i64 %343, i64* %0, align 8, !tbaa !844
  %.pre63 = load i64, i64* %12, align 8
  br i1 %334, label %block_40082f, label %block_4007df

block_4006b4:                                     ; preds = %block_400867, %block_400650
  %344 = phi i64 [ %91, %block_400650 ], [ %309, %block_400867 ]
  %345 = phi i64 [ %87, %block_400650 ], [ %280, %block_400867 ]
  %MEMORY.2 = phi %struct.Memory* [ %86, %block_400650 ], [ %279, %block_400867 ]
  %346 = add i64 %345, -36
  %347 = inttoptr i64 %346 to i32*
  %348 = load i32, i32* %347
  %349 = add i32 %348, -28
  %350 = icmp ult i32 %348, 28
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %20, align 1, !tbaa !848
  %352 = and i32 %349, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #7
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %21, align 1, !tbaa !860
  %357 = xor i32 %348, 16
  %358 = xor i32 %357, %349
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %22, align 1, !tbaa !864
  %362 = icmp eq i32 %349, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %23, align 1, !tbaa !861
  %364 = lshr i32 %349, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %24, align 1, !tbaa !862
  %366 = lshr i32 %348, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %366
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %25, align 1, !tbaa !863
  %371 = icmp ne i8 %365, 0
  %372 = xor i1 %371, %369
  %.v = select i1 %372, i64 10, i64 483
  %373 = add i64 %344, %.v
  store i64 %373, i64* %0, align 8, !tbaa !844
  br i1 %372, label %block_4006be, label %block_400897

block_4008b2:                                     ; preds = %block_400897, %block_400847
  %374 = phi i64 [ %581, %block_400897 ], [ %152, %block_400847 ]
  %MEMORY.3 = phi %struct.Memory* [ %580, %block_400897 ], [ %151, %block_400847 ]
  %375 = add i64 %374, -4
  %376 = inttoptr i64 %375 to i32*
  %377 = load i32, i32* %376
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %6, align 8, !tbaa !844
  %379 = load i64, i64* %11, align 8
  %380 = add i64 %379, 112
  %381 = icmp ugt i64 %379, -113
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %20, align 1, !tbaa !848
  %383 = trunc i64 %380 to i32
  %384 = and i32 %383, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384) #7
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %21, align 1, !tbaa !860
  %389 = xor i64 %379, 16
  %390 = xor i64 %389, %380
  %391 = lshr i64 %390, 4
  %392 = trunc i64 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %22, align 1, !tbaa !864
  %394 = icmp eq i64 %380, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %23, align 1, !tbaa !861
  %396 = lshr i64 %380, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %24, align 1, !tbaa !862
  %398 = lshr i64 %379, 63
  %399 = xor i64 %396, %398
  %400 = add nuw nsw i64 %399, %396
  %401 = icmp eq i64 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %25, align 1, !tbaa !863
  %403 = add i64 %379, 120
  %404 = inttoptr i64 %380 to i64*
  %405 = load i64, i64* %404
  store i64 %405, i64* %12, align 8, !tbaa !844
  %406 = inttoptr i64 %403 to i64*
  %407 = load i64, i64* %406
  store i64 %407, i64* %0, align 8, !tbaa !844
  %408 = add i64 %379, 128
  store i64 %408, i64* %11, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.3

block_40082f:                                     ; preds = %block_400823, %block_400819, %block_4007b9
  %409 = phi i64 [ %573, %block_400823 ], [ %523, %block_400819 ], [ %343, %block_4007b9 ]
  %410 = phi i64 [ %562, %block_400823 ], [ %560, %block_400819 ], [ %.pre63, %block_4007b9 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400823 ], [ %MEMORY.2, %block_400819 ], [ %MEMORY.2, %block_4007b9 ]
  %411 = add i64 %410, -28
  %412 = inttoptr i64 %411 to i32*
  %413 = load i32, i32* %412
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %6, align 8, !tbaa !844
  %415 = add i64 %410, -20
  %416 = inttoptr i64 %415 to i32*
  %417 = load i32, i32* %416
  %418 = sub i32 %413, %417
  %419 = icmp ult i32 %413, %417
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %20, align 1, !tbaa !848
  %421 = and i32 %418, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421) #7
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1, !tbaa !860
  %426 = xor i32 %417, %413
  %427 = xor i32 %426, %418
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %22, align 1, !tbaa !864
  %431 = icmp eq i32 %418, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %23, align 1, !tbaa !861
  %433 = lshr i32 %418, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %24, align 1, !tbaa !862
  %435 = lshr i32 %413, 31
  %436 = lshr i32 %417, 31
  %437 = xor i32 %436, %435
  %438 = xor i32 %433, %435
  %439 = add nuw nsw i32 %438, %437
  %440 = icmp eq i32 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %25, align 1, !tbaa !863
  %.v71 = select i1 %431, i64 12, i64 56
  %442 = add i64 %409, %.v71
  store i64 %442, i64* %0, align 8, !tbaa !844
  br i1 %431, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre64 = add i64 %410, -24
  %443 = inttoptr i64 %.pre64 to i32*
  %444 = load i32, i32* %443
  br label %block_400867

block_40072e:                                     ; preds = %block_4006be, %block_4006e8
  %445 = phi i64 [ %209, %block_4006be ], [ 4196142, %block_4006e8 ]
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 195), i64* %10, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %446 = add i64 %445, -702
  %447 = add i64 %445, 17
  %448 = load i64, i64* %11, align 8, !tbaa !844
  %449 = add i64 %448, -8
  %450 = inttoptr i64 %449 to i64*
  store i64 %447, i64* %450
  store i64 %449, i64* %11, align 8, !tbaa !844
  store i64 %446, i64* %0, align 8, !tbaa !844
  %451 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.2) #7
  %452 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 235), i64* %10, align 8, !tbaa !844
  %453 = load i64, i64* %12, align 8
  %454 = add i64 %453, -88
  %455 = load i32, i32* %3, align 4
  %456 = inttoptr i64 %454 to i32*
  store i32 %455, i32* %456
  store i8 0, i8* %2, align 1, !tbaa !865
  %457 = add i64 %452, -719
  %458 = add i64 %452, 20
  %459 = load i64, i64* %11, align 8, !tbaa !844
  %460 = add i64 %459, -8
  %461 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %461
  store i64 %460, i64* %11, align 8, !tbaa !844
  store i64 %457, i64* %0, align 8, !tbaa !844
  %462 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %451) #7
  %463 = load i64, i64* %0, align 8
  store i64 4294967295, i64* %10, align 8, !tbaa !844
  %464 = load i64, i64* %12, align 8
  %465 = add i64 %464, -92
  %466 = load i32, i32* %3, align 4
  %467 = inttoptr i64 %465 to i32*
  store i32 %466, i32* %467
  %468 = add i64 %463, -707
  %469 = add i64 %463, 13
  %470 = load i64, i64* %11, align 8, !tbaa !844
  %471 = add i64 %470, -8
  %472 = inttoptr i64 %471 to i64*
  store i64 %469, i64* %472
  store i64 %471, i64* %11, align 8, !tbaa !844
  store i64 %468, i64* %0, align 8, !tbaa !844
  %473 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %state2, %struct.Memory* %462) #7
  %474 = load i64, i64* %0, align 8
  %475 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %474, %struct.Memory* %473)
  ret %struct.Memory* %475

block_4007df:                                     ; preds = %block_4007b9
  %476 = add i64 %.pre63, -24
  %477 = inttoptr i64 %476 to i32*
  %478 = load i32, i32* %477
  %479 = add i32 %478, -2
  %480 = icmp ult i32 %478, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %20, align 1, !tbaa !848
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #7
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %21, align 1, !tbaa !860
  %487 = xor i32 %479, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %22, align 1, !tbaa !864
  %491 = icmp eq i32 %479, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %23, align 1, !tbaa !861
  %493 = lshr i32 %479, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %24, align 1, !tbaa !862
  %495 = lshr i32 %478, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %25, align 1, !tbaa !863
  %.v70 = select i1 %491, i64 10, i64 68
  %500 = add i64 %343, %.v70
  store i64 %500, i64* %0, align 8, !tbaa !844
  br i1 %491, label %block_4007e9, label %block_400823

block_400819:                                     ; preds = %block_40080f
  %501 = add i32 %591, -11
  %502 = icmp ult i32 %591, 11
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %20, align 1, !tbaa !848
  %504 = and i32 %501, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504) #7
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1, !tbaa !860
  %509 = xor i32 %501, %591
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %22, align 1, !tbaa !864
  %513 = icmp eq i32 %501, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %23, align 1, !tbaa !861
  %515 = lshr i32 %501, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %24, align 1, !tbaa !862
  %517 = xor i32 %515, %599
  %518 = add nuw nsw i32 %517, %599
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %25, align 1, !tbaa !863
  %521 = icmp ne i8 %516, 0
  %522 = xor i1 %521, %519
  %.v75 = select i1 %522, i64 22, i64 10
  %523 = add i64 %603, %.v75
  store i64 %523, i64* %0, align 8, !tbaa !844
  br i1 %522, label %block_40082f, label %block_400823

block_4007e9:                                     ; preds = %block_4007df
  %524 = sext i32 %478 to i64
  %525 = mul nsw i64 %524, 11
  %526 = add i64 %525, ptrtoint (%maze_type* @maze to i64)
  store i64 %526, i64* %6, align 8, !tbaa !844
  %527 = add i64 %.pre63, -20
  %528 = inttoptr i64 %527 to i32*
  %529 = load i32, i32* %528
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %7, align 8, !tbaa !844
  %531 = add i64 %526, %530
  %532 = inttoptr i64 %531 to i8*
  %533 = load i8, i8* %532
  %534 = sext i8 %533 to i64
  %535 = and i64 %534, 4294967295
  store i64 %535, i64* %8, align 8, !tbaa !844
  %536 = sext i8 %533 to i32
  %537 = add nsw i32 %536, -124
  %538 = icmp ult i8 %533, 124
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %20, align 1, !tbaa !848
  %540 = and i32 %537, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540) #7
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %21, align 1, !tbaa !860
  %545 = xor i32 %536, 16
  %546 = xor i32 %545, %537
  %547 = lshr i32 %546, 4
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %22, align 1, !tbaa !864
  %550 = icmp eq i32 %537, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %23, align 1, !tbaa !861
  %552 = lshr i32 %537, 31
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %24, align 1, !tbaa !862
  %554 = lshr i32 %536, 31
  %555 = xor i32 %552, %554
  %556 = add nuw nsw i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %25, align 1, !tbaa !863
  %.v73 = select i1 %550, i64 38, i64 58
  %559 = add i64 %500, %.v73
  store i64 %559, i64* %0, align 8, !tbaa !844
  %560 = load i64, i64* %12, align 8
  br i1 %550, label %block_40080f, label %block_400823

block_400823:                                     ; preds = %block_40080f, %block_4007e9, %block_400819, %block_4007df
  %561 = phi i64 [ %603, %block_40080f ], [ %523, %block_400819 ], [ %500, %block_4007df ], [ %559, %block_4007e9 ]
  %562 = phi i64 [ %560, %block_40080f ], [ %560, %block_400819 ], [ %.pre63, %block_4007df ], [ %560, %block_4007e9 ]
  %563 = add i64 %562, -28
  %564 = inttoptr i64 %563 to i32*
  %565 = load i32, i32* %564
  %566 = add i64 %562, -20
  %567 = inttoptr i64 %566 to i32*
  store i32 %565, i32* %567
  %568 = add i64 %562, -32
  %569 = inttoptr i64 %568 to i32*
  %570 = load i32, i32* %569
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %6, align 8, !tbaa !844
  %572 = add i64 %562, -24
  %573 = add i64 %561, 12
  store i64 %573, i64* %0, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 %570, i32* %574
  br label %block_40082f

block_400897:                                     ; preds = %block_4006b4
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %10, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %575 = add i64 %373, -1063
  %576 = add i64 %373, 17
  %577 = load i64, i64* %11, align 8, !tbaa !844
  %578 = add i64 %577, -8
  %579 = inttoptr i64 %578 to i64*
  store i64 %576, i64* %579
  store i64 %578, i64* %11, align 8, !tbaa !844
  store i64 %575, i64* %0, align 8, !tbaa !844
  %580 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.2) #7
  %581 = load i64, i64* %12, align 8
  %582 = add i64 %581, -4
  %583 = load i64, i64* %0, align 8
  %584 = inttoptr i64 %582 to i32*
  store i32 1, i32* %584
  %585 = add i64 %581, -108
  %586 = load i32, i32* %3, align 4
  %587 = add i64 %583, 10
  store i64 %587, i64* %0, align 8
  %588 = inttoptr i64 %585 to i32*
  store i32 %586, i32* %588
  br label %block_4008b2

block_40080f:                                     ; preds = %block_4007e9
  %589 = add i64 %560, -20
  %590 = inttoptr i64 %589 to i32*
  %591 = load i32, i32* %590
  store i8 0, i8* %20, align 1, !tbaa !848
  %592 = and i32 %591, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592) #7
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %21, align 1, !tbaa !860
  store i8 0, i8* %22, align 1, !tbaa !864
  %597 = icmp eq i32 %591, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %23, align 1, !tbaa !861
  %599 = lshr i32 %591, 31
  %600 = trunc i32 %599 to i8
  store i8 %600, i8* %24, align 1, !tbaa !862
  store i8 0, i8* %25, align 1, !tbaa !863
  %601 = icmp ne i8 %600, 0
  %602 = or i1 %597, %601
  %.v74 = select i1 %602, i64 20, i64 10
  %603 = add i64 %559, %.v74
  store i64 %603, i64* %0, align 8, !tbaa !844
  br i1 %602, label %block_400823, label %block_400819

block_400712:                                     ; preds = %block_4006e8
  br label %block_400760

block_400786:                                     ; preds = %block_400760
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %10, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %604 = add i64 %144, -790
  %605 = add i64 %144, 17
  %606 = load i64, i64* %11, align 8, !tbaa !844
  %607 = add i64 %606, -8
  %608 = inttoptr i64 %607 to i64*
  store i64 %605, i64* %608
  store i64 %607, i64* %11, align 8, !tbaa !844
  store i64 %604, i64* %0, align 8, !tbaa !844
  %609 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %MEMORY.2) #7
  %610 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %10, align 8, !tbaa !844
  %611 = load i64, i64* %12, align 8
  %612 = add i64 %611, -64
  store i64 %612, i64* %9, align 8, !tbaa !844
  %613 = add i64 %611, -96
  %614 = load i32, i32* %3, align 4
  %615 = inttoptr i64 %613 to i32*
  store i32 %614, i32* %615
  store i8 0, i8* %2, align 1, !tbaa !865
  %616 = add i64 %610, -807
  %617 = add i64 %610, 24
  %618 = load i64, i64* %11, align 8, !tbaa !844
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620
  store i64 %619, i64* %11, align 8, !tbaa !844
  store i64 %616, i64* %0, align 8, !tbaa !844
  %621 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %state2, %struct.Memory* %609) #7
  %622 = load i64, i64* %0, align 8
  store i64 0, i64* %10, align 8, !tbaa !844
  store i8 0, i8* %20, align 1, !tbaa !848
  store i8 1, i8* %21, align 1, !tbaa !860
  store i8 1, i8* %23, align 1, !tbaa !861
  store i8 0, i8* %24, align 1, !tbaa !862
  store i8 0, i8* %25, align 1, !tbaa !863
  store i8 0, i8* %22, align 1, !tbaa !864
  %623 = load i64, i64* %12, align 8
  %624 = add i64 %623, -100
  %625 = load i32, i32* %3, align 4
  %626 = inttoptr i64 %624 to i32*
  store i32 %625, i32* %626
  %627 = add i64 %622, -799
  %628 = add i64 %622, 10
  %629 = load i64, i64* %11, align 8, !tbaa !844
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %628, i64* %631
  store i64 %630, i64* %11, align 8, !tbaa !844
  store i64 %627, i64* %0, align 8, !tbaa !844
  %632 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %state2, %struct.Memory* %621) #7
  %633 = load i64, i64* %0, align 8
  %634 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %633, %struct.Memory* %632)
  ret %struct.Memory* %634

block_400704:                                     ; preds = %block_4006e8
  br label %block_400760

; <label>:635:                                    ; preds = %block_4006e8
  %636 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %state2, i64 %98, %struct.Memory* %MEMORY.2)
  ret %struct.Memory* %636
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400934__term_proc(%struct.State* nocapture dereferenceable(2688) %state2, i64 %pc, %struct.Memory* returned %memory1) #4 {
block_400934:
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
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #7
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

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #7
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010b0_printf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601098_read(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400934;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #7
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400448;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #7
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @draw() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #7
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { naked nobuiltin noinline nounwind }
attributes #6 = { noinline nounwind }
attributes #7 = { nounwind }

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
