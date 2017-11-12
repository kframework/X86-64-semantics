; ModuleID = 'Output/test_26.clang.lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_4007f0__rodata_type = type <{ [8 x i8] }>
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

@seg_4007f0__rodata = internal constant %seg_4007f0__rodata_type <{ [8 x i8] c"\01\00\02\00%d\0A\00" }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), [8 x i8] c"p\10`\00\00\00\00\00" }>
@__bss_start = dllexport local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal constant void ()* @__mcsema_attach_call
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400660_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4007e4__term_proc
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4003f0__init_proc
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400540_update

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(2688), i64, %struct.Memory*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400660_main(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400660:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = bitcast %union.Flags* %1 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.Flags* %4 to i32*
  %6 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %8 = getelementptr inbounds %union.Flags, %union.Flags* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %11, align 8, !tbaa !844
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17
  store i64 %16, i64* %12, align 8, !tbaa !844
  %18 = add i64 %15, -152
  %19 = icmp ult i64 %16, 144
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1, !tbaa !848
  %22 = trunc i64 %18 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #6
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1, !tbaa !860
  %29 = xor i64 %16, 16
  %30 = xor i64 %29, %18
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1, !tbaa !861
  %35 = icmp eq i64 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1, !tbaa !862
  %38 = lshr i64 %18, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1, !tbaa !863
  %41 = lshr i64 %16, 63
  %42 = xor i64 %38, %41
  %43 = add nuw nsw i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1, !tbaa !864
  %47 = add i64 %15, -12
  %48 = inttoptr i64 %47 to i32*
  store i32 0, i32* %48
  %49 = add i64 %15, -24
  %50 = inttoptr i64 %49 to i32*
  store i32 10, i32* %50
  %51 = add i64 %15, -20
  %52 = inttoptr i64 %51 to i32*
  store i32 10, i32* %52
  %53 = add i64 %15, -16
  %54 = inttoptr i64 %53 to i32*
  store i32 10, i32* %54
  store i64 24, i64* %6, align 8, !tbaa !844
  store i64 24, i64* %7, align 8, !tbaa !844
  %55 = add i64 %15, -96
  %56 = inttoptr i64 %55 to i64*
  store i64 add (i64 ptrtoint (%seg_4007f0__rodata_type* @seg_4007f0__rodata to i64), i64 4), i64* %56
  store i64 24, i64* %10, align 8, !tbaa !844
  %57 = add i64 %pc, -560
  %58 = add i64 %pc, 68
  %59 = add i64 %15, -160
  %60 = inttoptr i64 %59 to i64*
  store i64 %58, i64* %60
  store i64 %59, i64* %11, align 8, !tbaa !844
  store i64 %57, i64* %0, align 8, !tbaa !844
  %61 = tail call fastcc %struct.Memory* @ext_601068_malloc(%struct.State* nonnull %state2, %struct.Memory* %memory1) #6
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, -24
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %0, align 8
  %66 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %66
  %67 = inttoptr i64 %63 to i64*
  %68 = load i64, i64* %67
  %69 = inttoptr i64 %68 to i32*
  store i32 5, i32* %69
  %70 = inttoptr i64 %63 to i64*
  %71 = load i64, i64* %70
  %72 = add i64 %71, 4
  %73 = inttoptr i64 %72 to i32*
  store i32 5, i32* %73
  %74 = inttoptr i64 %63 to i64*
  %75 = load i64, i64* %74
  %76 = add i64 %75, 8
  %77 = inttoptr i64 %76 to i32*
  store i32 5, i32* %77
  %78 = inttoptr i64 %63 to i64*
  %79 = load i64, i64* %78
  store i64 %79, i64* %6, align 8, !tbaa !844
  %80 = add i64 %62, -8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %81
  %83 = add i64 %62, -48
  %84 = inttoptr i64 %83 to i32*
  store i32 %82, i32* %84
  %85 = add i64 %62, -16
  %86 = inttoptr i64 %85 to i64*
  %87 = load i64, i64* %86
  %88 = add i64 %62, -56
  %89 = inttoptr i64 %88 to i64*
  store i64 %87, i64* %89
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %10, align 8, !tbaa !844
  %92 = inttoptr i64 %83 to i32*
  %93 = load i32, i32* %92
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %9, align 8, !tbaa !844
  %95 = inttoptr i64 %80 to i32*
  %96 = load i32, i32* %95
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 16
  %99 = inttoptr i64 %98 to i32*
  store i32 %96, i32* %99
  %100 = inttoptr i64 %85 to i64*
  %101 = load i64, i64* %100
  %102 = add i64 %97, 8
  %103 = inttoptr i64 %102 to i64*
  store i64 %101, i64* %103
  %104 = add i64 %97, 32
  %105 = inttoptr i64 %104 to i64*
  store i64 %79, i64* %105
  %106 = add i64 %97, 24
  %107 = inttoptr i64 %106 to i64*
  store i64 %85, i64* %107
  %108 = inttoptr i64 %97 to i32*
  store i32 3, i32* %108
  %109 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 2, i64* %109, align 8, !tbaa !844
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, -92
  %112 = inttoptr i64 %111 to i32*
  store i32 1, i32* %112
  store i64 %85, i64* %8, align 8, !tbaa !844
  store i64 %79, i64* %7, align 8, !tbaa !844
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %13, align 8, !tbaa !844
  %116 = add i64 %65, -356
  %117 = add i64 %65, 125
  %118 = add i64 %97, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %117, i64* %119
  store i64 %118, i64* %11, align 8, !tbaa !844
  store i64 %116, i64* %0, align 8, !tbaa !844
  %120 = tail call %struct.Memory* @sub_400540_update(%struct.State* nonnull %state2, i64 %116, %struct.Memory* %61)
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, -64
  %123 = load i32, i32* %5, align 4
  %124 = load i64, i64* %0, align 8
  %125 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %125
  %126 = add i64 %121, -72
  %127 = load i64, i64* %6, align 8
  %128 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %128
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %6, align 8, !tbaa !844
  %131 = add i64 %121, -40
  %132 = inttoptr i64 %131 to i64*
  store i64 %130, i64* %132
  %133 = inttoptr i64 %122 to i32*
  %134 = load i32, i32* %133
  %135 = add i64 %121, -32
  %136 = inttoptr i64 %135 to i32*
  store i32 %134, i32* %136
  %137 = inttoptr i64 %131 to i32*
  %138 = load i32, i32* %137
  %139 = add i64 %121, -36
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* %140
  %142 = add i32 %141, %138
  %143 = lshr i32 %142, 31
  %144 = inttoptr i64 %135 to i32*
  %145 = load i32, i32* %144
  %146 = add i32 %145, %142
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %8, align 8, !tbaa !844
  %148 = icmp ult i32 %146, %142
  %149 = icmp ult i32 %146, %145
  %150 = or i1 %148, %149
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %21, align 1, !tbaa !848
  %152 = and i32 %146, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #6
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %28, align 1, !tbaa !860
  %157 = xor i32 %145, %142
  %158 = xor i32 %157, %146
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %34, align 1, !tbaa !861
  %162 = icmp eq i32 %146, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %37, align 1, !tbaa !862
  %164 = lshr i32 %146, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %40, align 1, !tbaa !863
  %166 = lshr i32 %145, 31
  %167 = xor i32 %164, %143
  %168 = xor i32 %164, %166
  %169 = add nuw nsw i32 %167, %168
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %46, align 1, !tbaa !864
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %172, -76
  %174 = inttoptr i64 %173 to i32*
  store i32 %146, i32* %174
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %9, align 8, !tbaa !844
  %178 = add i64 %172, -88
  %179 = inttoptr i64 %178 to i64*
  %180 = load i64, i64* %179
  store i64 %180, i64* %10, align 8, !tbaa !844
  store i8 0, i8* %2, align 1, !tbaa !865
  %181 = add i64 %124, -769
  %182 = add i64 %124, 47
  %183 = load i64, i64* %11, align 8, !tbaa !844
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185
  store i64 %184, i64* %11, align 8, !tbaa !844
  store i64 %181, i64* %0, align 8, !tbaa !844
  %186 = tail call fastcc %struct.Memory* @ext_601058_printf(%struct.State* nonnull %state2, %struct.Memory* %120) #6
  %187 = load i64, i64* %12, align 8
  %188 = add i64 %187, -76
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %189
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %8, align 8, !tbaa !844
  %192 = add i64 %187, -96
  %193 = load i32, i32* %3, align 4
  %194 = inttoptr i64 %192 to i32*
  store i32 %193, i32* %194
  store i64 %191, i64* %6, align 8, !tbaa !844
  %195 = load i64, i64* %11, align 8
  %196 = add i64 %195, 144
  %197 = icmp ugt i64 %195, -145
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %21, align 1, !tbaa !848
  %199 = trunc i64 %196 to i32
  %200 = and i32 %199, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #6
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %28, align 1, !tbaa !860
  %205 = xor i64 %195, 16
  %206 = xor i64 %205, %196
  %207 = lshr i64 %206, 4
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %34, align 1, !tbaa !861
  %210 = icmp eq i64 %196, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %37, align 1, !tbaa !862
  %212 = lshr i64 %196, 63
  %213 = trunc i64 %212 to i8
  store i8 %213, i8* %40, align 1, !tbaa !863
  %214 = lshr i64 %195, 63
  %215 = xor i64 %212, %214
  %216 = add nuw nsw i64 %215, %212
  %217 = icmp eq i64 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %46, align 1, !tbaa !864
  %219 = add i64 %195, 152
  %220 = inttoptr i64 %196 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %12, align 8, !tbaa !844
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222
  store i64 %223, i64* %0, align 8, !tbaa !844
  %224 = add i64 %195, 160
  store i64 %224, i64* %11, align 8, !tbaa !844
  ret %struct.Memory* %186
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4003f0__init_proc(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_4003f0:
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
  store i8 %19, i8* %8, align 1, !tbaa !862
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !863
  store i8 0, i8* %10, align 1, !tbaa !864
  store i8 0, i8* %7, align 1, !tbaa !861
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %pc
  store i64 %22, i64* %0, align 8, !tbaa !844
  br i1 %18, label %block_400402, label %block_400400

block_400402:                                     ; preds = %block_400400, %block_4003f0
  %23 = phi i64 [ %4, %block_4003f0 ], [ %.pre, %block_400400 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_4003f0 ], [ %52, %block_400400 ]
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

block_400400:                                     ; preds = %block_4003f0
  %49 = add i64 %22, 2
  %50 = add i64 %3, -16
  %51 = inttoptr i64 %50 to i64*
  store i64 %49, i64* %51
  store i64 %50, i64* %2, align 8, !tbaa !844
  store i64 %11, i64* %0, align 8, !tbaa !844
  %52 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %state2, i64 %11, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_400402
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4007e4__term_proc(%struct.State* nocapture dereferenceable(2688) %state2, i64 %pc, %struct.Memory* returned %memory1) #3 {
block_4007e4:
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

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400540_update(%struct.State* dereferenceable(2688) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400540:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0
  %4 = bitcast %union.Flags* %3 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0
  %6 = bitcast %union.Flags* %5 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %11 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 21, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 23, i32 0, i32 0
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %13, align 8, !tbaa !844
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20
  store i64 %19, i64* %14, align 8, !tbaa !844
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %18, -16
  %23 = inttoptr i64 %22 to i64*
  store i64 %21, i64* %23
  store i64 %22, i64* %13, align 8, !tbaa !844
  %24 = add i64 %18, 40
  %25 = inttoptr i64 %24 to i64*
  %26 = load i64, i64* %25
  %27 = add i64 %18, 32
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28
  store i64 %29, i64* %15, align 8, !tbaa !844
  %30 = add i64 %18, 16
  store i64 %30, i64* %16, align 8, !tbaa !844
  %31 = add i64 %18, 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %8, align 8, !tbaa !844
  %35 = add i64 %18, -64
  %36 = load i64, i64* %12, align 8
  %37 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %37
  %38 = add i64 %18, -56
  %39 = load i32, i32* %2, align 4
  %40 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %40
  %41 = inttoptr i64 %38 to i32*
  %42 = load i32, i32* %41
  %43 = add i64 %18, -40
  %44 = inttoptr i64 %43 to i32*
  store i32 %42, i32* %44
  %45 = inttoptr i64 %35 to i64*
  %46 = load i64, i64* %45
  store i64 %46, i64* %12, align 8, !tbaa !844
  %47 = add i64 %18, -48
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48
  %49 = add i64 %18, -72
  %50 = load i64, i64* %10, align 8
  %51 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %51
  %52 = add i64 %18, -80
  %53 = load i64, i64* %9, align 8
  %54 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %54
  %55 = add i64 %18, -84
  %56 = load i32, i32* %4, align 4
  %57 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %57
  %58 = add i64 %18, -88
  %59 = load i32, i32* %6, align 4
  %60 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %60
  %61 = add i64 %18, -92
  %62 = inttoptr i64 %61 to i32*
  store i32 %33, i32* %62
  %63 = add i64 %18, -104
  %64 = inttoptr i64 %63 to i64*
  store i64 %29, i64* %64
  %65 = add i64 %18, -112
  %66 = inttoptr i64 %65 to i64*
  store i64 %26, i64* %66
  %67 = inttoptr i64 %47 to i32*
  %68 = load i32, i32* %67
  %69 = inttoptr i64 %49 to i64*
  %70 = load i64, i64* %69
  %71 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72
  %74 = add i32 %73, %68
  %75 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %77 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %78 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %79 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %80 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %81 = load i64, i64* %14, align 8
  %82 = add i64 %81, -72
  %83 = inttoptr i64 %82 to i64*
  %84 = load i64, i64* %83
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85
  %87 = add i32 %86, %74
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %11, align 8, !tbaa !844
  %89 = load i64, i64* %16, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %90
  %92 = add i64 %81, -96
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  %95 = getelementptr inbounds %union.Flags, %union.Flags* %5, i64 0, i32 0
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96
  %98 = add i32 %97, %91
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, -104
  %101 = inttoptr i64 %100 to i64*
  %102 = load i64, i64* %101
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103
  %105 = add i32 %104, %98
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = add i32 %105, %107
  %109 = add i64 %99, -120
  %110 = inttoptr i64 %109 to i32*
  store i32 %108, i32* %110
  %111 = add i64 %99, -36
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* %112
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, -64
  %116 = inttoptr i64 %115 to i64*
  %117 = load i64, i64* %116
  %118 = add i64 %117, 4
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %119
  %121 = add i32 %120, %113
  %122 = add i64 %114, -72
  %123 = inttoptr i64 %122 to i64*
  %124 = load i64, i64* %123
  %125 = add i64 %124, 4
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %126
  %128 = add i32 %127, %121
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %11, align 8, !tbaa !844
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, 4
  %132 = inttoptr i64 %131 to i32*
  %133 = load i32, i32* %132
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, -96
  %136 = inttoptr i64 %135 to i64*
  %137 = load i64, i64* %136
  %138 = add i64 %137, 4
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* %139
  %141 = add i32 %140, %133
  %142 = add i64 %134, -104
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143
  %145 = add i64 %144, 4
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %146
  %148 = add i32 %147, %141
  %149 = load i64, i64* %11, align 8
  %150 = trunc i64 %149 to i32
  %151 = add i32 %148, %150
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, -116
  %154 = inttoptr i64 %153 to i32*
  store i32 %151, i32* %154
  %155 = add i64 %152, -32
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %156
  %158 = add i64 %152, -64
  %159 = inttoptr i64 %158 to i64*
  %160 = load i64, i64* %159
  %161 = add i64 %160, 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %162
  %164 = add i32 %163, %157
  %165 = add i64 %152, -72
  %166 = inttoptr i64 %165 to i64*
  %167 = load i64, i64* %166
  %168 = add i64 %167, 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32, i32* %169
  %171 = add i32 %170, %164
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %11, align 8, !tbaa !844
  %173 = load i64, i64* %16, align 8
  %174 = add i64 %173, 8
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %175
  %177 = load i64, i64* %14, align 8
  %178 = add i64 %177, -96
  %179 = inttoptr i64 %178 to i64*
  %180 = load i64, i64* %179
  %181 = add i64 %180, 8
  %182 = inttoptr i64 %181 to i32*
  %183 = load i32, i32* %182
  %184 = add i32 %183, %176
  %185 = add i64 %177, -104
  %186 = inttoptr i64 %185 to i64*
  %187 = load i64, i64* %186
  %188 = add i64 %187, 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %189
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %95, align 8, !tbaa !844
  %192 = add i32 %190, %184
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %71, align 8, !tbaa !844
  %194 = lshr i32 %192, 31
  %195 = load i64, i64* %11, align 8
  %196 = trunc i64 %195 to i32
  %197 = add i32 %192, %196
  %198 = icmp ult i32 %197, %196
  %199 = icmp ult i32 %197, %192
  %200 = or i1 %198, %199
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %75, align 1, !tbaa !848
  %202 = and i32 %197, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202) #6
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %76, align 1, !tbaa !860
  %207 = xor i64 %193, %195
  %208 = trunc i64 %207 to i32
  %209 = xor i32 %208, %197
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %77, align 1, !tbaa !861
  %213 = icmp eq i32 %197, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %78, align 1, !tbaa !862
  %215 = lshr i32 %197, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %79, align 1, !tbaa !863
  %217 = lshr i32 %196, 31
  %218 = xor i32 %215, %217
  %219 = xor i32 %215, %194
  %220 = add nuw nsw i32 %218, %219
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %80, align 1, !tbaa !864
  %223 = load i64, i64* %14, align 8
  %224 = add i64 %223, -112
  %225 = inttoptr i64 %224 to i32*
  store i32 %197, i32* %225
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226
  %228 = add i64 %223, -16
  %229 = inttoptr i64 %228 to i32*
  store i32 %227, i32* %229
  %230 = add i64 %223, -120
  %231 = inttoptr i64 %230 to i64*
  %232 = load i64, i64* %231
  %233 = add i64 %223, -24
  %234 = inttoptr i64 %233 to i64*
  store i64 %232, i64* %234
  %235 = inttoptr i64 %228 to i32*
  %236 = load i32, i32* %235
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %11, align 8, !tbaa !844
  %238 = add i64 %223, -128
  %239 = inttoptr i64 %238 to i32*
  store i32 %236, i32* %239
  %240 = inttoptr i64 %233 to i64*
  %241 = load i64, i64* %240
  %242 = add i64 %223, -136
  %243 = inttoptr i64 %242 to i64*
  store i64 %241, i64* %243
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %7, align 8, !tbaa !844
  %246 = inttoptr i64 %238 to i32*
  %247 = load i32, i32* %246
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %10, align 8, !tbaa !844
  %249 = load i64, i64* %13, align 8, !tbaa !844
  %250 = add i64 %249, 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %8, align 8, !tbaa !844
  %253 = add i64 %249, 16
  %254 = inttoptr i64 %250 to i64*
  %255 = load i64, i64* %254
  store i64 %255, i64* %14, align 8, !tbaa !844
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256
  store i64 %257, i64* %0, align 8, !tbaa !844
  %258 = add i64 %249, 24
  store i64 %258, i64* %13, align 8, !tbaa !844
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #2

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601068_malloc(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601058_printf(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @update() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #6
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
!861 = !{!849, !846, i64 2069}
!862 = !{!849, !846, i64 2071}
!863 = !{!849, !846, i64 2073}
!864 = !{!849, !846, i64 2077}
!865 = !{!846, !846, i64 0}
