; ModuleID = 'Output/test_24.clang.lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_400be0__rodata_type = type <{ [4 x i8], [38 x i8], [18 x i8], [23 x i8] }>
%seg_600ff0__got_type = type <{ i64, [8 x i8] }>
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

@stderr = external global i64
@seg_400be0__rodata = internal constant %seg_400be0__rodata_type <{ [4 x i8] c"\01\00\02\00", [38 x i8] c"give me a key in the format key{hex}\0A\00", [18 x i8] c"a winner is you!\0A\00", [23 x i8] c"set sail for fail: %d\0A\00" }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), [8 x i8] c"\90\10`\00\00\00\00\00" }>
@0 = internal constant void ()* @__mcsema_attach_call
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400ab0_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400bd4__term_proc
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400a50_read_bytes
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4009e0_to_byte
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400468__init_proc
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4005c0_keycomp

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400ab0_main(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400ab0:
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
  %12 = load i64, i64* %9, align 8, !tbaa !844
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %10, align 8, !tbaa !844
  %15 = add i64 %12, -56
  store i64 %15, i64* %9, align 8, !tbaa !844
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %22 = add i64 %12, -12
  %23 = inttoptr i64 %22 to i32*
  store i32 0, i32* %23
  %24 = add i64 %12, -16
  %25 = load i32, i32* %5, align 4
  %26 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %26
  %27 = add i64 %12, -24
  %28 = load i64, i64* %7, align 8
  %29 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %29
  %30 = inttoptr i64 %24 to i32*
  %31 = load i32, i32* %30
  %32 = add i32 %31, -2
  %33 = icmp ult i32 %31, 2
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %16, align 1, !tbaa !848
  %35 = and i32 %32, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #8
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, i8* %17, align 1, !tbaa !860
  %40 = xor i32 %32, %31
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %18, align 1, !tbaa !861
  %44 = icmp eq i32 %32, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %19, align 1, !tbaa !862
  %46 = lshr i32 %32, 31
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %20, align 1, !tbaa !863
  %48 = lshr i32 %31, 31
  %49 = xor i32 %46, %48
  %50 = add nuw nsw i32 %49, %48
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %21, align 1, !tbaa !864
  %53 = icmp ne i8 %47, 0
  %54 = xor i1 %53, %51
  %.v = select i1 %54, i64 32, i64 72
  %55 = add i64 %.v, %pc
  store i64 %55, i64* %0, align 8, !tbaa !844
  br i1 %54, label %block_400ad0, label %block_400af8

block_400b1c:                                     ; preds = %block_400af8
  store i64 add (i64 ptrtoint (%seg_400be0__rodata_type* @seg_400be0__rodata to i64), i64 42), i64* %8, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %56 = add i64 %98, -1660
  %57 = add i64 %98, 17
  %58 = load i64, i64* %9, align 8, !tbaa !844
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60
  store i64 %59, i64* %9, align 8, !tbaa !844
  store i64 %56, i64* %0, align 8, !tbaa !844
  %61 = tail call fastcc %struct.Memory* @ext_601078_printf(%struct.State* nonnull %state2, %struct.Memory* %81) #8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, -36
  %64 = load i32, i32* %3, align 4
  %65 = load i64, i64* %0, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %66
  %67 = add i64 %65, 31
  store i64 %67, i64* %0, align 8, !tbaa !844
  br label %block_400b4c

block_400af8:                                     ; preds = %block_400ab0
  %68 = inttoptr i64 %27 to i64*
  %69 = load i64, i64* %68
  %70 = add i64 %69, 8
  %71 = inttoptr i64 %70 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %6, align 8, !tbaa !844
  %73 = add i64 %12, -32
  %74 = inttoptr i64 %73 to i64*
  store i64 %72, i64* %74
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %8, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %77 = add i64 %55, -1336
  %78 = add i64 %55, 23
  %79 = add i64 %12, -64
  %80 = inttoptr i64 %79 to i64*
  store i64 %78, i64* %80
  store i64 %79, i64* %9, align 8, !tbaa !844
  store i64 %77, i64* %0, align 8, !tbaa !844
  %81 = tail call %struct.Memory* @sub_4005c0_keycomp(%struct.State* nonnull %state2, i64 %77, %struct.Memory* %memory1)
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, -28
  %84 = load i32, i32* %3, align 4
  %85 = load i64, i64* %0, align 8
  %86 = inttoptr i64 %83 to i32*
  store i32 %84, i32* %86
  %87 = inttoptr i64 %83 to i32*
  %88 = load i32, i32* %87
  store i8 0, i8* %16, align 1, !tbaa !848
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #8
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %17, align 1, !tbaa !860
  store i8 0, i8* %18, align 1, !tbaa !861
  %94 = icmp eq i32 %88, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %19, align 1, !tbaa !862
  %96 = lshr i32 %88, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %20, align 1, !tbaa !863
  store i8 0, i8* %21, align 1, !tbaa !864
  %.v2 = select i1 %94, i64 13, i64 38
  %98 = add i64 %85, %.v2
  %99 = add i64 %98, 10
  store i64 %99, i64* %0, align 8
  br i1 %94, label %block_400b1c, label %block_400b35

block_400b35:                                     ; preds = %block_400af8
  store i64 add (i64 ptrtoint (%seg_400be0__rodata_type* @seg_400be0__rodata to i64), i64 60), i64* %8, align 8, !tbaa !844
  %100 = zext i32 %88 to i64
  store i64 %100, i64* %7, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %101 = add i64 %98, -1685
  %102 = add i64 %98, 20
  %103 = load i64, i64* %9, align 8, !tbaa !844
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105
  store i64 %104, i64* %9, align 8, !tbaa !844
  store i64 %101, i64* %0, align 8, !tbaa !844
  %106 = tail call fastcc %struct.Memory* @ext_601078_printf(%struct.State* nonnull %state2, %struct.Memory* %81) #8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, -40
  %109 = load i32, i32* %3, align 4
  %110 = load i64, i64* %0, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %0, align 8
  %112 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %112
  br label %block_400b4c

block_400b52:                                     ; preds = %block_400b4c, %block_400ad0
  %113 = phi i64 [ %163, %block_400b4c ], [ %154, %block_400ad0 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400b4c ], [ %153, %block_400ad0 ]
  %114 = add i64 %113, -4
  %115 = inttoptr i64 %114 to i32*
  %116 = load i32, i32* %115
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %6, align 8, !tbaa !844
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 48
  %120 = icmp ugt i64 %118, -49
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %16, align 1, !tbaa !848
  %122 = trunc i64 %119 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %17, align 1, !tbaa !860
  %128 = xor i64 %118, 16
  %129 = xor i64 %128, %119
  %130 = lshr i64 %129, 4
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %18, align 1, !tbaa !861
  %133 = icmp eq i64 %119, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %19, align 1, !tbaa !862
  %135 = lshr i64 %119, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %20, align 1, !tbaa !863
  %137 = lshr i64 %118, 63
  %138 = xor i64 %135, %137
  %139 = add nuw nsw i64 %138, %135
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %21, align 1, !tbaa !864
  %142 = add i64 %118, 56
  %143 = inttoptr i64 %119 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %10, align 8, !tbaa !844
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %0, align 8, !tbaa !844
  %147 = add i64 %118, 64
  store i64 %147, i64* %9, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_400ad0:                                     ; preds = %block_400ab0
  store i64 add (i64 ptrtoint (%seg_400be0__rodata_type* @seg_400be0__rodata to i64), i64 4), i64* %7, align 8, !tbaa !844
  %148 = load i64, i64* @stderr
  store i64 %148, i64* %8, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %149 = add i64 %55, -1568
  %150 = add i64 %55, 25
  %151 = add i64 %12, -64
  %152 = inttoptr i64 %151 to i64*
  store i64 %150, i64* %152
  store i64 %151, i64* %9, align 8, !tbaa !844
  store i64 %149, i64* %0, align 8, !tbaa !844
  %153 = tail call fastcc %struct.Memory* @ext_601088_fprintf(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, -4
  %156 = load i64, i64* %0, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 -1, i32* %157
  %158 = add i64 %154, -32
  %159 = load i32, i32* %3, align 4
  %160 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %160
  %161 = add i64 %156, 105
  store i64 %161, i64* %0, align 8, !tbaa !844
  br label %block_400b52

block_400b4c:                                     ; preds = %block_400b35, %block_400b1c
  %162 = phi i64 [ %111, %block_400b35 ], [ %67, %block_400b1c ]
  %163 = phi i64 [ %107, %block_400b35 ], [ %62, %block_400b1c ]
  %MEMORY.1 = phi %struct.Memory* [ %106, %block_400b35 ], [ %61, %block_400b1c ]
  %164 = add i64 %163, -28
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32, i32* %165
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %6, align 8, !tbaa !844
  %168 = add i64 %163, -4
  %169 = add i64 %162, 6
  store i64 %169, i64* %0, align 8
  %170 = inttoptr i64 %168 to i32*
  store i32 %166, i32* %170
  br label %block_400b52
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4009e0_to_byte(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_4009e0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8, !tbaa !844
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %7, i64* %10
  store i64 %9, i64* %5, align 8, !tbaa !844
  store i64 %9, i64* %6, align 8, !tbaa !844
  %11 = load i8, i8* %2, align 1
  %12 = add i64 %8, -13
  %13 = inttoptr i64 %12 to i8*
  store i8 %11, i8* %13
  %14 = add i64 %8, -13
  %15 = inttoptr i64 %14 to i8*
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  store i64 %17, i64* %4, align 8, !tbaa !844
  %18 = zext i8 %16 to i32
  %19 = add nsw i32 %18, -57
  %20 = icmp ult i8 %16, 57
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1, !tbaa !848
  %23 = and i32 %19, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #8
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1, !tbaa !860
  %29 = xor i32 %18, 16
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1, !tbaa !861
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1, !tbaa !862
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1, !tbaa !863
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1, !tbaa !864
  %42 = xor i1 %35, true
  %43 = icmp eq i8 %39, 0
  %44 = and i1 %43, %42
  %.v = select i1 %44, i64 38, i64 23
  %45 = add i64 %.v, %pc
  %46 = add i64 %45, 4
  store i64 %46, i64* %0, align 8
  store i64 %17, i64* %3, align 8, !tbaa !844
  br i1 %44, label %block_400a06, label %block_4009f7

block_400a3e:                                     ; preds = %block_400a22
  %47 = add i64 %8, -12
  %48 = add i64 %167, 7
  store i64 %48, i64* %0, align 8
  %49 = inttoptr i64 %47 to i32*
  store i32 0, i32* %49
  br label %block_400a45

block_4009f7:                                     ; preds = %block_4009e0
  %50 = zext i8 %16 to i32
  %51 = add nsw i32 %50, -48
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %3, align 8, !tbaa !844
  %53 = icmp ult i8 %16, 48
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %22, align 1, !tbaa !848
  %55 = and i32 %51, 255
  %56 = tail call i32 @llvm.ctpop.i32(i32 %55) #8
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  store i8 %59, i8* %28, align 1, !tbaa !860
  %60 = xor i8 %16, 16
  %61 = zext i8 %60 to i32
  %62 = xor i32 %61, %51
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %34, align 1, !tbaa !861
  %66 = icmp eq i32 %51, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %37, align 1, !tbaa !862
  %68 = lshr i32 %51, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %40, align 1, !tbaa !863
  store i8 0, i8* %41, align 1, !tbaa !864
  %70 = add i64 %8, -12
  %71 = inttoptr i64 %70 to i32*
  store i32 %51, i32* %71
  %72 = add i64 %45, 78
  store i64 %72, i64* %0, align 8, !tbaa !844
  br label %block_400a45

block_400a13:                                     ; preds = %block_400a06
  %73 = zext i8 %16 to i32
  %74 = add nsw i32 %73, -55
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %3, align 8, !tbaa !844
  %76 = icmp ult i8 %16, 55
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %22, align 1, !tbaa !848
  %78 = and i32 %74, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78) #8
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %28, align 1, !tbaa !860
  %83 = xor i8 %16, 16
  %84 = zext i8 %83 to i32
  %85 = xor i32 %84, %74
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %34, align 1, !tbaa !861
  %89 = icmp eq i32 %74, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %37, align 1, !tbaa !862
  %91 = lshr i32 %74, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %40, align 1, !tbaa !863
  store i8 0, i8* %41, align 1, !tbaa !864
  %93 = add i64 %8, -12
  %94 = inttoptr i64 %93 to i32*
  store i32 %74, i32* %94
  %95 = add i64 %115, 50
  store i64 %95, i64* %0, align 8, !tbaa !844
  br label %block_400a45

block_400a06:                                     ; preds = %block_4009e0
  %96 = add nsw i32 %18, -70
  %97 = icmp ult i8 %16, 70
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %22, align 1, !tbaa !848
  %99 = and i32 %96, 255
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99) #8
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %28, align 1, !tbaa !860
  %104 = xor i32 %96, %18
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %34, align 1, !tbaa !861
  %108 = icmp eq i32 %96, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %37, align 1, !tbaa !862
  %110 = lshr i32 %96, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %40, align 1, !tbaa !863
  store i8 0, i8* %41, align 1, !tbaa !864
  %112 = xor i1 %108, true
  %113 = icmp eq i8 %111, 0
  %114 = and i1 %113, %112
  %.v3 = select i1 %114, i64 28, i64 13
  %115 = add i64 %45, %.v3
  %116 = add i64 %115, 4
  store i64 %116, i64* %0, align 8
  store i64 %17, i64* %3, align 8, !tbaa !844
  br i1 %114, label %block_400a22, label %block_400a13

block_400a2f:                                     ; preds = %block_400a22
  %117 = zext i8 %16 to i32
  %118 = add nsw i32 %117, -87
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %3, align 8, !tbaa !844
  %120 = icmp ult i8 %16, 87
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %22, align 1, !tbaa !848
  %122 = and i32 %118, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #8
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %28, align 1, !tbaa !860
  %127 = xor i8 %16, 16
  %128 = zext i8 %127 to i32
  %129 = xor i32 %128, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %34, align 1, !tbaa !861
  %133 = icmp eq i32 %118, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %37, align 1, !tbaa !862
  %135 = lshr i32 %118, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %40, align 1, !tbaa !863
  store i8 0, i8* %41, align 1, !tbaa !864
  %137 = add i64 %8, -12
  %138 = inttoptr i64 %137 to i32*
  store i32 %118, i32* %138
  %139 = add i64 %167, 22
  store i64 %139, i64* %0, align 8, !tbaa !844
  br label %block_400a45

block_400a45:                                     ; preds = %block_400a2f, %block_400a13, %block_4009f7, %block_400a3e
  %.pre-phi = phi i64 [ %137, %block_400a2f ], [ %93, %block_400a13 ], [ %70, %block_4009f7 ], [ %47, %block_400a3e ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400a2f ], [ %memory1, %block_400a13 ], [ %memory1, %block_4009f7 ], [ %memory1, %block_400a3e ]
  %140 = inttoptr i64 %.pre-phi to i32*
  %141 = load i32, i32* %140
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %3, align 8, !tbaa !844
  %143 = inttoptr i64 %9 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %6, align 8, !tbaa !844
  %145 = inttoptr i64 %8 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %0, align 8, !tbaa !844
  %147 = add i64 %8, 8
  store i64 %147, i64* %5, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_400a22:                                     ; preds = %block_400a06
  %148 = add nsw i32 %18, -102
  %149 = icmp ult i8 %16, 102
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %22, align 1, !tbaa !848
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #8
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %28, align 1, !tbaa !860
  %156 = xor i32 %148, %18
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %34, align 1, !tbaa !861
  %160 = icmp eq i32 %148, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %37, align 1, !tbaa !862
  %162 = lshr i32 %148, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %40, align 1, !tbaa !863
  store i8 0, i8* %41, align 1, !tbaa !864
  %164 = xor i1 %160, true
  %165 = icmp eq i8 %163, 0
  %166 = and i1 %165, %164
  %.v4 = select i1 %166, i64 28, i64 13
  %167 = add i64 %115, %.v4
  store i64 %167, i64* %0, align 8, !tbaa !844
  br i1 %166, label %block_400a3e, label %block_400a2f
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4005c0_keycomp(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_4005c0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0
  %4 = bitcast %union.Flags* %3 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0
  %6 = bitcast %union.Flags* %5 to i8*
  %7 = bitcast %union.Flags* %1 to i16*
  %8 = bitcast %union.Flags* %3 to i16*
  %9 = bitcast %union.Flags* %1 to i32*
  %10 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %11 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %12 = getelementptr inbounds %union.Flags, %union.Flags* %5, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %15, align 8, !tbaa !844
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20
  store i64 %19, i64* %16, align 8, !tbaa !844
  %21 = add i64 %18, -88
  %22 = icmp ult i64 %19, 80
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1, !tbaa !848
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #8
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1, !tbaa !860
  %32 = xor i64 %19, 16
  %33 = xor i64 %32, %21
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1, !tbaa !861
  %38 = icmp eq i64 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1, !tbaa !862
  %41 = lshr i64 %21, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1, !tbaa !863
  %44 = lshr i64 %19, 63
  %45 = xor i64 %41, %44
  %46 = add nuw nsw i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1, !tbaa !864
  %50 = add i64 %18, -24
  %51 = load i64, i64* %14, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %52
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %14, align 8, !tbaa !844
  %55 = add i64 %pc, -304
  %56 = add i64 %pc, 21
  %57 = add i64 %18, -96
  %58 = inttoptr i64 %57 to i64*
  store i64 %56, i64* %58
  store i64 %57, i64* %15, align 8, !tbaa !844
  store i64 %55, i64* %0, align 8, !tbaa !844
  %59 = tail call fastcc %struct.Memory* @ext_601070_strlen(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %0, align 8
  store i64 %61, i64* %11, align 8, !tbaa !844
  %63 = load i64, i64* %16, align 8
  %64 = add i64 %63, -32
  %65 = inttoptr i64 %64 to i32*
  store i32 %60, i32* %65
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66
  %68 = add i32 %67, -37
  %69 = icmp ult i32 %67, 37
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %24, align 1, !tbaa !848
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %31, align 1, !tbaa !860
  %76 = xor i32 %68, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %37, align 1, !tbaa !861
  %80 = icmp eq i32 %68, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %40, align 1, !tbaa !862
  %82 = lshr i32 %68, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %43, align 1, !tbaa !863
  %84 = lshr i32 %67, 31
  %85 = xor i32 %82, %84
  %86 = add nuw nsw i32 %85, %84
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %49, align 1, !tbaa !864
  %.v = select i1 %80, i64 26, i64 15
  %89 = add i64 %62, %.v
  store i64 %89, i64* %0, align 8, !tbaa !844
  br i1 %80, label %block_4005ef, label %block_4005e4

block_400717:                                     ; preds = %block_40070a
  %90 = add i64 %363, -20
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91
  %93 = add i32 %92, 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %10, align 8, !tbaa !844
  %95 = icmp ugt i32 %92, -5
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %24, align 1, !tbaa !848
  %97 = and i32 %93, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #8
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %31, align 1, !tbaa !860
  %102 = xor i32 %93, %92
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %37, align 1, !tbaa !861
  %106 = icmp eq i32 %93, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %40, align 1, !tbaa !862
  %108 = lshr i32 %93, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %43, align 1, !tbaa !863
  %110 = lshr i32 %92, 31
  %111 = xor i32 %108, %110
  %112 = add nuw nsw i32 %111, %108
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %49, align 1, !tbaa !864
  %115 = inttoptr i64 %90 to i32*
  store i32 %93, i32* %115
  %116 = add i64 %1119, 23
  store i64 %116, i64* %0, align 8, !tbaa !844
  br label %block_400777

block_4005ef:                                     ; preds = %block_4005c0
  %117 = add i64 %63, -16
  %118 = inttoptr i64 %117 to i64*
  %119 = load i64, i64* %118
  %120 = add i64 %119, 4
  %121 = inttoptr i64 %117 to i64*
  store i64 %120, i64* %121
  %122 = inttoptr i64 %117 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %10, align 8, !tbaa !844
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8, i8* %124
  %126 = sext i8 %125 to i64
  %127 = and i64 %126, 4294967295
  store i64 %127, i64* %11, align 8, !tbaa !844
  %128 = sext i8 %125 to i32
  %129 = add nsw i32 %128, -100
  %130 = icmp ult i8 %125, 100
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %24, align 1, !tbaa !848
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132) #8
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %31, align 1, !tbaa !860
  %137 = xor i32 %129, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %37, align 1, !tbaa !861
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %40, align 1, !tbaa !862
  %143 = lshr i32 %129, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %43, align 1, !tbaa !863
  %145 = lshr i32 %128, 31
  %146 = xor i32 %143, %145
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %49, align 1, !tbaa !864
  %.v54 = select i1 %141, i64 40, i64 28
  %150 = add i64 %89, %.v54
  store i64 %150, i64* %0, align 8, !tbaa !844
  br i1 %141, label %block_400617, label %block_40060b

block_4007ea:                                     ; preds = %block_400798, %block_4007ca
  %151 = phi i64 [ %947, %block_400798 ], [ %581, %block_4007ca ]
  %152 = add i64 %924, -20
  %153 = add i64 %151, 7
  store i64 %153, i64* %0, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 48059, i32* %154
  br label %block_4007f1

block_40094e:                                     ; preds = %block_400903.block_40094e_crit_edge, %block_40092f
  %.pre-phi50 = phi i32 [ %.pre49, %block_400903.block_40094e_crit_edge ], [ %714, %block_40092f ]
  %.pre-phi48 = phi i32 [ %.pre47, %block_400903.block_40094e_crit_edge ], [ %697, %block_40092f ]
  %.pre-phi46 = phi i64 [ %.pre45, %block_400903.block_40094e_crit_edge ], [ %696, %block_40092f ]
  %155 = phi i64 [ %1229, %block_400903.block_40094e_crit_edge ], [ %719, %block_40092f ]
  store i64 %1206, i64* %11, align 8, !tbaa !844
  store i64 %1201, i64* %10, align 8, !tbaa !844
  store i64 %.pre-phi46, i64* %12, align 8, !tbaa !844
  %156 = sub nsw i32 %1207, %.pre-phi48
  %157 = icmp ult i32 %1207, %.pre-phi48
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %24, align 1, !tbaa !848
  %159 = and i32 %156, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %31, align 1, !tbaa !860
  %164 = xor i32 %.pre-phi48, %1207
  %165 = xor i32 %164, %156
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %37, align 1, !tbaa !861
  %169 = icmp eq i32 %156, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %40, align 1, !tbaa !862
  %171 = lshr i32 %156, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %43, align 1, !tbaa !863
  %173 = xor i32 %.pre-phi50, %1224
  %174 = xor i32 %171, %1224
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %49, align 1, !tbaa !864
  %.v53 = select i1 %169, i64 24, i64 120
  %178 = add i64 %155, %.v53
  store i64 %178, i64* %0, align 8, !tbaa !844
  br i1 %169, label %block_400966, label %block_4009c6

block_400617:                                     ; preds = %block_4005ef
  store i64 %123, i64* %10, align 8, !tbaa !844
  %179 = add i64 %123, 1
  %180 = inttoptr i64 %179 to i8*
  %181 = load i8, i8* %180
  %182 = zext i8 %181 to i64
  store i64 %182, i64* %14, align 8, !tbaa !844
  %183 = add i64 %150, 969
  %184 = add i64 %150, 13
  %185 = load i64, i64* %15, align 8, !tbaa !844
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187
  store i64 %186, i64* %15, align 8, !tbaa !844
  store i64 %183, i64* %0, align 8, !tbaa !844
  %188 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %183, %struct.Memory* %59)
  %189 = load i32, i32* %9, align 4
  %190 = load i64, i64* %0, align 8
  %191 = add i32 %189, -9
  %192 = icmp ult i32 %189, 9
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %24, align 1, !tbaa !848
  %194 = and i32 %191, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %31, align 1, !tbaa !860
  %199 = xor i32 %191, %189
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %37, align 1, !tbaa !861
  %203 = icmp eq i32 %191, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %40, align 1, !tbaa !862
  %205 = lshr i32 %191, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %43, align 1, !tbaa !863
  %207 = lshr i32 %189, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %207
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %49, align 1, !tbaa !864
  %.v55 = select i1 %203, i64 21, i64 9
  %212 = add i64 %190, %.v55
  store i64 %212, i64* %0, align 8, !tbaa !844
  %213 = load i64, i64* %16, align 8
  br i1 %203, label %block_400639, label %block_40062d

block_4009d1:                                     ; preds = %block_400940, %block_4009c6, %block_4009c1
  %214 = phi i64 [ %1194, %block_400940 ], [ %1194, %block_4009c6 ], [ %.pre38, %block_4009c1 ]
  %215 = phi i64 [ %889, %block_400940 ], [ %781, %block_4009c6 ], [ %365, %block_4009c1 ]
  %.sink5 = phi i64 [ 136, %block_400940 ], [ 5, %block_4009c6 ], [ 5, %block_4009c1 ]
  %.sink = phi %struct.Memory* [ %1193, %block_400940 ], [ %1193, %block_4009c6 ], [ %MEMORY.5, %block_4009c1 ]
  %216 = add i64 %215, %.sink5
  %217 = add i64 %214, -20
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32, i32* %218
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %10, align 8, !tbaa !844
  %221 = add i64 %214, -4
  %222 = add i64 %216, 6
  store i64 %222, i64* %0, align 8
  %223 = inttoptr i64 %221 to i32*
  store i32 %219, i32* %223
  br label %block_4009d7

block_400664:                                     ; preds = %block_400639
  %224 = add i64 %476, -16
  %225 = inttoptr i64 %224 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %10, align 8, !tbaa !844
  %227 = add i64 %226, 3
  %228 = inttoptr i64 %227 to i8*
  %229 = load i8, i8* %228
  %230 = zext i8 %229 to i64
  store i64 %230, i64* %14, align 8, !tbaa !844
  %231 = add i64 %508, 892
  %232 = add i64 %508, 13
  %233 = load i64, i64* %15, align 8, !tbaa !844
  %234 = add i64 %233, -8
  %235 = inttoptr i64 %234 to i64*
  store i64 %232, i64* %235
  store i64 %234, i64* %15, align 8, !tbaa !844
  store i64 %231, i64* %0, align 8, !tbaa !844
  %236 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %231, %struct.Memory* %475)
  %237 = load i64, i64* %0, align 8
  store i64 2, i64* %14, align 8, !tbaa !844
  %238 = load i64, i64* %16, align 8
  %239 = add i64 %238, -28
  %240 = load i32, i32* %9, align 4
  %241 = inttoptr i64 %239 to i32*
  store i32 %240, i32* %241
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = add i32 %243, 1
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %10, align 8, !tbaa !844
  %246 = icmp eq i32 %243, -1
  %247 = icmp eq i32 %244, 0
  %248 = or i1 %246, %247
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %24, align 1, !tbaa !848
  %250 = and i32 %244, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %31, align 1, !tbaa !860
  %255 = xor i32 %244, %243
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %37, align 1, !tbaa !861
  %259 = zext i1 %247 to i8
  store i8 %259, i8* %40, align 1, !tbaa !862
  %260 = lshr i32 %244, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %43, align 1, !tbaa !863
  %262 = lshr i32 %243, 31
  %263 = xor i32 %260, %262
  %264 = add nuw nsw i32 %263, %260
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %49, align 1, !tbaa !864
  %267 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %268 = sext i32 %244 to i64
  %269 = lshr i64 %268, 32
  store i64 %269, i64* %267, align 8, !tbaa !844
  %270 = add i64 %237, 17
  store i64 %270, i64* %0, align 8
  %271 = shl nuw i64 %269, 32
  %272 = or i64 %271, %245
  %273 = sdiv i64 %272, 2
  %274 = shl i64 %273, 32
  %275 = ashr exact i64 %274, 32
  %276 = icmp eq i64 %273, %275
  br i1 %276, label %279, label %277

