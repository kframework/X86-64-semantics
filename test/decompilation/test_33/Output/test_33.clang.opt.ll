; ModuleID = 'Output/test_33.clang.opt.bc'
source_filename = "Output/test_33.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [15 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) unnamed_addr #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %51 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %68 = bitcast i64* %STACK_BASE to <2 x i64>*
  %69 = load <2 x i64>, <2 x i64>* %68, align 8
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %71, align 8, !mcsema_real_eip !2
  %72 = add i64 %6, -16, !mcsema_real_eip !3
  %73 = trunc i64 %5 to i32, !mcsema_real_eip !3
  %74 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %74, align 4, !mcsema_real_eip !3
  %75 = add i64 %6, -20, !mcsema_real_eip !4
  %76 = extractelement <2 x i64> %4, i32 1
  %77 = trunc i64 %76 to i32, !mcsema_real_eip !4
  %78 = inttoptr i64 %75 to i32*
  store i32 %77, i32* %78, align 4, !mcsema_real_eip !4
  %79 = load i32, i32* %74, align 4, !mcsema_real_eip !5
  %80 = icmp eq i32 %79, 0, !mcsema_real_eip !5
  br i1 %80, label %block_0x18, label %block_0x26, !mcsema_real_eip !6

block_0x18:                                       ; preds = %entry
  %81 = add i64 %6, -24
  %82 = add i32 %77, 1
  %83 = add i64 %6, -12, !mcsema_real_eip !7
  br label %block_0x70, !mcsema_real_eip !8

block_0x26:                                       ; preds = %entry
  %84 = icmp eq i32 %77, 0, !mcsema_real_eip !9
  %85 = add i64 %6, -32
  %86 = add i32 %79, -1
  %87 = inttoptr i64 %85 to i64*
  %88 = zext i32 %86 to i64
  %89 = xor i32 %86, %79
  br i1 %84, label %block_0x30, label %block_0x4a, !mcsema_real_eip !10

block_0x30:                                       ; preds = %block_0x26
  %90 = and i32 %89, 16
  %91 = and i32 %89, %79
  %92 = trunc i32 %86 to i8
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92)
  %94 = and i8 %93, 1
  %95 = icmp ne i32 %90, 0, !mcsema_real_eip !11
  %96 = icmp eq i8 %94, 0
  %97 = icmp eq i32 %86, 0, !mcsema_real_eip !11
  %98 = icmp slt i32 %86, 0
  %99 = icmp slt i32 %91, 0
  store i64 -4981261766360305936, i64* %87, align 8, !mcsema_real_eip !12
  store i64 %88, i64* %RAX, align 8, !mcsema_real_eip !12
  %100 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %100, align 8
  %101 = extractelement <2 x i64> %4, i32 0
  store i64 %101, i64* %RDX, align 8, !mcsema_real_eip !12
  store i64 1, i64* %RSI, align 8, !mcsema_real_eip !12
  store i64 %88, i64* %RDI, align 8, !mcsema_real_eip !12
  store i64 %85, i64* %RSP, align 8, !mcsema_real_eip !12
  store i64 %70, i64* %RBP, align 8, !mcsema_real_eip !12
  %102 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %102, align 8
  %103 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %103, align 8
  %104 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %104, align 8
  %105 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %105, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !12
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !12
  store i1 %95, i1* %AF, align 1, !mcsema_real_eip !12
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !12
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !12
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !12
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !12
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !12
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !12
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !12
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !12
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !12
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !12
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !12
  %106 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %106, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !12
  %107 = load i64, i64* %RAX, align 8, !mcsema_real_eip !12
  %108 = bitcast i64* %RBX to <2 x i64>*
  %109 = load <2 x i64>, <2 x i64>* %108, align 8
  %110 = bitcast i64* %RDX to <2 x i64>*
  %111 = load <2 x i64>, <2 x i64>* %110, align 8
  %112 = load i64, i64* %RDI, align 8, !mcsema_real_eip !12
  %113 = load i64, i64* %RSP, align 8, !mcsema_real_eip !12
  %114 = load i64, i64* %RBP, align 8, !mcsema_real_eip !12
  %115 = bitcast i64* %R8 to <2 x i64>*
  %116 = load <2 x i64>, <2 x i64>* %115, align 8
  %117 = bitcast i64* %R10 to <2 x i64>*
  %118 = load <2 x i64>, <2 x i64>* %117, align 8
  %119 = bitcast i64* %R12 to <2 x i64>*
  %120 = load <2 x i64>, <2 x i64>* %119, align 8
  %121 = bitcast i64* %R14 to <2 x i64>*
  %122 = load <2 x i64>, <2 x i64>* %121, align 8
  %123 = load i64, i64* %RIP, align 8, !mcsema_real_eip !12
  %124 = load i1, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !12
  %125 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !12
  %126 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  %127 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  %128 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  %129 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  %130 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  %131 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  %132 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  %133 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  %134 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  %135 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  %136 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  %137 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  %138 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  %139 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !12
  %140 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  %141 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  %142 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  %143 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  %144 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  %145 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  %146 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  %147 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  %148 = load i64, i64* %45, align 4
  %149 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  %150 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !12
  %151 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  %152 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !12
  %153 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  %154 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !12
  %155 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !12
  %156 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !12
  %157 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !12
  %158 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !12
  %159 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !12
  %160 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !12
  %161 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !12
  %162 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !12
  %163 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !12
  %164 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !12
  %165 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !12
  %166 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !12
  %167 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !12
  %168 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !12
  %169 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !12
  %170 = bitcast i64* %STACK_BASE to <2 x i64>*
  %171 = load <2 x i64>, <2 x i64>* %170, align 8
  %172 = add i64 %114, -4, !mcsema_real_eip !13
  %173 = trunc i64 %107 to i32, !mcsema_real_eip !13
  br label %block_0x70, !mcsema_real_eip !14

