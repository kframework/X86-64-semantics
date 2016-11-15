; ModuleID = 'Output/test_32.clang.opt.bc'
source_filename = "Output/test_32.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [5 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64

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
  %72 = add i64 %6, -40
  %73 = add i64 %6, -24, !mcsema_real_eip !3
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %74, align 8, !mcsema_real_eip !3
  %75 = add i64 %5, -2
  %76 = xor i64 %75, %5, !mcsema_real_eip !4
  %77 = icmp ult i64 %5, 2, !mcsema_real_eip !4
  br i1 %77, label %block_0x50, label %block_0x24, !mcsema_real_eip !5

block_0x24:                                       ; preds = %entry
  %78 = and i64 %76, %5, !mcsema_real_eip !4
  %79 = trunc i64 %75 to i8, !mcsema_real_eip !4
  %80 = tail call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !4
  %81 = and i8 %80, 1
  %82 = and i64 %76, 16, !mcsema_real_eip !4
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !6
  %84 = icmp eq i8 %81, 0
  %85 = icmp eq i64 %75, 0, !mcsema_real_eip !6
  %86 = icmp slt i64 %75, 0
  %87 = icmp slt i64 %78, 0
  %88 = add i64 %6, -48
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %89, align 8, !mcsema_real_eip !7
  store i64 %75, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %75, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %70, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i11 %51, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %67, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %96, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !7
  %97 = bitcast %struct.regs* %0 to <2 x i64>*
  %98 = load <2 x i64>, <2 x i64>* %97, align 8
  %99 = bitcast i64* %RCX to <2 x i64>*
  %100 = load <2 x i64>, <2 x i64>* %99, align 8
  %101 = load i64, i64* %RSI, align 8, !mcsema_real_eip !7
  %102 = load i64, i64* %RSP, align 8, !mcsema_real_eip !7
  %103 = bitcast i64* %RBP to <2 x i64>*
  %104 = load <2 x i64>, <2 x i64>* %103, align 8
  %105 = bitcast i64* %R9 to <2 x i64>*
  %106 = load <2 x i64>, <2 x i64>* %105, align 8
  %107 = bitcast i64* %R11 to <2 x i64>*
  %108 = load <2 x i64>, <2 x i64>* %107, align 8
  %109 = bitcast i64* %R13 to <2 x i64>*
  %110 = load <2 x i64>, <2 x i64>* %109, align 8
  %111 = bitcast i64* %R15 to <2 x i64>*
  %112 = load <2 x i64>, <2 x i64>* %111, align 8
  %113 = load i1, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !7
  %114 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !7
  %115 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  %116 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  %117 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  %118 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  %119 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  %120 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  %121 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  %122 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  %123 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  %124 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  %125 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  %126 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  %127 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  %128 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !7
  %129 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  %130 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  %131 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  %132 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  %133 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  %134 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  %135 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  %136 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  %137 = load i64, i64* %45, align 4
  %138 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  %139 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !7
  %140 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  %141 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !7
  %142 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !7
  %143 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !7
  %144 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !7
  %145 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !7
  %146 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !7
  %147 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !7
  %148 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !7
  %149 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !7
  %150 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !7
  %151 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !7
  %152 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !7
  %153 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !7
  %154 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !7
  %155 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !7
  %156 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !7
  %157 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !7
  %158 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !7
  %159 = bitcast i64* %STACK_BASE to <2 x i64>*
  %160 = load <2 x i64>, <2 x i64>* %159, align 8
  %161 = extractelement <2 x i64> %104, i32 0
  %162 = add i64 %161, -16, !mcsema_real_eip !8
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !8
  %164 = load i64, i64* %163, align 8, !mcsema_real_eip !8
  %165 = add i64 %164, -1
  %166 = xor i64 %165, %164, !mcsema_real_eip !9
  %167 = and i64 %166, 16, !mcsema_real_eip !9
  %168 = icmp ne i64 %167, 0, !mcsema_real_eip !9
  %169 = trunc i64 %165 to i8, !mcsema_real_eip !9
  %170 = tail call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !9
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  %173 = icmp eq i64 %165, 0, !mcsema_real_eip !9
  %174 = icmp slt i64 %165, 0
  %175 = icmp eq i64 %164, 0
  %176 = and i64 %166, %164, !mcsema_real_eip !9
  %177 = icmp slt i64 %176, 0
  %178 = add i64 %161, -24, !mcsema_real_eip !10
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !10
  %180 = extractelement <2 x i64> %98, i32 0
  store i64 %180, i64* %179, align 8, !mcsema_real_eip !10
  %181 = add i64 %102, -8
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !11
  store i64 -4981261766360305936, i64* %182, align 8, !mcsema_real_eip !11
  %183 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %98, <2 x i64>* %183, align 8
  %184 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> %100, <2 x i64>* %184, align 8
  store i64 %101, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %165, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %181, i64* %RSP, align 8, !mcsema_real_eip !11
  %185 = bitcast i64* %RBP to <2 x i64>*
  store <2 x i64> %104, <2 x i64>* %185, align 8
  %186 = bitcast i64* %R9 to <2 x i64>*
  store <2 x i64> %106, <2 x i64>* %186, align 8
  %187 = bitcast i64* %R11 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %187, align 8
  %188 = bitcast i64* %R13 to <2 x i64>*
  store <2 x i64> %110, <2 x i64>* %188, align 8
  %189 = bitcast i64* %R15 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %189, align 8
  store i1 %175, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %172, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %168, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %173, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %174, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %113, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %114, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %115, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %116, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %117, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %118, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %119, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %120, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %121, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %122, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %123, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %124, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %125, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %126, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %127, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %128, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %129, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %130, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %131, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %132, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %133, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %134, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %135, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %136, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %137, i64* %45, align 4
  store i16 %138, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %139, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %140, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %141, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i11 %142, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  store i128 %143, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %144, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %145, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %146, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %147, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %148, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %149, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %150, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %151, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %152, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %153, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %154, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %155, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %156, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %157, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %158, i128* %XMM15, align 1, !mcsema_real_eip !11
  %190 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %160, <2 x i64>* %190, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !11
  %191 = load i64, i64* %RAX, align 8, !mcsema_real_eip !11
  %192 = bitcast i64* %RBX to <2 x i64>*
  %193 = load <2 x i64>, <2 x i64>* %192, align 8
  %194 = bitcast i64* %RDX to <2 x i64>*
  %195 = load <2 x i64>, <2 x i64>* %194, align 8
  %196 = load i64, i64* %RSP, align 8, !mcsema_real_eip !11
  %197 = load i64, i64* %RBP, align 8, !mcsema_real_eip !11
  %198 = bitcast i64* %R8 to <2 x i64>*
  %199 = load <2 x i64>, <2 x i64>* %198, align 8
  %200 = bitcast i64* %R10 to <2 x i64>*
  %201 = load <2 x i64>, <2 x i64>* %200, align 8
  %202 = bitcast i64* %R12 to <2 x i64>*
  %203 = load <2 x i64>, <2 x i64>* %202, align 8
  %204 = bitcast i64* %R14 to <2 x i64>*
  %205 = load <2 x i64>, <2 x i64>* %204, align 8
  %206 = load i64, i64* %RIP, align 8, !mcsema_real_eip !11
  %207 = load i1, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %208 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %209 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %210 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %211 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %212 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %213 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %214 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %215 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %216 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %217 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %218 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %219 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %220 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %221 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %222 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %223 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %224 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %225 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %226 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %227 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %228 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %229 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %230 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %231 = load i64, i64* %45, align 4
  %232 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %233 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !11
  %234 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %235 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !11
  %236 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  %237 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !11
  %238 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !11
  %239 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !11
  %240 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !11
  %241 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !11
  %242 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !11
  %243 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !11
  %244 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !11
  %245 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !11
  %246 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !11
  %247 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !11
  %248 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !11
  %249 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !11
  %250 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !11
  %251 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !11
  %252 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !11
  %253 = bitcast i64* %STACK_BASE to <2 x i64>*
  %254 = load <2 x i64>, <2 x i64>* %253, align 8
  %255 = add i64 %197, -24, !mcsema_real_eip !12
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !12
  %257 = load i64, i64* %256, align 8, !mcsema_real_eip !12
  %258 = add i64 %257, %191
  br label %block_0x50, !mcsema_real_eip !13