; <label>:277:                                    ; preds = %block_400664
  %278 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(2688) %state2, i64 %270, %struct.Memory* %236) #9
  %.pre = load i32, i32* %9, align 4
  %.pre31 = load i64, i64* %0, align 8
  %.pre32 = load i64, i64* %16, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:279:                                    ; preds = %block_400664
  %280 = srem i64 %272, 2
  %281 = and i64 %273, 4294967295
  store i64 %281, i64* %10, align 8, !tbaa !844
  %282 = and i64 %280, 4294967295
  store i64 %282, i64* %12, align 8, !tbaa !844
  store i8 0, i8* %24, align 1, !tbaa !848
  store i8 0, i8* %31, align 1, !tbaa !860
  store i8 0, i8* %37, align 1, !tbaa !861
  store i8 0, i8* %40, align 1, !tbaa !862
  store i8 0, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %283 = trunc i64 %273 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %279, %277
  %284 = phi i64 [ %.pre32, %277 ], [ %238, %279 ]
  %285 = phi i64 [ %.pre31, %277 ], [ %270, %279 ]
  %286 = phi i32 [ %.pre, %277 ], [ %283, %279 ]
  %287 = phi %struct.Memory* [ %278, %277 ], [ %236, %279 ]
  %288 = add i32 %286, -7
  %289 = icmp ult i32 %286, 7
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %24, align 1, !tbaa !848
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #8
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %31, align 1, !tbaa !860
  %296 = xor i32 %288, %286
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %37, align 1, !tbaa !861
  %300 = icmp eq i32 %288, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %40, align 1, !tbaa !862
  %302 = lshr i32 %288, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %43, align 1, !tbaa !863
  %304 = lshr i32 %286, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %304
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %49, align 1, !tbaa !864
  %.v57 = select i1 %300, i64 21, i64 9
  %309 = add i64 %285, %.v57
  store i64 %309, i64* %0, align 8, !tbaa !844
  br i1 %300, label %block_400697, label %block_40068b