block_0x4a:                                       ; preds = %block_0x26
  %174 = zext i32 %79 to i64, !mcsema_real_eip !15
  %175 = add i32 %77, -1
  %176 = xor i32 %175, %77, !mcsema_real_eip !16
  %177 = and i32 %176, 16, !mcsema_real_eip !16
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !16
  %179 = trunc i32 %175 to i8, !mcsema_real_eip !16
  %180 = tail call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !16
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  %183 = icmp eq i32 %175, 0, !mcsema_real_eip !16
  %184 = icmp slt i32 %175, 0
  %185 = and i32 %176, %77, !mcsema_real_eip !16
  %186 = icmp slt i32 %185, 0
  %187 = zext i32 %175 to i64, !mcsema_real_eip !16
  %188 = add i64 %6, -24, !mcsema_real_eip !17
  %189 = inttoptr i64 %188 to i32*
  store i32 %86, i32* %189, align 4, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %87, align 8, !mcsema_real_eip !18
  store i64 %88, i64* %RAX, align 8, !mcsema_real_eip !18
  %190 = extractelement <2 x i64> %2, i32 0
  store i64 %190, i64* %RBX, align 8, !mcsema_real_eip !18
  store i64 %187, i64* %RCX, align 8, !mcsema_real_eip !18
  %191 = extractelement <2 x i64> %4, i32 0
  store i64 %191, i64* %RDX, align 8, !mcsema_real_eip !18
  store i64 %187, i64* %RSI, align 8, !mcsema_real_eip !18
  store i64 %174, i64* %RDI, align 8, !mcsema_real_eip !18
  store i64 %85, i64* %RSP, align 8, !mcsema_real_eip !18
  store i64 %70, i64* %RBP, align 8, !mcsema_real_eip !18
  %192 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %192, align 8
  %193 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %193, align 8
  %194 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %194, align 8
  %195 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %195, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !18
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %182, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %178, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %184, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !18
  %196 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %196, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !18
  %197 = bitcast %struct.regs* %0 to <2 x i64>*
  %198 = load <2 x i64>, <2 x i64>* %197, align 8
  %199 = bitcast i64* %RCX to <2 x i64>*
  %200 = load <2 x i64>, <2 x i64>* %199, align 8
  %201 = load i64, i64* %RSP, align 8, !mcsema_real_eip !18
  %202 = bitcast i64* %RBP to <2 x i64>*
  %203 = load <2 x i64>, <2 x i64>* %202, align 8
  %204 = bitcast i64* %R9 to <2 x i64>*
  %205 = load <2 x i64>, <2 x i64>* %204, align 8
  %206 = bitcast i64* %R11 to <2 x i64>*
  %207 = load <2 x i64>, <2 x i64>* %206, align 8
  %208 = bitcast i64* %R13 to <2 x i64>*
  %209 = load <2 x i64>, <2 x i64>* %208, align 8
  %210 = bitcast i64* %R15 to <2 x i64>*
  %211 = load <2 x i64>, <2 x i64>* %210, align 8
  %212 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  %213 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  %214 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  %215 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  %216 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  %217 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  %218 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %219 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %220 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %221 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %222 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %223 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %224 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %225 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %226 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %227 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %228 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %229 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %230 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %231 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %232 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %233 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %234 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %235 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %236 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %237 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %238 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %239 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %240 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %241 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %242 = load i64, i64* %45, align 4
  %243 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %244 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !18
  %245 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %246 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !18
  %247 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %248 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  %249 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  %250 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  %251 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  %252 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  %253 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  %254 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  %255 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  %256 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  %257 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  %258 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  %259 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  %260 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  %261 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  %262 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  %263 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  %264 = bitcast i64* %STACK_BASE to <2 x i64>*
  %265 = load <2 x i64>, <2 x i64>* %264, align 8
  %266 = extractelement <2 x i64> %203, i32 0
  %267 = add i64 %266, -16, !mcsema_real_eip !19
  %268 = inttoptr i64 %267 to i32*
  %269 = load i32, i32* %268, align 4, !mcsema_real_eip !19
  %270 = zext i32 %269 to i64, !mcsema_real_eip !19
  %271 = extractelement <2 x i64> %198, i32 0
  %272 = and i64 %271, 4294967295
  %273 = add i64 %201, -8
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %274, align 8, !mcsema_real_eip !20
  %275 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %198, <2 x i64>* %275, align 8
  %276 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> %200, <2 x i64>* %276, align 8
  store i64 %272, i64* %RSI, align 8, !mcsema_real_eip !20
  store i64 %270, i64* %RDI, align 8, !mcsema_real_eip !20
  store i64 %273, i64* %RSP, align 8, !mcsema_real_eip !20
  %277 = bitcast i64* %RBP to <2 x i64>*
  store <2 x i64> %203, <2 x i64>* %277, align 8
  %278 = bitcast i64* %R9 to <2 x i64>*
  store <2 x i64> %205, <2 x i64>* %278, align 8
  %279 = bitcast i64* %R11 to <2 x i64>*
  store <2 x i64> %207, <2 x i64>* %279, align 8
  %280 = bitcast i64* %R13 to <2 x i64>*
  store <2 x i64> %209, <2 x i64>* %280, align 8
  %281 = bitcast i64* %R15 to <2 x i64>*
  store <2 x i64> %211, <2 x i64>* %281, align 8
  store i1 %212, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %213, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %214, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %215, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %216, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %218, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  store i1 %219, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %220, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i3 %221, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i1 %222, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %223, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %224, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %225, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %226, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %227, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %228, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %229, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %230, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %231, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %232, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %233, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i2 %234, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %235, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i1 %236, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %237, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %238, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %239, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %240, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %241, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i64 %242, i64* %45, align 4
  store i16 %243, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i64 %244, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  store i16 %245, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i64 %246, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  store i11 %247, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  store i128 %248, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %249, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %250, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %251, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %252, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %253, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %254, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %255, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %256, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %257, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %258, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %259, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %260, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %261, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %262, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %263, i128* %XMM15, align 1, !mcsema_real_eip !20
  %282 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %265, <2 x i64>* %282, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !20
  %283 = load i64, i64* %RAX, align 8, !mcsema_real_eip !20
  %284 = bitcast i64* %RBX to <2 x i64>*
  %285 = load <2 x i64>, <2 x i64>* %284, align 8
  %286 = bitcast i64* %RDX to <2 x i64>*
  %287 = load <2 x i64>, <2 x i64>* %286, align 8
  %288 = load i64, i64* %RDI, align 8, !mcsema_real_eip !20
  %289 = load i64, i64* %RSP, align 8, !mcsema_real_eip !20
  %290 = load i64, i64* %RBP, align 8, !mcsema_real_eip !20
  %291 = bitcast i64* %R8 to <2 x i64>*
  %292 = load <2 x i64>, <2 x i64>* %291, align 8
  %293 = bitcast i64* %R10 to <2 x i64>*
  %294 = load <2 x i64>, <2 x i64>* %293, align 8
  %295 = bitcast i64* %R12 to <2 x i64>*
  %296 = load <2 x i64>, <2 x i64>* %295, align 8
  %297 = bitcast i64* %R14 to <2 x i64>*
  %298 = load <2 x i64>, <2 x i64>* %297, align 8
  %299 = load i64, i64* %RIP, align 8, !mcsema_real_eip !20
  %300 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %301 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %302 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %303 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %304 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %305 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %306 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %307 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %308 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %309 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %310 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %311 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %312 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %313 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %314 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %315 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %316 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %317 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %318 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %319 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %320 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %321 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %322 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %323 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %324 = load i64, i64* %45, align 4
  %325 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %326 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !20
  %327 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %328 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !20
  %329 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %330 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  %331 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  %332 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  %333 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  %334 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  %335 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  %336 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  %337 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  %338 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  %339 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  %340 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  %341 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  %342 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  %343 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  %344 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  %345 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  %346 = bitcast i64* %STACK_BASE to <2 x i64>*
  %347 = load <2 x i64>, <2 x i64>* %346, align 8
  %348 = add i64 %290, -4, !mcsema_real_eip !21
  %349 = trunc i64 %283 to i32, !mcsema_real_eip !21
  br label %block_0x70, !mcsema_real_eip !22

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %XMM15_val.0 = phi i128 [ %67, %block_0x18 ], [ %169, %block_0x30 ], [ %345, %block_0x4a ]
  %XMM14_val.0 = phi i128 [ %66, %block_0x18 ], [ %168, %block_0x30 ], [ %344, %block_0x4a ]
  %XMM13_val.0 = phi i128 [ %65, %block_0x18 ], [ %167, %block_0x30 ], [ %343, %block_0x4a ]
  %XMM12_val.0 = phi i128 [ %64, %block_0x18 ], [ %166, %block_0x30 ], [ %342, %block_0x4a ]
  %XMM11_val.0 = phi i128 [ %63, %block_0x18 ], [ %165, %block_0x30 ], [ %341, %block_0x4a ]
  %XMM10_val.0 = phi i128 [ %62, %block_0x18 ], [ %164, %block_0x30 ], [ %340, %block_0x4a ]
  %XMM9_val.0 = phi i128 [ %61, %block_0x18 ], [ %163, %block_0x30 ], [ %339, %block_0x4a ]
  %XMM8_val.0 = phi i128 [ %60, %block_0x18 ], [ %162, %block_0x30 ], [ %338, %block_0x4a ]
  %XMM7_val.0 = phi i128 [ %59, %block_0x18 ], [ %161, %block_0x30 ], [ %337, %block_0x4a ]
  %XMM6_val.0 = phi i128 [ %58, %block_0x18 ], [ %160, %block_0x30 ], [ %336, %block_0x4a ]
  %XMM5_val.0 = phi i128 [ %57, %block_0x18 ], [ %159, %block_0x30 ], [ %335, %block_0x4a ]
  %XMM4_val.0 = phi i128 [ %56, %block_0x18 ], [ %158, %block_0x30 ], [ %334, %block_0x4a ]
  %XMM3_val.0 = phi i128 [ %55, %block_0x18 ], [ %157, %block_0x30 ], [ %333, %block_0x4a ]
  %XMM2_val.0 = phi i128 [ %54, %block_0x18 ], [ %156, %block_0x30 ], [ %332, %block_0x4a ]
  %XMM1_val.0 = phi i128 [ %53, %block_0x18 ], [ %155, %block_0x30 ], [ %331, %block_0x4a ]
  %XMM0_val.0 = phi i128 [ %52, %block_0x18 ], [ %154, %block_0x30 ], [ %330, %block_0x4a ]
  %FPU_FOPCODE_val.0 = phi i11 [ %51, %block_0x18 ], [ %153, %block_0x30 ], [ %329, %block_0x4a ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %50, %block_0x18 ], [ %152, %block_0x30 ], [ %328, %block_0x4a ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %49, %block_0x18 ], [ %151, %block_0x30 ], [ %327, %block_0x4a ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %48, %block_0x18 ], [ %150, %block_0x30 ], [ %326, %block_0x4a ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %47, %block_0x18 ], [ %149, %block_0x30 ], [ %325, %block_0x4a ]
  %FPU_TAG_val.sroa.0.0 = phi i64 [ %46, %block_0x18 ], [ %148, %block_0x30 ], [ %324, %block_0x4a ]
  %FPU_IM_val.0 = phi i1 [ %43, %block_0x18 ], [ %147, %block_0x30 ], [ %323, %block_0x4a ]
  %FPU_DM_val.0 = phi i1 [ %42, %block_0x18 ], [ %146, %block_0x30 ], [ %322, %block_0x4a ]
  %FPU_ZM_val.0 = phi i1 [ %41, %block_0x18 ], [ %145, %block_0x30 ], [ %321, %block_0x4a ]
  %FPU_OM_val.0 = phi i1 [ %40, %block_0x18 ], [ %144, %block_0x30 ], [ %320, %block_0x4a ]
  %FPU_UM_val.0 = phi i1 [ %39, %block_0x18 ], [ %143, %block_0x30 ], [ %319, %block_0x4a ]
  %FPU_PM_val.0 = phi i1 [ %38, %block_0x18 ], [ %142, %block_0x30 ], [ %318, %block_0x4a ]
  %FPU_PC_val.0 = phi i2 [ %37, %block_0x18 ], [ %141, %block_0x30 ], [ %317, %block_0x4a ]
  %FPU_RC_val.0 = phi i2 [ %36, %block_0x18 ], [ %140, %block_0x30 ], [ %316, %block_0x4a ]
  %FPU_X_val.0 = phi i1 [ %35, %block_0x18 ], [ %139, %block_0x30 ], [ %315, %block_0x4a ]
  %FPU_IE_val.0 = phi i1 [ %34, %block_0x18 ], [ %138, %block_0x30 ], [ %314, %block_0x4a ]
  %FPU_DE_val.0 = phi i1 [ %33, %block_0x18 ], [ %137, %block_0x30 ], [ %313, %block_0x4a ]
  %FPU_ZE_val.0 = phi i1 [ %32, %block_0x18 ], [ %136, %block_0x30 ], [ %312, %block_0x4a ]
  %FPU_OE_val.0 = phi i1 [ %31, %block_0x18 ], [ %135, %block_0x30 ], [ %311, %block_0x4a ]
  %FPU_UE_val.0 = phi i1 [ %30, %block_0x18 ], [ %134, %block_0x30 ], [ %310, %block_0x4a ]
  %FPU_PE_val.0 = phi i1 [ %29, %block_0x18 ], [ %133, %block_0x30 ], [ %309, %block_0x4a ]
  %FPU_SF_val.0 = phi i1 [ %28, %block_0x18 ], [ %132, %block_0x30 ], [ %308, %block_0x4a ]
  %FPU_ES_val.0 = phi i1 [ %27, %block_0x18 ], [ %131, %block_0x30 ], [ %307, %block_0x4a ]
  %FPU_C0_val.0 = phi i1 [ %26, %block_0x18 ], [ %130, %block_0x30 ], [ %306, %block_0x4a ]
  %FPU_C1_val.0 = phi i1 [ %25, %block_0x18 ], [ %129, %block_0x30 ], [ %305, %block_0x4a ]
  %FPU_C2_val.0 = phi i1 [ %24, %block_0x18 ], [ %128, %block_0x30 ], [ %304, %block_0x4a ]
  %FPU_TOP_val.0 = phi i3 [ %23, %block_0x18 ], [ %127, %block_0x30 ], [ %303, %block_0x4a ]
  %FPU_C3_val.0 = phi i1 [ %22, %block_0x18 ], [ %126, %block_0x30 ], [ %302, %block_0x4a ]
  %FPU_B_val.0 = phi i1 [ %21, %block_0x18 ], [ %125, %block_0x30 ], [ %301, %block_0x4a ]
  %DF_val.0 = phi i1 [ %17, %block_0x18 ], [ %124, %block_0x30 ], [ %300, %block_0x4a ]
  %RIP_val.0 = phi i64 [ %16, %block_0x18 ], [ %123, %block_0x30 ], [ %299, %block_0x4a ]
  %RSP_val.0 = phi i64 [ %81, %block_0x18 ], [ %113, %block_0x30 ], [ %289, %block_0x4a ]
  %RBP_val.0 = phi i64 [ %70, %block_0x18 ], [ %114, %block_0x30 ], [ %290, %block_0x4a ]
  %RDI_val.0 = phi i64 [ %5, %block_0x18 ], [ %112, %block_0x30 ], [ %288, %block_0x4a ]
  %.sink2.in = phi i64 [ %83, %block_0x18 ], [ %172, %block_0x30 ], [ %348, %block_0x4a ]
  %.sink = phi i32 [ %82, %block_0x18 ], [ %173, %block_0x30 ], [ %349, %block_0x4a ]
  %350 = phi <2 x i64> [ %2, %block_0x18 ], [ %109, %block_0x30 ], [ %285, %block_0x4a ]
  %351 = phi <2 x i64> [ %4, %block_0x18 ], [ %111, %block_0x30 ], [ %287, %block_0x4a ]
  %352 = phi <2 x i64> [ %9, %block_0x18 ], [ %116, %block_0x30 ], [ %292, %block_0x4a ]
  %353 = phi <2 x i64> [ %11, %block_0x18 ], [ %118, %block_0x30 ], [ %294, %block_0x4a ]
  %354 = phi <2 x i64> [ %13, %block_0x18 ], [ %120, %block_0x30 ], [ %296, %block_0x4a ]
  %355 = phi <2 x i64> [ %15, %block_0x18 ], [ %122, %block_0x30 ], [ %298, %block_0x4a ]
  %356 = phi <2 x i64> [ %69, %block_0x18 ], [ %171, %block_0x30 ], [ %347, %block_0x4a ]
  %357 = inttoptr i64 %.sink2.in to i32*
  store i32 %.sink, i32* %357, align 4
  %358 = add i64 %RBP_val.0, -4, !mcsema_real_eip !23
  %359 = inttoptr i64 %358 to i32*
  %360 = load i32, i32* %359, align 4, !mcsema_real_eip !23
  %361 = zext i32 %360 to i64, !mcsema_real_eip !23
  %uadd491 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 16)
  %362 = extractvalue { i64, i1 } %uadd491, 0
  %363 = xor i64 %362, %RSP_val.0, !mcsema_real_eip !24
  %364 = and i64 %363, 16
  %365 = icmp eq i64 %364, 0
  %366 = icmp slt i64 %362, 0
  %367 = icmp eq i64 %362, 0, !mcsema_real_eip !24
  %368 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !24
  %369 = and i64 %363, %368, !mcsema_real_eip !24
  %370 = icmp slt i64 %369, 0
  %371 = trunc i64 %362 to i8, !mcsema_real_eip !24
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !24
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  %375 = extractvalue { i64, i1 } %uadd491, 1
  %376 = inttoptr i64 %362 to i64*, !mcsema_real_eip !25
  %377 = load i64, i64* %376, align 8, !mcsema_real_eip !25
  %378 = add i64 %362, 16, !mcsema_real_eip !26
  store i64 %361, i64* %RAX, align 8, !mcsema_real_eip !26
  %379 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %350, <2 x i64>* %379, align 8
  %380 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %351, <2 x i64>* %380, align 8
  store i64 %RDI_val.0, i64* %RDI, align 8, !mcsema_real_eip !26
  store i64 %378, i64* %RSP, align 8, !mcsema_real_eip !26
  store i64 %377, i64* %RBP, align 8, !mcsema_real_eip !26
  %381 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %352, <2 x i64>* %381, align 8
  %382 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %353, <2 x i64>* %382, align 8
  %383 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %354, <2 x i64>* %383, align 8
  %384 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %355, <2 x i64>* %384, align 8
  store i64 %RIP_val.0, i64* %RIP, align 8, !mcsema_real_eip !26
  store i1 %375, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %374, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %365, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %367, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %366, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %370, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  store i64 %FPU_TAG_val.sroa.0.0, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !26
  %385 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %356, <2 x i64>* %385, align 1
  ret void, !mcsema_real_eip !26
}

