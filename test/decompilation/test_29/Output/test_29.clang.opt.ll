; ModuleID = 'Output/test_29.clang.opt.bc'
source_filename = "Output/test_29.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [20 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x4007d0 = internal constant %0 <{ [20 x i8] c"\01\00\02\00%d %d %d %d %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_4005f0(%struct.regs*) unnamed_addr {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, align 8, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %2 = load i64, i64* %RSI, align 8, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %3 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %4 = load i64, i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %6 = bitcast i64* %R11 to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %8 = bitcast i64* %R13 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %10 = load i64, i64* %R15, align 8, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %11 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %12 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !2
  %15 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %15, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %46 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = bitcast i64* %STACK_BASE to <2 x i64>*
  %64 = load <2 x i64>, <2 x i64>* %63, align 8
  %65 = add i64 %2, -4, !mcsema_real_eip !3
  %66 = trunc i64 %3 to i32, !mcsema_real_eip !4
  br label %block_0x400600, !mcsema_real_eip !3

block_0x400600:                                   ; preds = %block_0x400600, %entry
  %RAX_val.0 = phi i64 [ 3, %entry ], [ %73, %block_0x400600 ]
  %67 = shl i64 %RAX_val.0, 2
  %68 = add i64 %65, %67, !mcsema_real_eip !3
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !3
  %71 = add i64 %67, %2, !mcsema_real_eip !5
  %72 = inttoptr i64 %71 to i32*
  store i32 %70, i32* %72, align 4, !mcsema_real_eip !5
  %73 = add nsw i64 %RAX_val.0, -1, !mcsema_real_eip !6
  %74 = trunc i64 %73 to i32, !mcsema_real_eip !4
  %75 = icmp ugt i32 %74, %66
  br i1 %75, label %block_0x400600, label %block_0x400610, !mcsema_real_eip !7

block_0x400610:                                   ; preds = %block_0x400600
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %76 = and i64 %3, 4294967295
  %77 = sub i32 %74, %66, !mcsema_real_eip !4
  %78 = xor i64 %73, %3
  %79 = trunc i64 %78 to i32
  %80 = xor i32 %79, %77, !mcsema_real_eip !4
  %81 = and i32 %80, 16, !mcsema_real_eip !4
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !4
  %83 = inttoptr i64 %2 to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !8
  %85 = zext i32 %84 to i64, !mcsema_real_eip !8
  %86 = add i64 %2, 4, !mcsema_real_eip !9
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4, !mcsema_real_eip !9
  %89 = zext i32 %88 to i64, !mcsema_real_eip !9
  %90 = add i64 %2, 8, !mcsema_real_eip !10
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4, !mcsema_real_eip !10
  %93 = zext i32 %92 to i64, !mcsema_real_eip !10
  %94 = add i64 %2, 12, !mcsema_real_eip !11
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !11
  %97 = zext i32 %96 to i64, !mcsema_real_eip !11
  %98 = add i64 %4, 8, !mcsema_real_eip !12
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !12
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !12
  %101 = add i64 %4, 16, !mcsema_real_eip !12
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !12
  %103 = load i64, i64* %102, align 8, !mcsema_real_eip !12
  %104 = add i64 %4, 24, !mcsema_real_eip !12
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !12
  %106 = load i64, i64* %105, align 8, !mcsema_real_eip !12
  %107 = add i64 %4, 32, !mcsema_real_eip !12
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !12
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !12
  %110 = add i64 %4, 40, !mcsema_real_eip !12
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !12
  %112 = load i64, i64* %111, align 8, !mcsema_real_eip !12
  %113 = add i64 %4, 48, !mcsema_real_eip !12
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !12
  %115 = load i64, i64* %114, align 8, !mcsema_real_eip !12
  %116 = add i64 %4, 56, !mcsema_real_eip !12
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !12
  %118 = load i64, i64* %117, align 8, !mcsema_real_eip !12
  %119 = add i64 %4, 64, !mcsema_real_eip !12
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !12
  %121 = load i64, i64* %120, align 8, !mcsema_real_eip !12
  %122 = add i64 %4, 72, !mcsema_real_eip !12
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !12
  %124 = load i64, i64* %123, align 8, !mcsema_real_eip !12
  %125 = add i64 %4, 80, !mcsema_real_eip !12
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !12
  %127 = load i64, i64* %126, align 8, !mcsema_real_eip !12
  %128 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64 %76, i64 %85, i64 %89, i64 %93, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118, i64 %121, i64 %124, i64 %127), !mcsema_real_eip !12
  store i64 %128, i64* %RAX, align 8, !mcsema_real_eip !12
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !12
  store i64 %89, i64* %RCX, align 8, !mcsema_real_eip !12
  store i64 %85, i64* %RDX, align 8, !mcsema_real_eip !12
  store i64 %76, i64* %RSI, align 8, !mcsema_real_eip !12
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64* %RDI, align 8, !mcsema_real_eip !12
  store i64 %98, i64* %RSP, align 8, !mcsema_real_eip !12
  store i64 %5, i64* %RBP, align 8, !mcsema_real_eip !12
  store i64 %93, i64* %R8, align 8, !mcsema_real_eip !12
  store i64 %97, i64* %R9, align 8, !mcsema_real_eip !12
  store i64 %76, i64* %R10, align 8, !mcsema_real_eip !12
  %129 = bitcast i64* %R11 to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %129, align 8
  %130 = bitcast i64* %R13 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %130, align 8
  store i64 %10, i64* %R15, align 8, !mcsema_real_eip !12
  store i64 %11, i64* %RIP, align 8, !mcsema_real_eip !12
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !12
  store i1 %82, i1* %AF, align 1, !mcsema_real_eip !12
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %12, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %15, i32 128, i32 8, i1 false), !mcsema_real_eip !12
  store i1 %16, i1* %FPU_B, align 1, !mcsema_real_eip !12
  store i1 %17, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  store i3 %18, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_X, align 1, !mcsema_real_eip !12
  store i2 %31, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  store i2 %32, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  store i1 %36, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  store i64 %43, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !12
  store i16 %44, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  store i64 %45, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !12
  store i11 %46, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !12
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !12
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !12
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !12
  %131 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %131, align 1
  ret void, !mcsema_real_eip !12
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !13
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !13
  %1 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !13
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !13
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !13
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !13
  %3 = bitcast i64* %RCX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !13
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !13
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !13
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !13
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !13
  %6 = bitcast i64* %RBP.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !13
  %8 = bitcast i64* %R9.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !13
  %10 = bitcast i64* %R11.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !13
  %12 = bitcast i64* %R13.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !13
  %14 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !13
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !13
  %15 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !13
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !13
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !13
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !13
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !13
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !13
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !13
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !13
  %16 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !13
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !13
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !13
  %19 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !13
  %20 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !13
  %21 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !13
  %22 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !13
  %23 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !13
  %24 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !13
  %25 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !13
  %26 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !13
  %27 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !13
  %28 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !13
  %29 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !13
  %30 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !13
  %31 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !13
  %32 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !13
  %33 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !13
  %34 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !13
  %35 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !13
  %36 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !13
  %37 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !13
  %38 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !13
  %39 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !13
  %40 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !13
  %41 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !13
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !13
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !13
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !13
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !13
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !13
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !13
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !13
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !13
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !13
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !13
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !13
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !13
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !13
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !13
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !13
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !13
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !13
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !13
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !13
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !13
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !13
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !13
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !13
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !13
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !13
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %68 = add i64 %5, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !13
  store i64 %2, i64* %69, align 8, !mcsema_real_eip !13
  %70 = add i64 %5, -24
  %71 = xor i64 %70, %68, !mcsema_real_eip !14
  %72 = and i64 %71, 16
  %73 = icmp eq i64 %72, 0
  %74 = inttoptr i64 %70 to i32*
  store i32 5, i32* %74, align 4, !mcsema_real_eip !15
  %75 = add i64 %5, -20, !mcsema_real_eip !16
  %76 = inttoptr i64 %75 to i32*
  store i32 6, i32* %76, align 4, !mcsema_real_eip !16
  %77 = add i64 %5, -16, !mcsema_real_eip !17
  %78 = inttoptr i64 %77 to i32*
  store i32 7, i32* %78, align 4, !mcsema_real_eip !17
  %79 = add i64 %5, -12, !mcsema_real_eip !18
  %80 = inttoptr i64 %79 to i32*
  store i32 8, i32* %80, align 4, !mcsema_real_eip !18
  %81 = add i64 %5, -32
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !19
  store i64 -4981261766360305936, i64* %82, align 8, !mcsema_real_eip !19
  store i64 %1, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store i64 %70, i64* %RBX.i, align 8, !mcsema_real_eip !19
  %83 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %83, align 8
  store i64 %70, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %81, i64* %RSP.i, align 8, !mcsema_real_eip !19
  %84 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %87, align 8
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !19
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %73, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  %88 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %88, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !19
  %89 = bitcast %struct.regs* %0 to <2 x i64>*
  %90 = load <2 x i64>, <2 x i64>* %89, align 8
  %91 = bitcast i64* %RCX.i to <2 x i64>*
  %92 = load <2 x i64>, <2 x i64>* %91, align 8
  %93 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !19
  %94 = bitcast i64* %RBP.i to <2 x i64>*
  %95 = load <2 x i64>, <2 x i64>* %94, align 8
  %96 = bitcast i64* %R9.i to <2 x i64>*
  %97 = load <2 x i64>, <2 x i64>* %96, align 8
  %98 = bitcast i64* %R11.i to <2 x i64>*
  %99 = load <2 x i64>, <2 x i64>* %98, align 8
  %100 = bitcast i64* %R13.i to <2 x i64>*
  %101 = load <2 x i64>, <2 x i64>* %100, align 8
  %102 = bitcast i64* %R15.i to <2 x i64>*
  %103 = load <2 x i64>, <2 x i64>* %102, align 8
  %104 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !19
  %105 = load i1, i1* %PF.i, align 1, !mcsema_real_eip !19
  %106 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !19
  %107 = load i1, i1* %ZF.i, align 1, !mcsema_real_eip !19
  %108 = load i1, i1* %SF.i, align 1, !mcsema_real_eip !19
  %109 = load i1, i1* %OF.i, align 1, !mcsema_real_eip !19
  %110 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !19
  %111 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  %112 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  %113 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  %114 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  %115 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  %116 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  %117 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  %118 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  %119 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  %120 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  %121 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  %122 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  %123 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  %124 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  %125 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  %126 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  %127 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  %128 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  %129 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  %130 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  %131 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  %132 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  %133 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  %134 = load i64, i64* %43, align 4
  %135 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  %136 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !19
  %137 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  %138 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !19
  %139 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !19
  %140 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  %141 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  %142 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  %143 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  %144 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  %145 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  %146 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  %147 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  %148 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  %149 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  %150 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  %151 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  %152 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  %153 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  %154 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  %155 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  %156 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %157 = load <2 x i64>, <2 x i64>* %156, align 8
  %158 = inttoptr i64 %93 to i32*
  store i32 5, i32* %158, align 4, !mcsema_real_eip !20
  %159 = add i64 %93, 4, !mcsema_real_eip !21
  %160 = inttoptr i64 %159 to i32*
  store i32 6, i32* %160, align 4, !mcsema_real_eip !21
  %161 = add i64 %93, 8, !mcsema_real_eip !22
  %162 = inttoptr i64 %161 to i32*
  store i32 7, i32* %162, align 4, !mcsema_real_eip !22
  %163 = add i64 %93, 12, !mcsema_real_eip !23
  %164 = inttoptr i64 %163 to i32*
  store i32 8, i32* %164, align 4, !mcsema_real_eip !23
  %165 = add i64 %93, -8
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !24
  store i64 -4981261766360305936, i64* %166, align 8, !mcsema_real_eip !24
  %167 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %167, align 8
  %168 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %92, <2 x i64>* %168, align 8
  %169 = extractelement <2 x i64> %90, i32 1
  store i64 %169, i64* %RSI.i, align 8, !mcsema_real_eip !24
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !24
  store i64 %165, i64* %RSP.i, align 8, !mcsema_real_eip !24
  %170 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %95, <2 x i64>* %170, align 8
  %171 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %97, <2 x i64>* %171, align 8
  %172 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %99, <2 x i64>* %172, align 8
  %173 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %101, <2 x i64>* %173, align 8
  %174 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %103, <2 x i64>* %174, align 8
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %105, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %106, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %107, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %108, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %109, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %110, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  store i1 %111, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %112, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %113, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %114, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %115, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %116, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %117, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %118, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %119, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %120, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %121, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %122, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %123, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %124, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %125, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %126, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %127, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %128, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %129, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %130, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %131, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %132, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %133, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %134, i64* %43, align 4
  store i16 %135, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %136, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %137, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %138, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
  store i11 %139, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  store i128 %140, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  store i128 %141, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  store i128 %142, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  store i128 %143, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  store i128 %144, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  store i128 %145, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  store i128 %146, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  store i128 %147, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  store i128 %148, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  store i128 %149, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  store i128 %150, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  store i128 %151, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  store i128 %152, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  store i128 %153, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  store i128 %154, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  store i128 %155, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %175 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %157, <2 x i64>* %175, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !24
  %176 = bitcast %struct.regs* %0 to <2 x i64>*
  %177 = load <2 x i64>, <2 x i64>* %176, align 8
  %178 = bitcast i64* %RCX.i to <2 x i64>*
  %179 = load <2 x i64>, <2 x i64>* %178, align 8
  %180 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !24
  %181 = bitcast i64* %RBP.i to <2 x i64>*
  %182 = load <2 x i64>, <2 x i64>* %181, align 8
  %183 = bitcast i64* %R9.i to <2 x i64>*
  %184 = load <2 x i64>, <2 x i64>* %183, align 8
  %185 = bitcast i64* %R11.i to <2 x i64>*
  %186 = load <2 x i64>, <2 x i64>* %185, align 8
  %187 = bitcast i64* %R13.i to <2 x i64>*
  %188 = load <2 x i64>, <2 x i64>* %187, align 8
  %189 = bitcast i64* %R15.i to <2 x i64>*
  %190 = load <2 x i64>, <2 x i64>* %189, align 8
  %191 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !24
  %192 = load i1, i1* %PF.i, align 1, !mcsema_real_eip !24
  %193 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !24
  %194 = load i1, i1* %ZF.i, align 1, !mcsema_real_eip !24
  %195 = load i1, i1* %SF.i, align 1, !mcsema_real_eip !24
  %196 = load i1, i1* %OF.i, align 1, !mcsema_real_eip !24
  %197 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %198 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  %199 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  %200 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  %201 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  %202 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  %203 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  %204 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  %205 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  %206 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  %207 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  %208 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  %209 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  %210 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  %211 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  %212 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  %213 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  %214 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  %215 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  %216 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  %217 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  %218 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  %219 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  %220 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  %221 = load i64, i64* %43, align 4
  %222 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  %223 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !24
  %224 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  %225 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !24
  %226 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  %227 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  %228 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  %229 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  %230 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  %231 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  %232 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  %233 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  %234 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  %235 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  %236 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  %237 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  %238 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  %239 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  %240 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  %241 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  %242 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %243 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %244 = load <2 x i64>, <2 x i64>* %243, align 8
  %245 = inttoptr i64 %180 to i32*
  store i32 5, i32* %245, align 4, !mcsema_real_eip !25
  %246 = add i64 %180, 4, !mcsema_real_eip !26
  %247 = inttoptr i64 %246 to i32*
  store i32 6, i32* %247, align 4, !mcsema_real_eip !26
  %248 = add i64 %180, 8, !mcsema_real_eip !27
  %249 = inttoptr i64 %248 to i32*
  store i32 7, i32* %249, align 4, !mcsema_real_eip !27
  %250 = add i64 %180, 12, !mcsema_real_eip !28
  %251 = inttoptr i64 %250 to i32*
  store i32 8, i32* %251, align 4, !mcsema_real_eip !28
  %252 = add i64 %180, -8
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %253, align 8, !mcsema_real_eip !29
  %254 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %177, <2 x i64>* %254, align 8
  %255 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %179, <2 x i64>* %255, align 8
  %256 = extractelement <2 x i64> %177, i32 1
  store i64 %256, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 2, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %252, i64* %RSP.i, align 8, !mcsema_real_eip !29
  %257 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %182, <2 x i64>* %257, align 8
  %258 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %184, <2 x i64>* %258, align 8
  %259 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %186, <2 x i64>* %259, align 8
  %260 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %188, <2 x i64>* %260, align 8
  %261 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %190, <2 x i64>* %261, align 8
  store i1 %191, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %192, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %193, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %194, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %195, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %196, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %197, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %198, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %199, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %200, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %201, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %202, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %203, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %204, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %205, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %206, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %207, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %208, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %209, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %210, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %211, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %212, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %213, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %214, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %215, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %216, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %217, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %218, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %219, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %220, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %221, i64* %43, align 4
  store i16 %222, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %223, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %224, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %225, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i11 %226, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !29
  store i128 %227, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %228, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %229, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %230, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %231, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %232, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %233, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %234, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %235, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %236, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %237, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %238, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %239, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %240, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %241, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %242, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  %262 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %244, <2 x i64>* %262, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !29
  %263 = bitcast %struct.regs* %0 to <2 x i64>*
  %264 = load <2 x i64>, <2 x i64>* %263, align 8
  %265 = bitcast i64* %RCX.i to <2 x i64>*
  %266 = load <2 x i64>, <2 x i64>* %265, align 8
  %267 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !29
  %268 = bitcast i64* %RBP.i to <2 x i64>*
  %269 = load <2 x i64>, <2 x i64>* %268, align 8
  %270 = bitcast i64* %R9.i to <2 x i64>*
  %271 = load <2 x i64>, <2 x i64>* %270, align 8
  %272 = bitcast i64* %R11.i to <2 x i64>*
  %273 = load <2 x i64>, <2 x i64>* %272, align 8
  %274 = bitcast i64* %R13.i to <2 x i64>*
  %275 = load <2 x i64>, <2 x i64>* %274, align 8
  %276 = bitcast i64* %R15.i to <2 x i64>*
  %277 = load <2 x i64>, <2 x i64>* %276, align 8
  %278 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !29
  %279 = load i1, i1* %PF.i, align 1, !mcsema_real_eip !29
  %280 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !29
  %281 = load i1, i1* %ZF.i, align 1, !mcsema_real_eip !29
  %282 = load i1, i1* %SF.i, align 1, !mcsema_real_eip !29
  %283 = load i1, i1* %OF.i, align 1, !mcsema_real_eip !29
  %284 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %285 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  %286 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  %287 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  %288 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  %289 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  %290 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  %291 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  %292 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  %293 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  %294 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  %295 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  %296 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  %297 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  %298 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  %299 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  %300 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  %301 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  %302 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  %303 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  %304 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  %305 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  %306 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  %307 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  %308 = load i64, i64* %43, align 4
  %309 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  %310 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !29
  %311 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  %312 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !29
  %313 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !29
  %314 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  %315 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  %316 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  %317 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  %318 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  %319 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  %320 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  %321 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  %322 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  %323 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  %324 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  %325 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  %326 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  %327 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  %328 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  %329 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  %330 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %331 = load <2 x i64>, <2 x i64>* %330, align 8
  %332 = inttoptr i64 %267 to i32*
  store i32 5, i32* %332, align 4, !mcsema_real_eip !30
  %333 = add i64 %267, 4, !mcsema_real_eip !31
  %334 = inttoptr i64 %333 to i32*
  store i32 6, i32* %334, align 4, !mcsema_real_eip !31
  %335 = add i64 %267, 8, !mcsema_real_eip !32
  %336 = inttoptr i64 %335 to i32*
  store i32 7, i32* %336, align 4, !mcsema_real_eip !32
  %337 = add i64 %267, 12, !mcsema_real_eip !33
  %338 = inttoptr i64 %337 to i32*
  store i32 8, i32* %338, align 4, !mcsema_real_eip !33
  %339 = add i64 %267, -8
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !34
  store i64 -4981261766360305936, i64* %340, align 8, !mcsema_real_eip !34
  %341 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %264, <2 x i64>* %341, align 8
  %342 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %266, <2 x i64>* %342, align 8
  %343 = extractelement <2 x i64> %264, i32 1
  store i64 %343, i64* %RSI.i, align 8, !mcsema_real_eip !34
  store i64 3, i64* %RDI.i, align 8, !mcsema_real_eip !34
  store i64 %339, i64* %RSP.i, align 8, !mcsema_real_eip !34
  %344 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %269, <2 x i64>* %344, align 8
  %345 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %271, <2 x i64>* %345, align 8
  %346 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %273, <2 x i64>* %346, align 8
  %347 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %275, <2 x i64>* %347, align 8
  %348 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %277, <2 x i64>* %348, align 8
  store i1 %278, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %279, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %280, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %281, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %282, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %283, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %284, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  store i1 %285, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %286, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %287, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %288, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %289, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %290, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %291, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %292, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %293, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %294, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %295, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %296, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %297, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %298, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %299, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %300, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %301, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %302, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %303, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %304, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %305, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %306, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %307, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %308, i64* %43, align 4
  store i16 %309, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %310, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %311, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %312, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i11 %313, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !34
  store i128 %314, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %315, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %316, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %317, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %318, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %319, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %320, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %321, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %322, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %323, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %324, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %325, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %326, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %327, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %328, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %329, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  %349 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %331, <2 x i64>* %349, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !34
  %350 = bitcast %struct.regs* %0 to <2 x i64>*
  %351 = load <2 x i64>, <2 x i64>* %350, align 8
  %352 = bitcast i64* %RCX.i to <2 x i64>*
  %353 = load <2 x i64>, <2 x i64>* %352, align 8
  %354 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !34
  %355 = bitcast i64* %RBP.i to <2 x i64>*
  %356 = load <2 x i64>, <2 x i64>* %355, align 8
  %357 = bitcast i64* %R9.i to <2 x i64>*
  %358 = load <2 x i64>, <2 x i64>* %357, align 8
  %359 = bitcast i64* %R11.i to <2 x i64>*
  %360 = load <2 x i64>, <2 x i64>* %359, align 8
  %361 = bitcast i64* %R13.i to <2 x i64>*
  %362 = load <2 x i64>, <2 x i64>* %361, align 8
  %363 = bitcast i64* %R15.i to <2 x i64>*
  %364 = load <2 x i64>, <2 x i64>* %363, align 8
  %365 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !34
  %366 = load i1, i1* %PF.i, align 1, !mcsema_real_eip !34
  %367 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !34
  %368 = load i1, i1* %ZF.i, align 1, !mcsema_real_eip !34
  %369 = load i1, i1* %SF.i, align 1, !mcsema_real_eip !34
  %370 = load i1, i1* %OF.i, align 1, !mcsema_real_eip !34
  %371 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !34
  %372 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  %373 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  %374 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  %375 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  %376 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  %377 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  %378 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  %379 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  %380 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  %381 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  %382 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  %383 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  %384 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  %385 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  %386 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  %387 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  %388 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  %389 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  %390 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  %391 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  %392 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  %393 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  %394 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  %395 = load i64, i64* %43, align 4
  %396 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  %397 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !34
  %398 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  %399 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !34
  %400 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !34
  %401 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  %402 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  %403 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  %404 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  %405 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  %406 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  %407 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  %408 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  %409 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  %410 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  %411 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  %412 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  %413 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  %414 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  %415 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  %416 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  %417 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %418 = load <2 x i64>, <2 x i64>* %417, align 8
  %419 = inttoptr i64 %354 to i32*
  store i32 5, i32* %419, align 4, !mcsema_real_eip !35
  %420 = add i64 %354, 4, !mcsema_real_eip !36
  %421 = inttoptr i64 %420 to i32*
  store i32 6, i32* %421, align 4, !mcsema_real_eip !36
  %422 = add i64 %354, 8, !mcsema_real_eip !37
  %423 = inttoptr i64 %422 to i32*
  store i32 7, i32* %423, align 4, !mcsema_real_eip !37
  %424 = add i64 %354, 12, !mcsema_real_eip !38
  %425 = inttoptr i64 %424 to i32*
  store i32 8, i32* %425, align 4, !mcsema_real_eip !38
  %426 = add i64 %354, -8
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %427, align 8, !mcsema_real_eip !39
  %428 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %351, <2 x i64>* %428, align 8
  %429 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %353, <2 x i64>* %429, align 8
  %430 = extractelement <2 x i64> %351, i32 1
  store i64 %430, i64* %RSI.i, align 8, !mcsema_real_eip !39
  store i64 4, i64* %RDI.i, align 8, !mcsema_real_eip !39
  store i64 %426, i64* %RSP.i, align 8, !mcsema_real_eip !39
  %431 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %356, <2 x i64>* %431, align 8
  %432 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %358, <2 x i64>* %432, align 8
  %433 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %360, <2 x i64>* %433, align 8
  %434 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %362, <2 x i64>* %434, align 8
  %435 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %364, <2 x i64>* %435, align 8
  store i1 %365, i1* %CF.i, align 1, !mcsema_real_eip !39
  store i1 %366, i1* %PF.i, align 1, !mcsema_real_eip !39
  store i1 %367, i1* %AF.i, align 1, !mcsema_real_eip !39
  store i1 %368, i1* %ZF.i, align 1, !mcsema_real_eip !39
  store i1 %369, i1* %SF.i, align 1, !mcsema_real_eip !39
  store i1 %370, i1* %OF.i, align 1, !mcsema_real_eip !39
  store i1 %371, i1* %DF.i, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  store i1 %372, i1* %FPU_B.i, align 1, !mcsema_real_eip !39
  store i1 %373, i1* %FPU_C3.i, align 1, !mcsema_real_eip !39
  store i3 %374, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !39
  store i1 %375, i1* %FPU_C2.i, align 1, !mcsema_real_eip !39
  store i1 %376, i1* %FPU_C1.i, align 1, !mcsema_real_eip !39
  store i1 %377, i1* %FPU_C0.i, align 1, !mcsema_real_eip !39
  store i1 %378, i1* %FPU_ES.i, align 1, !mcsema_real_eip !39
  store i1 %379, i1* %FPU_SF.i, align 1, !mcsema_real_eip !39
  store i1 %380, i1* %FPU_PE.i, align 1, !mcsema_real_eip !39
  store i1 %381, i1* %FPU_UE.i, align 1, !mcsema_real_eip !39
  store i1 %382, i1* %FPU_OE.i, align 1, !mcsema_real_eip !39
  store i1 %383, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !39
  store i1 %384, i1* %FPU_DE.i, align 1, !mcsema_real_eip !39
  store i1 %385, i1* %FPU_IE.i, align 1, !mcsema_real_eip !39
  store i1 %386, i1* %FPU_X.i, align 1, !mcsema_real_eip !39
  store i2 %387, i2* %FPU_RC.i, align 1, !mcsema_real_eip !39
  store i2 %388, i2* %FPU_PC.i, align 1, !mcsema_real_eip !39
  store i1 %389, i1* %FPU_PM.i, align 1, !mcsema_real_eip !39
  store i1 %390, i1* %FPU_UM.i, align 1, !mcsema_real_eip !39
  store i1 %391, i1* %FPU_OM.i, align 1, !mcsema_real_eip !39
  store i1 %392, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !39
  store i1 %393, i1* %FPU_DM.i, align 1, !mcsema_real_eip !39
  store i1 %394, i1* %FPU_IM.i, align 1, !mcsema_real_eip !39
  store i64 %395, i64* %43, align 4
  store i16 %396, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %397, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !39
  store i16 %398, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %399, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !39
  store i11 %400, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !39
  store i128 %401, i128* %XMM0.i, align 1, !mcsema_real_eip !39
  store i128 %402, i128* %XMM1.i, align 1, !mcsema_real_eip !39
  store i128 %403, i128* %XMM2.i, align 1, !mcsema_real_eip !39
  store i128 %404, i128* %XMM3.i, align 1, !mcsema_real_eip !39
  store i128 %405, i128* %XMM4.i, align 1, !mcsema_real_eip !39
  store i128 %406, i128* %XMM5.i, align 1, !mcsema_real_eip !39
  store i128 %407, i128* %XMM6.i, align 1, !mcsema_real_eip !39
  store i128 %408, i128* %XMM7.i, align 1, !mcsema_real_eip !39
  store i128 %409, i128* %XMM8.i, align 1, !mcsema_real_eip !39
  store i128 %410, i128* %XMM9.i, align 1, !mcsema_real_eip !39
  store i128 %411, i128* %XMM10.i, align 1, !mcsema_real_eip !39
  store i128 %412, i128* %XMM11.i, align 1, !mcsema_real_eip !39
  store i128 %413, i128* %XMM12.i, align 1, !mcsema_real_eip !39
  store i128 %414, i128* %XMM13.i, align 1, !mcsema_real_eip !39
  store i128 %415, i128* %XMM14.i, align 1, !mcsema_real_eip !39
  store i128 %416, i128* %XMM15.i, align 1, !mcsema_real_eip !39
  %436 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %418, <2 x i64>* %436, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !39
  %437 = bitcast %struct.regs* %0 to <2 x i64>*
  %438 = load <2 x i64>, <2 x i64>* %437, align 8
  %439 = bitcast i64* %RCX.i to <2 x i64>*
  %440 = load <2 x i64>, <2 x i64>* %439, align 8
  %441 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !39
  %442 = bitcast i64* %RBP.i to <2 x i64>*
  %443 = load <2 x i64>, <2 x i64>* %442, align 8
  %444 = bitcast i64* %R9.i to <2 x i64>*
  %445 = load <2 x i64>, <2 x i64>* %444, align 8
  %446 = bitcast i64* %R11.i to <2 x i64>*
  %447 = load <2 x i64>, <2 x i64>* %446, align 8
  %448 = bitcast i64* %R13.i to <2 x i64>*
  %449 = load <2 x i64>, <2 x i64>* %448, align 8
  %450 = bitcast i64* %R15.i to <2 x i64>*
  %451 = load <2 x i64>, <2 x i64>* %450, align 8
  %452 = load i1, i1* %CF.i, align 1, !mcsema_real_eip !39
  %453 = load i1, i1* %PF.i, align 1, !mcsema_real_eip !39
  %454 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !39
  %455 = load i1, i1* %ZF.i, align 1, !mcsema_real_eip !39
  %456 = load i1, i1* %SF.i, align 1, !mcsema_real_eip !39
  %457 = load i1, i1* %OF.i, align 1, !mcsema_real_eip !39
  %458 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %459 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !39
  %460 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !39
  %461 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !39
  %462 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !39
  %463 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !39
  %464 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !39
  %465 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !39
  %466 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !39
  %467 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !39
  %468 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !39
  %469 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !39
  %470 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !39
  %471 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !39
  %472 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !39
  %473 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !39
  %474 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !39
  %475 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !39
  %476 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !39
  %477 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !39
  %478 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !39
  %479 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !39
  %480 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !39
  %481 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !39
  %482 = load i64, i64* %43, align 4
  %483 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !39
  %484 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !39
  %485 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !39
  %486 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !39
  %487 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !39
  %488 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !39
  %489 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !39
  %490 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !39
  %491 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !39
  %492 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !39
  %493 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !39
  %494 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !39
  %495 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !39
  %496 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !39
  %497 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !39
  %498 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !39
  %499 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !39
  %500 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !39
  %501 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !39
  %502 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !39
  %503 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !39
  %504 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %505 = load <2 x i64>, <2 x i64>* %504, align 8
  %506 = inttoptr i64 %441 to i32*
  store i32 5, i32* %506, align 4, !mcsema_real_eip !40
  %507 = add i64 %441, 4, !mcsema_real_eip !41
  %508 = inttoptr i64 %507 to i32*
  store i32 6, i32* %508, align 4, !mcsema_real_eip !41
  %509 = add i64 %441, 8, !mcsema_real_eip !42
  %510 = inttoptr i64 %509 to i32*
  store i32 7, i32* %510, align 4, !mcsema_real_eip !42
  %511 = add i64 %441, 12, !mcsema_real_eip !43
  %512 = inttoptr i64 %511 to i32*
  store i32 8, i32* %512, align 4, !mcsema_real_eip !43
  %513 = add i64 %441, -8
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %514, align 8, !mcsema_real_eip !44
  %515 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %438, <2 x i64>* %515, align 8
  %516 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> %440, <2 x i64>* %516, align 8
  %517 = extractelement <2 x i64> %438, i32 1
  store i64 %517, i64* %RSI.i, align 8, !mcsema_real_eip !44
  store i64 4294967295, i64* %RDI.i, align 8, !mcsema_real_eip !44
  store i64 %513, i64* %RSP.i, align 8, !mcsema_real_eip !44
  %518 = bitcast i64* %RBP.i to <2 x i64>*
  store <2 x i64> %443, <2 x i64>* %518, align 8
  %519 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %445, <2 x i64>* %519, align 8
  %520 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %447, <2 x i64>* %520, align 8
  %521 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %449, <2 x i64>* %521, align 8
  %522 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %451, <2 x i64>* %522, align 8
  store i1 %452, i1* %CF.i, align 1, !mcsema_real_eip !44
  store i1 %453, i1* %PF.i, align 1, !mcsema_real_eip !44
  store i1 %454, i1* %AF.i, align 1, !mcsema_real_eip !44
  store i1 %455, i1* %ZF.i, align 1, !mcsema_real_eip !44
  store i1 %456, i1* %SF.i, align 1, !mcsema_real_eip !44
  store i1 %457, i1* %OF.i, align 1, !mcsema_real_eip !44
  store i1 %458, i1* %DF.i, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  store i1 %459, i1* %FPU_B.i, align 1, !mcsema_real_eip !44
  store i1 %460, i1* %FPU_C3.i, align 1, !mcsema_real_eip !44
  store i3 %461, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !44
  store i1 %462, i1* %FPU_C2.i, align 1, !mcsema_real_eip !44
  store i1 %463, i1* %FPU_C1.i, align 1, !mcsema_real_eip !44
  store i1 %464, i1* %FPU_C0.i, align 1, !mcsema_real_eip !44
  store i1 %465, i1* %FPU_ES.i, align 1, !mcsema_real_eip !44
  store i1 %466, i1* %FPU_SF.i, align 1, !mcsema_real_eip !44
  store i1 %467, i1* %FPU_PE.i, align 1, !mcsema_real_eip !44
  store i1 %468, i1* %FPU_UE.i, align 1, !mcsema_real_eip !44
  store i1 %469, i1* %FPU_OE.i, align 1, !mcsema_real_eip !44
  store i1 %470, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !44
  store i1 %471, i1* %FPU_DE.i, align 1, !mcsema_real_eip !44
  store i1 %472, i1* %FPU_IE.i, align 1, !mcsema_real_eip !44
  store i1 %473, i1* %FPU_X.i, align 1, !mcsema_real_eip !44
  store i2 %474, i2* %FPU_RC.i, align 1, !mcsema_real_eip !44
  store i2 %475, i2* %FPU_PC.i, align 1, !mcsema_real_eip !44
  store i1 %476, i1* %FPU_PM.i, align 1, !mcsema_real_eip !44
  store i1 %477, i1* %FPU_UM.i, align 1, !mcsema_real_eip !44
  store i1 %478, i1* %FPU_OM.i, align 1, !mcsema_real_eip !44
  store i1 %479, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !44
  store i1 %480, i1* %FPU_DM.i, align 1, !mcsema_real_eip !44
  store i1 %481, i1* %FPU_IM.i, align 1, !mcsema_real_eip !44
  store i64 %482, i64* %43, align 4
  store i16 %483, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %484, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !44
  store i16 %485, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %486, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !44
  store i11 %487, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !44
  store i128 %488, i128* %XMM0.i, align 1, !mcsema_real_eip !44
  store i128 %489, i128* %XMM1.i, align 1, !mcsema_real_eip !44
  store i128 %490, i128* %XMM2.i, align 1, !mcsema_real_eip !44
  store i128 %491, i128* %XMM3.i, align 1, !mcsema_real_eip !44
  store i128 %492, i128* %XMM4.i, align 1, !mcsema_real_eip !44
  store i128 %493, i128* %XMM5.i, align 1, !mcsema_real_eip !44
  store i128 %494, i128* %XMM6.i, align 1, !mcsema_real_eip !44
  store i128 %495, i128* %XMM7.i, align 1, !mcsema_real_eip !44
  store i128 %496, i128* %XMM8.i, align 1, !mcsema_real_eip !44
  store i128 %497, i128* %XMM9.i, align 1, !mcsema_real_eip !44
  store i128 %498, i128* %XMM10.i, align 1, !mcsema_real_eip !44
  store i128 %499, i128* %XMM11.i, align 1, !mcsema_real_eip !44
  store i128 %500, i128* %XMM12.i, align 1, !mcsema_real_eip !44
  store i128 %501, i128* %XMM13.i, align 1, !mcsema_real_eip !44
  store i128 %502, i128* %XMM14.i, align 1, !mcsema_real_eip !44
  store i128 %503, i128* %XMM15.i, align 1, !mcsema_real_eip !44
  %523 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %505, <2 x i64>* %523, align 1
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !44
  %524 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !44
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %524, i64 16)
  %525 = extractvalue { i64, i1 } %uadd.i, 0
  %526 = xor i64 %525, %524, !mcsema_real_eip !45
  %527 = and i64 %526, 16
  %528 = icmp eq i64 %527, 0
  %529 = icmp slt i64 %525, 0
  %530 = icmp eq i64 %525, 0, !mcsema_real_eip !45
  %531 = xor i64 %524, -9223372036854775808, !mcsema_real_eip !45
  %532 = and i64 %526, %531, !mcsema_real_eip !45
  %533 = icmp slt i64 %532, 0
  %534 = trunc i64 %525 to i8, !mcsema_real_eip !45
  %535 = tail call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !45
  %536 = and i8 %535, 1
  %537 = icmp eq i8 %536, 0
  %538 = extractvalue { i64, i1 } %uadd.i, 1
  %539 = inttoptr i64 %525 to i64*, !mcsema_real_eip !46
  %540 = load i64, i64* %539, align 8, !mcsema_real_eip !46
  %541 = add i64 %525, 16, !mcsema_real_eip !47
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !47
  store i64 %540, i64* %RBX.i, align 8, !mcsema_real_eip !47
  store i64 %541, i64* %RSP.i, align 8, !mcsema_real_eip !47
  store i1 %538, i1* %CF.i, align 1, !mcsema_real_eip !47
  store i1 %537, i1* %PF.i, align 1, !mcsema_real_eip !47
  store i1 %528, i1* %AF.i, align 1, !mcsema_real_eip !47
  store i1 %530, i1* %ZF.i, align 1, !mcsema_real_eip !47
  store i1 %529, i1* %SF.i, align 1, !mcsema_real_eip !47
  store i1 %533, i1* %OF.i, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4195824}