block_4006ce:                                     ; preds = %block_400697, %block_4006ab
  %310 = phi i64 [ %975, %block_400697 ], [ %802, %block_4006ab ]
  %311 = add i64 %284, -4
  %312 = inttoptr i64 %311 to i32*
  store i32 -6, i32* %312
  %313 = add i64 %310, 777
  store i64 %313, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_4008f8:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %314 = zext i32 %539 to i64
  store i64 %314, i64* %10, align 8, !tbaa !844
  %315 = add i64 %523, -4
  %316 = inttoptr i64 %315 to i32*
  store i32 %539, i32* %316
  %317 = add i64 %561, 223
  store i64 %317, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_40060b:                                     ; preds = %block_4005ef
  %318 = add i64 %63, -4
  %319 = inttoptr i64 %318 to i32*
  store i32 -2, i32* %319
  %320 = add i64 %150, 972
  store i64 %320, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_400658:                                     ; preds = %block_400639
  %321 = add i64 %476, -4
  %322 = inttoptr i64 %321 to i32*
  store i32 -4, i32* %322
  %323 = add i64 %508, 895
  store i64 %323, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_4006c2:                                     ; preds = %block_4006ab
  %324 = add i64 %284, -20
  %325 = inttoptr i64 %324 to i32*
  store i32 -4, i32* %325
  %326 = inttoptr i64 %951 to i64*
  %327 = load i64, i64* %326
  %328 = add i64 %327, 5
  %329 = inttoptr i64 %328 to i8*
  %330 = load i8, i8* %329
  %331 = and i8 %330, 15
  %332 = add i64 %284, -33
  %333 = inttoptr i64 %332 to i8*
  store i8 %331, i8* %333
  %334 = inttoptr i64 %951 to i64*
  %335 = load i64, i64* %334
  store i64 %335, i64* %10, align 8, !tbaa !844
  %336 = add i64 %335, 5
  %337 = inttoptr i64 %336 to i8*
  %338 = load i8, i8* %337
  %339 = and i8 %338, -16
  store i8 %339, i8* %6, align 1, !tbaa !865
  %340 = add i64 %284, -34
  %341 = inttoptr i64 %340 to i8*
  store i8 %339, i8* %341
  %342 = inttoptr i64 %332 to i8*
  %343 = load i8, i8* %342
  %344 = zext i8 %343 to i64
  store i64 %344, i64* %11, align 8, !tbaa !844
  %345 = zext i8 %343 to i32
  %346 = add nsw i32 %345, -3
  %347 = icmp ult i8 %343, 3
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %24, align 1, !tbaa !848
  %349 = and i32 %346, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #8
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %31, align 1, !tbaa !860
  %354 = xor i32 %346, %345
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %37, align 1, !tbaa !861
  %358 = icmp eq i32 %346, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %40, align 1, !tbaa !862
  %360 = lshr i32 %346, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v60 = select i1 %358, i64 72, i64 99
  %362 = add i64 %802, %.v60
  store i64 %362, i64* %0, align 8, !tbaa !844
  %363 = load i64, i64* %16, align 8
  br i1 %358, label %block_40070a, label %block_400725

block_4009c1:                                     ; preds = %block_400966, %block_4009a4, %block_4009ba
  %.pre38 = phi i64 [ %1035, %block_400966 ], [ %.pre38.pre, %block_4009ba ], [ %.pre38.pre, %block_4009a4 ]
  %364 = phi i64 [ %1055, %block_400966 ], [ %367, %block_4009ba ], [ %872, %block_4009a4 ]
  %MEMORY.5 = phi %struct.Memory* [ %1034, %block_400966 ], [ %848, %block_4009ba ], [ %848, %block_4009a4 ]
  %365 = add i64 %364, 11
  store i64 %365, i64* %0, align 8, !tbaa !844
  br label %block_4009d1