block_0x50:                                       ; preds = %entry, %block_0x24
  %XMM15_val.0 = phi i128 [ %67, %entry ], [ %252, %block_0x24 ]
  %XMM14_val.0 = phi i128 [ %66, %entry ], [ %251, %block_0x24 ]
  %XMM13_val.0 = phi i128 [ %65, %entry ], [ %250, %block_0x24 ]
  %XMM12_val.0 = phi i128 [ %64, %entry ], [ %249, %block_0x24 ]
  %XMM11_val.0 = phi i128 [ %63, %entry ], [ %248, %block_0x24 ]
  %XMM10_val.0 = phi i128 [ %62, %entry ], [ %247, %block_0x24 ]
  %XMM9_val.0 = phi i128 [ %61, %entry ], [ %246, %block_0x24 ]
  %XMM8_val.0 = phi i128 [ %60, %entry ], [ %245, %block_0x24 ]
  %XMM7_val.0 = phi i128 [ %59, %entry ], [ %244, %block_0x24 ]
  %XMM6_val.0 = phi i128 [ %58, %entry ], [ %243, %block_0x24 ]
  %XMM5_val.0 = phi i128 [ %57, %entry ], [ %242, %block_0x24 ]
  %XMM4_val.0 = phi i128 [ %56, %entry ], [ %241, %block_0x24 ]
  %XMM3_val.0 = phi i128 [ %55, %entry ], [ %240, %block_0x24 ]
  %XMM2_val.0 = phi i128 [ %54, %entry ], [ %239, %block_0x24 ]
  %XMM1_val.0 = phi i128 [ %53, %entry ], [ %238, %block_0x24 ]
  %XMM0_val.0 = phi i128 [ %52, %entry ], [ %237, %block_0x24 ]
  %FPU_FOPCODE_val.0 = phi i11 [ %51, %entry ], [ %236, %block_0x24 ]
  %FPU_LASTDATA_OFF_val.0 = phi i64 [ %50, %entry ], [ %235, %block_0x24 ]
  %FPU_LASTDATA_SEG_val.0 = phi i16 [ %49, %entry ], [ %234, %block_0x24 ]
  %FPU_LASTIP_OFF_val.0 = phi i64 [ %48, %entry ], [ %233, %block_0x24 ]
  %FPU_LASTIP_SEG_val.0 = phi i16 [ %47, %entry ], [ %232, %block_0x24 ]
  %FPU_TAG_val.sroa.0.0 = phi i64 [ %46, %entry ], [ %231, %block_0x24 ]
  %FPU_IM_val.0 = phi i1 [ %43, %entry ], [ %230, %block_0x24 ]
  %FPU_DM_val.0 = phi i1 [ %42, %entry ], [ %229, %block_0x24 ]
  %FPU_ZM_val.0 = phi i1 [ %41, %entry ], [ %228, %block_0x24 ]
  %FPU_OM_val.0 = phi i1 [ %40, %entry ], [ %227, %block_0x24 ]
  %FPU_UM_val.0 = phi i1 [ %39, %entry ], [ %226, %block_0x24 ]
  %FPU_PM_val.0 = phi i1 [ %38, %entry ], [ %225, %block_0x24 ]
  %FPU_PC_val.0 = phi i2 [ %37, %entry ], [ %224, %block_0x24 ]
  %FPU_RC_val.0 = phi i2 [ %36, %entry ], [ %223, %block_0x24 ]
  %FPU_X_val.0 = phi i1 [ %35, %entry ], [ %222, %block_0x24 ]
  %FPU_IE_val.0 = phi i1 [ %34, %entry ], [ %221, %block_0x24 ]
  %FPU_DE_val.0 = phi i1 [ %33, %entry ], [ %220, %block_0x24 ]
  %FPU_ZE_val.0 = phi i1 [ %32, %entry ], [ %219, %block_0x24 ]
  %FPU_OE_val.0 = phi i1 [ %31, %entry ], [ %218, %block_0x24 ]
  %FPU_UE_val.0 = phi i1 [ %30, %entry ], [ %217, %block_0x24 ]
  %FPU_PE_val.0 = phi i1 [ %29, %entry ], [ %216, %block_0x24 ]
  %FPU_SF_val.0 = phi i1 [ %28, %entry ], [ %215, %block_0x24 ]
  %FPU_ES_val.0 = phi i1 [ %27, %entry ], [ %214, %block_0x24 ]
  %FPU_C0_val.0 = phi i1 [ %26, %entry ], [ %213, %block_0x24 ]
  %FPU_C1_val.0 = phi i1 [ %25, %entry ], [ %212, %block_0x24 ]
  %FPU_C2_val.0 = phi i1 [ %24, %entry ], [ %211, %block_0x24 ]
  %FPU_TOP_val.0 = phi i3 [ %23, %entry ], [ %210, %block_0x24 ]
  %FPU_C3_val.0 = phi i1 [ %22, %entry ], [ %209, %block_0x24 ]
  %FPU_B_val.0 = phi i1 [ %21, %entry ], [ %208, %block_0x24 ]
  %DF_val.0 = phi i1 [ %17, %entry ], [ %207, %block_0x24 ]
  %RIP_val.0 = phi i64 [ %16, %entry ], [ %206, %block_0x24 ]
  %RSP_val.0 = phi i64 [ %72, %entry ], [ %196, %block_0x24 ]
  %RBP_val.0 = phi i64 [ %70, %entry ], [ %197, %block_0x24 ]
  %RDI_val.0 = phi i64 [ %5, %entry ], [ %258, %block_0x24 ]
  %.sink = phi i64 [ 1, %entry ], [ %258, %block_0x24 ]
  %259 = phi <2 x i64> [ %2, %entry ], [ %193, %block_0x24 ]
  %260 = phi <2 x i64> [ %4, %entry ], [ %195, %block_0x24 ]
  %261 = phi <2 x i64> [ %9, %entry ], [ %199, %block_0x24 ]
  %262 = phi <2 x i64> [ %11, %entry ], [ %201, %block_0x24 ]
  %263 = phi <2 x i64> [ %13, %entry ], [ %203, %block_0x24 ]
  %264 = phi <2 x i64> [ %15, %entry ], [ %205, %block_0x24 ]
  %265 = phi <2 x i64> [ %69, %entry ], [ %254, %block_0x24 ]
  %266 = add i64 %RBP_val.0, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %.sink, i64* %267, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0, i64 32)
  %268 = extractvalue { i64, i1 } %uadd, 0
  %269 = xor i64 %268, %RSP_val.0, !mcsema_real_eip !14
  %270 = and i64 %269, 16, !mcsema_real_eip !14
  %271 = icmp ne i64 %270, 0, !mcsema_real_eip !14
  %272 = icmp slt i64 %268, 0
  %273 = icmp eq i64 %268, 0, !mcsema_real_eip !14
  %274 = xor i64 %RSP_val.0, -9223372036854775808, !mcsema_real_eip !14
  %275 = and i64 %269, %274, !mcsema_real_eip !14
  %276 = icmp slt i64 %275, 0
  %277 = trunc i64 %268 to i8, !mcsema_real_eip !14
  %278 = tail call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !14
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  %281 = extractvalue { i64, i1 } %uadd, 1
  %282 = inttoptr i64 %268 to i64*, !mcsema_real_eip !15
  %283 = load i64, i64* %282, align 8, !mcsema_real_eip !15
  %284 = add i64 %268, 16, !mcsema_real_eip !16
  store i64 %.sink, i64* %RAX, align 8, !mcsema_real_eip !16
  %285 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %259, <2 x i64>* %285, align 8
  %286 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %260, <2 x i64>* %286, align 8
  store i64 %RDI_val.0, i64* %RDI, align 8, !mcsema_real_eip !16
  store i64 %284, i64* %RSP, align 8, !mcsema_real_eip !16
  store i64 %283, i64* %RBP, align 8, !mcsema_real_eip !16
  %287 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %261, <2 x i64>* %287, align 8
  %288 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %262, <2 x i64>* %288, align 8
  %289 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %263, <2 x i64>* %289, align 8
  %290 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %264, <2 x i64>* %290, align 8
  store i64 %RIP_val.0, i64* %RIP, align 8, !mcsema_real_eip !16
  store i1 %281, i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %280, i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %273, i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %272, i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %276, i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %DF_val.0, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %FPU_B_val.0, i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %FPU_C3_val.0, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i3 %FPU_TOP_val.0, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i1 %FPU_C2_val.0, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %FPU_C1_val.0, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %FPU_C0_val.0, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %FPU_ES_val.0, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %FPU_SF_val.0, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %FPU_PE_val.0, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %FPU_UE_val.0, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %FPU_OE_val.0, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %FPU_ZE_val.0, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %FPU_DE_val.0, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %FPU_IE_val.0, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %FPU_X_val.0, i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i2 %FPU_RC_val.0, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %FPU_PC_val.0, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i1 %FPU_PM_val.0, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %FPU_UM_val.0, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %FPU_OM_val.0, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %FPU_ZM_val.0, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %FPU_DM_val.0, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %FPU_IM_val.0, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  store i64 %FPU_TAG_val.sroa.0.0, i64* %45, align 4
  store i16 %FPU_LASTIP_SEG_val.0, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i64 %FPU_LASTIP_OFF_val.0, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  store i16 %FPU_LASTDATA_SEG_val.0, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i64 %FPU_LASTDATA_OFF_val.0, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  store i11 %FPU_FOPCODE_val.0, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  store i128 %XMM0_val.0, i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %XMM1_val.0, i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %XMM2_val.0, i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %XMM3_val.0, i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %XMM4_val.0, i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %XMM5_val.0, i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %XMM6_val.0, i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %XMM7_val.0, i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %XMM8_val.0, i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %XMM9_val.0, i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %XMM10_val.0, i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %XMM11_val.0, i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %XMM12_val.0, i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %XMM13_val.0, i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %XMM14_val.0, i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %XMM15_val.0, i128* %XMM15, align 1, !mcsema_real_eip !16
  %291 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %265, <2 x i64>* %291, align 1
  ret void, !mcsema_real_eip !16
}