!3 = !{i64 4195840}
!4 = !{i64 4195851}
!5 = !{i64 4195844}
!6 = !{i64 4195847}
!7 = !{i64 4195854}
!8 = !{i64 4195856}
!9 = !{i64 4195858}
!10 = !{i64 4195861}
!11 = !{i64 4195865}
!12 = !{i64 4195536}
!13 = !{i64 4195888}
!14 = !{i64 4195889}
!15 = !{i64 4195893}
!16 = !{i64 4195900}
!17 = !{i64 4195908}
!18 = !{i64 4195916}
!19 = !{i64 4195933}
!20 = !{i64 4195938}
!21 = !{i64 4195945}
!22 = !{i64 4195953}
!23 = !{i64 4195961}
!24 = !{i64 4195977}
!25 = !{i64 4195982}
!26 = !{i64 4195989}
!27 = !{i64 4195997}
!28 = !{i64 4196005}
!29 = !{i64 4196021}
!30 = !{i64 4196026}
!31 = !{i64 4196033}
!32 = !{i64 4196041}
!33 = !{i64 4196049}
!34 = !{i64 4196065}
!35 = !{i64 4196070}
!36 = !{i64 4196077}
!37 = !{i64 4196085}
!38 = !{i64 4196093}
!39 = !{i64 4196109}
!40 = !{i64 4196114}
!41 = !{i64 4196121}
!42 = !{i64 4196129}
!43 = !{i64 4196137}
!44 = !{i64 4196153}
!45 = !{i64 4196160}
!46 = !{i64 4196164}
!47 = !{i64 4196165}