block_4009ba:                                     ; preds = %block_4009a4
  %366 = add i64 %.pre38.pre, -20
  %367 = add i64 %872, 7
  store i64 %367, i64* %0, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 -32, i32* %368
  br label %block_4009c1

block_400777:                                     ; preds = %block_400725, %block_400717
  %369 = phi i64 [ %834, %block_400725 ], [ %116, %block_400717 ]
  %MEMORY.10 = phi %struct.Memory* [ %287, %block_400725 ], [ %287, %block_400717 ]
  %370 = add i64 %363, -16
  %371 = inttoptr i64 %370 to i64*
  %372 = load i64, i64* %371
  store i64 %372, i64* %10, align 8, !tbaa !844
  %373 = add i64 %372, 6
  %374 = inttoptr i64 %373 to i8*
  %375 = load i8, i8* %374
  %376 = zext i8 %375 to i64
  store i64 %376, i64* %14, align 8, !tbaa !844
  %377 = add i64 %369, 690
  %378 = add i64 %369, 13
  %379 = load i64, i64* %15, align 8, !tbaa !844
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %378, i64* %381
  store i64 %380, i64* %15, align 8, !tbaa !844
  store i64 %377, i64* %0, align 8, !tbaa !844
  %382 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %377, %struct.Memory* %MEMORY.10)
  %383 = load i8, i8* %2, align 1
  %384 = load i64, i64* %0, align 8
  store i8 %383, i8* %4, align 1, !tbaa !865
  %385 = load i64, i64* %16, align 8
  %386 = add i64 %385, -35
  %387 = inttoptr i64 %386 to i8*
  store i8 %383, i8* %387
  %388 = add i64 %385, -16
  %389 = inttoptr i64 %388 to i64*
  %390 = load i64, i64* %389
  store i64 %390, i64* %12, align 8, !tbaa !844
  %391 = add i64 %390, 7
  %392 = inttoptr i64 %391 to i8*
  %393 = load i8, i8* %392
  %394 = zext i8 %393 to i64
  store i64 %394, i64* %14, align 8, !tbaa !844
  %395 = add i64 %384, 677
  %396 = add i64 %384, 18
  %397 = load i64, i64* %15, align 8, !tbaa !844
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399
  store i64 %398, i64* %15, align 8, !tbaa !844
  store i64 %395, i64* %0, align 8, !tbaa !844
  %400 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %395, %struct.Memory* %382)
  %401 = load i64, i64* %16, align 8
  %402 = add i64 %401, -35
  %403 = load i64, i64* %0, align 8
  %404 = inttoptr i64 %402 to i8*
  %405 = load i8, i8* %404
  %406 = zext i8 %405 to i64
  %407 = load i32, i32* %9, align 4
  %408 = zext i32 %407 to i64
  %409 = or i64 %408, %406
  store i64 %409, i64* %14, align 8, !tbaa !844
  %410 = trunc i64 %409 to i8
  %411 = inttoptr i64 %402 to i8*
  store i8 %410, i8* %411
  %412 = inttoptr i64 %402 to i8*
  %413 = load i8, i8* %412
  %414 = zext i8 %413 to i32
  %415 = xor i32 %414, 16
  %416 = sub nuw nsw i32 -71, %414
  store i8 0, i8* %24, align 1, !tbaa !848
  %417 = and i32 %416, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #8
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %31, align 1, !tbaa !860
  %422 = xor i32 %416, %415
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %37, align 1, !tbaa !861
  store i8 0, i8* %40, align 1, !tbaa !862
  store i8 1, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %426 = add i64 %401, -20
  %427 = inttoptr i64 %426 to i32*
  %428 = load i32, i32* %427
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %11, align 8, !tbaa !844
  store i64 %429, i64* %10, align 8, !tbaa !844
  %430 = add i64 %403, 50
  store i64 %430, i64* %0, align 8
  %431 = trunc i32 %428 to i5
  switch i5 %431, label %437 [
    i5 0, label %block_400782
    i5 1, label %432
  ]

; <label>:432:                                    ; preds = %block_400777
  %433 = shl i32 %428, 1
  %434 = icmp slt i32 %428, 0
  %435 = icmp slt i32 %433, 0
  %436 = xor i1 %434, %435
  br label %447

; <label>:437:                                    ; preds = %block_400777
  %438 = and i32 %428, 31
  %439 = zext i32 %438 to i64
  %440 = add nuw nsw i64 %439, 4294967295
  %441 = and i64 %440, 4294967295
  %442 = shl i64 %429, %441
  %443 = trunc i64 %442 to i32
  %444 = icmp slt i32 %443, 0
  %445 = icmp ne i8 0, 0
  %446 = shl i32 %443, 1
  br label %447

; <label>:447:                                    ; preds = %437, %432
  %448 = phi i1 [ %434, %432 ], [ %444, %437 ]
  %449 = phi i1 [ %436, %432 ], [ %445, %437 ]
  %450 = phi i32 [ %433, %432 ], [ %446, %437 ]
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %10, align 8, !tbaa !844
  %452 = zext i1 %448 to i8
  store i8 %452, i8* %24, align 1, !tbaa !865
  %453 = and i32 %450, 254
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453) #8
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %31, align 1, !tbaa !865
  store i8 0, i8* %37, align 1, !tbaa !865
  %458 = icmp eq i32 %450, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %40, align 1, !tbaa !865
  %460 = lshr i32 %450, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %43, align 1, !tbaa !865
  %462 = zext i1 %449 to i8
  store i8 %462, i8* %49, align 1, !tbaa !865
  br label %block_400782

block_400639:                                     ; preds = %block_400617
  %463 = add i64 %213, -16
  %464 = inttoptr i64 %463 to i64*
  %465 = load i64, i64* %464
  store i64 %465, i64* %10, align 8, !tbaa !844
  %466 = add i64 %465, 2
  %467 = inttoptr i64 %466 to i8*
  %468 = load i8, i8* %467
  %469 = zext i8 %468 to i64
  store i64 %469, i64* %14, align 8, !tbaa !844
  %470 = add i64 %212, 935
  %471 = add i64 %212, 13
  %472 = load i64, i64* %15, align 8, !tbaa !844
  %473 = add i64 %472, -8
  %474 = inttoptr i64 %473 to i64*
  store i64 %471, i64* %474
  store i64 %473, i64* %15, align 8, !tbaa !844
  store i64 %470, i64* %0, align 8, !tbaa !844
  %475 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %470, %struct.Memory* %188)
  %476 = load i64, i64* %16, align 8
  %477 = add i64 %476, -24
  %478 = load i32, i32* %9, align 4
  %479 = load i64, i64* %0, align 8
  %480 = inttoptr i64 %477 to i32*
  store i32 %478, i32* %480
  %481 = inttoptr i64 %477 to i32*
  %482 = load i32, i32* %481
  %483 = shl i32 %482, 1
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %10, align 8, !tbaa !844
  %485 = add i32 %483, -26
  %486 = icmp ult i32 %483, 26
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %24, align 1, !tbaa !848
  %488 = and i32 %485, 254
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #8
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %31, align 1, !tbaa !860
  %493 = xor i32 %483, 16
  %494 = xor i32 %493, %485
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %37, align 1, !tbaa !861
  %498 = icmp eq i32 %485, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %40, align 1, !tbaa !862
  %500 = lshr i32 %485, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %43, align 1, !tbaa !863
  %502 = lshr i32 %482, 30
  %503 = and i32 %502, 1
  %504 = xor i32 %500, %503
  %505 = add nuw nsw i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %49, align 1, !tbaa !864
  %.v56 = select i1 %498, i64 30, i64 18
  %508 = add i64 %479, %.v56
  store i64 %508, i64* %0, align 8, !tbaa !844
  br i1 %498, label %block_400664, label %block_400658

block_40084c:                                     ; preds = %block_4007f1, %block_400834
  %509 = phi i64 [ %613, %block_400834 ], [ %690, %block_4007f1 ]
  %510 = add i64 %691, -20
  %511 = add i64 %509, 7
  store i64 %511, i64* %0, align 8
  %512 = inttoptr i64 %510 to i32*
  store i32 48351, i32* %512
  br label %block_400853

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %block_400892
  store i64 10000, i64* %10, align 8, !tbaa !844
  %513 = xor i32 %1060, 13631488
  %514 = inttoptr i64 %758 to i32*
  store i32 %513, i32* %514
  %515 = inttoptr i64 %758 to i32*
  %516 = load i32, i32* %515
  %517 = lshr i32 %516, 4
  %518 = inttoptr i64 %758 to i32*
  store i32 %517, i32* %518
  %519 = inttoptr i64 %758 to i32*
  %520 = load i32, i32* %519
  %521 = add i32 %520, -226
  %522 = inttoptr i64 %758 to i32*
  store i32 %521, i32* %522
  %523 = load i64, i64* %16, align 8
  %524 = add i64 %523, -60
  %525 = inttoptr i64 %524 to i32*
  %526 = load i32, i32* %525
  %527 = add i64 %523, -68
  %528 = load i32, i32* %9, align 4
  %529 = inttoptr i64 %527 to i32*
  store i32 %528, i32* %529
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %11, align 8, !tbaa !844
  %div = udiv i32 %526, %531
  %533 = zext i32 %div to i64
  %534 = urem i32 %526, %531
  %535 = zext i32 %534 to i64
  store i64 %533, i64* %10, align 8, !tbaa !844
  store i64 %535, i64* %12, align 8, !tbaa !844
  %536 = add i64 %523, -60
  %537 = inttoptr i64 %536 to i32*
  store i32 %div, i32* %537
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538
  %540 = add i32 %539, -3
  %541 = icmp ult i32 %539, 3
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %24, align 1, !tbaa !848
  %543 = and i32 %540, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543) #8
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %31, align 1, !tbaa !860
  %548 = xor i32 %540, %539
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %37, align 1, !tbaa !861
  %552 = icmp eq i32 %540, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %40, align 1, !tbaa !862
  %554 = lshr i32 %540, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %43, align 1, !tbaa !863
  %556 = lshr i32 %539, 31
  %557 = xor i32 %554, %556
  %558 = add nuw nsw i32 %557, %556
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %49, align 1, !tbaa !864
  %.v64 = select i1 %552, i64 77, i64 66
  %561 = add i64 %1084, %.v64
  store i64 %561, i64* %0, align 8, !tbaa !844
  br i1 %552, label %block_400903, label %block_4008f8

block_4007ca:                                     ; preds = %block_400798
  %562 = or i64 %929, 43690
  %563 = trunc i64 %562 to i32
  store i64 %562, i64* %10, align 8, !tbaa !844
  %564 = add nsw i32 %563, -65211
  %565 = icmp ult i32 %563, 65211
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %24, align 1, !tbaa !848
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #8
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %31, align 1, !tbaa !860
  %572 = xor i32 %563, 16
  %573 = xor i32 %572, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %37, align 1, !tbaa !861
  %577 = icmp eq i32 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %40, align 1, !tbaa !862
  %579 = lshr i32 %564, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v70 = select i1 %577, i64 20, i64 32
  %581 = add i64 %947, %.v70
  store i64 %581, i64* %0, align 8, !tbaa !844
  br i1 %577, label %block_4007de, label %block_4007ea