declare x86_64_sysvcc i64 @atoi(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !27
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !27
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !27
  %1 = bitcast i64* %RBX.i to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !27
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !27
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !27
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !27
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !27
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !27
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !27
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !27
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !27
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !27
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !27
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !27
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !27
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !27
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !27
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !27
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !27
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !27
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !27
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !27
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !27
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !27
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !27
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !27
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !27
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !27
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !27
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !27
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !27
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !27
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !27
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !27
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !27
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !27
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !27
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !27
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !27
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !27
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !27
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !27
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !27
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !27
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !27
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !27
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !27
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !27
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !27
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !27
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !27
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !27
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !27
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !27
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !27
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !27
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !27
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !27
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !27
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !27
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !27
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !27
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !27
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !27
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !27
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !27
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !27
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !27
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !27
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !27
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !27
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !27
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !27
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !27
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !27
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !27
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !27
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !27
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !27
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !27
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !27
  %71 = add i64 %6, -12, !mcsema_real_eip !28
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !28
  %73 = add i64 %6, -16, !mcsema_real_eip !29
  %74 = trunc i64 %5 to i32, !mcsema_real_eip !29
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !29
  %76 = add i64 %6, -24, !mcsema_real_eip !30
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !30
  store i64 %4, i64* %77, align 8, !mcsema_real_eip !30
  %78 = load i32, i32* %75, align 4, !mcsema_real_eip !31
  %79 = add i32 %78, -2
  %80 = xor i32 %79, %78, !mcsema_real_eip !31
  %81 = and i32 %80, 16, !mcsema_real_eip !31
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !31
  %83 = trunc i32 %79 to i8, !mcsema_real_eip !31
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !31
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq i32 %79, 0, !mcsema_real_eip !31
  %88 = icmp slt i32 %79, 0
  %89 = icmp ult i32 %78, 2, !mcsema_real_eip !31
  %90 = and i32 %80, %78, !mcsema_real_eip !31
  %91 = icmp slt i32 %90, 0
  %92 = add i64 %6, -32
  br i1 %87, label %block_0xa0.i, label %sub_80.exit, !mcsema_real_eip !32

block_0xa0.i:                                     ; preds = %driverBlockRaw
  %93 = add i64 %4, 8, !mcsema_real_eip !33
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !33
  %95 = load i64, i64* %94, align 8, !mcsema_real_eip !33
  %96 = tail call x86_64_sysvcc i64 @atoi(i64 %95), !mcsema_real_eip !34
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !35
  br label %sub_80.exit, !mcsema_real_eip !36

sub_80.exit:                                      ; preds = %driverBlockRaw, %block_0xa0.i
  %.sink.i = phi i32 [ %97, %block_0xa0.i ], [ 8, %driverBlockRaw ]
  %98 = inttoptr i64 %92 to i32*
  store i32 %.sink.i, i32* %98, align 4
  %99 = add i64 %6, -28, !mcsema_real_eip !37
  %100 = inttoptr i64 %99 to i32*
  store i32 %.sink.i, i32* %100, align 4, !mcsema_real_eip !37
  %101 = zext i32 %.sink.i to i64, !mcsema_real_eip !38
  %102 = add i64 %6, -36, !mcsema_real_eip !39
  %103 = inttoptr i64 %102 to i32*
  store i32 %.sink.i, i32* %103, align 4, !mcsema_real_eip !39
  %104 = add i64 %6, -48
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !40
  store i64 %101, i64* %RAX.i, align 8, !mcsema_real_eip !40
  %106 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %106, align 8
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !40
  store i64 %101, i64* %RSI.i, align 8, !mcsema_real_eip !40
  store i64 3, i64* %RDI.i, align 8, !mcsema_real_eip !40
  store i64 %104, i64* %RSP.i, align 8, !mcsema_real_eip !40
  store i64 %69, i64* %RBP.i, align 8, !mcsema_real_eip !40
  %107 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %107, align 8
  %108 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %108, align 8
  %109 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %109, align 8
  %110 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %110, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !40
  store i1 %89, i1* %CF.i, align 1, !mcsema_real_eip !40
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !40
  store i1 %82, i1* %AF.i, align 1, !mcsema_real_eip !40
  store i1 %87, i1* %ZF.i, align 1, !mcsema_real_eip !40
  store i1 %88, i1* %SF.i, align 1, !mcsema_real_eip !40
  store i1 %91, i1* %OF.i, align 1, !mcsema_real_eip !40
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !40
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !40
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !40
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !40
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !40
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !40
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !40
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !40
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !40
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !40
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !40
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !40
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !40
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !40
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !40
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !40
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !40
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !40
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !40
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !40
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !40
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !40
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !40
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !40
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !40
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !40
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !40
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !40
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !40
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !40
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !40
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !40
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !40
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !40
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !40
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !40
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !40
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !40
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !40
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !40
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !40
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !40
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !40
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !40
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !40
  %111 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %111, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !40
  %112 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !40
  %113 = bitcast i64* %RBX.i to <2 x i64>*
  %114 = load <2 x i64>, <2 x i64>* %113, align 8
  %115 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !40
  %116 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !40
  %117 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !40
  %118 = bitcast i64* %R9.i to <2 x i64>*
  %119 = load <2 x i64>, <2 x i64>* %118, align 8
  %120 = bitcast i64* %R11.i to <2 x i64>*
  %121 = load <2 x i64>, <2 x i64>* %120, align 8
  %122 = bitcast i64* %R13.i to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 8
  %124 = bitcast i64* %R15.i to <2 x i64>*
  %125 = load <2 x i64>, <2 x i64>* %124, align 8
  %126 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !40
  %127 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !40
  %128 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !40
  %129 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !40
  %130 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !40
  %131 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !40
  %132 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !40
  %133 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !40
  %134 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !40
  %135 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !40
  %136 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !40
  %137 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !40
  %138 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !40
  %139 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !40
  %140 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !40
  %141 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !40
  %142 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !40
  %143 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !40
  %144 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !40
  %145 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !40
  %146 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !40
  %147 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !40
  %148 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !40
  %149 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !40
  %150 = load i64, i64* %44, align 4
  %151 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !40
  %152 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !40
  %153 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !40
  %154 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !40
  %155 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !40
  %156 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !40
  %157 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !40
  %158 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !40
  %159 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !40
  %160 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !40
  %161 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !40
  %162 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !40
  %163 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !40
  %164 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !40
  %165 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !40
  %166 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !40
  %167 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !40
  %168 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !40
  %169 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !40
  %170 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !40
  %171 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !40
  %172 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %173 = load <2 x i64>, <2 x i64>* %172, align 8
  %174 = add i64 %116, -28, !mcsema_real_eip !41
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !41
  %177 = zext i32 %176 to i64, !mcsema_real_eip !41
  %178 = and i64 %112, 4294967295
  %179 = inttoptr i64 %115 to i64*, !mcsema_real_eip !42
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !42
  %181 = add i64 %115, 8, !mcsema_real_eip !42
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !42
  %183 = load i64, i64* %182, align 8, !mcsema_real_eip !42
  %184 = add i64 %115, 16, !mcsema_real_eip !42
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !42
  %186 = load i64, i64* %185, align 8, !mcsema_real_eip !42
  %187 = add i64 %115, 24, !mcsema_real_eip !42
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !42
  %189 = load i64, i64* %188, align 8, !mcsema_real_eip !42
  %190 = add i64 %115, 32
  %191 = inttoptr i64 %190 to i64*
  %192 = load i64, i64* %191, align 8, !mcsema_real_eip !42
  %193 = add i64 %115, 40, !mcsema_real_eip !42
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !42
  %195 = load i64, i64* %194, align 8, !mcsema_real_eip !42
  %196 = extractelement <2 x i64> %114, i32 1
  %197 = extractelement <2 x i64> %119, i32 0
  %198 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %177, i64 %178, i64 %196, i64 %117, i64 %197, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195), !mcsema_real_eip !42
  %199 = add i64 %116, -32, !mcsema_real_eip !43
  %200 = trunc i64 %198 to i32, !mcsema_real_eip !43
  %201 = inttoptr i64 %199 to i32*
  store i32 %200, i32* %201, align 4, !mcsema_real_eip !43
  %202 = xor i64 %190, %115, !mcsema_real_eip !44
  %203 = and i64 %202, 16, !mcsema_real_eip !44
  %204 = icmp ne i64 %203, 0, !mcsema_real_eip !44
  %205 = icmp slt i64 %190, 0
  %206 = icmp eq i64 %190, 0, !mcsema_real_eip !44
  %207 = xor i64 %115, -9223372036854775808, !mcsema_real_eip !44
  %208 = and i64 %202, %207, !mcsema_real_eip !44
  %209 = icmp slt i64 %208, 0
  %210 = trunc i64 %190 to i8, !mcsema_real_eip !44
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !44
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  %214 = icmp ugt i64 %115, -33
  %215 = load i64, i64* %191, align 8, !mcsema_real_eip !45
  %216 = add i64 %115, 48, !mcsema_real_eip !46
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !46
  %217 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %114, <2 x i64>* %217, align 8
  store i64 0, i64* %RDX.i, align 8, !mcsema_real_eip !46
  store i64 %177, i64* %RSI.i, align 8, !mcsema_real_eip !46
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %RDI.i, align 8, !mcsema_real_eip !46
  store i64 %216, i64* %RSP.i, align 8, !mcsema_real_eip !46
  store i64 %215, i64* %RBP.i, align 8, !mcsema_real_eip !46
  store i64 %117, i64* %R8.i, align 8, !mcsema_real_eip !46
  %218 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %119, <2 x i64>* %218, align 8
  %219 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %121, <2 x i64>* %219, align 8
  %220 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %220, align 8
  %221 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %125, <2 x i64>* %221, align 8
  store i1 %214, i1* %CF.i, align 1, !mcsema_real_eip !46
  store i1 %213, i1* %PF.i, align 1, !mcsema_real_eip !46
  store i1 %204, i1* %AF.i, align 1, !mcsema_real_eip !46
  store i1 %206, i1* %ZF.i, align 1, !mcsema_real_eip !46
  store i1 %205, i1* %SF.i, align 1, !mcsema_real_eip !46
  store i1 %209, i1* %OF.i, align 1, !mcsema_real_eip !46
  store i1 %126, i1* %DF.i, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  store i1 %127, i1* %FPU_B.i, align 1, !mcsema_real_eip !46
  store i1 %128, i1* %FPU_C3.i, align 1, !mcsema_real_eip !46
  store i3 %129, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !46
  store i1 %130, i1* %FPU_C2.i, align 1, !mcsema_real_eip !46
  store i1 %131, i1* %FPU_C1.i, align 1, !mcsema_real_eip !46
  store i1 %132, i1* %FPU_C0.i, align 1, !mcsema_real_eip !46
  store i1 %133, i1* %FPU_ES.i, align 1, !mcsema_real_eip !46
  store i1 %134, i1* %FPU_SF.i, align 1, !mcsema_real_eip !46
  store i1 %135, i1* %FPU_PE.i, align 1, !mcsema_real_eip !46
  store i1 %136, i1* %FPU_UE.i, align 1, !mcsema_real_eip !46
  store i1 %137, i1* %FPU_OE.i, align 1, !mcsema_real_eip !46
  store i1 %138, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !46
  store i1 %139, i1* %FPU_DE.i, align 1, !mcsema_real_eip !46
  store i1 %140, i1* %FPU_IE.i, align 1, !mcsema_real_eip !46
  store i1 %141, i1* %FPU_X.i, align 1, !mcsema_real_eip !46
  store i2 %142, i2* %FPU_RC.i, align 1, !mcsema_real_eip !46
  store i2 %143, i2* %FPU_PC.i, align 1, !mcsema_real_eip !46
  store i1 %144, i1* %FPU_PM.i, align 1, !mcsema_real_eip !46
  store i1 %145, i1* %FPU_UM.i, align 1, !mcsema_real_eip !46
  store i1 %146, i1* %FPU_OM.i, align 1, !mcsema_real_eip !46
  store i1 %147, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !46
  store i1 %148, i1* %FPU_DM.i, align 1, !mcsema_real_eip !46
  store i1 %149, i1* %FPU_IM.i, align 1, !mcsema_real_eip !46
  store i64 %150, i64* %44, align 4
  store i16 %151, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !46
  store i64 %152, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !46
  store i16 %153, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !46
  store i64 %154, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !46
  store i11 %155, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !46
  store i128 %156, i128* %XMM0.i, align 1, !mcsema_real_eip !46
  store i128 %157, i128* %XMM1.i, align 1, !mcsema_real_eip !46
  store i128 %158, i128* %XMM2.i, align 1, !mcsema_real_eip !46
  store i128 %159, i128* %XMM3.i, align 1, !mcsema_real_eip !46
  store i128 %160, i128* %XMM4.i, align 1, !mcsema_real_eip !46
  store i128 %161, i128* %XMM5.i, align 1, !mcsema_real_eip !46
  store i128 %162, i128* %XMM6.i, align 1, !mcsema_real_eip !46
  store i128 %163, i128* %XMM7.i, align 1, !mcsema_real_eip !46
  store i128 %164, i128* %XMM8.i, align 1, !mcsema_real_eip !46
  store i128 %165, i128* %XMM9.i, align 1, !mcsema_real_eip !46
  store i128 %166, i128* %XMM10.i, align 1, !mcsema_real_eip !46
  store i128 %167, i128* %XMM11.i, align 1, !mcsema_real_eip !46
  store i128 %168, i128* %XMM12.i, align 1, !mcsema_real_eip !46
  store i128 %169, i128* %XMM13.i, align 1, !mcsema_real_eip !46
  store i128 %170, i128* %XMM14.i, align 1, !mcsema_real_eip !46
  store i128 %171, i128* %XMM15.i, align 1, !mcsema_real_eip !46
  %222 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %173, <2 x i64>* %222, align 1
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 11}
!5 = !{i64 14}
!6 = !{i64 18}
!7 = !{i64 30}
!8 = !{i64 33}
!9 = !{i64 38}
!10 = !{i64 42}
!11 = !{i64 56}
!12 = !{i64 61}
!13 = !{i64 66}
!14 = !{i64 69}
!15 = !{i64 80}
!16 = !{i64 86}
!17 = !{i64 91}
!18 = !{i64 94}
!19 = !{i64 99}
!20 = !{i64 104}
!21 = !{i64 109}
!22 = !{i64 48}
!23 = !{i64 112}
!24 = !{i64 115}
!25 = !{i64 119}
!26 = !{i64 120}
!27 = !{i64 128}
!28 = !{i64 136}
!29 = !{i64 143}
!30 = !{i64 146}
!31 = !{i64 150}
!32 = !{i64 154}
!33 = !{i64 164}
!34 = !{i64 168}
!35 = !{i64 173}
!36 = !{i64 176}
!37 = !{i64 202}
!38 = !{i64 205}
!39 = !{i64 211}
!40 = !{i64 216}
!41 = !{i64 231}
!42 = !{i64 238}
!43 = !{i64 245}
!44 = !{i64 250}
!45 = !{i64 254}
!46 = !{i64 255}