declare x86_64_sysvcc i64 @atoi(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !17
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !17
  %1 = bitcast i64* %RBX.i to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !17
  %3 = bitcast i64* %RDX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !17
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !17
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !17
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !17
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !17
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !17
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !17
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !17
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !17
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !17
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !17
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !17
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !17
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !17
  %71 = add i64 %6, -12, !mcsema_real_eip !18
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !18
  %73 = add i64 %6, -16, !mcsema_real_eip !19
  %74 = trunc i64 %5 to i32, !mcsema_real_eip !19
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !19
  %76 = add i64 %6, -24, !mcsema_real_eip !20
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !20
  %78 = extractelement <2 x i64> %4, i32 1
  store i64 %78, i64* %77, align 8, !mcsema_real_eip !20
  %79 = load i32, i32* %75, align 4, !mcsema_real_eip !21
  %80 = add i32 %79, -2
  %81 = xor i32 %80, %79, !mcsema_real_eip !21
  %82 = and i32 %81, 16, !mcsema_real_eip !21
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !21
  %84 = trunc i32 %80 to i8, !mcsema_real_eip !21
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !21
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = icmp eq i32 %80, 0, !mcsema_real_eip !21
  %89 = icmp slt i32 %80, 0
  %90 = icmp ult i32 %79, 2, !mcsema_real_eip !21
  %91 = and i32 %81, %79, !mcsema_real_eip !21
  %92 = icmp slt i32 %91, 0
  %93 = add i64 %6, -32
  br i1 %88, label %block_0x80.i, label %sub_60.exit, !mcsema_real_eip !22

block_0x80.i:                                     ; preds = %driverBlockRaw
  %94 = add i64 %78, 8, !mcsema_real_eip !23
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !23
  %96 = load i64, i64* %95, align 8, !mcsema_real_eip !23
  %97 = tail call x86_64_sysvcc i64 @atoi(i64 %96), !mcsema_real_eip !24
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !25
  br label %sub_60.exit, !mcsema_real_eip !26

sub_60.exit:                                      ; preds = %driverBlockRaw, %block_0x80.i
  %.sink.i = phi i32 [ %98, %block_0x80.i ], [ 20, %driverBlockRaw ]
  %99 = inttoptr i64 %93 to i32*
  store i32 %.sink.i, i32* %99, align 4
  %100 = zext i32 %.sink.i to i64, !mcsema_real_eip !27
  %101 = add i64 %6, -28, !mcsema_real_eip !28
  %102 = inttoptr i64 %101 to i32*
  store i32 %.sink.i, i32* %102, align 4, !mcsema_real_eip !28
  %103 = sext i32 %.sink.i to i64, !mcsema_real_eip !29
  %104 = add i64 %6, -48
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !30
  store i64 %100, i64* %RAX.i, align 8, !mcsema_real_eip !30
  %106 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %106, align 8
  %107 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %107, align 8
  store i64 %103, i64* %RDI.i, align 8, !mcsema_real_eip !30
  store i64 %104, i64* %RSP.i, align 8, !mcsema_real_eip !30
  store i64 %69, i64* %RBP.i, align 8, !mcsema_real_eip !30
  %108 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %108, align 8
  %109 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %109, align 8
  %110 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %110, align 8
  %111 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %111, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !30
  store i1 %90, i1* %CF.i, align 1, !mcsema_real_eip !30
  store i1 %87, i1* %PF.i, align 1, !mcsema_real_eip !30
  store i1 %83, i1* %AF.i, align 1, !mcsema_real_eip !30
  store i1 %88, i1* %ZF.i, align 1, !mcsema_real_eip !30
  store i1 %89, i1* %SF.i, align 1, !mcsema_real_eip !30
  store i1 %92, i1* %OF.i, align 1, !mcsema_real_eip !30
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !30
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !30
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !30
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !30
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !30
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !30
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !30
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !30
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !30
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !30
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !30
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !30
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !30
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !30
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !30
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !30
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !30
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !30
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !30
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !30
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !30
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !30
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !30
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !30
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !30
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !30
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !30
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !30
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !30
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !30
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !30
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !30
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !30
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !30
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !30
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !30
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !30
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !30
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !30
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !30
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !30
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !30
  %112 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %112, align 1
  tail call x86_64_sysvcc void @sub_0(%struct.regs* nonnull %0), !mcsema_real_eip !30
  %113 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !30
  %114 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !30
  %115 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !30
  %116 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !30
  %117 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !30
  %118 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !30
  %119 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !30
  %120 = bitcast i64* %R9.i to <2 x i64>*
  %121 = load <2 x i64>, <2 x i64>* %120, align 8
  %122 = bitcast i64* %R11.i to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 8
  %124 = bitcast i64* %R13.i to <2 x i64>*
  %125 = load <2 x i64>, <2 x i64>* %124, align 8
  %126 = bitcast i64* %R15.i to <2 x i64>*
  %127 = load <2 x i64>, <2 x i64>* %126, align 8
  %128 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %129 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !30
  %130 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !30
  %131 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !30
  %132 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !30
  %133 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !30
  %134 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !30
  %135 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !30
  %136 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !30
  %137 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !30
  %138 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !30
  %139 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !30
  %140 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !30
  %141 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !30
  %142 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !30
  %143 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !30
  %144 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !30
  %145 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !30
  %146 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !30
  %147 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !30
  %148 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !30
  %149 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !30
  %150 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !30
  %151 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !30
  %152 = load i64, i64* %44, align 4
  %153 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !30
  %154 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !30
  %155 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !30
  %156 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !30
  %157 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !30
  %158 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !30
  %159 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !30
  %160 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !30
  %161 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !30
  %162 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !30
  %163 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !30
  %164 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !30
  %165 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !30
  %166 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !30
  %167 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !30
  %168 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !30
  %169 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !30
  %170 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !30
  %171 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !30
  %172 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !30
  %173 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !30
  %174 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %175 = load <2 x i64>, <2 x i64>* %174, align 8
  %176 = inttoptr i64 %117 to i64*, !mcsema_real_eip !31
  %177 = load i64, i64* %176, align 8, !mcsema_real_eip !31
  %178 = add i64 %117, 8, !mcsema_real_eip !31
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !31
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !31
  %181 = add i64 %117, 16, !mcsema_real_eip !31
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !31
  %183 = load i64, i64* %182, align 8, !mcsema_real_eip !31
  %184 = add i64 %117, 24, !mcsema_real_eip !31
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !31
  %186 = load i64, i64* %185, align 8, !mcsema_real_eip !31
  %187 = add i64 %117, 32
  %188 = inttoptr i64 %187 to i64*
  %189 = load i64, i64* %188, align 8, !mcsema_real_eip !31
  %190 = add i64 %117, 40, !mcsema_real_eip !31
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !31
  %192 = load i64, i64* %191, align 8, !mcsema_real_eip !31
  %193 = extractelement <2 x i64> %121, i32 0
  %194 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %113, i64 %116, i64 %115, i64 %119, i64 %193, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192), !mcsema_real_eip !31
  %195 = add i64 %118, -28, !mcsema_real_eip !32
  %196 = trunc i64 %194 to i32, !mcsema_real_eip !32
  %197 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %197, align 4, !mcsema_real_eip !32
  %198 = xor i64 %187, %117, !mcsema_real_eip !33
  %199 = and i64 %198, 16, !mcsema_real_eip !33
  %200 = icmp ne i64 %199, 0, !mcsema_real_eip !33
  %201 = icmp slt i64 %187, 0
  %202 = icmp eq i64 %187, 0, !mcsema_real_eip !33
  %203 = xor i64 %117, -9223372036854775808, !mcsema_real_eip !33
  %204 = and i64 %198, %203, !mcsema_real_eip !33
  %205 = icmp slt i64 %204, 0
  %206 = trunc i64 %187 to i8, !mcsema_real_eip !33
  %207 = tail call i8 @llvm.ctpop.i8(i8 %206), !mcsema_real_eip !33
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  %210 = icmp ugt i64 %117, -33
  %211 = load i64, i64* %188, align 8, !mcsema_real_eip !34
  %212 = add i64 %117, 48, !mcsema_real_eip !35
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %114, i64* %RBX.i, align 8, !mcsema_real_eip !35
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !35
  store i64 %116, i64* %RDX.i, align 8, !mcsema_real_eip !35
  store i64 %113, i64* %RSI.i, align 8, !mcsema_real_eip !35
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %RDI.i, align 8, !mcsema_real_eip !35
  store i64 %212, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %211, i64* %RBP.i, align 8, !mcsema_real_eip !35
  store i64 %119, i64* %R8.i, align 8, !mcsema_real_eip !35
  %213 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> %121, <2 x i64>* %213, align 8
  %214 = bitcast i64* %R11.i to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %214, align 8
  %215 = bitcast i64* %R13.i to <2 x i64>*
  store <2 x i64> %125, <2 x i64>* %215, align 8
  %216 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %127, <2 x i64>* %216, align 8
  store i1 %210, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %209, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %200, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %202, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %201, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %205, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %128, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  store i1 %129, i1* %FPU_B.i, align 1, !mcsema_real_eip !35
  store i1 %130, i1* %FPU_C3.i, align 1, !mcsema_real_eip !35
  store i3 %131, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !35
  store i1 %132, i1* %FPU_C2.i, align 1, !mcsema_real_eip !35
  store i1 %133, i1* %FPU_C1.i, align 1, !mcsema_real_eip !35
  store i1 %134, i1* %FPU_C0.i, align 1, !mcsema_real_eip !35
  store i1 %135, i1* %FPU_ES.i, align 1, !mcsema_real_eip !35
  store i1 %136, i1* %FPU_SF.i, align 1, !mcsema_real_eip !35
  store i1 %137, i1* %FPU_PE.i, align 1, !mcsema_real_eip !35
  store i1 %138, i1* %FPU_UE.i, align 1, !mcsema_real_eip !35
  store i1 %139, i1* %FPU_OE.i, align 1, !mcsema_real_eip !35
  store i1 %140, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !35
  store i1 %141, i1* %FPU_DE.i, align 1, !mcsema_real_eip !35
  store i1 %142, i1* %FPU_IE.i, align 1, !mcsema_real_eip !35
  store i1 %143, i1* %FPU_X.i, align 1, !mcsema_real_eip !35
  store i2 %144, i2* %FPU_RC.i, align 1, !mcsema_real_eip !35
  store i2 %145, i2* %FPU_PC.i, align 1, !mcsema_real_eip !35
  store i1 %146, i1* %FPU_PM.i, align 1, !mcsema_real_eip !35
  store i1 %147, i1* %FPU_UM.i, align 1, !mcsema_real_eip !35
  store i1 %148, i1* %FPU_OM.i, align 1, !mcsema_real_eip !35
  store i1 %149, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !35
  store i1 %150, i1* %FPU_DM.i, align 1, !mcsema_real_eip !35
  store i1 %151, i1* %FPU_IM.i, align 1, !mcsema_real_eip !35
  store i64 %152, i64* %44, align 4
  store i16 %153, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %154, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !35
  store i16 %155, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %156, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !35
  store i11 %157, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !35
  store i128 %158, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %159, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %160, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %161, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %162, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %163, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %164, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %165, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %166, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %167, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %168, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %169, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %170, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %171, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %172, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %173, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  %217 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %175, <2 x i64>* %217, align 1
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
!4 = !{i64 12}
!5 = !{i64 17}
!6 = !{i64 40}
!7 = !{i64 47}
!8 = !{i64 52}
!9 = !{i64 56}
!10 = !{i64 60}
!11 = !{i64 64}
!12 = !{i64 69}
!13 = !{i64 23}
!14 = !{i64 84}
!15 = !{i64 88}
!16 = !{i64 89}
!17 = !{i64 96}
!18 = !{i64 104}
!19 = !{i64 111}
!20 = !{i64 114}
!21 = !{i64 118}
!22 = !{i64 122}
!23 = !{i64 132}
!24 = !{i64 136}
!25 = !{i64 141}
!26 = !{i64 144}
!27 = !{i64 162}
!28 = !{i64 165}
!29 = !{i64 168}
!30 = !{i64 172}
!31 = !{i64 192}
!32 = !{i64 199}
!33 = !{i64 204}
!34 = !{i64 208}
!35 = !{i64 209}