block_400834:                                     ; preds = %block_4007f1
  %582 = add i64 %691, -56
  %583 = inttoptr i64 %582 to i32*
  %584 = load i32, i32* %583
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %10, align 8, !tbaa !844
  %586 = add i64 %691, -20
  %587 = inttoptr i64 %586 to i32*
  %588 = load i32, i32* %587
  %589 = sub i32 %584, %588
  %590 = icmp ult i32 %584, %588
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %24, align 1, !tbaa !848
  %592 = and i32 %589, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592) #8
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %31, align 1, !tbaa !860
  %597 = xor i32 %588, %584
  %598 = xor i32 %597, %589
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %37, align 1, !tbaa !861
  %602 = icmp eq i32 %589, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %40, align 1, !tbaa !862
  %604 = lshr i32 %589, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %43, align 1, !tbaa !863
  %606 = lshr i32 %584, 31
  %607 = lshr i32 %588, 31
  %608 = xor i32 %607, %606
  %609 = xor i32 %604, %606
  %610 = add nuw nsw i32 %609, %608
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %49, align 1, !tbaa !864
  %.v69 = select i1 %602, i64 12, i64 24
  %613 = add i64 %690, %.v69
  store i64 %613, i64* %0, align 8, !tbaa !844
  br i1 %602, label %block_400840, label %block_40084c

block_4007f1:                                     ; preds = %block_4007de, %block_4007ea
  %614 = phi i64 [ %153, %block_4007ea ], [ %1097, %block_4007de ]
  %MEMORY.7 = phi %struct.Memory* [ %921, %block_4007ea ], [ %921, %block_4007de ]
  store i64 0, i64* %14, align 8, !tbaa !844
  store i64 8, i64* %12, align 8, !tbaa !844
  %615 = add i64 %924, -16
  %616 = inttoptr i64 %615 to i64*
  %617 = load i64, i64* %616
  %618 = add i64 %617, 12
  store i64 %618, i64* %10, align 8, !tbaa !844
  %619 = icmp ugt i64 %617, -13
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %24, align 1, !tbaa !848
  %621 = trunc i64 %618 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #8
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %31, align 1, !tbaa !860
  %627 = xor i64 %618, %617
  %628 = lshr i64 %627, 4
  %629 = trunc i64 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %37, align 1, !tbaa !861
  %631 = icmp eq i64 %618, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %40, align 1, !tbaa !862
  %633 = lshr i64 %618, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %43, align 1, !tbaa !863
  %635 = lshr i64 %617, 63
  %636 = xor i64 %633, %635
  %637 = add nuw nsw i64 %636, %633
  %638 = icmp eq i64 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %49, align 1, !tbaa !864
  store i64 %618, i64* %13, align 8, !tbaa !844
  %640 = add i64 %614, 607
  %641 = add i64 %614, 23
  %642 = load i64, i64* %15, align 8, !tbaa !844
  %643 = add i64 %642, -8
  %644 = inttoptr i64 %643 to i64*
  store i64 %641, i64* %644
  store i64 %643, i64* %15, align 8, !tbaa !844
  store i64 %640, i64* %0, align 8, !tbaa !844
  %645 = tail call %struct.Memory* @sub_400a50_read_bytes(%struct.State* nonnull %state2, i64 %640, %struct.Memory* %MEMORY.7)
  %646 = load i64, i64* %16, align 8
  %647 = add i64 %646, -44
  %648 = load i32, i32* %9, align 4
  %649 = load i64, i64* %0, align 8
  %650 = inttoptr i64 %647 to i32*
  store i32 %648, i32* %650
  %651 = inttoptr i64 %647 to i32*
  %652 = load i32, i32* %651
  %653 = xor i32 %652, -1534560611
  %654 = add i64 %646, -48
  %655 = inttoptr i64 %654 to i32*
  store i32 %653, i32* %655
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656
  %658 = lshr i32 %657, 16
  %659 = add i64 %646, -52
  %660 = inttoptr i64 %659 to i32*
  store i32 %658, i32* %660
  %661 = inttoptr i64 %654 to i32*
  %662 = load i32, i32* %661
  %663 = and i32 %662, 65535
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %10, align 8, !tbaa !844
  %665 = add i64 %646, -56
  %666 = inttoptr i64 %665 to i32*
  store i32 %663, i32* %666
  %667 = inttoptr i64 %659 to i32*
  %668 = load i32, i32* %667
  %669 = add i32 %668, -79
  %670 = icmp ult i32 %668, 79
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %24, align 1, !tbaa !848
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672) #8
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %31, align 1, !tbaa !860
  %677 = xor i32 %669, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %37, align 1, !tbaa !861
  %681 = icmp eq i32 %669, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %40, align 1, !tbaa !862
  %683 = lshr i32 %669, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %43, align 1, !tbaa !863
  %685 = lshr i32 %668, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %49, align 1, !tbaa !864
  %.v63 = select i1 %681, i64 44, i64 68
  %690 = add i64 %649, %.v63
  store i64 %690, i64* %0, align 8, !tbaa !844
  %691 = load i64, i64* %16, align 8
  br i1 %681, label %block_400834, label %block_40084c

block_40092f:                                     ; preds = %block_400903
  store i64 %1201, i64* %10, align 8, !tbaa !844
  %692 = add i64 %1201, 29
  %693 = inttoptr i64 %692 to i8*
  %694 = load i8, i8* %693
  %695 = sext i8 %694 to i64
  %696 = and i64 %695, 4294967295
  store i64 %696, i64* %11, align 8, !tbaa !844
  %697 = sext i8 %694 to i32
  %698 = add nsw i32 %697, -100
  %699 = icmp ult i8 %694, 100
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %24, align 1, !tbaa !848
  %701 = and i32 %698, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701) #8
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %31, align 1, !tbaa !860
  %706 = xor i32 %698, %697
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %37, align 1, !tbaa !861
  %710 = icmp eq i32 %698, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %40, align 1, !tbaa !862
  %712 = lshr i32 %698, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %43, align 1, !tbaa !863
  %714 = lshr i32 %697, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %49, align 1, !tbaa !864
  %.v68 = select i1 %710, i64 17, i64 31
  %719 = add i64 %1229, %.v68
  store i64 %719, i64* %0, align 8, !tbaa !844
  br i1 %710, label %block_400940, label %block_40094e

block_400853:                                     ; preds = %block_400840, %block_40084c
  %720 = phi i64 [ %511, %block_40084c ], [ %804, %block_400840 ]
  %MEMORY.8 = phi %struct.Memory* [ %645, %block_40084c ], [ %645, %block_400840 ]
  store i64 8, i64* %12, align 8, !tbaa !844
  %721 = add i64 %691, -20
  %722 = inttoptr i64 %721 to i32*
  %723 = load i32, i32* %722
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %14, align 8, !tbaa !844
  %725 = add i64 %691, -16
  %726 = inttoptr i64 %725 to i64*
  %727 = load i64, i64* %726
  %728 = add i64 %727, 20
  store i64 %728, i64* %10, align 8, !tbaa !844
  %729 = icmp ugt i64 %727, -21
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %24, align 1, !tbaa !848
  %731 = trunc i64 %728 to i32
  %732 = and i32 %731, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732) #8
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %31, align 1, !tbaa !860
  %737 = xor i64 %727, 16
  %738 = xor i64 %737, %728
  %739 = lshr i64 %738, 4
  %740 = trunc i64 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %37, align 1, !tbaa !861
  %742 = icmp eq i64 %728, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %40, align 1, !tbaa !862
  %744 = lshr i64 %728, 63
  %745 = trunc i64 %744 to i8
  store i8 %745, i8* %43, align 1, !tbaa !863
  %746 = lshr i64 %727, 63
  %747 = xor i64 %744, %746
  %748 = add nuw nsw i64 %747, %744
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %49, align 1, !tbaa !864
  store i64 %728, i64* %13, align 8, !tbaa !844
  %751 = add i64 %720, 509
  %752 = add i64 %720, 24
  %753 = load i64, i64* %15, align 8, !tbaa !844
  %754 = add i64 %753, -8
  %755 = inttoptr i64 %754 to i64*
  store i64 %752, i64* %755
  store i64 %754, i64* %15, align 8, !tbaa !844
  store i64 %751, i64* %0, align 8, !tbaa !844
  %756 = tail call %struct.Memory* @sub_400a50_read_bytes(%struct.State* nonnull %state2, i64 %751, %struct.Memory* %MEMORY.8)
  %757 = load i64, i64* %16, align 8
  %758 = add i64 %757, -60
  %759 = load i32, i32* %9, align 4
  %760 = load i64, i64* %0, align 8
  %761 = inttoptr i64 %758 to i32*
  store i32 %759, i32* %761
  %762 = inttoptr i64 %758 to i32*
  %763 = load i32, i32* %762
  %764 = add i32 %763, -3
  %765 = inttoptr i64 %758 to i32*
  store i32 %764, i32* %765
  %766 = inttoptr i64 %758 to i32*
  %767 = load i32, i32* %766
  %768 = and i32 %767, 7
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %10, align 8, !tbaa !844
  %770 = icmp eq i32 %768, 0
  %771 = zext i1 %770 to i8
  store i8 0, i8* %24, align 1, !tbaa !848
  %772 = tail call i32 @llvm.ctpop.i32(i32 %768) #8
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %31, align 1, !tbaa !860
  store i8 0, i8* %37, align 1, !tbaa !861
  store i8 %771, i8* %40, align 1, !tbaa !862
  store i8 0, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v51 = select i1 %770, i64 39, i64 27
  %776 = add i64 %760, %.v51
  store i64 %776, i64* %0, align 8, !tbaa !844
  br i1 %770, label %block_400892, label %block_400886

block_4009c6:                                     ; preds = %block_40094e
  %777 = inttoptr i64 %1195 to i32*
  %778 = load i32, i32* %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %10, align 8, !tbaa !844
  %780 = add i64 %1194, -20
  %781 = add i64 %178, 6
  store i64 %781, i64* %0, align 8
  %782 = inttoptr i64 %780 to i32*
  store i32 %778, i32* %782
  br label %block_4009d1

block_4006ab:                                     ; preds = %block_400697
  store i64 %953, i64* %10, align 8, !tbaa !844
  %783 = and i64 %957, 240
  %784 = trunc i64 %783 to i32
  store i64 %783, i64* %11, align 8, !tbaa !844
  %785 = add nsw i32 %784, -48
  %786 = icmp ult i32 %784, 48
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %24, align 1, !tbaa !848
  %788 = and i32 %785, 240
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788) #8
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %31, align 1, !tbaa !860
  %793 = xor i32 %784, 16
  %794 = xor i32 %793, %785
  %795 = lshr exact i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %37, align 1, !tbaa !861
  %798 = icmp eq i32 %785, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %40, align 1, !tbaa !862
  %800 = lshr i32 %785, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v59 = select i1 %798, i64 23, i64 35
  %802 = add i64 %975, %.v59
  store i64 %802, i64* %0, align 8, !tbaa !844
  br i1 %798, label %block_4006c2, label %block_4006ce

block_400840:                                     ; preds = %block_400834
  %803 = inttoptr i64 %586 to i32*
  store i32 0, i32* %803
  %804 = add i64 %613, 19
  store i64 %804, i64* %0, align 8, !tbaa !844
  br label %block_400853

block_4008aa:                                     ; preds = %block_400892
  %805 = add i64 %757, -4
  %806 = inttoptr i64 %805 to i32*
  store i32 -22, i32* %806
  %807 = add i64 %1084, 301
  store i64 %807, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_400725:                                     ; preds = %block_40070a, %block_4006c2
  %808 = phi i64 [ %1119, %block_40070a ], [ %362, %block_4006c2 ]
  %809 = add i64 %363, -20
  %810 = inttoptr i64 %809 to i32*
  %811 = load i32, i32* %810
  %812 = add i32 %811, 5
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %10, align 8, !tbaa !844
  %814 = icmp ugt i32 %811, -6
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %24, align 1, !tbaa !848
  %816 = and i32 %812, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816) #8
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %31, align 1, !tbaa !860
  %821 = xor i32 %812, %811
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %37, align 1, !tbaa !861
  %825 = icmp eq i32 %812, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %40, align 1, !tbaa !862
  %827 = lshr i32 %812, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %43, align 1, !tbaa !863
  %829 = lshr i32 %811, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %827
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %49, align 1, !tbaa !864
  %834 = add i64 %808, 9
  store i64 %834, i64* %0, align 8
  %835 = inttoptr i64 %809 to i32*
  store i32 %812, i32* %835
  br label %block_400777

block_4009a4:                                     ; preds = %block_400966
  %836 = add i64 %1035, -16
  %837 = inttoptr i64 %836 to i64*
  %838 = load i64, i64* %837
  store i64 %838, i64* %10, align 8, !tbaa !844
  %839 = add i64 %838, 31
  %840 = inttoptr i64 %839 to i8*
  %841 = load i8, i8* %840
  %842 = zext i8 %841 to i64
  store i64 %842, i64* %14, align 8, !tbaa !844
  %843 = add i64 %1055, 60
  %844 = add i64 %1055, 13
  %845 = load i64, i64* %15, align 8, !tbaa !844
  %846 = add i64 %845, -8
  %847 = inttoptr i64 %846 to i64*
  store i64 %844, i64* %847
  store i64 %846, i64* %15, align 8, !tbaa !844
  store i64 %843, i64* %0, align 8, !tbaa !844
  %848 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %843, %struct.Memory* %1034)
  %849 = load i32, i32* %9, align 4
  %850 = load i64, i64* %0, align 8
  %851 = add i32 %849, -4
  %852 = icmp ult i32 %849, 4
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %24, align 1, !tbaa !848
  %854 = and i32 %851, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854) #8
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %31, align 1, !tbaa !860
  %859 = xor i32 %851, %849
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %37, align 1, !tbaa !861
  %863 = icmp eq i32 %851, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %40, align 1, !tbaa !862
  %865 = lshr i32 %851, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %43, align 1, !tbaa !863
  %867 = lshr i32 %849, 31
  %868 = xor i32 %865, %867
  %869 = add nuw nsw i32 %868, %867
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %49, align 1, !tbaa !864
  %.v67 = select i1 %863, i64 16, i64 9
  %872 = add i64 %850, %.v67
  store i64 %872, i64* %0, align 8, !tbaa !844
  %.pre38.pre = load i64, i64* %16, align 8
  br i1 %863, label %block_4009c1, label %block_4009ba

block_400940:                                     ; preds = %block_40092f
  %873 = inttoptr i64 %1195 to i32*
  %874 = load i32, i32* %873
  %875 = add i64 %1194, -20
  %876 = inttoptr i64 %875 to i32*
  %877 = load i32, i32* %876
  %878 = xor i32 %877, %874
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %10, align 8, !tbaa !844
  store i8 0, i8* %24, align 1, !tbaa !848
  %880 = and i32 %878, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880) #8
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %31, align 1, !tbaa !860
  %885 = icmp eq i32 %878, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %40, align 1, !tbaa !862
  %887 = lshr i32 %878, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  store i8 0, i8* %37, align 1, !tbaa !861
  %889 = add i64 %719, 9
  store i64 %889, i64* %0, align 8
  %890 = inttoptr i64 %875 to i32*
  store i32 %878, i32* %890
  br label %block_4009d1

block_400798:                                     ; preds = %block_400782
  store i64 0, i64* %14, align 8, !tbaa !844
  store i64 4, i64* %12, align 8, !tbaa !844
  %891 = add i64 %401, -16
  %892 = inttoptr i64 %891 to i64*
  %893 = load i64, i64* %892
  %894 = add i64 %893, 8
  store i64 %894, i64* %10, align 8, !tbaa !844
  %895 = icmp ugt i64 %893, -9
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %24, align 1, !tbaa !848
  %897 = trunc i64 %894 to i32
  %898 = and i32 %897, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898) #8
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %31, align 1, !tbaa !860
  %903 = xor i64 %894, %893
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %37, align 1, !tbaa !861
  %907 = icmp eq i64 %894, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %40, align 1, !tbaa !862
  %909 = lshr i64 %894, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %43, align 1, !tbaa !863
  %911 = lshr i64 %893, 63
  %912 = xor i64 %909, %911
  %913 = add nuw nsw i64 %912, %909
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %49, align 1, !tbaa !864
  store i64 %894, i64* %13, align 8, !tbaa !844
  %916 = add i64 %1246, 696
  %917 = add i64 %1246, 23
  %918 = load i64, i64* %15, align 8, !tbaa !844
  %919 = add i64 %918, -8
  %920 = inttoptr i64 %919 to i64*
  store i64 %917, i64* %920
  store i64 %919, i64* %15, align 8, !tbaa !844
  store i64 %916, i64* %0, align 8, !tbaa !844
  %921 = tail call %struct.Memory* @sub_400a50_read_bytes(%struct.State* nonnull %state2, i64 %916, %struct.Memory* %400)
  %922 = load i16, i16* %7, align 2
  %923 = load i64, i64* %0, align 8
  store i16 %922, i16* %8, align 2, !tbaa !866
  %924 = load i64, i64* %16, align 8
  %925 = add i64 %924, -38
  %926 = inttoptr i64 %925 to i16*
  store i16 %922, i16* %926
  %927 = inttoptr i64 %925 to i16*
  %928 = load i16, i16* %927
  %929 = zext i16 %928 to i64
  %930 = or i64 %929, 21845
  %931 = trunc i64 %930 to i32
  store i64 %930, i64* %10, align 8, !tbaa !844
  %932 = add nsw i32 %931, -56663
  %933 = icmp ult i32 %931, 56663
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %24, align 1, !tbaa !848
  %935 = and i32 %932, 254
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935) #8
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %31, align 1, !tbaa !860
  %940 = lshr i32 %932, 4
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %37, align 1, !tbaa !861
  %943 = icmp eq i32 %932, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %40, align 1, !tbaa !862
  %945 = lshr i32 %932, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v62 = select i1 %943, i64 27, i64 59
  %947 = add i64 %923, %.v62
  store i64 %947, i64* %0, align 8, !tbaa !844
  br i1 %943, label %block_4007ca, label %block_4007ea

block_40062d:                                     ; preds = %block_400617
  %948 = add i64 %213, -4
  %949 = inttoptr i64 %948 to i32*
  store i32 -3, i32* %949
  %950 = add i64 %212, 938
  store i64 %950, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_400697:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %951 = add i64 %284, -16
  %952 = inttoptr i64 %951 to i64*
  %953 = load i64, i64* %952
  store i64 %953, i64* %10, align 8, !tbaa !844
  %954 = add i64 %953, 4
  %955 = inttoptr i64 %954 to i8*
  %956 = load i8, i8* %955
  %957 = sext i8 %956 to i64
  %958 = and i64 %957, 15
  %959 = trunc i64 %958 to i32
  store i64 %958, i64* %11, align 8, !tbaa !844
  %960 = icmp eq i32 %959, 0
  %961 = zext i1 %960 to i8
  %962 = add nsw i32 %959, -1
  store i8 %961, i8* %24, align 1, !tbaa !848
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963) #8
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %31, align 1, !tbaa !860
  %968 = lshr i32 %962, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %37, align 1, !tbaa !861
  %971 = icmp eq i32 %962, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %40, align 1, !tbaa !862
  %973 = lshr i32 %962, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v58 = select i1 %971, i64 20, i64 55
  %975 = add i64 %309, %.v58
  store i64 %975, i64* %0, align 8, !tbaa !844
  br i1 %971, label %block_4006ab, label %block_4006ce

block_400966:                                     ; preds = %block_40094e
  %976 = add i64 %1201, 31
  %977 = inttoptr i64 %976 to i8*
  %978 = load i8, i8* %977
  %979 = add i64 %1201, 30
  %980 = inttoptr i64 %979 to i8*
  %981 = load i8, i8* %980
  %982 = sext i8 %981 to i64
  %983 = and i64 %982, 4294967295
  store i64 %983, i64* %13, align 8, !tbaa !844
  %984 = sext i8 %981 to i32
  %985 = sext i8 %978 to i32
  %986 = sub nsw i32 %985, %984
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %12, align 8, !tbaa !844
  %988 = sub nsw i32 15, %986
  %989 = lshr i32 %988, 31
  %990 = add i64 %1194, -20
  %991 = inttoptr i64 %990 to i32*
  %992 = load i32, i32* %991
  %993 = add i32 %992, %988
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %10, align 8, !tbaa !844
  %995 = icmp ult i32 %993, %988
  %996 = icmp ult i32 %993, %992
  %997 = or i1 %995, %996
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %24, align 1, !tbaa !848
  %999 = and i32 %993, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999) #8
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %31, align 1, !tbaa !860
  %1004 = xor i32 %992, %988
  %1005 = xor i32 %1004, %993
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %37, align 1, !tbaa !861
  %1009 = icmp eq i32 %993, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %40, align 1, !tbaa !862
  %1011 = lshr i32 %993, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %43, align 1, !tbaa !863
  %1013 = lshr i32 %992, 31
  %1014 = xor i32 %1011, %989
  %1015 = xor i32 %1011, %1013
  %1016 = add nuw nsw i32 %1014, %1015
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %49, align 1, !tbaa !864
  %1019 = load i64, i64* %16, align 8
  %1020 = add i64 %1019, -20
  %1021 = inttoptr i64 %1020 to i32*
  store i32 %993, i32* %1021
  %1022 = add i64 %1019, -16
  %1023 = inttoptr i64 %1022 to i64*
  %1024 = load i64, i64* %1023
  store i64 %1024, i64* %11, align 8, !tbaa !844
  %1025 = add i64 %1024, 28
  %1026 = inttoptr i64 %1025 to i8*
  %1027 = load i8, i8* %1026
  %1028 = zext i8 %1027 to i64
  store i64 %1028, i64* %14, align 8, !tbaa !844
  %1029 = add i64 %178, 122
  %1030 = add i64 %178, 44
  %1031 = load i64, i64* %15, align 8, !tbaa !844
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033
  store i64 %1032, i64* %15, align 8, !tbaa !844
  store i64 %1029, i64* %0, align 8, !tbaa !844
  %1034 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %1029, %struct.Memory* %1193)
  %1035 = load i64, i64* %16, align 8
  %1036 = add i64 %1035, -20
  %1037 = load i64, i64* %0, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038
  %1040 = load i32, i32* %9, align 4
  %1041 = sub i32 %1039, %1040
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %12, align 8, !tbaa !844
  %1043 = inttoptr i64 %1036 to i32*
  store i32 %1041, i32* %1043
  %1044 = inttoptr i64 %1036 to i32*
  %1045 = load i32, i32* %1044
  store i8 0, i8* %24, align 1, !tbaa !848
  %1046 = and i32 %1045, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046) #8
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %31, align 1, !tbaa !860
  store i8 0, i8* %37, align 1, !tbaa !861
  %1051 = icmp eq i32 %1045, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %40, align 1, !tbaa !862
  %1053 = lshr i32 %1045, 31
  %1054 = trunc i32 %1053 to i8
  store i8 %1054, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v66 = select i1 %1051, i64 18, i64 47
  %1055 = add i64 %1037, %.v66
  store i64 %1055, i64* %0, align 8, !tbaa !844
  br i1 %1051, label %block_4009a4, label %block_4009c1

block_400892:                                     ; preds = %block_400853
  %1056 = xor i32 %767, -2147483648
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %10, align 8, !tbaa !844
  %1058 = inttoptr i64 %758 to i32*
  store i32 %1056, i32* %1058
  %1059 = inttoptr i64 %758 to i32*
  %1060 = load i32, i32* %1059
  %1061 = add i32 %1060, -268435455
  %1062 = icmp ult i32 %1060, 268435455
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %24, align 1, !tbaa !848
  %1064 = and i32 %1061, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064) #8
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %31, align 1, !tbaa !860
  %1069 = xor i32 %1060, 16
  %1070 = xor i32 %1069, %1061
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %37, align 1, !tbaa !861
  %1074 = icmp eq i32 %1061, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %40, align 1, !tbaa !862
  %1076 = lshr i32 %1061, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %43, align 1, !tbaa !863
  %1078 = lshr i32 %1060, 31
  %1079 = xor i32 %1076, %1078
  %1080 = add nuw nsw i32 %1079, %1078
  %1081 = icmp eq i32 %1080, 2
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %49, align 1, !tbaa !864
  %1083 = or i1 %1074, %1062
  %.v52 = select i1 %1083, i64 36, i64 24
  %1084 = add i64 %776, %.v52
  store i64 %1084, i64* %0, align 8, !tbaa !844
  br i1 %1083, label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, label %block_4008aa

block_4005e4:                                     ; preds = %block_4005c0
  %1085 = zext i32 %67 to i64
  store i64 %1085, i64* %10, align 8, !tbaa !844
  %1086 = add i64 %63, -4
  %1087 = inttoptr i64 %1086 to i32*
  store i32 %67, i32* %1087
  %1088 = add i64 %89, 1011
  store i64 %1088, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_40078c:                                     ; preds = %block_400782
  %1089 = add i64 %401, -4
  %1090 = inttoptr i64 %1089 to i32*
  store i32 -7, i32* %1090
  %1091 = add i64 %1246, 587
  store i64 %1091, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_40068b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1092 = add i64 %284, -4
  %1093 = inttoptr i64 %1092 to i32*
  store i32 -5, i32* %1093
  %1094 = add i64 %309, 844
  store i64 %1094, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_4007de:                                     ; preds = %block_4007ca
  %1095 = add i64 %924, -20
  %1096 = inttoptr i64 %1095 to i32*
  store i32 43690, i32* %1096
  %1097 = add i64 %581, 19
  store i64 %1097, i64* %0, align 8, !tbaa !844
  br label %block_4007f1

block_40070a:                                     ; preds = %block_4006c2
  %1098 = add i64 %363, -34
  %1099 = inttoptr i64 %1098 to i8*
  %1100 = load i8, i8* %1099
  %1101 = zext i8 %1100 to i64
  store i64 %1101, i64* %10, align 8, !tbaa !844
  %1102 = zext i8 %1100 to i32
  %1103 = add nsw i32 %1102, -96
  %1104 = icmp ult i8 %1100, 96
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %24, align 1, !tbaa !848
  %1106 = and i32 %1103, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106) #8
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %31, align 1, !tbaa !860
  %1111 = xor i32 %1103, %1102
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %37, align 1, !tbaa !861
  %1115 = icmp eq i32 %1103, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %40, align 1, !tbaa !862
  %1117 = lshr i32 %1103, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v71 = select i1 %1115, i64 13, i64 27
  %1119 = add i64 %362, %.v71
  store i64 %1119, i64* %0, align 8, !tbaa !844
  br i1 %1115, label %block_400717, label %block_400725

block_400886:                                     ; preds = %block_400853
  %1120 = add i64 %757, -4
  %1121 = inttoptr i64 %1120 to i32*
  store i32 -21, i32* %1121
  %1122 = add i64 %776, 337
  store i64 %1122, i64* %0, align 8, !tbaa !844
  br label %block_4009d7

block_4009d7:                                     ; preds = %block_400886, %block_40068b, %block_40078c, %block_4005e4, %block_40062d, %block_4008aa, %block_400658, %block_40060b, %block_4008f8, %block_4006ce, %block_4009d1
  %1123 = phi i64 [ %284, %block_4006ce ], [ %214, %block_4009d1 ], [ %523, %block_4008f8 ], [ %757, %block_4008aa ], [ %757, %block_400886 ], [ %401, %block_40078c ], [ %284, %block_40068b ], [ %476, %block_400658 ], [ %213, %block_40062d ], [ %63, %block_40060b ], [ %63, %block_4005e4 ]
  %MEMORY.11 = phi %struct.Memory* [ %287, %block_4006ce ], [ %.sink, %block_4009d1 ], [ %756, %block_4008f8 ], [ %756, %block_4008aa ], [ %756, %block_400886 ], [ %400, %block_40078c ], [ %287, %block_40068b ], [ %475, %block_400658 ], [ %188, %block_40062d ], [ %59, %block_40060b ], [ %59, %block_4005e4 ]
  %1124 = add i64 %1123, -4
  %1125 = inttoptr i64 %1124 to i32*
  %1126 = load i32, i32* %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %10, align 8, !tbaa !844
  %1128 = load i64, i64* %15, align 8
  %1129 = add i64 %1128, 80
  %1130 = icmp ugt i64 %1128, -81
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %24, align 1, !tbaa !848
  %1132 = trunc i64 %1129 to i32
  %1133 = and i32 %1132, 255
  %1134 = tail call i32 @llvm.ctpop.i32(i32 %1133) #8
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  store i8 %1137, i8* %31, align 1, !tbaa !860
  %1138 = xor i64 %1128, 16
  %1139 = xor i64 %1138, %1129
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %37, align 1, !tbaa !861
  %1143 = icmp eq i64 %1129, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %40, align 1, !tbaa !862
  %1145 = lshr i64 %1129, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %43, align 1, !tbaa !863
  %1147 = lshr i64 %1128, 63
  %1148 = xor i64 %1145, %1147
  %1149 = add nuw nsw i64 %1148, %1145
  %1150 = icmp eq i64 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %49, align 1, !tbaa !864
  %1152 = add i64 %1128, 88
  %1153 = inttoptr i64 %1129 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %16, align 8, !tbaa !844
  %1155 = inttoptr i64 %1152 to i64*
  %1156 = load i64, i64* %1155
  store i64 %1156, i64* %0, align 8, !tbaa !844
  %1157 = add i64 %1128, 96
  store i64 %1157, i64* %15, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.11

block_400903:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 4, i64* %12, align 8, !tbaa !844
  %1158 = add i64 %523, -20
  %1159 = inttoptr i64 %1158 to i32*
  %1160 = load i32, i32* %1159
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %14, align 8, !tbaa !844
  %1162 = add i64 %523, -16
  %1163 = inttoptr i64 %1162 to i64*
  %1164 = load i64, i64* %1163
  %1165 = add i64 %1164, 28
  store i64 %1165, i64* %10, align 8, !tbaa !844
  %1166 = icmp ugt i64 %1164, -29
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %24, align 1, !tbaa !848
  %1168 = trunc i64 %1165 to i32
  %1169 = and i32 %1168, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169) #8
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %31, align 1, !tbaa !860
  %1174 = xor i64 %1164, 16
  %1175 = xor i64 %1174, %1165
  %1176 = lshr i64 %1175, 4
  %1177 = trunc i64 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %37, align 1, !tbaa !861
  %1179 = icmp eq i64 %1165, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %40, align 1, !tbaa !862
  %1181 = lshr i64 %1165, 63
  %1182 = trunc i64 %1181 to i8
  store i8 %1182, i8* %43, align 1, !tbaa !863
  %1183 = lshr i64 %1164, 63
  %1184 = xor i64 %1181, %1183
  %1185 = add nuw nsw i64 %1184, %1181
  %1186 = icmp eq i64 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %49, align 1, !tbaa !864
  store i64 %1165, i64* %13, align 8, !tbaa !844
  %1188 = add i64 %561, 333
  %1189 = add i64 %561, 24
  %1190 = load i64, i64* %15, align 8, !tbaa !844
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1189, i64* %1192
  store i64 %1191, i64* %15, align 8, !tbaa !844
  store i64 %1188, i64* %0, align 8, !tbaa !844
  %1193 = tail call %struct.Memory* @sub_400a50_read_bytes(%struct.State* nonnull %state2, i64 %1188, %struct.Memory* %756)
  %1194 = load i64, i64* %16, align 8
  %1195 = add i64 %1194, -64
  %1196 = load i32, i32* %9, align 4
  %1197 = load i64, i64* %0, align 8
  %1198 = inttoptr i64 %1195 to i32*
  store i32 %1196, i32* %1198
  %1199 = add i64 %1194, -16
  %1200 = inttoptr i64 %1199 to i64*
  %1201 = load i64, i64* %1200
  store i64 %1201, i64* %13, align 8, !tbaa !844
  %1202 = add i64 %1201, 28
  %1203 = inttoptr i64 %1202 to i8*
  %1204 = load i8, i8* %1203
  %1205 = sext i8 %1204 to i64
  %1206 = and i64 %1205, 4294967295
  store i64 %1206, i64* %10, align 8, !tbaa !844
  %1207 = sext i8 %1204 to i32
  %1208 = add nsw i32 %1207, -100
  %1209 = icmp ult i8 %1204, 100
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %24, align 1, !tbaa !848
  %1211 = and i32 %1208, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211) #8
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %31, align 1, !tbaa !860
  %1216 = xor i32 %1208, %1207
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %37, align 1, !tbaa !861
  %1220 = icmp eq i32 %1208, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %40, align 1, !tbaa !862
  %1222 = lshr i32 %1208, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %43, align 1, !tbaa !863
  %1224 = lshr i32 %1207, 31
  %1225 = xor i32 %1222, %1224
  %1226 = add nuw nsw i32 %1225, %1224
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %49, align 1, !tbaa !864
  %.v65 = select i1 %1220, i64 20, i64 51
  %1229 = add i64 %1197, %.v65
  store i64 %1229, i64* %0, align 8, !tbaa !844
  br i1 %1220, label %block_40092f, label %block_400903.block_40094e_crit_edge

block_400903.block_40094e_crit_edge:              ; preds = %block_400903
  %.pre40 = add i64 %1201, 29
  %1230 = inttoptr i64 %.pre40 to i8*
  %1231 = load i8, i8* %1230
  %.pre43 = sext i8 %1231 to i64
  %.pre45 = and i64 %.pre43, 4294967295
  %.pre47 = sext i8 %1231 to i32
  %.pre49 = lshr i32 %.pre47, 31
  br label %block_40094e

block_400782:                                     ; preds = %447, %block_400777
  %1232 = phi i32 [ %428, %block_400777 ], [ %450, %447 ]
  %1233 = add i64 %403, 53
  %1234 = inttoptr i64 %426 to i32*
  store i32 %1232, i32* %1234
  %1235 = inttoptr i64 %426 to i32*
  %1236 = load i32, i32* %1235
  store i8 0, i8* %24, align 1, !tbaa !848
  %1237 = and i32 %1236, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237) #8
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %31, align 1, !tbaa !860
  store i8 0, i8* %37, align 1, !tbaa !861
  %1242 = icmp eq i32 %1236, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %40, align 1, !tbaa !862
  %1244 = lshr i32 %1236, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %43, align 1, !tbaa !863
  store i8 0, i8* %49, align 1, !tbaa !864
  %.v61 = select i1 %1242, i64 22, i64 10
  %1246 = add i64 %1233, %.v61
  store i64 %1246, i64* %0, align 8, !tbaa !844
  br i1 %1242, label %block_400798, label %block_40078c
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400468__init_proc(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400468:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #8
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !860
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !862
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !863
  store i8 0, i8* %10, align 1, !tbaa !864
  store i8 0, i8* %7, align 1, !tbaa !861
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %pc
  store i64 %22, i64* %0, align 8, !tbaa !844
  br i1 %18, label %block_40047a, label %block_400478

block_40047a:                                     ; preds = %block_400478, %block_400468
  %23 = phi i64 [ %4, %block_400468 ], [ %.pre, %block_400478 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400468 ], [ %52, %block_400478 ]
  %24 = add i64 %23, 8
  %25 = icmp ugt i64 %23, -9
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %5, align 1, !tbaa !848
  %27 = trunc i64 %24 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #8
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  store i8 %32, i8* %6, align 1, !tbaa !860
  %33 = xor i64 %24, %23
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %7, align 1, !tbaa !861
  %37 = icmp eq i64 %24, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %8, align 1, !tbaa !862
  %39 = lshr i64 %24, 63
  %40 = trunc i64 %39 to i8
  store i8 %40, i8* %9, align 1, !tbaa !863
  %41 = lshr i64 %23, 63
  %42 = xor i64 %39, %41
  %43 = add nuw nsw i64 %42, %39
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %10, align 1, !tbaa !864
  %46 = inttoptr i64 %24 to i64*
  %47 = load i64, i64* %46
  store i64 %47, i64* %0, align 8, !tbaa !844
  %48 = add i64 %23, 16
  store i64 %48, i64* %2, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_400478:                                     ; preds = %block_400468
  %49 = add i64 %22, 2
  %50 = add i64 %3, -16
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %2, align 8, !tbaa !844
  store i64 %11, i64* %0, align 8, !tbaa !844
  %52 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %state2, i64 %11, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_40047a
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400a50_read_bytes(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400a50:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %4 = bitcast %union.Flags* %3 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %10, align 8, !tbaa !844
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15
  store i64 %14, i64* %11, align 8, !tbaa !844
  %16 = add i64 %13, -40
  store i64 %16, i64* %10, align 8, !tbaa !844
  %17 = icmp ult i64 %14, 32
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1, !tbaa !848
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #8
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1, !tbaa !860
  %27 = xor i64 %14, %16
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !861
  %32 = icmp eq i64 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !862
  %35 = lshr i64 %16, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !863
  %38 = lshr i64 %14, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !864
  %44 = add i64 %13, -12
  %45 = load i32, i32* %4, align 4
  %46 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %46
  %47 = add i64 %13, -24
  %48 = load i64, i64* %8, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %49
  %50 = add i64 %13, -28
  %51 = load i32, i32* %2, align 4
  %52 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %52
  %53 = add i64 %13, -32
  %54 = add i64 %pc, 25
  store i64 %54, i64* %0, align 8
  %55 = inttoptr i64 %53 to i32*
  store i32 0, i32* %55
  br label %block_400a69

block_400a75:                                     ; preds = %block_400a69
  %56 = icmp ne i8 0, 0
  %57 = shl i32 %194, 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %5, align 8, !tbaa !844
  %59 = lshr i32 %194, 28
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %19, align 1, !tbaa !865
  %62 = and i32 %57, 240
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #8
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %26, align 1, !tbaa !865
  store i8 0, i8* %31, align 1, !tbaa !865
  %67 = icmp eq i32 %57, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %34, align 1, !tbaa !865
  %69 = lshr i32 %194, 27
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %37, align 1, !tbaa !865
  %72 = zext i1 %56 to i8
  store i8 %72, i8* %43, align 1, !tbaa !865
  %73 = inttoptr i64 %191 to i32*
  store i32 %57, i32* %73
  %74 = add i64 %157, -16
  %75 = inttoptr i64 %74 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %6, align 8, !tbaa !844
  %77 = inttoptr i64 %158 to i32*
  %78 = load i32, i32* %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %7, align 8, !tbaa !844
  %80 = add i64 %76, %79
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8, i8* %81
  %83 = zext i8 %82 to i64
  store i64 %83, i64* %9, align 8, !tbaa !844
  %84 = add i64 %190, -149
  %85 = add i64 %190, 26
  %86 = load i64, i64* %10, align 8, !tbaa !844
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %85, i64* %88
  store i64 %87, i64* %10, align 8, !tbaa !844
  store i64 %84, i64* %0, align 8, !tbaa !844
  %89 = tail call %struct.Memory* @sub_4009e0_to_byte(%struct.State* nonnull %state2, i64 %84, %struct.Memory* %MEMORY.0)
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, -4
  %93 = load i64, i64* %0, align 8
  %94 = trunc i64 %90 to i32
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95
  %97 = or i32 %96, %94
  %98 = inttoptr i64 %92 to i32*
  store i32 %97, i32* %98
  %99 = add i64 %91, -24
  %100 = inttoptr i64 %99 to i32*
  %101 = load i32, i32* %100
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %5, align 8, !tbaa !844
  %104 = icmp eq i32 %101, -1
  %105 = icmp eq i32 %102, 0
  %106 = or i1 %104, %105
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %19, align 1, !tbaa !848
  %108 = and i32 %102, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %26, align 1, !tbaa !860
  %113 = xor i32 %102, %101
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %31, align 1, !tbaa !861
  %117 = zext i1 %105 to i8
  store i8 %117, i8* %34, align 1, !tbaa !862
  %118 = lshr i32 %102, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %37, align 1, !tbaa !863
  %120 = lshr i32 %101, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %43, align 1, !tbaa !864
  %125 = inttoptr i64 %99 to i32*
  store i32 %102, i32* %125
  %126 = add i64 %93, -38
  store i64 %126, i64* %0, align 8, !tbaa !844
  br label %block_400a69

block_400aa3:                                     ; preds = %block_400a69
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 32
  %129 = icmp ugt i64 %127, -33
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %19, align 1, !tbaa !848
  %131 = trunc i64 %128 to i32
  %132 = and i32 %131, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132) #8
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %26, align 1, !tbaa !860
  %137 = xor i64 %128, %127
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %31, align 1, !tbaa !861
  %141 = icmp eq i64 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %34, align 1, !tbaa !862
  %143 = lshr i64 %128, 63
  %144 = trunc i64 %143 to i8
  store i8 %144, i8* %37, align 1, !tbaa !863
  %145 = lshr i64 %127, 63
  %146 = xor i64 %143, %145
  %147 = add nuw nsw i64 %146, %143
  %148 = icmp eq i64 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %43, align 1, !tbaa !864
  %150 = add i64 %127, 40
  %151 = inttoptr i64 %128 to i64*
  %152 = load i64, i64* %151
  store i64 %152, i64* %11, align 8, !tbaa !844
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153
  store i64 %154, i64* %0, align 8, !tbaa !844
  %155 = add i64 %127, 48
  store i64 %155, i64* %10, align 8, !tbaa !844
  ret %struct.Memory* %MEMORY.0

block_400a69:                                     ; preds = %block_400a75, %block_400a50
  %156 = phi i64 [ %54, %block_400a50 ], [ %126, %block_400a75 ]
  %157 = phi i64 [ %14, %block_400a50 ], [ %91, %block_400a75 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400a50 ], [ %89, %block_400a75 ]
  %158 = add i64 %157, -24
  %159 = inttoptr i64 %158 to i32*
  %160 = load i32, i32* %159
  %161 = add i64 %157, -20
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %162
  %164 = sub i32 %160, %163
  %165 = icmp ult i32 %160, %163
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %19, align 1, !tbaa !848
  %167 = and i32 %164, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167) #8
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %26, align 1, !tbaa !860
  %172 = xor i32 %163, %160
  %173 = xor i32 %172, %164
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %31, align 1, !tbaa !861
  %177 = icmp eq i32 %164, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %34, align 1, !tbaa !862
  %179 = lshr i32 %164, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %37, align 1, !tbaa !863
  %181 = lshr i32 %160, 31
  %182 = lshr i32 %163, 31
  %183 = xor i32 %182, %181
  %184 = xor i32 %179, %181
  %185 = add nuw nsw i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %43, align 1, !tbaa !864
  %188 = icmp ne i8 %180, 0
  %189 = xor i1 %188, %186
  %.v = select i1 %189, i64 12, i64 58
  %190 = add i64 %156, %.v
  %191 = add i64 %157, -4
  %192 = add i64 %190, 3
  store i64 %192, i64* %0, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %5, align 8, !tbaa !844
  br i1 %189, label %block_400a75, label %block_400aa3
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400bd4__term_proc(%struct.State* nocapture dereferenceable(2688) %state2, i64 %pc, %struct.Memory* returned %memory1) #4 {
block_400bd4:
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
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #8
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %5, align 1, !tbaa !860
  store i8 %9, i8* %10, align 1, !tbaa !861
  %28 = icmp eq i64 %2, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %11, align 1, !tbaa !862
  %30 = trunc i64 %14 to i8
  store i8 %30, i8* %13, align 1, !tbaa !863
  store i8 %18, i8* %19, align 1, !tbaa !864
  %31 = inttoptr i64 %2 to i64*
  %32 = load i64, i64* %31
  store i64 %32, i64* %0, align 8, !tbaa !844
  %33 = add i64 %2, 8
  store i64 %33, i64* %1, align 8, !tbaa !844
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: norecurse nounwind readnone
define internal void @__mcsema_constructor() #5 {
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601078_printf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601088_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601070_strlen(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ab0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400bd4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @read_bytes() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @to_byte() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400468;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @keycomp() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @0) #8
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone }
attributes #6 = { noinline nounwind }
attributes #7 = { naked nobuiltin noinline nounwind }
attributes #8 = { nounwind }
attributes #9 = { alwaysinline nobuiltin nounwind }

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
!861 = !{!849, !846, i64 2069}
!862 = !{!849, !846, i64 2071}
!863 = !{!849, !846, i64 2073}
!864 = !{!849, !846, i64 2077}
!865 = !{!846, !846, i64 0}
!866 = !{!853, !853, i64 0}
